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
type __timestampIso8601 = Js.Date.t;
type __stringMin12Max40 = string
type __string = string
type __integer = int
type __doubleMin0Max100 = float
type __boolean = bool
type maxResults = int
type attributes = unit
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type deviceMethod = {
@as("MethodName") methodName: option<__string>,
@as("DeviceType") deviceType: option<__string>
}
type deviceAttributes = Js.Dict.t< __string>
type device = {
@as("Type") type_: option<__string>,
@as("DeviceId") deviceId: option<__string>,
@as("Attributes") attributes: option<attributes>
}
type __listOfDeviceMethod = array<deviceMethod>
type deviceEvent = {
@as("StdEvent") stdEvent: option<__string>,
@as("Device") device: option<device>
}
type deviceDescription = {
@as("Tags") tags: option<__mapOf__string>,
@as("Type") type_: option<__string>,
@as("RemainingLife") remainingLife: option<__doubleMin0Max100>,
@as("Enabled") enabled: option<__boolean>,
@as("DeviceId") deviceId: option<__string>,
@as("Attributes") attributes: option<deviceAttributes>,
@as("Arn") arn: option<__string>
}
type __listOfDeviceEvent = array<deviceEvent>
type __listOfDeviceDescription = array<deviceDescription>
type awsServiceClient;
@module("@aws-sdk/client-iot1click") @new external createClient: unit => awsServiceClient = "IoT1ClickDevicesServiceClient";
module UpdateDeviceState = {
  type t;
  type request = {
@as("Enabled") enabled: option<__boolean>,
@as("DeviceId") deviceId: __string
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UpdateDeviceStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UnclaimDevice = {
  type t;
  type request = {
@as("DeviceId") deviceId: __string
}
  type response = {
@as("State") state: option<__string>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UnclaimDeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InitiateDeviceClaim = {
  type t;
  type request = {
@as("DeviceId") deviceId: __string
}
  type response = {
@as("State") state: option<__string>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "InitiateDeviceClaimCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ClaimDevicesByClaimCode = {
  type t;
  type request = {
@as("ClaimCode") claimCode: __string
}
  type response = {
@as("Total") total: option<__integer>,
@as("ClaimCode") claimCode: option<__stringMin12Max40>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ClaimDevicesByClaimCodeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: __listOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("ResourceArn") resourceArn: __string
}
  
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: __string
}
  type response = {
@as("Tags") tags: option<__mapOf__string>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InvokeDeviceMethod = {
  type t;
  type request = {
@as("DeviceMethodParameters") deviceMethodParameters: option<__string>,
@as("DeviceMethod") deviceMethod: option<deviceMethod>,
@as("DeviceId") deviceId: __string
}
  type response = {
@as("DeviceMethodResponse") deviceMethodResponse: option<__string>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "InvokeDeviceMethodCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module FinalizeDeviceClaim = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("DeviceId") deviceId: __string
}
  type response = {
@as("State") state: option<__string>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "FinalizeDeviceClaimCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeviceMethods = {
  type t;
  type request = {
@as("DeviceId") deviceId: __string
}
  type response = {
@as("DeviceMethods") deviceMethods: option<__listOfDeviceMethod>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "GetDeviceMethodsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDevice = {
  type t;
  type request = {
@as("DeviceId") deviceId: __string
}
  type response = {
@as("DeviceDescription") deviceDescription: option<deviceDescription>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "DescribeDeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDevices = {
  type t;
  type request = {
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DeviceType") deviceType: option<__string>
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("Devices") devices: option<__listOfDeviceDescription>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListDevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDeviceEvents = {
  type t;
  type request = {
@as("ToTimeStamp") toTimeStamp: __timestampIso8601,
@as("NextToken") nextToken: option<__string>,
@as("MaxResults") maxResults: option<maxResults>,
@as("FromTimeStamp") fromTimeStamp: __timestampIso8601,
@as("DeviceId") deviceId: __string
}
  type response = {
@as("NextToken") nextToken: option<__string>,
@as("Events") events: option<__listOfDeviceEvent>
}
  @module("@aws-sdk/client-iot1click") @new external new_: (request) => t = "ListDeviceEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
