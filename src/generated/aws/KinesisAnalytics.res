type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
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
type listApplicationsInputLimit = int;
type kinesisAnalyticsARN = string
type inputStartingPosition = [@as("LAST_STOPPED_POINT") #LAST_STOPPED_POINT | @as("TRIM_HORIZON") #TRIM_HORIZON | @as("NOW") #NOW]
type inputParallelismCount = int;
type inAppTableName = string
type inAppStreamName = string
type id = string
type fileKey = string
type errorMessage = string
type bucketARN = string
type booleanObject = bool;
type applicationVersionId = float;
type applicationStatus = [@as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("READY") #READY | @as("STOPPING") #STOPPING | @as("STARTING") #STARTING | @as("DELETING") #DELETING]
type applicationName = string
type applicationDescription = string
type applicationCode = string
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type s3ReferenceDataSourceUpdate = {
@as("ReferenceRoleARNUpdate") referenceRoleARNUpdate: roleARN,
@as("FileKeyUpdate") fileKeyUpdate: fileKey,
@as("BucketARNUpdate") bucketARNUpdate: bucketARN
}
type s3ReferenceDataSourceDescription = {
@as("ReferenceRoleARN") referenceRoleARN: option<roleARN>,
@as("FileKey") fileKey: option<fileKey>,
@as("BucketARN") bucketARN: option<bucketARN>
}
type s3ReferenceDataSource = {
@as("ReferenceRoleARN") referenceRoleARN: option<roleARN>,
@as("FileKey") fileKey: option<fileKey>,
@as("BucketARN") bucketARN: option<bucketARN>
}
type s3Configuration = {
@as("FileKey") fileKey: option<fileKey>,
@as("BucketARN") bucketARN: option<bucketARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type recordColumn = {
@as("SqlType") sqlType: option<recordColumnSqlType>,
@as("Mapping") mapping: recordColumnMapping,
@as("Name") name: option<recordColumnName>
}
type rawInputRecords = array<rawInputRecord>
type processedInputRecords = array<processedInputRecord>
type parsedInputRecord = array<parsedInputRecordField>
type lambdaOutputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: roleARN,
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type lambdaOutputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type lambdaOutput = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsOutputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: roleARN,
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisStreamsOutputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsOutput = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsInputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: roleARN,
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisStreamsInputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsInput = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseOutputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: roleARN,
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisFirehoseOutputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseOutput = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseInputUpdate = {
@as("RoleARNUpdate") roleARNUpdate: roleARN,
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisFirehoseInputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseInput = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type jSONMappingParameters = {
@as("RecordRowPath") recordRowPath: option<recordRowPath>
}
type inputStartingPositionConfiguration = {
@as("InputStartingPosition") inputStartingPosition: inputStartingPosition
}
type inputParallelismUpdate = {
@as("CountUpdate") countUpdate: inputParallelismCount
}
type inputParallelism = {
@as("Count") count: inputParallelismCount
}
type inputLambdaProcessorUpdate = {
@as("RoleARNUpdate") roleARNUpdate: roleARN,
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type inputLambdaProcessorDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
type inputLambdaProcessor = {
@as("RoleARN") roleARN: option<roleARN>,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type inAppStreamNames = array<inAppStreamName>
type destinationSchema = {
@as("RecordFormatType") recordFormatType: option<recordFormatType>
}
type cloudWatchLoggingOptionUpdate = {
@as("RoleARNUpdate") roleARNUpdate: roleARN,
@as("LogStreamARNUpdate") logStreamARNUpdate: logStreamARN,
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: option<id>
}
type cloudWatchLoggingOptionDescription = {
@as("RoleARN") roleARN: option<roleARN>,
@as("LogStreamARN") logStreamARN: option<logStreamARN>,
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: id
}
type cloudWatchLoggingOption = {
@as("RoleARN") roleARN: option<roleARN>,
@as("LogStreamARN") logStreamARN: option<logStreamARN>
}
type cSVMappingParameters = {
@as("RecordColumnDelimiter") recordColumnDelimiter: option<recordColumnDelimiter>,
@as("RecordRowDelimiter") recordRowDelimiter: option<recordRowDelimiter>
}
type applicationSummary = {
@as("ApplicationStatus") applicationStatus: option<applicationStatus>,
@as("ApplicationARN") applicationARN: option<resourceARN>,
@as("ApplicationName") applicationName: option<applicationName>
}
type tags = array<tag>
type recordColumns = array<recordColumn>
type parsedInputRecords = array<parsedInputRecord>
type outputUpdate = {
@as("DestinationSchemaUpdate") destinationSchemaUpdate: destinationSchema,
@as("LambdaOutputUpdate") lambdaOutputUpdate: lambdaOutputUpdate,
@as("KinesisFirehoseOutputUpdate") kinesisFirehoseOutputUpdate: kinesisFirehoseOutputUpdate,
@as("KinesisStreamsOutputUpdate") kinesisStreamsOutputUpdate: kinesisStreamsOutputUpdate,
@as("NameUpdate") nameUpdate: inAppStreamName,
@as("OutputId") outputId: option<id>
}
type outputDescription = {
@as("DestinationSchema") destinationSchema: destinationSchema,
@as("LambdaOutputDescription") lambdaOutputDescription: lambdaOutputDescription,
@as("KinesisFirehoseOutputDescription") kinesisFirehoseOutputDescription: kinesisFirehoseOutputDescription,
@as("KinesisStreamsOutputDescription") kinesisStreamsOutputDescription: kinesisStreamsOutputDescription,
@as("Name") name: inAppStreamName,
@as("OutputId") outputId: id
}
type output = {
@as("DestinationSchema") destinationSchema: option<destinationSchema>,
@as("LambdaOutput") lambdaOutput: lambdaOutput,
@as("KinesisFirehoseOutput") kinesisFirehoseOutput: kinesisFirehoseOutput,
@as("KinesisStreamsOutput") kinesisStreamsOutput: kinesisStreamsOutput,
@as("Name") name: option<inAppStreamName>
}
type mappingParameters = {
@as("CSVMappingParameters") cSVMappingParameters: cSVMappingParameters,
@as("JSONMappingParameters") jSONMappingParameters: jSONMappingParameters
}
type inputProcessingConfigurationUpdate = {
@as("InputLambdaProcessorUpdate") inputLambdaProcessorUpdate: option<inputLambdaProcessorUpdate>
}
type inputProcessingConfigurationDescription = {
@as("InputLambdaProcessorDescription") inputLambdaProcessorDescription: inputLambdaProcessorDescription
}
type inputProcessingConfiguration = {
@as("InputLambdaProcessor") inputLambdaProcessor: option<inputLambdaProcessor>
}
type inputConfiguration = {
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
@as("Id") id: option<id>
}
type cloudWatchLoggingOptions = array<cloudWatchLoggingOption>
type cloudWatchLoggingOptionUpdates = array<cloudWatchLoggingOptionUpdate>
type cloudWatchLoggingOptionDescriptions = array<cloudWatchLoggingOptionDescription>
type applicationSummaries = array<applicationSummary>
type recordFormat = {
@as("MappingParameters") mappingParameters: mappingParameters,
@as("RecordFormatType") recordFormatType: option<recordFormatType>
}
type outputs = array<output>
type outputUpdates = array<outputUpdate>
type outputDescriptions = array<outputDescription>
type inputConfigurations = array<inputConfiguration>
type sourceSchema = {
@as("RecordColumns") recordColumns: option<recordColumns>,
@as("RecordEncoding") recordEncoding: recordEncoding,
@as("RecordFormat") recordFormat: option<recordFormat>
}
type inputSchemaUpdate = {
@as("RecordColumnUpdates") recordColumnUpdates: recordColumns,
@as("RecordEncodingUpdate") recordEncodingUpdate: recordEncoding,
@as("RecordFormatUpdate") recordFormatUpdate: recordFormat
}
type referenceDataSourceUpdate = {
@as("ReferenceSchemaUpdate") referenceSchemaUpdate: sourceSchema,
@as("S3ReferenceDataSourceUpdate") s3ReferenceDataSourceUpdate: s3ReferenceDataSourceUpdate,
@as("TableNameUpdate") tableNameUpdate: inAppTableName,
@as("ReferenceId") referenceId: option<id>
}
type referenceDataSourceDescription = {
@as("ReferenceSchema") referenceSchema: sourceSchema,
@as("S3ReferenceDataSourceDescription") s3ReferenceDataSourceDescription: option<s3ReferenceDataSourceDescription>,
@as("TableName") tableName: option<inAppTableName>,
@as("ReferenceId") referenceId: option<id>
}
type referenceDataSource = {
@as("ReferenceSchema") referenceSchema: option<sourceSchema>,
@as("S3ReferenceDataSource") s3ReferenceDataSource: s3ReferenceDataSource,
@as("TableName") tableName: option<inAppTableName>
}
type inputUpdate = {
@as("InputParallelismUpdate") inputParallelismUpdate: inputParallelismUpdate,
@as("InputSchemaUpdate") inputSchemaUpdate: inputSchemaUpdate,
@as("KinesisFirehoseInputUpdate") kinesisFirehoseInputUpdate: kinesisFirehoseInputUpdate,
@as("KinesisStreamsInputUpdate") kinesisStreamsInputUpdate: kinesisStreamsInputUpdate,
@as("InputProcessingConfigurationUpdate") inputProcessingConfigurationUpdate: inputProcessingConfigurationUpdate,
@as("NamePrefixUpdate") namePrefixUpdate: inAppStreamName,
@as("InputId") inputId: option<id>
}
type inputDescription = {
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: inputStartingPositionConfiguration,
@as("InputParallelism") inputParallelism: inputParallelism,
@as("InputSchema") inputSchema: sourceSchema,
@as("KinesisFirehoseInputDescription") kinesisFirehoseInputDescription: kinesisFirehoseInputDescription,
@as("KinesisStreamsInputDescription") kinesisStreamsInputDescription: kinesisStreamsInputDescription,
@as("InputProcessingConfigurationDescription") inputProcessingConfigurationDescription: inputProcessingConfigurationDescription,
@as("InAppStreamNames") inAppStreamNames: inAppStreamNames,
@as("NamePrefix") namePrefix: inAppStreamName,
@as("InputId") inputId: id
}
type input = {
@as("InputSchema") inputSchema: option<sourceSchema>,
@as("InputParallelism") inputParallelism: inputParallelism,
@as("KinesisFirehoseInput") kinesisFirehoseInput: kinesisFirehoseInput,
@as("KinesisStreamsInput") kinesisStreamsInput: kinesisStreamsInput,
@as("InputProcessingConfiguration") inputProcessingConfiguration: inputProcessingConfiguration,
@as("NamePrefix") namePrefix: option<inAppStreamName>
}
type referenceDataSourceUpdates = array<referenceDataSourceUpdate>
type referenceDataSourceDescriptions = array<referenceDataSourceDescription>
type inputs = array<input>
type inputUpdates = array<inputUpdate>
type inputDescriptions = array<inputDescription>
type applicationUpdate = {
@as("CloudWatchLoggingOptionUpdates") cloudWatchLoggingOptionUpdates: cloudWatchLoggingOptionUpdates,
@as("ReferenceDataSourceUpdates") referenceDataSourceUpdates: referenceDataSourceUpdates,
@as("OutputUpdates") outputUpdates: outputUpdates,
@as("ApplicationCodeUpdate") applicationCodeUpdate: applicationCode,
@as("InputUpdates") inputUpdates: inputUpdates
}
type applicationDetail = {
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
@as("ApplicationCode") applicationCode: applicationCode,
@as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: cloudWatchLoggingOptionDescriptions,
@as("ReferenceDataSourceDescriptions") referenceDataSourceDescriptions: referenceDataSourceDescriptions,
@as("OutputDescriptions") outputDescriptions: outputDescriptions,
@as("InputDescriptions") inputDescriptions: inputDescriptions,
@as("LastUpdateTimestamp") lastUpdateTimestamp: amazonawsTimestamp,
@as("CreateTimestamp") createTimestamp: amazonawsTimestamp,
@as("ApplicationStatus") applicationStatus: option<applicationStatus>,
@as("ApplicationARN") applicationARN: option<resourceARN>,
@as("ApplicationDescription") applicationDescription: applicationDescription,
@as("ApplicationName") applicationName: option<applicationName>
}
type clientType;
@module("@aws-sdk/client-kinesisanalytics") @new external createClient: unit => clientType = "KinesisAnalyticsClient";
module StopApplication = {
  type t;
  type request = {
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "StopApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationReferenceDataSource = {
  type t;
  type request = {
@as("ReferenceId") referenceId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationReferenceDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationOutput = {
  type t;
  type request = {
@as("OutputId") outputId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationInputProcessingConfiguration = {
  type t;
  type request = {
@as("InputId") inputId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationInputProcessingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("CreateTimestamp") createTimestamp: option<amazonawsTimestamp>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceARN") resourceARN: option<kinesisAnalyticsARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("CloudWatchLoggingOption") cloudWatchLoggingOption: option<cloudWatchLoggingOption>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceARN") resourceARN: option<kinesisAnalyticsARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<kinesisAnalyticsARN>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("ExclusiveStartApplicationName") exclusiveStartApplicationName: applicationName,
@as("Limit") limit: listApplicationsInputLimit
}
  type response = {
@as("HasMoreApplications") hasMoreApplications: option<booleanObject>,
@as("ApplicationSummaries") applicationSummaries: option<applicationSummaries>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationOutput = {
  type t;
  type request = {
@as("Output") output: option<output>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationInputProcessingConfiguration = {
  type t;
  type request = {
@as("InputProcessingConfiguration") inputProcessingConfiguration: option<inputProcessingConfiguration>,
@as("InputId") inputId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationInputProcessingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartApplication = {
  type t;
  type request = {
@as("InputConfigurations") inputConfigurations: option<inputConfigurations>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "StartApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DiscoverInputSchema = {
  type t;
  type request = {
@as("InputProcessingConfiguration") inputProcessingConfiguration: inputProcessingConfiguration,
@as("S3Configuration") s3Configuration: s3Configuration,
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: inputStartingPositionConfiguration,
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: resourceARN
}
  type response = {
@as("RawInputRecords") rawInputRecords: rawInputRecords,
@as("ProcessedInputRecords") processedInputRecords: processedInputRecords,
@as("ParsedInputRecords") parsedInputRecords: parsedInputRecords,
@as("InputSchema") inputSchema: sourceSchema
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DiscoverInputSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationReferenceDataSource = {
  type t;
  type request = {
@as("ReferenceDataSource") referenceDataSource: option<referenceDataSource>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationReferenceDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationInput = {
  type t;
  type request = {
@as("Input") input: option<input>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("ApplicationCode") applicationCode: applicationCode,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("Outputs") outputs: outputs,
@as("Inputs") inputs: inputs,
@as("ApplicationDescription") applicationDescription: applicationDescription,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationSummary") applicationSummary: option<applicationSummary>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("ApplicationUpdate") applicationUpdate: option<applicationUpdate>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplication = {
  type t;
  type request = {
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationDetail") applicationDetail: option<applicationDetail>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DescribeApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
