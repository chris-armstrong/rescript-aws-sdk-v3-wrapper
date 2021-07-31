type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediastore") @new
external createClient: unit => awsServiceClient = "MediaStoreClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timeStamp = Js.Date.t
type tagValue = string
type tagKey = string
type paginationToken = string
type origin = string
type objectGroupName = string
type objectGroup = string
type methodName = [@as("HEAD") #HEAD | @as("DELETE") #DELETE | @as("GET") #GET | @as("PUT") #PUT]
type maxAgeSeconds = int
type lifecyclePolicy = string
type header = string
type errorMessage = string
type endpoint = string
type containerStatus = [
  | @as("DELETING") #DELETING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type containerPolicy = string
type containerName = string
type containerListLimit = int
type containerLevelMetrics = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type containerAccessLoggingEnabled = bool
type containerARN = string
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: tagKey,
}
type metricPolicyRule = {
  @as("ObjectGroupName") objectGroupName: objectGroupName,
  @as("ObjectGroup") objectGroup: objectGroup,
}
type exposeHeaders = array<header>
type container = {
  @as("AccessLoggingEnabled") accessLoggingEnabled: option<containerAccessLoggingEnabled>,
  @as("Status") status: option<containerStatus>,
  @as("Name") name: option<containerName>,
  @as("ARN") arn: option<containerARN>,
  @as("CreationTime") creationTime: option<timeStamp>,
  @as("Endpoint") endpoint: option<endpoint>,
}
type allowedOrigins = array<origin>
type allowedMethods = array<methodName>
type allowedHeaders = array<header>
type tagList_ = array<tag>
type metricPolicyRules = array<metricPolicyRule>
type corsRule = {
  @as("ExposeHeaders") exposeHeaders: option<exposeHeaders>,
  @as("MaxAgeSeconds") maxAgeSeconds: option<maxAgeSeconds>,
  @as("AllowedHeaders") allowedHeaders: allowedHeaders,
  @as("AllowedMethods") allowedMethods: option<allowedMethods>,
  @as("AllowedOrigins") allowedOrigins: allowedOrigins,
}
type containerList = array<container>
type metricPolicy = {
  @as("MetricPolicyRules") metricPolicyRules: option<metricPolicyRules>,
  @as("ContainerLevelMetrics") containerLevelMetrics: containerLevelMetrics,
}
type corsPolicy = array<corsRule>

module StopAccessLogging = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "StopAccessLoggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAccessLogging = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "StartAccessLoggingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutLifecyclePolicy = {
  type t
  type request = {
    @as("LifecyclePolicy") lifecyclePolicy: lifecyclePolicy,
    @as("ContainerName") containerName: containerName,
  }
  type response = unit
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "PutLifecyclePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutContainerPolicy = {
  type t
  type request = {
    @as("Policy") policy: containerPolicy,
    @as("ContainerName") containerName: containerName,
  }
  type response = unit
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "PutContainerPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLifecyclePolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = {@as("LifecyclePolicy") lifecyclePolicy: lifecyclePolicy}
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "GetLifecyclePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerPolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = {@as("Policy") policy: containerPolicy}
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "GetContainerPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMetricPolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "DeleteMetricPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLifecyclePolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "DeleteLifecyclePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCorsPolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DeleteCorsPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContainerPolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "DeleteContainerPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContainer = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DeleteContainerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("Resource") resource: containerARN,
  }
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeContainer = {
  type t
  type request = {@as("ContainerName") containerName: option<containerName>}
  type response = {@as("Container") container: option<container>}
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "DescribeContainerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("Resource") resource: containerARN,
  }
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("Resource") resource: containerARN}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-mediastore") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContainers = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<containerListLimit>,
    @as("NextToken") nextToken: option<paginationToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<paginationToken>,
    @as("Containers") containers: containerList,
  }
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "ListContainersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContainer = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ContainerName") containerName: containerName,
  }
  type response = {@as("Container") container: container}
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "CreateContainerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutMetricPolicy = {
  type t
  type request = {
    @as("MetricPolicy") metricPolicy: metricPolicy,
    @as("ContainerName") containerName: containerName,
  }
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "PutMetricPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutCorsPolicy = {
  type t
  type request = {
    @as("CorsPolicy") corsPolicy: corsPolicy,
    @as("ContainerName") containerName: containerName,
  }
  type response = unit
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "PutCorsPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMetricPolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = {@as("MetricPolicy") metricPolicy: metricPolicy}
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "GetMetricPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCorsPolicy = {
  type t
  type request = {@as("ContainerName") containerName: containerName}
  type response = {@as("CorsPolicy") corsPolicy: corsPolicy}
  @module("@aws-sdk/client-mediastore") @new external new: request => t = "GetCorsPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
