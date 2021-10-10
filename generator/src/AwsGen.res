open Belt
open NodeJs

// Alias the __dirname builtin as a global variable
@val external __dirname: string = "__dirname"

// basepath of project
let basepath = Path.join([__dirname, "../.."])

let modelsPath = Path.join([basepath, "aws-sdk-js-v3/codegen/sdk-codegen/aws-models"])
let outdir = Path.join([basepath, "sdk/src"])
let modelFiles = Fs.readdirSync(modelsPath)


Array.forEach(modelFiles, file => {
  let path = Path.join([modelsPath, file])
  Js.log(`Reading ${path}`)
  let parsed =
    Fs.readFileSync(path, ())
    ->NodeJs.Buffer.toString
    ->Json.Decode.parseJson(Parse.parseModel)
  let generated = switch parsed {
  | Ok(shapes) =>
    switch Convert.convert(Ok(shapes)) {
    | Ok(result) => Ok(result)
    | exception Dependencies.CycleError(_, _) => Error("cycle error - skip for now")
    | Error(x) => Error(x)
    }
  | Error(error) => Error(Json.Decode.jsonParseErrorToString(error))
  }

  switch generated {
  | Ok({moduleName, code}) => {
      Js.log2("Writing module", moduleName)
      Fs.writeFileSync(Path.join([outdir, `${moduleName}.res`]), Buffer.fromString(code))
    }
  | Error(error) => Js.log(`Unable to generate for file ${file}: ${error}`)
  }
})
