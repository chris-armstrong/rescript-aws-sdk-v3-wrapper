type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type wirelessGatewayType = [@as("LoRaWAN") #LoRaWAN]
type wirelessGatewayTaskStatus = [@as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("SECOND_RETRY") #SECOND_RETRY | @as("FIRST_RETRY") #FIRST_RETRY | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING") #PENDING]
type wirelessGatewayTaskName = string
type wirelessGatewayTaskDefinitionType = [@as("UPDATE") #UPDATE]
type wirelessGatewayTaskDefinitionId = string
type wirelessGatewayTaskDefinitionArn = string
type wirelessGatewayServiceType = [@as("LNS") #LNS | @as("CUPS") #CUPS]
type wirelessGatewayName = string
type wirelessGatewayIdType = [@as("ThingName") #ThingName | @as("WirelessGatewayId") #WirelessGatewayId | @as("GatewayEui") #GatewayEui]
type wirelessGatewayId = string
type wirelessGatewayEvent = [@as("Certificate") #Certificate | @as("CUPS_Request") #CUPS_Request]
type wirelessGatewayArn = string
type wirelessDeviceType = [@as("LoRaWAN") #LoRaWAN | @as("Sidewalk") #Sidewalk]
type wirelessDeviceName = string
type wirelessDeviceIdType = [@as("ThingName") #ThingName | @as("DevEui") #DevEui | @as("WirelessDeviceId") #WirelessDeviceId]
type wirelessDeviceId = string
type wirelessDeviceEvent = [@as("Registration") #Registration | @as("Downlink_Data") #Downlink_Data | @as("Uplink_Data") #Uplink_Data | @as("Rejoin") #Rejoin | @as("Join") #Join]
type wirelessDeviceArn = string
type updateSignature = string
type updateDataSource = string
type ulRatePolicy = string
type ulRate = int;
type ulBucketSize = int;
type transmitMode = int;
type thingName = string
type thingArn = string
type targetPer = int;
type tagValue = string
type tagKey = string
type supportsJoin = bool;
type supportsClassC = bool;
type supportsClassB = bool;
type supports32BitFCnt = bool;
type subBand = int;
type station = string
type signingAlg = [@as("P256r1") #P256r1 | @as("Ed25519") #Ed25519]
type sidewalkManufacturingSn = string
type sidewalkId = string
type serviceProfileName = string
type serviceProfileId = string
type serviceProfileArn = string
type seq = int;
type sNwkSIntKey = string
type rxFreq2 = int;
type rxDrOffset1 = int;
type rxDelay1 = int;
type rxDataRate2 = int;
type roleArn = string
type rfRegion = string
type result = string
type resourceType = string
type resourceIdentifier = string
type resourceId = string
type reportDevStatusMargin = bool;
type reportDevStatusBattery = bool;
type regParamsRevision = string
type raAllowed = bool;
type presetFreq = int;
type prAllowed = bool;
type pingSlotPeriod = int;
type pingSlotFreq = int;
type pingSlotDr = int;
type payloadData = string
type partnerType = [@as("Sidewalk") #Sidewalk]
type partnerAccountId = string
type partnerAccountArn = string
type packageVersion = string
type nwkSKey = string
type nwkSEncKey = string
type nwkKey = string
type nwkGeoLoc = bool;
type nextToken = string
type netId = string
type model = string
type minGwDiversity = int;
type messageType = [@as("CUSTOM_COMMAND_ID_RESP") #CUSTOM_COMMAND_ID_RESP | @as("CUSTOM_COMMAND_ID_SET") #CUSTOM_COMMAND_ID_SET | @as("CUSTOM_COMMAND_ID_GET") #CUSTOM_COMMAND_ID_GET | @as("CUSTOM_COMMAND_ID_NOTIFY") #CUSTOM_COMMAND_ID_NOTIFY]
type messageId = string
type message = string
type maxResults = int;
type maxEirp = int;
type maxDutyCycle = int;
type macVersion = string
type logLevel = [@as("DISABLED") #DISABLED | @as("ERROR") #ERROR | @as("INFO") #INFO]
type joinEui = string
type iotCertificateId = string
type amazonawsInteger = int;
type identifier = string
type iSODateTimeString = string
type hrAllowed = bool;
type gatewayEui = string
type fingerprint = string
type fPort = int;
type fNwkSIntKey = string
type expressionType = [@as("MqttTopic") #MqttTopic | @as("RuleName") #RuleName]
type expression = string
type event = [@as("passthrough") #passthrough | @as("nack") #nack | @as("ack") #ack | @as("lost") #lost | @as("discovered") #discovered]
type endPoint = string
type drMin = int;
type drMax = int;
type amazonawsDouble = float;
type dlRatePolicy = string
type dlRate = int;
type dlBucketSize = int;
type deviceState = [@as("RegisteredUnreachable") #RegisteredUnreachable | @as("RegisteredReachable") #RegisteredReachable | @as("RegisteredNotSeen") #RegisteredNotSeen | @as("Provisioned") #Provisioned]
type deviceProfileName = string
type deviceProfileId = string
type deviceProfileArn = string
type devStatusReqFreq = int;
type devEui = string
type devAddr = string
type destinationName = string
type destinationArn = string
type description = string
type crc = float;
type connectionStatus = [@as("Disconnected") #Disconnected | @as("Connected") #Connected]
type clientRequestToken = string
type classCTimeout = int;
type classBTimeout = int;
type channelMask = string
type certificateValue = string
type certificatePEM = string
type batteryLevel = [@as("critical") #critical | @as("low") #low | @as("normal") #normal]
type autoCreateTasks = bool;
type appServerPrivateKey = string
type appSKey = string
type appKey = string
type appEui = string
type amazonResourceName = string
type amazonId = string
type addGwMetadata = bool;
type accountLinked = bool;
type wirelessGatewayEventLogOption = {
@as("LogLevel") logLevel: option<logLevel>,
@as("Event") event: option<wirelessGatewayEvent>
}
type wirelessDeviceEventLogOption = {
@as("LogLevel") logLevel: option<logLevel>,
@as("Event") event: option<wirelessDeviceEvent>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subBands = array<subBand>
type sidewalkUpdateAccount = {
@as("AppServerPrivateKey") appServerPrivateKey: appServerPrivateKey
}
type sidewalkSendDataToDevice = {
@as("MessageType") messageType: messageType,
@as("Seq") seq: seq
}
type sidewalkDeviceMetadata = {
@as("DeviceState") deviceState: deviceState,
@as("Event") event: event,
@as("BatteryLevel") batteryLevel: batteryLevel,
@as("Rssi") rssi: amazonawsInteger
}
type sidewalkAccountInfoWithFingerprint = {
@as("Arn") arn: partnerAccountArn,
@as("Fingerprint") fingerprint: fingerprint,
@as("AmazonId") amazonId: amazonId
}
type sidewalkAccountInfo = {
@as("AppServerPrivateKey") appServerPrivateKey: appServerPrivateKey,
@as("AmazonId") amazonId: amazonId
}
type sessionKeysAbpV1_1 = {
@as("AppSKey") appSKey: appSKey,
@as("NwkSEncKey") nwkSEncKey: nwkSEncKey,
@as("SNwkSIntKey") sNwkSIntKey: sNwkSIntKey,
@as("FNwkSIntKey") fNwkSIntKey: fNwkSIntKey
}
type sessionKeysAbpV1_0_x = {
@as("AppSKey") appSKey: appSKey,
@as("NwkSKey") nwkSKey: nwkSKey
}
type serviceProfile = {
@as("Id") id: serviceProfileId,
@as("Name") name: serviceProfileName,
@as("Arn") arn: serviceProfileArn
}
type otaaV1_1 = {
@as("JoinEui") joinEui: joinEui,
@as("NwkKey") nwkKey: nwkKey,
@as("AppKey") appKey: appKey
}
type otaaV1_0_x = {
@as("AppEui") appEui: appEui,
@as("AppKey") appKey: appKey
}
type netIdFilters = array<netId>
type loRaWANUpdateDevice = {
@as("ServiceProfileId") serviceProfileId: serviceProfileId,
@as("DeviceProfileId") deviceProfileId: deviceProfileId
}
type loRaWANServiceProfile = {
@as("AddGwMetadata") addGwMetadata: addGwMetadata
}
type loRaWANSendDataToDevice = {
@as("FPort") fPort: fPort
}
type loRaWANListDevice = {
@as("DevEui") devEui: devEui
}
type loRaWANGetServiceProfileInfo = {
@as("MinGwDiversity") minGwDiversity: minGwDiversity,
@as("TargetPer") targetPer: targetPer,
@as("NwkGeoLoc") nwkGeoLoc: nwkGeoLoc,
@as("RaAllowed") raAllowed: raAllowed,
@as("HrAllowed") hrAllowed: hrAllowed,
@as("PrAllowed") prAllowed: prAllowed,
@as("ChannelMask") channelMask: channelMask,
@as("DrMax") drMax: drMax,
@as("DrMin") drMin: drMin,
@as("ReportDevStatusMargin") reportDevStatusMargin: reportDevStatusMargin,
@as("ReportDevStatusBattery") reportDevStatusBattery: reportDevStatusBattery,
@as("DevStatusReqFreq") devStatusReqFreq: devStatusReqFreq,
@as("AddGwMetadata") addGwMetadata: addGwMetadata,
@as("DlRatePolicy") dlRatePolicy: dlRatePolicy,
@as("DlBucketSize") dlBucketSize: dlBucketSize,
@as("DlRate") dlRate: dlRate,
@as("UlRatePolicy") ulRatePolicy: ulRatePolicy,
@as("UlBucketSize") ulBucketSize: ulBucketSize,
@as("UlRate") ulRate: ulRate
}
type loRaWANGatewayVersion = {
@as("Station") station: station,
@as("Model") model: model,
@as("PackageVersion") packageVersion: packageVersion
}
type loRaWANGatewayMetadata = {
@as("Rssi") rssi: amazonawsDouble,
@as("Snr") snr: amazonawsDouble,
@as("GatewayEui") gatewayEui: gatewayEui
}
type joinEuiRange = array<joinEui>
type factoryPresetFreqsList = array<presetFreq>
type deviceProfile = {
@as("Id") id: deviceProfileId,
@as("Name") name: deviceProfileName,
@as("Arn") arn: deviceProfileArn
}
type destinations = {
@as("RoleArn") roleArn: roleArn,
@as("Description") description: description,
@as("Expression") expression: expression,
@as("ExpressionType") expressionType: expressionType,
@as("Name") name: destinationName,
@as("Arn") arn: destinationArn
}
type certificateList = {
@as("Value") value: option<certificateValue>,
@as("SigningAlg") signingAlg: option<signingAlg>
}
type wirelessMetadata = {
@as("Sidewalk") sidewalk: sidewalkSendDataToDevice,
@as("LoRaWAN") loRaWAN: loRaWANSendDataToDevice
}
type wirelessGatewayEventLogOptionList = array<wirelessGatewayEventLogOption>
type wirelessDeviceEventLogOptionList = array<wirelessDeviceEventLogOption>
type tagList = array<tag>
type sidewalkAccountList = array<sidewalkAccountInfoWithFingerprint>
type serviceProfileList = array<serviceProfile>
type loRaWANUpdateGatewayTaskEntry = {
@as("UpdateVersion") updateVersion: loRaWANGatewayVersion,
@as("CurrentVersion") currentVersion: loRaWANGatewayVersion
}
type loRaWANUpdateGatewayTaskCreate = {
@as("UpdateVersion") updateVersion: loRaWANGatewayVersion,
@as("CurrentVersion") currentVersion: loRaWANGatewayVersion,
@as("SigKeyCrc") sigKeyCrc: crc,
@as("UpdateSignature") updateSignature: updateSignature
}
type loRaWANGatewayMetadataList = array<loRaWANGatewayMetadata>
type loRaWANGatewayCurrentVersion = {
@as("CurrentVersion") currentVersion: loRaWANGatewayVersion
}
type loRaWANDeviceProfile = {
@as("Supports32BitFCnt") supports32BitFCnt: supports32BitFCnt,
@as("SupportsJoin") supportsJoin: supportsJoin,
@as("RfRegion") rfRegion: rfRegion,
@as("MaxDutyCycle") maxDutyCycle: maxDutyCycle,
@as("MaxEirp") maxEirp: maxEirp,
@as("FactoryPresetFreqsList") factoryPresetFreqsList: factoryPresetFreqsList,
@as("RxFreq2") rxFreq2: rxFreq2,
@as("RxDataRate2") rxDataRate2: rxDataRate2,
@as("RxDrOffset1") rxDrOffset1: rxDrOffset1,
@as("RxDelay1") rxDelay1: rxDelay1,
@as("RegParamsRevision") regParamsRevision: regParamsRevision,
@as("MacVersion") macVersion: macVersion,
@as("ClassCTimeout") classCTimeout: classCTimeout,
@as("SupportsClassC") supportsClassC: supportsClassC,
@as("PingSlotFreq") pingSlotFreq: pingSlotFreq,
@as("PingSlotDr") pingSlotDr: pingSlotDr,
@as("PingSlotPeriod") pingSlotPeriod: pingSlotPeriod,
@as("ClassBTimeout") classBTimeout: classBTimeout,
@as("SupportsClassB") supportsClassB: supportsClassB
}
type joinEuiFilters = array<joinEuiRange>
type deviceProfileList = array<deviceProfile>
type deviceCertificateList = array<certificateList>
type destinationList = array<destinations>
type abpV1_1 = {
@as("SessionKeys") sessionKeys: sessionKeysAbpV1_1,
@as("DevAddr") devAddr: devAddr
}
type abpV1_0_x = {
@as("SessionKeys") sessionKeys: sessionKeysAbpV1_0_x,
@as("DevAddr") devAddr: devAddr
}
type wirelessGatewayLogOption = {
@as("Events") events: wirelessGatewayEventLogOptionList,
@as("LogLevel") logLevel: option<logLevel>,
@as("Type") type_: option<wirelessGatewayType>
}
type wirelessDeviceLogOption = {
@as("Events") events: wirelessDeviceEventLogOptionList,
@as("LogLevel") logLevel: option<logLevel>,
@as("Type") type_: option<wirelessDeviceType>
}
type updateWirelessGatewayTaskEntry = {
@as("Arn") arn: wirelessGatewayTaskDefinitionArn,
@as("LoRaWAN") loRaWAN: loRaWANUpdateGatewayTaskEntry,
@as("Id") id: wirelessGatewayTaskDefinitionId
}
type updateWirelessGatewayTaskCreate = {
@as("LoRaWAN") loRaWAN: loRaWANUpdateGatewayTaskCreate,
@as("UpdateDataRole") updateDataRole: updateDataSource,
@as("UpdateDataSource") updateDataSource: updateDataSource
}
type sidewalkListDevice = {
@as("DeviceCertificates") deviceCertificates: deviceCertificateList,
@as("SidewalkManufacturingSn") sidewalkManufacturingSn: sidewalkManufacturingSn,
@as("SidewalkId") sidewalkId: sidewalkId,
@as("AmazonId") amazonId: amazonId
}
type sidewalkDevice = {
@as("DeviceCertificates") deviceCertificates: deviceCertificateList,
@as("SidewalkManufacturingSn") sidewalkManufacturingSn: sidewalkManufacturingSn,
@as("SidewalkId") sidewalkId: sidewalkId
}
type loRaWANGateway = {
@as("SubBands") subBands: subBands,
@as("NetIdFilters") netIdFilters: netIdFilters,
@as("JoinEuiFilters") joinEuiFilters: joinEuiFilters,
@as("RfRegion") rfRegion: rfRegion,
@as("GatewayEui") gatewayEui: gatewayEui
}
type loRaWANDeviceMetadata = {
@as("Gateways") gateways: loRaWANGatewayMetadataList,
@as("Timestamp") timestamp: iSODateTimeString,
@as("Frequency") frequency: amazonawsInteger,
@as("DataRate") dataRate: amazonawsInteger,
@as("FPort") fPort: amazonawsInteger,
@as("DevEui") devEui: devEui
}
type loRaWANDevice = {
@as("AbpV1_0_x") abpV1_0_x: abpV1_0_x,
@as("AbpV1_1") abpV1_1: abpV1_1,
@as("OtaaV1_0_x") otaaV1_0_x: otaaV1_0_x,
@as("OtaaV1_1") otaaV1_1: otaaV1_1,
@as("ServiceProfileId") serviceProfileId: serviceProfileId,
@as("DeviceProfileId") deviceProfileId: deviceProfileId,
@as("DevEui") devEui: devEui
}
type wirelessGatewayTaskDefinitionList = array<updateWirelessGatewayTaskEntry>
type wirelessGatewayStatistics = {
@as("LastUplinkReceivedAt") lastUplinkReceivedAt: iSODateTimeString,
@as("LoRaWAN") loRaWAN: loRaWANGateway,
@as("Description") description: description,
@as("Name") name: wirelessGatewayName,
@as("Id") id: wirelessGatewayId,
@as("Arn") arn: wirelessGatewayArn
}
type wirelessGatewayLogOptionList = array<wirelessGatewayLogOption>
type wirelessDeviceStatistics = {
@as("Sidewalk") sidewalk: sidewalkListDevice,
@as("LoRaWAN") loRaWAN: loRaWANListDevice,
@as("LastUplinkReceivedAt") lastUplinkReceivedAt: iSODateTimeString,
@as("DestinationName") destinationName: destinationName,
@as("Name") name: wirelessDeviceName,
@as("Type") type_: wirelessDeviceType,
@as("Id") id: wirelessDeviceId,
@as("Arn") arn: wirelessDeviceArn
}
type wirelessDeviceLogOptionList = array<wirelessDeviceLogOption>
type wirelessGatewayStatisticsList = array<wirelessGatewayStatistics>
type wirelessDeviceStatisticsList = array<wirelessDeviceStatistics>
type clientType;
@module("@aws-sdk/client-iotwireless") @new external createClient: unit => clientType = "IoTWirelessClient";
module UpdateDestination = {
  type t;
  type request = {
@as("RoleArn") roleArn: roleArn,
@as("Description") description: description,
@as("Expression") expression: expression,
@as("ExpressionType") expressionType: expressionType,
@as("Name") name: option<destinationName>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "UpdateDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestWirelessDevice = {
  type t;
  type request = {
@as("Id") id: option<wirelessDeviceId>
}
  type response = {
@as("Result") result: result
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "TestWirelessDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetResourceLogLevel = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceIdentifier") resourceIdentifier: option<resourceIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ResetResourceLogLevelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetAllResourceLogLevels = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ResetAllResourceLogLevelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourceLogLevel = {
  type t;
  type request = {
@as("LogLevel") logLevel: option<logLevel>,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceIdentifier") resourceIdentifier: option<resourceIdentifier>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "PutResourceLogLevelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessGatewayTask = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayId>
}
  type response = {
@as("Status") status: wirelessGatewayTaskStatus,
@as("TaskCreatedAt") taskCreatedAt: iSODateTimeString,
@as("LastUplinkReceivedAt") lastUplinkReceivedAt: iSODateTimeString,
@as("WirelessGatewayTaskDefinitionId") wirelessGatewayTaskDefinitionId: wirelessGatewayTaskDefinitionId,
@as("WirelessGatewayId") wirelessGatewayId: wirelessGatewayId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessGatewayTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessGatewayStatistics = {
  type t;
  type request = {
@as("WirelessGatewayId") wirelessGatewayId: option<wirelessGatewayId>
}
  type response = {
@as("ConnectionStatus") connectionStatus: connectionStatus,
@as("LastUplinkReceivedAt") lastUplinkReceivedAt: iSODateTimeString,
@as("WirelessGatewayId") wirelessGatewayId: wirelessGatewayId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessGatewayStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessGatewayCertificate = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayId>
}
  type response = {
@as("LoRaWANNetworkServerCertificateId") loRaWANNetworkServerCertificateId: iotCertificateId,
@as("IotCertificateId") iotCertificateId: iotCertificateId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessGatewayCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceEndpoint = {
  type t;
  type request = {
@as("ServiceType") serviceType: wirelessGatewayServiceType
}
  type response = {
@as("ServerTrust") serverTrust: certificatePEM,
@as("ServiceEndpoint") serviceEndpoint: endPoint,
@as("ServiceType") serviceType: wirelessGatewayServiceType
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetServiceEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceLogLevel = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceIdentifier") resourceIdentifier: option<resourceIdentifier>
}
  type response = {
@as("LogLevel") logLevel: logLevel
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetResourceLogLevelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDestination = {
  type t;
  type request = {
@as("Name") name: option<destinationName>
}
  type response = {
@as("RoleArn") roleArn: roleArn,
@as("Description") description: description,
@as("ExpressionType") expressionType: expressionType,
@as("Expression") expression: expression,
@as("Name") name: destinationName,
@as("Arn") arn: destinationArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateWirelessGatewayFromThing = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DisassociateWirelessGatewayFromThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateWirelessGatewayFromCertificate = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DisassociateWirelessGatewayFromCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateWirelessDeviceFromThing = {
  type t;
  type request = {
@as("Id") id: option<wirelessDeviceId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DisassociateWirelessDeviceFromThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateAwsAccountFromPartnerAccount = {
  type t;
  type request = {
@as("PartnerType") partnerType: option<partnerType>,
@as("PartnerAccountId") partnerAccountId: option<partnerAccountId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DisassociateAwsAccountFromPartnerAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWirelessGatewayTaskDefinition = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayTaskDefinitionId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DeleteWirelessGatewayTaskDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWirelessGatewayTask = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DeleteWirelessGatewayTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWirelessGateway = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DeleteWirelessGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteWirelessDevice = {
  type t;
  type request = {
@as("Id") id: option<wirelessDeviceId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DeleteWirelessDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteServiceProfile = {
  type t;
  type request = {
@as("Id") id: option<serviceProfileId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DeleteServiceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDeviceProfile = {
  type t;
  type request = {
@as("Id") id: option<deviceProfileId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DeleteDeviceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDestination = {
  type t;
  type request = {
@as("Name") name: option<destinationName>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "DeleteDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWirelessGatewayTask = {
  type t;
  type request = {
@as("WirelessGatewayTaskDefinitionId") wirelessGatewayTaskDefinitionId: option<wirelessGatewayTaskDefinitionId>,
@as("Id") id: option<wirelessGatewayId>
}
  type response = {
@as("Status") status: wirelessGatewayTaskStatus,
@as("WirelessGatewayTaskDefinitionId") wirelessGatewayTaskDefinitionId: wirelessGatewayTaskDefinitionId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "CreateWirelessGatewayTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateWirelessGatewayWithThing = {
  type t;
  type request = {
@as("ThingArn") thingArn: option<thingArn>,
@as("Id") id: option<wirelessGatewayId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "AssociateWirelessGatewayWithThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateWirelessGatewayWithCertificate = {
  type t;
  type request = {
@as("IotCertificateId") iotCertificateId: option<iotCertificateId>,
@as("Id") id: option<wirelessGatewayId>
}
  type response = {
@as("IotCertificateId") iotCertificateId: iotCertificateId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "AssociateWirelessGatewayWithCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateWirelessDeviceWithThing = {
  type t;
  type request = {
@as("ThingArn") thingArn: option<thingArn>,
@as("Id") id: option<wirelessDeviceId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "AssociateWirelessDeviceWithThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWirelessDevice = {
  type t;
  type request = {
@as("LoRaWAN") loRaWAN: loRaWANUpdateDevice,
@as("Description") description: description,
@as("Name") name: wirelessDeviceName,
@as("DestinationName") destinationName: destinationName,
@as("Id") id: option<wirelessDeviceId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "UpdateWirelessDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePartnerAccount = {
  type t;
  type request = {
@as("PartnerType") partnerType: option<partnerType>,
@as("PartnerAccountId") partnerAccountId: option<partnerAccountId>,
@as("Sidewalk") sidewalk: option<sidewalkUpdateAccount>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "UpdatePartnerAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServiceProfile = {
  type t;
  type request = {
@as("Id") id: option<serviceProfileId>
}
  type response = {
@as("LoRaWAN") loRaWAN: loRaWANGetServiceProfileInfo,
@as("Id") id: serviceProfileId,
@as("Name") name: serviceProfileName,
@as("Arn") arn: serviceProfileArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetServiceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPartnerAccount = {
  type t;
  type request = {
@as("PartnerType") partnerType: option<partnerType>,
@as("PartnerAccountId") partnerAccountId: option<partnerAccountId>
}
  type response = {
@as("AccountLinked") accountLinked: accountLinked,
@as("Sidewalk") sidewalk: sidewalkAccountInfoWithFingerprint
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetPartnerAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWirelessGateway = {
  type t;
  type request = {
@as("NetIdFilters") netIdFilters: netIdFilters,
@as("JoinEuiFilters") joinEuiFilters: joinEuiFilters,
@as("Description") description: description,
@as("Name") name: wirelessGatewayName,
@as("Id") id: option<wirelessGatewayId>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "UpdateWirelessGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendDataToWirelessDevice = {
  type t;
  type request = {
@as("WirelessMetadata") wirelessMetadata: wirelessMetadata,
@as("PayloadData") payloadData: option<payloadData>,
@as("TransmitMode") transmitMode: option<transmitMode>,
@as("Id") id: option<wirelessDeviceId>
}
  type response = {
@as("MessageId") messageId: messageId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "SendDataToWirelessDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServiceProfiles = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("ServiceProfileList") serviceProfileList: serviceProfileList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListServiceProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPartnerAccounts = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("Sidewalk") sidewalk: sidewalkAccountList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListPartnerAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeviceProfiles = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("DeviceProfileList") deviceProfileList: deviceProfileList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListDeviceProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDestinations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("DestinationList") destinationList: destinationList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessGatewayFirmwareInformation = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayId>
}
  type response = {
@as("LoRaWAN") loRaWAN: loRaWANGatewayCurrentVersion
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessGatewayFirmwareInformationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeviceProfile = {
  type t;
  type request = {
@as("Id") id: option<deviceProfileId>
}
  type response = {
@as("LoRaWAN") loRaWAN: loRaWANDeviceProfile,
@as("Id") id: deviceProfileId,
@as("Name") name: deviceProfileName,
@as("Arn") arn: deviceProfileArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetDeviceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateServiceProfile = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Tags") tags: tagList,
@as("LoRaWAN") loRaWAN: loRaWANServiceProfile,
@as("Name") name: serviceProfileName
}
  type response = {
@as("Id") id: serviceProfileId,
@as("Arn") arn: serviceProfileArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "CreateServiceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeviceProfile = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Tags") tags: tagList,
@as("LoRaWAN") loRaWAN: loRaWANDeviceProfile,
@as("Name") name: deviceProfileName
}
  type response = {
@as("Id") id: deviceProfileId,
@as("Arn") arn: deviceProfileArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "CreateDeviceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDestination = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Tags") tags: tagList,
@as("RoleArn") roleArn: option<roleArn>,
@as("Description") description: description,
@as("Expression") expression: option<expression>,
@as("ExpressionType") expressionType: option<expressionType>,
@as("Name") name: option<destinationName>
}
  type response = {
@as("Name") name: destinationName,
@as("Arn") arn: destinationArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "CreateDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateAwsAccountWithPartnerAccount = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Sidewalk") sidewalk: option<sidewalkAccountInfo>
}
  type response = {
@as("Arn") arn: partnerAccountArn,
@as("Sidewalk") sidewalk: sidewalkAccountInfo
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "AssociateAwsAccountWithPartnerAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessGatewayTaskDefinition = {
  type t;
  type request = {
@as("Id") id: option<wirelessGatewayTaskDefinitionId>
}
  type response = {
@as("Arn") arn: wirelessGatewayTaskDefinitionArn,
@as("Update") update: updateWirelessGatewayTaskCreate,
@as("Name") name: wirelessGatewayTaskName,
@as("AutoCreateTasks") autoCreateTasks: autoCreateTasks
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessGatewayTaskDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessGateway = {
  type t;
  type request = {
@as("IdentifierType") identifierType: option<wirelessGatewayIdType>,
@as("Identifier") identifier: option<identifier>
}
  type response = {
@as("ThingArn") thingArn: thingArn,
@as("ThingName") thingName: thingName,
@as("Arn") arn: wirelessGatewayArn,
@as("LoRaWAN") loRaWAN: loRaWANGateway,
@as("Description") description: description,
@as("Id") id: wirelessGatewayId,
@as("Name") name: wirelessGatewayName
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessDeviceStatistics = {
  type t;
  type request = {
@as("WirelessDeviceId") wirelessDeviceId: option<wirelessDeviceId>
}
  type response = {
@as("Sidewalk") sidewalk: sidewalkDeviceMetadata,
@as("LoRaWAN") loRaWAN: loRaWANDeviceMetadata,
@as("LastUplinkReceivedAt") lastUplinkReceivedAt: iSODateTimeString,
@as("WirelessDeviceId") wirelessDeviceId: wirelessDeviceId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessDeviceStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWirelessDevice = {
  type t;
  type request = {
@as("IdentifierType") identifierType: option<wirelessDeviceIdType>,
@as("Identifier") identifier: option<identifier>
}
  type response = {
@as("Sidewalk") sidewalk: sidewalkDevice,
@as("LoRaWAN") loRaWAN: loRaWANDevice,
@as("ThingArn") thingArn: thingArn,
@as("ThingName") thingName: thingName,
@as("Arn") arn: wirelessDeviceArn,
@as("Id") id: wirelessDeviceId,
@as("DestinationName") destinationName: destinationName,
@as("Description") description: description,
@as("Name") name: wirelessDeviceName,
@as("Type") type_: wirelessDeviceType
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetWirelessDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWirelessGatewayTaskDefinition = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Update") update: updateWirelessGatewayTaskCreate,
@as("Name") name: wirelessGatewayTaskName,
@as("AutoCreateTasks") autoCreateTasks: option<autoCreateTasks>
}
  type response = {
@as("Arn") arn: wirelessGatewayTaskDefinitionArn,
@as("Id") id: wirelessGatewayTaskDefinitionId
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "CreateWirelessGatewayTaskDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWirelessGateway = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Tags") tags: tagList,
@as("LoRaWAN") loRaWAN: option<loRaWANGateway>,
@as("Description") description: description,
@as("Name") name: wirelessGatewayName
}
  type response = {
@as("Id") id: wirelessDeviceId,
@as("Arn") arn: wirelessGatewayArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "CreateWirelessGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWirelessDevice = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("LoRaWAN") loRaWAN: loRaWANDevice,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("DestinationName") destinationName: option<destinationName>,
@as("Description") description: description,
@as("Name") name: wirelessDeviceName,
@as("Type") type_: option<wirelessDeviceType>
}
  type response = {
@as("Id") id: wirelessDeviceId,
@as("Arn") arn: wirelessDeviceArn
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "CreateWirelessDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLogLevelsByResourceTypes = {
  type t;
  type request = {
@as("WirelessGatewayLogOptions") wirelessGatewayLogOptions: wirelessGatewayLogOptionList,
@as("WirelessDeviceLogOptions") wirelessDeviceLogOptions: wirelessDeviceLogOptionList,
@as("DefaultLogLevel") defaultLogLevel: logLevel
}
  type response = unit
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "UpdateLogLevelsByResourceTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWirelessGatewayTaskDefinitions = {
  type t;
  type request = {
@as("TaskDefinitionType") taskDefinitionType: wirelessGatewayTaskDefinitionType,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("TaskDefinitions") taskDefinitions: wirelessGatewayTaskDefinitionList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListWirelessGatewayTaskDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLogLevelsByResourceTypes = {
  type t;
  type request = unit
  type response = {
@as("WirelessDeviceLogOptions") wirelessDeviceLogOptions: wirelessDeviceLogOptionList,
@as("WirelessGatewayLogOptions") wirelessGatewayLogOptions: wirelessGatewayLogOptionList,
@as("DefaultLogLevel") defaultLogLevel: logLevel
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "GetLogLevelsByResourceTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWirelessGateways = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("WirelessGatewayList") wirelessGatewayList: wirelessGatewayStatisticsList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListWirelessGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWirelessDevices = {
  type t;
  type request = {
@as("WirelessDeviceType") wirelessDeviceType: wirelessDeviceType,
@as("ServiceProfileId") serviceProfileId: serviceProfileId,
@as("DeviceProfileId") deviceProfileId: deviceProfileId,
@as("DestinationName") destinationName: destinationName,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("WirelessDeviceList") wirelessDeviceList: wirelessDeviceStatisticsList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iotwireless") @new external new_: (request) => t = "ListWirelessDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
