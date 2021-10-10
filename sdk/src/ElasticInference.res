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
@ocaml.doc("<p>
            The memory information of an Elastic Inference Accelerator type.
        </p>")
type memoryInfo = {
  @ocaml.doc("<p>
            The size in mebibytes of the Elastic Inference Accelerator type.
        </p>")
  sizeInMiB: option<integer_>,
}
@ocaml.doc("<p>
            A throughput entry for an Elastic Inference Accelerator type.
        </p>")
type keyValuePair = {
  @ocaml.doc("<p>
            The throughput value of the Elastic Inference Accelerator type.
        </p>")
  value: option<value>,
  @ocaml.doc("<p>
            The throughput value of the Elastic Inference Accelerator type. It can assume the following values:
            TFLOPS16bit: the throughput expressed in 16bit TeraFLOPS.
            TFLOPS32bit: the throughput expressed in 32bit TeraFLOPS.
        </p>")
  key: option<key>,
}
@ocaml.doc("<p>
            The health details of an Elastic Inference Accelerator.
        </p>")
type elasticInferenceAcceleratorHealth = {
  @ocaml.doc("<p>
            The health status of the Elastic Inference Accelerator.
        </p>")
  status: option<acceleratorHealthStatus>,
}
@ocaml.doc("<p>
            The offering for an Elastic Inference Accelerator type.
        </p>")
type acceleratorTypeOffering = {
  @ocaml.doc("<p>
            The location for the offering.
            It will return either the region, availability zone or availability zone id for the offering depending on the locationType value.
        </p>")
  location: option<location>,
  @ocaml.doc("<p>
            The location type for the offering. It can assume the following values:
            region: defines that the offering is at the regional level.
            availability-zone: defines that the offering is at the availability zone level.
            availability-zone-id: defines that the offering is at the availability zone level, defined by the availability zone id.
        </p>")
  locationType: option<locationType>,
  @ocaml.doc("<p>
            The name of the Elastic Inference Accelerator type.
        </p>")
  acceleratorType: option<acceleratorTypeName>,
}
type acceleratorTypeNameList = array<acceleratorTypeName>
type acceleratorIdList = array<acceleratorId>
type throughputInfoList = array<keyValuePair>
@ocaml.doc("<p>
            A filter expression for the Elastic Inference Accelerator list.
        </p>")
type filter = {
  @ocaml.doc("<p>
            The values for the filter of the Elastic Inference Accelerator list.
        </p>")
  values: option<valueStringList>,
  @ocaml.doc("<p>
            The filter name for the Elastic Inference Accelerator list. It can assume the following values:
            accelerator-type: the type of Elastic Inference Accelerator to filter for.
            instance-id: an EC2 instance id to filter for.
        </p>")
  name: option<filterName>,
}
@ocaml.doc("<p>
            The details of an Elastic Inference Accelerator.
        </p>")
type elasticInferenceAccelerator = {
  @ocaml.doc("<p>
            The ARN of the resource that the Elastic Inference Accelerator is attached to.
        </p>")
  attachedResource: option<resourceARN2>,
  @ocaml.doc("<p>
            The availability zone where the Elastic Inference Accelerator is present.
        </p>")
  availabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>
            The ID of the Elastic Inference Accelerator.
        </p>")
  acceleratorId: option<acceleratorId>,
  @ocaml.doc("<p>
            The type of the Elastic Inference Accelerator.
        </p>")
  acceleratorType: option<acceleratorTypeName>,
  @ocaml.doc("<p>
            The health of the Elastic Inference Accelerator.
        </p>")
  acceleratorHealth: option<elasticInferenceAcceleratorHealth>,
}
type acceleratorTypeOfferingList = array<acceleratorTypeOffering>
type filterList = array<filter>
type elasticInferenceAcceleratorSet = array<elasticInferenceAccelerator>
@ocaml.doc("<p>
            The details of an Elastic Inference Accelerator type.
        </p>")
type acceleratorType = {
  @ocaml.doc("<p>
            The throughput information of the Elastic Inference Accelerator type.
        </p>")
  throughputInfo: option<throughputInfoList>,
  @ocaml.doc("<p>
            The memory information of the Elastic Inference Accelerator type.
        </p>")
  memoryInfo: option<memoryInfo>,
  @ocaml.doc("<p>
            The name of the Elastic Inference Accelerator type.
        </p>")
  acceleratorTypeName: option<acceleratorTypeName>,
}
type acceleratorTypeList = array<acceleratorType>
@ocaml.doc("<p>
            Elastic Inference public APIs.
        </p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
            The list of tags to remove from the Elastic Inference Accelerator.
        </p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>
            The ARN of the Elastic Inference Accelerator to untag.
        </p>")
    resourceArn: resourceARN,
  }

  @module("@aws-sdk/client-elastic-inference") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
            The tags to add to the Elastic Inference Accelerator.
        </p>")
    tags: tagMap,
    @ocaml.doc("<p>
            The ARN of the Elastic Inference Accelerator to tag.
        </p>")
    resourceArn: resourceARN,
  }

  @module("@aws-sdk/client-elastic-inference") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
            The ARN of the Elastic Inference Accelerator to list the tags for.
        </p>")
    resourceArn: resourceARN,
  }
  type response = {
    @ocaml.doc("<p>
            The tags of the Elastic Inference Accelerator.
        </p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-elastic-inference") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAcceleratorOfferings = {
  type t
  type request = {
    @ocaml.doc("<p>
            The list of accelerator types to describe.
        </p>")
    acceleratorTypes: option<acceleratorTypeNameList>,
    @ocaml.doc("<p>
            The location type that you want to describe accelerator type offerings for. It can assume the following values:
            region: will return the accelerator type offering at the regional level.
            availability-zone: will return the accelerator type offering at the availability zone level.
            availability-zone-id: will return the accelerator type offering at the availability zone level returning the availability zone id.
        </p>")
    locationType: locationType,
  }
  type response = {
    @ocaml.doc("<p>
            The list of accelerator type offerings for a specific location.
        </p>")
    acceleratorTypeOfferings: option<acceleratorTypeOfferingList>,
  }
  @module("@aws-sdk/client-elastic-inference") @new
  external new: request => t = "DescribeAcceleratorOfferingsCommand"
  let make = (~locationType, ~acceleratorTypes=?, ()) =>
    new({acceleratorTypes: acceleratorTypes, locationType: locationType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccelerators = {
  type t
  type request = {
    @ocaml.doc("<p>
            A token to specify where to start paginating. This is the NextToken from a previously truncated response.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            The total number of items to return in the command's output. If the total number of items available is more than the value specified, a NextToken is provided in the command's output.
            To resume pagination, provide the NextToken value in the starting-token argument of a subsequent command.
            Do not use the NextToken response element directly outside of the AWS CLI.
        </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
            One or more filters. Filter names and values are case-sensitive. Valid filter names are:
            accelerator-types: can provide a list of accelerator type names to filter for.
            instance-id: can provide a list of EC2 instance ids to filter for.
        </p>")
    filters: option<filterList>,
    @ocaml.doc("<p>
            The IDs of the accelerators to describe.
        </p>")
    acceleratorIds: option<acceleratorIdList>,
  }
  type response = {
    @ocaml.doc("<p>
            A token to specify where to start paginating. This is the NextToken from a previously truncated response.
        </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
            The details of the Elastic Inference Accelerators.
        </p>")
    acceleratorSet: option<elasticInferenceAcceleratorSet>,
  }
  @module("@aws-sdk/client-elastic-inference") @new
  external new: request => t = "DescribeAcceleratorsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ~acceleratorIds=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      filters: filters,
      acceleratorIds: acceleratorIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAcceleratorTypes = {
  type t

  type response = {
    @ocaml.doc("<p>
            The available accelerator types.
        </p>")
    acceleratorTypes: option<acceleratorTypeList>,
  }
  @module("@aws-sdk/client-elastic-inference") @new
  external new: unit => t = "DescribeAcceleratorTypesCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
