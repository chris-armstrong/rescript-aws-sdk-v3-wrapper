type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-redshift") @new
external createClient: unit => awsServiceClient = "RedshiftClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type usageLimitPeriod = [@as("monthly") #Monthly | @as("weekly") #Weekly | @as("daily") #Daily]
type usageLimitLimitType = [@as("data-scanned") #Data_Scanned | @as("time") #Time]
type usageLimitFeatureType = [
  | @as("concurrency-scaling") #Concurrency_Scaling
  | @as("spectrum") #Spectrum
]
type usageLimitBreachAction = [
  | @as("disable") #Disable
  | @as("emit-metric") #Emit_Metric
  | @as("log") #Log
]
type tableRestoreStatusType = [
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING") #PENDING
]
type tstamp = Js.Date.t
type string_ = string
type sourceType = [
  | @as("scheduled-action") #Scheduled_Action
  | @as("cluster-snapshot") #Cluster_Snapshot
  | @as("cluster-security-group") #Cluster_Security_Group
  | @as("cluster-parameter-group") #Cluster_Parameter_Group
  | @as("cluster") #Cluster
]
type sortByOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type snapshotAttributeToSortBy = [
  | @as("CREATE_TIME") #CREATE_TIME
  | @as("TOTAL_SIZE") #TOTAL_SIZE
  | @as("SOURCE_TYPE") #SOURCE_TYPE
]
type sensitiveString = string
type scheduledActionTypeValues = [
  | @as("ResumeCluster") #ResumeCluster
  | @as("PauseCluster") #PauseCluster
  | @as("ResizeCluster") #ResizeCluster
]
type scheduledActionState = [@as("DISABLED") #DISABLED | @as("ACTIVE") #ACTIVE]
type scheduledActionFilterName = [
  | @as("iam-role") #Iam_Role
  | @as("cluster-identifier") #Cluster_Identifier
]
type scheduleState = [@as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("MODIFYING") #MODIFYING]
type reservedNodeOfferingType = [@as("Upgradable") #Upgradable | @as("Regular") #Regular]
type partnerIntegrationStatusMessage = string
type partnerIntegrationStatus = [
  | @as("ConnectionFailure") #ConnectionFailure
  | @as("RuntimeFailure") #RuntimeFailure
  | @as("Inactive") #Inactive
  | @as("Active") #Active
]
type partnerIntegrationPartnerName = string
type partnerIntegrationDatabaseName = string
type partnerIntegrationClusterIdentifier = string
type partnerIntegrationAccountId = string
type parameterApplyType = [@as("dynamic") #Dynamic | @as("static") #Static]
type operatorType = [
  | @as("between") #Between
  | @as("in") #In
  | @as("ge") #Ge
  | @as("le") #Le
  | @as("gt") #Gt
  | @as("lt") #Lt
  | @as("eq") #Eq
]
type nodeConfigurationOptionsFilterName = [
  | @as("Mode") #Mode
  | @as("EstimatedDiskUtilizationPercent") #EstimatedDiskUtilizationPercent
  | @as("NumberOfNodes") #NumberOfNodes
  | @as("NodeType") #NodeType
]
type mode = [@as("high-performance") #High_Performance | @as("standard") #Standard]
type longOptional = float
type long = float
type integerOptional = int
type integer_ = int
type exceptionMessage = string
type doubleOptional = float
type double = float
type booleanOptional = bool
type boolean_ = bool
type authorizationStatus = [@as("Revoking") #Revoking | @as("Authorized") #Authorized]
type aquaStatus = [@as("applying") #Applying | @as("disabled") #Disabled | @as("enabled") #Enabled]
type aquaConfigurationStatus = [
  | @as("auto") #Auto
  | @as("disabled") #Disabled
  | @as("enabled") #Enabled
]
type actionType = [
  | @as("resize-cluster") #Resize_Cluster
  | @as("recommend-node-config") #Recommend_Node_Config
  | @as("restore-cluster") #Restore_Cluster
]
@ocaml.doc("<p>Describes the members of a VPC security group.</p>")
type vpcSecurityGroupMembership = {
  @ocaml.doc("<p>The status of the VPC security group.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The identifier of the VPC security group.</p>") @as("VpcSecurityGroupId")
  vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
type vpcIdentifierList = array<string_>
type valueStringList = array<string_>
type tagValueList = array<string_>
type tagKeyList = array<string_>
@ocaml.doc("<p>A tag consisting of a name/value pair for a resource.</p>")
type tag = {
  @ocaml.doc("<p>The value for the resource tag.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The key, or name, for the resource tag.</p>") @as("Key") key: option<string_>,
}
@ocaml.doc("<p>Describes the status of a <a>RestoreTableFromClusterSnapshot</a>
            operation.</p>")
type tableRestoreStatus = {
  @ocaml.doc("<p>The name of the table to create as a result of the table restore request.</p>")
  @as("NewTableName")
  newTableName: option<string_>,
  @ocaml.doc("<p>The name of the schema to restore the table to.</p>") @as("TargetSchemaName")
  targetSchemaName: option<string_>,
  @ocaml.doc("<p>The name of the database to restore the table to.</p>") @as("TargetDatabaseName")
  targetDatabaseName: option<string_>,
  @ocaml.doc("<p>The name of the source table being restored.</p>") @as("SourceTableName")
  sourceTableName: option<string_>,
  @ocaml.doc("<p>The name of the source schema that contains the table being restored.</p>")
  @as("SourceSchemaName")
  sourceSchemaName: option<string_>,
  @ocaml.doc("<p>The name of the source database that contains the table being restored.</p>")
  @as("SourceDatabaseName")
  sourceDatabaseName: option<string_>,
  @ocaml.doc("<p>The identifier of the snapshot that the table is being restored from.</p>")
  @as("SnapshotIdentifier")
  snapshotIdentifier: option<string_>,
  @ocaml.doc("<p>The identifier of the Amazon Redshift cluster that the table is being restored
            to.</p>")
  @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
  @ocaml.doc("<p>The total amount of data to restore to the new table, in megabytes (MB).</p>")
  @as("TotalDataInMegaBytes")
  totalDataInMegaBytes: option<longOptional>,
  @ocaml.doc("<p>The amount of data restored to the new table so far, in megabytes (MB).</p>")
  @as("ProgressInMegaBytes")
  progressInMegaBytes: option<longOptional>,
  @ocaml.doc("<p>The time that the table restore request was made, in Universal Coordinated Time
            (UTC).</p>")
  @as("RequestTime")
  requestTime: option<tstamp>,
  @ocaml.doc("<p>A description of the status of the table restore request. Status values include
                <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>,
                <code>PENDING</code>, <code>IN_PROGRESS</code>.</p>")
  @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>A value that describes the current state of the table restore request.</p>
        <p>Valid Values: <code>SUCCEEDED</code>, <code>FAILED</code>, <code>CANCELED</code>,
                <code>PENDING</code>, <code>IN_PROGRESS</code>
        </p>")
  @as("Status")
  status: option<tableRestoreStatusType>,
  @ocaml.doc("<p>The unique identifier for the table restore request.</p>")
  @as("TableRestoreRequestId")
  tableRestoreRequestId: option<string_>,
}
@ocaml.doc("<p>A list of supported platforms for orderable clusters.</p>")
type supportedPlatform = {@ocaml.doc("<p></p>") @as("Name") name: option<string_>}
@ocaml.doc("<p>Describes the operations that are allowed on a maintenance track.</p>")
type supportedOperation = {
  @ocaml.doc("<p>A list of the supported operations.</p>") @as("OperationName")
  operationName: option<string_>,
}
type subnetIdentifierList = array<string_>
type sourceIdsList = array<string_>
@ocaml.doc("<p>Describes a sorting entity</p>")
type snapshotSortingEntity = {
  @ocaml.doc("<p>The order for listing the attributes.</p>") @as("SortOrder")
  sortOrder: option<sortByOrder>,
  @ocaml.doc("<p>The category for sorting the snapshots.</p>") @as("Attribute")
  attribute: snapshotAttributeToSortBy,
}
type snapshotIdentifierList = array<string_>
@ocaml.doc("<p>Describes the errors returned by a snapshot.</p>")
type snapshotErrorMessage = {
  @ocaml.doc("<p>The text message describing the error.</p>") @as("FailureReason")
  failureReason: option<string_>,
  @ocaml.doc("<p>The failure code for the error.</p>") @as("FailureCode")
  failureCode: option<string_>,
  @ocaml.doc("<p>A unique identifier for the cluster.</p>") @as("SnapshotClusterIdentifier")
  snapshotClusterIdentifier: option<string_>,
  @ocaml.doc("<p>A unique identifier for the snapshot returning the error.</p>")
  @as("SnapshotIdentifier")
  snapshotIdentifier: option<string_>,
}
type scheduledSnapshotTimeList = array<tstamp>
type scheduledActionTimeList = array<tstamp>
type scheduleDefinitionList = array<string_>
@ocaml.doc("<p>Describes a <code>RevisionTarget</code>.</p>")
type revisionTarget = {
  @ocaml.doc("<p>The date on which the database revision was released.</p>")
  @as("DatabaseRevisionReleaseDate")
  databaseRevisionReleaseDate: option<tstamp>,
  @ocaml.doc("<p>A string that describes the changes and features that will be applied to the cluster
            when it is updated to the corresponding <a>ClusterDbRevision</a>.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>A unique string that identifies the version to update the cluster to. You can use this
            value in <a>ModifyClusterDbRevision</a>.</p>")
  @as("DatabaseRevision")
  databaseRevision: option<string_>,
}
@ocaml.doc(
  "<p>Describes a resume cluster operation. For example, a scheduled action to run the <code>ResumeCluster</code> API operation. </p>"
)
type resumeClusterMessage = {
  @ocaml.doc("<p>The identifier of the cluster to be resumed.</p>") @as("ClusterIdentifier")
  clusterIdentifier: string_,
}
@ocaml.doc("<p>Describes the status of a cluster restore action. Returns null if the cluster was
            not created by restoring a snapshot.</p>")
type restoreStatus = {
  @ocaml.doc("<p>The estimate of the time remaining before the restore will complete. Returns 0 for
            a completed restore.
            This field is only updated when you restore to DC2 and DS2 node types. </p>")
  @as("EstimatedTimeToCompletionInSeconds")
  estimatedTimeToCompletionInSeconds: option<long>,
  @ocaml.doc("<p>The amount of time an in-progress restore has been running, or the amount of time
            it took a completed restore to finish.
            This field is only updated when you restore to DC2 and DS2 node types. </p>")
  @as("ElapsedTimeInSeconds")
  elapsedTimeInSeconds: option<long>,
  @ocaml.doc("<p>The number of megabytes that have been transferred from snapshot storage.
            This field is only updated when you restore to DC2 and DS2 node types. </p>")
  @as("ProgressInMegaBytes")
  progressInMegaBytes: option<long>,
  @ocaml.doc("<p>The size of the set of snapshot data used to restore the cluster.
            This field is only updated when you restore to DC2 and DS2 node types. </p>")
  @as("SnapshotSizeInMegaBytes")
  snapshotSizeInMegaBytes: option<long>,
  @ocaml.doc("<p>The number of megabytes per second being transferred from the backup storage.
            Returns the average rate for a completed backup.
            This field is only updated when you restore to DC2 and DS2 node types. </p>")
  @as("CurrentRestoreRateInMegaBytesPerSecond")
  currentRestoreRateInMegaBytesPerSecond: option<double>,
  @ocaml.doc("<p>The status of the restore action. Returns starting, restoring, completed, or
            failed.</p>")
  @as("Status")
  status: option<string_>,
}
type restorableNodeTypeList = array<string_>
@ocaml.doc("<p>Describes a resize operation.</p>")
type resizeInfo = {
  @ocaml.doc("<p>A boolean value indicating if the resize operation can be cancelled.</p>")
  @as("AllowCancelResize")
  allowCancelResize: option<boolean_>,
  @ocaml.doc("<p>Returns the value <code>ClassicResize</code>.</p>") @as("ResizeType")
  resizeType: option<string_>,
}
@ocaml.doc(
  "<p>Describes a resize cluster operation. For example, a scheduled action to run the <code>ResizeCluster</code> API operation. </p>"
)
type resizeClusterMessage = {
  @ocaml.doc("<p>A boolean value indicating whether the resize operation is using the classic resize
            process. If you don't provide this parameter or set the value to
            <code>false</code>, the resize type is elastic. </p>")
  @as("Classic")
  classic: option<booleanOptional>,
  @ocaml.doc(
    "<p>The new number of nodes for the cluster. If not specified, the cluster's current number of nodes is used.</p>"
  )
  @as("NumberOfNodes")
  numberOfNodes: option<integerOptional>,
  @ocaml.doc(
    "<p>The new node type for the nodes you are adding. If not specified, the cluster's current node type is used.</p>"
  )
  @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The new cluster type for the specified cluster.</p>") @as("ClusterType")
  clusterType: option<string_>,
  @ocaml.doc("<p>The unique identifier for the cluster to resize.</p>") @as("ClusterIdentifier")
  clusterIdentifier: string_,
}
@ocaml.doc("<p>Describes a recurring charge.</p>")
type recurringCharge = {
  @ocaml.doc("<p>The frequency at which the recurring charge amount is applied.</p>")
  @as("RecurringChargeFrequency")
  recurringChargeFrequency: option<string_>,
  @ocaml.doc("<p>The amount charged per the period of time specified by the recurring charge
            frequency.</p>")
  @as("RecurringChargeAmount")
  recurringChargeAmount: option<double>,
}
@ocaml.doc("<p>Describes cluster attributes that are in a pending state. A change to one or more
            the attributes was requested and is in progress or will be applied.</p>")
type pendingModifiedValues = {
  @ocaml.doc("<p>The encryption type for a cluster. Possible values are: KMS and None. </p>")
  @as("EncryptionType")
  encryptionType: option<string_>,
  @ocaml.doc("<p>The name of the maintenance track that the cluster will change to during the next
            maintenance window.</p>")
  @as("MaintenanceTrackName")
  maintenanceTrackName: option<string_>,
  @ocaml.doc("<p>An option that specifies whether to create the cluster with enhanced VPC routing
            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in
            the Amazon Redshift Cluster Management Guide.</p>
        <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
        <p>Default: false</p>")
  @as("EnhancedVpcRouting")
  enhancedVpcRouting: option<booleanOptional>,
  @ocaml.doc("<p>The pending or in-progress change of the ability to connect to the cluster from the
            public network.</p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<booleanOptional>,
  @ocaml.doc("<p>The pending or in-progress change of the new identifier for the cluster.</p>")
  @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
  @ocaml.doc("<p>The pending or in-progress change of the automated snapshot retention
            period.</p>")
  @as("AutomatedSnapshotRetentionPeriod")
  automatedSnapshotRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>The pending or in-progress change of the service version.</p>")
  @as("ClusterVersion")
  clusterVersion: option<string_>,
  @ocaml.doc("<p>The pending or in-progress change of the cluster type.</p>") @as("ClusterType")
  clusterType: option<string_>,
  @ocaml.doc("<p>The pending or in-progress change of the number of nodes in the cluster.</p>")
  @as("NumberOfNodes")
  numberOfNodes: option<integerOptional>,
  @ocaml.doc("<p>The pending or in-progress change of the cluster's node type.</p>") @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The pending or in-progress change of the master user password for the
            cluster.</p>")
  @as("MasterUserPassword")
  masterUserPassword: option<string_>,
}
type pendingActionsList = array<string_>
@ocaml.doc(
  "<p>Describes a pause cluster operation. For example, a scheduled action to run the <code>PauseCluster</code> API operation. </p>"
)
type pauseClusterMessage = {
  @ocaml.doc("<p>The identifier of the cluster to be paused.</p>") @as("ClusterIdentifier")
  clusterIdentifier: string_,
}
@ocaml.doc("<p>Describes a partner integration.</p>")
type partnerIntegrationInfo = {
  @ocaml.doc(
    "<p>The date (UTC) that the partner integration status was last updated by the partner.</p>"
  )
  @as("UpdatedAt")
  updatedAt: option<tstamp>,
  @ocaml.doc("<p>The date (UTC) that the partner integration was created.</p>") @as("CreatedAt")
  createdAt: option<tstamp>,
  @ocaml.doc("<p>The status message provided by the partner.</p>") @as("StatusMessage")
  statusMessage: option<partnerIntegrationStatusMessage>,
  @ocaml.doc("<p>The partner integration status.</p>") @as("Status")
  status: option<partnerIntegrationStatus>,
  @ocaml.doc("<p>The name of the partner.</p>") @as("PartnerName")
  partnerName: option<partnerIntegrationPartnerName>,
  @ocaml.doc("<p>The name of the database that receives data from a partner.</p>")
  @as("DatabaseName")
  databaseName: option<partnerIntegrationDatabaseName>,
}
@ocaml.doc("<p>Describes a parameter in a cluster parameter group.</p>")
type parameter = {
  @ocaml.doc("<p>The earliest engine version to which the parameter can apply.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>If <code>true</code>, the parameter can be modified. Some parameters have security
            or operational implications that prevent them from being changed. </p>")
  @as("IsModifiable")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>Specifies how to apply the WLM configuration parameter. Some properties can be
            applied dynamically, while other properties require that any associated clusters be
            rebooted for the configuration changes to be applied. 
For more information about parameters and parameter groups, go to 
<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> 
in the <i>Amazon Redshift Cluster Management Guide</i>.</p>")
  @as("ApplyType")
  applyType: option<parameterApplyType>,
  @ocaml.doc("<p>The valid range of values for the parameter.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The data type of the parameter.</p>") @as("DataType") dataType: option<string_>,
  @ocaml.doc("<p>The source of the parameter value, such as \"engine-default\" or \"user\".</p>")
  @as("Source")
  source: option<string_>,
  @ocaml.doc("<p>A description of the parameter.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The value of the parameter. If <code>ParameterName</code> is <code>wlm_json_configuration</code>, 
            then the maximum size of <code>ParameterValue</code> is 8000 characters.</p>")
  @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
@ocaml.doc("<p>A list of node configurations.</p>")
type nodeConfigurationOption = {
  @ocaml.doc("<p>The category of the node configuration recommendation.</p>") @as("Mode")
  mode: option<mode>,
  @ocaml.doc("<p>The estimated disk utilizaton percentage.</p>")
  @as("EstimatedDiskUtilizationPercent")
  estimatedDiskUtilizationPercent: option<doubleOptional>,
  @ocaml.doc("<p>The number of nodes.</p>") @as("NumberOfNodes") numberOfNodes: option<integer_>,
  @ocaml.doc("<p>The node type, such as, \"ds2.8xlarge\".</p>") @as("NodeType")
  nodeType: option<string_>,
}
@ocaml.doc("<p>Describes a network interface. </p>")
type networkInterface = {
  @ocaml.doc("<p>The Availability Zone. </p>") @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The IPv4 address of the network interface within the subnet. </p>")
  @as("PrivateIpAddress")
  privateIpAddress: option<string_>,
  @ocaml.doc("<p>The subnet identifier. </p>") @as("SubnetId") subnetId: option<string_>,
  @ocaml.doc("<p>The network interface identifier. </p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<string_>,
}
type importTablesNotStarted = array<string_>
type importTablesInProgress = array<string_>
type importTablesCompleted = array<string_>
type iamRoleArnList = array<string_>
@ocaml.doc("<p>Describes the status of changes to HSM settings.</p>")
type hsmStatus = {
  @ocaml.doc("<p>Reports whether the Amazon Redshift cluster has finished applying any HSM settings
            changes specified in a modify cluster command.</p>
        <p>Values: active, applying</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies the name of the HSM configuration that contains the information the
            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>")
  @as("HsmConfigurationIdentifier")
  hsmConfigurationIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
            retrieve the data encryption keys stored in an HSM.</p>")
  @as("HsmClientCertificateIdentifier")
  hsmClientCertificateIdentifier: option<string_>,
}
type eventCategoriesList = array<string_>
@ocaml.doc("<p>Describes the status of the elastic IP (EIP) address.</p>")
type elasticIpStatus = {
  @ocaml.doc("<p>The status of the elastic IP (EIP) address.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The elastic IP (EIP) address for the cluster.</p>") @as("ElasticIp")
  elasticIp: option<string_>,
}
@ocaml.doc("<p></p>")
type deleteClusterSnapshotMessage = {
  @ocaml.doc("<p>The unique identifier of the cluster the snapshot was created from. This parameter
            is required if your IAM user has a policy containing a snapshot resource element that
            specifies anything other than * for the cluster name.</p>
        <p>Constraints: Must be the name of valid cluster.</p>")
  @as("SnapshotClusterIdentifier")
  snapshotClusterIdentifier: option<string_>,
  @ocaml.doc("<p>The unique identifier of the manual snapshot to be deleted.</p>
        <p>Constraints: Must be the name of an existing snapshot that is in the
                <code>available</code>, <code>failed</code>, or <code>cancelled</code>
            state.</p>")
  @as("SnapshotIdentifier")
  snapshotIdentifier: string_,
}
@ocaml.doc("<p>Describes a deferred maintenance window</p>")
type deferredMaintenanceWindow = {
  @ocaml.doc("<p> A timestamp for the end of the time period when we defer maintenance.</p>")
  @as("DeferMaintenanceEndTime")
  deferMaintenanceEndTime: option<tstamp>,
  @ocaml.doc("<p> A timestamp for the beginning of the time period when we defer maintenance.</p>")
  @as("DeferMaintenanceStartTime")
  deferMaintenanceStartTime: option<tstamp>,
  @ocaml.doc("<p>A unique identifier for the maintenance window.</p>")
  @as("DeferMaintenanceIdentifier")
  deferMaintenanceIdentifier: option<string_>,
}
type dbGroupList = array<string_>
@ocaml.doc("<p>Describes the status of a cluster while it is in the process of resizing with an
            incremental resize.</p>")
type dataTransferProgress = {
  @ocaml.doc("<p>Describes the number of seconds that have elapsed during the data transfer.</p>")
  @as("ElapsedTimeInSeconds")
  elapsedTimeInSeconds: option<longOptional>,
  @ocaml.doc("<p>Describes the estimated number of seconds remaining to complete the transfer.</p>")
  @as("EstimatedTimeToCompletionInSeconds")
  estimatedTimeToCompletionInSeconds: option<longOptional>,
  @ocaml.doc("<p>Describes the total amount of data that has been transfered in MB's.</p>")
  @as("DataTransferredInMegaBytes")
  dataTransferredInMegaBytes: option<long>,
  @ocaml.doc("<p>Describes the total amount of data to be transfered in megabytes.</p>")
  @as("TotalDataInMegaBytes")
  totalDataInMegaBytes: option<long>,
  @ocaml.doc("<p>Describes the data transfer rate in MB's per second.</p>")
  @as("CurrentRateInMegaBytesPerSecond")
  currentRateInMegaBytesPerSecond: option<doubleOptional>,
  @ocaml.doc("<p>Describes the status of the cluster. While the transfer is in progress the status is
                <code>transferringdata</code>.</p>")
  @as("Status")
  status: option<string_>,
}
@ocaml.doc("<p>Describes a cluster version, including the parameter group family and description
            of the version.</p>")
type clusterVersion = {
  @ocaml.doc("<p>The description of the cluster version.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the cluster parameter group family for the cluster.</p>")
  @as("ClusterParameterGroupFamily")
  clusterParameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The version number used by the cluster.</p>") @as("ClusterVersion")
  clusterVersion: option<string_>,
}
@ocaml.doc("<p>Returns the destination region and retention period that are configured for
            cross-region snapshot copy.</p>")
type clusterSnapshotCopyStatus = {
  @ocaml.doc("<p>The name of the snapshot copy grant.</p>") @as("SnapshotCopyGrantName")
  snapshotCopyGrantName: option<string_>,
  @ocaml.doc("<p>The number of days that automated snapshots are retained in the destination region
            after they are copied from a source region. If the value is -1, the manual snapshot is
            retained indefinitely. </p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>")
  @as("ManualSnapshotRetentionPeriod")
  manualSnapshotRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>The number of days that automated snapshots are retained in the destination region
            after they are copied from a source region.</p>")
  @as("RetentionPeriod")
  retentionPeriod: option<long>,
  @ocaml.doc("<p>The destination region that snapshots are automatically copied to when cross-region
            snapshot copy is enabled.</p>")
  @as("DestinationRegion")
  destinationRegion: option<string_>,
}
type clusterSecurityGroupNameList = array<string_>
@ocaml.doc("<p>Describes a cluster security group.</p>")
type clusterSecurityGroupMembership = {
  @ocaml.doc("<p>The status of the cluster security group.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the cluster security group.</p>") @as("ClusterSecurityGroupName")
  clusterSecurityGroupName: option<string_>,
}
@ocaml.doc("<p>Describes the status of a parameter group.</p>")
type clusterParameterStatus = {
  @ocaml.doc("<p>The error that prevented the parameter from being applied to the
            database.</p>")
  @as("ParameterApplyErrorDescription")
  parameterApplyErrorDescription: option<string_>,
  @ocaml.doc("<p>The status of the parameter that indicates whether the parameter is in sync with
            the database, waiting for a cluster reboot, or encountered an error when being
            applied.</p>
        <p>The following are possible statuses and descriptions.</p>
        <ul>
            <li>
                <p>
                    <code>in-sync</code>: The parameter value is in sync with the
                    database.</p>
            </li>
            <li>
                <p>
                    <code>pending-reboot</code>: The parameter value will be applied after the
                    cluster reboots.</p>
            </li>
            <li>
                <p>
                    <code>applying</code>: The parameter value is being applied to the
                    database.</p>
            </li>
            <li>
                <p>
                    <code>invalid-parameter</code>: Cannot apply the parameter value because it has
                    an invalid value or syntax.</p>
            </li>
            <li>
                <p>
                    <code>apply-deferred</code>: The parameter contains static property changes. The
                    changes are deferred until the cluster reboots.</p>
            </li>
            <li>
                <p>
                    <code>apply-error</code>: Cannot connect to the cluster. The parameter change
                    will be applied after the cluster reboots.</p>
            </li>
            <li>
                <p>
                    <code>unknown-error</code>: Cannot apply the parameter change right now. The
                    change will be applied after the cluster reboots.</p>
            </li>
         </ul>")
  @as("ParameterApplyStatus")
  parameterApplyStatus: option<string_>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
@ocaml.doc("<p>The identifier of a node in a cluster.</p>")
type clusterNode = {
  @ocaml.doc("<p>The public IP address of a node within a cluster.</p>") @as("PublicIPAddress")
  publicIPAddress: option<string_>,
  @ocaml.doc("<p>The private IP address of a node within a cluster.</p>") @as("PrivateIPAddress")
  privateIPAddress: option<string_>,
  @ocaml.doc("<p>Whether the node is a leader node or a compute node.</p>") @as("NodeRole")
  nodeRole: option<string_>,
}
@ocaml.doc("<p>An AWS Identity and Access Management (IAM) role that can be used by the associated
            Amazon Redshift cluster to access other AWS services.</p>")
type clusterIamRole = {
  @ocaml.doc("<p>A value that describes the status of the IAM role's association with an Amazon
            Redshift cluster.</p>
        <p>The following are possible statuses and descriptions.</p>
        <ul>
            <li>
                <p>
                    <code>in-sync</code>: The role is available for use by the cluster.</p>
            </li>
            <li>
                <p>
                    <code>adding</code>: The role is in the process of being associated with the
                    cluster.</p>
            </li>
            <li>
                <p>
                    <code>removing</code>: The role is in the process of being disassociated with
                    the cluster.</p>
            </li>
         </ul>")
  @as("ApplyStatus")
  applyStatus: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role, for example,
                <code>arn:aws:iam::123456789012:role/RedshiftCopyUnload</code>. </p>")
  @as("IamRoleArn")
  iamRoleArn: option<string_>,
}
@ocaml.doc("<p></p>")
type clusterAssociatedToSchedule = {
  @ocaml.doc("<p></p>") @as("ScheduleAssociationState")
  scheduleAssociationState: option<scheduleState>,
  @ocaml.doc("<p></p>") @as("ClusterIdentifier") clusterIdentifier: option<string_>,
}
@ocaml.doc("<p>Describes an attribute value.</p>")
type attributeValueTarget = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("AttributeValue")
  attributeValue: option<string_>,
}
type attributeNameList = array<string_>
@ocaml.doc("<p>The AQUA (Advanced Query Accelerator) configuration of the cluster.</p>")
type aquaConfiguration = {
  @ocaml.doc("<p>The value represents how the cluster is configured to use AQUA. Possible values include the following.</p>
        <ul>
            <li>
               <p>enabled - Use AQUA if it is available for the current AWS Region and Amazon Redshift node type.</p>
            </li>
            <li>
               <p>disabled - Don't use AQUA. </p>
            </li>
            <li>
               <p>auto - Amazon Redshift determines whether to use AQUA.</p>
            </li>
         </ul>")
  @as("AquaConfigurationStatus")
  aquaConfigurationStatus: option<aquaConfigurationStatus>,
  @ocaml.doc("<p>The value indicates the status of AQUA on the cluster. Possible values include the following.</p>
        <ul>
            <li>
               <p>enabled - AQUA is enabled.</p>
            </li>
            <li>
               <p>disabled - AQUA is not enabled. </p>
            </li>
            <li>
               <p>applying - AQUA status is being applied. </p>
            </li>
         </ul>")
  @as("AquaStatus")
  aquaStatus: option<aquaStatus>,
}
@ocaml.doc("<p>Describes an AWS customer account authorized to restore a snapshot.</p>")
type accountWithRestoreAccess = {
  @ocaml.doc("<p>The identifier of an AWS support account authorized to restore a snapshot. For AWS
            support, the identifier is <code>amazon-redshift-support</code>. </p>")
  @as("AccountAlias")
  accountAlias: option<string_>,
  @ocaml.doc("<p>The identifier of an AWS customer account authorized to restore a
            snapshot.</p>")
  @as("AccountId")
  accountId: option<string_>,
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
@ocaml.doc("<p>A tag and its associated resource.</p>")
type taggedResource = {
  @ocaml.doc("<p>The type of resource with which the tag is associated. Valid resource types are: </p>
        <ul>
            <li>
                <p>Cluster</p>
            </li>
            <li>
                <p>CIDR/IP</p>
            </li>
            <li>
                <p>EC2 security group</p>
            </li>
            <li>
                <p>Snapshot</p>
            </li>
            <li>
                <p>Cluster security group</p>
            </li>
            <li>
                <p>Subnet group</p>
            </li>
            <li>
                <p>HSM connection</p>
            </li>
            <li>
                <p>HSM certificate</p>
            </li>
            <li>
                <p>Parameter group</p>
            </li>
         </ul>
        <p>For more information about Amazon Redshift resource types and constructing ARNs, go to
                <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions\">Constructing an Amazon Redshift Amazon Resource Name (ARN)</a> in the
            Amazon Redshift Cluster Management Guide. </p>")
  @as("ResourceType")
  resourceType: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) with which the tag is associated, for example:
                <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>.</p>")
  @as("ResourceName")
  resourceName: option<string_>,
  @ocaml.doc("<p>The tag for the resource.</p>") @as("Tag") tag: option<tag>,
}
type tagList_ = array<tag>
type tableRestoreStatusList = array<tableRestoreStatus>
type supportedPlatformsList = array<supportedPlatform>
type supportedOperationList = array<supportedOperation>
type snapshotSortingEntityList = array<snapshotSortingEntity>
@ocaml.doc(
  "<p>The action type that specifies an Amazon Redshift API operation that is supported by the Amazon Redshift scheduler. </p>"
)
type scheduledActionType = {
  @ocaml.doc("<p>An action that runs a <code>ResumeCluster</code> API operation. </p>")
  @as("ResumeCluster")
  resumeCluster: option<resumeClusterMessage>,
  @ocaml.doc("<p>An action that runs a <code>PauseCluster</code> API operation. </p>")
  @as("PauseCluster")
  pauseCluster: option<pauseClusterMessage>,
  @ocaml.doc("<p>An action that runs a <code>ResizeCluster</code> API operation. </p>")
  @as("ResizeCluster")
  resizeCluster: option<resizeClusterMessage>,
}
@ocaml.doc("<p>A set of elements to filter the returned scheduled actions. </p>")
type scheduledActionFilter = {
  @ocaml.doc(
    "<p>List of values. Compare if the value (of type defined by <code>Name</code>) equals an item in the list of scheduled actions. </p>"
  )
  @as("Values")
  values: valueStringList,
  @ocaml.doc("<p>The type of element to filter. </p>") @as("Name") name: scheduledActionFilterName,
}
type revisionTargetsList = array<revisionTarget>
type recurringChargeList = array<recurringCharge>
type partnerIntegrationInfoList = array<partnerIntegrationInfo>
type parametersList = array<parameter>
@ocaml.doc("<p>A set of elements to filter the returned node configurations.</p>")
type nodeConfigurationOptionsFilter = {
  @ocaml.doc("<p>List of values. Compare Name using Operator to Values.
            If filter Name is NumberOfNodes, then values can range from 0 to 200.
            If filter Name is EstimatedDiskUtilizationPercent, then values can range from 0 to 100. 
            For example, filter NumberOfNodes (name) GT (operator) 3 (values).</p>")
  @as("Values")
  values: option<valueStringList>,
  @ocaml.doc("<p>The filter operator.
            If filter Name is NodeType only the 'in' operator is supported.
            Provide one value to evaluate for 'eq', 'lt', 'le', 'gt', and 'ge'. 
            Provide two values to evaluate for 'between'.
            Provide a list of values for 'in'.</p>")
  @as("Operator")
  operator: option<operatorType>,
  @ocaml.doc("<p>The name of the element to filter.</p>") @as("Name")
  name: option<nodeConfigurationOptionsFilterName>,
}
type nodeConfigurationOptionList = array<nodeConfigurationOption>
type networkInterfaceList = array<networkInterface>
@ocaml.doc("<p>Describes event information.</p>")
type eventInfoMap = {
  @ocaml.doc("<p>The severity of the event.</p>
        <p>Values: ERROR, INFO</p>")
  @as("Severity")
  severity: option<string_>,
  @ocaml.doc("<p>The description of an Amazon Redshift event.</p>") @as("EventDescription")
  eventDescription: option<string_>,
  @ocaml.doc("<p>The category of an Amazon Redshift event.</p>") @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>The identifier of an Amazon Redshift event.</p>") @as("EventId")
  eventId: option<string_>,
}
@ocaml.doc("<p>Describes an event.</p>")
type event = {
  @ocaml.doc("<p>The identifier of the event.</p>") @as("EventId") eventId: option<string_>,
  @ocaml.doc("<p>The date and time of the event.</p>") @as("Date") date: option<tstamp>,
  @ocaml.doc("<p>The severity of the event.</p>
        <p>Values: ERROR, INFO</p>")
  @as("Severity")
  severity: option<string_>,
  @ocaml.doc("<p>A list of the event categories.</p>
        <p>Values: Configuration, Management, Monitoring, Security</p>")
  @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>The text of this event.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The source type for this event.</p>") @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>The identifier for the source of the event.</p>") @as("SourceIdentifier")
  sourceIdentifier: option<string_>,
}
@ocaml.doc(
  "<p>Describes an endpoint authorization for authorizing Redshift-managed VPC endpoint access to a cluster across AWS accounts.</p>"
)
type endpointAuthorization = {
  @ocaml.doc("<p>The number of Redshift-managed VPC endpoints created for the authorization.</p>")
  @as("EndpointCount")
  endpointCount: option<integer_>,
  @ocaml.doc("<p>The VPCs allowed access to the cluster.</p>") @as("AllowedVPCs")
  allowedVPCs: option<vpcIdentifierList>,
  @ocaml.doc(
    "<p>Indicates whether all VPCs in the grantee account are allowed access to the cluster.</p>"
  )
  @as("AllowedAllVPCs")
  allowedAllVPCs: option<boolean_>,
  @ocaml.doc("<p>The status of the authorization action.</p>") @as("Status")
  status: option<authorizationStatus>,
  @ocaml.doc("<p>The status of the cluster.</p>") @as("ClusterStatus")
  clusterStatus: option<string_>,
  @ocaml.doc("<p>The time (UTC) when the authorization was created.</p>") @as("AuthorizeTime")
  authorizeTime: option<tstamp>,
  @ocaml.doc("<p>The cluster identifier.</p>") @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
  @ocaml.doc("<p>The AWS account ID of the grantee of the cluster.</p>") @as("Grantee")
  grantee: option<string_>,
  @ocaml.doc("<p>The AWS account ID of the cluster owner.</p>") @as("Grantor")
  grantor: option<string_>,
}
type deleteClusterSnapshotMessageList = array<deleteClusterSnapshotMessage>
type deferredMaintenanceWindowsList = array<deferredMaintenanceWindow>
type clusterVersionList = array<clusterVersion>
type clusterSecurityGroupMembershipList = array<clusterSecurityGroupMembership>
type clusterParameterStatusList = array<clusterParameterStatus>
type clusterNodesList = array<clusterNode>
type clusterIamRoleList = array<clusterIamRole>
type batchSnapshotOperationErrors = array<snapshotErrorMessage>
type batchSnapshotOperationErrorList = array<snapshotErrorMessage>
type attributeValueList = array<attributeValueTarget>
type associatedClusterList = array<clusterAssociatedToSchedule>
type accountsWithRestoreAccessList = array<accountWithRestoreAccess>
@ocaml.doc(
  "<p>The connection endpoint for connecting to an Amazon Redshift cluster through the proxy.</p>"
)
type vpcEndpoint = {
  @ocaml.doc(
    "<p>One or more network interfaces of the endpoint. Also known as an interface endpoint. </p>"
  )
  @as("NetworkInterfaces")
  networkInterfaces: option<networkInterfaceList>,
  @ocaml.doc("<p>The VPC identifier that the endpoint is associated. </p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc(
    "<p>The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy.</p>"
  )
  @as("VpcEndpointId")
  vpcEndpointId: option<string_>,
}
@ocaml.doc("<p>Describes a usage limit object for a cluster. </p>")
type usageLimit = {
  @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The action that Amazon Redshift takes when the limit is reached. Possible values are: </p>
         <ul>
            <li>
               <p>
                  <b>log</b> - To log an event in a system table. The default is log.</p>
            </li>
            <li>
               <p>
                  <b>emit-metric</b> - To emit CloudWatch metrics.</p>
            </li>
            <li>
               <p>
                  <b>disable</b> - To disable the feature until the next usage period begins.</p>
            </li>
         </ul>")
  @as("BreachAction")
  breachAction: option<usageLimitBreachAction>,
  @ocaml.doc(
    "<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. </p>"
  )
  @as("Period")
  period: option<usageLimitPeriod>,
  @ocaml.doc(
    "<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).</p>"
  )
  @as("Amount")
  amount: option<long>,
  @ocaml.doc(
    "<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.</p>"
  )
  @as("LimitType")
  limitType: option<usageLimitLimitType>,
  @ocaml.doc("<p>The Amazon Redshift feature to which the limit applies.</p>") @as("FeatureType")
  featureType: option<usageLimitFeatureType>,
  @ocaml.doc("<p>The identifier of the cluster with a usage limit.</p>") @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
  @ocaml.doc("<p>The identifier of the usage limit.</p>") @as("UsageLimitId")
  usageLimitId: option<string_>,
}
@ocaml.doc("<p>A maintenance track that you can switch the current track to.</p>")
type updateTarget = {
  @ocaml.doc("<p>A list of operations supported by the maintenance track.</p>")
  @as("SupportedOperations")
  supportedOperations: option<supportedOperationList>,
  @ocaml.doc("<p>The cluster version for the new maintenance track.</p>") @as("DatabaseVersion")
  databaseVersion: option<string_>,
  @ocaml.doc("<p>The name of the new maintenance track.</p>") @as("MaintenanceTrackName")
  maintenanceTrackName: option<string_>,
}
type taggedResourceList = array<taggedResource>
@ocaml.doc("<p>Describes a snapshot schedule. You can set a regular interval for creating
            snapshots of a cluster. You can also schedule snapshots for specific dates. </p>")
type snapshotSchedule = {
  @ocaml.doc(
    "<p>A list of clusters associated with the schedule. A maximum of 100 clusters is returned.</p>"
  )
  @as("AssociatedClusters")
  associatedClusters: option<associatedClusterList>,
  @ocaml.doc("<p>The number of clusters associated with the schedule.</p>")
  @as("AssociatedClusterCount")
  associatedClusterCount: option<integerOptional>,
  @ocaml.doc("<p></p>") @as("NextInvocations") nextInvocations: option<scheduledSnapshotTimeList>,
  @ocaml.doc("<p>An optional set of tags describing the schedule.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The description of the schedule.</p>") @as("ScheduleDescription")
  scheduleDescription: option<string_>,
  @ocaml.doc("<p>A unique identifier for the schedule.</p>") @as("ScheduleIdentifier")
  scheduleIdentifier: option<string_>,
  @ocaml.doc("<p>A list of ScheduleDefinitions.</p>") @as("ScheduleDefinitions")
  scheduleDefinitions: option<scheduleDefinitionList>,
}
@ocaml.doc("<p>The snapshot copy grant that grants Amazon Redshift permission to encrypt copied
            snapshots with the specified customer master key (CMK) from AWS KMS in the destination
            region.</p>
        <p>
For more information about managing snapshot copy grants, go to 
<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html\">Amazon Redshift Database Encryption</a> 
in the <i>Amazon Redshift Cluster Management Guide</i>.
</p>")
type snapshotCopyGrant = {
  @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The unique identifier of the customer master key (CMK) in AWS KMS to which
            Amazon Redshift is granted permission.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>The name of the snapshot copy grant.</p>") @as("SnapshotCopyGrantName")
  snapshotCopyGrantName: option<string_>,
}
@ocaml.doc("<p>Describes a snapshot.</p>")
type snapshot = {
  @ocaml.doc("<p>A timestamp representing the start of the retention period for the snapshot.</p>")
  @as("SnapshotRetentionStartTime")
  snapshotRetentionStartTime: option<tstamp>,
  @ocaml.doc("<p>The number of days until a manual snapshot will pass its retention period.</p>")
  @as("ManualSnapshotRemainingDays")
  manualSnapshotRemainingDays: option<integerOptional>,
  @ocaml.doc("<p>The number of days that a manual snapshot is retained. If the value is -1, the manual
            snapshot is retained indefinitely. </p>

        <p>The value must be either -1 or an integer between 1 and 3,653.</p>")
  @as("ManualSnapshotRetentionPeriod")
  manualSnapshotRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>The name of the maintenance track for the snapshot.</p>")
  @as("MaintenanceTrackName")
  maintenanceTrackName: option<string_>,
  @ocaml.doc("<p>An option that specifies whether to create the cluster with enhanced VPC routing
            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in
            the Amazon Redshift Cluster Management Guide.</p>
        <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
        <p>Default: false</p>")
  @as("EnhancedVpcRouting")
  enhancedVpcRouting: option<boolean_>,
  @ocaml.doc("<p>The list of node types that this cluster snapshot is able to restore
            into.</p>")
  @as("RestorableNodeTypes")
  restorableNodeTypes: option<restorableNodeTypeList>,
  @ocaml.doc("<p>The list of tags for the cluster snapshot.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The source region from which the snapshot was copied.</p>") @as("SourceRegion")
  sourceRegion: option<string_>,
  @ocaml.doc("<p>The amount of time an in-progress snapshot backup has been running, or the amount
            of time it took a completed backup to finish.</p>")
  @as("ElapsedTimeInSeconds")
  elapsedTimeInSeconds: option<long>,
  @ocaml.doc("<p>The estimate of the time remaining before the snapshot backup will complete.
            Returns <code>0</code> for a completed backup. </p>")
  @as("EstimatedSecondsToCompletion")
  estimatedSecondsToCompletion: option<long>,
  @ocaml.doc("<p>The number of megabytes per second being transferred to the snapshot backup.
            Returns <code>0</code> for a completed backup. </p>")
  @as("CurrentBackupRateInMegaBytesPerSecond")
  currentBackupRateInMegaBytesPerSecond: option<double>,
  @ocaml.doc("<p>The number of megabytes that have been transferred to the snapshot
            backup.</p>")
  @as("BackupProgressInMegaBytes")
  backupProgressInMegaBytes: option<double>,
  @ocaml.doc("<p>The size of the incremental backup.</p>")
  @as("ActualIncrementalBackupSizeInMegaBytes")
  actualIncrementalBackupSizeInMegaBytes: option<double>,
  @ocaml.doc("<p>The size of the complete set of backup data that would be used to restore the
            cluster.</p>")
  @as("TotalBackupSizeInMegaBytes")
  totalBackupSizeInMegaBytes: option<double>,
  @ocaml.doc("<p>For manual snapshots, the AWS customer account used to create or copy the snapshot.
            For automatic snapshots, the owner of the cluster. The owner can perform all snapshot
            actions, such as sharing a manual snapshot.</p>")
  @as("OwnerAccount")
  ownerAccount: option<string_>,
  @ocaml.doc("<p>A list of the AWS customer accounts authorized to restore the snapshot. Returns
                <code>null</code> if no accounts are authorized. Visible only to the snapshot owner.
        </p>")
  @as("AccountsWithRestoreAccess")
  accountsWithRestoreAccess: option<accountsWithRestoreAccessList>,
  @ocaml.doc("<p>A boolean that indicates whether the snapshot data is encrypted using the HSM keys
            of the source cluster. <code>true</code> indicates that the data is encrypted using HSM
            keys.</p>")
  @as("EncryptedWithHSM")
  encryptedWithHSM: option<boolean_>,
  @ocaml.doc("<p>The AWS Key Management Service (KMS) key ID of the encryption key that was used to
            encrypt data in the cluster from which the snapshot was taken.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>If <code>true</code>, the data in the snapshot is encrypted at rest.</p>")
  @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc("<p>The VPC identifier of the cluster if the snapshot is from a cluster in a VPC.
            Otherwise, this field is not in the output.</p>")
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>The name of the database that was created when the cluster was created.</p>")
  @as("DBName")
  dbname: option<string_>,
  @ocaml.doc("<p>The number of nodes in the cluster.</p>") @as("NumberOfNodes")
  numberOfNodes: option<integer_>,
  @ocaml.doc("<p>The node type of the nodes in the cluster.</p>") @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The snapshot type. Snapshots created using <a>CreateClusterSnapshot</a>
            and <a>CopyClusterSnapshot</a> are of type \"manual\". </p>")
  @as("SnapshotType")
  snapshotType: option<string_>,
  @ocaml.doc(
    "<p>The cluster version of the cluster used to create the snapshot. For example, 1.0.15503. </p>"
  )
  @as("EngineFullVersion")
  engineFullVersion: option<string_>,
  @ocaml.doc("<p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>")
  @as("ClusterVersion")
  clusterVersion: option<string_>,
  @ocaml.doc("<p>The master user name for the cluster.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>The time (UTC) when the cluster was originally created.</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>The Availability Zone in which the cluster was created.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The port that the cluster is listening on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The snapshot status. The value of the status depends on the API operation used: </p>
        <ul>
            <li>
                <p>
                    <a>CreateClusterSnapshot</a> and <a>CopyClusterSnapshot</a> returns status as \"creating\". </p>
            </li>
            <li>
                <p>
                    <a>DescribeClusterSnapshots</a> returns status as \"creating\",
                    \"available\", \"final snapshot\", or \"failed\".</p>
            </li>
            <li>
                <p>
                    <a>DeleteClusterSnapshot</a> returns status as \"deleted\".</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The time (in UTC format) when Amazon Redshift began the snapshot. A snapshot contains a
            copy of the cluster data as of this exact time.</p>")
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<tstamp>,
  @ocaml.doc("<p>The identifier of the cluster for which the snapshot was taken.</p>")
  @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
  @ocaml.doc("<p>The snapshot identifier that is provided in the request.</p>")
  @as("SnapshotIdentifier")
  snapshotIdentifier: option<string_>,
}
type scheduledActionFilterList = array<scheduledActionFilter>
@ocaml.doc("<p>Describes a scheduled action. You can use a scheduled action to trigger some Amazon Redshift API operations on a schedule. 
            For information about which API operations can be scheduled, see  <a>ScheduledActionType</a>. </p>")
type scheduledAction = {
  @ocaml.doc(
    "<p>The end time in UTC when the schedule is no longer active. After this time, the scheduled action does not trigger. </p>"
  )
  @as("EndTime")
  endTime: option<tstamp>,
  @ocaml.doc(
    "<p>The start time in UTC when the schedule is active. Before this time, the scheduled action does not trigger. </p>"
  )
  @as("StartTime")
  startTime: option<tstamp>,
  @ocaml.doc("<p>List of times when the scheduled action will run. </p>") @as("NextInvocations")
  nextInvocations: option<scheduledActionTimeList>,
  @ocaml.doc("<p>The state of the scheduled action. For example, <code>DISABLED</code>. </p>")
  @as("State")
  state: option<scheduledActionState>,
  @ocaml.doc("<p>The description of the scheduled action. </p>") @as("ScheduledActionDescription")
  scheduledActionDescription: option<string_>,
  @ocaml.doc("<p>The IAM role to assume to run the scheduled action. 
            This IAM role must have permission to run the Amazon Redshift API operation in the scheduled action.
            This IAM role must allow the Amazon Redshift scheduler (Principal scheduler.redshift.amazonaws.com) to assume permissions on your behalf.
               
For more information about the IAM role to use with the Amazon Redshift scheduler, see 
<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-identity-based.html\">Using Identity-Based Policies for Amazon Redshift</a> 
in the <i>Amazon Redshift Cluster Management Guide</i>.
</p>")
  @as("IamRole")
  iamRole: option<string_>,
  @ocaml.doc("<p>The schedule for a one-time (at format) or recurring (cron format) scheduled action. 
            Schedule invocations must be separated by at least one hour.</p>
        <p>Format of at expressions is \"<code>at(yyyy-mm-ddThh:mm:ss)</code>\". For example, \"<code>at(2016-03-04T17:27:00)</code>\".</p>
        <p>Format of cron expressions is \"<code>cron(Minutes Hours Day-of-month Month Day-of-week Year)</code>\". 
            For example, \"<code>cron(0 10 ? * MON *)</code>\". For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron Expressions</a> 
            in the <i>Amazon CloudWatch Events User Guide</i>.</p>")
  @as("Schedule")
  schedule: option<string_>,
  @ocaml.doc("<p>A JSON format string of the Amazon Redshift API operation with input parameters. </p>
        <p>\"<code>{\\\"ResizeCluster\\\":{\\\"NodeType\\\":\\\"ds2.8xlarge\\\",\\\"ClusterIdentifier\\\":\\\"my-test-cluster\\\",\\\"NumberOfNodes\\\":3}}</code>\". </p>")
  @as("TargetAction")
  targetAction: option<scheduledActionType>,
  @ocaml.doc("<p>The name of the scheduled action. </p>") @as("ScheduledActionName")
  scheduledActionName: option<string_>,
}
@ocaml.doc("<p>Describes a reserved node offering.</p>")
type reservedNodeOffering = {
  @ocaml.doc("<p></p>") @as("ReservedNodeOfferingType")
  reservedNodeOfferingType: option<reservedNodeOfferingType>,
  @ocaml.doc("<p>The charge to your account regardless of whether you are creating any clusters
            using the node offering. Recurring charges are only in effect for heavy-utilization
            reserved nodes.</p>")
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>The anticipated utilization of the reserved node, as defined in the reserved node
            offering.</p>")
  @as("OfferingType")
  offeringType: option<string_>,
  @ocaml.doc("<p>The currency code for the compute nodes offering.</p>") @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc("<p>The rate you are charged for each hour the cluster that is using the offering is
            running.</p>")
  @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc("<p>The upfront fixed charge you will pay to purchase the specific reserved node
            offering.</p>")
  @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration, in seconds, for which the offering will reserve the node.</p>")
  @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The node type offered by the reserved node offering.</p>") @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The offering identifier.</p>") @as("ReservedNodeOfferingId")
  reservedNodeOfferingId: option<string_>,
}
@ocaml.doc("<p>Describes a reserved node. You can call the <a>DescribeReservedNodeOfferings</a> API to obtain the available reserved node
            offerings. </p>")
type reservedNode = {
  @ocaml.doc("<p></p>") @as("ReservedNodeOfferingType")
  reservedNodeOfferingType: option<reservedNodeOfferingType>,
  @ocaml.doc("<p>The recurring charges for the reserved node.</p>") @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>The anticipated utilization of the reserved node, as defined in the reserved node
            offering.</p>")
  @as("OfferingType")
  offeringType: option<string_>,
  @ocaml.doc("<p>The state of the reserved compute node.</p>
        <p>Possible Values:</p>
        <ul>
            <li>
                <p>pending-payment-This reserved node has recently been purchased, and the
                    sale has been approved, but payment has not yet been confirmed.</p>
            </li>
            <li>
                <p>active-This reserved node is owned by the caller and is available for
                    use.</p>
            </li>
            <li>
                <p>payment-failed-Payment failed for the purchase attempt.</p>
            </li>
            <li>
                <p>retired-The reserved node is no longer available. </p>
            </li>
            <li>
                <p>exchanging-The owner is exchanging the reserved node for another reserved
                    node.</p>
            </li>
         </ul>")
  @as("State")
  state: option<string_>,
  @ocaml.doc("<p>The number of reserved compute nodes.</p>") @as("NodeCount")
  nodeCount: option<integer_>,
  @ocaml.doc("<p>The currency code for the reserved cluster.</p>") @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc("<p>The hourly rate Amazon Redshift charges you for this reserved node.</p>")
  @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc("<p>The fixed cost Amazon Redshift charges you for this reserved node.</p>")
  @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration of the node reservation in seconds.</p>") @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The time the reservation started. You purchase a reserved node offering for a
            duration. This is the start time of that duration.</p>")
  @as("StartTime")
  startTime: option<tstamp>,
  @ocaml.doc("<p>The node type of the reserved node.</p>") @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The identifier for the reserved node offering.</p>") @as("ReservedNodeOfferingId")
  reservedNodeOfferingId: option<string_>,
  @ocaml.doc("<p>The unique identifier for the reservation.</p>") @as("ReservedNodeId")
  reservedNodeId: option<string_>,
}
type nodeConfigurationOptionsFilterList = array<nodeConfigurationOptionsFilter>
@ocaml.doc("<p>Describes an IP range used in a security group.</p>")
type iprange = {
  @ocaml.doc("<p>The list of tags for the IP range.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The IP range in Classless Inter-Domain Routing (CIDR) notation.</p>") @as("CIDRIP")
  cidrip: option<string_>,
  @ocaml.doc("<p>The status of the IP range, for example, \"authorized\".</p>") @as("Status")
  status: option<string_>,
}
@ocaml.doc("<p>Returns information about an HSM configuration, which is an object that describes
            to Amazon Redshift clusters the information they require to connect to an HSM where they can
            store database encryption keys.</p>")
type hsmConfiguration = {
  @ocaml.doc("<p>The list of tags for the HSM configuration.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The name of the partition in the HSM where the Amazon Redshift clusters will store their
            database encryption keys.</p>")
  @as("HsmPartitionName")
  hsmPartitionName: option<string_>,
  @ocaml.doc("<p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>")
  @as("HsmIpAddress")
  hsmIpAddress: option<string_>,
  @ocaml.doc("<p>A text description of the HSM configuration.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the Amazon Redshift HSM configuration.</p>")
  @as("HsmConfigurationIdentifier")
  hsmConfigurationIdentifier: option<string_>,
}
@ocaml.doc("<p>Returns information about an HSM client certificate. The certificate is stored in a
            secure Hardware Storage Module (HSM), and used by the Amazon Redshift cluster to encrypt data
            files.</p>")
type hsmClientCertificate = {
  @ocaml.doc("<p>The list of tags for the HSM client certificate.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The public key that the Amazon Redshift cluster will use to connect to the HSM. You must
            register the public key in the HSM.</p>")
  @as("HsmClientCertificatePublicKey")
  hsmClientCertificatePublicKey: option<string_>,
  @ocaml.doc("<p>The identifier of the HSM client certificate.</p>")
  @as("HsmClientCertificateIdentifier")
  hsmClientCertificateIdentifier: option<string_>,
}
@ocaml.doc("<p>Describes event subscriptions.</p>")
type eventSubscription = {
  @ocaml.doc("<p>The list of tags for the event subscription.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>A boolean value indicating whether the subscription is enabled; <code>true</code>
            indicates that the subscription is enabled.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>The event severity specified in the Amazon Redshift event notification
            subscription.</p>
        <p>Values: ERROR, INFO</p>")
  @as("Severity")
  severity: option<string_>,
  @ocaml.doc("<p>The list of Amazon Redshift event categories specified in the event notification
            subscription.</p>
        <p>Values: Configuration, Management, Monitoring, Security</p>")
  @as("EventCategoriesList")
  eventCategoriesList: option<eventCategoriesList>,
  @ocaml.doc("<p>A list of the sources that publish events to the Amazon Redshift event notification
            subscription.</p>")
  @as("SourceIdsList")
  sourceIdsList: option<sourceIdsList>,
  @ocaml.doc("<p>The source type of the events returned by the Amazon Redshift event notification, such as
            cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, or scheduled-action. </p>")
  @as("SourceType")
  sourceType: option<string_>,
  @ocaml.doc("<p>The date and time the Amazon Redshift event notification subscription was
            created.</p>")
  @as("SubscriptionCreationTime")
  subscriptionCreationTime: option<tstamp>,
  @ocaml.doc("<p>The status of the Amazon Redshift event notification subscription.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Can be one of the following: active | no-permission |
                    topic-not-exist</p>
            </li>
            <li>
                <p>The status \"no-permission\" indicates that Amazon Redshift no longer has
                    permission to post to the Amazon SNS topic. The status \"topic-not-exist\"
                    indicates that the topic was deleted after the subscription was
                    created.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic used by the event
            notification subscription.</p>")
  @as("SnsTopicArn")
  snsTopicArn: option<string_>,
  @ocaml.doc("<p>The name of the Amazon Redshift event notification subscription.</p>")
  @as("CustSubscriptionId")
  custSubscriptionId: option<string_>,
  @ocaml.doc("<p>The AWS customer account associated with the Amazon Redshift event notification
            subscription.</p>")
  @as("CustomerAwsId")
  customerAwsId: option<string_>,
}
type eventList = array<event>
type eventInfoMapList = array<eventInfoMap>
type endpointAuthorizations = array<endpointAuthorization>
@ocaml.doc("<p>Describes an Amazon EC2 security group.</p>")
type ec2SecurityGroup = {
  @ocaml.doc("<p>The list of tags for the EC2 security group.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The AWS ID of the owner of the EC2 security group specified in the
                <code>EC2SecurityGroupName</code> field. </p>")
  @as("EC2SecurityGroupOwnerId")
  ec2SecurityGroupOwnerId: option<string_>,
  @ocaml.doc("<p>The name of the EC2 Security Group.</p>") @as("EC2SecurityGroupName")
  ec2SecurityGroupName: option<string_>,
  @ocaml.doc("<p>The status of the EC2 security group.</p>") @as("Status") status: option<string_>,
}
@ocaml.doc("<p>Describes the default cluster parameters for a parameter group family.</p>")
type defaultClusterParameters = {
  @ocaml.doc("<p>The list of cluster default parameters.</p>") @as("Parameters")
  parameters: option<parametersList>,
  @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
  @as("Marker")
  marker: option<string_>,
  @ocaml.doc("<p>The name of the cluster parameter group family to which the engine default
            parameters apply.</p>")
  @as("ParameterGroupFamily")
  parameterGroupFamily: option<string_>,
}
@ocaml.doc("<p>Describes the status of a parameter group.</p>")
type clusterParameterGroupStatus = {
  @ocaml.doc("<p>The list of parameter statuses.</p>
        <p>
For more information about parameters and parameter groups, go to 
<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> 
in the <i>Amazon Redshift Cluster Management Guide</i>.</p>")
  @as("ClusterParameterStatusList")
  clusterParameterStatusList: option<clusterParameterStatusList>,
  @ocaml.doc("<p>The status of parameter updates.</p>") @as("ParameterApplyStatus")
  parameterApplyStatus: option<string_>,
  @ocaml.doc("<p>The name of the cluster parameter group.</p>") @as("ParameterGroupName")
  parameterGroupName: option<string_>,
}
@ocaml.doc("<p>Describes a parameter group.</p>")
type clusterParameterGroup = {
  @ocaml.doc("<p>The list of tags for the cluster parameter group.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The description of the parameter group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the cluster parameter group family that this cluster parameter group is
            compatible with.</p>")
  @as("ParameterGroupFamily")
  parameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The name of the cluster parameter group.</p>") @as("ParameterGroupName")
  parameterGroupName: option<string_>,
}
@ocaml.doc("<p>Describes a <code>ClusterDbRevision</code>.</p>")
type clusterDbRevision = {
  @ocaml.doc("<p>A list of <code>RevisionTarget</code> objects, where each object describes the
            database revision that a cluster can be updated to.</p>")
  @as("RevisionTargets")
  revisionTargets: option<revisionTargetsList>,
  @ocaml.doc("<p>The date on which the database revision was released.</p>")
  @as("DatabaseRevisionReleaseDate")
  databaseRevisionReleaseDate: option<tstamp>,
  @ocaml.doc("<p>A string representing the current cluster version.</p>")
  @as("CurrentDatabaseRevision")
  currentDatabaseRevision: option<string_>,
  @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
}
@ocaml.doc("<p>Describes an availability zone.</p>")
type availabilityZone = {
  @ocaml.doc("<p></p>") @as("SupportedPlatforms")
  supportedPlatforms: option<supportedPlatformsList>,
  @ocaml.doc("<p>The name of the availability zone.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p>A name value pair that describes an aspect of an account. </p>")
type accountAttribute = {
  @ocaml.doc("<p>A list of attribute values.</p>") @as("AttributeValues")
  attributeValues: option<attributeValueList>,
  @ocaml.doc("<p>The name of the attribute.</p>") @as("AttributeName")
  attributeName: option<string_>,
}
type vpcEndpointsList = array<vpcEndpoint>
type usageLimits = array<usageLimit>
@ocaml.doc("<p>Describes a subnet.</p>")
type subnet = {
  @ocaml.doc("<p>The status of the subnet.</p>") @as("SubnetStatus") subnetStatus: option<string_>,
  @ocaml.doc("<p></p>") @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The identifier of the subnet.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<string_>,
}
type snapshotScheduleList = array<snapshotSchedule>
type snapshotList = array<snapshot>
type snapshotCopyGrantList = array<snapshotCopyGrant>
type scheduledActionList = array<scheduledAction>
type reservedNodeOfferingList = array<reservedNodeOffering>
type reservedNodeList = array<reservedNode>
type parameterGroupList = array<clusterParameterGroup>
type iprangeList = array<iprange>
type hsmConfigurationList = array<hsmConfiguration>
type hsmClientCertificateList = array<hsmClientCertificate>
type eventSubscriptionsList = array<eventSubscription>
@ocaml.doc("<p>Describes event categories.</p>")
type eventCategoriesMap = {
  @ocaml.doc("<p>The events in the event category.</p>") @as("Events")
  events: option<eventInfoMapList>,
  @ocaml.doc("<p>The source type, such as cluster or cluster-snapshot, that the returned categories
            belong to.</p>")
  @as("SourceType")
  sourceType: option<string_>,
}
@ocaml.doc("<p>Describes a Redshift-managed VPC endpoint.</p>")
type endpointAccess = {
  @as("VpcEndpoint") vpcEndpoint: option<vpcEndpoint>,
  @ocaml.doc("<p>The security groups associated with the endpoint.</p>") @as("VpcSecurityGroups")
  vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc("<p>The DNS address of the endpoint.</p>") @as("Address") address: option<string_>,
  @ocaml.doc("<p>The port number on which the cluster accepts incoming connections.</p>")
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The time (UTC) that the endpoint was created.</p>") @as("EndpointCreateTime")
  endpointCreateTime: option<tstamp>,
  @ocaml.doc("<p>The name of the endpoint.</p>") @as("EndpointName") endpointName: option<string_>,
  @ocaml.doc("<p>The status of the endpoint.</p>") @as("EndpointStatus")
  endpointStatus: option<string_>,
  @ocaml.doc("<p>The subnet group name where Amazon Redshift chooses to deploy the endpoint.</p>")
  @as("SubnetGroupName")
  subnetGroupName: option<string_>,
  @ocaml.doc("<p>The AWS account ID of the owner of the cluster.</p>") @as("ResourceOwner")
  resourceOwner: option<string_>,
  @ocaml.doc("<p>The cluster identifier of the cluster associated with the endpoint.</p>")
  @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
}
type eligibleTracksToUpdateList = array<updateTarget>
type ec2SecurityGroupList = array<ec2SecurityGroup>
type clusterParameterGroupStatusList = array<clusterParameterGroupStatus>
type clusterDbRevisionsList = array<clusterDbRevision>
type availabilityZoneList = array<availabilityZone>
type attributeList = array<accountAttribute>
type subnetList = array<subnet>
@ocaml.doc("<p>Describes an orderable cluster option.</p>")
type orderableClusterOption = {
  @ocaml.doc("<p>A list of availability zones for the orderable cluster.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZoneList>,
  @ocaml.doc("<p>The node type for the orderable cluster.</p>") @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The cluster type, for example <code>multi-node</code>. </p>") @as("ClusterType")
  clusterType: option<string_>,
  @ocaml.doc("<p>The version of the orderable cluster.</p>") @as("ClusterVersion")
  clusterVersion: option<string_>,
}
@ocaml.doc("<p>Defines a maintenance track that determines which Amazon Redshift version to apply
            during a maintenance window. If the value for <code>MaintenanceTrack</code> is
                <code>current</code>, the cluster is updated to the most recently certified
            maintenance release. If the value is <code>trailing</code>, the cluster is updated to
            the previously certified maintenance release. </p>")
type maintenanceTrack = {
  @ocaml.doc("<p>An array of <a>UpdateTarget</a> objects to update with the maintenance
            track. </p>")
  @as("UpdateTargets")
  updateTargets: option<eligibleTracksToUpdateList>,
  @ocaml.doc("<p>The version number for the cluster release.</p>") @as("DatabaseVersion")
  databaseVersion: option<string_>,
  @ocaml.doc("<p>The name of the maintenance track. Possible values are <code>current</code> and
                <code>trailing</code>.</p>")
  @as("MaintenanceTrackName")
  maintenanceTrackName: option<string_>,
}
type eventCategoriesMapList = array<eventCategoriesMap>
type endpointAccesses = array<endpointAccess>
@ocaml.doc("<p>Describes a connection endpoint.</p>")
type endpoint = {
  @ocaml.doc("<p>Describes a connection endpoint.</p>") @as("VpcEndpoints")
  vpcEndpoints: option<vpcEndpointsList>,
  @ocaml.doc("<p>The port that the database engine is listening on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The DNS address of the Cluster.</p>") @as("Address") address: option<string_>,
}
@ocaml.doc("<p>Describes a security group.</p>")
type clusterSecurityGroup = {
  @ocaml.doc("<p>The list of tags for the cluster security group.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>A list of IP ranges (CIDR blocks) that are permitted to access clusters associated
            with this cluster security group.</p>")
  @as("IPRanges")
  ipranges: option<iprangeList>,
  @ocaml.doc("<p>A list of EC2 security groups that are permitted to access clusters associated with
            this cluster security group.</p>")
  @as("EC2SecurityGroups")
  ec2SecurityGroups: option<ec2SecurityGroupList>,
  @ocaml.doc("<p>A description of the security group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the cluster security group to which the operation was
            applied.</p>")
  @as("ClusterSecurityGroupName")
  clusterSecurityGroupName: option<string_>,
}
type trackList = array<maintenanceTrack>
type orderableClusterOptionsList = array<orderableClusterOption>
@ocaml.doc("<p>Describes a subnet group.</p>")
type clusterSubnetGroup = {
  @ocaml.doc("<p>The list of tags for the cluster subnet group.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>A list of the VPC <a>Subnet</a> elements. </p>") @as("Subnets")
  subnets: option<subnetList>,
  @ocaml.doc("<p>The status of the cluster subnet group. Possible values are <code>Complete</code>,
                <code>Incomplete</code> and <code>Invalid</code>. </p>")
  @as("SubnetGroupStatus")
  subnetGroupStatus: option<string_>,
  @ocaml.doc("<p>The VPC ID of the cluster subnet group.</p>") @as("VpcId") vpcId: option<string_>,
  @ocaml.doc("<p>The description of the cluster subnet group.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the cluster subnet group.</p>") @as("ClusterSubnetGroupName")
  clusterSubnetGroupName: option<string_>,
}
type clusterSecurityGroups = array<clusterSecurityGroup>
@ocaml.doc("<p>Describes a cluster.</p>")
type cluster = {
  @ocaml.doc("<p>The AQUA (Advanced Query Accelerator) configuration of the cluster.</p>")
  @as("AquaConfiguration")
  aquaConfiguration: option<aquaConfiguration>,
  @ocaml.doc("<p>The total storage capacity of the cluster in megabytes. </p>")
  @as("TotalStorageCapacityInMegaBytes")
  totalStorageCapacityInMegaBytes: option<longOptional>,
  @ocaml.doc("<p>The namespace Amazon Resource Name (ARN) of the cluster.</p>")
  @as("ClusterNamespaceArn")
  clusterNamespaceArn: option<string_>,
  @ocaml.doc("<p>Describes the status of the Availability Zone relocation operation.</p>")
  @as("AvailabilityZoneRelocationStatus")
  availabilityZoneRelocationStatus: option<string_>,
  @ocaml.doc("<p>Returns the following:</p>
        <ul>
            <li>
                <p>AllowCancelResize: a boolean value indicating if the resize operation can be
                    cancelled.</p>
            </li>
            <li>
                <p>ResizeType: Returns ClassicResize</p>
            </li>
         </ul>")
  @as("ResizeInfo")
  resizeInfo: option<resizeInfo>,
  @ocaml.doc("<p>The date and time in UTC when system maintenance can begin.</p>")
  @as("NextMaintenanceWindowStartTime")
  nextMaintenanceWindowStartTime: option<tstamp>,
  @ocaml.doc("<p> The status of next expected snapshot for clusters having a valid snapshot schedule and backups enabled.  Possible values are the following:</p>
        <ul>
            <li>
               <p>OnTrack - The next snapshot is expected to be taken on time. </p>
            </li>
            <li>
               <p>Pending - The next snapshot is pending to be taken. </p>
            </li>
         </ul>")
  @as("ExpectedNextSnapshotScheduleTimeStatus")
  expectedNextSnapshotScheduleTimeStatus: option<string_>,
  @ocaml.doc(
    "<p>The date and time when the next snapshot is expected to be taken for clusters with a valid snapshot schedule and backups enabled. </p>"
  )
  @as("ExpectedNextSnapshotScheduleTime")
  expectedNextSnapshotScheduleTime: option<tstamp>,
  @ocaml.doc("<p>The current state of the cluster snapshot schedule.</p>")
  @as("SnapshotScheduleState")
  snapshotScheduleState: option<scheduleState>,
  @ocaml.doc("<p>A unique identifier for the cluster snapshot schedule.</p>")
  @as("SnapshotScheduleIdentifier")
  snapshotScheduleIdentifier: option<string_>,
  @ocaml.doc("<p>Describes a group of <code>DeferredMaintenanceWindow</code> objects.</p>")
  @as("DeferredMaintenanceWindows")
  deferredMaintenanceWindows: option<deferredMaintenanceWindowsList>,
  @ocaml.doc("<p>The number of nodes that you can resize the cluster to with the elastic resize method.
        </p>")
  @as("ElasticResizeNumberOfNodeOptions")
  elasticResizeNumberOfNodeOptions: option<string_>,
  @ocaml.doc("<p>The name of the maintenance track for the cluster.</p>")
  @as("MaintenanceTrackName")
  maintenanceTrackName: option<string_>,
  @ocaml.doc("<p>Cluster operations that are waiting to be started.</p>") @as("PendingActions")
  pendingActions: option<pendingActionsList>,
  @ocaml.doc("<p>A list of AWS Identity and Access Management (IAM) roles that can be used by the
            cluster to access other AWS services.</p>")
  @as("IamRoles")
  iamRoles: option<clusterIamRoleList>,
  @ocaml.doc("<p>An option that specifies whether to create the cluster with enhanced VPC routing
            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in
            the Amazon Redshift Cluster Management Guide.</p>
        <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
        <p>Default: false</p>")
  @as("EnhancedVpcRouting")
  enhancedVpcRouting: option<boolean_>,
  @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) key ID of the encryption key used to
            encrypt data in the cluster.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>The list of tags for the cluster.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The specific revision number of the database in the cluster.</p>")
  @as("ClusterRevisionNumber")
  clusterRevisionNumber: option<string_>,
  @ocaml.doc("<p>The status of the elastic IP (EIP) address.</p>") @as("ElasticIpStatus")
  elasticIpStatus: option<elasticIpStatus>,
  @ocaml.doc("<p>The nodes in the cluster.</p>") @as("ClusterNodes")
  clusterNodes: option<clusterNodesList>,
  @ocaml.doc("<p>The public key for the cluster.</p>") @as("ClusterPublicKey")
  clusterPublicKey: option<string_>,
  @ocaml.doc("<p>A value that returns the destination region and retention period that are
            configured for cross-region snapshot copy.</p>")
  @as("ClusterSnapshotCopyStatus")
  clusterSnapshotCopyStatus: option<clusterSnapshotCopyStatus>,
  @ocaml.doc("<p>A value that reports whether the Amazon Redshift cluster has finished applying any
            hardware security module (HSM) settings changes specified in a modify cluster
            command.</p>
        <p>Values: active, applying</p>")
  @as("HsmStatus")
  hsmStatus: option<hsmStatus>,
  @ocaml.doc("<p></p>") @as("DataTransferProgress")
  dataTransferProgress: option<dataTransferProgress>,
  @ocaml.doc("<p>A value that describes the status of a cluster restore action. This parameter
            returns null if the cluster was not created by restoring a snapshot.</p>")
  @as("RestoreStatus")
  restoreStatus: option<restoreStatus>,
  @ocaml.doc("<p>A boolean value that, if <code>true</code>, indicates that data in the cluster is
            encrypted at rest.</p>")
  @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc("<p>A boolean value that, if <code>true</code>, indicates that the cluster can be
            accessed from a public network.</p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>The number of compute nodes in the cluster.</p>") @as("NumberOfNodes")
  numberOfNodes: option<integer_>,
  @ocaml.doc("<p>A boolean value that, if <code>true</code>, indicates that major version upgrades
            will be applied automatically to the cluster during the maintenance window. </p>")
  @as("AllowVersionUpgrade")
  allowVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>The version ID of the Amazon Redshift engine that is running on the cluster.</p>")
  @as("ClusterVersion")
  clusterVersion: option<string_>,
  @ocaml.doc("<p>A value that, if present, indicates that changes to the cluster are pending.
            Specific pending changes are identified by subelements.</p>")
  @as("PendingModifiedValues")
  pendingModifiedValues: option<pendingModifiedValues>,
  @ocaml.doc("<p>The weekly time range, in Universal Coordinated Time (UTC), during which system
            maintenance can occur.</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>The name of the Availability Zone in which the cluster is located.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The identifier of the VPC the cluster is in, if the cluster is in a VPC.</p>")
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>The name of the subnet group that is associated with the cluster. This parameter is
            valid only when the cluster is in a VPC.</p>")
  @as("ClusterSubnetGroupName")
  clusterSubnetGroupName: option<string_>,
  @ocaml.doc("<p>The list of cluster parameter groups that are associated with this cluster. Each
            parameter group in the list is returned with its status.</p>")
  @as("ClusterParameterGroups")
  clusterParameterGroups: option<clusterParameterGroupStatusList>,
  @ocaml.doc("<p>A list of Amazon Virtual Private Cloud (Amazon VPC) security groups that are
            associated with the cluster. This parameter is returned only if the cluster is in a
            VPC.</p>")
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc("<p>A list of cluster security group that are associated with the cluster. Each
            security group is represented by an element that contains
                <code>ClusterSecurityGroup.Name</code> and <code>ClusterSecurityGroup.Status</code>
            subelements. </p>
        <p>Cluster security groups are used when the cluster is not created in an Amazon
            Virtual Private Cloud (VPC). Clusters that are created in a VPC use VPC security groups,
            which are listed by the <b>VpcSecurityGroups</b> parameter.
        </p>")
  @as("ClusterSecurityGroups")
  clusterSecurityGroups: option<clusterSecurityGroupMembershipList>,
  @ocaml.doc("<p>The default number of days to retain a manual snapshot. If the value is -1, the
            snapshot is retained indefinitely. This setting doesn't change the retention period
            of existing snapshots.</p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>")
  @as("ManualSnapshotRetentionPeriod")
  manualSnapshotRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>The number of days that automatic cluster snapshots are retained.</p>")
  @as("AutomatedSnapshotRetentionPeriod")
  automatedSnapshotRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>The date and time that the cluster was created.</p>") @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>The connection endpoint.</p>") @as("Endpoint") endpoint: option<endpoint>,
  @ocaml.doc("<p>The name of the initial database that was created when the cluster was created.
            This same name is returned for the life of the cluster. If an initial database was not
            specified, a database named <code>dev</code>dev was created by default. </p>")
  @as("DBName")
  dbname: option<string_>,
  @ocaml.doc("<p>The master user name for the cluster. This name is used to connect to the database
            that is specified in the <b>DBName</b> parameter. </p>")
  @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>The status of a modify operation, if any, initiated for the cluster.</p>")
  @as("ModifyStatus")
  modifyStatus: option<string_>,
  @ocaml.doc("<p>The availability status of the cluster for queries. Possible values are the following:</p>
        <ul>
            <li>
               <p>Available - The cluster is available for queries. </p>
            </li>
            <li>
               <p>Unavailable - The cluster is not available for queries.</p>
            </li>
            <li>
               <p>Maintenance - The cluster is intermittently available for queries due to maintenance activities.</p>
            </li>
            <li>
               <p>Modifying - The cluster is intermittently available for queries due to changes that modify the cluster.</p>
            </li>
            <li>
               <p>Failed - The cluster failed and is not available for queries.</p>
            </li>
         </ul>")
  @as("ClusterAvailabilityStatus")
  clusterAvailabilityStatus: option<string_>,
  @ocaml.doc("<p> The current state of the cluster. Possible values are the following:</p>
        <ul>
            <li>
                <p>
                    <code>available</code>
                </p>
            </li>
            <li>
                <p>
                    <code>available, prep-for-resize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>available, resize-cleanup</code>
                </p>
            </li>
            <li>
                <p>
                    <code>cancelling-resize</code>
                </p>
            </li>
            <li>
                <p>
                    <code>creating</code>
                </p>
            </li>
            <li>
                <p>
                    <code>deleting</code>
                </p>
            </li>
            <li>
                <p>
                    <code>final-snapshot</code>
                </p>
            </li>
            <li>
                <p>
                    <code>hardware-failure</code>
                </p>
            </li>
            <li>
                <p>
                    <code>incompatible-hsm</code>
                </p>
            </li>
            <li>
                <p>
                    <code>incompatible-network</code>
                </p>
            </li>
            <li>
                <p>
                    <code>incompatible-parameters</code>
                </p>
            </li>
            <li>
                <p>
                    <code>incompatible-restore</code>
                </p>
            </li>
            <li>
                <p>
                    <code>modifying</code>
                </p>
            </li>
            <li>
                <p>
                    <code>paused</code>
                </p>
            </li>
            <li>
                <p>
                    <code>rebooting</code>
                </p>
            </li>
            <li>
                <p>
                    <code>renaming</code>
                </p>
            </li>
            <li>
                <p>
                    <code>resizing</code>
                </p>
            </li>
            <li>
                <p>
                    <code>rotating-keys</code>
                </p>
            </li>
            <li>
                <p>
                    <code>storage-full</code>
                </p>
            </li>
            <li>
                <p>
                    <code>updating-hsm</code>
                </p>
            </li>
         </ul>")
  @as("ClusterStatus")
  clusterStatus: option<string_>,
  @ocaml.doc("<p>The node type for the nodes in the cluster.</p>") @as("NodeType")
  nodeType: option<string_>,
  @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterIdentifier")
  clusterIdentifier: option<string_>,
}
type clusterSubnetGroups = array<clusterSubnetGroup>
type clusterList = array<cluster>
@ocaml.doc("<fullname>Amazon Redshift</fullname>
        <p>
            <b>Overview</b>
        </p>
        <p>This is an interface reference for Amazon Redshift. It contains documentation for one of
            the programming or command line interfaces you can use to manage Amazon Redshift clusters.
            Note that Amazon Redshift is asynchronous, which means that some interfaces may require
            techniques, such as polling or asynchronous callback handlers, to determine when a
            command has been applied. In this reference, the parameter descriptions indicate whether
            a change is applied immediately, on the next instance reboot, or during the next
            maintenance window. For a summary of the Amazon Redshift cluster management interfaces, go to
                <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/using-aws-sdk.html\">Using the
                Amazon Redshift Management Interfaces</a>.</p>
        <p>Amazon Redshift manages all the work of setting up, operating, and scaling a data
            warehouse: provisioning capacity, monitoring and backing up the cluster, and applying
            patches and upgrades to the Amazon Redshift engine. You can focus on using your data to
            acquire new insights for your business and customers.</p>
        <p>If you are a first-time user of Amazon Redshift, we recommend that you begin by reading
            the <a href=\"https://docs.aws.amazon.com/redshift/latest/gsg/getting-started.html\">Amazon Redshift Getting Started Guide</a>.</p>

        <p>If you are a database developer, the <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/welcome.html\">Amazon Redshift Database Developer Guide</a> explains how to design,
            build, query, and maintain the databases that make up your data warehouse. </p>")
module UpdatePartnerStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The status message provided by the partner.</p>") @as("StatusMessage")
    statusMessage: option<partnerIntegrationStatusMessage>,
    @ocaml.doc("<p>The value of the updated status.</p>") @as("Status")
    status: partnerIntegrationStatus,
    @ocaml.doc("<p>The name of the partner whose integration status is being updated.</p>")
    @as("PartnerName")
    partnerName: partnerIntegrationPartnerName,
    @ocaml.doc("<p>The name of the database whose partner integration status is being updated.</p>")
    @as("DatabaseName")
    databaseName: partnerIntegrationDatabaseName,
    @ocaml.doc(
      "<p>The cluster identifier of the cluster whose partner integration status is being updated.</p>"
    )
    @as("ClusterIdentifier")
    clusterIdentifier: partnerIntegrationClusterIdentifier,
    @ocaml.doc("<p>The AWS account ID that owns the cluster.</p>") @as("AccountId")
    accountId: partnerIntegrationAccountId,
  }
  type response = {
    @ocaml.doc("<p>The name of the partner that is authorized to send data.</p>") @as("PartnerName")
    partnerName: option<partnerIntegrationPartnerName>,
    @ocaml.doc("<p>The name of the database that receives data from the partner.</p>")
    @as("DatabaseName")
    databaseName: option<partnerIntegrationDatabaseName>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "UpdatePartnerStatusCommand"
  let make = (
    ~status,
    ~partnerName,
    ~databaseName,
    ~clusterIdentifier,
    ~accountId,
    ~statusMessage=?,
    (),
  ) =>
    new({
      statusMessage: statusMessage,
      status: status,
      partnerName: partnerName,
      databaseName: databaseName,
      clusterIdentifier: clusterIdentifier,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterSnapshotSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>A boolean to indicate whether to remove the assoiciation between the cluster and the
            schedule.</p>")
    @as("DisassociateSchedule")
    disassociateSchedule: option<booleanOptional>,
    @ocaml.doc("<p>A unique alphanumeric identifier for the schedule that you want to associate with the
            cluster.</p>")
    @as("ScheduleIdentifier")
    scheduleIdentifier: option<string_>,
    @ocaml.doc("<p>A unique identifier for the cluster whose snapshot schedule you want to modify.
        </p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterSnapshotScheduleCommand"
  let make = (~clusterIdentifier, ~disassociateSchedule=?, ~scheduleIdentifier=?, ()) =>
    new({
      disassociateSchedule: disassociateSchedule,
      scheduleIdentifier: scheduleIdentifier,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableLogging = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The prefix applied to the log file names.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Cannot exceed 512 characters</p>
            </li>
            <li>
                <p>Cannot contain spaces( ), double quotes (\"), single quotes ('), a backslash
                    (\\), or control characters. The hexadecimal codes for invalid characters are: </p>
                <ul>
                  <li>
                        <p>x00 to x20</p>
                    </li>
                  <li>
                        <p>x22</p>
                    </li>
                  <li>
                        <p>x27</p>
                    </li>
                  <li>
                        <p>x5c</p>
                    </li>
                  <li>
                        <p>x7f or larger</p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc("<p>The name of an existing S3 bucket where the log files are to be stored.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be in the same region as the cluster</p>
            </li>
            <li>
                <p>The cluster must have read bucket and put object permissions</p>
            </li>
         </ul>")
    @as("BucketName")
    bucketName: string_,
    @ocaml.doc("<p>The identifier of the cluster on which logging is to be started.</p>
        <p>Example: <code>examplecluster</code>
        </p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  @ocaml.doc("<p>Describes the status of logging for a cluster.</p>")
  type response = {
    @ocaml.doc("<p>The message indicating that logs failed to be delivered.</p>")
    @as("LastFailureMessage")
    lastFailureMessage: option<string_>,
    @ocaml.doc("<p>The last time when logs failed to be delivered.</p>") @as("LastFailureTime")
    lastFailureTime: option<tstamp>,
    @ocaml.doc("<p>The last time that logs were delivered.</p>") @as("LastSuccessfulDeliveryTime")
    lastSuccessfulDeliveryTime: option<tstamp>,
    @ocaml.doc("<p>The prefix applied to the log file names.</p>") @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc("<p>The name of the S3 bucket where the log files are stored.</p>") @as("BucketName")
    bucketName: option<string_>,
    @ocaml.doc("<p>
            <code>true</code> if logging is on, <code>false</code> if logging is off.</p>")
    @as("LoggingEnabled")
    loggingEnabled: option<boolean_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "EnableLoggingCommand"
  let make = (~bucketName, ~clusterIdentifier, ~s3KeyPrefix=?, ()) =>
    new({s3KeyPrefix: s3KeyPrefix, bucketName: bucketName, clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableLogging = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the cluster on which logging is to be stopped.</p>
        <p>Example: <code>examplecluster</code>
        </p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  @ocaml.doc("<p>Describes the status of logging for a cluster.</p>")
  type response = {
    @ocaml.doc("<p>The message indicating that logs failed to be delivered.</p>")
    @as("LastFailureMessage")
    lastFailureMessage: option<string_>,
    @ocaml.doc("<p>The last time when logs failed to be delivered.</p>") @as("LastFailureTime")
    lastFailureTime: option<tstamp>,
    @ocaml.doc("<p>The last time that logs were delivered.</p>") @as("LastSuccessfulDeliveryTime")
    lastSuccessfulDeliveryTime: option<tstamp>,
    @ocaml.doc("<p>The prefix applied to the log file names.</p>") @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc("<p>The name of the S3 bucket where the log files are stored.</p>") @as("BucketName")
    bucketName: option<string_>,
    @ocaml.doc("<p>
            <code>true</code> if logging is on, <code>false</code> if logging is off.</p>")
    @as("LoggingEnabled")
    loggingEnabled: option<boolean_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DisableLoggingCommand"
  let make = (~clusterIdentifier, ()) => new({clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStorage = {
  type t

  type response = {
    @ocaml.doc("<p>The total amount of storage currently provisioned.</p>")
    @as("TotalProvisionedStorageInMegaBytes")
    totalProvisionedStorageInMegaBytes: option<double>,
    @ocaml.doc("<p>The total amount of storage currently used for snapshots.</p>")
    @as("TotalBackupSizeInMegaBytes")
    totalBackupSizeInMegaBytes: option<double>,
  }
  @module("@aws-sdk/client-redshift") @new external new: unit => t = "DescribeStorageCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLoggingStatus = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the cluster from which to get the logging status.</p>
        <p>Example: <code>examplecluster</code>
        </p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  @ocaml.doc("<p>Describes the status of logging for a cluster.</p>")
  type response = {
    @ocaml.doc("<p>The message indicating that logs failed to be delivered.</p>")
    @as("LastFailureMessage")
    lastFailureMessage: option<string_>,
    @ocaml.doc("<p>The last time when logs failed to be delivered.</p>") @as("LastFailureTime")
    lastFailureTime: option<tstamp>,
    @ocaml.doc("<p>The last time that logs were delivered.</p>") @as("LastSuccessfulDeliveryTime")
    lastSuccessfulDeliveryTime: option<tstamp>,
    @ocaml.doc("<p>The prefix applied to the log file names.</p>") @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc("<p>The name of the S3 bucket where the log files are stored.</p>") @as("BucketName")
    bucketName: option<string_>,
    @ocaml.doc("<p>
            <code>true</code> if logging is on, <code>false</code> if logging is off.</p>")
    @as("LoggingEnabled")
    loggingEnabled: option<boolean_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeLoggingStatusCommand"
  let make = (~clusterIdentifier, ()) => new({clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUsageLimit = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the usage limit to delete.</p>") @as("UsageLimitId")
    usageLimitId: string_,
  }

  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeleteUsageLimitCommand"
  let make = (~usageLimitId, ()) => new({usageLimitId: usageLimitId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSnapshotSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier of the snapshot schedule to delete.</p>")
    @as("ScheduleIdentifier")
    scheduleIdentifier: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteSnapshotScheduleCommand"
  let make = (~scheduleIdentifier, ()) => new({scheduleIdentifier: scheduleIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSnapshotCopyGrant = {
  type t
  @ocaml.doc("<p>The result of the <code>DeleteSnapshotCopyGrant</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The name of the snapshot copy grant to delete.</p>") @as("SnapshotCopyGrantName")
    snapshotCopyGrantName: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteSnapshotCopyGrantCommand"
  let make = (~snapshotCopyGrantName, ()) => new({snapshotCopyGrantName: snapshotCopyGrantName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScheduledAction = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the scheduled action to delete. </p>") @as("ScheduledActionName")
    scheduledActionName: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteScheduledActionCommand"
  let make = (~scheduledActionName, ()) => new({scheduledActionName: scheduledActionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePartner = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the partner that is authorized to send data.</p>") @as("PartnerName")
    partnerName: partnerIntegrationPartnerName,
    @ocaml.doc("<p>The name of the database that receives data from the partner.</p>")
    @as("DatabaseName")
    databaseName: partnerIntegrationDatabaseName,
    @ocaml.doc("<p>The cluster identifier of the cluster that receives data from the partner.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: partnerIntegrationClusterIdentifier,
    @ocaml.doc("<p>The AWS account ID that owns the cluster.</p>") @as("AccountId")
    accountId: partnerIntegrationAccountId,
  }
  type response = {
    @ocaml.doc("<p>The name of the partner that is authorized to send data.</p>") @as("PartnerName")
    partnerName: option<partnerIntegrationPartnerName>,
    @ocaml.doc("<p>The name of the database that receives data from the partner.</p>")
    @as("DatabaseName")
    databaseName: option<partnerIntegrationDatabaseName>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeletePartnerCommand"
  let make = (~partnerName, ~databaseName, ~clusterIdentifier, ~accountId, ()) =>
    new({
      partnerName: partnerName,
      databaseName: databaseName,
      clusterIdentifier: clusterIdentifier,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHsmConfiguration = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the Amazon Redshift HSM configuration to be deleted.</p>")
    @as("HsmConfigurationIdentifier")
    hsmConfigurationIdentifier: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteHsmConfigurationCommand"
  let make = (~hsmConfigurationIdentifier, ()) =>
    new({hsmConfigurationIdentifier: hsmConfigurationIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteHsmClientCertificate = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the HSM client certificate to be deleted.</p>")
    @as("HsmClientCertificateIdentifier")
    hsmClientCertificateIdentifier: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteHsmClientCertificateCommand"
  let make = (~hsmClientCertificateIdentifier, ()) =>
    new({hsmClientCertificateIdentifier: hsmClientCertificateIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>The name of the Amazon Redshift event notification subscription to be deleted.</p>"
    )
    @as("SubscriptionName")
    subscriptionName: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteEventSubscriptionCommand"
  let make = (~subscriptionName, ()) => new({subscriptionName: subscriptionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClusterSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the cluster subnet group name to be deleted.</p>")
    @as("ClusterSubnetGroupName")
    clusterSubnetGroupName: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterSubnetGroupCommand"
  let make = (~clusterSubnetGroupName, ()) => new({clusterSubnetGroupName: clusterSubnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClusterSecurityGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the cluster security group to be deleted.</p>")
    @as("ClusterSecurityGroupName")
    clusterSecurityGroupName: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterSecurityGroupCommand"
  let make = (~clusterSecurityGroupName, ()) =>
    new({clusterSecurityGroupName: clusterSecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteClusterParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the parameter group to be deleted.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be the name of an existing cluster parameter group.</p>
            </li>
            <li>
                <p>Cannot delete a default cluster parameter group.</p>
            </li>
         </ul>")
    @as("ParameterGroupName")
    parameterGroupName: string_,
  }

  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterParameterGroupCommand"
  let make = (~parameterGroupName, ()) => new({parameterGroupName: parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddPartner = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the partner that is authorized to send data.</p>") @as("PartnerName")
    partnerName: partnerIntegrationPartnerName,
    @ocaml.doc("<p>The name of the database that receives data from the partner.</p>")
    @as("DatabaseName")
    databaseName: partnerIntegrationDatabaseName,
    @ocaml.doc("<p>The cluster identifier of the cluster that receives data from the partner.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: partnerIntegrationClusterIdentifier,
    @ocaml.doc("<p>The AWS account ID that owns the cluster.</p>") @as("AccountId")
    accountId: partnerIntegrationAccountId,
  }
  type response = {
    @ocaml.doc("<p>The name of the partner that is authorized to send data.</p>") @as("PartnerName")
    partnerName: option<partnerIntegrationPartnerName>,
    @ocaml.doc("<p>The name of the database that receives data from the partner.</p>")
    @as("DatabaseName")
    databaseName: option<partnerIntegrationDatabaseName>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "AddPartnerCommand"
  let make = (~partnerName, ~databaseName, ~clusterIdentifier, ~accountId, ()) =>
    new({
      partnerName: partnerName,
      databaseName: databaseName,
      clusterIdentifier: clusterIdentifier,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeEndpointAccess = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to force the revoke action. 
           If true, the Redshift-managed VPC endpoints associated with the endpoint authorization are also deleted.</p>")
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc(
      "<p>The virtual private cloud (VPC) identifiers for which access is to be revoked.</p>"
    )
    @as("VpcIds")
    vpcIds: option<vpcIdentifierList>,
    @ocaml.doc("<p>The AWS account ID whose access is to be revoked.</p>") @as("Account")
    account: option<string_>,
    @ocaml.doc("<p>The cluster to revoke access from.</p>") @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  type response = endpointAuthorization
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RevokeEndpointAccessCommand"
  let make = (~force=?, ~vpcIds=?, ~account=?, ~clusterIdentifier=?, ()) =>
    new({force: force, vpcIds: vpcIds, account: account, clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreTableFromClusterSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Indicates whether name identifiers for database, schema, and table are case sensitive. 
            If <code>true</code>, the names are case sensitive. 
            If <code>false</code> (default), the names are not case sensitive.</p>")
    @as("EnableCaseSensitiveIdentifier")
    enableCaseSensitiveIdentifier: option<booleanOptional>,
    @ocaml.doc("<p>The name of the table to create as a result of the current request.</p>")
    @as("NewTableName")
    newTableName: string_,
    @ocaml.doc("<p>The name of the schema to restore the table to.</p>") @as("TargetSchemaName")
    targetSchemaName: option<string_>,
    @ocaml.doc("<p>The name of the database to restore the table to.</p>") @as("TargetDatabaseName")
    targetDatabaseName: option<string_>,
    @ocaml.doc("<p>The name of the source table to restore from.</p>") @as("SourceTableName")
    sourceTableName: string_,
    @ocaml.doc("<p>The name of the source schema that contains the table to restore from. If you do
            not specify a <code>SourceSchemaName</code> value, the default is
            <code>public</code>.</p>")
    @as("SourceSchemaName")
    sourceSchemaName: option<string_>,
    @ocaml.doc("<p>The name of the source database that contains the table to restore from.</p>")
    @as("SourceDatabaseName")
    sourceDatabaseName: string_,
    @ocaml.doc("<p>The identifier of the snapshot to restore the table from. This snapshot must have
            been created from the Amazon Redshift cluster specified by the
                <code>ClusterIdentifier</code> parameter.</p>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
    @ocaml.doc("<p>The identifier of the Amazon Redshift cluster to restore the table to.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("TableRestoreStatus") tableRestoreStatus: option<tableRestoreStatus>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RestoreTableFromClusterSnapshotCommand"
  let make = (
    ~newTableName,
    ~sourceTableName,
    ~sourceDatabaseName,
    ~snapshotIdentifier,
    ~clusterIdentifier,
    ~enableCaseSensitiveIdentifier=?,
    ~targetSchemaName=?,
    ~targetDatabaseName=?,
    ~sourceSchemaName=?,
    (),
  ) =>
    new({
      enableCaseSensitiveIdentifier: enableCaseSensitiveIdentifier,
      newTableName: newTableName,
      targetSchemaName: targetSchemaName,
      targetDatabaseName: targetDatabaseName,
      sourceTableName: sourceTableName,
      sourceSchemaName: sourceSchemaName,
      sourceDatabaseName: sourceDatabaseName,
      snapshotIdentifier: snapshotIdentifier,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyAquaConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The new value of AQUA configuration status. Possible values include the following.</p>
        <ul>
            <li>
               <p>enabled - Use AQUA if it is available for the current AWS Region and Amazon Redshift node type.</p>
            </li>
            <li>
               <p>disabled - Don't use AQUA. </p>
            </li>
            <li>
               <p>auto - Amazon Redshift determines whether to use AQUA.</p>
            </li>
         </ul>")
    @as("AquaConfigurationStatus")
    aquaConfigurationStatus: option<aquaConfigurationStatus>,
    @ocaml.doc("<p>The identifier of the cluster to be modified.</p>") @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {
    @ocaml.doc("<p>The updated AQUA configuration of the cluster. </p>") @as("AquaConfiguration")
    aquaConfiguration: option<aquaConfiguration>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyAquaConfigurationCommand"
  let make = (~clusterIdentifier, ~aquaConfigurationStatus=?, ()) =>
    new({aquaConfigurationStatus: aquaConfigurationStatus, clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetClusterCredentials = {
  type t
  @ocaml.doc("<p>The request parameters to get cluster credentials.</p>")
  type request = {
    @ocaml.doc("<p>A list of the names of existing database groups that the user named in
                <code>DbUser</code> will join for the current session, in addition to any group
            memberships for an existing user. If not specified, a new user is added only to
            PUBLIC.</p>
        <p>Database group name constraints</p>
        <ul>
            <li>
                <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
            </li>
            <li>
                <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
                    (dot), at symbol (@), or hyphen.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Must not contain a colon ( : ) or slash ( / ). </p>
            </li>
            <li>
                <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon
                    Redshift Database Developer Guide.</p>
            </li>
         </ul>")
    @as("DbGroups")
    dbGroups: option<dbGroupList>,
    @ocaml.doc("<p>Create a database user with the name specified for the user named in
                <code>DbUser</code> if one does not exist.</p>")
    @as("AutoCreate")
    autoCreate: option<booleanOptional>,
    @ocaml.doc("<p>The number of seconds until the returned temporary password expires.</p>
        <p>Constraint: minimum 900, maximum 3600.</p>
        <p>Default: 900</p>")
    @as("DurationSeconds")
    durationSeconds: option<integerOptional>,
    @ocaml.doc("<p>The unique identifier of the cluster that contains the database for which your are
            requesting credentials. This parameter is case sensitive.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
    @ocaml.doc("<p>The name of a database that <code>DbUser</code> is authorized to log on to. If
                <code>DbName</code> is not specified, <code>DbUser</code> can log on to any existing
            database.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 64 alphanumeric characters or hyphens</p>
            </li>
            <li>
                <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
                    (dot), at symbol (@), or hyphen.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Must not contain a colon ( : ) or slash ( / ). </p>
            </li>
            <li>
                <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon
                    Redshift Database Developer Guide.</p>
            </li>
         </ul>")
    @as("DbName")
    dbName: option<string_>,
    @ocaml.doc("<p>The name of a database user. If a user name matching <code>DbUser</code> exists in
            the database, the temporary user credentials have the same permissions as the existing
            user. If <code>DbUser</code> doesn't exist in the database and <code>Autocreate</code>
            is <code>True</code>, a new user is created using the value for <code>DbUser</code> with
            PUBLIC permissions. If a database user matching the value for <code>DbUser</code>
            doesn't exist and <code>Autocreate</code> is <code>False</code>, then the command
            succeeds but the connection attempt will fail because the user doesn't exist in the
            database.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html\">CREATE USER</a> in the Amazon
            Redshift Database Developer Guide. </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 64 alphanumeric characters or hyphens. The user name can't be
                        <code>PUBLIC</code>.</p>
            </li>
            <li>
                <p>Must contain only lowercase letters, numbers, underscore, plus sign, period
                    (dot), at symbol (@), or hyphen.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Must not contain a colon ( : ) or slash ( / ). </p>
            </li>
            <li>
                <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the Amazon
                    Redshift Database Developer Guide.</p>
            </li>
         </ul>")
    @as("DbUser")
    dbUser: string_,
  }
  @ocaml.doc("<p>Temporary credentials with authorization to log on to an Amazon Redshift database.
        </p>")
  type response = {
    @ocaml.doc("<p>The date and time the password in <code>DbPassword</code> expires.</p>")
    @as("Expiration")
    expiration: option<tstamp>,
    @ocaml.doc("<p>A temporary password that authorizes the user name returned by <code>DbUser</code>
            to log on to the database <code>DbName</code>. </p>")
    @as("DbPassword")
    dbPassword: option<sensitiveString>,
    @ocaml.doc("<p>A database user name that is authorized to log on to the database
                <code>DbName</code> using the password <code>DbPassword</code>. If the specified
            DbUser exists in the database, the new user name has the same database privileges as the
            the user named in DbUser. By default, the user is added to PUBLIC. If the
                <code>DbGroups</code> parameter is specifed, <code>DbUser</code> is added to the
            listed groups for any sessions created using these credentials.</p>")
    @as("DbUser")
    dbUser: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "GetClusterCredentialsCommand"
  let make = (
    ~clusterIdentifier,
    ~dbUser,
    ~dbGroups=?,
    ~autoCreate=?,
    ~durationSeconds=?,
    ~dbName=?,
    (),
  ) =>
    new({
      dbGroups: dbGroups,
      autoCreate: autoCreate,
      durationSeconds: durationSeconds,
      clusterIdentifier: clusterIdentifier,
      dbName: dbName,
      dbUser: dbUser,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResize = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The unique identifier of a cluster whose resize progress you are requesting. This
            parameter is case-sensitive.</p>
        <p>By default, resize operations for all clusters defined for an AWS account are
            returned.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  @ocaml.doc("<p>Describes the result of a cluster resize operation.</p>")
  type response = {
    @ocaml.doc("<p>The percent of data transferred from source cluster to target cluster.</p>")
    @as("DataTransferProgressPercent")
    dataTransferProgressPercent: option<doubleOptional>,
    @ocaml.doc("<p>The type of encryption for the cluster after the resize is complete.</p>
        <p>Possible values are <code>KMS</code> and <code>None</code>. </p>")
    @as("TargetEncryptionType")
    targetEncryptionType: option<string_>,
    @ocaml.doc("<p>An optional string to provide additional details about the resize action.</p>")
    @as("Message")
    message: option<string_>,
    @ocaml.doc("<p>An enum with possible values of <code>ClassicResize</code> and
                <code>ElasticResize</code>. These values describe the type of resize operation being
            performed. </p>")
    @as("ResizeType")
    resizeType: option<string_>,
    @ocaml.doc("<p>The estimated time remaining, in seconds, until the resize operation is complete.
            This value is calculated based on the average resize rate and the estimated amount of
            data remaining to be processed. Once the resize operation is complete, this value will
            be 0.</p>")
    @as("EstimatedTimeToCompletionInSeconds")
    estimatedTimeToCompletionInSeconds: option<longOptional>,
    @ocaml.doc("<p>The amount of seconds that have elapsed since the resize operation began. After the
            resize operation completes, this value shows the total actual time, in seconds, for the
            resize operation.</p>")
    @as("ElapsedTimeInSeconds")
    elapsedTimeInSeconds: option<longOptional>,
    @ocaml.doc("<p>While the resize operation is in progress, this value shows the current amount of
            data, in megabytes, that has been processed so far. When the resize operation is
            complete, this value shows the total amount of data, in megabytes, on the cluster, which
            may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data
            before resize).</p>")
    @as("ProgressInMegaBytes")
    progressInMegaBytes: option<longOptional>,
    @ocaml.doc("<p>The estimated total amount of data, in megabytes, on the cluster before the resize
            operation began.</p>")
    @as("TotalResizeDataInMegaBytes")
    totalResizeDataInMegaBytes: option<longOptional>,
    @ocaml.doc("<p>The average rate of the resize operation over the last few minutes, measured in
            megabytes per second. After the resize operation completes, this value shows the average
            rate of the entire resize operation.</p>")
    @as("AvgResizeRateInMegaBytesPerSecond")
    avgResizeRateInMegaBytesPerSecond: option<doubleOptional>,
    @ocaml.doc("<p>The names of tables that have not been yet imported.</p>
        <p>Valid Values: List of table names</p>")
    @as("ImportTablesNotStarted")
    importTablesNotStarted: option<importTablesNotStarted>,
    @ocaml.doc("<p>The names of tables that are being currently imported.</p>
        <p>Valid Values: List of table names.</p>")
    @as("ImportTablesInProgress")
    importTablesInProgress: option<importTablesInProgress>,
    @ocaml.doc("<p>The names of tables that have been completely imported .</p>
        <p>Valid Values: List of table names.</p>")
    @as("ImportTablesCompleted")
    importTablesCompleted: option<importTablesCompleted>,
    @ocaml.doc("<p>The status of the resize operation.</p>
        <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> |
                <code>SUCCEEDED</code> | <code>CANCELLING</code>
        </p>")
    @as("Status")
    status: option<string_>,
    @ocaml.doc("<p>The cluster type after the resize operation is complete.</p>
        <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
        </p>")
    @as("TargetClusterType")
    targetClusterType: option<string_>,
    @ocaml.doc("<p>The number of nodes that the cluster will have after the resize operation is
            complete.</p>")
    @as("TargetNumberOfNodes")
    targetNumberOfNodes: option<integerOptional>,
    @ocaml.doc("<p>The node type that the cluster will have after the resize operation is
            complete.</p>")
    @as("TargetNodeType")
    targetNodeType: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeResizeCommand"
  let make = (~clusterIdentifier, ()) => new({clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTags = {
  type t
  @ocaml.doc("<p>Contains the output from the <code>DeleteTags</code> action. </p>")
  type request = {
    @ocaml.doc("<p>The tag key that you want to delete.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) from which you want to remove the tag or tags. For
            example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>")
    @as("ResourceName")
    resourceName: string_,
  }

  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeleteTagsCommand"
  let make = (~tagKeys, ~resourceName, ()) => new({tagKeys: tagKeys, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelResize = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the cluster that you want to cancel a resize operation
            for.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  @ocaml.doc("<p>Describes the result of a cluster resize operation.</p>")
  type response = {
    @ocaml.doc("<p>The percent of data transferred from source cluster to target cluster.</p>")
    @as("DataTransferProgressPercent")
    dataTransferProgressPercent: option<doubleOptional>,
    @ocaml.doc("<p>The type of encryption for the cluster after the resize is complete.</p>
        <p>Possible values are <code>KMS</code> and <code>None</code>. </p>")
    @as("TargetEncryptionType")
    targetEncryptionType: option<string_>,
    @ocaml.doc("<p>An optional string to provide additional details about the resize action.</p>")
    @as("Message")
    message: option<string_>,
    @ocaml.doc("<p>An enum with possible values of <code>ClassicResize</code> and
                <code>ElasticResize</code>. These values describe the type of resize operation being
            performed. </p>")
    @as("ResizeType")
    resizeType: option<string_>,
    @ocaml.doc("<p>The estimated time remaining, in seconds, until the resize operation is complete.
            This value is calculated based on the average resize rate and the estimated amount of
            data remaining to be processed. Once the resize operation is complete, this value will
            be 0.</p>")
    @as("EstimatedTimeToCompletionInSeconds")
    estimatedTimeToCompletionInSeconds: option<longOptional>,
    @ocaml.doc("<p>The amount of seconds that have elapsed since the resize operation began. After the
            resize operation completes, this value shows the total actual time, in seconds, for the
            resize operation.</p>")
    @as("ElapsedTimeInSeconds")
    elapsedTimeInSeconds: option<longOptional>,
    @ocaml.doc("<p>While the resize operation is in progress, this value shows the current amount of
            data, in megabytes, that has been processed so far. When the resize operation is
            complete, this value shows the total amount of data, in megabytes, on the cluster, which
            may be more or less than TotalResizeDataInMegaBytes (the estimated total amount of data
            before resize).</p>")
    @as("ProgressInMegaBytes")
    progressInMegaBytes: option<longOptional>,
    @ocaml.doc("<p>The estimated total amount of data, in megabytes, on the cluster before the resize
            operation began.</p>")
    @as("TotalResizeDataInMegaBytes")
    totalResizeDataInMegaBytes: option<longOptional>,
    @ocaml.doc("<p>The average rate of the resize operation over the last few minutes, measured in
            megabytes per second. After the resize operation completes, this value shows the average
            rate of the entire resize operation.</p>")
    @as("AvgResizeRateInMegaBytesPerSecond")
    avgResizeRateInMegaBytesPerSecond: option<doubleOptional>,
    @ocaml.doc("<p>The names of tables that have not been yet imported.</p>
        <p>Valid Values: List of table names</p>")
    @as("ImportTablesNotStarted")
    importTablesNotStarted: option<importTablesNotStarted>,
    @ocaml.doc("<p>The names of tables that are being currently imported.</p>
        <p>Valid Values: List of table names.</p>")
    @as("ImportTablesInProgress")
    importTablesInProgress: option<importTablesInProgress>,
    @ocaml.doc("<p>The names of tables that have been completely imported .</p>
        <p>Valid Values: List of table names.</p>")
    @as("ImportTablesCompleted")
    importTablesCompleted: option<importTablesCompleted>,
    @ocaml.doc("<p>The status of the resize operation.</p>
        <p>Valid Values: <code>NONE</code> | <code>IN_PROGRESS</code> | <code>FAILED</code> |
                <code>SUCCEEDED</code> | <code>CANCELLING</code>
        </p>")
    @as("Status")
    status: option<string_>,
    @ocaml.doc("<p>The cluster type after the resize operation is complete.</p>
        <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
        </p>")
    @as("TargetClusterType")
    targetClusterType: option<string_>,
    @ocaml.doc("<p>The number of nodes that the cluster will have after the resize operation is
            complete.</p>")
    @as("TargetNumberOfNodes")
    targetNumberOfNodes: option<integerOptional>,
    @ocaml.doc("<p>The node type that the cluster will have after the resize operation is
            complete.</p>")
    @as("TargetNodeType")
    targetNodeType: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CancelResizeCommand"
  let make = (~clusterIdentifier, ()) => new({clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeEndpointAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The virtual private cloud (VPC) identifiers to grant access to.</p>")
    @as("VpcIds")
    vpcIds: option<vpcIdentifierList>,
    @ocaml.doc("<p>The AWS account ID to grant access to.</p>") @as("Account") account: string_,
    @ocaml.doc("<p>The cluster identifier of the cluster to grant access to.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  type response = endpointAuthorization
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AuthorizeEndpointAccessCommand"
  let make = (~account, ~vpcIds=?, ~clusterIdentifier=?, ()) =>
    new({vpcIds: vpcIds, account: account, clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetClusterParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An array of names of parameters to be reset. If
                <i>ResetAllParameters</i> option is not used, then at least one
            parameter name must be supplied. </p>
        <p>Constraints: A maximum of 20 parameters can be reset in a single request.</p>")
    @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc("<p>If <code>true</code>, all parameters in the specified parameter group will be reset
            to their default values. </p>
        <p>Default: <code>true</code>
        </p>")
    @as("ResetAllParameters")
    resetAllParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the cluster parameter group to be reset.</p>")
    @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The status of the parameter group. For example, if you made a change to a parameter
            group name-value pair, then the change could be pending a reboot of an associated
            cluster.</p>")
    @as("ParameterGroupStatus")
    parameterGroupStatus: option<string_>,
    @ocaml.doc("<p>The name of the cluster parameter group.</p>") @as("ParameterGroupName")
    parameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ResetClusterParameterGroupCommand"
  let make = (~parameterGroupName, ~parameters=?, ~resetAllParameters=?, ()) =>
    new({
      parameters: parameters,
      resetAllParameters: resetAllParameters,
      parameterGroupName: parameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyUsageLimit = {
  type t
  type request = {
    @ocaml.doc("<p>The new action that Amazon Redshift takes when the limit is reached. 
            For more information about this parameter, see <a>UsageLimit</a>. </p>")
    @as("BreachAction")
    breachAction: option<usageLimitBreachAction>,
    @ocaml.doc("<p>The new limit amount. 
            For more information about this parameter, see <a>UsageLimit</a>. </p>")
    @as("Amount")
    amount: option<longOptional>,
    @ocaml.doc("<p>The identifier of the usage limit to modify.</p>") @as("UsageLimitId")
    usageLimitId: string_,
  }
  type response = usageLimit
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ModifyUsageLimitCommand"
  let make = (~usageLimitId, ~breachAction=?, ~amount=?, ()) =>
    new({breachAction: breachAction, amount: amount, usageLimitId: usageLimitId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifySnapshotSchedule = {
  type t
  type request = {
    @ocaml.doc("<p>An updated list of schedule definitions. A schedule definition is made up of schedule
            expressions, for example, \"cron(30 12 *)\" or \"rate(12 hours)\".</p>")
    @as("ScheduleDefinitions")
    scheduleDefinitions: scheduleDefinitionList,
    @ocaml.doc("<p>A unique alphanumeric identifier of the schedule to modify.</p>")
    @as("ScheduleIdentifier")
    scheduleIdentifier: string_,
  }
  type response = snapshotSchedule
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifySnapshotScheduleCommand"
  let make = (~scheduleDefinitions, ~scheduleIdentifier, ()) =>
    new({scheduleDefinitions: scheduleDefinitions, scheduleIdentifier: scheduleIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyScheduledAction = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A modified enable flag of the scheduled action. If true, the scheduled action is active. If false, the scheduled action is disabled. </p>"
    )
    @as("Enable")
    enable: option<booleanOptional>,
    @ocaml.doc("<p>A modified end time of the scheduled action. 
            For more information about this parameter, see <a>ScheduledAction</a>. </p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>A modified start time of the scheduled action. 
            For more information about this parameter, see <a>ScheduledAction</a>. </p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>A modified description of the scheduled action. </p>")
    @as("ScheduledActionDescription")
    scheduledActionDescription: option<string_>,
    @ocaml.doc("<p>A different IAM role to assume to run the target action. 
            For more information about this parameter, see <a>ScheduledAction</a>.</p>")
    @as("IamRole")
    iamRole: option<string_>,
    @ocaml.doc("<p>A modified schedule in either <code>at( )</code> or <code>cron( )</code> format. 
            For more information about this parameter, see <a>ScheduledAction</a>.</p>")
    @as("Schedule")
    schedule: option<string_>,
    @ocaml.doc("<p>A modified JSON format of the scheduled action. 
            For more information about this parameter, see <a>ScheduledAction</a>. </p>")
    @as("TargetAction")
    targetAction: option<scheduledActionType>,
    @ocaml.doc("<p>The name of the scheduled action to modify. </p>") @as("ScheduledActionName")
    scheduledActionName: string_,
  }
  type response = scheduledAction
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyScheduledActionCommand"
  let make = (
    ~scheduledActionName,
    ~enable=?,
    ~endTime=?,
    ~startTime=?,
    ~scheduledActionDescription=?,
    ~iamRole=?,
    ~schedule=?,
    ~targetAction=?,
    (),
  ) =>
    new({
      enable: enable,
      endTime: endTime,
      startTime: startTime,
      scheduledActionDescription: scheduledActionDescription,
      iamRole: iamRole,
      schedule: schedule,
      targetAction: targetAction,
      scheduledActionName: scheduledActionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterParameterGroup = {
  type t
  @ocaml.doc("<p>Describes a modify cluster parameter group operation. </p>")
  type request = {
    @ocaml.doc("<p>An array of parameters to be modified. A maximum of 20 parameters can be modified
            in a single request.</p>
        <p>For each parameter to be modified, you must supply at least the parameter name and
            parameter value; other name-value pairs of the parameter are optional.</p>
        <p>For the workload management (WLM) configuration, you must supply all the name-value
            pairs in the wlm_json_configuration parameter.</p>")
    @as("Parameters")
    parameters: parametersList,
    @ocaml.doc("<p>The name of the parameter group to be modified.</p>") @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The status of the parameter group. For example, if you made a change to a parameter
            group name-value pair, then the change could be pending a reboot of an associated
            cluster.</p>")
    @as("ParameterGroupStatus")
    parameterGroupStatus: option<string_>,
    @ocaml.doc("<p>The name of the cluster parameter group.</p>") @as("ParameterGroupName")
    parameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterParameterGroupCommand"
  let make = (~parameters, ~parameterGroupName, ()) =>
    new({parameters: parameters, parameterGroupName: parameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTableRestoreStatus = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous
                <code>DescribeTableRestoreStatus</code> request. If this parameter is specified, the
            response includes only records beyond the marker, up to the value specified by the
                <code>MaxRecords</code> parameter.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist
            than the specified <code>MaxRecords</code> value, a pagination token called a marker is
            included in the response so that the remaining results can be retrieved.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The identifier of the table restore request to return status for. If you don't
            specify a <code>TableRestoreRequestId</code> value, then
                <code>DescribeTableRestoreStatus</code> returns the status of all in-progress table
            restore requests.</p>")
    @as("TableRestoreRequestId")
    tableRestoreRequestId: option<string_>,
    @ocaml.doc("<p>The Amazon Redshift cluster that the table is being restored to.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc(
      "<p>A pagination token that can be used in a subsequent <a>DescribeTableRestoreStatus</a> request.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of status details for one or more table restore requests.</p>")
    @as("TableRestoreStatusDetails")
    tableRestoreStatusDetails: option<tableRestoreStatusList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeTableRestoreStatusCommand"
  let make = (~marker=?, ~maxRecords=?, ~tableRestoreRequestId=?, ~clusterIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      tableRestoreRequestId: tableRestoreRequestId,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePartners = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the partner that is being described. If partner name is not specified, then all partner integrations are described.</p>"
    )
    @as("PartnerName")
    partnerName: option<partnerIntegrationPartnerName>,
    @ocaml.doc(
      "<p>The name of the database whose partner integration is being described. If database name is not specified, then all databases in the cluster are described.</p>"
    )
    @as("DatabaseName")
    databaseName: option<partnerIntegrationDatabaseName>,
    @ocaml.doc(
      "<p>The cluster identifier of the cluster whose partner integration is being described.</p>"
    )
    @as("ClusterIdentifier")
    clusterIdentifier: partnerIntegrationClusterIdentifier,
    @ocaml.doc("<p>The AWS account ID that owns the cluster.</p>") @as("AccountId")
    accountId: partnerIntegrationAccountId,
  }
  type response = {
    @ocaml.doc("<p>A list of partner integrations.</p>") @as("PartnerIntegrationInfoList")
    partnerIntegrationInfoList: option<partnerIntegrationInfoList>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribePartnersCommand"
  let make = (~clusterIdentifier, ~accountId, ~partnerName=?, ~databaseName=?, ()) =>
    new({
      partnerName: partnerName,
      databaseName: databaseName,
      clusterIdentifier: clusterIdentifier,
      accountId: accountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterVersions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeClusterVersions</a> request exceed
            the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of a specific cluster parameter group family to return details
            for.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 255 alphanumeric characters</p>
            </li>
            <li>
                <p>First character must be a letter</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("ClusterParameterGroupFamily")
    clusterParameterGroupFamily: option<string_>,
    @ocaml.doc("<p>The specific cluster version to return.</p>
        <p>Example: <code>1.0</code>
        </p>")
    @as("ClusterVersion")
    clusterVersion: option<string_>,
  }
  @ocaml.doc("<p>Contains the output from the <a>DescribeClusterVersions</a> action.
        </p>")
  type response = {
    @ocaml.doc("<p>A list of <code>Version</code> elements. </p>") @as("ClusterVersions")
    clusterVersions: option<clusterVersionList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterVersionsCommand"
  let make = (~marker=?, ~maxRecords=?, ~clusterParameterGroupFamily=?, ~clusterVersion=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      clusterParameterGroupFamily: clusterParameterGroupFamily,
      clusterVersion: clusterVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterParameters = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeClusterParameters</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The parameter types to return. Specify <code>user</code> to show parameters that
            are different form the default. Similarly, specify <code>engine-default</code> to show
            parameters that are the same as the default parameter group. </p>
        <p>Default: All parameter types returned.</p>
        <p>Valid Values: <code>user</code> | <code>engine-default</code>
        </p>")
    @as("Source")
    source: option<string_>,
    @ocaml.doc("<p>The name of a cluster parameter group for which to return details.</p>")
    @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  @ocaml.doc("<p>Contains the output from the <a>DescribeClusterParameters</a> action.
        </p>")
  type response = {
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of <a>Parameter</a> instances. Each instance lists the parameters
            of one cluster parameter group. </p>")
    @as("Parameters")
    parameters: option<parametersList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterParametersCommand"
  let make = (~parameterGroupName, ~marker=?, ~maxRecords=?, ~source=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      source: source,
      parameterGroupName: parameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUsageLimit = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The action that Amazon Redshift takes when the limit is reached. The default is log. 
            For more information about this parameter, see <a>UsageLimit</a>.</p>")
    @as("BreachAction")
    breachAction: option<usageLimitBreachAction>,
    @ocaml.doc("<p>The time period that the amount applies to. A <code>weekly</code> period begins on Sunday. The default is <code>monthly</code>. 
            </p>")
    @as("Period")
    period: option<usageLimitPeriod>,
    @ocaml.doc("<p>The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB).
            The value must be a positive number.
            </p>")
    @as("Amount")
    amount: long,
    @ocaml.doc("<p>The type of limit. Depending on the feature type, this can be based on a time duration or data size.
            If <code>FeatureType</code> is <code>spectrum</code>, then <code>LimitType</code> must be <code>data-scanned</code>.
            If <code>FeatureType</code> is <code>concurrency-scaling</code>, then <code>LimitType</code> must be <code>time</code>.
           </p>")
    @as("LimitType")
    limitType: usageLimitLimitType,
    @ocaml.doc("<p>The Amazon Redshift feature that you want to limit.</p>") @as("FeatureType")
    featureType: usageLimitFeatureType,
    @ocaml.doc("<p>The identifier of the cluster that you want to limit usage.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = usageLimit
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CreateUsageLimitCommand"
  let make = (
    ~amount,
    ~limitType,
    ~featureType,
    ~clusterIdentifier,
    ~tags=?,
    ~breachAction=?,
    ~period=?,
    (),
  ) =>
    new({
      tags: tags,
      breachAction: breachAction,
      period: period,
      amount: amount,
      limitType: limitType,
      featureType: featureType,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTags = {
  type t
  @ocaml.doc("<p>Contains the output from the <code>CreateTags</code> action. </p>")
  type request = {
    @ocaml.doc("<p>One or more name/value pairs to add as tags to the specified resource. Each tag
            name is passed in with the parameter <code>Key</code> and the corresponding value is
            passed in with the parameter <code>Value</code>. The <code>Key</code> and
                <code>Value</code> parameters are separated by a comma (,). Separate multiple tags
            with a space. For example, <code>--tags \"Key\"=\"owner\",\"Value\"=\"admin\"
                \"Key\"=\"environment\",\"Value\"=\"test\" \"Key\"=\"version\",\"Value\"=\"1.0\"</code>. </p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) to which you want to add the tag or tags. For
            example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>")
    @as("ResourceName")
    resourceName: string_,
  }

  @module("@aws-sdk/client-redshift") @new external new: request => t = "CreateTagsCommand"
  let make = (~tags, ~resourceName, ()) => new({tags: tags, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateSnapshotSchedule = {
  type t
  type request = {
    @ocaml.doc("<p></p>") @as("NextInvocations") nextInvocations: option<integerOptional>,
    @ocaml.doc("<p></p>") @as("DryRun") dryRun: option<booleanOptional>,
    @ocaml.doc("<p>An optional set of tags you can use to search for the schedule.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description of the snapshot schedule.</p>") @as("ScheduleDescription")
    scheduleDescription: option<string_>,
    @ocaml.doc("<p>A unique identifier for a snapshot schedule. Only alphanumeric characters are allowed
            for the identifier.</p>")
    @as("ScheduleIdentifier")
    scheduleIdentifier: option<string_>,
    @ocaml.doc("<p>The definition of the snapshot schedule. The definition is made up of schedule
            expressions, for example \"cron(30 12 *)\" or \"rate(12 hours)\". </p>")
    @as("ScheduleDefinitions")
    scheduleDefinitions: option<scheduleDefinitionList>,
  }
  type response = snapshotSchedule
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateSnapshotScheduleCommand"
  let make = (
    ~nextInvocations=?,
    ~dryRun=?,
    ~tags=?,
    ~scheduleDescription=?,
    ~scheduleIdentifier=?,
    ~scheduleDefinitions=?,
    (),
  ) =>
    new({
      nextInvocations: nextInvocations,
      dryRun: dryRun,
      tags: tags,
      scheduleDescription: scheduleDescription,
      scheduleIdentifier: scheduleIdentifier,
      scheduleDefinitions: scheduleDefinitions,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScheduledAction = {
  type t
  type request = {
    @ocaml.doc("<p>If true, the schedule is enabled. If false, the scheduled action does not trigger. 
            For more information about <code>state</code> of the scheduled action, see <a>ScheduledAction</a>. </p>")
    @as("Enable")
    enable: option<booleanOptional>,
    @ocaml.doc("<p>The end time in UTC of the scheduled action. After this time, the scheduled action does not trigger. 
            For more information about this parameter, see <a>ScheduledAction</a>. </p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>The start time in UTC of the scheduled action. 
            Before this time, the scheduled action does not trigger.
            For more information about this parameter, see <a>ScheduledAction</a>.</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The description of the scheduled action. 
            </p>")
    @as("ScheduledActionDescription")
    scheduledActionDescription: option<string_>,
    @ocaml.doc("<p>The IAM role to assume to run the target action. 
            For more information about this parameter, see <a>ScheduledAction</a>. </p>")
    @as("IamRole")
    iamRole: string_,
    @ocaml.doc("<p>The schedule in <code>at( )</code> or <code>cron( )</code> format. 
            For more information about this parameter, see <a>ScheduledAction</a>.</p>")
    @as("Schedule")
    schedule: string_,
    @ocaml.doc("<p>A JSON format string of the Amazon Redshift API operation with input parameters. 
            For more information about this parameter, see <a>ScheduledAction</a>. </p>")
    @as("TargetAction")
    targetAction: scheduledActionType,
    @ocaml.doc("<p>The name of the scheduled action. The name must be unique within an account. 
            For more information about this parameter, see <a>ScheduledAction</a>. </p>")
    @as("ScheduledActionName")
    scheduledActionName: string_,
  }
  type response = scheduledAction
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateScheduledActionCommand"
  let make = (
    ~iamRole,
    ~schedule,
    ~targetAction,
    ~scheduledActionName,
    ~enable=?,
    ~endTime=?,
    ~startTime=?,
    ~scheduledActionDescription=?,
    (),
  ) =>
    new({
      enable: enable,
      endTime: endTime,
      startTime: startTime,
      scheduledActionDescription: scheduledActionDescription,
      iamRole: iamRole,
      schedule: schedule,
      targetAction: targetAction,
      scheduledActionName: scheduledActionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchModifyClusterSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>A boolean value indicating whether to override an exception if the retention period
            has passed. </p>")
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc("<p>The number of days that a manual snapshot is retained. If you specify the value -1,
            the manual snapshot is retained indefinitely.</p>
        <p>The number must be either -1 or an integer between 1 and 3,653.</p>
        <p>If you decrease the manual snapshot retention period from its current value, existing
            manual snapshots that fall outside of the new retention period will return an error. If
            you want to suppress the errors and delete the snapshots, use the force option. </p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>A list of snapshot identifiers you want to modify.</p>")
    @as("SnapshotIdentifierList")
    snapshotIdentifierList: snapshotIdentifierList,
  }
  type response = {
    @ocaml.doc("<p>A list of any errors returned.</p>") @as("Errors")
    errors: option<batchSnapshotOperationErrors>,
    @ocaml.doc("<p>A list of the snapshots that were modified.</p>") @as("Resources")
    resources: option<snapshotIdentifierList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "BatchModifyClusterSnapshotsCommand"
  let make = (~snapshotIdentifierList, ~force=?, ~manualSnapshotRetentionPeriod=?, ()) =>
    new({
      force: force,
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      snapshotIdentifierList: snapshotIdentifierList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteClusterSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>A list of identifiers for the snapshots that you want to delete.</p>")
    @as("Identifiers")
    identifiers: deleteClusterSnapshotMessageList,
  }
  type response = {
    @ocaml.doc("<p>A list of any errors returned.</p>") @as("Errors")
    errors: option<batchSnapshotOperationErrorList>,
    @ocaml.doc("<p>A list of the snapshot identifiers that were deleted. </p>") @as("Resources")
    resources: option<snapshotIdentifierList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "BatchDeleteClusterSnapshotsCommand"
  let make = (~identifiers, ()) => new({identifiers: identifiers})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeSnapshotAccess = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the AWS customer account that can no longer restore the specified
            snapshot.</p>")
    @as("AccountWithRestoreAccess")
    accountWithRestoreAccess: string_,
    @ocaml.doc("<p>The identifier of the cluster the snapshot was created from. This parameter is
            required if your IAM user has a policy containing a snapshot resource element that
            specifies anything other than * for the cluster name.</p>")
    @as("SnapshotClusterIdentifier")
    snapshotClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The identifier of the snapshot that the account can no longer access.</p>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RevokeSnapshotAccessCommand"
  let make = (~accountWithRestoreAccess, ~snapshotIdentifier, ~snapshotClusterIdentifier=?, ()) =>
    new({
      accountWithRestoreAccess: accountWithRestoreAccess,
      snapshotClusterIdentifier: snapshotClusterIdentifier,
      snapshotIdentifier: snapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseReservedNodeOffering = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The number of reserved nodes that you want to purchase.</p>
        <p>Default: <code>1</code>
        </p>")
    @as("NodeCount")
    nodeCount: option<integerOptional>,
    @ocaml.doc("<p>The unique identifier of the reserved node offering you want to purchase.</p>")
    @as("ReservedNodeOfferingId")
    reservedNodeOfferingId: string_,
  }
  type response = {@as("ReservedNode") reservedNode: option<reservedNode>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "PurchaseReservedNodeOfferingCommand"
  let make = (~reservedNodeOfferingId, ~nodeCount=?, ()) =>
    new({nodeCount: nodeCount, reservedNodeOfferingId: reservedNodeOfferingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A Boolean value indicating if the subscription is enabled. <code>true</code>
            indicates the subscription is enabled </p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p>Specifies the Amazon Redshift event severity to be published by the event notification
            subscription.</p>
        <p>Values: ERROR, INFO</p>")
    @as("Severity")
    severity: option<string_>,
    @ocaml.doc("<p>Specifies the Amazon Redshift event categories to be published by the event notification
            subscription.</p>
        <p>Values: configuration, management, monitoring, security</p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
            must be of the same type as was specified in the source type parameter. The event
            subscription will return only events generated by the specified objects. If not
            specified, then events are returned for all objects within the source type
            specified.</p>
        <p>Example: my-cluster-1, my-cluster-2</p>
        <p>Example: my-snapshot-20131010</p>")
    @as("SourceIds")
    sourceIds: option<sourceIdsList>,
    @ocaml.doc("<p>The type of source that will be generating the events. For example, if you want to
            be notified of events generated by a cluster, you would set this parameter to cluster.
            If this value is not specified, events are returned for all Amazon Redshift objects in your
            AWS account. You must specify a source type in order to specify source IDs.</p>
        <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic to be used by the event
            notification subscription.</p>")
    @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc("<p>The name of the modified Amazon Redshift event notification subscription.</p>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyEventSubscriptionCommand"
  let make = (
    ~subscriptionName,
    ~enabled=?,
    ~severity=?,
    ~eventCategories=?,
    ~sourceIds=?,
    ~sourceType=?,
    ~snsTopicArn=?,
    (),
  ) =>
    new({
      enabled: enabled,
      severity: severity,
      eventCategories: eventCategories,
      sourceIds: sourceIds,
      sourceType: sourceType,
      snsTopicArn: snsTopicArn,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyEndpointAccess = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The complete list of VPC security groups associated with the endpoint after the endpoint is modified.</p>"
    )
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The endpoint to be modified.</p>") @as("EndpointName") endpointName: string_,
  }
  type response = endpointAccess
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyEndpointAccessCommand"
  let make = (~endpointName, ~vpcSecurityGroupIds=?, ()) =>
    new({vpcSecurityGroupIds: vpcSecurityGroupIds, endpointName: endpointName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>A Boolean option to override an exception if the retention period has already
            passed.</p>")
    @as("Force")
    force: option<boolean_>,
    @ocaml.doc("<p>The number of days that a manual snapshot is retained. If the value is -1, the manual
            snapshot is retained indefinitely.</p>
        <p>If the manual snapshot falls outside of the new retention period, you can specify the
            force option to immediately delete the snapshot.</p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The identifier of the snapshot whose setting you want to modify.</p>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterSnapshotCommand"
  let make = (~snapshotIdentifier, ~force=?, ~manualSnapshotRetentionPeriod=?, ()) =>
    new({
      force: force,
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      snapshotIdentifier: snapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTags = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching resources that are
            associated with the specified value or values. For example, suppose that you have
            resources tagged with values called <code>admin</code> and <code>test</code>. If you
            specify both of these tag values in the request, Amazon Redshift returns a response with all
            resources that have either or both of these tag values associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching resources that are
            associated with the specified key or keys. For example, suppose that you have resources
            tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
            both of these tag keys in the request, Amazon Redshift returns a response with all resources
            that have either or both of these tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>marker</code> parameter
            and retrying the command. If the <code>marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number or response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned <code>marker</code> value.
        </p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The type of resource with which you want to view tags. Valid resource types are: </p>
        <ul>
            <li>
                <p>Cluster</p>
            </li>
            <li>
                <p>CIDR/IP</p>
            </li>
            <li>
                <p>EC2 security group</p>
            </li>
            <li>
                <p>Snapshot</p>
            </li>
            <li>
                <p>Cluster security group</p>
            </li>
            <li>
                <p>Subnet group</p>
            </li>
            <li>
                <p>HSM connection</p>
            </li>
            <li>
                <p>HSM certificate</p>
            </li>
            <li>
                <p>Parameter group</p>
            </li>
            <li>
                <p>Snapshot copy grant</p>
            </li>
         </ul>
        <p>For more information about Amazon Redshift resource types and constructing ARNs, go to
                <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions\">Specifying Policy Elements: Actions, Effects, Resources, and Principals</a> in
            the Amazon Redshift Cluster Management Guide. </p>")
    @as("ResourceType")
    resourceType: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for which you want to describe the tag or tags. For
            example, <code>arn:aws:redshift:us-east-2:123456789:cluster:t1</code>. </p>")
    @as("ResourceName")
    resourceName: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of tags with their associated resources.</p>") @as("TaggedResources")
    taggedResources: option<taggedResourceList>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeTagsCommand"
  let make = (
    ~tagValues=?,
    ~tagKeys=?,
    ~marker=?,
    ~maxRecords=?,
    ~resourceType=?,
    ~resourceName=?,
    (),
  ) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      resourceType: resourceType,
      resourceName: resourceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNodeConfigurationOptions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>500</code>
        </p>
        <p>Constraints: minimum 100, maximum 500.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeNodeConfigurationOptions</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
            <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A set of name, operator, and value items to filter the results.</p>")
    @as("Filters")
    filters: option<nodeConfigurationOptionsFilterList>,
    @ocaml.doc("<p>The AWS customer account used to create or copy the snapshot. 
            Required if you are restoring a snapshot you do not own, 
            optional if you own the snapshot.</p>")
    @as("OwnerAccount")
    ownerAccount: option<string_>,
    @ocaml.doc(
      "<p>The identifier of the snapshot to evaluate for possible node configurations.</p>"
    )
    @as("SnapshotIdentifier")
    snapshotIdentifier: option<string_>,
    @ocaml.doc("<p>The identifier of the cluster to evaluate for possible node configurations.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
    @ocaml.doc("<p>The action type to evaluate for possible node configurations.
            Specify \"restore-cluster\" to get configuration combinations based on an existing snapshot. 
            Specify \"recommend-node-config\" to get configuration recommendations based on an existing cluster or snapshot. 
            Specify \"resize-cluster\" to get configuration combinations for elastic resize based on an existing cluster.
        </p>")
    @as("ActionType")
    actionType: actionType,
  }
  type response = {
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of valid node configurations.</p>") @as("NodeConfigurationOptionList")
    nodeConfigurationOptionList: option<nodeConfigurationOptionList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeNodeConfigurationOptionsCommand"
  let make = (
    ~actionType,
    ~maxRecords=?,
    ~marker=?,
    ~filters=?,
    ~ownerAccount=?,
    ~snapshotIdentifier=?,
    ~clusterIdentifier=?,
    (),
  ) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      ownerAccount: ownerAccount,
      snapshotIdentifier: snapshotIdentifier,
      clusterIdentifier: clusterIdentifier,
      actionType: actionType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeEvents</a> request exceed the value
            specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code>
            field of the response. You can retrieve the next set of response records by providing
            the returned marker value in the <code>Marker</code> parameter and retrying the request.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The number of minutes prior to the time of the request for which to retrieve
            events. For example, if the request is sent at 18:00 and you specify a duration of 60,
            then only events which have occurred after 17:00 will be returned.</p>
        <p>Default: <code>60</code>
        </p>")
    @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p>The end of the time interval for which to retrieve events, specified in ISO 8601
            format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>
        </p>
        <p>Example: <code>2009-07-08T18:00Z</code>
        </p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>The beginning of the time interval to retrieve events for, specified in ISO 8601
            format. For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>
        </p>
        <p>Example: <code>2009-07-08T18:00Z</code>
        </p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The event source to retrieve events for. If no value is specified, all events are
            returned.</p>
        <p>Constraints:</p>
        <p>If <i>SourceType</i> is supplied,
                <i>SourceIdentifier</i> must also be provided.</p>
        <ul>
            <li>
                <p>Specify <code>cluster</code> when <i>SourceIdentifier</i> is
                    a cluster identifier.</p>
            </li>
            <li>
                <p>Specify <code>cluster-security-group</code> when
                        <i>SourceIdentifier</i> is a cluster security group
                    name.</p>
            </li>
            <li>
                <p>Specify <code>cluster-parameter-group</code> when
                        <i>SourceIdentifier</i> is a cluster parameter group
                    name.</p>
            </li>
            <li>
                <p>Specify <code>cluster-snapshot</code> when
                        <i>SourceIdentifier</i> is a cluster snapshot
                    identifier.</p>
            </li>
         </ul>")
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc("<p>The identifier of the event source for which events will be returned. If this
            parameter is not specified, then all sources are included in the response.</p>
        <p>Constraints:</p>
        <p>If <i>SourceIdentifier</i> is supplied,
                <i>SourceType</i> must also be provided.</p>
        <ul>
            <li>
                <p>Specify a cluster identifier when <i>SourceType</i> is
                        <code>cluster</code>.</p>
            </li>
            <li>
                <p>Specify a cluster security group name when <i>SourceType</i>
                    is <code>cluster-security-group</code>.</p>
            </li>
            <li>
                <p>Specify a cluster parameter group name when <i>SourceType</i>
                    is <code>cluster-parameter-group</code>.</p>
            </li>
            <li>
                <p>Specify a cluster snapshot identifier when <i>SourceType</i>
                    is <code>cluster-snapshot</code>.</p>
            </li>
         </ul>")
    @as("SourceIdentifier")
    sourceIdentifier: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of <code>Event</code> instances. </p>") @as("Events")
    events: option<eventList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeEventsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~duration=?,
    ~endTime=?,
    ~startTime=?,
    ~sourceType=?,
    ~sourceIdentifier=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      duration: duration,
      endTime: endTime,
      startTime: startTime,
      sourceType: sourceType,
      sourceIdentifier: sourceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the
            response includes only records beyond the marker, up to the value specified by the
            <code>MaxRecords</code> parameter.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist
            than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
            included in the response so that the remaining results can be retrieved.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Indicates whether to check authorization from a grantor or grantee point of view. 
           If true, Amazon Redshift returns endpoint authorizations that you've been granted.
           If false (default), checks authorization from a grantor point of view.</p>")
    @as("Grantee")
    grantee: option<booleanOptional>,
    @ocaml.doc("<p>The AWS account ID of either the cluster owner (grantor) or grantee. 
       If <code>Grantee</code> parameter is true, then the <code>Account</code> value is of the grantor.</p>")
    @as("Account")
    account: option<string_>,
    @ocaml.doc("<p>The cluster identifier of the cluster to access.</p>") @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeEndpointAuthorization</code> request. If this parameter is specified, the
            response includes only records beyond the marker, up to the value specified by the
            <code>MaxRecords</code> parameter.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The authorizations to an endpoint.</p>") @as("EndpointAuthorizationList")
    endpointAuthorizationList: option<endpointAuthorizations>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEndpointAuthorizationCommand"
  let make = (~marker=?, ~maxRecords=?, ~grantee=?, ~account=?, ~clusterIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      grantee: grantee,
      account: account,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDefaultClusterParameters = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeDefaultClusterParameters</a>
            request exceed the value specified in <code>MaxRecords</code>, AWS returns a value in
            the <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the cluster parameter group family.</p>") @as("ParameterGroupFamily")
    parameterGroupFamily: string_,
  }
  type response = {
    @as("DefaultClusterParameters") defaultClusterParameters: option<defaultClusterParameters>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeDefaultClusterParametersCommand"
  let make = (~parameterGroupFamily, ~marker=?, ~maxRecords=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, parameterGroupFamily: parameterGroupFamily})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEndpointAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The Redshift-managed VPC endpoint to delete.</p>") @as("EndpointName")
    endpointName: string_,
  }
  type response = endpointAccess
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteEndpointAccessCommand"
  let make = (~endpointName, ()) => new({endpointName: endpointName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteClusterSnapshot = {
  type t
  type request = deleteClusterSnapshotMessage
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DeleteClusterSnapshotCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSnapshotCopyGrant = {
  type t
  @ocaml.doc("<p>The result of the <code>CreateSnapshotCopyGrant</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The unique identifier of the customer master key (CMK) to which to grant Amazon Redshift
            permission. If no key is specified, the default key is used.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The name of the snapshot copy grant. This name must be unique in the region for the
            AWS account.</p> 
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>Alphabetic characters must be lowercase.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
            <li>
               <p>Must be unique for all clusters within an AWS account.</p>
            </li>
         </ul>")
    @as("SnapshotCopyGrantName")
    snapshotCopyGrantName: string_,
  }
  type response = {@as("SnapshotCopyGrant") snapshotCopyGrant: option<snapshotCopyGrant>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateSnapshotCopyGrantCommand"
  let make = (~snapshotCopyGrantName, ~tags=?, ~kmsKeyId=?, ()) =>
    new({tags: tags, kmsKeyId: kmsKeyId, snapshotCopyGrantName: snapshotCopyGrantName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHsmConfiguration = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The HSMs public certificate file. When using Cloud HSM, the file name is
            server.pem.</p>")
    @as("HsmServerPublicCertificate")
    hsmServerPublicCertificate: string_,
    @ocaml.doc("<p>The password required to access the HSM partition.</p>")
    @as("HsmPartitionPassword")
    hsmPartitionPassword: string_,
    @ocaml.doc("<p>The name of the partition in the HSM where the Amazon Redshift clusters will store their
            database encryption keys.</p>")
    @as("HsmPartitionName")
    hsmPartitionName: string_,
    @ocaml.doc("<p>The IP address that the Amazon Redshift cluster must use to access the HSM.</p>")
    @as("HsmIpAddress")
    hsmIpAddress: string_,
    @ocaml.doc("<p>A text description of the HSM configuration to be created.</p>")
    @as("Description")
    description: string_,
    @ocaml.doc("<p>The identifier to be assigned to the new Amazon Redshift HSM configuration.</p>")
    @as("HsmConfigurationIdentifier")
    hsmConfigurationIdentifier: string_,
  }
  type response = {@as("HsmConfiguration") hsmConfiguration: option<hsmConfiguration>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateHsmConfigurationCommand"
  let make = (
    ~hsmServerPublicCertificate,
    ~hsmPartitionPassword,
    ~hsmPartitionName,
    ~hsmIpAddress,
    ~description,
    ~hsmConfigurationIdentifier,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      hsmServerPublicCertificate: hsmServerPublicCertificate,
      hsmPartitionPassword: hsmPartitionPassword,
      hsmPartitionName: hsmPartitionName,
      hsmIpAddress: hsmIpAddress,
      description: description,
      hsmConfigurationIdentifier: hsmConfigurationIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateHsmClientCertificate = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The identifier to be assigned to the new HSM client certificate that the cluster
            will use to connect to the HSM to use the database encryption keys.</p>")
    @as("HsmClientCertificateIdentifier")
    hsmClientCertificateIdentifier: string_,
  }
  type response = {@as("HsmClientCertificate") hsmClientCertificate: option<hsmClientCertificate>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateHsmClientCertificateCommand"
  let make = (~hsmClientCertificateIdentifier, ~tags=?, ()) =>
    new({tags: tags, hsmClientCertificateIdentifier: hsmClientCertificateIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A boolean value; set to <code>true</code> to activate the subscription, and set to
                <code>false</code> to create the subscription but not activate it. </p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p>Specifies the Amazon Redshift event severity to be published by the event notification
            subscription.</p>
        <p>Values: ERROR, INFO</p>")
    @as("Severity")
    severity: option<string_>,
    @ocaml.doc("<p>Specifies the Amazon Redshift event categories to be published by the event notification
            subscription.</p>
        <p>Values: configuration, management, monitoring, security</p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>A list of one or more identifiers of Amazon Redshift source objects. All of the objects
            must be of the same type as was specified in the source type parameter. The event
            subscription will return only events generated by the specified objects. If not
            specified, then events are returned for all objects within the source type
            specified.</p>
        <p>Example: my-cluster-1, my-cluster-2</p>
        <p>Example: my-snapshot-20131010</p>")
    @as("SourceIds")
    sourceIds: option<sourceIdsList>,
    @ocaml.doc("<p>The type of source that will be generating the events. For example, if you want to
            be notified of events generated by a cluster, you would set this parameter to cluster.
            If this value is not specified, events are returned for all Amazon Redshift objects in your
            AWS account. You must specify a source type in order to specify source IDs.</p>
        <p>Valid values: cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, and scheduled-action.</p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic used to transmit the event
            notifications. The ARN is created by Amazon SNS when you create a topic and subscribe to
            it.</p>")
    @as("SnsTopicArn")
    snsTopicArn: string_,
    @ocaml.doc("<p>The name of the event subscription to be created.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Cannot be null, empty, or blank.</p>
            </li>
            <li>
                <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateEventSubscriptionCommand"
  let make = (
    ~snsTopicArn,
    ~subscriptionName,
    ~tags=?,
    ~enabled=?,
    ~severity=?,
    ~eventCategories=?,
    ~sourceIds=?,
    ~sourceType=?,
    (),
  ) =>
    new({
      tags: tags,
      enabled: enabled,
      severity: severity,
      eventCategories: eventCategories,
      sourceIds: sourceIds,
      sourceType: sourceType,
      snsTopicArn: snsTopicArn,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEndpointAccess = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.</p>"
    )
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc(
      "<p>The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint.</p>"
    )
    @as("SubnetGroupName")
    subnetGroupName: string_,
    @ocaml.doc("<p>The Redshift-managed VPC endpoint name.</p>
         <p>An endpoint name must contain 1-30 characters.
          Valid characters are A-Z, a-z, 0-9, and hyphen(-).
          The first character must be a letter.
          The name can't contain two consecutive hyphens or end with a hyphen.</p>")
    @as("EndpointName")
    endpointName: string_,
    @ocaml.doc(
      "<p>The AWS account ID of the owner of the cluster. This is only required if the cluster is in another AWS account.</p>"
    )
    @as("ResourceOwner")
    resourceOwner: option<string_>,
    @ocaml.doc("<p>The cluster identifier of the cluster to access.</p>") @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  type response = endpointAccess
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateEndpointAccessCommand"
  let make = (
    ~subnetGroupName,
    ~endpointName,
    ~vpcSecurityGroupIds=?,
    ~resourceOwner=?,
    ~clusterIdentifier=?,
    (),
  ) =>
    new({
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      subnetGroupName: subnetGroupName,
      endpointName: endpointName,
      resourceOwner: resourceOwner,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The number of days that a manual snapshot is retained. If the value is -1, the manual
            snapshot is retained indefinitely. </p>

        <p>The value must be either -1 or an integer between 1 and 3,653.</p>

        <p>The default value is -1.</p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The cluster identifier for which you want a snapshot.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
    @ocaml.doc("<p>A unique identifier for the snapshot that you are requesting. This identifier must
            be unique for all snapshots within the AWS account.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Cannot be null, empty, or blank</p>
            </li>
            <li>
                <p>Must contain from 1 to 255 alphanumeric characters or hyphens</p>
            </li>
            <li>
                <p>First character must be a letter</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
        <p>Example: <code>my-snapshot-id</code>
        </p>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterSnapshotCommand"
  let make = (
    ~clusterIdentifier,
    ~snapshotIdentifier,
    ~tags=?,
    ~manualSnapshotRetentionPeriod=?,
    (),
  ) =>
    new({
      tags: tags,
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      clusterIdentifier: clusterIdentifier,
      snapshotIdentifier: snapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A description of the parameter group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The Amazon Redshift engine version to which the cluster parameter group applies. The
            cluster engine version determines the set of parameters.</p>
        <p>To get a list of valid parameter group family names, you can call <a>DescribeClusterParameterGroups</a>. By default, Amazon Redshift returns a list of
            all the parameter groups that are owned by your AWS account, including the default
            parameter groups for each Amazon Redshift engine version. The parameter group family names
            associated with the default parameter groups provide you the valid values. For example,
            a valid family name is \"redshift-1.0\". </p>")
    @as("ParameterGroupFamily")
    parameterGroupFamily: string_,
    @ocaml.doc("<p>The name of the cluster parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
            <li>
                <p>Must be unique withing your AWS account.</p>
            </li>
         </ul>
        <note>
            <p>This value is stored as a lower-case string.</p>
        </note>")
    @as("ParameterGroupName")
    parameterGroupName: string_,
  }
  type response = {
    @as("ClusterParameterGroup") clusterParameterGroup: option<clusterParameterGroup>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterParameterGroupCommand"
  let make = (~description, ~parameterGroupFamily, ~parameterGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      description: description,
      parameterGroupFamily: parameterGroupFamily,
      parameterGroupName: parameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyClusterSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The number of days that a manual snapshot is retained. If the value is -1, the manual
            snapshot is retained indefinitely. </p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>
        <p>The default value is -1.</p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The identifier given to the new manual snapshot.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Cannot be null, empty, or blank.</p>
            </li>
            <li>
                <p>Must contain from 1 to 255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
            <li>
                <p>Must be unique for the AWS account that is making the request.</p>
            </li>
         </ul>")
    @as("TargetSnapshotIdentifier")
    targetSnapshotIdentifier: string_,
    @ocaml.doc("<p>The identifier of the cluster the source snapshot was created from. This parameter
            is required if your IAM user has a policy containing a snapshot resource element that
            specifies anything other than * for the cluster name.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be the identifier for a valid cluster.</p>
            </li>
         </ul>")
    @as("SourceSnapshotClusterIdentifier")
    sourceSnapshotClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The identifier for the source snapshot.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be the identifier for a valid automated snapshot whose state is
                        <code>available</code>.</p>
            </li>
         </ul>")
    @as("SourceSnapshotIdentifier")
    sourceSnapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CopyClusterSnapshotCommand"
  let make = (
    ~targetSnapshotIdentifier,
    ~sourceSnapshotIdentifier,
    ~manualSnapshotRetentionPeriod=?,
    ~sourceSnapshotClusterIdentifier=?,
    (),
  ) =>
    new({
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      targetSnapshotIdentifier: targetSnapshotIdentifier,
      sourceSnapshotClusterIdentifier: sourceSnapshotClusterIdentifier,
      sourceSnapshotIdentifier: sourceSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeSnapshotAccess = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the AWS customer account authorized to restore the specified
            snapshot.</p>
        <p>To share a snapshot with AWS support, specify amazon-redshift-support.</p>")
    @as("AccountWithRestoreAccess")
    accountWithRestoreAccess: string_,
    @ocaml.doc("<p>The identifier of the cluster the snapshot was created from. This parameter is
            required if your IAM user has a policy containing a snapshot resource element that
            specifies anything other than * for the cluster name.</p>")
    @as("SnapshotClusterIdentifier")
    snapshotClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The identifier of the snapshot the account is authorized to restore.</p>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
  }
  type response = {@as("Snapshot") snapshot: option<snapshot>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AuthorizeSnapshotAccessCommand"
  let make = (~accountWithRestoreAccess, ~snapshotIdentifier, ~snapshotClusterIdentifier=?, ()) =>
    new({
      accountWithRestoreAccess: accountWithRestoreAccess,
      snapshotClusterIdentifier: snapshotClusterIdentifier,
      snapshotIdentifier: snapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptReservedNodeExchange = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the DC2 Reserved Node offering to be used for the exchange.
            You can obtain the value for the parameter by calling <a>GetReservedNodeExchangeOfferings</a>
         </p>")
    @as("TargetReservedNodeOfferingId")
    targetReservedNodeOfferingId: string_,
    @ocaml.doc("<p>A string representing the node identifier of the DC1 Reserved Node to be
            exchanged.</p>")
    @as("ReservedNodeId")
    reservedNodeId: string_,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("ExchangedReservedNode") exchangedReservedNode: option<reservedNode>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AcceptReservedNodeExchangeCommand"
  let make = (~targetReservedNodeOfferingId, ~reservedNodeId, ()) =>
    new({
      targetReservedNodeOfferingId: targetReservedNodeOfferingId,
      reservedNodeId: reservedNodeId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetReservedNodeExchangeOfferings = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates the starting point for the next set of
            ReservedNodeOfferings.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>An integer setting the maximum number of ReservedNodeOfferings to
            retrieve.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A string representing the node identifier for the DC1 Reserved Node to be
            exchanged.</p>")
    @as("ReservedNodeId")
    reservedNodeId: string_,
  }
  type response = {
    @ocaml.doc("<p>Returns an array of <a>ReservedNodeOffering</a> objects.</p>")
    @as("ReservedNodeOfferings")
    reservedNodeOfferings: option<reservedNodeOfferingList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point for returning a set of
            response records. When the results of a <code>GetReservedNodeExchangeOfferings</code>
            request exceed the value specified in MaxRecords, Amazon Redshift returns a value in the
            marker field of the response. You can retrieve the next set of response records by
            providing the returned marker value in the marker parameter and retrying the request.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "GetReservedNodeExchangeOfferingsCommand"
  let make = (~reservedNodeId, ~marker=?, ~maxRecords=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, reservedNodeId: reservedNodeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeUsageLimits = {
  type t
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching usage limit objects
            that are associated with the specified tag value or values. For example, suppose
            that you have parameter groups that are tagged with values called <code>admin</code> and
            <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
            returns a response with the usage limit objects that have either or both of these tag
            values associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching usage limit objects
            that are associated with the specified key or keys. For example, suppose that you
            have parameter groups that are tagged with keys called <code>owner</code> and
            <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the usage limit objects have either or both of these
            tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeUsageLimits</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
            <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The feature type for which you want to describe usage limits.</p>")
    @as("FeatureType")
    featureType: option<usageLimitFeatureType>,
    @ocaml.doc("<p>The identifier of the cluster for which you want to describe usage limits.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
    @ocaml.doc("<p>The identifier of the usage limit to describe.</p>") @as("UsageLimitId")
    usageLimitId: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Contains the output from the <a>DescribeUsageLimits</a>
            action. </p>")
    @as("UsageLimits")
    usageLimits: option<usageLimits>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeUsageLimitsCommand"
  let make = (
    ~tagValues=?,
    ~tagKeys=?,
    ~marker=?,
    ~maxRecords=?,
    ~featureType=?,
    ~clusterIdentifier=?,
    ~usageLimitId=?,
    (),
  ) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      featureType: featureType,
      clusterIdentifier: clusterIdentifier,
      usageLimitId: usageLimitId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshotSchedules = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number or response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned <code>marker</code>
            value.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>marker</code> parameter
            and retrying the command. If the <code>marker</code> field is empty, all response
            records have been retrieved for the request.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The value corresponding to the key of the snapshot schedule tag.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>The key value for a snapshot schedule tag.</p>") @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>A unique identifier for a snapshot schedule.</p>") @as("ScheduleIdentifier")
    scheduleIdentifier: option<string_>,
    @ocaml.doc("<p>The unique identifier for the cluster whose snapshot schedules you want to
            view.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>marker</code> parameter
            and retrying the command. If the <code>marker</code> field is empty, all response
            records have been retrieved for the request.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of SnapshotSchedules.</p>") @as("SnapshotSchedules")
    snapshotSchedules: option<snapshotScheduleList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeSnapshotSchedulesCommand"
  let make = (
    ~maxRecords=?,
    ~marker=?,
    ~tagValues=?,
    ~tagKeys=?,
    ~scheduleIdentifier=?,
    ~clusterIdentifier=?,
    (),
  ) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      tagValues: tagValues,
      tagKeys: tagKeys,
      scheduleIdentifier: scheduleIdentifier,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSnapshotCopyGrants = {
  type t
  @ocaml.doc("<p>The result of the <code>DescribeSnapshotCopyGrants</code> action.</p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching resources that are
            associated with the specified value or values. For example, suppose that you have
            resources tagged with values called <code>admin</code> and <code>test</code>. If you
            specify both of these tag values in the request, Amazon Redshift returns a response with all
            resources that have either or both of these tag values associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching resources that are
            associated with the specified key or keys. For example, suppose that you have resources
            tagged with keys called <code>owner</code> and <code>environment</code>. If you specify
            both of these tag keys in the request, Amazon Redshift returns a response with all resources
            that have either or both of these tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the
            value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>
        <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the snapshot copy grant.</p>") @as("SnapshotCopyGrantName")
    snapshotCopyGrantName: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The list of <code>SnapshotCopyGrant</code> objects.</p>")
    @as("SnapshotCopyGrants")
    snapshotCopyGrants: option<snapshotCopyGrantList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <code>DescribeSnapshotCopyGrant</code> request exceed the
            value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>
        <p>Constraints: You can specify either the <b>SnapshotCopyGrantName</b> parameter or the <b>Marker</b> parameter, but not both. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeSnapshotCopyGrantsCommand"
  let make = (~tagValues=?, ~tagKeys=?, ~marker=?, ~maxRecords=?, ~snapshotCopyGrantName=?, ()) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      snapshotCopyGrantName: snapshotCopyGrantName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledActions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
            <p>Default: <code>100</code>
            </p>
            <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeScheduledActions</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
            <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>List of scheduled action filters. </p>") @as("Filters")
    filters: option<scheduledActionFilterList>,
    @ocaml.doc("<p>If true, retrieve only active scheduled actions. 
           If false, retrieve only disabled scheduled actions. </p>")
    @as("Active")
    active: option<booleanOptional>,
    @ocaml.doc("<p>The end time in UTC of the scheduled action to retrieve. 
            Only active scheduled actions that have invocations before this time are retrieved.</p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>The start time in UTC of the scheduled actions to retrieve. 
            Only active scheduled actions that have invocations after this time are retrieved.</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The type of the scheduled actions to retrieve. </p>") @as("TargetActionType")
    targetActionType: option<scheduledActionTypeValues>,
    @ocaml.doc("<p>The name of the scheduled action to retrieve. </p>") @as("ScheduledActionName")
    scheduledActionName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>List of retrieved scheduled actions. </p>") @as("ScheduledActions")
    scheduledActions: option<scheduledActionList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeScheduledActions</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
            <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeScheduledActionsCommand"
  let make = (
    ~maxRecords=?,
    ~marker=?,
    ~filters=?,
    ~active=?,
    ~endTime=?,
    ~startTime=?,
    ~targetActionType=?,
    ~scheduledActionName=?,
    (),
  ) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      active: active,
      endTime: endTime,
      startTime: startTime,
      targetActionType: targetActionType,
      scheduledActionName: scheduledActionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedNodes = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeReservedNodes</a> request exceed
            the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Identifier for the node reservation.</p>") @as("ReservedNodeId")
    reservedNodeId: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The list of <code>ReservedNode</code> objects.</p>") @as("ReservedNodes")
    reservedNodes: option<reservedNodeList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeReservedNodesCommand"
  let make = (~marker=?, ~maxRecords=?, ~reservedNodeId=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, reservedNodeId: reservedNodeId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedNodeOfferings = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeReservedNodeOfferings</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The unique identifier for the offering.</p>") @as("ReservedNodeOfferingId")
    reservedNodeOfferingId: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of <code>ReservedNodeOffering</code> objects.</p>")
    @as("ReservedNodeOfferings")
    reservedNodeOfferings: option<reservedNodeOfferingList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeReservedNodeOfferingsCommand"
  let make = (~marker=?, ~maxRecords=?, ~reservedNodeOfferingId=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, reservedNodeOfferingId: reservedNodeOfferingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHsmConfigurations = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching HSM configurations
            that are associated with the specified tag value or values. For example, suppose that
            you have HSM configurations that are tagged with values called <code>admin</code> and
                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
            returns a response with the HSM configurations that have either or both of these tag
            values associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching HSM configurations that
            are associated with the specified key or keys. For example, suppose that you have HSM
            configurations that are tagged with keys called <code>owner</code> and
                <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the HSM configurations that have either or both of
            these tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeHsmConfigurations</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The identifier of a specific Amazon Redshift HSM configuration to be described. If no
            identifier is specified, information is returned for all HSM configurations owned by
            your AWS customer account.</p>")
    @as("HsmConfigurationIdentifier")
    hsmConfigurationIdentifier: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of <code>HsmConfiguration</code> objects.</p>") @as("HsmConfigurations")
    hsmConfigurations: option<hsmConfigurationList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeHsmConfigurationsCommand"
  let make = (
    ~tagValues=?,
    ~tagKeys=?,
    ~marker=?,
    ~maxRecords=?,
    ~hsmConfigurationIdentifier=?,
    (),
  ) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      hsmConfigurationIdentifier: hsmConfigurationIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHsmClientCertificates = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching HSM client
            certificates that are associated with the specified tag value or values. For example,
            suppose that you have HSM client certificates that are tagged with values called
                <code>admin</code> and <code>test</code>. If you specify both of these tag values in
            the request, Amazon Redshift returns a response with the HSM client certificates that have
            either or both of these tag values associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching HSM client certificates
            that are associated with the specified key or keys. For example, suppose that you have
            HSM client certificates that are tagged with keys called <code>owner</code> and
                <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the HSM client certificates that have either or both
            of these tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeHsmClientCertificates</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The identifier of a specific HSM client certificate for which you want information.
            If no identifier is specified, information is returned for all HSM client certificates
            owned by your AWS customer account.</p>")
    @as("HsmClientCertificateIdentifier")
    hsmClientCertificateIdentifier: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of the identifiers for one or more HSM client certificates used by Amazon Redshift
            clusters to store and retrieve database encryption keys in an HSM.</p>")
    @as("HsmClientCertificates")
    hsmClientCertificates: option<hsmClientCertificateList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeHsmClientCertificatesCommand"
  let make = (
    ~tagValues=?,
    ~tagKeys=?,
    ~marker=?,
    ~maxRecords=?,
    ~hsmClientCertificateIdentifier=?,
    (),
  ) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      hsmClientCertificateIdentifier: hsmClientCertificateIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventSubscriptions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching event notification
            subscriptions that are associated with the specified tag value or values. For example,
            suppose that you have subscriptions that are tagged with values called
                <code>admin</code> and <code>test</code>. If you specify both of these tag values in
            the request, Amazon Redshift returns a response with the subscriptions that have either or
            both of these tag values associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching event notification
            subscriptions that are associated with the specified key or keys. For example, suppose
            that you have subscriptions that are tagged with keys called <code>owner</code> and
                <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the subscriptions that have either or both of these
            tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a DescribeEventSubscriptions request exceed the value
            specified in <code>MaxRecords</code>, AWS returns a value in the <code>Marker</code>
            field of the response. You can retrieve the next set of response records by providing
            the returned marker value in the <code>Marker</code> parameter and retrying the request.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the Amazon Redshift event notification subscription to be
            described.</p>")
    @as("SubscriptionName")
    subscriptionName: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of event subscriptions.</p>") @as("EventSubscriptionsList")
    eventSubscriptionsList: option<eventSubscriptionsList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEventSubscriptionsCommand"
  let make = (~tagValues=?, ~tagKeys=?, ~marker=?, ~maxRecords=?, ~subscriptionName=?, ()) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterSnapshots = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p></p>") @as("SortingEntities") sortingEntities: option<snapshotSortingEntityList>,
    @ocaml.doc("<p>A value that indicates whether to return snapshots only for an existing cluster.
            You can perform table-level restore only by using a snapshot of an existing cluster,
            that is, a cluster that has not been deleted. Values for this parameter work as follows: </p>
        <ul>
            <li>
                <p>If <code>ClusterExists</code> is set to <code>true</code>,
                        <code>ClusterIdentifier</code> is required.</p>
            </li>
            <li>
                <p>If <code>ClusterExists</code> is set to <code>false</code> and
                        <code>ClusterIdentifier</code> isn't specified, all snapshots
                    associated with deleted clusters (orphaned snapshots) are returned. </p>
            </li>
            <li>
                <p>If <code>ClusterExists</code> is set to <code>false</code> and
                        <code>ClusterIdentifier</code> is specified for a deleted cluster, snapshots
                    associated with that cluster are returned.</p>
            </li>
            <li>
                <p>If <code>ClusterExists</code> is set to <code>false</code> and
                        <code>ClusterIdentifier</code> is specified for an existing cluster, no
                    snapshots are returned. </p>
            </li>
         </ul>")
    @as("ClusterExists")
    clusterExists: option<booleanOptional>,
    @ocaml.doc("<p>A tag value or values for which you want to return all matching cluster snapshots
            that are associated with the specified tag value or values. For example, suppose that
            you have snapshots that are tagged with values called <code>admin</code> and
                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
            returns a response with the snapshots that have either or both of these tag values
            associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching cluster snapshots that
            are associated with the specified key or keys. For example, suppose that you have
            snapshots that are tagged with keys called <code>owner</code> and
                <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the snapshots that have either or both of these tag
            keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>The AWS customer account used to create or copy the snapshot. Use this field to
            filter the results to snapshots owned by a particular account. To describe snapshots you
            own, either specify your AWS customer account, or do not specify the
            parameter.</p>")
    @as("OwnerAccount")
    ownerAccount: option<string_>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeClusterSnapshots</a> request exceed
            the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A time value that requests only snapshots created at or before the specified time.
            The time value is specified in ISO 8601 format. For more information about ISO 8601, go
            to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia
                page.</a>
        </p>
        <p>Example: <code>2012-07-16T18:00:00Z</code>
        </p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>A value that requests only snapshots created at or after the specified time. The
            time value is specified in ISO 8601 format. For more information about ISO 8601, go to
            the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>
        </p>
        <p>Example: <code>2012-07-16T18:00:00Z</code>
        </p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The type of snapshots for which you are requesting information. By default,
            snapshots of all types are returned.</p>
        <p>Valid Values: <code>automated</code> | <code>manual</code>
        </p>")
    @as("SnapshotType")
    snapshotType: option<string_>,
    @ocaml.doc("<p>The snapshot identifier of the snapshot about which to return
            information.</p>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: option<string_>,
    @ocaml.doc("<p>The identifier of the cluster which generated the requested snapshots.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Contains the output from the <a>DescribeClusterSnapshots</a> action.
        </p>")
  type response = {
    @ocaml.doc("<p>A list of <a>Snapshot</a> instances. </p>") @as("Snapshots")
    snapshots: option<snapshotList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterSnapshotsCommand"
  let make = (
    ~sortingEntities=?,
    ~clusterExists=?,
    ~tagValues=?,
    ~tagKeys=?,
    ~ownerAccount=?,
    ~marker=?,
    ~maxRecords=?,
    ~endTime=?,
    ~startTime=?,
    ~snapshotType=?,
    ~snapshotIdentifier=?,
    ~clusterIdentifier=?,
    (),
  ) =>
    new({
      sortingEntities: sortingEntities,
      clusterExists: clusterExists,
      tagValues: tagValues,
      tagKeys: tagKeys,
      ownerAccount: ownerAccount,
      marker: marker,
      maxRecords: maxRecords,
      endTime: endTime,
      startTime: startTime,
      snapshotType: snapshotType,
      snapshotIdentifier: snapshotIdentifier,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterParameterGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching cluster parameter
            groups that are associated with the specified tag value or values. For example, suppose
            that you have parameter groups that are tagged with values called <code>admin</code> and
                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
            returns a response with the parameter groups that have either or both of these tag
            values associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching cluster parameter
            groups that are associated with the specified key or keys. For example, suppose that you
            have parameter groups that are tagged with keys called <code>owner</code> and
                <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the parameter groups that have either or both of these
            tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeClusterParameterGroups</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of a specific parameter group for which to return details. By default,
            details about all parameter groups and the default parameter group are
            returned.</p>")
    @as("ParameterGroupName")
    parameterGroupName: option<string_>,
  }
  @ocaml.doc("<p>Contains the output from the <a>DescribeClusterParameterGroups</a>
            action. </p>")
  type response = {
    @ocaml.doc("<p>A list of <a>ClusterParameterGroup</a> instances. Each instance
            describes one cluster parameter group. </p>")
    @as("ParameterGroups")
    parameterGroups: option<parameterGroupList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterParameterGroupsCommand"
  let make = (~tagValues=?, ~tagKeys=?, ~marker=?, ~maxRecords=?, ~parameterGroupName=?, ()) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      parameterGroupName: parameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterDbRevisions = {
  type t
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point for returning a set of
            response records. When the results of a <code>DescribeClusterDbRevisions</code> request
            exceed the value specified in <code>MaxRecords</code>, Amazon Redshift returns a value
            in the <code>marker</code> field of the response. You can retrieve the next set of
            response records by providing the returned <code>marker</code> value in the
                <code>marker</code> parameter and retrying the request. </p>
        <p>Constraints: You can specify either the <code>ClusterIdentifier</code> parameter, or
            the <code>marker</code> parameter, but not both.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified MaxRecords value, a value is returned
            in the <code>marker</code> field of the response. You can retrieve the next set of
            response records by providing the returned <code>marker</code> value in the
                <code>marker</code> parameter and retrying the request. </p>
        <p>Default: 100</p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A unique identifier for a cluster whose <code>ClusterDbRevisions</code> you are
            requesting. This parameter is case sensitive. All clusters defined for an account are
            returned by default.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of revisions.</p>") @as("ClusterDbRevisions")
    clusterDbRevisions: option<clusterDbRevisionsList>,
    @ocaml.doc("<p>A string representing the starting point for the next set of revisions. If a value is
            returned in a response, you can retrieve the next set of revisions by providing the
            value in the <code>marker</code> parameter and retrying the command. If the
                <code>marker</code> field is empty, all revisions have already been returned.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterDbRevisionsCommand"
  let make = (~marker=?, ~maxRecords=?, ~clusterIdentifier=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>A list of attribute names.</p>") @as("AttributeNames")
    attributeNames: option<attributeNameList>,
  }
  type response = {
    @ocaml.doc("<p>A list of attributes assigned to an account.</p>") @as("AccountAttributes")
    accountAttributes: option<attributeList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeAccountAttributesCommand"
  let make = (~attributeNames=?, ()) => new({attributeNames: attributeNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeClusterSecurityGroupIngress = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The AWS account number of the owner of the security group specified in the
                <code>EC2SecurityGroupName</code> parameter. The AWS access key ID is not an
            acceptable value. If <code>EC2SecurityGroupOwnerId</code> is specified,
                <code>EC2SecurityGroupName</code> must also be provided. and <code>CIDRIP</code>
            cannot be provided. </p>
        <p>Example: <code>111122223333</code>
        </p>")
    @as("EC2SecurityGroupOwnerId")
    ec2SecurityGroupOwnerId: option<string_>,
    @ocaml.doc("<p>The name of the EC2 Security Group whose access is to be revoked. If
                <code>EC2SecurityGroupName</code> is specified, <code>EC2SecurityGroupOwnerId</code>
            must also be provided and <code>CIDRIP</code> cannot be provided. </p>")
    @as("EC2SecurityGroupName")
    ec2SecurityGroupName: option<string_>,
    @ocaml.doc("<p>The IP range for which to revoke access. This range must be a valid Classless
            Inter-Domain Routing (CIDR) block of IP addresses. If <code>CIDRIP</code> is specified,
                <code>EC2SecurityGroupName</code> and <code>EC2SecurityGroupOwnerId</code> cannot be
            provided. </p>")
    @as("CIDRIP")
    cidrip: option<string_>,
    @ocaml.doc("<p>The name of the security Group from which to revoke the ingress rule.</p>")
    @as("ClusterSecurityGroupName")
    clusterSecurityGroupName: string_,
  }
  type response = {@as("ClusterSecurityGroup") clusterSecurityGroup: option<clusterSecurityGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RevokeClusterSecurityGroupIngressCommand"
  let make = (
    ~clusterSecurityGroupName,
    ~ec2SecurityGroupOwnerId=?,
    ~ec2SecurityGroupName=?,
    ~cidrip=?,
    (),
  ) =>
    new({
      ec2SecurityGroupOwnerId: ec2SecurityGroupOwnerId,
      ec2SecurityGroupName: ec2SecurityGroupName,
      cidrip: cidrip,
      clusterSecurityGroupName: clusterSecurityGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventCategories = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The source type, such as cluster or parameter group, to which the described event
            categories apply.</p>
        <p>Valid values: cluster, cluster-snapshot, cluster-parameter-group, cluster-security-group, and scheduled-action.</p>")
    @as("SourceType")
    sourceType: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of event categories descriptions.</p>") @as("EventCategoriesMapList")
    eventCategoriesMapList: option<eventCategoriesMapList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEventCategoriesCommand"
  let make = (~sourceType=?, ()) => new({sourceType: sourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpointAccess = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeEndpointAccess</code> request. If this parameter is specified, the
            response includes only records beyond the marker, up to the value specified by the
            <code>MaxRecords</code> parameter.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist
            than the specified <code>MaxRecords</code> value, a pagination token called a <code>Marker</code> is
            included in the response so that the remaining results can be retrieved.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The virtual private cloud (VPC) identifier with access to the cluster.</p>")
    @as("VpcId")
    vpcId: option<string_>,
    @ocaml.doc("<p>The name of the endpoint to be described.</p>") @as("EndpointName")
    endpointName: option<string_>,
    @ocaml.doc("<p>The AWS account ID of the owner of the cluster.</p>") @as("ResourceOwner")
    resourceOwner: option<string_>,
    @ocaml.doc("<p>The cluster identifier associated with the described endpoint.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeEndpointAccess</code> request. If this parameter is specified, the
            response includes only records beyond the marker, up to the value specified by the
            <code>MaxRecords</code> parameter.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The list of endpoints with access to the cluster.</p>") @as("EndpointAccessList")
    endpointAccessList: option<endpointAccesses>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeEndpointAccessCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~vpcId=?,
    ~endpointName=?,
    ~resourceOwner=?,
    ~clusterIdentifier=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      vpcId: vpcId,
      endpointName: endpointName,
      resourceOwner: resourceOwner,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterSecurityGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A description for the security group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The name for the security group. Amazon Redshift stores the value as a lowercase
            string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
                <p>Must not be \"Default\".</p>
            </li>
            <li>
                <p>Must be unique for all security groups that are created by your AWS
                    account.</p>
            </li>
         </ul>
        <p>Example: <code>examplesecuritygroup</code>
        </p>")
    @as("ClusterSecurityGroupName")
    clusterSecurityGroupName: string_,
  }
  type response = {@as("ClusterSecurityGroup") clusterSecurityGroup: option<clusterSecurityGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterSecurityGroupCommand"
  let make = (~description, ~clusterSecurityGroupName, ~tags=?, ()) =>
    new({tags: tags, description: description, clusterSecurityGroupName: clusterSecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeClusterSecurityGroupIngress = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The AWS account number of the owner of the security group specified by the
                <i>EC2SecurityGroupName</i> parameter. The AWS Access Key ID is not an
            acceptable value. </p>
        <p>Example: <code>111122223333</code>
        </p>")
    @as("EC2SecurityGroupOwnerId")
    ec2SecurityGroupOwnerId: option<string_>,
    @ocaml.doc("<p>The EC2 security group to be added the Amazon Redshift security group.</p>")
    @as("EC2SecurityGroupName")
    ec2SecurityGroupName: option<string_>,
    @ocaml.doc("<p>The IP range to be added the Amazon Redshift security group.</p>") @as("CIDRIP")
    cidrip: option<string_>,
    @ocaml.doc("<p>The name of the security group to which the ingress rule is added.</p>")
    @as("ClusterSecurityGroupName")
    clusterSecurityGroupName: string_,
  }
  type response = {@as("ClusterSecurityGroup") clusterSecurityGroup: option<clusterSecurityGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "AuthorizeClusterSecurityGroupIngressCommand"
  let make = (
    ~clusterSecurityGroupName,
    ~ec2SecurityGroupOwnerId=?,
    ~ec2SecurityGroupName=?,
    ~cidrip=?,
    (),
  ) =>
    new({
      ec2SecurityGroupOwnerId: ec2SecurityGroupOwnerId,
      ec2SecurityGroupName: ec2SecurityGroupName,
      cidrip: cidrip,
      clusterSecurityGroupName: clusterSecurityGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RotateEncryptionKey = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The unique identifier of the cluster that you want to rotate the encryption keys
            for.</p>
        <p>Constraints: Must be the name of valid cluster that has encryption
            enabled.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "RotateEncryptionKeyCommand"
  let make = (~clusterIdentifier, ()) => new({clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResumeCluster = {
  type t
  type request = resumeClusterMessage
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ResumeClusterCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreFromClusterSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values include the following.</p>
        <ul>
            <li>
               <p>enabled - Use AQUA if it is available for the current AWS Region and Amazon Redshift node type.</p>
            </li>
            <li>
               <p>disabled - Don't use AQUA. </p>
            </li>
            <li>
               <p>auto - Amazon Redshift determines whether to use AQUA.</p>
            </li>
         </ul>")
    @as("AquaConfigurationStatus")
    aquaConfigurationStatus: option<aquaConfigurationStatus>,
    @ocaml.doc(
      "<p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is restored.</p>"
    )
    @as("AvailabilityZoneRelocation")
    availabilityZoneRelocation: option<booleanOptional>,
    @ocaml.doc("<p>The number of nodes specified when provisioning the restored cluster.</p>")
    @as("NumberOfNodes")
    numberOfNodes: option<integerOptional>,
    @ocaml.doc("<p>A unique identifier for the snapshot schedule.</p>")
    @as("SnapshotScheduleIdentifier")
    snapshotScheduleIdentifier: option<string_>,
    @ocaml.doc("<p>The name of the maintenance track for the restored cluster. When you take a snapshot,
            the snapshot inherits the <code>MaintenanceTrack</code> value from the cluster. The
            snapshot might be on a different track than the cluster that was the source for the
            snapshot. For example, suppose that you take a snapshot of a cluster that is on the
            current track and then change the cluster to be on the trailing track. In this case, the
            snapshot and the source cluster are on different tracks.</p>")
    @as("MaintenanceTrackName")
    maintenanceTrackName: option<string_>,
    @ocaml.doc("<p>A list of AWS Identity and Access Management (IAM) roles that can be used by the
            cluster to access other AWS services. You must supply the IAM roles in their Amazon
            Resource Name (ARN) format. You can supply up to 10 IAM roles in a single
            request.</p>
        <p>A cluster can have up to 10 IAM roles associated at any time.</p>")
    @as("IamRoles")
    iamRoles: option<iamRoleArnList>,
    @ocaml.doc("<p>Reserved.</p>") @as("AdditionalInfo") additionalInfo: option<string_>,
    @ocaml.doc("<p>An option that specifies whether to create the cluster with enhanced VPC routing
            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in
            the Amazon Redshift Cluster Management Guide.</p>
        <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
        <p>Default: false</p>")
    @as("EnhancedVpcRouting")
    enhancedVpcRouting: option<booleanOptional>,
    @ocaml.doc("<p>The node type that the restored cluster will be provisioned with.</p>
        <p>Default: The node type of the cluster from which the snapshot was taken. You can
            modify this if you are using any DS node type. In that case, you can choose to restore
            into another DS node type of the same size. For example, you can restore ds1.8xlarge
            into ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC instance type, you
            must restore into that same instance type and size. In other words, you can only restore
            a dc1.large instance type into another dc1.large instance type or dc2.large instance
            type. You can't restore dc1.8xlarge to dc2.8xlarge. First restore to a dc1.8xlarge
            cluster, then resize to a dc2.8large cluster. For more information about node types, see
                <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes\">
                About Clusters and Nodes</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>")
    @as("NodeType")
    nodeType: option<string_>,
    @ocaml.doc("<p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to
            use to encrypt data in the cluster that you restore from a shared snapshot.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The default number of days to retain a manual snapshot. If the value is -1, the
            snapshot is retained indefinitely. This setting doesn't change the retention period
            of existing snapshots.</p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The number of days that automated snapshots are retained. If the value is 0,
            automated snapshots are disabled. Even if automated snapshots are disabled, you can
            still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
        
        <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
        <p>Default: The value selected for the cluster from which the snapshot was
            taken.</p>
        <p>Constraints: Must be a value from 0 to 35.</p>")
    @as("AutomatedSnapshotRetentionPeriod")
    automatedSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The weekly time range (in UTC) during which automated cluster maintenance can
            occur.</p>
        <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
        </p>
        <p> Default: The value selected for the cluster from which the snapshot was taken. For
            more information about the time blocks for each region, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows\">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide. </p>
        <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
        <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
            cluster.</p>
        <p>Default: The default VPC security group is associated with the cluster.</p>
        <p>VPC security groups only apply to clusters in VPCs.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of security groups to be associated with this cluster.</p>
        <p>Default: The default cluster security group for Amazon Redshift.</p>
        <p>Cluster security groups only apply to clusters outside of VPCs.</p>")
    @as("ClusterSecurityGroups")
    clusterSecurityGroups: option<clusterSecurityGroupNameList>,
    @ocaml.doc("<p>The name of the parameter group to be associated with this cluster.</p>
        <p>Default: The default Amazon Redshift cluster parameter group. For information about the
            default parameter group, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Working with Amazon
                Redshift Parameter Groups</a>.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("ClusterParameterGroupName")
    clusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The elastic IP (EIP) address for the cluster.</p>") @as("ElasticIp")
    elasticIp: option<string_>,
    @ocaml.doc("<p>Specifies the name of the HSM configuration that contains the information the
            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>")
    @as("HsmConfigurationIdentifier")
    hsmConfigurationIdentifier: option<string_>,
    @ocaml.doc("<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
            retrieve the data encryption keys stored in an HSM.</p>")
    @as("HsmClientCertificateIdentifier")
    hsmClientCertificateIdentifier: option<string_>,
    @ocaml.doc("<p>The AWS customer account used to create or copy the snapshot. Required if you are
            restoring a snapshot you do not own, optional if you own the snapshot.</p>")
    @as("OwnerAccount")
    ownerAccount: option<string_>,
    @ocaml.doc("<p>If <code>true</code>, the cluster can be accessed from a public network. </p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The name of the subnet group where you want to cluster restored.</p>
        <p>A snapshot of cluster in VPC can be restored only in VPC. Therefore, you must
            provide subnet group name where you want the cluster restored.</p>")
    @as("ClusterSubnetGroupName")
    clusterSubnetGroupName: option<string_>,
    @ocaml.doc("<p>If <code>true</code>, major version upgrades can be applied during the maintenance
            window to the Amazon Redshift engine that is running on the cluster. </p>
        <p>Default: <code>true</code>
        </p>")
    @as("AllowVersionUpgrade")
    allowVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon EC2 Availability Zone in which to restore the cluster.</p>
        <p>Default: A random, system-chosen Availability Zone.</p>
        <p>Example: <code>us-east-2a</code>
        </p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The port number on which the cluster accepts connections.</p>
        <p>Default: The same port as the original cluster.</p>
        <p>Constraints: Must be between <code>1115</code> and <code>65535</code>.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The name of the cluster the source snapshot was created from. This parameter is
            required if your IAM user has a policy containing a snapshot resource element that
            specifies anything other than * for the cluster name.</p>")
    @as("SnapshotClusterIdentifier")
    snapshotClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The name of the snapshot from which to create the new cluster. This parameter isn't
            case sensitive.</p>
        <p>Example: <code>my-snapshot-id</code>
        </p>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
    @ocaml.doc("<p>The identifier of the cluster that will be created from restoring the
            snapshot.</p> 
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>Alphabetic characters must be lowercase.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
            <li>
               <p>Must be unique for all clusters within an AWS account.</p>
            </li>
         </ul>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "RestoreFromClusterSnapshotCommand"
  let make = (
    ~snapshotIdentifier,
    ~clusterIdentifier,
    ~aquaConfigurationStatus=?,
    ~availabilityZoneRelocation=?,
    ~numberOfNodes=?,
    ~snapshotScheduleIdentifier=?,
    ~maintenanceTrackName=?,
    ~iamRoles=?,
    ~additionalInfo=?,
    ~enhancedVpcRouting=?,
    ~nodeType=?,
    ~kmsKeyId=?,
    ~manualSnapshotRetentionPeriod=?,
    ~automatedSnapshotRetentionPeriod=?,
    ~preferredMaintenanceWindow=?,
    ~vpcSecurityGroupIds=?,
    ~clusterSecurityGroups=?,
    ~clusterParameterGroupName=?,
    ~elasticIp=?,
    ~hsmConfigurationIdentifier=?,
    ~hsmClientCertificateIdentifier=?,
    ~ownerAccount=?,
    ~publiclyAccessible=?,
    ~clusterSubnetGroupName=?,
    ~allowVersionUpgrade=?,
    ~availabilityZone=?,
    ~port=?,
    ~snapshotClusterIdentifier=?,
    (),
  ) =>
    new({
      aquaConfigurationStatus: aquaConfigurationStatus,
      availabilityZoneRelocation: availabilityZoneRelocation,
      numberOfNodes: numberOfNodes,
      snapshotScheduleIdentifier: snapshotScheduleIdentifier,
      maintenanceTrackName: maintenanceTrackName,
      iamRoles: iamRoles,
      additionalInfo: additionalInfo,
      enhancedVpcRouting: enhancedVpcRouting,
      nodeType: nodeType,
      kmsKeyId: kmsKeyId,
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      automatedSnapshotRetentionPeriod: automatedSnapshotRetentionPeriod,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      clusterSecurityGroups: clusterSecurityGroups,
      clusterParameterGroupName: clusterParameterGroupName,
      elasticIp: elasticIp,
      hsmConfigurationIdentifier: hsmConfigurationIdentifier,
      hsmClientCertificateIdentifier: hsmClientCertificateIdentifier,
      ownerAccount: ownerAccount,
      publiclyAccessible: publiclyAccessible,
      clusterSubnetGroupName: clusterSubnetGroupName,
      allowVersionUpgrade: allowVersionUpgrade,
      availabilityZone: availabilityZone,
      port: port,
      snapshotClusterIdentifier: snapshotClusterIdentifier,
      snapshotIdentifier: snapshotIdentifier,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResizeCluster = {
  type t
  type request = resizeClusterMessage
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ResizeClusterCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The cluster identifier.</p>") @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "RebootClusterCommand"
  let make = (~clusterIdentifier, ()) => new({clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PauseCluster = {
  type t
  type request = pauseClusterMessage
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "PauseClusterCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifySnapshotCopyRetentionPeriod = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Indicates whether to apply the snapshot retention period to newly copied manual
            snapshots instead of automated snapshots.</p>")
    @as("Manual")
    manual: option<boolean_>,
    @ocaml.doc("<p>The number of days to retain automated snapshots in the destination AWS Region
            after they are copied from the source AWS Region.</p>
        <p>By default, this only changes the retention period of copied automated snapshots. </p>
        <p>If you decrease the retention period for automated snapshots that are copied to a
            destination AWS Region, Amazon Redshift deletes any existing automated snapshots that were
            copied to the destination AWS Region and that fall outside of the new retention
            period.</p>
        <p>Constraints: Must be at least 1 and no more than 35 for automated snapshots. </p>
        <p>If you specify the <code>manual</code> option, only newly copied manual snapshots will
            have the new retention period. </p>
        <p>If you specify the value of -1 newly copied manual snapshots are retained
            indefinitely.</p>
        <p>Constraints: The number of days must be either -1 or an integer between 1 and 3,653
            for manual snapshots.</p>")
    @as("RetentionPeriod")
    retentionPeriod: integer_,
    @ocaml.doc("<p>The unique identifier of the cluster for which you want to change the retention
            period for either automated or manual snapshots that are copied to a destination AWS
            Region.</p>
        <p>Constraints: Must be the valid name of an existing cluster that has cross-region
            snapshot copy enabled.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifySnapshotCopyRetentionPeriodCommand"
  let make = (~retentionPeriod, ~clusterIdentifier, ~manual=?, ()) =>
    new({manual: manual, retentionPeriod: retentionPeriod, clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
            request.</p>")
    @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>A text description of the subnet group to be modified.</p>") @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The name of the subnet group to be modified.</p>") @as("ClusterSubnetGroupName")
    clusterSubnetGroupName: string_,
  }
  type response = {@as("ClusterSubnetGroup") clusterSubnetGroup: option<clusterSubnetGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterSubnetGroupCommand"
  let make = (~subnetIds, ~clusterSubnetGroupName, ~description=?, ()) =>
    new({
      subnetIds: subnetIds,
      description: description,
      clusterSubnetGroupName: clusterSubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterMaintenance = {
  type t
  type request = {
    @ocaml.doc("<p>An integer indicating the duration of the maintenance window in days. If you specify a
            duration, you can't specify an end time. The duration must be 45 days or less.</p>")
    @as("DeferMaintenanceDuration")
    deferMaintenanceDuration: option<integerOptional>,
    @ocaml.doc("<p>A timestamp indicating end time for the deferred maintenance window. If you specify an
            end time, you can't specify a duration.</p>")
    @as("DeferMaintenanceEndTime")
    deferMaintenanceEndTime: option<tstamp>,
    @ocaml.doc("<p>A timestamp indicating the start time for the deferred maintenance window.</p>")
    @as("DeferMaintenanceStartTime")
    deferMaintenanceStartTime: option<tstamp>,
    @ocaml.doc("<p>A unique identifier for the deferred maintenance window.</p>")
    @as("DeferMaintenanceIdentifier")
    deferMaintenanceIdentifier: option<string_>,
    @ocaml.doc("<p>A boolean indicating whether to enable the deferred maintenance window. </p>")
    @as("DeferMaintenance")
    deferMaintenance: option<booleanOptional>,
    @ocaml.doc("<p>A unique identifier for the cluster.</p>") @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterMaintenanceCommand"
  let make = (
    ~clusterIdentifier,
    ~deferMaintenanceDuration=?,
    ~deferMaintenanceEndTime=?,
    ~deferMaintenanceStartTime=?,
    ~deferMaintenanceIdentifier=?,
    ~deferMaintenance=?,
    (),
  ) =>
    new({
      deferMaintenanceDuration: deferMaintenanceDuration,
      deferMaintenanceEndTime: deferMaintenanceEndTime,
      deferMaintenanceStartTime: deferMaintenanceStartTime,
      deferMaintenanceIdentifier: deferMaintenanceIdentifier,
      deferMaintenance: deferMaintenance,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterIamRoles = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Zero or more IAM roles in ARN format to disassociate from the cluster. You can
            disassociate up to 10 IAM roles from a single cluster in a single request.</p>")
    @as("RemoveIamRoles")
    removeIamRoles: option<iamRoleArnList>,
    @ocaml.doc("<p>Zero or more IAM roles to associate with the cluster. The roles must be in their
            Amazon Resource Name (ARN) format. You can associate up to 10 IAM roles with a single
            cluster in a single request.</p>")
    @as("AddIamRoles")
    addIamRoles: option<iamRoleArnList>,
    @ocaml.doc("<p>The unique identifier of the cluster for which you want to associate or
            disassociate IAM roles.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterIamRolesCommand"
  let make = (~clusterIdentifier, ~removeIamRoles=?, ~addIamRoles=?, ()) =>
    new({
      removeIamRoles: removeIamRoles,
      addIamRoles: addIamRoles,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyClusterDbRevision = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the database revision. You can retrieve this value from the
            response to the <a>DescribeClusterDbRevisions</a> request.</p>")
    @as("RevisionTarget")
    revisionTarget: string_,
    @ocaml.doc("<p>The unique identifier of a cluster whose database revision you want to modify. </p>
        <p>Example: <code>examplecluster</code>
        </p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "ModifyClusterDbRevisionCommand"
  let make = (~revisionTarget, ~clusterIdentifier, ()) =>
    new({revisionTarget: revisionTarget, clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The option to change the port of an Amazon Redshift cluster.</p>") @as("Port")
    port: option<integerOptional>,
    @ocaml.doc(
      "<p>The option to initiate relocation for an Amazon Redshift cluster to the target Availability Zone.</p>"
    )
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc(
      "<p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster modification is complete.</p>"
    )
    @as("AvailabilityZoneRelocation")
    availabilityZoneRelocation: option<booleanOptional>,
    @ocaml.doc("<p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to use
            to encrypt data in the cluster.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>Indicates whether the cluster is encrypted. If the value is encrypted (true) and you
            provide a value for the <code>KmsKeyId</code> parameter, we encrypt the cluster
            with the provided <code>KmsKeyId</code>. If you don't provide a <code>KmsKeyId</code>,
            we encrypt with the default key. </p>
            <p>If the value is not encrypted (false), then the cluster is decrypted. </p>")
    @as("Encrypted")
    encrypted: option<booleanOptional>,
    @ocaml.doc("<p>The name for the maintenance track that you want to assign for the cluster. This name
            change is asynchronous. The new track name stays in the
                <code>PendingModifiedValues</code> for the cluster until the next maintenance
            window. When the maintenance track changes, the cluster is switched to the latest
            cluster release available for the maintenance track. At this point, the maintenance
            track name is applied.</p>")
    @as("MaintenanceTrackName")
    maintenanceTrackName: option<string_>,
    @ocaml.doc("<p>An option that specifies whether to create the cluster with enhanced VPC routing
            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in
            the Amazon Redshift Cluster Management Guide.</p>
        <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
        <p>Default: false</p>")
    @as("EnhancedVpcRouting")
    enhancedVpcRouting: option<booleanOptional>,
    @ocaml.doc("<p>The Elastic IP (EIP) address for the cluster.</p>
        <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
            through an Internet gateway. For more information about provisioning clusters in
            EC2-VPC, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms\">Supported
                Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>")
    @as("ElasticIp")
    elasticIp: option<string_>,
    @ocaml.doc("<p>If <code>true</code>, the cluster can be accessed from a public network. Only
            clusters in VPCs can be set to be publicly available.</p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The new identifier for the cluster.</p> 
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>Alphabetic characters must be lowercase.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
            <li>
               <p>Must be unique for all clusters within an AWS account.</p>
            </li>
         </ul>

            <p>Example: <code>examplecluster</code>
        </p>")
    @as("NewClusterIdentifier")
    newClusterIdentifier: option<string_>,
    @ocaml.doc("<p>Specifies the name of the HSM configuration that contains the information the
            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>")
    @as("HsmConfigurationIdentifier")
    hsmConfigurationIdentifier: option<string_>,
    @ocaml.doc("<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
            retrieve the data encryption keys stored in an HSM.</p>")
    @as("HsmClientCertificateIdentifier")
    hsmClientCertificateIdentifier: option<string_>,
    @ocaml.doc("<p>If <code>true</code>, major version upgrades will be applied automatically to the
            cluster during the maintenance window. </p>
        <p>Default: <code>false</code>
        </p>")
    @as("AllowVersionUpgrade")
    allowVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The new version number of the Amazon Redshift engine to upgrade to.</p>
        <p>For major version upgrades, if a non-default cluster parameter group is currently
            in use, a new cluster parameter group in the cluster parameter group family for the new
            version must be specified. The new cluster parameter group can be the default for that
            cluster parameter group family. 
For more information about parameters and parameter groups, go to 
<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Amazon Redshift Parameter Groups</a> 
in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
        <p>Example: <code>1.0</code>
        </p>")
    @as("ClusterVersion")
    clusterVersion: option<string_>,
    @ocaml.doc("<p>The weekly time range (in UTC) during which system maintenance can occur, if
            necessary. If system maintenance is necessary during the window, it may result in an
            outage.</p>
        <p>This maintenance window change is made immediately. If the new maintenance window
            indicates the current time, there must be at least 120 minutes between the current time
            and end of the window in order to ensure that pending changes are applied.</p>
        <p>Default: Uses existing setting.</p>
        <p>Format: ddd:hh24:mi-ddd:hh24:mi, for example
            <code>wed:07:30-wed:08:00</code>.</p>
        <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
        <p>Constraints: Must be at least 30 minutes.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The default for number of days that a newly created manual snapshot is retained. If
            the value is -1, the manual snapshot is retained indefinitely. This value doesn't
            retroactively change the retention periods of existing manual snapshots.</p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>
        <p>The default value is -1.</p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The number of days that automated snapshots are retained. If the value is 0,
            automated snapshots are disabled. Even if automated snapshots are disabled, you can
            still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
        <p>If you decrease the automated snapshot retention period from its current value,
            existing automated snapshots that fall outside of the new retention period will be
            immediately deleted.</p>
        
        <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
        <p>Default: Uses existing setting.</p>
        <p>Constraints: Must be a value from 0 to 35.</p>")
    @as("AutomatedSnapshotRetentionPeriod")
    automatedSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the cluster parameter group to apply to this cluster. This change is
            applied only after the cluster is rebooted. To reboot a cluster use <a>RebootCluster</a>. </p>
        <p>Default: Uses existing setting.</p>
        <p>Constraints: The cluster parameter group must be in the same parameter group family
            that matches the cluster version.</p>")
    @as("ClusterParameterGroupName")
    clusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The new password for the cluster master user. This change is asynchronously applied
            as soon as possible. Between the time of the request and the completion of the request,
            the <code>MasterUserPassword</code> element exists in the
                <code>PendingModifiedValues</code> element of the operation response. </p>
        <note>
            <p>Operations never return the password, so this operation provides a way to
                regain access to the master user account for a cluster if the password is
                lost.</p>
        </note>
        <p>Default: Uses existing setting.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be between 8 and 64 characters in length.</p>
            </li>
            <li>
                <p>Must contain at least one uppercase letter.</p>
            </li>
            <li>
                <p>Must contain at least one lowercase letter.</p>
            </li>
            <li>
                <p>Must contain one number.</p>
            </li>
            <li>
                <p>Can be any printable ASCII character (ASCII code 33 to 126) except '
                    (single quote), \" (double quote), \\, /, @, or space.</p>
            </li>
         </ul>")
    @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>A list of virtual private cloud (VPC) security groups to be associated with the
            cluster. This change is asynchronously applied as soon as possible.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of cluster security groups to be authorized on this cluster. This change is
            asynchronously applied as soon as possible.</p>
        <p>Security groups currently associated with the cluster, and not in the list of
            groups to apply, will be revoked from the cluster.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 255 alphanumeric characters or hyphens</p>
            </li>
            <li>
                <p>First character must be a letter</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("ClusterSecurityGroups")
    clusterSecurityGroups: option<clusterSecurityGroupNameList>,
    @ocaml.doc("<p>The new number of nodes of the cluster. If you specify a new number of nodes, you
            must also specify the node type parameter.</p>
        <p>
For more information about resizing clusters, go to 
<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html\">Resizing Clusters in Amazon Redshift</a> 
in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
        
        <p>Valid Values: Integer greater than <code>0</code>.</p>")
    @as("NumberOfNodes")
    numberOfNodes: option<integerOptional>,
    @ocaml.doc("<p>The new node type of the cluster. If you specify a new node type, you must also
            specify the number of nodes parameter.</p>
        <p>
For more information about resizing clusters, go to 
<a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/rs-resize-tutorial.html\">Resizing Clusters in Amazon Redshift</a> 
in the <i>Amazon Redshift Cluster Management Guide</i>.</p>
        
        <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
            <code>dc1.large</code> | <code>dc1.8xlarge</code> | 
            <code>dc2.large</code> | <code>dc2.8xlarge</code> | 
            <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
         </p>")
    @as("NodeType")
    nodeType: option<string_>,
    @ocaml.doc("<p>The new cluster type.</p>
        <p>When you submit your cluster resize request, your existing cluster goes into a
            read-only mode. After Amazon Redshift provisions a new cluster based on your resize
            requirements, there will be outage for a period while the old cluster is deleted and
            your connection is switched to the new cluster. You can use <a>DescribeResize</a> to track the progress of the resize request. </p>
        <p>Valid Values: <code> multi-node | single-node </code>
        </p>")
    @as("ClusterType")
    clusterType: option<string_>,
    @ocaml.doc("<p>The unique identifier of the cluster to be modified.</p>
        <p>Example: <code>examplecluster</code>
        </p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "ModifyClusterCommand"
  let make = (
    ~clusterIdentifier,
    ~port=?,
    ~availabilityZone=?,
    ~availabilityZoneRelocation=?,
    ~kmsKeyId=?,
    ~encrypted=?,
    ~maintenanceTrackName=?,
    ~enhancedVpcRouting=?,
    ~elasticIp=?,
    ~publiclyAccessible=?,
    ~newClusterIdentifier=?,
    ~hsmConfigurationIdentifier=?,
    ~hsmClientCertificateIdentifier=?,
    ~allowVersionUpgrade=?,
    ~clusterVersion=?,
    ~preferredMaintenanceWindow=?,
    ~manualSnapshotRetentionPeriod=?,
    ~automatedSnapshotRetentionPeriod=?,
    ~clusterParameterGroupName=?,
    ~masterUserPassword=?,
    ~vpcSecurityGroupIds=?,
    ~clusterSecurityGroups=?,
    ~numberOfNodes=?,
    ~nodeType=?,
    ~clusterType=?,
    (),
  ) =>
    new({
      port: port,
      availabilityZone: availabilityZone,
      availabilityZoneRelocation: availabilityZoneRelocation,
      kmsKeyId: kmsKeyId,
      encrypted: encrypted,
      maintenanceTrackName: maintenanceTrackName,
      enhancedVpcRouting: enhancedVpcRouting,
      elasticIp: elasticIp,
      publiclyAccessible: publiclyAccessible,
      newClusterIdentifier: newClusterIdentifier,
      hsmConfigurationIdentifier: hsmConfigurationIdentifier,
      hsmClientCertificateIdentifier: hsmClientCertificateIdentifier,
      allowVersionUpgrade: allowVersionUpgrade,
      clusterVersion: clusterVersion,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      automatedSnapshotRetentionPeriod: automatedSnapshotRetentionPeriod,
      clusterParameterGroupName: clusterParameterGroupName,
      masterUserPassword: masterUserPassword,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      clusterSecurityGroups: clusterSecurityGroups,
      numberOfNodes: numberOfNodes,
      nodeType: nodeType,
      clusterType: clusterType,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableSnapshotCopy = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The number of days to retain newly copied snapshots in the destination AWS Region
            after they are copied from the source AWS Region. If the value is -1, the manual
            snapshot is retained indefinitely. </p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted
            cluster are copied to the destination region.</p>")
    @as("SnapshotCopyGrantName")
    snapshotCopyGrantName: option<string_>,
    @ocaml.doc("<p>The number of days to retain automated snapshots in the destination region after
            they are copied from the source region.</p>
        <p>Default: 7.</p>
        <p>Constraints: Must be at least 1 and no more than 35.</p>")
    @as("RetentionPeriod")
    retentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The destination AWS Region that you want to copy snapshots to.</p>
        <p>Constraints: Must be the name of a valid AWS Region. For more information, see
                <a href=\"https://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region\">Regions and Endpoints</a> in the Amazon Web Services General Reference.
        </p>")
    @as("DestinationRegion")
    destinationRegion: string_,
    @ocaml.doc("<p>The unique identifier of the source cluster to copy snapshots from.</p>
        <p>Constraints: Must be the valid name of an existing cluster that does not already
            have cross-region snapshot copy enabled.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "EnableSnapshotCopyCommand"
  let make = (
    ~destinationRegion,
    ~clusterIdentifier,
    ~manualSnapshotRetentionPeriod=?,
    ~snapshotCopyGrantName=?,
    ~retentionPeriod=?,
    (),
  ) =>
    new({
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      snapshotCopyGrantName: snapshotCopyGrantName,
      retentionPeriod: retentionPeriod,
      destinationRegion: destinationRegion,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableSnapshotCopy = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The unique identifier of the source cluster that you want to disable copying of
            snapshots to a destination region.</p>
        <p>Constraints: Must be the valid name of an existing cluster that has cross-region
            snapshot copy enabled.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DisableSnapshotCopyCommand"
  let make = (~clusterIdentifier, ()) => new({clusterIdentifier: clusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrderableClusterOptions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeOrderableClusterOptions</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The node type filter value. Specify this parameter to show only the available
            offerings matching the specified node type.</p>")
    @as("NodeType")
    nodeType: option<string_>,
    @ocaml.doc("<p>The version filter value. Specify this parameter to show only the available
            offerings matching the specified version.</p>
        <p>Default: All versions.</p>
        <p>Constraints: Must be one of the version returned from <a>DescribeClusterVersions</a>.</p>")
    @as("ClusterVersion")
    clusterVersion: option<string_>,
  }
  @ocaml.doc("<p>Contains the output from the <a>DescribeOrderableClusterOptions</a>
            action. </p>")
  type response = {
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>An <code>OrderableClusterOption</code> structure containing information about
            orderable options for the cluster.</p>")
    @as("OrderableClusterOptions")
    orderableClusterOptions: option<orderableClusterOptionsList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeOrderableClusterOptionsCommand"
  let make = (~marker=?, ~maxRecords=?, ~nodeType=?, ~clusterVersion=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      nodeType: nodeType,
      clusterVersion: clusterVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterTracks = {
  type t
  type request = {
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <code>DescribeClusterTracks</code> request exceed the
            value specified in <code>MaxRecords</code>, Amazon Redshift returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>An integer value for the maximum number of maintenance tracks to return.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the maintenance track. </p>") @as("MaintenanceTrackName")
    maintenanceTrackName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The starting point to return a set of response tracklist records. You can retrieve the
            next set of response records by providing the returned marker value in the
                <code>Marker</code> parameter and retrying the request.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of maintenance tracks output by the <code>DescribeClusterTracks</code>
            operation. </p>")
    @as("MaintenanceTracks")
    maintenanceTracks: option<trackList>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterTracksCommand"
  let make = (~marker=?, ~maxRecords=?, ~maintenanceTrackName=?, ()) =>
    new({marker: marker, maxRecords: maxRecords, maintenanceTrackName: maintenanceTrackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterSecurityGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching cluster security
            groups that are associated with the specified tag value or values. For example, suppose
            that you have security groups that are tagged with values called <code>admin</code> and
                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
            returns a response with the security groups that have either or both of these tag values
            associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching cluster security groups
            that are associated with the specified key or keys. For example, suppose that you have
            security groups that are tagged with keys called <code>owner</code> and
                <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the security groups that have either or both of these
            tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeClusterSecurityGroups</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>
        <p>Constraints: You can specify either the <b>ClusterSecurityGroupName</b> parameter or the <b>Marker</b> parameter, but not both. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of a cluster security group for which you are requesting details. You can
            specify either the <b>Marker</b> parameter or a <b>ClusterSecurityGroupName</b> parameter, but not both. </p>
        <p> Example: <code>securitygroup1</code>
        </p>")
    @as("ClusterSecurityGroupName")
    clusterSecurityGroupName: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of <a>ClusterSecurityGroup</a> instances. </p>")
    @as("ClusterSecurityGroups")
    clusterSecurityGroups: option<clusterSecurityGroups>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterSecurityGroupsCommand"
  let make = (
    ~tagValues=?,
    ~tagKeys=?,
    ~marker=?,
    ~maxRecords=?,
    ~clusterSecurityGroupName=?,
    (),
  ) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      clusterSecurityGroupName: clusterSecurityGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The number of days that a manual snapshot is retained. If the value is -1, the manual
            snapshot is retained indefinitely.</p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>
        <p>The default value is -1.</p>")
    @as("FinalClusterSnapshotRetentionPeriod")
    finalClusterSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The identifier of the final snapshot that is to be created immediately before
            deleting the cluster. If this parameter is provided,
                <i>SkipFinalClusterSnapshot</i> must be <code>false</code>. </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 255 alphanumeric characters.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("FinalClusterSnapshotIdentifier")
    finalClusterSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>Determines whether a final snapshot of the cluster is created before Amazon Redshift
            deletes the cluster. If <code>true</code>, a final cluster snapshot is not created. If
                <code>false</code>, a final cluster snapshot is created before the cluster is
            deleted. </p>
        <note>
            <p>The <i>FinalClusterSnapshotIdentifier</i> parameter must be
                specified if <i>SkipFinalClusterSnapshot</i> is
                <code>false</code>.</p>
        </note>
        <p>Default: <code>false</code>
        </p>")
    @as("SkipFinalClusterSnapshot")
    skipFinalClusterSnapshot: option<boolean_>,
    @ocaml.doc("<p>The identifier of the cluster to be deleted.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain lowercase characters.</p>
            </li>
            <li>
                <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DeleteClusterCommand"
  let make = (
    ~clusterIdentifier,
    ~finalClusterSnapshotRetentionPeriod=?,
    ~finalClusterSnapshotIdentifier=?,
    ~skipFinalClusterSnapshot=?,
    (),
  ) =>
    new({
      finalClusterSnapshotRetentionPeriod: finalClusterSnapshotRetentionPeriod,
      finalClusterSnapshotIdentifier: finalClusterSnapshotIdentifier,
      skipFinalClusterSnapshot: skipFinalClusterSnapshot,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateClusterSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>An array of VPC subnet IDs. A maximum of 20 subnets can be modified in a single
            request.</p>")
    @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>A description for the subnet group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The name for the subnet group. Amazon Redshift stores the value as a lowercase
            string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain no more than 255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
                <p>Must not be \"Default\".</p>
            </li>
            <li>
                <p>Must be unique for all subnet groups that are created by your AWS
                    account.</p>
            </li>
         </ul>
        <p>Example: <code>examplesubnetgroup</code>
        </p>")
    @as("ClusterSubnetGroupName")
    clusterSubnetGroupName: string_,
  }
  type response = {@as("ClusterSubnetGroup") clusterSubnetGroup: option<clusterSubnetGroup>}
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "CreateClusterSubnetGroupCommand"
  let make = (~subnetIds, ~description, ~clusterSubnetGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      subnetIds: subnetIds,
      description: description,
      clusterSubnetGroupName: clusterSubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) when it is created. Possible values include the following.</p>
        <ul>
            <li>
               <p>enabled - Use AQUA if it is available for the current AWS Region and Amazon Redshift node type.</p>
            </li>
            <li>
               <p>disabled - Don't use AQUA. </p>
            </li>
            <li>
               <p>auto - Amazon Redshift determines whether to use AQUA.</p>
            </li>
         </ul>")
    @as("AquaConfigurationStatus")
    aquaConfigurationStatus: option<aquaConfigurationStatus>,
    @ocaml.doc(
      "<p>The option to enable relocation for an Amazon Redshift cluster between Availability Zones after the cluster is created.</p>"
    )
    @as("AvailabilityZoneRelocation")
    availabilityZoneRelocation: option<booleanOptional>,
    @ocaml.doc("<p>A unique identifier for the snapshot schedule.</p>")
    @as("SnapshotScheduleIdentifier")
    snapshotScheduleIdentifier: option<string_>,
    @ocaml.doc("<p>An optional parameter for the name of the maintenance track for the cluster. If you
            don't provide a maintenance track name, the cluster is assigned to the
                <code>current</code> track.</p>")
    @as("MaintenanceTrackName")
    maintenanceTrackName: option<string_>,
    @ocaml.doc("<p>A list of AWS Identity and Access Management (IAM) roles that can be used by the
            cluster to access other AWS services. You must supply the IAM roles in their Amazon
            Resource Name (ARN) format. You can supply up to 10 IAM roles in a single
            request.</p>
        <p>A cluster can have up to 10 IAM roles associated with it at any time.</p>")
    @as("IamRoles")
    iamRoles: option<iamRoleArnList>,
    @ocaml.doc("<p>Reserved.</p>") @as("AdditionalInfo") additionalInfo: option<string_>,
    @ocaml.doc("<p>An option that specifies whether to create the cluster with enhanced VPC routing
            enabled. To create a cluster that uses enhanced VPC routing, the cluster must be in a
            VPC. For more information, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html\">Enhanced VPC Routing</a> in
            the Amazon Redshift Cluster Management Guide.</p>
        <p>If this option is <code>true</code>, enhanced VPC routing is enabled. </p>
        <p>Default: false</p>")
    @as("EnhancedVpcRouting")
    enhancedVpcRouting: option<booleanOptional>,
    @ocaml.doc("<p>The AWS Key Management Service (KMS) key ID of the encryption key that you want to
            use to encrypt data in the cluster.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A list of tag instances.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The Elastic IP (EIP) address for the cluster.</p>
        <p>Constraints: The cluster must be provisioned in EC2-VPC and publicly-accessible
            through an Internet gateway. For more information about provisioning clusters in
            EC2-VPC, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms\">Supported
                Platforms to Launch Your Cluster</a> in the Amazon Redshift Cluster Management Guide.</p>")
    @as("ElasticIp")
    elasticIp: option<string_>,
    @ocaml.doc("<p>Specifies the name of the HSM configuration that contains the information the
            Amazon Redshift cluster can use to retrieve and store keys in an HSM.</p>")
    @as("HsmConfigurationIdentifier")
    hsmConfigurationIdentifier: option<string_>,
    @ocaml.doc("<p>Specifies the name of the HSM client certificate the Amazon Redshift cluster uses to
            retrieve the data encryption keys stored in an HSM.</p>")
    @as("HsmClientCertificateIdentifier")
    hsmClientCertificateIdentifier: option<string_>,
    @ocaml.doc("<p>If <code>true</code>, the data in the cluster is encrypted at rest. </p>
        <p>Default: false</p>")
    @as("Encrypted")
    encrypted: option<booleanOptional>,
    @ocaml.doc("<p>If <code>true</code>, the cluster can be accessed from a public network. </p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The number of compute nodes in the cluster. This parameter is required when the
                <b>ClusterType</b> parameter is specified as
                <code>multi-node</code>. </p>
        <p>For information about determining how many nodes you need, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes\"> Working with
                Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
        <p>If you don't specify this parameter, you get a single-node cluster. When requesting
            a multi-node cluster, you must specify the number of nodes that you want in the
            cluster.</p>
        <p>Default: <code>1</code>
        </p>
        <p>Constraints: Value must be at least 1 and no more than 100.</p>")
    @as("NumberOfNodes")
    numberOfNodes: option<integerOptional>,
    @ocaml.doc("<p>If <code>true</code>, major version upgrades can be applied during the maintenance
            window to the Amazon Redshift engine that is running on the cluster.</p>
        <p>When a new major version of the Amazon Redshift engine is released, you can request that
            the service automatically apply upgrades during the maintenance window to the Amazon Redshift
            engine that is running on your cluster.</p>
        <p>Default: <code>true</code>
        </p>")
    @as("AllowVersionUpgrade")
    allowVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The version of the Amazon Redshift engine software that you want to deploy on the
            cluster.</p>
        <p>The version selected runs on all the nodes in the cluster.</p>
        <p>Constraints: Only version 1.0 is currently available.</p>
        <p>Example: <code>1.0</code>
        </p>")
    @as("ClusterVersion")
    clusterVersion: option<string_>,
    @ocaml.doc("<p>The port number on which the cluster accepts incoming connections.</p>
        <p>The cluster is accessible only via the JDBC and ODBC connection strings. Part of
            the connection string requires the port on which the cluster will listen for incoming
            connections.</p>
        <p>Default: <code>5439</code>
        </p>
        <p>Valid Values: <code>1150-65535</code>
        </p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The default number of days to retain a manual snapshot. If the value is -1, the
            snapshot is retained indefinitely. This setting doesn't change the retention period
            of existing snapshots.</p>
        <p>The value must be either -1 or an integer between 1 and 3,653.</p>")
    @as("ManualSnapshotRetentionPeriod")
    manualSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The number of days that automated snapshots are retained. If the value is 0,
            automated snapshots are disabled. Even if automated snapshots are disabled, you can
            still create manual snapshots when you want with <a>CreateClusterSnapshot</a>. </p>
        
        <p>You can't disable automated snapshots for RA3 node types. Set the automated retention period from 1-35 days.</p>
        <p>Default: <code>1</code>
        </p>
        <p>Constraints: Must be a value from 0 to 35.</p>")
    @as("AutomatedSnapshotRetentionPeriod")
    automatedSnapshotRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the parameter group to be associated with this cluster.</p>
        <p>Default: The default Amazon Redshift cluster parameter group. For information about the
            default parameter group, go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html\">Working with Amazon
                Redshift Parameter Groups</a>
        </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 to 255 alphanumeric characters or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("ClusterParameterGroupName")
    clusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The weekly time range (in UTC) during which automated cluster maintenance can
            occur.</p>
        <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
        </p>
        <p> Default: A 30-minute window selected at random from an 8-hour block of time per
            region, occurring on a random day of the week. For more information about the time
            blocks for each region, see <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows\">Maintenance Windows</a> in Amazon Redshift Cluster Management Guide.</p>
        <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
        <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The EC2 Availability Zone (AZ) in which you want Amazon Redshift to provision the
            cluster. For example, if you have several EC2 instances running in a specific
            Availability Zone, then you might want the cluster to be provisioned in the same zone in
            order to decrease network latency.</p>
        <p>Default: A random, system-chosen Availability Zone in the region that is specified
            by the endpoint.</p>
        <p>Example: <code>us-east-2d</code>
        </p>
        <p>Constraint: The specified Availability Zone must be in the same region as the
            current endpoint.</p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The name of a cluster subnet group to be associated with this cluster.</p>
        <p>If this parameter is not provided the resulting cluster will be deployed outside
            virtual private cloud (VPC).</p>")
    @as("ClusterSubnetGroupName")
    clusterSubnetGroupName: option<string_>,
    @ocaml.doc("<p>A list of Virtual Private Cloud (VPC) security groups to be associated with the
            cluster.</p>
        <p>Default: The default VPC security group is associated with the cluster.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of security groups to be associated with this cluster.</p>
        <p>Default: The default cluster security group for Amazon Redshift.</p>")
    @as("ClusterSecurityGroups")
    clusterSecurityGroups: option<clusterSecurityGroupNameList>,
    @ocaml.doc("<p>The password associated with the master user account for the cluster that is being
            created.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be between 8 and 64 characters in length.</p>
            </li>
            <li>
                <p>Must contain at least one uppercase letter.</p>
            </li>
            <li>
                <p>Must contain at least one lowercase letter.</p>
            </li>
            <li>
                <p>Must contain one number.</p>
            </li>
            <li>
                <p>Can be any printable ASCII character (ASCII code 33 to 126) except '
                    (single quote), \" (double quote), \\, /, @, or space.</p>
            </li>
         </ul>")
    @as("MasterUserPassword")
    masterUserPassword: string_,
    @ocaml.doc("<p>The user name associated with the master user account for the cluster that is being
            created.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must be 1 - 128 alphanumeric characters. The user name can't be
                        <code>PUBLIC</code>.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>

                <p>Cannot be a reserved word. A list of reserved words can be found in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved
                        Words</a> in the Amazon Redshift Database Developer Guide. </p>
            </li>
         </ul>")
    @as("MasterUsername")
    masterUsername: string_,
    @ocaml.doc("<p>The node type to be provisioned for the cluster. For information about node types,
            go to <a href=\"https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes\"> Working with
                Clusters</a> in the <i>Amazon Redshift Cluster Management Guide</i>. </p>
        <p>Valid Values: <code>ds2.xlarge</code> | <code>ds2.8xlarge</code> |
                <code>dc1.large</code> | <code>dc1.8xlarge</code> | 
                <code>dc2.large</code> | <code>dc2.8xlarge</code> | 
                <code>ra3.xlplus</code> |  <code>ra3.4xlarge</code> | <code>ra3.16xlarge</code>
         </p>")
    @as("NodeType")
    nodeType: string_,
    @ocaml.doc("<p>The type of the cluster. When cluster type is specified as</p>
        <ul>
            <li>
                <p>
                    <code>single-node</code>, the <b>NumberOfNodes</b>
                    parameter is not required.</p>
            </li>
            <li>
                <p>
                    <code>multi-node</code>, the <b>NumberOfNodes</b>
                    parameter is required.</p>
            </li>
         </ul>
        <p>Valid Values: <code>multi-node</code> | <code>single-node</code>
        </p>
        <p>Default: <code>multi-node</code>
        </p>")
    @as("ClusterType")
    clusterType: option<string_>,
    @ocaml.doc("<p>A unique identifier for the cluster. You use this identifier to refer to the
            cluster for any subsequent cluster operations such as deleting or modifying. The
            identifier also appears in the Amazon Redshift console.</p> 
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>Alphabetic characters must be lowercase.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
            <li>
               <p>Must be unique for all clusters within an AWS account.</p>
            </li>
         </ul>

            <p>Example: <code>myexamplecluster</code>
        </p>")
    @as("ClusterIdentifier")
    clusterIdentifier: string_,
    @ocaml.doc("<p>The name of the first database to be created when the cluster is created.</p>
        <p>To create additional databases after the cluster is created, connect to the cluster
            with a SQL client and use SQL commands to create a database. For more information, go to
                <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html\">Create
                a Database</a> in the Amazon Redshift Database Developer Guide. </p>
        <p>Default: <code>dev</code>
        </p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain 1 to 64 alphanumeric characters.</p>
            </li>
            <li>
                <p>Must contain only lowercase letters.</p>
            </li>
            <li>
                <p>Cannot be a word that is reserved by the service. A list of reserved words
                    can be found in <a href=\"https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html\">Reserved Words</a> in the
                    Amazon Redshift Database Developer Guide. </p>
            </li>
         </ul>")
    @as("DBName")
    dbname: option<string_>,
  }
  type response = {@as("Cluster") cluster: option<cluster>}
  @module("@aws-sdk/client-redshift") @new external new: request => t = "CreateClusterCommand"
  let make = (
    ~masterUserPassword,
    ~masterUsername,
    ~nodeType,
    ~clusterIdentifier,
    ~aquaConfigurationStatus=?,
    ~availabilityZoneRelocation=?,
    ~snapshotScheduleIdentifier=?,
    ~maintenanceTrackName=?,
    ~iamRoles=?,
    ~additionalInfo=?,
    ~enhancedVpcRouting=?,
    ~kmsKeyId=?,
    ~tags=?,
    ~elasticIp=?,
    ~hsmConfigurationIdentifier=?,
    ~hsmClientCertificateIdentifier=?,
    ~encrypted=?,
    ~publiclyAccessible=?,
    ~numberOfNodes=?,
    ~allowVersionUpgrade=?,
    ~clusterVersion=?,
    ~port=?,
    ~manualSnapshotRetentionPeriod=?,
    ~automatedSnapshotRetentionPeriod=?,
    ~clusterParameterGroupName=?,
    ~preferredMaintenanceWindow=?,
    ~availabilityZone=?,
    ~clusterSubnetGroupName=?,
    ~vpcSecurityGroupIds=?,
    ~clusterSecurityGroups=?,
    ~clusterType=?,
    ~dbname=?,
    (),
  ) =>
    new({
      aquaConfigurationStatus: aquaConfigurationStatus,
      availabilityZoneRelocation: availabilityZoneRelocation,
      snapshotScheduleIdentifier: snapshotScheduleIdentifier,
      maintenanceTrackName: maintenanceTrackName,
      iamRoles: iamRoles,
      additionalInfo: additionalInfo,
      enhancedVpcRouting: enhancedVpcRouting,
      kmsKeyId: kmsKeyId,
      tags: tags,
      elasticIp: elasticIp,
      hsmConfigurationIdentifier: hsmConfigurationIdentifier,
      hsmClientCertificateIdentifier: hsmClientCertificateIdentifier,
      encrypted: encrypted,
      publiclyAccessible: publiclyAccessible,
      numberOfNodes: numberOfNodes,
      allowVersionUpgrade: allowVersionUpgrade,
      clusterVersion: clusterVersion,
      port: port,
      manualSnapshotRetentionPeriod: manualSnapshotRetentionPeriod,
      automatedSnapshotRetentionPeriod: automatedSnapshotRetentionPeriod,
      clusterParameterGroupName: clusterParameterGroupName,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      availabilityZone: availabilityZone,
      clusterSubnetGroupName: clusterSubnetGroupName,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      clusterSecurityGroups: clusterSecurityGroups,
      masterUserPassword: masterUserPassword,
      masterUsername: masterUsername,
      nodeType: nodeType,
      clusterType: clusterType,
      clusterIdentifier: clusterIdentifier,
      dbname: dbname,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusters = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching clusters that are
            associated with the specified tag value or values. For example, suppose that you have
            clusters that are tagged with values called <code>admin</code> and <code>test</code>. If
            you specify both of these tag values in the request, Amazon Redshift returns a response with
            the clusters that have either or both of these tag values associated with
            them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching clusters that are
            associated with the specified key or keys. For example, suppose that you have clusters
            that are tagged with keys called <code>owner</code> and <code>environment</code>. If you
            specify both of these tag keys in the request, Amazon Redshift returns a response with the
            clusters that have either or both of these tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeClusters</a> request exceed the
            value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>
        <p>Constraints: You can specify either the <b>ClusterIdentifier</b> parameter or the <b>Marker</b> parameter, but not both. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The unique identifier of a cluster whose properties you are requesting. This
            parameter is case sensitive.</p>
        <p>The default is that all clusters defined for an account are returned.</p>")
    @as("ClusterIdentifier")
    clusterIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Contains the output from the <a>DescribeClusters</a> action. </p>")
  type response = {
    @ocaml.doc("<p>A list of <code>Cluster</code> objects, where each object describes one cluster.
        </p>")
    @as("Clusters")
    clusters: option<clusterList>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new external new: request => t = "DescribeClustersCommand"
  let make = (~tagValues=?, ~tagKeys=?, ~marker=?, ~maxRecords=?, ~clusterIdentifier=?, ()) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      clusterIdentifier: clusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeClusterSubnetGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A tag value or values for which you want to return all matching cluster subnet
            groups that are associated with the specified tag value or values. For example, suppose
            that you have subnet groups that are tagged with values called <code>admin</code> and
                <code>test</code>. If you specify both of these tag values in the request, Amazon Redshift
            returns a response with the subnet groups that have either or both of these tag values
            associated with them.</p>")
    @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>A tag key or keys for which you want to return all matching cluster subnet groups
            that are associated with the specified key or keys. For example, suppose that you have
            subnet groups that are tagged with keys called <code>owner</code> and
                <code>environment</code>. If you specify both of these tag keys in the request,
            Amazon Redshift returns a response with the subnet groups that have either or both of these
            tag keys associated with them.</p>")
    @as("TagKeys")
    tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>An optional parameter that specifies the starting point to return a set of response
            records. When the results of a <a>DescribeClusterSubnetGroups</a> request
            exceed the value specified in <code>MaxRecords</code>, AWS returns a value in the
                <code>Marker</code> field of the response. You can retrieve the next set of response
            records by providing the returned marker value in the <code>Marker</code> parameter and
            retrying the request. </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of response records to return in each call. If the number of
            remaining response records exceeds the specified <code>MaxRecords</code> value, a value
            is returned in a <code>marker</code> field of the response. You can retrieve the next
            set of records by retrying the command with the returned marker value. </p>
        <p>Default: <code>100</code>
        </p>
        <p>Constraints: minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The name of the cluster subnet group for which information is requested.</p>")
    @as("ClusterSubnetGroupName")
    clusterSubnetGroupName: option<string_>,
  }
  @ocaml.doc("<p>Contains the output from the <a>DescribeClusterSubnetGroups</a> action.
        </p>")
  type response = {
    @ocaml.doc("<p>A list of <a>ClusterSubnetGroup</a> instances. </p>") @as("ClusterSubnetGroups")
    clusterSubnetGroups: option<clusterSubnetGroups>,
    @ocaml.doc("<p>A value that indicates the starting point for the next set of response records in a
            subsequent request. If a value is returned in a response, you can retrieve the next set
            of records by providing this returned marker value in the <code>Marker</code> parameter
            and retrying the command. If the <code>Marker</code> field is empty, all response
            records have been retrieved for the request. </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-redshift") @new
  external new: request => t = "DescribeClusterSubnetGroupsCommand"
  let make = (~tagValues=?, ~tagKeys=?, ~marker=?, ~maxRecords=?, ~clusterSubnetGroupName=?, ()) =>
    new({
      tagValues: tagValues,
      tagKeys: tagKeys,
      marker: marker,
      maxRecords: maxRecords,
      clusterSubnetGroupName: clusterSubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
