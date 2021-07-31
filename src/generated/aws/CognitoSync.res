type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type syncSessionToken = string
type amazonawsString = string
type streamingStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type streamName = string
type recordValue = string
type recordKey = string
type pushToken = string
type platform = [@as("ADM") #ADM | @as("GCM") #GCM | @as("APNS_SANDBOX") #APNS_SANDBOX | @as("APNS") #APNS]
type operation = [@as("remove") #remove | @as("replace") #replace]
type amazonawsLong = float;
type lambdaFunctionArn = string
type integerString = int;
type amazonawsInteger = int;
type identityPoolId = string
type identityId = string
type exceptionMessage = string
type deviceId = string
type date = Js.Date.t;
type datasetName = string
type cognitoEventType = string
type clientContext = string
type bulkPublishStatus = [@as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("NOT_STARTED") #NOT_STARTED]
type amazonawsBoolean = bool;
type assumeRoleArn = string
type applicationArn = string
type recordPatch = {
@as("DeviceLastModifiedDate") deviceLastModifiedDate: date,
@as("SyncCount") syncCount: option<amazonawsLong>,
@as("Value") value: recordValue,
@as("Key") key: option<recordKey>,
@as("Op") op: option<operation>
}
type record = {
@as("DeviceLastModifiedDate") deviceLastModifiedDate: date,
@as("LastModifiedBy") lastModifiedBy: amazonawsString,
@as("LastModifiedDate") lastModifiedDate: date,
@as("SyncCount") syncCount: amazonawsLong,
@as("Value") value: recordValue,
@as("Key") key: recordKey
}
type mergedDatasetNameList = array<amazonawsString>
type identityUsage = {
@as("DataStorage") dataStorage: amazonawsLong,
@as("DatasetCount") datasetCount: amazonawsInteger,
@as("LastModifiedDate") lastModifiedDate: date,
@as("IdentityPoolId") identityPoolId: identityPoolId,
@as("IdentityId") identityId: identityId
}
type identityPoolUsage = {
@as("LastModifiedDate") lastModifiedDate: date,
@as("DataStorage") dataStorage: amazonawsLong,
@as("SyncSessionsCount") syncSessionsCount: amazonawsLong,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
type events = Js.Dict.t< lambdaFunctionArn>
type dataset = {
@as("NumRecords") numRecords: amazonawsLong,
@as("DataStorage") dataStorage: amazonawsLong,
@as("LastModifiedBy") lastModifiedBy: amazonawsString,
@as("LastModifiedDate") lastModifiedDate: date,
@as("CreationDate") creationDate: date,
@as("DatasetName") datasetName: datasetName,
@as("IdentityId") identityId: identityId
}
type cognitoStreams = {
@as("StreamingStatus") streamingStatus: streamingStatus,
@as("RoleArn") roleArn: assumeRoleArn,
@as("StreamName") streamName: streamName
}
type applicationArnList = array<applicationArn>
type recordPatchList = array<recordPatch>
type recordList = array<record>
type pushSync = {
@as("RoleArn") roleArn: assumeRoleArn,
@as("ApplicationArns") applicationArns: applicationArnList
}
type identityPoolUsageList = array<identityPoolUsage>
type datasetList = array<dataset>
type clientType;
@module("@aws-sdk/client-cognito-sync") @new external createClient: unit => clientType = "CognitoSyncClient";
module UnsubscribeFromDataset = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<deviceId>,
@as("DatasetName") datasetName: option<datasetName>,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = unit
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "UnsubscribeFromDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SubscribeToDataset = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<deviceId>,
@as("DatasetName") datasetName: option<datasetName>,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = unit
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "SubscribeToDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterDevice = {
  type t;
  type request = {
@as("Token") token: option<pushToken>,
@as("Platform") platform: option<platform>,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("DeviceId") deviceId: deviceId
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "RegisterDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBulkPublishDetails = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("FailureMessage") failureMessage: amazonawsString,
@as("BulkPublishStatus") bulkPublishStatus: bulkPublishStatus,
@as("BulkPublishCompleteTime") bulkPublishCompleteTime: date,
@as("BulkPublishStartTime") bulkPublishStartTime: date,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "GetBulkPublishDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BulkPublish = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "BulkPublishCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetCognitoEvents = {
  type t;
  type request = {
@as("Events") events: option<events>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "SetCognitoEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetCognitoEvents = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("Events") events: events
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "GetCognitoEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityUsage = {
  type t;
  type request = {
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("IdentityUsage") identityUsage: identityUsage
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "DescribeIdentityUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityPoolUsage = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("IdentityPoolUsage") identityPoolUsage: identityPoolUsage
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "DescribeIdentityPoolUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("DatasetName") datasetName: option<datasetName>,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("Dataset") dataset: dataset
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "DescribeDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("DatasetName") datasetName: option<datasetName>,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("Dataset") dataset: dataset
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "DeleteDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRecords = {
  type t;
  type request = {
@as("ClientContext") clientContext: clientContext,
@as("SyncSessionToken") syncSessionToken: option<syncSessionToken>,
@as("RecordPatches") recordPatches: recordPatchList,
@as("DeviceId") deviceId: deviceId,
@as("DatasetName") datasetName: option<datasetName>,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("Records") records: recordList
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "UpdateRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIdentityPoolConfiguration = {
  type t;
  type request = {
@as("CognitoStreams") cognitoStreams: cognitoStreams,
@as("PushSync") pushSync: pushSync,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("CognitoStreams") cognitoStreams: cognitoStreams,
@as("PushSync") pushSync: pushSync,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "SetIdentityPoolConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecords = {
  type t;
  type request = {
@as("SyncSessionToken") syncSessionToken: syncSessionToken,
@as("MaxResults") maxResults: integerString,
@as("NextToken") nextToken: amazonawsString,
@as("LastSyncCount") lastSyncCount: amazonawsLong,
@as("DatasetName") datasetName: option<datasetName>,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("SyncSessionToken") syncSessionToken: amazonawsString,
@as("DatasetDeletedAfterRequestedSyncCount") datasetDeletedAfterRequestedSyncCount: amazonawsBoolean,
@as("DatasetExists") datasetExists: amazonawsBoolean,
@as("MergedDatasetNames") mergedDatasetNames: mergedDatasetNameList,
@as("LastModifiedBy") lastModifiedBy: amazonawsString,
@as("DatasetSyncCount") datasetSyncCount: amazonawsLong,
@as("Count") count: amazonawsInteger,
@as("NextToken") nextToken: amazonawsString,
@as("Records") records: recordList
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "ListRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIdentityPoolUsage = {
  type t;
  type request = {
@as("MaxResults") maxResults: integerString,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Count") count: amazonawsInteger,
@as("MaxResults") maxResults: amazonawsInteger,
@as("IdentityPoolUsages") identityPoolUsages: identityPoolUsageList
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "ListIdentityPoolUsageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasets = {
  type t;
  type request = {
@as("MaxResults") maxResults: integerString,
@as("NextToken") nextToken: amazonawsString,
@as("IdentityId") identityId: option<identityId>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Count") count: amazonawsInteger,
@as("Datasets") datasets: datasetList
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "ListDatasetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIdentityPoolConfiguration = {
  type t;
  type request = {
@as("IdentityPoolId") identityPoolId: option<identityPoolId>
}
  type response = {
@as("CognitoStreams") cognitoStreams: cognitoStreams,
@as("PushSync") pushSync: pushSync,
@as("IdentityPoolId") identityPoolId: identityPoolId
}
  @module("@aws-sdk/client-cognito-sync") @new external new_: (request) => t = "GetIdentityPoolConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
