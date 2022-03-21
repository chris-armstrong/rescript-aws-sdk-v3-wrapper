type errorMetadata = {
  httpStatusCode: option<int>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}

type t = {
  /* The name of the error */
  name: string,
  /* The error metadata */
  @as("$metadata") metadata: errorMetadata,
  /* The fault information */
  @as("$fault") fault: [#client | #server],
}

let isAwsError: Js.Exn.t => bool = %raw(`
  function(err) {
    return typeof err.name === 'string' && typeof err.$metadata === 'object' && (err.$fault === 'client' || err.$fault === 'server');
  }
`)

@private external castAsAwsError: Js.Exn.t => t = "%identity"
let asAwsError = error => isAwsError(error) ? Some(castAsAwsError(error)) : None
