type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type writeForwardingStatus = [@as("unknown") #unknown | @as("disabling") #disabling | @as("enabling") #enabling | @as("disabled") #disabled | @as("enabled") #enabled]
type targetType = [@as("TRACKED_CLUSTER") #TRACKED_CLUSTER | @as("RDS_SERVERLESS_ENDPOINT") #RDS_SERVERLESS_ENDPOINT | @as("RDS_INSTANCE") #RDS_INSTANCE]
type targetState = [@as("UNAVAILABLE") #UNAVAILABLE | @as("AVAILABLE") #AVAILABLE | @as("REGISTERING") #REGISTERING]
type targetRole = [@as("UNKNOWN") #UNKNOWN | @as("READ_ONLY") #READ_ONLY | @as("READ_WRITE") #READ_WRITE]
type targetHealthReason = [@as("INVALID_REPLICATION_STATE") #INVALID_REPLICATION_STATE | @as("PENDING_PROXY_CAPACITY") #PENDING_PROXY_CAPACITY | @as("AUTH_FAILURE") #AUTH_FAILURE | @as("CONNECTION_FAILED") #CONNECTION_FAILED | @as("UNREACHABLE") #UNREACHABLE]
type tStamp = Js.Date.t;
type stringSensitive = string
type amazonawsString = string
type sourceType = [@as("db-cluster-snapshot") #db_cluster_snapshot | @as("db-cluster") #db_cluster | @as("db-snapshot") #db_snapshot | @as("db-security-group") #db_security_group | @as("db-parameter-group") #db_parameter_group | @as("db-instance") #db_instance]
type replicaMode = [@as("mounted") #mounted | @as("open-read-only") #open_read_only]
type maxRecords = int;
type longOptional = float;
type amazonawsLong = float;
type integerOptional = int;
type amazonawsInteger = int;
type iAMAuthMode = [@as("REQUIRED") #REQUIRED | @as("DISABLED") #DISABLED]
type globalClusterIdentifier = string
type failoverStatus = [@as("cancelling") #cancelling | @as("failing-over") #failing_over | @as("pending") #pending]
type exceptionMessage = string
type engineFamily = [@as("POSTGRESQL") #POSTGRESQL | @as("MYSQL") #MYSQL]
type doubleOptional = float;
type amazonawsDouble = float;
type dBProxyStatus = [@as("reactivating") #reactivating | @as("suspending") #suspending | @as("suspended") #suspended | @as("deleting") #deleting | @as("creating") #creating | @as("insufficient-resource-limits") #insufficient_resource_limits | @as("incompatible-network") #incompatible_network | @as("modifying") #modifying | @as("available") #available]
type dBProxyName = string
type dBProxyEndpointTargetRole = [@as("READ_ONLY") #READ_ONLY | @as("READ_WRITE") #READ_WRITE]
type dBProxyEndpointStatus = [@as("deleting") #deleting | @as("creating") #creating | @as("insufficient-resource-limits") #insufficient_resource_limits | @as("incompatible-network") #incompatible_network | @as("modifying") #modifying | @as("available") #available]
type dBProxyEndpointName = string
type dBClusterIdentifier = string
type booleanOptional = bool;
type amazonawsBoolean = bool;
type awsBackupRecoveryPointArn = string
type authScheme = [@as("SECRETS") #SECRETS]
type applyMethod = [@as("pending-reboot") #pending_reboot | @as("immediate") #immediate]
type activityStreamStatus = [@as("stopping") #stopping | @as("started") #started | @as("starting") #starting | @as("stopped") #stopped]
type activityStreamMode = [@as("async") #async | @as("sync") #sync]
type vpnDetails = {
@as("VpnState") vpnState: amazonawsString,
@as("VpnName") vpnName: amazonawsString,
@as("VpnPSK") vpnPSK: stringSensitive,
@as("VpnGatewayIp") vpnGatewayIp: amazonawsString,
@as("VpnTunnelOriginatorIP") vpnTunnelOriginatorIP: amazonawsString,
@as("VpnId") vpnId: amazonawsString
}
type vpcSecurityGroupMembership = {
@as("Status") status: amazonawsString,
@as("VpcSecurityGroupId") vpcSecurityGroupId: amazonawsString
}
type vpcSecurityGroupIdList = array<amazonawsString>
type userAuthConfigInfo = {
@as("IAMAuth") iAMAuth: iAMAuthMode,
@as("SecretArn") secretArn: amazonawsString,
@as("AuthScheme") authScheme: authScheme,
@as("UserName") userName: amazonawsString,
@as("Description") description: amazonawsString
}
type userAuthConfig = {
@as("IAMAuth") iAMAuth: iAMAuthMode,
@as("SecretArn") secretArn: amazonawsString,
@as("AuthScheme") authScheme: authScheme,
@as("UserName") userName: amazonawsString,
@as("Description") description: amazonawsString
}
type timezone = {
@as("TimezoneName") timezoneName: amazonawsString
}
type targetHealth = {
@as("Description") description: amazonawsString,
@as("Reason") reason: targetHealthReason,
@as("State") state: targetState
}
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type subnetIdentifierList = array<amazonawsString>
type stringList = array<amazonawsString>
type sourceRegion = {
@as("SupportsDBInstanceAutomatedBackupsReplication") supportsDBInstanceAutomatedBackupsReplication: amazonawsBoolean,
@as("Status") status: amazonawsString,
@as("Endpoint") endpoint: amazonawsString,
@as("RegionName") regionName: amazonawsString
}
type sourceIdsList = array<amazonawsString>
type scalingConfigurationInfo = {
@as("TimeoutAction") timeoutAction: amazonawsString,
@as("SecondsUntilAutoPause") secondsUntilAutoPause: integerOptional,
@as("AutoPause") autoPause: booleanOptional,
@as("MaxCapacity") maxCapacity: integerOptional,
@as("MinCapacity") minCapacity: integerOptional
}
type scalingConfiguration = {
@as("TimeoutAction") timeoutAction: amazonawsString,
@as("SecondsUntilAutoPause") secondsUntilAutoPause: integerOptional,
@as("AutoPause") autoPause: booleanOptional,
@as("MaxCapacity") maxCapacity: integerOptional,
@as("MinCapacity") minCapacity: integerOptional
}
type restoreWindow = {
@as("LatestTime") latestTime: tStamp,
@as("EarliestTime") earliestTime: tStamp
}
type recurringCharge = {
@as("RecurringChargeFrequency") recurringChargeFrequency: amazonawsString,
@as("RecurringChargeAmount") recurringChargeAmount: amazonawsDouble
}
type readersArnList = array<amazonawsString>
type readReplicaIdentifierList = array<amazonawsString>
type readReplicaDBInstanceIdentifierList = array<amazonawsString>
type readReplicaDBClusterIdentifierList = array<amazonawsString>
type range = {
@as("Step") step: integerOptional,
@as("To") to: amazonawsInteger,
@as("From") from: amazonawsInteger
}
type processorFeature = {
@as("Value") value: amazonawsString,
@as("Name") name: amazonawsString
}
type pendingMaintenanceAction = {
@as("Description") description: amazonawsString,
@as("CurrentApplyDate") currentApplyDate: tStamp,
@as("OptInStatus") optInStatus: amazonawsString,
@as("ForcedApplyDate") forcedApplyDate: tStamp,
@as("AutoAppliedAfterDate") autoAppliedAfterDate: tStamp,
@as("Action") action: amazonawsString
}
type outpost = {
@as("Arn") arn: amazonawsString
}
type optionsDependedOn = array<amazonawsString>
type optionsConflictsWith = array<amazonawsString>
type optionVersion = {
@as("IsDefault") isDefault: amazonawsBoolean,
@as("Version") version: amazonawsString
}
type optionSetting = {
@as("IsCollection") isCollection: amazonawsBoolean,
@as("IsModifiable") isModifiable: amazonawsBoolean,
@as("AllowedValues") allowedValues: amazonawsString,
@as("DataType") dataType: amazonawsString,
@as("ApplyType") applyType: amazonawsString,
@as("Description") description: amazonawsString,
@as("DefaultValue") defaultValue: amazonawsString,
@as("Value") value: amazonawsString,
@as("Name") name: amazonawsString
}
type optionNamesList = array<amazonawsString>
type optionGroupMembership = {
@as("Status") status: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString
}
type minimumEngineVersionPerAllowedValue = {
@as("MinimumEngineVersion") minimumEngineVersion: amazonawsString,
@as("AllowedValue") allowedValue: amazonawsString
}
type logTypeList = array<amazonawsString>
type keyList = array<amazonawsString>
type installationMediaFailureCause = {
@as("Message") message: amazonawsString
}
type iPRange = {
@as("CIDRIP") cIDRIP: amazonawsString,
@as("Status") status: amazonawsString
}
type filterValueList = array<amazonawsString>
type featureNameList = array<amazonawsString>
type failoverState = {
@as("ToDbClusterArn") toDbClusterArn: amazonawsString,
@as("FromDbClusterArn") fromDbClusterArn: amazonawsString,
@as("Status") status: failoverStatus
}
type eventCategoriesList = array<amazonawsString>
type engineModeList = array<amazonawsString>
type endpoint = {
@as("HostedZoneId") hostedZoneId: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Address") address: amazonawsString
}
type eC2SecurityGroup = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: amazonawsString,
@as("EC2SecurityGroupId") eC2SecurityGroupId: amazonawsString,
@as("EC2SecurityGroupName") eC2SecurityGroupName: amazonawsString,
@as("Status") status: amazonawsString
}
type doubleRange = {
@as("To") to: amazonawsDouble,
@as("From") from: amazonawsDouble
}
type domainMembership = {
@as("IAMRoleName") iAMRoleName: amazonawsString,
@as("FQDN") fQDN: amazonawsString,
@as("Status") status: amazonawsString,
@as("Domain") domain: amazonawsString
}
type describeDBLogFilesDetails = {
@as("Size") size: amazonawsLong,
@as("LastWritten") lastWritten: amazonawsLong,
@as("LogFileName") logFileName: amazonawsString
}
type dBSecurityGroupNameList = array<amazonawsString>
type dBSecurityGroupMembership = {
@as("Status") status: amazonawsString,
@as("DBSecurityGroupName") dBSecurityGroupName: amazonawsString
}
type dBParameterGroupStatus = {
@as("ParameterApplyStatus") parameterApplyStatus: amazonawsString,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString
}
type dBParameterGroup = {
@as("DBParameterGroupArn") dBParameterGroupArn: amazonawsString,
@as("Description") description: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString
}
type dBInstanceStatusInfo = {
@as("Message") message: amazonawsString,
@as("Status") status: amazonawsString,
@as("Normal") normal: amazonawsBoolean,
@as("StatusType") statusType: amazonawsString
}
type dBInstanceRole = {
@as("Status") status: amazonawsString,
@as("FeatureName") featureName: amazonawsString,
@as("RoleArn") roleArn: amazonawsString
}
type dBInstanceAutomatedBackupsReplication = {
@as("DBInstanceAutomatedBackupsArn") dBInstanceAutomatedBackupsArn: amazonawsString
}
type dBClusterRole = {
@as("FeatureName") featureName: amazonawsString,
@as("Status") status: amazonawsString,
@as("RoleArn") roleArn: amazonawsString
}
type dBClusterParameterGroup = {
@as("DBClusterParameterGroupArn") dBClusterParameterGroupArn: amazonawsString,
@as("Description") description: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString
}
type dBClusterOptionGroupStatus = {
@as("Status") status: amazonawsString,
@as("DBClusterOptionGroupName") dBClusterOptionGroupName: amazonawsString
}
type dBClusterMember = {
@as("PromotionTier") promotionTier: integerOptional,
@as("DBClusterParameterGroupStatus") dBClusterParameterGroupStatus: amazonawsString,
@as("IsClusterWriter") isClusterWriter: amazonawsBoolean,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString
}
type dBClusterBacktrack = {
@as("Status") status: amazonawsString,
@as("BacktrackRequestCreationTime") backtrackRequestCreationTime: tStamp,
@as("BacktrackedFrom") backtrackedFrom: tStamp,
@as("BacktrackTo") backtrackTo: tStamp,
@as("BacktrackIdentifier") backtrackIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString
}
type characterSet = {
@as("CharacterSetDescription") characterSetDescription: amazonawsString,
@as("CharacterSetName") characterSetName: amazonawsString
}
type certificate = {
@as("CustomerOverrideValidTill") customerOverrideValidTill: tStamp,
@as("CustomerOverride") customerOverride: booleanOptional,
@as("CertificateArn") certificateArn: amazonawsString,
@as("ValidTill") validTill: tStamp,
@as("ValidFrom") validFrom: tStamp,
@as("Thumbprint") thumbprint: amazonawsString,
@as("CertificateType") certificateType: amazonawsString,
@as("CertificateIdentifier") certificateIdentifier: amazonawsString
}
type availableProcessorFeature = {
@as("AllowedValues") allowedValues: amazonawsString,
@as("DefaultValue") defaultValue: amazonawsString,
@as("Name") name: amazonawsString
}
type availabilityZones = array<amazonawsString>
type availabilityZone = {
@as("Name") name: amazonawsString
}
type attributeValueList = array<amazonawsString>
type accountQuota = {
@as("Max") max: amazonawsLong,
@as("Used") used: amazonawsLong,
@as("AccountQuotaName") accountQuotaName: amazonawsString
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type userAuthConfigList = array<userAuthConfig>
type userAuthConfigInfoList = array<userAuthConfigInfo>
type upgradeTarget = {
@as("SupportsGlobalDatabases") supportsGlobalDatabases: booleanOptional,
@as("SupportsParallelQuery") supportsParallelQuery: booleanOptional,
@as("SupportedEngineModes") supportedEngineModes: engineModeList,
@as("IsMajorVersionUpgrade") isMajorVersionUpgrade: amazonawsBoolean,
@as("AutoUpgrade") autoUpgrade: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type tagList = array<tag>
type supportedTimezonesList = array<timezone>
type supportedCharacterSetsList = array<characterSet>
type subnet = {
@as("SubnetStatus") subnetStatus: amazonawsString,
@as("SubnetOutpost") subnetOutpost: outpost,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: availabilityZone,
@as("SubnetIdentifier") subnetIdentifier: amazonawsString
}
type sourceRegionList = array<sourceRegion>
type recurringChargeList = array<recurringCharge>
type rangeList = array<range>
type processorFeatureList = array<processorFeature>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type pendingCloudwatchLogsExports = {
@as("LogTypesToDisable") logTypesToDisable: logTypeList,
@as("LogTypesToEnable") logTypesToEnable: logTypeList
}
type parameter = {
@as("SupportedEngineModes") supportedEngineModes: engineModeList,
@as("ApplyMethod") applyMethod: applyMethod,
@as("MinimumEngineVersion") minimumEngineVersion: amazonawsString,
@as("IsModifiable") isModifiable: amazonawsBoolean,
@as("AllowedValues") allowedValues: amazonawsString,
@as("DataType") dataType: amazonawsString,
@as("ApplyType") applyType: amazonawsString,
@as("Source") source: amazonawsString,
@as("Description") description: amazonawsString,
@as("ParameterValue") parameterValue: amazonawsString,
@as("ParameterName") parameterName: amazonawsString
}
type optionSettingsList = array<optionSetting>
type optionSettingConfigurationList = array<optionSetting>
type optionGroupOptionVersionsList = array<optionVersion>
type optionGroupMembershipList = array<optionGroupMembership>
type minimumEngineVersionPerAllowedValueList = array<minimumEngineVersionPerAllowedValue>
type installationMedia = {
@as("FailureCause") failureCause: installationMediaFailureCause,
@as("Status") status: amazonawsString,
@as("OSInstallationMediaPath") oSInstallationMediaPath: amazonawsString,
@as("EngineInstallationMediaPath") engineInstallationMediaPath: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("CustomAvailabilityZoneId") customAvailabilityZoneId: amazonawsString,
@as("InstallationMediaId") installationMediaId: amazonawsString
}
type iPRangeList = array<iPRange>
type globalClusterMember = {
@as("GlobalWriteForwardingStatus") globalWriteForwardingStatus: writeForwardingStatus,
@as("IsWriter") isWriter: amazonawsBoolean,
@as("Readers") readers: readersArnList,
@as("DBClusterArn") dBClusterArn: amazonawsString
}
type filter = {
@as("Values") values: option<filterValueList>,
@as("Name") name: option<amazonawsString>
}
type exportTask = {
@as("WarningMessage") warningMessage: amazonawsString,
@as("FailureCause") failureCause: amazonawsString,
@as("TotalExtractedDataInGB") totalExtractedDataInGB: amazonawsInteger,
@as("PercentProgress") percentProgress: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("IamRoleArn") iamRoleArn: amazonawsString,
@as("S3Prefix") s3Prefix: amazonawsString,
@as("S3Bucket") s3Bucket: amazonawsString,
@as("TaskEndTime") taskEndTime: tStamp,
@as("TaskStartTime") taskStartTime: tStamp,
@as("SnapshotTime") snapshotTime: tStamp,
@as("ExportOnly") exportOnly: stringList,
@as("SourceArn") sourceArn: amazonawsString,
@as("ExportTaskIdentifier") exportTaskIdentifier: amazonawsString
}
type eventSubscription = {
@as("EventSubscriptionArn") eventSubscriptionArn: amazonawsString,
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
type eventCategoriesMap = {
@as("EventCategories") eventCategories: eventCategoriesList,
@as("SourceType") sourceType: amazonawsString
}
type event = {
@as("SourceArn") sourceArn: amazonawsString,
@as("Date") date: tStamp,
@as("EventCategories") eventCategories: eventCategoriesList,
@as("Message") message: amazonawsString,
@as("SourceType") sourceType: sourceType,
@as("SourceIdentifier") sourceIdentifier: amazonawsString
}
type eC2SecurityGroupList = array<eC2SecurityGroup>
type doubleRangeList = array<doubleRange>
type domainMembershipList = array<domainMembership>
type describeDBLogFilesList = array<describeDBLogFilesDetails>
type dBSnapshotAttribute = {
@as("AttributeValues") attributeValues: attributeValueList,
@as("AttributeName") attributeName: amazonawsString
}
type dBSecurityGroupMembershipList = array<dBSecurityGroupMembership>
type dBProxyTarget = {
@as("TargetHealth") targetHealth: targetHealth,
@as("Role") role: targetRole,
@as("Type") type_: targetType,
@as("Port") port: amazonawsInteger,
@as("RdsResourceId") rdsResourceId: amazonawsString,
@as("TrackedClusterId") trackedClusterId: amazonawsString,
@as("Endpoint") endpoint: amazonawsString,
@as("TargetArn") targetArn: amazonawsString
}
type dBProxyEndpoint = {
@as("IsDefault") isDefault: amazonawsBoolean,
@as("TargetRole") targetRole: dBProxyEndpointTargetRole,
@as("CreatedDate") createdDate: tStamp,
@as("Endpoint") endpoint: amazonawsString,
@as("VpcSubnetIds") vpcSubnetIds: stringList,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: stringList,
@as("VpcId") vpcId: amazonawsString,
@as("Status") status: dBProxyEndpointStatus,
@as("DBProxyName") dBProxyName: amazonawsString,
@as("DBProxyEndpointArn") dBProxyEndpointArn: amazonawsString,
@as("DBProxyEndpointName") dBProxyEndpointName: amazonawsString
}
type dBParameterGroupStatusList = array<dBParameterGroupStatus>
type dBParameterGroupList = array<dBParameterGroup>
type dBInstanceStatusInfoList = array<dBInstanceStatusInfo>
type dBInstanceRoles = array<dBInstanceRole>
type dBInstanceAutomatedBackupsReplicationList = array<dBInstanceAutomatedBackupsReplication>
type dBClusterSnapshotAttribute = {
@as("AttributeValues") attributeValues: attributeValueList,
@as("AttributeName") attributeName: amazonawsString
}
type dBClusterRoles = array<dBClusterRole>
type dBClusterParameterGroupList = array<dBClusterParameterGroup>
type dBClusterOptionGroupMemberships = array<dBClusterOptionGroupStatus>
type dBClusterMemberList = array<dBClusterMember>
type dBClusterEndpoint = {
@as("DBClusterEndpointArn") dBClusterEndpointArn: amazonawsString,
@as("ExcludedMembers") excludedMembers: stringList,
@as("StaticMembers") staticMembers: stringList,
@as("CustomEndpointType") customEndpointType: amazonawsString,
@as("EndpointType") endpointType: amazonawsString,
@as("Status") status: amazonawsString,
@as("Endpoint") endpoint: amazonawsString,
@as("DBClusterEndpointResourceIdentifier") dBClusterEndpointResourceIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("DBClusterEndpointIdentifier") dBClusterEndpointIdentifier: amazonawsString
}
type dBClusterBacktrackList = array<dBClusterBacktrack>
type customAvailabilityZone = {
@as("VpnDetails") vpnDetails: vpnDetails,
@as("CustomAvailabilityZoneStatus") customAvailabilityZoneStatus: amazonawsString,
@as("CustomAvailabilityZoneName") customAvailabilityZoneName: amazonawsString,
@as("CustomAvailabilityZoneId") customAvailabilityZoneId: amazonawsString
}
type connectionPoolConfigurationInfo = {
@as("InitQuery") initQuery: amazonawsString,
@as("SessionPinningFilters") sessionPinningFilters: stringList,
@as("ConnectionBorrowTimeout") connectionBorrowTimeout: amazonawsInteger,
@as("MaxIdleConnectionsPercent") maxIdleConnectionsPercent: amazonawsInteger,
@as("MaxConnectionsPercent") maxConnectionsPercent: amazonawsInteger
}
type connectionPoolConfiguration = {
@as("InitQuery") initQuery: amazonawsString,
@as("SessionPinningFilters") sessionPinningFilters: stringList,
@as("ConnectionBorrowTimeout") connectionBorrowTimeout: integerOptional,
@as("MaxIdleConnectionsPercent") maxIdleConnectionsPercent: integerOptional,
@as("MaxConnectionsPercent") maxConnectionsPercent: integerOptional
}
type cloudwatchLogsExportConfiguration = {
@as("DisableLogTypes") disableLogTypes: logTypeList,
@as("EnableLogTypes") enableLogTypes: logTypeList
}
type certificateList = array<certificate>
type availableProcessorFeatureList = array<availableProcessorFeature>
type availabilityZoneList = array<availabilityZone>
type accountQuotaList = array<accountQuota>
type validUpgradeTargetList = array<upgradeTarget>
type validStorageOptions = {
@as("SupportsStorageAutoscaling") supportsStorageAutoscaling: amazonawsBoolean,
@as("IopsToStorageRatio") iopsToStorageRatio: doubleRangeList,
@as("ProvisionedIops") provisionedIops: rangeList,
@as("StorageSize") storageSize: rangeList,
@as("StorageType") storageType: amazonawsString
}
type targetList = array<dBProxyTarget>
type subnetList = array<subnet>
type resourcePendingMaintenanceActions = {
@as("PendingMaintenanceActionDetails") pendingMaintenanceActionDetails: pendingMaintenanceActionDetails,
@as("ResourceIdentifier") resourceIdentifier: amazonawsString
}
type reservedDBInstancesOffering = {
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("MultiAZ") multiAZ: amazonawsBoolean,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("CurrencyCode") currencyCode: amazonawsString,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: amazonawsString
}
type reservedDBInstance = {
@as("LeaseId") leaseId: amazonawsString,
@as("ReservedDBInstanceArn") reservedDBInstanceArn: amazonawsString,
@as("RecurringCharges") recurringCharges: recurringChargeList,
@as("State") state: amazonawsString,
@as("MultiAZ") multiAZ: amazonawsBoolean,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("DBInstanceCount") dBInstanceCount: amazonawsInteger,
@as("CurrencyCode") currencyCode: amazonawsString,
@as("UsagePrice") usagePrice: amazonawsDouble,
@as("FixedPrice") fixedPrice: amazonawsDouble,
@as("Duration") duration: amazonawsInteger,
@as("StartTime") startTime: tStamp,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: amazonawsString,
@as("ReservedDBInstanceId") reservedDBInstanceId: amazonawsString
}
type pendingModifiedValues = {
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: booleanOptional,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("PendingCloudwatchLogsExports") pendingCloudwatchLogsExports: pendingCloudwatchLogsExports,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("CACertificateIdentifier") cACertificateIdentifier: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString,
@as("Iops") iops: integerOptional,
@as("LicenseModel") licenseModel: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("Port") port: integerOptional,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("AllocatedStorage") allocatedStorage: integerOptional,
@as("DBInstanceClass") dBInstanceClass: amazonawsString
}
type parametersList = array<parameter>
type orderableDBInstanceOption = {
@as("SupportsGlobalDatabases") supportsGlobalDatabases: amazonawsBoolean,
@as("OutpostCapable") outpostCapable: amazonawsBoolean,
@as("SupportsKerberosAuthentication") supportsKerberosAuthentication: booleanOptional,
@as("SupportsStorageAutoscaling") supportsStorageAutoscaling: booleanOptional,
@as("SupportedEngineModes") supportedEngineModes: engineModeList,
@as("AvailableProcessorFeatures") availableProcessorFeatures: availableProcessorFeatureList,
@as("MaxIopsPerGib") maxIopsPerGib: doubleOptional,
@as("MinIopsPerGib") minIopsPerGib: doubleOptional,
@as("MaxIopsPerDbInstance") maxIopsPerDbInstance: integerOptional,
@as("MinIopsPerDbInstance") minIopsPerDbInstance: integerOptional,
@as("MaxStorageSize") maxStorageSize: integerOptional,
@as("MinStorageSize") minStorageSize: integerOptional,
@as("SupportsPerformanceInsights") supportsPerformanceInsights: amazonawsBoolean,
@as("SupportsIAMDatabaseAuthentication") supportsIAMDatabaseAuthentication: amazonawsBoolean,
@as("SupportsEnhancedMonitoring") supportsEnhancedMonitoring: amazonawsBoolean,
@as("SupportsIops") supportsIops: amazonawsBoolean,
@as("StorageType") storageType: amazonawsString,
@as("SupportsStorageEncryption") supportsStorageEncryption: amazonawsBoolean,
@as("Vpc") vpc: amazonawsBoolean,
@as("ReadReplicaCapable") readReplicaCapable: amazonawsBoolean,
@as("MultiAZCapable") multiAZCapable: amazonawsBoolean,
@as("AvailabilityZones") availabilityZones: availabilityZoneList,
@as("AvailabilityZoneGroup") availabilityZoneGroup: amazonawsString,
@as("LicenseModel") licenseModel: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type optionGroupOptionSetting = {
@as("MinimumEngineVersionPerAllowedValue") minimumEngineVersionPerAllowedValue: minimumEngineVersionPerAllowedValueList,
@as("IsRequired") isRequired: amazonawsBoolean,
@as("IsModifiable") isModifiable: amazonawsBoolean,
@as("AllowedValues") allowedValues: amazonawsString,
@as("ApplyType") applyType: amazonawsString,
@as("DefaultValue") defaultValue: amazonawsString,
@as("SettingDescription") settingDescription: amazonawsString,
@as("SettingName") settingName: amazonawsString
}
type optionConfiguration = {
@as("OptionSettings") optionSettings: optionSettingsList,
@as("VpcSecurityGroupMemberships") vpcSecurityGroupMemberships: vpcSecurityGroupIdList,
@as("DBSecurityGroupMemberships") dBSecurityGroupMemberships: dBSecurityGroupNameList,
@as("OptionVersion") optionVersion: amazonawsString,
@as("Port") port: integerOptional,
@as("OptionName") optionName: option<amazonawsString>
}
type option = {
@as("VpcSecurityGroupMemberships") vpcSecurityGroupMemberships: vpcSecurityGroupMembershipList,
@as("DBSecurityGroupMemberships") dBSecurityGroupMemberships: dBSecurityGroupMembershipList,
@as("OptionSettings") optionSettings: optionSettingConfigurationList,
@as("OptionVersion") optionVersion: amazonawsString,
@as("Port") port: integerOptional,
@as("Permanent") permanent: amazonawsBoolean,
@as("Persistent") persistent: amazonawsBoolean,
@as("OptionDescription") optionDescription: amazonawsString,
@as("OptionName") optionName: amazonawsString
}
type installationMediaList = array<installationMedia>
type globalClusterMemberList = array<globalClusterMember>
type filterList = array<filter>
type exportTasksList = array<exportTask>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
type dBSnapshotAttributeList = array<dBSnapshotAttribute>
type dBSnapshot = {
@as("TagList") tagList: tagList,
@as("DbiResourceId") dbiResourceId: amazonawsString,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("Timezone") timezone: amazonawsString,
@as("DBSnapshotArn") dBSnapshotArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("TdeCredentialArn") tdeCredentialArn: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("SourceDBSnapshotIdentifier") sourceDBSnapshotIdentifier: amazonawsString,
@as("SourceRegion") sourceRegion: amazonawsString,
@as("PercentProgress") percentProgress: amazonawsInteger,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("SnapshotType") snapshotType: amazonawsString,
@as("LicenseModel") licenseModel: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("InstanceCreateTime") instanceCreateTime: tStamp,
@as("VpcId") vpcId: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("Engine") engine: amazonawsString,
@as("SnapshotCreateTime") snapshotCreateTime: tStamp,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString,
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: amazonawsString
}
type dBSecurityGroup = {
@as("DBSecurityGroupArn") dBSecurityGroupArn: amazonawsString,
@as("IPRanges") iPRanges: iPRangeList,
@as("EC2SecurityGroups") eC2SecurityGroups: eC2SecurityGroupList,
@as("VpcId") vpcId: amazonawsString,
@as("DBSecurityGroupDescription") dBSecurityGroupDescription: amazonawsString,
@as("DBSecurityGroupName") dBSecurityGroupName: amazonawsString,
@as("OwnerId") ownerId: amazonawsString
}
type dBProxyTargetGroup = {
@as("UpdatedDate") updatedDate: tStamp,
@as("CreatedDate") createdDate: tStamp,
@as("ConnectionPoolConfig") connectionPoolConfig: connectionPoolConfigurationInfo,
@as("Status") status: amazonawsString,
@as("IsDefault") isDefault: amazonawsBoolean,
@as("TargetGroupArn") targetGroupArn: amazonawsString,
@as("TargetGroupName") targetGroupName: amazonawsString,
@as("DBProxyName") dBProxyName: amazonawsString
}
type dBProxyEndpointList = array<dBProxyEndpoint>
type dBProxy = {
@as("UpdatedDate") updatedDate: tStamp,
@as("CreatedDate") createdDate: tStamp,
@as("DebugLogging") debugLogging: amazonawsBoolean,
@as("IdleClientTimeout") idleClientTimeout: amazonawsInteger,
@as("RequireTLS") requireTLS: amazonawsBoolean,
@as("Endpoint") endpoint: amazonawsString,
@as("RoleArn") roleArn: amazonawsString,
@as("Auth") auth: userAuthConfigInfoList,
@as("VpcSubnetIds") vpcSubnetIds: stringList,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: stringList,
@as("VpcId") vpcId: amazonawsString,
@as("EngineFamily") engineFamily: amazonawsString,
@as("Status") status: dBProxyStatus,
@as("DBProxyArn") dBProxyArn: amazonawsString,
@as("DBProxyName") dBProxyName: amazonawsString
}
type dBInstanceAutomatedBackup = {
@as("DBInstanceAutomatedBackupsReplications") dBInstanceAutomatedBackupsReplications: dBInstanceAutomatedBackupsReplicationList,
@as("DBInstanceAutomatedBackupsArn") dBInstanceAutomatedBackupsArn: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("Timezone") timezone: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("TdeCredentialArn") tdeCredentialArn: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("LicenseModel") licenseModel: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("InstanceCreateTime") instanceCreateTime: tStamp,
@as("VpcId") vpcId: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("RestoreWindow") restoreWindow: restoreWindow,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString,
@as("Region") region: amazonawsString,
@as("DbiResourceId") dbiResourceId: amazonawsString,
@as("DBInstanceArn") dBInstanceArn: amazonawsString
}
type dBClusterSnapshotAttributeList = array<dBClusterSnapshotAttribute>
type dBClusterSnapshot = {
@as("TagList") tagList: tagList,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("SourceDBClusterSnapshotArn") sourceDBClusterSnapshotArn: amazonawsString,
@as("DBClusterSnapshotArn") dBClusterSnapshotArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("PercentProgress") percentProgress: amazonawsInteger,
@as("SnapshotType") snapshotType: amazonawsString,
@as("LicenseModel") licenseModel: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("ClusterCreateTime") clusterCreateTime: tStamp,
@as("VpcId") vpcId: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("EngineMode") engineMode: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("SnapshotCreateTime") snapshotCreateTime: tStamp,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: amazonawsString,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
type dBClusterEndpointList = array<dBClusterEndpoint>
type customAvailabilityZoneList = array<customAvailabilityZone>
type clusterPendingModifiedValues = {
@as("EngineVersion") engineVersion: amazonawsString,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: booleanOptional,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("PendingCloudwatchLogsExports") pendingCloudwatchLogsExports: pendingCloudwatchLogsExports
}
type validStorageOptionsList = array<validStorageOptions>
type targetGroupList = array<dBProxyTargetGroup>
type reservedDBInstancesOfferingList = array<reservedDBInstancesOffering>
type reservedDBInstanceList = array<reservedDBInstance>
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type orderableDBInstanceOptionsList = array<orderableDBInstanceOption>
type optionsList = array<option>
type optionGroupOptionSettingsList = array<optionGroupOptionSetting>
type optionConfigurationList = array<optionConfiguration>
type globalCluster = {
@as("FailoverState") failoverState: failoverState,
@as("GlobalClusterMembers") globalClusterMembers: globalClusterMemberList,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("StorageEncrypted") storageEncrypted: booleanOptional,
@as("DatabaseName") databaseName: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("Status") status: amazonawsString,
@as("GlobalClusterArn") globalClusterArn: amazonawsString,
@as("GlobalClusterResourceId") globalClusterResourceId: amazonawsString,
@as("GlobalClusterIdentifier") globalClusterIdentifier: amazonawsString
}
type engineDefaults = {
@as("Parameters") parameters: parametersList,
@as("Marker") marker: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString
}
type dBSubnetGroup = {
@as("DBSubnetGroupArn") dBSubnetGroupArn: amazonawsString,
@as("Subnets") subnets: subnetList,
@as("SubnetGroupStatus") subnetGroupStatus: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("DBSubnetGroupDescription") dBSubnetGroupDescription: amazonawsString,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString
}
type dBSnapshotList = array<dBSnapshot>
type dBSnapshotAttributesResult = {
@as("DBSnapshotAttributes") dBSnapshotAttributes: dBSnapshotAttributeList,
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: amazonawsString
}
type dBSecurityGroups = array<dBSecurityGroup>
type dBProxyList = array<dBProxy>
type dBInstanceAutomatedBackupList = array<dBInstanceAutomatedBackup>
type dBEngineVersion = {
@as("SupportsGlobalDatabases") supportsGlobalDatabases: amazonawsBoolean,
@as("SupportsParallelQuery") supportsParallelQuery: amazonawsBoolean,
@as("Status") status: amazonawsString,
@as("SupportedFeatureNames") supportedFeatureNames: featureNameList,
@as("SupportedEngineModes") supportedEngineModes: engineModeList,
@as("SupportsReadReplica") supportsReadReplica: amazonawsBoolean,
@as("SupportsLogExportsToCloudwatchLogs") supportsLogExportsToCloudwatchLogs: amazonawsBoolean,
@as("ExportableLogTypes") exportableLogTypes: logTypeList,
@as("SupportedTimezones") supportedTimezones: supportedTimezonesList,
@as("ValidUpgradeTarget") validUpgradeTarget: validUpgradeTargetList,
@as("SupportedNcharCharacterSets") supportedNcharCharacterSets: supportedCharacterSetsList,
@as("SupportedCharacterSets") supportedCharacterSets: supportedCharacterSetsList,
@as("DefaultCharacterSet") defaultCharacterSet: characterSet,
@as("DBEngineVersionDescription") dBEngineVersionDescription: amazonawsString,
@as("DBEngineDescription") dBEngineDescription: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type dBClusterSnapshotList = array<dBClusterSnapshot>
type dBClusterSnapshotAttributesResult = {
@as("DBClusterSnapshotAttributes") dBClusterSnapshotAttributes: dBClusterSnapshotAttributeList,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: amazonawsString
}
type dBCluster = {
@as("PendingModifiedValues") pendingModifiedValues: clusterPendingModifiedValues,
@as("GlobalWriteForwardingRequested") globalWriteForwardingRequested: booleanOptional,
@as("GlobalWriteForwardingStatus") globalWriteForwardingStatus: writeForwardingStatus,
@as("TagList") tagList: tagList,
@as("DomainMemberships") domainMemberships: domainMembershipList,
@as("CrossAccountClone") crossAccountClone: booleanOptional,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("ActivityStreamKinesisStreamName") activityStreamKinesisStreamName: amazonawsString,
@as("ActivityStreamKmsKeyId") activityStreamKmsKeyId: amazonawsString,
@as("ActivityStreamStatus") activityStreamStatus: activityStreamStatus,
@as("ActivityStreamMode") activityStreamMode: activityStreamMode,
@as("HttpEndpointEnabled") httpEndpointEnabled: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("ScalingConfigurationInfo") scalingConfigurationInfo: scalingConfigurationInfo,
@as("EngineMode") engineMode: amazonawsString,
@as("Capacity") capacity: integerOptional,
@as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: logTypeList,
@as("BacktrackConsumedChangeRecords") backtrackConsumedChangeRecords: longOptional,
@as("BacktrackWindow") backtrackWindow: longOptional,
@as("EarliestBacktrackTime") earliestBacktrackTime: tStamp,
@as("ClusterCreateTime") clusterCreateTime: tStamp,
@as("CloneGroupId") cloneGroupId: amazonawsString,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: booleanOptional,
@as("AssociatedRoles") associatedRoles: dBClusterRoles,
@as("DBClusterArn") dBClusterArn: amazonawsString,
@as("DbClusterResourceId") dbClusterResourceId: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("HostedZoneId") hostedZoneId: amazonawsString,
@as("VpcSecurityGroups") vpcSecurityGroups: vpcSecurityGroupMembershipList,
@as("DBClusterMembers") dBClusterMembers: dBClusterMemberList,
@as("ReadReplicaIdentifiers") readReplicaIdentifiers: readReplicaIdentifierList,
@as("ReplicationSourceIdentifier") replicationSourceIdentifier: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("DBClusterOptionGroupMemberships") dBClusterOptionGroupMemberships: dBClusterOptionGroupMemberships,
@as("MasterUsername") masterUsername: amazonawsString,
@as("Port") port: integerOptional,
@as("LatestRestorableTime") latestRestorableTime: tStamp,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("CustomEndpoints") customEndpoints: stringList,
@as("ReaderEndpoint") readerEndpoint: amazonawsString,
@as("Endpoint") endpoint: amazonawsString,
@as("EarliestRestorableTime") earliestRestorableTime: tStamp,
@as("PercentProgress") percentProgress: amazonawsString,
@as("Status") status: amazonawsString,
@as("DBSubnetGroup") dBSubnetGroup: amazonawsString,
@as("DBClusterParameterGroup") dBClusterParameterGroup: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("CharacterSetName") characterSetName: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("AvailabilityZones") availabilityZones: availabilityZones,
@as("AllocatedStorage") allocatedStorage: integerOptional
}
type validDBInstanceModificationsMessage = {
@as("ValidProcessorFeatures") validProcessorFeatures: availableProcessorFeatureList,
@as("Storage") storage: validStorageOptionsList
}
type optionGroupOption = {
@as("OptionGroupOptionVersions") optionGroupOptionVersions: optionGroupOptionVersionsList,
@as("OptionGroupOptionSettings") optionGroupOptionSettings: optionGroupOptionSettingsList,
@as("SupportsOptionVersionDowngrade") supportsOptionVersionDowngrade: booleanOptional,
@as("VpcOnly") vpcOnly: amazonawsBoolean,
@as("RequiresAutoMinorEngineVersionUpgrade") requiresAutoMinorEngineVersionUpgrade: amazonawsBoolean,
@as("Permanent") permanent: amazonawsBoolean,
@as("Persistent") persistent: amazonawsBoolean,
@as("OptionsConflictsWith") optionsConflictsWith: optionsConflictsWith,
@as("OptionsDependedOn") optionsDependedOn: optionsDependedOn,
@as("DefaultPort") defaultPort: integerOptional,
@as("PortRequired") portRequired: amazonawsBoolean,
@as("MinimumRequiredMinorEngineVersion") minimumRequiredMinorEngineVersion: amazonawsString,
@as("MajorEngineVersion") majorEngineVersion: amazonawsString,
@as("EngineName") engineName: amazonawsString,
@as("Description") description: amazonawsString,
@as("Name") name: amazonawsString
}
type optionGroup = {
@as("OptionGroupArn") optionGroupArn: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("AllowsVpcAndNonVpcInstanceMemberships") allowsVpcAndNonVpcInstanceMemberships: amazonawsBoolean,
@as("Options") options: optionsList,
@as("MajorEngineVersion") majorEngineVersion: amazonawsString,
@as("EngineName") engineName: amazonawsString,
@as("OptionGroupDescription") optionGroupDescription: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString
}
type globalClusterList = array<globalCluster>
type dBSubnetGroups = array<dBSubnetGroup>
type dBInstance = {
@as("AwsBackupRecoveryPointArn") awsBackupRecoveryPointArn: amazonawsString,
@as("CustomerOwnedIpEnabled") customerOwnedIpEnabled: booleanOptional,
@as("DBInstanceAutomatedBackupsReplications") dBInstanceAutomatedBackupsReplications: dBInstanceAutomatedBackupsReplicationList,
@as("TagList") tagList: tagList,
@as("MaxAllocatedStorage") maxAllocatedStorage: integerOptional,
@as("ListenerEndpoint") listenerEndpoint: endpoint,
@as("AssociatedRoles") associatedRoles: dBInstanceRoles,
@as("DeletionProtection") deletionProtection: amazonawsBoolean,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: logTypeList,
@as("PerformanceInsightsRetentionPeriod") performanceInsightsRetentionPeriod: integerOptional,
@as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: amazonawsString,
@as("PerformanceInsightsEnabled") performanceInsightsEnabled: booleanOptional,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("Timezone") timezone: amazonawsString,
@as("DBInstanceArn") dBInstanceArn: amazonawsString,
@as("PromotionTier") promotionTier: integerOptional,
@as("MonitoringRoleArn") monitoringRoleArn: amazonawsString,
@as("EnhancedMonitoringResourceArn") enhancedMonitoringResourceArn: amazonawsString,
@as("MonitoringInterval") monitoringInterval: integerOptional,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: amazonawsBoolean,
@as("DomainMemberships") domainMemberships: domainMembershipList,
@as("CACertificateIdentifier") cACertificateIdentifier: amazonawsString,
@as("DbiResourceId") dbiResourceId: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("DbInstancePort") dbInstancePort: amazonawsInteger,
@as("TdeCredentialArn") tdeCredentialArn: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("StatusInfos") statusInfos: dBInstanceStatusInfoList,
@as("PubliclyAccessible") publiclyAccessible: amazonawsBoolean,
@as("SecondaryAvailabilityZone") secondaryAvailabilityZone: amazonawsString,
@as("NcharCharacterSetName") ncharCharacterSetName: amazonawsString,
@as("CharacterSetName") characterSetName: amazonawsString,
@as("OptionGroupMemberships") optionGroupMemberships: optionGroupMembershipList,
@as("Iops") iops: integerOptional,
@as("LicenseModel") licenseModel: amazonawsString,
@as("ReplicaMode") replicaMode: replicaMode,
@as("ReadReplicaDBClusterIdentifiers") readReplicaDBClusterIdentifiers: readReplicaDBClusterIdentifierList,
@as("ReadReplicaDBInstanceIdentifiers") readReplicaDBInstanceIdentifiers: readReplicaDBInstanceIdentifierList,
@as("ReadReplicaSourceDBInstanceIdentifier") readReplicaSourceDBInstanceIdentifier: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: amazonawsBoolean,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: amazonawsBoolean,
@as("LatestRestorableTime") latestRestorableTime: tStamp,
@as("PendingModifiedValues") pendingModifiedValues: pendingModifiedValues,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("DBSubnetGroup") dBSubnetGroup: dBSubnetGroup,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("DBParameterGroups") dBParameterGroups: dBParameterGroupStatusList,
@as("VpcSecurityGroups") vpcSecurityGroups: vpcSecurityGroupMembershipList,
@as("DBSecurityGroups") dBSecurityGroups: dBSecurityGroupMembershipList,
@as("BackupRetentionPeriod") backupRetentionPeriod: amazonawsInteger,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("InstanceCreateTime") instanceCreateTime: tStamp,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("Endpoint") endpoint: endpoint,
@as("DBName") dBName: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("DBInstanceStatus") dBInstanceStatus: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString
}
type dBEngineVersionList = array<dBEngineVersion>
type dBClusterList = array<dBCluster>
type optionGroupsList = array<optionGroup>
type optionGroupOptionsList = array<optionGroupOption>
type dBInstanceList = array<dBInstance>
type clientType;
@module("@aws-sdk/client-rds") @new external createClient: unit => clientType = "RDSClient";
module StopActivityStream = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: booleanOptional,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("Status") status: activityStreamStatus,
@as("KinesisStreamName") kinesisStreamName: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StopActivityStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartActivityStream = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: booleanOptional,
@as("KmsKeyId") kmsKeyId: option<amazonawsString>,
@as("Mode") mode: option<activityStreamMode>,
@as("ResourceArn") resourceArn: option<amazonawsString>
}
  type response = {
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("Mode") mode: activityStreamMode,
@as("Status") status: activityStreamStatus,
@as("KinesisStreamName") kinesisStreamName: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StartActivityStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveRoleFromDBInstance = {
  type t;
  type request = {
@as("FeatureName") featureName: option<amazonawsString>,
@as("RoleArn") roleArn: option<amazonawsString>,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RemoveRoleFromDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveRoleFromDBCluster = {
  type t;
  type request = {
@as("FeatureName") featureName: amazonawsString,
@as("RoleArn") roleArn: option<amazonawsString>,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RemoveRoleFromDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyCurrentDBClusterCapacity = {
  type t;
  type request = {
@as("TimeoutAction") timeoutAction: amazonawsString,
@as("SecondsBeforeTimeout") secondsBeforeTimeout: integerOptional,
@as("Capacity") capacity: integerOptional,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("TimeoutAction") timeoutAction: amazonawsString,
@as("SecondsBeforeTimeout") secondsBeforeTimeout: integerOptional,
@as("CurrentCapacity") currentCapacity: integerOptional,
@as("PendingCapacity") pendingCapacity: integerOptional,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyCurrentDBClusterCapacityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DownloadDBLogFilePortion = {
  type t;
  type request = {
@as("NumberOfLines") numberOfLines: amazonawsInteger,
@as("Marker") marker: amazonawsString,
@as("LogFileName") logFileName: option<amazonawsString>,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("AdditionalDataPending") additionalDataPending: amazonawsBoolean,
@as("Marker") marker: amazonawsString,
@as("LogFileData") logFileData: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DownloadDBLogFilePortionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteOptionGroup = {
  type t;
  type request = {
@as("OptionGroupName") optionGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteOptionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDBSubnetGroup = {
  type t;
  type request = {
@as("DBSubnetGroupName") dBSubnetGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDBSecurityGroup = {
  type t;
  type request = {
@as("DBSecurityGroupName") dBSecurityGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDBParameterGroup = {
  type t;
  type request = {
@as("DBParameterGroupName") dBParameterGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDBClusterParameterGroup = {
  type t;
  type request = {
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module BacktrackDBCluster = {
  type t;
  type request = {
@as("UseEarliestTimeOnPointInTimeUnavailable") useEarliestTimeOnPointInTimeUnavailable: booleanOptional,
@as("Force") force: booleanOptional,
@as("BacktrackTo") backtrackTo: option<tStamp>,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = dBClusterBacktrack;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "BacktrackDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddRoleToDBInstance = {
  type t;
  type request = {
@as("FeatureName") featureName: option<amazonawsString>,
@as("RoleArn") roleArn: option<amazonawsString>,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "AddRoleToDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddRoleToDBCluster = {
  type t;
  type request = {
@as("FeatureName") featureName: amazonawsString,
@as("RoleArn") roleArn: option<amazonawsString>,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "AddRoleToDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartExportTask = {
  type t;
  type request = {
@as("ExportOnly") exportOnly: stringList,
@as("S3Prefix") s3Prefix: amazonawsString,
@as("KmsKeyId") kmsKeyId: option<amazonawsString>,
@as("IamRoleArn") iamRoleArn: option<amazonawsString>,
@as("S3BucketName") s3BucketName: option<amazonawsString>,
@as("SourceArn") sourceArn: option<amazonawsString>,
@as("ExportTaskIdentifier") exportTaskIdentifier: option<amazonawsString>
}
  type response = exportTask;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StartExportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<keyList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ModifyDBClusterEndpoint = {
  type t;
  type request = {
@as("ExcludedMembers") excludedMembers: stringList,
@as("StaticMembers") staticMembers: stringList,
@as("EndpointType") endpointType: amazonawsString,
@as("DBClusterEndpointIdentifier") dBClusterEndpointIdentifier: option<amazonawsString>
}
  type response = dBClusterEndpoint;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBClusterEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyCertificates = {
  type t;
  type request = {
@as("RemoveCustomerOverride") removeCustomerOverride: booleanOptional,
@as("CertificateIdentifier") certificateIdentifier: amazonawsString
}
  type response = {
@as("Certificate") certificate: certificate
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportInstallationMedia = {
  type t;
  type request = {
@as("OSInstallationMediaPath") oSInstallationMediaPath: option<amazonawsString>,
@as("EngineInstallationMediaPath") engineInstallationMediaPath: option<amazonawsString>,
@as("EngineVersion") engineVersion: option<amazonawsString>,
@as("Engine") engine: option<amazonawsString>,
@as("CustomAvailabilityZoneId") customAvailabilityZoneId: option<amazonawsString>
}
  type response = installationMedia;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ImportInstallationMediaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterDBProxyTargets = {
  type t;
  type request = {
@as("DBClusterIdentifiers") dBClusterIdentifiers: stringList,
@as("DBInstanceIdentifiers") dBInstanceIdentifiers: stringList,
@as("TargetGroupName") targetGroupName: amazonawsString,
@as("DBProxyName") dBProxyName: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeregisterDBProxyTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInstallationMedia = {
  type t;
  type request = {
@as("InstallationMediaId") installationMediaId: option<amazonawsString>
}
  type response = installationMedia;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteInstallationMediaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBClusterEndpoint = {
  type t;
  type request = {
@as("DBClusterEndpointIdentifier") dBClusterEndpointIdentifier: option<amazonawsString>
}
  type response = dBClusterEndpoint;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBClusterEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelExportTask = {
  type t;
  type request = {
@as("ExportTaskIdentifier") exportTaskIdentifier: option<amazonawsString>
}
  type response = exportTask;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CancelExportTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveSourceIdentifierFromSubscription = {
  type t;
  type request = {
@as("SourceIdentifier") sourceIdentifier: option<amazonawsString>,
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  type response = {
@as("EventSubscription") eventSubscription: eventSubscription
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RemoveSourceIdentifierFromSubscriptionCommand";
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBProxyEndpoint = {
  type t;
  type request = {
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: stringList,
@as("NewDBProxyEndpointName") newDBProxyEndpointName: dBProxyEndpointName,
@as("DBProxyEndpointName") dBProxyEndpointName: option<dBProxyEndpointName>
}
  type response = {
@as("DBProxyEndpoint") dBProxyEndpoint: dBProxyEndpoint
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBProxyEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAttributes = {
  type t;
  type request = unit
  type response = {
@as("AccountQuotas") accountQuotas: accountQuotaList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountAttributesCommand";
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBProxyEndpoint = {
  type t;
  type request = {
@as("DBProxyEndpointName") dBProxyEndpointName: option<dBProxyEndpointName>
}
  type response = {
@as("DBProxyEndpoint") dBProxyEndpoint: dBProxyEndpoint
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBProxyEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCustomAvailabilityZone = {
  type t;
  type request = {
@as("CustomAvailabilityZoneId") customAvailabilityZoneId: option<amazonawsString>
}
  type response = {
@as("CustomAvailabilityZone") customAvailabilityZone: customAvailabilityZone
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomAvailabilityZoneCommand";
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateEventSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBProxyEndpoint = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("TargetRole") targetRole: dBProxyEndpointTargetRole,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: stringList,
@as("VpcSubnetIds") vpcSubnetIds: option<stringList>,
@as("DBProxyEndpointName") dBProxyEndpointName: option<dBProxyEndpointName>,
@as("DBProxyName") dBProxyName: option<dBProxyName>
}
  type response = {
@as("DBProxyEndpoint") dBProxyEndpoint: dBProxyEndpoint
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBProxyEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBParameterGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: option<amazonawsString>,
@as("DBParameterGroupFamily") dBParameterGroupFamily: option<amazonawsString>,
@as("DBParameterGroupName") dBParameterGroupName: option<amazonawsString>
}
  type response = {
@as("DBParameterGroup") dBParameterGroup: dBParameterGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBClusterParameterGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: option<amazonawsString>,
@as("DBParameterGroupFamily") dBParameterGroupFamily: option<amazonawsString>,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: option<amazonawsString>
}
  type response = {
@as("DBClusterParameterGroup") dBClusterParameterGroup: dBClusterParameterGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBClusterEndpoint = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("ExcludedMembers") excludedMembers: stringList,
@as("StaticMembers") staticMembers: stringList,
@as("EndpointType") endpointType: option<amazonawsString>,
@as("DBClusterEndpointIdentifier") dBClusterEndpointIdentifier: option<amazonawsString>,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = dBClusterEndpoint;
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBClusterEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomAvailabilityZone = {
  type t;
  type request = {
@as("VpnTunnelOriginatorIP") vpnTunnelOriginatorIP: amazonawsString,
@as("NewVpnTunnelName") newVpnTunnelName: amazonawsString,
@as("ExistingVpnId") existingVpnId: amazonawsString,
@as("CustomAvailabilityZoneName") customAvailabilityZoneName: option<amazonawsString>
}
  type response = {
@as("CustomAvailabilityZone") customAvailabilityZone: customAvailabilityZone
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomAvailabilityZoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyDBParameterGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("TargetDBParameterGroupDescription") targetDBParameterGroupDescription: option<amazonawsString>,
@as("TargetDBParameterGroupIdentifier") targetDBParameterGroupIdentifier: option<amazonawsString>,
@as("SourceDBParameterGroupIdentifier") sourceDBParameterGroupIdentifier: option<amazonawsString>
}
  type response = {
@as("DBParameterGroup") dBParameterGroup: dBParameterGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CopyDBParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyDBClusterParameterGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("TargetDBClusterParameterGroupDescription") targetDBClusterParameterGroupDescription: option<amazonawsString>,
@as("TargetDBClusterParameterGroupIdentifier") targetDBClusterParameterGroupIdentifier: option<amazonawsString>,
@as("SourceDBClusterParameterGroupIdentifier") sourceDBClusterParameterGroupIdentifier: option<amazonawsString>
}
  type response = {
@as("DBClusterParameterGroup") dBClusterParameterGroup: dBClusterParameterGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CopyDBClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTagsToResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "AddTagsToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddSourceIdentifierToSubscription = {
  type t;
  type request = {
@as("SourceIdentifier") sourceIdentifier: option<amazonawsString>,
@as("SubscriptionName") subscriptionName: option<amazonawsString>
}
  type response = {
@as("EventSubscription") eventSubscription: eventSubscription
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "AddSourceIdentifierToSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopDBInstanceAutomatedBackupsReplication = {
  type t;
  type request = {
@as("SourceDBInstanceArn") sourceDBInstanceArn: option<amazonawsString>
}
  type response = {
@as("DBInstanceAutomatedBackup") dBInstanceAutomatedBackup: dBInstanceAutomatedBackup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StopDBInstanceAutomatedBackupsReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDBInstanceAutomatedBackupsReplication = {
  type t;
  type request = {
@as("PreSignedUrl") preSignedUrl: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("SourceDBInstanceArn") sourceDBInstanceArn: option<amazonawsString>
}
  type response = {
@as("DBInstanceAutomatedBackup") dBInstanceAutomatedBackup: dBInstanceAutomatedBackup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StartDBInstanceAutomatedBackupsReplicationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeDBSecurityGroupIngress = {
  type t;
  type request = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: amazonawsString,
@as("EC2SecurityGroupId") eC2SecurityGroupId: amazonawsString,
@as("EC2SecurityGroupName") eC2SecurityGroupName: amazonawsString,
@as("CIDRIP") cIDRIP: amazonawsString,
@as("DBSecurityGroupName") dBSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("DBSecurityGroup") dBSecurityGroup: dBSecurityGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RevokeDBSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetDBParameterGroup = {
  type t;
  type request = {
@as("Parameters") parameters: parametersList,
@as("ResetAllParameters") resetAllParameters: amazonawsBoolean,
@as("DBParameterGroupName") dBParameterGroupName: option<amazonawsString>
}
  type response = {
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ResetDBParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetDBClusterParameterGroup = {
  type t;
  type request = {
@as("Parameters") parameters: parametersList,
@as("ResetAllParameters") resetAllParameters: amazonawsBoolean,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: option<amazonawsString>
}
  type response = {
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ResetDBClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterDBProxyTargets = {
  type t;
  type request = {
@as("DBClusterIdentifiers") dBClusterIdentifiers: stringList,
@as("DBInstanceIdentifiers") dBInstanceIdentifiers: stringList,
@as("TargetGroupName") targetGroupName: amazonawsString,
@as("DBProxyName") dBProxyName: option<amazonawsString>
}
  type response = {
@as("DBProxyTargets") dBProxyTargets: targetList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RegisterDBProxyTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseReservedDBInstancesOffering = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("DBInstanceCount") dBInstanceCount: integerOptional,
@as("ReservedDBInstanceId") reservedDBInstanceId: amazonawsString,
@as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: option<amazonawsString>
}
  type response = {
@as("ReservedDBInstance") reservedDBInstance: reservedDBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "PurchaseReservedDBInstancesOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBSnapshot = {
  type t;
  type request = {
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBSnapshot") dBSnapshot: dBSnapshot
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBProxyTargetGroup = {
  type t;
  type request = {
@as("NewName") newName: amazonawsString,
@as("ConnectionPoolConfig") connectionPoolConfig: connectionPoolConfiguration,
@as("DBProxyName") dBProxyName: option<amazonawsString>,
@as("TargetGroupName") targetGroupName: option<amazonawsString>
}
  type response = {
@as("DBProxyTargetGroup") dBProxyTargetGroup: dBProxyTargetGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBProxyTargetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBProxy = {
  type t;
  type request = {
@as("SecurityGroups") securityGroups: stringList,
@as("RoleArn") roleArn: amazonawsString,
@as("DebugLogging") debugLogging: booleanOptional,
@as("IdleClientTimeout") idleClientTimeout: integerOptional,
@as("RequireTLS") requireTLS: booleanOptional,
@as("Auth") auth: userAuthConfigList,
@as("NewDBProxyName") newDBProxyName: amazonawsString,
@as("DBProxyName") dBProxyName: option<amazonawsString>
}
  type response = {
@as("DBProxy") dBProxy: dBProxy
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBProxyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBParameterGroup = {
  type t;
  type request = {
@as("Parameters") parameters: option<parametersList>,
@as("DBParameterGroupName") dBParameterGroupName: option<amazonawsString>
}
  type response = {
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBClusterParameterGroup = {
  type t;
  type request = {
@as("Parameters") parameters: option<parametersList>,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: option<amazonawsString>
}
  type response = {
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBClusterParameterGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("ResourceName") resourceName: option<amazonawsString>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSourceRegions = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("RegionName") regionName: amazonawsString
}
  type response = {
@as("SourceRegions") sourceRegions: sourceRegionList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeSourceRegionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInstallationMedia = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("InstallationMediaId") installationMediaId: amazonawsString
}
  type response = {
@as("InstallationMedia") installationMedia: installationMediaList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeInstallationMediaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeExportTasks = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("SourceArn") sourceArn: amazonawsString,
@as("ExportTaskIdentifier") exportTaskIdentifier: amazonawsString
}
  type response = {
@as("ExportTasks") exportTasks: exportTasksList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeExportTasksCommand";
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventsCommand";
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventSubscriptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventCategories = {
  type t;
  type request = {
@as("Filters") filters: filterList,
@as("SourceType") sourceType: amazonawsString
}
  type response = {
@as("EventCategoriesMapList") eventCategoriesMapList: eventCategoriesMapList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventCategoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBProxyTargets = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("TargetGroupName") targetGroupName: amazonawsString,
@as("DBProxyName") dBProxyName: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("Targets") targets: targetList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBProxyTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBProxyEndpoints = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("DBProxyEndpointName") dBProxyEndpointName: dBProxyEndpointName,
@as("DBProxyName") dBProxyName: dBProxyName
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("DBProxyEndpoints") dBProxyEndpoints: dBProxyEndpointList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBProxyEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("Source") source: amazonawsString,
@as("DBParameterGroupName") dBParameterGroupName: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("Parameters") parameters: parametersList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBParameterGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString
}
  type response = {
@as("DBParameterGroups") dBParameterGroups: dBParameterGroupList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBParameterGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBLogFiles = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("FileSize") fileSize: amazonawsLong,
@as("FileLastWritten") fileLastWritten: amazonawsLong,
@as("FilenameContains") filenameContains: amazonawsString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("DescribeDBLogFiles") describeDBLogFiles: describeDBLogFilesList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBLogFilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBClusterParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("Source") source: amazonawsString,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("Parameters") parameters: parametersList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBClusterParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBClusterParameterGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString
}
  type response = {
@as("DBClusterParameterGroups") dBClusterParameterGroups: dBClusterParameterGroupList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBClusterParameterGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBClusterEndpoints = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBClusterEndpointIdentifier") dBClusterEndpointIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString
}
  type response = {
@as("DBClusterEndpoints") dBClusterEndpoints: dBClusterEndpointList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBClusterEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBClusterBacktracks = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("BacktrackIdentifier") backtrackIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBClusterBacktracks") dBClusterBacktracks: dBClusterBacktrackList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBClusterBacktracksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomAvailabilityZones = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("CustomAvailabilityZoneId") customAvailabilityZoneId: amazonawsString
}
  type response = {
@as("CustomAvailabilityZones") customAvailabilityZones: customAvailabilityZoneList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomAvailabilityZonesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificates = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("CertificateIdentifier") certificateIdentifier: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("Certificates") certificates: certificateList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBSnapshot = {
  type t;
  type request = {
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBSnapshot") dBSnapshot: dBSnapshot
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBProxy = {
  type t;
  type request = {
@as("DBProxyName") dBProxyName: option<amazonawsString>
}
  type response = {
@as("DBProxy") dBProxy: dBProxy
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBProxyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBInstanceAutomatedBackup = {
  type t;
  type request = {
@as("DBInstanceAutomatedBackupsArn") dBInstanceAutomatedBackupsArn: amazonawsString,
@as("DbiResourceId") dbiResourceId: amazonawsString
}
  type response = {
@as("DBInstanceAutomatedBackup") dBInstanceAutomatedBackup: dBInstanceAutomatedBackup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBInstanceAutomatedBackupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBClusterSnapshot = {
  type t;
  type request = {
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBClusterSnapshot") dBClusterSnapshot: dBClusterSnapshot
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBSnapshot = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>,
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBSnapshot") dBSnapshot: dBSnapshot
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBSecurityGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("DBSecurityGroupDescription") dBSecurityGroupDescription: option<amazonawsString>,
@as("DBSecurityGroupName") dBSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("DBSecurityGroup") dBSecurityGroup: dBSecurityGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBSecurityGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBProxy = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("DebugLogging") debugLogging: amazonawsBoolean,
@as("IdleClientTimeout") idleClientTimeout: integerOptional,
@as("RequireTLS") requireTLS: amazonawsBoolean,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: stringList,
@as("VpcSubnetIds") vpcSubnetIds: option<stringList>,
@as("RoleArn") roleArn: option<amazonawsString>,
@as("Auth") auth: option<userAuthConfigList>,
@as("EngineFamily") engineFamily: option<engineFamily>,
@as("DBProxyName") dBProxyName: option<amazonawsString>
}
  type response = {
@as("DBProxy") dBProxy: dBProxy
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBProxyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBClusterSnapshot = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBClusterSnapshot") dBClusterSnapshot: dBClusterSnapshot
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyDBSnapshot = {
  type t;
  type request = {
@as("TargetCustomAvailabilityZone") targetCustomAvailabilityZone: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("PreSignedUrl") preSignedUrl: amazonawsString,
@as("CopyTags") copyTags: booleanOptional,
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("TargetDBSnapshotIdentifier") targetDBSnapshotIdentifier: option<amazonawsString>,
@as("SourceDBSnapshotIdentifier") sourceDBSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBSnapshot") dBSnapshot: dBSnapshot
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CopyDBSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyDBClusterSnapshot = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("CopyTags") copyTags: booleanOptional,
@as("PreSignedUrl") preSignedUrl: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("TargetDBClusterSnapshotIdentifier") targetDBClusterSnapshotIdentifier: option<amazonawsString>,
@as("SourceDBClusterSnapshotIdentifier") sourceDBClusterSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBClusterSnapshot") dBClusterSnapshot: dBClusterSnapshot
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CopyDBClusterSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AuthorizeDBSecurityGroupIngress = {
  type t;
  type request = {
@as("EC2SecurityGroupOwnerId") eC2SecurityGroupOwnerId: amazonawsString,
@as("EC2SecurityGroupId") eC2SecurityGroupId: amazonawsString,
@as("EC2SecurityGroupName") eC2SecurityGroupName: amazonawsString,
@as("CIDRIP") cIDRIP: amazonawsString,
@as("DBSecurityGroupName") dBSecurityGroupName: option<amazonawsString>
}
  type response = {
@as("DBSecurityGroup") dBSecurityGroup: dBSecurityGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "AuthorizeDBSecurityGroupIngressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApplyPendingMaintenanceAction = {
  type t;
  type request = {
@as("OptInType") optInType: option<amazonawsString>,
@as("ApplyAction") applyAction: option<amazonawsString>,
@as("ResourceIdentifier") resourceIdentifier: option<amazonawsString>
}
  type response = {
@as("ResourcePendingMaintenanceActions") resourcePendingMaintenanceActions: resourcePendingMaintenanceActions
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ApplyPendingMaintenanceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopDBCluster = {
  type t;
  type request = {
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StopDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDBCluster = {
  type t;
  type request = {
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StartDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreDBClusterToPointInTime = {
  type t;
  type request = {
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("BacktrackWindow") backtrackWindow: longOptional,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Tags") tags: tagList,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("Port") port: integerOptional,
@as("UseLatestRestorableTime") useLatestRestorableTime: amazonawsBoolean,
@as("RestoreToTime") restoreToTime: tStamp,
@as("SourceDBClusterIdentifier") sourceDBClusterIdentifier: option<amazonawsString>,
@as("RestoreType") restoreType: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RestoreDBClusterToPointInTimeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreDBClusterFromSnapshot = {
  type t;
  type request = {
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("ScalingConfiguration") scalingConfiguration: scalingConfiguration,
@as("EngineMode") engineMode: amazonawsString,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("BacktrackWindow") backtrackWindow: longOptional,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Tags") tags: tagList,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("DatabaseName") databaseName: amazonawsString,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("Port") port: integerOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("SnapshotIdentifier") snapshotIdentifier: option<amazonawsString>,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RestoreDBClusterFromSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreDBClusterFromS3 = {
  type t;
  type request = {
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("BacktrackWindow") backtrackWindow: longOptional,
@as("S3IngestionRoleArn") s3IngestionRoleArn: option<amazonawsString>,
@as("S3Prefix") s3Prefix: amazonawsString,
@as("S3BucketName") s3BucketName: option<amazonawsString>,
@as("SourceEngineVersion") sourceEngineVersion: option<amazonawsString>,
@as("SourceEngine") sourceEngine: option<amazonawsString>,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: booleanOptional,
@as("Tags") tags: tagList,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("MasterUserPassword") masterUserPassword: option<amazonawsString>,
@as("MasterUsername") masterUsername: option<amazonawsString>,
@as("Port") port: integerOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>,
@as("DatabaseName") databaseName: amazonawsString,
@as("CharacterSetName") characterSetName: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RestoreDBClusterFromS3Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveFromGlobalCluster = {
  type t;
  type request = {
@as("DbClusterIdentifier") dbClusterIdentifier: amazonawsString,
@as("GlobalClusterIdentifier") globalClusterIdentifier: amazonawsString
}
  type response = {
@as("GlobalCluster") globalCluster: globalCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RemoveFromGlobalClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PromoteReadReplicaDBCluster = {
  type t;
  type request = {
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "PromoteReadReplicaDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyGlobalCluster = {
  type t;
  type request = {
@as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("NewGlobalClusterIdentifier") newGlobalClusterIdentifier: amazonawsString,
@as("GlobalClusterIdentifier") globalClusterIdentifier: amazonawsString
}
  type response = {
@as("GlobalCluster") globalCluster: globalCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyGlobalClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBSubnetGroup = {
  type t;
  type request = {
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("DBSubnetGroupDescription") dBSubnetGroupDescription: amazonawsString,
@as("DBSubnetGroupName") dBSubnetGroupName: option<amazonawsString>
}
  type response = {
@as("DBSubnetGroup") dBSubnetGroup: dBSubnetGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBSnapshotAttribute = {
  type t;
  type request = {
@as("ValuesToRemove") valuesToRemove: attributeValueList,
@as("ValuesToAdd") valuesToAdd: attributeValueList,
@as("AttributeName") attributeName: option<amazonawsString>,
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBSnapshotAttributesResult") dBSnapshotAttributesResult: dBSnapshotAttributesResult
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBSnapshotAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBClusterSnapshotAttribute = {
  type t;
  type request = {
@as("ValuesToRemove") valuesToRemove: attributeValueList,
@as("ValuesToAdd") valuesToAdd: attributeValueList,
@as("AttributeName") attributeName: option<amazonawsString>,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBClusterSnapshotAttributesResult") dBClusterSnapshotAttributesResult: dBClusterSnapshotAttributesResult
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBClusterSnapshotAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBCluster = {
  type t;
  type request = {
@as("EnableGlobalWriteForwarding") enableGlobalWriteForwarding: booleanOptional,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("EnableHttpEndpoint") enableHttpEndpoint: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("ScalingConfiguration") scalingConfiguration: scalingConfiguration,
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("DBInstanceParameterGroupName") dBInstanceParameterGroupName: amazonawsString,
@as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: amazonawsBoolean,
@as("EngineVersion") engineVersion: amazonawsString,
@as("CloudwatchLogsExportConfiguration") cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
@as("BacktrackWindow") backtrackWindow: longOptional,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("Port") port: integerOptional,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("NewDBClusterIdentifier") newDBClusterIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FailoverGlobalCluster = {
  type t;
  type request = {
@as("TargetDbClusterIdentifier") targetDbClusterIdentifier: option<dBClusterIdentifier>,
@as("GlobalClusterIdentifier") globalClusterIdentifier: option<globalClusterIdentifier>
}
  type response = {
@as("GlobalCluster") globalCluster: globalCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "FailoverGlobalClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module FailoverDBCluster = {
  type t;
  type request = {
@as("TargetDBInstanceIdentifier") targetDBInstanceIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "FailoverDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedDBInstancesOfferings = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("MultiAZ") multiAZ: booleanOptional,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("Duration") duration: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: amazonawsString
}
  type response = {
@as("ReservedDBInstancesOfferings") reservedDBInstancesOfferings: reservedDBInstancesOfferingList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedDBInstancesOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeReservedDBInstances = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("LeaseId") leaseId: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("OfferingType") offeringType: amazonawsString,
@as("ProductDescription") productDescription: amazonawsString,
@as("Duration") duration: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: amazonawsString,
@as("ReservedDBInstanceId") reservedDBInstanceId: amazonawsString
}
  type response = {
@as("ReservedDBInstances") reservedDBInstances: reservedDBInstanceList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeReservedDBInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePendingMaintenanceActions = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: integerOptional,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("ResourceIdentifier") resourceIdentifier: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("PendingMaintenanceActions") pendingMaintenanceActions: pendingMaintenanceActions
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribePendingMaintenanceActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrderableDBInstanceOptions = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("Vpc") vpc: booleanOptional,
@as("AvailabilityZoneGroup") availabilityZoneGroup: amazonawsString,
@as("LicenseModel") licenseModel: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("OrderableDBInstanceOptions") orderableDBInstanceOptions: orderableDBInstanceOptionsList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeOrderableDBInstanceOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEngineDefaultParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBParameterGroupFamily") dBParameterGroupFamily: option<amazonawsString>
}
  type response = {
@as("EngineDefaults") engineDefaults: engineDefaults
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeEngineDefaultParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEngineDefaultClusterParameters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBParameterGroupFamily") dBParameterGroupFamily: option<amazonawsString>
}
  type response = {
@as("EngineDefaults") engineDefaults: engineDefaults
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeEngineDefaultClusterParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBSnapshots = {
  type t;
  type request = {
@as("DbiResourceId") dbiResourceId: amazonawsString,
@as("IncludePublic") includePublic: amazonawsBoolean,
@as("IncludeShared") includeShared: amazonawsBoolean,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("SnapshotType") snapshotType: amazonawsString,
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: amazonawsString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString
}
  type response = {
@as("DBSnapshots") dBSnapshots: dBSnapshotList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBSnapshotAttributes = {
  type t;
  type request = {
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBSnapshotAttributesResult") dBSnapshotAttributesResult: dBSnapshotAttributesResult
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBSnapshotAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBSecurityGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBSecurityGroupName") dBSecurityGroupName: amazonawsString
}
  type response = {
@as("DBSecurityGroups") dBSecurityGroups: dBSecurityGroups,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBSecurityGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBProxyTargetGroups = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("TargetGroupName") targetGroupName: amazonawsString,
@as("DBProxyName") dBProxyName: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("TargetGroups") targetGroups: targetGroupList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBProxyTargetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBProxies = {
  type t;
  type request = {
@as("MaxRecords") maxRecords: maxRecords,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("DBProxyName") dBProxyName: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("DBProxies") dBProxies: dBProxyList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBProxiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBInstanceAutomatedBackups = {
  type t;
  type request = {
@as("DBInstanceAutomatedBackupsArn") dBInstanceAutomatedBackupsArn: amazonawsString,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString,
@as("DbiResourceId") dbiResourceId: amazonawsString
}
  type response = {
@as("DBInstanceAutomatedBackups") dBInstanceAutomatedBackups: dBInstanceAutomatedBackupList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBInstanceAutomatedBackupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBClusterSnapshots = {
  type t;
  type request = {
@as("IncludePublic") includePublic: amazonawsBoolean,
@as("IncludeShared") includeShared: amazonawsBoolean,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("SnapshotType") snapshotType: amazonawsString,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString
}
  type response = {
@as("DBClusterSnapshots") dBClusterSnapshots: dBClusterSnapshotList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBClusterSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBClusterSnapshotAttributes = {
  type t;
  type request = {
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: option<amazonawsString>
}
  type response = {
@as("DBClusterSnapshotAttributesResult") dBClusterSnapshotAttributesResult: dBClusterSnapshotAttributesResult
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBClusterSnapshotAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGlobalCluster = {
  type t;
  type request = {
@as("GlobalClusterIdentifier") globalClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("GlobalCluster") globalCluster: globalCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteGlobalClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBCluster = {
  type t;
  type request = {
@as("FinalDBSnapshotIdentifier") finalDBSnapshotIdentifier: amazonawsString,
@as("SkipFinalSnapshot") skipFinalSnapshot: amazonawsBoolean,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGlobalCluster = {
  type t;
  type request = {
@as("StorageEncrypted") storageEncrypted: booleanOptional,
@as("DatabaseName") databaseName: amazonawsString,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("SourceDBClusterIdentifier") sourceDBClusterIdentifier: amazonawsString,
@as("GlobalClusterIdentifier") globalClusterIdentifier: amazonawsString
}
  type response = {
@as("GlobalCluster") globalCluster: globalCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateGlobalClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBSubnetGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SubnetIds") subnetIds: option<subnetIdentifierList>,
@as("DBSubnetGroupDescription") dBSubnetGroupDescription: option<amazonawsString>,
@as("DBSubnetGroupName") dBSubnetGroupName: option<amazonawsString>
}
  type response = {
@as("DBSubnetGroup") dBSubnetGroup: dBSubnetGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBSubnetGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBCluster = {
  type t;
  type request = {
@as("EnableGlobalWriteForwarding") enableGlobalWriteForwarding: booleanOptional,
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("EnableHttpEndpoint") enableHttpEndpoint: booleanOptional,
@as("GlobalClusterIdentifier") globalClusterIdentifier: amazonawsString,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("ScalingConfiguration") scalingConfiguration: scalingConfiguration,
@as("EngineMode") engineMode: amazonawsString,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("BacktrackWindow") backtrackWindow: longOptional,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("PreSignedUrl") preSignedUrl: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: booleanOptional,
@as("Tags") tags: tagList,
@as("ReplicationSourceIdentifier") replicationSourceIdentifier: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("Port") port: integerOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>,
@as("DatabaseName") databaseName: amazonawsString,
@as("CharacterSetName") characterSetName: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBClusterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopDBInstance = {
  type t;
  type request = {
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: amazonawsString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StopDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDBInstance = {
  type t;
  type request = {
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "StartDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreDBInstanceToPointInTime = {
  type t;
  type request = {
@as("EnableCustomerOwnedIp") enableCustomerOwnedIp: booleanOptional,
@as("SourceDBInstanceAutomatedBackupsArn") sourceDBInstanceAutomatedBackupsArn: amazonawsString,
@as("MaxAllocatedStorage") maxAllocatedStorage: integerOptional,
@as("SourceDbiResourceId") sourceDbiResourceId: amazonawsString,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString,
@as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: booleanOptional,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("TdeCredentialPassword") tdeCredentialPassword: amazonawsString,
@as("TdeCredentialArn") tdeCredentialArn: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("Tags") tags: tagList,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("Engine") engine: amazonawsString,
@as("DBName") dBName: amazonawsString,
@as("LicenseModel") licenseModel: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("MultiAZ") multiAZ: booleanOptional,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Port") port: integerOptional,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("UseLatestRestorableTime") useLatestRestorableTime: amazonawsBoolean,
@as("RestoreTime") restoreTime: tStamp,
@as("TargetDBInstanceIdentifier") targetDBInstanceIdentifier: option<amazonawsString>,
@as("SourceDBInstanceIdentifier") sourceDBInstanceIdentifier: amazonawsString
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RestoreDBInstanceToPointInTimeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreDBInstanceFromS3 = {
  type t;
  type request = {
@as("MaxAllocatedStorage") maxAllocatedStorage: integerOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: booleanOptional,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("PerformanceInsightsRetentionPeriod") performanceInsightsRetentionPeriod: integerOptional,
@as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: amazonawsString,
@as("EnablePerformanceInsights") enablePerformanceInsights: booleanOptional,
@as("S3IngestionRoleArn") s3IngestionRoleArn: option<amazonawsString>,
@as("S3Prefix") s3Prefix: amazonawsString,
@as("S3BucketName") s3BucketName: option<amazonawsString>,
@as("SourceEngineVersion") sourceEngineVersion: option<amazonawsString>,
@as("SourceEngine") sourceEngine: option<amazonawsString>,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("MonitoringRoleArn") monitoringRoleArn: amazonawsString,
@as("MonitoringInterval") monitoringInterval: integerOptional,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: booleanOptional,
@as("StorageType") storageType: amazonawsString,
@as("Tags") tags: tagList,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("LicenseModel") licenseModel: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("Port") port: integerOptional,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBSecurityGroups") dBSecurityGroups: dBSecurityGroupNameList,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("DBInstanceClass") dBInstanceClass: option<amazonawsString>,
@as("AllocatedStorage") allocatedStorage: integerOptional,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>,
@as("DBName") dBName: amazonawsString
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RestoreDBInstanceFromS3Command";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreDBInstanceFromDBSnapshot = {
  type t;
  type request = {
@as("EnableCustomerOwnedIp") enableCustomerOwnedIp: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString,
@as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: booleanOptional,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("Domain") domain: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("TdeCredentialPassword") tdeCredentialPassword: amazonawsString,
@as("TdeCredentialArn") tdeCredentialArn: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("Tags") tags: tagList,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("Engine") engine: amazonawsString,
@as("DBName") dBName: amazonawsString,
@as("LicenseModel") licenseModel: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("MultiAZ") multiAZ: booleanOptional,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Port") port: integerOptional,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("DBSnapshotIdentifier") dBSnapshotIdentifier: option<amazonawsString>,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RestoreDBInstanceFromDBSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootDBInstance = {
  type t;
  type request = {
@as("ForceFailover") forceFailover: booleanOptional,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RebootDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PromoteReadReplica = {
  type t;
  type request = {
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "PromoteReadReplicaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyOptionGroup = {
  type t;
  type request = {
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("OptionsToRemove") optionsToRemove: optionNamesList,
@as("OptionsToInclude") optionsToInclude: optionConfigurationList,
@as("OptionGroupName") optionGroupName: option<amazonawsString>
}
  type response = {
@as("OptionGroup") optionGroup: optionGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyOptionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ModifyDBInstance = {
  type t;
  type request = {
@as("AwsBackupRecoveryPointArn") awsBackupRecoveryPointArn: awsBackupRecoveryPointArn,
@as("EnableCustomerOwnedIp") enableCustomerOwnedIp: booleanOptional,
@as("ReplicaMode") replicaMode: replicaMode,
@as("CertificateRotationRestart") certificateRotationRestart: booleanOptional,
@as("MaxAllocatedStorage") maxAllocatedStorage: integerOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: booleanOptional,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("CloudwatchLogsExportConfiguration") cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
@as("PerformanceInsightsRetentionPeriod") performanceInsightsRetentionPeriod: integerOptional,
@as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: amazonawsString,
@as("EnablePerformanceInsights") enablePerformanceInsights: booleanOptional,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("PromotionTier") promotionTier: integerOptional,
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("MonitoringRoleArn") monitoringRoleArn: amazonawsString,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("DBPortNumber") dBPortNumber: integerOptional,
@as("MonitoringInterval") monitoringInterval: integerOptional,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("Domain") domain: amazonawsString,
@as("CACertificateIdentifier") cACertificateIdentifier: amazonawsString,
@as("TdeCredentialPassword") tdeCredentialPassword: amazonawsString,
@as("TdeCredentialArn") tdeCredentialArn: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("NewDBInstanceIdentifier") newDBInstanceIdentifier: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("LicenseModel") licenseModel: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: amazonawsBoolean,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBSecurityGroups") dBSecurityGroups: dBSecurityGroupNameList,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("AllocatedStorage") allocatedStorage: integerOptional,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeValidDBInstanceModifications = {
  type t;
  type request = {
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("ValidDBInstanceModificationsMessage") validDBInstanceModificationsMessage: validDBInstanceModificationsMessage
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeValidDBInstanceModificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGlobalClusters = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("GlobalClusterIdentifier") globalClusterIdentifier: amazonawsString
}
  type response = {
@as("GlobalClusters") globalClusters: globalClusterList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeGlobalClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBSubnetGroups = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString
}
  type response = {
@as("DBSubnetGroups") dBSubnetGroups: dBSubnetGroups,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBSubnetGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBEngineVersions = {
  type t;
  type request = {
@as("IncludeAll") includeAll: booleanOptional,
@as("ListSupportedTimezones") listSupportedTimezones: booleanOptional,
@as("ListSupportedCharacterSets") listSupportedCharacterSets: booleanOptional,
@as("DefaultOnly") defaultOnly: amazonawsBoolean,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
  type response = {
@as("DBEngineVersions") dBEngineVersions: dBEngineVersionList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBEngineVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBClusters = {
  type t;
  type request = {
@as("IncludeShared") includeShared: amazonawsBoolean,
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString
}
  type response = {
@as("DBClusters") dBClusters: dBClusterList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBClustersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBInstance = {
  type t;
  type request = {
@as("DeleteAutomatedBackups") deleteAutomatedBackups: booleanOptional,
@as("FinalDBSnapshotIdentifier") finalDBSnapshotIdentifier: amazonawsString,
@as("SkipFinalSnapshot") skipFinalSnapshot: amazonawsBoolean,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOptionGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("OptionGroupDescription") optionGroupDescription: option<amazonawsString>,
@as("MajorEngineVersion") majorEngineVersion: option<amazonawsString>,
@as("EngineName") engineName: option<amazonawsString>,
@as("OptionGroupName") optionGroupName: option<amazonawsString>
}
  type response = {
@as("OptionGroup") optionGroup: optionGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateOptionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBInstanceReadReplica = {
  type t;
  type request = {
@as("MaxAllocatedStorage") maxAllocatedStorage: integerOptional,
@as("ReplicaMode") replicaMode: replicaMode,
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("Domain") domain: amazonawsString,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: booleanOptional,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("PerformanceInsightsRetentionPeriod") performanceInsightsRetentionPeriod: integerOptional,
@as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: amazonawsString,
@as("EnablePerformanceInsights") enablePerformanceInsights: booleanOptional,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("PreSignedUrl") preSignedUrl: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("MonitoringRoleArn") monitoringRoleArn: amazonawsString,
@as("MonitoringInterval") monitoringInterval: integerOptional,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("StorageType") storageType: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("Tags") tags: tagList,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("MultiAZ") multiAZ: booleanOptional,
@as("Port") port: integerOptional,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("SourceDBInstanceIdentifier") sourceDBInstanceIdentifier: option<amazonawsString>,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBInstanceReadReplicaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDBInstance = {
  type t;
  type request = {
@as("EnableCustomerOwnedIp") enableCustomerOwnedIp: booleanOptional,
@as("MaxAllocatedStorage") maxAllocatedStorage: integerOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("ProcessorFeatures") processorFeatures: processorFeatureList,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("PerformanceInsightsRetentionPeriod") performanceInsightsRetentionPeriod: integerOptional,
@as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: amazonawsString,
@as("EnablePerformanceInsights") enablePerformanceInsights: booleanOptional,
@as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: booleanOptional,
@as("Timezone") timezone: amazonawsString,
@as("PromotionTier") promotionTier: integerOptional,
@as("DomainIAMRoleName") domainIAMRoleName: amazonawsString,
@as("MonitoringRoleArn") monitoringRoleArn: amazonawsString,
@as("MonitoringInterval") monitoringInterval: integerOptional,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("Domain") domain: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: booleanOptional,
@as("TdeCredentialPassword") tdeCredentialPassword: amazonawsString,
@as("TdeCredentialArn") tdeCredentialArn: amazonawsString,
@as("StorageType") storageType: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("Tags") tags: tagList,
@as("PubliclyAccessible") publiclyAccessible: booleanOptional,
@as("NcharCharacterSetName") ncharCharacterSetName: amazonawsString,
@as("CharacterSetName") characterSetName: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString,
@as("Iops") iops: integerOptional,
@as("LicenseModel") licenseModel: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MultiAZ") multiAZ: booleanOptional,
@as("Port") port: integerOptional,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("DBParameterGroupName") dBParameterGroupName: amazonawsString,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBSecurityGroups") dBSecurityGroups: dBSecurityGroupNameList,
@as("MasterUserPassword") masterUserPassword: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("DBInstanceClass") dBInstanceClass: option<amazonawsString>,
@as("AllocatedStorage") allocatedStorage: integerOptional,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>,
@as("DBName") dBName: amazonawsString
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyOptionGroup = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("TargetOptionGroupDescription") targetOptionGroupDescription: option<amazonawsString>,
@as("TargetOptionGroupIdentifier") targetOptionGroupIdentifier: option<amazonawsString>,
@as("SourceOptionGroupIdentifier") sourceOptionGroupIdentifier: option<amazonawsString>
}
  type response = {
@as("OptionGroup") optionGroup: optionGroup
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CopyOptionGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOptionGroups = {
  type t;
  type request = {
@as("MajorEngineVersion") majorEngineVersion: amazonawsString,
@as("EngineName") engineName: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Marker") marker: amazonawsString,
@as("Filters") filters: filterList,
@as("OptionGroupName") optionGroupName: amazonawsString
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("OptionGroupsList") optionGroupsList: optionGroupsList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeOptionGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOptionGroupOptions = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("MajorEngineVersion") majorEngineVersion: amazonawsString,
@as("EngineName") engineName: option<amazonawsString>
}
  type response = {
@as("Marker") marker: amazonawsString,
@as("OptionGroupOptions") optionGroupOptions: optionGroupOptionsList
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeOptionGroupOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDBInstances = {
  type t;
  type request = {
@as("Marker") marker: amazonawsString,
@as("MaxRecords") maxRecords: integerOptional,
@as("Filters") filters: filterList,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString
}
  type response = {
@as("DBInstances") dBInstances: dBInstanceList,
@as("Marker") marker: amazonawsString
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DescribeDBInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
