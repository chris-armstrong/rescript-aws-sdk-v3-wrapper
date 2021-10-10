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
  | @as("ThingName") #ThingName
  | @as("DevEui") #DevEui
  | @as("WirelessDeviceId") #WirelessDeviceId
]
type wirelessDeviceId = string
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
@ocaml.doc("<p>A subset of supported frequency channels in a certain RFRegion.</p>")
type subBand = int
type station = string
@ocaml.doc("<p>The certificate chain algorithm provided by sidewalk.</p>")
type signingAlg = [@as("P256r1") #P256r1 | @as("Ed25519") #Ed25519]
type sidewalkManufacturingSn = string
@ocaml.doc("<p>The sidewalk device identification.</p>") type sidewalkId = string
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
type rfRegion = string
type result = string
type resourceType = string
@ocaml.doc(
  "<p>The identifier of the resource. For a Wireless Device, it is the wireless device id. For a wireless gateway, it is the wireless gateway id.</p>"
)
type resourceIdentifier = string
type resourceId = string
type reportDevStatusMargin = bool
type reportDevStatusBattery = bool
type regParamsRevision = string
type raAllowed = bool
type presetFreq = int
type prAllowed = bool
type pingSlotPeriod = int
type pingSlotFreq = int
type pingSlotDr = int
type payloadData = string
type partnerType = [@as("Sidewalk") #Sidewalk]
type partnerAccountId = string
type partnerAccountArn = string
type packageVersion = string
type nwkSKey = string
type nwkSEncKey = string
type nwkKey = string
type nwkGeoLoc = bool
type nextToken = string
@ocaml.doc("<p>LoRaWAN network ID.</p>") type netId = string
type model = string
type minGwDiversity = int
@ocaml.doc("<p>Sidewalk device message type.</p>")
type messageType = [
  | @as("CUSTOM_COMMAND_ID_RESP") #CUSTOM_COMMAND_ID_RESP
  | @as("CUSTOM_COMMAND_ID_SET") #CUSTOM_COMMAND_ID_SET
  | @as("CUSTOM_COMMAND_ID_GET") #CUSTOM_COMMAND_ID_GET
  | @as("CUSTOM_COMMAND_ID_NOTIFY") #CUSTOM_COMMAND_ID_NOTIFY
]
type messageId = string
type message = string
type maxResults = int
type maxEirp = int
type maxDutyCycle = int
type macVersion = string
@ocaml.doc("<p>The log level for a log message.</p>")
type logLevel = [@as("DISABLED") #DISABLED | @as("ERROR") #ERROR | @as("INFO") #INFO]
type joinEui = string
type iotCertificateId = string
type integer_ = int
type identifier = string
type isodateTimeString = string
type hrAllowed = bool
type gatewayEui = string
type fingerprint = string
type fport = int
type fnwkSIntKey = string
type expressionType = [@as("MqttTopic") #MqttTopic | @as("RuleName") #RuleName]
type expression = string
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
type description = string
type crc = float
type connectionStatus = [@as("Disconnected") #Disconnected | @as("Connected") #Connected]
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
type amazonId = string
type addGwMetadata = bool
type accountLinked = bool
@ocaml.doc(
  "<p>The log option for a wireless gateway event. Can be used to set log level for a specific wireless gateway event. For a LoRaWAN gateway, the possible events for a log message are: CUPS_Request, Certificate.</p>"
)
type wirelessGatewayEventLogOption = {
  @as("LogLevel") logLevel: logLevel,
  @as("Event") event: wirelessGatewayEvent,
}
@ocaml.doc(
  "<p>The log option for a wireless device event. Can be used to set log level for a specific wireless device event. For a LoRaWAN device, the possible events for a log messsage are: Join, Rejoin, Downlink_Data, Uplink_Data. For a Sidewalk device, the possible events for a log message are: Registration, Downlink_Data, Uplink_Data.</p>"
)
type wirelessDeviceEventLogOption = {
  @as("LogLevel") logLevel: logLevel,
  @as("Event") event: wirelessDeviceEvent,
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
  @ocaml.doc("<p>The AppEUI value.</p>") @as("AppEui") appEui: option<appEui>,
  @ocaml.doc("<p>The AppKey value.</p>") @as("AppKey") appKey: option<appKey>,
}
@ocaml.doc(
  "<p>A list of NetId values that are used by LoRa gateways to filter the uplink frames.</p>"
)
type netIdFilters = array<netId>
@ocaml.doc("<p>LoRaWAN object for update functions.</p>")
type loRaWANUpdateDevice = {
  @ocaml.doc("<p>The ID of the service profile.</p>") @as("ServiceProfileId")
  serviceProfileId: option<serviceProfileId>,
  @ocaml.doc("<p>The ID of the device profile for the wireless device.</p>") @as("DeviceProfileId")
  deviceProfileId: option<deviceProfileId>,
}
@ocaml.doc("<p>LoRaWANServiceProfile object.</p>")
type loRaWANServiceProfile = {
  @ocaml.doc("<p>The AddGWMetaData value.</p>") @as("AddGwMetadata")
  addGwMetadata: option<addGwMetadata>,
}
@ocaml.doc("<p>LoRaWAN router info.</p>")
type loRaWANSendDataToDevice = {
  @ocaml.doc("<p>The Fport value.</p>") @as("FPort") fport: option<fport>,
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
@ocaml.doc(
  "<p>A pair of join EUI describing a range [BegEui, EndEui], both ends are inclusive.</p>"
)
type joinEuiRange = array<joinEui>
type factoryPresetFreqsList = array<presetFreq>
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
type tagList_ = array<tag>
type sidewalkAccountList = array<sidewalkAccountInfoWithFingerprint>
type serviceProfileList = array<serviceProfile>
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
  "<p>The log option for wireless gateways. Can be used to set log level for a specific type of wireless gateway.</p>"
)
type wirelessGatewayLogOption = {
  @as("Events") events: option<wirelessGatewayEventLogOptionList>,
  @as("LogLevel") logLevel: logLevel,
  @as("Type") type_: wirelessGatewayType,
}
@ocaml.doc(
  "<p>The log option for wireless devices. Can be used to set log level for a specific type of wireless device.</p>"
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
@ocaml.doc("<p>AWS IoT Wireless API documentation</p>")
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
      "<p>The type of the resource, currently support WirelessDevice and WirelessGateway.</p>"
    )
    @as("ResourceType")
    resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }

  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ResetResourceLogLevelCommand"
  let make = (~resourceType, ~resourceIdentifier, ()) =>
    new({resourceType: resourceType, resourceIdentifier: resourceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ResetAllResourceLogLevels = {
  type t

  @module("@aws-sdk/client-iotwireless") @new
  external new: unit => t = "ResetAllResourceLogLevelsCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutResourceLogLevel = {
  type t
  type request = {
    @as("LogLevel") logLevel: logLevel,
    @ocaml.doc(
      "<p>The type of the resource, currently support WirelessDevice and WirelessGateway.</p>"
    )
    @as("ResourceType")
    resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }

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
      "<p>The type of the resource, currently support WirelessDevice and WirelessGateway.</p>"
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

  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessDeviceFromThingCommand"
  let make = (~id, ()) => new({id: id})
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

  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteServiceProfileCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeviceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource to delete.</p>") @as("Id") id: deviceProfileId,
  }

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

module AssociateWirelessGatewayWithThing = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the thing to associate with the wireless gateway.</p>")
    @as("ThingArn")
    thingArn: thingArn,
    @ocaml.doc("<p>The ID of the resource to update.</p>") @as("Id") id: wirelessGatewayId,
  }

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

  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessDeviceWithThingCommand"
  let make = (~thingArn, ~id, ()) => new({thingArn: thingArn, id: id})
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

  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdatePartnerAccountCommand"
  let make = (~partnerType, ~partnerAccountId, ~sidewalk, ()) =>
    new({partnerType: partnerType, partnerAccountId: partnerAccountId, sidewalk: sidewalk})
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

  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
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

  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SendDataToWirelessDevice = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata about the message request.</p>") @as("WirelessMetadata")
    wirelessMetadata: option<wirelessMetadata>,
    @ocaml.doc("<p>The message payload to send.</p>") @as("PayloadData") payloadData: payloadData,
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

  type response = {
    @as("WirelessDeviceLogOptions") wirelessDeviceLogOptions: option<wirelessDeviceLogOptionList>,
    @as("WirelessGatewayLogOptions")
    wirelessGatewayLogOptions: option<wirelessGatewayLogOptionList>,
    @as("DefaultLogLevel") defaultLogLevel: option<logLevel>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: unit => t = "GetLogLevelsByResourceTypesCommand"
  let make = () => new()
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
    ~wirelessDeviceType=?,
    ~serviceProfileId=?,
    ~deviceProfileId=?,
    ~destinationName=?,
    ~nextToken=?,
    ~maxResults=?,
    (),
  ) =>
    new({
      wirelessDeviceType: wirelessDeviceType,
      serviceProfileId: serviceProfileId,
      deviceProfileId: deviceProfileId,
      destinationName: destinationName,
      nextToken: nextToken,
      maxResults: maxResults,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
