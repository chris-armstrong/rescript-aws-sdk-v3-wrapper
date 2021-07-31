type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type timestamp_ = Js.Date.t;
type long = float
type volumeType = [@as("io1") #Io1 | @as("gp2") #Gp2 | @as("standard") #Standard]
type username = string
type userPoolId = string
type upgradeStep = [@as("UPGRADE") #UPGRADE | @as("SNAPSHOT") #SNAPSHOT | @as("PRE_UPGRADE_CHECK") #PREUPGRADECHECK]
type upgradeStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED_WITH_ISSUES") #SUCCEEDEDWITHISSUES | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #INPROGRESS]
type upgradeName = string
type updateTimestamp = Js.Date.t;
type uintValue = int
type timeUnit = [@as("HOURS") #HOURS]
type tagValue = string
type tagKey = string
type tlssecurityPolicy = [@as("Policy-Min-TLS-1-2-2019-07") #PolicyMinTLS12201907 | @as("Policy-Min-TLS-1-0-2019-07") #PolicyMinTLS10201907]
type string_ = string
type storageTypeName = string
type storageSubTypeName = string
type startTimestamp = Js.Date.t;
type startAt = Js.Date.t;
type serviceUrl = string
type scheduledAutoTuneSeverityType = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type scheduledAutoTuneDescription = string
type scheduledAutoTuneActionType = [@as("JVM_YOUNG_GEN_TUNING") #JVMYOUNGGENTUNING | @as("JVM_HEAP_SIZE_TUNING") #JVMHEAPSIZETUNING]
type samlmetadata = string
type samlentityId = string
type s3Key = string
type s3BucketName = string
type rollbackOnDisable = [@as("DEFAULT_ROLLBACK") #DEFAULTROLLBACK | @as("NO_ROLLBACK") #NOROLLBACK]
type roleArn = string
type reservedElasticsearchInstancePaymentOption = [@as("NO_UPFRONT") #NOUPFRONT | @as("PARTIAL_UPFRONT") #PARTIALUPFRONT | @as("ALL_UPFRONT") #ALLUPFRONT]
type reservationToken = string
type region = string
type referencePath = string
type policyDocument = string
type password = string
type packageVersion = string
type packageType = [@as("TXT-DICTIONARY") #TXTDICTIONARY]
type packageStatus = [@as("DELETE_FAILED") #DELETEFAILED | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("VALIDATION_FAILED") #VALIDATIONFAILED | @as("VALIDATING") #VALIDATING | @as("COPY_FAILED") #COPYFAILED | @as("COPYING") #COPYING]
type packageName = string
type packageID = string
type packageDescription = string
type ownerId = string
type outboundCrossClusterSearchConnectionStatusCode = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("REJECTED") #REJECTED | @as("ACTIVE") #ACTIVE | @as("PROVISIONING") #PROVISIONING | @as("VALIDATION_FAILED") #VALIDATIONFAILED | @as("VALIDATING") #VALIDATING | @as("PENDING_ACCEPTANCE") #PENDINGACCEPTANCE]
type optionState = [@as("Active") #Active | @as("Processing") #Processing | @as("RequiresIndexDocuments") #RequiresIndexDocuments]
type nonEmptyString = string
type nextToken = string
type minimumInstanceCount = int
type maximumInstanceCount = int
type maxResults = int
type logType = [@as("AUDIT_LOGS") #AUDITLOGS | @as("ES_APPLICATION_LOGS") #ESAPPLICATIONLOGS | @as("SEARCH_SLOW_LOGS") #SEARCHSLOWLOGS | @as("INDEX_SLOW_LOGS") #INDEXSLOWLOGS]
type limitValue = string
type limitName = string
type lastUpdated = Js.Date.t;
type kmsKeyId = string
type issue = string
type integerClass = int
type integer_ = int
type instanceRole = string
type instanceCount = int
type inboundCrossClusterSearchConnectionStatusCode = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("REJECTED") #REJECTED | @as("REJECTING") #REJECTING | @as("APPROVED") #APPROVED | @as("PENDING_ACCEPTANCE") #PENDINGACCEPTANCE]
type identityPoolId = string
type guid = string
type errorType = string
type errorMessage = string
type elasticsearchVersionString = string
type eswarmPartitionInstanceType = [@as("ultrawarm1.large.elasticsearch") #Ultrawarm1LargeElasticsearch | @as("ultrawarm1.medium.elasticsearch") #Ultrawarm1MediumElasticsearch]
type espartitionInstanceType = [@as("i3.16xlarge.elasticsearch") #I316xlargeElasticsearch | @as("i3.8xlarge.elasticsearch") #I38xlargeElasticsearch | @as("i3.4xlarge.elasticsearch") #I34xlargeElasticsearch | @as("i3.2xlarge.elasticsearch") #I32xlargeElasticsearch | @as("i3.xlarge.elasticsearch") #I3XlargeElasticsearch | @as("i3.large.elasticsearch") #I3LargeElasticsearch | @as("r4.16xlarge.elasticsearch") #R416xlargeElasticsearch | @as("r4.8xlarge.elasticsearch") #R48xlargeElasticsearch | @as("r4.4xlarge.elasticsearch") #R44xlargeElasticsearch | @as("r4.2xlarge.elasticsearch") #R42xlargeElasticsearch | @as("r4.xlarge.elasticsearch") #R4XlargeElasticsearch | @as("r4.large.elasticsearch") #R4LargeElasticsearch | @as("c4.8xlarge.elasticsearch") #C48xlargeElasticsearch | @as("c4.4xlarge.elasticsearch") #C44xlargeElasticsearch | @as("c4.2xlarge.elasticsearch") #C42xlargeElasticsearch | @as("c4.xlarge.elasticsearch") #C4XlargeElasticsearch | @as("c4.large.elasticsearch") #C4LargeElasticsearch | @as("d2.8xlarge.elasticsearch") #D28xlargeElasticsearch | @as("d2.4xlarge.elasticsearch") #D24xlargeElasticsearch | @as("d2.2xlarge.elasticsearch") #D22xlargeElasticsearch | @as("d2.xlarge.elasticsearch") #D2XlargeElasticsearch | @as("i2.2xlarge.elasticsearch") #I22xlargeElasticsearch | @as("i2.xlarge.elasticsearch") #I2XlargeElasticsearch | @as("r3.8xlarge.elasticsearch") #R38xlargeElasticsearch | @as("r3.4xlarge.elasticsearch") #R34xlargeElasticsearch | @as("r3.2xlarge.elasticsearch") #R32xlargeElasticsearch | @as("r3.xlarge.elasticsearch") #R3XlargeElasticsearch | @as("r3.large.elasticsearch") #R3LargeElasticsearch | @as("t2.medium.elasticsearch") #T2MediumElasticsearch | @as("t2.small.elasticsearch") #T2SmallElasticsearch | @as("t2.micro.elasticsearch") #T2MicroElasticsearch | @as("ultrawarm1.large.elasticsearch") #Ultrawarm1LargeElasticsearch | @as("ultrawarm1.medium.elasticsearch") #Ultrawarm1MediumElasticsearch | @as("c5.18xlarge.elasticsearch") #C518xlargeElasticsearch | @as("c5.9xlarge.elasticsearch") #C59xlargeElasticsearch | @as("c5.4xlarge.elasticsearch") #C54xlargeElasticsearch | @as("c5.2xlarge.elasticsearch") #C52xlargeElasticsearch | @as("c5.xlarge.elasticsearch") #C5XlargeElasticsearch | @as("c5.large.elasticsearch") #C5LargeElasticsearch | @as("r5.12xlarge.elasticsearch") #R512xlargeElasticsearch | @as("r5.4xlarge.elasticsearch") #R54xlargeElasticsearch | @as("r5.2xlarge.elasticsearch") #R52xlargeElasticsearch | @as("r5.xlarge.elasticsearch") #R5XlargeElasticsearch | @as("r5.large.elasticsearch") #R5LargeElasticsearch | @as("m5.12xlarge.elasticsearch") #M512xlargeElasticsearch | @as("m5.4xlarge.elasticsearch") #M54xlargeElasticsearch | @as("m5.2xlarge.elasticsearch") #M52xlargeElasticsearch | @as("m5.xlarge.elasticsearch") #M5XlargeElasticsearch | @as("m5.large.elasticsearch") #M5LargeElasticsearch | @as("m4.10xlarge.elasticsearch") #M410xlargeElasticsearch | @as("m4.4xlarge.elasticsearch") #M44xlargeElasticsearch | @as("m4.2xlarge.elasticsearch") #M42xlargeElasticsearch | @as("m4.xlarge.elasticsearch") #M4XlargeElasticsearch | @as("m4.large.elasticsearch") #M4LargeElasticsearch | @as("m3.2xlarge.elasticsearch") #M32xlargeElasticsearch | @as("m3.xlarge.elasticsearch") #M3XlargeElasticsearch | @as("m3.large.elasticsearch") #M3LargeElasticsearch | @as("m3.medium.elasticsearch") #M3MediumElasticsearch]
type durationValue = float
type double = float
type domainPackageStatus = [@as("DISSOCIATION_FAILED") #DISSOCIATIONFAILED | @as("DISSOCIATING") #DISSOCIATING | @as("ACTIVE") #ACTIVE | @as("ASSOCIATION_FAILED") #ASSOCIATIONFAILED | @as("ASSOCIATING") #ASSOCIATING]
type domainNameFqdn = string
type domainName = string
type domainId = string
type describePackagesFilterValue = string
type describePackagesFilterName = [@as("PackageStatus") #PackageStatus | @as("PackageName") #PackageName | @as("PackageID") #PackageID]
type deploymentStatus = [@as("ELIGIBLE") #ELIGIBLE | @as("NOT_ELIGIBLE") #NOTELIGIBLE | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #INPROGRESS | @as("PENDING_UPDATE") #PENDINGUPDATE]
type deploymentCloseDateTimeStamp = Js.Date.t;
type crossClusterSearchConnectionStatusMessage = string
type crossClusterSearchConnectionId = string
type createdAt = Js.Date.t;
type connectionAlias = string
type commitMessage = string
type cloudWatchLogsLogGroupArn = string
type boolean_ = bool
type backendRole = string
type autoTuneType = [@as("SCHEDULED_ACTION") #SCHEDULEDACTION]
type autoTuneState = [@as("ERROR") #ERROR | @as("DISABLED_AND_ROLLBACK_ERROR") #DISABLEDANDROLLBACKERROR | @as("DISABLED_AND_ROLLBACK_COMPLETE") #DISABLEDANDROLLBACKCOMPLETE | @as("DISABLED_AND_ROLLBACK_IN_PROGRESS") #DISABLEDANDROLLBACKINPROGRESS | @as("DISABLED_AND_ROLLBACK_SCHEDULED") #DISABLEDANDROLLBACKSCHEDULED | @as("DISABLE_IN_PROGRESS") #DISABLEINPROGRESS | @as("ENABLE_IN_PROGRESS") #ENABLEINPROGRESS | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type autoTuneDesiredState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type autoTuneDate = Js.Date.t;
type arn = string
type zoneAwarenessConfig = {
@as("AvailabilityZoneCount") availabilityZoneCount: option<integerClass>
}
type valueStringList = array<nonEmptyString>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type stringList = array<string_>
type snapshotOptions = {
@as("AutomatedSnapshotStartHour") automatedSnapshotStartHour: option<integerClass>
}
type serviceSoftwareOptions = {
@as("OptionalDeployment") optionalDeployment: option<boolean_>,
@as("AutomatedUpdateDate") automatedUpdateDate: option<deploymentCloseDateTimeStamp>,
@as("Description") description: option<string_>,
@as("UpdateStatus") updateStatus: option<deploymentStatus>,
@as("Cancellable") cancellable: option<boolean_>,
@as("UpdateAvailable") updateAvailable: option<boolean_>,
@as("NewVersion") newVersion: option<string_>,
@as("CurrentVersion") currentVersion: option<string_>
}
type scheduledAutoTuneDetails = {
@as("Severity") severity: option<scheduledAutoTuneSeverityType>,
@as("Action") action: option<scheduledAutoTuneDescription>,
@as("ActionType") actionType: option<scheduledAutoTuneActionType>,
@as("Date") date: option<autoTuneDate>
}
type samlidp = {
@as("EntityId") entityId: samlentityId,
@as("MetadataContent") metadataContent: samlmetadata
}
type recurringCharge = {
@as("RecurringChargeFrequency") recurringChargeFrequency: option<string_>,
@as("RecurringChargeAmount") recurringChargeAmount: option<double>
}
type packageVersionHistory = {
@as("CreatedAt") createdAt: option<createdAt>,
@as("CommitMessage") commitMessage: option<commitMessage>,
@as("PackageVersion") packageVersion: option<packageVersion>
}
type packageSource = {
@as("S3Key") s3Key: option<s3Key>,
@as("S3BucketName") s3BucketName: option<s3BucketName>
}
type outboundCrossClusterSearchConnectionStatus = {
@as("Message") message: option<crossClusterSearchConnectionStatusMessage>,
@as("StatusCode") statusCode: option<outboundCrossClusterSearchConnectionStatusCode>
}
type optionStatus = {
@as("PendingDeletion") pendingDeletion: option<boolean_>,
@as("State") state: optionState,
@as("UpdateVersion") updateVersion: option<uintValue>,
@as("UpdateDate") updateDate: updateTimestamp,
@as("CreationDate") creationDate: updateTimestamp
}
type nodeToNodeEncryptionOptions = {
@as("Enabled") enabled: option<boolean_>
}
type masterUserOptions = {
@as("MasterUserPassword") masterUserPassword: option<password>,
@as("MasterUserName") masterUserName: option<username>,
@as("MasterUserARN") masterUserARN: option<arn>
}
type logPublishingOption = {
@as("Enabled") enabled: option<boolean_>,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<cloudWatchLogsLogGroupArn>
}
type limitValueList = array<limitValue>
type issues = array<issue>
type instanceCountLimits = {
@as("MaximumInstanceCount") maximumInstanceCount: option<maximumInstanceCount>,
@as("MinimumInstanceCount") minimumInstanceCount: option<minimumInstanceCount>
}
type inboundCrossClusterSearchConnectionStatus = {
@as("Message") message: option<crossClusterSearchConnectionStatusMessage>,
@as("StatusCode") statusCode: option<inboundCrossClusterSearchConnectionStatusCode>
}
type errorDetails = {
@as("ErrorMessage") errorMessage: option<errorMessage>,
@as("ErrorType") errorType: option<errorType>
}
type endpointsMap = Js.Dict.t< serviceUrl>
type encryptionAtRestOptions = {
@as("KmsKeyId") kmsKeyId: option<kmsKeyId>,
@as("Enabled") enabled: option<boolean_>
}
type elasticsearchVersionList = array<elasticsearchVersionString>
type elasticsearchInstanceTypeList = array<espartitionInstanceType>
type ebsoptions = {
@as("Iops") iops: option<integerClass>,
@as("VolumeSize") volumeSize: option<integerClass>,
@as("VolumeType") volumeType: option<volumeType>,
@as("EBSEnabled") ebsenabled: option<boolean_>
}
type duration = {
@as("Unit") unit_: option<timeUnit>,
@as("Value") value: option<durationValue>
}
type domainNameList = array<domainName>
type domainInformation = {
@as("Region") region: option<region>,
@as("DomainName") domainName: domainName,
@as("OwnerId") ownerId: option<ownerId>
}
type domainInfo = {
@as("DomainName") domainName: option<domainName>
}
type domainEndpointOptions = {
@as("CustomEndpointCertificateArn") customEndpointCertificateArn: option<arn>,
@as("CustomEndpoint") customEndpoint: option<domainNameFqdn>,
@as("CustomEndpointEnabled") customEndpointEnabled: option<boolean_>,
@as("TLSSecurityPolicy") tlssecurityPolicy: option<tlssecurityPolicy>,
@as("EnforceHTTPS") enforceHTTPS: option<boolean_>
}
type describePackagesFilterValues = array<describePackagesFilterValue>
type coldStorageOptions = {
@as("Enabled") enabled: boolean_
}
type cognitoOptions = {
@as("RoleArn") roleArn: option<roleArn>,
@as("IdentityPoolId") identityPoolId: option<identityPoolId>,
@as("UserPoolId") userPoolId: option<userPoolId>,
@as("Enabled") enabled: option<boolean_>
}
type autoTuneStatus = {
@as("PendingDeletion") pendingDeletion: option<boolean_>,
@as("ErrorMessage") errorMessage: option<string_>,
@as("State") state: autoTuneState,
@as("UpdateVersion") updateVersion: option<uintValue>,
@as("UpdateDate") updateDate: updateTimestamp,
@as("CreationDate") creationDate: updateTimestamp
}
type autoTuneOptionsOutput = {
@as("ErrorMessage") errorMessage: option<string_>,
@as("State") state: option<autoTuneState>
}
type advancedOptions = Js.Dict.t< string_>
type vpcoptions = {
@as("SecurityGroupIds") securityGroupIds: option<stringList>,
@as("SubnetIds") subnetIds: option<stringList>
}
type vpcderivedInfo = {
@as("SecurityGroupIds") securityGroupIds: option<stringList>,
@as("AvailabilityZones") availabilityZones: option<stringList>,
@as("SubnetIds") subnetIds: option<stringList>,
@as("VPCId") vpcid: option<string_>
}
type upgradeStepItem = {
@as("ProgressPercent") progressPercent: option<double>,
@as("Issues") issues: option<issues>,
@as("UpgradeStepStatus") upgradeStepStatus: option<upgradeStatus>,
@as("UpgradeStep") upgradeStep: option<upgradeStep>
}
type tagList_ = array<tag>
type storageTypeLimit = {
@as("LimitValues") limitValues: option<limitValueList>,
@as("LimitName") limitName: option<limitName>
}
type snapshotOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: snapshotOptions
}
type samloptionsOutput = {
@as("SessionTimeoutMinutes") sessionTimeoutMinutes: option<integerClass>,
@as("RolesKey") rolesKey: option<string_>,
@as("SubjectKey") subjectKey: option<string_>,
@as("Idp") idp: option<samlidp>,
@as("Enabled") enabled: option<boolean_>
}
type samloptionsInput = {
@as("SessionTimeoutMinutes") sessionTimeoutMinutes: option<integerClass>,
@as("RolesKey") rolesKey: option<string_>,
@as("SubjectKey") subjectKey: option<string_>,
@as("MasterBackendRole") masterBackendRole: option<backendRole>,
@as("MasterUserName") masterUserName: option<username>,
@as("Idp") idp: option<samlidp>,
@as("Enabled") enabled: option<boolean_>
}
type recurringChargeList = array<recurringCharge>
type packageVersionHistoryList = array<packageVersionHistory>
type packageDetails = {
@as("ErrorDetails") errorDetails: option<errorDetails>,
@as("AvailablePackageVersion") availablePackageVersion: option<packageVersion>,
@as("LastUpdatedAt") lastUpdatedAt: option<lastUpdated>,
@as("CreatedAt") createdAt: option<createdAt>,
@as("PackageStatus") packageStatus: option<packageStatus>,
@as("PackageDescription") packageDescription: option<packageDescription>,
@as("PackageType") packageType: option<packageType>,
@as("PackageName") packageName: option<packageName>,
@as("PackageID") packageID: option<packageID>
}
type outboundCrossClusterSearchConnection = {
@as("ConnectionStatus") connectionStatus: option<outboundCrossClusterSearchConnectionStatus>,
@as("ConnectionAlias") connectionAlias: option<connectionAlias>,
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>,
@as("DestinationDomainInfo") destinationDomainInfo: option<domainInformation>,
@as("SourceDomainInfo") sourceDomainInfo: option<domainInformation>
}
type nodeToNodeEncryptionOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: nodeToNodeEncryptionOptions
}
type logPublishingOptions = Js.Dict.t< logPublishingOption>
type instanceLimits = {
@as("InstanceCountLimits") instanceCountLimits: option<instanceCountLimits>
}
type inboundCrossClusterSearchConnection = {
@as("ConnectionStatus") connectionStatus: option<inboundCrossClusterSearchConnectionStatus>,
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>,
@as("DestinationDomainInfo") destinationDomainInfo: option<domainInformation>,
@as("SourceDomainInfo") sourceDomainInfo: option<domainInformation>
}
type filter = {
@as("Values") values: option<valueStringList>,
@as("Name") name: option<nonEmptyString>
}
type encryptionAtRestOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: encryptionAtRestOptions
}
type elasticsearchVersionStatus = {
@as("Status") status: optionStatus,
@as("Options") options: elasticsearchVersionString
}
type elasticsearchClusterConfig = {
@as("ColdStorageOptions") coldStorageOptions: option<coldStorageOptions>,
@as("WarmCount") warmCount: option<integerClass>,
@as("WarmType") warmType: option<eswarmPartitionInstanceType>,
@as("WarmEnabled") warmEnabled: option<boolean_>,
@as("DedicatedMasterCount") dedicatedMasterCount: option<integerClass>,
@as("DedicatedMasterType") dedicatedMasterType: option<espartitionInstanceType>,
@as("ZoneAwarenessConfig") zoneAwarenessConfig: option<zoneAwarenessConfig>,
@as("ZoneAwarenessEnabled") zoneAwarenessEnabled: option<boolean_>,
@as("DedicatedMasterEnabled") dedicatedMasterEnabled: option<boolean_>,
@as("InstanceCount") instanceCount: option<integerClass>,
@as("InstanceType") instanceType: option<espartitionInstanceType>
}
type ebsoptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: ebsoptions
}
type domainPackageDetails = {
@as("ErrorDetails") errorDetails: option<errorDetails>,
@as("ReferencePath") referencePath: option<referencePath>,
@as("PackageVersion") packageVersion: option<packageVersion>,
@as("DomainPackageStatus") domainPackageStatus: option<domainPackageStatus>,
@as("DomainName") domainName: option<domainName>,
@as("LastUpdated") lastUpdated: option<lastUpdated>,
@as("PackageType") packageType: option<packageType>,
@as("PackageName") packageName: option<packageName>,
@as("PackageID") packageID: option<packageID>
}
type domainInfoList = array<domainInfo>
type domainEndpointOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: domainEndpointOptions
}
type describePackagesFilter = {
@as("Value") value: option<describePackagesFilterValues>,
@as("Name") name: option<describePackagesFilterName>
}
type compatibleVersionsMap = {
@as("TargetVersions") targetVersions: option<elasticsearchVersionList>,
@as("SourceVersion") sourceVersion: option<elasticsearchVersionString>
}
type cognitoOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: cognitoOptions
}
type autoTuneMaintenanceSchedule = {
@as("CronExpressionForRecurrence") cronExpressionForRecurrence: option<string_>,
@as("Duration") duration: option<duration>,
@as("StartAt") startAt: option<startAt>
}
type autoTuneDetails = {
@as("ScheduledAutoTuneDetails") scheduledAutoTuneDetails: option<scheduledAutoTuneDetails>
}
type advancedOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: advancedOptions
}
type additionalLimit = {
@as("LimitValues") limitValues: option<limitValueList>,
@as("LimitName") limitName: option<limitName>
}
type accessPoliciesStatus = {
@as("Status") status: optionStatus,
@as("Options") options: policyDocument
}
type vpcderivedInfoStatus = {
@as("Status") status: optionStatus,
@as("Options") options: vpcderivedInfo
}
type upgradeStepsList = array<upgradeStepItem>
type storageTypeLimitList = array<storageTypeLimit>
type reservedElasticsearchInstanceOffering = {
@as("RecurringCharges") recurringCharges: option<recurringChargeList>,
@as("PaymentOption") paymentOption: option<reservedElasticsearchInstancePaymentOption>,
@as("CurrencyCode") currencyCode: option<string_>,
@as("UsagePrice") usagePrice: option<double>,
@as("FixedPrice") fixedPrice: option<double>,
@as("Duration") duration: option<integer_>,
@as("ElasticsearchInstanceType") elasticsearchInstanceType: option<espartitionInstanceType>,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: option<guid>
}
type reservedElasticsearchInstance = {
@as("RecurringCharges") recurringCharges: option<recurringChargeList>,
@as("PaymentOption") paymentOption: option<reservedElasticsearchInstancePaymentOption>,
@as("State") state: option<string_>,
@as("ElasticsearchInstanceCount") elasticsearchInstanceCount: option<integer_>,
@as("CurrencyCode") currencyCode: option<string_>,
@as("UsagePrice") usagePrice: option<double>,
@as("FixedPrice") fixedPrice: option<double>,
@as("Duration") duration: option<integer_>,
@as("StartTime") startTime: option<updateTimestamp>,
@as("ElasticsearchInstanceType") elasticsearchInstanceType: option<espartitionInstanceType>,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: option<string_>,
@as("ReservedElasticsearchInstanceId") reservedElasticsearchInstanceId: option<guid>,
@as("ReservationName") reservationName: option<reservationToken>
}
type packageDetailsList = array<packageDetails>
type outboundCrossClusterSearchConnections = array<outboundCrossClusterSearchConnection>
type logPublishingOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<logPublishingOptions>
}
type inboundCrossClusterSearchConnections = array<inboundCrossClusterSearchConnection>
type filterList = array<filter>
type elasticsearchClusterConfigStatus = {
@as("Status") status: optionStatus,
@as("Options") options: elasticsearchClusterConfig
}
type domainPackageDetailsList = array<domainPackageDetails>
type describePackagesFilterList = array<describePackagesFilter>
type compatibleElasticsearchVersionsList = array<compatibleVersionsMap>
type autoTuneMaintenanceScheduleList = array<autoTuneMaintenanceSchedule>
type autoTune = {
@as("AutoTuneDetails") autoTuneDetails: option<autoTuneDetails>,
@as("AutoTuneType") autoTuneType: option<autoTuneType>
}
type advancedSecurityOptionsInput = {
@as("SAMLOptions") samloptions: option<samloptionsInput>,
@as("MasterUserOptions") masterUserOptions: option<masterUserOptions>,
@as("InternalUserDatabaseEnabled") internalUserDatabaseEnabled: option<boolean_>,
@as("Enabled") enabled: option<boolean_>
}
type advancedSecurityOptions = {
@as("SAMLOptions") samloptions: option<samloptionsOutput>,
@as("InternalUserDatabaseEnabled") internalUserDatabaseEnabled: option<boolean_>,
@as("Enabled") enabled: option<boolean_>
}
type additionalLimitList = array<additionalLimit>
type upgradeHistory = {
@as("StepsList") stepsList: option<upgradeStepsList>,
@as("UpgradeStatus") upgradeStatus: option<upgradeStatus>,
@as("StartTimestamp") startTimestamp: option<startTimestamp>,
@as("UpgradeName") upgradeName: option<upgradeName>
}
type storageType = {
@as("StorageTypeLimits") storageTypeLimits: option<storageTypeLimitList>,
@as("StorageSubTypeName") storageSubTypeName: option<storageSubTypeName>,
@as("StorageTypeName") storageTypeName: option<storageTypeName>
}
type reservedElasticsearchInstanceOfferingList = array<reservedElasticsearchInstanceOffering>
type reservedElasticsearchInstanceList = array<reservedElasticsearchInstance>
type elasticsearchDomainStatus = {
@as("AutoTuneOptions") autoTuneOptions: option<autoTuneOptionsOutput>,
@as("AdvancedSecurityOptions") advancedSecurityOptions: option<advancedSecurityOptions>,
@as("DomainEndpointOptions") domainEndpointOptions: option<domainEndpointOptions>,
@as("ServiceSoftwareOptions") serviceSoftwareOptions: option<serviceSoftwareOptions>,
@as("LogPublishingOptions") logPublishingOptions: option<logPublishingOptions>,
@as("AdvancedOptions") advancedOptions: option<advancedOptions>,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: option<encryptionAtRestOptions>,
@as("CognitoOptions") cognitoOptions: option<cognitoOptions>,
@as("VPCOptions") vpcoptions: option<vpcderivedInfo>,
@as("SnapshotOptions") snapshotOptions: option<snapshotOptions>,
@as("AccessPolicies") accessPolicies: option<policyDocument>,
@as("EBSOptions") ebsoptions: option<ebsoptions>,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: elasticsearchClusterConfig,
@as("ElasticsearchVersion") elasticsearchVersion: option<elasticsearchVersionString>,
@as("UpgradeProcessing") upgradeProcessing: option<boolean_>,
@as("Processing") processing: option<boolean_>,
@as("Endpoints") endpoints: option<endpointsMap>,
@as("Endpoint") endpoint: option<serviceUrl>,
@as("Deleted") deleted: option<boolean_>,
@as("Created") created: option<boolean_>,
@as("ARN") arn: arn,
@as("DomainName") domainName: domainName,
@as("DomainId") domainId: domainId
}
type autoTuneOptionsInput = {
@as("MaintenanceSchedules") maintenanceSchedules: option<autoTuneMaintenanceScheduleList>,
@as("DesiredState") desiredState: option<autoTuneDesiredState>
}
type autoTuneOptions = {
@as("MaintenanceSchedules") maintenanceSchedules: option<autoTuneMaintenanceScheduleList>,
@as("RollbackOnDisable") rollbackOnDisable: option<rollbackOnDisable>,
@as("DesiredState") desiredState: option<autoTuneDesiredState>
}
type autoTuneList = array<autoTune>
type advancedSecurityOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: advancedSecurityOptions
}
type upgradeHistoryList = array<upgradeHistory>
type storageTypeList = array<storageType>
type elasticsearchDomainStatusList = array<elasticsearchDomainStatus>
type autoTuneOptionsStatus = {
@as("Status") status: option<autoTuneStatus>,
@as("Options") options: option<autoTuneOptions>
}
type limits = {
@as("AdditionalLimits") additionalLimits: option<additionalLimitList>,
@as("InstanceLimits") instanceLimits: option<instanceLimits>,
@as("StorageTypes") storageTypes: option<storageTypeList>
}
type elasticsearchDomainConfig = {
@as("AutoTuneOptions") autoTuneOptions: option<autoTuneOptionsStatus>,
@as("AdvancedSecurityOptions") advancedSecurityOptions: option<advancedSecurityOptionsStatus>,
@as("DomainEndpointOptions") domainEndpointOptions: option<domainEndpointOptionsStatus>,
@as("LogPublishingOptions") logPublishingOptions: option<logPublishingOptionsStatus>,
@as("AdvancedOptions") advancedOptions: option<advancedOptionsStatus>,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptionsStatus>,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: option<encryptionAtRestOptionsStatus>,
@as("CognitoOptions") cognitoOptions: option<cognitoOptionsStatus>,
@as("VPCOptions") vpcoptions: option<vpcderivedInfoStatus>,
@as("SnapshotOptions") snapshotOptions: option<snapshotOptionsStatus>,
@as("AccessPolicies") accessPolicies: option<accessPoliciesStatus>,
@as("EBSOptions") ebsoptions: option<ebsoptionsStatus>,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: option<elasticsearchClusterConfigStatus>,
@as("ElasticsearchVersion") elasticsearchVersion: option<elasticsearchVersionStatus>
}
type limitsByRole = Js.Dict.t< limits>
type awsServiceClient;
@module("@aws-sdk/client-es") @new external createClient: unit => awsServiceClient = "ElasticsearchClient";
module UpgradeElasticsearchDomain = {
  type t;
  type request = {
@as("PerformCheckOnly") performCheckOnly: option<boolean_>,
@as("TargetVersion") targetVersion: elasticsearchVersionString,
@as("DomainName") domainName: domainName
}
  type response = {
@as("PerformCheckOnly") performCheckOnly: option<boolean_>,
@as("TargetVersion") targetVersion: option<elasticsearchVersionString>,
@as("DomainName") domainName: option<domainName>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "UpgradeElasticsearchDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PurchaseReservedElasticsearchInstanceOffering = {
  type t;
  type request = {
@as("InstanceCount") instanceCount: option<instanceCount>,
@as("ReservationName") reservationName: reservationToken,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: guid
}
  type response = {
@as("ReservationName") reservationName: option<reservationToken>,
@as("ReservedElasticsearchInstanceId") reservedElasticsearchInstanceId: option<guid>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "PurchaseReservedElasticsearchInstanceOfferingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUpgradeStatus = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("UpgradeName") upgradeName: option<upgradeName>,
@as("StepStatus") stepStatus: option<upgradeStatus>,
@as("UpgradeStep") upgradeStep: option<upgradeStep>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "GetUpgradeStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteElasticsearchServiceRole = {
  type t;
  
  
  @module("@aws-sdk/client-es") @new external new_: (unit) => t = "DeleteElasticsearchServiceRoleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartElasticsearchServiceSoftwareUpdate = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("ServiceSoftwareOptions") serviceSoftwareOptions: option<serviceSoftwareOptions>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "StartElasticsearchServiceSoftwareUpdateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: stringList,
@as("ARN") arn: arn
}
  
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "RemoveTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListElasticsearchVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ElasticsearchVersions") elasticsearchVersions: option<elasticsearchVersionList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "ListElasticsearchVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListElasticsearchInstanceTypes = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DomainName") domainName: option<domainName>,
@as("ElasticsearchVersion") elasticsearchVersion: elasticsearchVersionString
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ElasticsearchInstanceTypes") elasticsearchInstanceTypes: option<elasticsearchInstanceTypeList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "ListElasticsearchInstanceTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateOutboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("ConnectionAlias") connectionAlias: connectionAlias,
@as("DestinationDomainInfo") destinationDomainInfo: domainInformation,
@as("SourceDomainInfo") sourceDomainInfo: domainInformation
}
  type response = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>,
@as("ConnectionStatus") connectionStatus: option<outboundCrossClusterSearchConnectionStatus>,
@as("ConnectionAlias") connectionAlias: option<connectionAlias>,
@as("DestinationDomainInfo") destinationDomainInfo: option<domainInformation>,
@as("SourceDomainInfo") sourceDomainInfo: option<domainInformation>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "CreateOutboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelElasticsearchServiceSoftwareUpdate = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("ServiceSoftwareOptions") serviceSoftwareOptions: option<serviceSoftwareOptions>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "CancelElasticsearchServiceSoftwareUpdateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePackage = {
  type t;
  type request = {
@as("CommitMessage") commitMessage: option<commitMessage>,
@as("PackageDescription") packageDescription: option<packageDescription>,
@as("PackageSource") packageSource: packageSource,
@as("PackageID") packageID: packageID
}
  type response = {
@as("PackageDetails") packageDetails: option<packageDetails>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "UpdatePackageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RejectInboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: crossClusterSearchConnectionId
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: option<inboundCrossClusterSearchConnection>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "RejectInboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("ARN") arn: arn
}
  type response = {
@as("TagList") tagList_: option<tagList_>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "ListTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDomainNames = {
  type t;
  
  type response = {
@as("DomainNames") domainNames: option<domainInfoList>
}
  @module("@aws-sdk/client-es") @new external new_: (unit) => t = "ListDomainNamesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPackageVersionHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("PackageID") packageID: packageID
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("PackageVersionHistoryList") packageVersionHistoryList: option<packageVersionHistoryList>,
@as("PackageID") packageID: option<packageID>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "GetPackageVersionHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DissociatePackage = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
@as("PackageID") packageID: packageID
}
  type response = {
@as("DomainPackageDetails") domainPackageDetails: option<domainPackageDetails>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DissociatePackageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePackage = {
  type t;
  type request = {
@as("PackageID") packageID: packageID
}
  type response = {
@as("PackageDetails") packageDetails: option<packageDetails>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DeletePackageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteOutboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: crossClusterSearchConnectionId
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: option<outboundCrossClusterSearchConnection>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DeleteOutboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: crossClusterSearchConnectionId
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: option<inboundCrossClusterSearchConnection>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DeleteInboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePackage = {
  type t;
  type request = {
@as("PackageSource") packageSource: packageSource,
@as("PackageDescription") packageDescription: option<packageDescription>,
@as("PackageType") packageType: packageType,
@as("PackageName") packageName: packageName
}
  type response = {
@as("PackageDetails") packageDetails: option<packageDetails>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "CreatePackageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociatePackage = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
@as("PackageID") packageID: packageID
}
  type response = {
@as("DomainPackageDetails") domainPackageDetails: option<domainPackageDetails>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "AssociatePackageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("TagList") tagList_: tagList_,
@as("ARN") arn: arn
}
  
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "AddTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AcceptInboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: crossClusterSearchConnectionId
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: option<inboundCrossClusterSearchConnection>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "AcceptInboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPackagesForDomain = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("DomainPackageDetailsList") domainPackageDetailsList: option<domainPackageDetailsList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "ListPackagesForDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDomainsForPackage = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("PackageID") packageID: packageID
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("DomainPackageDetailsList") domainPackageDetailsList: option<domainPackageDetailsList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "ListDomainsForPackageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCompatibleElasticsearchVersions = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("CompatibleElasticsearchVersions") compatibleElasticsearchVersions: option<compatibleElasticsearchVersionsList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "GetCompatibleElasticsearchVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePackages = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("Filters") filters: option<describePackagesFilterList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("PackageDetailsList") packageDetailsList: option<packageDetailsList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribePackagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOutboundCrossClusterSearchConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("CrossClusterSearchConnections") crossClusterSearchConnections: option<outboundCrossClusterSearchConnections>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeOutboundCrossClusterSearchConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInboundCrossClusterSearchConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("Filters") filters: option<filterList>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("CrossClusterSearchConnections") crossClusterSearchConnections: option<inboundCrossClusterSearchConnections>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeInboundCrossClusterSearchConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedElasticsearchInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ReservedElasticsearchInstanceId") reservedElasticsearchInstanceId: option<guid>
}
  type response = {
@as("ReservedElasticsearchInstances") reservedElasticsearchInstances: option<reservedElasticsearchInstanceList>,
@as("NextToken") nextToken: option<string_>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeReservedElasticsearchInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedElasticsearchInstanceOfferings = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: option<guid>
}
  type response = {
@as("ReservedElasticsearchInstanceOfferings") reservedElasticsearchInstanceOfferings: option<reservedElasticsearchInstanceOfferingList>,
@as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeReservedElasticsearchInstanceOfferingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("DomainStatus") domainStatus: elasticsearchDomainStatus
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeElasticsearchDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDomainAutoTunes = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("AutoTunes") autoTunes: option<autoTuneList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeDomainAutoTunesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteElasticsearchDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("DomainStatus") domainStatus: option<elasticsearchDomainStatus>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DeleteElasticsearchDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateElasticsearchDomain = {
  type t;
  type request = {
@as("TagList") tagList_: option<tagList_>,
@as("AutoTuneOptions") autoTuneOptions: option<autoTuneOptionsInput>,
@as("AdvancedSecurityOptions") advancedSecurityOptions: option<advancedSecurityOptionsInput>,
@as("DomainEndpointOptions") domainEndpointOptions: option<domainEndpointOptions>,
@as("LogPublishingOptions") logPublishingOptions: option<logPublishingOptions>,
@as("AdvancedOptions") advancedOptions: option<advancedOptions>,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: option<encryptionAtRestOptions>,
@as("CognitoOptions") cognitoOptions: option<cognitoOptions>,
@as("VPCOptions") vpcoptions: option<vpcoptions>,
@as("SnapshotOptions") snapshotOptions: option<snapshotOptions>,
@as("AccessPolicies") accessPolicies: option<policyDocument>,
@as("EBSOptions") ebsoptions: option<ebsoptions>,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: option<elasticsearchClusterConfig>,
@as("ElasticsearchVersion") elasticsearchVersion: option<elasticsearchVersionString>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("DomainStatus") domainStatus: option<elasticsearchDomainStatus>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "CreateElasticsearchDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUpgradeHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("UpgradeHistories") upgradeHistories: option<upgradeHistoryList>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "GetUpgradeHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchDomains = {
  type t;
  type request = {
@as("DomainNames") domainNames: domainNameList
}
  type response = {
@as("DomainStatusList") domainStatusList: elasticsearchDomainStatusList
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeElasticsearchDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateElasticsearchDomainConfig = {
  type t;
  type request = {
@as("AutoTuneOptions") autoTuneOptions: option<autoTuneOptions>,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: option<encryptionAtRestOptions>,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
@as("AdvancedSecurityOptions") advancedSecurityOptions: option<advancedSecurityOptionsInput>,
@as("DomainEndpointOptions") domainEndpointOptions: option<domainEndpointOptions>,
@as("LogPublishingOptions") logPublishingOptions: option<logPublishingOptions>,
@as("AccessPolicies") accessPolicies: option<policyDocument>,
@as("AdvancedOptions") advancedOptions: option<advancedOptions>,
@as("CognitoOptions") cognitoOptions: option<cognitoOptions>,
@as("VPCOptions") vpcoptions: option<vpcoptions>,
@as("SnapshotOptions") snapshotOptions: option<snapshotOptions>,
@as("EBSOptions") ebsoptions: option<ebsoptions>,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: option<elasticsearchClusterConfig>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("DomainConfig") domainConfig: elasticsearchDomainConfig
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "UpdateElasticsearchDomainConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchDomainConfig = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("DomainConfig") domainConfig: elasticsearchDomainConfig
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeElasticsearchDomainConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchInstanceTypeLimits = {
  type t;
  type request = {
@as("ElasticsearchVersion") elasticsearchVersion: elasticsearchVersionString,
@as("InstanceType") instanceType: espartitionInstanceType,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("LimitsByRole") limitsByRole: option<limitsByRole>
}
  @module("@aws-sdk/client-es") @new external new_: (request) => t = "DescribeElasticsearchInstanceTypeLimitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
