type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type username = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type splunkS3BackupMode = [@as("AllEvents") #AllEvents | @as("FailedEventsOnly") #FailedEventsOnly]
type splunkRetryDurationInSeconds = int;
type sizeInMBs = int;
type s3BackupMode = [@as("Enabled") #Enabled | @as("Disabled") #Disabled]
type roleARN = string
type redshiftS3BackupMode = [@as("Enabled") #Enabled | @as("Disabled") #Disabled]
type redshiftRetryDurationInSeconds = int;
type putResponseRecordId = string
type proportion = float;
type processorType = [@as("Lambda") #Lambda]
type processorParameterValue = string
type processorParameterName = [@as("BufferIntervalInSeconds") #BufferIntervalInSeconds | @as("BufferSizeInMBs") #BufferSizeInMBs | @as("RoleArn") #RoleArn | @as("NumberOfRetries") #NumberOfRetries | @as("LambdaArn") #LambdaArn]
type prefix = string
type password = string
type parquetWriterVersion = [@as("V2") #V2 | @as("V1") #V1]
type parquetPageSizeBytes = int;
type parquetCompression = [@as("SNAPPY") #SNAPPY | @as("GZIP") #GZIP | @as("UNCOMPRESSED") #UNCOMPRESSED]
type orcStripeSizeBytes = int;
type orcRowIndexStride = int;
type orcFormatVersion = [@as("V0_12") #V0_12 | @as("V0_11") #V0_11]
type orcCompression = [@as("SNAPPY") #SNAPPY | @as("ZLIB") #ZLIB | @as("NONE") #NONE]
type nonNegativeIntegerObject = int;
type nonEmptyStringWithoutWhitespace = string
type nonEmptyString = string
type noEncryptionConfig = [@as("NoEncryption") #NoEncryption]
type logStreamName = string
type logGroupName = string
type listTagsForDeliveryStreamInputLimit = int;
type listDeliveryStreamsInputLimit = int;
type kinesisStreamARN = string
type keyType = [@as("CUSTOMER_MANAGED_CMK") #CUSTOMER_MANAGED_CMK | @as("AWS_OWNED_CMK") #AWS_OWNED_CMK]
type intervalInSeconds = int;
type httpEndpointUrl = string
type httpEndpointS3BackupMode = [@as("AllData") #AllData | @as("FailedDataOnly") #FailedDataOnly]
type httpEndpointRetryDurationInSeconds = int;
type httpEndpointName = string
type httpEndpointBufferingSizeInMBs = int;
type httpEndpointBufferingIntervalInSeconds = int;
type httpEndpointAttributeValue = string
type httpEndpointAttributeName = string
type httpEndpointAccessKey = string
type hECToken = string
type hECEndpointType = [@as("Event") #Event | @as("Raw") #Raw]
type hECEndpoint = string
type hECAcknowledgmentTimeoutInSeconds = int;
type errorOutputPrefix = string
type errorMessage = string
type errorCode = string
type elasticsearchTypeName = string
type elasticsearchS3BackupMode = [@as("AllDocuments") #AllDocuments | @as("FailedDocumentsOnly") #FailedDocumentsOnly]
type elasticsearchRetryDurationInSeconds = int;
type elasticsearchIndexRotationPeriod = [@as("OneMonth") #OneMonth | @as("OneWeek") #OneWeek | @as("OneDay") #OneDay | @as("OneHour") #OneHour | @as("NoRotation") #NoRotation]
type elasticsearchIndexName = string
type elasticsearchDomainARN = string
type elasticsearchClusterEndpoint = string
type elasticsearchBufferingSizeInMBs = int;
type elasticsearchBufferingIntervalInSeconds = int;
type destinationId = string
type describeDeliveryStreamInputLimit = int;
type deliveryStreamVersionId = string
type deliveryStreamType = [@as("KinesisStreamAsSource") #KinesisStreamAsSource | @as("DirectPut") #DirectPut]
type deliveryStreamStatus = [@as("ACTIVE") #ACTIVE | @as("DELETING_FAILED") #DELETING_FAILED | @as("DELETING") #DELETING | @as("CREATING_FAILED") #CREATING_FAILED | @as("CREATING") #CREATING]
type deliveryStreamName = string
type deliveryStreamFailureType = [@as("UNKNOWN_ERROR") #UNKNOWN_ERROR | @as("SECURITY_GROUP_ACCESS_DENIED") #SECURITY_GROUP_ACCESS_DENIED | @as("SUBNET_ACCESS_DENIED") #SUBNET_ACCESS_DENIED | @as("ENI_ACCESS_DENIED") #ENI_ACCESS_DENIED | @as("SECURITY_GROUP_NOT_FOUND") #SECURITY_GROUP_NOT_FOUND | @as("SUBNET_NOT_FOUND") #SUBNET_NOT_FOUND | @as("DELETE_ENI_FAILED") #DELETE_ENI_FAILED | @as("CREATE_ENI_FAILED") #CREATE_ENI_FAILED | @as("KMS_OPT_IN_REQUIRED") #KMS_OPT_IN_REQUIRED | @as("KMS_KEY_NOT_FOUND") #KMS_KEY_NOT_FOUND | @as("INVALID_KMS_KEY") #INVALID_KMS_KEY | @as("DISABLED_KMS_KEY") #DISABLED_KMS_KEY | @as("KMS_ACCESS_DENIED") #KMS_ACCESS_DENIED | @as("CREATE_KMS_GRANT_FAILED") #CREATE_KMS_GRANT_FAILED | @as("RETIRE_KMS_GRANT_FAILED") #RETIRE_KMS_GRANT_FAILED]
type deliveryStreamEncryptionStatus = [@as("DISABLING_FAILED") #DISABLING_FAILED | @as("DISABLING") #DISABLING | @as("DISABLED") #DISABLED | @as("ENABLING_FAILED") #ENABLING_FAILED | @as("ENABLING") #ENABLING | @as("ENABLED") #ENABLED]
type deliveryStreamARN = string
type deliveryStartTimestamp = Js.Date.t;
type dataTableName = string
type dataTableColumns = string
type data = NodeJs.Buffer.t;
type copyOptions = string
type contentEncoding = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type compressionFormat = [@as("HADOOP_SNAPPY") #HADOOP_SNAPPY | @as("Snappy") #Snappy | @as("ZIP") #ZIP | @as("GZIP") #GZIP | @as("UNCOMPRESSED") #UNCOMPRESSED]
type clusterJDBCURL = string
type bucketARN = string
type booleanObject = bool;
type blockSizeBytes = int;
type aWSKMSKeyARN = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type subnetIdList = array<nonEmptyStringWithoutWhitespace>
type splunkRetryOptions = {
@as("DurationInSeconds") durationInSeconds: splunkRetryDurationInSeconds
}
type securityGroupIdList = array<nonEmptyStringWithoutWhitespace>
type schemaConfiguration = {
@as("VersionId") versionId: nonEmptyStringWithoutWhitespace,
@as("Region") region: nonEmptyStringWithoutWhitespace,
@as("TableName") tableName: nonEmptyStringWithoutWhitespace,
@as("DatabaseName") databaseName: nonEmptyStringWithoutWhitespace,
@as("CatalogId") catalogId: nonEmptyStringWithoutWhitespace,
@as("RoleARN") roleARN: nonEmptyStringWithoutWhitespace
}
type redshiftRetryOptions = {
@as("DurationInSeconds") durationInSeconds: redshiftRetryDurationInSeconds
}
type record = {
@as("Data") data: option<data>
}
type putRecordBatchResponseEntry = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorCode") errorCode: errorCode,
@as("RecordId") recordId: putResponseRecordId
}
type processorParameter = {
@as("ParameterValue") parameterValue: option<processorParameterValue>,
@as("ParameterName") parameterName: option<processorParameterName>
}
type parquetSerDe = {
@as("WriterVersion") writerVersion: parquetWriterVersion,
@as("MaxPaddingBytes") maxPaddingBytes: nonNegativeIntegerObject,
@as("EnableDictionaryCompression") enableDictionaryCompression: booleanObject,
@as("Compression") compression: parquetCompression,
@as("PageSizeBytes") pageSizeBytes: parquetPageSizeBytes,
@as("BlockSizeBytes") blockSizeBytes: blockSizeBytes
}
type listOfNonEmptyStringsWithoutWhitespace = array<nonEmptyStringWithoutWhitespace>
type listOfNonEmptyStrings = array<nonEmptyString>
type kinesisStreamSourceDescription = {
@as("DeliveryStartTimestamp") deliveryStartTimestamp: deliveryStartTimestamp,
@as("RoleARN") roleARN: roleARN,
@as("KinesisStreamARN") kinesisStreamARN: kinesisStreamARN
}
type kinesisStreamSourceConfiguration = {
@as("RoleARN") roleARN: option<roleARN>,
@as("KinesisStreamARN") kinesisStreamARN: option<kinesisStreamARN>
}
type kMSEncryptionConfig = {
@as("AWSKMSKeyARN") aWSKMSKeyARN: option<aWSKMSKeyARN>
}
type httpEndpointRetryOptions = {
@as("DurationInSeconds") durationInSeconds: httpEndpointRetryDurationInSeconds
}
type httpEndpointDescription = {
@as("Name") name: httpEndpointName,
@as("Url") url: httpEndpointUrl
}
type httpEndpointConfiguration = {
@as("AccessKey") accessKey: httpEndpointAccessKey,
@as("Name") name: httpEndpointName,
@as("Url") url: option<httpEndpointUrl>
}
type httpEndpointCommonAttribute = {
@as("AttributeValue") attributeValue: option<httpEndpointAttributeValue>,
@as("AttributeName") attributeName: option<httpEndpointAttributeName>
}
type httpEndpointBufferingHints = {
@as("IntervalInSeconds") intervalInSeconds: httpEndpointBufferingIntervalInSeconds,
@as("SizeInMBs") sizeInMBs: httpEndpointBufferingSizeInMBs
}
type failureDescription = {
@as("Details") details: option<nonEmptyString>,
@as("Type") type_: option<deliveryStreamFailureType>
}
type elasticsearchRetryOptions = {
@as("DurationInSeconds") durationInSeconds: elasticsearchRetryDurationInSeconds
}
type elasticsearchBufferingHints = {
@as("SizeInMBs") sizeInMBs: elasticsearchBufferingSizeInMBs,
@as("IntervalInSeconds") intervalInSeconds: elasticsearchBufferingIntervalInSeconds
}
type deliveryStreamNameList = array<deliveryStreamName>
type deliveryStreamEncryptionConfigurationInput = {
@as("KeyType") keyType: option<keyType>,
@as("KeyARN") keyARN: aWSKMSKeyARN
}
type copyCommand = {
@as("CopyOptions") copyOptions: copyOptions,
@as("DataTableColumns") dataTableColumns: dataTableColumns,
@as("DataTableName") dataTableName: option<dataTableName>
}
type columnToJsonKeyMappings = Js.Dict.t< nonEmptyString>
type cloudWatchLoggingOptions = {
@as("LogStreamName") logStreamName: logStreamName,
@as("LogGroupName") logGroupName: logGroupName,
@as("Enabled") enabled: booleanObject
}
type bufferingHints = {
@as("IntervalInSeconds") intervalInSeconds: intervalInSeconds,
@as("SizeInMBs") sizeInMBs: sizeInMBs
}
type vpcConfigurationDescription = {
@as("VpcId") vpcId: option<nonEmptyStringWithoutWhitespace>,
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
@as("RoleARN") roleARN: option<roleARN>,
@as("SubnetIds") subnetIds: option<subnetIdList>
}
type vpcConfiguration = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIdList>,
@as("RoleARN") roleARN: option<roleARN>,
@as("SubnetIds") subnetIds: option<subnetIdList>
}
type tagDeliveryStreamInputTagList = array<tag>
type sourceDescription = {
@as("KinesisStreamSourceDescription") kinesisStreamSourceDescription: kinesisStreamSourceDescription
}
type putRecordBatchResponseEntryList = array<putRecordBatchResponseEntry>
type putRecordBatchRequestEntryList = array<record>
type processorParameterList = array<processorParameter>
type orcSerDe = {
@as("FormatVersion") formatVersion: orcFormatVersion,
@as("DictionaryKeyThreshold") dictionaryKeyThreshold: proportion,
@as("BloomFilterFalsePositiveProbability") bloomFilterFalsePositiveProbability: proportion,
@as("BloomFilterColumns") bloomFilterColumns: listOfNonEmptyStringsWithoutWhitespace,
@as("Compression") compression: orcCompression,
@as("PaddingTolerance") paddingTolerance: proportion,
@as("EnablePadding") enablePadding: booleanObject,
@as("RowIndexStride") rowIndexStride: orcRowIndexStride,
@as("BlockSizeBytes") blockSizeBytes: blockSizeBytes,
@as("StripeSizeBytes") stripeSizeBytes: orcStripeSizeBytes
}
type openXJsonSerDe = {
@as("ColumnToJsonKeyMappings") columnToJsonKeyMappings: columnToJsonKeyMappings,
@as("CaseInsensitive") caseInsensitive: booleanObject,
@as("ConvertDotsInJsonKeysToUnderscores") convertDotsInJsonKeysToUnderscores: booleanObject
}
type listTagsForDeliveryStreamOutputTagList = array<tag>
type httpEndpointCommonAttributesList = array<httpEndpointCommonAttribute>
type hiveJsonSerDe = {
@as("TimestampFormats") timestampFormats: listOfNonEmptyStrings
}
type encryptionConfiguration = {
@as("KMSEncryptionConfig") kMSEncryptionConfig: kMSEncryptionConfig,
@as("NoEncryptionConfig") noEncryptionConfig: noEncryptionConfig
}
type deliveryStreamEncryptionConfiguration = {
@as("FailureDescription") failureDescription: failureDescription,
@as("Status") status: deliveryStreamEncryptionStatus,
@as("KeyType") keyType: keyType,
@as("KeyARN") keyARN: aWSKMSKeyARN
}
type serializer = {
@as("OrcSerDe") orcSerDe: orcSerDe,
@as("ParquetSerDe") parquetSerDe: parquetSerDe
}
type s3DestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("CompressionFormat") compressionFormat: compressionFormat,
@as("BufferingHints") bufferingHints: bufferingHints,
@as("ErrorOutputPrefix") errorOutputPrefix: errorOutputPrefix,
@as("Prefix") prefix: prefix,
@as("BucketARN") bucketARN: bucketARN,
@as("RoleARN") roleARN: roleARN
}
type s3DestinationDescription = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("CompressionFormat") compressionFormat: option<compressionFormat>,
@as("BufferingHints") bufferingHints: option<bufferingHints>,
@as("ErrorOutputPrefix") errorOutputPrefix: errorOutputPrefix,
@as("Prefix") prefix: prefix,
@as("BucketARN") bucketARN: option<bucketARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type s3DestinationConfiguration = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("CompressionFormat") compressionFormat: compressionFormat,
@as("BufferingHints") bufferingHints: bufferingHints,
@as("ErrorOutputPrefix") errorOutputPrefix: errorOutputPrefix,
@as("Prefix") prefix: prefix,
@as("BucketARN") bucketARN: option<bucketARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type processor = {
@as("Parameters") parameters: processorParameterList,
@as("Type") type_: option<processorType>
}
type httpEndpointRequestConfiguration = {
@as("CommonAttributes") commonAttributes: httpEndpointCommonAttributesList,
@as("ContentEncoding") contentEncoding: contentEncoding
}
type deserializer = {
@as("HiveJsonSerDe") hiveJsonSerDe: hiveJsonSerDe,
@as("OpenXJsonSerDe") openXJsonSerDe: openXJsonSerDe
}
type processorList = array<processor>
type outputFormatConfiguration = {
@as("Serializer") serializer: serializer
}
type inputFormatConfiguration = {
@as("Deserializer") deserializer: deserializer
}
type processingConfiguration = {
@as("Processors") processors: processorList,
@as("Enabled") enabled: booleanObject
}
type dataFormatConversionConfiguration = {
@as("Enabled") enabled: booleanObject,
@as("OutputFormatConfiguration") outputFormatConfiguration: outputFormatConfiguration,
@as("InputFormatConfiguration") inputFormatConfiguration: inputFormatConfiguration,
@as("SchemaConfiguration") schemaConfiguration: schemaConfiguration
}
type splunkDestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3Update") s3Update: s3DestinationUpdate,
@as("S3BackupMode") s3BackupMode: splunkS3BackupMode,
@as("RetryOptions") retryOptions: splunkRetryOptions,
@as("HECAcknowledgmentTimeoutInSeconds") hECAcknowledgmentTimeoutInSeconds: hECAcknowledgmentTimeoutInSeconds,
@as("HECToken") hECToken: hECToken,
@as("HECEndpointType") hECEndpointType: hECEndpointType,
@as("HECEndpoint") hECEndpoint: hECEndpoint
}
type splunkDestinationDescription = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3DestinationDescription") s3DestinationDescription: s3DestinationDescription,
@as("S3BackupMode") s3BackupMode: splunkS3BackupMode,
@as("RetryOptions") retryOptions: splunkRetryOptions,
@as("HECAcknowledgmentTimeoutInSeconds") hECAcknowledgmentTimeoutInSeconds: hECAcknowledgmentTimeoutInSeconds,
@as("HECToken") hECToken: hECToken,
@as("HECEndpointType") hECEndpointType: hECEndpointType,
@as("HECEndpoint") hECEndpoint: hECEndpoint
}
type splunkDestinationConfiguration = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3Configuration") s3Configuration: option<s3DestinationConfiguration>,
@as("S3BackupMode") s3BackupMode: splunkS3BackupMode,
@as("RetryOptions") retryOptions: splunkRetryOptions,
@as("HECAcknowledgmentTimeoutInSeconds") hECAcknowledgmentTimeoutInSeconds: hECAcknowledgmentTimeoutInSeconds,
@as("HECToken") hECToken: option<hECToken>,
@as("HECEndpointType") hECEndpointType: option<hECEndpointType>,
@as("HECEndpoint") hECEndpoint: option<hECEndpoint>
}
type redshiftDestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("S3BackupUpdate") s3BackupUpdate: s3DestinationUpdate,
@as("S3BackupMode") s3BackupMode: redshiftS3BackupMode,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3Update") s3Update: s3DestinationUpdate,
@as("RetryOptions") retryOptions: redshiftRetryOptions,
@as("Password") password: password,
@as("Username") username: username,
@as("CopyCommand") copyCommand: copyCommand,
@as("ClusterJDBCURL") clusterJDBCURL: clusterJDBCURL,
@as("RoleARN") roleARN: roleARN
}
type redshiftDestinationDescription = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("S3BackupDescription") s3BackupDescription: s3DestinationDescription,
@as("S3BackupMode") s3BackupMode: redshiftS3BackupMode,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3DestinationDescription") s3DestinationDescription: option<s3DestinationDescription>,
@as("RetryOptions") retryOptions: redshiftRetryOptions,
@as("Username") username: option<username>,
@as("CopyCommand") copyCommand: option<copyCommand>,
@as("ClusterJDBCURL") clusterJDBCURL: option<clusterJDBCURL>,
@as("RoleARN") roleARN: option<roleARN>
}
type redshiftDestinationConfiguration = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("S3BackupConfiguration") s3BackupConfiguration: s3DestinationConfiguration,
@as("S3BackupMode") s3BackupMode: redshiftS3BackupMode,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3Configuration") s3Configuration: option<s3DestinationConfiguration>,
@as("RetryOptions") retryOptions: redshiftRetryOptions,
@as("Password") password: option<password>,
@as("Username") username: option<username>,
@as("CopyCommand") copyCommand: option<copyCommand>,
@as("ClusterJDBCURL") clusterJDBCURL: option<clusterJDBCURL>,
@as("RoleARN") roleARN: option<roleARN>
}
type httpEndpointDestinationUpdate = {
@as("S3Update") s3Update: s3DestinationUpdate,
@as("S3BackupMode") s3BackupMode: httpEndpointS3BackupMode,
@as("RetryOptions") retryOptions: httpEndpointRetryOptions,
@as("RoleARN") roleARN: roleARN,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("RequestConfiguration") requestConfiguration: httpEndpointRequestConfiguration,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("BufferingHints") bufferingHints: httpEndpointBufferingHints,
@as("EndpointConfiguration") endpointConfiguration: httpEndpointConfiguration
}
type httpEndpointDestinationDescription = {
@as("S3DestinationDescription") s3DestinationDescription: s3DestinationDescription,
@as("S3BackupMode") s3BackupMode: httpEndpointS3BackupMode,
@as("RetryOptions") retryOptions: httpEndpointRetryOptions,
@as("RoleARN") roleARN: roleARN,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("RequestConfiguration") requestConfiguration: httpEndpointRequestConfiguration,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("BufferingHints") bufferingHints: httpEndpointBufferingHints,
@as("EndpointConfiguration") endpointConfiguration: httpEndpointDescription
}
type httpEndpointDestinationConfiguration = {
@as("S3Configuration") s3Configuration: option<s3DestinationConfiguration>,
@as("S3BackupMode") s3BackupMode: httpEndpointS3BackupMode,
@as("RetryOptions") retryOptions: httpEndpointRetryOptions,
@as("RoleARN") roleARN: roleARN,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("RequestConfiguration") requestConfiguration: httpEndpointRequestConfiguration,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("BufferingHints") bufferingHints: httpEndpointBufferingHints,
@as("EndpointConfiguration") endpointConfiguration: option<httpEndpointConfiguration>
}
type extendedS3DestinationUpdate = {
@as("DataFormatConversionConfiguration") dataFormatConversionConfiguration: dataFormatConversionConfiguration,
@as("S3BackupUpdate") s3BackupUpdate: s3DestinationUpdate,
@as("S3BackupMode") s3BackupMode: s3BackupMode,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("CompressionFormat") compressionFormat: compressionFormat,
@as("BufferingHints") bufferingHints: bufferingHints,
@as("ErrorOutputPrefix") errorOutputPrefix: errorOutputPrefix,
@as("Prefix") prefix: prefix,
@as("BucketARN") bucketARN: bucketARN,
@as("RoleARN") roleARN: roleARN
}
type extendedS3DestinationDescription = {
@as("DataFormatConversionConfiguration") dataFormatConversionConfiguration: dataFormatConversionConfiguration,
@as("S3BackupDescription") s3BackupDescription: s3DestinationDescription,
@as("S3BackupMode") s3BackupMode: s3BackupMode,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("CompressionFormat") compressionFormat: option<compressionFormat>,
@as("BufferingHints") bufferingHints: option<bufferingHints>,
@as("ErrorOutputPrefix") errorOutputPrefix: errorOutputPrefix,
@as("Prefix") prefix: prefix,
@as("BucketARN") bucketARN: option<bucketARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type extendedS3DestinationConfiguration = {
@as("DataFormatConversionConfiguration") dataFormatConversionConfiguration: dataFormatConversionConfiguration,
@as("S3BackupConfiguration") s3BackupConfiguration: s3DestinationConfiguration,
@as("S3BackupMode") s3BackupMode: s3BackupMode,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("CompressionFormat") compressionFormat: compressionFormat,
@as("BufferingHints") bufferingHints: bufferingHints,
@as("ErrorOutputPrefix") errorOutputPrefix: errorOutputPrefix,
@as("Prefix") prefix: prefix,
@as("BucketARN") bucketARN: option<bucketARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type elasticsearchDestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3Update") s3Update: s3DestinationUpdate,
@as("RetryOptions") retryOptions: elasticsearchRetryOptions,
@as("BufferingHints") bufferingHints: elasticsearchBufferingHints,
@as("IndexRotationPeriod") indexRotationPeriod: elasticsearchIndexRotationPeriod,
@as("TypeName") typeName: elasticsearchTypeName,
@as("IndexName") indexName: elasticsearchIndexName,
@as("ClusterEndpoint") clusterEndpoint: elasticsearchClusterEndpoint,
@as("DomainARN") domainARN: elasticsearchDomainARN,
@as("RoleARN") roleARN: roleARN
}
type elasticsearchDestinationDescription = {
@as("VpcConfigurationDescription") vpcConfigurationDescription: vpcConfigurationDescription,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3DestinationDescription") s3DestinationDescription: s3DestinationDescription,
@as("S3BackupMode") s3BackupMode: elasticsearchS3BackupMode,
@as("RetryOptions") retryOptions: elasticsearchRetryOptions,
@as("BufferingHints") bufferingHints: elasticsearchBufferingHints,
@as("IndexRotationPeriod") indexRotationPeriod: elasticsearchIndexRotationPeriod,
@as("TypeName") typeName: elasticsearchTypeName,
@as("IndexName") indexName: elasticsearchIndexName,
@as("ClusterEndpoint") clusterEndpoint: elasticsearchClusterEndpoint,
@as("DomainARN") domainARN: elasticsearchDomainARN,
@as("RoleARN") roleARN: roleARN
}
type elasticsearchDestinationConfiguration = {
@as("VpcConfiguration") vpcConfiguration: vpcConfiguration,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: cloudWatchLoggingOptions,
@as("ProcessingConfiguration") processingConfiguration: processingConfiguration,
@as("S3Configuration") s3Configuration: option<s3DestinationConfiguration>,
@as("S3BackupMode") s3BackupMode: elasticsearchS3BackupMode,
@as("RetryOptions") retryOptions: elasticsearchRetryOptions,
@as("BufferingHints") bufferingHints: elasticsearchBufferingHints,
@as("IndexRotationPeriod") indexRotationPeriod: elasticsearchIndexRotationPeriod,
@as("TypeName") typeName: elasticsearchTypeName,
@as("IndexName") indexName: option<elasticsearchIndexName>,
@as("ClusterEndpoint") clusterEndpoint: elasticsearchClusterEndpoint,
@as("DomainARN") domainARN: elasticsearchDomainARN,
@as("RoleARN") roleARN: option<roleARN>
}
type destinationDescription = {
@as("HttpEndpointDestinationDescription") httpEndpointDestinationDescription: httpEndpointDestinationDescription,
@as("SplunkDestinationDescription") splunkDestinationDescription: splunkDestinationDescription,
@as("ElasticsearchDestinationDescription") elasticsearchDestinationDescription: elasticsearchDestinationDescription,
@as("RedshiftDestinationDescription") redshiftDestinationDescription: redshiftDestinationDescription,
@as("ExtendedS3DestinationDescription") extendedS3DestinationDescription: extendedS3DestinationDescription,
@as("S3DestinationDescription") s3DestinationDescription: s3DestinationDescription,
@as("DestinationId") destinationId: option<destinationId>
}
type destinationDescriptionList = array<destinationDescription>
type deliveryStreamDescription = {
@as("HasMoreDestinations") hasMoreDestinations: option<booleanObject>,
@as("Destinations") destinations: option<destinationDescriptionList>,
@as("Source") source: sourceDescription,
@as("LastUpdateTimestamp") lastUpdateTimestamp: amazonawsTimestamp,
@as("CreateTimestamp") createTimestamp: amazonawsTimestamp,
@as("VersionId") versionId: option<deliveryStreamVersionId>,
@as("DeliveryStreamType") deliveryStreamType: option<deliveryStreamType>,
@as("DeliveryStreamEncryptionConfiguration") deliveryStreamEncryptionConfiguration: deliveryStreamEncryptionConfiguration,
@as("FailureDescription") failureDescription: failureDescription,
@as("DeliveryStreamStatus") deliveryStreamStatus: option<deliveryStreamStatus>,
@as("DeliveryStreamARN") deliveryStreamARN: option<deliveryStreamARN>,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
type clientType;
@module("@aws-sdk/client-firehose") @new external createClient: unit => clientType = "KinesisFirehoseClient";
module StopDeliveryStreamEncryption = {
  type t;
  type request = {
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "StopDeliveryStreamEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDeliveryStream = {
  type t;
  type request = {
@as("AllowForceDelete") allowForceDelete: booleanObject,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "DeleteDeliveryStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagDeliveryStream = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "UntagDeliveryStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDeliveryStreamEncryption = {
  type t;
  type request = {
@as("DeliveryStreamEncryptionConfigurationInput") deliveryStreamEncryptionConfigurationInput: deliveryStreamEncryptionConfigurationInput,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "StartDeliveryStreamEncryptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRecord = {
  type t;
  type request = {
@as("Record") record: option<record>,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = {
@as("Encrypted") encrypted: booleanObject,
@as("RecordId") recordId: option<putResponseRecordId>
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "PutRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeliveryStreams = {
  type t;
  type request = {
@as("ExclusiveStartDeliveryStreamName") exclusiveStartDeliveryStreamName: deliveryStreamName,
@as("DeliveryStreamType") deliveryStreamType: deliveryStreamType,
@as("Limit") limit: listDeliveryStreamsInputLimit
}
  type response = {
@as("HasMoreDeliveryStreams") hasMoreDeliveryStreams: option<booleanObject>,
@as("DeliveryStreamNames") deliveryStreamNames: option<deliveryStreamNameList>
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "ListDeliveryStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagDeliveryStream = {
  type t;
  type request = {
@as("Tags") tags: option<tagDeliveryStreamInputTagList>,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "TagDeliveryStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRecordBatch = {
  type t;
  type request = {
@as("Records") records: option<putRecordBatchRequestEntryList>,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = {
@as("RequestResponses") requestResponses: option<putRecordBatchResponseEntryList>,
@as("Encrypted") encrypted: booleanObject,
@as("FailedPutCount") failedPutCount: option<nonNegativeIntegerObject>
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "PutRecordBatchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForDeliveryStream = {
  type t;
  type request = {
@as("Limit") limit: listTagsForDeliveryStreamInputLimit,
@as("ExclusiveStartTagKey") exclusiveStartTagKey: tagKey,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = {
@as("HasMoreTags") hasMoreTags: option<booleanObject>,
@as("Tags") tags: option<listTagsForDeliveryStreamOutputTagList>
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "ListTagsForDeliveryStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDestination = {
  type t;
  type request = {
@as("HttpEndpointDestinationUpdate") httpEndpointDestinationUpdate: httpEndpointDestinationUpdate,
@as("SplunkDestinationUpdate") splunkDestinationUpdate: splunkDestinationUpdate,
@as("ElasticsearchDestinationUpdate") elasticsearchDestinationUpdate: elasticsearchDestinationUpdate,
@as("RedshiftDestinationUpdate") redshiftDestinationUpdate: redshiftDestinationUpdate,
@as("ExtendedS3DestinationUpdate") extendedS3DestinationUpdate: extendedS3DestinationUpdate,
@as("S3DestinationUpdate") s3DestinationUpdate: s3DestinationUpdate,
@as("DestinationId") destinationId: option<destinationId>,
@as("CurrentDeliveryStreamVersionId") currentDeliveryStreamVersionId: option<deliveryStreamVersionId>,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "UpdateDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDeliveryStream = {
  type t;
  type request = {
@as("Tags") tags: tagDeliveryStreamInputTagList,
@as("HttpEndpointDestinationConfiguration") httpEndpointDestinationConfiguration: httpEndpointDestinationConfiguration,
@as("SplunkDestinationConfiguration") splunkDestinationConfiguration: splunkDestinationConfiguration,
@as("ElasticsearchDestinationConfiguration") elasticsearchDestinationConfiguration: elasticsearchDestinationConfiguration,
@as("RedshiftDestinationConfiguration") redshiftDestinationConfiguration: redshiftDestinationConfiguration,
@as("ExtendedS3DestinationConfiguration") extendedS3DestinationConfiguration: extendedS3DestinationConfiguration,
@as("S3DestinationConfiguration") s3DestinationConfiguration: s3DestinationConfiguration,
@as("DeliveryStreamEncryptionConfigurationInput") deliveryStreamEncryptionConfigurationInput: deliveryStreamEncryptionConfigurationInput,
@as("KinesisStreamSourceConfiguration") kinesisStreamSourceConfiguration: kinesisStreamSourceConfiguration,
@as("DeliveryStreamType") deliveryStreamType: deliveryStreamType,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = {
@as("DeliveryStreamARN") deliveryStreamARN: deliveryStreamARN
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "CreateDeliveryStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDeliveryStream = {
  type t;
  type request = {
@as("ExclusiveStartDestinationId") exclusiveStartDestinationId: destinationId,
@as("Limit") limit: describeDeliveryStreamInputLimit,
@as("DeliveryStreamName") deliveryStreamName: option<deliveryStreamName>
}
  type response = {
@as("DeliveryStreamDescription") deliveryStreamDescription: option<deliveryStreamDescription>
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "DescribeDeliveryStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
