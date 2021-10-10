open Promise
module Process = {
  type process
  // bind to `process.argv`
  @scope("process") @val external argv: array<string> = "argv"
}

// Writes a test file to a bucket
// Usage: node examples/S3Put.bs.js <bucket_name>
let main = () => {
  open S3

  let bucketName = Process.argv[2]

  let client = createClient()
  let request = PutObject.make(
    ~key="test.json",
    ~bucket=bucketName,
    ~body=NodeJs.Buffer.fromString(`{"success": true}`),
    (),
  )
  client
  ->PutObject.send(request)
  ->thenResolve(result => Js.log2("put result", result))
  ->catch(error => {
    switch error {
    | JsError(error) =>
      switch AwsSdkV3.Exn.asAwsError(error) {
      | Some(awsError) =>
        switch awsError.name {
        | "NoSuchBucket" => Js.log("The specified bucket does not exist")
        | _ => Js.log2("An AWS Error occurred", awsError.name)
        }
      | None => Js.log2("An unknown JS error occurred", error)
      }
      | _ => Js.log2("An unknown ReScript error occurred", error)
    }
    Promise.resolve()
  })
}

let _ = main()
