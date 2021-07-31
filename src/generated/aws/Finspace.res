type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type urn = string
type url = string
type errorMessage = string
type tagValue = string
type tagKey = string
type smsDomainUrl = string
type samlMetadataDocument = string
type resultLimit = int;
type paginationToken = string
type kmsKeyId = string
type idType = string
type federationProviderName = string
type federationMode = [@as("LOCAL") #LOCAL | @as("FEDERATED") #FEDERATED]
type federationAttributeKey = string
type environmentStatus = [@as("SUSPENDED") #SUSPENDED | @as("FAILED_DELETION") #FAILED_DELETION | @as("RETRY_DELETION") #RETRY_DELETION | @as("FAILED_CREATION") #FAILED_CREATION | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("DELETE_REQUESTED") #DELETE_REQUESTED | @as("CREATED") #CREATED | @as("CREATING") #CREATING | @as("CREATE_REQUESTED") #CREATE_REQUESTED]
type environmentName = string
type environmentArn = string
type description = string
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type attributeMap = Js.Dict.t< url>
type federationParameters = {
@as("attributeMap") attributeMap: attributeMap,
@as("federationProviderName") federationProviderName: federationProviderName,
@as("federationURN") federationURN: urn,
@as("applicationCallBackURL") applicationCallBackURL: url,
@as("samlMetadataURL") samlMetadataURL: url,
@as("samlMetadataDocument") samlMetadataDocument: samlMetadataDocument
}
type environment = {
@as("federationParameters") federationParameters: federationParameters,
@as("federationMode") federationMode: federationMode,
@as("dedicatedServiceAccountId") dedicatedServiceAccountId: idType,
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("sageMakerStudioDomainUrl") sageMakerStudioDomainUrl: smsDomainUrl,
@as("environmentArn") environmentArn: environmentArn,
@as("description") description: description,
@as("environmentUrl") environmentUrl: url,
@as("status") status: environmentStatus,
@as("awsAccountId") awsAccountId: idType,
@as("environmentId") environmentId: idType,
@as("name") name: environmentName
}
type environmentList = array<environment>
type clientType;
@module("@aws-sdk/client-finspace") @new external createClient: unit => clientType = "FinspaceClient";
module DeleteEnvironment = {
  type t;
  type request = {
@as("environmentId") environmentId: option<idType>
}
  type response = unit
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "DeleteEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<environmentArn>
}
  type response = unit
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<environmentArn>
}
  type response = unit
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<environmentArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEnvironment = {
  type t;
  type request = {
@as("federationParameters") federationParameters: federationParameters,
@as("federationMode") federationMode: federationMode,
@as("tags") tags: tagMap,
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("description") description: description,
@as("name") name: option<environmentName>
}
  type response = {
@as("environmentUrl") environmentUrl: url,
@as("environmentArn") environmentArn: environmentArn,
@as("environmentId") environmentId: idType
}
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "CreateEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEnvironment = {
  type t;
  type request = {
@as("federationParameters") federationParameters: federationParameters,
@as("federationMode") federationMode: federationMode,
@as("description") description: description,
@as("name") name: environmentName,
@as("environmentId") environmentId: option<idType>
}
  type response = {
@as("environment") environment: environment
}
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "UpdateEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEnvironment = {
  type t;
  type request = {
@as("environmentId") environmentId: option<idType>
}
  type response = {
@as("environment") environment: environment
}
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "GetEnvironmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEnvironments = {
  type t;
  type request = {
@as("maxResults") maxResults: resultLimit,
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("environments") environments: environmentList
}
  @module("@aws-sdk/client-finspace") @new external new_: (Js.Promise.t<request>) => t = "ListEnvironmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
