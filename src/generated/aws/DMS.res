type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type timestamp_ = Js.Date.t;
type targetDbType = [@as("multiple-databases") #MultipleDatabases | @as("specific-database") #SpecificDatabase]
type tstamp = Js.Date.t;
type string_ = string
type startReplicationTaskTypeValue = [@as("reload-target") #ReloadTarget | @as("resume-processing") #ResumeProcessing | @as("start-replication") #StartReplication]
type sourceType = [@as("replication-instance") #ReplicationInstance]
type secretString = string
type safeguardPolicy = [@as("shared-automatic-truncation") #SharedAutomaticTruncation | @as("exclusive-automatic-truncation") #ExclusiveAutomaticTruncation | @as("rely-on-sql-server-replication-agent") #RelyOnSqlServerReplicationAgent]
type resourceArn = string
type replicationEndpointTypeValue = [@as("target") #Target | @as("source") #Source]
type reloadOptionValue = [@as("validate-only") #ValidateOnly | @as("data-reload") #DataReload]
type releaseStatusValues = [@as("beta") #Beta]
type refreshSchemasStatusTypeValue = [@as("refreshing") #Refreshing | @as("failed") #Failed | @as("successful") #Successful]
type parquetVersionValue = [@as("parquet-2-0") #Parquet20 | @as("parquet-1-0") #Parquet10]
type nestingLevelValue = [@as("one") #One | @as("none") #None]
type migrationTypeValue = [@as("full-load-and-cdc") #FullLoadAndCdc | @as("cdc") #Cdc | @as("full-load") #FullLoad]
type messageFormatValue = [@as("json-unformatted") #JsonUnformatted | @as("json") #Json]
type long = float
type kafkaSecurityProtocol = [@as("sasl-ssl") #SaslSsl | @as("ssl-encryption") #SslEncryption | @as("ssl-authentication") #SslAuthentication | @as("plaintext") #Plaintext]
type integerOptional = int
type integer_ = int
type exceptionMessage = string
type endpointSettingTypeValue = [@as("enum") #Enum | @as("integer") #Integer | @as("boolean") #Boolean | @as("string") #String]
type encryptionModeValue = [@as("sse-kms") #SseKms | @as("sse-s3") #SseS3]
type encodingTypeValue = [@as("rle-dictionary") #RleDictionary | @as("plain-dictionary") #PlainDictionary | @as("plain") #Plain]
type dmsSslModeValue = [@as("verify-full") #VerifyFull | @as("verify-ca") #VerifyCa | @as("require") #Require | @as("none") #None]
type datePartitionSequenceValue = [@as("DDMMYYYY") #DDMMYYYY | @as("MMYYYYDD") #MMYYYYDD | @as("YYYYMM") #YYYYMM | @as("YYYYMMDDHH") #YYYYMMDDHH | @as("YYYYMMDD") #YYYYMMDD]
type datePartitionDelimiterValue = [@as("NONE") #NONE | @as("DASH") #DASH | @as("UNDERSCORE") #UNDERSCORE | @as("SLASH") #SLASH]
type dataFormatValue = [@as("parquet") #Parquet | @as("csv") #Csv]
type compressionTypeValue = [@as("gzip") #Gzip | @as("none") #None]
type charLengthSemantics = [@as("byte") #Byte | @as("char") #Char | @as("default") #Default]
type certificateWallet = NodeJs.Buffer.t
type booleanOptional = bool
type boolean_ = bool
type authTypeValue = [@as("password") #Password | @as("no") #No]
type authMechanismValue = [@as("scram_sha_1") #ScramSha1 | @as("mongodb_cr") #MongodbCr | @as("default") #Default]
type vpcSecurityGroupMembership = {
@as("Status") status: option<string_>,
@as("VpcSecurityGroupId") vpcSecurityGroupId: option<string_>
}
type vpcSecurityGroupIdList = array<string_>
type tag = {
@as("Value") value: option<string_>,
@as("Key") key: option<string_>
}
type tableToReload = {
@as("TableName") tableName: string_,
@as("SchemaName") schemaName: string_
}
type tableStatistics = {
@as("ValidationStateDetails") validationStateDetails: option<string_>,
@as("ValidationState") validationState: option<string_>,
@as("ValidationSuspendedRecords") validationSuspendedRecords: option<long>,
@as("ValidationFailedRecords") validationFailedRecords: option<long>,
@as("ValidationPendingRecords") validationPendingRecords: option<long>,
@as("TableState") tableState: option<string_>,
@as("LastUpdateTime") lastUpdateTime: option<tstamp>,
@as("FullLoadReloaded") fullLoadReloaded: option<booleanOptional>,
@as("FullLoadEndTime") fullLoadEndTime: option<tstamp>,
@as("FullLoadStartTime") fullLoadStartTime: option<tstamp>,
@as("FullLoadErrorRows") fullLoadErrorRows: option<long>,
@as("FullLoadCondtnlChkFailedRows") fullLoadCondtnlChkFailedRows: option<long>,
@as("FullLoadRows") fullLoadRows: option<long>,
@as("Ddls") ddls: option<long>,
@as("Updates") updates: option<long>,
@as("Deletes") deletes: option<long>,
@as("Inserts") inserts: option<long>,
@as("TableName") tableName: option<string_>,
@as("SchemaName") schemaName: option<string_>
}
type sybaseSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("Username") username: option<string_>,
@as("ServerName") serverName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("Password") password: option<secretString>,
@as("DatabaseName") databaseName: option<string_>
}
type supportedEndpointType = {
@as("EngineDisplayName") engineDisplayName: option<string_>,
@as("ReplicationInstanceEngineMinimumVersion") replicationInstanceEngineMinimumVersion: option<string_>,
@as("EndpointType") endpointType: option<replicationEndpointTypeValue>,
@as("SupportsCDC") supportsCDC: option<boolean_>,
@as("EngineName") engineName: option<string_>
}
type subnetIdentifierList = array<string_>
type sourceIdsList = array<string_>
type schemaList = array<string_>
type s3Settings = {
@as("CdcPath") cdcPath: option<string_>,
@as("PreserveTransactions") preserveTransactions: option<booleanOptional>,
@as("CsvNoSupValue") csvNoSupValue: option<string_>,
@as("UseCsvNoSupValue") useCsvNoSupValue: option<booleanOptional>,
@as("DatePartitionDelimiter") datePartitionDelimiter: option<datePartitionDelimiterValue>,
@as("DatePartitionSequence") datePartitionSequence: option<datePartitionSequenceValue>,
@as("DatePartitionEnabled") datePartitionEnabled: option<booleanOptional>,
@as("CdcInsertsAndUpdates") cdcInsertsAndUpdates: option<booleanOptional>,
@as("ParquetTimestampInMillisecond") parquetTimestampInMillisecond: option<booleanOptional>,
@as("TimestampColumnName") timestampColumnName: option<string_>,
@as("CdcInsertsOnly") cdcInsertsOnly: option<booleanOptional>,
@as("IncludeOpForFullLoad") includeOpForFullLoad: option<booleanOptional>,
@as("EnableStatistics") enableStatistics: option<booleanOptional>,
@as("ParquetVersion") parquetVersion: option<parquetVersionValue>,
@as("DataPageSize") dataPageSize: option<integerOptional>,
@as("RowGroupLength") rowGroupLength: option<integerOptional>,
@as("DictPageSizeLimit") dictPageSizeLimit: option<integerOptional>,
@as("EncodingType") encodingType: option<encodingTypeValue>,
@as("DataFormat") dataFormat: option<dataFormatValue>,
@as("ServerSideEncryptionKmsKeyId") serverSideEncryptionKmsKeyId: option<string_>,
@as("EncryptionMode") encryptionMode: option<encryptionModeValue>,
@as("CompressionType") compressionType: option<compressionTypeValue>,
@as("BucketName") bucketName: option<string_>,
@as("BucketFolder") bucketFolder: option<string_>,
@as("CsvDelimiter") csvDelimiter: option<string_>,
@as("CsvRowDelimiter") csvRowDelimiter: option<string_>,
@as("ExternalTableDefinition") externalTableDefinition: option<string_>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>
}
type replicationTaskStats = {
@as("FullLoadFinishDate") fullLoadFinishDate: option<tstamp>,
@as("FullLoadStartDate") fullLoadStartDate: option<tstamp>,
@as("StopDate") stopDate: option<tstamp>,
@as("StartDate") startDate: option<tstamp>,
@as("FreshStartDate") freshStartDate: option<tstamp>,
@as("TablesErrored") tablesErrored: option<integer_>,
@as("TablesQueued") tablesQueued: option<integer_>,
@as("TablesLoading") tablesLoading: option<integer_>,
@as("TablesLoaded") tablesLoaded: option<integer_>,
@as("ElapsedTimeMillis") elapsedTimeMillis: option<long>,
@as("FullLoadProgressPercent") fullLoadProgressPercent: option<integer_>
}
type replicationTaskIndividualAssessment = {
@as("ReplicationTaskIndividualAssessmentStartDate") replicationTaskIndividualAssessmentStartDate: option<tstamp>,
@as("Status") status: option<string_>,
@as("IndividualAssessmentName") individualAssessmentName: option<string_>,
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: option<string_>,
@as("ReplicationTaskIndividualAssessmentArn") replicationTaskIndividualAssessmentArn: option<string_>
}
type replicationTaskAssessmentRunProgress = {
@as("IndividualAssessmentCompletedCount") individualAssessmentCompletedCount: option<integer_>,
@as("IndividualAssessmentCount") individualAssessmentCount: option<integer_>
}
type replicationTaskAssessmentResult = {
@as("S3ObjectUrl") s3ObjectUrl: option<string_>,
@as("AssessmentResults") assessmentResults: option<string_>,
@as("AssessmentResultsFile") assessmentResultsFile: option<string_>,
@as("AssessmentStatus") assessmentStatus: option<string_>,
@as("ReplicationTaskLastAssessmentDate") replicationTaskLastAssessmentDate: option<tstamp>,
@as("ReplicationTaskArn") replicationTaskArn: option<string_>,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: option<string_>
}
type replicationPendingModifiedValues = {
@as("EngineVersion") engineVersion: option<string_>,
@as("MultiAZ") multiAZ: option<booleanOptional>,
@as("AllocatedStorage") allocatedStorage: option<integerOptional>,
@as("ReplicationInstanceClass") replicationInstanceClass: option<string_>
}
type replicationInstanceTaskLog = {
@as("ReplicationInstanceTaskLogSize") replicationInstanceTaskLogSize: option<long>,
@as("ReplicationTaskArn") replicationTaskArn: option<string_>,
@as("ReplicationTaskName") replicationTaskName: option<string_>
}
type replicationInstancePublicIpAddressList = array<string_>
type replicationInstancePrivateIpAddressList = array<string_>
type refreshSchemasStatus = {
@as("LastFailureMessage") lastFailureMessage: option<string_>,
@as("LastRefreshDate") lastRefreshDate: option<tstamp>,
@as("Status") status: option<refreshSchemasStatusTypeValue>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<string_>,
@as("EndpointArn") endpointArn: option<string_>
}
type redshiftSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("WriteBufferSize") writeBufferSize: option<integerOptional>,
@as("Username") username: option<string_>,
@as("TruncateColumns") truncateColumns: option<booleanOptional>,
@as("TrimBlanks") trimBlanks: option<booleanOptional>,
@as("TimeFormat") timeFormat: option<string_>,
@as("ServerSideEncryptionKmsKeyId") serverSideEncryptionKmsKeyId: option<string_>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>,
@as("ServerName") serverName: option<string_>,
@as("ReplaceChars") replaceChars: option<string_>,
@as("ReplaceInvalidChars") replaceInvalidChars: option<string_>,
@as("RemoveQuotes") removeQuotes: option<booleanOptional>,
@as("Port") port: option<integerOptional>,
@as("Password") password: option<secretString>,
@as("MaxFileSize") maxFileSize: option<integerOptional>,
@as("LoadTimeout") loadTimeout: option<integerOptional>,
@as("FileTransferUploadStreams") fileTransferUploadStreams: option<integerOptional>,
@as("ExplicitIds") explicitIds: option<booleanOptional>,
@as("EncryptionMode") encryptionMode: option<encryptionModeValue>,
@as("EmptyAsNull") emptyAsNull: option<booleanOptional>,
@as("DateFormat") dateFormat: option<string_>,
@as("DatabaseName") databaseName: option<string_>,
@as("ConnectionTimeout") connectionTimeout: option<integerOptional>,
@as("CompUpdate") compUpdate: option<booleanOptional>,
@as("CaseSensitiveNames") caseSensitiveNames: option<booleanOptional>,
@as("BucketName") bucketName: option<string_>,
@as("BucketFolder") bucketFolder: option<string_>,
@as("AfterConnectScript") afterConnectScript: option<string_>,
@as("AcceptAnyDate") acceptAnyDate: option<booleanOptional>
}
type postgreSQLSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("SlotName") slotName: option<string_>,
@as("Username") username: option<string_>,
@as("ServerName") serverName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("Password") password: option<secretString>,
@as("FailTasksOnLobTruncation") failTasksOnLobTruncation: option<booleanOptional>,
@as("ExecuteTimeout") executeTimeout: option<integerOptional>,
@as("DdlArtifactsSchema") ddlArtifactsSchema: option<string_>,
@as("DatabaseName") databaseName: option<string_>,
@as("MaxFileSize") maxFileSize: option<integerOptional>,
@as("CaptureDdls") captureDdls: option<booleanOptional>,
@as("AfterConnectScript") afterConnectScript: option<string_>
}
type pendingMaintenanceAction = {
@as("Description") description: option<string_>,
@as("CurrentApplyDate") currentApplyDate: option<tstamp>,
@as("OptInStatus") optInStatus: option<string_>,
@as("ForcedApplyDate") forcedApplyDate: option<tstamp>,
@as("AutoAppliedAfterDate") autoAppliedAfterDate: option<tstamp>,
@as("Action") action: option<string_>
}
type oracleSettings = {
@as("SecretsManagerOracleAsmSecretId") secretsManagerOracleAsmSecretId: option<string_>,
@as("SecretsManagerOracleAsmAccessRoleArn") secretsManagerOracleAsmAccessRoleArn: option<string_>,
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("Username") username: option<string_>,
@as("SpatialDataOptionToGeoJsonFunctionName") spatialDataOptionToGeoJsonFunctionName: option<string_>,
@as("ServerName") serverName: option<string_>,
@as("SecurityDbEncryptionName") securityDbEncryptionName: option<string_>,
@as("SecurityDbEncryption") securityDbEncryption: option<secretString>,
@as("RetryInterval") retryInterval: option<integerOptional>,
@as("ReadTableSpaceName") readTableSpaceName: option<booleanOptional>,
@as("Port") port: option<integerOptional>,
@as("Password") password: option<secretString>,
@as("NumberDatatypeScale") numberDatatypeScale: option<integerOptional>,
@as("FailTasksOnLobTruncation") failTasksOnLobTruncation: option<booleanOptional>,
@as("DirectPathParallelLoad") directPathParallelLoad: option<booleanOptional>,
@as("DatabaseName") databaseName: option<string_>,
@as("CharLengthSemantics") charLengthSemantics: option<charLengthSemantics>,
@as("AsmUser") asmUser: option<string_>,
@as("AsmServer") asmServer: option<string_>,
@as("AsmPassword") asmPassword: option<secretString>,
@as("ArchivedLogsOnly") archivedLogsOnly: option<booleanOptional>,
@as("DirectPathNoLog") directPathNoLog: option<booleanOptional>,
@as("EnableHomogenousTablespace") enableHomogenousTablespace: option<booleanOptional>,
@as("ReplacePathPrefix") replacePathPrefix: option<booleanOptional>,
@as("UsePathPrefix") usePathPrefix: option<string_>,
@as("OraclePathPrefix") oraclePathPrefix: option<string_>,
@as("UseAlternateFolderForOnline") useAlternateFolderForOnline: option<booleanOptional>,
@as("AccessAlternateDirectly") accessAlternateDirectly: option<booleanOptional>,
@as("ReadAheadBlocks") readAheadBlocks: option<integerOptional>,
@as("ParallelAsmReadThreads") parallelAsmReadThreads: option<integerOptional>,
@as("AllowSelectNestedTables") allowSelectNestedTables: option<booleanOptional>,
@as("AdditionalArchivedLogDestId") additionalArchivedLogDestId: option<integerOptional>,
@as("ArchivedLogDestId") archivedLogDestId: option<integerOptional>,
@as("AddSupplementalLogging") addSupplementalLogging: option<booleanOptional>
}
type neptuneSettings = {
@as("IamAuthEnabled") iamAuthEnabled: option<booleanOptional>,
@as("MaxRetryCount") maxRetryCount: option<integerOptional>,
@as("MaxFileSize") maxFileSize: option<integerOptional>,
@as("ErrorRetryDuration") errorRetryDuration: option<integerOptional>,
@as("S3BucketFolder") s3BucketFolder: string_,
@as("S3BucketName") s3BucketName: string_,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>
}
type mySQLSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("Username") username: option<string_>,
@as("ServerTimezone") serverTimezone: option<string_>,
@as("ServerName") serverName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("Password") password: option<secretString>,
@as("ParallelLoadThreads") parallelLoadThreads: option<integerOptional>,
@as("MaxFileSize") maxFileSize: option<integerOptional>,
@as("TargetDbType") targetDbType: option<targetDbType>,
@as("EventsPollInterval") eventsPollInterval: option<integerOptional>,
@as("DatabaseName") databaseName: option<string_>,
@as("CleanSourceMetadataOnMismatch") cleanSourceMetadataOnMismatch: option<booleanOptional>,
@as("AfterConnectScript") afterConnectScript: option<string_>
}
type mongoDbSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("KmsKeyId") kmsKeyId: option<string_>,
@as("AuthSource") authSource: option<string_>,
@as("DocsToInvestigate") docsToInvestigate: option<string_>,
@as("ExtractDocId") extractDocId: option<string_>,
@as("NestingLevel") nestingLevel: option<nestingLevelValue>,
@as("AuthMechanism") authMechanism: option<authMechanismValue>,
@as("AuthType") authType: option<authTypeValue>,
@as("DatabaseName") databaseName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("ServerName") serverName: option<string_>,
@as("Password") password: option<secretString>,
@as("Username") username: option<string_>
}
type microsoftSQLServerSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("UseThirdPartyBackupDevice") useThirdPartyBackupDevice: option<booleanOptional>,
@as("UseBcpFullLoad") useBcpFullLoad: option<booleanOptional>,
@as("Username") username: option<string_>,
@as("ServerName") serverName: option<string_>,
@as("SafeguardPolicy") safeguardPolicy: option<safeguardPolicy>,
@as("ReadBackupOnly") readBackupOnly: option<booleanOptional>,
@as("QuerySingleAlwaysOnNode") querySingleAlwaysOnNode: option<booleanOptional>,
@as("Password") password: option<secretString>,
@as("ControlTablesFileGroup") controlTablesFileGroup: option<string_>,
@as("DatabaseName") databaseName: option<string_>,
@as("BcpPacketSize") bcpPacketSize: option<integerOptional>,
@as("Port") port: option<integerOptional>
}
type kinesisSettings = {
@as("IncludeNullAndEmpty") includeNullAndEmpty: option<booleanOptional>,
@as("IncludeControlDetails") includeControlDetails: option<booleanOptional>,
@as("IncludeTableAlterOperations") includeTableAlterOperations: option<booleanOptional>,
@as("PartitionIncludeSchemaTable") partitionIncludeSchemaTable: option<booleanOptional>,
@as("IncludePartitionValue") includePartitionValue: option<booleanOptional>,
@as("IncludeTransactionDetails") includeTransactionDetails: option<booleanOptional>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>,
@as("MessageFormat") messageFormat: option<messageFormatValue>,
@as("StreamArn") streamArn: option<string_>
}
type keyList = array<string_>
type kafkaSettings = {
@as("SaslPassword") saslPassword: option<secretString>,
@as("SaslUsername") saslUsername: option<string_>,
@as("SslCaCertificateArn") sslCaCertificateArn: option<string_>,
@as("SslClientKeyPassword") sslClientKeyPassword: option<secretString>,
@as("SslClientKeyArn") sslClientKeyArn: option<string_>,
@as("SslClientCertificateArn") sslClientCertificateArn: option<string_>,
@as("SecurityProtocol") securityProtocol: option<kafkaSecurityProtocol>,
@as("IncludeNullAndEmpty") includeNullAndEmpty: option<booleanOptional>,
@as("MessageMaxBytes") messageMaxBytes: option<integerOptional>,
@as("IncludeControlDetails") includeControlDetails: option<booleanOptional>,
@as("IncludeTableAlterOperations") includeTableAlterOperations: option<booleanOptional>,
@as("PartitionIncludeSchemaTable") partitionIncludeSchemaTable: option<booleanOptional>,
@as("IncludePartitionValue") includePartitionValue: option<booleanOptional>,
@as("IncludeTransactionDetails") includeTransactionDetails: option<booleanOptional>,
@as("MessageFormat") messageFormat: option<messageFormatValue>,
@as("Topic") topic: option<string_>,
@as("Broker") broker: option<string_>
}
type individualAssessmentNameList = array<string_>
type includeTestList = array<string_>
type ibmdb2Settings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("Username") username: option<string_>,
@as("MaxKBytesPerRead") maxKBytesPerRead: option<integerOptional>,
@as("CurrentLsn") currentLsn: option<string_>,
@as("SetDataCaptureChanges") setDataCaptureChanges: option<booleanOptional>,
@as("ServerName") serverName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("Password") password: option<secretString>,
@as("DatabaseName") databaseName: option<string_>
}
type filterValueList = array<string_>
type excludeTestList = array<string_>
type eventCategoriesList = array<string_>
type endpointSettingEnumValues = array<string_>
type elasticsearchSettings = {
@as("ErrorRetryDuration") errorRetryDuration: option<integerOptional>,
@as("FullLoadErrorPercentage") fullLoadErrorPercentage: option<integerOptional>,
@as("EndpointUri") endpointUri: string_,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: string_
}
type dynamoDbSettings = {
@as("ServiceAccessRoleArn") serviceAccessRoleArn: string_
}
type docDbSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: option<string_>,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: option<string_>,
@as("KmsKeyId") kmsKeyId: option<string_>,
@as("DocsToInvestigate") docsToInvestigate: option<integerOptional>,
@as("ExtractDocId") extractDocId: option<booleanOptional>,
@as("NestingLevel") nestingLevel: option<nestingLevelValue>,
@as("DatabaseName") databaseName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("ServerName") serverName: option<string_>,
@as("Password") password: option<secretString>,
@as("Username") username: option<string_>
}
type dmsTransferSettings = {
@as("BucketName") bucketName: option<string_>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>
}
type connection = {
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: option<string_>,
@as("EndpointIdentifier") endpointIdentifier: option<string_>,
@as("LastFailureMessage") lastFailureMessage: option<string_>,
@as("Status") status: option<string_>,
@as("EndpointArn") endpointArn: option<string_>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<string_>
}
type certificate = {
@as("KeyLength") keyLength: option<integerOptional>,
@as("SigningAlgorithm") signingAlgorithm: option<string_>,
@as("ValidToDate") validToDate: option<tstamp>,
@as("ValidFromDate") validFromDate: option<tstamp>,
@as("CertificateOwner") certificateOwner: option<string_>,
@as("CertificateArn") certificateArn: option<string_>,
@as("CertificateWallet") certificateWallet: option<certificateWallet>,
@as("CertificatePem") certificatePem: option<string_>,
@as("CertificateCreationDate") certificateCreationDate: option<tstamp>,
@as("CertificateIdentifier") certificateIdentifier: option<string_>
}
type availabilityZonesList = array<string_>
type availabilityZone = {
@as("Name") name: option<string_>
}
type accountQuota = {
@as("Max") max: option<long>,
@as("Used") used: option<long>,
@as("AccountQuotaName") accountQuotaName: option<string_>
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type tagList_ = array<tag>
type tableStatisticsList = array<tableStatistics>
type tableListToReload = array<tableToReload>
type supportedEndpointTypeList = array<supportedEndpointType>
type subnet = {
@as("SubnetStatus") subnetStatus: option<string_>,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: option<availabilityZone>,
@as("SubnetIdentifier") subnetIdentifier: option<string_>
}
type replicationTaskIndividualAssessmentList = array<replicationTaskIndividualAssessment>
type replicationTaskAssessmentRun = {
@as("AssessmentRunName") assessmentRunName: option<string_>,
@as("ResultKmsKeyArn") resultKmsKeyArn: option<string_>,
@as("ResultEncryptionMode") resultEncryptionMode: option<string_>,
@as("ResultLocationFolder") resultLocationFolder: option<string_>,
@as("ResultLocationBucket") resultLocationBucket: option<string_>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>,
@as("LastFailureMessage") lastFailureMessage: option<string_>,
@as("AssessmentProgress") assessmentProgress: option<replicationTaskAssessmentRunProgress>,
@as("ReplicationTaskAssessmentRunCreationDate") replicationTaskAssessmentRunCreationDate: option<tstamp>,
@as("Status") status: option<string_>,
@as("ReplicationTaskArn") replicationTaskArn: option<string_>,
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: option<string_>
}
type replicationTaskAssessmentResultList = array<replicationTaskAssessmentResult>
type replicationTask = {
@as("TargetReplicationInstanceArn") targetReplicationInstanceArn: option<string_>,
@as("TaskData") taskData: option<string_>,
@as("ReplicationTaskStats") replicationTaskStats: option<replicationTaskStats>,
@as("ReplicationTaskArn") replicationTaskArn: option<string_>,
@as("RecoveryCheckpoint") recoveryCheckpoint: option<string_>,
@as("CdcStopPosition") cdcStopPosition: option<string_>,
@as("CdcStartPosition") cdcStartPosition: option<string_>,
@as("ReplicationTaskStartDate") replicationTaskStartDate: option<tstamp>,
@as("ReplicationTaskCreationDate") replicationTaskCreationDate: option<tstamp>,
@as("StopReason") stopReason: option<string_>,
@as("LastFailureMessage") lastFailureMessage: option<string_>,
@as("Status") status: option<string_>,
@as("ReplicationTaskSettings") replicationTaskSettings: option<string_>,
@as("TableMappings") tableMappings: option<string_>,
@as("MigrationType") migrationType: option<migrationTypeValue>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<string_>,
@as("TargetEndpointArn") targetEndpointArn: option<string_>,
@as("SourceEndpointArn") sourceEndpointArn: option<string_>,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: option<string_>
}
type replicationInstanceTaskLogsList = array<replicationInstanceTaskLog>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type orderableReplicationInstance = {
@as("ReleaseStatus") releaseStatus: option<releaseStatusValues>,
@as("AvailabilityZones") availabilityZones: option<availabilityZonesList>,
@as("IncludedAllocatedStorage") includedAllocatedStorage: option<integer_>,
@as("DefaultAllocatedStorage") defaultAllocatedStorage: option<integer_>,
@as("MaxAllocatedStorage") maxAllocatedStorage: option<integer_>,
@as("MinAllocatedStorage") minAllocatedStorage: option<integer_>,
@as("StorageType") storageType: option<string_>,
@as("ReplicationInstanceClass") replicationInstanceClass: option<string_>,
@as("EngineVersion") engineVersion: option<string_>
}
type filter = {
@as("Values") values: filterValueList,
@as("Name") name: string_
}
type eventSubscription = {
@as("Enabled") enabled: option<boolean_>,
@as("EventCategoriesList") eventCategoriesList: option<eventCategoriesList>,
@as("SourceIdsList") sourceIdsList: option<sourceIdsList>,
@as("SourceType") sourceType: option<string_>,
@as("SubscriptionCreationTime") subscriptionCreationTime: option<string_>,
@as("Status") status: option<string_>,
@as("SnsTopicArn") snsTopicArn: option<string_>,
@as("CustSubscriptionId") custSubscriptionId: option<string_>,
@as("CustomerAwsId") customerAwsId: option<string_>
}
type eventCategoryGroup = {
@as("EventCategories") eventCategories: option<eventCategoriesList>,
@as("SourceType") sourceType: option<string_>
}
type event = {
@as("Date") date: option<tstamp>,
@as("EventCategories") eventCategories: option<eventCategoriesList>,
@as("Message") message: option<string_>,
@as("SourceType") sourceType: option<sourceType>,
@as("SourceIdentifier") sourceIdentifier: option<string_>
}
type endpointSetting = {
@as("IntValueMax") intValueMax: option<integerOptional>,
@as("IntValueMin") intValueMin: option<integerOptional>,
@as("Applicability") applicability: option<string_>,
@as("Units") units: option<string_>,
@as("Sensitive") sensitive: option<booleanOptional>,
@as("EnumValues") enumValues: option<endpointSettingEnumValues>,
@as("Type") type_: option<endpointSettingTypeValue>,
@as("Name") name: option<string_>
}
type endpoint = {
@as("DocDbSettings") docDbSettings: option<docDbSettings>,
@as("IBMDb2Settings") ibmdb2Settings: option<ibmdb2Settings>,
@as("MicrosoftSQLServerSettings") microsoftSQLServerSettings: option<microsoftSQLServerSettings>,
@as("SybaseSettings") sybaseSettings: option<sybaseSettings>,
@as("OracleSettings") oracleSettings: option<oracleSettings>,
@as("MySQLSettings") mySQLSettings: option<mySQLSettings>,
@as("PostgreSQLSettings") postgreSQLSettings: option<postgreSQLSettings>,
@as("RedshiftSettings") redshiftSettings: option<redshiftSettings>,
@as("NeptuneSettings") neptuneSettings: option<neptuneSettings>,
@as("ElasticsearchSettings") elasticsearchSettings: option<elasticsearchSettings>,
@as("KafkaSettings") kafkaSettings: option<kafkaSettings>,
@as("KinesisSettings") kinesisSettings: option<kinesisSettings>,
@as("MongoDbSettings") mongoDbSettings: option<mongoDbSettings>,
@as("DmsTransferSettings") dmsTransferSettings: option<dmsTransferSettings>,
@as("S3Settings") s3Settings: option<s3Settings>,
@as("DynamoDbSettings") dynamoDbSettings: option<dynamoDbSettings>,
@as("ExternalId") externalId: option<string_>,
@as("ExternalTableDefinition") externalTableDefinition: option<string_>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>,
@as("SslMode") sslMode: option<dmsSslModeValue>,
@as("CertificateArn") certificateArn: option<string_>,
@as("EndpointArn") endpointArn: option<string_>,
@as("KmsKeyId") kmsKeyId: option<string_>,
@as("Status") status: option<string_>,
@as("ExtraConnectionAttributes") extraConnectionAttributes: option<string_>,
@as("DatabaseName") databaseName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("ServerName") serverName: option<string_>,
@as("Username") username: option<string_>,
@as("EngineDisplayName") engineDisplayName: option<string_>,
@as("EngineName") engineName: option<string_>,
@as("EndpointType") endpointType: option<replicationEndpointTypeValue>,
@as("EndpointIdentifier") endpointIdentifier: option<string_>
}
type connectionList = array<connection>
type certificateList = array<certificate>
type accountQuotaList = array<accountQuota>
type subnetList = array<subnet>
type resourcePendingMaintenanceActions = {
@as("PendingMaintenanceActionDetails") pendingMaintenanceActionDetails: option<pendingMaintenanceActionDetails>,
@as("ResourceIdentifier") resourceIdentifier: option<string_>
}
type replicationTaskList = array<replicationTask>
type replicationTaskAssessmentRunList = array<replicationTaskAssessmentRun>
type orderableReplicationInstanceList = array<orderableReplicationInstance>
type filterList = array<filter>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoryGroupList = array<eventCategoryGroup>
type endpointSettingsList = array<endpointSetting>
type endpointList = array<endpoint>
type replicationSubnetGroup = {
@as("Subnets") subnets: option<subnetList>,
@as("SubnetGroupStatus") subnetGroupStatus: option<string_>,
@as("VpcId") vpcId: option<string_>,
@as("ReplicationSubnetGroupDescription") replicationSubnetGroupDescription: option<string_>,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: option<string_>
}
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type replicationSubnetGroups = array<replicationSubnetGroup>
type replicationInstance = {
@as("DnsNameServers") dnsNameServers: option<string_>,
@as("FreeUntil") freeUntil: option<tstamp>,
@as("SecondaryAvailabilityZone") secondaryAvailabilityZone: option<string_>,
@as("PubliclyAccessible") publiclyAccessible: option<boolean_>,
@as("ReplicationInstancePrivateIpAddresses") replicationInstancePrivateIpAddresses: option<replicationInstancePrivateIpAddressList>,
@as("ReplicationInstancePublicIpAddresses") replicationInstancePublicIpAddresses: option<replicationInstancePublicIpAddressList>,
@as("ReplicationInstancePrivateIpAddress") replicationInstancePrivateIpAddress: option<string_>,
@as("ReplicationInstancePublicIpAddress") replicationInstancePublicIpAddress: option<string_>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<string_>,
@as("KmsKeyId") kmsKeyId: option<string_>,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<boolean_>,
@as("EngineVersion") engineVersion: option<string_>,
@as("MultiAZ") multiAZ: option<boolean_>,
@as("PendingModifiedValues") pendingModifiedValues: option<replicationPendingModifiedValues>,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
@as("ReplicationSubnetGroup") replicationSubnetGroup: option<replicationSubnetGroup>,
@as("AvailabilityZone") availabilityZone: option<string_>,
@as("VpcSecurityGroups") vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
@as("InstanceCreateTime") instanceCreateTime: option<tstamp>,
@as("AllocatedStorage") allocatedStorage: option<integer_>,
@as("ReplicationInstanceStatus") replicationInstanceStatus: option<string_>,
@as("ReplicationInstanceClass") replicationInstanceClass: option<string_>,
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: option<string_>
}
type replicationInstanceList = array<replicationInstance>
type awsServiceClient;
@module("@aws-sdk/client-dms") @new external createClient: unit => awsServiceClient = "DMSClient";
module DeleteReplicationSubnetGroup = {
  type t;
  type request = {
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: string_
}
  type response = unit
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteReplicationSubnetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestConnection = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: string_,
@as("ReplicationInstanceArn") replicationInstanceArn: string_
}
  type response = {
@as("Connection") connection: option<connection>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "TestConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: keyList,
@as("ResourceArn") resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RefreshSchemas = {
  type t;
  type request = {
@as("ReplicationInstanceArn") replicationInstanceArn: string_,
@as("EndpointArn") endpointArn: string_
}
  type response = {
@as("RefreshSchemasStatus") refreshSchemasStatus: option<refreshSchemasStatus>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "RefreshSchemasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeSchemas = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("EndpointArn") endpointArn: string_
}
  type response = {
@as("Schemas") schemas: option<schemaList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeSchemasCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRefreshSchemasStatus = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: string_
}
  type response = {
@as("RefreshSchemasStatus") refreshSchemasStatus: option<refreshSchemasStatus>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeRefreshSchemasStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicableIndividualAssessments = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("MigrationType") migrationType: option<migrationTypeValue>,
@as("TargetEngineName") targetEngineName: option<string_>,
@as("SourceEngineName") sourceEngineName: option<string_>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<string_>,
@as("ReplicationTaskArn") replicationTaskArn: option<string_>
}
  type response = {
@as("Marker") marker: option<string_>,
@as("IndividualAssessmentNames") individualAssessmentNames: option<individualAssessmentNameList>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeApplicableIndividualAssessmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ReplicationInstanceArn") replicationInstanceArn: string_,
@as("EndpointArn") endpointArn: string_
}
  type response = {
@as("Connection") connection: option<connection>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: string_
}
  type response = {
@as("Certificate") certificate: option<certificate>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopReplicationTask = {
  type t;
  type request = {
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTask") replicationTask: option<replicationTask>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "StopReplicationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartReplicationTaskAssessmentRun = {
  type t;
  type request = {
@as("Exclude") exclude: option<excludeTestList>,
@as("IncludeOnly") includeOnly: option<includeTestList>,
@as("AssessmentRunName") assessmentRunName: string_,
@as("ResultKmsKeyArn") resultKmsKeyArn: option<string_>,
@as("ResultEncryptionMode") resultEncryptionMode: option<string_>,
@as("ResultLocationFolder") resultLocationFolder: option<string_>,
@as("ResultLocationBucket") resultLocationBucket: string_,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: string_,
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTaskAssessmentRun") replicationTaskAssessmentRun: option<replicationTaskAssessmentRun>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "StartReplicationTaskAssessmentRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartReplicationTaskAssessment = {
  type t;
  type request = {
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTask") replicationTask: option<replicationTask>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "StartReplicationTaskAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartReplicationTask = {
  type t;
  type request = {
@as("CdcStopPosition") cdcStopPosition: option<string_>,
@as("CdcStartPosition") cdcStartPosition: option<string_>,
@as("CdcStartTime") cdcStartTime: option<tstamp>,
@as("StartReplicationTaskType") startReplicationTaskType: startReplicationTaskTypeValue,
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTask") replicationTask: option<replicationTask>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "StartReplicationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReloadTables = {
  type t;
  type request = {
@as("ReloadOption") reloadOption: option<reloadOptionValue>,
@as("TablesToReload") tablesToReload: tableListToReload,
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTaskArn") replicationTaskArn: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ReloadTablesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MoveReplicationTask = {
  type t;
  type request = {
@as("TargetReplicationInstanceArn") targetReplicationInstanceArn: string_,
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTask") replicationTask: option<replicationTask>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "MoveReplicationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationTask = {
  type t;
  type request = {
@as("TaskData") taskData: option<string_>,
@as("CdcStopPosition") cdcStopPosition: option<string_>,
@as("CdcStartPosition") cdcStartPosition: option<string_>,
@as("CdcStartTime") cdcStartTime: option<tstamp>,
@as("ReplicationTaskSettings") replicationTaskSettings: option<string_>,
@as("TableMappings") tableMappings: option<string_>,
@as("MigrationType") migrationType: option<migrationTypeValue>,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: option<string_>,
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTask") replicationTask: option<replicationTask>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ModifyReplicationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyEventSubscription = {
  type t;
  type request = {
@as("Enabled") enabled: option<booleanOptional>,
@as("EventCategories") eventCategories: option<eventCategoriesList>,
@as("SourceType") sourceType: option<string_>,
@as("SnsTopicArn") snsTopicArn: option<string_>,
@as("SubscriptionName") subscriptionName: string_
}
  type response = {
@as("EventSubscription") eventSubscription: option<eventSubscription>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ModifyEventSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyEndpoint = {
  type t;
  type request = {
@as("DocDbSettings") docDbSettings: option<docDbSettings>,
@as("IBMDb2Settings") ibmdb2Settings: option<ibmdb2Settings>,
@as("MicrosoftSQLServerSettings") microsoftSQLServerSettings: option<microsoftSQLServerSettings>,
@as("SybaseSettings") sybaseSettings: option<sybaseSettings>,
@as("OracleSettings") oracleSettings: option<oracleSettings>,
@as("MySQLSettings") mySQLSettings: option<mySQLSettings>,
@as("PostgreSQLSettings") postgreSQLSettings: option<postgreSQLSettings>,
@as("RedshiftSettings") redshiftSettings: option<redshiftSettings>,
@as("NeptuneSettings") neptuneSettings: option<neptuneSettings>,
@as("ElasticsearchSettings") elasticsearchSettings: option<elasticsearchSettings>,
@as("KafkaSettings") kafkaSettings: option<kafkaSettings>,
@as("KinesisSettings") kinesisSettings: option<kinesisSettings>,
@as("MongoDbSettings") mongoDbSettings: option<mongoDbSettings>,
@as("DmsTransferSettings") dmsTransferSettings: option<dmsTransferSettings>,
@as("S3Settings") s3Settings: option<s3Settings>,
@as("DynamoDbSettings") dynamoDbSettings: option<dynamoDbSettings>,
@as("ExternalTableDefinition") externalTableDefinition: option<string_>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>,
@as("SslMode") sslMode: option<dmsSslModeValue>,
@as("CertificateArn") certificateArn: option<string_>,
@as("ExtraConnectionAttributes") extraConnectionAttributes: option<string_>,
@as("DatabaseName") databaseName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("ServerName") serverName: option<string_>,
@as("Password") password: option<secretString>,
@as("Username") username: option<string_>,
@as("EngineName") engineName: option<string_>,
@as("EndpointType") endpointType: option<replicationEndpointTypeValue>,
@as("EndpointIdentifier") endpointIdentifier: option<string_>,
@as("EndpointArn") endpointArn: string_
}
  type response = {
@as("Endpoint") endpoint: option<endpoint>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ModifyEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: string_
}
  type response = {
@as("TagList") tagList_: option<tagList_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportCertificate = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("CertificateWallet") certificateWallet: option<certificateWallet>,
@as("CertificatePem") certificatePem: option<secretString>,
@as("CertificateIdentifier") certificateIdentifier: string_
}
  type response = {
@as("Certificate") certificate: option<certificate>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ImportCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTaskAssessmentResults = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("ReplicationTaskArn") replicationTaskArn: option<string_>
}
  type response = {
@as("ReplicationTaskAssessmentResults") replicationTaskAssessmentResults: option<replicationTaskAssessmentResultList>,
@as("BucketName") bucketName: option<string_>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeReplicationTaskAssessmentResultsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationInstanceTaskLogs = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("ReplicationInstanceArn") replicationInstanceArn: string_
}
  type response = {
@as("Marker") marker: option<string_>,
@as("ReplicationInstanceTaskLogs") replicationInstanceTaskLogs: option<replicationInstanceTaskLogsList>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeReplicationInstanceTaskLogsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  type request = unit
  type response = {
@as("UniqueAccountIdentifier") uniqueAccountIdentifier: option<string_>,
@as("AccountQuotas") accountQuotas: option<accountQuotaList>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeAccountAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationTaskAssessmentRun = {
  type t;
  type request = {
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: string_
}
  type response = {
@as("ReplicationTaskAssessmentRun") replicationTaskAssessmentRun: option<replicationTaskAssessmentRun>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteReplicationTaskAssessmentRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationTask = {
  type t;
  type request = {
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("ReplicationTask") replicationTask: option<replicationTask>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteReplicationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEventSubscription = {
  type t;
  type request = {
@as("SubscriptionName") subscriptionName: string_
}
  type response = {
@as("EventSubscription") eventSubscription: option<eventSubscription>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteEventSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: string_
}
  type response = {
@as("Endpoint") endpoint: option<endpoint>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationTask = {
  type t;
  type request = {
@as("ResourceIdentifier") resourceIdentifier: option<string_>,
@as("TaskData") taskData: option<string_>,
@as("Tags") tags: option<tagList_>,
@as("CdcStopPosition") cdcStopPosition: option<string_>,
@as("CdcStartPosition") cdcStartPosition: option<string_>,
@as("CdcStartTime") cdcStartTime: option<tstamp>,
@as("ReplicationTaskSettings") replicationTaskSettings: option<string_>,
@as("TableMappings") tableMappings: string_,
@as("MigrationType") migrationType: migrationTypeValue,
@as("ReplicationInstanceArn") replicationInstanceArn: string_,
@as("TargetEndpointArn") targetEndpointArn: string_,
@as("SourceEndpointArn") sourceEndpointArn: string_,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: string_
}
  type response = {
@as("ReplicationTask") replicationTask: option<replicationTask>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "CreateReplicationTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEventSubscription = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("Enabled") enabled: option<booleanOptional>,
@as("SourceIds") sourceIds: option<sourceIdsList>,
@as("EventCategories") eventCategories: option<eventCategoriesList>,
@as("SourceType") sourceType: option<string_>,
@as("SnsTopicArn") snsTopicArn: string_,
@as("SubscriptionName") subscriptionName: string_
}
  type response = {
@as("EventSubscription") eventSubscription: option<eventSubscription>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "CreateEventSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateEndpoint = {
  type t;
  type request = {
@as("DocDbSettings") docDbSettings: option<docDbSettings>,
@as("ResourceIdentifier") resourceIdentifier: option<string_>,
@as("IBMDb2Settings") ibmdb2Settings: option<ibmdb2Settings>,
@as("MicrosoftSQLServerSettings") microsoftSQLServerSettings: option<microsoftSQLServerSettings>,
@as("SybaseSettings") sybaseSettings: option<sybaseSettings>,
@as("OracleSettings") oracleSettings: option<oracleSettings>,
@as("MySQLSettings") mySQLSettings: option<mySQLSettings>,
@as("PostgreSQLSettings") postgreSQLSettings: option<postgreSQLSettings>,
@as("RedshiftSettings") redshiftSettings: option<redshiftSettings>,
@as("NeptuneSettings") neptuneSettings: option<neptuneSettings>,
@as("ElasticsearchSettings") elasticsearchSettings: option<elasticsearchSettings>,
@as("KafkaSettings") kafkaSettings: option<kafkaSettings>,
@as("KinesisSettings") kinesisSettings: option<kinesisSettings>,
@as("MongoDbSettings") mongoDbSettings: option<mongoDbSettings>,
@as("DmsTransferSettings") dmsTransferSettings: option<dmsTransferSettings>,
@as("S3Settings") s3Settings: option<s3Settings>,
@as("DynamoDbSettings") dynamoDbSettings: option<dynamoDbSettings>,
@as("ExternalTableDefinition") externalTableDefinition: option<string_>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<string_>,
@as("SslMode") sslMode: option<dmsSslModeValue>,
@as("CertificateArn") certificateArn: option<string_>,
@as("Tags") tags: option<tagList_>,
@as("KmsKeyId") kmsKeyId: option<string_>,
@as("ExtraConnectionAttributes") extraConnectionAttributes: option<string_>,
@as("DatabaseName") databaseName: option<string_>,
@as("Port") port: option<integerOptional>,
@as("ServerName") serverName: option<string_>,
@as("Password") password: option<secretString>,
@as("Username") username: option<string_>,
@as("EngineName") engineName: string_,
@as("EndpointType") endpointType: replicationEndpointTypeValue,
@as("EndpointIdentifier") endpointIdentifier: string_
}
  type response = {
@as("Endpoint") endpoint: option<endpoint>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "CreateEndpointCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelReplicationTaskAssessmentRun = {
  type t;
  type request = {
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: string_
}
  type response = {
@as("ReplicationTaskAssessmentRun") replicationTaskAssessmentRun: option<replicationTaskAssessmentRun>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "CancelReplicationTaskAssessmentRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: string_
}
  type response = unit
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "AddTagsToResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTableStatistics = {
  type t;
  type request = {
@as("Filters") filters: option<filterList>,
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("ReplicationTaskArn") replicationTaskArn: string_
}
  type response = {
@as("Marker") marker: option<string_>,
@as("TableStatistics") tableStatistics: option<tableStatisticsList>,
@as("ReplicationTaskArn") replicationTaskArn: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeTableStatisticsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTasks = {
  type t;
  type request = {
@as("WithoutSettings") withoutSettings: option<booleanOptional>,
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("ReplicationTasks") replicationTasks: option<replicationTaskList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeReplicationTasksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTaskIndividualAssessments = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("ReplicationTaskIndividualAssessments") replicationTaskIndividualAssessments: option<replicationTaskIndividualAssessmentList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeReplicationTaskIndividualAssessmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTaskAssessmentRuns = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("ReplicationTaskAssessmentRuns") replicationTaskAssessmentRuns: option<replicationTaskAssessmentRunList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeReplicationTaskAssessmentRunsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrderableReplicationInstances = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>
}
  type response = {
@as("Marker") marker: option<string_>,
@as("OrderableReplicationInstances") orderableReplicationInstances: option<orderableReplicationInstanceList>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeOrderableReplicationInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>,
@as("EventCategories") eventCategories: option<eventCategoriesList>,
@as("Duration") duration: option<integerOptional>,
@as("EndTime") endTime: option<tstamp>,
@as("StartTime") startTime: option<tstamp>,
@as("SourceType") sourceType: option<sourceType>,
@as("SourceIdentifier") sourceIdentifier: option<string_>
}
  type response = {
@as("Events") events: option<eventList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventSubscriptions = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>,
@as("SubscriptionName") subscriptionName: option<string_>
}
  type response = {
@as("EventSubscriptionsList") eventSubscriptionsList: option<eventSubscriptionsList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeEventSubscriptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventCategories = {
  type t;
  type request = {
@as("Filters") filters: option<filterList>,
@as("SourceType") sourceType: option<string_>
}
  type response = {
@as("EventCategoryGroupList") eventCategoryGroupList: option<eventCategoryGroupList>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeEventCategoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpoints = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("Endpoints") endpoints: option<endpointList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeEndpointsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpointTypes = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("SupportedEndpointTypes") supportedEndpointTypes: option<supportedEndpointTypeList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeEndpointTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpointSettings = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("EngineName") engineName: string_
}
  type response = {
@as("EndpointSettings") endpointSettings: option<endpointSettingsList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeEndpointSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnections = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("Connections") connections: option<connectionList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificates = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("Certificates") certificates: option<certificateList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ApplyPendingMaintenanceAction = {
  type t;
  type request = {
@as("OptInType") optInType: string_,
@as("ApplyAction") applyAction: string_,
@as("ReplicationInstanceArn") replicationInstanceArn: string_
}
  type response = {
@as("ResourcePendingMaintenanceActions") resourcePendingMaintenanceActions: option<resourcePendingMaintenanceActions>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ApplyPendingMaintenanceActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationSubnetGroup = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: subnetIdentifierList,
@as("ReplicationSubnetGroupDescription") replicationSubnetGroupDescription: option<string_>,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: string_
}
  type response = {
@as("ReplicationSubnetGroup") replicationSubnetGroup: option<replicationSubnetGroup>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ModifyReplicationSubnetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePendingMaintenanceActions = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Marker") marker: option<string_>,
@as("Filters") filters: option<filterList>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<string_>
}
  type response = {
@as("Marker") marker: option<string_>,
@as("PendingMaintenanceActions") pendingMaintenanceActions: option<pendingMaintenanceActions>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribePendingMaintenanceActionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationSubnetGroup = {
  type t;
  type request = {
@as("Tags") tags: option<tagList_>,
@as("SubnetIds") subnetIds: subnetIdentifierList,
@as("ReplicationSubnetGroupDescription") replicationSubnetGroupDescription: string_,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: string_
}
  type response = {
@as("ReplicationSubnetGroup") replicationSubnetGroup: option<replicationSubnetGroup>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "CreateReplicationSubnetGroupCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RebootReplicationInstance = {
  type t;
  type request = {
@as("ForceFailover") forceFailover: option<booleanOptional>,
@as("ReplicationInstanceArn") replicationInstanceArn: string_
}
  type response = {
@as("ReplicationInstance") replicationInstance: option<replicationInstance>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "RebootReplicationInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationInstance = {
  type t;
  type request = {
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: option<string_>,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
@as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: option<boolean_>,
@as("EngineVersion") engineVersion: option<string_>,
@as("MultiAZ") multiAZ: option<booleanOptional>,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
@as("ReplicationInstanceClass") replicationInstanceClass: option<string_>,
@as("ApplyImmediately") applyImmediately: option<boolean_>,
@as("AllocatedStorage") allocatedStorage: option<integerOptional>,
@as("ReplicationInstanceArn") replicationInstanceArn: string_
}
  type response = {
@as("ReplicationInstance") replicationInstance: option<replicationInstance>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "ModifyReplicationInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationSubnetGroups = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("ReplicationSubnetGroups") replicationSubnetGroups: option<replicationSubnetGroups>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeReplicationSubnetGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationInstance = {
  type t;
  type request = {
@as("ReplicationInstanceArn") replicationInstanceArn: string_
}
  type response = {
@as("ReplicationInstance") replicationInstance: option<replicationInstance>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DeleteReplicationInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationInstance = {
  type t;
  type request = {
@as("ResourceIdentifier") resourceIdentifier: option<string_>,
@as("DnsNameServers") dnsNameServers: option<string_>,
@as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
@as("KmsKeyId") kmsKeyId: option<string_>,
@as("Tags") tags: option<tagList_>,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
@as("EngineVersion") engineVersion: option<string_>,
@as("MultiAZ") multiAZ: option<booleanOptional>,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: option<string_>,
@as("AvailabilityZone") availabilityZone: option<string_>,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
@as("ReplicationInstanceClass") replicationInstanceClass: string_,
@as("AllocatedStorage") allocatedStorage: option<integerOptional>,
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: string_
}
  type response = {
@as("ReplicationInstance") replicationInstance: option<replicationInstance>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "CreateReplicationInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationInstances = {
  type t;
  type request = {
@as("Marker") marker: option<string_>,
@as("MaxRecords") maxRecords: option<integerOptional>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("ReplicationInstances") replicationInstances: option<replicationInstanceList>,
@as("Marker") marker: option<string_>
}
  @module("@aws-sdk/client-dms") @new external new_: (request) => t = "DescribeReplicationInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
