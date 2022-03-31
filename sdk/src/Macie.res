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
@ocaml.doc("<p>(Discontinued) Contains information about the S3 resource. This data type is used as a
      request parameter in the <code>DisassociateS3Resources</code> action and can be used as a response
      parameter in the <code>AssociateS3Resources</code> and <code>UpdateS3Resources</code> actions. </p>")
type s3Resource = {
  @ocaml.doc("<p>(Discontinued) The prefix of the S3 bucket.</p>") prefix: option<prefix>,
  @ocaml.doc("<p>(Discontinued) The name of the S3 bucket.</p>") bucketName: bucketName,
}
@ocaml.doc("<p>(Discontinued) Contains information about the Amazon Macie Classic member
      account.</p>")
type memberAccount = {
  @ocaml.doc(
    "<p>(Discontinued) The Amazon Web Services account ID of the Amazon Macie Classic member account.</p>"
  )
  accountId: option<awsaccountId>,
}
@ocaml.doc("<p>(Discontinued) The classification type that Amazon Macie Classic applies to the
      associated S3 resources. At least one of the classification types (<code>oneTime</code> or <code>continuous</code>) must
      be specified. </p>")
type classificationTypeUpdate = {
  @ocaml.doc("<p>(Discontinued) A continuous classification of the objects that are added to a specified
      S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is
      successfully associated with Macie Classic. </p>")
  continuous: option<s3ContinuousClassificationType>,
  @ocaml.doc("<p>(Discontinued) A one-time classification of all of the existing objects in a specified
      S3 bucket. </p>")
  oneTime: option<s3OneTimeClassificationType>,
}
@ocaml.doc("<p>(Discontinued) The classification type that Amazon Macie Classic applies to the
      associated S3 resources.</p>")
type classificationType = {
  @ocaml.doc("<p>(Discontinued) A continuous classification of the objects that are added to a specified
      S3 bucket. Amazon Macie Classic begins performing continuous classification after a bucket is
      successfully associated with Macie Classic.</p>")
  continuous: s3ContinuousClassificationType,
  @ocaml.doc("<p>(Discontinued) A one-time classification of all of the existing objects in a specified
      S3 bucket. </p>")
  oneTime: s3OneTimeClassificationType,
}
type s3Resources = array<s3Resource>
@ocaml.doc("<p>(Discontinued) The S3 resources whose classification types you want to update. This
      data type is used as a request parameter in the <code>UpdateS3Resources</code> action. </p>")
type s3ResourceClassificationUpdate = {
  @ocaml.doc("<p>(Discontinued) The classification type that you want to update for the resource
      associated with Amazon Macie Classic. </p>")
  classificationTypeUpdate: classificationTypeUpdate,
  @ocaml.doc("<p>(Discontinued) The prefix of the S3 bucket whose classification types you want to
      update.</p>")
  prefix: option<prefix>,
  @ocaml.doc("<p>(Discontinued) The name of the S3 bucket whose classification types you want to
      update.</p>")
  bucketName: bucketName,
}
@ocaml.doc("<p>(Discontinued) The S3 resources that you want to associate with Amazon Macie Classic
      for monitoring and data classification. This data type is used as a request parameter in the
      <code>AssociateS3Resources</code> action and a response parameter in the <code>ListS3Resources</code> action. </p>")
type s3ResourceClassification = {
  @ocaml.doc("<p>(Discontinued) The classification type that you want to specify for the resource
      associated with Amazon Macie Classic. </p>")
  classificationType: classificationType,
  @ocaml.doc("<p>(Discontinued) The prefix of the S3 bucket that you want to associate with Amazon Macie
      Classic.</p>")
  prefix: option<prefix>,
  @ocaml.doc("<p>(Discontinued) The name of the S3 bucket that you want to associate with Amazon Macie
      Classic.</p>")
  bucketName: bucketName,
}
type memberAccounts = array<memberAccount>
@ocaml.doc("<p>(Discontinued) Includes details about the failed S3 resources.</p>")
type failedS3Resource = {
  @ocaml.doc("<p>(Discontinued) The error message of a failed item.</p>")
  errorMessage: option<exceptionMessage>,
  @ocaml.doc("<p>(Discontinued) The status code of a failed item.</p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>(Discontinued) The failed S3 resources.</p>") failedItem: option<s3Resource>,
}
type s3ResourcesClassificationUpdate = array<s3ResourceClassificationUpdate>
type s3ResourcesClassification = array<s3ResourceClassification>
type failedS3Resources = array<failedS3Resource>
@ocaml.doc("<fullname>Amazon Macie Classic</fullname>
         <p>Amazon Macie Classic has been discontinued and is no longer available.</p>
    
         <p>A new Amazon Macie is now available with significant design improvements and additional
      features, at a lower price and in most Amazon Web Services Regions. We encourage you to take advantage of the
      new and improved features, and benefit from the reduced cost. To learn about features and pricing for the new Macie, see <a href=\"http://aws.amazon.com/macie/\">Amazon Macie</a>. To learn how to use the new Macie, see the <a href=\"https://docs.aws.amazon.com/macie/latest/user/what-is-macie.html\">Amazon Macie User
        Guide</a>.</p>")
module DisassociateMemberAccount = {
  type t
  type request = {
    @ocaml.doc("<p>(Discontinued) The ID of the member account that you want to remove from Amazon Macie
      Classic.</p>")
    memberAccountId: awsaccountId,
  }
  type response = {.}
  @module("@aws-sdk/client-macie") @new
  external new: request => t = "DisassociateMemberAccountCommand"
  let make = (~memberAccountId, ()) => new({memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateMemberAccount = {
  type t
  type request = {
    @ocaml.doc("<p>(Discontinued) The ID of the Amazon Web Services account that you want to associate with Amazon Macie
      Classic as a member account.</p>")
    memberAccountId: awsaccountId,
  }
  type response = {.}
  @module("@aws-sdk/client-macie") @new external new: request => t = "AssociateMemberAccountCommand"
  let make = (~memberAccountId, ()) => new({memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListMemberAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>(Discontinued) Use this parameter to indicate the maximum number of items that you want
      in the response. The default value is 250.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>(Discontinued) Use this parameter when paginating results. Set the value of this
      parameter to null on your first call to the <code>ListMemberAccounts</code> action. Subsequent calls to the
      action fill <code>nextToken</code> in the request with the value of <code>nextToken</code> from the previous response to
      continue listing data.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>(Discontinued) When a response is generated, if there is more data to be listed, this
      parameter is present in the response and contains the value to use for the <code>nextToken</code> parameter
      in a subsequent pagination request. If there is no more data to be listed, this parameter is
      set to null. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>(Discontinued) A list of the Amazon Macie Classic member accounts returned by the
      action. The current Macie Classic administrator account is also included in this
      list.</p>")
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
    @ocaml.doc("<p>(Discontinued) The S3 resources whose classification types you want to
      update.</p>")
    s3ResourcesUpdate: s3ResourcesClassificationUpdate,
    @ocaml.doc("<p>(Discontinued) The Amazon Web Services account ID of the Amazon Macie Classic member account whose S3
      resources' classification types you want to update.</p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>(Discontinued) The S3 resources whose classification types can't be updated. An error
      code and an error message are provided for each failed item.</p>")
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
    @ocaml.doc("<p>(Discontinued) Use this parameter to indicate the maximum number of items that you want
      in the response. The default value is 250. </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>(Discontinued) Use this parameter when paginating results. Set its value to null on
      your first call to the <code>ListS3Resources</code> action. Subsequent calls to the action fill <code>nextToken</code>
      in the request with the value of <code>nextToken</code> from the previous response to continue listing
      data. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>(Discontinued) The Amazon Macie Classic member account ID whose associated S3 resources
      you want to list. </p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>(Discontinued) When a response is generated, if there is more data to be listed, this
      parameter is present in the response and contains the value to use for the <code>nextToken</code> parameter
      in a subsequent pagination request. If there is no more data to be listed, this parameter is
      set to null. </p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>(Discontinued) A list of the associated S3 resources returned by the action.</p>"
    )
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
    @ocaml.doc("<p>(Discontinued) The S3 resources (buckets or prefixes) that you want to remove from
      being monitored and classified by Amazon Macie Classic.</p>")
    associatedS3Resources: s3Resources,
    @ocaml.doc("<p>(Discontinued) The ID of the Amazon Macie Classic member account whose resources you
      want to remove from being monitored by Macie Classic.</p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>(Discontinued) S3 resources that couldn't be removed from being monitored and
      classified by Amazon Macie Classic. An error code and an error message are provided for each
      failed item. </p>")
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
    @ocaml.doc("<p>(Discontinued) The S3 resources that you want to associate with Amazon Macie Classic
      for monitoring and data classification.</p>")
    s3Resources: s3ResourcesClassification,
    @ocaml.doc("<p>(Discontinued) The ID of the Amazon Macie Classic member account whose resources you
      want to associate with Macie Classic.</p>")
    memberAccountId: option<awsaccountId>,
  }
  type response = {
    @ocaml.doc("<p>(Discontinued) S3 resources that couldn't be associated with Amazon Macie Classic. An
      error code and an error message are provided for each failed item.</p>")
    failedS3Resources: option<failedS3Resources>,
  }
  @module("@aws-sdk/client-macie") @new external new: request => t = "AssociateS3ResourcesCommand"
  let make = (~s3Resources, ~memberAccountId=?, ()) =>
    new({s3Resources: s3Resources, memberAccountId: memberAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
