type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __stringMin12Max40 = string
type __string = string
type __integer = int;
type __doubleMin0Max100 = float;
type __boolean = bool;
type maxResults = int;
type attributes = unit
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type deviceMethod = {
@as("MethodName") methodName: __string,
@as("DeviceType") deviceType: __string
}
type deviceAttributes = Js.Dict.t< __string>
type device = {
@as("Type") type_: __string,
@as("DeviceId") deviceId: __string,
@as("Attributes") attributes: attributes
}
type __listOfDeviceMethod = array<deviceMethod>
type deviceEvent = {
@as("StdEvent") stdEvent: __string,
@as("Device") device: device
}
type deviceDescription = {
@as("Tags") tags: __mapOf__string,
@as("Type") type_: __string,
@as("RemainingLife") remainingLife: __doubleMin0Max100,
@as("Enabled") enabled: __boolean,
@as("DeviceId") deviceId: __string,
@as("Attributes") attributes: deviceAttributes,
@as("Arn") arn: __string
}
type __listOfDeviceEvent = array<deviceEvent>
type __listOfDeviceDescription = array<deviceDescription>
type clientType;
@module("@aws-sdk/client-iot1click") @new external createClient: unit => clientType = "IoT1ClickDevicesServiceClient";
module UpdateDeviceState = {
  type t;
  type request = {
@as("Enabled") enabled: __boolean,
@as("DeviceId") deviceId: option<__string>
}
  type response = unit
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "UpdateDeviceStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UnclaimDevice = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<__string>
}
  type response = {
@as("State") state: __string
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "UnclaimDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitiateDeviceClaim = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<__string>
}
  type response = {
@as("State") state: __string
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "InitiateDeviceClaimCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ClaimDevicesByClaimCode = {
  type t;
  type request = {
@as("ClaimCode") claimCode: option<__string>
}
  type response = {
@as("Total") total: __integer,
@as("ClaimCode") claimCode: __stringMin12Max40
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "ClaimDevicesByClaimCodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InvokeDeviceMethod = {
  type t;
  type request = {
@as("DeviceMethodParameters") deviceMethodParameters: __string,
@as("DeviceMethod") deviceMethod: deviceMethod,
@as("DeviceId") deviceId: option<__string>
}
  type response = {
@as("DeviceMethodResponse") deviceMethodResponse: __string
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "InvokeDeviceMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FinalizeDeviceClaim = {
  type t;
  type request = {
@as("Tags") tags: __mapOf__string,
@as("DeviceId") deviceId: option<__string>
}
  type response = {
@as("State") state: __string
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "FinalizeDeviceClaimCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeviceMethods = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<__string>
}
  type response = {
@as("DeviceMethods") deviceMethods: __listOfDeviceMethod
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "GetDeviceMethodsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDevice = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<__string>
}
  type response = {
@as("DeviceDescription") deviceDescription: deviceDescription
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "DescribeDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDevices = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("DeviceType") deviceType: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Devices") devices: __listOfDeviceDescription
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "ListDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeviceEvents = {
  type t;
  type request = {
@as("ToTimeStamp") toTimeStamp: option<__timestampIso8601>,
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults,
@as("FromTimeStamp") fromTimeStamp: option<__timestampIso8601>,
@as("DeviceId") deviceId: option<__string>
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Events") events: __listOfDeviceEvent
}
  @module("@aws-sdk/client-iot1click") @new external new_: (Js.Promise.t<request>) => t = "ListDeviceEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
