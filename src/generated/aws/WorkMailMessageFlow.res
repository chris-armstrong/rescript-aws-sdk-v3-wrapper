type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type s3VersionType = string
type s3KeyIdType = string
type s3BucketIdType = string
type messageIdType = string
type messageContentBlob = NodeJs.Buffer.t;
type errorMessage = string
type s3Reference = {
@as("objectVersion") objectVersion: s3VersionType,
@as("key") key: option<s3KeyIdType>,
@as("bucket") bucket: option<s3BucketIdType>
}
type rawMessageContent = {
@as("s3Reference") s3Reference: option<s3Reference>
}
type clientType;
@module("@aws-sdk/client-workmailmessageflow") @new external createClient: unit => clientType = "WorkMailMessageFlowClient";
module GetRawMessageContent = {
  type t;
  type request = {
@as("messageId") messageId: option<messageIdType>
}
  type response = {
@as("messageContent") messageContent: option<messageContentBlob>
}
  @module("@aws-sdk/client-workmailmessageflow") @new external new_: (Js.Promise.t<request>) => t = "GetRawMessageContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRawMessageContent = {
  type t;
  type request = {
@as("content") content: option<rawMessageContent>,
@as("messageId") messageId: option<messageIdType>
}
  type response = unit
  @module("@aws-sdk/client-workmailmessageflow") @new external new_: (Js.Promise.t<request>) => t = "PutRawMessageContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
