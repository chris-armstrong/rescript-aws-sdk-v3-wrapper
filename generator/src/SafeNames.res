open Belt
open Util

let reservedWords = [
  "open",
  "private",
  "as",
  "external",
  "public",
  "protected",
  "string",
  "bool",
  "integer",
  "object",
  "type",
  "let",
  "and",
  "open",
  "float",
  "timestamp",
  "include",
  "boolean",
  "unit",
  "switch",
  "match",
  "for",
  "in",
  "while",
  "do",
  "export",
  "int",
  "tagList",
  "option",
  "Option",
  "Some",
  "None",
  "Result",
  "Ok",
  "Error",
  "constraint",
]

let uppercaseStartRe = Js.Re.fromString("^([A-Z]*)(.*)$")

let translateBadChars = name => {
  name |> String.map(char => {
    if (char >= 'A' && char <= 'Z') || char >= 'a' && char <= 'z' || char >= '0' || char <= '9' {
      char
    } else {
      '_'
    }
  })
}

let translateReserved = name => {
  if Array.some(reservedWords, word => word == name) {
    name ++ "_"
  } else {
    name
  }
}

let stripLeadingNumbers = name => {
  if String.length(name) == 0 {
    name
  } else {
    switch String.get(name, 0) {
    | '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' => `x${name}`
    | _ => name
    }
  }
}

let safeMemberName = name => {
  let splitOnUppercase = Js.String2.match_(name, uppercaseStartRe)
  switch splitOnUppercase {
  | Some(groups) => {
      let upperpart = groups[1]
      let remaining = groups[2]
      switch (upperpart, remaining) {
      | (Some(Some(upperpart)), Some(Some(remaining))) => {
          let upperLength = String.length(upperpart)
          let first =
            upperLength > 0
              ? Js.String.toLowerCase(
                  String.sub(upperpart, 0, upperLength - 1) ++
                  String.sub(upperpart, upperLength - 1, 1),
                )
              : ""
          (first ++ remaining)->stripLeadingNumbers->translateReserved->translateBadChars
        }
      // some error in regex application => return usual
      | _ => name->stripLeadingNumbers->translateReserved->translateBadChars
      }
    }
  | None => name->stripLeadingNumbers->translateReserved->translateBadChars
  }
}

let safeTypeName = target => {
  let name = symbolName(target)
  let namespace = symbolNamespace(target)
  if namespace === "smithy.api" {
    safeMemberName("Base" ++ name)
  } else {
    safeMemberName(name)
  }
}

let camelCase = name =>
  Js.String2.toUpperCase(Js.String2.charAt(name, 0)) ++ Js.String2.sliceToEnd(name, ~from=1)
let safeConstructorName = camelCase

let variantReplaceRe = Js.Re.fromStringWithFlags("-|#|:|\\.|/| |\\(|\\)|\\\\", ~flags="g")
let safeVariantName = name => {
  name
  ->Js.String2.replaceByRe(variantReplaceRe, "_")
  ->Js.String2.replace("*", "Star")
  ->Js.String2.split("_")
  ->Array.keepMap(x =>
    String.length(x) > 0
      ? {
          Some(camelCase(x))
        }
      : None
  )
  ->Array.joinWith("_", x => x)
}
