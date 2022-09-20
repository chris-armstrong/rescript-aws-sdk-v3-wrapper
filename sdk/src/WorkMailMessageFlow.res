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
@ocaml.doc("<p>Amazon S3 object representing the updated message content, in MIME format.</p>
         <note>
            <p>The region for the S3 bucket containing the S3 object must match the region used for WorkMail operations. Also, for WorkMail to process 
      an S3 object, it must have permission to access that object. For more information, see 
      <a href=\"https://docs.aws.amazon.com/workmail/latest/adminguide/update-with-lambda.html\">
        Updating message content with AWS Lambda</a>.</p>
         </note>")
type s3Reference = {
  @ocaml.doc("<p>If you enable versioning for the bucket, you can specify the object version.</p>")
  objectVersion: option<s3VersionType>,
  @ocaml.doc("<p>The S3 key object name.</p>") key: s3KeyIdType,
  @ocaml.doc("<p>The S3 bucket name.</p>") bucket: s3BucketIdType,
}
@ocaml.doc("<p>Provides the MIME content of the updated email message as an S3 object. All MIME content must meet the following criteria:</p>
         <ul>
            <li>
               <p>Each part of a multipart MIME message must be formatted properly.</p>
            </li>
            <li>
               <p>Attachments must be of a content type that Amazon SES supports. For more information, see 
        <a href=\"https://docs.aws.amazon.com/ses/latest/DeveloperGuide/mime-types-appendix.html\">Unsupported Attachment Types</a>.</p>
            </li>
            <li>
               <p>If any of the MIME parts in a message contain content that is outside of the 7-bit ASCII character range, we recommend 
        encoding that content.</p>
            </li>
            <li>
               <p>Per <a href=\"https://tools.ietf.org/html/rfc5321#section-4.5.3.1.6\">RFC 5321</a>, the maximum length of each line of 
        text, including the <CRLF>, must not exceed 1,000 characters.</p>
            </li>
            <li>
               <p>The message must contain all the required header fields. Check the returned error message for more information.</p>
            </li>
            <li>
               <p>The value of immutable headers must remain unchanged. Check the returned error message for more information.</p>
            </li>
            <li>
               <p>Certain unique headers can only appear once. Check the returned error message for more information.</p>
            </li>
         </ul>")
type rawMessageContent = {
  @ocaml.doc("<p>The S3 reference of an email message.</p>") s3Reference: s3Reference,
}
@ocaml.doc("<p>The WorkMail Message Flow API provides access to email messages as they are
      being
      sent and received by
      a
      WorkMail organization.</p>")
module GetRawMessageContent = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the email message to retrieve.</p>") messageId: messageIdType,
  }
  type response = {
    @ocaml.doc("<p>The raw content of the email message, in MIME format.</p>")
    messageContent: messageContentBlob,
  }
  @module("@aws-sdk/client-workmailmessageflow") @new
  external new: request => t = "GetRawMessageContentCommand"
  let make = (~messageId, ()) => new({messageId: messageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutRawMessageContent = {
  type t
  type request = {
    @ocaml.doc("<p>Describes the raw message content of the updated email message.</p>")
    content: rawMessageContent,
    @ocaml.doc("<p>The identifier of the email message being updated.</p>")
    messageId: messageIdType,
  }
  type response = {.}
  @module("@aws-sdk/client-workmailmessageflow") @new
  external new: request => t = "PutRawMessageContentCommand"
  let make = (~content, ~messageId, ()) => new({content, messageId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
