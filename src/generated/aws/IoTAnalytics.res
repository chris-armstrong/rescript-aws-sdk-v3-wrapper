type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type long = float
type resourceId = string
type volumeSizeInGB = int
type variableName = string
type unlimitedVersioning = bool
type unlimitedRetentionPeriod = bool
type timestamp_ = Js.Date.t;
type timeExpression = string
type tagValue = string
type tagKey = string
type stringValue = string
type startTime = Js.Date.t;
type sqlQuery = string
type sizeInBytes = float
type sessionTimeoutInMinutes = int
type serviceManagedDatastoreS3StorageSummary = unit
type serviceManagedDatastoreS3Storage = unit
type serviceManagedChannelS3StorageSummary = unit
type serviceManagedChannelS3Storage = unit
type scheduleExpression = string
type s3PathChannelMessage = string
type s3KeyPrefix = string
type roleArn = string
type retentionPeriodInDays = int
type resourceArn2 = string
type resourceArn = string
type reprocessingStatus = [@as("FAILED") #FAILED | @as("CANCELLED") #CANCELLED | @as("SUCCEEDED") #SUCCEEDED | @as("RUNNING") #RUNNING]
type reprocessingId = string
type reason = string
type presignedURI = string
type pipelineName = string
type pipelineArn = string
type outputFileName = string
type offsetSeconds = int
type nextToken = string
type messagePayload = NodeJs.Buffer.t
type messageId = string
type maxVersions = int
type maxResults = int
type maxMessages = int
type mathExpression = string
type loggingLevel = [@as("ERROR") #ERROR]
type loggingEnabled = bool
type logResult = string
type lateDataRuleName = string
type lambdaName = string
type jsonConfiguration = unit
type iotEventsInputName = string
type includeStatisticsFlag = bool
type image = string
type glueTableName = string
type glueDatabaseName = string
type filterExpression = string
type fileFormatType = [@as("PARQUET") #PARQUET | @as("JSON") #JSON]
type errorMessage = string
type errorCode = string
type entryName = string
type endTime = Js.Date.t;
type doubleValue = float
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
type computeType = [@as("ACU_2") #ACU2 | @as("ACU_1") #ACU1]
type columnName = string
type columnDataType = string
type channelStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type channelName = string
type channelArn = string
type bucketName = string
type bucketKeyExpression = string
type attributeName = string
type activityName = string
type activityBatchSize = int
type versioningConfiguration = {
maxVersions: option<maxVersions>,
unlimited: option<unlimitedVersioning>
}
type triggeringDataset = {
name: datasetName
}
type tagKeyList = array<tagKey>
type tag = {
value: tagValue,
key: tagKey
}
type schedule = {
expression: option<scheduleExpression>
}
type s3PathChannelMessages = array<s3PathChannelMessage>
type retentionPeriod = {
numberOfDays: option<retentionPeriodInDays>,
unlimited: option<unlimitedRetentionPeriod>
}
type resourceConfiguration = {
volumeSizeInGB: volumeSizeInGB,
computeType: computeType
}
type reprocessingSummary = {
creationTime: option<timestamp_>,
status: option<reprocessingStatus>,
id: option<reprocessingId>
}
type outputFileUriValue = {
fileName: outputFileName
}
type messagePayloads = array<messagePayload>
type message = {
payload: messagePayload,
messageId: messageId
}
type mathActivity = {
next: option<activityName>,
math: mathExpression,
attribute: attributeName,
name: activityName
}
type loggingOptions = {
enabled: loggingEnabled,
level: loggingLevel,
roleArn: roleArn
}
type lambdaActivity = {
next: option<activityName>,
batchSize: activityBatchSize,
lambdaName: lambdaName,
name: activityName
}
type iotEventsDestinationConfiguration = {
roleArn: roleArn,
inputName: iotEventsInputName
}
type glueConfiguration = {
databaseName: glueDatabaseName,
tableName: glueTableName
}
type filterActivity = {
next: option<activityName>,
filter: filterExpression,
name: activityName
}
type estimatedResourceSize = {
estimatedOn: option<timestamp_>,
estimatedSizeInBytes: option<sizeInBytes>
}
type deviceShadowEnrichActivity = {
next: option<activityName>,
roleArn: roleArn,
thingName: attributeName,
attribute: attributeName,
name: activityName
}
type deviceRegistryEnrichActivity = {
next: option<activityName>,
roleArn: roleArn,
thingName: attributeName,
attribute: attributeName,
name: activityName
}
type deltaTimeSessionWindowConfiguration = {
timeoutInMinutes: sessionTimeoutInMinutes
}
type deltaTime = {
timeExpression: timeExpression,
offsetSeconds: offsetSeconds
}
type datastoreActivity = {
datastoreName: datastoreName,
name: activityName
}
type datasetEntry = {
dataURI: option<presignedURI>,
entryName: option<entryName>
}
type datasetContentVersionValue = {
datasetName: datasetName
}
type datasetContentStatus = {
reason: option<reason>,
state: option<datasetContentState>
}
type datasetActionSummary = {
actionType: option<datasetActionType>,
actionName: option<datasetActionName>
}
type customerManagedDatastoreS3StorageSummary = {
roleArn: option<roleArn>,
keyPrefix: option<s3KeyPrefix>,
bucket: option<bucketName>
}
type customerManagedDatastoreS3Storage = {
roleArn: roleArn,
keyPrefix: option<s3KeyPrefix>,
bucket: bucketName
}
type customerManagedChannelS3StorageSummary = {
roleArn: option<roleArn>,
keyPrefix: option<s3KeyPrefix>,
bucket: option<bucketName>
}
type customerManagedChannelS3Storage = {
roleArn: roleArn,
keyPrefix: option<s3KeyPrefix>,
bucket: bucketName
}
type column = {
@as("type") type_: columnDataType,
name: columnName
}
type channelActivity = {
next: option<activityName>,
channelName: channelName,
name: activityName
}
type batchPutMessageErrorEntry = {
errorMessage: option<errorMessage>,
errorCode: option<errorCode>,
messageId: option<messageId>
}
type attributeNames = array<attributeName>
type attributeNameMapping = Js.Dict.t< attributeName>
type variable = {
outputFileUriValue: option<outputFileUriValue>,
datasetContentVersionValue: option<datasetContentVersionValue>,
doubleValue: option<doubleValue>,
stringValue: option<stringValue>,
name: variableName
}
type tagList_ = array<tag>
type selectAttributesActivity = {
next: option<activityName>,
attributes: attributeNames,
name: activityName
}
type s3DestinationConfiguration = {
roleArn: roleArn,
glueConfiguration: option<glueConfiguration>,
key: bucketKeyExpression,
bucket: bucketName
}
type reprocessingSummaries = array<reprocessingSummary>
type removeAttributesActivity = {
next: option<activityName>,
attributes: attributeNames,
name: activityName
}
type queryFilter = {
deltaTime: option<deltaTime>
}
type messages = array<message>
type lateDataRuleConfiguration = {
deltaTimeSessionWindowConfiguration: option<deltaTimeSessionWindowConfiguration>
}
type datastoreStorageSummary = {
customerManagedS3: option<customerManagedDatastoreS3StorageSummary>,
serviceManagedS3: option<serviceManagedDatastoreS3StorageSummary>
}
type datastoreStorage = CustomerManagedS3(customerManagedDatastoreS3Storage) | ServiceManagedS3(serviceManagedDatastoreS3Storage);
type datastoreStatistics = {
size: option<estimatedResourceSize>
}
type datasetTrigger = {
dataset: option<triggeringDataset>,
schedule: option<schedule>
}
type datasetEntries = array<datasetEntry>
type datasetContentSummary = {
completionTime: option<timestamp_>,
scheduleTime: option<timestamp_>,
creationTime: option<timestamp_>,
status: option<datasetContentStatus>,
version: option<datasetContentVersion>
}
type datasetActionSummaries = array<datasetActionSummary>
type columns = array<column>
type channelStorageSummary = {
customerManagedS3: option<customerManagedChannelS3StorageSummary>,
serviceManagedS3: option<serviceManagedChannelS3StorageSummary>
}
type channelStorage = {
customerManagedS3: option<customerManagedChannelS3Storage>,
serviceManagedS3: option<serviceManagedChannelS3Storage>
}
type channelStatistics = {
size: option<estimatedResourceSize>
}
type channelMessages = {
s3Paths: option<s3PathChannelMessages>
}
type batchPutMessageErrorEntries = array<batchPutMessageErrorEntry>
type addAttributesActivity = {
next: option<activityName>,
attributes: attributeNameMapping,
name: activityName
}
type variables = array<variable>
type schemaDefinition = {
columns: option<columns>
}
type queryFilters = array<queryFilter>
type pipelineSummary = {
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
reprocessingSummaries: option<reprocessingSummaries>,
pipelineName: option<pipelineName>
}
type pipelineActivity = {
deviceShadowEnrich: option<deviceShadowEnrichActivity>,
deviceRegistryEnrich: option<deviceRegistryEnrichActivity>,
math: option<mathActivity>,
filter: option<filterActivity>,
selectAttributes: option<selectAttributesActivity>,
removeAttributes: option<removeAttributesActivity>,
addAttributes: option<addAttributesActivity>,
datastore: option<datastoreActivity>,
lambda: option<lambdaActivity>,
channel: option<channelActivity>
}
type lateDataRule = {
ruleConfiguration: lateDataRuleConfiguration,
ruleName: option<lateDataRuleName>
}
type datastoreSummary = {
fileFormatType: option<fileFormatType>,
lastMessageArrivalTime: option<timestamp_>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
status: option<datastoreStatus>,
datastoreStorage: option<datastoreStorageSummary>,
datastoreName: option<datastoreName>
}
type datasetTriggers = array<datasetTrigger>
type datasetContentSummaries = array<datasetContentSummary>
type datasetContentDeliveryDestination = {
s3DestinationConfiguration: option<s3DestinationConfiguration>,
iotEventsDestinationConfiguration: option<iotEventsDestinationConfiguration>
}
type channelSummary = {
lastMessageArrivalTime: option<timestamp_>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
status: option<channelStatus>,
channelStorage: option<channelStorageSummary>,
channelName: option<channelName>
}
type channel = {
lastMessageArrivalTime: option<timestamp_>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
retentionPeriod: option<retentionPeriod>,
status: option<channelStatus>,
arn: option<channelArn>,
storage: option<channelStorage>,
name: option<channelName>
}
type sqlQueryDatasetAction = {
filters: option<queryFilters>,
sqlQuery: sqlQuery
}
type pipelineSummaries = array<pipelineSummary>
type pipelineActivities = array<pipelineActivity>
type parquetConfiguration = {
schemaDefinition: option<schemaDefinition>
}
type lateDataRules = array<lateDataRule>
type datastoreSummaries = array<datastoreSummary>
type datasetSummary = {
actions: option<datasetActionSummaries>,
triggers: option<datasetTriggers>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
status: option<datasetStatus>,
datasetName: option<datasetName>
}
type datasetContentDeliveryRule = {
destination: datasetContentDeliveryDestination,
entryName: option<entryName>
}
type containerDatasetAction = {
variables: option<variables>,
resourceConfiguration: resourceConfiguration,
executionRoleArn: roleArn,
image: image
}
type channelSummaries = array<channelSummary>
type pipeline = {
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
reprocessingSummaries: option<reprocessingSummaries>,
activities: option<pipelineActivities>,
arn: option<pipelineArn>,
name: option<pipelineName>
}
type fileFormatConfiguration = {
parquetConfiguration: option<parquetConfiguration>,
jsonConfiguration: option<jsonConfiguration>
}
type datasetSummaries = array<datasetSummary>
type datasetContentDeliveryRules = array<datasetContentDeliveryRule>
type datasetAction = {
containerAction: option<containerDatasetAction>,
queryAction: option<sqlQueryDatasetAction>,
actionName: option<datasetActionName>
}
type datastore = {
fileFormatConfiguration: option<fileFormatConfiguration>,
lastMessageArrivalTime: option<timestamp_>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
retentionPeriod: option<retentionPeriod>,
status: option<datastoreStatus>,
arn: option<datastoreArn>,
storage: option<datastoreStorage>,
name: option<datastoreName>
}
type datasetActions = array<datasetAction>
type dataset = {
lateDataRules: option<lateDataRules>,
versioningConfiguration: option<versioningConfiguration>,
retentionPeriod: option<retentionPeriod>,
lastUpdateTime: option<timestamp_>,
creationTime: option<timestamp_>,
status: option<datasetStatus>,
contentDeliveryRules: option<datasetContentDeliveryRules>,
triggers: option<datasetTriggers>,
actions: option<datasetActions>,
arn: option<datasetArn>,
name: option<datasetName>
}
type awsServiceClient;
@module("@aws-sdk/client-iotanalytics") @new external createClient: unit => awsServiceClient = "IoTAnalyticsClient";
module DeletePipeline = {
  type t;
  type request = {
pipelineName: pipelineName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeletePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatastore = {
  type t;
  type request = {
datastoreName: datastoreName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteDatastoreCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatasetContent = {
  type t;
  type request = {
versionId: option<datasetContentVersion>,
datasetName: datasetName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteDatasetContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDataset = {
  type t;
  type request = {
datasetName: datasetName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteDatasetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteChannel = {
  type t;
  type request = {
channelName: channelName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DeleteChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateDatasetContent = {
  type t;
  type request = {
versionId: option<datasetContentVersion>,
datasetName: datasetName
}
  type response = {
versionId: option<datasetContentVersion>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateDatasetContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelPipelineReprocessing = {
  type t;
  type request = {
reprocessingId: reprocessingId,
pipelineName: pipelineName
}
  type response = unit
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CancelPipelineReprocessingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SampleChannelData = {
  type t;
  type request = {
endTime: option<endTime>,
startTime: option<startTime>,
maxMessages: option<maxMessages>,
channelName: channelName
}
  type response = {
payloads: option<messagePayloads>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "SampleChannelDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutLoggingOptions = {
  type t;
  type request = {
loggingOptions: loggingOptions
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "PutLoggingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeLoggingOptions = {
  type t;
  type request = unit
  type response = {
loggingOptions: option<loggingOptions>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeLoggingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateChannel = {
  type t;
  type request = {
retentionPeriod: option<retentionPeriod>,
channelStorage: option<channelStorage>,
channelName: channelName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdateChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagList_,
resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartPipelineReprocessing = {
  type t;
  type request = {
channelMessages: option<channelMessages>,
endTime: option<endTime>,
startTime: option<startTime>,
pipelineName: pipelineName
}
  type response = {
reprocessingId: option<reprocessingId>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "StartPipelineReprocessingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: resourceArn
}
  type response = {
tags: option<tagList_>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDatasetContent = {
  type t;
  type request = {
versionId: option<datasetContentVersion>,
datasetName: datasetName
}
  type response = {
status: option<datasetContentStatus>,
@as("timestamp") timestamp_: option<timestamp_>,
entries: option<datasetEntries>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "GetDatasetContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateChannel = {
  type t;
  type request = {
tags: option<tagList_>,
retentionPeriod: option<retentionPeriod>,
channelStorage: option<channelStorage>,
channelName: channelName
}
  type response = {
retentionPeriod: option<retentionPeriod>,
channelArn: option<channelArn>,
channelName: option<channelName>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchPutMessage = {
  type t;
  type request = {
messages: messages,
channelName: channelName
}
  type response = {
batchPutMessageErrorEntries: option<batchPutMessageErrorEntries>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "BatchPutMessageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RunPipelineActivity = {
  type t;
  type request = {
payloads: messagePayloads,
pipelineActivity: pipelineActivity
}
  type response = {
logResult: option<logResult>,
payloads: option<messagePayloads>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "RunPipelineActivityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDatasetContents = {
  type t;
  type request = {
scheduledBefore: option<timestamp_>,
scheduledOnOrAfter: option<timestamp_>,
maxResults: option<maxResults>,
nextToken: option<nextToken>,
datasetName: datasetName
}
  type response = {
nextToken: option<nextToken>,
datasetContentSummaries: option<datasetContentSummaries>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListDatasetContentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeChannel = {
  type t;
  type request = {
includeStatistics: option<includeStatisticsFlag>,
channelName: channelName
}
  type response = {
statistics: option<channelStatistics>,
channel: option<channel>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePipeline = {
  type t;
  type request = {
pipelineActivities: pipelineActivities,
pipelineName: pipelineName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdatePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListPipelines = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
pipelineSummaries: option<pipelineSummaries>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListPipelinesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDatastores = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
datastoreSummaries: option<datastoreSummaries>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListDatastoresCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListChannels = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
channelSummaries: option<channelSummaries>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListChannelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePipeline = {
  type t;
  type request = {
tags: option<tagList_>,
pipelineActivities: pipelineActivities,
pipelineName: pipelineName
}
  type response = {
pipelineArn: option<pipelineArn>,
pipelineName: option<pipelineName>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreatePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDatastore = {
  type t;
  type request = {
fileFormatConfiguration: option<fileFormatConfiguration>,
datastoreStorage: option<datastoreStorage>,
retentionPeriod: option<retentionPeriod>,
datastoreName: datastoreName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdateDatastoreCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListDatasets = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
datasetSummaries: option<datasetSummaries>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "ListDatasetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePipeline = {
  type t;
  type request = {
pipelineName: pipelineName
}
  type response = {
pipeline: option<pipeline>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDatastore = {
  type t;
  type request = {
fileFormatConfiguration: option<fileFormatConfiguration>,
tags: option<tagList_>,
retentionPeriod: option<retentionPeriod>,
datastoreStorage: option<datastoreStorage>,
datastoreName: datastoreName
}
  type response = {
retentionPeriod: option<retentionPeriod>,
datastoreArn: option<datastoreArn>,
datastoreName: option<datastoreName>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateDatastoreCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDataset = {
  type t;
  type request = {
lateDataRules: option<lateDataRules>,
versioningConfiguration: option<versioningConfiguration>,
retentionPeriod: option<retentionPeriod>,
contentDeliveryRules: option<datasetContentDeliveryRules>,
triggers: option<datasetTriggers>,
actions: datasetActions,
datasetName: datasetName
}
  
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "UpdateDatasetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeDatastore = {
  type t;
  type request = {
includeStatistics: option<includeStatisticsFlag>,
datastoreName: datastoreName
}
  type response = {
statistics: option<datastoreStatistics>,
datastore: option<datastore>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeDatastoreCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDataset = {
  type t;
  type request = {
lateDataRules: option<lateDataRules>,
tags: option<tagList_>,
versioningConfiguration: option<versioningConfiguration>,
retentionPeriod: option<retentionPeriod>,
contentDeliveryRules: option<datasetContentDeliveryRules>,
triggers: option<datasetTriggers>,
actions: datasetActions,
datasetName: datasetName
}
  type response = {
retentionPeriod: option<retentionPeriod>,
datasetArn: option<datasetArn>,
datasetName: option<datasetName>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "CreateDatasetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDataset = {
  type t;
  type request = {
datasetName: datasetName
}
  type response = {
dataset: option<dataset>
}
  @module("@aws-sdk/client-iotanalytics") @new external new_: (request) => t = "DescribeDatasetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
