type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-kinesisanalytics") @new external createClient: unit => awsServiceClient = "KinesisAnalyticsV2Client";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type zipFileContent = NodeJs.Buffer.t
type vpcId = string
type urlType = [@as("ZEPPELIN_UI_URL") #ZEPPELIN_UI_URL | @as("FLINK_DASHBOARD_URL") #FLINK_DASHBOARD_URL]
type timestamp_ = Js.Date.t;
type textContent = string
type tagValue = string
type tagKey = string
type subnetId = string
type snapshotStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("READY") #READY | @as("CREATING") #CREATING]
type snapshotName = string
type sessionExpirationDurationInSeconds = float
type securityGroupId = string
type runtimeEnvironment = [@as("ZEPPELIN-FLINK-1_0") #ZEPPELIN_FLINK_1_0 | @as("FLINK-1_11") #FLINK_1_11 | @as("FLINK-1_8") #FLINK_1_8 | @as("FLINK-1_6") #FLINK_1_6 | @as("SQL-1_0") #SQL_1_0]
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
type propertyValue = string
type propertyKey = string
type processedInputRecord = string
type parsedInputRecordField = string
type parallelismPerKPU = int
type parallelism = int
type objectVersion = string
type nextToken = string
type minPauseBetweenCheckpoints = float
type metricsLevel = [@as("PARALLELISM") #PARALLELISM | @as("OPERATOR") #OPERATOR | @as("TASK") #TASK | @as("APPLICATION") #APPLICATION]
type mavenVersion = string
type mavenGroupId = string
type mavenArtifactId = string
type logStreamARN = string
type logLevel = [@as("DEBUG") #DEBUG | @as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO]
type listSnapshotsInputLimit = int
type listApplicationsInputLimit = int
type listApplicationVersionsInputLimit = int
type kinesisAnalyticsARN = string
type jobPlanDescription = string
type inputStartingPosition = [@as("LAST_STOPPED_POINT") #LAST_STOPPED_POINT | @as("TRIM_HORIZON") #TRIM_HORIZON | @as("NOW") #NOW]
type inputParallelismCount = int
type inAppTableName = string
type inAppStreamName = string
type id = string
type fileKey = string
type errorMessage = string
type databaseARN = string
type configurationType = [@as("CUSTOM") #CUSTOM | @as("DEFAULT") #DEFAULT]
type conditionalToken = string
type codeSize = float
type codeMD5 = string
type codeContentType = [@as("ZIPFILE") #ZIPFILE | @as("PLAINTEXT") #PLAINTEXT]
type checkpointInterval = float
type bucketARN = string
type booleanObject = bool
type basePath = string
type authorizedUrl = string
type artifactType = [@as("DEPENDENCY_JAR") #DEPENDENCY_JAR | @as("UDF") #UDF]
type applicationVersionId = float
type applicationStatus = [@as("ROLLED_BACK") #ROLLED_BACK | @as("ROLLING_BACK") #ROLLING_BACK | @as("MAINTENANCE") #MAINTENANCE | @as("FORCE_STOPPING") #FORCE_STOPPING | @as("AUTOSCALING") #AUTOSCALING | @as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("READY") #READY | @as("STOPPING") #STOPPING | @as("STARTING") #STARTING | @as("DELETING") #DELETING]
type applicationRestoreType = [@as("RESTORE_FROM_CUSTOM_SNAPSHOT") #RESTORE_FROM_CUSTOM_SNAPSHOT | @as("RESTORE_FROM_LATEST_SNAPSHOT") #RESTORE_FROM_LATEST_SNAPSHOT | @as("SKIP_RESTORE_FROM_SNAPSHOT") #SKIP_RESTORE_FROM_SNAPSHOT]
type applicationName = string
type applicationMode = [@as("INTERACTIVE") #INTERACTIVE | @as("STREAMING") #STREAMING]
type applicationMaintenanceWindowStartTime = string
type applicationMaintenanceWindowEndTime = string
type applicationDescription = string
type zeppelinMonitoringConfigurationUpdate = {
@as("LogLevelUpdate") logLevelUpdate: logLevel
}
type zeppelinMonitoringConfigurationDescription = {
@as("LogLevel") logLevel: option<logLevel>
}
type zeppelinMonitoringConfiguration = {
@as("LogLevel") logLevel: logLevel
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
  @as("Key") key: tagKey
}
type subnetIds = array<subnetId>
type snapshotDetails = {
@as("SnapshotCreationTimestamp") snapshotCreationTimestamp: option<timestamp_>,
  @as("ApplicationVersionId") applicationVersionId: applicationVersionId,
  @as("SnapshotStatus") snapshotStatus: snapshotStatus,
  @as("SnapshotName") snapshotName: snapshotName
}
type securityGroupIds = array<securityGroupId>
type s3ReferenceDataSourceUpdate = {
@as("FileKeyUpdate") fileKeyUpdate: option<fileKey>,
  @as("BucketARNUpdate") bucketARNUpdate: option<bucketARN>
}
type s3ReferenceDataSourceDescription = {
@as("ReferenceRoleARN") referenceRoleARN: option<roleARN>,
  @as("FileKey") fileKey: fileKey,
  @as("BucketARN") bucketARN: bucketARN
}
type s3ReferenceDataSource = {
@as("FileKey") fileKey: option<fileKey>,
  @as("BucketARN") bucketARN: option<bucketARN>
}
type s3ContentLocationUpdate = {
@as("ObjectVersionUpdate") objectVersionUpdate: option<objectVersion>,
  @as("FileKeyUpdate") fileKeyUpdate: option<fileKey>,
  @as("BucketARNUpdate") bucketARNUpdate: option<bucketARN>
}
type s3ContentLocation = {
@as("ObjectVersion") objectVersion: option<objectVersion>,
  @as("FileKey") fileKey: fileKey,
  @as("BucketARN") bucketARN: bucketARN
}
type s3ContentBaseLocationUpdate = {
@as("BasePathUpdate") basePathUpdate: option<basePath>,
  @as("BucketARNUpdate") bucketARNUpdate: bucketARN
}
type s3ContentBaseLocationDescription = {
@as("BasePath") basePath: option<basePath>,
  @as("BucketARN") bucketARN: bucketARN
}
type s3ContentBaseLocation = {
@as("BasePath") basePath: option<basePath>,
  @as("BucketARN") bucketARN: bucketARN
}
type s3Configuration = {
@as("FileKey") fileKey: fileKey,
  @as("BucketARN") bucketARN: bucketARN
}
type s3ApplicationCodeLocationDescription = {
@as("ObjectVersion") objectVersion: option<objectVersion>,
  @as("FileKey") fileKey: fileKey,
  @as("BucketARN") bucketARN: bucketARN
}
type recordColumn = {
@as("SqlType") sqlType: recordColumnSqlType,
  @as("Mapping") mapping: option<recordColumnMapping>,
  @as("Name") name: recordColumnName
}
type rawInputRecords = array<rawInputRecord>
type propertyMap = Js.Dict.t<propertyValue>
type processedInputRecords = array<processedInputRecord>
type parsedInputRecord = array<parsedInputRecordField>
type parallelismConfigurationUpdate = {
@as("AutoScalingEnabledUpdate") autoScalingEnabledUpdate: option<booleanObject>,
  @as("ParallelismPerKPUUpdate") parallelismPerKPUUpdate: option<parallelismPerKPU>,
  @as("ParallelismUpdate") parallelismUpdate: option<parallelism>,
  @as("ConfigurationTypeUpdate") configurationTypeUpdate: option<configurationType>
}
type parallelismConfigurationDescription = {
@as("AutoScalingEnabled") autoScalingEnabled: option<booleanObject>,
  @as("CurrentParallelism") currentParallelism: option<parallelism>,
  @as("ParallelismPerKPU") parallelismPerKPU: option<parallelismPerKPU>,
  @as("Parallelism") parallelism: option<parallelism>,
  @as("ConfigurationType") configurationType: option<configurationType>
}
type parallelismConfiguration = {
@as("AutoScalingEnabled") autoScalingEnabled: option<booleanObject>,
  @as("ParallelismPerKPU") parallelismPerKPU: option<parallelismPerKPU>,
  @as("Parallelism") parallelism: option<parallelism>,
  @as("ConfigurationType") configurationType: configurationType
}
type monitoringConfigurationUpdate = {
@as("LogLevelUpdate") logLevelUpdate: option<logLevel>,
  @as("MetricsLevelUpdate") metricsLevelUpdate: option<metricsLevel>,
  @as("ConfigurationTypeUpdate") configurationTypeUpdate: option<configurationType>
}
type monitoringConfigurationDescription = {
@as("LogLevel") logLevel: option<logLevel>,
  @as("MetricsLevel") metricsLevel: option<metricsLevel>,
  @as("ConfigurationType") configurationType: option<configurationType>
}
type monitoringConfiguration = {
@as("LogLevel") logLevel: option<logLevel>,
  @as("MetricsLevel") metricsLevel: option<metricsLevel>,
  @as("ConfigurationType") configurationType: configurationType
}
type mavenReference = {
@as("Version") version: mavenVersion,
  @as("ArtifactId") artifactId: mavenArtifactId,
  @as("GroupId") groupId: mavenGroupId
}
type lambdaOutputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type lambdaOutputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceARN") resourceARN: resourceARN
}
type lambdaOutput = {
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsOutputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisStreamsOutputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsOutput = {
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsInputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisStreamsInputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceARN") resourceARN: resourceARN
}
type kinesisStreamsInput = {
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseOutputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisFirehoseOutputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseOutput = {
@as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseInputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type kinesisFirehoseInputDescription = {
@as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceARN") resourceARN: resourceARN
}
type kinesisFirehoseInput = {
@as("ResourceARN") resourceARN: resourceARN
}
type jsonmappingParameters = {
@as("RecordRowPath") recordRowPath: recordRowPath
}
type inputStartingPositionConfiguration = {
@as("InputStartingPosition") inputStartingPosition: option<inputStartingPosition>
}
type inputParallelismUpdate = {
@as("CountUpdate") countUpdate: inputParallelismCount
}
type inputParallelism = {
@as("Count") count: option<inputParallelismCount>
}
type inputLambdaProcessorUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: resourceARN
}
type inputLambdaProcessorDescription = {
@as("RoleARN") roleARN: option<roleARN>,
  @as("ResourceARN") resourceARN: resourceARN
}
type inputLambdaProcessor = {
@as("ResourceARN") resourceARN: resourceARN
}
type inAppStreamNames = array<inAppStreamName>
type glueDataCatalogConfigurationUpdate = {
@as("DatabaseARNUpdate") databaseARNUpdate: option<databaseARN>
}
type glueDataCatalogConfigurationDescription = {
@as("DatabaseARN") databaseARN: databaseARN
}
type glueDataCatalogConfiguration = {
@as("DatabaseARN") databaseARN: databaseARN
}
type flinkRunConfiguration = {
@as("AllowNonRestoredState") allowNonRestoredState: option<booleanObject>
}
type destinationSchema = {
@as("RecordFormatType") recordFormatType: recordFormatType
}
type cloudWatchLoggingOptionUpdate = {
@as("LogStreamARNUpdate") logStreamARNUpdate: option<logStreamARN>,
  @as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: id
}
type cloudWatchLoggingOptionDescription = {
@as("RoleARN") roleARN: option<roleARN>,
  @as("LogStreamARN") logStreamARN: logStreamARN,
  @as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: option<id>
}
type cloudWatchLoggingOption = {
@as("LogStreamARN") logStreamARN: logStreamARN
}
type checkpointConfigurationUpdate = {
@as("MinPauseBetweenCheckpointsUpdate") minPauseBetweenCheckpointsUpdate: option<minPauseBetweenCheckpoints>,
  @as("CheckpointIntervalUpdate") checkpointIntervalUpdate: option<checkpointInterval>,
  @as("CheckpointingEnabledUpdate") checkpointingEnabledUpdate: option<booleanObject>,
  @as("ConfigurationTypeUpdate") configurationTypeUpdate: option<configurationType>
}
type checkpointConfigurationDescription = {
@as("MinPauseBetweenCheckpoints") minPauseBetweenCheckpoints: option<minPauseBetweenCheckpoints>,
  @as("CheckpointInterval") checkpointInterval: option<checkpointInterval>,
  @as("CheckpointingEnabled") checkpointingEnabled: option<booleanObject>,
  @as("ConfigurationType") configurationType: option<configurationType>
}
type checkpointConfiguration = {
@as("MinPauseBetweenCheckpoints") minPauseBetweenCheckpoints: option<minPauseBetweenCheckpoints>,
  @as("CheckpointInterval") checkpointInterval: option<checkpointInterval>,
  @as("CheckpointingEnabled") checkpointingEnabled: option<booleanObject>,
  @as("ConfigurationType") configurationType: configurationType
}
type csvmappingParameters = {
@as("RecordColumnDelimiter") recordColumnDelimiter: recordColumnDelimiter,
  @as("RecordRowDelimiter") recordRowDelimiter: recordRowDelimiter
}
type applicationVersionSummary = {
@as("ApplicationStatus") applicationStatus: applicationStatus,
  @as("ApplicationVersionId") applicationVersionId: applicationVersionId
}
type applicationSummary = {
@as("ApplicationMode") applicationMode: option<applicationMode>,
  @as("RuntimeEnvironment") runtimeEnvironment: runtimeEnvironment,
  @as("ApplicationVersionId") applicationVersionId: applicationVersionId,
  @as("ApplicationStatus") applicationStatus: applicationStatus,
  @as("ApplicationARN") applicationARN: resourceARN,
  @as("ApplicationName") applicationName: applicationName
}
type applicationSnapshotConfigurationUpdate = {
@as("SnapshotsEnabledUpdate") snapshotsEnabledUpdate: booleanObject
}
type applicationSnapshotConfigurationDescription = {
@as("SnapshotsEnabled") snapshotsEnabled: booleanObject
}
type applicationSnapshotConfiguration = {
@as("SnapshotsEnabled") snapshotsEnabled: booleanObject
}
type applicationRestoreConfiguration = {
@as("SnapshotName") snapshotName: option<snapshotName>,
  @as("ApplicationRestoreType") applicationRestoreType: applicationRestoreType
}
type applicationMaintenanceConfigurationUpdate = {
@as("ApplicationMaintenanceWindowStartTimeUpdate") applicationMaintenanceWindowStartTimeUpdate: applicationMaintenanceWindowStartTime
}
type applicationMaintenanceConfigurationDescription = {
@as("ApplicationMaintenanceWindowEndTime") applicationMaintenanceWindowEndTime: applicationMaintenanceWindowEndTime,
  @as("ApplicationMaintenanceWindowStartTime") applicationMaintenanceWindowStartTime: applicationMaintenanceWindowStartTime
}
type vpcConfigurationUpdate = {
@as("SecurityGroupIdUpdates") securityGroupIdUpdates: option<securityGroupIds>,
  @as("SubnetIdUpdates") subnetIdUpdates: option<subnetIds>,
  @as("VpcConfigurationId") vpcConfigurationId: id
}
type vpcConfigurationDescription = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
  @as("SubnetIds") subnetIds: subnetIds,
  @as("VpcId") vpcId: vpcId,
  @as("VpcConfigurationId") vpcConfigurationId: id
}
type vpcConfiguration = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
  @as("SubnetIds") subnetIds: subnetIds
}
type tags = array<tag>
type sqlRunConfiguration = {
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: inputStartingPositionConfiguration,
  @as("InputId") inputId: id
}
type snapshotSummaries = array<snapshotDetails>
type runConfigurationUpdate = {
@as("ApplicationRestoreConfiguration") applicationRestoreConfiguration: option<applicationRestoreConfiguration>,
  @as("FlinkRunConfiguration") flinkRunConfiguration: option<flinkRunConfiguration>
}
type runConfigurationDescription = {
@as("FlinkRunConfigurationDescription") flinkRunConfigurationDescription: option<flinkRunConfiguration>,
  @as("ApplicationRestoreConfigurationDescription") applicationRestoreConfigurationDescription: option<applicationRestoreConfiguration>
}
type recordColumns = array<recordColumn>
type propertyGroup = {
@as("PropertyMap") propertyMap: propertyMap,
  @as("PropertyGroupId") propertyGroupId: id
}
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
type flinkApplicationConfigurationUpdate = {
@as("ParallelismConfigurationUpdate") parallelismConfigurationUpdate: option<parallelismConfigurationUpdate>,
  @as("MonitoringConfigurationUpdate") monitoringConfigurationUpdate: option<monitoringConfigurationUpdate>,
  @as("CheckpointConfigurationUpdate") checkpointConfigurationUpdate: option<checkpointConfigurationUpdate>
}
type flinkApplicationConfigurationDescription = {
@as("JobPlanDescription") jobPlanDescription: option<jobPlanDescription>,
  @as("ParallelismConfigurationDescription") parallelismConfigurationDescription: option<parallelismConfigurationDescription>,
  @as("MonitoringConfigurationDescription") monitoringConfigurationDescription: option<monitoringConfigurationDescription>,
  @as("CheckpointConfigurationDescription") checkpointConfigurationDescription: option<checkpointConfigurationDescription>
}
type flinkApplicationConfiguration = {
@as("ParallelismConfiguration") parallelismConfiguration: option<parallelismConfiguration>,
  @as("MonitoringConfiguration") monitoringConfiguration: option<monitoringConfiguration>,
  @as("CheckpointConfiguration") checkpointConfiguration: option<checkpointConfiguration>
}
type deployAsApplicationConfigurationUpdate = {
@as("S3ContentLocationUpdate") s3ContentLocationUpdate: s3ContentBaseLocationUpdate
}
type deployAsApplicationConfigurationDescription = {
@as("S3ContentLocationDescription") s3ContentLocationDescription: s3ContentBaseLocationDescription
}
type deployAsApplicationConfiguration = {
@as("S3ContentLocation") s3ContentLocation: s3ContentBaseLocation
}
type customArtifactConfigurationDescription = {
@as("MavenReferenceDescription") mavenReferenceDescription: option<mavenReference>,
  @as("S3ContentLocationDescription") s3ContentLocationDescription: option<s3ContentLocation>,
  @as("ArtifactType") artifactType: option<artifactType>
}
type customArtifactConfiguration = {
@as("MavenReference") mavenReference: option<mavenReference>,
  @as("S3ContentLocation") s3ContentLocation: option<s3ContentLocation>,
  @as("ArtifactType") artifactType: artifactType
}
type codeContentUpdate = {
@as("S3ContentLocationUpdate") s3ContentLocationUpdate: option<s3ContentLocationUpdate>,
  @as("ZipFileContentUpdate") zipFileContentUpdate: option<zipFileContent>,
  @as("TextContentUpdate") textContentUpdate: option<textContent>
}
type codeContentDescription = {
@as("S3ApplicationCodeLocationDescription") s3ApplicationCodeLocationDescription: option<s3ApplicationCodeLocationDescription>,
  @as("CodeSize") codeSize: option<codeSize>,
  @as("CodeMD5") codeMD5: option<codeMD5>,
  @as("TextContent") textContent: option<textContent>
}
type codeContent = {
@as("S3ContentLocation") s3ContentLocation: option<s3ContentLocation>,
  @as("ZipFileContent") zipFileContent: option<zipFileContent>,
  @as("TextContent") textContent: option<textContent>
}
type cloudWatchLoggingOptions = array<cloudWatchLoggingOption>
type cloudWatchLoggingOptionUpdates = array<cloudWatchLoggingOptionUpdate>
type cloudWatchLoggingOptionDescriptions = array<cloudWatchLoggingOptionDescription>
type catalogConfigurationUpdate = {
@as("GlueDataCatalogConfigurationUpdate") glueDataCatalogConfigurationUpdate: glueDataCatalogConfigurationUpdate
}
type catalogConfigurationDescription = {
@as("GlueDataCatalogConfigurationDescription") glueDataCatalogConfigurationDescription: glueDataCatalogConfigurationDescription
}
type catalogConfiguration = {
@as("GlueDataCatalogConfiguration") glueDataCatalogConfiguration: glueDataCatalogConfiguration
}
type applicationVersionSummaries = array<applicationVersionSummary>
type applicationSummaries = array<applicationSummary>
type vpcConfigurations = array<vpcConfiguration>
type vpcConfigurationUpdates = array<vpcConfigurationUpdate>
type vpcConfigurationDescriptions = array<vpcConfigurationDescription>
type sqlRunConfigurations = array<sqlRunConfiguration>
type recordFormat = {
@as("MappingParameters") mappingParameters: option<mappingParameters>,
  @as("RecordFormatType") recordFormatType: recordFormatType
}
type propertyGroups = array<propertyGroup>
type outputs = array<output>
type outputUpdates = array<outputUpdate>
type outputDescriptions = array<outputDescription>
type customArtifactsConfigurationList = array<customArtifactConfiguration>
type customArtifactsConfigurationDescriptionList = array<customArtifactConfigurationDescription>
type applicationCodeConfigurationUpdate = {
@as("CodeContentUpdate") codeContentUpdate: option<codeContentUpdate>,
  @as("CodeContentTypeUpdate") codeContentTypeUpdate: option<codeContentType>
}
type applicationCodeConfigurationDescription = {
@as("CodeContentDescription") codeContentDescription: option<codeContentDescription>,
  @as("CodeContentType") codeContentType: codeContentType
}
type applicationCodeConfiguration = {
@as("CodeContentType") codeContentType: codeContentType,
  @as("CodeContent") codeContent: option<codeContent>
}
type zeppelinApplicationConfigurationUpdate = {
@as("CustomArtifactsConfigurationUpdate") customArtifactsConfigurationUpdate: option<customArtifactsConfigurationList>,
  @as("DeployAsApplicationConfigurationUpdate") deployAsApplicationConfigurationUpdate: option<deployAsApplicationConfigurationUpdate>,
  @as("CatalogConfigurationUpdate") catalogConfigurationUpdate: option<catalogConfigurationUpdate>,
  @as("MonitoringConfigurationUpdate") monitoringConfigurationUpdate: option<zeppelinMonitoringConfigurationUpdate>
}
type zeppelinApplicationConfigurationDescription = {
@as("CustomArtifactsConfigurationDescription") customArtifactsConfigurationDescription: option<customArtifactsConfigurationDescriptionList>,
  @as("DeployAsApplicationConfigurationDescription") deployAsApplicationConfigurationDescription: option<deployAsApplicationConfigurationDescription>,
  @as("CatalogConfigurationDescription") catalogConfigurationDescription: option<catalogConfigurationDescription>,
  @as("MonitoringConfigurationDescription") monitoringConfigurationDescription: zeppelinMonitoringConfigurationDescription
}
type zeppelinApplicationConfiguration = {
@as("CustomArtifactsConfiguration") customArtifactsConfiguration: option<customArtifactsConfigurationList>,
  @as("DeployAsApplicationConfiguration") deployAsApplicationConfiguration: option<deployAsApplicationConfiguration>,
  @as("CatalogConfiguration") catalogConfiguration: option<catalogConfiguration>,
  @as("MonitoringConfiguration") monitoringConfiguration: option<zeppelinMonitoringConfiguration>
}
type sourceSchema = {
@as("RecordColumns") recordColumns: recordColumns,
  @as("RecordEncoding") recordEncoding: option<recordEncoding>,
  @as("RecordFormat") recordFormat: recordFormat
}
type runConfiguration = {
@as("ApplicationRestoreConfiguration") applicationRestoreConfiguration: option<applicationRestoreConfiguration>,
  @as("SqlRunConfigurations") sqlRunConfigurations: option<sqlRunConfigurations>,
  @as("FlinkRunConfiguration") flinkRunConfiguration: option<flinkRunConfiguration>
}
type inputSchemaUpdate = {
@as("RecordColumnUpdates") recordColumnUpdates: option<recordColumns>,
  @as("RecordEncodingUpdate") recordEncodingUpdate: option<recordEncoding>,
  @as("RecordFormatUpdate") recordFormatUpdate: option<recordFormat>
}
type environmentPropertyUpdates = {
@as("PropertyGroups") propertyGroups: propertyGroups
}
type environmentPropertyDescriptions = {
@as("PropertyGroupDescriptions") propertyGroupDescriptions: option<propertyGroups>
}
type environmentProperties = {
@as("PropertyGroups") propertyGroups: propertyGroups
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
type referenceDataSources = array<referenceDataSource>
type referenceDataSourceUpdates = array<referenceDataSourceUpdate>
type referenceDataSourceDescriptions = array<referenceDataSourceDescription>
type inputs = array<input>
type inputUpdates = array<inputUpdate>
type inputDescriptions = array<inputDescription>
type sqlApplicationConfigurationUpdate = {
@as("ReferenceDataSourceUpdates") referenceDataSourceUpdates: option<referenceDataSourceUpdates>,
  @as("OutputUpdates") outputUpdates: option<outputUpdates>,
  @as("InputUpdates") inputUpdates: option<inputUpdates>
}
type sqlApplicationConfigurationDescription = {
@as("ReferenceDataSourceDescriptions") referenceDataSourceDescriptions: option<referenceDataSourceDescriptions>,
  @as("OutputDescriptions") outputDescriptions: option<outputDescriptions>,
  @as("InputDescriptions") inputDescriptions: option<inputDescriptions>
}
type sqlApplicationConfiguration = {
@as("ReferenceDataSources") referenceDataSources: option<referenceDataSources>,
  @as("Outputs") outputs: option<outputs>,
  @as("Inputs") inputs: option<inputs>
}
type applicationConfigurationUpdate = {
@as("ZeppelinApplicationConfigurationUpdate") zeppelinApplicationConfigurationUpdate: option<zeppelinApplicationConfigurationUpdate>,
  @as("VpcConfigurationUpdates") vpcConfigurationUpdates: option<vpcConfigurationUpdates>,
  @as("ApplicationSnapshotConfigurationUpdate") applicationSnapshotConfigurationUpdate: option<applicationSnapshotConfigurationUpdate>,
  @as("EnvironmentPropertyUpdates") environmentPropertyUpdates: option<environmentPropertyUpdates>,
  @as("FlinkApplicationConfigurationUpdate") flinkApplicationConfigurationUpdate: option<flinkApplicationConfigurationUpdate>,
  @as("ApplicationCodeConfigurationUpdate") applicationCodeConfigurationUpdate: option<applicationCodeConfigurationUpdate>,
  @as("SqlApplicationConfigurationUpdate") sqlApplicationConfigurationUpdate: option<sqlApplicationConfigurationUpdate>
}
type applicationConfigurationDescription = {
@as("ZeppelinApplicationConfigurationDescription") zeppelinApplicationConfigurationDescription: option<zeppelinApplicationConfigurationDescription>,
  @as("VpcConfigurationDescriptions") vpcConfigurationDescriptions: option<vpcConfigurationDescriptions>,
  @as("ApplicationSnapshotConfigurationDescription") applicationSnapshotConfigurationDescription: option<applicationSnapshotConfigurationDescription>,
  @as("EnvironmentPropertyDescriptions") environmentPropertyDescriptions: option<environmentPropertyDescriptions>,
  @as("FlinkApplicationConfigurationDescription") flinkApplicationConfigurationDescription: option<flinkApplicationConfigurationDescription>,
  @as("RunConfigurationDescription") runConfigurationDescription: option<runConfigurationDescription>,
  @as("ApplicationCodeConfigurationDescription") applicationCodeConfigurationDescription: option<applicationCodeConfigurationDescription>,
  @as("SqlApplicationConfigurationDescription") sqlApplicationConfigurationDescription: option<sqlApplicationConfigurationDescription>
}
type applicationConfiguration = {
@as("ZeppelinApplicationConfiguration") zeppelinApplicationConfiguration: option<zeppelinApplicationConfiguration>,
  @as("VpcConfigurations") vpcConfigurations: option<vpcConfigurations>,
  @as("ApplicationSnapshotConfiguration") applicationSnapshotConfiguration: option<applicationSnapshotConfiguration>,
  @as("ApplicationCodeConfiguration") applicationCodeConfiguration: option<applicationCodeConfiguration>,
  @as("EnvironmentProperties") environmentProperties: option<environmentProperties>,
  @as("FlinkApplicationConfiguration") flinkApplicationConfiguration: option<flinkApplicationConfiguration>,
  @as("SqlApplicationConfiguration") sqlApplicationConfiguration: option<sqlApplicationConfiguration>
}
type applicationDetail = {
@as("ApplicationMode") applicationMode: option<applicationMode>,
  @as("ApplicationVersionRolledBackTo") applicationVersionRolledBackTo: option<applicationVersionId>,
  @as("ConditionalToken") conditionalToken: option<conditionalToken>,
  @as("ApplicationVersionRolledBackFrom") applicationVersionRolledBackFrom: option<applicationVersionId>,
  @as("ApplicationVersionUpdatedFrom") applicationVersionUpdatedFrom: option<applicationVersionId>,
  @as("ApplicationMaintenanceConfigurationDescription") applicationMaintenanceConfigurationDescription: option<applicationMaintenanceConfigurationDescription>,
  @as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
  @as("ApplicationConfigurationDescription") applicationConfigurationDescription: option<applicationConfigurationDescription>,
  @as("LastUpdateTimestamp") lastUpdateTimestamp: option<timestamp_>,
  @as("CreateTimestamp") createTimestamp: option<timestamp_>,
  @as("ApplicationVersionId") applicationVersionId: applicationVersionId,
  @as("ApplicationStatus") applicationStatus: applicationStatus,
  @as("ServiceExecutionRole") serviceExecutionRole: option<roleARN>,
  @as("RuntimeEnvironment") runtimeEnvironment: runtimeEnvironment,
  @as("ApplicationName") applicationName: applicationName,
  @as("ApplicationDescription") applicationDescription: option<applicationDescription>,
  @as("ApplicationARN") applicationARN: resourceARN
}

module StopApplication = {
  type t;
  type request = {
@as("Force") force: option<booleanObject>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "StopApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationVpcConfiguration = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: option<conditionalToken>,
  @as("VpcConfigurationId") vpcConfigurationId: id,
  @as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationVpcConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationSnapshot = {
  type t;
  type request = {
@as("SnapshotCreationTimestamp") snapshotCreationTimestamp: timestamp_,
  @as("SnapshotName") snapshotName: snapshotName,
  @as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationReferenceDataSource = {
  type t;
  type request = {
@as("ReferenceId") referenceId: id,
  @as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
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
  type response = {
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
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
  type response = {
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationInputProcessingConfigurationCommand";
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

module CreateApplicationSnapshot = {
  type t;
  type request = {
@as("SnapshotName") snapshotName: snapshotName,
  @as("ApplicationName") applicationName: applicationName
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "CreateApplicationSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApplicationPresignedUrl = {
  type t;
  type request = {
@as("SessionExpirationDurationInSeconds") sessionExpirationDurationInSeconds: option<sessionExpirationDurationInSeconds>,
  @as("UrlType") urlType: urlType,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("AuthorizedUrl") authorizedUrl: option<authorizedUrl>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "CreateApplicationPresignedUrlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApplicationMaintenanceConfiguration = {
  type t;
  type request = {
@as("ApplicationMaintenanceConfigurationUpdate") applicationMaintenanceConfigurationUpdate: applicationMaintenanceConfigurationUpdate,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationMaintenanceConfigurationDescription") applicationMaintenanceConfigurationDescription: option<applicationMaintenanceConfigurationDescription>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "UpdateApplicationMaintenanceConfigurationCommand";
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

module DescribeApplicationSnapshot = {
  type t;
  type request = {
@as("SnapshotName") snapshotName: snapshotName,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("SnapshotDetails") snapshotDetails: snapshotDetails
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DescribeApplicationSnapshotCommand";
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
@as("NextToken") nextToken: option<applicationName>,
  @as("Limit") limit: option<listApplicationsInputLimit>
}
  type response = {
@as("NextToken") nextToken: option<applicationName>,
  @as("ApplicationSummaries") applicationSummaries: applicationSummaries
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "ListApplicationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApplicationVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Limit") limit: option<listApplicationVersionsInputLimit>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ApplicationVersionSummaries") applicationVersionSummaries: option<applicationVersionSummaries>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "ListApplicationVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApplicationSnapshots = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Limit") limit: option<listSnapshotsInputLimit>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SnapshotSummaries") snapshotSummaries: option<snapshotSummaries>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "ListApplicationSnapshotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: option<conditionalToken>,
  @as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: id,
  @as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
  @as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DeleteApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationVpcConfiguration = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: option<conditionalToken>,
  @as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
  @as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("VpcConfigurationDescription") vpcConfigurationDescription: option<vpcConfigurationDescription>,
  @as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationVpcConfigurationCommand";
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
  type response = {
@as("InputProcessingConfigurationDescription") inputProcessingConfigurationDescription: option<inputProcessingConfigurationDescription>,
  @as("InputId") inputId: option<id>,
  @as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationInputProcessingConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: option<conditionalToken>,
  @as("CloudWatchLoggingOption") cloudWatchLoggingOption: cloudWatchLoggingOption,
  @as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: option<cloudWatchLoggingOptionDescriptions>,
  @as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddApplicationOutput = {
  type t;
  type request = {
@as("Output") output: output,
  @as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("OutputDescriptions") outputDescriptions: option<outputDescriptions>,
  @as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationOutputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartApplication = {
  type t;
  type request = {
@as("RunConfiguration") runConfiguration: option<runConfiguration>,
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
  @as("ServiceExecutionRole") serviceExecutionRole: roleARN,
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
  type response = {
@as("ReferenceDataSourceDescriptions") referenceDataSourceDescriptions: option<referenceDataSourceDescriptions>,
  @as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
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
  type response = {
@as("InputDescriptions") inputDescriptions: option<inputDescriptions>,
  @as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
  @as("ApplicationARN") applicationARN: option<resourceARN>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "AddApplicationInputCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: option<conditionalToken>,
  @as("CloudWatchLoggingOptionUpdates") cloudWatchLoggingOptionUpdates: option<cloudWatchLoggingOptionUpdates>,
  @as("RunConfigurationUpdate") runConfigurationUpdate: option<runConfigurationUpdate>,
  @as("ServiceExecutionRoleUpdate") serviceExecutionRoleUpdate: option<roleARN>,
  @as("ApplicationConfigurationUpdate") applicationConfigurationUpdate: option<applicationConfigurationUpdate>,
  @as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationDetail") applicationDetail: applicationDetail
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "UpdateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RollbackApplication = {
  type t;
  type request = {
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationDetail") applicationDetail: applicationDetail
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "RollbackApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicationVersion = {
  type t;
  type request = {
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationVersionDetail") applicationVersionDetail: option<applicationDetail>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DescribeApplicationVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeApplication = {
  type t;
  type request = {
@as("IncludeAdditionalDetails") includeAdditionalDetails: option<booleanObject>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationDetail") applicationDetail: applicationDetail
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "DescribeApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("ApplicationMode") applicationMode: option<applicationMode>,
  @as("Tags") tags: option<tags>,
  @as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
  @as("ApplicationConfiguration") applicationConfiguration: option<applicationConfiguration>,
  @as("ServiceExecutionRole") serviceExecutionRole: roleARN,
  @as("RuntimeEnvironment") runtimeEnvironment: runtimeEnvironment,
  @as("ApplicationDescription") applicationDescription: option<applicationDescription>,
  @as("ApplicationName") applicationName: applicationName
}
  type response = {
@as("ApplicationDetail") applicationDetail: applicationDetail
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (request) => t = "CreateApplicationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
