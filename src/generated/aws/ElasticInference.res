type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-elastic-inference") @new
external createClient: unit => awsServiceClient = "ElasticInferenceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type value = int
type tagValue = string
type tagKey = string
type string_ = string
type resourceARN2 = string
type resourceARN = string
type nextToken = string
type maxResults = int
type locationType = [
  | @as("availability-zone-id") #Availability_Zone_Id
  | @as("availability-zone") #Availability_Zone
  | @as("region") #Region
]
type location = string
type key = string
type integer_ = int
type filterName = string
type availabilityZone = string
type acceleratorTypeName = string
type acceleratorId = string
type acceleratorHealthStatus = string
type valueStringList = array<string_>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type memoryInfo = {sizeInMiB: option<integer_>}
type keyValuePair = {
  value: option<value>,
  key: option<key>,
}
type elasticInferenceAcceleratorHealth = {status: option<acceleratorHealthStatus>}
type acceleratorTypeOffering = {
  location: option<location>,
  locationType: option<locationType>,
  acceleratorType: option<acceleratorTypeName>,
}
type acceleratorTypeNameList = array<acceleratorTypeName>
type acceleratorIdList = array<acceleratorId>
type throughputInfoList = array<keyValuePair>
type filter = {
  values: option<valueStringList>,
  name: option<filterName>,
}
type elasticInferenceAccelerator = {
  attachedResource: option<resourceARN2>,
  availabilityZone: option<availabilityZone>,
  acceleratorId: option<acceleratorId>,
  acceleratorType: option<acceleratorTypeName>,
  acceleratorHealth: option<elasticInferenceAcceleratorHealth>,
}
type acceleratorTypeOfferingList = array<acceleratorTypeOffering>
type filterList = array<filter>
type elasticInferenceAcceleratorSet = array<elasticInferenceAccelerator>
type acceleratorType = {
  throughputInfo: option<throughputInfoList>,
  memoryInfo: option<memoryInfo>,
  acceleratorTypeName: option<acceleratorTypeName>,
}
type acceleratorTypeList = array<acceleratorType>

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: resourceARN,
  }
  type response = unit
  @module("@aws-sdk/client-elastic-inference") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: resourceARN,
  }
  type response = unit
  @module("@aws-sdk/client-elastic-inference") @new
  external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: resourceARN}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-elastic-inference") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAcceleratorOfferings = {
  type t
  type request = {
    acceleratorTypes: option<acceleratorTypeNameList>,
    locationType: locationType,
  }
  type response = {acceleratorTypeOfferings: option<acceleratorTypeOfferingList>}
  @module("@aws-sdk/client-elastic-inference") @new
  external new_: request => t = "DescribeAcceleratorOfferingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccelerators = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    filters: option<filterList>,
    acceleratorIds: option<acceleratorIdList>,
  }
  type response = {
    nextToken: option<nextToken>,
    acceleratorSet: option<elasticInferenceAcceleratorSet>,
  }
  @module("@aws-sdk/client-elastic-inference") @new
  external new_: request => t = "DescribeAcceleratorsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAcceleratorTypes = {
  type t
  type request = unit
  type response = {acceleratorTypes: option<acceleratorTypeList>}
  @module("@aws-sdk/client-elastic-inference") @new
  external new_: request => t = "DescribeAcceleratorTypesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
