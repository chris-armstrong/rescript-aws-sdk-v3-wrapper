type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-rds") @new external createClient: unit => awsServiceClient = "DocDBClient"
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
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type subnetIdentifierList = array<string_>
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
type logTypeList = array<string_>
type keyList = array<string_>
type filterValueList = array<string_>
type eventCategoriesList = array<string_>
type endpoint = {
  @as("HostedZoneId") hostedZoneId: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Address") address: option<string_>,
}
type dbinstanceStatusInfo = {
  @as("Message") message: option<string_>,
  @as("Status") status: option<string_>,
  @as("Normal") normal: option<boolean_>,
  @as("StatusType") statusType: option<string_>,
}
type dbclusterRole = {
  @as("Status") status: option<string_>,
  @as("RoleArn") roleArn: option<string_>,
}
type dbclusterParameterGroup = {
  @as("DBClusterParameterGroupArn") dbclusterParameterGroupArn: option<string_>,
  @as("Description") description: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
  @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
}
type dbclusterMember = {
  @as("PromotionTier") promotionTier: option<integerOptional>,
  @as("DBClusterParameterGroupStatus") dbclusterParameterGroupStatus: option<string_>,
  @as("IsClusterWriter") isClusterWriter: option<boolean_>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
}
type certificate = {
  @as("CertificateArn") certificateArn: option<string_>,
  @as("ValidTill") validTill: option<tstamp>,
  @as("ValidFrom") validFrom: option<tstamp>,
  @as("Thumbprint") thumbprint: option<string_>,
  @as("CertificateType") certificateType: option<string_>,
  @as("CertificateIdentifier") certificateIdentifier: option<string_>,
}
type availabilityZones = array<string_>
type availabilityZone = {@as("Name") name: option<string_>}
type attributeValueList = array<string_>
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type validUpgradeTargetList = array<upgradeTarget>
type tagList_ = array<tag>
type subnet = {
  @as("SubnetStatus") subnetStatus: option<string_>,
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<availabilityZone>,
  @as("SubnetIdentifier") subnetIdentifier: option<string_>,
}
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
type pendingCloudwatchLogsExports = {
  @as("LogTypesToDisable") logTypesToDisable: option<logTypeList>,
  @as("LogTypesToEnable") logTypesToEnable: option<logTypeList>,
}
type parametersList = array<parameter>
type filter = {
  @as("Values") values: filterValueList,
  @as("Name") name: string_,
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
type dbinstanceStatusInfoList = array<dbinstanceStatusInfo>
type dbclusterSnapshotAttribute = {
  @as("AttributeValues") attributeValues: option<attributeValueList>,
  @as("AttributeName") attributeName: option<string_>,
}
type dbclusterSnapshot = {
  @as("SourceDBClusterSnapshotArn") sourceDBClusterSnapshotArn: option<string_>,
  @as("DBClusterSnapshotArn") dbclusterSnapshotArn: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("PercentProgress") percentProgress: option<integer_>,
  @as("SnapshotType") snapshotType: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("MasterUsername") masterUsername: option<string_>,
  @as("ClusterCreateTime") clusterCreateTime: option<tstamp>,
  @as("VpcId") vpcId: option<string_>,
  @as("Port") port: option<integer_>,
  @as("Status") status: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("SnapshotCreateTime") snapshotCreateTime: option<tstamp>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: option<string_>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
}
type dbclusterRoles = array<dbclusterRole>
type dbclusterParameterGroupList = array<dbclusterParameterGroup>
type dbclusterMemberList = array<dbclusterMember>
type cloudwatchLogsExportConfiguration = {
  @as("DisableLogTypes") disableLogTypes: option<logTypeList>,
  @as("EnableLogTypes") enableLogTypes: option<logTypeList>,
}
type certificateList = array<certificate>
type availabilityZoneList = array<availabilityZone>
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
  @as("Vpc") vpc: option<boolean_>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZoneList>,
  @as("LicenseModel") licenseModel: option<string_>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type filterList = array<filter>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
type engineDefaults = {
  @as("Parameters") parameters: option<parametersList>,
  @as("Marker") marker: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
}
type dbengineVersion = {
  @as("SupportsLogExportsToCloudwatchLogs") supportsLogExportsToCloudwatchLogs: option<boolean_>,
  @as("ExportableLogTypes") exportableLogTypes: option<logTypeList>,
  @as("ValidUpgradeTarget") validUpgradeTarget: option<validUpgradeTargetList>,
  @as("DBEngineVersionDescription") dbengineVersionDescription: option<string_>,
  @as("DBEngineDescription") dbengineDescription: option<string_>,
  @as("DBParameterGroupFamily") dbparameterGroupFamily: option<string_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("Engine") engine: option<string_>,
}
type dbclusterSnapshotList = array<dbclusterSnapshot>
type dbclusterSnapshotAttributeList = array<dbclusterSnapshotAttribute>
type dbcluster = {
  @as("DeletionProtection") deletionProtection: option<boolean_>,
  @as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: option<logTypeList>,
  @as("ClusterCreateTime") clusterCreateTime: option<tstamp>,
  @as("AssociatedRoles") associatedRoles: option<dbclusterRoles>,
  @as("DBClusterArn") dbclusterArn: option<string_>,
  @as("DbClusterResourceId") dbClusterResourceId: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("HostedZoneId") hostedZoneId: option<string_>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @as("DBClusterMembers") dbclusterMembers: option<dbclusterMemberList>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
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
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integerOptional>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>,
}
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
type dbsubnetGroups = array<dbsubnetGroup>
type dbinstance = {
  @as("EnabledCloudwatchLogsExports") enabledCloudwatchLogsExports: option<logTypeList>,
  @as("DBInstanceArn") dbinstanceArn: option<string_>,
  @as("PromotionTier") promotionTier: option<integerOptional>,
  @as("CACertificateIdentifier") cacertificateIdentifier: option<string_>,
  @as("DbiResourceId") dbiResourceId: option<string_>,
  @as("KmsKeyId") kmsKeyId: option<string_>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<string_>,
  @as("StatusInfos") statusInfos: option<dbinstanceStatusInfoList>,
  @as("PubliclyAccessible") publiclyAccessible: option<boolean_>,
  @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<boolean_>,
  @as("EngineVersion") engineVersion: option<string_>,
  @as("LatestRestorableTime") latestRestorableTime: option<tstamp>,
  @as("PendingModifiedValues") pendingModifiedValues: option<pendingModifiedValues>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
  @as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integer_>,
  @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
  @as("InstanceCreateTime") instanceCreateTime: option<tstamp>,
  @as("Endpoint") endpoint: option<endpoint>,
  @as("DBInstanceStatus") dbinstanceStatus: option<string_>,
  @as("Engine") engine: option<string_>,
  @as("DBInstanceClass") dbinstanceClass: option<string_>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<string_>,
}
type dbinstanceList = array<dbinstance>

module DeleteDBSubnetGroup = {
  type t
  type request = {@as("DBSubnetGroupName") dbsubnetGroupName: string_}

  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBSubnetGroupCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBClusterParameterGroup = {
  type t
  type request = {@as("DBClusterParameterGroupName") dbclusterParameterGroupName: string_}

  @module("@aws-sdk/client-rds") @new
  external new_: request => t = "DeleteDBClusterParameterGroupCommand"
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

module DeleteDBClusterSnapshot = {
  type t
  type request = {@as("DBClusterSnapshotIdentifier") dbclusterSnapshotIdentifier: string_}
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBClusterSnapshotCommand"
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
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("Port") port: option<integerOptional>,
    @as("UseLatestRestorableTime") useLatestRestorableTime: option<boolean_>,
    @as("RestoreToTime") restoreToTime: option<tstamp>,
    @as("SourceDBClusterIdentifier") sourceDBClusterIdentifier: string_,
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
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("EnableCloudwatchLogsExports") enableCloudwatchLogsExports: option<logTypeList>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
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

module ModifyDBCluster = {
  type t
  type request = {
    @as("DeletionProtection") deletionProtection: option<booleanOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
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
    @as("PreSignedUrl") preSignedUrl: option<string_>,
    @as("KmsKeyId") kmsKeyId: option<string_>,
    @as("StorageEncrypted") storageEncrypted: option<booleanOptional>,
    @as("Tags") tags: option<tagList_>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("PreferredBackupWindow") preferredBackupWindow: option<string_>,
    @as("MasterUserPassword") masterUserPassword: string_,
    @as("MasterUsername") masterUsername: string_,
    @as("Port") port: option<integerOptional>,
    @as("EngineVersion") engineVersion: option<string_>,
    @as("Engine") engine: string_,
    @as("DBSubnetGroupName") dbsubnetGroupName: option<string_>,
    @as("VpcSecurityGroupIds") vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @as("DBClusterParameterGroupName") dbclusterParameterGroupName: option<string_>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
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
    @as("PromotionTier") promotionTier: option<integerOptional>,
    @as("CACertificateIdentifier") cacertificateIdentifier: option<string_>,
    @as("NewDBInstanceIdentifier") newDBInstanceIdentifier: option<string_>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("ApplyImmediately") applyImmediately: option<boolean_>,
    @as("DBInstanceClass") dbinstanceClass: option<string_>,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "ModifyDBInstanceCommand"
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
  type request = {@as("DBInstanceIdentifier") dbinstanceIdentifier: string_}
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new_: request => t = "DeleteDBInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstance = {
  type t
  type request = {
    @as("PromotionTier") promotionTier: option<integerOptional>,
    @as("DBClusterIdentifier") dbclusterIdentifier: string_,
    @as("Tags") tags: option<tagList_>,
    @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<booleanOptional>,
    @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<string_>,
    @as("AvailabilityZone") availabilityZone: option<string_>,
    @as("Engine") engine: string_,
    @as("DBInstanceClass") dbinstanceClass: string_,
    @as("DBInstanceIdentifier") dbinstanceIdentifier: string_,
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
