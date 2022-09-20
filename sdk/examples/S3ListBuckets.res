open AwsSdkV3.S3

let client = createClient()
let listBucketsCommand = ListBuckets.new(Js.Obj.empty())
let _ = client
  ->ListBuckets.send(listBucketsCommand)
  ->Promise.thenResolve(res => Js.log2("Buckets", res.buckets))
