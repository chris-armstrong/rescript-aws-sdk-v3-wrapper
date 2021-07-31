type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timeStamp = Js.Date.t;
type tagValue = string
type tagKey = string
type paginationToken = string
type origin = string
type objectGroupName = string
type objectGroup = string
type methodName = [@as("HEAD") #HEAD | @as("DELETE") #DELETE | @as("GET") #GET | @as("PUT") #PUT]
type maxAgeSeconds = int;
type lifecyclePolicy = string
type header = string
type errorMessage = string
type endpoint = string
type containerStatus = [@as("DELETING") #DELETING | @as("CREATING") #CREATING | @as("ACTIVE") #ACTIVE]
type containerPolicy = string
type containerName = string
type containerListLimit = int;
type containerLevelMetrics = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type containerAccessLoggingEnabled = bool;
type containerARN = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type metricPolicyRule = {
@as("ObjectGroupName") objectGroupName: option<objectGroupName>,
@as("ObjectGroup") objectGroup: option<objectGroup>
}
type exposeHeaders = array<header>
type container = {
@as("AccessLoggingEnabled") accessLoggingEnabled: containerAccessLoggingEnabled,
@as("Status") status: containerStatus,
@as("Name") name: containerName,
@as("ARN") aRN: containerARN,
@as("CreationTime") creationTime: timeStamp,
@as("Endpoint") endpoint: endpoint
}
type allowedOrigins = array<origin>
type allowedMethods = array<methodName>
type allowedHeaders = array<header>
type tagList = array<tag>
type metricPolicyRules = array<metricPolicyRule>
type corsRule = {
@as("ExposeHeaders") exposeHeaders: exposeHeaders,
@as("MaxAgeSeconds") maxAgeSeconds: maxAgeSeconds,
@as("AllowedHeaders") allowedHeaders: option<allowedHeaders>,
@as("AllowedMethods") allowedMethods: allowedMethods,
@as("AllowedOrigins") allowedOrigins: option<allowedOrigins>
}
type containerList = array<container>
type metricPolicy = {
@as("MetricPolicyRules") metricPolicyRules: metricPolicyRules,
@as("ContainerLevelMetrics") containerLevelMetrics: option<containerLevelMetrics>
}
type corsPolicy = array<corsRule>
type clientType;
@module("@aws-sdk/client-mediastore") @new external createClient: unit => clientType = "MediaStoreClient";
module StopAccessLogging = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "StopAccessLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartAccessLogging = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "StartAccessLoggingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLifecyclePolicy = {
  type t;
  type request = {
@as("LifecyclePolicy") lifecyclePolicy: option<lifecyclePolicy>,
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "PutLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutContainerPolicy = {
  type t;
  type request = {
@as("Policy") policy: option<containerPolicy>,
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "PutContainerPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLifecyclePolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = {
@as("LifecyclePolicy") lifecyclePolicy: option<lifecyclePolicy>
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "GetLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerPolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = {
@as("Policy") policy: option<containerPolicy>
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "GetContainerPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMetricPolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "DeleteMetricPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLifecyclePolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "DeleteLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCorsPolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "DeleteCorsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContainerPolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "DeleteContainerPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContainer = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "DeleteContainerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("Resource") resource: option<containerARN>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeContainer = {
  type t;
  type request = {
@as("ContainerName") containerName: containerName
}
  type response = {
@as("Container") container: container
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "DescribeContainerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("Resource") resource: option<containerARN>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Resource") resource: option<containerARN>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListContainers = {
  type t;
  type request = {
@as("MaxResults") maxResults: containerListLimit,
@as("NextToken") nextToken: paginationToken
}
  type response = {
@as("NextToken") nextToken: paginationToken,
@as("Containers") containers: option<containerList>
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "ListContainersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContainer = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ContainerName") containerName: option<containerName>
}
  type response = {
@as("Container") container: option<container>
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "CreateContainerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutMetricPolicy = {
  type t;
  type request = {
@as("MetricPolicy") metricPolicy: option<metricPolicy>,
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "PutMetricPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutCorsPolicy = {
  type t;
  type request = {
@as("CorsPolicy") corsPolicy: option<corsPolicy>,
@as("ContainerName") containerName: option<containerName>
}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "PutCorsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMetricPolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = {
@as("MetricPolicy") metricPolicy: option<metricPolicy>
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "GetMetricPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCorsPolicy = {
  type t;
  type request = {
@as("ContainerName") containerName: option<containerName>
}
  type response = {
@as("CorsPolicy") corsPolicy: option<corsPolicy>
}
  @module("@aws-sdk/client-mediastore") @new external new_: (request) => t = "GetCorsPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
