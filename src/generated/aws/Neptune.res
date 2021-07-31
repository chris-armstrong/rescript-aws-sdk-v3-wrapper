type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rds") @new
external createClient: unit => awsServiceClient = "NeptuneClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type tstamp = Js.Date.t
type string_ = string
type sourceType = [
  | @as("db-cluster-snapshot") #Db_Cluster_Snapshot
  | @as("db-cluster") #Db_Cluster
  | @as("db-snapshot") #Db_Snapshot
  | @as("db-security-group") #Db_Security_Group
  | @as("db-parameter-group") #Db_Parameter_Group
  | @as("db-instance") #Db_Instance
]
type integerOptional = int
type integer_ = int
type exceptionMessage = string
type doubleOptional = float
type double = float
type booleanOptional = bool
type boolean_ = bool
type applyMethod = [@as("pending-reboot") #Pending_Reboot | @as("immediate") #Immediate]
type vpcSecurityGroupMembership = {
  @as("Status") status: option<string_>,
  @as("VpcSecurityGroupId") vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
type upgradeTarget = {
  @as("IsMajorVersionUpgrade") isMajorVersionUpgrade: option<boolean_>,
  @as("AutoUpgrade") autoUpgrade: option<boolean_>,
  @as("Description") description: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type timezone = {@as("TimezoneName") timezoneName: option<string_>}
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type subnetIdentifierList = array<string_>
type stringList = array<string_>
type sourceIdsList = array<string_>
type readReplicaIdentifierList = array<string_>
type readReplicaDBInstanceIdentifierList = array<string_>
type readReplicaDBClusterIdentifierList = array<string_>
type range = {
  @as("Step") step: option<integerOptional>,
  @as("To") to: option<integer_>,
  @as("From") from: option<integer_>,
}
type pendingMaintenanceAction = {
  @as("Description") description: option<string_>,
  @as("CurrentApplyDate") currentApplyDate: option<tstamp>,
  @as("OptInStatus") optInStatus: option<string_>,
  @as("ForcedApplyDate") forcedApplyDate: option<tstamp>,
  @as("AutoAppliedAfterDate") autoAppliedAfterDate: option<tstamp>,
  @as("Action") action: option<string_>,
}
type parameter = {
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
type optionGroupMembership = {
  @as("Status") status: option<string_>,
  @as("OptionGroupName") optionGroupName: option<string_>,
}
type logTypeList = array<string_>
type keyList = array<string_>
type filterValueList = array<string_>
type eventCategoriesList = array<string_>
type endpoint = {
  @as("HostedZoneId") hostedZoneId: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Address") address: option<string_>,
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
type characterSet = {
  @as("CharacterSetDescription") characterSetDescription: option<string_>,
  @as("CharacterSetName") characterSetName: option<string_>,
}
type availabilityZones = array<string_>
type availabilityZone = {@as("Name") name: option<string_>}
type attributeValueList = array<string_>
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type validUpgradeTargetList = array<upgradeTarget>
type tagList_ = array<tag>
type supportedTimezonesList = array<timezone>
type supportedCharacterSetsList = array<characterSet>
type subnet = {
  @as("SubnetStatus") subnetStatus: option<string_>,
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<availabilityZone>,
  @as("SubnetIdentifier") subnetIdentifier: option<string_>,
}
type rangeList = array<range>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type pendingCloudwatchLogsExports = {
  @as("LogTypesToDisable") logTypesToDisable: option<logTypeList>,
  @as("LogTypesToEnable") logTypesToEnable: option<logTypeList>,
}
type parametersList = array<parameter>
type optionGroupMembershipList = array<optionGroupMembership>
type filter = {
  @as("Values") values: filterValueList,
  @as("Name") name: string_,
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
type doubleRangeList = array<doubleRange>
type domainMembershipList = array<domainMembership>
type dbsecurityGroupMembershipList = array<dbsecurityGroupMembership>
type dbparameterGroupStatusList = array<dbparameterGroupStatus>
type dbparameterGroupList = array<dbparameterGroup>
type dbinstanceStatusInfoList = array<dbinstanceStatusInfo>
type dbclusterSnapshotAttribute = {
  @as("AttributeValues") attributeValues: option<attributeValueList>,
  @as("AttributeName") attributeName: option<string_>,
}
type dbclusterSnapshot = {
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
  @as("Engine") engine: option<string_>,
  @as("SnapshotCreateTime") snapshotCreateTime: option<tstamp>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: option<string_>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
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
type cloudwatchLogsExportConfiguration = {
  @as("DisableLogTypes") disableLogTypes: option<logTypeList>,
  @as("EnableLogTypes") enableLogTypes: option<logTypeList>,
}
type availabilityZoneList = array<availabilityZone>
type validStorageOptions = {
  @as("IopsToStorageRatio") iopsToStorageRatio: option<doubleRangeList>,
  @as("ProvisionedIops") provisionedIops: option<rangeList>,
  @as("StorageSize") storageSize: option<rangeList>,
  @as("StorageType") storageType: option<string_>,
}
type subnetList = array<subnet>
type resourcePendingMaintenanceActions = {
  @as("PendingMaintenanceActionDetails")
  pendingMaintenanceActionDetails: option<pendingMaintenanceActionDetails>,
  @as("ResourceIdentifier") resourceIdentifier: option<string_>,
}
type pendingModifiedValues = {
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
type orderableDBInstanceOption = {
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
  @as("LicenseModel") licenseModel: option<string_>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type filterList = array<filter>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
type engineDefaults = {
  @as("Parameters") parameters: option<parametersList>,
  @as("Marker") marker: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
}
type dbengineVersion = {
  @as("SupportsReadReplica") supportsReadReplica: option<boolean_>,
  @as("SupportsLogExportsToCloudwatchLogs") supportsLogExportsToCloudwatchLogs: option<boolean_>,
  @as("ExportableLogTypes") exportableLogTypes: option<logTypeList>,
  @as("SupportedTimezones") supportedTimezones: option<supportedTimezonesList>,
  @as("ValidUpgradeTarget") validUpgradeTarget: option<validUpgradeTargetList>,
  @as("SupportedCharacterSets") supportedCharacterSets: option<supportedCharacterSetsList>,
  @as("DefaultCharacterSet") defaultCharacterSet: option<characterSet>,
  @as("DBEngineVersionDescription") dbengineVersionDescription: option<string_>,
  @as("DBEngineDescription") dbengineDescription: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type dbclusterSnapshotList = array<dbclusterSnapshot>
type dbclusterSnapshotAttributeList = array<dbclusterSnapshotAttribute>
type dbclusterEndpointList = array<dbclusterEndpoint>
type dbcluster = {
  @as("AutomaticRestartTime") automaticRestartTime: option<tstamp>,
  @as("CrossAccountClone") crossAccountClone: option<booleanOptional>,
  @as("DeletionProtection") deletionProtection: option<booleanOptional>,
  @as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: option<logTypeList>,
  @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
  @as("ClusterCreateTime") clusterCreateTime: option<tstamp>,
  @as("CloneGroupId") cloneGroupId: option<string_>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<boolean_>,
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
  @as("MultiAZ") multiAZ: option<boolean_>,
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
type validStorageOptionsList = array<validStorageOptions>
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type orderableDBInstanceOptionsList = array<orderableDBInstanceOption>
type dbsubnetGroup = {
  @as("DBSubnetGroupArn") dbsubnetGroupArn: option<string_>,
  @as("Subnets") subnets: option<subnetList>,
  @as("SubnetGroupStatus") subnetGroupStatus: option<string_>,
  @as("VpcId") vpcId: option<string_>,
  @as("DBSubnetGroupDescription") dbsubnetGroupDescription: option<string_>,
  @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
}
type dbengineVersionList = array<dbengineVersion>
type dbclusterSnapshotAttributesResult = {
  @as("DBClusterSnapshotAttributes")
  dbclusterSnapshotAttributes: option<dbclusterSnapshotAttributeList>,
  @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: option<string_>,
}
type dbclusterList = array<dbcluster>
type validDBInstanceModificationsMessage = {@as("Storage") storage: option<validStorageOptionsList>}
type dbsubnetGroups = array<dbsubnetGroup>
type dbinstance = {
  @as("DeletionProtection") deletionProtection: option<booleanOptional>,
  @as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: option<logTypeList>,
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
  @as("CharacterSetName") characterSetName: option<string_>,
  @as("OptionGroupMemberships") optionGroupMemberships: option<optionGroupMembershipList>,
  @as("Iops") iops: option<integerOptional>,
  @as("LicenseModel") licenseModel: option<string_>,
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
type dbinstanceList = array<dbinstance>

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

module DeleteDBSubnetGroup = {
  type t
  type request = {@as("DBSubnetGroupName") dbsubnetGroupName: string_}

  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBSubnetGroupCommand"
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
  type response = {
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
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBClusterEndpointCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterEndpoint = {
  type t
  type request = {@as("DBClusterEndpointIdentifier") dbclusterEndpointIdentifier: string_}
  type response = {
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
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBClusterEndpointCommand"
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

module DeleteEventSubscription = {
  type t
  type request = {@as("SubscriptionName") subscriptionName: string_}
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteEventSubscriptionCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterSnapshot = {
  type t
  type request = {@as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: string_}
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBClusterSnapshotCommand"
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
  type response = {
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
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBClusterEndpointCommand"
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
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
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
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
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

module PromoteReadReplicaDBCluster = {
  type t
  type request = {@as("DBClusterIdentifier") dbclusterIdentifier: string_}
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "PromoteReadReplicaDBClusterCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBCluster = {
  type t
  type request = {
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
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

module FailoverDBCluster = {
  type t
  type request = {
    @as("TargetDBInstanceIdentifier") targetDBInstanceIdentifier: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "FailoverDBClusterCommand"
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

module CreateDBCluster = {
  type t
  type request = {
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
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
    @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<booleanOptional>,
    @as("CharacterSetName") characterSetName: option<string_>,
    @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
    @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "CreateDBClusterCommand"
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

module DescribeDBEngineVersions = {
  type t
  type request = {
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

module ModifyDBInstance = {
  type t
  type request = {
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
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

module DeleteDBInstance = {
  type t
  type request = {
    @as("FinalDBSnapshotIdentifier") finalDBSnapshotIdentifier: option<string_>,
    @as("SkipFinalSnapshot") skipFinalSnapshot: option<boolean_>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstance = {
  type t
  type request = {
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
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
