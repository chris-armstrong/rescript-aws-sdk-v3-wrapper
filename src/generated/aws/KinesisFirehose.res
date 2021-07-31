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
type username = string
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type splunkS3BackupMode = [@as("AllEvents") #AllEvents | @as("FailedEventsOnly") #FailedEventsOnly]
type splunkRetryDurationInSeconds = int
type sizeInMBs = int
type s3BackupMode = [@as("Enabled") #Enabled | @as("Disabled") #Disabled]
type roleARN = string
type redshiftS3BackupMode = [@as("Enabled") #Enabled | @as("Disabled") #Disabled]
type redshiftRetryDurationInSeconds = int
type putResponseRecordId = string
type proportion = float
type processorType = [@as("Lambda") #Lambda]
type processorParameterValue = string
type processorParameterName = [@as("BufferIntervalInSeconds") #BufferIntervalInSeconds | @as("BufferSizeInMBs") #BufferSizeInMBs | @as("RoleArn") #RoleArn | @as("NumberOfRetries") #NumberOfRetries | @as("LambdaArn") #LambdaArn]
type prefix = string
type password = string
type parquetWriterVersion = [@as("V2") #V2 | @as("V1") #V1]
type parquetPageSizeBytes = int
type parquetCompression = [@as("SNAPPY") #SNAPPY | @as("GZIP") #GZIP | @as("UNCOMPRESSED") #UNCOMPRESSED]
type orcStripeSizeBytes = int
type orcRowIndexStride = int
type orcFormatVersion = [@as("V0_12") #V012 | @as("V0_11") #V011]
type orcCompression = [@as("SNAPPY") #SNAPPY | @as("ZLIB") #ZLIB | @as("NONE") #NONE]
type nonNegativeIntegerObject = int
type nonEmptyStringWithoutWhitespace = string
type nonEmptyString = string
type noEncryptionConfig = [@as("NoEncryption") #NoEncryption]
type logStreamName = string
type logGroupName = string
type listTagsForDeliveryStreamInputLimit = int
type listDeliveryStreamsInputLimit = int
type kinesisStreamARN = string
type keyType = [@as("CUSTOMER_MANAGED_CMK") #CUSTOMERMANAGEDCMK | @as("AWS_OWNED_CMK") #AWSOWNEDCMK]
type intervalInSeconds = int
type httpEndpointUrl = string
type httpEndpointS3BackupMode = [@as("AllData") #AllData | @as("FailedDataOnly") #FailedDataOnly]
type httpEndpointRetryDurationInSeconds = int
type httpEndpointName = string
type httpEndpointBufferingSizeInMBs = int
type httpEndpointBufferingIntervalInSeconds = int
type httpEndpointAttributeValue = string
type httpEndpointAttributeName = string
type httpEndpointAccessKey = string
type hectoken = string
type hecendpointType = [@as("Event") #Event | @as("Raw") #Raw]
type hecendpoint = string
type hecacknowledgmentTimeoutInSeconds = int
type errorOutputPrefix = string
type errorMessage = string
type errorCode = string
type elasticsearchTypeName = string
type elasticsearchS3BackupMode = [@as("AllDocuments") #AllDocuments | @as("FailedDocumentsOnly") #FailedDocumentsOnly]
type elasticsearchRetryDurationInSeconds = int
type elasticsearchIndexRotationPeriod = [@as("OneMonth") #OneMonth | @as("OneWeek") #OneWeek | @as("OneDay") #OneDay | @as("OneHour") #OneHour | @as("NoRotation") #NoRotation]
type elasticsearchIndexName = string
type elasticsearchDomainARN = string
type elasticsearchClusterEndpoint = string
type elasticsearchBufferingSizeInMBs = int
type elasticsearchBufferingIntervalInSeconds = int
type destinationId = string
type describeDeliveryStreamInputLimit = int
type deliveryStreamVersionId = string
type deliveryStreamType = [@as("KinesisStreamAsSource") #KinesisStreamAsSource | @as("DirectPut") #DirectPut]
type deliveryStreamStatus = [@as("ACTIVE") #ACTIVE | @as("DELETING_FAILED") #DELETINGFAILED | @as("DELETING") #DELETING | @as("CREATING_FAILED") #CREATINGFAILED | @as("CREATING") #CREATING]
type deliveryStreamName = string
type deliveryStreamFailureType = [@as("UNKNOWN_ERROR") #UNKNOWNERROR | @as("SECURITY_GROUP_ACCESS_DENIED") #SECURITYGROUPACCESSDENIED | @as("SUBNET_ACCESS_DENIED") #SUBNETACCESSDENIED | @as("ENI_ACCESS_DENIED") #ENIACCESSDENIED | @as("SECURITY_GROUP_NOT_FOUND") #SECURITYGROUPNOTFOUND | @as("SUBNET_NOT_FOUND") #SUBNETNOTFOUND | @as("DELETE_ENI_FAILED") #DELETEENIFAILED | @as("CREATE_ENI_FAILED") #CREATEENIFAILED | @as("KMS_OPT_IN_REQUIRED") #KMSOPTINREQUIRED | @as("KMS_KEY_NOT_FOUND") #KMSKEYNOTFOUND | @as("INVALID_KMS_KEY") #INVALIDKMSKEY | @as("DISABLED_KMS_KEY") #DISABLEDKMSKEY | @as("KMS_ACCESS_DENIED") #KMSACCESSDENIED | @as("CREATE_KMS_GRANT_FAILED") #CREATEKMSGRANTFAILED | @as("RETIRE_KMS_GRANT_FAILED") #RETIREKMSGRANTFAILED]
type deliveryStreamEncryptionStatus = [@as("DISABLING_FAILED") #DISABLINGFAILED | @as("DISABLING") #DISABLING | @as("DISABLED") #DISABLED | @as("ENABLING_FAILED") #ENABLINGFAILED | @as("ENABLING") #ENABLING | @as("ENABLED") #ENABLED]
type deliveryStreamARN = string
type deliveryStartTimestamp = Js.Date.t;
type dataTableName = string
type dataTableColumns = string
type data = NodeJs.Buffer.t
type copyOptions = string
type contentEncoding = [@as("GZIP") #GZIP | @as("NONE") #NONE]
type compressionFormat = [@as("HADOOP_SNAPPY") #HADOOPSNAPPY | @as("Snappy") #Snappy | @as("ZIP") #ZIP | @as("GZIP") #GZIP | @as("UNCOMPRESSED") #UNCOMPRESSED]
type clusterJDBCURL = string
type bucketARN = string
type booleanObject = bool
type blockSizeBytes = int
type awskmskeyARN = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: tagKey
}
type subnetIdList = array<nonEmptyStringWithoutWhitespace>
type splunkRetryOptions = {
@as("DurationInSeconds") durationInSeconds: option<splunkRetryDurationInSeconds>
}
type securityGroupIdList = array<nonEmptyStringWithoutWhitespace>
type schemaConfiguration = {
@as("VersionId") versionId: option<nonEmptyStringWithoutWhitespace>,
@as("Region") region: option<nonEmptyStringWithoutWhitespace>,
@as("TableName") tableName: option<nonEmptyStringWithoutWhitespace>,
@as("DatabaseName") databaseName: option<nonEmptyStringWithoutWhitespace>,
@as("CatalogId") catalogId: option<nonEmptyStringWithoutWhitespace>,
@as("RoleARN") roleARN: option<nonEmptyStringWithoutWhitespace>
}
type redshiftRetryOptions = {
@as("DurationInSeconds") durationInSeconds: option<redshiftRetryDurationInSeconds>
}
type record = {
@as("Data") data: data
}
type putRecordBatchResponseEntry = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
@as("ErrorCode") errorCode: option<errorCode>,
@as("RecordId") recordId: option<putResponseRecordId>
}
type processorParameter = {
@as("ParameterValue") parameterValue: processorParameterValue,
@as("ParameterName") parameterName: processorParameterName
}
type parquetSerDe = {
@as("WriterVersion") writerVersion: option<parquetWriterVersion>,
@as("MaxPaddingBytes") maxPaddingBytes: option<nonNegativeIntegerObject>,
@as("EnableDictionaryCompression") enableDictionaryCompression: option<booleanObject>,
@as("Compression") compression: option<parquetCompression>,
@as("PageSizeBytes") pageSizeBytes: option<parquetPageSizeBytes>,
@as("BlockSizeBytes") blockSizeBytes: option<blockSizeBytes>
}
type listOfNonEmptyStringsWithoutWhitespace = array<nonEmptyStringWithoutWhitespace>
type listOfNonEmptyStrings = array<nonEmptyString>
type kinesisStreamSourceDescription = {
@as("DeliveryStartTimestamp") deliveryStartTimestamp: option<deliveryStartTimestamp>,
@as("RoleARN") roleARN: option<roleARN>,
@as("KinesisStreamARN") kinesisStreamARN: option<kinesisStreamARN>
}
type kinesisStreamSourceConfiguration = {
@as("RoleARN") roleARN: roleARN,
@as("KinesisStreamARN") kinesisStreamARN: kinesisStreamARN
}
type kmsencryptionConfig = {
@as("AWSKMSKeyARN") awskmskeyARN: awskmskeyARN
}
type httpEndpointRetryOptions = {
@as("DurationInSeconds") durationInSeconds: option<httpEndpointRetryDurationInSeconds>
}
type httpEndpointDescription = {
@as("Name") name: option<httpEndpointName>,
@as("Url") url: option<httpEndpointUrl>
}
type httpEndpointConfiguration = {
@as("AccessKey") accessKey: option<httpEndpointAccessKey>,
@as("Name") name: option<httpEndpointName>,
@as("Url") url: httpEndpointUrl
}
type httpEndpointCommonAttribute = {
@as("AttributeValue") attributeValue: httpEndpointAttributeValue,
@as("AttributeName") attributeName: httpEndpointAttributeName
}
type httpEndpointBufferingHints = {
@as("IntervalInSeconds") intervalInSeconds: option<httpEndpointBufferingIntervalInSeconds>,
@as("SizeInMBs") sizeInMBs: option<httpEndpointBufferingSizeInMBs>
}
type failureDescription = {
@as("Details") details: nonEmptyString,
@as("Type") type_: deliveryStreamFailureType
}
type elasticsearchRetryOptions = {
@as("DurationInSeconds") durationInSeconds: option<elasticsearchRetryDurationInSeconds>
}
type elasticsearchBufferingHints = {
@as("SizeInMBs") sizeInMBs: option<elasticsearchBufferingSizeInMBs>,
@as("IntervalInSeconds") intervalInSeconds: option<elasticsearchBufferingIntervalInSeconds>
}
type deliveryStreamNameList = array<deliveryStreamName>
type deliveryStreamEncryptionConfigurationInput = {
@as("KeyType") keyType: keyType,
@as("KeyARN") keyARN: option<awskmskeyARN>
}
type copyCommand = {
@as("CopyOptions") copyOptions: option<copyOptions>,
@as("DataTableColumns") dataTableColumns: option<dataTableColumns>,
@as("DataTableName") dataTableName: dataTableName
}
type columnToJsonKeyMappings = Js.Dict.t< nonEmptyString>
type cloudWatchLoggingOptions = {
@as("LogStreamName") logStreamName: option<logStreamName>,
@as("LogGroupName") logGroupName: option<logGroupName>,
@as("Enabled") enabled: option<booleanObject>
}
type bufferingHints = {
@as("IntervalInSeconds") intervalInSeconds: option<intervalInSeconds>,
@as("SizeInMBs") sizeInMBs: option<sizeInMBs>
}
type vpcConfigurationDescription = {
@as("VpcId") vpcId: nonEmptyStringWithoutWhitespace,
@as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
@as("RoleARN") roleARN: roleARN,
@as("SubnetIds") subnetIds: subnetIdList
}
type vpcConfiguration = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIdList,
@as("RoleARN") roleARN: roleARN,
@as("SubnetIds") subnetIds: subnetIdList
}
type tagDeliveryStreamInputTagList = array<tag>
type sourceDescription = {
@as("KinesisStreamSourceDescription") kinesisStreamSourceDescription: option<kinesisStreamSourceDescription>
}
type putRecordBatchResponseEntryList = array<putRecordBatchResponseEntry>
type putRecordBatchRequestEntryList = array<record>
type processorParameterList = array<processorParameter>
type orcSerDe = {
@as("FormatVersion") formatVersion: option<orcFormatVersion>,
@as("DictionaryKeyThreshold") dictionaryKeyThreshold: option<proportion>,
@as("BloomFilterFalsePositiveProbability") bloomFilterFalsePositiveProbability: option<proportion>,
@as("BloomFilterColumns") bloomFilterColumns: option<listOfNonEmptyStringsWithoutWhitespace>,
@as("Compression") compression: option<orcCompression>,
@as("PaddingTolerance") paddingTolerance: option<proportion>,
@as("EnablePadding") enablePadding: option<booleanObject>,
@as("RowIndexStride") rowIndexStride: option<orcRowIndexStride>,
@as("BlockSizeBytes") blockSizeBytes: option<blockSizeBytes>,
@as("StripeSizeBytes") stripeSizeBytes: option<orcStripeSizeBytes>
}
type openXJsonSerDe = {
@as("ColumnToJsonKeyMappings") columnToJsonKeyMappings: option<columnToJsonKeyMappings>,
@as("CaseInsensitive") caseInsensitive: option<booleanObject>,
@as("ConvertDotsInJsonKeysToUnderscores") convertDotsInJsonKeysToUnderscores: option<booleanObject>
}
type listTagsForDeliveryStreamOutputTagList = array<tag>
type httpEndpointCommonAttributesList = array<httpEndpointCommonAttribute>
type hiveJsonSerDe = {
@as("TimestampFormats") timestampFormats: option<listOfNonEmptyStrings>
}
type encryptionConfiguration = {
@as("KMSEncryptionConfig") kmsencryptionConfig: option<kmsencryptionConfig>,
@as("NoEncryptionConfig") noEncryptionConfig: option<noEncryptionConfig>
}
type deliveryStreamEncryptionConfiguration = {
@as("FailureDescription") failureDescription: option<failureDescription>,
@as("Status") status: option<deliveryStreamEncryptionStatus>,
@as("KeyType") keyType: option<keyType>,
@as("KeyARN") keyARN: option<awskmskeyARN>
}
type serializer = {
@as("OrcSerDe") orcSerDe: option<orcSerDe>,
@as("ParquetSerDe") parquetSerDe: option<parquetSerDe>
}
type s3DestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("CompressionFormat") compressionFormat: option<compressionFormat>,
@as("BufferingHints") bufferingHints: option<bufferingHints>,
@as("ErrorOutputPrefix") errorOutputPrefix: option<errorOutputPrefix>,
@as("Prefix") prefix: option<prefix>,
@as("BucketARN") bucketARN: option<bucketARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type s3DestinationDescription = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("CompressionFormat") compressionFormat: compressionFormat,
@as("BufferingHints") bufferingHints: bufferingHints,
@as("ErrorOutputPrefix") errorOutputPrefix: option<errorOutputPrefix>,
@as("Prefix") prefix: option<prefix>,
@as("BucketARN") bucketARN: bucketARN,
@as("RoleARN") roleARN: roleARN
}
type s3DestinationConfiguration = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("CompressionFormat") compressionFormat: option<compressionFormat>,
@as("BufferingHints") bufferingHints: option<bufferingHints>,
@as("ErrorOutputPrefix") errorOutputPrefix: option<errorOutputPrefix>,
@as("Prefix") prefix: option<prefix>,
@as("BucketARN") bucketARN: bucketARN,
@as("RoleARN") roleARN: roleARN
}
type processor = {
@as("Parameters") parameters: option<processorParameterList>,
@as("Type") type_: processorType
}
type httpEndpointRequestConfiguration = {
@as("CommonAttributes") commonAttributes: option<httpEndpointCommonAttributesList>,
@as("ContentEncoding") contentEncoding: option<contentEncoding>
}
type deserializer = {
@as("HiveJsonSerDe") hiveJsonSerDe: option<hiveJsonSerDe>,
@as("OpenXJsonSerDe") openXJsonSerDe: option<openXJsonSerDe>
}
type processorList = array<processor>
type outputFormatConfiguration = {
@as("Serializer") serializer: option<serializer>
}
type inputFormatConfiguration = {
@as("Deserializer") deserializer: option<deserializer>
}
type processingConfiguration = {
@as("Processors") processors: option<processorList>,
@as("Enabled") enabled: option<booleanObject>
}
type dataFormatConversionConfiguration = {
@as("Enabled") enabled: option<booleanObject>,
@as("OutputFormatConfiguration") outputFormatConfiguration: option<outputFormatConfiguration>,
@as("InputFormatConfiguration") inputFormatConfiguration: option<inputFormatConfiguration>,
@as("SchemaConfiguration") schemaConfiguration: option<schemaConfiguration>
}
type splunkDestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3Update") s3Update: option<s3DestinationUpdate>,
@as("S3BackupMode") s3BackupMode: option<splunkS3BackupMode>,
@as("RetryOptions") retryOptions: option<splunkRetryOptions>,
@as("HECAcknowledgmentTimeoutInSeconds") hecacknowledgmentTimeoutInSeconds: option<hecacknowledgmentTimeoutInSeconds>,
@as("HECToken") hectoken: option<hectoken>,
@as("HECEndpointType") hecendpointType: option<hecendpointType>,
@as("HECEndpoint") hecendpoint: option<hecendpoint>
}
type splunkDestinationDescription = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3DestinationDescription") s3DestinationDescription: option<s3DestinationDescription>,
@as("S3BackupMode") s3BackupMode: option<splunkS3BackupMode>,
@as("RetryOptions") retryOptions: option<splunkRetryOptions>,
@as("HECAcknowledgmentTimeoutInSeconds") hecacknowledgmentTimeoutInSeconds: option<hecacknowledgmentTimeoutInSeconds>,
@as("HECToken") hectoken: option<hectoken>,
@as("HECEndpointType") hecendpointType: option<hecendpointType>,
@as("HECEndpoint") hecendpoint: option<hecendpoint>
}
type splunkDestinationConfiguration = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3Configuration") s3Configuration: s3DestinationConfiguration,
@as("S3BackupMode") s3BackupMode: option<splunkS3BackupMode>,
@as("RetryOptions") retryOptions: option<splunkRetryOptions>,
@as("HECAcknowledgmentTimeoutInSeconds") hecacknowledgmentTimeoutInSeconds: option<hecacknowledgmentTimeoutInSeconds>,
@as("HECToken") hectoken: hectoken,
@as("HECEndpointType") hecendpointType: hecendpointType,
@as("HECEndpoint") hecendpoint: hecendpoint
}
type redshiftDestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("S3BackupUpdate") s3BackupUpdate: option<s3DestinationUpdate>,
@as("S3BackupMode") s3BackupMode: option<redshiftS3BackupMode>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3Update") s3Update: option<s3DestinationUpdate>,
@as("RetryOptions") retryOptions: option<redshiftRetryOptions>,
@as("Password") password: option<password>,
@as("Username") username: option<username>,
@as("CopyCommand") copyCommand: option<copyCommand>,
@as("ClusterJDBCURL") clusterJDBCURL: option<clusterJDBCURL>,
@as("RoleARN") roleARN: option<roleARN>
}
type redshiftDestinationDescription = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("S3BackupDescription") s3BackupDescription: option<s3DestinationDescription>,
@as("S3BackupMode") s3BackupMode: option<redshiftS3BackupMode>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3DestinationDescription") s3DestinationDescription: s3DestinationDescription,
@as("RetryOptions") retryOptions: option<redshiftRetryOptions>,
@as("Username") username: username,
@as("CopyCommand") copyCommand: copyCommand,
@as("ClusterJDBCURL") clusterJDBCURL: clusterJDBCURL,
@as("RoleARN") roleARN: roleARN
}
type redshiftDestinationConfiguration = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("S3BackupConfiguration") s3BackupConfiguration: option<s3DestinationConfiguration>,
@as("S3BackupMode") s3BackupMode: option<redshiftS3BackupMode>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3Configuration") s3Configuration: s3DestinationConfiguration,
@as("RetryOptions") retryOptions: option<redshiftRetryOptions>,
@as("Password") password: password,
@as("Username") username: username,
@as("CopyCommand") copyCommand: copyCommand,
@as("ClusterJDBCURL") clusterJDBCURL: clusterJDBCURL,
@as("RoleARN") roleARN: roleARN
}
type httpEndpointDestinationUpdate = {
@as("S3Update") s3Update: option<s3DestinationUpdate>,
@as("S3BackupMode") s3BackupMode: option<httpEndpointS3BackupMode>,
@as("RetryOptions") retryOptions: option<httpEndpointRetryOptions>,
@as("RoleARN") roleARN: option<roleARN>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("RequestConfiguration") requestConfiguration: option<httpEndpointRequestConfiguration>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("BufferingHints") bufferingHints: option<httpEndpointBufferingHints>,
@as("EndpointConfiguration") endpointConfiguration: option<httpEndpointConfiguration>
}
type httpEndpointDestinationDescription = {
@as("S3DestinationDescription") s3DestinationDescription: option<s3DestinationDescription>,
@as("S3BackupMode") s3BackupMode: option<httpEndpointS3BackupMode>,
@as("RetryOptions") retryOptions: option<httpEndpointRetryOptions>,
@as("RoleARN") roleARN: option<roleARN>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("RequestConfiguration") requestConfiguration: option<httpEndpointRequestConfiguration>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("BufferingHints") bufferingHints: option<httpEndpointBufferingHints>,
@as("EndpointConfiguration") endpointConfiguration: option<httpEndpointDescription>
}
type httpEndpointDestinationConfiguration = {
@as("S3Configuration") s3Configuration: s3DestinationConfiguration,
@as("S3BackupMode") s3BackupMode: option<httpEndpointS3BackupMode>,
@as("RetryOptions") retryOptions: option<httpEndpointRetryOptions>,
@as("RoleARN") roleARN: option<roleARN>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("RequestConfiguration") requestConfiguration: option<httpEndpointRequestConfiguration>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("BufferingHints") bufferingHints: option<httpEndpointBufferingHints>,
@as("EndpointConfiguration") endpointConfiguration: httpEndpointConfiguration
}
type extendedS3DestinationUpdate = {
@as("DataFormatConversionConfiguration") dataFormatConversionConfiguration: option<dataFormatConversionConfiguration>,
@as("S3BackupUpdate") s3BackupUpdate: option<s3DestinationUpdate>,
@as("S3BackupMode") s3BackupMode: option<s3BackupMode>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("CompressionFormat") compressionFormat: option<compressionFormat>,
@as("BufferingHints") bufferingHints: option<bufferingHints>,
@as("ErrorOutputPrefix") errorOutputPrefix: option<errorOutputPrefix>,
@as("Prefix") prefix: option<prefix>,
@as("BucketARN") bucketARN: option<bucketARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type extendedS3DestinationDescription = {
@as("DataFormatConversionConfiguration") dataFormatConversionConfiguration: option<dataFormatConversionConfiguration>,
@as("S3BackupDescription") s3BackupDescription: option<s3DestinationDescription>,
@as("S3BackupMode") s3BackupMode: option<s3BackupMode>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
@as("CompressionFormat") compressionFormat: compressionFormat,
@as("BufferingHints") bufferingHints: bufferingHints,
@as("ErrorOutputPrefix") errorOutputPrefix: option<errorOutputPrefix>,
@as("Prefix") prefix: option<prefix>,
@as("BucketARN") bucketARN: bucketARN,
@as("RoleARN") roleARN: roleARN
}
type extendedS3DestinationConfiguration = {
@as("DataFormatConversionConfiguration") dataFormatConversionConfiguration: option<dataFormatConversionConfiguration>,
@as("S3BackupConfiguration") s3BackupConfiguration: option<s3DestinationConfiguration>,
@as("S3BackupMode") s3BackupMode: option<s3BackupMode>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("CompressionFormat") compressionFormat: option<compressionFormat>,
@as("BufferingHints") bufferingHints: option<bufferingHints>,
@as("ErrorOutputPrefix") errorOutputPrefix: option<errorOutputPrefix>,
@as("Prefix") prefix: option<prefix>,
@as("BucketARN") bucketARN: bucketARN,
@as("RoleARN") roleARN: roleARN
}
type elasticsearchDestinationUpdate = {
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3Update") s3Update: option<s3DestinationUpdate>,
@as("RetryOptions") retryOptions: option<elasticsearchRetryOptions>,
@as("BufferingHints") bufferingHints: option<elasticsearchBufferingHints>,
@as("IndexRotationPeriod") indexRotationPeriod: option<elasticsearchIndexRotationPeriod>,
@as("TypeName") typeName: option<elasticsearchTypeName>,
@as("IndexName") indexName: option<elasticsearchIndexName>,
@as("ClusterEndpoint") clusterEndpoint: option<elasticsearchClusterEndpoint>,
@as("DomainARN") domainARN: option<elasticsearchDomainARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type elasticsearchDestinationDescription = {
@as("VpcConfigurationDescription") vpcConfigurationDescription: option<vpcConfigurationDescription>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3DestinationDescription") s3DestinationDescription: option<s3DestinationDescription>,
@as("S3BackupMode") s3BackupMode: option<elasticsearchS3BackupMode>,
@as("RetryOptions") retryOptions: option<elasticsearchRetryOptions>,
@as("BufferingHints") bufferingHints: option<elasticsearchBufferingHints>,
@as("IndexRotationPeriod") indexRotationPeriod: option<elasticsearchIndexRotationPeriod>,
@as("TypeName") typeName: option<elasticsearchTypeName>,
@as("IndexName") indexName: option<elasticsearchIndexName>,
@as("ClusterEndpoint") clusterEndpoint: option<elasticsearchClusterEndpoint>,
@as("DomainARN") domainARN: option<elasticsearchDomainARN>,
@as("RoleARN") roleARN: option<roleARN>
}
type elasticsearchDestinationConfiguration = {
@as("VpcConfiguration") vpcConfiguration: option<vpcConfiguration>,
@as("CloudWatchLoggingOptions") cloudWatchLoggingOptions: option<cloudWatchLoggingOptions>,
@as("ProcessingConfiguration") processingConfiguration: option<processingConfiguration>,
@as("S3Configuration") s3Configuration: s3DestinationConfiguration,
@as("S3BackupMode") s3BackupMode: option<elasticsearchS3BackupMode>,
@as("RetryOptions") retryOptions: option<elasticsearchRetryOptions>,
@as("BufferingHints") bufferingHints: option<elasticsearchBufferingHints>,
@as("IndexRotationPeriod") indexRotationPeriod: option<elasticsearchIndexRotationPeriod>,
@as("TypeName") typeName: option<elasticsearchTypeName>,
@as("IndexName") indexName: elasticsearchIndexName,
@as("ClusterEndpoint") clusterEndpoint: option<elasticsearchClusterEndpoint>,
@as("DomainARN") domainARN: option<elasticsearchDomainARN>,
@as("RoleARN") roleARN: roleARN
}
type destinationDescription = {
@as("HttpEndpointDestinationDescription") httpEndpointDestinationDescription: option<httpEndpointDestinationDescription>,
@as("SplunkDestinationDescription") splunkDestinationDescription: option<splunkDestinationDescription>,
@as("ElasticsearchDestinationDescription") elasticsearchDestinationDescription: option<elasticsearchDestinationDescription>,
@as("RedshiftDestinationDescription") redshiftDestinationDescription: option<redshiftDestinationDescription>,
@as("ExtendedS3DestinationDescription") extendedS3DestinationDescription: option<extendedS3DestinationDescription>,
@as("S3DestinationDescription") s3DestinationDescription: option<s3DestinationDescription>,
@as("DestinationId") destinationId: destinationId
}
type destinationDescriptionList = array<destinationDescription>
type deliveryStreamDescription = {
@as("HasMoreDestinations") hasMoreDestinations: booleanObject,
@as("Destinations") destinations: destinationDescriptionList,
@as("Source") source: option<sourceDescription>,
@as("LastUpdateTimestamp") lastUpdateTimestamp: option<timestamp_>,
@as("CreateTimestamp") createTimestamp: option<timestamp_>,
@as("VersionId") versionId: deliveryStreamVersionId,
@as("DeliveryStreamType") deliveryStreamType: deliveryStreamType,
@as("DeliveryStreamEncryptionConfiguration") deliveryStreamEncryptionConfiguration: option<deliveryStreamEncryptionConfiguration>,
@as("FailureDescription") failureDescription: option<failureDescription>,
@as("DeliveryStreamStatus") deliveryStreamStatus: deliveryStreamStatus,
@as("DeliveryStreamARN") deliveryStreamARN: deliveryStreamARN,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
type awsServiceClient;
@module("@aws-sdk/client-firehose") @new external createClient: unit => awsServiceClient = "KinesisFirehoseClient";
module StopDeliveryStreamEncryption = {
  type t;
  type request = {
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "StopDeliveryStreamEncryptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDeliveryStream = {
  type t;
  type request = {
@as("AllowForceDelete") allowForceDelete: option<booleanObject>,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "DeleteDeliveryStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagDeliveryStream = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "UntagDeliveryStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartDeliveryStreamEncryption = {
  type t;
  type request = {
@as("DeliveryStreamEncryptionConfigurationInput") deliveryStreamEncryptionConfigurationInput: option<deliveryStreamEncryptionConfigurationInput>,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "StartDeliveryStreamEncryptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRecord = {
  type t;
  type request = {
@as("Record") record: record,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = {
@as("Encrypted") encrypted: option<booleanObject>,
@as("RecordId") recordId: putResponseRecordId
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "PutRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDeliveryStreams = {
  type t;
  type request = {
@as("ExclusiveStartDeliveryStreamName") exclusiveStartDeliveryStreamName: option<deliveryStreamName>,
@as("DeliveryStreamType") deliveryStreamType: option<deliveryStreamType>,
@as("Limit") limit: option<listDeliveryStreamsInputLimit>
}
  type response = {
@as("HasMoreDeliveryStreams") hasMoreDeliveryStreams: booleanObject,
@as("DeliveryStreamNames") deliveryStreamNames: deliveryStreamNameList
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "ListDeliveryStreamsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagDeliveryStream = {
  type t;
  type request = {
@as("Tags") tags: tagDeliveryStreamInputTagList,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "TagDeliveryStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRecordBatch = {
  type t;
  type request = {
@as("Records") records: putRecordBatchRequestEntryList,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = {
@as("RequestResponses") requestResponses: putRecordBatchResponseEntryList,
@as("Encrypted") encrypted: option<booleanObject>,
@as("FailedPutCount") failedPutCount: nonNegativeIntegerObject
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "PutRecordBatchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForDeliveryStream = {
  type t;
  type request = {
@as("Limit") limit: option<listTagsForDeliveryStreamInputLimit>,
@as("ExclusiveStartTagKey") exclusiveStartTagKey: option<tagKey>,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = {
@as("HasMoreTags") hasMoreTags: booleanObject,
@as("Tags") tags: listTagsForDeliveryStreamOutputTagList
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "ListTagsForDeliveryStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDestination = {
  type t;
  type request = {
@as("HttpEndpointDestinationUpdate") httpEndpointDestinationUpdate: option<httpEndpointDestinationUpdate>,
@as("SplunkDestinationUpdate") splunkDestinationUpdate: option<splunkDestinationUpdate>,
@as("ElasticsearchDestinationUpdate") elasticsearchDestinationUpdate: option<elasticsearchDestinationUpdate>,
@as("RedshiftDestinationUpdate") redshiftDestinationUpdate: option<redshiftDestinationUpdate>,
@as("ExtendedS3DestinationUpdate") extendedS3DestinationUpdate: option<extendedS3DestinationUpdate>,
@as("S3DestinationUpdate") s3DestinationUpdate: option<s3DestinationUpdate>,
@as("DestinationId") destinationId: destinationId,
@as("CurrentDeliveryStreamVersionId") currentDeliveryStreamVersionId: deliveryStreamVersionId,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = unit
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "UpdateDestinationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDeliveryStream = {
  type t;
  type request = {
@as("Tags") tags: option<tagDeliveryStreamInputTagList>,
@as("HttpEndpointDestinationConfiguration") httpEndpointDestinationConfiguration: option<httpEndpointDestinationConfiguration>,
@as("SplunkDestinationConfiguration") splunkDestinationConfiguration: option<splunkDestinationConfiguration>,
@as("ElasticsearchDestinationConfiguration") elasticsearchDestinationConfiguration: option<elasticsearchDestinationConfiguration>,
@as("RedshiftDestinationConfiguration") redshiftDestinationConfiguration: option<redshiftDestinationConfiguration>,
@as("ExtendedS3DestinationConfiguration") extendedS3DestinationConfiguration: option<extendedS3DestinationConfiguration>,
@as("S3DestinationConfiguration") s3DestinationConfiguration: option<s3DestinationConfiguration>,
@as("DeliveryStreamEncryptionConfigurationInput") deliveryStreamEncryptionConfigurationInput: option<deliveryStreamEncryptionConfigurationInput>,
@as("KinesisStreamSourceConfiguration") kinesisStreamSourceConfiguration: option<kinesisStreamSourceConfiguration>,
@as("DeliveryStreamType") deliveryStreamType: option<deliveryStreamType>,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = {
@as("DeliveryStreamARN") deliveryStreamARN: option<deliveryStreamARN>
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "CreateDeliveryStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDeliveryStream = {
  type t;
  type request = {
@as("ExclusiveStartDestinationId") exclusiveStartDestinationId: option<destinationId>,
@as("Limit") limit: option<describeDeliveryStreamInputLimit>,
@as("DeliveryStreamName") deliveryStreamName: deliveryStreamName
}
  type response = {
@as("DeliveryStreamDescription") deliveryStreamDescription: deliveryStreamDescription
}
  @module("@aws-sdk/client-firehose") @new external new_: (request) => t = "DescribeDeliveryStreamCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
