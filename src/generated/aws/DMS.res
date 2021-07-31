type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type targetDbType = [@as("multiple-databases") #multiple_databases | @as("specific-database") #specific_database]
type tStamp = Js.Date.t;
type amazonawsString = string
type startReplicationTaskTypeValue = [@as("reload-target") #reload_target | @as("resume-processing") #resume_processing | @as("start-replication") #start_replication]
type sourceType = [@as("replication-instance") #replication_instance]
type secretString = string
type safeguardPolicy = [@as("shared-automatic-truncation") #shared_automatic_truncation | @as("exclusive-automatic-truncation") #exclusive_automatic_truncation | @as("rely-on-sql-server-replication-agent") #rely_on_sql_server_replication_agent]
type resourceArn = string
type replicationEndpointTypeValue = [@as("target") #target | @as("source") #source]
type reloadOptionValue = [@as("validate-only") #validate_only | @as("data-reload") #data_reload]
type releaseStatusValues = [@as("beta") #beta]
type refreshSchemasStatusTypeValue = [@as("refreshing") #refreshing | @as("failed") #failed | @as("successful") #successful]
type parquetVersionValue = [@as("parquet-2-0") #parquet_2_0 | @as("parquet-1-0") #parquet_1_0]
type nestingLevelValue = [@as("one") #one | @as("none") #none]
type migrationTypeValue = [@as("full-load-and-cdc") #full_load_and_cdc | @as("cdc") #cdc | @as("full-load") #full_load]
type messageFormatValue = [@as("json-unformatted") #json_unformatted | @as("json") #json]
type amazonawsLong = float;
type kafkaSecurityProtocol = [@as("sasl-ssl") #sasl_ssl | @as("ssl-encryption") #ssl_encryption | @as("ssl-authentication") #ssl_authentication | @as("plaintext") #plaintext]
type integerOptional = int;
type amazonawsInteger = int;
type exceptionMessage = string
type endpointSettingTypeValue = [@as("enum") #enum | @as("integer") #integer | @as("boolean") #boolean | @as("string") #string]
type encryptionModeValue = [@as("sse-kms") #sse_kms | @as("sse-s3") #sse_s3]
type encodingTypeValue = [@as("rle-dictionary") #rle_dictionary | @as("plain-dictionary") #plain_dictionary | @as("plain") #plain]
type dmsSslModeValue = [@as("verify-full") #verify_full | @as("verify-ca") #verify_ca | @as("require") #require | @as("none") #none]
type datePartitionSequenceValue = [@as("DDMMYYYY") #DDMMYYYY | @as("MMYYYYDD") #MMYYYYDD | @as("YYYYMM") #YYYYMM | @as("YYYYMMDDHH") #YYYYMMDDHH | @as("YYYYMMDD") #YYYYMMDD]
type datePartitionDelimiterValue = [@as("NONE") #NONE | @as("DASH") #DASH | @as("UNDERSCORE") #UNDERSCORE | @as("SLASH") #SLASH]
type dataFormatValue = [@as("parquet") #parquet | @as("csv") #csv]
type compressionTypeValue = [@as("gzip") #gzip | @as("none") #none]
type charLengthSemantics = [@as("byte") #byte | @as("char") #char | @as("default") #default]
type certificateWallet = NodeJs.Buffer.t;
type booleanOptional = bool;
type amazonawsBoolean = bool;
type authTypeValue = [@as("password") #password | @as("no") #no]
type authMechanismValue = [@as("scram_sha_1") #scram_sha_1 | @as("mongodb_cr") #mongodb_cr | @as("default") #default]
type vpcSecurityGroupMembership = {
@as("Status") status: amazonawsString,
@as("VpcSecurityGroupId") vpcSecurityGroupId: amazonawsString
}
type vpcSecurityGroupIdList = array<amazonawsString>
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type tableToReload = {
@as("TableName") tableName: option<amazonawsString>,
@as("SchemaName") schemaName: option<amazonawsString>
}
type tableStatistics = {
@as("ValidationStateDetails") validationStateDetails: amazonawsString,
@as("ValidationState") validationState: amazonawsString,
@as("ValidationSuspendedRecords") validationSuspendedRecords: amazonawsLong,
@as("ValidationFailedRecords") validationFailedRecords: amazonawsLong,
@as("ValidationPendingRecords") validationPendingRecords: amazonawsLong,
@as("TableState") tableState: amazonawsString,
@as("LastUpdateTime") lastUpdateTime: tStamp,
@as("FullLoadReloaded") fullLoadReloaded: booleanOptional,
@as("FullLoadEndTime") fullLoadEndTime: tStamp,
@as("FullLoadStartTime") fullLoadStartTime: tStamp,
@as("FullLoadErrorRows") fullLoadErrorRows: amazonawsLong,
@as("FullLoadCondtnlChkFailedRows") fullLoadCondtnlChkFailedRows: amazonawsLong,
@as("FullLoadRows") fullLoadRows: amazonawsLong,
@as("Ddls") ddls: amazonawsLong,
@as("Updates") updates: amazonawsLong,
@as("Deletes") deletes: amazonawsLong,
@as("Inserts") inserts: amazonawsLong,
@as("TableName") tableName: amazonawsString,
@as("SchemaName") schemaName: amazonawsString
}
type sybaseSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("Username") username: amazonawsString,
@as("ServerName") serverName: amazonawsString,
@as("Port") port: integerOptional,
@as("Password") password: secretString,
@as("DatabaseName") databaseName: amazonawsString
}
type supportedEndpointType = {
@as("EngineDisplayName") engineDisplayName: amazonawsString,
@as("ReplicationInstanceEngineMinimumVersion") replicationInstanceEngineMinimumVersion: amazonawsString,
@as("EndpointType") endpointType: replicationEndpointTypeValue,
@as("SupportsCDC") supportsCDC: amazonawsBoolean,
@as("EngineName") engineName: amazonawsString
}
type subnetIdentifierList = array<amazonawsString>
type sourceIdsList = array<amazonawsString>
type schemaList = array<amazonawsString>
type s3Settings = {
@as("CdcPath") cdcPath: amazonawsString,
@as("PreserveTransactions") preserveTransactions: booleanOptional,
@as("CsvNoSupValue") csvNoSupValue: amazonawsString,
@as("UseCsvNoSupValue") useCsvNoSupValue: booleanOptional,
@as("DatePartitionDelimiter") datePartitionDelimiter: datePartitionDelimiterValue,
@as("DatePartitionSequence") datePartitionSequence: datePartitionSequenceValue,
@as("DatePartitionEnabled") datePartitionEnabled: booleanOptional,
@as("CdcInsertsAndUpdates") cdcInsertsAndUpdates: booleanOptional,
@as("ParquetTimestampInMillisecond") parquetTimestampInMillisecond: booleanOptional,
@as("TimestampColumnName") timestampColumnName: amazonawsString,
@as("CdcInsertsOnly") cdcInsertsOnly: booleanOptional,
@as("IncludeOpForFullLoad") includeOpForFullLoad: booleanOptional,
@as("EnableStatistics") enableStatistics: booleanOptional,
@as("ParquetVersion") parquetVersion: parquetVersionValue,
@as("DataPageSize") dataPageSize: integerOptional,
@as("RowGroupLength") rowGroupLength: integerOptional,
@as("DictPageSizeLimit") dictPageSizeLimit: integerOptional,
@as("EncodingType") encodingType: encodingTypeValue,
@as("DataFormat") dataFormat: dataFormatValue,
@as("ServerSideEncryptionKmsKeyId") serverSideEncryptionKmsKeyId: amazonawsString,
@as("EncryptionMode") encryptionMode: encryptionModeValue,
@as("CompressionType") compressionType: compressionTypeValue,
@as("BucketName") bucketName: amazonawsString,
@as("BucketFolder") bucketFolder: amazonawsString,
@as("CsvDelimiter") csvDelimiter: amazonawsString,
@as("CsvRowDelimiter") csvRowDelimiter: amazonawsString,
@as("ExternalTableDefinition") externalTableDefinition: amazonawsString,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString
}
type replicationTaskStats = {
@as("FullLoadFinishDate") fullLoadFinishDate: tStamp,
@as("FullLoadStartDate") fullLoadStartDate: tStamp,
@as("StopDate") stopDate: tStamp,
@as("StartDate") startDate: tStamp,
@as("FreshStartDate") freshStartDate: tStamp,
@as("TablesErrored") tablesErrored: amazonawsInteger,
@as("TablesQueued") tablesQueued: amazonawsInteger,
@as("TablesLoading") tablesLoading: amazonawsInteger,
@as("TablesLoaded") tablesLoaded: amazonawsInteger,
@as("ElapsedTimeMillis") elapsedTimeMillis: amazonawsLong,
@as("FullLoadProgressPercent") fullLoadProgressPercent: amazonawsInteger
}
type replicationTaskIndividualAssessment = {
@as("ReplicationTaskIndividualAssessmentStartDate") replicationTaskIndividualAssessmentStartDate: tStamp,
@as("Status") status: amazonawsString,
@as("IndividualAssessmentName") individualAssessmentName: amazonawsString,
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: amazonawsString,
@as("ReplicationTaskIndividualAssessmentArn") replicationTaskIndividualAssessmentArn: amazonawsString
}
type replicationTaskAssessmentRunProgress = {
@as("IndividualAssessmentCompletedCount") individualAssessmentCompletedCount: amazonawsInteger,
@as("IndividualAssessmentCount") individualAssessmentCount: amazonawsInteger
}
type replicationTaskAssessmentResult = {
@as("S3ObjectUrl") s3ObjectUrl: amazonawsString,
@as("AssessmentResults") assessmentResults: amazonawsString,
@as("AssessmentResultsFile") assessmentResultsFile: amazonawsString,
@as("AssessmentStatus") assessmentStatus: amazonawsString,
@as("ReplicationTaskLastAssessmentDate") replicationTaskLastAssessmentDate: tStamp,
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: amazonawsString
}
type replicationPendingModifiedValues = {
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("AllocatedStorage") allocatedStorage: integerOptional,
@as("ReplicationInstanceClass") replicationInstanceClass: amazonawsString
}
type replicationInstanceTaskLog = {
@as("ReplicationInstanceTaskLogSize") replicationInstanceTaskLogSize: amazonawsLong,
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString,
@as("ReplicationTaskName") replicationTaskName: amazonawsString
}
type replicationInstancePublicIpAddressList = array<amazonawsString>
type replicationInstancePrivateIpAddressList = array<amazonawsString>
type refreshSchemasStatus = {
@as("LastFailureMessage") lastFailureMessage: amazonawsString,
@as("LastRefreshDate") lastRefreshDate: tStamp,
@as("Status") status: refreshSchemasStatusTypeValue,
@as("ReplicationInstanceArn") replicationInstanceArn: amazonawsString,
@as("EndpointArn") endpointArn: amazonawsString
}
type redshiftSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("WriteBufferSize") writeBufferSize: integerOptional,
@as("Username") username: amazonawsString,
@as("TruncateColumns") truncateColumns: booleanOptional,
@as("TrimBlanks") trimBlanks: booleanOptional,
@as("TimeFormat") timeFormat: amazonawsString,
@as("ServerSideEncryptionKmsKeyId") serverSideEncryptionKmsKeyId: amazonawsString,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString,
@as("ServerName") serverName: amazonawsString,
@as("ReplaceChars") replaceChars: amazonawsString,
@as("ReplaceInvalidChars") replaceInvalidChars: amazonawsString,
@as("RemoveQuotes") removeQuotes: booleanOptional,
@as("Port") port: integerOptional,
@as("Password") password: secretString,
@as("MaxFileSize") maxFileSize: integerOptional,
@as("LoadTimeout") loadTimeout: integerOptional,
@as("FileTransferUploadStreams") fileTransferUploadStreams: integerOptional,
@as("ExplicitIds") explicitIds: booleanOptional,
@as("EncryptionMode") encryptionMode: encryptionModeValue,
@as("EmptyAsNull") emptyAsNull: booleanOptional,
@as("DateFormat") dateFormat: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("ConnectionTimeout") connectionTimeout: integerOptional,
@as("CompUpdate") compUpdate: booleanOptional,
@as("CaseSensitiveNames") caseSensitiveNames: booleanOptional,
@as("BucketName") bucketName: amazonawsString,
@as("BucketFolder") bucketFolder: amazonawsString,
@as("AfterConnectScript") afterConnectScript: amazonawsString,
@as("AcceptAnyDate") acceptAnyDate: booleanOptional
}
type postgreSQLSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("SlotName") slotName: amazonawsString,
@as("Username") username: amazonawsString,
@as("ServerName") serverName: amazonawsString,
@as("Port") port: integerOptional,
@as("Password") password: secretString,
@as("FailTasksOnLobTruncation") failTasksOnLobTruncation: booleanOptional,
@as("ExecuteTimeout") executeTimeout: integerOptional,
@as("DdlArtifactsSchema") ddlArtifactsSchema: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("MaxFileSize") maxFileSize: integerOptional,
@as("CaptureDdls") captureDdls: booleanOptional,
@as("AfterConnectScript") afterConnectScript: amazonawsString
}
type pendingMaintenanceAction = {
@as("Description") description: amazonawsString,
@as("CurrentApplyDate") currentApplyDate: tStamp,
@as("OptInStatus") optInStatus: amazonawsString,
@as("ForcedApplyDate") forcedApplyDate: tStamp,
@as("AutoAppliedAfterDate") autoAppliedAfterDate: tStamp,
@as("Action") action: amazonawsString
}
type oracleSettings = {
@as("SecretsManagerOracleAsmSecretId") secretsManagerOracleAsmSecretId: amazonawsString,
@as("SecretsManagerOracleAsmAccessRoleArn") secretsManagerOracleAsmAccessRoleArn: amazonawsString,
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("Username") username: amazonawsString,
@as("SpatialDataOptionToGeoJsonFunctionName") spatialDataOptionToGeoJsonFunctionName: amazonawsString,
@as("ServerName") serverName: amazonawsString,
@as("SecurityDbEncryptionName") securityDbEncryptionName: amazonawsString,
@as("SecurityDbEncryption") securityDbEncryption: secretString,
@as("RetryInterval") retryInterval: integerOptional,
@as("ReadTableSpaceName") readTableSpaceName: booleanOptional,
@as("Port") port: integerOptional,
@as("Password") password: secretString,
@as("NumberDatatypeScale") numberDatatypeScale: integerOptional,
@as("FailTasksOnLobTruncation") failTasksOnLobTruncation: booleanOptional,
@as("DirectPathParallelLoad") directPathParallelLoad: booleanOptional,
@as("DatabaseName") databaseName: amazonawsString,
@as("CharLengthSemantics") charLengthSemantics: charLengthSemantics,
@as("AsmUser") asmUser: amazonawsString,
@as("AsmServer") asmServer: amazonawsString,
@as("AsmPassword") asmPassword: secretString,
@as("ArchivedLogsOnly") archivedLogsOnly: booleanOptional,
@as("DirectPathNoLog") directPathNoLog: booleanOptional,
@as("EnableHomogenousTablespace") enableHomogenousTablespace: booleanOptional,
@as("ReplacePathPrefix") replacePathPrefix: booleanOptional,
@as("UsePathPrefix") usePathPrefix: amazonawsString,
@as("OraclePathPrefix") oraclePathPrefix: amazonawsString,
@as("UseAlternateFolderForOnline") useAlternateFolderForOnline: booleanOptional,
@as("AccessAlternateDirectly") accessAlternateDirectly: booleanOptional,
@as("ReadAheadBlocks") readAheadBlocks: integerOptional,
@as("ParallelAsmReadThreads") parallelAsmReadThreads: integerOptional,
@as("AllowSelectNestedTables") allowSelectNestedTables: booleanOptional,
@as("AdditionalArchivedLogDestId") additionalArchivedLogDestId: integerOptional,
@as("ArchivedLogDestId") archivedLogDestId: integerOptional,
@as("AddSupplementalLogging") addSupplementalLogging: booleanOptional
}
type neptuneSettings = {
@as("IamAuthEnabled") iamAuthEnabled: booleanOptional,
@as("MaxRetryCount") maxRetryCount: integerOptional,
@as("MaxFileSize") maxFileSize: integerOptional,
@as("ErrorRetryDuration") errorRetryDuration: integerOptional,
@as("S3BucketFolder") s3BucketFolder: option<amazonawsString>,
@as("S3BucketName") s3BucketName: option<amazonawsString>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString
}
type mySQLSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("Username") username: amazonawsString,
@as("ServerTimezone") serverTimezone: amazonawsString,
@as("ServerName") serverName: amazonawsString,
@as("Port") port: integerOptional,
@as("Password") password: secretString,
@as("ParallelLoadThreads") parallelLoadThreads: integerOptional,
@as("MaxFileSize") maxFileSize: integerOptional,
@as("TargetDbType") targetDbType: targetDbType,
@as("EventsPollInterval") eventsPollInterval: integerOptional,
@as("DatabaseName") databaseName: amazonawsString,
@as("CleanSourceMetadataOnMismatch") cleanSourceMetadataOnMismatch: booleanOptional,
@as("AfterConnectScript") afterConnectScript: amazonawsString
}
type mongoDbSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("AuthSource") authSource: amazonawsString,
@as("DocsToInvestigate") docsToInvestigate: amazonawsString,
@as("ExtractDocId") extractDocId: amazonawsString,
@as("NestingLevel") nestingLevel: nestingLevelValue,
@as("AuthMechanism") authMechanism: authMechanismValue,
@as("AuthType") authType: authTypeValue,
@as("DatabaseName") databaseName: amazonawsString,
@as("Port") port: integerOptional,
@as("ServerName") serverName: amazonawsString,
@as("Password") password: secretString,
@as("Username") username: amazonawsString
}
type microsoftSQLServerSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("UseThirdPartyBackupDevice") useThirdPartyBackupDevice: booleanOptional,
@as("UseBcpFullLoad") useBcpFullLoad: booleanOptional,
@as("Username") username: amazonawsString,
@as("ServerName") serverName: amazonawsString,
@as("SafeguardPolicy") safeguardPolicy: safeguardPolicy,
@as("ReadBackupOnly") readBackupOnly: booleanOptional,
@as("QuerySingleAlwaysOnNode") querySingleAlwaysOnNode: booleanOptional,
@as("Password") password: secretString,
@as("ControlTablesFileGroup") controlTablesFileGroup: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("BcpPacketSize") bcpPacketSize: integerOptional,
@as("Port") port: integerOptional
}
type kinesisSettings = {
@as("IncludeNullAndEmpty") includeNullAndEmpty: booleanOptional,
@as("IncludeControlDetails") includeControlDetails: booleanOptional,
@as("IncludeTableAlterOperations") includeTableAlterOperations: booleanOptional,
@as("PartitionIncludeSchemaTable") partitionIncludeSchemaTable: booleanOptional,
@as("IncludePartitionValue") includePartitionValue: booleanOptional,
@as("IncludeTransactionDetails") includeTransactionDetails: booleanOptional,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString,
@as("MessageFormat") messageFormat: messageFormatValue,
@as("StreamArn") streamArn: amazonawsString
}
type keyList = array<amazonawsString>
type kafkaSettings = {
@as("SaslPassword") saslPassword: secretString,
@as("SaslUsername") saslUsername: amazonawsString,
@as("SslCaCertificateArn") sslCaCertificateArn: amazonawsString,
@as("SslClientKeyPassword") sslClientKeyPassword: secretString,
@as("SslClientKeyArn") sslClientKeyArn: amazonawsString,
@as("SslClientCertificateArn") sslClientCertificateArn: amazonawsString,
@as("SecurityProtocol") securityProtocol: kafkaSecurityProtocol,
@as("IncludeNullAndEmpty") includeNullAndEmpty: booleanOptional,
@as("MessageMaxBytes") messageMaxBytes: integerOptional,
@as("IncludeControlDetails") includeControlDetails: booleanOptional,
@as("IncludeTableAlterOperations") includeTableAlterOperations: booleanOptional,
@as("PartitionIncludeSchemaTable") partitionIncludeSchemaTable: booleanOptional,
@as("IncludePartitionValue") includePartitionValue: booleanOptional,
@as("IncludeTransactionDetails") includeTransactionDetails: booleanOptional,
@as("MessageFormat") messageFormat: messageFormatValue,
@as("Topic") topic: amazonawsString,
@as("Broker") broker: amazonawsString
}
type individualAssessmentNameList = array<amazonawsString>
type includeTestList = array<amazonawsString>
type iBMDb2Settings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("Username") username: amazonawsString,
@as("MaxKBytesPerRead") maxKBytesPerRead: integerOptional,
@as("CurrentLsn") currentLsn: amazonawsString,
@as("SetDataCaptureChanges") setDataCaptureChanges: booleanOptional,
@as("ServerName") serverName: amazonawsString,
@as("Port") port: integerOptional,
@as("Password") password: secretString,
@as("DatabaseName") databaseName: amazonawsString
}
type filterValueList = array<amazonawsString>
type excludeTestList = array<amazonawsString>
type eventCategoriesList = array<amazonawsString>
type endpointSettingEnumValues = array<amazonawsString>
type elasticsearchSettings = {
@as("ErrorRetryDuration") errorRetryDuration: integerOptional,
@as("FullLoadErrorPercentage") fullLoadErrorPercentage: integerOptional,
@as("EndpointUri") endpointUri: option<amazonawsString>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<amazonawsString>
}
type dynamoDbSettings = {
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<amazonawsString>
}
type docDbSettings = {
@as("SecretsManagerSecretId") secretsManagerSecretId: amazonawsString,
@as("SecretsManagerAccessRoleArn") secretsManagerAccessRoleArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("DocsToInvestigate") docsToInvestigate: integerOptional,
@as("ExtractDocId") extractDocId: booleanOptional,
@as("NestingLevel") nestingLevel: nestingLevelValue,
@as("DatabaseName") databaseName: amazonawsString,
@as("Port") port: integerOptional,
@as("ServerName") serverName: amazonawsString,
@as("Password") password: secretString,
@as("Username") username: amazonawsString
}
type dmsTransferSettings = {
@as("BucketName") bucketName: amazonawsString,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString
}
type connection = {
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: amazonawsString,
@as("EndpointIdentifier") endpointIdentifier: amazonawsString,
@as("LastFailureMessage") lastFailureMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("EndpointArn") endpointArn: amazonawsString,
@as("ReplicationInstanceArn") replicationInstanceArn: amazonawsString
}
type certificate = {
@as("KeyLength") keyLength: integerOptional,
@as("SigningAlgorithm") signingAlgorithm: amazonawsString,
@as("ValidToDate") validToDate: tStamp,
@as("ValidFromDate") validFromDate: tStamp,
@as("CertificateOwner") certificateOwner: amazonawsString,
@as("CertificateArn") certificateArn: amazonawsString,
@as("CertificateWallet") certificateWallet: certificateWallet,
@as("CertificatePem") certificatePem: amazonawsString,
@as("CertificateCreationDate") certificateCreationDate: tStamp,
@as("CertificateIdentifier") certificateIdentifier: amazonawsString
}
type availabilityZonesList = array<amazonawsString>
type availabilityZone = {
@as("Name") name: amazonawsString
}
type accountQuota = {
@as("Max") max: amazonawsLong,
@as("Used") used: amazonawsLong,
@as("AccountQuotaName") accountQuotaName: amazonawsString
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type tagList = array<tag>
type tableStatisticsList = array<tableStatistics>
type tableListToReload = array<tableToReload>
type supportedEndpointTypeList = array<supportedEndpointType>
type subnet = {
@as("SubnetStatus") subnetStatus: amazonawsString,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: availabilityZone,
@as("SubnetIdentifier") subnetIdentifier: amazonawsString
}
type replicationTaskIndividualAssessmentList = array<replicationTaskIndividualAssessment>
type replicationTaskAssessmentRun = {
@as("AssessmentRunName") assessmentRunName: amazonawsString,
@as("ResultKmsKeyArn") resultKmsKeyArn: amazonawsString,
@as("ResultEncryptionMode") resultEncryptionMode: amazonawsString,
@as("ResultLocationFolder") resultLocationFolder: amazonawsString,
@as("ResultLocationBucket") resultLocationBucket: amazonawsString,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString,
@as("LastFailureMessage") lastFailureMessage: amazonawsString,
@as("AssessmentProgress") assessmentProgress: replicationTaskAssessmentRunProgress,
@as("ReplicationTaskAssessmentRunCreationDate") replicationTaskAssessmentRunCreationDate: tStamp,
@as("Status") status: amazonawsString,
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString,
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: amazonawsString
}
type replicationTaskAssessmentResultList = array<replicationTaskAssessmentResult>
type replicationTask = {
@as("TargetReplicationInstanceArn") targetReplicationInstanceArn: amazonawsString,
@as("TaskData") taskData: amazonawsString,
@as("ReplicationTaskStats") replicationTaskStats: replicationTaskStats,
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString,
@as("RecoveryCheckpoint") recoveryCheckpoint: amazonawsString,
@as("CdcStopPosition") cdcStopPosition: amazonawsString,
@as("CdcStartPosition") cdcStartPosition: amazonawsString,
@as("ReplicationTaskStartDate") replicationTaskStartDate: tStamp,
@as("ReplicationTaskCreationDate") replicationTaskCreationDate: tStamp,
@as("StopReason") stopReason: amazonawsString,
@as("LastFailureMessage") lastFailureMessage: amazonawsString,
@as("Status") status: amazonawsString,
@as("ReplicationTaskSettings") replicationTaskSettings: amazonawsString,
@as("TableMappings") tableMappings: amazonawsString,
@as("MigrationType") migrationType: migrationTypeValue,
@as("ReplicationInstanceArn") replicationInstanceArn: amazonawsString,
@as("TargetEndpointArn") targetEndpointArn: amazonawsString,
@as("SourceEndpointArn") sourceEndpointArn: amazonawsString,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: amazonawsString
}
type replicationInstanceTaskLogsList = array<replicationInstanceTaskLog>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type orderableReplicationInstance = {
@as("ReleaseStatus") releaseStatus: releaseStatusValues,
@as("AvailabilityZones") availabilityZones: availabilityZonesList,
@as("IncludedAllocatedStorage") includedAllocatedStorage: amazonawsInteger,
@as("DefaultAllocatedStorage") defaultAllocatedStorage: amazonawsInteger,
@as("MaxAllocatedStorage") maxAllocatedStorage: amazonawsInteger,
@as("MinAllocatedStorage") minAllocatedStorage: amazonawsInteger,
@as("StorageType") storageType: amazonawsString,
@as("ReplicationInstanceClass") replicationInstanceClass: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString
}
type filter = {
@as("Values") values: option<filterValueList>,
@as("Name") name: option<amazonawsString>
}
type eventSubscription = {
@as("Enabled") enabled: amazonawsBoolean,
@as("EventCategoriesList") eventCategoriesList: eventCategoriesList,
@as("SourceIdsList") sourceIdsList: sourceIdsList,
@as("SourceType") sourceType: amazonawsString,
@as("SubscriptionCreationTime") subscriptionCreationTime: amazonawsString,
@as("Status") status: amazonawsString,
@as("SnsTopicArn") snsTopicArn: amazonawsString,
@as("CustSubscriptionId") custSubscriptionId: amazonawsString,
@as("CustomerAwsId") customerAwsId: amazonawsString
}
type eventCategoryGroup = {
@as("EventCategories") eventCategories: eventCategoriesList,
@as("SourceType") sourceType: amazonawsString
}
type event = {
@as("Date") date: tStamp,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("Message") message: amazonawsString,
@as("SourceType") sourceType: sourceType,
@as("SourceIdentifier") sourceIdentifier: amazonawsString
}
type endpointSetting = {
@as("IntValueMax") intValueMax: integerOptional,
@as("IntValueMin") intValueMin: integerOptional,
@as("Applicability") applicability: amazonawsString,
@as("Units") units: amazonawsString,
@as("Sensitive") sensitive: booleanOptional,
@as("EnumValues") enumValues: endpointSettingEnumValues,
@as("Type") type_: endpointSettingTypeValue,
@as("Name") name: amazonawsString
}
type endpoint = {
@as("DocDbSettings") docDbSettings: docDbSettings,
@as("IBMDb2Settings") iBMDb2Settings: iBMDb2Settings,
@as("MicrosoftSQLServerSettings") microsoftSQLServerSettings: microsoftSQLServerSettings,
@as("SybaseSettings") sybaseSettings: sybaseSettings,
@as("OracleSettings") oracleSettings: oracleSettings,
@as("MySQLSettings") mySQLSettings: mySQLSettings,
@as("PostgreSQLSettings") postgreSQLSettings: postgreSQLSettings,
@as("RedshiftSettings") redshiftSettings: redshiftSettings,
@as("NeptuneSettings") neptuneSettings: neptuneSettings,
@as("ElasticsearchSettings") elasticsearchSettings: elasticsearchSettings,
@as("KafkaSettings") kafkaSettings: kafkaSettings,
@as("KinesisSettings") kinesisSettings: kinesisSettings,
@as("MongoDbSettings") mongoDbSettings: mongoDbSettings,
@as("DmsTransferSettings") dmsTransferSettings: dmsTransferSettings,
@as("S3Settings") s3Settings: s3Settings,
@as("DynamoDbSettings") dynamoDbSettings: dynamoDbSettings,
@as("ExternalId") externalId: amazonawsString,
@as("ExternalTableDefinition") externalTableDefinition: amazonawsString,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString,
@as("SslMode") sslMode: dmsSslModeValue,
@as("CertificateArn") certificateArn: amazonawsString,
@as("EndpointArn") endpointArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Status") status: amazonawsString,
@as("ExtraConnectionAttributes") extraConnectionAttributes: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("Port") port: integerOptional,
@as("ServerName") serverName: amazonawsString,
@as("Username") username: amazonawsString,
@as("EngineDisplayName") engineDisplayName: amazonawsString,
@as("EngineName") engineName: amazonawsString,
@as("EndpointType") endpointType: replicationEndpointTypeValue,
@as("EndpointIdentifier") endpointIdentifier: amazonawsString
}
type connectionList = array<connection>
type certificateList = array<certificate>
type accountQuotaList = array<accountQuota>
type subnetList = array<subnet>
type resourcePendingMaintenanceActions = {
@as("PendingMaintenanceActionDetails") pendingMaintenanceActionDetails: pendingMaintenanceActionDetails,
@as("ResourceIdentifier") resourceIdentifier: amazonawsString
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
@as("Subnets") subnets: subnetList,
@as("SubnetGroupStatus") subnetGroupStatus: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("ReplicationSubnetGroupDescription") replicationSubnetGroupDescription: amazonawsString,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: amazonawsString
}
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type replicationSubnetGroups = array<replicationSubnetGroup>
type replicationInstance = {
@as("DnsNameServers") dnsNameServers: amazonawsString,
@as("FreeUntil") freeUntil: tStamp,
@as("SecondaryAvailabilityZone") secondaryAvailabilityZone: amazonawsString,
@as("PubliclyAccessible") publiclyAccessible: amazonawsBoolean,
@as("ReplicationInstancePrivateIpAddresses") replicationInstancePrivateIpAddresses: replicationInstancePrivateIpAddressList,
@as("ReplicationInstancePublicIpAddresses") replicationInstancePublicIpAddresses: replicationInstancePublicIpAddressList,
@as("ReplicationInstancePrivateIpAddress") replicationInstancePrivateIpAddress: amazonawsString,
@as("ReplicationInstancePublicIpAddress") replicationInstancePublicIpAddress: amazonawsString,
@as("ReplicationInstanceArn") replicationInstanceArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: amazonawsBoolean,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: amazonawsBoolean,
@as("PendingModifiedValues") pendingModifiedValues: replicationPendingModifiedValues,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("ReplicationSubnetGroup") replicationSubnetGroup: replicationSubnetGroup,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("VpcSecurityGroups") vpcSecurityGroups: vpcSecurityGroupMembershipList,
@as("InstanceCreateTime") instanceCreateTime: tStamp,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("ReplicationInstanceStatus") replicationInstanceStatus: amazonawsString,
@as("ReplicationInstanceClass") replicationInstanceClass: amazonawsString,
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: amazonawsString
}
type replicationInstanceList = array<replicationInstance>
type clientType;
@module("@aws-sdk/client-dms") @new external createClient: unit => clientType = "DMSClient";
module DeleteReplicationSubnetGroup = {
  type t;
  type request = {
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteReplicationSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestConnection = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<amazonawsString>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "TestConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<keyList>,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RefreshSchemas = {
  type t;
  type request = {
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>,
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  type response = {
@as("RefreshSchemasStatus") refreshSchemasStatus: refreshSchemasStatus
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "RefreshSchemasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSchemas = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  type response = {
@as("Schemas") schemas: schemaList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeSchemasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRefreshSchemasStatus = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  type response = {
@as("RefreshSchemasStatus") refreshSchemasStatus: refreshSchemasStatus
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeRefreshSchemasStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeApplicableIndividualAssessments = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("MigrationType") migrationType: migrationTypeValue,
@as("TargetEngineName") targetEngineName: amazonawsString,
@as("SourceEngineName") sourceEngineName: amazonawsString,
@as("ReplicationInstanceArn") replicationInstanceArn: amazonawsString,
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("IndividualAssessmentNames") individualAssessmentNames: individualAssessmentNameList
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeApplicableIndividualAssessmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>,
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCertificate = {
  type t;
  type request = {
@as("CertificateArn") certificateArn: option<amazonawsString>
}
  type response = {
@as("Certificate") certificate: certificate
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopReplicationTask = {
  type t;
  type request = {
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTask") replicationTask: replicationTask
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "StopReplicationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartReplicationTaskAssessmentRun = {
  type t;
  type request = {
@as("Exclude") exclude: excludeTestList,
@as("IncludeOnly") includeOnly: includeTestList,
@as("AssessmentRunName") assessmentRunName: option<amazonawsString>,
@as("ResultKmsKeyArn") resultKmsKeyArn: amazonawsString,
@as("ResultEncryptionMode") resultEncryptionMode: amazonawsString,
@as("ResultLocationFolder") resultLocationFolder: amazonawsString,
@as("ResultLocationBucket") resultLocationBucket: option<amazonawsString>,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: option<amazonawsString>,
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTaskAssessmentRun") replicationTaskAssessmentRun: replicationTaskAssessmentRun
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "StartReplicationTaskAssessmentRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartReplicationTaskAssessment = {
  type t;
  type request = {
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTask") replicationTask: replicationTask
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "StartReplicationTaskAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartReplicationTask = {
  type t;
  type request = {
@as("CdcStopPosition") cdcStopPosition: amazonawsString,
@as("CdcStartPosition") cdcStartPosition: amazonawsString,
@as("CdcStartTime") cdcStartTime: tStamp,
@as("StartReplicationTaskType") startReplicationTaskType: option<startReplicationTaskTypeValue>,
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTask") replicationTask: replicationTask
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "StartReplicationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReloadTables = {
  type t;
  type request = {
@as("ReloadOption") reloadOption: reloadOptionValue,
@as("TablesToReload") tablesToReload: option<tableListToReload>,
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ReloadTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MoveReplicationTask = {
  type t;
  type request = {
@as("TargetReplicationInstanceArn") targetReplicationInstanceArn: option<amazonawsString>,
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTask") replicationTask: replicationTask
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "MoveReplicationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationTask = {
  type t;
  type request = {
@as("TaskData") taskData: amazonawsString,
@as("CdcStopPosition") cdcStopPosition: amazonawsString,
@as("CdcStartPosition") cdcStartPosition: amazonawsString,
@as("CdcStartTime") cdcStartTime: tStamp,
@as("ReplicationTaskSettings") replicationTaskSettings: amazonawsString,
@as("TableMappings") tableMappings: amazonawsString,
@as("MigrationType") migrationType: migrationTypeValue,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: amazonawsString,
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTask") replicationTask: replicationTask
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ModifyReplicationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyEventSubscription = {
  type t;
  type request = {
@as("Enabled") enabled: booleanOptional,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("SourceType") sourceType: amazonawsString,
@as("SnsTopicArn") snsTopicArn: amazonawsString,
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  type response = {
@as("EventSubscription") eventSubscription: eventSubscription
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ModifyEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyEndpoint = {
  type t;
  type request = {
@as("DocDbSettings") docDbSettings: docDbSettings,
@as("IBMDb2Settings") iBMDb2Settings: iBMDb2Settings,
@as("MicrosoftSQLServerSettings") microsoftSQLServerSettings: microsoftSQLServerSettings,
@as("SybaseSettings") sybaseSettings: sybaseSettings,
@as("OracleSettings") oracleSettings: oracleSettings,
@as("MySQLSettings") mySQLSettings: mySQLSettings,
@as("PostgreSQLSettings") postgreSQLSettings: postgreSQLSettings,
@as("RedshiftSettings") redshiftSettings: redshiftSettings,
@as("NeptuneSettings") neptuneSettings: neptuneSettings,
@as("ElasticsearchSettings") elasticsearchSettings: elasticsearchSettings,
@as("KafkaSettings") kafkaSettings: kafkaSettings,
@as("KinesisSettings") kinesisSettings: kinesisSettings,
@as("MongoDbSettings") mongoDbSettings: mongoDbSettings,
@as("DmsTransferSettings") dmsTransferSettings: dmsTransferSettings,
@as("S3Settings") s3Settings: s3Settings,
@as("DynamoDbSettings") dynamoDbSettings: dynamoDbSettings,
@as("ExternalTableDefinition") externalTableDefinition: amazonawsString,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString,
@as("SslMode") sslMode: dmsSslModeValue,
@as("CertificateArn") certificateArn: amazonawsString,
@as("ExtraConnectionAttributes") extraConnectionAttributes: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("Port") port: integerOptional,
@as("ServerName") serverName: amazonawsString,
@as("Password") password: secretString,
@as("Username") username: amazonawsString,
@as("EngineName") engineName: amazonawsString,
@as("EndpointType") endpointType: replicationEndpointTypeValue,
@as("EndpointIdentifier") endpointIdentifier: amazonawsString,
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  type response = {
@as("Endpoint") endpoint: endpoint
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ModifyEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportCertificate = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("CertificateWallet") certificateWallet: certificateWallet,
@as("CertificatePem") certificatePem: secretString,
@as("CertificateIdentifier") certificateIdentifier: option<amazonawsString>
}
  type response = {
@as("Certificate") certificate: certificate
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ImportCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTaskAssessmentResults = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString
}
  type response = {
@as("ReplicationTaskAssessmentResults") replicationTaskAssessmentResults: replicationTaskAssessmentResultList,
@as("BucketName") bucketName: amazonawsString,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplicationTaskAssessmentResultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationInstanceTaskLogs = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("ReplicationInstanceTaskLogs") replicationInstanceTaskLogs: replicationInstanceTaskLogsList,
@as("ReplicationInstanceArn") replicationInstanceArn: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplicationInstanceTaskLogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  type request = unit
  type response = {
@as("UniqueAccountIdentifier") uniqueAccountIdentifier: amazonawsString,
@as("AccountQuotas") accountQuotas: accountQuotaList
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationTaskAssessmentRun = {
  type t;
  type request = {
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTaskAssessmentRun") replicationTaskAssessmentRun: replicationTaskAssessmentRun
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteReplicationTaskAssessmentRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationTask = {
  type t;
  type request = {
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTask") replicationTask: replicationTask
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteReplicationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEventSubscription = {
  type t;
  type request = {
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  type response = {
@as("EventSubscription") eventSubscription: eventSubscription
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteEndpoint = {
  type t;
  type request = {
@as("EndpointArn") endpointArn: option<amazonawsString>
}
  type response = {
@as("Endpoint") endpoint: endpoint
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationTask = {
  type t;
  type request = {
@as("ResourceIdentifier") resourceIdentifier: amazonawsString,
@as("TaskData") taskData: amazonawsString,
@as("Tags") tags: tagList,
@as("CdcStopPosition") cdcStopPosition: amazonawsString,
@as("CdcStartPosition") cdcStartPosition: amazonawsString,
@as("CdcStartTime") cdcStartTime: tStamp,
@as("ReplicationTaskSettings") replicationTaskSettings: amazonawsString,
@as("TableMappings") tableMappings: option<amazonawsString>,
@as("MigrationType") migrationType: option<migrationTypeValue>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>,
@as("TargetEndpointArn") targetEndpointArn: option<amazonawsString>,
@as("SourceEndpointArn") sourceEndpointArn: option<amazonawsString>,
@as("ReplicationTaskIdentifier") replicationTaskIdentifier: option<amazonawsString>
}
  type response = {
@as("ReplicationTask") replicationTask: replicationTask
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "CreateReplicationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEventSubscription = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Enabled") enabled: booleanOptional,
@as("SourceIds") sourceIds: sourceIdsList,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("SourceType") sourceType: amazonawsString,
@as("SnsTopicArn") snsTopicArn: option<amazonawsString>,
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  type response = {
@as("EventSubscription") eventSubscription: eventSubscription
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "CreateEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateEndpoint = {
  type t;
  type request = {
@as("DocDbSettings") docDbSettings: docDbSettings,
@as("ResourceIdentifier") resourceIdentifier: amazonawsString,
@as("IBMDb2Settings") iBMDb2Settings: iBMDb2Settings,
@as("MicrosoftSQLServerSettings") microsoftSQLServerSettings: microsoftSQLServerSettings,
@as("SybaseSettings") sybaseSettings: sybaseSettings,
@as("OracleSettings") oracleSettings: oracleSettings,
@as("MySQLSettings") mySQLSettings: mySQLSettings,
@as("PostgreSQLSettings") postgreSQLSettings: postgreSQLSettings,
@as("RedshiftSettings") redshiftSettings: redshiftSettings,
@as("NeptuneSettings") neptuneSettings: neptuneSettings,
@as("ElasticsearchSettings") elasticsearchSettings: elasticsearchSettings,
@as("KafkaSettings") kafkaSettings: kafkaSettings,
@as("KinesisSettings") kinesisSettings: kinesisSettings,
@as("MongoDbSettings") mongoDbSettings: mongoDbSettings,
@as("DmsTransferSettings") dmsTransferSettings: dmsTransferSettings,
@as("S3Settings") s3Settings: s3Settings,
@as("DynamoDbSettings") dynamoDbSettings: dynamoDbSettings,
@as("ExternalTableDefinition") externalTableDefinition: amazonawsString,
@as("ServiceAccessRoleArn") serviceAccessRoleArn: amazonawsString,
@as("SslMode") sslMode: dmsSslModeValue,
@as("CertificateArn") certificateArn: amazonawsString,
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("ExtraConnectionAttributes") extraConnectionAttributes: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("Port") port: integerOptional,
@as("ServerName") serverName: amazonawsString,
@as("Password") password: secretString,
@as("Username") username: amazonawsString,
@as("EngineName") engineName: option<amazonawsString>,
@as("EndpointType") endpointType: option<replicationEndpointTypeValue>,
@as("EndpointIdentifier") endpointIdentifier: option<amazonawsString>
}
  type response = {
@as("Endpoint") endpoint: endpoint
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "CreateEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelReplicationTaskAssessmentRun = {
  type t;
  type request = {
@as("ReplicationTaskAssessmentRunArn") replicationTaskAssessmentRunArn: option<amazonawsString>
}
  type response = {
@as("ReplicationTaskAssessmentRun") replicationTaskAssessmentRun: replicationTaskAssessmentRun
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "CancelReplicationTaskAssessmentRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "AddTagsToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTableStatistics = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("ReplicationTaskArn") replicationTaskArn: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("TableStatistics") tableStatistics: tableStatisticsList,
@as("ReplicationTaskArn") replicationTaskArn: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeTableStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTasks = {
  type t;
  type request = {
@as("WithoutSettings") withoutSettings: booleanOptional,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("ReplicationTasks") replicationTasks: replicationTaskList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplicationTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTaskIndividualAssessments = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("ReplicationTaskIndividualAssessments") replicationTaskIndividualAssessments: replicationTaskIndividualAssessmentList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplicationTaskIndividualAssessmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationTaskAssessmentRuns = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("ReplicationTaskAssessmentRuns") replicationTaskAssessmentRuns: replicationTaskAssessmentRunList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplicationTaskAssessmentRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrderableReplicationInstances = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("OrderableReplicationInstances") orderableReplicationInstances: orderableReplicationInstanceList
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeOrderableReplicationInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("Duration") duration: integerOptional,
@as("EndTime") endTime: tStamp,
@as("StartTime") startTime: tStamp,
@as("SourceType") sourceType: sourceType,
@as("SourceIdentifier") sourceIdentifier: amazonawsString
}
  type response = {
@as("Events") events: eventList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventSubscriptions = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("SubscriptionName") subscriptionName: amazonawsString
}
  type response = {
@as("EventSubscriptionsList") eventSubscriptionsList: eventSubscriptionsList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventSubscriptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventCategories = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("SourceType") sourceType: amazonawsString
}
  type response = {
@as("EventCategoryGroupList") eventCategoryGroupList: eventCategoryGroupList
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventCategoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpoints = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("Endpoints") endpoints: endpointList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpointTypes = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("SupportedEndpointTypes") supportedEndpointTypes: supportedEndpointTypeList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeEndpointTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpointSettings = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("EngineName") engineName: option<amazonawsString>
}
  type response = {
@as("EndpointSettings") endpointSettings: endpointSettingsList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeEndpointSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnections = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("Connections") connections: connectionList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificates = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("Certificates") certificates: certificateList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApplyPendingMaintenanceAction = {
  type t;
  type request = {
@as("OptInType") optInType: option<amazonawsString>,
@as("ApplyAction") applyAction: option<amazonawsString>,
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>
}
  type response = {
@as("ResourcePendingMaintenanceActions") resourcePendingMaintenanceActions: resourcePendingMaintenanceActions
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ApplyPendingMaintenanceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationSubnetGroup = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("ReplicationSubnetGroupDescription") replicationSubnetGroupDescription: amazonawsString,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: option<amazonawsString>
}
  type response = {
@as("ReplicationSubnetGroup") replicationSubnetGroup: replicationSubnetGroup
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ModifyReplicationSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePendingMaintenanceActions = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: integerOptional,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("ReplicationInstanceArn") replicationInstanceArn: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("PendingMaintenanceActions") pendingMaintenanceActions: pendingMaintenanceActions
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribePendingMaintenanceActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationSubnetGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("ReplicationSubnetGroupDescription") replicationSubnetGroupDescription: option<amazonawsString>,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: option<amazonawsString>
}
  type response = {
@as("ReplicationSubnetGroup") replicationSubnetGroup: replicationSubnetGroup
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "CreateReplicationSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootReplicationInstance = {
  type t;
  type request = {
@as("ForceFailover") forceFailover: booleanOptional,
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>
}
  type response = {
@as("ReplicationInstance") replicationInstance: replicationInstance
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "RebootReplicationInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyReplicationInstance = {
  type t;
  type request = {
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: amazonawsBoolean,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("ReplicationInstanceClass") replicationInstanceClass: amazonawsString,
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("AllocatedStorage") allocatedStorage: integerOptional,
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>
}
  type response = {
@as("ReplicationInstance") replicationInstance: replicationInstance
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "ModifyReplicationInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationSubnetGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("ReplicationSubnetGroups") replicationSubnetGroups: replicationSubnetGroups,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplicationSubnetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteReplicationInstance = {
  type t;
  type request = {
@as("ReplicationInstanceArn") replicationInstanceArn: option<amazonawsString>
}
  type response = {
@as("ReplicationInstance") replicationInstance: replicationInstance
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DeleteReplicationInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateReplicationInstance = {
  type t;
  type request = {
@as("ResourceIdentifier") resourceIdentifier: amazonawsString,
@as("DnsNameServers") dnsNameServers: amazonawsString,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Tags") tags: tagList,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("ReplicationSubnetGroupIdentifier") replicationSubnetGroupIdentifier: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("ReplicationInstanceClass") replicationInstanceClass: option<amazonawsString>,
@as("AllocatedStorage") allocatedStorage: integerOptional,
@as("ReplicationInstanceIdentifier") replicationInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("ReplicationInstance") replicationInstance: replicationInstance
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "CreateReplicationInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReplicationInstances = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList
}
  type response = {
@as("ReplicationInstances") replicationInstances: replicationInstanceList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-dms") @new external new_: (Js.Promise.t<request>) => t = "DescribeReplicationInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
