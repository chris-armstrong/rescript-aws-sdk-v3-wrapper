type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tunnelStatus = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type tunnelId = string
type tunnelArn = string
type timeoutInMin = int;
type thingName = string
type tagValue = string
type tagKey = string
type service = string
type nextToken = string
type maxResults = int;
type errorMessage = string
type description = string
type deleteFlag = bool;
type dateType = Js.Date.t;
type connectionStatus = [@as("DISCONNECTED") #DISCONNECTED | @as("CONNECTED") #CONNECTED]
type clientAccessToken = string
type amazonResourceName = string
type tunnelSummary = {
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("createdAt") createdAt: dateType,
@as("description") description: description,
@as("status") status: tunnelStatus,
@as("tunnelArn") tunnelArn: tunnelArn,
@as("tunnelId") tunnelId: tunnelId
}
type timeoutConfig = {
@as("maxLifetimeTimeoutMinutes") maxLifetimeTimeoutMinutes: timeoutInMin
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type serviceList = array<service>
type connectionState = {
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("status") status: connectionStatus
}
type tunnelSummaryList = array<tunnelSummary>
type tagList = array<tag>
type destinationConfig = {
@as("services") services: option<serviceList>,
@as("thingName") thingName: thingName
}
type tunnel = {
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("createdAt") createdAt: dateType,
@as("tags") tags: tagList,
@as("timeoutConfig") timeoutConfig: timeoutConfig,
@as("destinationConfig") destinationConfig: destinationConfig,
@as("description") description: description,
@as("destinationConnectionState") destinationConnectionState: connectionState,
@as("sourceConnectionState") sourceConnectionState: connectionState,
@as("status") status: tunnelStatus,
@as("tunnelArn") tunnelArn: tunnelArn,
@as("tunnelId") tunnelId: tunnelId
}
type clientType;
@module("@aws-sdk/client-iotsecuredtunneling") @new external createClient: unit => clientType = "IoTSecureTunnelingClient";
module CloseTunnel = {
  type t;
  type request = {
@as("delete") delete: deleteFlag,
@as("tunnelId") tunnelId: option<tunnelId>
}
  type response = unit
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (Js.Promise.t<request>) => t = "CloseTunnelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module OpenTunnel = {
  type t;
  type request = {
@as("timeoutConfig") timeoutConfig: timeoutConfig,
@as("destinationConfig") destinationConfig: destinationConfig,
@as("tags") tags: tagList,
@as("description") description: description
}
  type response = {
@as("destinationAccessToken") destinationAccessToken: clientAccessToken,
@as("sourceAccessToken") sourceAccessToken: clientAccessToken,
@as("tunnelArn") tunnelArn: tunnelArn,
@as("tunnelId") tunnelId: tunnelId
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (Js.Promise.t<request>) => t = "OpenTunnelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTunnels = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("thingName") thingName: thingName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tunnelSummaries") tunnelSummaries: tunnelSummaryList
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (Js.Promise.t<request>) => t = "ListTunnelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTunnel = {
  type t;
  type request = {
@as("tunnelId") tunnelId: option<tunnelId>
}
  type response = {
@as("tunnel") tunnel: tunnel
}
  @module("@aws-sdk/client-iotsecuredtunneling") @new external new_: (Js.Promise.t<request>) => t = "DescribeTunnelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
