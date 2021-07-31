type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type resourceId = string
type volumeSizeInGB = int;
type variableName = string
type unlimitedVersioning = bool;
type unlimitedRetentionPeriod = bool;
type amazonawsTimestamp = Js.Date.t;
type timeExpression = string
type tagValue = string
type tagKey = string
type stringValue = string
type startTime = Js.Date.t;
type sqlQuery = string
type sizeInBytes = float;
type sessionTimeoutInMinutes = int;
type serviceManagedDatastoreS3StorageSummary = unit
type serviceManagedDatastoreS3Storage = unit
type serviceManagedChannelS3StorageSummary = unit
type serviceManagedChannelS3Storage = unit
type scheduleExpression = string
type s3PathChannelMessage = string
type s3KeyPrefix = string
type roleArn = string
type retentionPeriodInDays = int;
type resourceArn2 = string
type resourceArn = string
type reprocessingStatus = [@as("FAILED") #FAILED | @as("CANCELLED") #CANCELLED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING]
type reprocessingId = string
type reason = string
type presignedURI = string
type pipelineName = string
type pipelineArn = string
type outputFileName = string
type offsetSeconds = int;
type nextToken = string
type messagePayload = NodeJs.Buffer.t;
type messageId = string
type maxVersions = int;
type maxResults = int;
type maxMessages = int;
type mathExpression = string
type loggingLevel = [@as("ERROR") #ERROR]
type loggingEnabled = bool;
type logResult = string
type lateDataRuleName = string
type lambdaName = string
type jsonConfiguration = unit
type iotEventsInputName = string
type includeStatisticsFlag = bool;
type image = string
type glueTableName = string
type glueDatabaseName = string
type filterExpression = string
type fileFormatType = [@as("PARQUET") #PARQUET | @as("JSON") #JSON]
type errorMessage = string
type errorCode = string
type entryName = string
type endTime = Js.Date.t;
type doubleValue = float;
type datastoreStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type datastoreName = string
type datastoreArn = string
type datasetStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type datasetName = string
type datasetContentVersion = string
type datasetContentState = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("CREATING") #CREATING]
type datasetArn = string
type datasetActionType = [@as("CONTAINER") #CONTAINER | @as("QUERY") #QUERY]
type datasetActionName = string
type computeType = [@as("ACU_2") #ACU_2 | @as("ACU_1") #ACU_1]
type columnName = string
type columnDataType = string
type channelStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type channelName = string
type channelArn = string
type bucketName = string
type bucketKeyExpression = string
type attributeName = string
type activityName = string
type activityBatchSize = int;
type versioningConfiguration = {
@as("maxVersions") maxVersions: maxVersions,
@as("unlimited") unlimited: unlimitedVersioning
}
type triggeringDataset = {
@as("name") name: option<datasetName>
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type schedule = {
@as("expression") expression: scheduleExpression
}
type s3PathChannelMessages = array<s3PathChannelMessage>
type retentionPeriod = {
@as("numberOfDays") numberOfDays: retentionPeriodInDays,
@as("unlimited") unlimited: unlimitedRetentionPeriod
}
type resourceConfiguration = {
@as("volumeSizeInGB") volumeSizeInGB: option<volumeSizeInGB>,
@as("computeType") computeType: option<computeType>
}
type reprocessingSummary = {
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: reprocessingStatus,
@as("id") id: reprocessingId
}
type outputFileUriValue = {
@as("fileName") fileName: option<outputFileName>
}
type messagePayloads = array<messagePayload>
type message = {
@as("payload") payload: option<messagePayload>,
@as("messageId") messageId: option<messageId>
}
type mathActivity = {
@as("next") next: activityName,
@as("math") math: option<mathExpression>,
@as("attribute") attribute: option<attributeName>,
@as("name") name: option<activityName>
}
type loggingOptions = {
@as("enabled") enabled: option<loggingEnabled>,
@as("level") level: option<loggingLevel>,
@as("roleArn") roleArn: option<roleArn>
}
type lambdaActivity = {
@as("next") next: activityName,
@as("batchSize") batchSize: option<activityBatchSize>,
@as("lambdaName") lambdaName: option<lambdaName>,
@as("name") name: option<activityName>
}
type iotEventsDestinationConfiguration = {
@as("roleArn") roleArn: option<roleArn>,
@as("inputName") inputName: option<iotEventsInputName>
}
type glueConfiguration = {
@as("databaseName") databaseName: option<glueDatabaseName>,
@as("tableName") tableName: option<glueTableName>
}
type filterActivity = {
@as("next") next: activityName,
@as("filter") filter: option<filterExpression>,
@as("name") name: option<activityName>
}
type estimatedResourceSize = {
@as("estimatedOn") estimatedOn: amazonawsTimestamp,
@as("estimatedSizeInBytes") estimatedSizeInBytes: sizeInBytes
}
type deviceShadowEnrichActivity = {
@as("next") next: activityName,
@as("roleArn") roleArn: option<roleArn>,
@as("thingName") thingName: option<attributeName>,
@as("attribute") attribute: option<attributeName>,
@as("name") name: option<activityName>
}
type deviceRegistryEnrichActivity = {
@as("next") next: activityName,
@as("roleArn") roleArn: option<roleArn>,
@as("thingName") thingName: option<attributeName>,
@as("attribute") attribute: option<attributeName>,
@as("name") name: option<activityName>
}
type deltaTimeSessionWindowConfiguration = {
@as("timeoutInMinutes") timeoutInMinutes: option<sessionTimeoutInMinutes>
}
type deltaTime = {
@as("timeExpression") timeExpression: option<timeExpression>,
@as("offsetSeconds") offsetSeconds: option<offsetSeconds>
}
type datastoreActivity = {
@as("datastoreName") datastoreName: option<datastoreName>,
@as("name") name: option<activityName>
}
type datasetEntry = {
@as("dataURI") dataURI: presignedURI,
@as("entryName") entryName: entryName
}
type datasetContentVersionValue = {
@as("datasetName") datasetName: option<datasetName>
}
type datasetContentStatus = {
@as("reason") reason: reason,
@as("state") state: datasetContentState
}
type datasetActionSummary = {
@as("actionType") actionType: datasetActionType,
@as("actionName") actionName: datasetActionName
}
type customerManagedDatastoreS3StorageSummary = {
@as("roleArn") roleArn: roleArn,
@as("keyPrefix") keyPrefix: s3KeyPrefix,
@as("bucket") bucket: bucketName
}
type customerManagedDatastoreS3Storage = {
@as("roleArn") roleArn: option<roleArn>,
@as("keyPrefix") keyPrefix: s3KeyPrefix,
@as("bucket") bucket: option<bucketName>
}
type customerManagedChannelS3StorageSummary = {
@as("roleArn") roleArn: roleArn,
@as("keyPrefix") keyPrefix: s3KeyPrefix,
@as("bucket") bucket: bucketName
}
type customerManagedChannelS3Storage = {
@as("roleArn") roleArn: option<roleArn>,
@as("keyPrefix") keyPrefix: s3KeyPrefix,
@as("bucket") bucket: option<bucketName>
}
type column = {
@as("type") type_: option<columnDataType>,
@as("name") name: option<columnName>
}
type channelActivity = {
@as("next") next: activityName,
@as("channelName") channelName: option<channelName>,
@as("name") name: option<activityName>
}
type batchPutMessageErrorEntry = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("messageId") messageId: messageId
}
type attributeNames = array<attributeName>
type attributeNameMapping = Js.Dict.t< attributeName>
type variable = {
@as("outputFileUriValue") outputFileUriValue: outputFileUriValue,
@as("datasetContentVersionValue") datasetContentVersionValue: datasetContentVersionValue,
@as("doubleValue") doubleValue: doubleValue,
@as("stringValue") stringValue: stringValue,
@as("name") name: option<variableName>
}
type tagList = array<tag>
type selectAttributesActivity = {
@as("next") next: activityName,
@as("attributes") attributes: option<attributeNames>,
@as("name") name: option<activityName>
}
type s3DestinationConfiguration = {
@as("roleArn") roleArn: option<roleArn>,
@as("glueConfiguration") glueConfiguration: glueConfiguration,
@as("key") key: option<bucketKeyExpression>,
@as("bucket") bucket: option<bucketName>
}
type reprocessingSummaries = array<reprocessingSummary>
type removeAttributesActivity = {
@as("next") next: activityName,
@as("attributes") attributes: option<attributeNames>,
@as("name") name: option<activityName>
}
type queryFilter = {
@as("deltaTime") deltaTime: deltaTime
}
type messages = array<message>
type lateDataRuleConfiguration = {
@as("deltaTimeSessionWindowConfiguration") deltaTimeSessionWindowConfiguration: deltaTimeSessionWindowConfiguration
}
type datastoreStorageSummary = {
@as("customerManagedS3") customerManagedS3: customerManagedDatastoreS3StorageSummary,
@as("serviceManagedS3") serviceManagedS3: serviceManagedDatastoreS3StorageSummary
}
type datastoreStorage = CustomerManagedS3(customerManagedDatastoreS3Storage) | ServiceManagedS3(serviceManagedDatastoreS3Storage);
type datastoreStatistics = {
@as("size") size: estimatedResourceSize
}
type datasetTrigger = {
@as("dataset") dataset: triggeringDataset,
@as("schedule") schedule: schedule
}
type datasetEntries = array<datasetEntry>
type datasetContentSummary = {
@as("completionTime") completionTime: amazonawsTimestamp,
@as("scheduleTime") scheduleTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: datasetContentStatus,
@as("version") version: datasetContentVersion
}
type datasetActionSummaries = array<datasetActionSummary>
type columns = array<column>
type channelStorageSummary = {
@as("customerManagedS3") customerManagedS3: customerManagedChannelS3StorageSummary,
@as("serviceManagedS3") serviceManagedS3: serviceManagedChannelS3StorageSummary
}
type channelStorage = {
@as("customerManagedS3") customerManagedS3: customerManagedChannelS3Storage,
@as("serviceManagedS3") serviceManagedS3: serviceManagedChannelS3Storage
}
type channelStatistics = {
@as("size") size: estimatedResourceSize
}
type channelMessages = {
@as("s3Paths") s3Paths: s3PathChannelMessages
}
type batchPutMessageErrorEntries = array<batchPutMessageErrorEntry>
type addAttributesActivity = {
@as("next") next: activityName,
@as("attributes") attributes: option<attributeNameMapping>,
@as("name") name: option<activityName>
}
type variables = array<variable>
type schemaDefinition = {
@as("columns") columns: columns
}
type queryFilters = array<queryFilter>
type pipelineSummary = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("reprocessingSummaries") reprocessingSummaries: reprocessingSummaries,
@as("pipelineName") pipelineName: pipelineName
}
type pipelineActivity = {
@as("deviceShadowEnrich") deviceShadowEnrich: deviceShadowEnrichActivity,
@as("deviceRegistryEnrich") deviceRegistryEnrich: deviceRegistryEnrichActivity,
@as("math") math: mathActivity,
@as("filter") filter: filterActivity,
@as("selectAttributes") selectAttributes: selectAttributesActivity,
@as("removeAttributes") removeAttributes: removeAttributesActivity,
@as("addAttributes") addAttributes: addAttributesActivity,
@as("datastore") datastore: datastoreActivity,
@as("lambda") lambda: lambdaActivity,
@as("channel") channel: channelActivity
}
type lateDataRule = {
@as("ruleConfiguration") ruleConfiguration: option<lateDataRuleConfiguration>,
@as("ruleName") ruleName: lateDataRuleName
}
type datastoreSummary = {
@as("fileFormatType") fileFormatType: fileFormatType,
@as("lastMessageArrivalTime") lastMessageArrivalTime: amazonawsTimestamp,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: datastoreStatus,
@as("datastoreStorage") datastoreStorage: datastoreStorageSummary,
@as("datastoreName") datastoreName: datastoreName
}
type datasetTriggers = array<datasetTrigger>
type datasetContentSummaries = array<datasetContentSummary>
type datasetContentDeliveryDestination = {
@as("s3DestinationConfiguration") s3DestinationConfiguration: s3DestinationConfiguration,
@as("iotEventsDestinationConfiguration") iotEventsDestinationConfiguration: iotEventsDestinationConfiguration
}
type channelSummary = {
@as("lastMessageArrivalTime") lastMessageArrivalTime: amazonawsTimestamp,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: channelStatus,
@as("channelStorage") channelStorage: channelStorageSummary,
@as("channelName") channelName: channelName
}
type channel = {
@as("lastMessageArrivalTime") lastMessageArrivalTime: amazonawsTimestamp,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("status") status: channelStatus,
@as("arn") arn: channelArn,
@as("storage") storage: channelStorage,
@as("name") name: channelName
}
type sqlQueryDatasetAction = {
@as("filters") filters: queryFilters,
@as("sqlQuery") sqlQuery: option<sqlQuery>
}
type pipelineSummaries = array<pipelineSummary>
type pipelineActivities = array<pipelineActivity>
type parquetConfiguration = {
@as("schemaDefinition") schemaDefinition: schemaDefinition
}
type lateDataRules = array<lateDataRule>
type datastoreSummaries = array<datastoreSummary>
type datasetSummary = {
@as("actions") actions: datasetActionSummaries,
@as("triggers") triggers: datasetTriggers,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: datasetStatus,
@as("datasetName") datasetName: datasetName
}
type datasetContentDeliveryRule = {
@as("destination") destination: option<datasetContentDeliveryDestination>,
@as("entryName") entryName: entryName
}
type containerDatasetAction = {
@as("variables") variables: variables,
@as("resourceConfiguration") resourceConfiguration: option<resourceConfiguration>,
@as("executionRoleArn") executionRoleArn: option<roleArn>,
@as("image") image: option<image>
}
type channelSummaries = array<channelSummary>
type pipeline = {
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("reprocessingSummaries") reprocessingSummaries: reprocessingSummaries,
@as("activities") activities: pipelineActivities,
@as("arn") arn: pipelineArn,
@as("name") name: pipelineName
}
type fileFormatConfiguration = {
@as("parquetConfiguration") parquetConfiguration: parquetConfiguration,
@as("jsonConfiguration") jsonConfiguration: jsonConfiguration
}
type datasetSummaries = array<datasetSummary>
type datasetContentDeliveryRules = array<datasetContentDeliveryRule>
type datasetAction = {
@as("containerAction") containerAction: containerDatasetAction,
@as("queryAction") queryAction: sqlQueryDatasetAction,
@as("actionName") actionName: datasetActionName
}
type datastore = {
@as("fileFormatConfiguration") fileFormatConfiguration: fileFormatConfiguration,
@as("lastMessageArrivalTime") lastMessageArrivalTime: amazonawsTimestamp,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("status") status: datastoreStatus,
@as("arn") arn: datastoreArn,
@as("storage") storage: datastoreStorage,
@as("name") name: datastoreName
}
type datasetActions = array<datasetAction>
type dataset = {
@as("lateDataRules") lateDataRules: lateDataRules,
@as("versioningConfiguration") versioningConfiguration: versioningConfiguration,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("lastUpdateTime") lastUpdateTime: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: datasetStatus,
@as("contentDeliveryRules") contentDeliveryRules: datasetContentDeliveryRules,
@as("triggers") triggers: datasetTriggers,
@as("actions") actions: datasetActions,
@as("arn") arn: datasetArn,
@as("name") name: datasetName
}
type clientType;
@module("@aws-sdk/client-iotanalytics") @new external createClient: unit => clientType = "IoTAnalyticsClient";
module DeletePipeline = {
  type t;
  type request = {
@as("pipelineName") pipelineName: option<pipelineName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeletePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatastore = {
  type t;
  type request = {
@as("datastoreName") datastoreName: option<datastoreName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteDatastoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatasetContent = {
  type t;
  type request = {
@as("versionId") versionId: datasetContentVersion,
@as("datasetName") datasetName: option<datasetName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteDatasetContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
@as("datasetName") datasetName: option<datasetName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
@as("channelName") channelName: option<channelName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateDatasetContent = {
  type t;
  type request = {
@as("versionId") versionId: datasetContentVersion,
@as("datasetName") datasetName: option<datasetName>
}
  type response = {
@as("versionId") versionId: datasetContentVersion
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateDatasetContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelPipelineReprocessing = {
  type t;
  type request = {
@as("reprocessingId") reprocessingId: option<reprocessingId>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = unit
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CancelPipelineReprocessingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SampleChannelData = {
  type t;
  type request = {
@as("endTime") endTime: endTime,
@as("startTime") startTime: startTime,
@as("maxMessages") maxMessages: maxMessages,
@as("channelName") channelName: option<channelName>
}
  type response = {
@as("payloads") payloads: messagePayloads
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "SampleChannelDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLoggingOptions = {
  type t;
  type request = {
@as("loggingOptions") loggingOptions: option<loggingOptions>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "PutLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeLoggingOptions = {
  type t;
  type request = unit
  type response = {
@as("loggingOptions") loggingOptions: loggingOptions
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("channelStorage") channelStorage: channelStorage,
@as("channelName") channelName: option<channelName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartPipelineReprocessing = {
  type t;
  type request = {
@as("channelMessages") channelMessages: channelMessages,
@as("endTime") endTime: endTime,
@as("startTime") startTime: startTime,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("reprocessingId") reprocessingId: reprocessingId
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "StartPipelineReprocessingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDatasetContent = {
  type t;
  type request = {
@as("versionId") versionId: datasetContentVersion,
@as("datasetName") datasetName: option<datasetName>
}
  type response = {
@as("status") status: datasetContentStatus,
@as("timestamp") timestamp: amazonawsTimestamp,
@as("entries") entries: datasetEntries
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "GetDatasetContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("channelStorage") channelStorage: channelStorage,
@as("channelName") channelName: option<channelName>
}
  type response = {
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("channelArn") channelArn: channelArn,
@as("channelName") channelName: channelName
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchPutMessage = {
  type t;
  type request = {
@as("messages") messages: option<messages>,
@as("channelName") channelName: option<channelName>
}
  type response = {
@as("batchPutMessageErrorEntries") batchPutMessageErrorEntries: batchPutMessageErrorEntries
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "BatchPutMessageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RunPipelineActivity = {
  type t;
  type request = {
@as("payloads") payloads: option<messagePayloads>,
@as("pipelineActivity") pipelineActivity: option<pipelineActivity>
}
  type response = {
@as("logResult") logResult: logResult,
@as("payloads") payloads: messagePayloads
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "RunPipelineActivityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatasetContents = {
  type t;
  type request = {
@as("scheduledBefore") scheduledBefore: amazonawsTimestamp,
@as("scheduledOnOrAfter") scheduledOnOrAfter: amazonawsTimestamp,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("datasetName") datasetName: option<datasetName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("datasetContentSummaries") datasetContentSummaries: datasetContentSummaries
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListDatasetContentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
@as("includeStatistics") includeStatistics: includeStatisticsFlag,
@as("channelName") channelName: option<channelName>
}
  type response = {
@as("statistics") statistics: channelStatistics,
@as("channel") channel: channel
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePipeline = {
  type t;
  type request = {
@as("pipelineActivities") pipelineActivities: option<pipelineActivities>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListPipelines = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("pipelineSummaries") pipelineSummaries: pipelineSummaries
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListPipelinesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatastores = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("datastoreSummaries") datastoreSummaries: datastoreSummaries
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListDatastoresCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChannels = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("channelSummaries") channelSummaries: channelSummaries
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePipeline = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("pipelineActivities") pipelineActivities: option<pipelineActivities>,
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("pipelineArn") pipelineArn: pipelineArn,
@as("pipelineName") pipelineName: pipelineName
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDatastore = {
  type t;
  type request = {
@as("fileFormatConfiguration") fileFormatConfiguration: fileFormatConfiguration,
@as("datastoreStorage") datastoreStorage: datastoreStorage,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("datastoreName") datastoreName: option<datastoreName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdateDatastoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListDatasets = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("datasetSummaries") datasetSummaries: datasetSummaries
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListDatasetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePipeline = {
  type t;
  type request = {
@as("pipelineName") pipelineName: option<pipelineName>
}
  type response = {
@as("pipeline") pipeline: pipeline
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatastore = {
  type t;
  type request = {
@as("fileFormatConfiguration") fileFormatConfiguration: fileFormatConfiguration,
@as("tags") tags: tagList,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("datastoreStorage") datastoreStorage: datastoreStorage,
@as("datastoreName") datastoreName: option<datastoreName>
}
  type response = {
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("datastoreArn") datastoreArn: datastoreArn,
@as("datastoreName") datastoreName: datastoreName
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateDatastoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDataset = {
  type t;
  type request = {
@as("lateDataRules") lateDataRules: lateDataRules,
@as("versioningConfiguration") versioningConfiguration: versioningConfiguration,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("contentDeliveryRules") contentDeliveryRules: datasetContentDeliveryRules,
@as("triggers") triggers: datasetTriggers,
@as("actions") actions: option<datasetActions>,
@as("datasetName") datasetName: option<datasetName>
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeDatastore = {
  type t;
  type request = {
@as("includeStatistics") includeStatistics: includeStatisticsFlag,
@as("datastoreName") datastoreName: option<datastoreName>
}
  type response = {
@as("statistics") statistics: datastoreStatistics,
@as("datastore") datastore: datastore
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeDatastoreCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
@as("lateDataRules") lateDataRules: lateDataRules,
@as("tags") tags: tagList,
@as("versioningConfiguration") versioningConfiguration: versioningConfiguration,
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("contentDeliveryRules") contentDeliveryRules: datasetContentDeliveryRules,
@as("triggers") triggers: datasetTriggers,
@as("actions") actions: option<datasetActions>,
@as("datasetName") datasetName: option<datasetName>
}
  type response = {
@as("retentionPeriod") retentionPeriod: retentionPeriod,
@as("datasetArn") datasetArn: datasetArn,
@as("datasetName") datasetName: datasetName
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
@as("datasetName") datasetName: option<datasetName>
}
  type response = {
@as("dataset") dataset: dataset
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeDatasetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
