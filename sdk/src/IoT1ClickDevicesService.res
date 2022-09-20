type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iot1click") @new
external createClient: unit => awsServiceClient = "IoT1ClickDevicesServiceClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __stringMin12Max40 = string
type __string = string
type __integer = int
type __doubleMin0Max100 = float
type __boolean = bool
type maxResults = int
type attributes = {.}
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type deviceMethod = {
  @ocaml.doc("<p>The name of the method applicable to the deviceType.</p>") @as("MethodName")
  methodName: option<__string>,
  @ocaml.doc("<p>The type of the device, such as \"button\".</p>") @as("DeviceType")
  deviceType: option<__string>,
}
@ocaml.doc("<p>
 DeviceAttributes is a string-to-string map specified by the user.</p>")
type deviceAttributes = Js.Dict.t<__string>
type device = {
  @ocaml.doc("<p>The device type, such as \"button\".</p>") @as("Type") type_: option<__string>,
  @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId")
  deviceId: option<__string>,
  @ocaml.doc("<p>The user specified attributes associated with the device for an event.</p>")
  @as("Attributes")
  attributes: option<attributes>,
}
type __listOfDeviceMethod = array<deviceMethod>
type deviceEvent = {
  @ocaml.doc("<p>A serialized JSON object representing the device-type specific event.</p>")
  @as("StdEvent")
  stdEvent: option<__string>,
  @ocaml.doc("<p>An object representing the device associated with the event.</p>") @as("Device")
  device: option<device>,
}
type deviceDescription = {
  @ocaml.doc("<p>The tags currently associated with the AWS IoT 1-Click device.</p>") @as("Tags")
  tags: option<__mapOf__string>,
  @ocaml.doc("<p>The type of the device, such as \"button\".</p>") @as("Type")
  type_: option<__string>,
  @ocaml.doc("<p>A value between 0 and 1 inclusive, representing the fraction of life remaining for the
 device.</p>")
  @as("RemainingLife")
  remainingLife: option<__doubleMin0Max100>,
  @ocaml.doc("<p>A Boolean value indicating whether or not the device is enabled.</p>")
  @as("Enabled")
  enabled: option<__boolean>,
  @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId")
  deviceId: option<__string>,
  @ocaml.doc("<p>An array of zero or more elements of DeviceAttribute objects providing
 user specified device attributes.</p>")
  @as("Attributes")
  attributes: option<deviceAttributes>,
  @ocaml.doc("<p>The ARN of the device.</p>") @as("Arn") arn: option<__string>,
}
type __listOfDeviceEvent = array<deviceEvent>
type __listOfDeviceDescription = array<deviceDescription>
@ocaml.doc("<p>Describes all of the AWS IoT 1-Click device-related API operations for the service.
 Also provides sample requests, responses, and errors for the supported web services
 protocols.</p>")
module UpdateDeviceState = {
  type t
  type request = {
    @ocaml.doc("<p>If true, the device is enabled. If false, the device is
 disabled.</p>")
    @as("Enabled")
    enabled: option<__boolean>,
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "UpdateDeviceStateCommand"
  let make = (~deviceId, ~enabled=?, ()) => new({enabled, deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UnclaimDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {
    @ocaml.doc("<p>The device's final claim state.</p>") @as("State") state: option<__string>,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "UnclaimDeviceCommand"
  let make = (~deviceId, ()) => new({deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InitiateDeviceClaim = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {
    @ocaml.doc("<p>The device's final claim state.</p>") @as("State") state: option<__string>,
  }
  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "InitiateDeviceClaimCommand"
  let make = (~deviceId, ()) => new({deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ClaimDevicesByClaimCode = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The claim code, starting with \"C-\", as provided by the device manufacturer.</p>"
    )
    @as("ClaimCode")
    claimCode: __string,
  }
  type response = {
    @ocaml.doc("<p>The total number of devices associated with the claim code that has been processed in
 the claim request.</p>")
    @as("Total")
    total: option<__integer>,
    @ocaml.doc("<p>The claim code provided by the device manufacturer.</p>") @as("ClaimCode")
    claimCode: option<__stringMin12Max40>,
  }
  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "ClaimDevicesByClaimCodeCommand"
  let make = (~claimCode, ()) => new({claimCode: claimCode})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A collections of tag keys. For example, {\"key1\",\"key2\"}</p>") @as("TagKeys")
    tagKeys: __listOf__string,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key/value pairs defining the resource tags. For example, {
 \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS
 Tagging Strategies</a>.</p><p>
 
 </p>")
    @as("Tags")
    tags: __mapOf__string,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: __string,
  }
  type response = {
    @ocaml.doc("<p>A collection of key/value pairs defining the resource tags. For example, {
 \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS
 Tagging Strategies</a>.</p><p>
 
 </p>")
    @as("Tags")
    tags: option<__mapOf__string>,
  }
  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InvokeDeviceMethod = {
  type t
  type request = {
    @ocaml.doc("<p>A JSON encoded string containing the device method request parameters.</p>")
    @as("DeviceMethodParameters")
    deviceMethodParameters: option<__string>,
    @ocaml.doc("<p>The device method to invoke.</p>") @as("DeviceMethod")
    deviceMethod: option<deviceMethod>,
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {
    @ocaml.doc("<p>A JSON encoded string containing the device method response.</p>")
    @as("DeviceMethodResponse")
    deviceMethodResponse: option<__string>,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "InvokeDeviceMethodCommand"
  let make = (~deviceId, ~deviceMethodParameters=?, ~deviceMethod=?, ()) =>
    new({deviceMethodParameters, deviceMethod, deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module FinalizeDeviceClaim = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of key/value pairs defining the resource tags. For example, {
 \"tags\": {\"key1\": \"value1\", \"key2\": \"value2\"} }. For more information, see <a href=\"https://aws.amazon.com/answers/account-management/aws-tagging-strategies/\">AWS
 Tagging Strategies</a>.</p><p>
 
 </p>")
    @as("Tags")
    tags: option<__mapOf__string>,
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {
    @ocaml.doc("<p>The device's final claim state.</p>") @as("State") state: option<__string>,
  }
  @module("@aws-sdk/client-iot1click") @new
  external new: request => t = "FinalizeDeviceClaimCommand"
  let make = (~deviceId, ~tags=?, ()) => new({tags, deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDeviceMethods = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {
    @ocaml.doc("<p>List of available device APIs.</p>") @as("DeviceMethods")
    deviceMethods: option<__listOfDeviceMethod>,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "GetDeviceMethodsCommand"
  let make = (~deviceId, ()) => new({deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {
    @ocaml.doc("<p>Device details.</p>") @as("DeviceDescription")
    deviceDescription: option<deviceDescription>,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "DescribeDeviceCommand"
  let make = (~deviceId, ()) => new({deviceId: deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results to return per request. If not set, a default value of
 100 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The type of the device, such as \"button\".</p>") @as("DeviceType")
    deviceType: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>A list of devices.</p>") @as("Devices")
    devices: option<__listOfDeviceDescription>,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "ListDevicesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~deviceType=?, ()) =>
    new({nextToken, maxResults, deviceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDeviceEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The end date for the device event query, in ISO8061 format. For example,
 2018-03-28T15:45:12.880Z
 </p>")
    @as("ToTimeStamp")
    toTimeStamp: __timestampIso8601,
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>The maximum number of results to return per request. If not set, a default value of
 100 is used.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The start date for the device event query, in ISO8061 format. For example,
 2018-03-28T15:45:12.880Z
 </p>")
    @as("FromTimeStamp")
    fromTimeStamp: __timestampIso8601,
    @ocaml.doc("<p>The unique identifier of the device.</p>") @as("DeviceId") deviceId: __string,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>") @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of zero or more elements describing the event(s) associated with the
 device.</p>")
    @as("Events")
    events: option<__listOfDeviceEvent>,
  }
  @module("@aws-sdk/client-iot1click") @new external new: request => t = "ListDeviceEventsCommand"
  let make = (~toTimeStamp, ~fromTimeStamp, ~deviceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({toTimeStamp, nextToken, maxResults, fromTimeStamp, deviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
