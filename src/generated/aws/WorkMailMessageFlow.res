type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-workmailmessageflow") @new
external createClient: unit => awsServiceClient = "WorkMailMessageFlowClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type s3VersionType = string
type s3KeyIdType = string
type s3BucketIdType = string
type messageIdType = string
type messageContentBlob = NodeJs.Buffer.t
type errorMessage = string
type s3Reference = {
  objectVersion: option<s3VersionType>,
  key: s3KeyIdType,
  bucket: s3BucketIdType,
}
type rawMessageContent = {s3Reference: s3Reference}

module GetRawMessageContent = {
  type t
  type request = {messageId: messageIdType}
  type response = {messageContent: messageContentBlob}
  @module("@aws-sdk/client-workmailmessageflow") @new
  external new: request => t = "GetRawMessageContentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRawMessageContent = {
  type t
  type request = {
    content: rawMessageContent,
    messageId: messageIdType,
  }
  type response = unit
  @module("@aws-sdk/client-workmailmessageflow") @new
  external new: request => t = "PutRawMessageContentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
