type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rds") @new external createClient: unit => awsServiceClient = "RDSClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type writeForwardingStatus = [
  | @as("unknown") #Unknown
  | @as("disabling") #Disabling
  | @as("enabling") #Enabling
  | @as("disabled") #Disabled
  | @as("enabled") #Enabled
]
type targetType = [
  | @as("TRACKED_CLUSTER") #TRACKED_CLUSTER
  | @as("RDS_SERVERLESS_ENDPOINT") #RDS_SERVERLESS_ENDPOINT
  | @as("RDS_INSTANCE") #RDS_INSTANCE
]
type targetState = [
  | @as("UNAVAILABLE") #UNAVAILABLE
  | @as("AVAILABLE") #AVAILABLE
  | @as("REGISTERING") #REGISTERING
]
type targetRole = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("READ_ONLY") #READ_ONLY
  | @as("READ_WRITE") #READ_WRITE
]
type targetHealthReason = [
  | @as("INVALID_REPLICATION_STATE") #INVALID_REPLICATION_STATE
  | @as("PENDING_PROXY_CAPACITY") #PENDING_PROXY_CAPACITY
  | @as("AUTH_FAILURE") #AUTH_FAILURE
  | @as("CONNECTION_FAILED") #CONNECTION_FAILED
  | @as("UNREACHABLE") #UNREACHABLE
]
type tstamp = Js.Date.t
type stringSensitive = string
type string_ = string
type sourceType = [
  | @as("db-cluster-snapshot") #Db_Cluster_Snapshot
  | @as("db-cluster") #Db_Cluster
  | @as("db-snapshot") #Db_Snapshot
  | @as("db-security-group") #Db_Security_Group
  | @as("db-parameter-group") #Db_Parameter_Group
  | @as("db-instance") #Db_Instance
]
type replicaMode = [@as("mounted") #Mounted | @as("open-read-only") #Open_Read_Only]
type maxRecords = int
type longOptional = float
type long = float
type integerOptional = int
type integer_ = int
type iamauthMode = [@as("REQUIRED") #REQUIRED | @as("DISABLED") #DISABLED]
type globalClusterIdentifier = string
type failoverStatus = [
  | @as("cancelling") #Cancelling
  | @as("failing-over") #Failing_Over
  | @as("pending") #Pending
]
type exceptionMessage = string
type engineFamily = [@as("POSTGRESQL") #POSTGRESQL | @as("MYSQL") #MYSQL]
type doubleOptional = float
type double = float
type dbproxyStatus = [
  | @as("reactivating") #Reactivating
  | @as("suspending") #Suspending
  | @as("suspended") #Suspended
  | @as("deleting") #Deleting
  | @as("creating") #Creating
  | @as("insufficient-resource-limits") #Insufficient_Resource_Limits
  | @as("incompatible-network") #Incompatible_Network
  | @as("modifying") #Modifying
  | @as("available") #Available
]
type dbproxyName = string
type dbproxyEndpointTargetRole = [@as("READ_ONLY") #READ_ONLY | @as("READ_WRITE") #READ_WRITE]
type dbproxyEndpointStatus = [
  | @as("deleting") #Deleting
  | @as("creating") #Creating
  | @as("insufficient-resource-limits") #Insufficient_Resource_Limits
  | @as("incompatible-network") #Incompatible_Network
  | @as("modifying") #Modifying
  | @as("available") #Available
]
type dbproxyEndpointName = string
type dbclusterIdentifier = string
type booleanOptional = bool
type boolean_ = bool
type awsBackupRecoveryPointArn = string
type authScheme = [@as("SECRETS") #SECRETS]
type applyMethod = [@as("pending-reboot") #Pending_Reboot | @as("immediate") #Immediate]
type activityStreamStatus = [
  | @as("stopping") #Stopping
  | @as("started") #Started
  | @as("starting") #Starting
  | @as("stopped") #Stopped
]
type activityStreamMode = [@as("async") #Async | @as("sync") #Sync]
type vpnDetails = {
  @as("VpnState") vpnState: option<string_>,
  @as("VpnName") vpnName: option<string_>,
  @as("VpnPSK") vpnPSK: option<stringSensitive>,
  @as("VpnGatewayIp") vpnGatewayIp: option<string_>,
  @as("VpnTunnelOriginatorIP") vpnTunnelOriginatorIP: option<string_>,
  @as("VpnId") vpnId: option<string_>,
}
type vpcSecurityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("VpcSecurityGroupId") vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
type userAuthConfigInfo = {
  @as("IAMAuth") iamauth: option<iamauthMode>,
  @as("SecretArn") secretArn: option<string_>,
  @as("AuthScheme") authScheme: option<authScheme>,
  @as("UserName") userName: option<string_>,
  @as("Description") description: option<string_>,
}
type userAuthConfig = {
  @as("IAMAuth") iamauth: option<iamauthMode>,
  @as("SecretArn") secretArn: option<string_>,
  @as("AuthScheme") authScheme: option<authScheme>,
  @as("UserName") userName: option<string_>,
  @as("Description") description: option<string_>,
}
type timezone = {@as("TimezoneName") timezoneName: option<string_>}
type targetHealth = {
  @as("Description") description: option<string_>,
  @as("Reason") reason: option<targetHealthReason>,
  @as("State") state: option<targetState>,
}
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type subnetIdentifierList = array<string_>
type stringList = array<string_>
type sourceRegion = {
  @as("SupportsDBInstanceAutomatedBackupsReplication")
  supportsDBInstanceAutomatedBackupsReplication: option<boolean_>,
  @as("Status") status: option<string_>,
  @as("Endpoint") endpoint: option<string_>,
  @as("RegionName") regionName: option<string_>,
}
type sourceIdsList = array<string_>
type scalingConfigurationInfo = {
  @as("TimeoutAction") timeoutAction: option<string_>,
  @as("SecondsUntilAutoPause") secondsUntilAutoPause: option<integerOptional>,
  @as("AutoPause") autoPause: option<booleanOptional>,
  @as("MaxCapacity") maxCapacity: option<integerOptional>,
  @as("MinCapacity") minCapacity: option<integerOptional>,
}
type scalingConfiguration = {
  @as("TimeoutAction") timeoutAction: option<string_>,
  @as("SecondsUntilAutoPause") secondsUntilAutoPause: option<integerOptional>,
  @as("AutoPause") autoPause: option<booleanOptional>,
  @as("MaxCapacity") maxCapacity: option<integerOptional>,
  @as("MinCapacity") minCapacity: option<integerOptional>,
}
type restoreWindow = {
  @as("LatestTime") latestTime: option<tstamp>,
  @as("EarliestTime") earliestTime: option<tstamp>,
}
type recurringCharge = {
  @as("RecurringChargeFrequency") recurringChargeFrequency: option<string_>,
  @as("RecurringChargeAmount") recurringChargeAmount: option<double>,
}
type readersArnList = array<string_>
type readReplicaIdentifierList = array<string_>
type readReplicaDBInstanceIdentifierList = array<string_>
type readReplicaDBClusterIdentifierList = array<string_>
type range = {
  @as("Step") step: option<integerOptional>,
  @as("To") to: option<integer_>,
  @as("From") from: option<integer_>,
}
type processorFeature = {
  @as("Value") value: option<string_>,
  @as("Name") name: option<string_>,
}
type pendingMaintenanceAction = {
  @as("Description") description: option<string_>,
  @as("CurrentApplyDate") currentApplyDate: option<tstamp>,
  @as("OptInStatus") optInStatus: option<string_>,
  @as("ForcedApplyDate") forcedApplyDate: option<tstamp>,
  @as("AutoAppliedAfterDate") autoAppliedAfterDate: option<tstamp>,
  @as("Action") action: option<string_>,
}
type outpost = {@as("Arn") arn: option<string_>}
type optionsDependedOn = array<string_>
type optionsConflictsWith = array<string_>
type optionVersion = {
  @as("IsDefault") isDefault: option<boolean_>,
  @as("Version") version: option<string_>,
}
type optionSetting = {
  @as("IsCollection") isCollection: option<boolean_>,
  @as("IsModifiable") isModifiable: option<boolean_>,
  @as("AllowedValues") allowedValues: option<string_>,
  @as("DataType") dataType: option<string_>,
  @as("ApplyType") applyType: option<string_>,
  @as("Description") description: option<string_>,
  @as("DefaultValue") defaultValue: option<string_>,
  @as("Value") value: option<string_>,
  @as("Name") name: option<string_>,
}
type optionNamesList = array<string_>
type optionGroupMembership = {
  @as("Status") status: option<string_>,
  @as("OptionGroupName") optionGroupName: option<string_>,
}
type minimumEngineVersionPerAllowedValue = {
  @as("MinimumEngineVersion") minimumEngineVersion: option<string_>,
  @as("AllowedValue") allowedValue: option<string_>,
}
type logTypeList = array<string_>
type keyList = array<string_>
type installationMediaFailureCause = {@as("Message") message: option<string_>}
type iprange = {
  @as("CIDRIP") cidrip: option<string_>,
  @as("Status") status: option<string_>,
}
type filterValueList = array<string_>
type featureNameList = array<string_>
type failoverState = {
  @as("ToDbClusterArn") toDbClusterArn: option<string_>,
  @as("FromDbClusterArn") fromDbClusterArn: option<string_>,
  @as("Status") status: option<failoverStatus>,
}
type eventCategoriesList = array<string_>
type engineModeList = array<string_>
type endpoint = {
  @as("HostedZoneId") hostedZoneId: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Address") address: option<string_>,
}
type ec2SecurityGroup = {
  @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: option<string_>,
  @as("EC2SecurityGroupId") ec2SecurityGroupId: option<string_>,
  @as("EC2SecurityGroupName") ec2SecurityGroupName: option<string_>,
  @as("Status") status: option<string_>,
}
type doubleRange = {
  @as("To") to: option<double>,
  @as("From") from: option<double>,
}
type domainMembership = {
  @as("IAMRoleName") iamroleName: option<string_>,
  @as("FQDN") fqdn: option<string_>,
  @as("Status") status: option<string_>,
  @as("Domain") domain: option<string_>,
}
type describeDBLogFilesDetails = {
  @as("Size") size: option<long>,
  @as("LastWritten") lastWritten: option<long>,
  @as("LogFileName") logFileName: option<string_>,
}
type dbsecurityGroupNameList = array<string_>
type dbsecurityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("DBSecurityGroupName") dbsecurityGroupName: option<string_>,
}
type dbparameterGroupStatus = {
  @as("ParameterApplyStatus") parameterApplyStatus: option<string_>,
  @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
}
type dbparameterGroup = {
  @as("DBParameterGroupArn") dbparameterGroupArn: option<string_>,
  @as("Description") description: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
  @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
}
type dbinstanceStatusInfo = {
  @as("Message") message: option<string_>,
  @as("Status") status: option<string_>,
  @as("Normal") normal: option<boolean_>,
  @as("StatusType") statusType: option<string_>,
}
type dbinstanceRole = {
  @as("Status") status: option<string_>,
  @as("FeatureName") featureName: option<string_>,
  @as("RoleArn") roleArn: option<string_>,
}
type dbinstanceAutomatedBackupsReplication = {
  @as("DBInstanceAutomatedBackupsArn") dbinstanceAutomatedBackupsArn: option<string_>,
}
type dbclusterRole = {
  @as("FeatureName") featureName: option<string_>,
  @as("Status") status: option<string_>,
  @as("RoleArn") roleArn: option<string_>,
}
type dbclusterParameterGroup = {
  @as("DBClusterParameterGroupArn") dbclusterParameterGroupArn: option<string_>,
  @as("Description") description: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
  @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
}
type dbclusterOptionGroupStatus = {
  @as("Status") status: option<string_>,
  @as("DBClusterOptionGroupName") dbclusterOptionGroupName: option<string_>,
}
type dbclusterMember = {
  @as("PromotionTier") promotionTier: option<integerOptional>,
  @as("DBClusterParameterGroupStatus") dbclusterParameterGroupStatus: option<string_>,
  @as("IsClusterWriter") isClusterWriter: option<boolean_>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
}
type dbclusterBacktrack = {
  @as("Status") status: option<string_>,
  @as("BacktrackRequestCreationTime") backtrackRequestCreationTime: option<tstamp>,
  @as("BacktrackedFrom") backtrackedFrom: option<tstamp>,
  @as("BacktrackTo") backtrackTo: option<tstamp>,
  @as("BacktrackIdentifier") backtrackIdentifier: option<string_>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
}
type characterSet = {
  @as("CharacterSetDescription") characterSetDescription: option<string_>,
  @as("CharacterSetName") characterSetName: option<string_>,
}
type certificate = {
  @as("CustomerOverrideValidTill") customerOverrideValidTill: option<tstamp>,
  @as("CustomerOverride") customerOverride: option<booleanOptional>,
  @as("CertificateArn") certificateArn: option<string_>,
  @as("ValidTill") validTill: option<tstamp>,
  @as("ValidFrom") validFrom: option<tstamp>,
  @as("Thumbprint") thumbprint: option<string_>,
  @as("CertificateType") certificateType: option<string_>,
  @as("CertificateIdentifier") certificateIdentifier: option<string_>,
}
type availableProcessorFeature = {
  @as("AllowedValues") allowedValues: option<string_>,
  @as("DefaultValue") defaultValue: option<string_>,
  @as("Name") name: option<string_>,
}
type availabilityZones = array<string_>
type availabilityZone = {@as("Name") name: option<string_>}
type attributeValueList = array<string_>
type accountQuota = {
  @as("Max") max: option<long>,
  @as("Used") used: option<long>,
  @as("AccountQuotaName") accountQuotaName: option<string_>,
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type userAuthConfigList = array<userAuthConfig>
type userAuthConfigInfoList = array<userAuthConfigInfo>
type upgradeTarget = {
  @as("SupportsGlobalDatabases") supportsGlobalDatabases: option<booleanOptional>,
  @as("SupportsParallelQuery") supportsParallelQuery: option<booleanOptional>,
  @as("SupportedEngineModes") supportedEngineModes: option<engineModeList>,
  @as("IsMajorVersionUpgrade") isMajorVersionUpgrade: option<boolean_>,
  @as("AutoUpgrade") autoUpgrade: option<boolean_>,
  @as("Description") description: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type tagList_ = array<tag>
type supportedTimezonesList = array<timezone>
type supportedCharacterSetsList = array<characterSet>
type subnet = {
  @as("SubnetStatus") subnetStatus: option<string_>,
  @as("SubnetOutpost") subnetOutpost: option<outpost>,
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<availabilityZone>,
  @as("SubnetIdentifier") subnetIdentifier: option<string_>,
}
type sourceRegionList = array<sourceRegion>
type recurringChargeList = array<recurringCharge>
type rangeList = array<range>
type processorFeatureList = array<processorFeature>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type pendingCloudwatchLogsExports = {
  @as("LogTypesToDisable") logTypesToDisable: option<logTypeList>,
  @as("LogTypesToEnable") logTypesToEnable: option<logTypeList>,
}
type parameter = {
  @as("SupportedEngineModes") supportedEngineModes: option<engineModeList>,
  @as("ApplyMethod") applyMethod: option<applyMethod>,
  @as("MinimumEngineVersion") minimumEngineVersion: option<string_>,
  @as("IsModifiable") isModifiable: option<boolean_>,
  @as("AllowedValues") allowedValues: option<string_>,
  @as("DataType") dataType: option<string_>,
  @as("ApplyType") applyType: option<string_>,
  @as("Source") source: option<string_>,
  @as("Description") description: option<string_>,
  @as("ParameterValue") parameterValue: option<string_>,
  @as("ParameterName") parameterName: option<string_>,
}
type optionSettingsList = array<optionSetting>
type optionSettingConfigurationList = array<optionSetting>
type optionGroupOptionVersionsList = array<optionVersion>
type optionGroupMembershipList = array<optionGroupMembership>
type minimumEngineVersionPerAllowedValueList = array<minimumEngineVersionPerAllowedValue>
type installationMedia = {
  @as("FailureCause") failureCause: option<installationMediaFailureCause>,
  @as("Status") status: option<string_>,
  @as("OSInstallationMediaPath") osinstallationMediaPath: option<string_>,
  @as("EngineInstallationMediaPath") engineInstallationMediaPath: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("CustomAvailabilityZoneId") customAvailabilityZoneId: option<string_>,
  @as("InstallationMediaId") installationMediaId: option<string_>,
}
type iprangeList = array<iprange>
type globalClusterMember = {
  @as("GlobalWriteForwardingStatus") globalWriteForwardingStatus: option<writeForwardingStatus>,
  @as("IsWriter") isWriter: option<boolean_>,
  @as("Readers") readers: option<readersArnList>,
  @as("DBClusterArn") dbclusterArn: option<string_>,
}
type filter = {
  @as("Values") values: filterValueList,
  @as("Name") name: string_,
}
type exportTask = {
  @as("WarningMessage") warningMessage: option<string_>,
  @as("FailureCause") failureCause: option<string_>,
  @as("TotalExtractedDataInGB") totalExtractedDataInGB: option<integer_>,
  @as("PercentProgress") percentProgress: option<integer_>,
  @as("Status") status: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("IamRoleArn") iamRoleArn: option<string_>,
  @as("S3Prefix") s3Prefix: option<string_>,
  @as("S3Bucket") s3Bucket: option<string_>,
  @as("TaskEndTime") taskEndTime: option<tstamp>,
  @as("TaskStartTime") taskStartTime: option<tstamp>,
  @as("SnapshotTime") snapshotTime: option<tstamp>,
  @as("ExportOnly") exportOnly: option<stringList>,
  @as("SourceArn") sourceArn: option<string_>,
  @as("ExportTaskIdentifier") exportTaskIdentifier: option<string_>,
}
type eventSubscription = {
  @as("EventSubscriptionArn") eventSubscriptionArn: option<string_>,
  @as("Enabled") enabled: option<boolean_>,
  @as("EventCategoriesList") eventCategoriesList: option<eventCategoriesList>,
  @as("SourceIdsList") sourceIdsList: option<sourceIdsList>,
  @as("SourceType") sourceType: option<string_>,
  @as("SubscriptionCreationTime") subscriptionCreationTime: option<string_>,
  @as("Status") status: option<string_>,
  @as("SnsTopicArn") snsTopicArn: option<string_>,
  @as("CustSubscriptionId") custSubscriptionId: option<string_>,
  @as("CustomerAwsId") customerAwsId: option<string_>,
}
type eventCategoriesMap = {
  @as("EventCategories") eventCategories: option<eventCategoriesList>,
  @as("SourceType") sourceType: option<string_>,
}
type event = {
  @as("SourceArn") sourceArn: option<string_>,
  @as("Date") date: option<tstamp>,
  @as("EventCategories") eventCategories: option<eventCategoriesList>,
  @as("Message") message: option<string_>,
  @as("SourceType") sourceType: option<sourceType>,
  @as("SourceIdentifier") sourceIdentifier: option<string_>,
}
type ec2SecurityGroupList = array<ec2SecurityGroup>
type doubleRangeList = array<doubleRange>
type domainMembershipList = array<domainMembership>
type describeDBLogFilesList = array<describeDBLogFilesDetails>
type dbsnapshotAttribute = {
  @as("AttributeValues") attributeValues: option<attributeValueList>,
  @as("AttributeName") attributeName: option<string_>,
}
type dbsecurityGroupMembershipList = array<dbsecurityGroupMembership>
type dbproxyTarget = {
  @as("TargetHealth") targetHealth: option<targetHealth>,
  @as("Role") role: option<targetRole>,
  @as("Type") type_: option<targetType>,
  @as("Port") port: option<integer_>,
  @as("RdsResourceId") rdsResourceId: option<string_>,
  @as("TrackedClusterId") trackedClusterId: option<string_>,
  @as("Endpoint") endpoint: option<string_>,
  @as("TargetArn") targetArn: option<string_>,
}
type dbproxyEndpoint = {
  @as("IsDefault") isDefault: option<boolean_>,
  @as("TargetRole") targetRole: option<dbproxyEndpointTargetRole>,
  @as("CreatedDate") createdDate: option<tstamp>,
  @as("Endpoint") endpoint: option<string_>,
  @as("VpcSubnetIds") vpcSubnetIds: option<stringList>,
  @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<stringList>,
  @as("VpcId") vpcId: option<string_>,
  @as("Status") status: option<dbproxyEndpointStatus>,
  @as("DBProxyName") dbproxyName: option<string_>,
  @as("DBProxyEndpointArn") dbproxyEndpointArn: option<string_>,
  @as("DBProxyEndpointName") dbproxyEndpointName: option<string_>,
}
type dbparameterGroupStatusList = array<dbparameterGroupStatus>
type dbparameterGroupList = array<dbparameterGroup>
type dbinstanceStatusInfoList = array<dbinstanceStatusInfo>
type dbinstanceRoles = array<dbinstanceRole>
type dbinstanceAutomatedBackupsReplicationList = array<dbinstanceAutomatedBackupsReplication>
type dbclusterSnapshotAttribute = {
  @as("AttributeValues") attributeValues: option<attributeValueList>,
  @as("AttributeName") attributeName: option<string_>,
}
type dbclusterRoles = array<dbclusterRole>
type dbclusterParameterGroupList = array<dbclusterParameterGroup>
type dbclusterOptionGroupMemberships = array<dbclusterOptionGroupStatus>
type dbclusterMemberList = array<dbclusterMember>
type dbclusterEndpoint = {
  @as("DBClusterEndpointArn") dbclusterEndpointArn: option<string_>,
  @as("ExcludedMembers") excludedMembers: option<stringList>,
  @as("StaticMembers") staticMembers: option<stringList>,
  @as("CustomEndpointType") customEndpointType: option<string_>,
  @as("EndpointType") endpointType: option<string_>,
  @as("Status") status: option<string_>,
  @as("Endpoint") endpoint: option<string_>,
  @as("DBClusterEndpointResourceIdentifier") dbclusterEndpointResourceIdentifier: option<string_>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("DBClusterEndpointIdentifier") dbclusterEndpointIdentifier: option<string_>,
}
type dbclusterBacktrackList = array<dbclusterBacktrack>
type customAvailabilityZone = {
  @as("VpnDetails") vpnDetails: option<vpnDetails>,
  @as("CustomAvailabilityZoneStatus") customAvailabilityZoneStatus: option<string_>,
  @as("CustomAvailabilityZoneName") customAvailabilityZoneName: option<string_>,
  @as("CustomAvailabilityZoneId") customAvailabilityZoneId: option<string_>,
}
type connectionPoolConfigurationInfo = {
  @as("InitQuery") initQuery: option<string_>,
  @as("SessionPinningFilters") sessionPinningFilters: option<stringList>,
  @as("ConnectionBorrowTimeout") connectionBorrowTimeout: option<integer_>,
  @as("MaxIdleConnectionsPercent") maxIdleConnectionsPercent: option<integer_>,
  @as("MaxConnectionsPercent") maxConnectionsPercent: option<integer_>,
}
type connectionPoolConfiguration = {
  @as("InitQuery") initQuery: option<string_>,
  @as("SessionPinningFilters") sessionPinningFilters: option<stringList>,
  @as("ConnectionBorrowTimeout") connectionBorrowTimeout: option<integerOptional>,
  @as("MaxIdleConnectionsPercent") maxIdleConnectionsPercent: option<integerOptional>,
  @as("MaxConnectionsPercent") maxConnectionsPercent: option<integerOptional>,
}
type cloudwatchLogsExportConfiguration = {
  @as("DisableLogTypes") disableLogTypes: option<logTypeList>,
  @as("EnableLogTypes") enableLogTypes: option<logTypeList>,
}
type certificateList = array<certificate>
type availableProcessorFeatureList = array<availableProcessorFeature>
type availabilityZoneList = array<availabilityZone>
type accountQuotaList = array<accountQuota>
type validUpgradeTargetList = array<upgradeTarget>
type validStorageOptions = {
  @as("SupportsStorageAutoscaling") supportsStorageAutoscaling: option<boolean_>,
  @as("IopsToStorageRatio") iopsToStorageRatio: option<doubleRangeList>,
  @as("ProvisionedIops") provisionedIops: option<rangeList>,
  @as("StorageSize") storageSize: option<rangeList>,
  @as("StorageType") storageType: option<string_>,
}
type targetList = array<dbproxyTarget>
type subnetList = array<subnet>
type resourcePendingMaintenanceActions = {
  @as("PendingMaintenanceActionDetails")
  pendingMaintenanceActionDetails: option<pendingMaintenanceActionDetails>,
  @as("ResourceIdentifier") resourceIdentifier: option<string_>,
}
type reservedDBInstancesOffering = {
  @as("RecurringCharges") recurringCharges: option<recurringChargeList>,
  @as("MultiAZ") multiAZ: option<boolean_>,
  @as("OfferingType") offeringType: option<string_>,
  @as("ProductDescription") productDescription: option<string_>,
  @as("CurrencyCode") currencyCode: option<string_>,
  @as("UsagePrice") usagePrice: option<double>,
  @as("FixedPrice") fixedPrice: option<double>,
  @as("Duration") duration: option<integer_>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
  @as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: option<string_>,
}
type reservedDBInstance = {
  @as("LeaseId") leaseId: option<string_>,
  @as("ReservedDBInstanceArn") reservedDBInstanceArn: option<string_>,
  @as("RecurringCharges") recurringCharges: option<recurringChargeList>,
  @as("State") state: option<string_>,
  @as("MultiAZ") multiAZ: option<boolean_>,
  @as("OfferingType") offeringType: option<string_>,
  @as("ProductDescription") productDescription: option<string_>,
  @as("DBInstanceCount") dbinstanceCount: option<integer_>,
  @as("CurrencyCode") currencyCode: option<string_>,
  @as("UsagePrice") usagePrice: option<double>,
  @as("FixedPrice") fixedPrice: option<double>,
  @as("Duration") duration: option<integer_>,
  @as("StartTime") startTime: option<tstamp>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
  @as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: option<string_>,
  @as("ReservedDBInstanceId") reservedDBInstanceId: option<string_>,
}
type pendingModifiedValues = {
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<booleanOptional>,
  @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
  @as("PendingCloudwatchLogsExports")
  pendingCloudwatchLogsExports: option<pendingCloudwatchLogsExports>,
  @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
  @as("CACertificateIdentifier") cacertificateIdentifier: option<string_>,
  @as("StorageType") storageType: option<string_>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
  @as("Iops") iops: option<integerOptional>,
  @as("LicenseModel") licenseModel: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("MultiAZ") multiAZ: option<booleanOptional>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
  @as("Port") port: option<integerOptional>,
  @as("MasterUserPassword") masterUserPassword: option<string_>,
  @as("AllocatedStorage") allocatedStorage: option<integerOptional>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
}
type parametersList = array<parameter>
type orderableDBInstanceOption = {
  @as("SupportsGlobalDatabases") supportsGlobalDatabases: option<boolean_>,
  @as("OutpostCapable") outpostCapable: option<boolean_>,
  @as("SupportsKerberosAuthentication") supportsKerberosAuthentication: option<booleanOptional>,
  @as("SupportsStorageAutoscaling") supportsStorageAutoscaling: option<booleanOptional>,
  @as("SupportedEngineModes") supportedEngineModes: option<engineModeList>,
  @as("AvailableProcessorFeatures")
  availableProcessorFeatures: option<availableProcessorFeatureList>,
  @as("MaxIopsPerGib") maxIopsPerGib: option<doubleOptional>,
  @as("MinIopsPerGib") minIopsPerGib: option<doubleOptional>,
  @as("MaxIopsPerDbInstance") maxIopsPerDbInstance: option<integerOptional>,
  @as("MinIopsPerDbInstance") minIopsPerDbInstance: option<integerOptional>,
  @as("MaxStorageSize") maxStorageSize: option<integerOptional>,
  @as("MinStorageSize") minStorageSize: option<integerOptional>,
  @as("SupportsPerformanceInsights") supportsPerformanceInsights: option<boolean_>,
  @as("SupportsIAMDatabaseAuthentication") supportsIAMDatabaseAuthentication: option<boolean_>,
  @as("SupportsEnhancedMonitoring") supportsEnhancedMonitoring: option<boolean_>,
  @as("SupportsIops") supportsIops: option<boolean_>,
  @as("StorageType") storageType: option<string_>,
  @as("SupportsStorageEncryption") supportsStorageEncryption: option<boolean_>,
  @as("Vpc") vpc: option<boolean_>,
  @as("ReadReplicaCapable") readReplicaCapable: option<boolean_>,
  @as("MultiAZCapable") multiAZCapable: option<boolean_>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZoneList>,
  @as("AvailabilityZoneGroup") availabilityZoneGroup: option<string_>,
  @as("LicenseModel") licenseModel: option<string_>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type optionGroupOptionSetting = {
  @as("MinimumEngineVersionPerAllowedValue")
  minimumEngineVersionPerAllowedValue: option<minimumEngineVersionPerAllowedValueList>,
  @as("IsRequired") isRequired: option<boolean_>,
  @as("IsModifiable") isModifiable: option<boolean_>,
  @as("AllowedValues") allowedValues: option<string_>,
  @as("ApplyType") applyType: option<string_>,
  @as("DefaultValue") defaultValue: option<string_>,
  @as("SettingDescription") settingDescription: option<string_>,
  @as("SettingName") settingName: option<string_>,
}
type optionConfiguration = {
  @as("OptionSettings") optionSettings: option<optionSettingsList>,
  @as("VpcSecurityGroupMemberships") vpcSecurityGroupMemberships: option<vpcSecurityGroupIdList>,
  @as("DBSecurityGroupMemberships") dbsecurityGroupMemberships: option<dbsecurityGroupNameList>,
  @as("OptionVersion") optionVersion: option<string_>,
  @as("Port") port: option<integerOptional>,
  @as("OptionName") optionName: string_,
}
type option_ = {
  @as("VpcSecurityGroupMemberships")
  vpcSecurityGroupMemberships: option<vpcSecurityGroupMembershipList>,
  @as("DBSecurityGroupMemberships")
  dbsecurityGroupMemberships: option<dbsecurityGroupMembershipList>,
  @as("OptionSettings") optionSettings: option<optionSettingConfigurationList>,
  @as("OptionVersion") optionVersion: option<string_>,
  @as("Port") port: option<integerOptional>,
  @as("Permanent") permanent: option<boolean_>,
  @as("Persistent") persistent: option<boolean_>,
  @as("OptionDescription") optionDescription: option<string_>,
  @as("OptionName") optionName: option<string_>,
}
type installationMediaList = array<installationMedia>
type globalClusterMemberList = array<globalClusterMember>
type filterList = array<filter>
type exportTasksList = array<exportTask>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
type dbsnapshotAttributeList = array<dbsnapshotAttribute>
type dbsnapshot = {
  @as("TagList") tagList_: option<tagList_>,
  @as("DbiResourceId") dbiResourceId: option<string_>,
  @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<boolean_>,
  @as("Timezone") timezone: option<string_>,
  @as("DBSnapshotArn") dbsnapshotArn: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("TdeCredentialArn") tdeCredentialArn: option<string_>,
  @as("StorageType") storageType: option<string_>,
  @as("SourceDBSnapshotIdentifier") sourceDBSnapshotIdentifier: option<string_>,
  @as("SourceRegion") sourceRegion: option<string_>,
  @as("PercentProgress") percentProgress: option<integer_>,
  @as("OptionGroupName") optionGroupName: option<string_>,
  @as("Iops") iops: option<integerOptional>,
  @as("SnapshotType") snapshotType: option<string_>,
  @as("LicenseModel") licenseModel: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("InstanceCreateTime") instanceCreateTime: option<tstamp>,
  @as("VpcId") vpcId: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Status") status: option<string_>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("Engine") engine: option<string_>,
  @as("SnapshotCreateTime") snapshotCreateTime: option<tstamp>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
  @as("DBSnapshotIdentifier") dbsnapshotIdentifier: option<string_>,
}
type dbsecurityGroup = {
  @as("DBSecurityGroupArn") dbsecurityGroupArn: option<string_>,
  @as("IPRanges") ipranges: option<iprangeList>,
  @as("EC2SecurityGroups") ec2SecurityGroups: option<ec2SecurityGroupList>,
  @as("VpcId") vpcId: option<string_>,
  @as("DBSecurityGroupDescription") dbsecurityGroupDescription: option<string_>,
  @as("DBSecurityGroupName") dbsecurityGroupName: option<string_>,
  @as("OwnerId") ownerId: option<string_>,
}
type dbproxyTargetGroup = {
  @as("UpdatedDate") updatedDate: option<tstamp>,
  @as("CreatedDate") createdDate: option<tstamp>,
  @as("ConnectionPoolConfig") connectionPoolConfig: option<connectionPoolConfigurationInfo>,
  @as("Status") status: option<string_>,
  @as("IsDefault") isDefault: option<boolean_>,
  @as("TargetGroupArn") targetGroupArn: option<string_>,
  @as("TargetGroupName") targetGroupName: option<string_>,
  @as("DBProxyName") dbproxyName: option<string_>,
}
type dbproxyEndpointList = array<dbproxyEndpoint>
type dbproxy = {
  @as("UpdatedDate") updatedDate: option<tstamp>,
  @as("CreatedDate") createdDate: option<tstamp>,
  @as("DebugLogging") debugLogging: option<boolean_>,
  @as("IdleClientTimeout") idleClientTimeout: option<integer_>,
  @as("RequireTLS") requireTLS: option<boolean_>,
  @as("Endpoint") endpoint: option<string_>,
  @as("RoleArn") roleArn: option<string_>,
  @as("Auth") auth: option<userAuthConfigInfoList>,
  @as("VpcSubnetIds") vpcSubnetIds: option<stringList>,
  @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<stringList>,
  @as("VpcId") vpcId: option<string_>,
  @as("EngineFamily") engineFamily: option<string_>,
  @as("Status") status: option<dbproxyStatus>,
  @as("DBProxyArn") dbproxyArn: option<string_>,
  @as("DBProxyName") dbproxyName: option<string_>,
}
type dbinstanceAutomatedBackup = {
  @as("DBInstanceAutomatedBackupsReplications")
  dbinstanceAutomatedBackupsReplications: option<dbinstanceAutomatedBackupsReplicationList>,
  @as("DBInstanceAutomatedBackupsArn") dbinstanceAutomatedBackupsArn: option<string_>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<boolean_>,
  @as("Timezone") timezone: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("StorageType") storageType: option<string_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("TdeCredentialArn") tdeCredentialArn: option<string_>,
  @as("OptionGroupName") optionGroupName: option<string_>,
  @as("Iops") iops: option<integerOptional>,
  @as("LicenseModel") licenseModel: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("InstanceCreateTime") instanceCreateTime: option<tstamp>,
  @as("VpcId") vpcId: option<string_>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Status") status: option<string_>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("RestoreWindow") restoreWindow: option<restoreWindow>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
  @as("Region") region: option<string_>,
  @as("DbiResourceId") dbiResourceId: option<string_>,
  @as("DBInstanceArn") dbinstanceArn: option<string_>,
}
type dbclusterSnapshotAttributeList = array<dbclusterSnapshotAttribute>
type dbclusterSnapshot = {
  @as("TagList") tagList_: option<tagList_>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<boolean_>,
  @as("SourceDBClusterSnapshotArn") sourceDBClusterSnapshotArn: option<string_>,
  @as("DBClusterSnapshotArn") dbclusterSnapshotArn: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("PercentProgress") percentProgress: option<integer_>,
  @as("SnapshotType") snapshotType: option<string_>,
  @as("LicenseModel") licenseModel: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("ClusterCreateTime") clusterCreateTime: option<tstamp>,
  @as("VpcId") vpcId: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Status") status: option<string_>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("EngineMode") engineMode: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("SnapshotCreateTime") snapshotCreateTime: option<tstamp>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: option<string_>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
}
type dbclusterEndpointList = array<dbclusterEndpoint>
type customAvailabilityZoneList = array<customAvailabilityZone>
type clusterPendingModifiedValues = {
  @as("EngineVersion") engineVersion: option<string_>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<booleanOptional>,
  @as("MasterUserPassword") masterUserPassword: option<string_>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("PendingCloudwatchLogsExports")
  pendingCloudwatchLogsExports: option<pendingCloudwatchLogsExports>,
}
type validStorageOptionsList = array<validStorageOptions>
type targetGroupList = array<dbproxyTargetGroup>
type reservedDBInstancesOfferingList = array<reservedDBInstancesOffering>
type reservedDBInstanceList = array<reservedDBInstance>
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type orderableDBInstanceOptionsList = array<orderableDBInstanceOption>
type optionsList = array<option_>
type optionGroupOptionSettingsList = array<optionGroupOptionSetting>
type optionConfigurationList = array<optionConfiguration>
type globalCluster = {
  @as("FailoverState") failoverState: option<failoverState>,
  @as("GlobalClusterMembers") globalClusterMembers: option<globalClusterMemberList>,
  @as("DeletionProtection") deletionProtection: option<booleanOptional>,
  @as("StorageEncrypted") storageEncrypted: option<booleanOptional>,
  @as("DatabaseName") databaseName: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("Status") status: option<string_>,
  @as("GlobalClusterArn") globalClusterArn: option<string_>,
  @as("GlobalClusterResourceId") globalClusterResourceId: option<string_>,
  @as("GlobalClusterIdentifier") globalClusterIdentifier: option<string_>,
}
type engineDefaults = {
  @as("Parameters") parameters: option<parametersList>,
  @as("Marker") marker: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
}
type dbsubnetGroup = {
  @as("DBSubnetGroupArn") dbsubnetGroupArn: option<string_>,
  @as("Subnets") subnets: option<subnetList>,
  @as("SubnetGroupStatus") subnetGroupStatus: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("DBSubnetGroupDescription") dbsubnetGroupDescription: option<string_>,
  @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
}
type dbsnapshotList = array<dbsnapshot>
type dbsnapshotAttributesResult = {
  @as("DBSnapshotAttributes") dbsnapshotAttributes: option<dbsnapshotAttributeList>,
  @as("DBSnapshotIdentifier") dbsnapshotIdentifier: option<string_>,
}
type dbsecurityGroups = array<dbsecurityGroup>
type dbproxyList = array<dbproxy>
type dbinstanceAutomatedBackupList = array<dbinstanceAutomatedBackup>
type dbengineVersion = {
  @as("SupportsGlobalDatabases") supportsGlobalDatabases: option<boolean_>,
  @as("SupportsParallelQuery") supportsParallelQuery: option<boolean_>,
  @as("Status") status: option<string_>,
  @as("SupportedFeatureNames") supportedFeatureNames: option<featureNameList>,
  @as("SupportedEngineModes") supportedEngineModes: option<engineModeList>,
  @as("SupportsReadReplica") supportsReadReplica: option<boolean_>,
  @as("SupportsLogExportsToCloudwatchLogs") supportsLogExportsToCloudwatchLogs: option<boolean_>,
  @as("ExportableLogTypes") exportableLogTypes: option<logTypeList>,
  @as("SupportedTimezones") supportedTimezones: option<supportedTimezonesList>,
  @as("ValidUpgradeTarget") validUpgradeTarget: option<validUpgradeTargetList>,
  @as("SupportedNcharCharacterSets")
  supportedNcharCharacterSets: option<supportedCharacterSetsList>,
  @as("SupportedCharacterSets") supportedCharacterSets: option<supportedCharacterSetsList>,
  @as("DefaultCharacterSet") defaultCharacterSet: option<characterSet>,
  @as("DBEngineVersionDescription") dbengineVersionDescription: option<string_>,
  @as("DBEngineDescription") dbengineDescription: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type dbclusterSnapshotList = array<dbclusterSnapshot>
type dbclusterSnapshotAttributesResult = {
  @as("DBClusterSnapshotAttributes")
  dbclusterSnapshotAttributes: option<dbclusterSnapshotAttributeList>,
  @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: option<string_>,
}
type dbcluster = {
  @as("PendingModifiedValues") pendingModifiedValues: option<clusterPendingModifiedValues>,
  @as("GlobalWriteForwardingRequested") globalWriteForwardingRequested: option<booleanOptional>,
  @as("GlobalWriteForwardingStatus") globalWriteForwardingStatus: option<writeForwardingStatus>,
  @as("TagList") tagList_: option<tagList_>,
  @as("DomainMemberships") domainMemberships: option<domainMembershipList>,
  @as("CrossAccountClone") crossAccountClone: option<booleanOptional>,
  @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
  @as("ActivityStreamKinesisStreamName") activityStreamKinesisStreamName: option<string_>,
  @as("ActivityStreamKmsKeyId") activityStreamKmsKeyId: option<string_>,
  @as("ActivityStreamStatus") activityStreamStatus: option<activityStreamStatus>,
  @as("ActivityStreamMode") activityStreamMode: option<activityStreamMode>,
  @as("HttpEndpointEnabled") httpEndpointEnabled: option<booleanOptional>,
  @as("DeletionProtection") deletionProtection: option<booleanOptional>,
  @as("ScalingConfigurationInfo") scalingConfigurationInfo: option<scalingConfigurationInfo>,
  @as("EngineMode") engineMode: option<string_>,
  @as("Capacity") capacity: option<integerOptional>,
  @as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: option<logTypeList>,
  @as("BacktrackConsumedChangeRecords") backtrackConsumedChangeRecords: option<longOptional>,
  @as("BacktrackWindow") backtrackWindow: option<longOptional>,
  @as("EarliestBacktrackTime") earliestBacktrackTime: option<tstamp>,
  @as("ClusterCreateTime") clusterCreateTime: option<tstamp>,
  @as("CloneGroupId") cloneGroupId: option<string_>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<booleanOptional>,
  @as("AssociatedRoles") associatedRoles: option<dbclusterRoles>,
  @as("DBClusterArn") dbclusterArn: option<string_>,
  @as("DbClusterResourceId") dbClusterResourceId: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("HostedZoneId") hostedZoneId: option<string_>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @as("DBClusterMembers") dbclusterMembers: option<dbclusterMemberList>,
  @as("ReadReplicaIdentifiers") readReplicaIdentifiers: option<readReplicaIdentifierList>,
  @as("ReplicationSourceIdentifier") replicationSourceIdentifier: option<string_>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
  @as("DBClusterOptionGroupMemberships")
  dbclusterOptionGroupMemberships: option<dbclusterOptionGroupMemberships>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("Port") port: option<integerOptional>,
  @as("LatestRestorableTime") latestRestorableTime: option<tstamp>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("MultiAZ") multiAZ: option<booleanOptional>,
  @as("CustomEndpoints") customEndpoints: option<stringList>,
  @as("ReaderEndpoint") readerEndpoint: option<string_>,
  @as("Endpoint") endpoint: option<string_>,
  @as("EarliestRestorableTime") earliestRestorableTime: option<tstamp>,
  @as("PercentProgress") percentProgress: option<string_>,
  @as("Status") status: option<string_>,
  @as("DBSubnetGroup") dbsubnetGroup: option<string_>,
  @as("DBClusterParameterGroup") dbclusterParameterGroup: option<string_>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("DatabaseName") databaseName: option<string_>,
  @as("CharacterSetName") characterSetName: option<string_>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  @as("AllocatedStorage") allocatedStorage: option<integerOptional>,
}
type validDBInstanceModificationsMessage = {
  @as("ValidProcessorFeatures") validProcessorFeatures: option<availableProcessorFeatureList>,
  @as("Storage") storage: option<validStorageOptionsList>,
}
type optionGroupOption = {
  @as("OptionGroupOptionVersions") optionGroupOptionVersions: option<optionGroupOptionVersionsList>,
  @as("OptionGroupOptionSettings") optionGroupOptionSettings: option<optionGroupOptionSettingsList>,
  @as("SupportsOptionVersionDowngrade") supportsOptionVersionDowngrade: option<booleanOptional>,
  @as("VpcOnly") vpcOnly: option<boolean_>,
  @as("RequiresAutoMinorEngineVersionUpgrade")
  requiresAutoMinorEngineVersionUpgrade: option<boolean_>,
  @as("Permanent") permanent: option<boolean_>,
  @as("Persistent") persistent: option<boolean_>,
  @as("OptionsConflictsWith") optionsConflictsWith: option<optionsConflictsWith>,
  @as("OptionsDependedOn") optionsDependedOn: option<optionsDependedOn>,
  @as("DefaultPort") defaultPort: option<integerOptional>,
  @as("PortRequired") portRequired: option<boolean_>,
  @as("MinimumRequiredMinorEngineVersion") minimumRequiredMinorEngineVersion: option<string_>,
  @as("MajorEngineVersion") majorEngineVersion: option<string_>,
  @as("EngineName") engineName: option<string_>,
  @as("Description") description: option<string_>,
  @as("Name") name: option<string_>,
}
type optionGroup = {
  @as("OptionGroupArn") optionGroupArn: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("AllowsVpcAndNonVpcInstanceMemberships")
  allowsVpcAndNonVpcInstanceMemberships: option<boolean_>,
  @as("Options") options: option<optionsList>,
  @as("MajorEngineVersion") majorEngineVersion: option<string_>,
  @as("EngineName") engineName: option<string_>,
  @as("OptionGroupDescription") optionGroupDescription: option<string_>,
  @as("OptionGroupName") optionGroupName: option<string_>,
}
type globalClusterList = array<globalCluster>
type dbsubnetGroups = array<dbsubnetGroup>
type dbinstance = {
  @as("AwsBackupRecoveryPointArn") awsBackupRecoveryPointArn: option<string_>,
  @as("CustomerOwnedIpEnabled") customerOwnedIpEnabled: option<booleanOptional>,
  @as("DBInstanceAutomatedBackupsReplications")
  dbinstanceAutomatedBackupsReplications: option<dbinstanceAutomatedBackupsReplicationList>,
  @as("TagList") tagList_: option<tagList_>,
  @as("MaxAllocatedStorage") maxAllocatedStorage: option<integerOptional>,
  @as("ListenerEndpoint") listenerEndpoint: option<endpoint>,
  @as("AssociatedRoles") associatedRoles: option<dbinstanceRoles>,
  @as("DeletionProtection") deletionProtection: option<boolean_>,
  @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
  @as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: option<logTypeList>,
  @as("PerformanceInsightsRetentionPeriod")
  performanceInsightsRetentionPeriod: option<integerOptional>,
  @as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: option<string_>,
  @as("PerformanceInsightsEnabled") performanceInsightsEnabled: option<booleanOptional>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<boolean_>,
  @as("Timezone") timezone: option<string_>,
  @as("DBInstanceArn") dbinstanceArn: option<string_>,
  @as("PromotionTier") promotionTier: option<integerOptional>,
  @as("MonitoringRoleArn") monitoringRoleArn: option<string_>,
  @as("EnhancedMonitoringResourceArn") enhancedMonitoringResourceArn: option<string_>,
  @as("MonitoringInterval") monitoringInterval: option<integerOptional>,
  @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<boolean_>,
  @as("DomainMemberships") domainMemberships: option<domainMembershipList>,
  @as("CACertificateIdentifier") cacertificateIdentifier: option<string_>,
  @as("DbiResourceId") dbiResourceId: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("DbInstancePort") dbInstancePort: option<integer_>,
  @as("TdeCredentialArn") tdeCredentialArn: option<string_>,
  @as("StorageType") storageType: option<string_>,
  @as("StatusInfos") statusInfos: option<dbinstanceStatusInfoList>,
  @as("PubliclyAccessible") publiclyAccessible: option<boolean_>,
  @as("SecondaryAvailabilityZone") secondaryAvailabilityZone: option<string_>,
  @as("NcharCharacterSetName") ncharCharacterSetName: option<string_>,
  @as("CharacterSetName") characterSetName: option<string_>,
  @as("OptionGroupMemberships") optionGroupMemberships: option<optionGroupMembershipList>,
  @as("Iops") iops: option<integerOptional>,
  @as("LicenseModel") licenseModel: option<string_>,
  @as("ReplicaMode") replicaMode: option<replicaMode>,
  @as("ReadReplicaDBClusterIdentifiers")
  readReplicaDBClusterIdentifiers: option<readReplicaDBClusterIdentifierList>,
  @as("ReadReplicaDBInstanceIdentifiers")
  readReplicaDBInstanceIdentifiers: option<readReplicaDBInstanceIdentifierList>,
  @as("ReadReplicaSourceDBInstanceIdentifier")
  readReplicaSourceDBInstanceIdentifier: option<string_>,
  @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<boolean_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("MultiAZ") multiAZ: option<boolean_>,
  @as("LatestRestorableTime") latestRestorableTime: option<tstamp>,
  @as("PendingModifiedValues") pendingModifiedValues: option<pendingModifiedValues>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("DBParameterGroups") dbparameterGroups: option<dbparameterGroupStatusList>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @as("DBSecurityGroups") dbsecurityGroups: option<dbsecurityGroupMembershipList>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integer_>,
  @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
  @as("InstanceCreateTime") instanceCreateTime: option<tstamp>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("Endpoint") endpoint: option<endpoint>,
  @as("DBName") dbname: option<string_>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("DBInstanceStatus") dbinstanceStatus: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
}
type dbengineVersionList = array<dbengineVersion>
type dbclusterList = array<dbcluster>
type optionGroupsList = array<optionGroup>
type optionGroupOptionsList = array<optionGroupOption>
type dbinstanceList = array<dbinstance>

module StopActivityStream = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: option<booleanOptional>,
    @as("ResourceArn") resourceArn: string_,
  }
  type response = {
    @as("Status") status: option<activityStreamStatus>,
    @as("KinesisStreamName") kinesisStreamName: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "StopActivityStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartActivityStream = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: option<booleanOptional>,
    @as("KmsKeyId") kmsKeyId: string_,
    @as("Mode") mode: activityStreamMode,
    @as("ResourceArn") resourceArn: string_,
  }
  type response = {
    @as("ApplyImmediately") applyImmediately: option<boolean_>,
    @as("Mode") mode: option<activityStreamMode>,
    @as("Status") status: option<activityStreamStatus>,
    @as("KinesisStreamName") kinesisStreamName: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "StartActivityStreamCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveRoleFromDBInstance = {
  type t
  type request = {
    @as("FeatureName") featureName: string_,
    @as("RoleArn") roleArn: string_,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "RemoveRoleFromDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveRoleFromDBCluster = {
  type t
  type request = {
    @as("FeatureName") featureName: option<string_>,
    @as("RoleArn") roleArn: string_,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new external new_: request => t = "RemoveRoleFromDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyCurrentDBClusterCapacity = {
  type t
  type request = {
    @as("TimeoutAction") timeoutAction: option<string_>,
    @as("SecondsBeforeTimeout") secondsBeforeTimeout: option<integerOptional>,
    @as("Capacity") capacity: option<integerOptional>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = {
    @as("TimeoutAction") timeoutAction: option<string_>,
    @as("SecondsBeforeTimeout") secondsBeforeTimeout: option<integerOptional>,
    @as("CurrentCapacity") currentCapacity: option<integerOptional>,
    @as("PendingCapacity") pendingCapacity: option<integerOptional>,
    @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "ModifyCurrentDBClusterCapacityCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DownloadDBLogFilePortion = {
  type t
  type request = {
    @as("NumberOfLines") numberOfLines: option<integer_>,
    @as("Marker") marker: option<string_>,
    @as("LogFileName") logFileName: string_,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {
    @as("AdditionalDataPending") additionalDataPending: option<boolean_>,
    @as("Marker") marker: option<string_>,
    @as("LogFileData") logFileData: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DownloadDBLogFilePortionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteOptionGroup = {
  type t
  type request = {@as("OptionGroupName") optionGroupName: string_}

  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteOptionGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBSubnetGroup = {
  type t
  type request = {@as("DBSubnetGroupName") dbsubnetGroupName: string_}

  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBSecurityGroup = {
  type t
  type request = {@as("DBSecurityGroupName") dbsecurityGroupName: string_}

  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBSecurityGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBParameterGroup = {
  type t
  type request = {@as("DBParameterGroupName") dbparameterGroupName: string_}

  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBClusterParameterGroup = {
  type t
  type request = {@as("DBClusterParameterGroupName") dbclusterParameterGroupName: string_}

  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DeleteDBClusterParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module BacktrackDBCluster = {
  type t
  type request = {
    @as("UseEarliestTimeOnPointInTimeUnavailable")
    useEarliestTimeOnPointInTimeUnavailable: option<booleanOptional>,
    @as("Force") force: option<booleanOptional>,
    @as("BacktrackTo") backtrackTo: tstamp,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = dbclusterBacktrack
  @module("@aws-sdk/client-rds") @new external new_: request => t = "BacktrackDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddRoleToDBInstance = {
  type t
  type request = {
    @as("FeatureName") featureName: string_,
    @as("RoleArn") roleArn: string_,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new external new_: request => t = "AddRoleToDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddRoleToDBCluster = {
  type t
  type request = {
    @as("FeatureName") featureName: option<string_>,
    @as("RoleArn") roleArn: string_,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new external new_: request => t = "AddRoleToDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartExportTask = {
  type t
  type request = {
    @as("ExportOnly") exportOnly: option<stringList>,
    @as("S3Prefix") s3Prefix: option<string_>,
    @as("KmsKeyId") kmsKeyId: string_,
    @as("IamRoleArn") iamRoleArn: string_,
    @as("S3BucketName") s3BucketName: string_,
    @as("SourceArn") sourceArn: string_,
    @as("ExportTaskIdentifier") exportTaskIdentifier: string_,
  }
  type response = exportTask
  @module("@aws-sdk/client-rds") @new external new_: request => t = "StartExportTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: keyList,
    @as("ResourceName") resourceName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new_: request => t = "RemoveTagsFromResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyDBClusterEndpoint = {
  type t
  type request = {
    @as("ExcludedMembers") excludedMembers: option<stringList>,
    @as("StaticMembers") staticMembers: option<stringList>,
    @as("EndpointType") endpointType: option<string_>,
    @as("DBClusterEndpointIdentifier") dbclusterEndpointIdentifier: string_,
  }
  type response = dbclusterEndpoint
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBClusterEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCertificates = {
  type t
  type request = {
    @as("RemoveCustomerOverride") removeCustomerOverride: option<booleanOptional>,
    @as("CertificateIdentifier") certificateIdentifier: option<string_>,
  }
  type response = {@as("Certificate") certificate: option<certificate>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyCertificatesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportInstallationMedia = {
  type t
  type request = {
    @as("OSInstallationMediaPath") osinstallationMediaPath: string_,
    @as("EngineInstallationMediaPath") engineInstallationMediaPath: string_,
    @as("EngineVersion") engineVersion: string_,
    @as("Engine") engine: string_,
    @as("CustomAvailabilityZoneId") customAvailabilityZoneId: string_,
  }
  type response = installationMedia
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ImportInstallationMediaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterDBProxyTargets = {
  type t
  type request = {
    @as("DBClusterIdentifiers") dbclusterIdentifiers: option<stringList>,
    @as("DBInstanceIdentifiers") dbinstanceIdentifiers: option<stringList>,
    @as("TargetGroupName") targetGroupName: option<string_>,
    @as("DBProxyName") dbproxyName: string_,
  }
  type response = unit
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DeregisterDBProxyTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInstallationMedia = {
  type t
  type request = {@as("InstallationMediaId") installationMediaId: string_}
  type response = installationMedia
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteInstallationMediaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterEndpoint = {
  type t
  type request = {@as("DBClusterEndpointIdentifier") dbclusterEndpointIdentifier: string_}
  type response = dbclusterEndpoint
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBClusterEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelExportTask = {
  type t
  type request = {@as("ExportTaskIdentifier") exportTaskIdentifier: string_}
  type response = exportTask
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CancelExportTaskCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveSourceIdentifierFromSubscription = {
  type t
  type request = {
    @as("SourceIdentifier") sourceIdentifier: string_,
    @as("SubscriptionName") subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "RemoveSourceIdentifierFromSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyEventSubscription = {
  type t
  type request = {
    @as("Enabled") enabled: option<booleanOptional>,
    @as("EventCategories") eventCategories: option<eventCategoriesList>,
    @as("SourceType") sourceType: option<string_>,
    @as("SnsTopicArn") snsTopicArn: option<string_>,
    @as("SubscriptionName") subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyEventSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBProxyEndpoint = {
  type t
  type request = {
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<stringList>,
    @as("NewDBProxyEndpointName") newDBProxyEndpointName: option<dbproxyEndpointName>,
    @as("DBProxyEndpointName") dbproxyEndpointName: dbproxyEndpointName,
  }
  type response = {@as("DBProxyEndpoint") dbproxyEndpoint: option<dbproxyEndpoint>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBProxyEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t
  type request = unit
  type response = {@as("AccountQuotas") accountQuotas: option<accountQuotaList>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeAccountAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEventSubscription = {
  type t
  type request = {@as("SubscriptionName") subscriptionName: string_}
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteEventSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBProxyEndpoint = {
  type t
  type request = {@as("DBProxyEndpointName") dbproxyEndpointName: dbproxyEndpointName}
  type response = {@as("DBProxyEndpoint") dbproxyEndpoint: option<dbproxyEndpoint>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBProxyEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCustomAvailabilityZone = {
  type t
  type request = {@as("CustomAvailabilityZoneId") customAvailabilityZoneId: string_}
  type response = {
    @as("CustomAvailabilityZone") customAvailabilityZone: option<customAvailabilityZone>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DeleteCustomAvailabilityZoneCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSubscription = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Enabled") enabled: option<booleanOptional>,
    @as("SourceIds") sourceIds: option<sourceIdsList>,
    @as("EventCategories") eventCategories: option<eventCategoriesList>,
    @as("SourceType") sourceType: option<string_>,
    @as("SnsTopicArn") snsTopicArn: string_,
    @as("SubscriptionName") subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateEventSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBProxyEndpoint = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("TargetRole") targetRole: option<dbproxyEndpointTargetRole>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<stringList>,
    @as("VpcSubnetIds") vpcSubnetIds: stringList,
    @as("DBProxyEndpointName") dbproxyEndpointName: dbproxyEndpointName,
    @as("DBProxyName") dbproxyName: dbproxyName,
  }
  type response = {@as("DBProxyEndpoint") dbproxyEndpoint: option<dbproxyEndpoint>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBProxyEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBParameterGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: string_,
    @as("DBParameterGroupFamily") dbparameterGroupFamily: string_,
    @as("DBParameterGroupName") dbparameterGroupName: string_,
  }
  type response = {@as("DBParameterGroup") dbparameterGroup: option<dbparameterGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterParameterGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: string_,
    @as("DBParameterGroupFamily") dbparameterGroupFamily: string_,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: string_,
  }
  type response = {
    @as("DBClusterParameterGroup") dbclusterParameterGroup: option<dbclusterParameterGroup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "CreateDBClusterParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterEndpoint = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("ExcludedMembers") excludedMembers: option<stringList>,
    @as("StaticMembers") staticMembers: option<stringList>,
    @as("EndpointType") endpointType: string_,
    @as("DBClusterEndpointIdentifier") dbclusterEndpointIdentifier: string_,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = dbclusterEndpoint
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBClusterEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomAvailabilityZone = {
  type t
  type request = {
    @as("VpnTunnelOriginatorIP") vpnTunnelOriginatorIP: option<string_>,
    @as("NewVpnTunnelName") newVpnTunnelName: option<string_>,
    @as("ExistingVpnId") existingVpnId: option<string_>,
    @as("CustomAvailabilityZoneName") customAvailabilityZoneName: string_,
  }
  type response = {
    @as("CustomAvailabilityZone") customAvailabilityZone: option<customAvailabilityZone>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "CreateCustomAvailabilityZoneCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBParameterGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("TargetDBParameterGroupDescription") targetDBParameterGroupDescription: string_,
    @as("TargetDBParameterGroupIdentifier") targetDBParameterGroupIdentifier: string_,
    @as("SourceDBParameterGroupIdentifier") sourceDBParameterGroupIdentifier: string_,
  }
  type response = {@as("DBParameterGroup") dbparameterGroup: option<dbparameterGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CopyDBParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBClusterParameterGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("TargetDBClusterParameterGroupDescription")
    targetDBClusterParameterGroupDescription: string_,
    @as("TargetDBClusterParameterGroupIdentifier") targetDBClusterParameterGroupIdentifier: string_,
    @as("SourceDBClusterParameterGroupIdentifier") sourceDBClusterParameterGroupIdentifier: string_,
  }
  type response = {
    @as("DBClusterParameterGroup") dbclusterParameterGroup: option<dbclusterParameterGroup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "CopyDBClusterParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceName") resourceName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new_: request => t = "AddTagsToResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddSourceIdentifierToSubscription = {
  type t
  type request = {
    @as("SourceIdentifier") sourceIdentifier: string_,
    @as("SubscriptionName") subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "AddSourceIdentifierToSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDBInstanceAutomatedBackupsReplication = {
  type t
  type request = {@as("SourceDBInstanceArn") sourceDBInstanceArn: string_}
  type response = {
    @as("DBInstanceAutomatedBackup") dbinstanceAutomatedBackup: option<dbinstanceAutomatedBackup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "StopDBInstanceAutomatedBackupsReplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDBInstanceAutomatedBackupsReplication = {
  type t
  type request = {
    @as("PreSignedUrl") preSignedUrl: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("SourceDBInstanceArn") sourceDBInstanceArn: string_,
  }
  type response = {
    @as("DBInstanceAutomatedBackup") dbinstanceAutomatedBackup: option<dbinstanceAutomatedBackup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "StartDBInstanceAutomatedBackupsReplicationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeDBSecurityGroupIngress = {
  type t
  type request = {
    @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: option<string_>,
    @as("EC2SecurityGroupId") ec2SecurityGroupId: option<string_>,
    @as("EC2SecurityGroupName") ec2SecurityGroupName: option<string_>,
    @as("CIDRIP") cidrip: option<string_>,
    @as("DBSecurityGroupName") dbsecurityGroupName: string_,
  }
  type response = {@as("DBSecurityGroup") dbsecurityGroup: option<dbsecurityGroup>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "RevokeDBSecurityGroupIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetDBParameterGroup = {
  type t
  type request = {
    @as("Parameters") parameters: option<parametersList>,
    @as("ResetAllParameters") resetAllParameters: option<boolean_>,
    @as("DBParameterGroupName") dbparameterGroupName: string_,
  }
  type response = {@as("DBParameterGroupName") dbparameterGroupName: option<string_>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ResetDBParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetDBClusterParameterGroup = {
  type t
  type request = {
    @as("Parameters") parameters: option<parametersList>,
    @as("ResetAllParameters") resetAllParameters: option<boolean_>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: string_,
  }
  type response = {@as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "ResetDBClusterParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterDBProxyTargets = {
  type t
  type request = {
    @as("DBClusterIdentifiers") dbclusterIdentifiers: option<stringList>,
    @as("DBInstanceIdentifiers") dbinstanceIdentifiers: option<stringList>,
    @as("TargetGroupName") targetGroupName: option<string_>,
    @as("DBProxyName") dbproxyName: string_,
  }
  type response = {@as("DBProxyTargets") dbproxyTargets: option<targetList>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "RegisterDBProxyTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseReservedDBInstancesOffering = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("DBInstanceCount") dbinstanceCount: option<integerOptional>,
    @as("ReservedDBInstanceId") reservedDBInstanceId: option<string_>,
    @as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: string_,
  }
  type response = {@as("ReservedDBInstance") reservedDBInstance: option<reservedDBInstance>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "PurchaseReservedDBInstancesOfferingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBSnapshot = {
  type t
  type request = {
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("DBSnapshotIdentifier") dbsnapshotIdentifier: string_,
  }
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBProxyTargetGroup = {
  type t
  type request = {
    @as("NewName") newName: option<string_>,
    @as("ConnectionPoolConfig") connectionPoolConfig: option<connectionPoolConfiguration>,
    @as("DBProxyName") dbproxyName: string_,
    @as("TargetGroupName") targetGroupName: string_,
  }
  type response = {@as("DBProxyTargetGroup") dbproxyTargetGroup: option<dbproxyTargetGroup>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "ModifyDBProxyTargetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBProxy = {
  type t
  type request = {
    @as("SecurityGroups") securityGroups: option<stringList>,
    @as("RoleArn") roleArn: option<string_>,
    @as("DebugLogging") debugLogging: option<booleanOptional>,
    @as("IdleClientTimeout") idleClientTimeout: option<integerOptional>,
    @as("RequireTLS") requireTLS: option<booleanOptional>,
    @as("Auth") auth: option<userAuthConfigList>,
    @as("NewDBProxyName") newDBProxyName: option<string_>,
    @as("DBProxyName") dbproxyName: string_,
  }
  type response = {@as("DBProxy") dbproxy: option<dbproxy>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBProxyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBParameterGroup = {
  type t
  type request = {
    @as("Parameters") parameters: parametersList,
    @as("DBParameterGroupName") dbparameterGroupName: string_,
  }
  type response = {@as("DBParameterGroupName") dbparameterGroupName: option<string_>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBClusterParameterGroup = {
  type t
  type request = {
    @as("Parameters") parameters: parametersList,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: string_,
  }
  type response = {@as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "ModifyDBClusterParameterGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("ResourceName") resourceName: string_,
  }
  type response = {@as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSourceRegions = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("RegionName") regionName: option<string_>,
  }
  type response = {
    @as("SourceRegions") sourceRegions: option<sourceRegionList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeSourceRegionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstallationMedia = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("InstallationMediaId") installationMediaId: option<string_>,
  }
  type response = {
    @as("InstallationMedia") installationMedia: option<installationMediaList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeInstallationMediaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExportTasks = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("SourceArn") sourceArn: option<string_>,
    @as("ExportTaskIdentifier") exportTaskIdentifier: option<string_>,
  }
  type response = {
    @as("ExportTasks") exportTasks: option<exportTasksList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeExportTasksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("EventCategories") eventCategories: option<eventCategoriesList>,
    @as("Duration") duration: option<integerOptional>,
    @as("EndTime") endTime: option<tstamp>,
    @as("StartTime") startTime: option<tstamp>,
    @as("SourceType") sourceType: option<sourceType>,
    @as("SourceIdentifier") sourceIdentifier: option<string_>,
  }
  type response = {
    @as("Events") events: option<eventList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeEventsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventSubscriptions = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("SubscriptionName") subscriptionName: option<string_>,
  }
  type response = {
    @as("EventSubscriptionsList") eventSubscriptionsList: option<eventSubscriptionsList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeEventSubscriptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventCategories = {
  type t
  type request = {
    @as("Filters") filters: option<filterList>,
    @as("SourceType") sourceType: option<string_>,
  }
  type response = {
    @as("EventCategoriesMapList") eventCategoriesMapList: option<eventCategoriesMapList>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeEventCategoriesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxyTargets = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("TargetGroupName") targetGroupName: option<string_>,
    @as("DBProxyName") dbproxyName: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("Targets") targets: option<targetList>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBProxyTargetsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxyEndpoints = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("DBProxyEndpointName") dbproxyEndpointName: option<dbproxyEndpointName>,
    @as("DBProxyName") dbproxyName: option<dbproxyName>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("DBProxyEndpoints") dbproxyEndpoints: option<dbproxyEndpointList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBProxyEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("Source") source: option<string_>,
    @as("DBParameterGroupName") dbparameterGroupName: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("Parameters") parameters: option<parametersList>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBParameterGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
  }
  type response = {
    @as("DBParameterGroups") dbparameterGroups: option<dbparameterGroupList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBParameterGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBLogFiles = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("FileSize") fileSize: option<long>,
    @as("FileLastWritten") fileLastWritten: option<long>,
    @as("FilenameContains") filenameContains: option<string_>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("DescribeDBLogFiles") describeDBLogFiles: option<describeDBLogFilesList>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBLogFilesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("Source") source: option<string_>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("Parameters") parameters: option<parametersList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBClusterParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterParameterGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
  }
  type response = {
    @as("DBClusterParameterGroups") dbclusterParameterGroups: option<dbclusterParameterGroupList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBClusterParameterGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterEndpoints = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBClusterEndpointIdentifier") dbclusterEndpointIdentifier: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  }
  type response = {
    @as("DBClusterEndpoints") dbclusterEndpoints: option<dbclusterEndpointList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBClusterEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterBacktracks = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("BacktrackIdentifier") backtrackIdentifier: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = {
    @as("DBClusterBacktracks") dbclusterBacktracks: option<dbclusterBacktrackList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBClusterBacktracksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomAvailabilityZones = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("CustomAvailabilityZoneId") customAvailabilityZoneId: option<string_>,
  }
  type response = {
    @as("CustomAvailabilityZones") customAvailabilityZones: option<customAvailabilityZoneList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeCustomAvailabilityZonesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificates = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("CertificateIdentifier") certificateIdentifier: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("Certificates") certificates: option<certificateList>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeCertificatesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBSnapshot = {
  type t
  type request = {@as("DBSnapshotIdentifier") dbsnapshotIdentifier: string_}
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBProxy = {
  type t
  type request = {@as("DBProxyName") dbproxyName: string_}
  type response = {@as("DBProxy") dbproxy: option<dbproxy>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBProxyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBInstanceAutomatedBackup = {
  type t
  type request = {
    @as("DBInstanceAutomatedBackupsArn") dbinstanceAutomatedBackupsArn: option<string_>,
    @as("DbiResourceId") dbiResourceId: option<string_>,
  }
  type response = {
    @as("DBInstanceAutomatedBackup") dbinstanceAutomatedBackup: option<dbinstanceAutomatedBackup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DeleteDBInstanceAutomatedBackupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterSnapshot = {
  type t
  type request = {@as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: string_}
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBClusterSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBSnapshot = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
    @as("DBSnapshotIdentifier") dbsnapshotIdentifier: string_,
  }
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBSecurityGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("DBSecurityGroupDescription") dbsecurityGroupDescription: string_,
    @as("DBSecurityGroupName") dbsecurityGroupName: string_,
  }
  type response = {@as("DBSecurityGroup") dbsecurityGroup: option<dbsecurityGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBSecurityGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBProxy = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("DebugLogging") debugLogging: option<boolean_>,
    @as("IdleClientTimeout") idleClientTimeout: option<integerOptional>,
    @as("RequireTLS") requireTLS: option<boolean_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<stringList>,
    @as("VpcSubnetIds") vpcSubnetIds: stringList,
    @as("RoleArn") roleArn: string_,
    @as("Auth") auth: userAuthConfigList,
    @as("EngineFamily") engineFamily: engineFamily,
    @as("DBProxyName") dbproxyName: string_,
  }
  type response = {@as("DBProxy") dbproxy: option<dbproxy>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBProxyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterSnapshot = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
    @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBClusterSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBSnapshot = {
  type t
  type request = {
    @as("TargetCustomAvailabilityZone") targetCustomAvailabilityZone: option<string_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("PreSignedUrl") preSignedUrl: option<string_>,
    @as("CopyTags") copyTags: option<booleanOptional>,
    @as("Tags") tags: option<tagList_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("TargetDBSnapshotIdentifier") targetDBSnapshotIdentifier: string_,
    @as("SourceDBSnapshotIdentifier") sourceDBSnapshotIdentifier: string_,
  }
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CopyDBSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBClusterSnapshot = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("CopyTags") copyTags: option<booleanOptional>,
    @as("PreSignedUrl") preSignedUrl: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("TargetDBClusterSnapshotIdentifier") targetDBClusterSnapshotIdentifier: string_,
    @as("SourceDBClusterSnapshotIdentifier") sourceDBClusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CopyDBClusterSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeDBSecurityGroupIngress = {
  type t
  type request = {
    @as("EC2SecurityGroupOwnerId") ec2SecurityGroupOwnerId: option<string_>,
    @as("EC2SecurityGroupId") ec2SecurityGroupId: option<string_>,
    @as("EC2SecurityGroupName") ec2SecurityGroupName: option<string_>,
    @as("CIDRIP") cidrip: option<string_>,
    @as("DBSecurityGroupName") dbsecurityGroupName: string_,
  }
  type response = {@as("DBSecurityGroup") dbsecurityGroup: option<dbsecurityGroup>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "AuthorizeDBSecurityGroupIngressCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplyPendingMaintenanceAction = {
  type t
  type request = {
    @as("OptInType") optInType: string_,
    @as("ApplyAction") applyAction: string_,
    @as("ResourceIdentifier") resourceIdentifier: string_,
  }
  type response = {
    @as("ResourcePendingMaintenanceActions")
    resourcePendingMaintenanceActions: option<resourcePendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "ApplyPendingMaintenanceActionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDBCluster = {
  type t
  type request = {@as("DBClusterIdentifier") dbclusterIdentifier: string_}
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "StopDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDBCluster = {
  type t
  type request = {@as("DBClusterIdentifier") dbclusterIdentifier: string_}
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "StartDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterToPointInTime = {
  type t
  type request = {
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("Domain") domain: option<string_>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("BacktrackWindow") backtrackWindow: option<longOptional>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("UseLatestRestorableTime") useLatestRestorableTime: option<boolean_>,
    @as("RestoreToTime") restoreToTime: option<tstamp>,
    @as("SourceDBClusterIdentifier") sourceDBClusterIdentifier: string_,
    @as("RestoreType") restoreType: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "RestoreDBClusterToPointInTimeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterFromSnapshot = {
  type t
  type request = {
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("Domain") domain: option<string_>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("ScalingConfiguration") scalingConfiguration: option<scalingConfiguration>,
    @as("EngineMode") engineMode: option<string_>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("BacktrackWindow") backtrackWindow: option<longOptional>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("DatabaseName") databaseName: option<string_>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: string_,
    @as("SnapshotIdentifier") snapshotIdentifier: string_,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
    @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "RestoreDBClusterFromSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterFromS3 = {
  type t
  type request = {
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("Domain") domain: option<string_>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("BacktrackWindow") backtrackWindow: option<longOptional>,
    @as("S3IngestionRoleArn") s3IngestionRoleArn: string_,
    @as("S3Prefix") s3Prefix: option<string_>,
    @as("S3BucketName") s3BucketName: string_,
    @as("SourceEngineVersion") sourceEngineVersion: string_,
    @as("SourceEngine") sourceEngine: string_,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("StorageEncrypted") storageEncrypted: option<booleanOptional>,
    @as("Tags") tags: option<tagList_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("MasterUserPassword") masterUserPassword: string_,
    @as("MasterUsername") masterUsername: string_,
    @as("Port") port: option<integerOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: string_,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
    @as("DatabaseName") databaseName: option<string_>,
    @as("CharacterSetName") characterSetName: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "RestoreDBClusterFromS3Command"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveFromGlobalCluster = {
  type t
  type request = {
    @as("DbClusterIdentifier") dbClusterIdentifier: option<string_>,
    @as("GlobalClusterIdentifier") globalClusterIdentifier: option<string_>,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "RemoveFromGlobalClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PromoteReadReplicaDBCluster = {
  type t
  type request = {@as("DBClusterIdentifier") dbclusterIdentifier: string_}
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "PromoteReadReplicaDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyGlobalCluster = {
  type t
  type request = {
    @as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("NewGlobalClusterIdentifier") newGlobalClusterIdentifier: option<string_>,
    @as("GlobalClusterIdentifier") globalClusterIdentifier: option<string_>,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyGlobalClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBSubnetGroup = {
  type t
  type request = {
    @as("SubnetIds") subnetIds: subnetIdentifierList,
    @as("DBSubnetGroupDescription") dbsubnetGroupDescription: option<string_>,
    @as("DBSubnetGroupName") dbsubnetGroupName: string_,
  }
  type response = {@as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBSnapshotAttribute = {
  type t
  type request = {
    @as("ValuesToRemove") valuesToRemove: option<attributeValueList>,
    @as("ValuesToAdd") valuesToAdd: option<attributeValueList>,
    @as("AttributeName") attributeName: string_,
    @as("DBSnapshotIdentifier") dbsnapshotIdentifier: string_,
  }
  type response = {
    @as("DBSnapshotAttributesResult")
    dbsnapshotAttributesResult: option<dbsnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "ModifyDBSnapshotAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBClusterSnapshotAttribute = {
  type t
  type request = {
    @as("ValuesToRemove") valuesToRemove: option<attributeValueList>,
    @as("ValuesToAdd") valuesToAdd: option<attributeValueList>,
    @as("AttributeName") attributeName: string_,
    @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: string_,
  }
  type response = {
    @as("DBClusterSnapshotAttributesResult")
    dbclusterSnapshotAttributesResult: option<dbclusterSnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "ModifyDBClusterSnapshotAttributeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBCluster = {
  type t
  type request = {
    @as("EnableGlobalWriteForwarding") enableGlobalWriteForwarding: option<booleanOptional>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("EnableHttpEndpoint") enableHttpEndpoint: option<booleanOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("ScalingConfiguration") scalingConfiguration: option<scalingConfiguration>,
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("Domain") domain: option<string_>,
    @as("DBInstanceParameterGroupName") dbinstanceParameterGroupName: option<string_>,
    @as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: option<boolean_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @as("BacktrackWindow") backtrackWindow: option<longOptional>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("MasterUserPassword") masterUserPassword: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("ApplyImmediately") applyImmediately: option<boolean_>,
    @as("NewDBClusterIdentifier") newDBClusterIdentifier: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FailoverGlobalCluster = {
  type t
  type request = {
    @as("TargetDbClusterIdentifier") targetDbClusterIdentifier: dbclusterIdentifier,
    @as("GlobalClusterIdentifier") globalClusterIdentifier: globalClusterIdentifier,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "FailoverGlobalClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FailoverDBCluster = {
  type t
  type request = {
    @as("TargetDBInstanceIdentifier") targetDBInstanceIdentifier: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "FailoverDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedDBInstancesOfferings = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("OfferingType") offeringType: option<string_>,
    @as("ProductDescription") productDescription: option<string_>,
    @as("Duration") duration: option<string_>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: option<string_>,
  }
  type response = {
    @as("ReservedDBInstancesOfferings")
    reservedDBInstancesOfferings: option<reservedDBInstancesOfferingList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeReservedDBInstancesOfferingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedDBInstances = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("LeaseId") leaseId: option<string_>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("OfferingType") offeringType: option<string_>,
    @as("ProductDescription") productDescription: option<string_>,
    @as("Duration") duration: option<string_>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("ReservedDBInstancesOfferingId") reservedDBInstancesOfferingId: option<string_>,
    @as("ReservedDBInstanceId") reservedDBInstanceId: option<string_>,
  }
  type response = {
    @as("ReservedDBInstances") reservedDBInstances: option<reservedDBInstanceList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeReservedDBInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePendingMaintenanceActions = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("ResourceIdentifier") resourceIdentifier: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("PendingMaintenanceActions") pendingMaintenanceActions: option<pendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribePendingMaintenanceActionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrderableDBInstanceOptions = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("Vpc") vpc: option<booleanOptional>,
    @as("AvailabilityZoneGroup") availabilityZoneGroup: option<string_>,
    @as("LicenseModel") licenseModel: option<string_>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("OrderableDBInstanceOptions")
    orderableDBInstanceOptions: option<orderableDBInstanceOptionsList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeOrderableDBInstanceOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngineDefaultParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBParameterGroupFamily") dbparameterGroupFamily: string_,
  }
  type response = {@as("EngineDefaults") engineDefaults: option<engineDefaults>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeEngineDefaultParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngineDefaultClusterParameters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBParameterGroupFamily") dbparameterGroupFamily: string_,
  }
  type response = {@as("EngineDefaults") engineDefaults: option<engineDefaults>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeEngineDefaultClusterParametersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSnapshots = {
  type t
  type request = {
    @as("DbiResourceId") dbiResourceId: option<string_>,
    @as("IncludePublic") includePublic: option<boolean_>,
    @as("IncludeShared") includeShared: option<boolean_>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("SnapshotType") snapshotType: option<string_>,
    @as("DBSnapshotIdentifier") dbsnapshotIdentifier: option<string_>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
  }
  type response = {
    @as("DBSnapshots") dbsnapshots: option<dbsnapshotList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBSnapshotsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSnapshotAttributes = {
  type t
  type request = {@as("DBSnapshotIdentifier") dbsnapshotIdentifier: string_}
  type response = {
    @as("DBSnapshotAttributesResult")
    dbsnapshotAttributesResult: option<dbsnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBSnapshotAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSecurityGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBSecurityGroupName") dbsecurityGroupName: option<string_>,
  }
  type response = {
    @as("DBSecurityGroups") dbsecurityGroups: option<dbsecurityGroups>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBSecurityGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxyTargetGroups = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("TargetGroupName") targetGroupName: option<string_>,
    @as("DBProxyName") dbproxyName: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("TargetGroups") targetGroups: option<targetGroupList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBProxyTargetGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxies = {
  type t
  type request = {
    @as("MaxRecords") maxRecords: option<maxRecords>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("DBProxyName") dbproxyName: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("DBProxies") dbproxies: option<dbproxyList>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBProxiesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBInstanceAutomatedBackups = {
  type t
  type request = {
    @as("DBInstanceAutomatedBackupsArn") dbinstanceAutomatedBackupsArn: option<string_>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
    @as("DbiResourceId") dbiResourceId: option<string_>,
  }
  type response = {
    @as("DBInstanceAutomatedBackups")
    dbinstanceAutomatedBackups: option<dbinstanceAutomatedBackupList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBInstanceAutomatedBackupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterSnapshots = {
  type t
  type request = {
    @as("IncludePublic") includePublic: option<boolean_>,
    @as("IncludeShared") includeShared: option<boolean_>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("SnapshotType") snapshotType: option<string_>,
    @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  }
  type response = {
    @as("DBClusterSnapshots") dbclusterSnapshots: option<dbclusterSnapshotList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBClusterSnapshotsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterSnapshotAttributes = {
  type t
  type request = {@as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: string_}
  type response = {
    @as("DBClusterSnapshotAttributesResult")
    dbclusterSnapshotAttributesResult: option<dbclusterSnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBClusterSnapshotAttributesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGlobalCluster = {
  type t
  type request = {@as("GlobalClusterIdentifier") globalClusterIdentifier: string_}
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteGlobalClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBCluster = {
  type t
  type request = {
    @as("FinalDBSnapshotIdentifier") finalDBSnapshotIdentifier: option<string_>,
    @as("SkipFinalSnapshot") skipFinalSnapshot: option<boolean_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGlobalCluster = {
  type t
  type request = {
    @as("StorageEncrypted") storageEncrypted: option<booleanOptional>,
    @as("DatabaseName") databaseName: option<string_>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: option<string_>,
    @as("SourceDBClusterIdentifier") sourceDBClusterIdentifier: option<string_>,
    @as("GlobalClusterIdentifier") globalClusterIdentifier: option<string_>,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateGlobalClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBSubnetGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("SubnetIds") subnetIds: subnetIdentifierList,
    @as("DBSubnetGroupDescription") dbsubnetGroupDescription: string_,
    @as("DBSubnetGroupName") dbsubnetGroupName: string_,
  }
  type response = {@as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBCluster = {
  type t
  type request = {
    @as("EnableGlobalWriteForwarding") enableGlobalWriteForwarding: option<booleanOptional>,
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("Domain") domain: option<string_>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("EnableHttpEndpoint") enableHttpEndpoint: option<booleanOptional>,
    @as("GlobalClusterIdentifier") globalClusterIdentifier: option<string_>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("ScalingConfiguration") scalingConfiguration: option<scalingConfiguration>,
    @as("EngineMode") engineMode: option<string_>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("BacktrackWindow") backtrackWindow: option<longOptional>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("PreSignedUrl") preSignedUrl: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("StorageEncrypted") storageEncrypted: option<booleanOptional>,
    @as("Tags") tags: option<tagList_>,
    @as("ReplicationSourceIdentifier") replicationSourceIdentifier: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("MasterUserPassword") masterUserPassword: option<string_>,
    @as("MasterUsername") masterUsername: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: string_,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
    @as("DatabaseName") databaseName: option<string_>,
    @as("CharacterSetName") characterSetName: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDBInstance = {
  type t
  type request = {
    @as("DBSnapshotIdentifier") dbsnapshotIdentifier: option<string_>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "StopDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDBInstance = {
  type t
  type request = {@as("DBInstanceIdentifier") dbinstanceIdentifier: string_}
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "StartDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBInstanceToPointInTime = {
  type t
  type request = {
    @as("EnableCustomerOwnedIp") enableCustomerOwnedIp: option<booleanOptional>,
    @as("SourceDBInstanceAutomatedBackupsArn") sourceDBInstanceAutomatedBackupsArn: option<string_>,
    @as("MaxAllocatedStorage") maxAllocatedStorage: option<integerOptional>,
    @as("SourceDbiResourceId") sourceDbiResourceId: option<string_>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
    @as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: option<booleanOptional>,
    @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("Domain") domain: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("TdeCredentialPassword") tdeCredentialPassword: option<string_>,
    @as("TdeCredentialArn") tdeCredentialArn: option<string_>,
    @as("StorageType") storageType: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("Iops") iops: option<integerOptional>,
    @as("Engine") engine: option<string_>,
    @as("DBName") dbname: option<string_>,
    @as("LicenseModel") licenseModel: option<string_>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("UseLatestRestorableTime") useLatestRestorableTime: option<boolean_>,
    @as("RestoreTime") restoreTime: option<tstamp>,
    @as("TargetDBInstanceIdentifier") targetDBInstanceIdentifier: string_,
    @as("SourceDBInstanceIdentifier") sourceDBInstanceIdentifier: option<string_>,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "RestoreDBInstanceToPointInTimeCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBInstanceFromS3 = {
  type t
  type request = {
    @as("MaxAllocatedStorage") maxAllocatedStorage: option<integerOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: option<booleanOptional>,
    @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: option<string_>,
    @as("EnablePerformanceInsights") enablePerformanceInsights: option<booleanOptional>,
    @as("S3IngestionRoleArn") s3IngestionRoleArn: string_,
    @as("S3Prefix") s3Prefix: option<string_>,
    @as("S3BucketName") s3BucketName: string_,
    @as("SourceEngineVersion") sourceEngineVersion: string_,
    @as("SourceEngine") sourceEngine: string_,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("MonitoringRoleArn") monitoringRoleArn: option<string_>,
    @as("MonitoringInterval") monitoringInterval: option<integerOptional>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("StorageEncrypted") storageEncrypted: option<booleanOptional>,
    @as("StorageType") storageType: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("Iops") iops: option<integerOptional>,
    @as("LicenseModel") licenseModel: option<string_>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("Port") port: option<integerOptional>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBSecurityGroups") dbsecurityGroups: option<dbsecurityGroupNameList>,
    @as("MasterUserPassword") masterUserPassword: option<string_>,
    @as("MasterUsername") masterUsername: option<string_>,
    @as("Engine") engine: string_,
    @as("DBInstanceClass") dbinstanceClass: string_,
    @as("AllocatedStorage") allocatedStorage: option<integerOptional>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
    @as("DBName") dbname: option<string_>,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "RestoreDBInstanceFromS3Command"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBInstanceFromDBSnapshot = {
  type t
  type request = {
    @as("EnableCustomerOwnedIp") enableCustomerOwnedIp: option<booleanOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
    @as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: option<booleanOptional>,
    @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("Domain") domain: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("TdeCredentialPassword") tdeCredentialPassword: option<string_>,
    @as("TdeCredentialArn") tdeCredentialArn: option<string_>,
    @as("StorageType") storageType: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("Iops") iops: option<integerOptional>,
    @as("Engine") engine: option<string_>,
    @as("DBName") dbname: option<string_>,
    @as("LicenseModel") licenseModel: option<string_>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("DBSnapshotIdentifier") dbsnapshotIdentifier: string_,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "RestoreDBInstanceFromDBSnapshotCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootDBInstance = {
  type t
  type request = {
    @as("ForceFailover") forceFailover: option<booleanOptional>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "RebootDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PromoteReadReplica = {
  type t
  type request = {
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "PromoteReadReplicaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyOptionGroup = {
  type t
  type request = {
    @as("ApplyImmediately") applyImmediately: option<boolean_>,
    @as("OptionsToRemove") optionsToRemove: option<optionNamesList>,
    @as("OptionsToInclude") optionsToInclude: option<optionConfigurationList>,
    @as("OptionGroupName") optionGroupName: string_,
  }
  type response = {@as("OptionGroup") optionGroup: option<optionGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyOptionGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBInstance = {
  type t
  type request = {
    @as("AwsBackupRecoveryPointArn") awsBackupRecoveryPointArn: option<awsBackupRecoveryPointArn>,
    @as("EnableCustomerOwnedIp") enableCustomerOwnedIp: option<booleanOptional>,
    @as("ReplicaMode") replicaMode: option<replicaMode>,
    @as("CertificateRotationRestart") certificateRotationRestart: option<booleanOptional>,
    @as("MaxAllocatedStorage") maxAllocatedStorage: option<integerOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: option<booleanOptional>,
    @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: option<string_>,
    @as("EnablePerformanceInsights") enablePerformanceInsights: option<booleanOptional>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("PromotionTier") promotionTier: option<integerOptional>,
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("MonitoringRoleArn") monitoringRoleArn: option<string_>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("DBPortNumber") dbportNumber: option<integerOptional>,
    @as("MonitoringInterval") monitoringInterval: option<integerOptional>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("Domain") domain: option<string_>,
    @as("CACertificateIdentifier") cacertificateIdentifier: option<string_>,
    @as("TdeCredentialPassword") tdeCredentialPassword: option<string_>,
    @as("TdeCredentialArn") tdeCredentialArn: option<string_>,
    @as("StorageType") storageType: option<string_>,
    @as("NewDBInstanceIdentifier") newDBInstanceIdentifier: option<string_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("Iops") iops: option<integerOptional>,
    @as("LicenseModel") licenseModel: option<string_>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("AllowMajorVersionUpgrade") allowMajorVersionUpgrade: option<boolean_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
    @as("MasterUserPassword") masterUserPassword: option<string_>,
    @as("ApplyImmediately") applyImmediately: option<boolean_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBSecurityGroups") dbsecurityGroups: option<dbsecurityGroupNameList>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("AllocatedStorage") allocatedStorage: option<integerOptional>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeValidDBInstanceModifications = {
  type t
  type request = {@as("DBInstanceIdentifier") dbinstanceIdentifier: string_}
  type response = {
    @as("ValidDBInstanceModificationsMessage")
    validDBInstanceModificationsMessage: option<validDBInstanceModificationsMessage>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeValidDBInstanceModificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalClusters = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("GlobalClusterIdentifier") globalClusterIdentifier: option<string_>,
  }
  type response = {
    @as("GlobalClusters") globalClusters: option<globalClusterList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeGlobalClustersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSubnetGroups = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
  }
  type response = {
    @as("DBSubnetGroups") dbsubnetGroups: option<dbsubnetGroups>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBSubnetGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBEngineVersions = {
  type t
  type request = {
    @as("IncludeAll") includeAll: option<booleanOptional>,
    @as("ListSupportedTimezones") listSupportedTimezones: option<booleanOptional>,
    @as("ListSupportedCharacterSets") listSupportedCharacterSets: option<booleanOptional>,
    @as("DefaultOnly") defaultOnly: option<boolean_>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: option<string_>,
  }
  type response = {
    @as("DBEngineVersions") dbengineVersions: option<dbengineVersionList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeDBEngineVersionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusters = {
  type t
  type request = {
    @as("IncludeShared") includeShared: option<boolean_>,
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  }
  type response = {
    @as("DBClusters") dbclusters: option<dbclusterList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBClustersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBInstance = {
  type t
  type request = {
    @as("DeleteAutomatedBackups") deleteAutomatedBackups: option<booleanOptional>,
    @as("FinalDBSnapshotIdentifier") finalDBSnapshotIdentifier: option<string_>,
    @as("SkipFinalSnapshot") skipFinalSnapshot: option<boolean_>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOptionGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("OptionGroupDescription") optionGroupDescription: string_,
    @as("MajorEngineVersion") majorEngineVersion: string_,
    @as("EngineName") engineName: string_,
    @as("OptionGroupName") optionGroupName: string_,
  }
  type response = {@as("OptionGroup") optionGroup: option<optionGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateOptionGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstanceReadReplica = {
  type t
  type request = {
    @as("MaxAllocatedStorage") maxAllocatedStorage: option<integerOptional>,
    @as("ReplicaMode") replicaMode: option<replicaMode>,
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("Domain") domain: option<string_>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("UseDefaultProcessorFeatures") useDefaultProcessorFeatures: option<booleanOptional>,
    @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: option<string_>,
    @as("EnablePerformanceInsights") enablePerformanceInsights: option<booleanOptional>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("PreSignedUrl") preSignedUrl: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("MonitoringRoleArn") monitoringRoleArn: option<string_>,
    @as("MonitoringInterval") monitoringInterval: option<integerOptional>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("StorageType") storageType: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("Iops") iops: option<integerOptional>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("Port") port: option<integerOptional>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("SourceDBInstanceIdentifier") sourceDBInstanceIdentifier: string_,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "CreateDBInstanceReadReplicaCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstance = {
  type t
  type request = {
    @as("EnableCustomerOwnedIp") enableCustomerOwnedIp: option<booleanOptional>,
    @as("MaxAllocatedStorage") maxAllocatedStorage: option<integerOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("ProcessorFeatures") processorFeatures: option<processorFeatureList>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @as("PerformanceInsightsKMSKeyId") performanceInsightsKMSKeyId: option<string_>,
    @as("EnablePerformanceInsights") enablePerformanceInsights: option<booleanOptional>,
    @as("EnableIAMDatabaseAuthentication") enableIAMDatabaseAuthentication: option<booleanOptional>,
    @as("Timezone") timezone: option<string_>,
    @as("PromotionTier") promotionTier: option<integerOptional>,
    @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @as("MonitoringRoleArn") monitoringRoleArn: option<string_>,
    @as("MonitoringInterval") monitoringInterval: option<integerOptional>,
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("Domain") domain: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("StorageEncrypted") storageEncrypted: option<booleanOptional>,
    @as("TdeCredentialPassword") tdeCredentialPassword: option<string_>,
    @as("TdeCredentialArn") tdeCredentialArn: option<string_>,
    @as("StorageType") storageType: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("PubliclyAccessible") publiclyAccessible: option<booleanOptional>,
    @as("NcharCharacterSetName") ncharCharacterSetName: option<string_>,
    @as("CharacterSetName") characterSetName: option<string_>,
    @as("OptionGroupName") optionGroupName: option<string_>,
    @as("Iops") iops: option<integerOptional>,
    @as("LicenseModel") licenseModel: option<string_>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("MultiAZ") multiAZ: option<booleanOptional>,
    @as("Port") port: option<integerOptional>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("DBParameterGroupName") dbparameterGroupName: option<string_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBSecurityGroups") dbsecurityGroups: option<dbsecurityGroupNameList>,
    @as("MasterUserPassword") masterUserPassword: option<string_>,
    @as("MasterUsername") masterUsername: option<string_>,
    @as("Engine") engine: string_,
    @as("DBInstanceClass") dbinstanceClass: string_,
    @as("AllocatedStorage") allocatedStorage: option<integerOptional>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
    @as("DBName") dbname: option<string_>,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyOptionGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("TargetOptionGroupDescription") targetOptionGroupDescription: string_,
    @as("TargetOptionGroupIdentifier") targetOptionGroupIdentifier: string_,
    @as("SourceOptionGroupIdentifier") sourceOptionGroupIdentifier: string_,
  }
  type response = {@as("OptionGroup") optionGroup: option<optionGroup>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CopyOptionGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOptionGroups = {
  type t
  type request = {
    @as("MajorEngineVersion") majorEngineVersion: option<string_>,
    @as("EngineName") engineName: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Marker") marker: option<string_>,
    @as("Filters") filters: option<filterList>,
    @as("OptionGroupName") optionGroupName: option<string_>,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("OptionGroupsList") optionGroupsList: option<optionGroupsList>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeOptionGroupsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOptionGroupOptions = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("MajorEngineVersion") majorEngineVersion: option<string_>,
    @as("EngineName") engineName: string_,
  }
  type response = {
    @as("Marker") marker: option<string_>,
    @as("OptionGroupOptions") optionGroupOptions: option<optionGroupOptionsList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DescribeOptionGroupOptionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBInstances = {
  type t
  type request = {
    @as("Marker") marker: option<string_>,
    @as("MaxRecords") maxRecords: option<integerOptional>,
    @as("Filters") filters: option<filterList>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
  }
  type response = {
    @as("DBInstances") dbinstances: option<dbinstanceList>,
    @as("Marker") marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DescribeDBInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
