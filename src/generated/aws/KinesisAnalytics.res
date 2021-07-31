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
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type roleARN = string
type resourceARN = string
type recordRowPath = string
type recordRowDelimiter = string
type recordFormatType = [@as("CSV") #CSV | @as("JSON") #JSON]
type recordEncoding = string
type recordColumnSqlType = string
type recordColumnName = string
type recordColumnMapping = string
type recordColumnDelimiter = string
type rawInputRecord = string
type processedInputRecord = string
type parsedInputRecordField = string
type logStreamARN = string
type listApplicationsInputLimit = int
type kinesisAnalyticsARN = string
type inputStartingPosition = [@as("LAST_STOPPED_POINT") #LASTSTOPPEDPOINT | @as("TRIM_HORIZON") #TRIMHORIZON | @as("NOW") #NOW]
type inputParallelismCount = int
type inAppTableName = string
type inAppStreamName = string
type id = string
type fileKey = string
type errorMessage = string
type bucketARN = string
type booleanObject = bool
type applicationVersionId = float
type applicationStatus = [@as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("READY") #READY | @as("STOPPING") #STOPPING | @as("STARTING") #STARTING | @as("DELETING") #DELETING]
type applicationName = string
type applicationDescription = string
type applicationCode = string
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: tagKey
}
type s3ReferenceDataSourceUpdate = {
@as("ReferenceRoleARNUpdate") referenceRoleARNUpdate: option<roleARN>,
@as("FileKeyUpdate") fileKeyUpdate: option<fileKey>,
@as("BucketARNUpdate") bucketARNUpdate: option<bucketARN>
}
type s3ReferenceDataSourceDescription = {
@as("ReferenceRoleARN") referenceRoleARN: roleARN,
@as("FileKey") fileKey: fileKey,
@as("BucketARN") bucketARN: bucketARN
}
type s3ReferenceDataSource = {
@as("ReferenceRoleARN") referenceRoleARN: roleARN,
@as("FileKey") fileKey: fileKey,
@as("BucketARN") bucketARN: bucketARN
}
type s3Configuration = {
@as("FileKey") fileKey: fileKey,
@as("BucketARN") bucketARN: bucketARN,
@as("RoleARN") roleARN: roleARN
}
type recordColumn = {
@as("SqlType") sqlType: recordColumnSqlType,
@as("Mapping") mapping: option<recordColumnMapping>,
@as("Name") name: recordColumnName
}
type rawInputRecords = array<rawInputRecord>
type processedInputRecords = array<processedInputRecord>
type parsedInputRecord = array<parsedInputRecordField>
type lambdaOutputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: option<roleARN>,
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type lambdaOutputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type lambdaOutput = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsOutputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: option<roleARN>,
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisStreamsOutputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsOutput = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsInputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: option<roleARN>,
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisStreamsInputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsInput = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseOutputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: option<roleARN>,
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisFirehoseOutputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseOutput = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseInputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: option<roleARN>,
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisFirehoseInputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseInput = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type jsonmappingParameters = {
@as("RecordRowPath") recordRowPath: recordRowPath
}
type inputStartingPositionConfiguration = {
@as("InputStartingPosition") inputStartingPosition: option<inputStartingPosition>
}
type inputParallelismUpdate = {
@as("CountUpdate") countUpdate: option<inputParallelismCount>
}
type inputParallelism = {
@as("Count") count: option<inputParallelismCount>
}
type inputLambdaProcessorUpdate = {
@as("RoleARNUpdate") roleARNUpdate: option<roleARN>,
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type inputLambdaProcessorDescription = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type inputLambdaProcessor = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type inAppStreamNames = array<inAppStreamName>
type destinationSchema = {
@as("RecordFormatType") recordFormatType: recordFormatType
}
type cloudWatchLoggingOptionUpdate = {
@as("RoleARNUpdate") roleARNUpdate: option<roleARN>,
@as("LogStreamARNUpdate") logStreamARNUpdate: option<logStreamARN>,
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: id
}
type cloudWatchLoggingOptionDescription = {
@as("RoleARN") roleARN: roleARN,
@as("LogStreamARN") logStreamARN: logStreamARN,
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: option<id>
}
type cloudWatchLoggingOption = {
@as("RoleARN") roleARN: roleARN,
@as("LogStreamARN") logStreamARN: logStreamARN
}
type csvmappingParameters = {
@as("RecordColumnDelimiter") recordColumnDelimiter: recordColumnDelimiter,
@as("RecordRowDelimiter") recordRowDelimiter: recordRowDelimiter
}
type applicationSummary = {
@as("ApplicationStatus") applicationStatus: applicationStatus,
@as("ApplicationARN") applicationARN: resourceARN,
@as("ApplicationName") applicationName: applicationName
}
type tags = array<tag>
type recordColumns = array<recordColumn>
type parsedInputRecords = array<parsedInputRecord>
type outputUpdate = {
@as("DestinationSchemaUpdate") destinationSchemaUpdate: option<destinationSchema>,
@as("LambdaOutputUpdate") lambdaOutputUpdate: option<lambdaOutputUpdate>,
@as("KinesisFirehoseOutputUpdate") kinesisFirehoseOutputUpdate: option<kinesisFirehoseOutputUpdate>,
@as("KinesisStreamsOutputUpdate") kinesisStreamsOutputUpdate: option<kinesisStreamsOutputUpdate>,
@as("NameUpdate") nameUpdate: option<inAppStreamName>,
@as("OutputId") outputId: id
}
type outputDescription = {
@as("DestinationSchema") destinationSchema: option<destinationSchema>,
@as("LambdaOutputDescription") lambdaOutputDescription: option<lambdaOutputDescription>,
@as("KinesisFirehoseOutputDescription") kinesisFirehoseOutputDescription: option<kinesisFirehoseOutputDescription>,
@as("KinesisStreamsOutputDescription") kinesisStreamsOutputDescription: option<kinesisStreamsOutputDescription>,
@as("Name") name: option<inAppStreamName>,
@as("OutputId") outputId: option<id>
}
type output = {
@as("DestinationSchema") destinationSchema: destinationSchema,
@as("LambdaOutput") lambdaOutput: option<lambdaOutput>,
@as("KinesisFirehoseOutput") kinesisFirehoseOutput: option<kinesisFirehoseOutput>,
@as("KinesisStreamsOutput") kinesisStreamsOutput: option<kinesisStreamsOutput>,
@as("Name") name: inAppStreamName
}
type mappingParameters = {
@as("CSVMappingParameters") csvmappingParameters: option<csvmappingParameters>,
@as("JSONMappingParameters") jsonmappingParameters: option<jsonmappingParameters>
}
type inputProcessingConfigurationUpdate = {
@as("InputLambdaProcessorUpdate") inputLambdaProcessorUpdate: inputLambdaProcessorUpdate
}
type inputProcessingConfigurationDescription = {
@as("InputLambdaProcessorDescription") inputLambdaProcessorDescription: option<inputLambdaProcessorDescription>
}
type inputProcessingConfiguration = {
@as("InputLambdaProcessor") inputLambdaProcessor: inputLambdaProcessor
}
type inputConfiguration = {
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: inputStartingPositionConfiguration,
@as("Id") id: id
}
type cloudWatchLoggingOptions = array<cloudWatchLoggingOption>
type cloudWatchLoggingOptionUpdates = array<cloudWatchLoggingOptionUpdate>
type cloudWatchLoggingOptionDescriptions = array<cloudWatchLoggingOptionDescription>
type applicationSummaries = array<applicationSummary>
type recordFormat = {
@as("MappingParameters") mappingParameters: option<mappingParameters>,
@as("RecordFormatType") recordFormatType: recordFormatType
}
type outputs = array<output>
type outputUpdates = array<outputUpdate>
type outputDescriptions = array<outputDescription>
type inputConfigurations = array<inputConfiguration>
type sourceSchema = {
@as("RecordColumns") recordColumns: recordColumns,
@as("RecordEncoding") recordEncoding: option<recordEncoding>,
@as("RecordFormat") recordFormat: recordFormat
}
type inputSchemaUpdate = {
@as("RecordColumnUpdates") recordColumnUpdates: option<recordColumns>,
@as("RecordEncodingUpdate") recordEncodingUpdate: option<recordEncoding>,
@as("RecordFormatUpdate") recordFormatUpdate: option<recordFormat>
}
type referenceDataSourceUpdate = {
@as("ReferenceSchemaUpdate") referenceSchemaUpdate: option<sourceSchema>,
@as("S3ReferenceDataSourceUpdate") s3ReferenceDataSourceUpdate: option<s3ReferenceDataSourceUpdate>,
@as("TableNameUpdate") tableNameUpdate: option<inAppTableName>,
@as("ReferenceId") referenceId: id
}
type referenceDataSourceDescription = {
@as("ReferenceSchema") referenceSchema: option<sourceSchema>,
@as("S3ReferenceDataSourceDescription") s3ReferenceDataSourceDescription: s3ReferenceDataSourceDescription,
@as("TableName") tableName: inAppTableName,
@as("ReferenceId") referenceId: id
}
type referenceDataSource = {
@as("ReferenceSchema") referenceSchema: sourceSchema,
@as("S3ReferenceDataSource") s3ReferenceDataSource: option<s3ReferenceDataSource>,
@as("TableName") tableName: inAppTableName
}
type inputUpdate = {
@as("InputParallelismUpdate") inputParallelismUpdate: option<inputParallelismUpdate>,
@as("InputSchemaUpdate") inputSchemaUpdate: option<inputSchemaUpdate>,
@as("KinesisFirehoseInputUpdate") kinesisFirehoseInputUpdate: option<kinesisFirehoseInputUpdate>,
@as("KinesisStreamsInputUpdate") kinesisStreamsInputUpdate: option<kinesisStreamsInputUpdate>,
@as("InputProcessingConfigurationUpdate") inputProcessingConfigurationUpdate: option<inputProcessingConfigurationUpdate>,
@as("NamePrefixUpdate") namePrefixUpdate: option<inAppStreamName>,
@as("InputId") inputId: id
}
type inputDescription = {
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
@as("InputParallelism") inputParallelism: option<inputParallelism>,
@as("InputSchema") inputSchema: option<sourceSchema>,
@as("KinesisFirehoseInputDescription") kinesisFirehoseInputDescription: option<kinesisFirehoseInputDescription>,
@as("KinesisStreamsInputDescription") kinesisStreamsInputDescription: option<kinesisStreamsInputDescription>,
@as("InputProcessingConfigurationDescription") inputProcessingConfigurationDescription: option<inputProcessingConfigurationDescription>,
@as("InAppStreamNames") inAppStreamNames: option<inAppStreamNames>,
@as("NamePrefix") namePrefix: option<inAppStreamName>,
@as("InputId") inputId: option<id>
}
type input = {
@as("InputSchema") inputSchema: sourceSchema,
@as("InputParallelism") inputParallelism: option<inputParallelism>,
@as("KinesisFirehoseInput") kinesisFirehoseInput: option<kinesisFirehoseInput>,
@as("KinesisStreamsInput") kinesisStreamsInput: option<kinesisStreamsInput>,
@as("InputProcessingConfiguration") inputProcessingConfiguration: option<inputProcessingConfiguration>,
@as("NamePrefix") namePrefix: inAppStreamName
}
type referenceDataSourceUpdates = array<referenceDataSourceUpdate>
type referenceDataSourceDescriptions = array<referenceDataSourceDescription>
type inputs = array<input>
type inputUpdates = array<inputUpdate>
type inputDescriptions = array<inputDescription>
type applicationUpdate = {
@as("CloudWatchLoggingOptionUpdates") cloudWatchLoggingOptionUpdates: option<cloudWatchLoggingOptionUpdates>,
@as("ReferenceDataSourceUpdates") referenceDataSourceUpdates: option<referenceDataSourceUpdates>,
@as("OutputUpdates") outputUpdates: option<outputUpdates>,
@as("ApplicationCodeUpdate") applicationCodeUpdate: option<applicationCode>,
@as("InputUpdates") inputUpdates: option<inputUpdates>
}
type applicationDetail = {
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationCode") applicationCode: option<applicationCode>,
@as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
@as("ReferenceDataSourceDescriptions") referenceDataSourceDescriptions: option<referenceDataSourceDescriptions>,
@as("OutputDescriptions") outputDescriptions: option<outputDescriptions>,
@as("InputDescriptions") inputDescriptions: option<inputDescriptions>,
@as("LastUpdateTimestamp") lastUpdateTimestamp: option<timestamp_>,
@as("CreateTimestamp") createTimestamp: option<timestamp_>,
@as("ApplicationStatus") applicationStatus: applicationStatus,
@as("ApplicationARN") applicationARN: resourceARN,
@as("ApplicationDescription") applicationDescription: option<applicationDescription>,
@as("ApplicationName") applicationName: applicationName
}
type awsServiceClient;
@module("@aws-sdk/client-kinesisanalytics") @new external createClient: unit => awsServiceClient = "KinesisAnalyticsClient";
module StopApplication = {
  type t;
  type request = {
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "StopApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationReferenceDataSource = {
  type t;
  type request = {
@as("ReferenceId") referenceId: id,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationReferenceDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationOutput = {
  type t;
  type request = {
@as("OutputId") outputId: id,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationOutputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationInputProcessingConfiguration = {
  type t;
  type request = {
@as("InputId") inputId: id,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationInputProcessingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: id,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("CreateTimestamp") createTimestamp: timestamp_,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeys,
@as("ResourceARN") resourceARN: kinesisAnalyticsARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("CloudWatchLoggingOption") cloudWatchLoggingOption: cloudWatchLoggingOption,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ResourceARN") resourceARN: kinesisAnalyticsARN
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: kinesisAnalyticsARN
}
  type response = {
@as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("ExclusiveStartApplicationName") exclusiveStartApplicationName: option<applicationName>,
@as("Limit") limit: option<listApplicationsInputLimit>
}
  type response = {
@as("HasMoreApplications") hasMoreApplications: booleanObject,
@as("ApplicationSummaries") applicationSummaries: applicationSummaries
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationOutput = {
  type t;
  type request = {
@as("Output") output: output,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationOutputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationInputProcessingConfiguration = {
  type t;
  type request = {
@as("InputProcessingConfiguration") inputProcessingConfiguration: inputProcessingConfiguration,
@as("InputId") inputId: id,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationInputProcessingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartApplication = {
  type t;
  type request = {
@as("InputConfigurations") inputConfigurations: inputConfigurations,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "StartApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DiscoverInputSchema = {
  type t;
  type request = {
@as("InputProcessingConfiguration") inputProcessingConfiguration: option<inputProcessingConfiguration>,
@as("S3Configuration") s3Configuration: option<s3Configuration>,
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
  type response = {
@as("RawInputRecords") rawInputRecords: option<rawInputRecords>,
@as("ProcessedInputRecords") processedInputRecords: option<processedInputRecords>,
@as("ParsedInputRecords") parsedInputRecords: option<parsedInputRecords>,
@as("InputSchema") inputSchema: option<sourceSchema>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DiscoverInputSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationReferenceDataSource = {
  type t;
  type request = {
@as("ReferenceDataSource") referenceDataSource: referenceDataSource,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationReferenceDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationInput = {
  type t;
  type request = {
@as("Input") input: input,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationInputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ApplicationCode") applicationCode: option<applicationCode>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("Outputs") outputs: option<outputs>,
@as("Inputs") inputs: option<inputs>,
@as("ApplicationDescription") applicationDescription: option<applicationDescription>,
@as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationSummary") applicationSummary: applicationSummary
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("ApplicationUpdate") applicationUpdate: applicationUpdate,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeApplication = {
  type t;
  type request = {
@as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationDetail") applicationDetail: applicationDetail
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DescribeApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
