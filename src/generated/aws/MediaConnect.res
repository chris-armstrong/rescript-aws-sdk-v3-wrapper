type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-mediaconnect") @new
external createClient: unit => awsServiceClient = "MediaConnectClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __string = string
type __integer = int
type __double = float
type tcs = [
  | @as("DENSITY") #DENSITY
  | @as("ST428-1") #ST428_1
  | @as("ST2065-1") #ST2065_1
  | @as("BT2100LINHLG") #BT2100LINHLG
  | @as("BT2100LINPQ") #BT2100LINPQ
  | @as("LINEAR") #LINEAR
  | @as("HLG") #HLG
  | @as("PQ") #PQ
  | @as("SDR") #SDR
]
type status = [
  | @as("ERROR") #ERROR
  | @as("STOPPING") #STOPPING
  | @as("STARTING") #STARTING
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("ACTIVE") #ACTIVE
  | @as("STANDBY") #STANDBY
]
type state = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type sourceType = [@as("ENTITLED") #ENTITLED | @as("OWNED") #OWNED]
type scanMode = [
  | @as("progressive-segmented-frame") #Progressive_Segmented_Frame
  | @as("interlace") #Interlace
  | @as("progressive") #Progressive
]
type resourceType = [@as("Mbps_Outbound_Bandwidth") #Mbps_Outbound_Bandwidth]
type reservationState = [
  | @as("CANCELED") #CANCELED
  | @as("PROCESSING") #PROCESSING
  | @as("EXPIRED") #EXPIRED
  | @as("ACTIVE") #ACTIVE
]
type range = [@as("FULLPROTECT") #FULLPROTECT | @as("FULL") #FULL | @as("NARROW") #NARROW]
type protocol = [
  | @as("srt-listener") #Srt_Listener
  | @as("cdi") #Cdi
  | @as("st2110-jpegxs") #St2110_Jpegxs
  | @as("rist") #Rist
  | @as("zixi-pull") #Zixi_Pull
  | @as("rtp") #Rtp
  | @as("rtp-fec") #Rtp_Fec
  | @as("zixi-push") #Zixi_Push
]
type priceUnits = [@as("HOURLY") #HOURLY]
type networkInterfaceType = [@as("efa") #Efa | @as("ena") #Ena]
type mediaStreamType = [
  | @as("ancillary-data") #Ancillary_Data
  | @as("audio") #Audio
  | @as("video") #Video
]
type maxResults = int
type keyType = [
  | @as("srt-password") #Srt_Password
  | @as("static-key") #Static_Key
  | @as("speke") #Speke
]
type entitlementStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type encodingName = [
  | @as("pcm") #Pcm
  | @as("smpte291") #Smpte291
  | @as("raw") #Raw
  | @as("jxsv") #Jxsv
]
type encoderProfile = [@as("high") #High | @as("main") #Main]
type durationUnits = [@as("MONTHS") #MONTHS]
type colorimetry = [
  | @as("XYZ") #XYZ
  | @as("ST2065-3") #ST2065_3
  | @as("ST2065-1") #ST2065_1
  | @as("BT2100") #BT2100
  | @as("BT2020") #BT2020
  | @as("BT709") #BT709
  | @as("BT601") #BT601
]
type algorithm = [@as("aes256") #Aes256 | @as("aes192") #Aes192 | @as("aes128") #Aes128]
type __mapOf__string = Js.Dict.t<__string>
type __listOf__string = array<__string>
type vpcInterfaceAttachment = {@as("VpcInterfaceName") vpcInterfaceName: option<__string>}
type updateFailoverConfig = {
  @as("State") state: option<state>,
  @as("RecoveryWindow") recoveryWindow: option<__integer>,
}
type updateEncryption = {
  @as("Url") url: option<__string>,
  @as("SecretArn") secretArn: option<__string>,
  @as("RoleArn") roleArn: option<__string>,
  @as("ResourceId") resourceId: option<__string>,
  @as("Region") region: option<__string>,
  @as("KeyType") keyType: option<keyType>,
  @as("DeviceId") deviceId: option<__string>,
  @as("ConstantInitializationVector") constantInitializationVector: option<__string>,
  @as("Algorithm") algorithm: option<algorithm>,
}
type resourceSpecification = {
  @as("ResourceType") resourceType: resourceType,
  @as("ReservedBitrate") reservedBitrate: option<__integer>,
}
type listedFlow = {
  @as("Status") status: status,
  @as("SourceType") sourceType: sourceType,
  @as("Name") name: __string,
  @as("FlowArn") flowArn: __string,
  @as("Description") description: __string,
  @as("AvailabilityZone") availabilityZone: __string,
}
type listedEntitlement = {
  @as("EntitlementName") entitlementName: __string,
  @as("EntitlementArn") entitlementArn: __string,
  @as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: option<__integer>,
}
type interfaceRequest = {@as("Name") name: __string}
type interface = {@as("Name") name: __string}
type fmtpRequest = {
  @as("Tcs") tcs: option<tcs>,
  @as("ScanMode") scanMode: option<scanMode>,
  @as("Range") range: option<range>,
  @as("Par") par: option<__string>,
  @as("ExactFramerate") exactFramerate: option<__string>,
  @as("Colorimetry") colorimetry: option<colorimetry>,
  @as("ChannelOrder") channelOrder: option<__string>,
}
type fmtp = {
  @as("Tcs") tcs: option<tcs>,
  @as("ScanMode") scanMode: option<scanMode>,
  @as("Range") range: option<range>,
  @as("Par") par: option<__string>,
  @as("ExactFramerate") exactFramerate: option<__string>,
  @as("Colorimetry") colorimetry: option<colorimetry>,
  @as("ChannelOrder") channelOrder: option<__string>,
}
type failoverConfig = {
  @as("State") state: option<state>,
  @as("RecoveryWindow") recoveryWindow: option<__integer>,
}
type encryption = {
  @as("Url") url: option<__string>,
  @as("SecretArn") secretArn: option<__string>,
  @as("RoleArn") roleArn: __string,
  @as("ResourceId") resourceId: option<__string>,
  @as("Region") region: option<__string>,
  @as("KeyType") keyType: option<keyType>,
  @as("DeviceId") deviceId: option<__string>,
  @as("ConstantInitializationVector") constantInitializationVector: option<__string>,
  @as("Algorithm") algorithm: option<algorithm>,
}
type encodingParametersRequest = {
  @as("EncoderProfile") encoderProfile: encoderProfile,
  @as("CompressionFactor") compressionFactor: __double,
}
type encodingParameters = {
  @as("EncoderProfile") encoderProfile: encoderProfile,
  @as("CompressionFactor") compressionFactor: __double,
}
type __listOfListedFlow = array<listedFlow>
type __listOfListedEntitlement = array<listedEntitlement>
type vpcInterfaceRequest = {
  @as("SubnetId") subnetId: __string,
  @as("SecurityGroupIds") securityGroupIds: __listOf__string,
  @as("RoleArn") roleArn: __string,
  @as("NetworkInterfaceType") networkInterfaceType: option<networkInterfaceType>,
  @as("Name") name: __string,
}
type vpcInterface = {
  @as("SubnetId") subnetId: __string,
  @as("SecurityGroupIds") securityGroupIds: __listOf__string,
  @as("RoleArn") roleArn: __string,
  @as("NetworkInterfaceType") networkInterfaceType: networkInterfaceType,
  @as("NetworkInterfaceIds") networkInterfaceIds: __listOf__string,
  @as("Name") name: __string,
}
type transport = {
  @as("StreamId") streamId: option<__string>,
  @as("SmoothingLatency") smoothingLatency: option<__integer>,
  @as("RemoteId") remoteId: option<__string>,
  @as("Protocol") protocol: protocol,
  @as("MinLatency") minLatency: option<__integer>,
  @as("MaxSyncBuffer") maxSyncBuffer: option<__integer>,
  @as("MaxLatency") maxLatency: option<__integer>,
  @as("MaxBitrate") maxBitrate: option<__integer>,
  @as("CidrAllowList") cidrAllowList: option<__listOf__string>,
}
type reservation = {
  @as("Start") start: __string,
  @as("ResourceSpecification") resourceSpecification: resourceSpecification,
  @as("ReservationState") reservationState: reservationState,
  @as("ReservationName") reservationName: __string,
  @as("ReservationArn") reservationArn: __string,
  @as("PriceUnits") priceUnits: priceUnits,
  @as("PricePerUnit") pricePerUnit: __string,
  @as("OfferingDescription") offeringDescription: __string,
  @as("OfferingArn") offeringArn: __string,
  @as("End") end: __string,
  @as("DurationUnits") durationUnits: durationUnits,
  @as("Duration") duration: __integer,
  @as("CurrencyCode") currencyCode: __string,
}
type offering = {
  @as("ResourceSpecification") resourceSpecification: resourceSpecification,
  @as("PriceUnits") priceUnits: priceUnits,
  @as("PricePerUnit") pricePerUnit: __string,
  @as("OfferingDescription") offeringDescription: __string,
  @as("OfferingArn") offeringArn: __string,
  @as("DurationUnits") durationUnits: durationUnits,
  @as("Duration") duration: __integer,
  @as("CurrencyCode") currencyCode: __string,
}
type messages = {@as("Errors") errors: __listOf__string}
type mediaStreamAttributesRequest = {
  @as("Lang") lang: option<__string>,
  @as("Fmtp") fmtp: option<fmtpRequest>,
}
type mediaStreamAttributes = {
  @as("Lang") lang: option<__string>,
  @as("Fmtp") fmtp: fmtp,
}
type inputConfigurationRequest = {
  @as("Interface") interface: interfaceRequest,
  @as("InputPort") inputPort: __integer,
}
type inputConfiguration = {
  @as("Interface") interface: interface,
  @as("InputPort") inputPort: __integer,
  @as("InputIp") inputIp: __string,
}
type grantEntitlementRequest = {
  @as("Subscribers") subscribers: __listOf__string,
  @as("Name") name: option<__string>,
  @as("EntitlementStatus") entitlementStatus: option<entitlementStatus>,
  @as("Encryption") encryption: option<encryption>,
  @as("Description") description: option<__string>,
  @as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: option<__integer>,
}
type entitlement = {
  @as("Subscribers") subscribers: __listOf__string,
  @as("Name") name: __string,
  @as("EntitlementStatus") entitlementStatus: option<entitlementStatus>,
  @as("EntitlementArn") entitlementArn: __string,
  @as("Encryption") encryption: option<encryption>,
  @as("Description") description: option<__string>,
  @as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: option<__integer>,
}
type destinationConfigurationRequest = {
  @as("Interface") interface: interfaceRequest,
  @as("DestinationPort") destinationPort: __integer,
  @as("DestinationIp") destinationIp: __string,
}
type destinationConfiguration = {
  @as("OutboundIp") outboundIp: __string,
  @as("Interface") interface: interface,
  @as("DestinationPort") destinationPort: __integer,
  @as("DestinationIp") destinationIp: __string,
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
  @as("VideoFormat") videoFormat: option<__string>,
  @as("MediaStreamType") mediaStreamType: mediaStreamType,
  @as("MediaStreamName") mediaStreamName: __string,
  @as("MediaStreamId") mediaStreamId: __integer,
  @as("Fmt") fmt: __integer,
  @as("Description") description: option<__string>,
  @as("ClockRate") clockRate: option<__integer>,
  @as("Attributes") attributes: option<mediaStreamAttributes>,
}
type addMediaStreamRequest = {
  @as("VideoFormat") videoFormat: option<__string>,
  @as("MediaStreamType") mediaStreamType: mediaStreamType,
  @as("MediaStreamName") mediaStreamName: __string,
  @as("MediaStreamId") mediaStreamId: __integer,
  @as("Description") description: option<__string>,
  @as("ClockRate") clockRate: option<__integer>,
  @as("Attributes") attributes: option<mediaStreamAttributesRequest>,
}
type __listOfMediaStream = array<mediaStream>
type __listOfAddMediaStreamRequest = array<addMediaStreamRequest>
type mediaStreamSourceConfigurationRequest = {
  @as("MediaStreamName") mediaStreamName: __string,
  @as("InputConfigurations") inputConfigurations: option<__listOfInputConfigurationRequest>,
  @as("EncodingName") encodingName: encodingName,
}
type mediaStreamSourceConfiguration = {
  @as("MediaStreamName") mediaStreamName: __string,
  @as("InputConfigurations") inputConfigurations: option<__listOfInputConfiguration>,
  @as("EncodingName") encodingName: encodingName,
}
type mediaStreamOutputConfigurationRequest = {
  @as("MediaStreamName") mediaStreamName: __string,
  @as("EncodingParameters") encodingParameters: option<encodingParametersRequest>,
  @as("EncodingName") encodingName: encodingName,
  @as("DestinationConfigurations")
  destinationConfigurations: option<__listOfDestinationConfigurationRequest>,
}
type mediaStreamOutputConfiguration = {
  @as("MediaStreamName") mediaStreamName: __string,
  @as("EncodingParameters") encodingParameters: option<encodingParameters>,
  @as("EncodingName") encodingName: encodingName,
  @as("DestinationConfigurations")
  destinationConfigurations: option<__listOfDestinationConfiguration>,
}
type __listOfMediaStreamSourceConfigurationRequest = array<mediaStreamSourceConfigurationRequest>
type __listOfMediaStreamSourceConfiguration = array<mediaStreamSourceConfiguration>
type __listOfMediaStreamOutputConfigurationRequest = array<mediaStreamOutputConfigurationRequest>
type __listOfMediaStreamOutputConfiguration = array<mediaStreamOutputConfiguration>
type source = {
  @as("WhitelistCidr") whitelistCidr: option<__string>,
  @as("VpcInterfaceName") vpcInterfaceName: option<__string>,
  @as("Transport") transport: option<transport>,
  @as("SourceArn") sourceArn: __string,
  @as("Name") name: __string,
  @as("MediaStreamSourceConfigurations")
  mediaStreamSourceConfigurations: option<__listOfMediaStreamSourceConfiguration>,
  @as("IngestPort") ingestPort: option<__integer>,
  @as("IngestIp") ingestIp: option<__string>,
  @as("EntitlementArn") entitlementArn: option<__string>,
  @as("Description") description: option<__string>,
  @as("Decryption") decryption: option<encryption>,
  @as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: option<__integer>,
}
type setSourceRequest = {
  @as("WhitelistCidr") whitelistCidr: option<__string>,
  @as("VpcInterfaceName") vpcInterfaceName: option<__string>,
  @as("StreamId") streamId: option<__string>,
  @as("Protocol") protocol: option<protocol>,
  @as("Name") name: option<__string>,
  @as("MinLatency") minLatency: option<__integer>,
  @as("MediaStreamSourceConfigurations")
  mediaStreamSourceConfigurations: option<__listOfMediaStreamSourceConfigurationRequest>,
  @as("MaxSyncBuffer") maxSyncBuffer: option<__integer>,
  @as("MaxLatency") maxLatency: option<__integer>,
  @as("MaxBitrate") maxBitrate: option<__integer>,
  @as("IngestPort") ingestPort: option<__integer>,
  @as("EntitlementArn") entitlementArn: option<__string>,
  @as("Description") description: option<__string>,
  @as("Decryption") decryption: option<encryption>,
}
type output = {
  @as("VpcInterfaceAttachment") vpcInterfaceAttachment: option<vpcInterfaceAttachment>,
  @as("Transport") transport: option<transport>,
  @as("Port") port: option<__integer>,
  @as("OutputArn") outputArn: __string,
  @as("Name") name: __string,
  @as("MediaStreamOutputConfigurations")
  mediaStreamOutputConfigurations: option<__listOfMediaStreamOutputConfiguration>,
  @as("MediaLiveInputArn") mediaLiveInputArn: option<__string>,
  @as("ListenerAddress") listenerAddress: option<__string>,
  @as("EntitlementArn") entitlementArn: option<__string>,
  @as("Encryption") encryption: option<encryption>,
  @as("Destination") destination: option<__string>,
  @as("Description") description: option<__string>,
  @as("DataTransferSubscriberFeePercent") dataTransferSubscriberFeePercent: option<__integer>,
}
type addOutputRequest = {
  @as("VpcInterfaceAttachment") vpcInterfaceAttachment: option<vpcInterfaceAttachment>,
  @as("StreamId") streamId: option<__string>,
  @as("SmoothingLatency") smoothingLatency: option<__integer>,
  @as("RemoteId") remoteId: option<__string>,
  @as("Protocol") protocol: protocol,
  @as("Port") port: option<__integer>,
  @as("Name") name: option<__string>,
  @as("MinLatency") minLatency: option<__integer>,
  @as("MediaStreamOutputConfigurations")
  mediaStreamOutputConfigurations: option<__listOfMediaStreamOutputConfigurationRequest>,
  @as("MaxLatency") maxLatency: option<__integer>,
  @as("Encryption") encryption: option<encryption>,
  @as("Destination") destination: option<__string>,
  @as("Description") description: option<__string>,
  @as("CidrAllowList") cidrAllowList: option<__listOf__string>,
}
type __listOfSource = array<source>
type __listOfSetSourceRequest = array<setSourceRequest>
type __listOfOutput = array<output>
type __listOfAddOutputRequest = array<addOutputRequest>
type flow = {
  @as("VpcInterfaces") vpcInterfaces: option<__listOfVpcInterface>,
  @as("Status") status: status,
  @as("Sources") sources: option<__listOfSource>,
  @as("SourceFailoverConfig") sourceFailoverConfig: option<failoverConfig>,
  @as("Source") source: source,
  @as("Outputs") outputs: __listOfOutput,
  @as("Name") name: __string,
  @as("MediaStreams") mediaStreams: option<__listOfMediaStream>,
  @as("FlowArn") flowArn: __string,
  @as("Entitlements") entitlements: __listOfEntitlement,
  @as("EgressIp") egressIp: option<__string>,
  @as("Description") description: option<__string>,
  @as("AvailabilityZone") availabilityZone: __string,
}

module StopFlow = {
  type t
  type request = {@as("FlowArn") flowArn: __string}
  type response = {
    @as("Status") status: option<status>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "StopFlowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartFlow = {
  type t
  type request = {@as("FlowArn") flowArn: __string}
  type response = {
    @as("Status") status: option<status>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "StartFlowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeFlowEntitlement = {
  type t
  type request = {
    @as("FlowArn") flowArn: __string,
    @as("EntitlementArn") entitlementArn: __string,
  }
  type response = {
    @as("FlowArn") flowArn: option<__string>,
    @as("EntitlementArn") entitlementArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "RevokeFlowEntitlementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveFlowSource = {
  type t
  type request = {
    @as("SourceArn") sourceArn: __string,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("SourceArn") sourceArn: option<__string>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "RemoveFlowSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveFlowOutput = {
  type t
  type request = {
    @as("OutputArn") outputArn: __string,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("OutputArn") outputArn: option<__string>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "RemoveFlowOutputCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveFlowMediaStream = {
  type t
  type request = {
    @as("MediaStreamName") mediaStreamName: __string,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("MediaStreamName") mediaStreamName: option<__string>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "RemoveFlowMediaStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFlow = {
  type t
  type request = {@as("FlowArn") flowArn: __string}
  type response = {
    @as("Status") status: option<status>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "DeleteFlowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: __listOf__string,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: __mapOf__string,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveFlowVpcInterface = {
  type t
  type request = {
    @as("VpcInterfaceName") vpcInterfaceName: __string,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("VpcInterfaceName") vpcInterfaceName: option<__string>,
    @as("NonDeletedNetworkInterfaceIds") nonDeletedNetworkInterfaceIds: option<__listOf__string>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "RemoveFlowVpcInterfaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: __string}
  type response = {@as("Tags") tags: option<__mapOf__string>}
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFlowEntitlement = {
  type t
  type request = {
    @as("Subscribers") subscribers: option<__listOf__string>,
    @as("FlowArn") flowArn: __string,
    @as("EntitlementStatus") entitlementStatus: option<entitlementStatus>,
    @as("EntitlementArn") entitlementArn: __string,
    @as("Encryption") encryption: option<updateEncryption>,
    @as("Description") description: option<__string>,
  }
  type response = {
    @as("FlowArn") flowArn: option<__string>,
    @as("Entitlement") entitlement: option<entitlement>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "UpdateFlowEntitlementCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseOffering = {
  type t
  type request = {
    @as("Start") start: __string,
    @as("ReservationName") reservationName: __string,
    @as("OfferingArn") offeringArn: __string,
  }
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "PurchaseOfferingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFlows = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Flows") flows: option<__listOfListedFlow>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "ListFlowsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntitlements = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Entitlements") entitlements: option<__listOfListedEntitlement>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "ListEntitlementsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservation = {
  type t
  type request = {@as("ReservationArn") reservationArn: __string}
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "DescribeReservationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOffering = {
  type t
  type request = {@as("OfferingArn") offeringArn: __string}
  type response = {@as("Offering") offering: option<offering>}
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "DescribeOfferingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFlowMediaStream = {
  type t
  type request = {
    @as("VideoFormat") videoFormat: option<__string>,
    @as("MediaStreamType") mediaStreamType: option<mediaStreamType>,
    @as("MediaStreamName") mediaStreamName: __string,
    @as("FlowArn") flowArn: __string,
    @as("Description") description: option<__string>,
    @as("ClockRate") clockRate: option<__integer>,
    @as("Attributes") attributes: option<mediaStreamAttributesRequest>,
  }
  type response = {
    @as("MediaStream") mediaStream: option<mediaStream>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "UpdateFlowMediaStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListReservations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("Reservations") reservations: option<__listOfReservation>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "ListReservationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferings = {
  type t
  type request = {
    @as("NextToken") nextToken: option<__string>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("Offerings") offerings: option<__listOfOffering>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "ListOfferingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GrantFlowEntitlements = {
  type t
  type request = {
    @as("FlowArn") flowArn: __string,
    @as("Entitlements") entitlements: __listOfGrantEntitlementRequest,
  }
  type response = {
    @as("FlowArn") flowArn: option<__string>,
    @as("Entitlements") entitlements: option<__listOfEntitlement>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "GrantFlowEntitlementsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddFlowVpcInterfaces = {
  type t
  type request = {
    @as("VpcInterfaces") vpcInterfaces: __listOfVpcInterfaceRequest,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("VpcInterfaces") vpcInterfaces: option<__listOfVpcInterface>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "AddFlowVpcInterfacesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddFlowMediaStreams = {
  type t
  type request = {
    @as("MediaStreams") mediaStreams: __listOfAddMediaStreamRequest,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("MediaStreams") mediaStreams: option<__listOfMediaStream>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "AddFlowMediaStreamsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFlowSource = {
  type t
  type request = {
    @as("WhitelistCidr") whitelistCidr: option<__string>,
    @as("VpcInterfaceName") vpcInterfaceName: option<__string>,
    @as("StreamId") streamId: option<__string>,
    @as("SourceArn") sourceArn: __string,
    @as("Protocol") protocol: option<protocol>,
    @as("MinLatency") minLatency: option<__integer>,
    @as("MediaStreamSourceConfigurations")
    mediaStreamSourceConfigurations: option<__listOfMediaStreamSourceConfigurationRequest>,
    @as("MaxSyncBuffer") maxSyncBuffer: option<__integer>,
    @as("MaxLatency") maxLatency: option<__integer>,
    @as("MaxBitrate") maxBitrate: option<__integer>,
    @as("IngestPort") ingestPort: option<__integer>,
    @as("FlowArn") flowArn: __string,
    @as("EntitlementArn") entitlementArn: option<__string>,
    @as("Description") description: option<__string>,
    @as("Decryption") decryption: option<updateEncryption>,
  }
  type response = {
    @as("Source") source: option<source>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "UpdateFlowSourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFlowOutput = {
  type t
  type request = {
    @as("VpcInterfaceAttachment") vpcInterfaceAttachment: option<vpcInterfaceAttachment>,
    @as("StreamId") streamId: option<__string>,
    @as("SmoothingLatency") smoothingLatency: option<__integer>,
    @as("RemoteId") remoteId: option<__string>,
    @as("Protocol") protocol: option<protocol>,
    @as("Port") port: option<__integer>,
    @as("OutputArn") outputArn: __string,
    @as("MinLatency") minLatency: option<__integer>,
    @as("MediaStreamOutputConfigurations")
    mediaStreamOutputConfigurations: option<__listOfMediaStreamOutputConfigurationRequest>,
    @as("MaxLatency") maxLatency: option<__integer>,
    @as("FlowArn") flowArn: __string,
    @as("Encryption") encryption: option<updateEncryption>,
    @as("Destination") destination: option<__string>,
    @as("Description") description: option<__string>,
    @as("CidrAllowList") cidrAllowList: option<__listOf__string>,
  }
  type response = {
    @as("Output") output: option<output>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new_: request => t = "UpdateFlowOutputCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddFlowSources = {
  type t
  type request = {
    @as("Sources") sources: __listOfSetSourceRequest,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("Sources") sources: option<__listOfSource>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "AddFlowSourcesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddFlowOutputs = {
  type t
  type request = {
    @as("Outputs") outputs: __listOfAddOutputRequest,
    @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("Outputs") outputs: option<__listOfOutput>,
    @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "AddFlowOutputsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFlow = {
  type t
  type request = {
    @as("SourceFailoverConfig") sourceFailoverConfig: option<updateFailoverConfig>,
    @as("FlowArn") flowArn: __string,
  }
  type response = {@as("Flow") flow: option<flow>}
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "UpdateFlowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeFlow = {
  type t
  type request = {@as("FlowArn") flowArn: __string}
  type response = {
    @as("Messages") messages: option<messages>,
    @as("Flow") flow: option<flow>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "DescribeFlowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFlow = {
  type t
  type request = {
    @as("VpcInterfaces") vpcInterfaces: option<__listOfVpcInterfaceRequest>,
    @as("Sources") sources: option<__listOfSetSourceRequest>,
    @as("SourceFailoverConfig") sourceFailoverConfig: option<failoverConfig>,
    @as("Source") source: option<setSourceRequest>,
    @as("Outputs") outputs: option<__listOfAddOutputRequest>,
    @as("Name") name: __string,
    @as("MediaStreams") mediaStreams: option<__listOfAddMediaStreamRequest>,
    @as("Entitlements") entitlements: option<__listOfGrantEntitlementRequest>,
    @as("AvailabilityZone") availabilityZone: option<__string>,
  }
  type response = {@as("Flow") flow: option<flow>}
  @module("@aws-sdk/client-mediaconnect") @new external new_: request => t = "CreateFlowCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
