type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-iotsecuredtunneling") @new external createClient: unit => awsServiceClient = "IoTSecureTunnelingClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type tunnelStatus = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type tunnelId = string
type tunnelArn = string
type timeoutInMin = int
type thingName = string
type tagValue = string
type tagKey = string
type service = string
type nextToken = string
type maxResults = int
type errorMessage = string
type description = string
type deleteFlag = bool
type dateType = Js.Date.t;
type connectionStatus = [@as("DISCONNECTED") #DISCONNECTED | @as("CONNECTED") #CONNECTED]
type clientAccessToken = string
type amazonResourceName = string
type tunnelSummary = {
lastUpdatedAt: option<dateType>,
  createdAt: option<dateType>,
  description: option<description>,
  status: option<tunnelStatus>,
  tunnelArn: option<tunnelArn>,
  tunnelId: option<tunnelId>
}
type timeoutConfig = {
maxLifetimeTimeoutMinutes: option<timeoutInMin>
}
type tagKeyList = array<tagKey>
type tag = {
value: tagValue,
  key: tagKey
}
type serviceList = array<service>
type connectionState = {
lastUpdatedAt: option<dateType>,
  status: option<connectionStatus>
}
type tunnelSummaryList = array<tunnelSummary>
type tagList_ = array<tag>
type destinationConfig = {
services: serviceList,
  thingName: option<thingName>
}
type tunnel = {
lastUpdatedAt: option<dateType>,
  createdAt: option<dateType>,
  tags: option<tagList_>,
  timeoutConfig: option<timeoutConfig>,
  destinationConfig: option<destinationConfig>,
  description: option<description>,
  destinationConnectionState: option<connectionState>,
  sourceConnectionState: option<connectionState>,
  status: option<tunnelStatus>,
  tunnelArn: option<tunnelArn>,
  tunnelId: option<tunnelId>
}

module CloseTunnel = {
  type t;
  type request = {
delete: option<deleteFlag>,
  tunnelId: tunnelId
}
  type response = unit
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (request) => t = "CloseTunnelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagList_,
  resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module OpenTunnel = {
  type t;
  type request = {
timeoutConfig: option<timeoutConfig>,
  destinationConfig: option<destinationConfig>,
  tags: option<tagList_>,
  description: option<description>
}
  type response = {
destinationAccessToken: option<clientAccessToken>,
  sourceAccessToken: option<clientAccessToken>,
  tunnelArn: option<tunnelArn>,
  tunnelId: option<tunnelId>
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (request) => t = "OpenTunnelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTunnels = {
  type t;
  type request = {
nextToken: option<nextToken>,
  maxResults: option<maxResults>,
  thingName: option<thingName>
}
  type response = {
nextToken: option<nextToken>,
  tunnelSummaries: option<tunnelSummaryList>
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (request) => t = "ListTunnelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: amazonResourceName
}
  type response = {
tags: option<tagList_>
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTunnel = {
  type t;
  type request = {
tunnelId: tunnelId
}
  type response = {
tunnel: option<tunnel>
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (request) => t = "DescribeTunnelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
