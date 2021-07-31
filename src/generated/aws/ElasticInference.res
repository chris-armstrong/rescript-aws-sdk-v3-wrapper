type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type value = int;
type tagValue = string
type tagKey = string
type amazonawsString = string
type resourceARN2 = string
type resourceARN = string
type nextToken = string
type maxResults = int;
type locationType = [@as("availability-zone-id") #availability_zone_id | @as("availability-zone") #availability_zone | @as("region") #region]
type location = string
type key = string
type amazonawsInteger = int;
type filterName = string
type availabilityZone = string
type acceleratorTypeName = string
type acceleratorId = string
type acceleratorHealthStatus = string
type valueStringList = array<amazonawsString>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type memoryInfo = {
@as("sizeInMiB") sizeInMiB: amazonawsInteger
}
type keyValuePair = {
@as("value") value: value,
@as("key") key: key
}
type elasticInferenceAcceleratorHealth = {
@as("status") status: acceleratorHealthStatus
}
type acceleratorTypeOffering = {
@as("location") location: location,
@as("locationType") locationType: locationType,
@as("acceleratorType") acceleratorType: acceleratorTypeName
}
type acceleratorTypeNameList = array<acceleratorTypeName>
type acceleratorIdList = array<acceleratorId>
type throughputInfoList = array<keyValuePair>
type filter = {
@as("values") values: valueStringList,
@as("name") name: filterName
}
type elasticInferenceAccelerator = {
@as("attachedResource") attachedResource: resourceARN2,
@as("availabilityZone") availabilityZone: availabilityZone,
@as("acceleratorId") acceleratorId: acceleratorId,
@as("acceleratorType") acceleratorType: acceleratorTypeName,
@as("acceleratorHealth") acceleratorHealth: elasticInferenceAcceleratorHealth
}
type acceleratorTypeOfferingList = array<acceleratorTypeOffering>
type filterList = array<filter>
type elasticInferenceAcceleratorSet = array<elasticInferenceAccelerator>
type acceleratorType = {
@as("throughputInfo") throughputInfo: throughputInfoList,
@as("memoryInfo") memoryInfo: memoryInfo,
@as("acceleratorTypeName") acceleratorTypeName: acceleratorTypeName
}
type acceleratorTypeList = array<acceleratorType>
type clientType;
@module("@aws-sdk/client-elastic-inference") @new external createClient: unit => clientType = "ElasticInferenceClient";
module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-elastic-inference") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-elastic-inference") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceARN>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-elastic-inference") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAcceleratorOfferings = {
  type t;
  type request = {
@as("acceleratorTypes") acceleratorTypes: acceleratorTypeNameList,
@as("locationType") locationType: option<locationType>
}
  type response = {
@as("acceleratorTypeOfferings") acceleratorTypeOfferings: acceleratorTypeOfferingList
}
  @module("@aws-sdk/client-elastic-inference") @new external new_: (request) => t = "DescribeAcceleratorOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccelerators = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("filters") filters: filterList,
@as("acceleratorIds") acceleratorIds: acceleratorIdList
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("acceleratorSet") acceleratorSet: elasticInferenceAcceleratorSet
}
  @module("@aws-sdk/client-elastic-inference") @new external new_: (request) => t = "DescribeAcceleratorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAcceleratorTypes = {
  type t;
  type request = unit
  type response = {
@as("acceleratorTypes") acceleratorTypes: acceleratorTypeList
}
  @module("@aws-sdk/client-elastic-inference") @new external new_: (request) => t = "DescribeAcceleratorTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
