open Belt;
let basepath = "aws-sdk-js-v3/codegen/sdk-codegen/aws-models";
let files = NodeJs.Fs.readdirSync(basepath)
Array.forEach(files, file => {
  let path =  NodeJs.Path.join([basepath, file])
  Js.log(`Reading ${path}`)
  let parsed =NodeJs.Fs.readFileSync(path, ())->NodeJs.Buffer.toString->Json.Decode.parseJson(Parse.parseModel)
  let generated = switch parsed {
    | Ok(shapes) => Ok(shapes)->Convert.convert
    | Error(error) => Error(Json.Decode.jsonParseErrorToString(error))
  }

  switch generated {
    | Ok({ moduleName, code }) => {
      Js.log2("Writing module", moduleName)
      NodeJs.Fs.writeFileSync(`src/generated/aws/${moduleName}.res`, NodeJs.Buffer.fromString(code))
    }
    | Error(error) => { Js.log(`Unable to generate for file ${file}: ${error}`)}
  }
})