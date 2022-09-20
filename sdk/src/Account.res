type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-account") @new
external createClient: unit => awsServiceClient = "AccountClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type title = string
type phoneNumber = string
type name = string
type emailAddress = string
type alternateContactType = [
  | @as("SECURITY") #SECURITY
  | @as("OPERATIONS") #OPERATIONS
  | @as("BILLING") #BILLING
]

type accountId = string
@ocaml.doc("<p>Operations for Amazon Web Services Account Management</p>")
@ocaml.doc("<p>A structure that contains the details of an alternate contact associated with an Amazon Web Services
            account</p>")
type alternateContact = {
  @ocaml.doc("<p>The type of alternate contact.</p>") @as("AlternateContactType")
  alternateContactType: option<alternateContactType>,
  @ocaml.doc("<p>The phone number associated with this alternate contact.</p>") @as("PhoneNumber")
  phoneNumber: option<phoneNumber>,
  @ocaml.doc("<p>The email address associated with this alternate contact.</p>") @as("EmailAddress")
  emailAddress: option<emailAddress>,
  @ocaml.doc("<p>The title associated with this alternate contact.</p>") @as("Title")
  title: option<title>,
  @ocaml.doc("<p>The name associated with this alternate contact.</p>") @as("Name")
  name: option<name>,
}
module PutAlternateContact = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the 12 digit account ID number of the Amazon Web Services account that 
        you want to access or modify with this operation.</p>
         <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the 
        identity used to call the operation.</p>
         <p>To use this parameter, the caller must be an identity in the <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account\">organization's management account</a> or a delegated administrator account, and 
        the specified account ID must be a member account in the same organization. The
        organization must have <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">all features 
        enabled</a>, and the organization must have <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html\">trusted access</a> enabled for the 
        Account Management service, and optionally a <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html\">delegated admin</a> account 
        assigned.</p>
         <note>
            <p>The management account can't specify its own <code>AccountId</code>; it must call
            the operation in standalone context by not including the <code>AccountId</code> 
            parameter.</p>
         </note>
         <p>To call this operation on an account that is not a member of an organization, then 
        don't specify this parameter, and call the operation using an identity belonging to
        the account whose contacts you wish to retrieve or modify.</p>")
    @as("AccountId")
    accountId: option<accountId>,
    @ocaml.doc("<p>Specifies which alternate contact you want to create or update.</p>")
    @as("AlternateContactType")
    alternateContactType: alternateContactType,
    @ocaml.doc("<p>Specifies a phone number for the alternate contact.</p>") @as("PhoneNumber")
    phoneNumber: phoneNumber,
    @ocaml.doc("<p>Specifies an email address for the alternate contact. </p>") @as("EmailAddress")
    emailAddress: emailAddress,
    @ocaml.doc("<p>Specifies a title for the alternate contact.</p>") @as("Title") title: title,
    @ocaml.doc("<p>Specifies a name for the alternate contact.</p>") @as("Name") name: name,
  }
  type response = {.}
  @module("@aws-sdk/client-account") @new external new: request => t = "PutAlternateContactCommand"
  let make = (
    ~alternateContactType,
    ~phoneNumber,
    ~emailAddress,
    ~title,
    ~name,
    ~accountId=?,
    (),
  ) => new({accountId, alternateContactType, phoneNumber, emailAddress, title, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAlternateContact = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the 12 digit account ID number of the Amazon Web Services account that 
        you want to access or modify with this operation.</p>
         <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the 
        identity used to call the operation.</p>
         <p>To use this parameter, the caller must be an identity in the <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account\">organization's management account</a> or a delegated administrator account, and 
        the specified account ID must be a member account in the same organization. The
        organization must have <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">all features 
        enabled</a>, and the organization must have <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html\">trusted access</a> enabled for the 
        Account Management service, and optionally a <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html\">delegated admin</a> account 
        assigned.</p>
         <note>
            <p>The management account can't specify its own <code>AccountId</code>; it must call
            the operation in standalone context by not including the <code>AccountId</code> 
            parameter.</p>
         </note>
         <p>To call this operation on an account that is not a member of an organization, then 
        don't specify this parameter, and call the operation using an identity belonging to
        the account whose contacts you wish to retrieve or modify.</p>")
    @as("AccountId")
    accountId: option<accountId>,
    @ocaml.doc("<p>Specifies which of the alternate contacts to delete. </p>")
    @as("AlternateContactType")
    alternateContactType: alternateContactType,
  }
  type response = {.}
  @module("@aws-sdk/client-account") @new
  external new: request => t = "DeleteAlternateContactCommand"
  let make = (~alternateContactType, ~accountId=?, ()) => new({accountId, alternateContactType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetAlternateContact = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the 12 digit account ID number of the Amazon Web Services account that 
        you want to access or modify with this operation.</p>
         <p>If you do not specify this parameter, it defaults to the Amazon Web Services account of the 
        identity used to call the operation.</p>
         <p>To use this parameter, the caller must be an identity in the <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account\">organization's management account</a> or a delegated administrator account, and 
        the specified account ID must be a member account in the same organization. The
        organization must have <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html\">all features 
        enabled</a>, and the organization must have <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html\">trusted access</a> enabled for the 
        Account Management service, and optionally a <a href=\"https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html\">delegated admin</a> account 
        assigned.</p>
         <note>
            <p>The management account can't specify its own <code>AccountId</code>; it must call
            the operation in standalone context by not including the <code>AccountId</code> 
            parameter.</p>
         </note>
         <p>To call this operation on an account that is not a member of an organization, then 
        don't specify this parameter, and call the operation using an identity belonging to
        the account whose contacts you wish to retrieve or modify.</p>")
    @as("AccountId")
    accountId: option<accountId>,
    @ocaml.doc("<p>Specifies which alternate contact you want to retrieve.</p>")
    @as("AlternateContactType")
    alternateContactType: alternateContactType,
  }
  type response = {
    @ocaml.doc("<p>A structure that contains the details for the specified alternate contact.</p>")
    @as("AlternateContact")
    alternateContact: option<alternateContact>,
  }
  @module("@aws-sdk/client-account") @new external new: request => t = "GetAlternateContactCommand"
  let make = (~alternateContactType, ~accountId=?, ()) => new({accountId, alternateContactType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
