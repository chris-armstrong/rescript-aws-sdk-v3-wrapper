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
type urn = string
type url = string
type errorMessage = string
type tagValue = string
type tagKey = string
type smsDomainUrl = string
type samlMetadataDocument = string
type resultLimit = int
type paginationToken = string
type kmsKeyId = string
type idType = string
type federationProviderName = string
type federationMode = [@as("LOCAL") #LOCAL | @as("FEDERATED") #FEDERATED]
type federationAttributeKey = string
type environmentStatus = [@as("SUSPENDED") #SUSPENDED | @as("FAILED_DELETION") #FAILEDDELETION | @as("RETRY_DELETION") #RETRYDELETION | @as("FAILED_CREATION") #FAILEDCREATION | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("DELETE_REQUESTED") #DELETEREQUESTED | @as("CREATED") #CREATED | @as("CREATING") #CREATING | @as("CREATE_REQUESTED") #CREATEREQUESTED]
type environmentName = string
type environmentArn = string
type description = string
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type attributeMap = Js.Dict.t< url>
type federationParameters = {
attributeMap: option<attributeMap>,
federationProviderName: option<federationProviderName>,
federationURN: option<urn>,
applicationCallBackURL: option<url>,
samlMetadataURL: option<url>,
samlMetadataDocument: option<samlMetadataDocument>
}
type environment = {
federationParameters: option<federationParameters>,
federationMode: option<federationMode>,
dedicatedServiceAccountId: option<idType>,
kmsKeyId: option<kmsKeyId>,
sageMakerStudioDomainUrl: option<smsDomainUrl>,
environmentArn: option<environmentArn>,
description: option<description>,
environmentUrl: option<url>,
status: option<environmentStatus>,
awsAccountId: option<idType>,
environmentId: option<idType>,
name: option<environmentName>
}
type environmentList = array<environment>
type awsServiceClient;
@module("@aws-sdk/client-finspace") @new external createClient: unit => awsServiceClient = "FinspaceClient";
module DeleteEnvironment = {
  type t;
  type request = {
environmentId: idType
}
  type response = unit
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "DeleteEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: environmentArn
}
  type response = unit
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
resourceArn: environmentArn
}
  type response = unit
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: environmentArn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEnvironment = {
  type t;
  type request = {
federationParameters: option<federationParameters>,
federationMode: option<federationMode>,
tags: option<tagMap>,
kmsKeyId: option<kmsKeyId>,
description: option<description>,
name: environmentName
}
  type response = {
environmentUrl: option<url>,
environmentArn: option<environmentArn>,
environmentId: option<idType>
}
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "CreateEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateEnvironment = {
  type t;
  type request = {
federationParameters: option<federationParameters>,
federationMode: option<federationMode>,
description: option<description>,
name: option<environmentName>,
environmentId: idType
}
  type response = {
environment: option<environment>
}
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "UpdateEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEnvironment = {
  type t;
  type request = {
environmentId: idType
}
  type response = {
environment: option<environment>
}
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "GetEnvironmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEnvironments = {
  type t;
  type request = {
maxResults: option<resultLimit>,
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
environments: option<environmentList>
}
  @module("@aws-sdk/client-finspace") @new external new_: (request) => t = "ListEnvironmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
