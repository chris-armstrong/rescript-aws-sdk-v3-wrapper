type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __string = string
type __integer = int;
type __double = float;
type tcs = [@as("DENSITY") #DENSITY | @as("ST428-1") #ST428_1 | @as("ST2065-1") #ST2065_1 | @as("BT2100LINHLG") #BT2100LINHLG | @as("BT2100LINPQ") #BT2100LINPQ | @as("LINEAR") #LINEAR | @as("HLG") #HLG | @as("PQ") #PQ | @as("SDR") #SDR]
type status = [@as("ERROR") #ERROR | @as("STOPPING") #STOPPING | @as("STARTING") #STARTING | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("STANDBY") #STANDBY]
type state = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type sourceType = [@as("ENTITLED") #ENTITLED | @as("OWNED") #OWNED]
type scanMode = [@as("progressive-segmented-frame") #progressive_segmented_frame | @as("interlace") #interlace | @as("progressive") #progressive]
type resourceType = [@as("Mbps_Outbound_Bandwidth") #Mbps_Outbound_Bandwidth]
type reservationState = [@as("CANCELED") #CANCELED | @as("PROCESSING") #PROCESSING | @as("EXPIRED") #EXPIRED | @as("ACTIVE") #ACTIVE]
type range = [@as("FULLPROTECT") #FULLPROTECT | @as("FULL") #FULL | @as("NARROW") #NARROW]
type protocol = [@as("srt-listener") #srt_listener | @as("cdi") #cdi | @as("st2110-jpegxs") #st2110_jpegxs | @as("rist") #rist | @as("zixi-pull") #zixi_pull | @as("rtp") #rtp | @as("rtp-fec") #rtp_fec | @as("zixi-push") #zixi_push]
type priceUnits = [@as("HOURLY") #HOURLY]
type networkInterfaceType = [@as("efa") #efa | @as("ena") #ena]
type mediaStreamType = [@as("ancillary-data") #ancillary_data | @as("audio") #audio | @as("video") #video]
type maxResults = int;
type keyType = [@as("srt-password") #srt_password | @as("static-key") #static_key | @as("speke") #speke]
type entitlementStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type encodingName = [@as("pcm") #pcm | @as("smpte291") #smpte291 | @as("raw") #raw | @as("jxsv") #jxsv]
type encoderProfile = [@as("high") #high | @as("main") #main]
type durationUnits = [@as("MONTHS") #MONTHS]
type colorimetry = [@as("XYZ") #XYZ | @as("ST2065-3") #ST2065_3 | @as("ST2065-1") #ST2065_1 | @as("BT2100") #BT2100 | @as("BT2020") #BT2020 | @as("BT709") #BT709 | @as("BT601") #BT601]
type algorithm = [@as("aes256") #aes256 | @as("aes192") #aes192 | @as("aes128") #aes128]
type __mapOf__string = Js.Dict.t< __string>
type __listOf__string = array<__string>
type vpcInterfaceAttachment = {
@as("VpcInterfaceName") vpcInterfaceName: __string
}
type updateFailoverConfig = {
@as("State") state: state,
@as("RecoveryWindow") recoveryWindow: __integer
}
type updateEncryption = {
@as("Url") url: __string,
@as("SecretArn") secretArn: __string,
@as("RoleArn") roleArn: __string,
@as("ResourceId") resourceId: __string,
@as("Region") region: __string,
@as("KeyType") keyType: keyType,
@as("DeviceId") deviceId: __string,
@as("ConstantInitializationVector") constantInitializationVector: __string,
@as("Algorithm") algorithm: algorithm
}
type resourceSpecification = {
@as("ResourceType") resourceType: option<resourceType>,
@as("ReservedBitrate") reservedBitrate: __integer
}
type listedFlow = {
@as("Status") status: option<status>,
@as("SourceType") sourceType: option<sourceType>,
@as("Name") name: option<__string>,
@as("FlowArn") flowArn: option<__string>,
@as("Description") description: option<__string>,
@as("AvailabilityZone") availabilityZone: option<__string>
}
type listedEntitlement = {
@as("EntitlementName") entitlementName: option<__string>,
@as("EntitlementArn") entitlementArn: option<__string>,
@as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: __integer
}
type interfaceRequest = {
@as("Name") name: option<__string>
}
type interface = {
@as("Name") name: option<__string>
}
type fmtpRequest = {
@as("Tcs") tcs: tcs,
@as("ScanMode") scanMode: scanMode,
@as("Range") range: range,
@as("Par") par: __string,
@as("ExactFramerate") exactFramerate: __string,
@as("Colorimetry") colorimetry: colorimetry,
@as("ChannelOrder") channelOrder: __string
}
type fmtp = {
@as("Tcs") tcs: tcs,
@as("ScanMode") scanMode: scanMode,
@as("Range") range: range,
@as("Par") par: __string,
@as("ExactFramerate") exactFramerate: __string,
@as("Colorimetry") colorimetry: colorimetry,
@as("ChannelOrder") channelOrder: __string
}
type failoverConfig = {
@as("State") state: state,
@as("RecoveryWindow") recoveryWindow: __integer
}
type encryption = {
@as("Url") url: __string,
@as("SecretArn") secretArn: __string,
@as("RoleArn") roleArn: option<__string>,
@as("ResourceId") resourceId: __string,
@as("Region") region: __string,
@as("KeyType") keyType: keyType,
@as("DeviceId") deviceId: __string,
@as("ConstantInitializationVector") constantInitializationVector: __string,
@as("Algorithm") algorithm: algorithm
}
type encodingParametersRequest = {
@as("EncoderProfile") encoderProfile: option<encoderProfile>,
@as("CompressionFactor") compressionFactor: option<__double>
}
type encodingParameters = {
@as("EncoderProfile") encoderProfile: option<encoderProfile>,
@as("CompressionFactor") compressionFactor: option<__double>
}
type __listOfListedFlow = array<listedFlow>
type __listOfListedEntitlement = array<listedEntitlement>
type vpcInterfaceRequest = {
@as("SubnetId") subnetId: option<__string>,
@as("SecurityGroupIds") securityGroupIds: option<__listOf__string>,
@as("RoleArn") roleArn: option<__string>,
@as("NetworkInterfaceType") networkInterfaceType: networkInterfaceType,
@as("Name") name: option<__string>
}
type vpcInterface = {
@as("SubnetId") subnetId: option<__string>,
@as("SecurityGroupIds") securityGroupIds: option<__listOf__string>,
@as("RoleArn") roleArn: option<__string>,
@as("NetworkInterfaceType") networkInterfaceType: option<networkInterfaceType>,
@as("NetworkInterfaceIds") networkInterfaceIds: option<__listOf__string>,
@as("Name") name: option<__string>
}
type transport = {
@as("StreamId") streamId: __string,
@as("SmoothingLatency") smoothingLatency: __integer,
@as("RemoteId") remoteId: __string,
@as("Protocol") protocol: option<protocol>,
@as("MinLatency") minLatency: __integer,
@as("MaxSyncBuffer") maxSyncBuffer: __integer,
@as("MaxLatency") maxLatency: __integer,
@as("MaxBitrate") maxBitrate: __integer,
@as("CidrAllowList") cidrAllowList: __listOf__string
}
type reservation = {
@as("Start") start: option<__string>,
@as("ResourceSpecification") resourceSpecification: option<resourceSpecification>,
@as("ReservationState") reservationState: option<reservationState>,
@as("ReservationName") reservationName: option<__string>,
@as("ReservationArn") reservationArn: option<__string>,
@as("PriceUnits") priceUnits: option<priceUnits>,
@as("PricePerUnit") pricePerUnit: option<__string>,
@as("OfferingDescription") offeringDescription: option<__string>,
@as("OfferingArn") offeringArn: option<__string>,
@as("End") end: option<__string>,
@as("DurationUnits") durationUnits: option<durationUnits>,
@as("Duration") duration: option<__integer>,
@as("CurrencyCode") currencyCode: option<__string>
}
type offering = {
@as("ResourceSpecification") resourceSpecification: option<resourceSpecification>,
@as("PriceUnits") priceUnits: option<priceUnits>,
@as("PricePerUnit") pricePerUnit: option<__string>,
@as("OfferingDescription") offeringDescription: option<__string>,
@as("OfferingArn") offeringArn: option<__string>,
@as("DurationUnits") durationUnits: option<durationUnits>,
@as("Duration") duration: option<__integer>,
@as("CurrencyCode") currencyCode: option<__string>
}
type messages = {
@as("Errors") errors: option<__listOf__string>
}
type mediaStreamAttributesRequest = {
@as("Lang") lang: __string,
@as("Fmtp") fmtp: fmtpRequest
}
type mediaStreamAttributes = {
@as("Lang") lang: __string,
@as("Fmtp") fmtp: option<fmtp>
}
type inputConfigurationRequest = {
@as("Interface") interface: option<interfaceRequest>,
@as("InputPort") inputPort: option<__integer>
}
type inputConfiguration = {
@as("Interface") interface: option<interface>,
@as("InputPort") inputPort: option<__integer>,
@as("InputIp") inputIp: option<__string>
}
type grantEntitlementRequest = {
@as("Subscribers") subscribers: option<__listOf__string>,
@as("Name") name: __string,
@as("EntitlementStatus") entitlementStatus: entitlementStatus,
@as("Encryption") encryption: encryption,
@as("Description") description: __string,
@as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: __integer
}
type entitlement = {
@as("Subscribers") subscribers: option<__listOf__string>,
@as("Name") name: option<__string>,
@as("EntitlementStatus") entitlementStatus: entitlementStatus,
@as("EntitlementArn") entitlementArn: option<__string>,
@as("Encryption") encryption: encryption,
@as("Description") description: __string,
@as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: __integer
}
type destinationConfigurationRequest = {
@as("Interface") interface: option<interfaceRequest>,
@as("DestinationPort") destinationPort: option<__integer>,
@as("DestinationIp") destinationIp: option<__string>
}
type destinationConfiguration = {
@as("OutboundIp") outboundIp: option<__string>,
@as("Interface") interface: option<interface>,
@as("DestinationPort") destinationPort: option<__integer>,
@as("DestinationIp") destinationIp: option<__string>
}
type __listOfVpcInterfaceRequest = array<vpcInterfaceRequest>
type __listOfVpcInterface = array<vpcInterface>
type __listOfReservation = array<reservation>
type __listOfOffering = array<offering>
type __listOfInputConfigurationRequest = array<inputConfigurationRequest>
type __listOfInputConfiguration = array<inputConfiguration>
type __listOfGrantEntitlementRequest = array<grantEntitlementRequest>
type __listOfEntitlement = array<entitlement>
type __listOfDestinationConfigurationRequest = array<destinationConfigurationRequest>
type __listOfDestinationConfiguration = array<destinationConfiguration>
type mediaStream = {
@as("VideoFormat") videoFormat: __string,
@as("MediaStreamType") mediaStreamType: option<mediaStreamType>,
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("MediaStreamId") mediaStreamId: option<__integer>,
@as("Fmt") fmt: option<__integer>,
@as("Description") description: __string,
@as("ClockRate") clockRate: __integer,
@as("Attributes") attributes: mediaStreamAttributes
}
type addMediaStreamRequest = {
@as("VideoFormat") videoFormat: __string,
@as("MediaStreamType") mediaStreamType: option<mediaStreamType>,
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("MediaStreamId") mediaStreamId: option<__integer>,
@as("Description") description: __string,
@as("ClockRate") clockRate: __integer,
@as("Attributes") attributes: mediaStreamAttributesRequest
}
type __listOfMediaStream = array<mediaStream>
type __listOfAddMediaStreamRequest = array<addMediaStreamRequest>
type mediaStreamSourceConfigurationRequest = {
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("InputConfigurations") inputConfigurations: __listOfInputConfigurationRequest,
@as("EncodingName") encodingName: option<encodingName>
}
type mediaStreamSourceConfiguration = {
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("InputConfigurations") inputConfigurations: __listOfInputConfiguration,
@as("EncodingName") encodingName: option<encodingName>
}
type mediaStreamOutputConfigurationRequest = {
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("EncodingParameters") encodingParameters: encodingParametersRequest,
@as("EncodingName") encodingName: option<encodingName>,
@as("DestinationConfigurations") destinationConfigurations: __listOfDestinationConfigurationRequest
}
type mediaStreamOutputConfiguration = {
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("EncodingParameters") encodingParameters: encodingParameters,
@as("EncodingName") encodingName: option<encodingName>,
@as("DestinationConfigurations") destinationConfigurations: __listOfDestinationConfiguration
}
type __listOfMediaStreamSourceConfigurationRequest = array<mediaStreamSourceConfigurationRequest>
type __listOfMediaStreamSourceConfiguration = array<mediaStreamSourceConfiguration>
type __listOfMediaStreamOutputConfigurationRequest = array<mediaStreamOutputConfigurationRequest>
type __listOfMediaStreamOutputConfiguration = array<mediaStreamOutputConfiguration>
type source = {
@as("WhitelistCidr") whitelistCidr: __string,
@as("VpcInterfaceName") vpcInterfaceName: __string,
@as("Transport") transport: transport,
@as("SourceArn") sourceArn: option<__string>,
@as("Name") name: option<__string>,
@as("MediaStreamSourceConfigurations") mediaStreamSourceConfigurations: __listOfMediaStreamSourceConfiguration,
@as("IngestPort") ingestPort: __integer,
@as("IngestIp") ingestIp: __string,
@as("EntitlementArn") entitlementArn: __string,
@as("Description") description: __string,
@as("Decryption") decryption: encryption,
@as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: __integer
}
type setSourceRequest = {
@as("WhitelistCidr") whitelistCidr: __string,
@as("VpcInterfaceName") vpcInterfaceName: __string,
@as("StreamId") streamId: __string,
@as("Protocol") protocol: protocol,
@as("Name") name: __string,
@as("MinLatency") minLatency: __integer,
@as("MediaStreamSourceConfigurations") mediaStreamSourceConfigurations: __listOfMediaStreamSourceConfigurationRequest,
@as("MaxSyncBuffer") maxSyncBuffer: __integer,
@as("MaxLatency") maxLatency: __integer,
@as("MaxBitrate") maxBitrate: __integer,
@as("IngestPort") ingestPort: __integer,
@as("EntitlementArn") entitlementArn: __string,
@as("Description") description: __string,
@as("Decryption") decryption: encryption
}
type output = {
@as("VpcInterfaceAttachment") vpcInterfaceAttachment: vpcInterfaceAttachment,
@as("Transport") transport: transport,
@as("Port") port: __integer,
@as("OutputArn") outputArn: option<__string>,
@as("Name") name: option<__string>,
@as("MediaStreamOutputConfigurations") mediaStreamOutputConfigurations: __listOfMediaStreamOutputConfiguration,
@as("MediaLiveInputArn") mediaLiveInputArn: __string,
@as("ListenerAddress") listenerAddress: __string,
@as("EntitlementArn") entitlementArn: __string,
@as("Encryption") encryption: encryption,
@as("Destination") destination: __string,
@as("Description") description: __string,
@as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: __integer
}
type addOutputRequest = {
@as("VpcInterfaceAttachment") vpcInterfaceAttachment: vpcInterfaceAttachment,
@as("StreamId") streamId: __string,
@as("SmoothingLatency") smoothingLatency: __integer,
@as("RemoteId") remoteId: __string,
@as("Protocol") protocol: option<protocol>,
@as("Port") port: __integer,
@as("Name") name: __string,
@as("MinLatency") minLatency: __integer,
@as("MediaStreamOutputConfigurations") mediaStreamOutputConfigurations: __listOfMediaStreamOutputConfigurationRequest,
@as("MaxLatency") maxLatency: __integer,
@as("Encryption") encryption: encryption,
@as("Destination") destination: __string,
@as("Description") description: __string,
@as("CidrAllowList") cidrAllowList: __listOf__string
}
type __listOfSource = array<source>
type __listOfSetSourceRequest = array<setSourceRequest>
type __listOfOutput = array<output>
type __listOfAddOutputRequest = array<addOutputRequest>
type flow = {
@as("VpcInterfaces") vpcInterfaces: __listOfVpcInterface,
@as("Status") status: option<status>,
@as("Sources") sources: __listOfSource,
@as("SourceFailoverConfig") sourceFailoverConfig: failoverConfig,
@as("Source") source: option<source>,
@as("Outputs") outputs: option<__listOfOutput>,
@as("Name") name: option<__string>,
@as("MediaStreams") mediaStreams: __listOfMediaStream,
@as("FlowArn") flowArn: option<__string>,
@as("Entitlements") entitlements: option<__listOfEntitlement>,
@as("EgressIp") egressIp: __string,
@as("Description") description: __string,
@as("AvailabilityZone") availabilityZone: option<__string>
}
type clientType;
@module("@aws-sdk/client-mediaconnect") @new external createClient: unit => clientType = "MediaConnectClient";
module StopFlow = {
  type t;
  type request = {
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("Status") status: status,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "StopFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartFlow = {
  type t;
  type request = {
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("Status") status: status,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "StartFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeFlowEntitlement = {
  type t;
  type request = {
@as("FlowArn") flowArn: option<__string>,
@as("EntitlementArn") entitlementArn: option<__string>
}
  type response = {
@as("FlowArn") flowArn: __string,
@as("EntitlementArn") entitlementArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "RevokeFlowEntitlementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveFlowSource = {
  type t;
  type request = {
@as("SourceArn") sourceArn: option<__string>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("SourceArn") sourceArn: __string,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "RemoveFlowSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveFlowOutput = {
  type t;
  type request = {
@as("OutputArn") outputArn: option<__string>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("OutputArn") outputArn: __string,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "RemoveFlowOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveFlowMediaStream = {
  type t;
  type request = {
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("MediaStreamName") mediaStreamName: __string,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "RemoveFlowMediaStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFlow = {
  type t;
  type request = {
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("Status") status: status,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "DeleteFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<__mapOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveFlowVpcInterface = {
  type t;
  type request = {
@as("VpcInterfaceName") vpcInterfaceName: option<__string>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("VpcInterfaceName") vpcInterfaceName: __string,
@as("NonDeletedNetworkInterfaceIds") nonDeletedNetworkInterfaceIds: __listOf__string,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "RemoveFlowVpcInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: __mapOf__string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFlowEntitlement = {
  type t;
  type request = {
@as("Subscribers") subscribers: __listOf__string,
@as("FlowArn") flowArn: option<__string>,
@as("EntitlementStatus") entitlementStatus: entitlementStatus,
@as("EntitlementArn") entitlementArn: option<__string>,
@as("Encryption") encryption: updateEncryption,
@as("Description") description: __string
}
  type response = {
@as("FlowArn") flowArn: __string,
@as("Entitlement") entitlement: entitlement
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "UpdateFlowEntitlementCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseOffering = {
  type t;
  type request = {
@as("Start") start: option<__string>,
@as("ReservationName") reservationName: option<__string>,
@as("OfferingArn") offeringArn: option<__string>
}
  type response = {
@as("Reservation") reservation: reservation
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "PurchaseOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFlows = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Flows") flows: __listOfListedFlow
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "ListFlowsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEntitlements = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Entitlements") entitlements: __listOfListedEntitlement
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "ListEntitlementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservation = {
  type t;
  type request = {
@as("ReservationArn") reservationArn: option<__string>
}
  type response = {
@as("Reservation") reservation: reservation
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "DescribeReservationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOffering = {
  type t;
  type request = {
@as("OfferingArn") offeringArn: option<__string>
}
  type response = {
@as("Offering") offering: offering
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "DescribeOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFlowMediaStream = {
  type t;
  type request = {
@as("VideoFormat") videoFormat: __string,
@as("MediaStreamType") mediaStreamType: mediaStreamType,
@as("MediaStreamName") mediaStreamName: option<__string>,
@as("FlowArn") flowArn: option<__string>,
@as("Description") description: __string,
@as("ClockRate") clockRate: __integer,
@as("Attributes") attributes: mediaStreamAttributesRequest
}
  type response = {
@as("MediaStream") mediaStream: mediaStream,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "UpdateFlowMediaStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListReservations = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("Reservations") reservations: __listOfReservation,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "ListReservationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOfferings = {
  type t;
  type request = {
@as("NextToken") nextToken: __string,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("Offerings") offerings: __listOfOffering,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "ListOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GrantFlowEntitlements = {
  type t;
  type request = {
@as("FlowArn") flowArn: option<__string>,
@as("Entitlements") entitlements: option<__listOfGrantEntitlementRequest>
}
  type response = {
@as("FlowArn") flowArn: __string,
@as("Entitlements") entitlements: __listOfEntitlement
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "GrantFlowEntitlementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddFlowVpcInterfaces = {
  type t;
  type request = {
@as("VpcInterfaces") vpcInterfaces: option<__listOfVpcInterfaceRequest>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("VpcInterfaces") vpcInterfaces: __listOfVpcInterface,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "AddFlowVpcInterfacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddFlowMediaStreams = {
  type t;
  type request = {
@as("MediaStreams") mediaStreams: option<__listOfAddMediaStreamRequest>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("MediaStreams") mediaStreams: __listOfMediaStream,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "AddFlowMediaStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFlowSource = {
  type t;
  type request = {
@as("WhitelistCidr") whitelistCidr: __string,
@as("VpcInterfaceName") vpcInterfaceName: __string,
@as("StreamId") streamId: __string,
@as("SourceArn") sourceArn: option<__string>,
@as("Protocol") protocol: protocol,
@as("MinLatency") minLatency: __integer,
@as("MediaStreamSourceConfigurations") mediaStreamSourceConfigurations: __listOfMediaStreamSourceConfigurationRequest,
@as("MaxSyncBuffer") maxSyncBuffer: __integer,
@as("MaxLatency") maxLatency: __integer,
@as("MaxBitrate") maxBitrate: __integer,
@as("IngestPort") ingestPort: __integer,
@as("FlowArn") flowArn: option<__string>,
@as("EntitlementArn") entitlementArn: __string,
@as("Description") description: __string,
@as("Decryption") decryption: updateEncryption
}
  type response = {
@as("Source") source: source,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "UpdateFlowSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFlowOutput = {
  type t;
  type request = {
@as("VpcInterfaceAttachment") vpcInterfaceAttachment: vpcInterfaceAttachment,
@as("StreamId") streamId: __string,
@as("SmoothingLatency") smoothingLatency: __integer,
@as("RemoteId") remoteId: __string,
@as("Protocol") protocol: protocol,
@as("Port") port: __integer,
@as("OutputArn") outputArn: option<__string>,
@as("MinLatency") minLatency: __integer,
@as("MediaStreamOutputConfigurations") mediaStreamOutputConfigurations: __listOfMediaStreamOutputConfigurationRequest,
@as("MaxLatency") maxLatency: __integer,
@as("FlowArn") flowArn: option<__string>,
@as("Encryption") encryption: updateEncryption,
@as("Destination") destination: __string,
@as("Description") description: __string,
@as("CidrAllowList") cidrAllowList: __listOf__string
}
  type response = {
@as("Output") output: output,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "UpdateFlowOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddFlowSources = {
  type t;
  type request = {
@as("Sources") sources: option<__listOfSetSourceRequest>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("Sources") sources: __listOfSource,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "AddFlowSourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddFlowOutputs = {
  type t;
  type request = {
@as("Outputs") outputs: option<__listOfAddOutputRequest>,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("Outputs") outputs: __listOfOutput,
@as("FlowArn") flowArn: __string
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "AddFlowOutputsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFlow = {
  type t;
  type request = {
@as("SourceFailoverConfig") sourceFailoverConfig: updateFailoverConfig,
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("Flow") flow: flow
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "UpdateFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFlow = {
  type t;
  type request = {
@as("FlowArn") flowArn: option<__string>
}
  type response = {
@as("Messages") messages: messages,
@as("Flow") flow: flow
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "DescribeFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFlow = {
  type t;
  type request = {
@as("VpcInterfaces") vpcInterfaces: __listOfVpcInterfaceRequest,
@as("Sources") sources: __listOfSetSourceRequest,
@as("SourceFailoverConfig") sourceFailoverConfig: failoverConfig,
@as("Source") source: setSourceRequest,
@as("Outputs") outputs: __listOfAddOutputRequest,
@as("Name") name: option<__string>,
@as("MediaStreams") mediaStreams: __listOfAddMediaStreamRequest,
@as("Entitlements") entitlements: __listOfGrantEntitlementRequest,
@as("AvailabilityZone") availabilityZone: __string
}
  type response = {
@as("Flow") flow: flow
}
  @module("@aws-sdk/client-mediaconnect") @new external new_: (request) => t = "CreateFlowCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
