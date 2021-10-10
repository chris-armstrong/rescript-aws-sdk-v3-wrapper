type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-macie") @new
external createClient: unit => awsServiceClient = "MacieClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type s3OneTimeClassificationType = [@as("NONE") #NONE | @as("FULL") #FULL]
type s3ContinuousClassificationType = [@as("FULL") #FULL]
@ocaml.doc("Resource type that caused the exception") type resourceType = string
type prefix = string
type nextToken = string
type maxResults = int
@ocaml.doc("Field that has invalid input") type fieldName = string
type exceptionMessage = string
@ocaml.doc("Error code for the exception") type errorCode = string
type bucketName = string
type awsaccountId = string
@ocaml.doc("<p>Contains information about the S3 resource. This data type is used as a request
      parameter in the DisassociateS3Resources action and can be used as a response parameter in the
      AssociateS3Resources and UpdateS3Resources actions. </p>")
type s3Resource = {
  @ocaml.doc("<p>The prefix of the S3 bucket. </p>") prefix: option<prefix>,
  @ocaml.doc("<p>The name of the S3 bucket.</p>") bucketName: bucketName,
}
@ocaml.doc("<p>Contains information about the Amazon Macie Classic member account.</p>")
type memberAccount = {
  @ocaml.doc("<p>The AWS account ID of the Amazon Macie Classic member account.</p>")
  accountId: option<awsaccountId>,
}
@ocaml.doc("<p>The classification type that Amazon Macie Classic applies to the associated S3
      resources. At least one of the classification types (oneTime or continuous) must be specified.
    </p>")
type classificationTypeUpdate = {
  @ocaml.doc("<p>A continuous classification of the objects that are added to a specified S3 bucket.
      Amazon Macie Classic begins performing continuous classification after a bucket is
      successfully associated with Macie Classic. </p>")
  continuous: option<s3ContinuousClassificationType>,
  @ocaml.doc("<p>A one-time classification of all of the existing objects in a specified S3 bucket.
    </p>")
  oneTime: option<s3OneTimeClassificationType>,
}
@ocaml.doc("<p>The classification type that Amazon Macie Classic applies to the associated S3
      resources. </p>")
type classificationType = {
  @ocaml.doc("<p>A continuous classification of the objects that are added to a specified S3 bucket.
      Amazon Macie Classic begins performing continuous classification after a bucket is
      successfully associated with Macie Classic. </p>")
  continuous: s3ContinuousClassificationType,
  @ocaml.doc("<p>A one-time classification of all of the existing objects in a specified S3 bucket.
    </p>")
  oneTime: s3OneTimeClassificationType,
}
type s3Resources = array<s3Resource>
@ocaml.doc("<p>The S3 resources whose classification types you want to update. This data type is used
      as a request parameter in the UpdateS3Resources action. </p>")
type s3ResourceClassificationUpdate = {
  @ocaml.doc("<p>The classification type that you want to update for the resource associated with Amazon
      Macie Classic. </p>")
  classificationTypeUpdate: classificationTypeUpdate,
  @ocaml.doc("<p>The prefix of the S3 bucket whose classification types you want to update.</p>")
  prefix: option<prefix>,
  @ocaml.doc("<p>The name of the S3 bucket whose classification types you want to update.</p>")
  bucketName: bucketName,
}
@ocaml.doc("<p>The S3 resources that you want to associate with Amazon Macie Classic for monitoring
      and data classification. This data type is used as a request parameter in the
      AssociateS3Resources action and a response parameter in the ListS3Resources action. </p>")
type s3ResourceClassification = {
  @ocaml.doc("<p>The classification type that you want to specify for the resource associated with
      Amazon Macie Classic. </p>")
  classificationType: classificationType,
  @ocaml.doc("<p>The prefix of the S3 bucket that you want to associate with Amazon Macie
      Classic.</p>")
  prefix: option<prefix>,
  @ocaml.doc("<p>The name of the S3 bucket that you want to associate with Amazon Macie
      Classic.</p>")
  bucketName: bucketName,
}
type memberAccounts = array<memberAccount>
@ocaml.doc("<p>Includes details about the failed S3 resources.</p>")
type failedS3Resource = {
  @ocaml.doc("<p>The error message of a failed item.</p>") errorMessage: option<exceptionMessage>,
  @ocaml.doc("<p>The status code of a failed item.</p>") errorCode: option<errorCode>,
  @ocaml.doc("<p>The failed S3 resources.</p>") failedItem: option<s3Resource>,
}
type s3ResourcesClassificationUpdate = array<s3ResourceClassificationUpdate>
type s3ResourcesClassification = array<s3ResourceClassification>
type failedS3Resources = array<failedS3Resource>
@ocaml.doc("<fullname>Amazon Macie Classic</fullname>
         <p>Amazon Macie Classic is a security service that uses machine learning to automatically
      discover, classify, and protect sensitive data in AWS. Macie Classic recognizes sensitive data
      such as personally identifiable information (PII) or intellectual property, and provides you
      with dashboards and alerts that give visibility into how this data is being accessed or moved.
      For more information, see the <a href=\"https://docs.aws.amazon.com/macie/latest/userguide/what-is-macie.html\">Amazon Macie
        Classic User Guide</a>. </p>")
module DisassociateMemberAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the member account that you want to remove from Amazon Macie
      Classic.</p>")
    memberAccountId: awsaccountId,
  }

  @module("@aws-sdk/client-macie") @new
  external new: request => t = "DisassociateMemberAccountCommand"
  let make = (~memberAccountId, ()) => new({memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateMemberAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the AWS account that you want to associate with Amazon Macie Classic as a
      member account.</p>")
    memberAccountId: awsaccountId,
  }

  @module("@aws-sdk/client-macie") @new external new: request => t = "AssociateMemberAccountCommand"
  let make = (~memberAccountId, ()) => new({memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListMemberAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter to indicate the maximum number of items that you want in the
      response. The default value is 250. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Use this parameter when paginating results. Set the value of this parameter to null on
      your first call to the ListMemberAccounts action. Subsequent calls to the action fill
      nextToken in the request with the value of nextToken from the previous response to continue
      listing data. </p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>When a response is generated, if there is more data to be listed, this parameter is
      present in the response and contains the value to use for the nextToken parameter in a
      subsequent pagination request. If there is no more data to be listed, this parameter is set to
      null. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the Amazon Macie Classic member accounts returned by the action. The current
      Macie Classic administrator account is also included in this list. </p>")
    memberAccounts: option<memberAccounts>,
  }
  @module("@aws-sdk/client-macie") @new external new: request => t = "ListMemberAccountsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateS3Resources = {
  type t
  type request = {
    @ocaml.doc("<p>The S3 resources whose classification types you want to update.</p>")
    s3ResourcesUpdate: s3ResourcesClassificationUpdate,
    @ocaml.doc("<p>The AWS ID of the Amazon Macie Classic member account whose S3 resources'
      classification types you want to update. </p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>The S3 resources whose classification types can't be updated. An error code and an
      error message are provided for each failed item. </p>")
    failedS3Resources: option<failedS3Resources>,
  }
  @module("@aws-sdk/client-macie") @new external new: request => t = "UpdateS3ResourcesCommand"
  let make = (~s3ResourcesUpdate, ~memberAccountId=?, ()) =>
    new({s3ResourcesUpdate: s3ResourcesUpdate, memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListS3Resources = {
  type t
  type request = {
    @ocaml.doc("<p>Use this parameter to indicate the maximum number of items that you want in the
      response. The default value is 250. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Use this parameter when paginating results. Set its value to null on your first call to
      the ListS3Resources action. Subsequent calls to the action fill nextToken in the request with
      the value of nextToken from the previous response to continue listing data. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Macie Classic member account ID whose associated S3 resources you want to
      list. </p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>When a response is generated, if there is more data to be listed, this parameter is
      present in the response and contains the value to use for the nextToken parameter in a
      subsequent pagination request. If there is no more data to be listed, this parameter is set to
      null. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of the associated S3 resources returned by the action.</p>")
    s3Resources: option<s3ResourcesClassification>,
  }
  @module("@aws-sdk/client-macie") @new external new: request => t = "ListS3ResourcesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~memberAccountId=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateS3Resources = {
  type t
  type request = {
    @ocaml.doc("<p>The S3 resources (buckets or prefixes) that you want to remove from being monitored and
      classified by Amazon Macie Classic. </p>")
    associatedS3Resources: s3Resources,
    @ocaml.doc("<p>The ID of the Amazon Macie Classic member account whose resources you want to remove
      from being monitored by Macie Classic. </p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>S3 resources that couldn't be removed from being monitored and classified by Amazon
      Macie Classic. An error code and an error message are provided for each failed item.
    </p>")
    failedS3Resources: option<failedS3Resources>,
  }
  @module("@aws-sdk/client-macie") @new
  external new: request => t = "DisassociateS3ResourcesCommand"
  let make = (~associatedS3Resources, ~memberAccountId=?, ()) =>
    new({associatedS3Resources: associatedS3Resources, memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateS3Resources = {
  type t
  type request = {
    @ocaml.doc("<p>The S3 resources that you want to associate with Amazon Macie Classic for monitoring
      and data classification. </p>")
    s3Resources: s3ResourcesClassification,
    @ocaml.doc("<p>The ID of the Amazon Macie Classic member account whose resources you want to associate
      with Macie Classic. </p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>S3 resources that couldn't be associated with Amazon Macie Classic. An error code and
      an error message are provided for each failed item. </p>")
    failedS3Resources: option<failedS3Resources>,
  }
  @module("@aws-sdk/client-macie") @new external new: request => t = "AssociateS3ResourcesCommand"
  let make = (~s3Resources, ~memberAccountId=?, ()) =>
    new({s3Resources: s3Resources, memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
