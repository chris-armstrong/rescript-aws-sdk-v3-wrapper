open AwsSdkV3

let client = S3.createClient()
let listBucketsCommand = S3.ListBuckets.new()
let _ = client->S3.ListBuckets.send(listBucketsCommand)
