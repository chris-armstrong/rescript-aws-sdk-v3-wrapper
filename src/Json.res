open Js.Json

module Decode = {
  let map_result = Belt.Result.map
  let flatMap_result = Belt.Result.flatMap

  let optionToResult = (opt, errorString) =>
    switch opt {
    | Some(result) => Ok(result)
    | None => Error(errorString)
    }

  type jsonTreeRef = {
    tree: Js.Json.t,
    path: string,
  }

  type jsonObjectRef = {
    object: Js.Dict.t<Js.Json.t>,
    path: string,
  }

  type jsonParseError =
    | SyntaxError(string)
    | WrongType(string, string)
    | NoValueError(string)
    | RecordParseError(string, string)
    | CustomError(string)

  let jsonParseErrorToString = error =>
    switch error {
    | SyntaxError(error) => `Syntax Error: ${error}`
    | WrongType(path, expected) => `Wrong Type Error: ${expected} was expected at path ${path}`
    | NoValueError(path) => `No Value Error: expected a value at ${path}`
    | RecordParseError(path, suberror) =>
      `Record parse error: at path ${path} received record parse error - ${suberror}`
    | CustomError(error) => `Other parse error: ${error}`
    }

  let parseJson = (jsonString, rootParser) => {
    let treeResult = try Ok(parseExn(jsonString)) catch {
    | Js.Exn.Error(payload) =>
      Error(SyntaxError(Js.Option.getWithDefault("unknown", Js.Exn.message(payload))))
    }
    flatMap_result(treeResult, tree => rootParser(Ok({tree: tree, path: "$"})))
  }

  type parser<'a> = Belt.Result.t<jsonTreeRef, jsonParseError> => Belt.Result.t<'a, jsonParseError>

  let parseObject = (x: Belt.Result.t<jsonTreeRef, jsonParseError>) =>
    x
    ->map_result(({tree, path}) => (decodeObject(tree), path))
    ->flatMap_result(((dictOption, path)) =>
      switch dictOption {
      | Some(object) => Ok({object: object, path: path})
      | None => Error(NoValueError(path))
      }
    )

  let parseRecord = (recordObject: Belt.Result.t<jsonTreeRef, jsonParseError>, recordParser) =>
    recordObject
    ->parseObject
    ->map_result(({object, path}) => (Js.Dict.entries(object), path))
    ->flatMap_result(((entries, path)) =>
      Js.Array2.reduce(
        entries,
        (records, (key, value)) =>
          flatMap_result(records, recordsValue => {
            let record = recordParser(key, Ok({path: `${path}.${key}`, tree: value}))
            switch record {
            | Ok(recordValue) => Ok(Js.Array.concat(recordsValue, [recordValue]))
            | Error(error) =>
              switch error {
              | CustomError(y) => Error(RecordParseError(`${path}.${key}`, y))
              | _ => Error(error)
              }
            }
          }),
        Ok([]),
      )
    )

  let parseString = x =>
    x
    ->map_result(({tree, path}) => (decodeString(tree), path))
    ->flatMap_result(((stringOption, path)) =>
      switch stringOption {
      | Some(str) => Ok(str)
      | None => Error(WrongType(path, "string"))
      }
    )
  let parseNumber = x =>
    x
    ->map_result(({tree, path}) => (decodeNumber(tree), path))
    ->flatMap_result(((numberOption, path)) =>
      switch numberOption {
      | Some(str) => Ok(str)
      | None => Error(WrongType(path, "number"))
      }
    )
  let parseInteger = x =>
    x
    ->map_result(({tree, path}) => (decodeNumber(tree), path))
    ->flatMap_result(((numberOption, path)) =>
      switch numberOption {
      | Some(str) => Ok(Belt.Float.toInt(str))
      | None => Error(WrongType(path, "integer"))
      }
    )

  let parseArray = (arrayRef, itemParser) =>
    arrayRef
    ->map_result(({tree, path}) => (decodeArray(tree), path))
    ->flatMap_result(((arrayOption, path)) =>
      switch arrayOption {
      | Some(arr) =>
        Js.Array2.reducei(
          arr,
          (progress, next, i) =>
            flatMap_result(progress, items => {
              let record = itemParser(Ok({path: `${path}.${Belt.Int.toString(i)}`, tree: next}))
              switch record {
              | Ok(recordValue) => Ok(Js.Array.concat(items, [recordValue]))
              | Error(y) => Error(y)
              }
            }),
          Ok([]),
        )
      | None => Error(WrongType(path, "array"))
      }
    )

  let field = (objectRef, fieldName) =>
    objectRef
    ->map_result(({object, path}) => (Js.Dict.get(object, fieldName), path))
    ->flatMap_result(((fieldValueOption, path)) =>
      switch fieldValueOption {
      | Some(fieldValue) => Ok({tree: fieldValue, path: `${path}.${fieldName}`})
      | None => Error(NoValueError(`${path}.${fieldName}`))
      }
    )

  let optional = (decodedResult: Belt.Result.t<'a, jsonParseError>) =>
    switch decodedResult {
    | Ok(value) => Ok(Some(value))
    | Error(error) =>
      switch error {
      | NoValueError(_) => Ok(None)
      | _ => Error(error)
      }
    }
}

module ResultHelpers = {
  let map2 = (result1, result2, mapper) =>
    switch (result1, result2) {
    | (Ok(result1), Ok(result2)) => Ok(mapper(result1, result2))
    | (Error(error1), _) => Error(error1)
    | (_, Error(error2)) => Error(error2)
    }
  let map3 = (result1, result2, result3, mapper) =>
    switch (result1, result2, result3) {
    | (Ok(result1), Ok(result2), Ok(result3)) => Ok(mapper(result1, result2, result3))
    | (Error(error1), _, _) => Error(error1)
    | (_, Error(error2), _) => Error(error2)
    | (_, _, Error(error3)) => Error(error3)
    }
  let map4 = (r1, r2, r3, r4, mapper) =>
    switch (r1, r2, r3, r4) {
    | (Ok(r1), Ok(r2), Ok(r3), Ok(r4)) => Ok(mapper(r1, r2, r3, r4))
    | (Error(e1), _, _, _) => Error(e1)
    | (_, Error(e2), _, _) => Error(e2)
    | (_, _, Error(e3), _) => Error(e3)
    | (_, _, _, Error(e4)) => Error(e4)
    }
  let map5 = (r1, r2, r3, r4, r5, mapper) =>
    switch (r1, r2, r3, r4, r5) {
    | (Ok(r1), Ok(r2), Ok(r3), Ok(r4), Ok(r5)) => Ok(mapper(r1, r2, r3, r4, r5))
    | (Error(e1), _, _, _, _) => Error(e1)
    | (_, Error(e2), _, _, _) => Error(e2)
    | (_, _, Error(e3), _, _) => Error(e3)
    | (_, _, _, Error(e4), _) => Error(e4)
    | (_, _, _, _, Error(e5)) => Error(e5)
    }

  let mapOptional = (
    resultWithOption: Belt.Result.t<option<'a>, Decode.jsonParseError>,
    mapper: Belt.Result.t<'a, Decode.jsonParseError> => Belt.Result.t<'b, Decode.jsonParseError>,
  ): Belt.Result.t<option<'b>, Decode.jsonParseError> => {
    switch resultWithOption {
    | Ok(optValue) =>
      switch optValue {
      | Some(value) =>
        switch mapper(Ok(value)) {
        | Ok(result) => Ok(Some(result))
        | Error(error) => Error(error)
        }
      | None => Ok(None)
      }
    | Error(error) => Error(error)
    }
  }
}
