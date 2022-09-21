//open AwsSdkV3 // This is commented out because this file is built as part of AwsSdkV3 and thus, AwsSdkV3 is opened implicitley. Uncomment this line in your code.
open S3

let client = createClient()
let listBucketsCommand = ListBuckets.new(Js.Obj.empty())
let _ =
  client
  ->ListBuckets.send(listBucketsCommand)
  ->Promise.thenResolve(res => Js.log2("Buckets", res.buckets))
