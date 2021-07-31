type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type volumeType = [@as("io1") #io1 | @as("gp2") #gp2 | @as("standard") #standard]
type username = string
type userPoolId = string
type upgradeStep = [@as("UPGRADE") #UPGRADE | @as("SNAPSHOT") #SNAPSHOT | @as("PRE_UPGRADE_CHECK") #PRE_UPGRADE_CHECK]
type upgradeStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED_WITH_ISSUES") #SUCCEEDED_WITH_ISSUES | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type upgradeName = string
type updateTimestamp = Js.Date.t;
type uIntValue = int;
type timeUnit = [@as("HOURS") #HOURS]
type tagValue = string
type tagKey = string
type tLSSecurityPolicy = [@as("Policy-Min-TLS-1-2-2019-07") #Policy_Min_TLS_1_2_2019_07 | @as("Policy-Min-TLS-1-0-2019-07") #Policy_Min_TLS_1_0_2019_07]
type amazonawsString = string
type storageTypeName = string
type storageSubTypeName = string
type startTimestamp = Js.Date.t;
type startAt = Js.Date.t;
type serviceUrl = string
type scheduledAutoTuneSeverityType = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type scheduledAutoTuneDescription = string
type scheduledAutoTuneActionType = [@as("JVM_YOUNG_GEN_TUNING") #JVM_YOUNG_GEN_TUNING | @as("JVM_HEAP_SIZE_TUNING") #JVM_HEAP_SIZE_TUNING]
type sAMLMetadata = string
type sAMLEntityId = string
type s3Key = string
type s3BucketName = string
type rollbackOnDisable = [@as("DEFAULT_ROLLBACK") #DEFAULT_ROLLBACK | @as("NO_ROLLBACK") #NO_ROLLBACK]
type roleArn = string
type reservedElasticsearchInstancePaymentOption = [@as("NO_UPFRONT") #NO_UPFRONT | @as("PARTIAL_UPFRONT") #PARTIAL_UPFRONT | @as("ALL_UPFRONT") #ALL_UPFRONT]
type reservationToken = string
type region = string
type referencePath = string
type policyDocument = string
type password = string
type packageVersion = string
type packageType = [@as("TXT-DICTIONARY") #TXT_DICTIONARY]
type packageStatus = [@as("DELETE_FAILED") #DELETE_FAILED | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("VALIDATION_FAILED") #VALIDATION_FAILED | @as("VALIDATING") #VALIDATING | @as("COPY_FAILED") #COPY_FAILED | @as("COPYING") #COPYING]
type packageName = string
type packageID = string
type packageDescription = string
type ownerId = string
type outboundCrossClusterSearchConnectionStatusCode = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("REJECTED") #REJECTED | @as("ACTIVE") #ACTIVE | @as("PROVISIONING") #PROVISIONING | @as("VALIDATION_FAILED") #VALIDATION_FAILED | @as("VALIDATING") #VALIDATING | @as("PENDING_ACCEPTANCE") #PENDING_ACCEPTANCE]
type optionState = [@as("Active") #Active | @as("Processing") #Processing | @as("RequiresIndexDocuments") #RequiresIndexDocuments]
type nonEmptyString = string
type nextToken = string
type minimumInstanceCount = int;
type maximumInstanceCount = int;
type maxResults = int;
type logType = [@as("AUDIT_LOGS") #AUDIT_LOGS | @as("ES_APPLICATION_LOGS") #ES_APPLICATION_LOGS | @as("SEARCH_SLOW_LOGS") #SEARCH_SLOW_LOGS | @as("INDEX_SLOW_LOGS") #INDEX_SLOW_LOGS]
type limitValue = string
type limitName = string
type lastUpdated = Js.Date.t;
type kmsKeyId = string
type issue = string
type integerClass = int;
type amazonawsInteger = int;
type instanceRole = string
type instanceCount = int;
type inboundCrossClusterSearchConnectionStatusCode = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("REJECTED") #REJECTED | @as("REJECTING") #REJECTING | @as("APPROVED") #APPROVED | @as("PENDING_ACCEPTANCE") #PENDING_ACCEPTANCE]
type identityPoolId = string
type gUID = string
type errorType = string
type errorMessage = string
type elasticsearchVersionString = string
type eSWarmPartitionInstanceType = [@as("ultrawarm1.large.elasticsearch") #ultrawarm1_large_elasticsearch | @as("ultrawarm1.medium.elasticsearch") #ultrawarm1_medium_elasticsearch]
type eSPartitionInstanceType = [@as("i3.16xlarge.elasticsearch") #i3_16xlarge_elasticsearch | @as("i3.8xlarge.elasticsearch") #i3_8xlarge_elasticsearch | @as("i3.4xlarge.elasticsearch") #i3_4xlarge_elasticsearch | @as("i3.2xlarge.elasticsearch") #i3_2xlarge_elasticsearch | @as("i3.xlarge.elasticsearch") #i3_xlarge_elasticsearch | @as("i3.large.elasticsearch") #i3_large_elasticsearch | @as("r4.16xlarge.elasticsearch") #r4_16xlarge_elasticsearch | @as("r4.8xlarge.elasticsearch") #r4_8xlarge_elasticsearch | @as("r4.4xlarge.elasticsearch") #r4_4xlarge_elasticsearch | @as("r4.2xlarge.elasticsearch") #r4_2xlarge_elasticsearch | @as("r4.xlarge.elasticsearch") #r4_xlarge_elasticsearch | @as("r4.large.elasticsearch") #r4_large_elasticsearch | @as("c4.8xlarge.elasticsearch") #c4_8xlarge_elasticsearch | @as("c4.4xlarge.elasticsearch") #c4_4xlarge_elasticsearch | @as("c4.2xlarge.elasticsearch") #c4_2xlarge_elasticsearch | @as("c4.xlarge.elasticsearch") #c4_xlarge_elasticsearch | @as("c4.large.elasticsearch") #c4_large_elasticsearch | @as("d2.8xlarge.elasticsearch") #d2_8xlarge_elasticsearch | @as("d2.4xlarge.elasticsearch") #d2_4xlarge_elasticsearch | @as("d2.2xlarge.elasticsearch") #d2_2xlarge_elasticsearch | @as("d2.xlarge.elasticsearch") #d2_xlarge_elasticsearch | @as("i2.2xlarge.elasticsearch") #i2_2xlarge_elasticsearch | @as("i2.xlarge.elasticsearch") #i2_xlarge_elasticsearch | @as("r3.8xlarge.elasticsearch") #r3_8xlarge_elasticsearch | @as("r3.4xlarge.elasticsearch") #r3_4xlarge_elasticsearch | @as("r3.2xlarge.elasticsearch") #r3_2xlarge_elasticsearch | @as("r3.xlarge.elasticsearch") #r3_xlarge_elasticsearch | @as("r3.large.elasticsearch") #r3_large_elasticsearch | @as("t2.medium.elasticsearch") #t2_medium_elasticsearch | @as("t2.small.elasticsearch") #t2_small_elasticsearch | @as("t2.micro.elasticsearch") #t2_micro_elasticsearch | @as("ultrawarm1.large.elasticsearch") #ultrawarm1_large_elasticsearch | @as("ultrawarm1.medium.elasticsearch") #ultrawarm1_medium_elasticsearch | @as("c5.18xlarge.elasticsearch") #c5_18xlarge_elasticsearch | @as("c5.9xlarge.elasticsearch") #c5_9xlarge_elasticsearch | @as("c5.4xlarge.elasticsearch") #c5_4xlarge_elasticsearch | @as("c5.2xlarge.elasticsearch") #c5_2xlarge_elasticsearch | @as("c5.xlarge.elasticsearch") #c5_xlarge_elasticsearch | @as("c5.large.elasticsearch") #c5_large_elasticsearch | @as("r5.12xlarge.elasticsearch") #r5_12xlarge_elasticsearch | @as("r5.4xlarge.elasticsearch") #r5_4xlarge_elasticsearch | @as("r5.2xlarge.elasticsearch") #r5_2xlarge_elasticsearch | @as("r5.xlarge.elasticsearch") #r5_xlarge_elasticsearch | @as("r5.large.elasticsearch") #r5_large_elasticsearch | @as("m5.12xlarge.elasticsearch") #m5_12xlarge_elasticsearch | @as("m5.4xlarge.elasticsearch") #m5_4xlarge_elasticsearch | @as("m5.2xlarge.elasticsearch") #m5_2xlarge_elasticsearch | @as("m5.xlarge.elasticsearch") #m5_xlarge_elasticsearch | @as("m5.large.elasticsearch") #m5_large_elasticsearch | @as("m4.10xlarge.elasticsearch") #m4_10xlarge_elasticsearch | @as("m4.4xlarge.elasticsearch") #m4_4xlarge_elasticsearch | @as("m4.2xlarge.elasticsearch") #m4_2xlarge_elasticsearch | @as("m4.xlarge.elasticsearch") #m4_xlarge_elasticsearch | @as("m4.large.elasticsearch") #m4_large_elasticsearch | @as("m3.2xlarge.elasticsearch") #m3_2xlarge_elasticsearch | @as("m3.xlarge.elasticsearch") #m3_xlarge_elasticsearch | @as("m3.large.elasticsearch") #m3_large_elasticsearch | @as("m3.medium.elasticsearch") #m3_medium_elasticsearch]
type durationValue = float;
type amazonawsDouble = float;
type domainPackageStatus = [@as("DISSOCIATION_FAILED") #DISSOCIATION_FAILED | @as("DISSOCIATING") #DISSOCIATING | @as("ACTIVE") #ACTIVE | @as("ASSOCIATION_FAILED") #ASSOCIATION_FAILED | @as("ASSOCIATING") #ASSOCIATING]
type domainNameFqdn = string
type domainName = string
type domainId = string
type describePackagesFilterValue = string
type describePackagesFilterName = [@as("PackageStatus") #PackageStatus | @as("PackageName") #PackageName | @as("PackageID") #PackageID]
type deploymentStatus = [@as("ELIGIBLE") #ELIGIBLE | @as("NOT_ELIGIBLE") #NOT_ELIGIBLE | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("PENDING_UPDATE") #PENDING_UPDATE]
type deploymentCloseDateTimeStamp = Js.Date.t;
type crossClusterSearchConnectionStatusMessage = string
type crossClusterSearchConnectionId = string
type createdAt = Js.Date.t;
type connectionAlias = string
type commitMessage = string
type cloudWatchLogsLogGroupArn = string
type amazonawsBoolean = bool;
type backendRole = string
type autoTuneType = [@as("SCHEDULED_ACTION") #SCHEDULED_ACTION]
type autoTuneState = [@as("ERROR") #ERROR | @as("DISABLED_AND_ROLLBACK_ERROR") #DISABLED_AND_ROLLBACK_ERROR | @as("DISABLED_AND_ROLLBACK_COMPLETE") #DISABLED_AND_ROLLBACK_COMPLETE | @as("DISABLED_AND_ROLLBACK_IN_PROGRESS") #DISABLED_AND_ROLLBACK_IN_PROGRESS | @as("DISABLED_AND_ROLLBACK_SCHEDULED") #DISABLED_AND_ROLLBACK_SCHEDULED | @as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS | @as("ENABLE_IN_PROGRESS") #ENABLE_IN_PROGRESS | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type autoTuneDesiredState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type autoTuneDate = Js.Date.t;
type aRN = string
type zoneAwarenessConfig = {
@as("AvailabilityZoneCount") availabilityZoneCount: integerClass
}
type valueStringList = array<nonEmptyString>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type stringList = array<amazonawsString>
type snapshotOptions = {
@as("AutomatedSnapshotStartHour") automatedSnapshotStartHour: integerClass
}
type serviceSoftwareOptions = {
@as("OptionalDeployment") optionalDeployment: amazonawsBoolean,
@as("AutomatedUpdateDate") automatedUpdateDate: deploymentCloseDateTimeStamp,
@as("Description") description: amazonawsString,
@as("UpdateStatus") updateStatus: deploymentStatus,
@as("Cancellable") cancellable: amazonawsBoolean,
@as("UpdateAvailable") updateAvailable: amazonawsBoolean,
@as("NewVersion") newVersion: amazonawsString,
@as("CurrentVersion") currentVersion: amazonawsString
}
type scheduledAutoTuneDetails = {
@as("Severity") severity: scheduledAutoTuneSeverityType,
@as("Action") action: scheduledAutoTuneDescription,
@as("ActionType") actionType: scheduledAutoTuneActionType,
@as("Date") date: autoTuneDate
}
type sAMLIdp = {
@as("EntityId") entityId: option<sAMLEntityId>,
@as("MetadataContent") metadataContent: option<sAMLMetadata>
}
type recurringCharge = {
@as("RecurringChargeFrequency") recurringChargeFrequency: amazonawsString,
@as("RecurringChargeAmount") recurringChargeAmount: amazonawsDouble
}
type packageVersionHistory = {
@as("CreatedAt") createdAt: createdAt,
@as("CommitMessage") commitMessage: commitMessage,
@as("PackageVersion") packageVersion: packageVersion
}
type packageSource = {
@as("S3Key") s3Key: s3Key,
@as("S3BucketName") s3BucketName: s3BucketName
}
type outboundCrossClusterSearchConnectionStatus = {
@as("Message") message: crossClusterSearchConnectionStatusMessage,
@as("StatusCode") statusCode: outboundCrossClusterSearchConnectionStatusCode
}
type optionStatus = {
@as("PendingDeletion") pendingDeletion: amazonawsBoolean,
@as("State") state: option<optionState>,
@as("UpdateVersion") updateVersion: uIntValue,
@as("UpdateDate") updateDate: option<updateTimestamp>,
@as("CreationDate") creationDate: option<updateTimestamp>
}
type nodeToNodeEncryptionOptions = {
@as("Enabled") enabled: amazonawsBoolean
}
type masterUserOptions = {
@as("MasterUserPassword") masterUserPassword: password,
@as("MasterUserName") masterUserName: username,
@as("MasterUserARN") masterUserARN: aRN
}
type logPublishingOption = {
@as("Enabled") enabled: amazonawsBoolean,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: cloudWatchLogsLogGroupArn
}
type limitValueList = array<limitValue>
type issues = array<issue>
type instanceCountLimits = {
@as("MaximumInstanceCount") maximumInstanceCount: maximumInstanceCount,
@as("MinimumInstanceCount") minimumInstanceCount: minimumInstanceCount
}
type inboundCrossClusterSearchConnectionStatus = {
@as("Message") message: crossClusterSearchConnectionStatusMessage,
@as("StatusCode") statusCode: inboundCrossClusterSearchConnectionStatusCode
}
type errorDetails = {
@as("ErrorMessage") errorMessage: errorMessage,
@as("ErrorType") errorType: errorType
}
type endpointsMap = Js.Dict.t< serviceUrl>
type encryptionAtRestOptions = {
@as("KmsKeyId") kmsKeyId: kmsKeyId,
@as("Enabled") enabled: amazonawsBoolean
}
type elasticsearchVersionList = array<elasticsearchVersionString>
type elasticsearchInstanceTypeList = array<eSPartitionInstanceType>
type eBSOptions = {
@as("Iops") iops: integerClass,
@as("VolumeSize") volumeSize: integerClass,
@as("VolumeType") volumeType: volumeType,
@as("EBSEnabled") eBSEnabled: amazonawsBoolean
}
type duration = {
@as("Unit") unit: timeUnit,
@as("Value") value: durationValue
}
type domainNameList = array<domainName>
type domainInformation = {
@as("Region") region: region,
@as("DomainName") domainName: option<domainName>,
@as("OwnerId") ownerId: ownerId
}
type domainInfo = {
@as("DomainName") domainName: domainName
}
type domainEndpointOptions = {
@as("CustomEndpointCertificateArn") customEndpointCertificateArn: aRN,
@as("CustomEndpoint") customEndpoint: domainNameFqdn,
@as("CustomEndpointEnabled") customEndpointEnabled: amazonawsBoolean,
@as("TLSSecurityPolicy") tLSSecurityPolicy: tLSSecurityPolicy,
@as("EnforceHTTPS") enforceHTTPS: amazonawsBoolean
}
type describePackagesFilterValues = array<describePackagesFilterValue>
type coldStorageOptions = {
@as("Enabled") enabled: option<amazonawsBoolean>
}
type cognitoOptions = {
@as("RoleArn") roleArn: roleArn,
@as("IdentityPoolId") identityPoolId: identityPoolId,
@as("UserPoolId") userPoolId: userPoolId,
@as("Enabled") enabled: amazonawsBoolean
}
type autoTuneStatus = {
@as("PendingDeletion") pendingDeletion: amazonawsBoolean,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("State") state: option<autoTuneState>,
@as("UpdateVersion") updateVersion: uIntValue,
@as("UpdateDate") updateDate: option<updateTimestamp>,
@as("CreationDate") creationDate: option<updateTimestamp>
}
type autoTuneOptionsOutput = {
@as("ErrorMessage") errorMessage: amazonawsString,
@as("State") state: autoTuneState
}
type advancedOptions = Js.Dict.t< amazonawsString>
type vPCOptions = {
@as("SecurityGroupIds") securityGroupIds: stringList,
@as("SubnetIds") subnetIds: stringList
}
type vPCDerivedInfo = {
@as("SecurityGroupIds") securityGroupIds: stringList,
@as("AvailabilityZones") availabilityZones: stringList,
@as("SubnetIds") subnetIds: stringList,
@as("VPCId") vPCId: amazonawsString
}
type upgradeStepItem = {
@as("ProgressPercent") progressPercent: amazonawsDouble,
@as("Issues") issues: issues,
@as("UpgradeStepStatus") upgradeStepStatus: upgradeStatus,
@as("UpgradeStep") upgradeStep: upgradeStep
}
type tagList = array<tag>
type storageTypeLimit = {
@as("LimitValues") limitValues: limitValueList,
@as("LimitName") limitName: limitName
}
type snapshotOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<snapshotOptions>
}
type sAMLOptionsOutput = {
@as("SessionTimeoutMinutes") sessionTimeoutMinutes: integerClass,
@as("RolesKey") rolesKey: amazonawsString,
@as("SubjectKey") subjectKey: amazonawsString,
@as("Idp") idp: sAMLIdp,
@as("Enabled") enabled: amazonawsBoolean
}
type sAMLOptionsInput = {
@as("SessionTimeoutMinutes") sessionTimeoutMinutes: integerClass,
@as("RolesKey") rolesKey: amazonawsString,
@as("SubjectKey") subjectKey: amazonawsString,
@as("MasterBackendRole") masterBackendRole: backendRole,
@as("MasterUserName") masterUserName: username,
@as("Idp") idp: sAMLIdp,
@as("Enabled") enabled: amazonawsBoolean
}
type recurringChargeList = array<recurringCharge>
type packageVersionHistoryList = array<packageVersionHistory>
type packageDetails = {
@as("ErrorDetails") errorDetails: errorDetails,
@as("AvailablePackageVersion") availablePackageVersion: packageVersion,
@as("LastUpdatedAt") lastUpdatedAt: lastUpdated,
@as("CreatedAt") createdAt: createdAt,
@as("PackageStatus") packageStatus: packageStatus,
@as("PackageDescription") packageDescription: packageDescription,
@as("PackageType") packageType: packageType,
@as("PackageName") packageName: packageName,
@as("PackageID") packageID: packageID
}
type outboundCrossClusterSearchConnection = {
@as("ConnectionStatus") connectionStatus: outboundCrossClusterSearchConnectionStatus,
@as("ConnectionAlias") connectionAlias: connectionAlias,
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: crossClusterSearchConnectionId,
@as("DestinationDomainInfo") destinationDomainInfo: domainInformation,
@as("SourceDomainInfo") sourceDomainInfo: domainInformation
}
type nodeToNodeEncryptionOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<nodeToNodeEncryptionOptions>
}
type logPublishingOptions = Js.Dict.t< logPublishingOption>
type instanceLimits = {
@as("InstanceCountLimits") instanceCountLimits: instanceCountLimits
}
type inboundCrossClusterSearchConnection = {
@as("ConnectionStatus") connectionStatus: inboundCrossClusterSearchConnectionStatus,
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: crossClusterSearchConnectionId,
@as("DestinationDomainInfo") destinationDomainInfo: domainInformation,
@as("SourceDomainInfo") sourceDomainInfo: domainInformation
}
type filter = {
@as("Values") values: valueStringList,
@as("Name") name: nonEmptyString
}
type encryptionAtRestOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<encryptionAtRestOptions>
}
type elasticsearchVersionStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<elasticsearchVersionString>
}
type elasticsearchClusterConfig = {
@as("ColdStorageOptions") coldStorageOptions: coldStorageOptions,
@as("WarmCount") warmCount: integerClass,
@as("WarmType") warmType: eSWarmPartitionInstanceType,
@as("WarmEnabled") warmEnabled: amazonawsBoolean,
@as("DedicatedMasterCount") dedicatedMasterCount: integerClass,
@as("DedicatedMasterType") dedicatedMasterType: eSPartitionInstanceType,
@as("ZoneAwarenessConfig") zoneAwarenessConfig: zoneAwarenessConfig,
@as("ZoneAwarenessEnabled") zoneAwarenessEnabled: amazonawsBoolean,
@as("DedicatedMasterEnabled") dedicatedMasterEnabled: amazonawsBoolean,
@as("InstanceCount") instanceCount: integerClass,
@as("InstanceType") instanceType: eSPartitionInstanceType
}
type eBSOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<eBSOptions>
}
type domainPackageDetails = {
@as("ErrorDetails") errorDetails: errorDetails,
@as("ReferencePath") referencePath: referencePath,
@as("PackageVersion") packageVersion: packageVersion,
@as("DomainPackageStatus") domainPackageStatus: domainPackageStatus,
@as("DomainName") domainName: domainName,
@as("LastUpdated") lastUpdated: lastUpdated,
@as("PackageType") packageType: packageType,
@as("PackageName") packageName: packageName,
@as("PackageID") packageID: packageID
}
type domainInfoList = array<domainInfo>
type domainEndpointOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<domainEndpointOptions>
}
type describePackagesFilter = {
@as("Value") value: describePackagesFilterValues,
@as("Name") name: describePackagesFilterName
}
type compatibleVersionsMap = {
@as("TargetVersions") targetVersions: elasticsearchVersionList,
@as("SourceVersion") sourceVersion: elasticsearchVersionString
}
type cognitoOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<cognitoOptions>
}
type autoTuneMaintenanceSchedule = {
@as("CronExpressionForRecurrence") cronExpressionForRecurrence: amazonawsString,
@as("Duration") duration: duration,
@as("StartAt") startAt: startAt
}
type autoTuneDetails = {
@as("ScheduledAutoTuneDetails") scheduledAutoTuneDetails: scheduledAutoTuneDetails
}
type advancedOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<advancedOptions>
}
type additionalLimit = {
@as("LimitValues") limitValues: limitValueList,
@as("LimitName") limitName: limitName
}
type accessPoliciesStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<policyDocument>
}
type vPCDerivedInfoStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<vPCDerivedInfo>
}
type upgradeStepsList = array<upgradeStepItem>
type storageTypeLimitList = array<storageTypeLimit>
type reservedElasticsearchInstanceOffering = {
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("PaymentOption") paymentOption: reservedElasticsearchInstancePaymentOption,
@as("CurrencyCode") currencyCode: amazonawsString,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("ElasticsearchInstanceType") elasticsearchInstanceType: eSPartitionInstanceType,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: gUID
}
type reservedElasticsearchInstance = {
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("PaymentOption") paymentOption: reservedElasticsearchInstancePaymentOption,
@as("State") state: amazonawsString,
@as("ElasticsearchInstanceCount") elasticsearchInstanceCount: amazonawsInteger,
@as("CurrencyCode") currencyCode: amazonawsString,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("StartTime") startTime: updateTimestamp,
@as("ElasticsearchInstanceType") elasticsearchInstanceType: eSPartitionInstanceType,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: amazonawsString,
@as("ReservedElasticsearchInstanceId") reservedElasticsearchInstanceId: gUID,
@as("ReservationName") reservationName: reservationToken
}
type packageDetailsList = array<packageDetails>
type outboundCrossClusterSearchConnections = array<outboundCrossClusterSearchConnection>
type logPublishingOptionsStatus = {
@as("Status") status: optionStatus,
@as("Options") options: logPublishingOptions
}
type inboundCrossClusterSearchConnections = array<inboundCrossClusterSearchConnection>
type filterList = array<filter>
type elasticsearchClusterConfigStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<elasticsearchClusterConfig>
}
type domainPackageDetailsList = array<domainPackageDetails>
type describePackagesFilterList = array<describePackagesFilter>
type compatibleElasticsearchVersionsList = array<compatibleVersionsMap>
type autoTuneMaintenanceScheduleList = array<autoTuneMaintenanceSchedule>
type autoTune = {
@as("AutoTuneDetails") autoTuneDetails: autoTuneDetails,
@as("AutoTuneType") autoTuneType: autoTuneType
}
type advancedSecurityOptionsInput = {
@as("SAMLOptions") sAMLOptions: sAMLOptionsInput,
@as("MasterUserOptions") masterUserOptions: masterUserOptions,
@as("InternalUserDatabaseEnabled") internalUserDatabaseEnabled: amazonawsBoolean,
@as("Enabled") enabled: amazonawsBoolean
}
type advancedSecurityOptions = {
@as("SAMLOptions") sAMLOptions: sAMLOptionsOutput,
@as("InternalUserDatabaseEnabled") internalUserDatabaseEnabled: amazonawsBoolean,
@as("Enabled") enabled: amazonawsBoolean
}
type additionalLimitList = array<additionalLimit>
type upgradeHistory = {
@as("StepsList") stepsList: upgradeStepsList,
@as("UpgradeStatus") upgradeStatus: upgradeStatus,
@as("StartTimestamp") startTimestamp: startTimestamp,
@as("UpgradeName") upgradeName: upgradeName
}
type storageType = {
@as("StorageTypeLimits") storageTypeLimits: storageTypeLimitList,
@as("StorageSubTypeName") storageSubTypeName: storageSubTypeName,
@as("StorageTypeName") storageTypeName: storageTypeName
}
type reservedElasticsearchInstanceOfferingList = array<reservedElasticsearchInstanceOffering>
type reservedElasticsearchInstanceList = array<reservedElasticsearchInstance>
type elasticsearchDomainStatus = {
@as("AutoTuneOptions") autoTuneOptions: autoTuneOptionsOutput,
@as("AdvancedSecurityOptions") advancedSecurityOptions: advancedSecurityOptions,
@as("DomainEndpointOptions") domainEndpointOptions: domainEndpointOptions,
@as("ServiceSoftwareOptions") serviceSoftwareOptions: serviceSoftwareOptions,
@as("LogPublishingOptions") logPublishingOptions: logPublishingOptions,
@as("AdvancedOptions") advancedOptions: advancedOptions,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: nodeToNodeEncryptionOptions,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: encryptionAtRestOptions,
@as("CognitoOptions") cognitoOptions: cognitoOptions,
@as("VPCOptions") vPCOptions: vPCDerivedInfo,
@as("SnapshotOptions") snapshotOptions: snapshotOptions,
@as("AccessPolicies") accessPolicies: policyDocument,
@as("EBSOptions") eBSOptions: eBSOptions,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: option<elasticsearchClusterConfig>,
@as("ElasticsearchVersion") elasticsearchVersion: elasticsearchVersionString,
@as("UpgradeProcessing") upgradeProcessing: amazonawsBoolean,
@as("Processing") processing: amazonawsBoolean,
@as("Endpoints") endpoints: endpointsMap,
@as("Endpoint") endpoint: serviceUrl,
@as("Deleted") deleted: amazonawsBoolean,
@as("Created") created: amazonawsBoolean,
@as("ARN") aRN: option<aRN>,
@as("DomainName") domainName: option<domainName>,
@as("DomainId") domainId: option<domainId>
}
type autoTuneOptionsInput = {
@as("MaintenanceSchedules") maintenanceSchedules: autoTuneMaintenanceScheduleList,
@as("DesiredState") desiredState: autoTuneDesiredState
}
type autoTuneOptions = {
@as("MaintenanceSchedules") maintenanceSchedules: autoTuneMaintenanceScheduleList,
@as("RollbackOnDisable") rollbackOnDisable: rollbackOnDisable,
@as("DesiredState") desiredState: autoTuneDesiredState
}
type autoTuneList = array<autoTune>
type advancedSecurityOptionsStatus = {
@as("Status") status: option<optionStatus>,
@as("Options") options: option<advancedSecurityOptions>
}
type upgradeHistoryList = array<upgradeHistory>
type storageTypeList = array<storageType>
type elasticsearchDomainStatusList = array<elasticsearchDomainStatus>
type autoTuneOptionsStatus = {
@as("Status") status: autoTuneStatus,
@as("Options") options: autoTuneOptions
}
type limits = {
@as("AdditionalLimits") additionalLimits: additionalLimitList,
@as("InstanceLimits") instanceLimits: instanceLimits,
@as("StorageTypes") storageTypes: storageTypeList
}
type elasticsearchDomainConfig = {
@as("AutoTuneOptions") autoTuneOptions: autoTuneOptionsStatus,
@as("AdvancedSecurityOptions") advancedSecurityOptions: advancedSecurityOptionsStatus,
@as("DomainEndpointOptions") domainEndpointOptions: domainEndpointOptionsStatus,
@as("LogPublishingOptions") logPublishingOptions: logPublishingOptionsStatus,
@as("AdvancedOptions") advancedOptions: advancedOptionsStatus,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: nodeToNodeEncryptionOptionsStatus,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: encryptionAtRestOptionsStatus,
@as("CognitoOptions") cognitoOptions: cognitoOptionsStatus,
@as("VPCOptions") vPCOptions: vPCDerivedInfoStatus,
@as("SnapshotOptions") snapshotOptions: snapshotOptionsStatus,
@as("AccessPolicies") accessPolicies: accessPoliciesStatus,
@as("EBSOptions") eBSOptions: eBSOptionsStatus,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: elasticsearchClusterConfigStatus,
@as("ElasticsearchVersion") elasticsearchVersion: elasticsearchVersionStatus
}
type limitsByRole = Js.Dict.t< limits>
type clientType;
@module("@aws-sdk/client-es") @new external createClient: unit => clientType = "ElasticsearchClient";
module UpgradeElasticsearchDomain = {
  type t;
  type request = {
@as("PerformCheckOnly") performCheckOnly: amazonawsBoolean,
@as("TargetVersion") targetVersion: option<elasticsearchVersionString>,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("PerformCheckOnly") performCheckOnly: amazonawsBoolean,
@as("TargetVersion") targetVersion: elasticsearchVersionString,
@as("DomainName") domainName: domainName
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "UpgradeElasticsearchDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseReservedElasticsearchInstanceOffering = {
  type t;
  type request = {
@as("InstanceCount") instanceCount: instanceCount,
@as("ReservationName") reservationName: option<reservationToken>,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: option<gUID>
}
  type response = {
@as("ReservationName") reservationName: reservationToken,
@as("ReservedElasticsearchInstanceId") reservedElasticsearchInstanceId: gUID
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "PurchaseReservedElasticsearchInstanceOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUpgradeStatus = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("UpgradeName") upgradeName: upgradeName,
@as("StepStatus") stepStatus: upgradeStatus,
@as("UpgradeStep") upgradeStep: upgradeStep
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "GetUpgradeStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteElasticsearchServiceRole = {
  type t;
  
  
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<unit>) => t = "DeleteElasticsearchServiceRoleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartElasticsearchServiceSoftwareUpdate = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("ServiceSoftwareOptions") serviceSoftwareOptions: serviceSoftwareOptions
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "StartElasticsearchServiceSoftwareUpdateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTags = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<stringList>,
@as("ARN") aRN: option<aRN>
}
  
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListElasticsearchVersions = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ElasticsearchVersions") elasticsearchVersions: elasticsearchVersionList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "ListElasticsearchVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListElasticsearchInstanceTypes = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("DomainName") domainName: domainName,
@as("ElasticsearchVersion") elasticsearchVersion: option<elasticsearchVersionString>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ElasticsearchInstanceTypes") elasticsearchInstanceTypes: elasticsearchInstanceTypeList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "ListElasticsearchInstanceTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOutboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("ConnectionAlias") connectionAlias: option<connectionAlias>,
@as("DestinationDomainInfo") destinationDomainInfo: option<domainInformation>,
@as("SourceDomainInfo") sourceDomainInfo: option<domainInformation>
}
  type response = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: crossClusterSearchConnectionId,
@as("ConnectionStatus") connectionStatus: outboundCrossClusterSearchConnectionStatus,
@as("ConnectionAlias") connectionAlias: connectionAlias,
@as("DestinationDomainInfo") destinationDomainInfo: domainInformation,
@as("SourceDomainInfo") sourceDomainInfo: domainInformation
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "CreateOutboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelElasticsearchServiceSoftwareUpdate = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("ServiceSoftwareOptions") serviceSoftwareOptions: serviceSoftwareOptions
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "CancelElasticsearchServiceSoftwareUpdateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePackage = {
  type t;
  type request = {
@as("CommitMessage") commitMessage: commitMessage,
@as("PackageDescription") packageDescription: packageDescription,
@as("PackageSource") packageSource: option<packageSource>,
@as("PackageID") packageID: option<packageID>
}
  type response = {
@as("PackageDetails") packageDetails: packageDetails
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "UpdatePackageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectInboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: inboundCrossClusterSearchConnection
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "RejectInboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTags = {
  type t;
  type request = {
@as("ARN") aRN: option<aRN>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "ListTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomainNames = {
  type t;
  
  type response = {
@as("DomainNames") domainNames: domainInfoList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<unit>) => t = "ListDomainNamesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPackageVersionHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("PackageID") packageID: option<packageID>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PackageVersionHistoryList") packageVersionHistoryList: packageVersionHistoryList,
@as("PackageID") packageID: packageID
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "GetPackageVersionHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DissociatePackage = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
@as("PackageID") packageID: option<packageID>
}
  type response = {
@as("DomainPackageDetails") domainPackageDetails: domainPackageDetails
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DissociatePackageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePackage = {
  type t;
  type request = {
@as("PackageID") packageID: option<packageID>
}
  type response = {
@as("PackageDetails") packageDetails: packageDetails
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DeletePackageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteOutboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: outboundCrossClusterSearchConnection
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DeleteOutboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: inboundCrossClusterSearchConnection
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DeleteInboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePackage = {
  type t;
  type request = {
@as("PackageSource") packageSource: option<packageSource>,
@as("PackageDescription") packageDescription: packageDescription,
@as("PackageType") packageType: option<packageType>,
@as("PackageName") packageName: option<packageName>
}
  type response = {
@as("PackageDetails") packageDetails: packageDetails
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "CreatePackageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociatePackage = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
@as("PackageID") packageID: option<packageID>
}
  type response = {
@as("DomainPackageDetails") domainPackageDetails: domainPackageDetails
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "AssociatePackageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("TagList") tagList: option<tagList>,
@as("ARN") aRN: option<aRN>
}
  
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "AddTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AcceptInboundCrossClusterSearchConnection = {
  type t;
  type request = {
@as("CrossClusterSearchConnectionId") crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>
}
  type response = {
@as("CrossClusterSearchConnection") crossClusterSearchConnection: inboundCrossClusterSearchConnection
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "AcceptInboundCrossClusterSearchConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPackagesForDomain = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DomainPackageDetailsList") domainPackageDetailsList: domainPackageDetailsList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "ListPackagesForDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomainsForPackage = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("PackageID") packageID: option<packageID>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DomainPackageDetailsList") domainPackageDetailsList: domainPackageDetailsList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "ListDomainsForPackageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCompatibleElasticsearchVersions = {
  type t;
  type request = {
@as("DomainName") domainName: domainName
}
  type response = {
@as("CompatibleElasticsearchVersions") compatibleElasticsearchVersions: compatibleElasticsearchVersionsList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "GetCompatibleElasticsearchVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePackages = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Filters") filters: describePackagesFilterList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PackageDetailsList") packageDetailsList: packageDetailsList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribePackagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOutboundCrossClusterSearchConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("CrossClusterSearchConnections") crossClusterSearchConnections: outboundCrossClusterSearchConnections
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeOutboundCrossClusterSearchConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInboundCrossClusterSearchConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Filters") filters: filterList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("CrossClusterSearchConnections") crossClusterSearchConnections: inboundCrossClusterSearchConnections
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeInboundCrossClusterSearchConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedElasticsearchInstances = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ReservedElasticsearchInstanceId") reservedElasticsearchInstanceId: gUID
}
  type response = {
@as("ReservedElasticsearchInstances") reservedElasticsearchInstances: reservedElasticsearchInstanceList,
@as("NextToken") nextToken: amazonawsString
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedElasticsearchInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedElasticsearchInstanceOfferings = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("ReservedElasticsearchInstanceOfferingId") reservedElasticsearchInstanceOfferingId: gUID
}
  type response = {
@as("ReservedElasticsearchInstanceOfferings") reservedElasticsearchInstanceOfferings: reservedElasticsearchInstanceOfferingList,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedElasticsearchInstanceOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainStatus") domainStatus: option<elasticsearchDomainStatus>
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeElasticsearchDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomainAutoTunes = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AutoTunes") autoTunes: autoTuneList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeDomainAutoTunesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteElasticsearchDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainStatus") domainStatus: elasticsearchDomainStatus
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DeleteElasticsearchDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateElasticsearchDomain = {
  type t;
  type request = {
@as("TagList") tagList: tagList,
@as("AutoTuneOptions") autoTuneOptions: autoTuneOptionsInput,
@as("AdvancedSecurityOptions") advancedSecurityOptions: advancedSecurityOptionsInput,
@as("DomainEndpointOptions") domainEndpointOptions: domainEndpointOptions,
@as("LogPublishingOptions") logPublishingOptions: logPublishingOptions,
@as("AdvancedOptions") advancedOptions: advancedOptions,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: nodeToNodeEncryptionOptions,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: encryptionAtRestOptions,
@as("CognitoOptions") cognitoOptions: cognitoOptions,
@as("VPCOptions") vPCOptions: vPCOptions,
@as("SnapshotOptions") snapshotOptions: snapshotOptions,
@as("AccessPolicies") accessPolicies: policyDocument,
@as("EBSOptions") eBSOptions: eBSOptions,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: elasticsearchClusterConfig,
@as("ElasticsearchVersion") elasticsearchVersion: elasticsearchVersionString,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainStatus") domainStatus: elasticsearchDomainStatus
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "CreateElasticsearchDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUpgradeHistory = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("UpgradeHistories") upgradeHistories: upgradeHistoryList
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "GetUpgradeHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchDomains = {
  type t;
  type request = {
@as("DomainNames") domainNames: option<domainNameList>
}
  type response = {
@as("DomainStatusList") domainStatusList: option<elasticsearchDomainStatusList>
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeElasticsearchDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateElasticsearchDomainConfig = {
  type t;
  type request = {
@as("AutoTuneOptions") autoTuneOptions: autoTuneOptions,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: encryptionAtRestOptions,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: nodeToNodeEncryptionOptions,
@as("AdvancedSecurityOptions") advancedSecurityOptions: advancedSecurityOptionsInput,
@as("DomainEndpointOptions") domainEndpointOptions: domainEndpointOptions,
@as("LogPublishingOptions") logPublishingOptions: logPublishingOptions,
@as("AccessPolicies") accessPolicies: policyDocument,
@as("AdvancedOptions") advancedOptions: advancedOptions,
@as("CognitoOptions") cognitoOptions: cognitoOptions,
@as("VPCOptions") vPCOptions: vPCOptions,
@as("SnapshotOptions") snapshotOptions: snapshotOptions,
@as("EBSOptions") eBSOptions: eBSOptions,
@as("ElasticsearchClusterConfig") elasticsearchClusterConfig: elasticsearchClusterConfig,
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainConfig") domainConfig: option<elasticsearchDomainConfig>
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "UpdateElasticsearchDomainConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchDomainConfig = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>
}
  type response = {
@as("DomainConfig") domainConfig: option<elasticsearchDomainConfig>
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeElasticsearchDomainConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeElasticsearchInstanceTypeLimits = {
  type t;
  type request = {
@as("ElasticsearchVersion") elasticsearchVersion: option<elasticsearchVersionString>,
@as("InstanceType") instanceType: option<eSPartitionInstanceType>,
@as("DomainName") domainName: domainName
}
  type response = {
@as("LimitsByRole") limitsByRole: limitsByRole
}
  @module("@aws-sdk/client-es") @new external new_: (Js.Promise.t<request>) => t = "DescribeElasticsearchInstanceTypeLimitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
