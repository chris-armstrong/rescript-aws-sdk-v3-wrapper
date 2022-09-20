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
  | @as("fujitsu-qos") #Fujitsu_Qos
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
type maintenanceDay = [
  | @as("Sunday") #Sunday
  | @as("Saturday") #Saturday
  | @as("Friday") #Friday
  | @as("Thursday") #Thursday
  | @as("Wednesday") #Wednesday
  | @as("Tuesday") #Tuesday
  | @as("Monday") #Monday
]
type keyType = [
  | @as("srt-password") #Srt_Password
  | @as("static-key") #Static_Key
  | @as("speke") #Speke
]
type failoverMode = [@as("FAILOVER") #FAILOVER | @as("MERGE") #MERGE]
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
@ocaml.doc("The settings for attaching a VPC interface to an output.")
type vpcInterfaceAttachment = {
  @ocaml.doc("The name of the VPC interface to use for this output.") @as("VpcInterfaceName")
  vpcInterfaceName: option<__string>,
}
@ocaml.doc("Update maintenance setting for a flow")
type updateMaintenance = {
  @ocaml.doc(
    "UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00."
  )
  @as("MaintenanceStartHour")
  maintenanceStartHour: option<__string>,
  @ocaml.doc(
    "A scheduled date in ISO UTC format when the maintenance will happen. Use YYYY-MM-DD format. Example: 2021-01-30."
  )
  @as("MaintenanceScheduledDate")
  maintenanceScheduledDate: option<__string>,
  @ocaml.doc(
    "A day of a week when the maintenance will happen. use Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday."
  )
  @as("MaintenanceDay")
  maintenanceDay: option<maintenanceDay>,
}
@ocaml.doc("Information about the encryption of the flow.")
type updateEncryption = {
  @ocaml.doc(
    "The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "The ARN of the secret that you created in AWS Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption."
  )
  @as("SecretArn")
  secretArn: option<__string>,
  @ocaml.doc(
    "The ARN of the role that you created during setup (when you set up AWS Elemental MediaConnect as a trusted entity)."
  )
  @as("RoleArn")
  roleArn: option<__string>,
  @ocaml.doc(
    "An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("ResourceId")
  resourceId: option<__string>,
  @ocaml.doc(
    "The AWS Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("Region")
  region: option<__string>,
  @ocaml.doc(
    "The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
  )
  @as("KeyType")
  keyType: option<keyType>,
  @ocaml.doc(
    "The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("DeviceId")
  deviceId: option<__string>,
  @ocaml.doc(
    "A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption."
  )
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__string>,
  @ocaml.doc(
    "The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256)."
  )
  @as("Algorithm")
  algorithm: option<algorithm>,
}
@ocaml.doc(
  "The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams."
)
type sourcePriority = {
  @ocaml.doc("The name of the source you choose as the primary source for this flow.")
  @as("PrimarySource")
  primarySource: option<__string>,
}
@ocaml.doc("A definition of what is being billed for, including the type and amount.")
type resourceSpecification = {
  @ocaml.doc("The type of resource and the unit that is being billed for.") @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc("The amount of outbound bandwidth that is discounted in the offering.")
  @as("ReservedBitrate")
  reservedBitrate: option<__integer>,
}
@ocaml.doc("The maintenance setting of a flow")
type maintenance = {
  @ocaml.doc(
    "UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00."
  )
  @as("MaintenanceStartHour")
  maintenanceStartHour: option<__string>,
  @ocaml.doc(
    "A scheduled date in ISO UTC format when the maintenance will happen. Use YYYY-MM-DD format. Example: 2021-01-30."
  )
  @as("MaintenanceScheduledDate")
  maintenanceScheduledDate: option<__string>,
  @ocaml.doc(
    "The Maintenance has to be performed before this deadline in ISO UTC format. Example: 2021-01-30T08:30:00Z."
  )
  @as("MaintenanceDeadline")
  maintenanceDeadline: option<__string>,
  @ocaml.doc(
    "A day of a week when the maintenance will happen. Use Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday."
  )
  @as("MaintenanceDay")
  maintenanceDay: option<maintenanceDay>,
}
@ocaml.doc("An entitlement that has been granted to you from other AWS accounts.")
type listedEntitlement = {
  @ocaml.doc("The name of the entitlement.") @as("EntitlementName") entitlementName: __string,
  @ocaml.doc("The ARN of the entitlement.") @as("EntitlementArn") entitlementArn: __string,
  @ocaml.doc("Percentage from 0-100 of the data transfer cost to be billed to the subscriber.")
  @as("DataTransferSubscriberFeePercent")
  dataTransferSubscriberFeePercent: option<__integer>,
}
@ocaml.doc(
  "The VPC interface that you want to designate where the media stream is coming from or going to."
)
type interfaceRequest = {@ocaml.doc("The name of the VPC interface.") @as("Name") name: __string}
@ocaml.doc(
  "The VPC interface that is used for the media stream associated with the source or output."
)
type interface = {@ocaml.doc("The name of the VPC interface.") @as("Name") name: __string}
@ocaml.doc("The settings that you want to use to define the media stream.")
type fmtpRequest = {
  @ocaml.doc("The transfer characteristic system (TCS) that is used in the video.") @as("Tcs")
  tcs: option<tcs>,
  @ocaml.doc("The type of compression that was used to smooth the video’s appearance.")
  @as("ScanMode")
  scanMode: option<scanMode>,
  @ocaml.doc("The encoding range of the video.") @as("Range") range: option<range>,
  @ocaml.doc("The pixel aspect ratio (PAR) of the video.") @as("Par") par: option<__string>,
  @ocaml.doc(
    "The frame rate for the video stream, in frames/second. For example: 60000/1001. If you specify a whole number, MediaConnect uses a ratio of N/1. For example, if you specify 60, MediaConnect uses 60/1 as the exactFramerate."
  )
  @as("ExactFramerate")
  exactFramerate: option<__string>,
  @ocaml.doc("The format that is used for the representation of color.") @as("Colorimetry")
  colorimetry: option<colorimetry>,
  @ocaml.doc("The format of the audio channel.") @as("ChannelOrder") channelOrder: option<__string>,
}
@ocaml.doc("FMTP")
type fmtp = {
  @ocaml.doc("The transfer characteristic system (TCS) that is used in the video.") @as("Tcs")
  tcs: option<tcs>,
  @ocaml.doc("The type of compression that was used to smooth the video’s appearance")
  @as("ScanMode")
  scanMode: option<scanMode>,
  @ocaml.doc("The encoding range of the video.") @as("Range") range: option<range>,
  @ocaml.doc("The pixel aspect ratio (PAR) of the video.") @as("Par") par: option<__string>,
  @ocaml.doc(
    "The frame rate for the video stream, in frames/second. For example: 60000/1001. If you specify a whole number, MediaConnect uses a ratio of N/1. For example, if you specify 60, MediaConnect uses 60/1 as the exactFramerate."
  )
  @as("ExactFramerate")
  exactFramerate: option<__string>,
  @ocaml.doc("The format that is used for the representation of color.") @as("Colorimetry")
  colorimetry: option<colorimetry>,
  @ocaml.doc("The format of the audio channel.") @as("ChannelOrder") channelOrder: option<__string>,
}
@ocaml.doc("Information about the encryption of the flow.")
type encryption = {
  @ocaml.doc(
    "The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("Url")
  url: option<__string>,
  @ocaml.doc(
    "The ARN of the secret that you created in AWS Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption."
  )
  @as("SecretArn")
  secretArn: option<__string>,
  @ocaml.doc(
    "The ARN of the role that you created during setup (when you set up AWS Elemental MediaConnect as a trusted entity)."
  )
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc(
    "An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("ResourceId")
  resourceId: option<__string>,
  @ocaml.doc(
    "The AWS Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("Region")
  region: option<__string>,
  @ocaml.doc(
    "The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
  )
  @as("KeyType")
  keyType: option<keyType>,
  @ocaml.doc(
    "The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption."
  )
  @as("DeviceId")
  deviceId: option<__string>,
  @ocaml.doc(
    "A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption."
  )
  @as("ConstantInitializationVector")
  constantInitializationVector: option<__string>,
  @ocaml.doc(
    "The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256)."
  )
  @as("Algorithm")
  algorithm: option<algorithm>,
}
@ocaml.doc(
  "A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source."
)
type encodingParametersRequest = {
  @ocaml.doc(
    "A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, if at least one source on the flow uses the CDI protocol."
  )
  @as("EncoderProfile")
  encoderProfile: encoderProfile,
  @ocaml.doc(
    "A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive."
  )
  @as("CompressionFactor")
  compressionFactor: __double,
}
@ocaml.doc(
  "A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source."
)
type encodingParameters = {
  @ocaml.doc(
    "A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol."
  )
  @as("EncoderProfile")
  encoderProfile: encoderProfile,
  @ocaml.doc(
    "A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive."
  )
  @as("CompressionFactor")
  compressionFactor: __double,
}
@ocaml.doc("Create maintenance setting for a flow")
type addMaintenance = {
  @ocaml.doc(
    "UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00."
  )
  @as("MaintenanceStartHour")
  maintenanceStartHour: __string,
  @ocaml.doc(
    "A day of a week when the maintenance will happen. Use Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday."
  )
  @as("MaintenanceDay")
  maintenanceDay: maintenanceDay,
}
type __listOfListedEntitlement = array<listedEntitlement>
@ocaml.doc("Desired VPC Interface for a Flow")
type vpcInterfaceRequest = {
  @ocaml.doc("Subnet must be in the AZ of the Flow") @as("SubnetId") subnetId: __string,
  @ocaml.doc("Security Group IDs to be used on ENI.") @as("SecurityGroupIds")
  securityGroupIds: __listOf__string,
  @ocaml.doc("Role Arn MediaConnect can assumes to create ENIs in customer's account")
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc(
    "The type of network interface. If this value is not included in the request, MediaConnect uses ENA as the networkInterfaceType."
  )
  @as("NetworkInterfaceType")
  networkInterfaceType: option<networkInterfaceType>,
  @ocaml.doc("The name of the VPC Interface. This value must be unique within the current flow.")
  @as("Name")
  name: __string,
}
@ocaml.doc("The settings for a VPC Source.")
type vpcInterface = {
  @ocaml.doc("Subnet must be in the AZ of the Flow") @as("SubnetId") subnetId: __string,
  @ocaml.doc("Security Group IDs to be used on ENI.") @as("SecurityGroupIds")
  securityGroupIds: __listOf__string,
  @ocaml.doc("Role Arn MediaConnect can assumes to create ENIs in customer's account")
  @as("RoleArn")
  roleArn: __string,
  @ocaml.doc("The type of network interface.") @as("NetworkInterfaceType")
  networkInterfaceType: networkInterfaceType,
  @ocaml.doc("IDs of the network interfaces created in customer's account by MediaConnect.")
  @as("NetworkInterfaceIds")
  networkInterfaceIds: __listOf__string,
  @ocaml.doc("Immutable and has to be a unique against other VpcInterfaces in this Flow.")
  @as("Name")
  name: __string,
}
@ocaml.doc("The settings for source failover.")
type updateFailoverConfig = {
  @as("State") state: option<state>,
  @ocaml.doc(
    "The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams."
  )
  @as("SourcePriority")
  sourcePriority: option<sourcePriority>,
  @ocaml.doc("Recovery window time to look for dash-7 packets") @as("RecoveryWindow")
  recoveryWindow: option<__integer>,
  @ocaml.doc(
    "The type of failover you choose for this flow. MERGE combines the source streams into a single stream, allowing graceful recovery from any single-source loss. FAILOVER allows switching between different streams."
  )
  @as("FailoverMode")
  failoverMode: option<failoverMode>,
}
@ocaml.doc("Attributes related to the transport stream that are used in a source or output.")
type transport = {
  @ocaml.doc(
    "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
  )
  @as("StreamId")
  streamId: option<__string>,
  @ocaml.doc("The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.")
  @as("SmoothingLatency")
  smoothingLatency: option<__integer>,
  @ocaml.doc(
    "The IP address that the flow communicates with to initiate connection with the sender."
  )
  @as("SenderIpAddress")
  senderIpAddress: option<__string>,
  @ocaml.doc(
    "The port that the flow uses to send outbound requests to initiate connection with the sender."
  )
  @as("SenderControlPort")
  senderControlPort: option<__integer>,
  @ocaml.doc("The remote ID for the Zixi-pull stream.") @as("RemoteId") remoteId: option<__string>,
  @ocaml.doc("The protocol that is used by the source or output.") @as("Protocol")
  protocol: protocol,
  @ocaml.doc(
    "The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency."
  )
  @as("MinLatency")
  minLatency: option<__integer>,
  @ocaml.doc("The size of the buffer (in milliseconds) to use to sync incoming source data.")
  @as("MaxSyncBuffer")
  maxSyncBuffer: option<__integer>,
  @ocaml.doc(
    "The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams."
  )
  @as("MaxLatency")
  maxLatency: option<__integer>,
  @ocaml.doc("The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.") @as("MaxBitrate")
  maxBitrate: option<__integer>,
  @ocaml.doc(
    "The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
  )
  @as("CidrAllowList")
  cidrAllowList: option<__listOf__string>,
}
@ocaml.doc(
  "A pricing agreement for a discounted rate for a specific outbound bandwidth that your MediaConnect account will use each month over a specific time period. The discounted rate in the reservation applies to outbound bandwidth for all flows from your account until your account reaches the amount of bandwidth in your reservation. If you use more outbound bandwidth than the agreed upon amount in a single month, the overage is charged at the on-demand rate."
)
type reservation = {
  @ocaml.doc(
    "The day and time that the reservation becomes active. You set this value when you purchase the offering."
  )
  @as("Start")
  start: __string,
  @ocaml.doc(
    "A definition of the amount of outbound bandwidth that you would be reserving if you purchase the offering. MediaConnect defines the values that make up the resourceSpecification in the offering."
  )
  @as("ResourceSpecification")
  resourceSpecification: resourceSpecification,
  @ocaml.doc("The status of your reservation.") @as("ReservationState")
  reservationState: reservationState,
  @ocaml.doc("The name that you assigned to the reservation when you purchased the offering.")
  @as("ReservationName")
  reservationName: __string,
  @ocaml.doc(
    "The Amazon Resource Name (ARN) that MediaConnect assigns to the reservation when you purchase an offering."
  )
  @as("ReservationArn")
  reservationArn: __string,
  @ocaml.doc(
    "The unit of measurement that is used for billing. This value, in combination with pricePerUnit, makes up the rate. MediaConnect defines this value in the offering."
  )
  @as("PriceUnits")
  priceUnits: priceUnits,
  @ocaml.doc(
    "The cost of a single unit. This value, in combination with priceUnits, makes up the rate. MediaConnect defines this value in the offering."
  )
  @as("PricePerUnit")
  pricePerUnit: __string,
  @ocaml.doc("A description of the offering. MediaConnect defines this value in the offering.")
  @as("OfferingDescription")
  offeringDescription: __string,
  @ocaml.doc("The Amazon Resource Name (ARN) that MediaConnect assigns to the offering.")
  @as("OfferingArn")
  offeringArn: __string,
  @ocaml.doc(
    "The day and time that this reservation expires. This value is calculated based on the start date and time that you set and the offering's duration."
  )
  @as("End")
  end: __string,
  @ocaml.doc(
    "The unit of measurement for the duration of the reservation. MediaConnect defines this value in the offering."
  )
  @as("DurationUnits")
  durationUnits: durationUnits,
  @ocaml.doc(
    "The length of time that this reservation is active. MediaConnect defines this value in the offering."
  )
  @as("Duration")
  duration: __integer,
  @ocaml.doc(
    "The type of currency that is used for billing. The currencyCode used for your reservation is US dollars."
  )
  @as("CurrencyCode")
  currencyCode: __string,
}
@ocaml.doc(
  "A savings plan that reserves a certain amount of outbound bandwidth usage at a discounted rate each month over a period of time."
)
type offering = {
  @ocaml.doc(
    "A definition of the amount of outbound bandwidth that you would be reserving if you purchase the offering."
  )
  @as("ResourceSpecification")
  resourceSpecification: resourceSpecification,
  @ocaml.doc(
    "The unit of measurement that is used for billing. This value, in combination with pricePerUnit, makes up the rate."
  )
  @as("PriceUnits")
  priceUnits: priceUnits,
  @ocaml.doc(
    "The cost of a single unit. This value, in combination with priceUnits, makes up the rate."
  )
  @as("PricePerUnit")
  pricePerUnit: __string,
  @ocaml.doc("A description of the offering.") @as("OfferingDescription")
  offeringDescription: __string,
  @ocaml.doc("The Amazon Resource Name (ARN) that MediaConnect assigns to the offering.")
  @as("OfferingArn")
  offeringArn: __string,
  @ocaml.doc("The unit of measurement for the duration of the offering.") @as("DurationUnits")
  durationUnits: durationUnits,
  @ocaml.doc("The length of time that your reservation would be active.") @as("Duration")
  duration: __integer,
  @ocaml.doc(
    "The type of currency that is used for billing. The currencyCode used for all reservations is US dollars."
  )
  @as("CurrencyCode")
  currencyCode: __string,
}
@ocaml.doc("Messages that provide the state of the flow.")
type messages = {
  @ocaml.doc("A list of errors that might have been generated from processes on this flow.")
  @as("Errors")
  errors: __listOf__string,
}
@ocaml.doc("Attributes that are related to the media stream.")
type mediaStreamAttributesRequest = {
  @ocaml.doc("The audio language, in a format that is recognized by the receiver.") @as("Lang")
  lang: option<__string>,
  @ocaml.doc("The settings that you want to use to define the media stream.") @as("Fmtp")
  fmtp: option<fmtpRequest>,
}
@ocaml.doc("Attributes that are related to the media stream.")
type mediaStreamAttributes = {
  @ocaml.doc("The audio language, in a format that is recognized by the receiver.") @as("Lang")
  lang: option<__string>,
  @ocaml.doc("A set of parameters that define the media stream.") @as("Fmtp") fmtp: fmtp,
}
@ocaml.doc("Provides a summary of a flow, including its ARN, Availability Zone, and source type.")
type listedFlow = {
  @as("Maintenance") maintenance: option<maintenance>,
  @ocaml.doc("The current status of the flow.") @as("Status") status: status,
  @ocaml.doc(
    "The type of source. This value is either owned (originated somewhere other than an AWS Elemental MediaConnect flow owned by another AWS account) or entitled (originated at an AWS Elemental MediaConnect flow owned by another AWS account)."
  )
  @as("SourceType")
  sourceType: sourceType,
  @ocaml.doc("The name of the flow.") @as("Name") name: __string,
  @ocaml.doc("The ARN of the flow.") @as("FlowArn") flowArn: __string,
  @ocaml.doc("A description of the flow.") @as("Description") description: __string,
  @ocaml.doc("The Availability Zone that the flow was created in.") @as("AvailabilityZone")
  availabilityZone: __string,
}
@ocaml.doc("The transport parameters that you want to associate with an incoming media stream.")
type inputConfigurationRequest = {
  @ocaml.doc("The VPC interface that you want to use for the incoming media stream.")
  @as("Interface")
  interface: interfaceRequest,
  @ocaml.doc("The port that you want the flow to listen on for an incoming media stream.")
  @as("InputPort")
  inputPort: __integer,
}
@ocaml.doc("The transport parameters that are associated with an incoming media stream.")
type inputConfiguration = {
  @ocaml.doc("The VPC interface where the media stream comes in from.") @as("Interface")
  interface: interface,
  @ocaml.doc("The port that the flow listens on for an incoming media stream.") @as("InputPort")
  inputPort: __integer,
  @ocaml.doc("The IP address that the flow listens on for incoming content for a media stream.")
  @as("InputIp")
  inputIp: __string,
}
@ocaml.doc("The entitlements that you want to grant on a flow.")
type grantEntitlementRequest = {
  @ocaml.doc(
    "The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flows using your content as the source."
  )
  @as("Subscribers")
  subscribers: __listOf__string,
  @ocaml.doc("The name of the entitlement. This value must be unique within the current flow.")
  @as("Name")
  name: option<__string>,
  @ocaml.doc(
    "An indication of whether the new entitlement should be enabled or disabled as soon as it is created. If you don’t specify the entitlementStatus field in your request, MediaConnect sets it to ENABLED."
  )
  @as("EntitlementStatus")
  entitlementStatus: option<entitlementStatus>,
  @ocaml.doc(
    "The type of encryption that will be used on the output that is associated with this entitlement."
  )
  @as("Encryption")
  encryption: option<encryption>,
  @ocaml.doc(
    "A description of the entitlement. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the subscriber or end user."
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc("Percentage from 0-100 of the data transfer cost to be billed to the subscriber.")
  @as("DataTransferSubscriberFeePercent")
  dataTransferSubscriberFeePercent: option<__integer>,
}
@ocaml.doc("The settings for source failover.")
type failoverConfig = {
  @as("State") state: option<state>,
  @ocaml.doc(
    "The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams."
  )
  @as("SourcePriority")
  sourcePriority: option<sourcePriority>,
  @ocaml.doc("Search window time to look for dash-7 packets") @as("RecoveryWindow")
  recoveryWindow: option<__integer>,
  @ocaml.doc(
    "The type of failover you choose for this flow. MERGE combines the source streams into a single stream, allowing graceful recovery from any single-source loss. FAILOVER allows switching between different streams."
  )
  @as("FailoverMode")
  failoverMode: option<failoverMode>,
}
@ocaml.doc("The settings for a flow entitlement.")
type entitlement = {
  @ocaml.doc(
    "The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source."
  )
  @as("Subscribers")
  subscribers: __listOf__string,
  @ocaml.doc("The name of the entitlement.") @as("Name") name: __string,
  @ocaml.doc("An indication of whether the entitlement is enabled.") @as("EntitlementStatus")
  entitlementStatus: option<entitlementStatus>,
  @ocaml.doc("The ARN of the entitlement.") @as("EntitlementArn") entitlementArn: __string,
  @ocaml.doc(
    "The type of encryption that will be used on the output that is associated with this entitlement."
  )
  @as("Encryption")
  encryption: option<encryption>,
  @ocaml.doc("A description of the entitlement.") @as("Description") description: option<__string>,
  @ocaml.doc("Percentage from 0-100 of the data transfer cost to be billed to the subscriber.")
  @as("DataTransferSubscriberFeePercent")
  dataTransferSubscriberFeePercent: option<__integer>,
}
@ocaml.doc("The transport parameters that you want to associate with an outbound media stream.")
type destinationConfigurationRequest = {
  @ocaml.doc(
    "The VPC interface that you want to use for the media stream associated with the output."
  )
  @as("Interface")
  interface: interfaceRequest,
  @ocaml.doc(
    "The port that you want MediaConnect to use when it distributes the media stream to the output."
  )
  @as("DestinationPort")
  destinationPort: __integer,
  @ocaml.doc("The IP address where you want MediaConnect to send contents of the media stream.")
  @as("DestinationIp")
  destinationIp: __string,
}
@ocaml.doc("The transport parameters that are associated with an outbound media stream.")
type destinationConfiguration = {
  @ocaml.doc(
    "The IP address that the receiver requires in order to establish a connection with the flow. This value is represented by the elastic network interface IP address of the VPC. This field applies only to outputs that use the CDI or ST 2110 JPEG XS protocol."
  )
  @as("OutboundIp")
  outboundIp: __string,
  @ocaml.doc("The VPC interface that is used for the media stream associated with the output.")
  @as("Interface")
  interface: interface,
  @ocaml.doc("The port to use when the content of the media stream is distributed to the output.")
  @as("DestinationPort")
  destinationPort: __integer,
  @ocaml.doc("The IP address where contents of the media stream will be sent.") @as("DestinationIp")
  destinationIp: __string,
}
type __listOfVpcInterfaceRequest = array<vpcInterfaceRequest>
type __listOfVpcInterface = array<vpcInterface>
type __listOfReservation = array<reservation>
type __listOfOffering = array<offering>
type __listOfListedFlow = array<listedFlow>
type __listOfInputConfigurationRequest = array<inputConfigurationRequest>
type __listOfInputConfiguration = array<inputConfiguration>
type __listOfGrantEntitlementRequest = array<grantEntitlementRequest>
type __listOfEntitlement = array<entitlement>
type __listOfDestinationConfigurationRequest = array<destinationConfigurationRequest>
type __listOfDestinationConfiguration = array<destinationConfiguration>
@ocaml.doc(
  "A single track or stream of media that contains video, audio, or ancillary data. After you add a media stream to a flow, you can associate it with sources and outputs on that flow, as long as they use the CDI protocol or the ST 2110 JPEG XS protocol. Each source or output can consist of one or many media streams."
)
type mediaStream = {
  @ocaml.doc("The resolution of the video.") @as("VideoFormat") videoFormat: option<__string>,
  @ocaml.doc("The type of media stream.") @as("MediaStreamType") mediaStreamType: mediaStreamType,
  @ocaml.doc("A name that helps you distinguish one media stream from another.")
  @as("MediaStreamName")
  mediaStreamName: __string,
  @ocaml.doc("A unique identifier for the media stream.") @as("MediaStreamId")
  mediaStreamId: __integer,
  @ocaml.doc(
    "The format type number (sometimes referred to as RTP payload type) of the media stream. MediaConnect assigns this value to the media stream. For ST 2110 JPEG XS outputs, you need to provide this value to the receiver."
  )
  @as("Fmt")
  fmt: __integer,
  @ocaml.doc("A description that can help you quickly identify what your media stream is used for.")
  @as("Description")
  description: option<__string>,
  @ocaml.doc("The sample rate for the stream. This value is measured in Hz.") @as("ClockRate")
  clockRate: option<__integer>,
  @ocaml.doc("Attributes that are related to the media stream.") @as("Attributes")
  attributes: option<mediaStreamAttributes>,
}
@ocaml.doc("The media stream that you want to add to the flow.")
type addMediaStreamRequest = {
  @ocaml.doc("The resolution of the video.") @as("VideoFormat") videoFormat: option<__string>,
  @ocaml.doc("The type of media stream.") @as("MediaStreamType") mediaStreamType: mediaStreamType,
  @ocaml.doc("A name that helps you distinguish one media stream from another.")
  @as("MediaStreamName")
  mediaStreamName: __string,
  @ocaml.doc("A unique identifier for the media stream.") @as("MediaStreamId")
  mediaStreamId: __integer,
  @ocaml.doc("A description that can help you quickly identify what your media stream is used for.")
  @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "The sample rate (in Hz) for the stream. If the media stream type is video or ancillary data, set this value to 90000. If the media stream type is audio, set this value to either 48000 or 96000."
  )
  @as("ClockRate")
  clockRate: option<__integer>,
  @ocaml.doc("The attributes that you want to assign to the new media stream.") @as("Attributes")
  attributes: option<mediaStreamAttributesRequest>,
}
type __listOfMediaStream = array<mediaStream>
type __listOfAddMediaStreamRequest = array<addMediaStreamRequest>
@ocaml.doc("The definition of a media stream that you want to associate with the source.")
type mediaStreamSourceConfigurationRequest = {
  @ocaml.doc("The name of the media stream.") @as("MediaStreamName") mediaStreamName: __string,
  @ocaml.doc("The transport parameters that you want to associate with the media stream.")
  @as("InputConfigurations")
  inputConfigurations: option<__listOfInputConfigurationRequest>,
  @ocaml.doc(
    "The format you want to use to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv."
  )
  @as("EncodingName")
  encodingName: encodingName,
}
@ocaml.doc(
  "The media stream that is associated with the source, and the parameters for that association."
)
type mediaStreamSourceConfiguration = {
  @ocaml.doc("The name of the media stream.") @as("MediaStreamName") mediaStreamName: __string,
  @ocaml.doc("The transport parameters that are associated with an incoming media stream.")
  @as("InputConfigurations")
  inputConfigurations: option<__listOfInputConfiguration>,
  @ocaml.doc(
    "The format that was used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv."
  )
  @as("EncodingName")
  encodingName: encodingName,
}
@ocaml.doc(
  "The media stream that you want to associate with the output, and the parameters for that association."
)
type mediaStreamOutputConfigurationRequest = {
  @ocaml.doc("The name of the media stream that is associated with the output.")
  @as("MediaStreamName")
  mediaStreamName: __string,
  @ocaml.doc(
    "A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source."
  )
  @as("EncodingParameters")
  encodingParameters: option<encodingParametersRequest>,
  @ocaml.doc(
    "The format that will be used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv."
  )
  @as("EncodingName")
  encodingName: encodingName,
  @ocaml.doc("The transport parameters that you want to associate with the media stream.")
  @as("DestinationConfigurations")
  destinationConfigurations: option<__listOfDestinationConfigurationRequest>,
}
@ocaml.doc(
  "The media stream that is associated with the output, and the parameters for that association."
)
type mediaStreamOutputConfiguration = {
  @ocaml.doc("The name of the media stream.") @as("MediaStreamName") mediaStreamName: __string,
  @ocaml.doc("Encoding parameters") @as("EncodingParameters")
  encodingParameters: option<encodingParameters>,
  @ocaml.doc(
    "The format that was used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv."
  )
  @as("EncodingName")
  encodingName: encodingName,
  @ocaml.doc("The transport parameters that are associated with each outbound media stream.")
  @as("DestinationConfigurations")
  destinationConfigurations: option<__listOfDestinationConfiguration>,
}
type __listOfMediaStreamSourceConfigurationRequest = array<mediaStreamSourceConfigurationRequest>
type __listOfMediaStreamSourceConfiguration = array<mediaStreamSourceConfiguration>
type __listOfMediaStreamOutputConfigurationRequest = array<mediaStreamOutputConfigurationRequest>
type __listOfMediaStreamOutputConfiguration = array<mediaStreamOutputConfiguration>
@ocaml.doc("The settings for the source of the flow.")
type source = {
  @ocaml.doc(
    "The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
  )
  @as("WhitelistCidr")
  whitelistCidr: option<__string>,
  @ocaml.doc("The name of the VPC interface that is used for this source.") @as("VpcInterfaceName")
  vpcInterfaceName: option<__string>,
  @ocaml.doc("Attributes related to the transport stream that are used in the source.")
  @as("Transport")
  transport: option<transport>,
  @ocaml.doc("The ARN of the source.") @as("SourceArn") sourceArn: __string,
  @ocaml.doc(
    "The IP address that the flow communicates with to initiate connection with the sender."
  )
  @as("SenderIpAddress")
  senderIpAddress: option<__string>,
  @ocaml.doc(
    "The port that the flow uses to send outbound requests to initiate connection with the sender."
  )
  @as("SenderControlPort")
  senderControlPort: option<__integer>,
  @ocaml.doc("The name of the source.") @as("Name") name: __string,
  @ocaml.doc(
    "The media streams that are associated with the source, and the parameters for those associations."
  )
  @as("MediaStreamSourceConfigurations")
  mediaStreamSourceConfigurations: option<__listOfMediaStreamSourceConfiguration>,
  @ocaml.doc("The port that the flow will be listening on for incoming content.") @as("IngestPort")
  ingestPort: option<__integer>,
  @ocaml.doc("The IP address that the flow will be listening on for incoming content.")
  @as("IngestIp")
  ingestIp: option<__string>,
  @ocaml.doc(
    "The ARN of the entitlement that allows you to subscribe to content that comes from another AWS account. The entitlement is set by the content originator and the ARN is generated as part of the originator's flow."
  )
  @as("EntitlementArn")
  entitlementArn: option<__string>,
  @ocaml.doc(
    "A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc("The type of encryption that is used on the content ingested from this source.")
  @as("Decryption")
  decryption: option<encryption>,
  @ocaml.doc("Percentage from 0-100 of the data transfer cost to be billed to the subscriber.")
  @as("DataTransferSubscriberFeePercent")
  dataTransferSubscriberFeePercent: option<__integer>,
}
@ocaml.doc("The settings for the source of the flow.")
type setSourceRequest = {
  @ocaml.doc(
    "The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
  )
  @as("WhitelistCidr")
  whitelistCidr: option<__string>,
  @ocaml.doc("The name of the VPC interface to use for this source.") @as("VpcInterfaceName")
  vpcInterfaceName: option<__string>,
  @ocaml.doc(
    "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
  )
  @as("StreamId")
  streamId: option<__string>,
  @ocaml.doc(
    "The IP address that the flow communicates with to initiate connection with the sender."
  )
  @as("SenderIpAddress")
  senderIpAddress: option<__string>,
  @ocaml.doc(
    "The port that the flow uses to send outbound requests to initiate connection with the sender."
  )
  @as("SenderControlPort")
  senderControlPort: option<__integer>,
  @ocaml.doc("The protocol that is used by the source.") @as("Protocol") protocol: option<protocol>,
  @ocaml.doc("The name of the source.") @as("Name") name: option<__string>,
  @ocaml.doc(
    "The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency."
  )
  @as("MinLatency")
  minLatency: option<__integer>,
  @ocaml.doc(
    "The media streams that are associated with the source, and the parameters for those associations."
  )
  @as("MediaStreamSourceConfigurations")
  mediaStreamSourceConfigurations: option<__listOfMediaStreamSourceConfigurationRequest>,
  @ocaml.doc("The size of the buffer (in milliseconds) to use to sync incoming source data.")
  @as("MaxSyncBuffer")
  maxSyncBuffer: option<__integer>,
  @ocaml.doc(
    "The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams."
  )
  @as("MaxLatency")
  maxLatency: option<__integer>,
  @ocaml.doc("The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.") @as("MaxBitrate")
  maxBitrate: option<__integer>,
  @ocaml.doc("The port that the flow will be listening on for incoming content.") @as("IngestPort")
  ingestPort: option<__integer>,
  @ocaml.doc(
    "The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow."
  )
  @as("EntitlementArn")
  entitlementArn: option<__string>,
  @ocaml.doc(
    "A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc("The type of encryption that is used on the content ingested from this source.")
  @as("Decryption")
  decryption: option<encryption>,
}
@ocaml.doc("The settings for an output.")
type output = {
  @ocaml.doc("The name of the VPC interface attachment to use for this output.")
  @as("VpcInterfaceAttachment")
  vpcInterfaceAttachment: option<vpcInterfaceAttachment>,
  @ocaml.doc("Attributes related to the transport stream that are used in the output.")
  @as("Transport")
  transport: option<transport>,
  @ocaml.doc("The port to use when content is distributed to this output.") @as("Port")
  port: option<__integer>,
  @ocaml.doc("The ARN of the output.") @as("OutputArn") outputArn: __string,
  @ocaml.doc("The name of the output. This value must be unique within the current flow.")
  @as("Name")
  name: __string,
  @ocaml.doc("The configuration for each media stream that is associated with the output.")
  @as("MediaStreamOutputConfigurations")
  mediaStreamOutputConfigurations: option<__listOfMediaStreamOutputConfiguration>,
  @ocaml.doc(
    "The input ARN of the AWS Elemental MediaLive channel. This parameter is relevant only for outputs that were added by creating a MediaLive input."
  )
  @as("MediaLiveInputArn")
  mediaLiveInputArn: option<__string>,
  @ocaml.doc(
    "The IP address that the receiver requires in order to establish a connection with the flow. For public networking, the ListenerAddress is represented by the elastic IP address of the flow. For private networking, the ListenerAddress is represented by the elastic network interface IP address of the VPC. This field applies only to outputs that use the Zixi pull or SRT listener protocol."
  )
  @as("ListenerAddress")
  listenerAddress: option<__string>,
  @ocaml.doc(
    "The ARN of the entitlement on the originator''s flow. This value is relevant only on entitled flows."
  )
  @as("EntitlementArn")
  entitlementArn: option<__string>,
  @ocaml.doc(
    "The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
  )
  @as("Encryption")
  encryption: option<encryption>,
  @ocaml.doc("The address where you want to send the output.") @as("Destination")
  destination: option<__string>,
  @ocaml.doc("A description of the output.") @as("Description") description: option<__string>,
  @ocaml.doc("Percentage from 0-100 of the data transfer cost to be billed to the subscriber.")
  @as("DataTransferSubscriberFeePercent")
  dataTransferSubscriberFeePercent: option<__integer>,
}
@ocaml.doc("The output that you want to add to this flow.")
type addOutputRequest = {
  @ocaml.doc("The name of the VPC interface attachment to use for this output.")
  @as("VpcInterfaceAttachment")
  vpcInterfaceAttachment: option<vpcInterfaceAttachment>,
  @ocaml.doc(
    "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
  )
  @as("StreamId")
  streamId: option<__string>,
  @ocaml.doc("The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.")
  @as("SmoothingLatency")
  smoothingLatency: option<__integer>,
  @ocaml.doc(
    "The port that the flow uses to send outbound requests to initiate connection with the sender."
  )
  @as("SenderControlPort")
  senderControlPort: option<__integer>,
  @ocaml.doc("The remote ID for the Zixi-pull output stream.") @as("RemoteId")
  remoteId: option<__string>,
  @ocaml.doc("The protocol to use for the output.") @as("Protocol") protocol: protocol,
  @ocaml.doc("The port to use when content is distributed to this output.") @as("Port")
  port: option<__integer>,
  @ocaml.doc("The name of the output. This value must be unique within the current flow.")
  @as("Name")
  name: option<__string>,
  @ocaml.doc(
    "The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency."
  )
  @as("MinLatency")
  minLatency: option<__integer>,
  @ocaml.doc(
    "The media streams that are associated with the output, and the parameters for those associations."
  )
  @as("MediaStreamOutputConfigurations")
  mediaStreamOutputConfigurations: option<__listOfMediaStreamOutputConfigurationRequest>,
  @ocaml.doc(
    "The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams."
  )
  @as("MaxLatency")
  maxLatency: option<__integer>,
  @ocaml.doc(
    "The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
  )
  @as("Encryption")
  encryption: option<encryption>,
  @ocaml.doc("The IP address from which video will be sent to output destinations.")
  @as("Destination")
  destination: option<__string>,
  @ocaml.doc(
    "A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user."
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
  )
  @as("CidrAllowList")
  cidrAllowList: option<__listOf__string>,
}
type __listOfSource = array<source>
type __listOfSetSourceRequest = array<setSourceRequest>
type __listOfOutput = array<output>
type __listOfAddOutputRequest = array<addOutputRequest>
@ocaml.doc("The settings for a flow, including its source, outputs, and entitlements.")
type flow = {
  @as("Maintenance") maintenance: option<maintenance>,
  @ocaml.doc("The VPC Interfaces for this flow.") @as("VpcInterfaces")
  vpcInterfaces: option<__listOfVpcInterface>,
  @ocaml.doc("The current status of the flow.") @as("Status") status: status,
  @as("Sources") sources: option<__listOfSource>,
  @as("SourceFailoverConfig") sourceFailoverConfig: option<failoverConfig>,
  @as("Source") source: source,
  @ocaml.doc("The outputs in this flow.") @as("Outputs") outputs: __listOfOutput,
  @ocaml.doc("The name of the flow.") @as("Name") name: __string,
  @ocaml.doc(
    "The media streams that are associated with the flow. After you associate a media stream with a source, you can also associate it with outputs on the flow."
  )
  @as("MediaStreams")
  mediaStreams: option<__listOfMediaStream>,
  @ocaml.doc(
    "The Amazon Resource Name (ARN), a unique identifier for any AWS resource, of the flow."
  )
  @as("FlowArn")
  flowArn: __string,
  @ocaml.doc("The entitlements in this flow.") @as("Entitlements")
  entitlements: __listOfEntitlement,
  @ocaml.doc("The IP address from which video will be sent to output destinations.") @as("EgressIp")
  egressIp: option<__string>,
  @ocaml.doc(
    "A description of the flow. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
  )
  @as("Description")
  description: option<__string>,
  @ocaml.doc(
    "The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS."
  )
  @as("AvailabilityZone")
  availabilityZone: __string,
}
@ocaml.doc("API for AWS Elemental MediaConnect")
module StopFlow = {
  type t
  type request = {
    @ocaml.doc("The ARN of the flow that you want to stop.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The status of the flow when the StopFlow process begins.") @as("Status")
    status: option<status>,
    @ocaml.doc("The ARN of the flow that you stopped.") @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "StopFlowCommand"
  let make = (~flowArn, ()) => new({flowArn: flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartFlow = {
  type t
  type request = {
    @ocaml.doc("The ARN of the flow that you want to start.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The status of the flow when the StartFlow process begins.") @as("Status")
    status: option<status>,
    @ocaml.doc("The ARN of the flow that you started.") @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "StartFlowCommand"
  let make = (~flowArn, ()) => new({flowArn: flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RevokeFlowEntitlement = {
  type t
  type request = {
    @ocaml.doc("The flow that you want to revoke an entitlement from.") @as("FlowArn")
    flowArn: __string,
    @ocaml.doc("The ARN of the entitlement that you want to revoke.") @as("EntitlementArn")
    entitlementArn: __string,
  }
  type response = {
    @ocaml.doc("The ARN of the flow that the entitlement was revoked from.") @as("FlowArn")
    flowArn: option<__string>,
    @ocaml.doc("The ARN of the entitlement that was revoked.") @as("EntitlementArn")
    entitlementArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "RevokeFlowEntitlementCommand"
  let make = (~flowArn, ~entitlementArn, ()) => new({flowArn, entitlementArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveFlowSource = {
  type t
  type request = {
    @ocaml.doc("The ARN of the source that you want to remove.") @as("SourceArn")
    sourceArn: __string,
    @ocaml.doc("The flow that you want to remove a source from.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The ARN of the source that was removed.") @as("SourceArn")
    sourceArn: option<__string>,
    @ocaml.doc("The ARN of the flow that is associated with the source you removed.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "RemoveFlowSourceCommand"
  let make = (~sourceArn, ~flowArn, ()) => new({sourceArn, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveFlowOutput = {
  type t
  type request = {
    @ocaml.doc("The ARN of the output that you want to remove.") @as("OutputArn")
    outputArn: __string,
    @ocaml.doc("The flow that you want to remove an output from.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The ARN of the output that was removed.") @as("OutputArn")
    outputArn: option<__string>,
    @ocaml.doc("The ARN of the flow that is associated with the output you removed.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "RemoveFlowOutputCommand"
  let make = (~outputArn, ~flowArn, ()) => new({outputArn, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveFlowMediaStream = {
  type t
  type request = {
    @ocaml.doc("The name of the media stream that you want to remove.") @as("MediaStreamName")
    mediaStreamName: __string,
    @ocaml.doc("The Amazon Resource Name (ARN) of the flow.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The name of the media stream that was removed.") @as("MediaStreamName")
    mediaStreamName: option<__string>,
    @ocaml.doc("The Amazon Resource Name (ARN) of the flow.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "RemoveFlowMediaStreamCommand"
  let make = (~mediaStreamName, ~flowArn, ()) => new({mediaStreamName, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteFlow = {
  type t
  type request = {
    @ocaml.doc("The ARN of the flow that you want to delete.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The status of the flow when the DeleteFlow process begins.") @as("Status")
    status: option<status>,
    @ocaml.doc("The ARN of the flow that was deleted.") @as("FlowArn") flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "DeleteFlowCommand"
  let make = (~flowArn, ()) => new({flowArn: flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("The keys of the tags to be removed.") @as("TagKeys") tagKeys: __listOf__string,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource from which to delete tags."
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  @ocaml.doc(
    "The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters."
  )
  type request = {
    @ocaml.doc(
      "A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters."
    )
    @as("Tags")
    tags: __mapOf__string,
    @ocaml.doc(
      "The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource to which to add tags."
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveFlowVpcInterface = {
  type t
  type request = {
    @ocaml.doc("The name of the VPC interface that you want to remove.") @as("VpcInterfaceName")
    vpcInterfaceName: __string,
    @ocaml.doc("The flow that you want to remove a VPC interface from.") @as("FlowArn")
    flowArn: __string,
  }
  type response = {
    @ocaml.doc("The name of the VPC interface that was removed.") @as("VpcInterfaceName")
    vpcInterfaceName: option<__string>,
    @ocaml.doc(
      "IDs of network interfaces associated with the removed VPC interface that Media Connect was unable to remove."
    )
    @as("NonDeletedNetworkInterfaceIds")
    nonDeletedNetworkInterfaceIds: option<__listOf__string>,
    @ocaml.doc("The ARN of the flow that is associated with the VPC interface you removed.")
    @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "RemoveFlowVpcInterfaceCommand"
  let make = (~vpcInterfaceName, ~flowArn, ()) => new({vpcInterfaceName, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "The Amazon Resource Name (ARN) that identifies the AWS Elemental MediaConnect resource for which to list the tags."
    )
    @as("ResourceArn")
    resourceArn: __string,
  }
  type response = {
    @ocaml.doc(
      "A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters."
    )
    @as("Tags")
    tags: option<__mapOf__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFlowEntitlement = {
  type t
  @ocaml.doc("The entitlement fields that you want to update.")
  type request = {
    @ocaml.doc(
      "The AWS account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source."
    )
    @as("Subscribers")
    subscribers: option<__listOf__string>,
    @ocaml.doc("The flow that is associated with the entitlement that you want to update.")
    @as("FlowArn")
    flowArn: __string,
    @ocaml.doc(
      "An indication of whether you want to enable the entitlement to allow access, or disable it to stop streaming content to the subscriber’s flow temporarily. If you don’t specify the entitlementStatus field in your request, MediaConnect leaves the value unchanged."
    )
    @as("EntitlementStatus")
    entitlementStatus: option<entitlementStatus>,
    @ocaml.doc("The ARN of the entitlement that you want to update.") @as("EntitlementArn")
    entitlementArn: __string,
    @ocaml.doc(
      "The type of encryption that will be used on the output associated with this entitlement."
    )
    @as("Encryption")
    encryption: option<updateEncryption>,
    @ocaml.doc(
      "A description of the entitlement. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the subscriber or end user."
    )
    @as("Description")
    description: option<__string>,
  }
  type response = {
    @ocaml.doc("The ARN of the flow that this entitlement was granted on.") @as("FlowArn")
    flowArn: option<__string>,
    @ocaml.doc("The new configuration of the entitlement that you updated.") @as("Entitlement")
    entitlement: option<entitlement>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "UpdateFlowEntitlementCommand"
  let make = (
    ~flowArn,
    ~entitlementArn,
    ~subscribers=?,
    ~entitlementStatus=?,
    ~encryption=?,
    ~description=?,
    (),
  ) => new({subscribers, flowArn, entitlementStatus, entitlementArn, encryption, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PurchaseOffering = {
  type t
  @ocaml.doc("A request to purchase a offering.")
  type request = {
    @ocaml.doc(
      "The date and time that you want the reservation to begin, in Coordinated Universal Time (UTC). You can specify any date and time between 12:00am on the first day of the current month to the current time on today's date, inclusive. Specify the start in a 24-hour notation. Use the following format: YYYY-MM-DDTHH:mm:SSZ, where T and Z are literal characters. For example, to specify 11:30pm on March 5, 2020, enter 2020-03-05T23:30:00Z."
    )
    @as("Start")
    start: __string,
    @ocaml.doc("The name that you want to use for the reservation.") @as("ReservationName")
    reservationName: __string,
    @ocaml.doc("The Amazon Resource Name (ARN) of the offering.") @as("OfferingArn")
    offeringArn: __string,
  }
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "PurchaseOfferingCommand"
  let make = (~start, ~reservationName, ~offeringArn, ()) =>
    new({start, reservationName, offeringArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEntitlements = {
  type t
  type request = {
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of results to return per API request. For example, you submit a ListEntitlements request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 20 results per page."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListEntitlements request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListEntitlements request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of entitlements that have been granted to you from other AWS accounts.")
    @as("Entitlements")
    entitlements: option<__listOfListedEntitlement>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "ListEntitlementsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReservation = {
  type t
  type request = {
    @ocaml.doc("The Amazon Resource Name (ARN) of the reservation.") @as("ReservationArn")
    reservationArn: __string,
  }
  type response = {@as("Reservation") reservation: option<reservation>}
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "DescribeReservationCommand"
  let make = (~reservationArn, ()) => new({reservationArn: reservationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeOffering = {
  type t
  type request = {
    @ocaml.doc("The Amazon Resource Name (ARN) of the offering.") @as("OfferingArn")
    offeringArn: __string,
  }
  type response = {@as("Offering") offering: option<offering>}
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "DescribeOfferingCommand"
  let make = (~offeringArn, ()) => new({offeringArn: offeringArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFlowMediaStream = {
  type t
  @ocaml.doc("The fields that you want to update in the media stream.")
  type request = {
    @ocaml.doc("The resolution of the video.") @as("VideoFormat") videoFormat: option<__string>,
    @ocaml.doc("The type of media stream.") @as("MediaStreamType")
    mediaStreamType: option<mediaStreamType>,
    @ocaml.doc("The name of the media stream that you want to update.") @as("MediaStreamName")
    mediaStreamName: __string,
    @ocaml.doc("The Amazon Resource Name (ARN) of the flow.") @as("FlowArn") flowArn: __string,
    @ocaml.doc("Description") @as("Description") description: option<__string>,
    @ocaml.doc(
      "The sample rate (in Hz) for the stream. If the media stream type is video or ancillary data, set this value to 90000. If the media stream type is audio, set this value to either 48000 or 96000."
    )
    @as("ClockRate")
    clockRate: option<__integer>,
    @ocaml.doc("The attributes that you want to assign to the media stream.") @as("Attributes")
    attributes: option<mediaStreamAttributesRequest>,
  }
  type response = {
    @ocaml.doc("The media stream that you updated.") @as("MediaStream")
    mediaStream: option<mediaStream>,
    @ocaml.doc("The ARN of the flow that is associated with the media stream that you updated.")
    @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "UpdateFlowMediaStreamCommand"
  let make = (
    ~mediaStreamName,
    ~flowArn,
    ~videoFormat=?,
    ~mediaStreamType=?,
    ~description=?,
    ~clockRate=?,
    ~attributes=?,
    (),
  ) =>
    new({
      videoFormat,
      mediaStreamType,
      mediaStreamName,
      flowArn,
      description,
      clockRate,
      attributes,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListReservations = {
  type t
  type request = {
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListReservations request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of results to return per API request. For example, you submit a ListReservations request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "A list of all reservations that have been purchased by this account in the current AWS Region."
    )
    @as("Reservations")
    reservations: option<__listOfReservation>,
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListReservations request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListReservations request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "ListReservationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListOfferings = {
  type t
  type request = {
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListOfferings request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of results to return per API request. For example, you submit a ListOfferings request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("A list of offerings that are available to this account in the current AWS Region.")
    @as("Offerings")
    offerings: option<__listOfOffering>,
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListOfferings request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListOfferings request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "ListOfferingsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFlows = {
  type t
  type request = {
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListFlows request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFlows request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc(
      "The maximum number of results to return per API request. For example, you submit a ListFlows request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) The service might return fewer results than the MaxResults value. If MaxResults is not included in the request, the service defaults to pagination with a maximum of 10 results per page."
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc(
      "The token that identifies which batch of results that you want to see. For example, you submit a ListFlows request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the ListFlows request a second time and specify the NextToken value."
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("A list of flow summaries.") @as("Flows") flows: option<__listOfListedFlow>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "ListFlowsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GrantFlowEntitlements = {
  type t
  @ocaml.doc("A request to grant entitlements on a flow.")
  type request = {
    @ocaml.doc("The flow that you want to grant entitlements on.") @as("FlowArn") flowArn: __string,
    @ocaml.doc("The list of entitlements that you want to grant.") @as("Entitlements")
    entitlements: __listOfGrantEntitlementRequest,
  }
  type response = {
    @ocaml.doc("The ARN of the flow that these entitlements were granted to.") @as("FlowArn")
    flowArn: option<__string>,
    @ocaml.doc("The entitlements that were just granted.") @as("Entitlements")
    entitlements: option<__listOfEntitlement>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "GrantFlowEntitlementsCommand"
  let make = (~flowArn, ~entitlements, ()) => new({flowArn, entitlements})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddFlowVpcInterfaces = {
  type t
  @ocaml.doc("A request to add VPC interfaces to the flow.")
  type request = {
    @ocaml.doc("A list of VPC interfaces that you want to add.") @as("VpcInterfaces")
    vpcInterfaces: __listOfVpcInterfaceRequest,
    @ocaml.doc("The flow that you want to mutate.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The details of the newly added VPC interfaces.") @as("VpcInterfaces")
    vpcInterfaces: option<__listOfVpcInterface>,
    @ocaml.doc("The ARN of the flow that these VPC interfaces were added to.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "AddFlowVpcInterfacesCommand"
  let make = (~vpcInterfaces, ~flowArn, ()) => new({vpcInterfaces, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddFlowMediaStreams = {
  type t
  @ocaml.doc("A request to add media streams to the flow.")
  type request = {
    @ocaml.doc("The media streams that you want to add to the flow.") @as("MediaStreams")
    mediaStreams: __listOfAddMediaStreamRequest,
    @ocaml.doc("The Amazon Resource Name (ARN) of the flow.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The media streams that you added to the flow.") @as("MediaStreams")
    mediaStreams: option<__listOfMediaStream>,
    @ocaml.doc("The ARN of the flow that you added media streams to.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "AddFlowMediaStreamsCommand"
  let make = (~mediaStreams, ~flowArn, ()) => new({mediaStreams, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFlowSource = {
  type t
  @ocaml.doc("A request to update the source of a flow.")
  type request = {
    @ocaml.doc(
      "The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
    )
    @as("WhitelistCidr")
    whitelistCidr: option<__string>,
    @ocaml.doc("The name of the VPC interface to use for this source.") @as("VpcInterfaceName")
    vpcInterfaceName: option<__string>,
    @ocaml.doc(
      "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
    )
    @as("StreamId")
    streamId: option<__string>,
    @ocaml.doc("The ARN of the source that you want to update.") @as("SourceArn")
    sourceArn: __string,
    @ocaml.doc(
      "The IP address that the flow communicates with to initiate connection with the sender."
    )
    @as("SenderIpAddress")
    senderIpAddress: option<__string>,
    @ocaml.doc(
      "The port that the flow uses to send outbound requests to initiate connection with the sender."
    )
    @as("SenderControlPort")
    senderControlPort: option<__integer>,
    @ocaml.doc("The protocol that is used by the source.") @as("Protocol")
    protocol: option<protocol>,
    @ocaml.doc(
      "The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency."
    )
    @as("MinLatency")
    minLatency: option<__integer>,
    @ocaml.doc(
      "The media streams that are associated with the source, and the parameters for those associations."
    )
    @as("MediaStreamSourceConfigurations")
    mediaStreamSourceConfigurations: option<__listOfMediaStreamSourceConfigurationRequest>,
    @ocaml.doc("The size of the buffer (in milliseconds) to use to sync incoming source data.")
    @as("MaxSyncBuffer")
    maxSyncBuffer: option<__integer>,
    @ocaml.doc(
      "The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams."
    )
    @as("MaxLatency")
    maxLatency: option<__integer>,
    @ocaml.doc("The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.") @as("MaxBitrate")
    maxBitrate: option<__integer>,
    @ocaml.doc("The port that the flow will be listening on for incoming content.")
    @as("IngestPort")
    ingestPort: option<__integer>,
    @ocaml.doc("The flow that is associated with the source that you want to update.")
    @as("FlowArn")
    flowArn: __string,
    @ocaml.doc(
      "The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow."
    )
    @as("EntitlementArn")
    entitlementArn: option<__string>,
    @ocaml.doc(
      "A description for the source. This value is not used or seen outside of the current AWS Elemental MediaConnect account."
    )
    @as("Description")
    description: option<__string>,
    @ocaml.doc("The type of encryption used on the content ingested from this source.")
    @as("Decryption")
    decryption: option<updateEncryption>,
  }
  type response = {
    @ocaml.doc("The settings for the source of the flow.") @as("Source") source: option<source>,
    @ocaml.doc("The ARN of the flow that you want to update.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "UpdateFlowSourceCommand"
  let make = (
    ~sourceArn,
    ~flowArn,
    ~whitelistCidr=?,
    ~vpcInterfaceName=?,
    ~streamId=?,
    ~senderIpAddress=?,
    ~senderControlPort=?,
    ~protocol=?,
    ~minLatency=?,
    ~mediaStreamSourceConfigurations=?,
    ~maxSyncBuffer=?,
    ~maxLatency=?,
    ~maxBitrate=?,
    ~ingestPort=?,
    ~entitlementArn=?,
    ~description=?,
    ~decryption=?,
    (),
  ) =>
    new({
      whitelistCidr,
      vpcInterfaceName,
      streamId,
      sourceArn,
      senderIpAddress,
      senderControlPort,
      protocol,
      minLatency,
      mediaStreamSourceConfigurations,
      maxSyncBuffer,
      maxLatency,
      maxBitrate,
      ingestPort,
      flowArn,
      entitlementArn,
      description,
      decryption,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFlowOutput = {
  type t
  @ocaml.doc("The fields that you want to update in the output.")
  type request = {
    @ocaml.doc("The name of the VPC interface attachment to use for this output.")
    @as("VpcInterfaceAttachment")
    vpcInterfaceAttachment: option<vpcInterfaceAttachment>,
    @ocaml.doc(
      "The stream ID that you want to use for this transport. This parameter applies only to Zixi-based streams."
    )
    @as("StreamId")
    streamId: option<__string>,
    @ocaml.doc("The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.")
    @as("SmoothingLatency")
    smoothingLatency: option<__integer>,
    @ocaml.doc(
      "The IP address that the flow communicates with to initiate connection with the sender."
    )
    @as("SenderIpAddress")
    senderIpAddress: option<__string>,
    @ocaml.doc(
      "The port that the flow uses to send outbound requests to initiate connection with the sender."
    )
    @as("SenderControlPort")
    senderControlPort: option<__integer>,
    @ocaml.doc("The remote ID for the Zixi-pull stream.") @as("RemoteId")
    remoteId: option<__string>,
    @ocaml.doc("The protocol to use for the output.") @as("Protocol") protocol: option<protocol>,
    @ocaml.doc("The port to use when content is distributed to this output.") @as("Port")
    port: option<__integer>,
    @ocaml.doc("The ARN of the output that you want to update.") @as("OutputArn")
    outputArn: __string,
    @ocaml.doc(
      "The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency."
    )
    @as("MinLatency")
    minLatency: option<__integer>,
    @ocaml.doc(
      "The media streams that are associated with the output, and the parameters for those associations."
    )
    @as("MediaStreamOutputConfigurations")
    mediaStreamOutputConfigurations: option<__listOfMediaStreamOutputConfigurationRequest>,
    @ocaml.doc(
      "The maximum latency in milliseconds. This parameter applies only to RIST-based, Zixi-based, and Fujitsu-based streams."
    )
    @as("MaxLatency")
    maxLatency: option<__integer>,
    @ocaml.doc("The flow that is associated with the output that you want to update.")
    @as("FlowArn")
    flowArn: __string,
    @ocaml.doc(
      "The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key)."
    )
    @as("Encryption")
    encryption: option<updateEncryption>,
    @ocaml.doc("The IP address where you want to send the output.") @as("Destination")
    destination: option<__string>,
    @ocaml.doc(
      "A description of the output. This description appears only on the AWS Elemental MediaConnect console and will not be seen by the end user."
    )
    @as("Description")
    description: option<__string>,
    @ocaml.doc(
      "The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16."
    )
    @as("CidrAllowList")
    cidrAllowList: option<__listOf__string>,
  }
  type response = {
    @ocaml.doc("The new settings of the output that you updated.") @as("Output")
    output: option<output>,
    @ocaml.doc("The ARN of the flow that is associated with the updated output.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new
  external new: request => t = "UpdateFlowOutputCommand"
  let make = (
    ~outputArn,
    ~flowArn,
    ~vpcInterfaceAttachment=?,
    ~streamId=?,
    ~smoothingLatency=?,
    ~senderIpAddress=?,
    ~senderControlPort=?,
    ~remoteId=?,
    ~protocol=?,
    ~port=?,
    ~minLatency=?,
    ~mediaStreamOutputConfigurations=?,
    ~maxLatency=?,
    ~encryption=?,
    ~destination=?,
    ~description=?,
    ~cidrAllowList=?,
    (),
  ) =>
    new({
      vpcInterfaceAttachment,
      streamId,
      smoothingLatency,
      senderIpAddress,
      senderControlPort,
      remoteId,
      protocol,
      port,
      outputArn,
      minLatency,
      mediaStreamOutputConfigurations,
      maxLatency,
      flowArn,
      encryption,
      destination,
      description,
      cidrAllowList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddFlowSources = {
  type t
  @ocaml.doc("A request to add sources to the flow.")
  type request = {
    @ocaml.doc("A list of sources that you want to add.") @as("Sources")
    sources: __listOfSetSourceRequest,
    @ocaml.doc("The flow that you want to mutate.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The details of the newly added sources.") @as("Sources")
    sources: option<__listOfSource>,
    @ocaml.doc("The ARN of the flow that these sources were added to.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "AddFlowSourcesCommand"
  let make = (~sources, ~flowArn, ()) => new({sources, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddFlowOutputs = {
  type t
  @ocaml.doc("A request to add outputs to the specified flow.")
  type request = {
    @ocaml.doc("A list of outputs that you want to add.") @as("Outputs")
    outputs: __listOfAddOutputRequest,
    @ocaml.doc("The flow that you want to add outputs to.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @ocaml.doc("The details of the newly added outputs.") @as("Outputs")
    outputs: option<__listOfOutput>,
    @ocaml.doc("The ARN of the flow that these outputs were added to.") @as("FlowArn")
    flowArn: option<__string>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "AddFlowOutputsCommand"
  let make = (~outputs, ~flowArn, ()) => new({outputs, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFlow = {
  type t
  @ocaml.doc("A request to update flow.")
  type request = {
    @as("Maintenance") maintenance: option<updateMaintenance>,
    @as("SourceFailoverConfig") sourceFailoverConfig: option<updateFailoverConfig>,
    @ocaml.doc("The flow that you want to update.") @as("FlowArn") flowArn: __string,
  }
  type response = {@as("Flow") flow: option<flow>}
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "UpdateFlowCommand"
  let make = (~flowArn, ~maintenance=?, ~sourceFailoverConfig=?, ()) =>
    new({maintenance, sourceFailoverConfig, flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeFlow = {
  type t
  type request = {
    @ocaml.doc("The ARN of the flow that you want to describe.") @as("FlowArn") flowArn: __string,
  }
  type response = {
    @as("Messages") messages: option<messages>,
    @as("Flow") flow: option<flow>,
  }
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "DescribeFlowCommand"
  let make = (~flowArn, ()) => new({flowArn: flowArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFlow = {
  type t
  @ocaml.doc(
    "Creates a new flow. The request must include one source. The request optionally can include outputs (up to 50) and entitlements (up to 50)."
  )
  type request = {
    @as("Maintenance") maintenance: option<addMaintenance>,
    @ocaml.doc("The VPC interfaces you want on the flow.") @as("VpcInterfaces")
    vpcInterfaces: option<__listOfVpcInterfaceRequest>,
    @as("Sources") sources: option<__listOfSetSourceRequest>,
    @as("SourceFailoverConfig") sourceFailoverConfig: option<failoverConfig>,
    @as("Source") source: option<setSourceRequest>,
    @ocaml.doc("The outputs that you want to add to this flow.") @as("Outputs")
    outputs: option<__listOfAddOutputRequest>,
    @ocaml.doc("The name of the flow.") @as("Name") name: __string,
    @ocaml.doc(
      "The media streams that you want to add to the flow. You can associate these media streams with sources and outputs on the flow."
    )
    @as("MediaStreams")
    mediaStreams: option<__listOfAddMediaStreamRequest>,
    @ocaml.doc("The entitlements that you want to grant on a flow.") @as("Entitlements")
    entitlements: option<__listOfGrantEntitlementRequest>,
    @ocaml.doc(
      "The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current AWS Region."
    )
    @as("AvailabilityZone")
    availabilityZone: option<__string>,
  }
  type response = {@as("Flow") flow: option<flow>}
  @module("@aws-sdk/client-mediaconnect") @new external new: request => t = "CreateFlowCommand"
  let make = (
    ~name,
    ~maintenance=?,
    ~vpcInterfaces=?,
    ~sources=?,
    ~sourceFailoverConfig=?,
    ~source=?,
    ~outputs=?,
    ~mediaStreams=?,
    ~entitlements=?,
    ~availabilityZone=?,
    (),
  ) =>
    new({
      maintenance,
      vpcInterfaces,
      sources,
      sourceFailoverConfig,
      source,
      outputs,
      name,
      mediaStreams,
      entitlements,
      availabilityZone,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
