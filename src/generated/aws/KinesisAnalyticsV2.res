type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type zipFileContent = NodeJs.Buffer.t;
type vpcId = string
type urlType = [@as("ZEPPELIN_UI_URL") #ZEPPELIN_UI_URL | @as("FLINK_DASHBOARD_URL") #FLINK_DASHBOARD_URL]
type amazonawsTimestamp = Js.Date.t;
type textContent = string
type tagValue = string
type tagKey = string
type subnetId = string
type snapshotStatus = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("READY") #READY | @as("CREATING") #CREATING]
type snapshotName = string
type sessionExpirationDurationInSeconds = float;
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
type parallelismPerKPU = int;
type parallelism = int;
type objectVersion = string
type nextToken = string
type minPauseBetweenCheckpoints = float;
type metricsLevel = [@as("PARALLELISM") #PARALLELISM | @as("OPERATOR") #OPERATOR | @as("TASK") #TASK | @as("APPLICATION") #APPLICATION]
type mavenVersion = string
type mavenGroupId = string
type mavenArtifactId = string
type logStreamARN = string
type logLevel = [@as("DEBUG") #DEBUG | @as("ERROR") #ERROR | @as("WARN") #WARN | @as("INFO") #INFO]
type listSnapshotsInputLimit = int;
type listApplicationsInputLimit = int;
type listApplicationVersionsInputLimit = int;
type kinesisAnalyticsARN = string
type jobPlanDescription = string
type inputStartingPosition = [@as("LAST_STOPPED_POINT") #LAST_STOPPED_POINT | @as("TRIM_HORIZON") #TRIM_HORIZON | @as("NOW") #NOW]
type inputParallelismCount = int;
type inAppTableName = string
type inAppStreamName = string
type id = string
type fileKey = string
type errorMessage = string
type databaseARN = string
type configurationType = [@as("CUSTOM") #CUSTOM | @as("DEFAULT") #DEFAULT]
type conditionalToken = string
type codeSize = float;
type codeMD5 = string
type codeContentType = [@as("ZIPFILE") #ZIPFILE | @as("PLAINTEXT") #PLAINTEXT]
type checkpointInterval = float;
type bucketARN = string
type booleanObject = bool;
type basePath = string
type authorizedUrl = string
type artifactType = [@as("DEPENDENCY_JAR") #DEPENDENCY_JAR | @as("UDF") #UDF]
type applicationVersionId = float;
type applicationStatus = [@as("ROLLED_BACK") #ROLLED_BACK | @as("ROLLING_BACK") #ROLLING_BACK | @as("MAINTENANCE") #MAINTENANCE | @as("FORCE_STOPPING") #FORCE_STOPPING | @as("AUTOSCALING") #AUTOSCALING | @as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("READY") #READY | @as("STOPPING") #STOPPING | @as("STARTING") #STARTING | @as("DELETING") #DELETING]
type applicationRestoreType = [@as("RESTORE_FROM_CUSTOM_SNAPSHOT") #RESTORE_FROM_CUSTOM_SNAPSHOT | @as("RESTORE_FROM_LATEST_SNAPSHOT") #RESTORE_FROM_LATEST_SNAPSHOT | @as("SKIP_RESTORE_FROM_SNAPSHOT") #SKIP_RESTORE_FROM_SNAPSHOT]
type applicationName = string
type applicationMode = [@as("INTERACTIVE") #INTERACTIVE | @as("STREAMING") #STREAMING]
type applicationMaintenanceWindowStartTime = string
type applicationMaintenanceWindowEndTime = string
type applicationDescription = string
type zeppelinMonitoringConfigurationUpdate = {
@as("LogLevelUpdate") logLevelUpdate: option<logLevel>
}
type zeppelinMonitoringConfigurationDescription = {
@as("LogLevel") logLevel: logLevel
}
type zeppelinMonitoringConfiguration = {
@as("LogLevel") logLevel: option<logLevel>
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type subnetIds = array<subnetId>
type snapshotDetails = {
@as("SnapshotCreationTimestamp") snapshotCreationTimestamp: amazonawsTimestamp,
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
@as("SnapshotStatus") snapshotStatus: option<snapshotStatus>,
@as("SnapshotName") snapshotName: option<snapshotName>
}
type securityGroupIds = array<securityGroupId>
type s3ReferenceDataSourceUpdate = {
@as("FileKeyUpdate") fileKeyUpdate: fileKey,
@as("BucketARNUpdate") bucketARNUpdate: bucketARN
}
type s3ReferenceDataSourceDescription = {
@as("ReferenceRoleARN") referenceRoleARN: roleARN,
@as("FileKey") fileKey: option<fileKey>,
@as("BucketARN") bucketARN: option<bucketARN>
}
type s3ReferenceDataSource = {
@as("FileKey") fileKey: fileKey,
@as("BucketARN") bucketARN: bucketARN
}
type s3ContentLocationUpdate = {
@as("ObjectVersionUpdate") objectVersionUpdate: objectVersion,
@as("FileKeyUpdate") fileKeyUpdate: fileKey,
@as("BucketARNUpdate") bucketARNUpdate: bucketARN
}
type s3ContentLocation = {
@as("ObjectVersion") objectVersion: objectVersion,
@as("FileKey") fileKey: option<fileKey>,
@as("BucketARN") bucketARN: option<bucketARN>
}
type s3ContentBaseLocationUpdate = {
@as("BasePathUpdate") basePathUpdate: basePath,
@as("BucketARNUpdate") bucketARNUpdate: option<bucketARN>
}
type s3ContentBaseLocationDescription = {
@as("BasePath") basePath: basePath,
@as("BucketARN") bucketARN: option<bucketARN>
}
type s3ContentBaseLocation = {
@as("BasePath") basePath: basePath,
@as("BucketARN") bucketARN: option<bucketARN>
}
type s3Configuration = {
@as("FileKey") fileKey: option<fileKey>,
@as("BucketARN") bucketARN: option<bucketARN>
}
type s3ApplicationCodeLocationDescription = {
@as("ObjectVersion") objectVersion: objectVersion,
@as("FileKey") fileKey: option<fileKey>,
@as("BucketARN") bucketARN: option<bucketARN>
}
type recordColumn = {
@as("SqlType") sqlType: option<recordColumnSqlType>,
@as("Mapping") mapping: recordColumnMapping,
@as("Name") name: option<recordColumnName>
}
type rawInputRecords = array<rawInputRecord>
type propertyMap = Js.Dict.t< propertyValue>
type processedInputRecords = array<processedInputRecord>
type parsedInputRecord = array<parsedInputRecordField>
type parallelismConfigurationUpdate = {
@as("AutoScalingEnabledUpdate") autoScalingEnabledUpdate: booleanObject,
@as("ParallelismPerKPUUpdate") parallelismPerKPUUpdate: parallelismPerKPU,
@as("ParallelismUpdate") parallelismUpdate: parallelism,
@as("ConfigurationTypeUpdate") configurationTypeUpdate: configurationType
}
type parallelismConfigurationDescription = {
@as("AutoScalingEnabled") autoScalingEnabled: booleanObject,
@as("CurrentParallelism") currentParallelism: parallelism,
@as("ParallelismPerKPU") parallelismPerKPU: parallelismPerKPU,
@as("Parallelism") parallelism: parallelism,
@as("ConfigurationType") configurationType: configurationType
}
type parallelismConfiguration = {
@as("AutoScalingEnabled") autoScalingEnabled: booleanObject,
@as("ParallelismPerKPU") parallelismPerKPU: parallelismPerKPU,
@as("Parallelism") parallelism: parallelism,
@as("ConfigurationType") configurationType: option<configurationType>
}
type monitoringConfigurationUpdate = {
@as("LogLevelUpdate") logLevelUpdate: logLevel,
@as("MetricsLevelUpdate") metricsLevelUpdate: metricsLevel,
@as("ConfigurationTypeUpdate") configurationTypeUpdate: configurationType
}
type monitoringConfigurationDescription = {
@as("LogLevel") logLevel: logLevel,
@as("MetricsLevel") metricsLevel: metricsLevel,
@as("ConfigurationType") configurationType: configurationType
}
type monitoringConfiguration = {
@as("LogLevel") logLevel: logLevel,
@as("MetricsLevel") metricsLevel: metricsLevel,
@as("ConfigurationType") configurationType: option<configurationType>
}
type mavenReference = {
@as("Version") version: option<mavenVersion>,
@as("ArtifactId") artifactId: option<mavenArtifactId>,
@as("GroupId") groupId: option<mavenGroupId>
}
type lambdaOutputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type lambdaOutputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type lambdaOutput = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsOutputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisStreamsOutputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsOutput = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsInputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisStreamsInputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisStreamsInput = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseOutputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisFirehoseOutputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseOutput = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseInputUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type kinesisFirehoseInputDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type kinesisFirehoseInput = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
type jSONMappingParameters = {
@as("RecordRowPath") recordRowPath: option<recordRowPath>
}
type inputStartingPositionConfiguration = {
@as("InputStartingPosition") inputStartingPosition: inputStartingPosition
}
type inputParallelismUpdate = {
@as("CountUpdate") countUpdate: option<inputParallelismCount>
}
type inputParallelism = {
@as("Count") count: inputParallelismCount
}
type inputLambdaProcessorUpdate = {
@as("ResourceARNUpdate") resourceARNUpdate: option<resourceARN>
}
type inputLambdaProcessorDescription = {
@as("RoleARN") roleARN: roleARN,
@as("ResourceARN") resourceARN: option<resourceARN>
}
type inputLambdaProcessor = {
@as("ResourceARN") resourceARN: option<resourceARN>
}
type inAppStreamNames = array<inAppStreamName>
type glueDataCatalogConfigurationUpdate = {
@as("DatabaseARNUpdate") databaseARNUpdate: databaseARN
}
type glueDataCatalogConfigurationDescription = {
@as("DatabaseARN") databaseARN: option<databaseARN>
}
type glueDataCatalogConfiguration = {
@as("DatabaseARN") databaseARN: option<databaseARN>
}
type flinkRunConfiguration = {
@as("AllowNonRestoredState") allowNonRestoredState: booleanObject
}
type destinationSchema = {
@as("RecordFormatType") recordFormatType: option<recordFormatType>
}
type cloudWatchLoggingOptionUpdate = {
@as("LogStreamARNUpdate") logStreamARNUpdate: logStreamARN,
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: option<id>
}
type cloudWatchLoggingOptionDescription = {
@as("RoleARN") roleARN: roleARN,
@as("LogStreamARN") logStreamARN: option<logStreamARN>,
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: id
}
type cloudWatchLoggingOption = {
@as("LogStreamARN") logStreamARN: option<logStreamARN>
}
type checkpointConfigurationUpdate = {
@as("MinPauseBetweenCheckpointsUpdate") minPauseBetweenCheckpointsUpdate: minPauseBetweenCheckpoints,
@as("CheckpointIntervalUpdate") checkpointIntervalUpdate: checkpointInterval,
@as("CheckpointingEnabledUpdate") checkpointingEnabledUpdate: booleanObject,
@as("ConfigurationTypeUpdate") configurationTypeUpdate: configurationType
}
type checkpointConfigurationDescription = {
@as("MinPauseBetweenCheckpoints") minPauseBetweenCheckpoints: minPauseBetweenCheckpoints,
@as("CheckpointInterval") checkpointInterval: checkpointInterval,
@as("CheckpointingEnabled") checkpointingEnabled: booleanObject,
@as("ConfigurationType") configurationType: configurationType
}
type checkpointConfiguration = {
@as("MinPauseBetweenCheckpoints") minPauseBetweenCheckpoints: minPauseBetweenCheckpoints,
@as("CheckpointInterval") checkpointInterval: checkpointInterval,
@as("CheckpointingEnabled") checkpointingEnabled: booleanObject,
@as("ConfigurationType") configurationType: option<configurationType>
}
type cSVMappingParameters = {
@as("RecordColumnDelimiter") recordColumnDelimiter: option<recordColumnDelimiter>,
@as("RecordRowDelimiter") recordRowDelimiter: option<recordRowDelimiter>
}
type applicationVersionSummary = {
@as("ApplicationStatus") applicationStatus: option<applicationStatus>,
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>
}
type applicationSummary = {
@as("ApplicationMode") applicationMode: applicationMode,
@as("RuntimeEnvironment") runtimeEnvironment: option<runtimeEnvironment>,
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
@as("ApplicationStatus") applicationStatus: option<applicationStatus>,
@as("ApplicationARN") applicationARN: option<resourceARN>,
@as("ApplicationName") applicationName: option<applicationName>
}
type applicationSnapshotConfigurationUpdate = {
@as("SnapshotsEnabledUpdate") snapshotsEnabledUpdate: option<booleanObject>
}
type applicationSnapshotConfigurationDescription = {
@as("SnapshotsEnabled") snapshotsEnabled: option<booleanObject>
}
type applicationSnapshotConfiguration = {
@as("SnapshotsEnabled") snapshotsEnabled: option<booleanObject>
}
type applicationRestoreConfiguration = {
@as("SnapshotName") snapshotName: snapshotName,
@as("ApplicationRestoreType") applicationRestoreType: option<applicationRestoreType>
}
type applicationMaintenanceConfigurationUpdate = {
@as("ApplicationMaintenanceWindowStartTimeUpdate") applicationMaintenanceWindowStartTimeUpdate: option<applicationMaintenanceWindowStartTime>
}
type applicationMaintenanceConfigurationDescription = {
@as("ApplicationMaintenanceWindowEndTime") applicationMaintenanceWindowEndTime: option<applicationMaintenanceWindowEndTime>,
@as("ApplicationMaintenanceWindowStartTime") applicationMaintenanceWindowStartTime: option<applicationMaintenanceWindowStartTime>
}
type vpcConfigurationUpdate = {
@as("SecurityGroupIdUpdates") securityGroupIdUpdates: securityGroupIds,
@as("SubnetIdUpdates") subnetIdUpdates: subnetIds,
@as("VpcConfigurationId") vpcConfigurationId: option<id>
}
type vpcConfigurationDescription = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>,
@as("VpcConfigurationId") vpcConfigurationId: option<id>
}
type vpcConfiguration = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("SubnetIds") subnetIds: option<subnetIds>
}
type tags = array<tag>
type sqlRunConfiguration = {
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: option<inputStartingPositionConfiguration>,
@as("InputId") inputId: option<id>
}
type snapshotSummaries = array<snapshotDetails>
type runConfigurationUpdate = {
@as("ApplicationRestoreConfiguration") applicationRestoreConfiguration: applicationRestoreConfiguration,
@as("FlinkRunConfiguration") flinkRunConfiguration: flinkRunConfiguration
}
type runConfigurationDescription = {
@as("FlinkRunConfigurationDescription") flinkRunConfigurationDescription: flinkRunConfiguration,
@as("ApplicationRestoreConfigurationDescription") applicationRestoreConfigurationDescription: applicationRestoreConfiguration
}
type recordColumns = array<recordColumn>
type propertyGroup = {
@as("PropertyMap") propertyMap: option<propertyMap>,
@as("PropertyGroupId") propertyGroupId: option<id>
}
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
type flinkApplicationConfigurationUpdate = {
@as("ParallelismConfigurationUpdate") parallelismConfigurationUpdate: parallelismConfigurationUpdate,
@as("MonitoringConfigurationUpdate") monitoringConfigurationUpdate: monitoringConfigurationUpdate,
@as("CheckpointConfigurationUpdate") checkpointConfigurationUpdate: checkpointConfigurationUpdate
}
type flinkApplicationConfigurationDescription = {
@as("JobPlanDescription") jobPlanDescription: jobPlanDescription,
@as("ParallelismConfigurationDescription") parallelismConfigurationDescription: parallelismConfigurationDescription,
@as("MonitoringConfigurationDescription") monitoringConfigurationDescription: monitoringConfigurationDescription,
@as("CheckpointConfigurationDescription") checkpointConfigurationDescription: checkpointConfigurationDescription
}
type flinkApplicationConfiguration = {
@as("ParallelismConfiguration") parallelismConfiguration: parallelismConfiguration,
@as("MonitoringConfiguration") monitoringConfiguration: monitoringConfiguration,
@as("CheckpointConfiguration") checkpointConfiguration: checkpointConfiguration
}
type deployAsApplicationConfigurationUpdate = {
@as("S3ContentLocationUpdate") s3ContentLocationUpdate: option<s3ContentBaseLocationUpdate>
}
type deployAsApplicationConfigurationDescription = {
@as("S3ContentLocationDescription") s3ContentLocationDescription: option<s3ContentBaseLocationDescription>
}
type deployAsApplicationConfiguration = {
@as("S3ContentLocation") s3ContentLocation: option<s3ContentBaseLocation>
}
type customArtifactConfigurationDescription = {
@as("MavenReferenceDescription") mavenReferenceDescription: mavenReference,
@as("S3ContentLocationDescription") s3ContentLocationDescription: s3ContentLocation,
@as("ArtifactType") artifactType: artifactType
}
type customArtifactConfiguration = {
@as("MavenReference") mavenReference: mavenReference,
@as("S3ContentLocation") s3ContentLocation: s3ContentLocation,
@as("ArtifactType") artifactType: option<artifactType>
}
type codeContentUpdate = {
@as("S3ContentLocationUpdate") s3ContentLocationUpdate: s3ContentLocationUpdate,
@as("ZipFileContentUpdate") zipFileContentUpdate: zipFileContent,
@as("TextContentUpdate") textContentUpdate: textContent
}
type codeContentDescription = {
@as("S3ApplicationCodeLocationDescription") s3ApplicationCodeLocationDescription: s3ApplicationCodeLocationDescription,
@as("CodeSize") codeSize: codeSize,
@as("CodeMD5") codeMD5: codeMD5,
@as("TextContent") textContent: textContent
}
type codeContent = {
@as("S3ContentLocation") s3ContentLocation: s3ContentLocation,
@as("ZipFileContent") zipFileContent: zipFileContent,
@as("TextContent") textContent: textContent
}
type cloudWatchLoggingOptions = array<cloudWatchLoggingOption>
type cloudWatchLoggingOptionUpdates = array<cloudWatchLoggingOptionUpdate>
type cloudWatchLoggingOptionDescriptions = array<cloudWatchLoggingOptionDescription>
type catalogConfigurationUpdate = {
@as("GlueDataCatalogConfigurationUpdate") glueDataCatalogConfigurationUpdate: option<glueDataCatalogConfigurationUpdate>
}
type catalogConfigurationDescription = {
@as("GlueDataCatalogConfigurationDescription") glueDataCatalogConfigurationDescription: option<glueDataCatalogConfigurationDescription>
}
type catalogConfiguration = {
@as("GlueDataCatalogConfiguration") glueDataCatalogConfiguration: option<glueDataCatalogConfiguration>
}
type applicationVersionSummaries = array<applicationVersionSummary>
type applicationSummaries = array<applicationSummary>
type vpcConfigurations = array<vpcConfiguration>
type vpcConfigurationUpdates = array<vpcConfigurationUpdate>
type vpcConfigurationDescriptions = array<vpcConfigurationDescription>
type sqlRunConfigurations = array<sqlRunConfiguration>
type recordFormat = {
@as("MappingParameters") mappingParameters: mappingParameters,
@as("RecordFormatType") recordFormatType: option<recordFormatType>
}
type propertyGroups = array<propertyGroup>
type outputs = array<output>
type outputUpdates = array<outputUpdate>
type outputDescriptions = array<outputDescription>
type customArtifactsConfigurationList = array<customArtifactConfiguration>
type customArtifactsConfigurationDescriptionList = array<customArtifactConfigurationDescription>
type applicationCodeConfigurationUpdate = {
@as("CodeContentUpdate") codeContentUpdate: codeContentUpdate,
@as("CodeContentTypeUpdate") codeContentTypeUpdate: codeContentType
}
type applicationCodeConfigurationDescription = {
@as("CodeContentDescription") codeContentDescription: codeContentDescription,
@as("CodeContentType") codeContentType: option<codeContentType>
}
type applicationCodeConfiguration = {
@as("CodeContentType") codeContentType: option<codeContentType>,
@as("CodeContent") codeContent: codeContent
}
type zeppelinApplicationConfigurationUpdate = {
@as("CustomArtifactsConfigurationUpdate") customArtifactsConfigurationUpdate: customArtifactsConfigurationList,
@as("DeployAsApplicationConfigurationUpdate") deployAsApplicationConfigurationUpdate: deployAsApplicationConfigurationUpdate,
@as("CatalogConfigurationUpdate") catalogConfigurationUpdate: catalogConfigurationUpdate,
@as("MonitoringConfigurationUpdate") monitoringConfigurationUpdate: zeppelinMonitoringConfigurationUpdate
}
type zeppelinApplicationConfigurationDescription = {
@as("CustomArtifactsConfigurationDescription") customArtifactsConfigurationDescription: customArtifactsConfigurationDescriptionList,
@as("DeployAsApplicationConfigurationDescription") deployAsApplicationConfigurationDescription: deployAsApplicationConfigurationDescription,
@as("CatalogConfigurationDescription") catalogConfigurationDescription: catalogConfigurationDescription,
@as("MonitoringConfigurationDescription") monitoringConfigurationDescription: option<zeppelinMonitoringConfigurationDescription>
}
type zeppelinApplicationConfiguration = {
@as("CustomArtifactsConfiguration") customArtifactsConfiguration: customArtifactsConfigurationList,
@as("DeployAsApplicationConfiguration") deployAsApplicationConfiguration: deployAsApplicationConfiguration,
@as("CatalogConfiguration") catalogConfiguration: catalogConfiguration,
@as("MonitoringConfiguration") monitoringConfiguration: zeppelinMonitoringConfiguration
}
type sourceSchema = {
@as("RecordColumns") recordColumns: option<recordColumns>,
@as("RecordEncoding") recordEncoding: recordEncoding,
@as("RecordFormat") recordFormat: option<recordFormat>
}
type runConfiguration = {
@as("ApplicationRestoreConfiguration") applicationRestoreConfiguration: applicationRestoreConfiguration,
@as("SqlRunConfigurations") sqlRunConfigurations: sqlRunConfigurations,
@as("FlinkRunConfiguration") flinkRunConfiguration: flinkRunConfiguration
}
type inputSchemaUpdate = {
@as("RecordColumnUpdates") recordColumnUpdates: recordColumns,
@as("RecordEncodingUpdate") recordEncodingUpdate: recordEncoding,
@as("RecordFormatUpdate") recordFormatUpdate: recordFormat
}
type environmentPropertyUpdates = {
@as("PropertyGroups") propertyGroups: option<propertyGroups>
}
type environmentPropertyDescriptions = {
@as("PropertyGroupDescriptions") propertyGroupDescriptions: propertyGroups
}
type environmentProperties = {
@as("PropertyGroups") propertyGroups: option<propertyGroups>
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
type referenceDataSources = array<referenceDataSource>
type referenceDataSourceUpdates = array<referenceDataSourceUpdate>
type referenceDataSourceDescriptions = array<referenceDataSourceDescription>
type inputs = array<input>
type inputUpdates = array<inputUpdate>
type inputDescriptions = array<inputDescription>
type sqlApplicationConfigurationUpdate = {
@as("ReferenceDataSourceUpdates") referenceDataSourceUpdates: referenceDataSourceUpdates,
@as("OutputUpdates") outputUpdates: outputUpdates,
@as("InputUpdates") inputUpdates: inputUpdates
}
type sqlApplicationConfigurationDescription = {
@as("ReferenceDataSourceDescriptions") referenceDataSourceDescriptions: referenceDataSourceDescriptions,
@as("OutputDescriptions") outputDescriptions: outputDescriptions,
@as("InputDescriptions") inputDescriptions: inputDescriptions
}
type sqlApplicationConfiguration = {
@as("ReferenceDataSources") referenceDataSources: referenceDataSources,
@as("Outputs") outputs: outputs,
@as("Inputs") inputs: inputs
}
type applicationConfigurationUpdate = {
@as("ZeppelinApplicationConfigurationUpdate") zeppelinApplicationConfigurationUpdate: zeppelinApplicationConfigurationUpdate,
@as("VpcConfigurationUpdates") vpcConfigurationUpdates: vpcConfigurationUpdates,
@as("ApplicationSnapshotConfigurationUpdate") applicationSnapshotConfigurationUpdate: applicationSnapshotConfigurationUpdate,
@as("EnvironmentPropertyUpdates") environmentPropertyUpdates: environmentPropertyUpdates,
@as("FlinkApplicationConfigurationUpdate") flinkApplicationConfigurationUpdate: flinkApplicationConfigurationUpdate,
@as("ApplicationCodeConfigurationUpdate") applicationCodeConfigurationUpdate: applicationCodeConfigurationUpdate,
@as("SqlApplicationConfigurationUpdate") sqlApplicationConfigurationUpdate: sqlApplicationConfigurationUpdate
}
type applicationConfigurationDescription = {
@as("ZeppelinApplicationConfigurationDescription") zeppelinApplicationConfigurationDescription: zeppelinApplicationConfigurationDescription,
@as("VpcConfigurationDescriptions") vpcConfigurationDescriptions: vpcConfigurationDescriptions,
@as("ApplicationSnapshotConfigurationDescription") applicationSnapshotConfigurationDescription: applicationSnapshotConfigurationDescription,
@as("EnvironmentPropertyDescriptions") environmentPropertyDescriptions: environmentPropertyDescriptions,
@as("FlinkApplicationConfigurationDescription") flinkApplicationConfigurationDescription: flinkApplicationConfigurationDescription,
@as("RunConfigurationDescription") runConfigurationDescription: runConfigurationDescription,
@as("ApplicationCodeConfigurationDescription") applicationCodeConfigurationDescription: applicationCodeConfigurationDescription,
@as("SqlApplicationConfigurationDescription") sqlApplicationConfigurationDescription: sqlApplicationConfigurationDescription
}
type applicationConfiguration = {
@as("ZeppelinApplicationConfiguration") zeppelinApplicationConfiguration: zeppelinApplicationConfiguration,
@as("VpcConfigurations") vpcConfigurations: vpcConfigurations,
@as("ApplicationSnapshotConfiguration") applicationSnapshotConfiguration: applicationSnapshotConfiguration,
@as("ApplicationCodeConfiguration") applicationCodeConfiguration: applicationCodeConfiguration,
@as("EnvironmentProperties") environmentProperties: environmentProperties,
@as("FlinkApplicationConfiguration") flinkApplicationConfiguration: flinkApplicationConfiguration,
@as("SqlApplicationConfiguration") sqlApplicationConfiguration: sqlApplicationConfiguration
}
type applicationDetail = {
@as("ApplicationMode") applicationMode: applicationMode,
@as("ApplicationVersionRolledBackTo") applicationVersionRolledBackTo: applicationVersionId,
@as("ConditionalToken") conditionalToken: conditionalToken,
@as("ApplicationVersionRolledBackFrom") applicationVersionRolledBackFrom: applicationVersionId,
@as("ApplicationVersionUpdatedFrom") applicationVersionUpdatedFrom: applicationVersionId,
@as("ApplicationMaintenanceConfigurationDescription") applicationMaintenanceConfigurationDescription: applicationMaintenanceConfigurationDescription,
@as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: cloudWatchLoggingOptionDescriptions,
@as("ApplicationConfigurationDescription") applicationConfigurationDescription: applicationConfigurationDescription,
@as("LastUpdateTimestamp") lastUpdateTimestamp: amazonawsTimestamp,
@as("CreateTimestamp") createTimestamp: amazonawsTimestamp,
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
@as("ApplicationStatus") applicationStatus: option<applicationStatus>,
@as("ServiceExecutionRole") serviceExecutionRole: roleARN,
@as("RuntimeEnvironment") runtimeEnvironment: option<runtimeEnvironment>,
@as("ApplicationName") applicationName: option<applicationName>,
@as("ApplicationDescription") applicationDescription: applicationDescription,
@as("ApplicationARN") applicationARN: option<resourceARN>
}
type clientType;
@module("@aws-sdk/client-kinesisanalytics") @new external createClient: unit => clientType = "KinesisAnalyticsV2Client";
module StopApplication = {
  type t;
  type request = {
@as("Force") force: booleanObject,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "StopApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationVpcConfiguration = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: conditionalToken,
@as("VpcConfigurationId") vpcConfigurationId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationVpcConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationSnapshot = {
  type t;
  type request = {
@as("SnapshotCreationTimestamp") snapshotCreationTimestamp: option<amazonawsTimestamp>,
@as("SnapshotName") snapshotName: option<snapshotName>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationReferenceDataSource = {
  type t;
  type request = {
@as("ReferenceId") referenceId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationReferenceDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationOutput = {
  type t;
  type request = {
@as("OutputId") outputId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationInputProcessingConfiguration = {
  type t;
  type request = {
@as("InputId") inputId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationInputProcessingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplication = {
  type t;
  type request = {
@as("CreateTimestamp") createTimestamp: option<amazonawsTimestamp>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplicationSnapshot = {
  type t;
  type request = {
@as("SnapshotName") snapshotName: option<snapshotName>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplicationPresignedUrl = {
  type t;
  type request = {
@as("SessionExpirationDurationInSeconds") sessionExpirationDurationInSeconds: sessionExpirationDurationInSeconds,
@as("UrlType") urlType: option<urlType>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("AuthorizedUrl") authorizedUrl: authorizedUrl
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationPresignedUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplicationMaintenanceConfiguration = {
  type t;
  type request = {
@as("ApplicationMaintenanceConfigurationUpdate") applicationMaintenanceConfigurationUpdate: option<applicationMaintenanceConfigurationUpdate>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationMaintenanceConfigurationDescription") applicationMaintenanceConfigurationDescription: applicationMaintenanceConfigurationDescription,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationMaintenanceConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("ResourceARN") resourceARN: option<kinesisAnalyticsARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicationSnapshot = {
  type t;
  type request = {
@as("SnapshotName") snapshotName: option<snapshotName>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("SnapshotDetails") snapshotDetails: option<snapshotDetails>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DescribeApplicationSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceARN") resourceARN: option<kinesisAnalyticsARN>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
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
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplications = {
  type t;
  type request = {
@as("NextToken") nextToken: applicationName,
@as("Limit") limit: listApplicationsInputLimit
}
  type response = {
@as("NextToken") nextToken: applicationName,
@as("ApplicationSummaries") applicationSummaries: option<applicationSummaries>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "ListApplicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplicationVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: listApplicationVersionsInputLimit,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ApplicationVersionSummaries") applicationVersionSummaries: applicationVersionSummaries
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "ListApplicationVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApplicationSnapshots = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: listSnapshotsInputLimit,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SnapshotSummaries") snapshotSummaries: snapshotSummaries
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "ListApplicationSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: conditionalToken,
@as("CloudWatchLoggingOptionId") cloudWatchLoggingOptionId: option<id>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: cloudWatchLoggingOptionDescriptions,
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DeleteApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationVpcConfiguration = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: conditionalToken,
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("VpcConfigurationDescription") vpcConfigurationDescription: vpcConfigurationDescription,
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "AddApplicationVpcConfigurationCommand";
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
  type response = {
@as("InputProcessingConfigurationDescription") inputProcessingConfigurationDescription: inputProcessingConfigurationDescription,
@as("InputId") inputId: id,
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "AddApplicationInputProcessingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationCloudWatchLoggingOption = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: conditionalToken,
@as("CloudWatchLoggingOption") cloudWatchLoggingOption: option<cloudWatchLoggingOption>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("CloudWatchLoggingOptionDescriptions") cloudWatchLoggingOptionDescriptions: cloudWatchLoggingOptionDescriptions,
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "AddApplicationCloudWatchLoggingOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationOutput = {
  type t;
  type request = {
@as("Output") output: option<output>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("OutputDescriptions") outputDescriptions: outputDescriptions,
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "AddApplicationOutputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartApplication = {
  type t;
  type request = {
@as("RunConfiguration") runConfiguration: runConfiguration,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = unit
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "StartApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DiscoverInputSchema = {
  type t;
  type request = {
@as("InputProcessingConfiguration") inputProcessingConfiguration: inputProcessingConfiguration,
@as("S3Configuration") s3Configuration: s3Configuration,
@as("InputStartingPositionConfiguration") inputStartingPositionConfiguration: inputStartingPositionConfiguration,
@as("ServiceExecutionRole") serviceExecutionRole: option<roleARN>,
@as("ResourceARN") resourceARN: resourceARN
}
  type response = {
@as("RawInputRecords") rawInputRecords: rawInputRecords,
@as("ProcessedInputRecords") processedInputRecords: processedInputRecords,
@as("ParsedInputRecords") parsedInputRecords: parsedInputRecords,
@as("InputSchema") inputSchema: sourceSchema
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DiscoverInputSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationReferenceDataSource = {
  type t;
  type request = {
@as("ReferenceDataSource") referenceDataSource: option<referenceDataSource>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ReferenceDataSourceDescriptions") referenceDataSourceDescriptions: referenceDataSourceDescriptions,
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "AddApplicationReferenceDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddApplicationInput = {
  type t;
  type request = {
@as("Input") input: option<input>,
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("InputDescriptions") inputDescriptions: inputDescriptions,
@as("ApplicationVersionId") applicationVersionId: applicationVersionId,
@as("ApplicationARN") applicationARN: resourceARN
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "AddApplicationInputCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApplication = {
  type t;
  type request = {
@as("ConditionalToken") conditionalToken: conditionalToken,
@as("CloudWatchLoggingOptionUpdates") cloudWatchLoggingOptionUpdates: cloudWatchLoggingOptionUpdates,
@as("RunConfigurationUpdate") runConfigurationUpdate: runConfigurationUpdate,
@as("ServiceExecutionRoleUpdate") serviceExecutionRoleUpdate: roleARN,
@as("ApplicationConfigurationUpdate") applicationConfigurationUpdate: applicationConfigurationUpdate,
@as("CurrentApplicationVersionId") currentApplicationVersionId: applicationVersionId,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationDetail") applicationDetail: option<applicationDetail>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "UpdateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RollbackApplication = {
  type t;
  type request = {
@as("CurrentApplicationVersionId") currentApplicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationDetail") applicationDetail: option<applicationDetail>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "RollbackApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicationVersion = {
  type t;
  type request = {
@as("ApplicationVersionId") applicationVersionId: option<applicationVersionId>,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationVersionDetail") applicationVersionDetail: applicationDetail
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DescribeApplicationVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplication = {
  type t;
  type request = {
@as("IncludeAdditionalDetails") includeAdditionalDetails: booleanObject,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationDetail") applicationDetail: option<applicationDetail>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "DescribeApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApplication = {
  type t;
  type request = {
@as("ApplicationMode") applicationMode: applicationMode,
@as("Tags") tags: tags,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("ApplicationConfiguration") applicationConfiguration: applicationConfiguration,
@as("ServiceExecutionRole") serviceExecutionRole: option<roleARN>,
@as("RuntimeEnvironment") runtimeEnvironment: option<runtimeEnvironment>,
@as("ApplicationDescription") applicationDescription: applicationDescription,
@as("ApplicationName") applicationName: option<applicationName>
}
  type response = {
@as("ApplicationDetail") applicationDetail: option<applicationDetail>
}
  @module("@aws-sdk/client-kinesisanalytics") @new external new_: (Js.Promise.t<request>) => t = "CreateApplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
