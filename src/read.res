let parsed = Parse_api.parse(
  "aws-sdk-js-v3/codegen/sdk-codegen/aws-models/sqs.2012-11-05.json",
)

switch parsed {
| Ok(shapes) => Js.log(shapes)
| Error(y) => Js.log2(`error`, y)
}
