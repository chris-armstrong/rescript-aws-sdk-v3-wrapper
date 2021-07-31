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
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type subnetIdentifierList = array<amazonawsString>
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
type logTypeList = array<amazonawsString>
type keyList = array<amazonawsString>
type filterValueList = array<amazonawsString>
type eventCategoriesList = array<amazonawsString>
type endpoint = {
@as("HostedZoneId") hostedZoneId: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Address") address: amazonawsString
}
type dBInstanceStatusInfo = {
@as("Message") message: amazonawsString,
@as("Status") status: amazonawsString,
@as("Normal") normal: amazonawsBoolean,
@as("StatusType") statusType: amazonawsString
}
type dBClusterRole = {
@as("Status") status: amazonawsString,
@as("RoleArn") roleArn: amazonawsString
}
type dBClusterParameterGroup = {
@as("DBClusterParameterGroupArn") dBClusterParameterGroupArn: amazonawsString,
@as("Description") description: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString
}
type dBClusterMember = {
@as("PromotionTier") promotionTier: integerOptional,
@as("DBClusterParameterGroupStatus") dBClusterParameterGroupStatus: amazonawsString,
@as("IsClusterWriter") isClusterWriter: amazonawsBoolean,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString
}
type certificate = {
@as("CertificateArn") certificateArn: amazonawsString,
@as("ValidTill") validTill: tStamp,
@as("ValidFrom") validFrom: tStamp,
@as("Thumbprint") thumbprint: amazonawsString,
@as("CertificateType") certificateType: amazonawsString,
@as("CertificateIdentifier") certificateIdentifier: amazonawsString
}
type availabilityZones = array<amazonawsString>
type availabilityZone = {
@as("Name") name: amazonawsString
}
type attributeValueList = array<amazonawsString>
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type validUpgradeTargetList = array<upgradeTarget>
type tagList = array<tag>
type subnet = {
@as("SubnetStatus") subnetStatus: amazonawsString,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: availabilityZone,
@as("SubnetIdentifier") subnetIdentifier: amazonawsString
}
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type pendingCloudwatchLogsExports = {
@as("LogTypesToDisable") logTypesToDisable: logTypeList,
@as("LogTypesToEnable") logTypesToEnable: logTypeList
}
type parametersList = array<parameter>
type filter = {
@as("Values") values: option<filterValueList>,
@as("Name") name: option<amazonawsString>
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
type dBInstanceStatusInfoList = array<dBInstanceStatusInfo>
type dBClusterSnapshotAttribute = {
@as("AttributeValues") attributeValues: attributeValueList,
@as("AttributeName") attributeName: amazonawsString
}
type dBClusterSnapshot = {
@as("SourceDBClusterSnapshotArn") sourceDBClusterSnapshotArn: amazonawsString,
@as("DBClusterSnapshotArn") dBClusterSnapshotArn: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("PercentProgress") percentProgress: amazonawsInteger,
@as("SnapshotType") snapshotType: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("MasterUsername") masterUsername: amazonawsString,
@as("ClusterCreateTime") clusterCreateTime: tStamp,
@as("VpcId") vpcId: amazonawsString,
@as("Port") port: amazonawsInteger,
@as("Status") status: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("SnapshotCreateTime") snapshotCreateTime: tStamp,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("DBClusterSnapshotIdentifier") dBClusterSnapshotIdentifier: amazonawsString,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
type dBClusterRoles = array<dBClusterRole>
type dBClusterParameterGroupList = array<dBClusterParameterGroup>
type dBClusterMemberList = array<dBClusterMember>
type cloudwatchLogsExportConfiguration = {
@as("DisableLogTypes") disableLogTypes: logTypeList,
@as("EnableLogTypes") enableLogTypes: logTypeList
}
type certificateList = array<certificate>
type availabilityZoneList = array<availabilityZone>
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
@as("Vpc") vpc: amazonawsBoolean,
@as("AvailabilityZones") availabilityZones: availabilityZoneList,
@as("LicenseModel") licenseModel: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type filterList = array<filter>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
type engineDefaults = {
@as("Parameters") parameters: parametersList,
@as("Marker") marker: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString
}
type dBEngineVersion = {
@as("SupportsLogExportsToCloudwatchLogs") supportsLogExportsToCloudwatchLogs: amazonawsBoolean,
@as("ExportableLogTypes") exportableLogTypes: logTypeList,
@as("ValidUpgradeTarget") validUpgradeTarget: validUpgradeTargetList,
@as("DBEngineVersionDescription") dBEngineVersionDescription: amazonawsString,
@as("DBEngineDescription") dBEngineDescription: amazonawsString,
@as("DBParameterGroupFamily") dBParameterGroupFamily: amazonawsString,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: amazonawsString
}
type dBClusterSnapshotList = array<dBClusterSnapshot>
type dBClusterSnapshotAttributeList = array<dBClusterSnapshotAttribute>
type dBCluster = {
@as("DeletionProtection") deletionProtection: amazonawsBoolean,
@as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: logTypeList,
@as("ClusterCreateTime") clusterCreateTime: tStamp,
@as("AssociatedRoles") associatedRoles: dBClusterRoles,
@as("DBClusterArn") dBClusterArn: amazonawsString,
@as("DbClusterResourceId") dbClusterResourceId: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("HostedZoneId") hostedZoneId: amazonawsString,
@as("VpcSecurityGroups") vpcSecurityGroups: vpcSecurityGroupMembershipList,
@as("DBClusterMembers") dBClusterMembers: dBClusterMemberList,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
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
@as("BackupRetentionPeriod") backupRetentionPeriod: integerOptional,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
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
type dBSubnetGroups = array<dBSubnetGroup>
type dBInstance = {
@as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: logTypeList,
@as("DBInstanceArn") dBInstanceArn: amazonawsString,
@as("PromotionTier") promotionTier: integerOptional,
@as("CACertificateIdentifier") cACertificateIdentifier: amazonawsString,
@as("DbiResourceId") dbiResourceId: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("DBClusterIdentifier") dBClusterIdentifier: amazonawsString,
@as("StatusInfos") statusInfos: dBInstanceStatusInfoList,
@as("PubliclyAccessible") publiclyAccessible: amazonawsBoolean,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: amazonawsBoolean,
@as("EngineVersion") engineVersion: amazonawsString,
@as("LatestRestorableTime") latestRestorableTime: tStamp,
@as("PendingModifiedValues") pendingModifiedValues: pendingModifiedValues,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("DBSubnetGroup") dBSubnetGroup: dBSubnetGroup,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("VpcSecurityGroups") vpcSecurityGroups: vpcSecurityGroupMembershipList,
@as("BackupRetentionPeriod") backupRetentionPeriod: amazonawsInteger,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("InstanceCreateTime") instanceCreateTime: tStamp,
@as("Endpoint") endpoint: endpoint,
@as("DBInstanceStatus") dBInstanceStatus: amazonawsString,
@as("Engine") engine: amazonawsString,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: amazonawsString
}
type dBInstanceList = array<dBInstance>
type clientType;
@module("@aws-sdk/client-rds") @new external createClient: unit => clientType = "DocDBClient";
module DeleteDBSubnetGroup = {
  type t;
  type request = {
@as("DBSubnetGroupName") dBSubnetGroupName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "DeleteDBSubnetGroupCommand";
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

module RemoveTagsFromResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<keyList>,
@as("ResourceName") resourceName: option<amazonawsString>
}
  
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "RemoveTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
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
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Tags") tags: tagList,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("Port") port: integerOptional,
@as("UseLatestRestorableTime") useLatestRestorableTime: amazonawsBoolean,
@as("RestoreToTime") restoreToTime: tStamp,
@as("SourceDBClusterIdentifier") sourceDBClusterIdentifier: option<amazonawsString>,
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
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: logTypeList,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("Tags") tags: tagList,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
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

module ModifyDBCluster = {
  type t;
  type request = {
@as("DeletionProtection") deletionProtection: booleanOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("CloudwatchLogsExportConfiguration") cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
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
@as("PreSignedUrl") preSignedUrl: amazonawsString,
@as("KmsKeyId") kmsKeyId: amazonawsString,
@as("StorageEncrypted") storageEncrypted: booleanOptional,
@as("Tags") tags: tagList,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("PreferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("MasterUserPassword") masterUserPassword: option<amazonawsString>,
@as("MasterUsername") masterUsername: option<amazonawsString>,
@as("Port") port: integerOptional,
@as("EngineVersion") engineVersion: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("DBSubnetGroupName") dBSubnetGroupName: amazonawsString,
@as("VpcSecurityGroupIds") vpcSecurityGroupIds: vpcSecurityGroupIdList,
@as("DBClusterParameterGroupName") dBClusterParameterGroupName: amazonawsString,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>,
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
@as("PromotionTier") promotionTier: integerOptional,
@as("CACertificateIdentifier") cACertificateIdentifier: amazonawsString,
@as("NewDBInstanceIdentifier") newDBInstanceIdentifier: amazonawsString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("ApplyImmediately") applyImmediately: amazonawsBoolean,
@as("DBInstanceClass") dBInstanceClass: amazonawsString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
}
  type response = {
@as("DBInstance") dBInstance: dBInstance
}
  @module("@aws-sdk/client-rds") @new external new_: (Js.Promise.t<request>) => t = "ModifyDBInstanceCommand";
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
@as("PromotionTier") promotionTier: integerOptional,
@as("DBClusterIdentifier") dBClusterIdentifier: option<amazonawsString>,
@as("Tags") tags: tagList,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: booleanOptional,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("AvailabilityZone") availabilityZone: amazonawsString,
@as("Engine") engine: option<amazonawsString>,
@as("DBInstanceClass") dBInstanceClass: option<amazonawsString>,
@as("DBInstanceIdentifier") dBInstanceIdentifier: option<amazonawsString>
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
