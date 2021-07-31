type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type tStamp = Js.Date.t;
type amazonawsString = string
type sourceType = [@as("db-cluster-snapshot") #db_cluster_snapshot | @as("db-cluster") #db_cluster | @as("db-snapshot") #db_snapshot | @as("db-security-group") #db_security_group | @as("db-parameter-group") #db_parameter_group | @as("db-instance") #db_instance]
type integerOptional = int;
type amazonawsInteger = int;
type exceptionMessage = string
type doubleOptional = float;
type amazonawsDouble = float;
type booleanOptional = bool;
type amazonawsBoolean = bool;
type applyMethod = [@as("pending-reboot") #pending_reboot | @as("immediate") #immediate]
type vpcSecurityGroupMembership = {
@as("Status") status: amazonawsString,
@as("VpcSecurityGroupId") vpcSecurityGroupId: amazonawsString
}
type vpcSecurityGroupIdList = array<amazonawsString>
type upgradeTarget = {
@as("IsMajorVersionUpgrade") isMajorVersionUpgrade: amazonawsBoolean,
@as("AutoUpgrade") autoUpgrade: amazonawsBoolean,
@as("Description") description: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type timezone = {
@as("TimezoneName") timezoneName: amazonawsString
}
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type subnetIdentifierList = array<amazonawsString>
type stringList = array<amazonawsString>
type sourceIdsList = array<amazonawsString>
type readReplicaIdentifierList = array<amazonawsString>
type readReplicaDBInstanceIdentifierList = array<amazonawsString>
type readReplicaDBClusterIdentifierList = array<amazonawsString>
type range = {
@as("Step") step: integerOptional,
@as("To") to: amazonawsInteger,
@as("From") from: amazonawsInteger
}
type pendingMaintenanceAction = {
@as("Description") description: amazonawsString,
@as("CurrentApplyDate") currentApplyDate: tStamp,
@as("OptInStatus") optInStatus: amazonawsString,
@as("ForcedApplyDate") forcedApplyDate: tStamp,
@as("AutoAppliedAfterDate") autoAppliedAfterDate: tStamp,
@as("Action") action: amazonawsString
}
type parameter = {
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
type optionGroupMembership = {
@as("Status") status: amazonawsString,
@as("OptionGroupName") optionGroupName: amazonawsString
}
type logTypeList = array<amazonawsString>
type keyList = array<amazonawsString>
type filterValueList = array<amazonawsString>
type eventCategoriesList = array<amazonawsString>
type endpoint = {
@as("HostedZoneId") hostedZoneId: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Address") address: amazonawsString
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
type characterSet = {
@as("CharacterSetDescription") characterSetDescription: amazonawsString,
@as("CharacterSetName") characterSetName: amazonawsString
}
type availabilityZones = array<amazonawsString>
type availabilityZone = {
@as("Name") name: amazonawsString
}
type attributeValueList = array<amazonawsString>
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type validUpgradeTargetList = array<upgradeTarget>
type tagList = array<tag>
type supportedTimezonesList = array<timezone>
type supportedCharacterSetsList = array<characterSet>
type subnet = {
@as("SubnetStatus") subnetStatus: amazonawsString,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: availabilityZone,
@as("SubnetIdentifier") subnetIdentifier: amazonawsString
}
type rangeList = array<range>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type pendingCloudwatchLogsExports = {
@as("LogTypesToDisable") logTypesToDisable: logTypeList,
@as("LogTypesToEnable") logTypesToEnable: logTypeList
}
type parametersList = array<parameter>
type optionGroupMembershipList = array<optionGroupMembership>
type filter = {
@as("Values") values: option<filterValueList>,
@as("Name") name: option<amazonawsString>
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
type doubleRangeList = array<doubleRange>
type domainMembershipList = array<domainMembership>
type dBSecurityGroupMembershipList = array<dBSecurityGroupMembership>
type dBParameterGroupStatusList = array<dBParameterGroupStatus>
type dBParameterGroupList = array<dBParameterGroup>
type dBInstanceStatusInfoList = array<dBInstanceStatusInfo>
type dBClusterSnapshotAttribute = {
@as("AttributeValues") attributeValues: attributeValueList,
@as("AttributeName") attributeName: amazonawsString
}
type dBClusterSnapshot = {
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
@as("Engine") engine: amazonawsString,
@as("SnapshotCreateTime") snapshotCreateTime: tStamp,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: amazonawsString,
@as("AvailabilityZones") availabilityZones: availabilityZones
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
type cloudwatchLogsExportConfiguration = {
@as("DisableLogTypes") disableLogTypes: logTypeList,
@as("EnableLogTypes") enableLogTypes: logTypeList
}
type availabilityZoneList = array<availabilityZone>
type validStorageOptions = {
@as("IopsToStorageRatio") iopsToStorageRatio: doubleRangeList,
@as("ProvisionedIops") provisionedIops: rangeList,
@as("StorageSize") storageSize: rangeList,
@as("StorageType") storageType: amazonawsString
}
type subnetList = array<subnet>
type resourcePendingMaintenanceActions = {
@as("PendingMaintenanceActionDetails") pendingMaintenanceActionDetails: pendingMaintenanceActionDetails,
@as("ResourceIdentifier") resourceIdentifier: amazonawsString
}
type pendingModifiedValues = {
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
type orderableDBInstanceOption = {
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
@as("LicenseModel") licenseModel: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type filterList = array<filter>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
type engineDefaults = {
@as("Parameters") parameters: parametersList,
@as("Marker") marker: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString
}
type dBEngineVersion = {
@as("SupportsReadReplica") supportsReadReplica: amazonawsBoolean,
@as("SupportsLogExportsToCloudwatchLogs") supportsLogExportsToCloudwatchLogs: amazonawsBoolean,
@as("ExportableLogTypes") exportableLogTypes: logTypeList,
@as("SupportedTimezones") supportedTimezones: supportedTimezonesList,
@as("ValidUpgradeTarget") validUpgradeTarget: validUpgradeTargetList,
@as("SupportedCharacterSets") supportedCharacterSets: supportedCharacterSetsList,
@as("DefaultCharacterSet") defaultCharacterSet: characterSet,
@as("DBEngineVersionDescription") dBEngineVersionDescription: amazonawsString,
@as("DBEngineDescription") dBEngineDescription: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type dBClusterSnapshotList = array<dBClusterSnapshot>
type dBClusterSnapshotAttributeList = array<dBClusterSnapshotAttribute>
type dBClusterEndpointList = array<dBClusterEndpoint>
type dBCluster = {
@as("AutomaticRestartTime") automaticRestartTime: tStamp,
@as("CrossAccountClone") crossAccountClone: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: logTypeList,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("ClusterCreateTime") clusterCreateTime: tStamp,
@as("CloneGroupId") cloneGroupId: amazonawsString,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: amazonawsBoolean,
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
@as("MultiAZ") multiAZ: amazonawsBoolean,
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
type validStorageOptionsList = array<validStorageOptions>
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type orderableDBInstanceOptionsList = array<orderableDBInstanceOption>
type dBSubnetGroup = {
@as("DBSubnetGroupArn") dBSubnetGroupArn: amazonawsString,
@as("Subnets") subnets: subnetList,
@as("SubnetGroupStatus") subnetGroupStatus: amazonawsString,
@as("VpcId") vpcId: amazonawsString,
@as("DBSubnetGroupDescription") dBSubnetGroupDescription: amazonawsString,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString
}
type dBEngineVersionList = array<dBEngineVersion>
type dBClusterSnapshotAttributesResult = {
@as("DBClusterSnapshotAttributes") dBClusterSnapshotAttributes: dBClusterSnapshotAttributeList,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: amazonawsString
}
type dBClusterList = array<dBCluster>
type validDBInstanceModificationsMessage = {
@as("Storage") storage: validStorageOptionsList
}
type dBSubnetGroups = array<dBSubnetGroup>
type dBInstance = {
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: logTypeList,
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
@as("CharacterSetName") characterSetName: amazonawsString,
@as("OptionGroupMemberships") optionGroupMemberships: optionGroupMembershipList,
@as("Iops") iops: integerOptional,
@as("LicenseModel") licenseModel: amazonawsString,
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
type dBInstanceList = array<dBInstance>
type clientType;
@module("@aws-sdk/client-rds") @new external createClient: unit => clientType = "NeptuneClient";
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

module DeleteDBSubnetGroup = {
  type t;
  type request = {
@as("DBSubnetGroupName") dBSubnetGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBSubnetGroupCommand";
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
  type response = {
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBClusterEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDBClusterEndpoint = {
  type t;
  type request = {
@as("DBClusterEndpointIdentifier") dBClusterEndpointIdentifier: option<amazonawsString>
}
  type response = {
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBClusterEndpointCommand";
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
  type response = {
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
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "CreateDBClusterEndpointCommand";
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
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
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
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
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

module ModifyDBCluster = {
  type t;
  type request = {
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("CloudwatchLogsExportConfiguration") cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
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

module FailoverDBCluster = {
  type t;
  type request = {
@as("TargetDBInstanceIdentifier") targetDBInstanceIdentifier: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString
}
  type response = {
@as("DBCluster") dBCluster: dBCluster
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "FailoverDBClusterCommand";
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

module CreateDBCluster = {
  type t;
  type request = {
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
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
@as("CopyTagsToSnapshot") copyTagsToSnapshot: booleanOptional,
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

module DescribeDBEngineVersions = {
  type t;
  type request = {
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

module ModifyDBInstance = {
  type t;
  type request = {
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("CloudwatchLogsExportConfiguration") cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
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

module DeleteDBInstance = {
  type t;
  type request = {
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

module CreateDBInstance = {
  type t;
  type request = {
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
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
