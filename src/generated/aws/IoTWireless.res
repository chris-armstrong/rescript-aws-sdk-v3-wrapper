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
type wirelessGatewayType = [@as("LoRaWAN") #LoRaWAN]
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
type subBand = int
type station = string
type signingAlg = [@as("P256r1") #P256r1 | @as("Ed25519") #Ed25519]
type sidewalkManufacturingSn = string
type sidewalkId = string
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
type netId = string
type model = string
type minGwDiversity = int
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
type certificateValue = string
type certificatePEM = string
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
type wirelessGatewayEventLogOption = {
  @as("LogLevel") logLevel: logLevel,
  @as("Event") event: wirelessGatewayEvent,
}
type wirelessDeviceEventLogOption = {
  @as("LogLevel") logLevel: logLevel,
  @as("Event") event: wirelessDeviceEvent,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type subBands = array<subBand>
type sidewalkUpdateAccount = {
  @as("AppServerPrivateKey") appServerPrivateKey: option<appServerPrivateKey>,
}
type sidewalkSendDataToDevice = {
  @as("MessageType") messageType: option<messageType>,
  @as("Seq") seq: option<seq>,
}
type sidewalkDeviceMetadata = {
  @as("DeviceState") deviceState: option<deviceState>,
  @as("Event") event: option<event>,
  @as("BatteryLevel") batteryLevel: option<batteryLevel>,
  @as("Rssi") rssi: option<integer_>,
}
type sidewalkAccountInfoWithFingerprint = {
  @as("Arn") arn: option<partnerAccountArn>,
  @as("Fingerprint") fingerprint: option<fingerprint>,
  @as("AmazonId") amazonId: option<amazonId>,
}
type sidewalkAccountInfo = {
  @as("AppServerPrivateKey") appServerPrivateKey: option<appServerPrivateKey>,
  @as("AmazonId") amazonId: option<amazonId>,
}
type sessionKeysAbpV1_1 = {
  @as("AppSKey") appSKey: option<appSKey>,
  @as("NwkSEncKey") nwkSEncKey: option<nwkSEncKey>,
  @as("SNwkSIntKey") snwkSIntKey: option<snwkSIntKey>,
  @as("FNwkSIntKey") fnwkSIntKey: option<fnwkSIntKey>,
}
type sessionKeysAbpV1_0_x = {
  @as("AppSKey") appSKey: option<appSKey>,
  @as("NwkSKey") nwkSKey: option<nwkSKey>,
}
type serviceProfile = {
  @as("Id") id: option<serviceProfileId>,
  @as("Name") name: option<serviceProfileName>,
  @as("Arn") arn: option<serviceProfileArn>,
}
type otaaV1_1 = {
  @as("JoinEui") joinEui: option<joinEui>,
  @as("NwkKey") nwkKey: option<nwkKey>,
  @as("AppKey") appKey: option<appKey>,
}
type otaaV1_0_x = {
  @as("AppEui") appEui: option<appEui>,
  @as("AppKey") appKey: option<appKey>,
}
type netIdFilters = array<netId>
type loRaWANUpdateDevice = {
  @as("ServiceProfileId") serviceProfileId: option<serviceProfileId>,
  @as("DeviceProfileId") deviceProfileId: option<deviceProfileId>,
}
type loRaWANServiceProfile = {@as("AddGwMetadata") addGwMetadata: option<addGwMetadata>}
type loRaWANSendDataToDevice = {@as("FPort") fport: option<fport>}
type loRaWANListDevice = {@as("DevEui") devEui: option<devEui>}
type loRaWANGetServiceProfileInfo = {
  @as("MinGwDiversity") minGwDiversity: option<minGwDiversity>,
  @as("TargetPer") targetPer: option<targetPer>,
  @as("NwkGeoLoc") nwkGeoLoc: option<nwkGeoLoc>,
  @as("RaAllowed") raAllowed: option<raAllowed>,
  @as("HrAllowed") hrAllowed: option<hrAllowed>,
  @as("PrAllowed") prAllowed: option<prAllowed>,
  @as("ChannelMask") channelMask: option<channelMask>,
  @as("DrMax") drMax: option<drMax>,
  @as("DrMin") drMin: option<drMin>,
  @as("ReportDevStatusMargin") reportDevStatusMargin: option<reportDevStatusMargin>,
  @as("ReportDevStatusBattery") reportDevStatusBattery: option<reportDevStatusBattery>,
  @as("DevStatusReqFreq") devStatusReqFreq: option<devStatusReqFreq>,
  @as("AddGwMetadata") addGwMetadata: option<addGwMetadata>,
  @as("DlRatePolicy") dlRatePolicy: option<dlRatePolicy>,
  @as("DlBucketSize") dlBucketSize: option<dlBucketSize>,
  @as("DlRate") dlRate: option<dlRate>,
  @as("UlRatePolicy") ulRatePolicy: option<ulRatePolicy>,
  @as("UlBucketSize") ulBucketSize: option<ulBucketSize>,
  @as("UlRate") ulRate: option<ulRate>,
}
type loRaWANGatewayVersion = {
  @as("Station") station: option<station>,
  @as("Model") model: option<model>,
  @as("PackageVersion") packageVersion: option<packageVersion>,
}
type loRaWANGatewayMetadata = {
  @as("Rssi") rssi: option<double>,
  @as("Snr") snr: option<double>,
  @as("GatewayEui") gatewayEui: option<gatewayEui>,
}
type joinEuiRange = array<joinEui>
type factoryPresetFreqsList = array<presetFreq>
type deviceProfile = {
  @as("Id") id: option<deviceProfileId>,
  @as("Name") name: option<deviceProfileName>,
  @as("Arn") arn: option<deviceProfileArn>,
}
type destinations = {
  @as("RoleArn") roleArn: option<roleArn>,
  @as("Description") description: option<description>,
  @as("Expression") expression: option<expression>,
  @as("ExpressionType") expressionType: option<expressionType>,
  @as("Name") name: option<destinationName>,
  @as("Arn") arn: option<destinationArn>,
}
type certificateList = {
  @as("Value") value: certificateValue,
  @as("SigningAlg") signingAlg: signingAlg,
}
type wirelessMetadata = {
  @as("Sidewalk") sidewalk: option<sidewalkSendDataToDevice>,
  @as("LoRaWAN") loRaWAN: option<loRaWANSendDataToDevice>,
}
type wirelessGatewayEventLogOptionList = array<wirelessGatewayEventLogOption>
type wirelessDeviceEventLogOptionList = array<wirelessDeviceEventLogOption>
type tagList_ = array<tag>
type sidewalkAccountList = array<sidewalkAccountInfoWithFingerprint>
type serviceProfileList = array<serviceProfile>
type loRaWANUpdateGatewayTaskEntry = {
  @as("UpdateVersion") updateVersion: option<loRaWANGatewayVersion>,
  @as("CurrentVersion") currentVersion: option<loRaWANGatewayVersion>,
}
type loRaWANUpdateGatewayTaskCreate = {
  @as("UpdateVersion") updateVersion: option<loRaWANGatewayVersion>,
  @as("CurrentVersion") currentVersion: option<loRaWANGatewayVersion>,
  @as("SigKeyCrc") sigKeyCrc: option<crc>,
  @as("UpdateSignature") updateSignature: option<updateSignature>,
}
type loRaWANGatewayMetadataList = array<loRaWANGatewayMetadata>
type loRaWANGatewayCurrentVersion = {
  @as("CurrentVersion") currentVersion: option<loRaWANGatewayVersion>,
}
type loRaWANDeviceProfile = {
  @as("Supports32BitFCnt") supports32BitFCnt: option<supports32BitFCnt>,
  @as("SupportsJoin") supportsJoin: option<supportsJoin>,
  @as("RfRegion") rfRegion: option<rfRegion>,
  @as("MaxDutyCycle") maxDutyCycle: option<maxDutyCycle>,
  @as("MaxEirp") maxEirp: option<maxEirp>,
  @as("FactoryPresetFreqsList") factoryPresetFreqsList: option<factoryPresetFreqsList>,
  @as("RxFreq2") rxFreq2: option<rxFreq2>,
  @as("RxDataRate2") rxDataRate2: option<rxDataRate2>,
  @as("RxDrOffset1") rxDrOffset1: option<rxDrOffset1>,
  @as("RxDelay1") rxDelay1: option<rxDelay1>,
  @as("RegParamsRevision") regParamsRevision: option<regParamsRevision>,
  @as("MacVersion") macVersion: option<macVersion>,
  @as("ClassCTimeout") classCTimeout: option<classCTimeout>,
  @as("SupportsClassC") supportsClassC: option<supportsClassC>,
  @as("PingSlotFreq") pingSlotFreq: option<pingSlotFreq>,
  @as("PingSlotDr") pingSlotDr: option<pingSlotDr>,
  @as("PingSlotPeriod") pingSlotPeriod: option<pingSlotPeriod>,
  @as("ClassBTimeout") classBTimeout: option<classBTimeout>,
  @as("SupportsClassB") supportsClassB: option<supportsClassB>,
}
type joinEuiFilters = array<joinEuiRange>
type deviceProfileList = array<deviceProfile>
type deviceCertificateList = array<certificateList>
type destinationList = array<destinations>
type abpV1_1 = {
  @as("SessionKeys") sessionKeys: option<sessionKeysAbpV1_1>,
  @as("DevAddr") devAddr: option<devAddr>,
}
type abpV1_0_x = {
  @as("SessionKeys") sessionKeys: option<sessionKeysAbpV1_0_x>,
  @as("DevAddr") devAddr: option<devAddr>,
}
type wirelessGatewayLogOption = {
  @as("Events") events: option<wirelessGatewayEventLogOptionList>,
  @as("LogLevel") logLevel: logLevel,
  @as("Type") type_: wirelessGatewayType,
}
type wirelessDeviceLogOption = {
  @as("Events") events: option<wirelessDeviceEventLogOptionList>,
  @as("LogLevel") logLevel: logLevel,
  @as("Type") type_: wirelessDeviceType,
}
type updateWirelessGatewayTaskEntry = {
  @as("Arn") arn: option<wirelessGatewayTaskDefinitionArn>,
  @as("LoRaWAN") loRaWAN: option<loRaWANUpdateGatewayTaskEntry>,
  @as("Id") id: option<wirelessGatewayTaskDefinitionId>,
}
type updateWirelessGatewayTaskCreate = {
  @as("LoRaWAN") loRaWAN: option<loRaWANUpdateGatewayTaskCreate>,
  @as("UpdateDataRole") updateDataRole: option<updateDataSource>,
  @as("UpdateDataSource") updateDataSource: option<updateDataSource>,
}
type sidewalkListDevice = {
  @as("DeviceCertificates") deviceCertificates: option<deviceCertificateList>,
  @as("SidewalkManufacturingSn") sidewalkManufacturingSn: option<sidewalkManufacturingSn>,
  @as("SidewalkId") sidewalkId: option<sidewalkId>,
  @as("AmazonId") amazonId: option<amazonId>,
}
type sidewalkDevice = {
  @as("DeviceCertificates") deviceCertificates: option<deviceCertificateList>,
  @as("SidewalkManufacturingSn") sidewalkManufacturingSn: option<sidewalkManufacturingSn>,
  @as("SidewalkId") sidewalkId: option<sidewalkId>,
}
type loRaWANGateway = {
  @as("SubBands") subBands: option<subBands>,
  @as("NetIdFilters") netIdFilters: option<netIdFilters>,
  @as("JoinEuiFilters") joinEuiFilters: option<joinEuiFilters>,
  @as("RfRegion") rfRegion: option<rfRegion>,
  @as("GatewayEui") gatewayEui: option<gatewayEui>,
}
type loRaWANDeviceMetadata = {
  @as("Gateways") gateways: option<loRaWANGatewayMetadataList>,
  @as("Timestamp") timestamp_: option<isodateTimeString>,
  @as("Frequency") frequency: option<integer_>,
  @as("DataRate") dataRate: option<integer_>,
  @as("FPort") fport: option<integer_>,
  @as("DevEui") devEui: option<devEui>,
}
type loRaWANDevice = {
  @as("AbpV1_0_x") abpV1_0_x: option<abpV1_0_x>,
  @as("AbpV1_1") abpV1_1: option<abpV1_1>,
  @as("OtaaV1_0_x") otaaV1_0_x: option<otaaV1_0_x>,
  @as("OtaaV1_1") otaaV1_1: option<otaaV1_1>,
  @as("ServiceProfileId") serviceProfileId: option<serviceProfileId>,
  @as("DeviceProfileId") deviceProfileId: option<deviceProfileId>,
  @as("DevEui") devEui: option<devEui>,
}
type wirelessGatewayTaskDefinitionList = array<updateWirelessGatewayTaskEntry>
type wirelessGatewayStatistics = {
  @as("LastUplinkReceivedAt") lastUplinkReceivedAt: option<isodateTimeString>,
  @as("LoRaWAN") loRaWAN: option<loRaWANGateway>,
  @as("Description") description: option<description>,
  @as("Name") name: option<wirelessGatewayName>,
  @as("Id") id: option<wirelessGatewayId>,
  @as("Arn") arn: option<wirelessGatewayArn>,
}
type wirelessGatewayLogOptionList = array<wirelessGatewayLogOption>
type wirelessDeviceStatistics = {
  @as("Sidewalk") sidewalk: option<sidewalkListDevice>,
  @as("LoRaWAN") loRaWAN: option<loRaWANListDevice>,
  @as("LastUplinkReceivedAt") lastUplinkReceivedAt: option<isodateTimeString>,
  @as("DestinationName") destinationName: option<destinationName>,
  @as("Name") name: option<wirelessDeviceName>,
  @as("Type") type_: option<wirelessDeviceType>,
  @as("Id") id: option<wirelessDeviceId>,
  @as("Arn") arn: option<wirelessDeviceArn>,
}
type wirelessDeviceLogOptionList = array<wirelessDeviceLogOption>
type wirelessGatewayStatisticsList = array<wirelessGatewayStatistics>
type wirelessDeviceStatisticsList = array<wirelessDeviceStatistics>

module UpdateDestination = {
  type t
  type request = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Description") description: option<description>,
    @as("Expression") expression: option<expression>,
    @as("ExpressionType") expressionType: option<expressionType>,
    @as("Name") name: destinationName,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestWirelessDevice = {
  type t
  type request = {@as("Id") id: wirelessDeviceId}
  type response = {@as("Result") result: option<result>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "TestWirelessDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetResourceLogLevel = {
  type t
  type request = {
    @as("ResourceType") resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ResetResourceLogLevelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetAllResourceLogLevels = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ResetAllResourceLogLevelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourceLogLevel = {
  type t
  type request = {
    @as("LogLevel") logLevel: logLevel,
    @as("ResourceType") resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "PutResourceLogLevelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayTask = {
  type t
  type request = {@as("Id") id: wirelessGatewayId}
  type response = {
    @as("Status") status: option<wirelessGatewayTaskStatus>,
    @as("TaskCreatedAt") taskCreatedAt: option<isodateTimeString>,
    @as("LastUplinkReceivedAt") lastUplinkReceivedAt: option<isodateTimeString>,
    @as("WirelessGatewayTaskDefinitionId")
    wirelessGatewayTaskDefinitionId: option<wirelessGatewayTaskDefinitionId>,
    @as("WirelessGatewayId") wirelessGatewayId: option<wirelessGatewayId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayStatistics = {
  type t
  type request = {@as("WirelessGatewayId") wirelessGatewayId: wirelessGatewayId}
  type response = {
    @as("ConnectionStatus") connectionStatus: option<connectionStatus>,
    @as("LastUplinkReceivedAt") lastUplinkReceivedAt: option<isodateTimeString>,
    @as("WirelessGatewayId") wirelessGatewayId: option<wirelessGatewayId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayStatisticsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayCertificate = {
  type t
  type request = {@as("Id") id: wirelessGatewayId}
  type response = {
    @as("LoRaWANNetworkServerCertificateId")
    loRaWANNetworkServerCertificateId: option<iotCertificateId>,
    @as("IotCertificateId") iotCertificateId: option<iotCertificateId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceEndpoint = {
  type t
  type request = {@as("ServiceType") serviceType: option<wirelessGatewayServiceType>}
  type response = {
    @as("ServerTrust") serverTrust: option<certificatePEM>,
    @as("ServiceEndpoint") serviceEndpoint: option<endPoint>,
    @as("ServiceType") serviceType: option<wirelessGatewayServiceType>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetServiceEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourceLogLevel = {
  type t
  type request = {
    @as("ResourceType") resourceType: resourceType,
    @as("ResourceIdentifier") resourceIdentifier: resourceIdentifier,
  }
  type response = {@as("LogLevel") logLevel: option<logLevel>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetResourceLogLevelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDestination = {
  type t
  type request = {@as("Name") name: destinationName}
  type response = {
    @as("RoleArn") roleArn: option<roleArn>,
    @as("Description") description: option<description>,
    @as("ExpressionType") expressionType: option<expressionType>,
    @as("Expression") expression: option<expression>,
    @as("Name") name: option<destinationName>,
    @as("Arn") arn: option<destinationArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "GetDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateWirelessGatewayFromThing = {
  type t
  type request = {@as("Id") id: wirelessGatewayId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessGatewayFromThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateWirelessGatewayFromCertificate = {
  type t
  type request = {@as("Id") id: wirelessGatewayId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessGatewayFromCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateWirelessDeviceFromThing = {
  type t
  type request = {@as("Id") id: wirelessDeviceId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateWirelessDeviceFromThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateAwsAccountFromPartnerAccount = {
  type t
  type request = {
    @as("PartnerType") partnerType: partnerType,
    @as("PartnerAccountId") partnerAccountId: partnerAccountId,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DisassociateAwsAccountFromPartnerAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWirelessGatewayTaskDefinition = {
  type t
  type request = {@as("Id") id: wirelessGatewayTaskDefinitionId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessGatewayTaskDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWirelessGatewayTask = {
  type t
  type request = {@as("Id") id: wirelessGatewayId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessGatewayTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWirelessGateway = {
  type t
  type request = {@as("Id") id: wirelessGatewayId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWirelessDevice = {
  type t
  type request = {@as("Id") id: wirelessDeviceId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteWirelessDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteServiceProfile = {
  type t
  type request = {@as("Id") id: serviceProfileId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteServiceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDeviceProfile = {
  type t
  type request = {@as("Id") id: deviceProfileId}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteDeviceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDestination = {
  type t
  type request = {@as("Name") name: destinationName}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "DeleteDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWirelessGatewayTask = {
  type t
  type request = {
    @as("WirelessGatewayTaskDefinitionId")
    wirelessGatewayTaskDefinitionId: wirelessGatewayTaskDefinitionId,
    @as("Id") id: wirelessGatewayId,
  }
  type response = {
    @as("Status") status: option<wirelessGatewayTaskStatus>,
    @as("WirelessGatewayTaskDefinitionId")
    wirelessGatewayTaskDefinitionId: option<wirelessGatewayTaskDefinitionId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessGatewayTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateWirelessGatewayWithThing = {
  type t
  type request = {
    @as("ThingArn") thingArn: thingArn,
    @as("Id") id: wirelessGatewayId,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessGatewayWithThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateWirelessGatewayWithCertificate = {
  type t
  type request = {
    @as("IotCertificateId") iotCertificateId: iotCertificateId,
    @as("Id") id: wirelessGatewayId,
  }
  type response = {@as("IotCertificateId") iotCertificateId: option<iotCertificateId>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessGatewayWithCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateWirelessDeviceWithThing = {
  type t
  type request = {
    @as("ThingArn") thingArn: thingArn,
    @as("Id") id: wirelessDeviceId,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateWirelessDeviceWithThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWirelessDevice = {
  type t
  type request = {
    @as("LoRaWAN") loRaWAN: option<loRaWANUpdateDevice>,
    @as("Description") description: option<description>,
    @as("Name") name: option<wirelessDeviceName>,
    @as("DestinationName") destinationName: option<destinationName>,
    @as("Id") id: wirelessDeviceId,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateWirelessDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePartnerAccount = {
  type t
  type request = {
    @as("PartnerType") partnerType: partnerType,
    @as("PartnerAccountId") partnerAccountId: partnerAccountId,
    @as("Sidewalk") sidewalk: sidewalkUpdateAccount,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdatePartnerAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServiceProfile = {
  type t
  type request = {@as("Id") id: serviceProfileId}
  type response = {
    @as("LoRaWAN") loRaWAN: option<loRaWANGetServiceProfileInfo>,
    @as("Id") id: option<serviceProfileId>,
    @as("Name") name: option<serviceProfileName>,
    @as("Arn") arn: option<serviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetServiceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPartnerAccount = {
  type t
  type request = {
    @as("PartnerType") partnerType: partnerType,
    @as("PartnerAccountId") partnerAccountId: partnerAccountId,
  }
  type response = {
    @as("AccountLinked") accountLinked: option<accountLinked>,
    @as("Sidewalk") sidewalk: option<sidewalkAccountInfoWithFingerprint>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetPartnerAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWirelessGateway = {
  type t
  type request = {
    @as("NetIdFilters") netIdFilters: option<netIdFilters>,
    @as("JoinEuiFilters") joinEuiFilters: option<joinEuiFilters>,
    @as("Description") description: option<description>,
    @as("Name") name: option<wirelessGatewayName>,
    @as("Id") id: wirelessGatewayId,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateWirelessGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendDataToWirelessDevice = {
  type t
  type request = {
    @as("WirelessMetadata") wirelessMetadata: option<wirelessMetadata>,
    @as("PayloadData") payloadData: payloadData,
    @as("TransmitMode") transmitMode: transmitMode,
    @as("Id") id: wirelessDeviceId,
  }
  type response = {@as("MessageId") messageId: option<messageId>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "SendDataToWirelessDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: amazonResourceName}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServiceProfiles = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("ServiceProfileList") serviceProfileList: option<serviceProfileList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListServiceProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPartnerAccounts = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("Sidewalk") sidewalk: option<sidewalkAccountList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListPartnerAccountsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceProfiles = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("DeviceProfileList") deviceProfileList: option<deviceProfileList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListDeviceProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDestinations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("DestinationList") destinationList: option<destinationList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "ListDestinationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayFirmwareInformation = {
  type t
  type request = {@as("Id") id: wirelessGatewayId}
  type response = {@as("LoRaWAN") loRaWAN: option<loRaWANGatewayCurrentVersion>}
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayFirmwareInformationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeviceProfile = {
  type t
  type request = {@as("Id") id: deviceProfileId}
  type response = {
    @as("LoRaWAN") loRaWAN: option<loRaWANDeviceProfile>,
    @as("Id") id: option<deviceProfileId>,
    @as("Name") name: option<deviceProfileName>,
    @as("Arn") arn: option<deviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new external new: request => t = "GetDeviceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateServiceProfile = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Tags") tags: option<tagList_>,
    @as("LoRaWAN") loRaWAN: option<loRaWANServiceProfile>,
    @as("Name") name: option<serviceProfileName>,
  }
  type response = {
    @as("Id") id: option<serviceProfileId>,
    @as("Arn") arn: option<serviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateServiceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDeviceProfile = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Tags") tags: option<tagList_>,
    @as("LoRaWAN") loRaWAN: option<loRaWANDeviceProfile>,
    @as("Name") name: option<deviceProfileName>,
  }
  type response = {
    @as("Id") id: option<deviceProfileId>,
    @as("Arn") arn: option<deviceProfileArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateDeviceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDestination = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Tags") tags: option<tagList_>,
    @as("RoleArn") roleArn: roleArn,
    @as("Description") description: option<description>,
    @as("Expression") expression: expression,
    @as("ExpressionType") expressionType: expressionType,
    @as("Name") name: destinationName,
  }
  type response = {
    @as("Name") name: option<destinationName>,
    @as("Arn") arn: option<destinationArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateAwsAccountWithPartnerAccount = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Sidewalk") sidewalk: sidewalkAccountInfo,
  }
  type response = {
    @as("Arn") arn: option<partnerAccountArn>,
    @as("Sidewalk") sidewalk: option<sidewalkAccountInfo>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "AssociateAwsAccountWithPartnerAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGatewayTaskDefinition = {
  type t
  type request = {@as("Id") id: wirelessGatewayTaskDefinitionId}
  type response = {
    @as("Arn") arn: option<wirelessGatewayTaskDefinitionArn>,
    @as("Update") update: option<updateWirelessGatewayTaskCreate>,
    @as("Name") name: option<wirelessGatewayTaskName>,
    @as("AutoCreateTasks") autoCreateTasks: option<autoCreateTasks>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayTaskDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessGateway = {
  type t
  type request = {
    @as("IdentifierType") identifierType: wirelessGatewayIdType,
    @as("Identifier") identifier: identifier,
  }
  type response = {
    @as("ThingArn") thingArn: option<thingArn>,
    @as("ThingName") thingName: option<thingName>,
    @as("Arn") arn: option<wirelessGatewayArn>,
    @as("LoRaWAN") loRaWAN: option<loRaWANGateway>,
    @as("Description") description: option<description>,
    @as("Id") id: option<wirelessGatewayId>,
    @as("Name") name: option<wirelessGatewayName>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessDeviceStatistics = {
  type t
  type request = {@as("WirelessDeviceId") wirelessDeviceId: wirelessDeviceId}
  type response = {
    @as("Sidewalk") sidewalk: option<sidewalkDeviceMetadata>,
    @as("LoRaWAN") loRaWAN: option<loRaWANDeviceMetadata>,
    @as("LastUplinkReceivedAt") lastUplinkReceivedAt: option<isodateTimeString>,
    @as("WirelessDeviceId") wirelessDeviceId: option<wirelessDeviceId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessDeviceStatisticsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWirelessDevice = {
  type t
  type request = {
    @as("IdentifierType") identifierType: wirelessDeviceIdType,
    @as("Identifier") identifier: identifier,
  }
  type response = {
    @as("Sidewalk") sidewalk: option<sidewalkDevice>,
    @as("LoRaWAN") loRaWAN: option<loRaWANDevice>,
    @as("ThingArn") thingArn: option<thingArn>,
    @as("ThingName") thingName: option<thingName>,
    @as("Arn") arn: option<wirelessDeviceArn>,
    @as("Id") id: option<wirelessDeviceId>,
    @as("DestinationName") destinationName: option<destinationName>,
    @as("Description") description: option<description>,
    @as("Name") name: option<wirelessDeviceName>,
    @as("Type") type_: option<wirelessDeviceType>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetWirelessDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWirelessGatewayTaskDefinition = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Update") update: option<updateWirelessGatewayTaskCreate>,
    @as("Name") name: option<wirelessGatewayTaskName>,
    @as("AutoCreateTasks") autoCreateTasks: autoCreateTasks,
  }
  type response = {
    @as("Arn") arn: option<wirelessGatewayTaskDefinitionArn>,
    @as("Id") id: option<wirelessGatewayTaskDefinitionId>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessGatewayTaskDefinitionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWirelessGateway = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("Tags") tags: option<tagList_>,
    @as("LoRaWAN") loRaWAN: loRaWANGateway,
    @as("Description") description: option<description>,
    @as("Name") name: option<wirelessGatewayName>,
  }
  type response = {
    @as("Id") id: option<wirelessDeviceId>,
    @as("Arn") arn: option<wirelessGatewayArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWirelessDevice = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("LoRaWAN") loRaWAN: option<loRaWANDevice>,
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("DestinationName") destinationName: destinationName,
    @as("Description") description: option<description>,
    @as("Name") name: option<wirelessDeviceName>,
    @as("Type") type_: wirelessDeviceType,
  }
  type response = {
    @as("Id") id: option<wirelessDeviceId>,
    @as("Arn") arn: option<wirelessDeviceArn>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "CreateWirelessDeviceCommand"
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
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "UpdateLogLevelsByResourceTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWirelessGatewayTaskDefinitions = {
  type t
  type request = {
    @as("TaskDefinitionType") taskDefinitionType: option<wirelessGatewayTaskDefinitionType>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("TaskDefinitions") taskDefinitions: option<wirelessGatewayTaskDefinitionList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListWirelessGatewayTaskDefinitionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLogLevelsByResourceTypes = {
  type t
  type request = unit
  type response = {
    @as("WirelessDeviceLogOptions") wirelessDeviceLogOptions: option<wirelessDeviceLogOptionList>,
    @as("WirelessGatewayLogOptions")
    wirelessGatewayLogOptions: option<wirelessGatewayLogOptionList>,
    @as("DefaultLogLevel") defaultLogLevel: option<logLevel>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "GetLogLevelsByResourceTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWirelessGateways = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("WirelessGatewayList") wirelessGatewayList: option<wirelessGatewayStatisticsList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListWirelessGatewaysCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWirelessDevices = {
  type t
  type request = {
    @as("WirelessDeviceType") wirelessDeviceType: option<wirelessDeviceType>,
    @as("ServiceProfileId") serviceProfileId: option<serviceProfileId>,
    @as("DeviceProfileId") deviceProfileId: option<deviceProfileId>,
    @as("DestinationName") destinationName: option<destinationName>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("WirelessDeviceList") wirelessDeviceList: option<wirelessDeviceStatisticsList>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iotwireless") @new
  external new: request => t = "ListWirelessDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
