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
@ocaml.doc("An update operation for a record.")
type recordPatch = {
  @ocaml.doc("The last modified date of the client
      device.")
  @as("DeviceLastModifiedDate")
  deviceLastModifiedDate: option<date>,
  @ocaml.doc("Last known server sync count for this record. Set
      to 0 if unknown.")
  @as("SyncCount")
  syncCount: long,
  @ocaml.doc("The value associated with the record
      patch.")
  @as("Value")
  value: option<recordValue>,
  @ocaml.doc("The key associated with the record patch.") @as("Key") key: recordKey,
  @ocaml.doc("An operation, either replace or remove.") @as("Op") op: operation,
}
@ocaml.doc("The basic data structure of a dataset.")
type record = {
  @ocaml.doc("The last modified date of the client
      device.")
  @as("DeviceLastModifiedDate")
  deviceLastModifiedDate: option<date>,
  @ocaml.doc("The user/device that made the last change to this
      record.")
  @as("LastModifiedBy")
  lastModifiedBy: option<string_>,
  @ocaml.doc("The date on which the record was last
      modified.")
  @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("The server sync count for this record.") @as("SyncCount") syncCount: option<long>,
  @ocaml.doc("The value for the record.") @as("Value") value: option<recordValue>,
  @ocaml.doc("The key for the record.") @as("Key") key: option<recordKey>,
}
type mergedDatasetNameList = array<string_>
@ocaml.doc("Usage information for the identity.")
type identityUsage = {
  @ocaml.doc("Total data storage for this
      identity.")
  @as("DataStorage")
  dataStorage: option<long>,
  @ocaml.doc("Number of datasets for the
      identity.")
  @as("DatasetCount")
  datasetCount: option<integer_>,
  @ocaml.doc("Date on which the identity was last
      modified.")
  @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
  @as("IdentityPoolId")
  identityPoolId: option<identityPoolId>,
  @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
  @as("IdentityId")
  identityId: option<identityId>,
}
@ocaml.doc("Usage information for the identity
      pool.")
type identityPoolUsage = {
  @ocaml.doc("Date on which the identity pool was
      last modified.")
  @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("Data storage information for the identity
      pool.")
  @as("DataStorage")
  dataStorage: option<long>,
  @ocaml.doc("Number of sync sessions for the
      identity pool.")
  @as("SyncSessionsCount")
  syncSessionsCount: option<long>,
  @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
  @as("IdentityPoolId")
  identityPoolId: option<identityPoolId>,
}
type events = Js.Dict.t<lambdaFunctionArn>
@ocaml.doc("A collection of data for an identity pool. An identity pool can
      have multiple datasets. A dataset is per identity and can be general or associated with a
      particular entity in an application (like a saved game). Datasets are automatically created if
      they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value
      pairs.")
type dataset = {
  @ocaml.doc("Number of records in this dataset.") @as("NumRecords") numRecords: option<long>,
  @ocaml.doc("Total size in bytes of the records in this
      dataset.")
  @as("DataStorage")
  dataStorage: option<long>,
  @ocaml.doc("The device that made the last change to this
      dataset.")
  @as("LastModifiedBy")
  lastModifiedBy: option<string_>,
  @ocaml.doc("Date when the dataset was last
      modified.")
  @as("LastModifiedDate")
  lastModifiedDate: option<date>,
  @ocaml.doc("Date on which the dataset was
      created.")
  @as("CreationDate")
  creationDate: option<date>,
  @ocaml.doc("A string of up to 128 characters. Allowed characters
      are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).")
  @as("DatasetName")
  datasetName: option<datasetName>,
  @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
  @as("IdentityId")
  identityId: option<identityId>,
}
@ocaml.doc("Configuration options for configure Cognito streams.")
type cognitoStreams = {
  @ocaml.doc("Status of the Cognito streams. Valid values are:
      <p>ENABLED - Streaming of updates to identity pool is enabled.</p>
      <p>DISABLED - Streaming of updates to identity pool is disabled. Bulk publish will also fail if StreamingStatus is DISABLED.</p>")
  @as("StreamingStatus")
  streamingStatus: option<streamingStatus>,
  @ocaml.doc(
    "The ARN of the role Amazon Cognito can assume in order to publish to the stream. This role must grant access to Amazon Cognito (cognito-sync) to invoke PutRecord on your Cognito stream."
  )
  @as("RoleArn")
  roleArn: option<assumeRoleArn>,
  @ocaml.doc(
    "The name of the Cognito stream to receive updates. This stream must be in the developers account and in the same region as the identity pool."
  )
  @as("StreamName")
  streamName: option<streamName>,
}
type applicationArnList = array<applicationArn>
type recordPatchList = array<recordPatch>
type recordList = array<record>
@ocaml.doc("<p>Configuration options to be applied to the identity pool.</p>")
type pushSync = {
  @ocaml.doc("<p>A role configured to allow Cognito to call SNS on behalf of the developer.</p>")
  @as("RoleArn")
  roleArn: option<assumeRoleArn>,
  @ocaml.doc("<p>List of SNS platform application ARNs that could be used by clients.</p>")
  @as("ApplicationArns")
  applicationArns: option<applicationArnList>,
}
type identityPoolUsageList = array<identityPoolUsage>
type datasetList = array<dataset>
@ocaml.doc("<fullname>Amazon Cognito Sync</fullname>
      <p>Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of
         application-related user data. High-level client libraries are available for both iOS and
         Android. You can use these libraries to persist data locally so that it's available even if
         the device is offline. Developer credentials don't need to be stored on the mobile device
         to access the service. You can use Amazon Cognito to obtain a normalized user ID and
         credentials. User data is persisted in a dataset that can store up to 1 MB of key-value
         pairs, and you can have up to 20 datasets per user identity.</p>
      <p>With Amazon Cognito Sync, the data stored for each identity is accessible only to
         credentials assigned to that identity. In order to use the Cognito Sync service, you need
         to make API calls using credentials retrieved with <a href=\"http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html\">Amazon Cognito Identity service</a>.</p>
      <p>If you want to use Cognito Sync in an Android or iOS application, you will probably want to
         make API calls via the AWS Mobile SDK. To learn more, see the <a href=\"http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html\">Developer Guide for Android</a> and the <a href=\"http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html\">Developer Guide for iOS</a>.</p>")
module UnsubscribeFromDataset = {
  type t
  @ocaml.doc("<p>A request to UnsubscribeFromDataset.</p>")
  type request = {
    @ocaml.doc("<p>The unique ID generated for this device by Cognito.</p>") @as("DeviceId")
    deviceId: deviceId,
    @ocaml.doc("<p>The name of the dataset from which to unsubcribe.</p>") @as("DatasetName")
    datasetName: datasetName,
    @ocaml.doc("<p>Unique ID for this identity.</p>") @as("IdentityId") identityId: identityId,
    @ocaml.doc("<p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
         Amazon Cognito. The ID of the pool to which this identity belongs.</p>")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }

  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "UnsubscribeFromDatasetCommand"
  let make = (~deviceId, ~datasetName, ~identityId, ~identityPoolId, ()) =>
    new({
      deviceId: deviceId,
      datasetName: datasetName,
      identityId: identityId,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SubscribeToDataset = {
  type t
  @ocaml.doc("<p>A request to SubscribeToDatasetRequest.</p>")
  type request = {
    @ocaml.doc("<p>The unique ID generated for this device by Cognito.</p>") @as("DeviceId")
    deviceId: deviceId,
    @ocaml.doc("<p>The name of the dataset to subcribe to.</p>") @as("DatasetName")
    datasetName: datasetName,
    @ocaml.doc("<p>Unique ID for this identity.</p>") @as("IdentityId") identityId: identityId,
    @ocaml.doc("<p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
         Amazon Cognito. The ID of the pool to which the identity belongs.</p>")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }

  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "SubscribeToDatasetCommand"
  let make = (~deviceId, ~datasetName, ~identityId, ~identityPoolId, ()) =>
    new({
      deviceId: deviceId,
      datasetName: datasetName,
      identityId: identityId,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterDevice = {
  type t
  @ocaml.doc("<p>A request to RegisterDevice.</p>")
  type request = {
    @ocaml.doc("<p>The push token.</p>") @as("Token") token: pushToken,
    @ocaml.doc("<p>The SNS platform type (e.g. GCM, SDM, APNS, APNS_SANDBOX).</p>") @as("Platform")
    platform: platform,
    @ocaml.doc("<p>The unique ID for this identity.</p>") @as("IdentityId") identityId: identityId,
    @ocaml.doc("<p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
         Amazon Cognito. Here, the ID of the pool that the identity belongs to.</p>")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>Response to a RegisterDevice request.</p>")
  type response = {
    @ocaml.doc("<p>The unique ID generated for this device by Cognito.</p>") @as("DeviceId")
    deviceId: option<deviceId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new: request => t = "RegisterDeviceCommand"
  let make = (~token, ~platform, ~identityId, ~identityPoolId, ()) =>
    new({token: token, platform: platform, identityId: identityId, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBulkPublishDetails = {
  type t
  @ocaml.doc("The input for the GetBulkPublishDetails operation.")
  type request = {
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("The output for the GetBulkPublishDetails operation.")
  type response = {
    @ocaml.doc(
      "If BulkPublishStatus is FAILED this field will contain the error message that caused the bulk publish to fail."
    )
    @as("FailureMessage")
    failureMessage: option<string_>,
    @ocaml.doc("Status of the last bulk publish operation, valid values are: 
      <p>NOT_STARTED - No bulk publish has been requested for this identity pool</p>
      <p>IN_PROGRESS - Data is being published to the configured stream</p>
      <p>SUCCEEDED - All data for the identity pool has been published to the configured stream</p>
      <p>FAILED - Some portion of the data has failed to publish, check FailureMessage for the cause.</p>")
    @as("BulkPublishStatus")
    bulkPublishStatus: option<bulkPublishStatus>,
    @ocaml.doc(
      "If BulkPublishStatus is SUCCEEDED, the time the last bulk publish operation completed."
    )
    @as("BulkPublishCompleteTime")
    bulkPublishCompleteTime: option<date>,
    @ocaml.doc("The date/time at which the last bulk publish was initiated.")
    @as("BulkPublishStartTime")
    bulkPublishStartTime: option<date>,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "GetBulkPublishDetailsCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BulkPublish = {
  type t
  @ocaml.doc("The input for the BulkPublish operation.")
  type request = {
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("The output for the BulkPublish operation.")
  type response = {
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new: request => t = "BulkPublishCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetCognitoEvents = {
  type t
  @ocaml.doc("<p>A request to configure Cognito Events\"</p>\"")
  type request = {
    @ocaml.doc("<p>The events to configure</p>") @as("Events") events: events,
    @ocaml.doc("<p>The Cognito Identity Pool to use when configuring Cognito Events</p>")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }

  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "SetCognitoEventsCommand"
  let make = (~events, ~identityPoolId, ()) => new({events: events, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetCognitoEvents = {
  type t
  @ocaml.doc("<p>A request for a list of the configured Cognito Events</p>")
  type request = {
    @ocaml.doc("<p>The Cognito Identity Pool ID for the request</p>") @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>The response from the GetCognitoEvents request</p>")
  type response = {
    @ocaml.doc("<p>The Cognito Events returned from the GetCognitoEvents request</p>") @as("Events")
    events: option<events>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "GetCognitoEventsCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityUsage = {
  type t
  @ocaml.doc("A request for information about the usage of
      an identity pool.")
  type request = {
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityId")
    identityId: identityId,
    @ocaml.doc("A name-spaced GUID (for
      example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
      generation is unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("The response to a successful
      DescribeIdentityUsage request.")
  type response = {
    @ocaml.doc("Usage information for the
      identity.")
    @as("IdentityUsage")
    identityUsage: option<identityUsage>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "DescribeIdentityUsageCommand"
  let make = (~identityId, ~identityPoolId, ()) =>
    new({identityId: identityId, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIdentityPoolUsage = {
  type t
  @ocaml.doc("A request for usage information about
      the identity pool.")
  type request = {
    @ocaml.doc("A name-spaced GUID (for
      example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID
      generation is unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("Response to a successful
      DescribeIdentityPoolUsage request.")
  type response = {
    @ocaml.doc("Information about the
      usage of the identity pool.")
    @as("IdentityPoolUsage")
    identityPoolUsage: option<identityPoolUsage>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "DescribeIdentityPoolUsageCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDataset = {
  type t
  @ocaml.doc("A request for meta data about a dataset (creation
      date, number of records, size) by owner and dataset name.")
  type request = {
    @ocaml.doc("A string of up to 128 characters.
      Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
      (dot).")
    @as("DatasetName")
    datasetName: datasetName,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityId")
    identityId: identityId,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("Response to a successful DescribeDataset
      request.")
  type response = {
    @ocaml.doc("Meta data for a collection of data for an
      identity. An identity can have multiple datasets. A dataset can be general or associated with
      a particular entity in an application (like a saved game). Datasets are automatically created
      if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value
      pairs.")
    @as("Dataset")
    dataset: option<dataset>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new: request => t = "DescribeDatasetCommand"
  let make = (~datasetName, ~identityId, ~identityPoolId, ()) =>
    new({datasetName: datasetName, identityId: identityId, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDataset = {
  type t
  @ocaml.doc("A request to delete the specific
      dataset.")
  type request = {
    @ocaml.doc("A string of up to 128 characters.
      Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
      (dot).")
    @as("DatasetName")
    datasetName: datasetName,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityId")
    identityId: identityId,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("Response to a successful DeleteDataset
      request.")
  type response = {
    @ocaml.doc("A collection of data for an identity pool.
      An identity pool can have multiple datasets. A dataset is per identity and can be general or
      associated with a particular entity in an application (like a saved game). Datasets are
      automatically created if they don't exist. Data is synced by dataset, and a dataset can hold
      up to 1MB of key-value pairs.")
    @as("Dataset")
    dataset: option<dataset>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new: request => t = "DeleteDatasetCommand"
  let make = (~datasetName, ~identityId, ~identityPoolId, ()) =>
    new({datasetName: datasetName, identityId: identityId, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRecords = {
  type t
  @ocaml.doc("A request to post updates to records or add and
      delete records for a dataset and user.")
  type request = {
    @ocaml.doc("Intended to supply a device ID that
      will populate the lastModifiedBy field referenced in other methods. The
         ClientContext field is not yet implemented.")
    @as("ClientContext")
    clientContext: option<clientContext>,
    @ocaml.doc("The SyncSessionToken returned by a
      previous call to ListRecords for this dataset and identity.")
    @as("SyncSessionToken")
    syncSessionToken: syncSessionToken,
    @ocaml.doc("A list of patch
      operations.")
    @as("RecordPatches")
    recordPatches: option<recordPatchList>,
    @ocaml.doc("<p>The unique ID generated for this device by Cognito.</p>") @as("DeviceId")
    deviceId: option<deviceId>,
    @ocaml.doc("A string of up to 128 characters.
      Allowed characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.'
      (dot).")
    @as("DatasetName")
    datasetName: datasetName,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityId")
    identityId: identityId,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("Returned for a successful
      UpdateRecordsRequest.")
  type response = {
    @ocaml.doc("A list of records that have been
      updated.")
    @as("Records")
    records: option<recordList>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new: request => t = "UpdateRecordsCommand"
  let make = (
    ~syncSessionToken,
    ~datasetName,
    ~identityId,
    ~identityPoolId,
    ~clientContext=?,
    ~recordPatches=?,
    ~deviceId=?,
    (),
  ) =>
    new({
      clientContext: clientContext,
      syncSessionToken: syncSessionToken,
      recordPatches: recordPatches,
      deviceId: deviceId,
      datasetName: datasetName,
      identityId: identityId,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetIdentityPoolConfiguration = {
  type t
  @ocaml.doc("<p>The input for the SetIdentityPoolConfiguration operation.</p>")
  type request = {
    @ocaml.doc("Options to apply to this identity pool for Amazon Cognito streams.")
    @as("CognitoStreams")
    cognitoStreams: option<cognitoStreams>,
    @ocaml.doc("<p>Options to apply to this identity pool for push synchronization.</p>")
    @as("PushSync")
    pushSync: option<pushSync>,
    @ocaml.doc("<p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
         Amazon Cognito. This is the ID of the pool to modify.</p>")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>The output for the SetIdentityPoolConfiguration operation</p>")
  type response = {
    @ocaml.doc("Options to apply to this identity pool for Amazon Cognito streams.")
    @as("CognitoStreams")
    cognitoStreams: option<cognitoStreams>,
    @ocaml.doc("<p>Options to apply to this identity pool for push synchronization.</p>")
    @as("PushSync")
    pushSync: option<pushSync>,
    @ocaml.doc("<p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
         Amazon Cognito.</p>")
    @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "SetIdentityPoolConfigurationCommand"
  let make = (~identityPoolId, ~cognitoStreams=?, ~pushSync=?, ()) =>
    new({cognitoStreams: cognitoStreams, pushSync: pushSync, identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecords = {
  type t
  @ocaml.doc("A request for a list of records.")
  type request = {
    @ocaml.doc("A token containing a session ID,
      identity ID, and expiration.")
    @as("SyncSessionToken")
    syncSessionToken: option<syncSessionToken>,
    @ocaml.doc("The maximum number of results to be
      returned.")
    @as("MaxResults")
    maxResults: option<integerString>,
    @ocaml.doc("A pagination token for obtaining the next
      page of results.")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("The last server sync count for this
      record.")
    @as("LastSyncCount")
    lastSyncCount: option<long>,
    @ocaml.doc("A string of up to 128 characters. Allowed
      characters are a-z, A-Z, 0-9, '_' (underscore), '-' (dash), and '.' (dot).")
    @as("DatasetName")
    datasetName: datasetName,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityId")
    identityId: identityId,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("Returned for a successful
      ListRecordsRequest.")
  type response = {
    @ocaml.doc("A token containing a session ID,
      identity ID, and expiration.")
    @as("SyncSessionToken")
    syncSessionToken: option<string_>,
    @ocaml.doc("A boolean value
      specifying whether to delete the dataset locally.")
    @as("DatasetDeletedAfterRequestedSyncCount")
    datasetDeletedAfterRequestedSyncCount: option<boolean_>,
    @ocaml.doc("Indicates whether the dataset
      exists.")
    @as("DatasetExists")
    datasetExists: option<boolean_>,
    @ocaml.doc("Names of merged
      datasets.")
    @as("MergedDatasetNames")
    mergedDatasetNames: option<mergedDatasetNameList>,
    @ocaml.doc("The user/device that made the last
      change to this record.")
    @as("LastModifiedBy")
    lastModifiedBy: option<string_>,
    @ocaml.doc("Server sync count for this
      dataset.")
    @as("DatasetSyncCount")
    datasetSyncCount: option<long>,
    @ocaml.doc("Total number of records.") @as("Count") count: option<integer_>,
    @ocaml.doc("A pagination token for obtaining the next
      page of results.")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("A list of all records.") @as("Records") records: option<recordList>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new: request => t = "ListRecordsCommand"
  let make = (
    ~datasetName,
    ~identityId,
    ~identityPoolId,
    ~syncSessionToken=?,
    ~maxResults=?,
    ~nextToken=?,
    ~lastSyncCount=?,
    (),
  ) =>
    new({
      syncSessionToken: syncSessionToken,
      maxResults: maxResults,
      nextToken: nextToken,
      lastSyncCount: lastSyncCount,
      datasetName: datasetName,
      identityId: identityId,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIdentityPoolUsage = {
  type t
  @ocaml.doc("A request for usage information on an
      identity pool.")
  type request = {
    @ocaml.doc("The maximum number of results to
      be returned.")
    @as("MaxResults")
    maxResults: option<integerString>,
    @ocaml.doc("A pagination token for obtaining
      the next page of results.")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @ocaml.doc("Returned for a successful
      ListIdentityPoolUsage request.")
  type response = {
    @ocaml.doc("A pagination token for obtaining
      the next page of results.")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("Total number of identities for the
      identity pool.")
    @as("Count")
    count: option<integer_>,
    @ocaml.doc("The maximum number of results to
      be returned.")
    @as("MaxResults")
    maxResults: option<integer_>,
    @ocaml.doc("Usage information for
      the identity pools.")
    @as("IdentityPoolUsages")
    identityPoolUsages: option<identityPoolUsageList>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "ListIdentityPoolUsageCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatasets = {
  type t
  @ocaml.doc("Request for a list of datasets for an
      identity.")
  type request = {
    @ocaml.doc("The maximum number of results to be
      returned.")
    @as("MaxResults")
    maxResults: option<integerString>,
    @ocaml.doc("A pagination token for obtaining the next
      page of results.")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityId")
    identityId: identityId,
    @ocaml.doc("A name-spaced GUID (for example,
      us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. GUID generation is
      unique within a region.")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("Returned for a successful ListDatasets
      request.")
  type response = {
    @ocaml.doc("A pagination token for obtaining the next
      page of results.")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("Number of datasets returned.") @as("Count") count: option<integer_>,
    @ocaml.doc("A set of datasets.") @as("Datasets") datasets: option<datasetList>,
  }
  @module("@aws-sdk/client-cognito-sync") @new external new: request => t = "ListDatasetsCommand"
  let make = (~identityId, ~identityPoolId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      identityId: identityId,
      identityPoolId: identityPoolId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIdentityPoolConfiguration = {
  type t
  @ocaml.doc("<p>The input for the GetIdentityPoolConfiguration operation.</p>")
  type request = {
    @ocaml.doc("<p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
         Amazon Cognito. This is the ID of the pool for which to return a configuration.</p>")
    @as("IdentityPoolId")
    identityPoolId: identityPoolId,
  }
  @ocaml.doc("<p>The output for the GetIdentityPoolConfiguration operation.</p>")
  type response = {
    @ocaml.doc("Options to apply to this identity pool for Amazon Cognito streams.")
    @as("CognitoStreams")
    cognitoStreams: option<cognitoStreams>,
    @ocaml.doc("<p>Options to apply to this identity pool for push synchronization.</p>")
    @as("PushSync")
    pushSync: option<pushSync>,
    @ocaml.doc("<p>A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by
         Amazon Cognito.</p>")
    @as("IdentityPoolId")
    identityPoolId: option<identityPoolId>,
  }
  @module("@aws-sdk/client-cognito-sync") @new
  external new: request => t = "GetIdentityPoolConfigurationCommand"
  let make = (~identityPoolId, ()) => new({identityPoolId: identityPoolId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
