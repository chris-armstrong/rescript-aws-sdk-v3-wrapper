# ReScript AWS SDK v3 bindings

A set of bindings for the AWS JavaScript SDK v3 for use with ReScript.

**These are an unofficial set of ReScript bindings - they are not officially provided by or endorsed by AWS.**

The bindings are still a bit experimental as they haven't been validated extensively and some SDKs are missing due to generation issues that need to be resolved (see the [TODO](TODO.md) for more details).

## Installation

```sh
npm i rescript-aws-sdk-v3
```

and add to your `bsconfig.json` dependencies list:

```json
  ...
  "bs-dependencies": ["rescript-aws-sdk-v3"]
```

## Usage

1. For each AWS SDK you wish to use, install the corresponding client packages e.g. for S3:

```sh
npm i @aws-sdk/client-s3
```

2. Create a client for the corresponding API:

```rescript
open AwsSdkV3;
let client = S3.createClient();
```

3. Identify the API you wish to call (e.g. GetObject). You can then construct the command by passing the `request` type to `make()` (in some instances make() won't be present - use new() instead)

```rescript
// make() is used to construct the equivalent of GetObjectCommand - note that () is always needed to indicate the end of parameters
let command = S3.GetObject.make(~bucket="my-bucket", ~key="path/to/key.json", ());
```

(in the cases that `make()` has no arguments, e.g. S3.ListBuckets, use `let command = S3.ListBuckets.make();`)

4. Dispatch the command with `send()`:

```rescript
S3.GetObject.send(client, command)
  ->Promise.then(result => {
      Js.log2("Object body: ", )
      Promise.resolve()
  })
```

### Error Handling

The AWS SDK throws ordinary JavaScript exceptions. The [rescript-promise](https://www.npmjs.com/package/@ryyppy/rescript-promise) library wraps these as ReScript errors, so to filter them in your catch handler, you will need code like the following:

```rescript
  ->
  ->catch(error => {
    switch error {
    | JsError(error) =>
      switch AwsSdkV3.Exn.asAwsError(error) {
      | Some(awsError) =>
        // The `name` property is set to the AWS API error code (e.g. AccessDenied, NoSuchKey, etc.)
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
```

---

Copyright (C) 2021 Chris Armstrong - see [LICENSE](LICENSE.md) for more details on licensing
