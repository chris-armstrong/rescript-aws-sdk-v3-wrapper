type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type s3OneTimeClassificationType = [@as("NONE") #NONE | @as("FULL") #FULL]
type s3ContinuousClassificationType = [@as("FULL") #FULL]
type resourceType = string
type prefix = string
type nextToken = string
type maxResults = int;
type fieldName = string
type exceptionMessage = string
type errorCode = string
type bucketName = string
type aWSAccountId = string
type s3Resource = {
@as("prefix") prefix: prefix,
@as("bucketName") bucketName: option<bucketName>
}
type memberAccount = {
@as("accountId") accountId: aWSAccountId
}
type classificationTypeUpdate = {
@as("continuous") continuous: s3ContinuousClassificationType,
@as("oneTime") oneTime: s3OneTimeClassificationType
}
type classificationType = {
@as("continuous") continuous: option<s3ContinuousClassificationType>,
@as("oneTime") oneTime: option<s3OneTimeClassificationType>
}
type s3Resources = array<s3Resource>
type s3ResourceClassificationUpdate = {
@as("classificationTypeUpdate") classificationTypeUpdate: option<classificationTypeUpdate>,
@as("prefix") prefix: prefix,
@as("bucketName") bucketName: option<bucketName>
}
type s3ResourceClassification = {
@as("classificationType") classificationType: option<classificationType>,
@as("prefix") prefix: prefix,
@as("bucketName") bucketName: option<bucketName>
}
type memberAccounts = array<memberAccount>
type failedS3Resource = {
@as("errorMessage") errorMessage: exceptionMessage,
@as("errorCode") errorCode: errorCode,
@as("failedItem") failedItem: s3Resource
}
type s3ResourcesClassificationUpdate = array<s3ResourceClassificationUpdate>
type s3ResourcesClassification = array<s3ResourceClassification>
type failedS3Resources = array<failedS3Resource>
type clientType;
@module("@aws-sdk/client-macie") @new external createClient: unit => clientType = "MacieClient";
module DisassociateMemberAccount = {
  type t;
  type request = {
@as("memberAccountId") memberAccountId: option<aWSAccountId>
}
  
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "DisassociateMemberAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateMemberAccount = {
  type t;
  type request = {
@as("memberAccountId") memberAccountId: option<aWSAccountId>
}
  
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "AssociateMemberAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListMemberAccounts = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("memberAccounts") memberAccounts: memberAccounts
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "ListMemberAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateS3Resources = {
  type t;
  type request = {
@as("s3ResourcesUpdate") s3ResourcesUpdate: option<s3ResourcesClassificationUpdate>,
@as("memberAccountId") memberAccountId: aWSAccountId
}
  type response = {
@as("failedS3Resources") failedS3Resources: failedS3Resources
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "UpdateS3ResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListS3Resources = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("memberAccountId") memberAccountId: aWSAccountId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("s3Resources") s3Resources: s3ResourcesClassification
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "ListS3ResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateS3Resources = {
  type t;
  type request = {
@as("associatedS3Resources") associatedS3Resources: option<s3Resources>,
@as("memberAccountId") memberAccountId: aWSAccountId
}
  type response = {
@as("failedS3Resources") failedS3Resources: failedS3Resources
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "DisassociateS3ResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateS3Resources = {
  type t;
  type request = {
@as("s3Resources") s3Resources: option<s3ResourcesClassification>,
@as("memberAccountId") memberAccountId: aWSAccountId
}
  type response = {
@as("failedS3Resources") failedS3Resources: failedS3Resources
}
  @module("@aws-sdk/client-macie") @new external new_: (request) => t = "AssociateS3ResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
