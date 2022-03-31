type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotwireless") @new
external createClient: unit => awsServiceClient = "IoTWirelessClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("<p>The wireless gateway type.</p>") type wirelessGatewayType = [@as("LoRaWAN") #LoRaWAN]
type wirelessGatewayTaskStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("SECOND_RETRY") #SECOND_RETRY
  | @as("FIRST_RETRY") #FIRST_RETRY
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type wirelessGatewayTaskName = string
type wirelessGatewayTaskDefinitionType = [@as("UPDATE") #UPDATE]
type wirelessGatewayTaskDefinitionId = string
type wirelessGatewayTaskDefinitionArn = string
type wirelessGatewayServiceType = [@as("LNS") #LNS | @as("CUPS") #CUPS]
type wirelessGatewayName = string
type wirelessGatewayIdType = [
  | @as("ThingName") #ThingName
  | @as("WirelessGatewayId") #WirelessGatewayId
  | @as("GatewayEui") #GatewayEui
]
type wirelessGatewayId = string
@ocaml.doc("<p>The event for a log message, if the log message is tied to a wireless gateway.</p>")
type wirelessGatewayEvent = [@as("Certificate") #Certificate | @as("CUPS_Request") #CUPS_Request]
type wirelessGatewayArn = string
type wirelessDeviceType = [@as("LoRaWAN") #LoRaWAN | @as("Sidewalk") #Sidewalk]
type wirelessDeviceName = string
type wirelessDeviceIdType = [
  | @as("SidewalkManufacturingSn") #SidewalkManufacturingSn
  | @as("ThingName") #ThingName
  | @as("DevEui") #DevEui
  | @as("WirelessDeviceId") #WirelessDeviceId
]
@ocaml.doc("<p>The ID of the wireless device.</p>") type wirelessDeviceId = string
@ocaml.doc("<p>WirelessDevice FrameInfo for trace content.</p>")
type wirelessDeviceFrameInfo = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc("<p>The event for a log message, if the log message is tied to a wireless device.</p>")
type wirelessDeviceEvent = [
  | @as("Registration") #Registration
  | @as("Downlink_Data") #Downlink_Data
  | @as("Uplink_Data") #Uplink_Data
  | @as("Rejoin") #Rejoin
  | @as("Join") #Join
]
type wirelessDeviceArn = string
type updateSignature = string
type updateDataSource = string
type ulRatePolicy = string
type ulRate = int
type ulBucketSize = int
type transmitMode = int
type thingName = string
type thingArn = string
type targetPer = int
type tagValue = string
type tagKey = string
type supportsJoin = bool
type supportsClassC = bool
type supportsClassB = bool
type supports32BitFCnt = bool
@ocaml.doc("<p>Supported RfRegions</p>")
type supportedRfRegion = [
  | @as("AS923-1") #AS923_1
  | @as("AU915") #AU915
  | @as("US915") #US915
  | @as("EU868") #EU868
]
@ocaml.doc("<p>A subset of supported frequency channels in a certain RFRegion.</p>")
type subBand = int
type station = string
@ocaml.doc("<p>Start time of a FUOTA task.</p>") type startTime = Js.Date.t
@ocaml.doc("<p>The certificate chain algorithm provided by sidewalk.</p>")
type signingAlg = [@as("P256r1") #P256r1 | @as("Ed25519") #Ed25519]
type sidewalkManufacturingSn = string
@ocaml.doc("<p>The sidewalk device identification.</p>") type sidewalkId = string
@ocaml.doc("<p>How long before a multicast group session is to timeout.</p>")
type sessionTimeout = int
@ocaml.doc("<p>Timestamp of when the multicast group session is to start.</p>")
type sessionStartTimeTimestamp = Js.Date.t
type serviceProfileName = string
type serviceProfileId = string
type serviceProfileArn = string
type seq = int
type snwkSIntKey = string
type rxFreq2 = int
type rxDrOffset1 = int
type rxDelay1 = int
type rxDataRate2 = int
type roleArn = string
@ocaml.doc("<p>The frequency band (RFRegion) value.</p>") type rfRegion = string
type result = string
type resourceType = string
@ocaml.doc("<p>The identifier of the resource. For a Wireless Device, it is the wireless device ID. For a wireless gateway, 
            it is the wireless gateway ID.</p>")
type resourceIdentifier = string
type resourceId = string
type reportDevStatusMargin = bool
type reportDevStatusBattery = bool
type regParamsRevision = string
type raAllowed = bool
@ocaml.doc(
  "<p>Query string used to search for wireless devices as part of the bulk associate and disassociate process.</p>"
)
type queryString = string
type presetFreq = int
type prAllowed = bool
type pingSlotPeriod = int
type pingSlotFreq = int
type pingSlotDr = int
@ocaml.doc("<p>The binary to be sent to the end device, encoded in base64.</p>")
type payloadData = string
type partnerType = [@as("Sidewalk") #Sidewalk]
type partnerAccountId = string
type partnerAccountArn = string
type packageVersion = string
type nwkSKey = string
type nwkSEncKey = string
type nwkKey = string
type nwkGeoLoc = bool
@ocaml.doc("<p>Number of devices that are requested to be associated with the multicast group.</p>")
type numberOfDevicesRequested = int
@ocaml.doc("<p>Number of devices that are associated to the multicast group.</p>")
type numberOfDevicesInGroup = int
type nextToken = string
@ocaml.doc("<p>NetworkAnalyzer configuration name.</p>")
type networkAnalyzerConfigurationName = string
@ocaml.doc("<p>LoRaWAN network ID.</p>") type netId = string
@ocaml.doc("<p>The status of the multicast group.</p>") type multicastGroupStatus = string
@ocaml.doc("<p>The name of the multicast group.</p>") type multicastGroupName = string
@ocaml.doc("<p>ID of a multicast group message.</p>") type multicastGroupMessageId = string
@ocaml.doc("<p>The ID of the multicast group.</p>") type multicastGroupId = string
@ocaml.doc("<p>The arn of the multicast group.</p>") type multicastGroupArn = string
type multicastDeviceStatus = string
type model = string
type minGwDiversity = int
@ocaml.doc(
  "<p>Sidewalk device message type. Default value is <code>CUSTOM_COMMAND_ID_NOTIFY</code>.</p>"
)
type messageType = [
  | @as("CUSTOM_COMMAND_ID_RESP") #CUSTOM_COMMAND_ID_RESP
  | @as("CUSTOM_COMMAND_ID_SET") #CUSTOM_COMMAND_ID_SET
  | @as("CUSTOM_COMMAND_ID_GET") #CUSTOM_COMMAND_ID_GET
  | @as("CUSTOM_COMMAND_ID_NOTIFY") #CUSTOM_COMMAND_ID_NOTIFY
]
type messageId = string
type message = string
@ocaml.doc("<p>Id of the multicast group.</p>") type mcGroupId = int
@ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
type maxResults = int
type maxEirp = int
type maxDutyCycle = int
type macVersion = string
@ocaml.doc("<p>The log level for a log message.</p>")
type logLevel = [@as("DISABLED") #DISABLED | @as("ERROR") #ERROR | @as("INFO") #INFO]
type joinEui = string
type iotCertificateId = string
type integer_ = int
type identifierType = [@as("PartnerAccountId") #PartnerAccountId]
type identifier = string
type isodateTimeString = string
type hrAllowed = bool
type genAppKey = string
type gatewayEui = string
@ocaml.doc("<p>The status of a FUOTA task.</p>")
type fuotaTaskStatus = [
  | @as("Delete_Waiting") #Delete_Waiting
  | @as("FuotaDone") #FuotaDone
  | @as("In_FuotaSession") #In_FuotaSession
  | @as("FuotaSession_Waiting") #FuotaSession_Waiting
  | @as("Pending") #Pending
]
@ocaml.doc("<p>The name of a FUOTA task.</p>") type fuotaTaskName = string
@ocaml.doc("<p>The ID of a FUOTA task.</p>") type fuotaTaskId = string
@ocaml.doc("<p>The arn of a FUOTA task.</p>") type fuotaTaskArn = string
@ocaml.doc("<p>The status of a wireless device in a FUOTA task.</p>")
type fuotaDeviceStatus = [
  | @as("Successful") #Successful
  | @as("MICError") #MICError
  | @as("MemoryError") #MemoryError
  | @as("MissingFrag") #MissingFrag
  | @as("SessionCnt_replay") #SessionCnt_Replay
  | @as("Wrong_descriptor") #Wrong_Descriptor
  | @as("FragIndex_unsupported") #FragIndex_Unsupported
  | @as("Not_enough_memory") #Not_Enough_Memory
  | @as("FragAlgo_unsupported") #FragAlgo_Unsupported
  | @as("Package_Not_Supported") #Package_Not_Supported
  | @as("Initial") #Initial
]
@ocaml.doc("<p>The firmware update role that is to be used with a FUOTA task.</p>")
type firmwareUpdateRole = string
@ocaml.doc(
  "<p>The S3 URI points to a firmware update image that is to be used with a FUOTA task.</p>"
)
type firmwareUpdateImage = string
type fingerprint = string
@ocaml.doc("<p>The Fport value.</p>") type fport = int
type fnwkSIntKey = string
type expressionType = [@as("MqttTopic") #MqttTopic | @as("RuleName") #RuleName]
type expression = string
type eventNotificationTopicStatus = [@as("Disabled") #Disabled | @as("Enabled") #Enabled]
type eventNotificationPartnerType = [@as("Sidewalk") #Sidewalk]
@ocaml.doc("<p>Sidewalk device status notification.</p>")
type event = [
  | @as("passthrough") #Passthrough
  | @as("nack") #Nack
  | @as("ack") #Ack
  | @as("lost") #Lost
  | @as("discovered") #Discovered
]
type endPoint = string
type drMin = int
type drMax = int
type double = float
type dlRatePolicy = string
type dlRate = int
@ocaml.doc("<p>Downlink frequency.</p>") type dlFreq = int
@ocaml.doc("<p>Downlink data rate.</p>") type dlDr = int
@ocaml.doc("<p>DlClass for LoRaWAM, valid values are ClassB and ClassC.</p>")
type dlClass = [@as("ClassC") #ClassC | @as("ClassB") #ClassB]
type dlBucketSize = int
@ocaml.doc("<p>Device state defines the device status of sidewalk device.</p>")
type deviceState = [
  | @as("RegisteredUnreachable") #RegisteredUnreachable
  | @as("RegisteredReachable") #RegisteredReachable
  | @as("RegisteredNotSeen") #RegisteredNotSeen
  | @as("Provisioned") #Provisioned
]
type deviceProfileName = string
type deviceProfileId = string
type deviceProfileArn = string
type devStatusReqFreq = int
type devEui = string
type devAddr = string
type destinationName = string
type destinationArn = string
@ocaml.doc("<p>The description of the new resource.</p>") type description = string
@ocaml.doc("<p>Created at timestamp for the resource.</p>") type createdAt = Js.Date.t
type crc = float
type connectionStatus = [@as("Disconnected") #Disconnected | @as("Connected") #Connected]
@ocaml.doc(
  "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.</p>"
)
type clientRequestToken = string
type classCTimeout = int
type classBTimeout = int
type channelMask = string
@ocaml.doc("<p>Certificate value.</p>") type certificateValue = string
type certificatePEM = string
@ocaml.doc("<p>Sidewalk device battery level.</p>")
type batteryLevel = [@as("critical") #Critical | @as("low") #Low | @as("normal") #Normal]
type autoCreateTasks = bool
type appServerPrivateKey = string
type appSKey = string
type appKey = string
type appEui = string
type amazonResourceName = string
@ocaml.doc("<p>The Sidewalk Amazon ID.</p>") type amazonId = string
type addGwMetadata = bool
type accountLinked = bool
type wirelessGatewayList = array<wirelessGatewayId>
@ocaml.doc("<p>The log options for a wireless gateway event and can be used to set log levels for a specific wireless gateway event.</p> 
         <p>For a LoRaWAN gateway, possible events for a log message are <code>CUPS_Request</code> and <code>Certificate</code>.</p>")
type wirelessGatewayEventLogOption = {
  @as("LogLevel") logLevel: logLevel,
  @as("Event") event: wirelessGatewayEvent,
}
type wirelessDeviceList = array<wirelessDeviceId>
@ocaml.doc("<p>The log options for a wireless device event and can be used to set log levels for a specific wireless device event.</p> 
         <p>For a LoRaWAN device, possible events for a log messsage are: <code>Join</code>, <code>Rejoin</code>, 
             <code>Downlink_Data</code>, and <code>Uplink_Data</code>. For a Sidewalk device, possible events for a log message are 
             <code>Registration</code>, <code>Downlink_Data</code>, and <code>Uplink_Data</code>.</p>")
type wirelessDeviceEventLogOption = {
  @as("LogLevel") logLevel: logLevel,
  @as("Event") event: wirelessDeviceEvent,
}
@ocaml.doc("<p>Trace Content for resources.</p>")
type traceContent = {
  @as("LogLevel") logLevel: option<logLevel>,
  @as("WirelessDeviceFrameInfo") wirelessDeviceFrameInfo: option<wirelessDeviceFrameInfo>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A simple label consisting of a customer-defined key-value pair</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The tag's key value.</p>") @as("Key") key: tagKey,
}
@ocaml.doc("<p>A list of integer indicating which sub bands are supported by LoRa gateway.</p>")
type subBands = array<subBand>
@ocaml.doc("<p>Sidewalk update.</p>")
type sidewalkUpdateAccount = {
  @ocaml.doc("<p>The new Sidewalk application server private key.</p>") @as("AppServerPrivateKey")
  appServerPrivateKey: option<appServerPrivateKey>,
}
@ocaml.doc("<p>Information about a Sidewalk router.</p>")
type sidewalkSendDataToDevice = {
  @as("MessageType") messageType: option<messageType>,
  @ocaml.doc("<p>The sequence number.</p>") @as("Seq") seq: option<seq>,
}
@ocaml.doc("<p> SidewalkEventNotificationConfigurations object
            Event configuration object for Sidewalk related event topics.</p>")
type sidewalkEventNotificationConfigurations = {
  @ocaml.doc("<p>Enum to denote whether amazon id event topic is enabled or disabled.</p>")
  @as("AmazonIdEventTopic")
  amazonIdEventTopic: option<eventNotificationTopicStatus>,
}
@ocaml.doc("<p>MetaData for Sidewalk device.</p>")
type sidewalkDeviceMetadata = {
  @ocaml.doc("<p>Device state defines the device status of sidewalk device.</p>") @as("DeviceState")
  deviceState: option<deviceState>,
  @ocaml.doc("<p>Sidewalk device status notification.</p>") @as("Event") event: option<event>,
  @ocaml.doc("<p>Sidewalk device battery level.</p>") @as("BatteryLevel")
  batteryLevel: option<batteryLevel>,
  @ocaml.doc("<p>The RSSI value.</p>") @as("Rssi") rssi: option<integer_>,
}
@ocaml.doc("<p>Information about a Sidewalk account.</p>")
type sidewalkAccountInfoWithFingerprint = {
  @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
  arn: option<partnerAccountArn>,
  @ocaml.doc("<p>The fingerprint of the Sidewalk application server private key.</p>")
  @as("Fingerprint")
  fingerprint: option<fingerprint>,
  @ocaml.doc("<p>The Sidewalk Amazon ID.</p>") @as("AmazonId") amazonId: option<amazonId>,
}
@ocaml.doc("<p>Information about a Sidewalk account.</p>")
type sidewalkAccountInfo = {
  @ocaml.doc("<p>The Sidewalk application server private key.</p>") @as("AppServerPrivateKey")
  appServerPrivateKey: option<appServerPrivateKey>,
  @ocaml.doc("<p>The Sidewalk Amazon ID.</p>") @as("AmazonId") amazonId: option<amazonId>,
}
@ocaml.doc("<p>Session keys for ABP v1.1</p>")
type sessionKeysAbpV1_1 = {
  @ocaml.doc("<p>The AppSKey value.</p>") @as("AppSKey") appSKey: option<appSKey>,
  @ocaml.doc("<p>The NwkSEncKey value.</p>") @as("NwkSEncKey") nwkSEncKey: option<nwkSEncKey>,
  @ocaml.doc("<p>The SNwkSIntKey value.</p>") @as("SNwkSIntKey") snwkSIntKey: option<snwkSIntKey>,
  @ocaml.doc("<p>The FNwkSIntKey value.</p>") @as("FNwkSIntKey") fnwkSIntKey: option<fnwkSIntKey>,
}
@ocaml.doc("<p>Session keys for ABP v1.1</p>")
type sessionKeysAbpV1_0_x = {
  @ocaml.doc("<p>The AppSKey value.</p>") @as("AppSKey") appSKey: option<appSKey>,
  @ocaml.doc("<p>The NwkSKey value.</p>") @as("NwkSKey") nwkSKey: option<nwkSKey>,
}
@ocaml.doc("<p>Information about a service profile.</p>")
type serviceProfile = {
  @ocaml.doc("<p>The ID of the service profile.</p>") @as("Id") id: option<serviceProfileId>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<serviceProfileName>,
  @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
  arn: option<serviceProfileArn>,
}
@ocaml.doc("<p>OTAA device object for v1.1</p>")
type otaaV1_1 = {
  @ocaml.doc("<p>The JoinEUI value.</p>") @as("JoinEui") joinEui: option<joinEui>,
  @ocaml.doc("<p>The NwkKey value.</p>") @as("NwkKey") nwkKey: option<nwkKey>,
  @ocaml.doc("<p>The AppKey value.</p>") @as("AppKey") appKey: option<appKey>,
}
@ocaml.doc("<p>OTAA device object for v1.0.x</p>")
type otaaV1_0_x = {
  @ocaml.doc("<p>The GenAppKey value.</p>") @as("GenAppKey") genAppKey: option<genAppKey>,
  @ocaml.doc("<p>The AppEUI value.</p>") @as("AppEui") appEui: option<appEui>,
  @ocaml.doc("<p>The AppKey value.</p>") @as("AppKey") appKey: option<appKey>,
}
@ocaml.doc(
  "<p>A list of NetId values that are used by LoRa gateways to filter the uplink frames.</p>"
)
type netIdFilters = array<netId>
@ocaml.doc("<p>A multicast group that is associated with a FUOTA task.</p>")
type multicastGroupByFuotaTask = {@as("Id") id: option<multicastGroupId>}
@ocaml.doc("<p>A multicast group.</p>")
type multicastGroup = {
  @as("Name") name: option<multicastGroupName>,
  @as("Arn") arn: option<multicastGroupArn>,
  @as("Id") id: option<multicastGroupId>,
}
@ocaml.doc("<p>LoRaWAN object for update functions.</p>")
type loRaWANUpdateDevice = {
  @ocaml.doc("<p>The ID of the service profile.</p>") @as("ServiceProfileId")
  serviceProfileId: option<serviceProfileId>,
  @ocaml.doc("<p>The ID of the device profile for the wireless device.</p>") @as("DeviceProfileId")
  deviceProfileId: option<deviceProfileId>,
}
@ocaml.doc("<p>The LoRaWAN information used to start a FUOTA task.</p>")
type loRaWANStartFuotaTask = {@as("StartTime") startTime: option<startTime>}
@ocaml.doc("<p>LoRaWANServiceProfile object.</p>")
type loRaWANServiceProfile = {
  @ocaml.doc("<p>The AddGWMetaData value.</p>") @as("AddGwMetadata")
  addGwMetadata: option<addGwMetadata>,
}
@ocaml.doc("<p>LoRaWAN router info.</p>")
type loRaWANSendDataToDevice = {@as("FPort") fport: option<fport>}
@ocaml.doc("<p>The LoRaWAN information used with the multicast session.</p>")
type loRaWANMulticastSession = {
  @as("SessionTimeout") sessionTimeout: option<sessionTimeout>,
  @as("SessionStartTime") sessionStartTime: option<sessionStartTimeTimestamp>,
  @as("DlFreq") dlFreq: option<dlFreq>,
  @as("DlDr") dlDr: option<dlDr>,
}
@ocaml.doc("<p>The metadata information of the LoRaWAN multicast group.</p>")
type loRaWANMulticastMetadata = {@as("FPort") fport: option<fport>}
@ocaml.doc(
  "<p>The LoRaWAN information that is to be returned from getting multicast group information.</p>"
)
type loRaWANMulticastGet = {
  @as("NumberOfDevicesInGroup") numberOfDevicesInGroup: option<numberOfDevicesInGroup>,
  @as("NumberOfDevicesRequested") numberOfDevicesRequested: option<numberOfDevicesRequested>,
  @as("DlClass") dlClass: option<dlClass>,
  @as("RfRegion") rfRegion: option<supportedRfRegion>,
}
@ocaml.doc("<p>The LoRaWAN information that is to be used with the multicast group.</p>")
type loRaWANMulticast = {
  @as("DlClass") dlClass: option<dlClass>,
  @as("RfRegion") rfRegion: option<supportedRfRegion>,
}
@ocaml.doc("<p>LoRaWAN object for list functions.</p>")
type loRaWANListDevice = {
  @ocaml.doc("<p>The DevEUI value.</p>") @as("DevEui") devEui: option<devEui>,
}
@ocaml.doc("<p>LoRaWANGetServiceProfileInfo object.</p>")
type loRaWANGetServiceProfileInfo = {
  @ocaml.doc("<p>The MinGwDiversity value.</p>") @as("MinGwDiversity")
  minGwDiversity: option<minGwDiversity>,
  @ocaml.doc("<p>The TargetPER value.</p>") @as("TargetPer") targetPer: option<targetPer>,
  @ocaml.doc("<p>The NwkGeoLoc value.</p>") @as("NwkGeoLoc") nwkGeoLoc: option<nwkGeoLoc>,
  @ocaml.doc("<p>The RAAllowed value that describes whether roaming activation is allowed.</p>")
  @as("RaAllowed")
  raAllowed: option<raAllowed>,
  @ocaml.doc("<p>The HRAllowed value that describes whether handover roaming is allowed.</p>")
  @as("HrAllowed")
  hrAllowed: option<hrAllowed>,
  @ocaml.doc("<p>The PRAllowed value that describes whether passive roaming is allowed.</p>")
  @as("PrAllowed")
  prAllowed: option<prAllowed>,
  @ocaml.doc("<p>The ChannelMask value.</p>") @as("ChannelMask") channelMask: option<channelMask>,
  @ocaml.doc("<p>The DRMax value.</p>") @as("DrMax") drMax: option<drMax>,
  @ocaml.doc("<p>The DRMin value.</p>") @as("DrMin") drMin: option<drMin>,
  @ocaml.doc("<p>The ReportDevStatusMargin value.</p>") @as("ReportDevStatusMargin")
  reportDevStatusMargin: option<reportDevStatusMargin>,
  @ocaml.doc("<p>The ReportDevStatusBattery value.</p>") @as("ReportDevStatusBattery")
  reportDevStatusBattery: option<reportDevStatusBattery>,
  @ocaml.doc("<p>The DevStatusReqFreq value.</p>") @as("DevStatusReqFreq")
  devStatusReqFreq: option<devStatusReqFreq>,
  @ocaml.doc("<p>The AddGWMetaData value.</p>") @as("AddGwMetadata")
  addGwMetadata: option<addGwMetadata>,
  @ocaml.doc("<p>The DLRatePolicy value.</p>") @as("DlRatePolicy")
  dlRatePolicy: option<dlRatePolicy>,
  @ocaml.doc("<p>The DLBucketSize value.</p>") @as("DlBucketSize")
  dlBucketSize: option<dlBucketSize>,
  @ocaml.doc("<p>The DLRate value.</p>") @as("DlRate") dlRate: option<dlRate>,
  @ocaml.doc("<p>The ULRatePolicy value.</p>") @as("UlRatePolicy")
  ulRatePolicy: option<ulRatePolicy>,
  @ocaml.doc("<p>The ULBucketSize value.</p>") @as("UlBucketSize")
  ulBucketSize: option<ulBucketSize>,
  @ocaml.doc("<p>The ULRate value.</p>") @as("UlRate") ulRate: option<ulRate>,
}
@ocaml.doc("<p>LoRaWANGatewayVersion object.</p>")
type loRaWANGatewayVersion = {
  @ocaml.doc("<p>The basic station version of the wireless gateway.</p>") @as("Station")
  station: option<station>,
  @ocaml.doc("<p>The model number of the wireless gateway.</p>") @as("Model") model: option<model>,
  @ocaml.doc("<p>The version of the wireless gateway firmware.</p>") @as("PackageVersion")
  packageVersion: option<packageVersion>,
}
@ocaml.doc("<p>LoRaWAN gateway metatdata.</p>")
type loRaWANGatewayMetadata = {
  @ocaml.doc("<p>The RSSI value.</p>") @as("Rssi") rssi: option<double>,
  @ocaml.doc("<p>The SNR value.</p>") @as("Snr") snr: option<double>,
  @ocaml.doc("<p>The gateway's EUI value.</p>") @as("GatewayEui") gatewayEui: option<gatewayEui>,
}
@ocaml.doc("<p>The LoRaWAN information returned from getting a FUOTA task.</p>")
type loRaWANFuotaTaskGetInfo = {
  @as("StartTime") startTime: option<startTime>,
  @as("RfRegion") rfRegion: option<rfRegion>,
}
@ocaml.doc("<p>The LoRaWAN information used with a FUOTA task.</p>")
type loRaWANFuotaTask = {@as("RfRegion") rfRegion: option<supportedRfRegion>}
@ocaml.doc(
  "<p>A pair of join EUI describing a range [BegEui, EndEui], both ends are inclusive.</p>"
)
type joinEuiRange = array<joinEui>
@ocaml.doc("<p>A FUOTA task.</p>")
type fuotaTask = {
  @as("Name") name: option<fuotaTaskName>,
  @as("Arn") arn: option<fuotaTaskArn>,
  @as("Id") id: option<fuotaTaskId>,
}
type factoryPresetFreqsList = array<presetFreq>
@ocaml.doc("<p>List of FPort assigned for different LoRaWAN application packages to use</p>")
type fports = {
  @as("ClockSync") clockSync: option<fport>,
  @as("Multicast") multicast: option<fport>,
  @as("Fuota") fuota: option<fport>,
}
@ocaml.doc("<p>Describes a device profile.</p>")
type deviceProfile = {
  @ocaml.doc("<p>The ID of the device profile.</p>") @as("Id") id: option<deviceProfileId>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<deviceProfileName>,
  @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
  arn: option<deviceProfileArn>,
}
@ocaml.doc("<p>Describes a destination.</p>")
type destinations = {
  @ocaml.doc("<p>The ARN of the IAM Role that authorizes the destination.</p>") @as("RoleArn")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The description of the resource.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The rule name or topic rule to send messages to.</p>") @as("Expression")
  expression: option<expression>,
  @ocaml.doc("<p>The type of value in <code>Expression</code>.</p>") @as("ExpressionType")
  expressionType: option<expressionType>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<destinationName>,
  @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
  arn: option<destinationArn>,
}
@ocaml.doc("<p>List of sidewalk certificates.</p>")
type certificateList = {
  @ocaml.doc("<p>The value of the chosen sidewalk certificate.</p>") @as("Value")
  value: certificateValue,
  @ocaml.doc("<p>The certificate chain algorithm provided by sidewalk.</p>") @as("SigningAlg")
  signingAlg: signingAlg,
}
@ocaml.doc("<p>WirelessMetadata object.</p>")
type wirelessMetadata = {
  @ocaml.doc("<p>The Sidewalk account credentials.</p>") @as("Sidewalk")
  sidewalk: option<sidewalkSendDataToDevice>,
  @ocaml.doc("<p>LoRaWAN device info.</p>") @as("LoRaWAN") loRaWAN: option<loRaWANSendDataToDevice>,
}
@ocaml.doc("<p>The list of wireless gateway event log options.</p>")
type wirelessGatewayEventLogOptionList = array<wirelessGatewayEventLogOption>
@ocaml.doc("<p>The list of wireless device event log options.</p>")
type wirelessDeviceEventLogOptionList = array<wirelessDeviceEventLogOption>
@ocaml.doc(
  "<p>The tag to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>"
)
type tagList_ = array<tag>
type sidewalkAccountList = array<sidewalkAccountInfoWithFingerprint>
type serviceProfileList = array<serviceProfile>
@ocaml.doc(
  "<p>Proximity event configuration object for enabling and disabling relevant topics.</p>"
)
type proximityEventConfiguration = {
  @ocaml.doc(
    "<p>Proximity event configuration object for enabling or disabling Sidewalk related event topics.</p>"
  )
  @as("Sidewalk")
  sidewalk: option<sidewalkEventNotificationConfigurations>,
}
@ocaml.doc("<p>Wireless metadata that is to be sent to multicast group.</p>")
type multicastWirelessMetadata = {@as("LoRaWAN") loRaWAN: option<loRaWANMulticastMetadata>}
@ocaml.doc("<p>List of multicast groups associated with a FUOTA task.</p>")
type multicastGroupListByFuotaTask = array<multicastGroupByFuotaTask>
@ocaml.doc("<p>List of multicast groups.</p>") type multicastGroupList = array<multicastGroup>
@ocaml.doc("<p>LoRaWANUpdateGatewayTaskEntry object.</p>")
type loRaWANUpdateGatewayTaskEntry = {
  @ocaml.doc("<p>The firmware version to update the gateway to.</p>") @as("UpdateVersion")
  updateVersion: option<loRaWANGatewayVersion>,
  @ocaml.doc("<p>The version of the gateways that should receive the update.</p>")
  @as("CurrentVersion")
  currentVersion: option<loRaWANGatewayVersion>,
}
@ocaml.doc("<p>LoRaWANUpdateGatewayTaskCreate object.</p>")
type loRaWANUpdateGatewayTaskCreate = {
  @ocaml.doc("<p>The firmware version to update the gateway to.</p>") @as("UpdateVersion")
  updateVersion: option<loRaWANGatewayVersion>,
  @ocaml.doc("<p>The version of the gateways that should receive the update.</p>")
  @as("CurrentVersion")
  currentVersion: option<loRaWANGatewayVersion>,
  @ocaml.doc("<p>The CRC of the signature private key to check.</p>") @as("SigKeyCrc")
  sigKeyCrc: option<crc>,
  @ocaml.doc("<p>The signature used to verify the update firmware.</p>") @as("UpdateSignature")
  updateSignature: option<updateSignature>,
}
type loRaWANGatewayMetadataList = array<loRaWANGatewayMetadata>
@ocaml.doc("<p>LoRaWANGatewayCurrentVersion object.</p>")
type loRaWANGatewayCurrentVersion = {
  @ocaml.doc("<p>The version of the gateways that should receive the update.</p>")
  @as("CurrentVersion")
  currentVersion: option<loRaWANGatewayVersion>,
}
@ocaml.doc("<p>LoRaWANDeviceProfile object.</p>")
type loRaWANDeviceProfile = {
  @ocaml.doc("<p>The Supports32BitFCnt value.</p>") @as("Supports32BitFCnt")
  supports32BitFCnt: option<supports32BitFCnt>,
  @ocaml.doc("<p>The SupportsJoin value.</p>") @as("SupportsJoin")
  supportsJoin: option<supportsJoin>,
  @ocaml.doc("<p>The frequency band (RFRegion) value.</p>") @as("RfRegion")
  rfRegion: option<rfRegion>,
  @ocaml.doc("<p>The MaxDutyCycle value.</p>") @as("MaxDutyCycle")
  maxDutyCycle: option<maxDutyCycle>,
  @ocaml.doc("<p>The MaxEIRP value.</p>") @as("MaxEirp") maxEirp: option<maxEirp>,
  @ocaml.doc("<p>The list of values that make up the FactoryPresetFreqs value.</p>")
  @as("FactoryPresetFreqsList")
  factoryPresetFreqsList: option<factoryPresetFreqsList>,
  @ocaml.doc("<p>The RXFreq2 value.</p>") @as("RxFreq2") rxFreq2: option<rxFreq2>,
  @ocaml.doc("<p>The RXDataRate2 value.</p>") @as("RxDataRate2") rxDataRate2: option<rxDataRate2>,
  @ocaml.doc("<p>The RXDROffset1 value.</p>") @as("RxDrOffset1") rxDrOffset1: option<rxDrOffset1>,
  @ocaml.doc("<p>The RXDelay1 value.</p>") @as("RxDelay1") rxDelay1: option<rxDelay1>,
  @ocaml.doc("<p>The version of regional parameters.</p>") @as("RegParamsRevision")
  regParamsRevision: option<regParamsRevision>,
  @ocaml.doc(
    "<p>The MAC version (such as OTAA 1.1 or OTAA 1.0.3) to use with this device profile.</p>"
  )
  @as("MacVersion")
  macVersion: option<macVersion>,
  @ocaml.doc("<p>The ClassCTimeout value.</p>") @as("ClassCTimeout")
  classCTimeout: option<classCTimeout>,
  @ocaml.doc("<p>The SupportsClassC value.</p>") @as("SupportsClassC")
  supportsClassC: option<supportsClassC>,
  @ocaml.doc("<p>The PingSlotFreq value.</p>") @as("PingSlotFreq")
  pingSlotFreq: option<pingSlotFreq>,
  @ocaml.doc("<p>The PingSlotDR value.</p>") @as("PingSlotDr") pingSlotDr: option<pingSlotDr>,
  @ocaml.doc("<p>The PingSlotPeriod value.</p>") @as("PingSlotPeriod")
  pingSlotPeriod: option<pingSlotPeriod>,
  @ocaml.doc("<p>The ClassBTimeout value.</p>") @as("ClassBTimeout")
  classBTimeout: option<classBTimeout>,
  @ocaml.doc("<p>The SupportsClassB value.</p>") @as("SupportsClassB")
  supportsClassB: option<supportsClassB>,
}
@ocaml.doc("<p>A list of JoinEuiRange used by LoRa gateways to filter LoRa frames.</p>")
type joinEuiFilters = array<joinEuiRange>
@ocaml.doc("<p>Lists the FUOTA tasks registered to your AWS account.</p>")
type fuotaTaskList = array<fuotaTask>
@ocaml.doc("<p>The message in downlink queue.</p>")
type downlinkQueueMessage = {
  @as("LoRaWAN") loRaWAN: option<loRaWANSendDataToDevice>,
  @ocaml.doc("<p>The timestamp that Iot Wireless received the message.</p>") @as("ReceivedAt")
  receivedAt: option<isodateTimeString>,
  @ocaml.doc(
    "<p>The transmit mode to use to send data to the wireless device. Can be: <code>0</code> for UM (unacknowledge mode) or <code>1</code> for AM (acknowledge mode).</p>"
  )
  @as("TransmitMode")
  transmitMode: option<transmitMode>,
  @ocaml.doc("<p> The messageId allocated by IoT Wireless for tracing purpose</p>") @as("MessageId")
  messageId: option<messageId>,
}
@ocaml.doc(
  "<p>Device registration state event configuration object for enabling and disabling relevant topics.</p>"
)
type deviceRegistrationStateEventConfiguration = {
  @ocaml.doc("<p>Device registration state event configuration object for enabling or disabling Sidewalk related event
            topics.</p>")
  @as("Sidewalk")
  sidewalk: option<sidewalkEventNotificationConfigurations>,
}
type deviceProfileList = array<deviceProfile>
@ocaml.doc("<p>List of device certificate chain.</p>")
type deviceCertificateList = array<certificateList>
type destinationList = array<destinations>
@ocaml.doc("<p>ABP device object for LoRaWAN specification v1.1</p>")
type abpV1_1 = {
  @ocaml.doc("<p>Session keys for ABP v1.1</p>") @as("SessionKeys")
  sessionKeys: option<sessionKeysAbpV1_1>,
  @ocaml.doc("<p>The DevAddr value.</p>") @as("DevAddr") devAddr: option<devAddr>,
}
@ocaml.doc("<p>ABP device object for LoRaWAN specification v1.0.x</p>")
type abpV1_0_x = {
  @ocaml.doc("<p>Session keys for ABP v1.0.x</p>") @as("SessionKeys")
  sessionKeys: option<sessionKeysAbpV1_0_x>,
  @ocaml.doc("<p>The DevAddr value.</p>") @as("DevAddr") devAddr: option<devAddr>,
}
@ocaml.doc(
  "<p>The log options for wireless gateways and can be used to set log levels for a specific type of wireless gateway.</p>"
)
type wirelessGatewayLogOption = {
  @as("Events") events: option<wirelessGatewayEventLogOptionList>,
  @as("LogLevel") logLevel: logLevel,
  @as("Type") type_: wirelessGatewayType,
}
@ocaml.doc(
  "<p>The log options for wireless devices and can be used to set log levels for a specific type of wireless device.</p>"
)
type wirelessDeviceLogOption = {
  @as("Events") events: option<wirelessDeviceEventLogOptionList>,
  @as("LogLevel") logLevel: logLevel,
  @ocaml.doc("<p>The wireless device type.</p>") @as("Type") type_: wirelessDeviceType,
}
@ocaml.doc("<p>UpdateWirelessGatewayTaskEntry object.</p>")
type updateWirelessGatewayTaskEntry = {
  @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
  arn: option<wirelessGatewayTaskDefinitionArn>,
  @ocaml.doc("<p>The properties that relate to the LoRaWAN wireless gateway.</p>") @as("LoRaWAN")
  loRaWAN: option<loRaWANUpdateGatewayTaskEntry>,
  @ocaml.doc("<p>The ID of the new wireless gateway task entry.</p>") @as("Id")
  id: option<wirelessGatewayTaskDefinitionId>,
}
@ocaml.doc("<p>UpdateWirelessGatewayTaskCreate object.</p>")
type updateWirelessGatewayTaskCreate = {
  @ocaml.doc("<p>The properties that relate to the LoRaWAN wireless gateway.</p>") @as("LoRaWAN")
  loRaWAN: option<loRaWANUpdateGatewayTaskCreate>,
  @ocaml.doc("<p>The IAM role used to read data from the S3 bucket.</p>") @as("UpdateDataRole")
  updateDataRole: option<updateDataSource>,
  @ocaml.doc("<p>The link to the S3 bucket.</p>") @as("UpdateDataSource")
  updateDataSource: option<updateDataSource>,
}
@ocaml.doc("<p>Sidewalk object used by list functions.</p>")
type sidewalkListDevice = {
  @ocaml.doc("<p>The sidewalk device certificates for Ed25519 and P256r1.</p>")
  @as("DeviceCertificates")
  deviceCertificates: option<deviceCertificateList>,
  @ocaml.doc("<p>The Sidewalk manufacturing series number.</p>") @as("SidewalkManufacturingSn")
  sidewalkManufacturingSn: option<sidewalkManufacturingSn>,
  @ocaml.doc("<p>The sidewalk device identification.</p>") @as("SidewalkId")
  sidewalkId: option<sidewalkId>,
  @ocaml.doc("<p>The Sidewalk Amazon ID.</p>") @as("AmazonId") amazonId: option<amazonId>,
}
@ocaml.doc("<p>Sidewalk device object.</p>")
type sidewalkDevice = {
  @ocaml.doc("<p>The sidewalk device certificates for Ed25519 and P256r1.</p>")
  @as("DeviceCertificates")
  deviceCertificates: option<deviceCertificateList>,
  @ocaml.doc("<p>The Sidewalk manufacturing series number.</p>") @as("SidewalkManufacturingSn")
  sidewalkManufacturingSn: option<sidewalkManufacturingSn>,
  @ocaml.doc("<p>The sidewalk device identification.</p>") @as("SidewalkId")
  sidewalkId: option<sidewalkId>,
  @as("AmazonId") amazonId: option<amazonId>,
}
@ocaml.doc("<p>LoRaWANGateway object.</p>")
type loRaWANGateway = {
  @as("SubBands") subBands: option<subBands>,
  @as("NetIdFilters") netIdFilters: option<netIdFilters>,
  @as("JoinEuiFilters") joinEuiFilters: option<joinEuiFilters>,
  @ocaml.doc("<p>The frequency band (RFRegion) value.</p>") @as("RfRegion")
  rfRegion: option<rfRegion>,
  @ocaml.doc("<p>The gateway's EUI value.</p>") @as("GatewayEui") gatewayEui: option<gatewayEui>,
}
@ocaml.doc("<p>LoRaWAN device metatdata.</p>")
type loRaWANDeviceMetadata = {
  @ocaml.doc("<p>Information about the gateways accessed by the device.</p>") @as("Gateways")
  gateways: option<loRaWANGatewayMetadataList>,
  @ocaml.doc("<p>The date and time of the metadata.</p>") @as("Timestamp")
  timestamp_: option<isodateTimeString>,
  @ocaml.doc("<p>The device's channel frequency in Hz.</p>") @as("Frequency")
  frequency: option<integer_>,
  @ocaml.doc("<p>The DataRate value.</p>") @as("DataRate") dataRate: option<integer_>,
  @ocaml.doc("<p>The FPort value.</p>") @as("FPort") fport: option<integer_>,
  @ocaml.doc("<p>The DevEUI value.</p>") @as("DevEui") devEui: option<devEui>,
}
@ocaml.doc("<p>LoRaWAN object for create functions.</p>")
type loRaWANDevice = {
  @as("FPorts") fports: option<fports>,
  @ocaml.doc("<p>LoRaWAN object for create APIs</p>") @as("AbpV1_0_x") abpV1_0_x: option<abpV1_0_x>,
  @ocaml.doc("<p>ABP device object for create APIs for v1.1</p>") @as("AbpV1_1")
  abpV1_1: option<abpV1_1>,
  @ocaml.doc("<p>OTAA device object for create APIs for v1.0.x</p>") @as("OtaaV1_0_x")
  otaaV1_0_x: option<otaaV1_0_x>,
  @ocaml.doc("<p>OTAA device object for v1.1 for create APIs</p>") @as("OtaaV1_1")
  otaaV1_1: option<otaaV1_1>,
  @ocaml.doc("<p>The ID of the service profile.</p>") @as("ServiceProfileId")
  serviceProfileId: option<serviceProfileId>,
  @ocaml.doc("<p>The ID of the device profile for the new wireless device.</p>")
  @as("DeviceProfileId")
  deviceProfileId: option<deviceProfileId>,
  @ocaml.doc("<p>The DevEUI value.</p>") @as("DevEui") devEui: option<devEui>,
}
type downlinkQueueMessagesList = array<downlinkQueueMessage>
type wirelessGatewayTaskDefinitionList = array<updateWirelessGatewayTaskEntry>
@ocaml.doc("<p>Information about a wireless gateway's operation.</p>")
type wirelessGatewayStatistics = {
  @ocaml.doc("<p>The date and time when the most recent uplink was received.</p>")
  @as("LastUplinkReceivedAt")
  lastUplinkReceivedAt: option<isodateTimeString>,
  @ocaml.doc("<p>LoRaWAN gateway info.</p>") @as("LoRaWAN") loRaWAN: option<loRaWANGateway>,
  @ocaml.doc("<p>The description of the resource.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<wirelessGatewayName>,
  @ocaml.doc("<p>The ID of the wireless gateway reporting the data.</p>") @as("Id")
  id: option<wirelessGatewayId>,
  @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
  arn: option<wirelessGatewayArn>,
}
@ocaml.doc("<p>The list of wireless gateway log options.</p>")
type wirelessGatewayLogOptionList = array<wirelessGatewayLogOption>
@ocaml.doc("<p>Information about a wireless device's operation.</p>")
type wirelessDeviceStatistics = {
  @as("McGroupId") mcGroupId: option<mcGroupId>,
  @ocaml.doc("<p>The status of the wireless device in the multicast group.</p>")
  @as("MulticastDeviceStatus")
  multicastDeviceStatus: option<multicastDeviceStatus>,
  @as("FuotaDeviceStatus") fuotaDeviceStatus: option<fuotaDeviceStatus>,
  @ocaml.doc("<p>The Sidewalk account credentials.</p>") @as("Sidewalk")
  sidewalk: option<sidewalkListDevice>,
  @ocaml.doc("<p>LoRaWAN device info.</p>") @as("LoRaWAN") loRaWAN: option<loRaWANListDevice>,
  @ocaml.doc("<p>The date and time when the most recent uplink was received.</p>")
  @as("LastUplinkReceivedAt")
  lastUplinkReceivedAt: option<isodateTimeString>,
  @ocaml.doc("<p>The name of the destination to which the device is assigned.</p>")
  @as("DestinationName")
  destinationName: option<destinationName>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<wirelessDeviceName>,
  @ocaml.doc("<p>The wireless device type.</p>") @as("Type") type_: option<wirelessDeviceType>,
  @ocaml.doc("<p>The ID of the wireless device reporting the data.</p>") @as("Id")
  id: option<wirelessDeviceId>,
  @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
  arn: option<wirelessDeviceArn>,
}
@ocaml.doc("<p>The list of wireless device log options.</p>")
type wirelessDeviceLogOptionList = array<wirelessDeviceLogOption>
type wirelessGatewayStatisticsList = array<wirelessGatewayStatistics>
type wirelessDeviceStatisticsList = array<wirelessDeviceStatistics>
@ocaml.doc("<p>AWS IoT Wireless provides bi-directional communication between internet-connected wireless
	        devices and the AWS Cloud. To onboard both LoRaWAN and Sidewalk devices to AWS IoT, use the 
	        IoT Wireless API. These wireless devices use the Low Power Wide Area Networking (LPWAN) 
	        communication protocol to communicate with AWS IoT.</p>
	        <p>Using the API, you can perform create, read, update, and delete operations for your wireless
	        devices, gateways, destinations, and profiles. After onboarding your devices, you 
	        can use the API operations to set log levels and monitor your devices with CloudWatch.</p>
	        <p>You can also use the API operations to create multicast groups and schedule a multicast session for
	        sending a downlink message to devices in the group. By using Firmware Updates Over-The-Air
	        (FUOTA) API operations, you can create a FUOTA task and schedule a session to update the firmware
	        of individual devices or an entire group of devices in a multicast group.</p>")
module UpdateDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the IAM Role that authorizes the destination.</p>") @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>A new description of the resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The new rule name or topic rule to send messages to.</p>") @as("Expression")
    expression: option<expression>,
    @ocaml.doc("<p>The type of value in <code>Expression</code>.</p>") @as("ExpressionType")
    expressionType: option<expressionType>,
    @ocaml.doc("<p>The new name of the resource.</p>") @as("Name") name: destinationName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateDestinationCommand"
  let make = (~name, ~roleArn=?, ~description=?, ~expression=?, ~expressionType=?, ()) =>
    new({
      roleArn: roleArn,
      description: description,
      expression: expression,
      expressionType: expressionType,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TestWirelessDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the wireless device to test.</p>") @as("Id") id: wirelessDeviceId,
  }
  type response = {
    @ocaml.doc("<p>The result returned by the test.</p>") @as("Result") result: option<result>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "TestWirelessDeviceCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetResourceLogLevel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>"
    )
    @as("ResourceType")
    resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ResetResourceLogLevelCommand"
  let make = (~resourceType, ~resourceIdentifier, ()) =>
    new({resourceType: resourceType, resourceIdentifier: resourceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetAllResourceLogLevels = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ResetAllResourceLogLevelsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutResourceLogLevel = {
  type t
  type request = {
    @as("LogLevel") logLevel: logLevel,
    @ocaml.doc(
      "<p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>"
    )
    @as("ResourceType")
    resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "PutResourceLogLevelCommand"
  let make = (~logLevel, ~resourceType, ~resourceIdentifier, ()) =>
    new({logLevel: logLevel, resourceType: resourceType, resourceIdentifier: resourceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetWirelessGatewayTask = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to get.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {
    @ocaml.doc("<p>The status of the request.</p>") @as("Status")
    status: option<wirelessGatewayTaskStatus>,
    @ocaml.doc("<p>The date and time when the task was created.</p>") @as("TaskCreatedAt")
    taskCreatedAt: option<isodateTimeString>,
    @ocaml.doc("<p>The date and time when the most recent uplink was received.</p>")
    @as("LastUplinkReceivedAt")
    lastUplinkReceivedAt: option<isodateTimeString>,
    @ocaml.doc("<p>The ID of the WirelessGatewayTask.</p>") @as("WirelessGatewayTaskDefinitionId")
    wirelessGatewayTaskDefinitionId: option<wirelessGatewayTaskDefinitionId>,
    @ocaml.doc("<p>The ID of the wireless gateway.</p>") @as("WirelessGatewayId")
    wirelessGatewayId: option<wirelessGatewayId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayTaskCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the wireless gateway for which to get the data.</p>")
    @as("WirelessGatewayId")
    wirelessGatewayId: wirelessGatewayId,
  }
  type response = {
    @ocaml.doc("<p>The connection status of the wireless gateway.</p>") @as("ConnectionStatus")
    connectionStatus: option<connectionStatus>,
    @ocaml.doc("<p>The date and time when the most recent uplink was received.</p>")
    @as("LastUplinkReceivedAt")
    lastUplinkReceivedAt: option<isodateTimeString>,
    @ocaml.doc("<p>The ID of the wireless gateway.</p>") @as("WirelessGatewayId")
    wirelessGatewayId: option<wirelessGatewayId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayStatisticsCommand"
  let make = (~wirelessGatewayId, ()) => new({wirelessGatewayId: wirelessGatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to get.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {
    @ocaml.doc(
      "<p>The ID of the certificate that is associated with the wireless gateway and used for the LoRaWANNetworkServer endpoint.</p>"
    )
    @as("LoRaWANNetworkServerCertificateId")
    loRaWANNetworkServerCertificateId: option<iotCertificateId>,
    @ocaml.doc("<p>The ID of the certificate associated with the wireless gateway.</p>")
    @as("IotCertificateId")
    iotCertificateId: option<iotCertificateId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayCertificateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceEndpoint = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The service type for which to get endpoint information about. Can be <code>CUPS</code> for the Configuration and Update Server endpoint, or <code>LNS</code> for the LoRaWAN Network Server endpoint.</p>"
    )
    @as("ServiceType")
    serviceType: option<wirelessGatewayServiceType>,
  }
  type response = {
    @ocaml.doc("<p>The Root CA of the server trust certificate.</p>") @as("ServerTrust")
    serverTrust: option<certificatePEM>,
    @ocaml.doc("<p>The service endpoint value.</p>") @as("ServiceEndpoint")
    serviceEndpoint: option<endPoint>,
    @ocaml.doc("<p>The endpoint's service type.</p>") @as("ServiceType")
    serviceType: option<wirelessGatewayServiceType>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetServiceEndpointCommand"
  let make = (~serviceType=?, ()) => new({serviceType: serviceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceLogLevel = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The type of the resource, which can be <code>WirelessDevice</code> or <code>WirelessGateway</code>.</p>"
    )
    @as("ResourceType")
    resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }
  type response = {@as("LogLevel") logLevel: option<logLevel>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetResourceLogLevelCommand"
  let make = (~resourceType, ~resourceIdentifier, ()) =>
    new({resourceType: resourceType, resourceIdentifier: resourceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the resource to get.</p>") @as("Name") name: destinationName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the IAM Role that authorizes the destination.</p>") @as("RoleArn")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The description of the resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The type of value in <code>Expression</code>.</p>") @as("ExpressionType")
    expressionType: option<expressionType>,
    @ocaml.doc("<p>The rule name or topic rule to send messages to.</p>") @as("Expression")
    expression: option<expression>,
    @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<destinationName>,
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<destinationArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "GetDestinationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateWirelessGatewayFromThing = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessGatewayFromThingCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateWirelessGatewayFromCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessGatewayFromCertificateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateWirelessDeviceFromThing = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessDeviceId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessDeviceFromThingCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateWirelessDeviceFromMulticastGroup = {
  type t
  type request = {
    @as("WirelessDeviceId") wirelessDeviceId: wirelessDeviceId,
    @as("Id") id: multicastGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessDeviceFromMulticastGroupCommand"
  let make = (~wirelessDeviceId, ~id, ()) => new({wirelessDeviceId: wirelessDeviceId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateWirelessDeviceFromFuotaTask = {
  type t
  type request = {
    @as("WirelessDeviceId") wirelessDeviceId: wirelessDeviceId,
    @as("Id") id: fuotaTaskId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessDeviceFromFuotaTaskCommand"
  let make = (~wirelessDeviceId, ~id, ()) => new({wirelessDeviceId: wirelessDeviceId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateMulticastGroupFromFuotaTask = {
  type t
  type request = {
    @as("MulticastGroupId") multicastGroupId: multicastGroupId,
    @as("Id") id: fuotaTaskId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateMulticastGroupFromFuotaTaskCommand"
  let make = (~multicastGroupId, ~id, ()) => new({multicastGroupId: multicastGroupId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateAwsAccountFromPartnerAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The partner type.</p>") @as("PartnerType") partnerType: partnerType,
    @ocaml.doc("<p>The partner account ID to disassociate from the AWS account.</p>")
    @as("PartnerAccountId")
    partnerAccountId: partnerAccountId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateAwsAccountFromPartnerAccountCommand"
  let make = (~partnerType, ~partnerAccountId, ()) =>
    new({partnerType: partnerType, partnerAccountId: partnerAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWirelessGatewayTaskDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to delete.</p>") @as("Id")
    id: wirelessGatewayTaskDefinitionId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessGatewayTaskDefinitionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWirelessGatewayTask = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to delete.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessGatewayTaskCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWirelessGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to delete.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessGatewayCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWirelessDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to delete.</p>") @as("Id") id: wirelessDeviceId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessDeviceCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteServiceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to delete.</p>") @as("Id") id: serviceProfileId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteServiceProfileCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteQueuedMessages = {
  type t
  type request = {
    @ocaml.doc("<p>The wireless device type, it is either Sidewalk or LoRaWAN. </p>")
    @as("WirelessDeviceType")
    wirelessDeviceType: option<wirelessDeviceType>,
    @ocaml.doc(
      "<p>if messageID==\"*\", the queue for a particular wireless deviceId will be purged, otherwise, the specific message with messageId will be deleted </p>"
    )
    @as("MessageId")
    messageId: messageId,
    @ocaml.doc("<p>Id of a given wireless device which messages will be deleted </p>") @as("Id")
    id: wirelessDeviceId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteQueuedMessagesCommand"
  let make = (~messageId, ~id, ~wirelessDeviceType=?, ()) =>
    new({wirelessDeviceType: wirelessDeviceType, messageId: messageId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMulticastGroup = {
  type t
  type request = {@as("Id") id: multicastGroupId}
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteMulticastGroupCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteFuotaTask = {
  type t
  type request = {@as("Id") id: fuotaTaskId}
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "DeleteFuotaTaskCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeviceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to delete.</p>") @as("Id") id: deviceProfileId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteDeviceProfileCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the resource to delete.</p>") @as("Name") name: destinationName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteDestinationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateWirelessGatewayTask = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the WirelessGatewayTaskDefinition.</p>")
    @as("WirelessGatewayTaskDefinitionId")
    wirelessGatewayTaskDefinitionId: wirelessGatewayTaskDefinitionId,
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {
    @ocaml.doc("<p>The status of the request.</p>") @as("Status")
    status: option<wirelessGatewayTaskStatus>,
    @ocaml.doc("<p>The ID of the WirelessGatewayTaskDefinition.</p>")
    @as("WirelessGatewayTaskDefinitionId")
    wirelessGatewayTaskDefinitionId: option<wirelessGatewayTaskDefinitionId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessGatewayTaskCommand"
  let make = (~wirelessGatewayTaskDefinitionId, ~id, ()) =>
    new({wirelessGatewayTaskDefinitionId: wirelessGatewayTaskDefinitionId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelMulticastGroupSession = {
  type t
  type request = {@as("Id") id: multicastGroupId}
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CancelMulticastGroupSessionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateWirelessGatewayWithThing = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the thing to associate with the wireless gateway.</p>")
    @as("ThingArn")
    thingArn: thingArn,
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessGatewayWithThingCommand"
  let make = (~thingArn, ~id, ()) => new({thingArn: thingArn, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateWirelessGatewayWithCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the certificate to associate with the wireless gateway.</p>")
    @as("IotCertificateId")
    iotCertificateId: iotCertificateId,
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the certificate associated with the wireless gateway.</p>")
    @as("IotCertificateId")
    iotCertificateId: option<iotCertificateId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessGatewayWithCertificateCommand"
  let make = (~iotCertificateId, ~id, ()) => new({iotCertificateId: iotCertificateId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateWirelessDeviceWithThing = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the thing to associate with the wireless device.</p>") @as("ThingArn")
    thingArn: thingArn,
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessDeviceId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessDeviceWithThingCommand"
  let make = (~thingArn, ~id, ()) => new({thingArn: thingArn, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateWirelessDeviceWithMulticastGroup = {
  type t
  type request = {
    @as("WirelessDeviceId") wirelessDeviceId: wirelessDeviceId,
    @as("Id") id: multicastGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessDeviceWithMulticastGroupCommand"
  let make = (~wirelessDeviceId, ~id, ()) => new({wirelessDeviceId: wirelessDeviceId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateWirelessDeviceWithFuotaTask = {
  type t
  type request = {
    @as("WirelessDeviceId") wirelessDeviceId: wirelessDeviceId,
    @as("Id") id: fuotaTaskId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessDeviceWithFuotaTaskCommand"
  let make = (~wirelessDeviceId, ~id, ()) => new({wirelessDeviceId: wirelessDeviceId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateMulticastGroupWithFuotaTask = {
  type t
  type request = {
    @as("MulticastGroupId") multicastGroupId: multicastGroupId,
    @as("Id") id: fuotaTaskId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateMulticastGroupWithFuotaTaskCommand"
  let make = (~multicastGroupId, ~id, ()) => new({multicastGroupId: multicastGroupId, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateWirelessDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The updated wireless device's configuration.</p>") @as("LoRaWAN")
    loRaWAN: option<loRaWANUpdateDevice>,
    @ocaml.doc("<p>A new description of the resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The new name of the resource.</p>") @as("Name") name: option<wirelessDeviceName>,
    @ocaml.doc("<p>The name of the new destination for the device.</p>") @as("DestinationName")
    destinationName: option<destinationName>,
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessDeviceId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateWirelessDeviceCommand"
  let make = (~id, ~loRaWAN=?, ~description=?, ~name=?, ~destinationName=?, ()) =>
    new({
      loRaWAN: loRaWAN,
      description: description,
      name: name,
      destinationName: destinationName,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdatePartnerAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The partner type.</p>") @as("PartnerType") partnerType: partnerType,
    @ocaml.doc("<p>The ID of the partner account to update.</p>") @as("PartnerAccountId")
    partnerAccountId: partnerAccountId,
    @ocaml.doc("<p>The Sidewalk account credentials.</p>") @as("Sidewalk")
    sidewalk: sidewalkUpdateAccount,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdatePartnerAccountCommand"
  let make = (~partnerType, ~partnerAccountId, ~sidewalk, ()) =>
    new({partnerType: partnerType, partnerAccountId: partnerAccountId, sidewalk: sidewalk})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateNetworkAnalyzerConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>WirelessGateways to remove from NetworkAnalyzerConfiguration.</p>")
    @as("WirelessGatewaysToRemove")
    wirelessGatewaysToRemove: option<wirelessGatewayList>,
    @ocaml.doc("<p>WirelessGateways to add into NetworkAnalyzerConfiguration.</p>")
    @as("WirelessGatewaysToAdd")
    wirelessGatewaysToAdd: option<wirelessGatewayList>,
    @ocaml.doc("<p>WirelessDevices to remove from NetworkAnalyzerConfiguration.</p>")
    @as("WirelessDevicesToRemove")
    wirelessDevicesToRemove: option<wirelessDeviceList>,
    @ocaml.doc("<p>WirelessDevices to add into NetworkAnalyzerConfiguration.</p>")
    @as("WirelessDevicesToAdd")
    wirelessDevicesToAdd: option<wirelessDeviceList>,
    @as("TraceContent") traceContent: option<traceContent>,
    @as("ConfigurationName") configurationName: networkAnalyzerConfigurationName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateNetworkAnalyzerConfigurationCommand"
  let make = (
    ~configurationName,
    ~wirelessGatewaysToRemove=?,
    ~wirelessGatewaysToAdd=?,
    ~wirelessDevicesToRemove=?,
    ~wirelessDevicesToAdd=?,
    ~traceContent=?,
    (),
  ) =>
    new({
      wirelessGatewaysToRemove: wirelessGatewaysToRemove,
      wirelessGatewaysToAdd: wirelessGatewaysToAdd,
      wirelessDevicesToRemove: wirelessDevicesToRemove,
      wirelessDevicesToAdd: wirelessDevicesToAdd,
      traceContent: traceContent,
      configurationName: configurationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateMulticastGroup = {
  type t
  type request = {
    @as("LoRaWAN") loRaWAN: option<loRaWANMulticast>,
    @as("Description") description: option<description>,
    @as("Name") name: option<multicastGroupName>,
    @as("Id") id: multicastGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateMulticastGroupCommand"
  let make = (~id, ~loRaWAN=?, ~description=?, ~name=?, ()) =>
    new({loRaWAN: loRaWAN, description: description, name: name, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateFuotaTask = {
  type t
  type request = {
    @as("FirmwareUpdateRole") firmwareUpdateRole: option<firmwareUpdateRole>,
    @as("FirmwareUpdateImage") firmwareUpdateImage: option<firmwareUpdateImage>,
    @as("LoRaWAN") loRaWAN: option<loRaWANFuotaTask>,
    @as("Description") description: option<description>,
    @as("Name") name: option<fuotaTaskName>,
    @as("Id") id: fuotaTaskId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "UpdateFuotaTaskCommand"
  let make = (
    ~id,
    ~firmwareUpdateRole=?,
    ~firmwareUpdateImage=?,
    ~loRaWAN=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      firmwareUpdateRole: firmwareUpdateRole,
      firmwareUpdateImage: firmwareUpdateImage,
      loRaWAN: loRaWAN,
      description: description,
      name: name,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of the tags to remove from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource to remove tags from.</p>") @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartMulticastGroupSession = {
  type t
  type request = {
    @as("LoRaWAN") loRaWAN: loRaWANMulticastSession,
    @as("Id") id: multicastGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "StartMulticastGroupSessionCommand"
  let make = (~loRaWAN, ~id, ()) => new({loRaWAN: loRaWAN, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartFuotaTask = {
  type t
  type request = {
    @as("LoRaWAN") loRaWAN: option<loRaWANStartFuotaTask>,
    @as("Id") id: fuotaTaskId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "StartFuotaTaskCommand"
  let make = (~id, ~loRaWAN=?, ()) => new({loRaWAN: loRaWAN, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetServiceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to get.</p>") @as("Id") id: serviceProfileId,
  }
  type response = {
    @ocaml.doc("<p>Information about the service profile.</p>") @as("LoRaWAN")
    loRaWAN: option<loRaWANGetServiceProfileInfo>,
    @ocaml.doc("<p>The ID of the service profile.</p>") @as("Id") id: option<serviceProfileId>,
    @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<serviceProfileName>,
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<serviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetServiceProfileCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPartnerAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The partner type.</p>") @as("PartnerType") partnerType: partnerType,
    @ocaml.doc("<p>The partner account ID to disassociate from the AWS account.</p>")
    @as("PartnerAccountId")
    partnerAccountId: partnerAccountId,
  }
  type response = {
    @ocaml.doc("<p>Whether the partner account is linked to the AWS account.</p>")
    @as("AccountLinked")
    accountLinked: option<accountLinked>,
    @ocaml.doc("<p>The Sidewalk account credentials.</p>") @as("Sidewalk")
    sidewalk: option<sidewalkAccountInfoWithFingerprint>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetPartnerAccountCommand"
  let make = (~partnerType, ~partnerAccountId, ()) =>
    new({partnerType: partnerType, partnerAccountId: partnerAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNetworkAnalyzerConfiguration = {
  type t
  type request = {@as("ConfigurationName") configurationName: networkAnalyzerConfigurationName}
  type response = {
    @ocaml.doc("<p>List of WirelessGateways in the NetworkAnalyzerConfiguration.</p>")
    @as("WirelessGateways")
    wirelessGateways: option<wirelessGatewayList>,
    @ocaml.doc("<p>List of WirelessDevices in the NetworkAnalyzerConfiguration.</p>")
    @as("WirelessDevices")
    wirelessDevices: option<wirelessDeviceList>,
    @as("TraceContent") traceContent: option<traceContent>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetNetworkAnalyzerConfigurationCommand"
  let make = (~configurationName, ()) => new({configurationName: configurationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMulticastGroupSession = {
  type t
  type request = {@as("Id") id: multicastGroupId}
  type response = {@as("LoRaWAN") loRaWAN: option<loRaWANMulticastSession>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetMulticastGroupSessionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMulticastGroup = {
  type t
  type request = {@as("Id") id: multicastGroupId}
  type response = {
    @as("CreatedAt") createdAt: option<createdAt>,
    @as("LoRaWAN") loRaWAN: option<loRaWANMulticastGet>,
    @as("Status") status: option<multicastGroupStatus>,
    @as("Description") description: option<description>,
    @as("Name") name: option<multicastGroupName>,
    @as("Id") id: option<multicastGroupId>,
    @as("Arn") arn: option<multicastGroupArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetMulticastGroupCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFuotaTask = {
  type t
  type request = {@as("Id") id: fuotaTaskId}
  type response = {
    @as("CreatedAt") createdAt: option<createdAt>,
    @as("FirmwareUpdateRole") firmwareUpdateRole: option<firmwareUpdateRole>,
    @as("FirmwareUpdateImage") firmwareUpdateImage: option<firmwareUpdateImage>,
    @as("LoRaWAN") loRaWAN: option<loRaWANFuotaTaskGetInfo>,
    @as("Description") description: option<description>,
    @as("Name") name: option<fuotaTaskName>,
    @as("Status") status: option<fuotaTaskStatus>,
    @as("Id") id: option<fuotaTaskId>,
    @as("Arn") arn: option<fuotaTaskArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "GetFuotaTaskCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWirelessGateway = {
  type t
  type request = {
    @as("NetIdFilters") netIdFilters: option<netIdFilters>,
    @as("JoinEuiFilters") joinEuiFilters: option<joinEuiFilters>,
    @ocaml.doc("<p>A new description of the resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The new name of the resource.</p>") @as("Name")
    name: option<wirelessGatewayName>,
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateWirelessGatewayCommand"
  let make = (~id, ~netIdFilters=?, ~joinEuiFilters=?, ~description=?, ~name=?, ()) =>
    new({
      netIdFilters: netIdFilters,
      joinEuiFilters: joinEuiFilters,
      description: description,
      name: name,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateResourceEventConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Event configuration for the Proximity event</p>") @as("Proximity")
    proximity: option<proximityEventConfiguration>,
    @ocaml.doc("<p>Event configuration for the device registration state event</p>")
    @as("DeviceRegistrationState")
    deviceRegistrationState: option<deviceRegistrationStateEventConfiguration>,
    @ocaml.doc("<p>Partner type of the resource if the identifier type is PartnerAccountId</p>")
    @as("PartnerType")
    partnerType: option<eventNotificationPartnerType>,
    @ocaml.doc(
      "<p>Identifier type of the particular resource identifier for event configuration.</p>"
    )
    @as("IdentifierType")
    identifierType: identifierType,
    @ocaml.doc("<p>Resource identifier to opt in for event messaging.</p>") @as("Identifier")
    identifier: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateResourceEventConfigurationCommand"
  let make = (
    ~identifierType,
    ~identifier,
    ~proximity=?,
    ~deviceRegistrationState=?,
    ~partnerType=?,
    (),
  ) =>
    new({
      proximity: proximity,
      deviceRegistrationState: deviceRegistrationState,
      partnerType: partnerType,
      identifierType: identifierType,
      identifier: identifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Adds to or modifies the tags of the given resource. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The ARN of the resource to add tags to.</p>") @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartBulkDisassociateWirelessDeviceFromMulticastGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("QueryString") queryString: option<queryString>,
    @as("Id") id: multicastGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "StartBulkDisassociateWirelessDeviceFromMulticastGroupCommand"
  let make = (~id, ~tags=?, ~queryString=?, ()) =>
    new({tags: tags, queryString: queryString, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartBulkAssociateWirelessDeviceWithMulticastGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("QueryString") queryString: option<queryString>,
    @as("Id") id: multicastGroupId,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "StartBulkAssociateWirelessDeviceWithMulticastGroupCommand"
  let make = (~id, ~tags=?, ~queryString=?, ()) =>
    new({tags: tags, queryString: queryString, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendDataToWirelessDevice = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata about the message request.</p>") @as("WirelessMetadata")
    wirelessMetadata: option<wirelessMetadata>,
    @as("PayloadData") payloadData: payloadData,
    @ocaml.doc(
      "<p>The transmit mode to use to send data to the wireless device. Can be: <code>0</code> for UM (unacknowledge mode) or <code>1</code> for AM (acknowledge mode).</p>"
    )
    @as("TransmitMode")
    transmitMode: transmitMode,
    @ocaml.doc("<p>The ID of the wireless device to receive the data.</p>") @as("Id")
    id: wirelessDeviceId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the message sent to the wireless device.</p>") @as("MessageId")
    messageId: option<messageId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "SendDataToWirelessDeviceCommand"
  let make = (~payloadData, ~transmitMode, ~id, ~wirelessMetadata=?, ()) =>
    new({
      wirelessMetadata: wirelessMetadata,
      payloadData: payloadData,
      transmitMode: transmitMode,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendDataToMulticastGroup = {
  type t
  type request = {
    @as("WirelessMetadata") wirelessMetadata: multicastWirelessMetadata,
    @as("PayloadData") payloadData: payloadData,
    @as("Id") id: multicastGroupId,
  }
  type response = {@as("MessageId") messageId: option<multicastGroupMessageId>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "SendDataToMulticastGroupCommand"
  let make = (~wirelessMetadata, ~payloadData, ~id, ()) =>
    new({wirelessMetadata: wirelessMetadata, payloadData: payloadData, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource for which you want to list tags.</p>") @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServiceProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The list of service profiles.</p>") @as("ServiceProfileList")
    serviceProfileList: option<serviceProfileList>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListServiceProfilesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPartnerAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The Sidewalk account credentials.</p>") @as("Sidewalk")
    sidewalk: option<sidewalkAccountList>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListPartnerAccountsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMulticastGroupsByFuotaTask = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @as("Id") id: fuotaTaskId,
  }
  type response = {
    @as("MulticastGroupList") multicastGroupList: option<multicastGroupListByFuotaTask>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListMulticastGroupsByFuotaTaskCommand"
  let make = (~id, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMulticastGroups = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @as("MulticastGroupList") multicastGroupList: option<multicastGroupList>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListMulticastGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFuotaTasks = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @as("FuotaTaskList") fuotaTaskList: option<fuotaTaskList>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "ListFuotaTasksCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The list of device profiles.</p>") @as("DeviceProfileList")
    deviceProfileList: option<deviceProfileList>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListDeviceProfilesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDestinations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The list of destinations.</p>") @as("DestinationList")
    destinationList: option<destinationList>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "ListDestinationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayFirmwareInformation = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to get.</p>") @as("Id") id: wirelessGatewayId,
  }
  type response = {
    @ocaml.doc("<p>Information about the wireless gateway's firmware.</p>") @as("LoRaWAN")
    loRaWAN: option<loRaWANGatewayCurrentVersion>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayFirmwareInformationCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceEventConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Partner type of the resource if the identifier type is PartnerAccountId.</p>")
    @as("PartnerType")
    partnerType: option<eventNotificationPartnerType>,
    @ocaml.doc(
      "<p>Identifier type of the particular resource identifier for event configuration.</p>"
    )
    @as("IdentifierType")
    identifierType: identifierType,
    @ocaml.doc("<p>Resource identifier to opt in for event messaging.</p>") @as("Identifier")
    identifier: identifier,
  }
  type response = {
    @ocaml.doc("<p>Event configuration for the Proximity event</p>") @as("Proximity")
    proximity: option<proximityEventConfiguration>,
    @ocaml.doc("<p>Event configuration for the device registration state event</p>")
    @as("DeviceRegistrationState")
    deviceRegistrationState: option<deviceRegistrationStateEventConfiguration>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetResourceEventConfigurationCommand"
  let make = (~identifierType, ~identifier, ~partnerType=?, ()) =>
    new({partnerType: partnerType, identifierType: identifierType, identifier: identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeviceProfile = {
  type t
  type request = {@ocaml.doc("<p>The ID of the resource to get.</p>") @as("Id") id: deviceProfileId}
  type response = {
    @ocaml.doc("<p>Information about the device profile.</p>") @as("LoRaWAN")
    loRaWAN: option<loRaWANDeviceProfile>,
    @ocaml.doc("<p>The ID of the device profile.</p>") @as("Id") id: option<deviceProfileId>,
    @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<deviceProfileName>,
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<deviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "GetDeviceProfileCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateServiceProfile = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>The tags to attach to the new service profile. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The service profile information to use to create the service profile.</p>")
    @as("LoRaWAN")
    loRaWAN: option<loRaWANServiceProfile>,
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name") name: option<serviceProfileName>,
  }
  type response = {
    @ocaml.doc("<p>The ID of the new service profile.</p>") @as("Id") id: option<serviceProfileId>,
    @ocaml.doc("<p>The Amazon Resource Name of the new resource.</p>") @as("Arn")
    arn: option<serviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateServiceProfileCommand"
  let make = (~clientRequestToken=?, ~tags=?, ~loRaWAN=?, ~name=?, ()) =>
    new({clientRequestToken: clientRequestToken, tags: tags, loRaWAN: loRaWAN, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMulticastGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("LoRaWAN") loRaWAN: loRaWANMulticast,
    @ocaml.doc("<p>Each resource must have a unique client request token. If you try to create a new resource with the
            same token as a resource that already exists, an exception occurs. If you omit this value,
            AWS SDKs will automatically generate a unique client request. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The description of the multicast group.</p>") @as("Description")
    description: option<description>,
    @as("Name") name: option<multicastGroupName>,
  }
  type response = {
    @as("Id") id: option<multicastGroupId>,
    @as("Arn") arn: option<multicastGroupArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateMulticastGroupCommand"
  let make = (~loRaWAN, ~tags=?, ~clientRequestToken=?, ~description=?, ~name=?, ()) =>
    new({
      tags: tags,
      loRaWAN: loRaWAN,
      clientRequestToken: clientRequestToken,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFuotaTask = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("FirmwareUpdateRole") firmwareUpdateRole: firmwareUpdateRole,
    @as("FirmwareUpdateImage") firmwareUpdateImage: firmwareUpdateImage,
    @as("LoRaWAN") loRaWAN: option<loRaWANFuotaTask>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Description") description: option<description>,
    @as("Name") name: option<fuotaTaskName>,
  }
  type response = {
    @as("Id") id: option<fuotaTaskId>,
    @as("Arn") arn: option<fuotaTaskArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "CreateFuotaTaskCommand"
  let make = (
    ~firmwareUpdateRole,
    ~firmwareUpdateImage,
    ~tags=?,
    ~loRaWAN=?,
    ~clientRequestToken=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      tags: tags,
      firmwareUpdateRole: firmwareUpdateRole,
      firmwareUpdateImage: firmwareUpdateImage,
      loRaWAN: loRaWAN,
      clientRequestToken: clientRequestToken,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeviceProfile = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>The tags to attach to the new device profile. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The device profile information to use to create the device profile.</p>")
    @as("LoRaWAN")
    loRaWAN: option<loRaWANDeviceProfile>,
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name") name: option<deviceProfileName>,
  }
  type response = {
    @ocaml.doc("<p>The ID of the new device profile.</p>") @as("Id") id: option<deviceProfileId>,
    @ocaml.doc("<p>The Amazon Resource Name of the new resource.</p>") @as("Arn")
    arn: option<deviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateDeviceProfileCommand"
  let make = (~clientRequestToken=?, ~tags=?, ~loRaWAN=?, ~name=?, ()) =>
    new({clientRequestToken: clientRequestToken, tags: tags, loRaWAN: loRaWAN, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDestination = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>The tags to attach to the new destination. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ARN of the IAM Role that authorizes the destination.</p>") @as("RoleArn")
    roleArn: roleArn,
    @ocaml.doc("<p>The description of the new resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The rule name or topic rule to send messages to.</p>") @as("Expression")
    expression: expression,
    @ocaml.doc("<p>The type of value in <code>Expression</code>.</p>") @as("ExpressionType")
    expressionType: expressionType,
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name") name: destinationName,
  }
  type response = {
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name") name: option<destinationName>,
    @ocaml.doc("<p>The Amazon Resource Name of the new resource.</p>") @as("Arn")
    arn: option<destinationArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateDestinationCommand"
  let make = (
    ~roleArn,
    ~expression,
    ~expressionType,
    ~name,
    ~clientRequestToken=?,
    ~tags=?,
    ~description=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      tags: tags,
      roleArn: roleArn,
      description: description,
      expression: expression,
      expressionType: expressionType,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateAwsAccountWithPartnerAccount = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The Sidewalk account credentials.</p>") @as("Sidewalk")
    sidewalk: sidewalkAccountInfo,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<partnerAccountArn>,
    @ocaml.doc("<p>The Sidewalk account credentials.</p>") @as("Sidewalk")
    sidewalk: option<sidewalkAccountInfo>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateAwsAccountWithPartnerAccountCommand"
  let make = (~sidewalk, ~tags=?, ~clientRequestToken=?, ()) =>
    new({tags: tags, clientRequestToken: clientRequestToken, sidewalk: sidewalk})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListQueuedMessages = {
  type t
  type request = {
    @ocaml.doc("<p>The wireless device type, it is either Sidewalk or LoRaWAN.</p>")
    @as("WirelessDeviceType")
    wirelessDeviceType: option<wirelessDeviceType>,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Id of a given wireless device which the downlink packets are targeted </p>")
    @as("Id")
    id: wirelessDeviceId,
  }
  type response = {
    @ocaml.doc("<p>The messages in downlink queue.</p>") @as("DownlinkQueueMessagesList")
    downlinkQueueMessagesList: option<downlinkQueueMessagesList>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListQueuedMessagesCommand"
  let make = (~id, ~wirelessDeviceType=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      wirelessDeviceType: wirelessDeviceType,
      maxResults: maxResults,
      nextToken: nextToken,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayTaskDefinition = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to get.</p>") @as("Id")
    id: wirelessGatewayTaskDefinitionId,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<wirelessGatewayTaskDefinitionArn>,
    @ocaml.doc("<p>Information about the gateways to update.</p>") @as("Update")
    update: option<updateWirelessGatewayTaskCreate>,
    @ocaml.doc("<p>The name of the resource.</p>") @as("Name")
    name: option<wirelessGatewayTaskName>,
    @ocaml.doc(
      "<p>Whether to automatically create tasks using this task definition for all gateways with the specified current version. If <code>false</code>, the task must me created by calling <code>CreateWirelessGatewayTask</code>.</p>"
    )
    @as("AutoCreateTasks")
    autoCreateTasks: option<autoCreateTasks>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayTaskDefinitionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The type of identifier used in <code>identifier</code>.</p>")
    @as("IdentifierType")
    identifierType: wirelessGatewayIdType,
    @ocaml.doc("<p>The identifier of the wireless gateway to get.</p>") @as("Identifier")
    identifier: identifier,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the thing associated with the wireless gateway.</p>") @as("ThingArn")
    thingArn: option<thingArn>,
    @ocaml.doc(
      "<p>The name of the thing associated with the wireless gateway. The value is empty if a thing isn't associated with the gateway.</p>"
    )
    @as("ThingName")
    thingName: option<thingName>,
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<wirelessGatewayArn>,
    @ocaml.doc("<p>Information about the wireless gateway.</p>") @as("LoRaWAN")
    loRaWAN: option<loRaWANGateway>,
    @ocaml.doc("<p>The description of the resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The ID of the wireless gateway.</p>") @as("Id") id: option<wirelessGatewayId>,
    @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<wirelessGatewayName>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayCommand"
  let make = (~identifierType, ~identifier, ()) =>
    new({identifierType: identifierType, identifier: identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessDeviceStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the wireless device for which to get the data.</p>")
    @as("WirelessDeviceId")
    wirelessDeviceId: wirelessDeviceId,
  }
  type response = {
    @ocaml.doc("<p>MetaData for Sidewalk device.</p>") @as("Sidewalk")
    sidewalk: option<sidewalkDeviceMetadata>,
    @ocaml.doc("<p>Information about the wireless device's operations.</p>") @as("LoRaWAN")
    loRaWAN: option<loRaWANDeviceMetadata>,
    @ocaml.doc("<p>The date and time when the most recent uplink was received.</p>")
    @as("LastUplinkReceivedAt")
    lastUplinkReceivedAt: option<isodateTimeString>,
    @ocaml.doc("<p>The ID of the wireless device.</p>") @as("WirelessDeviceId")
    wirelessDeviceId: option<wirelessDeviceId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessDeviceStatisticsCommand"
  let make = (~wirelessDeviceId, ()) => new({wirelessDeviceId: wirelessDeviceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The type of identifier used in <code>identifier</code>.</p>")
    @as("IdentifierType")
    identifierType: wirelessDeviceIdType,
    @ocaml.doc("<p>The identifier of the wireless device to get.</p>") @as("Identifier")
    identifier: identifier,
  }
  type response = {
    @ocaml.doc("<p>Sidewalk device object.</p>") @as("Sidewalk") sidewalk: option<sidewalkDevice>,
    @ocaml.doc("<p>Information about the wireless device.</p>") @as("LoRaWAN")
    loRaWAN: option<loRaWANDevice>,
    @ocaml.doc("<p>The ARN of the thing associated with the wireless device.</p>") @as("ThingArn")
    thingArn: option<thingArn>,
    @ocaml.doc(
      "<p>The name of the thing associated with the wireless device. The value is empty if a thing isn't associated with the device.</p>"
    )
    @as("ThingName")
    thingName: option<thingName>,
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<wirelessDeviceArn>,
    @ocaml.doc("<p>The ID of the wireless device.</p>") @as("Id") id: option<wirelessDeviceId>,
    @ocaml.doc("<p>The name of the destination to which the device is assigned.</p>")
    @as("DestinationName")
    destinationName: option<destinationName>,
    @ocaml.doc("<p>The description of the resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<wirelessDeviceName>,
    @ocaml.doc("<p>The wireless device type.</p>") @as("Type") type_: option<wirelessDeviceType>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessDeviceCommand"
  let make = (~identifierType, ~identifier, ()) =>
    new({identifierType: identifierType, identifier: identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWirelessGatewayTaskDefinition = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags to attach to the specified resource. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Information about the gateways to update.</p>") @as("Update")
    update: option<updateWirelessGatewayTaskCreate>,
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name")
    name: option<wirelessGatewayTaskName>,
    @ocaml.doc(
      "<p>Whether to automatically create tasks using this task definition for all gateways with the specified current version. If <code>false</code>, the task must me created by calling <code>CreateWirelessGatewayTask</code>.</p>"
    )
    @as("AutoCreateTasks")
    autoCreateTasks: autoCreateTasks,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name of the resource.</p>") @as("Arn")
    arn: option<wirelessGatewayTaskDefinitionArn>,
    @ocaml.doc("<p>The ID of the new wireless gateway task definition.</p>") @as("Id")
    id: option<wirelessGatewayTaskDefinitionId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessGatewayTaskDefinitionCommand"
  let make = (~autoCreateTasks, ~tags=?, ~clientRequestToken=?, ~update=?, ~name=?, ()) =>
    new({
      tags: tags,
      clientRequestToken: clientRequestToken,
      update: update,
      name: name,
      autoCreateTasks: autoCreateTasks,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWirelessGateway = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc(
      "<p>The tags to attach to the new wireless gateway. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The gateway configuration information to use to create the wireless gateway.</p>"
    )
    @as("LoRaWAN")
    loRaWAN: loRaWANGateway,
    @ocaml.doc("<p>The description of the new resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name")
    name: option<wirelessGatewayName>,
  }
  type response = {
    @ocaml.doc("<p>The ID of the new wireless gateway.</p>") @as("Id") id: option<wirelessDeviceId>,
    @ocaml.doc("<p>The Amazon Resource Name of the new resource.</p>") @as("Arn")
    arn: option<wirelessGatewayArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessGatewayCommand"
  let make = (~loRaWAN, ~clientRequestToken=?, ~tags=?, ~description=?, ~name=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      tags: tags,
      loRaWAN: loRaWAN,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWirelessDevice = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags to attach to the new wireless device. Tags are metadata that you can use to manage a resource.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The device configuration information to use to create the wireless device.</p>")
    @as("LoRaWAN")
    loRaWAN: option<loRaWANDevice>,
    @ocaml.doc(
      "<p>Each resource must have a unique client request token. If you try to create a new resource with the same token as a resource that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>"
    )
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The name of the destination to assign to the new wireless device.</p>")
    @as("DestinationName")
    destinationName: destinationName,
    @ocaml.doc("<p>The description of the new resource.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the new resource.</p>") @as("Name") name: option<wirelessDeviceName>,
    @ocaml.doc("<p>The wireless device type.</p>") @as("Type") type_: wirelessDeviceType,
  }
  type response = {
    @ocaml.doc("<p>The ID of the new wireless device.</p>") @as("Id") id: option<wirelessDeviceId>,
    @ocaml.doc("<p>The Amazon Resource Name of the new resource.</p>") @as("Arn")
    arn: option<wirelessDeviceArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessDeviceCommand"
  let make = (
    ~destinationName,
    ~type_,
    ~tags=?,
    ~loRaWAN=?,
    ~clientRequestToken=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      tags: tags,
      loRaWAN: loRaWAN,
      clientRequestToken: clientRequestToken,
      destinationName: destinationName,
      description: description,
      name: name,
      type_: type_,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLogLevelsByResourceTypes = {
  type t
  type request = {
    @as("WirelessGatewayLogOptions")
    wirelessGatewayLogOptions: option<wirelessGatewayLogOptionList>,
    @as("WirelessDeviceLogOptions") wirelessDeviceLogOptions: option<wirelessDeviceLogOptionList>,
    @as("DefaultLogLevel") defaultLogLevel: option<logLevel>,
  }
  type response = {.}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateLogLevelsByResourceTypesCommand"
  let make = (~wirelessGatewayLogOptions=?, ~wirelessDeviceLogOptions=?, ~defaultLogLevel=?, ()) =>
    new({
      wirelessGatewayLogOptions: wirelessGatewayLogOptions,
      wirelessDeviceLogOptions: wirelessDeviceLogOptions,
      defaultLogLevel: defaultLogLevel,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListWirelessGatewayTaskDefinitions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A filter to list only the wireless gateway task definitions that use this task definition type.</p>"
    )
    @as("TaskDefinitionType")
    taskDefinitionType: option<wirelessGatewayTaskDefinitionType>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The list of task definitions.</p>") @as("TaskDefinitions")
    taskDefinitions: option<wirelessGatewayTaskDefinitionList>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListWirelessGatewayTaskDefinitionsCommand"
  let make = (~taskDefinitionType=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({taskDefinitionType: taskDefinitionType, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogLevelsByResourceTypes = {
  type t
  type request = {.}
  type response = {
    @as("WirelessDeviceLogOptions") wirelessDeviceLogOptions: option<wirelessDeviceLogOptionList>,
    @as("WirelessGatewayLogOptions")
    wirelessGatewayLogOptions: option<wirelessGatewayLogOptionList>,
    @as("DefaultLogLevel") defaultLogLevel: option<logLevel>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetLogLevelsByResourceTypesCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWirelessGateways = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The ID of the wireless gateway.</p>") @as("WirelessGatewayList")
    wirelessGatewayList: option<wirelessGatewayStatisticsList>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListWirelessGatewaysCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWirelessDevices = {
  type t
  type request = {
    @as("MulticastGroupId") multicastGroupId: option<multicastGroupId>,
    @as("FuotaTaskId") fuotaTaskId: option<fuotaTaskId>,
    @ocaml.doc(
      "<p>A filter to list only the wireless devices that use this wireless device type.</p>"
    )
    @as("WirelessDeviceType")
    wirelessDeviceType: option<wirelessDeviceType>,
    @ocaml.doc("<p>A filter to list only the wireless devices that use this service profile.</p>")
    @as("ServiceProfileId")
    serviceProfileId: option<serviceProfileId>,
    @ocaml.doc("<p>A filter to list only the wireless devices that use this device profile.</p>")
    @as("DeviceProfileId")
    deviceProfileId: option<deviceProfileId>,
    @ocaml.doc("<p>A filter to list only the wireless devices that use this destination.</p>")
    @as("DestinationName")
    destinationName: option<destinationName>,
    @ocaml.doc(
      "<p>To retrieve the next set of results, the <code>nextToken</code> value from a previous response; otherwise <b>null</b> to receive the first set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The ID of the wireless device.</p>") @as("WirelessDeviceList")
    wirelessDeviceList: option<wirelessDeviceStatisticsList>,
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListWirelessDevicesCommand"
  let make = (
    ~multicastGroupId=?,
    ~fuotaTaskId=?,
    ~wirelessDeviceType=?,
    ~serviceProfileId=?,
    ~deviceProfileId=?,
    ~destinationName=?,
    ~nextToken=?,
    ~maxResults=?,
    (),
  ) =>
    new({
      multicastGroupId: multicastGroupId,
      fuotaTaskId: fuotaTaskId,
      wirelessDeviceType: wirelessDeviceType,
      serviceProfileId: serviceProfileId,
      deviceProfileId: deviceProfileId,
      destinationName: destinationName,
      nextToken: nextToken,
      maxResults: maxResults,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
