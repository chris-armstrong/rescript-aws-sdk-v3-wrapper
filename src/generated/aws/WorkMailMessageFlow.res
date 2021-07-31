type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type s3VersionType = string
type s3KeyIdType = string
type s3BucketIdType = string
type messageIdType = string
type messageContentBlob = NodeJs.Buffer.t
type errorMessage = string
type s3Reference = {
objectVersion: option<s3VersionType>,
key: s3KeyIdType,
bucket: s3BucketIdType
}
type rawMessageContent = {
s3Reference: s3Reference
}
type awsServiceClient;
@module("@aws-sdk/client-workmailmessageflow") @new external createClient: unit => awsServiceClient = "WorkMailMessageFlowClient";
module GetRawMessageContent = {
  type t;
  type request = {
messageId: messageIdType
}
  type response = {
messageContent: messageContentBlob
}
  @module("@aws-sdk/client-workmailmessageflow") @new external new_: (request) => t = "GetRawMessageContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRawMessageContent = {
  type t;
  type request = {
content: rawMessageContent,
messageId: messageIdType
}
  type response = unit
  @module("@aws-sdk/client-workmailmessageflow") @new external new_: (request) => t = "PutRawMessageContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
