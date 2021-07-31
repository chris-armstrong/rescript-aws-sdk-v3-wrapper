type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cognito-sync") @new
external createClient: unit => awsServiceClient = "CognitoSyncClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type syncSessionToken = string
type string_ = string
type streamingStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type streamName = string
type recordValue = string
type recordKey = string
type pushToken = string
type platform = [
  | @as("ADM") #ADM
  | @as("GCM") #GCM
  | @as("APNS_SANDBOX") #APNS_SANDBOX
  | @as("APNS") #APNS
]
type operation = [@as("remove") #Remove | @as("replace") #Replace]
type long = float
type lambdaFunctionArn = string
type integerString = int
type integer_ = int
type identityPoolId = string
type identityId = string
type exceptionMessage = string
type deviceId = string
type date = Js.Date.t
type datasetName = string
type cognitoEventType = string
type clientContext = string
type bulkPublishStatus = [
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
]
type boolean_ = bool
type assumeRoleArn = string
type applicationArn = string
type recordPatch = {
  @as("DeviceLastModifiedDate") deviceLastModifiedDate: option<date>,
  @as("SyncCount") syncCount: long,
  @as("Value") value: option<recordValue>,
  @as("Key") key: recordKey,
  @as("Op") op: operation,
}
type record = {
  @as("DeviceLastModifiedDate") deviceLastModifiedDate: option<date>,
  @as("LastModifiedBy") lastModifiedBy: option<string_>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("SyncCount") syncCount: option<long>,
  @as("Value") value: option<recordValue>,
  @as("Key") key: option<recordKey>,
}
type mergedDatasetNameList = array<string_>
type identityUsage = {
  @as("DataStorage") dataStorage: option<long>,
  @as("DatasetCount") datasetCount: option<integer_>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  @as("IdentityId") identityId: option<identityId>,
}
type identityPoolUsage = {
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("DataStorage") dataStorage: option<long>,
  @as("SyncSessionsCount") syncSessionsCount: option<long>,
  @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
}
type events = Js.Dict.t<lambdaFunctionArn>
type dataset = {
  @as("NumRecords") numRecords: option<long>,
  @as("DataStorage") dataStorage: option<long>,
  @as("LastModifiedBy") lastModifiedBy: option<string_>,
  @as("LastModifiedDate") lastModifiedDate: option<date>,
  @as("CreationDate") creationDate: option<date>,
  @as("DatasetName") datasetName: option<datasetName>,
  @as("IdentityId") identityId: option<identityId>,
}
type cognitoStreams = {
  @as("StreamingStatus") streamingStatus: option<streamingStatus>,
  @as("RoleArn") roleArn: option<assumeRoleArn>,
  @as("StreamName") streamName: option<streamName>,
}
type applicationArnList = array<applicationArn>
type recordPatchList = array<recordPatch>
type recordList = array<record>
type pushSync = {
  @as("RoleArn") roleArn: option<assumeRoleArn>,
  @as("ApplicationArns") applicationArns: option<applicationArnList>,
}
type identityPoolUsageList = array<identityPoolUsage>
type datasetList = array<dataset>

module UnsubscribeFromDataset = {
  type t
  type request = {
    @as("DeviceId") deviceId: deviceId,
    @as("DatasetName") datasetName: datasetName,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = unit
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "UnsubscribeFromDatasetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SubscribeToDataset = {
  type t
  type request = {
    @as("DeviceId") deviceId: deviceId,
    @as("DatasetName") datasetName: datasetName,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = unit
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "SubscribeToDatasetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterDevice = {
  type t
  type request = {
    @as("Token") token: pushToken,
    @as("Platform") platform: platform,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {@as("DeviceId") deviceId: option<deviceId>}
  @module("@aws-sdk/client-cognito-sync") @new external new_: request => t = "RegisterDeviceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBulkPublishDetails = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}
  type response = {
    @as("FailureMessage") failureMessage: option<string_>,
    @as("BulkPublishStatus") bulkPublishStatus: option<bulkPublishStatus>,
    @as("BulkPublishCompleteTime") bulkPublishCompleteTime: option<date>,
    @as("BulkPublishStartTime") bulkPublishStartTime: option<date>,
    @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "GetBulkPublishDetailsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BulkPublish = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}
  type response = {@as("IdentityPoolId") identityPoolId: option<identityPoolId>}
  @module("@aws-sdk/client-cognito-sync") @new external new_: request => t = "BulkPublishCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetCognitoEvents = {
  type t
  type request = {
    @as("Events") events: events,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }

  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "SetCognitoEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetCognitoEvents = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}
  type response = {@as("Events") events: option<events>}
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "GetCognitoEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityUsage = {
  type t
  type request = {
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {@as("IdentityUsage") identityUsage: option<identityUsage>}
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "DescribeIdentityUsageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityPoolUsage = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}
  type response = {@as("IdentityPoolUsage") identityPoolUsage: option<identityPoolUsage>}
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "DescribeIdentityPoolUsageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  type request = {
    @as("DatasetName") datasetName: datasetName,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {@as("Dataset") dataset: option<dataset>}
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "DescribeDatasetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataset = {
  type t
  type request = {
    @as("DatasetName") datasetName: datasetName,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {@as("Dataset") dataset: option<dataset>}
  @module("@aws-sdk/client-cognito-sync") @new external new_: request => t = "DeleteDatasetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRecords = {
  type t
  type request = {
    @as("ClientContext") clientContext: option<clientContext>,
    @as("SyncSessionToken") syncSessionToken: syncSessionToken,
    @as("RecordPatches") recordPatches: option<recordPatchList>,
    @as("DeviceId") deviceId: option<deviceId>,
    @as("DatasetName") datasetName: datasetName,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {@as("Records") records: option<recordList>}
  @module("@aws-sdk/client-cognito-sync") @new external new_: request => t = "UpdateRecordsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetIdentityPoolConfiguration = {
  type t
  type request = {
    @as("CognitoStreams") cognitoStreams: option<cognitoStreams>,
    @as("PushSync") pushSync: option<pushSync>,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("CognitoStreams") cognitoStreams: option<cognitoStreams>,
    @as("PushSync") pushSync: option<pushSync>,
    @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "SetIdentityPoolConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecords = {
  type t
  type request = {
    @as("SyncSessionToken") syncSessionToken: option<syncSessionToken>,
    @as("MaxResults") maxResults: option<integerString>,
    @as("NextToken") nextToken: option<string_>,
    @as("LastSyncCount") lastSyncCount: option<long>,
    @as("DatasetName") datasetName: datasetName,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("SyncSessionToken") syncSessionToken: option<string_>,
    @as("DatasetDeletedAfterRequestedSyncCount")
    datasetDeletedAfterRequestedSyncCount: option<boolean_>,
    @as("DatasetExists") datasetExists: option<boolean_>,
    @as("MergedDatasetNames") mergedDatasetNames: option<mergedDatasetNameList>,
    @as("LastModifiedBy") lastModifiedBy: option<string_>,
    @as("DatasetSyncCount") datasetSyncCount: option<long>,
    @as("Count") count: option<integer_>,
    @as("NextToken") nextToken: option<string_>,
    @as("Records") records: option<recordList>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new_: request => t = "ListRecordsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentityPoolUsage = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<integerString>,
    @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Count") count: option<integer_>,
    @as("MaxResults") maxResults: option<integer_>,
    @as("IdentityPoolUsages") identityPoolUsages: option<identityPoolUsageList>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "ListIdentityPoolUsageCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasets = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<integerString>,
    @as("NextToken") nextToken: option<string_>,
    @as("IdentityId") identityId: identityId,
    @as("IdentityPoolId") identityPoolId: identityPoolId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Count") count: option<integer_>,
    @as("Datasets") datasets: option<datasetList>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new_: request => t = "ListDatasetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIdentityPoolConfiguration = {
  type t
  type request = {@as("IdentityPoolId") identityPoolId: identityPoolId}
  type response = {
    @as("CognitoStreams") cognitoStreams: option<cognitoStreams>,
    @as("PushSync") pushSync: option<pushSync>,
    @as("IdentityPoolId") identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new_: request => t = "GetIdentityPoolConfigurationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
