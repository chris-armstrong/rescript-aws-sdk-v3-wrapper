type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-macie") @new external createClient: unit => awsServiceClient = "MacieClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type s3OneTimeClassificationType = [@as("NONE") #NONE | @as("FULL") #FULL]
type s3ContinuousClassificationType = [@as("FULL") #FULL]
type resourceType = string
type prefix = string
type nextToken = string
type maxResults = int
type fieldName = string
type exceptionMessage = string
type errorCode = string
type bucketName = string
type awsaccountId = string
type s3Resource = {
prefix: option<prefix>,
  bucketName: bucketName
}
type memberAccount = {
accountId: option<awsaccountId>
}
type classificationTypeUpdate = {
continuous: option<s3ContinuousClassificationType>,
  oneTime: option<s3OneTimeClassificationType>
}
type classificationType = {
continuous: s3ContinuousClassificationType,
  oneTime: s3OneTimeClassificationType
}
type s3Resources = array<s3Resource>
type s3ResourceClassificationUpdate = {
classificationTypeUpdate: classificationTypeUpdate,
  prefix: option<prefix>,
  bucketName: bucketName
}
type s3ResourceClassification = {
classificationType: classificationType,
  prefix: option<prefix>,
  bucketName: bucketName
}
type memberAccounts = array<memberAccount>
type failedS3Resource = {
errorMessage: option<exceptionMessage>,
  errorCode: option<errorCode>,
  failedItem: option<s3Resource>
}
type s3ResourcesClassificationUpdate = array<s3ResourceClassificationUpdate>
type s3ResourcesClassification = array<s3ResourceClassification>
type failedS3Resources = array<failedS3Resource>

module DisassociateMemberAccount = {
  type t;
  type request = {
memberAccountId: awsaccountId
}
  
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "DisassociateMemberAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AssociateMemberAccount = {
  type t;
  type request = {
memberAccountId: awsaccountId
}
  
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "AssociateMemberAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListMemberAccounts = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
  memberAccounts: option<memberAccounts>
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "ListMemberAccountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateS3Resources = {
  type t;
  type request = {
s3ResourcesUpdate: s3ResourcesClassificationUpdate,
  memberAccountId: option<awsaccountId>
}
  type response = {
failedS3Resources: option<failedS3Resources>
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "UpdateS3ResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListS3Resources = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  memberAccountId: option<awsaccountId>
}
  type response = {
nextToken: option<nextToken>,
  s3Resources: option<s3ResourcesClassification>
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "ListS3ResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateS3Resources = {
  type t;
  type request = {
associatedS3Resources: s3Resources,
  memberAccountId: option<awsaccountId>
}
  type response = {
failedS3Resources: option<failedS3Resources>
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "DisassociateS3ResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateS3Resources = {
  type t;
  type request = {
s3Resources: s3ResourcesClassification,
  memberAccountId: option<awsaccountId>
}
  type response = {
failedS3Resources: option<failedS3Resources>
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "AssociateS3ResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
