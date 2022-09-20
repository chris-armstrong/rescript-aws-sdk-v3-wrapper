type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-finspace") @new
external createClient: unit => awsServiceClient = "FinspaceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type urn = string
type url = string
type errorMessage = string
type tagValue = string
type tagKey = string
type smsDomainUrl = string
type samlMetadataDocument = string
type resultLimit = int
type paginationToken = string
type nameString = string
type kmsKeyId = string
type idType = string
type federationProviderName = string
type federationMode = [@as("LOCAL") #LOCAL | @as("FEDERATED") #FEDERATED]
type federationAttributeKey = string
type environmentStatus = [
  | @as("SUSPENDED") #SUSPENDED
  | @as("FAILED_DELETION") #FAILED_DELETION
  | @as("RETRY_DELETION") #RETRY_DELETION
  | @as("FAILED_CREATION") #FAILED_CREATION
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("DELETE_REQUESTED") #DELETE_REQUESTED
  | @as("CREATED") #CREATED
  | @as("CREATING") #CREATING
  | @as("CREATE_REQUESTED") #CREATE_REQUESTED
]
type environmentName = string
type environmentArn = string
type emailId = string
type description = string
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the data bundle.</p>") type dataBundleArn = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Configuration information for the superuser.</p>")
type superuserParameters = {
  @ocaml.doc("<p>The last name of the superuser.</p>") lastName: nameString,
  @ocaml.doc("<p>The first name of the superuser.</p>") firstName: nameString,
  @ocaml.doc("<p>The email address of the superuser.</p>") emailAddress: emailId,
}
type dataBundleArns = array<dataBundleArn>
type attributeMap = Js.Dict.t<url>
@ocaml.doc("<p>Configuration information when authentication mode is FEDERATED.</p>")
type federationParameters = {
  @ocaml.doc("<p>SAML attribute name and value. The name must always be <code>Email</code> and the value should be set to
         the attribute definition in which user email is set. For example, name would be <code>Email</code> and
         value <code>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress</code>.
         Please check your SAML 2.0 compliant identity provider (IdP) documentation for details.</p>")
  attributeMap: option<attributeMap>,
  @ocaml.doc("<p>Name of the identity provider (IdP).</p>")
  federationProviderName: option<federationProviderName>,
  @ocaml.doc(
    "<p>The Uniform Resource Name (URN). Also referred as Service Provider URN or Audience URI or Service Provider Entity ID.</p>"
  )
  federationURN: option<urn>,
  @ocaml.doc("<p>The redirect or sign-in URL that should be entered into the SAML 2.0 compliant identity provider configuration
       (IdP).</p>")
  applicationCallBackURL: option<url>,
  @ocaml.doc(
    "<p>Provide the metadata URL from your SAML 2.0 compliant identity provider (IdP).</p>"
  )
  samlMetadataURL: option<url>,
  @ocaml.doc("<p>SAML 2.0 Metadata document from identity provider (IdP).</p>")
  samlMetadataDocument: option<samlMetadataDocument>,
}
@ocaml.doc("<p>Represents an FinSpace environment.</p>")
type environment = {
  @ocaml.doc("<p>Configuration information when authentication mode is FEDERATED.</p>")
  federationParameters: option<federationParameters>,
  @ocaml.doc("<p>The authentication mode for the environment.</p>")
  federationMode: option<federationMode>,
  @ocaml.doc("<p>The AWS account ID of the dedicated service account associated with your FinSpace
         environment.</p>")
  dedicatedServiceAccountId: option<idType>,
  @ocaml.doc("<p>The KMS key id used to encrypt in the FinSpace environment.</p>")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc(
    "<p>The url of the integrated FinSpace notebook environment in your web application.</p>"
  )
  sageMakerStudioDomainUrl: option<smsDomainUrl>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of your FinSpace environment.</p>")
  environmentArn: option<environmentArn>,
  @ocaml.doc("<p>The description of the FinSpace environment.</p>")
  description: option<description>,
  @ocaml.doc("<p>The sign-in url for the web application of your FinSpace environment.</p>")
  environmentUrl: option<url>,
  @ocaml.doc("<p>The current status of creation of the FinSpace environment.</p>")
  status: option<environmentStatus>,
  @ocaml.doc("<p>The ID of the AWS account in which the FinSpace environment is created.</p>")
  awsAccountId: option<idType>,
  @ocaml.doc("<p>The identifier of the FinSpace environment.</p>") environmentId: option<idType>,
  @ocaml.doc("<p>The name of the FinSpace environment.</p>") name: option<environmentName>,
}
type environmentList = array<environment>
@ocaml.doc(
  "<p>The FinSpace management service provides the APIs for managing FinSpace environments.</p>"
)
module DeleteEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the FinSpace environment.</p>") environmentId: idType,
  }
  type response = {.}
  @module("@aws-sdk/client-finspace") @new external new: request => t = "DeleteEnvironmentCommand"
  let make = (~environmentId, ()) => new({environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys (names) of one or more tags to be removed.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>A FinSpace resource from which you want to remove a tag or tags. The value for this
         parameter is an Amazon Resource Name (ARN).</p>")
    resourceArn: environmentArn,
  }
  type response = {.}
  @module("@aws-sdk/client-finspace") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags to be assigned to the resource.</p>") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the resource.</p>")
    resourceArn: environmentArn,
  }
  type response = {.}
  @module("@aws-sdk/client-finspace") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") resourceArn: environmentArn,
  }
  type response = {@ocaml.doc("<p>A list of all tags for a resource.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-finspace") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The list of Amazon Resource Names (ARN) of the data bundles to install. Currently supported data bundle ARNs:</p>
         <ul>
            <li>
               <p>
                  <code>arn:aws:finspace:${Region}::data-bundle/capital-markets-sample</code> - Contains sample Capital Markets datasets, categories and controlled vocabularies.</p>
            </li>
            <li>
               <p>
                  <code>arn:aws:finspace:${Region}::data-bundle/taq</code> (default) - Contains trades and quotes data in addition to sample Capital Markets data.</p>
            </li>
         </ul>")
    dataBundles: option<dataBundleArns>,
    @ocaml.doc("<p>Configuration information for the superuser.</p>")
    superuserParameters: option<superuserParameters>,
    @ocaml.doc("<p>Configuration information when authentication mode is FEDERATED.</p>")
    federationParameters: option<federationParameters>,
    @ocaml.doc("<p>Authentication mode for the environment.</p>
         <ul>
            <li>
               <p>
                  <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
            </li>
            <li>
               <p>
                  <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
            </li>
         </ul>")
    federationMode: option<federationMode>,
    @ocaml.doc("<p>Add tags to your FinSpace environment.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The KMS key id to encrypt your data in the FinSpace environment.</p>")
    kmsKeyId: option<kmsKeyId>,
    @ocaml.doc("<p>The description of the FinSpace environment to be created.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the FinSpace environment to be created.</p>") name: environmentName,
  }
  type response = {
    @ocaml.doc(
      "<p>The sign-in url for the web application of the FinSpace environment you created.</p>"
    )
    environmentUrl: option<url>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the FinSpace environment that you created.</p>"
    )
    environmentArn: option<environmentArn>,
    @ocaml.doc("<p>The unique identifier for FinSpace environment that you created.</p>")
    environmentId: option<idType>,
  }
  @module("@aws-sdk/client-finspace") @new external new: request => t = "CreateEnvironmentCommand"
  let make = (
    ~name,
    ~dataBundles=?,
    ~superuserParameters=?,
    ~federationParameters=?,
    ~federationMode=?,
    ~tags=?,
    ~kmsKeyId=?,
    ~description=?,
    (),
  ) =>
    new({
      dataBundles,
      superuserParameters,
      federationParameters,
      federationMode,
      tags,
      kmsKeyId,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateEnvironment = {
  type t
  type request = {
    federationParameters: option<federationParameters>,
    @ocaml.doc("<p>Authentication mode for the environment.</p>
         <ul>
            <li>
               <p>
                  <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
            </li>
            <li>
               <p>
                  <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
            </li>
         </ul>")
    federationMode: option<federationMode>,
    @ocaml.doc("<p>The description of the environment.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the environment.</p>") name: option<environmentName>,
    @ocaml.doc("<p>The identifier of the FinSpace environment.</p>") environmentId: idType,
  }
  type response = {
    @ocaml.doc("<p>Returns the FinSpace environment object.</p>") environment: option<environment>,
  }
  @module("@aws-sdk/client-finspace") @new external new: request => t = "UpdateEnvironmentCommand"
  let make = (
    ~environmentId,
    ~federationParameters=?,
    ~federationMode=?,
    ~description=?,
    ~name=?,
    (),
  ) => new({federationParameters, federationMode, description, name, environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEnvironment = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the FinSpace environment.</p>") environmentId: idType,
  }
  type response = {
    @ocaml.doc("<p>The name of the FinSpace environment.</p>") environment: option<environment>,
  }
  @module("@aws-sdk/client-finspace") @new external new: request => t = "GetEnvironmentCommand"
  let make = (~environmentId, ()) => new({environmentId: environmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEnvironments = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this request.</p>")
    maxResults: option<resultLimit>,
    @ocaml.doc("<p>A token generated by FinSpace that specifies where to continue pagination if a previous
         request was truncated. To get the next set of pages, pass in the nextToken value from the
         response object of the previous page call.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that you can use in a subsequent call to retrieve the next set of
         results.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of all of your FinSpace environments.</p>")
    environments: option<environmentList>,
  }
  @module("@aws-sdk/client-finspace") @new external new: request => t = "ListEnvironmentsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
