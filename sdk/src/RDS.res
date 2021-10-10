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
@ocaml.doc("<p>Information about the virtual private network (VPN) between the VMware vSphere cluster and the AWS website.</p>
        <p>For more information about RDS on VMware, see the 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\">
                RDS on VMware User Guide.</a>
         </p>")
type vpnDetails = {
  @ocaml.doc("<p>The state of the VPN.</p>") @as("VpnState") vpnState: option<string_>,
  @ocaml.doc("<p>The name of the VPN.</p>") @as("VpnName") vpnName: option<string_>,
  @ocaml.doc("<p>The preshared key (PSK) for the VPN.</p>") @as("VpnPSK")
  vpnPSK: option<stringSensitive>,
  @ocaml.doc("<p>The IP address of network traffic from AWS to your on-premises data center.</p>")
  @as("VpnGatewayIp")
  vpnGatewayIp: option<string_>,
  @ocaml.doc(
    "<p>The IP address of network traffic from your on-premises data center. A custom AZ receives the network traffic.</p>"
  )
  @as("VpnTunnelOriginatorIP")
  vpnTunnelOriginatorIP: option<string_>,
  @ocaml.doc("<p>The ID of the VPN.</p>") @as("VpnId") vpnId: option<string_>,
}
@ocaml.doc(
  "<p>This data type is used as a response element for queries on VPC security group membership.</p>"
)
type vpcSecurityGroupMembership = {
  @ocaml.doc("<p>The status of the VPC security group.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The name of the VPC security group.</p>") @as("VpcSecurityGroupId")
  vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
@ocaml.doc(
  "<p>Returns the details of authentication used by a proxy to log in as a specific database user.</p>"
)
type userAuthConfigInfo = {
  @ocaml.doc(
    "<p>Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.</p>"
  )
  @as("IAMAuth")
  iamauth: option<iamauthMode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate
        to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.</p>")
  @as("SecretArn")
  secretArn: option<string_>,
  @ocaml.doc(
    "<p>The type of authentication that the proxy uses for connections from the proxy to the underlying database.</p>"
  )
  @as("AuthScheme")
  authScheme: option<authScheme>,
  @ocaml.doc("<p>The name of the database user to which the proxy connects.</p>") @as("UserName")
  userName: option<string_>,
  @ocaml.doc(
    "<p>A user-specified description about the authentication used by a proxy to log in as a specific database user.</p>"
  )
  @as("Description")
  description: option<string_>,
}
@ocaml.doc(
  "<p>Specifies the details of authentication used by a proxy to log in as a specific database user.</p>"
)
type userAuthConfig = {
  @ocaml.doc(
    "<p>Whether to require or disallow AWS Identity and Access Management (IAM) authentication for connections to the proxy.</p>"
  )
  @as("IAMAuth")
  iamauth: option<iamauthMode>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) representing the secret that the proxy uses to authenticate
        to the RDS DB instance or Aurora DB cluster. These secrets are stored within Amazon Secrets Manager.</p>")
  @as("SecretArn")
  secretArn: option<string_>,
  @ocaml.doc(
    "<p>The type of authentication that the proxy uses for connections from the proxy to the underlying database.</p>"
  )
  @as("AuthScheme")
  authScheme: option<authScheme>,
  @ocaml.doc("<p>The name of the database user to which the proxy connects.</p>") @as("UserName")
  userName: option<string_>,
  @ocaml.doc(
    "<p>A user-specified description about the authentication used by a proxy to log in as a specific database user.</p>"
  )
  @as("Description")
  description: option<string_>,
}
@ocaml.doc("<p>A time zone associated with a 
            <code>DBInstance</code> 
            or a <code>DBSnapshot</code>.
            This data type is an element in the response to  
            the <code>DescribeDBInstances</code>, 
            the <code>DescribeDBSnapshots</code>,
            and the <code>DescribeDBEngineVersions</code>
            actions.
        </p>")
type timezone = {
  @ocaml.doc("<p>The name of the time zone.</p>") @as("TimezoneName") timezoneName: option<string_>,
}
@ocaml.doc("<p>Information about the connection health of an RDS Proxy target.</p>")
type targetHealth = {
  @ocaml.doc("<p>A description of the health of the RDS Proxy target. 
            If the <code>State</code> is <code>AVAILABLE</code>, a description is not included.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The reason for the current health <code>State</code> of the RDS Proxy target.</p>")
  @as("Reason")
  reason: option<targetHealthReason>,
  @ocaml.doc("<p>The current state of the connection health lifecycle for the RDS Proxy target.
           The following is a typical lifecycle example for the states of an RDS Proxy target:
       </p>
         <p>
            <code>registering</code> > <code>unavailable</code> > <code>available</code> > <code>unavailable</code> > <code>available</code>
         </p>")
  @as("State")
  state: option<targetState>,
}
@ocaml.doc("<p>Metadata assigned to an Amazon RDS resource consisting of a key-value pair.</p>")
type tag = {
  @ocaml.doc(
    "<p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-@]*)$\").</p>"
  )
  @as("Value")
  value: option<string_>,
  @ocaml.doc(
    "<p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can only contain only the set of Unicode letters, digits, white-space, '_', '.', ':', '/', '=', '+', '-', '@' (Java regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-@]*)$\").</p>"
  )
  @as("Key")
  key: option<string_>,
}
type subnetIdentifierList = array<string_>
type stringList = array<string_>
@ocaml.doc(
  "<p>Contains an AWS Region name as the result of a successful call to the <code>DescribeSourceRegions</code> action.</p>"
)
type sourceRegion = {
  @ocaml.doc(
    "<p>Whether the source AWS Region supports replicating automated backups to the current AWS Region.</p>"
  )
  @as("SupportsDBInstanceAutomatedBackupsReplication")
  supportsDBInstanceAutomatedBackupsReplication: option<boolean_>,
  @ocaml.doc("<p>The status of the source AWS Region.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The endpoint for the source AWS Region endpoint.</p>") @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc("<p>The name of the source AWS Region.</p>") @as("RegionName")
  regionName: option<string_>,
}
type sourceIdsList = array<string_>
@ocaml.doc("<p>Shows the scaling configuration for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html\">Using Amazon Aurora Serverless</a> in the 
            <i>Amazon Aurora User Guide</i>.</p>")
type scalingConfigurationInfo = {
  @ocaml.doc("<p>The timeout action of a call to <code>ModifyCurrentDBClusterCapacity</code>, either 
                <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>")
  @as("TimeoutAction")
  timeoutAction: option<string_>,
  @ocaml.doc("<p>The remaining amount of time, in seconds, before the Aurora DB cluster in
                <code>serverless</code> mode is paused. A DB cluster can be paused only when
            it's idle (it has no connections).</p>")
  @as("SecondsUntilAutoPause")
  secondsUntilAutoPause: option<integerOptional>,
  @ocaml.doc("<p>A value that indicates whether automatic pause is allowed for the Aurora DB cluster
            in <code>serverless</code> DB engine mode.</p>    
        <p>When the value is set to false for an Aurora Serverless DB cluster, the DB cluster automatically resumes.</p>")
  @as("AutoPause")
  autoPause: option<booleanOptional>,
  @ocaml.doc(
    "<p>The maximum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>"
  )
  @as("MaxCapacity")
  maxCapacity: option<integerOptional>,
  @ocaml.doc("<p>The maximum capacity for the Aurora DB cluster in <code>serverless</code> DB engine
            mode.</p>")
  @as("MinCapacity")
  minCapacity: option<integerOptional>,
}
@ocaml.doc("<p>Contains the scaling configuration of an Aurora Serverless DB cluster.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html\">Using Amazon Aurora Serverless</a> in the 
            <i>Amazon Aurora User Guide</i>.</p>")
type scalingConfiguration = {
  @ocaml.doc("<p>The action to take when the timeout is reached, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>
        <p>
            <code>ForceApplyCapacityChange</code> sets the capacity to the specified value as soon as possible.</p>
        <p>
            <code>RollbackCapacityChange</code>, the default, ignores the capacity change if a scaling point isn't found in the timeout period.</p>
        <important>
            <p>If you specify <code>ForceApplyCapacityChange</code>, connections that 
                prevent Aurora Serverless from finding a scaling point might be dropped.</p>
        </important>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.how-it-works.html#aurora-serverless.how-it-works.auto-scaling\">
                    Autoscaling for Aurora Serverless</a> in the <i>Amazon Aurora User Guide</i>.</p>")
  @as("TimeoutAction")
  timeoutAction: option<string_>,
  @ocaml.doc("<p>The time, in seconds, before an Aurora DB cluster in <code>serverless</code> mode is paused.</p>
        <p>Specify a value between 300 and 86,400 seconds.</p>")
  @as("SecondsUntilAutoPause")
  secondsUntilAutoPause: option<integerOptional>,
  @ocaml.doc("<p>A value that indicates whether to allow or disallow automatic pause for an Aurora DB cluster in <code>serverless</code> DB engine mode. 
            A DB cluster can be paused only when it's idle (it has no connections).</p>
        <note>
            <p>If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. 
                In this case, the DB cluster is restored when there is a request to connect to it. </p>
        </note>")
  @as("AutoPause")
  autoPause: option<booleanOptional>,
  @ocaml.doc("<p>The maximum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
        <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
        <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p>
        <p>The maximum capacity must be greater than or equal to the minimum capacity.</p>")
  @as("MaxCapacity")
  maxCapacity: option<integerOptional>,
  @ocaml.doc("<p>The minimum capacity for an Aurora DB cluster in <code>serverless</code> DB engine mode.</p>
        <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
        <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p>
        <p>The minimum capacity must be less than or equal to the maximum capacity.</p>")
  @as("MinCapacity")
  minCapacity: option<integerOptional>,
}
@ocaml.doc("<p>Earliest and latest time an instance can be restored to:</p>")
type restoreWindow = {
  @ocaml.doc("<p>The latest time you can restore an instance to.</p>") @as("LatestTime")
  latestTime: option<tstamp>,
  @ocaml.doc("<p>The earliest time you can restore an instance to.</p>") @as("EarliestTime")
  earliestTime: option<tstamp>,
}
@ocaml.doc("<p>
            This data type is used as a response element in the 
            <code>DescribeReservedDBInstances</code> and <code>DescribeReservedDBInstancesOfferings</code> actions.
        </p>")
type recurringCharge = {
  @ocaml.doc("<p>The frequency of the recurring charge.</p>") @as("RecurringChargeFrequency")
  recurringChargeFrequency: option<string_>,
  @ocaml.doc("<p>The amount of the recurring charge.</p>") @as("RecurringChargeAmount")
  recurringChargeAmount: option<double>,
}
type readersArnList = array<string_>
type readReplicaIdentifierList = array<string_>
type readReplicaDBInstanceIdentifierList = array<string_>
type readReplicaDBClusterIdentifierList = array<string_>
@ocaml.doc("<p>A range of integer values.</p>")
type range = {
  @ocaml.doc("<p>The step value for the range.
            For example, if you have a range of 5,000 to 10,000,
            with a step value of 1,000,
            the valid values start at 5,000 and step up by 1,000.
            Even though 7,500 is within the range,
            it isn't a valid value for the range.
            The valid values are 5,000, 6,000, 7,000, 8,000...
        </p>")
  @as("Step")
  step: option<integerOptional>,
  @ocaml.doc("<p>The maximum value in the range.</p>") @as("To") to: option<integer_>,
  @ocaml.doc("<p>The minimum value in the range.</p>") @as("From") from: option<integer_>,
}
@ocaml.doc("<p>Contains the processor features of a DB instance class.</p>
        <p>To specify the number of CPU cores, use the <code>coreCount</code> feature name 
            for the <code>Name</code> parameter. To specify the number of threads per core, use the
            <code>threadsPerCore</code> feature name for the <code>Name</code> parameter.</p>
        <p>You can set the processor features of the DB instance class for a DB instance when you
            call one of the following actions:</p>
        <ul>
            <li>
                <p>
                  <code>CreateDBInstance</code>
               </p>
            </li>
            <li>
                <p>
                  <code>ModifyDBInstance</code>
               </p>
            </li>
            <li>
                <p>
                  <code>RestoreDBInstanceFromDBSnapshot</code>
               </p>
            </li>
            <li>
                <p>
                  <code>RestoreDBInstanceFromS3</code>
               </p>
            </li>
            <li>
                <p>
                  <code>RestoreDBInstanceToPointInTime</code>
               </p>
            </li>
         </ul>
        <p>You can view the valid processor values for a particular instance class by calling the
                <code>DescribeOrderableDBInstanceOptions</code> action and specifying the
            instance class for the <code>DBInstanceClass</code> parameter.</p>
        <p>In addition, you can use the following actions for DB instance class processor information:</p>
        <ul>
            <li>
                <p>
                  <code>DescribeDBInstances</code>
               </p>
            </li>
            <li>
                <p>
                  <code>DescribeDBSnapshots</code>
               </p>
            </li>
            <li>
                <p>
                  <code>DescribeValidDBInstanceModifications</code>
               </p>
            </li>
         </ul>
        <p>If you call <code>DescribeDBInstances</code>, <code>ProcessorFeature</code> returns
            non-null values only if the following conditions are met:</p>
        <ul>
            <li>
               <p>You are accessing an Oracle DB instance.</p>
            </li>
            <li>
                <p>Your Oracle DB instance class supports configuring the number of CPU cores and threads per core.</p>
            </li>
            <li>
               <p>The current number CPU cores and threads is set to a non-default value.</p>
            </li>
         </ul>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor\">Configuring the
                Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide.
            </i>
         </p>")
type processorFeature = {
  @ocaml.doc("<p>The value of a processor feature name.</p>") @as("Value") value: option<string_>,
  @ocaml.doc(
    "<p>The name of the processor feature. Valid names are <code>coreCount</code> and <code>threadsPerCore</code>.</p>"
  )
  @as("Name")
  name: option<string_>,
}
@ocaml.doc("<p>Provides information about a pending maintenance action for a resource.</p>")
type pendingMaintenanceAction = {
  @ocaml.doc("<p>A description providing more detail about the maintenance action.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The effective date when the pending maintenance action is applied 
           to the resource. This date takes into account opt-in requests received from
           the <code>ApplyPendingMaintenanceAction</code> API, the <code>AutoAppliedAfterDate</code>,
           and the <code>ForcedApplyDate</code>. This value is blank if an 
           opt-in request has not been received and nothing has been specified as
           <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>")
  @as("CurrentApplyDate")
  currentApplyDate: option<tstamp>,
  @ocaml.doc("<p>Indicates the type of opt-in request that has been received for the resource.</p>")
  @as("OptInStatus")
  optInStatus: option<string_>,
  @ocaml.doc("<p>The date when the maintenance action is automatically applied.</p>
         <p>On this date, the maintenance action is applied to the resource as soon as possible, 
            regardless of the maintenance window for the resource. There might be a delay of 
            one or more days from this date before the maintenance action is applied.</p>")
  @as("ForcedApplyDate")
  forcedApplyDate: option<tstamp>,
  @ocaml.doc("<p>The date of the maintenance window when the action is applied.
           The maintenance action is applied to the resource during
           its first maintenance window after this date.</p>")
  @as("AutoAppliedAfterDate")
  autoAppliedAfterDate: option<tstamp>,
  @ocaml.doc("<p>The type of pending maintenance action that is available for the resource. 
          Valid actions are <code>system-update</code>, <code>db-upgrade</code>, <code>hardware-maintenance</code>, 
          and <code>ca-certificate-rotation</code>.</p>")
  @as("Action")
  action: option<string_>,
}
@ocaml.doc("<p>A data type that represents an Outpost.</p>
         <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Amazon RDS on AWS Outposts</a> 
          in the <i>Amazon RDS User Guide.</i>
         </p>")
type outpost = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Outpost.</p>") @as("Arn")
  arn: option<string_>,
}
type optionsDependedOn = array<string_>
type optionsConflictsWith = array<string_>
@ocaml.doc("<p>The version for an option. Option group option versions are returned by 
            the <code>DescribeOptionGroupOptions</code> action.</p>")
type optionVersion = {
  @ocaml.doc(
    "<p>True if the version is the default version of the option, and otherwise false.</p>"
  )
  @as("IsDefault")
  isDefault: option<boolean_>,
  @ocaml.doc("<p>The version of the option.</p>") @as("Version") version: option<string_>,
}
@ocaml.doc(
  "<p>Option settings are the actual settings being applied or configured for that option. It is used when you modify an option group or describe option groups. For example, the NATIVE_NETWORK_ENCRYPTION option has a setting called SQLNET.ENCRYPTION_SERVER that can have several different values.</p>"
)
type optionSetting = {
  @ocaml.doc("<p>Indicates if the option setting is part of a collection.</p>") @as("IsCollection")
  isCollection: option<boolean_>,
  @ocaml.doc(
    "<p>A Boolean value that, when true, indicates the option setting can be modified from the default.</p>"
  )
  @as("IsModifiable")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>The allowed values of the option setting.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The data type of the option setting.</p>") @as("DataType")
  dataType: option<string_>,
  @ocaml.doc("<p>The DB engine specific parameter type.</p>") @as("ApplyType")
  applyType: option<string_>,
  @ocaml.doc("<p>The description of the option setting.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The default value of the option setting.</p>") @as("DefaultValue")
  defaultValue: option<string_>,
  @ocaml.doc("<p>The current value of the option setting.</p>") @as("Value") value: option<string_>,
  @ocaml.doc("<p>The name of the option that has settings that you can set.</p>") @as("Name")
  name: option<string_>,
}
type optionNamesList = array<string_>
@ocaml.doc("<p>Provides information on the option groups the DB instance is a member of.</p>")
type optionGroupMembership = {
  @ocaml.doc("<p>The status of the DB instance's option group membership. Valid values are: 
      <code>in-sync</code>, 
      <code>pending-apply</code>, 
      <code>pending-removal</code>, 
      <code>pending-maintenance-apply</code>, 
      <code>pending-maintenance-removal</code>, 
      <code>applying</code>, 
      <code>removing</code>, 
      and <code>failed</code>.
        </p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the option group that the instance belongs to.</p>")
  @as("OptionGroupName")
  optionGroupName: option<string_>,
}
@ocaml.doc(
  "<p>The minimum DB engine version required for each corresponding allowed value for an option setting.</p>"
)
type minimumEngineVersionPerAllowedValue = {
  @ocaml.doc("<p>The minimum DB engine version required for the allowed value.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>The allowed value for an option setting.</p>") @as("AllowedValue")
  allowedValue: option<string_>,
}
type logTypeList = array<string_>
type keyList = array<string_>
@ocaml.doc("<p>Contains the cause of an installation media failure. Installation media is used 
          for a DB engine that requires an on-premises 
          customer provided license, such as Microsoft SQL Server.</p>")
type installationMediaFailureCause = {
  @ocaml.doc("<p>The reason that an installation media import failed.</p>") @as("Message")
  message: option<string_>,
}
@ocaml.doc("<p>
        This data type is used as a response element in the <code>DescribeDBSecurityGroups</code> action.
        </p>")
type iprange = {
  @ocaml.doc("<p>Specifies the IP range.</p>") @as("CIDRIP") cidrip: option<string_>,
  @ocaml.doc(
    "<p>Specifies the status of the IP range. Status can be \"authorizing\", \"authorized\", \"revoking\", and \"revoked\".</p>"
  )
  @as("Status")
  status: option<string_>,
}
type filterValueList = array<string_>
type featureNameList = array<string_>
@ocaml.doc("<p>Contains the state of scheduled or in-process failover operations on an
      Aurora global database (<a>GlobalCluster</a>). This Data type is empty unless a failover
      operation is scheduled or is currently underway on the Aurora global database. </p>")
type failoverState = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being promoted, and which is associated
     with this state.</p>")
  @as("ToDbClusterArn")
  toDbClusterArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Aurora DB cluster that is currently being demoted, and which is associated with this
       state. </p>")
  @as("FromDbClusterArn")
  fromDbClusterArn: option<string_>,
  @ocaml.doc("<p>The current status of the Aurora global database (<a>GlobalCluster</a>). Possible values are as follows:
    </p>
         <ul>
            <li>
               <p>pending  A request to fail over the Aurora global database (<a>GlobalCluster</a>) has been received by the service. The
        <code>GlobalCluster</code>'s primary DB cluster and the specified secondary DB cluster are being verified before the failover
        process can start.</p>
            </li>
            <li>
               <p>failing-over  This status covers the range of Aurora internal operations that take place during the failover process, such
        as demoting the primary Aurora DB cluster, promoting the secondary Aurora DB, and synchronizing replicas. </p>
            </li>
            <li>
               <p>cancelling  The request to fail over the Aurora global database (<a>GlobalCluster</a>) was cancelled and the primary
        Aurora DB cluster and the selected secondary Aurora DB cluster are returning to their previous states. 
      </p>
            </li>
         </ul>")
  @as("Status")
  status: option<failoverStatus>,
}
type eventCategoriesList = array<string_>
type engineModeList = array<string_>
@ocaml.doc("<p>This data type represents the information you need to connect to an Amazon RDS DB instance.
      This data type is used as a response element in the following actions:</p>
         <ul>
            <li>
               <p>
                  <code>CreateDBInstance</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeDBInstances</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DeleteDBInstance</code>
               </p>
            </li>
         </ul>
         <p>For the data structure that represents Amazon Aurora DB cluster endpoints,
        see <code>DBClusterEndpoint</code>.</p>")
type endpoint = {
  @ocaml.doc("<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>")
  @as("HostedZoneId")
  hostedZoneId: option<string_>,
  @ocaml.doc("<p>Specifies the port that the database engine is listening on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Specifies the DNS address of the DB instance.</p>") @as("Address")
  address: option<string_>,
}
@ocaml.doc("<p>This data type is used as a response element in the following actions:</p>
         <ul>
            <li>
               <p>
                  <code>AuthorizeDBSecurityGroupIngress</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeDBSecurityGroups</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RevokeDBSecurityGroupIngress</code>
               </p>
            </li>
         </ul>")
type ec2SecurityGroup = {
  @ocaml.doc("<p>
        Specifies the AWS ID of the owner of the EC2 security group
        specified in the <code>EC2SecurityGroupName</code> field.
        </p>")
  @as("EC2SecurityGroupOwnerId")
  ec2SecurityGroupOwnerId: option<string_>,
  @ocaml.doc("<p>Specifies the id of the EC2 security group.</p>") @as("EC2SecurityGroupId")
  ec2SecurityGroupId: option<string_>,
  @ocaml.doc("<p>Specifies the name of the EC2 security group.</p>") @as("EC2SecurityGroupName")
  ec2SecurityGroupName: option<string_>,
  @ocaml.doc(
    "<p>Provides the status of the EC2 security group. Status can be \"authorizing\", \"authorized\", \"revoking\", and \"revoked\".</p>"
  )
  @as("Status")
  status: option<string_>,
}
@ocaml.doc("<p>A range of double values.</p>")
type doubleRange = {
  @ocaml.doc("<p>The maximum value in the range.</p>") @as("To") to: option<double>,
  @ocaml.doc("<p>The minimum value in the range.</p>") @as("From") from: option<double>,
}
@ocaml.doc(
  "<p>An Active Directory Domain membership record associated with the DB instance or cluster.</p>"
)
type domainMembership = {
  @ocaml.doc(
    "<p>The name of the IAM role to be used when making API calls to the Directory Service.</p>"
  )
  @as("IAMRoleName")
  iamroleName: option<string_>,
  @ocaml.doc("<p>The fully qualified domain name of the Active Directory Domain.</p>") @as("FQDN")
  fqdn: option<string_>,
  @ocaml.doc(
    "<p>The status of the Active Directory Domain membership for the DB instance or cluster. Values include joined, pending-join, failed, and so on.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The identifier of the Active Directory Domain.</p>") @as("Domain")
  domain: option<string_>,
}
@ocaml.doc(
  "<p>This data type is used as a response element to <code>DescribeDBLogFiles</code>.</p>"
)
type describeDBLogFilesDetails = {
  @ocaml.doc("<p>The size, in bytes, of the log file for the specified DB instance.</p>")
  @as("Size")
  size: option<long>,
  @ocaml.doc("<p>A POSIX timestamp when the last log entry was written.</p>") @as("LastWritten")
  lastWritten: option<long>,
  @ocaml.doc("<p>The name of the log file for the specified DB instance.</p>") @as("LogFileName")
  logFileName: option<string_>,
}
type dbsecurityGroupNameList = array<string_>
@ocaml.doc("<p>This data type is used as a response element in the following actions:</p>
         <ul>
            <li>
               <p>
                  <code>ModifyDBInstance</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RebootDBInstance</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RestoreDBInstanceFromDBSnapshot</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RestoreDBInstanceToPointInTime</code>
               </p>
            </li>
         </ul>")
type dbsecurityGroupMembership = {
  @ocaml.doc("<p>The status of the DB security group.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The name of the DB security group.</p>") @as("DBSecurityGroupName")
  dbsecurityGroupName: option<string_>,
}
@ocaml.doc("<p>The status of the DB parameter group.</p>
         <p>This data type is used as a response element in the following actions:</p>
         <ul>
            <li>
               <p>
                  <code>CreateDBInstance</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CreateDBInstanceReadReplica</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DeleteDBInstance</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ModifyDBInstance</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RebootDBInstance</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RestoreDBInstanceFromDBSnapshot</code>
               </p>
            </li>
         </ul>")
type dbparameterGroupStatus = {
  @ocaml.doc("<p>The status of parameter updates.</p>") @as("ParameterApplyStatus")
  parameterApplyStatus: option<string_>,
  @ocaml.doc("<p>The name of the DB parameter group.</p>") @as("DBParameterGroupName")
  dbparameterGroupName: option<string_>,
}
@ocaml.doc("<p>Contains the details of an Amazon RDS DB parameter group.
        </p>
         <p>This data type is used as a response element in the <code>DescribeDBParameterGroups</code> action.
        </p>")
type dbparameterGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB parameter group.</p>")
  @as("DBParameterGroupArn")
  dbparameterGroupArn: option<string_>,
  @ocaml.doc("<p>Provides the customer-specified description for this DB parameter group.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc(
    "<p>The name of the DB parameter group family that this DB parameter group is compatible with.</p>"
  )
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The name of the DB parameter group.</p>") @as("DBParameterGroupName")
  dbparameterGroupName: option<string_>,
}
@ocaml.doc("<p>Provides a list of status information for a DB instance.</p>")
type dbinstanceStatusInfo = {
  @ocaml.doc(
    "<p>Details of the error if there is an error for the instance. If the instance isn't in an error state, this value is blank.</p>"
  )
  @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>Status of the DB instance. For a StatusType of read replica, the values can be
            replicating, replication stop point set, replication stop point reached, error, stopped,
            or terminated.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc(
    "<p>Boolean value that is true if the instance is operating normally, or false if the instance is in an error state.</p>"
  )
  @as("Normal")
  normal: option<boolean_>,
  @ocaml.doc("<p>This value is currently \"read replication.\"</p>") @as("StatusType")
  statusType: option<string_>,
}
@ocaml.doc(
  "<p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB instance.</p>"
)
type dbinstanceRole = {
  @ocaml.doc("<p>Describes the state of association between the IAM role and the DB instance. The Status property returns one of the following
            values:</p>
        <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - the IAM role ARN is associated with the DB instance and can be used to
                access other AWS services on your behalf.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - the IAM role ARN is being associated with the DB instance.</p>
            </li>
            <li>
               <p>
                  <code>INVALID</code> - the IAM role ARN is associated with the DB instance, but the DB instance is unable
                to assume the IAM role in order to access other AWS services on your behalf.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The name of the feature associated with the AWS Identity and Access Management (IAM) role.
            For the list of supported feature names, see <code>DBEngineVersion</code>.
        </p>")
  @as("FeatureName")
  featureName: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB
            instance.</p>")
  @as("RoleArn")
  roleArn: option<string_>,
}
@ocaml.doc(
  "<p>Automated backups of a DB instance replicated to another AWS Region. They consist of system backups, transaction logs, and database instance properties.</p>"
)
type dbinstanceAutomatedBackupsReplication = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replicated automated backups.</p>")
  @as("DBInstanceAutomatedBackupsArn")
  dbinstanceAutomatedBackupsArn: option<string_>,
}
@ocaml.doc(
  "<p>Describes an AWS Identity and Access Management (IAM) role that is associated with a DB cluster.</p>"
)
type dbclusterRole = {
  @ocaml.doc("<p>The name of the feature associated with the AWS Identity and Access Management (IAM) role.
            For the list of supported feature names, see <a>DBEngineVersion</a>.
        </p>")
  @as("FeatureName")
  featureName: option<string_>,
  @ocaml.doc("<p>Describes the state of association between the IAM role and the DB cluster. The Status property returns one of the following
        values:</p>
        <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be used to
            access other AWS services on your behalf.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - the IAM role ARN is being associated with the DB cluster.</p>
            </li>
            <li>
               <p>
                  <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB cluster is unable
                to assume the IAM role in order to access other AWS services on your behalf.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB cluster.</p>"
  )
  @as("RoleArn")
  roleArn: option<string_>,
}
@ocaml.doc("<p>Contains the details of an Amazon RDS DB cluster parameter group.
        </p>
         <p>This data type is used as a response element in the <code>DescribeDBClusterParameterGroups</code> action.
        </p>")
type dbclusterParameterGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>")
  @as("DBClusterParameterGroupArn")
  dbclusterParameterGroupArn: option<string_>,
  @ocaml.doc(
    "<p>Provides the customer-specified description for this DB cluster parameter group.</p>"
  )
  @as("Description")
  description: option<string_>,
  @ocaml.doc(
    "<p>The name of the DB parameter group family that this DB cluster parameter group is compatible with.</p>"
  )
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The name of the DB cluster parameter group.</p>")
  @as("DBClusterParameterGroupName")
  dbclusterParameterGroupName: option<string_>,
}
@ocaml.doc("<p>Contains status information for a DB cluster option group.</p>")
type dbclusterOptionGroupStatus = {
  @ocaml.doc("<p>Specifies the status of the DB cluster option group.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies the name of the DB cluster option group.</p>")
  @as("DBClusterOptionGroupName")
  dbclusterOptionGroupName: option<string_>,
}
@ocaml.doc("<p>Contains information about an instance that is part of a DB cluster.</p>")
type dbclusterMember = {
  @ocaml.doc("<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance 
      after a failure of the existing primary instance. For more information, 
      see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\">
          Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.
    </p>")
  @as("PromotionTier")
  promotionTier: option<integerOptional>,
  @ocaml.doc(
    "<p>Specifies the status of the DB cluster parameter group for this member of the DB cluster.</p>"
  )
  @as("DBClusterParameterGroupStatus")
  dbclusterParameterGroupStatus: option<string_>,
  @ocaml.doc(
    "<p>Value that is <code>true</code> if the cluster member is the primary instance for the DB cluster and <code>false</code> otherwise.</p>"
  )
  @as("IsClusterWriter")
  isClusterWriter: option<boolean_>,
  @ocaml.doc("<p>Specifies the instance identifier for this member of the DB cluster.</p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
}
@ocaml.doc(
  "<p>This data type is used as a response element in the <code>DescribeDBClusterBacktracks</code> action.</p>"
)
type dbclusterBacktrack = {
  @ocaml.doc("<p>The status of the backtrack. This property returns one of the following
            values:</p>
        <ul>
            <li>
               <p>
                  <code>applying</code> - The backtrack is currently being applied to or rolled back from the DB cluster.</p>
            </li>
            <li>
               <p>
                  <code>completed</code> - The backtrack has successfully been applied to or rolled back from the DB cluster.</p>
            </li>
            <li>
               <p>
                  <code>failed</code> - An error occurred while the backtrack was applied to or rolled back from the DB cluster.</p>
            </li>
            <li>
               <p>
                  <code>pending</code> - The backtrack is currently pending application to or rollback from the DB cluster.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The timestamp of the time at which the backtrack was requested.</p>")
  @as("BacktrackRequestCreationTime")
  backtrackRequestCreationTime: option<tstamp>,
  @ocaml.doc("<p>The timestamp of the time from which the DB cluster was backtracked.</p>")
  @as("BacktrackedFrom")
  backtrackedFrom: option<tstamp>,
  @ocaml.doc("<p>The timestamp of the time to which the DB cluster was backtracked.</p>")
  @as("BacktrackTo")
  backtrackTo: option<tstamp>,
  @ocaml.doc("<p>Contains the backtrack identifier.</p>") @as("BacktrackIdentifier")
  backtrackIdentifier: option<string_>,
  @ocaml.doc(
    "<p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>"
  )
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
}
@ocaml.doc("<p>
            This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>. 
        </p>")
type characterSet = {
  @ocaml.doc("<p>The description of the character set.</p>") @as("CharacterSetDescription")
  characterSetDescription: option<string_>,
  @ocaml.doc("<p>The name of the character set.</p>") @as("CharacterSetName")
  characterSetName: option<string_>,
}
@ocaml.doc("<p>A CA certificate for an AWS account.</p>")
type certificate = {
  @ocaml.doc("<p>If there is an override for the default certificate identifier, when the override
            expires.</p>")
  @as("CustomerOverrideValidTill")
  customerOverrideValidTill: option<tstamp>,
  @ocaml.doc("<p>Whether there is an override for the default certificate identifier.</p>")
  @as("CustomerOverride")
  customerOverride: option<booleanOptional>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the certificate.</p>") @as("CertificateArn")
  certificateArn: option<string_>,
  @ocaml.doc("<p>The final date that the certificate continues to be valid.</p>") @as("ValidTill")
  validTill: option<tstamp>,
  @ocaml.doc("<p>The starting date from which the certificate is valid.</p>") @as("ValidFrom")
  validFrom: option<tstamp>,
  @ocaml.doc("<p>The thumbprint of the certificate.</p>") @as("Thumbprint")
  thumbprint: option<string_>,
  @ocaml.doc("<p>The type of the certificate.</p>") @as("CertificateType")
  certificateType: option<string_>,
  @ocaml.doc("<p>The unique key that identifies a certificate.</p>") @as("CertificateIdentifier")
  certificateIdentifier: option<string_>,
}
@ocaml.doc("<p>Contains the available processor feature information for the DB instance class of a DB instance.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html#USER_ConfigureProcessor\">Configuring the
                Processor of the DB Instance Class</a> in the <i>Amazon RDS User Guide.
            </i>
         </p>")
type availableProcessorFeature = {
  @ocaml.doc("<p>The allowed values for the processor feature of the DB instance class.</p>")
  @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The default value for the processor feature of the DB instance class.</p>")
  @as("DefaultValue")
  defaultValue: option<string_>,
  @ocaml.doc("<p>The name of the processor feature. Valid names are <code>coreCount</code> 
            and <code>threadsPerCore</code>.</p>")
  @as("Name")
  name: option<string_>,
}
type availabilityZones = array<string_>
@ocaml.doc("<p>Contains Availability Zone information.</p>
        <p> This data type is used as an element in the <code>OrderableDBInstanceOption</code>
            data type.</p>")
type availabilityZone = {
  @ocaml.doc("<p>The name of the Availability Zone.</p>") @as("Name") name: option<string_>,
}
type attributeValueList = array<string_>
@ocaml.doc("<p>Describes a quota for an AWS account.</p>
         <p>The following are account quotas:</p>
         <ul>
            <li>
              <p>
                  <code>AllocatedStorage</code> - The total allocated storage per account, in GiB.
                    The used value is the total allocated storage in the account, in GiB.</p>
            </li>
            <li>
              <p>
                  <code>AuthorizationsPerDBSecurityGroup</code> - The number of ingress rules per DB security group. 
                  The used value is the highest number of ingress rules in a DB security group in the account. Other 
                  DB security groups in the account might have a lower number of ingress rules.</p>
            </li>
            <li>
              <p>
                  <code>CustomEndpointsPerDBCluster</code> - The number of custom endpoints per DB cluster. 
                  The used value is the highest number of custom endpoints in a DB clusters in the account. Other 
                  DB clusters in the account might have a lower number of custom endpoints.</p>
            </li>
            <li>
              <p>
                  <code>DBClusterParameterGroups</code> - The number of DB cluster parameter groups
                    per account, excluding default parameter groups. The used value is the count of
                    nondefault DB cluster parameter groups in the account.</p>
            </li>
            <li>
              <p>
                  <code>DBClusterRoles</code> - The number of associated AWS Identity and Access Management (IAM) roles per DB cluster. 
                  The used value is the highest number of associated IAM roles for a DB cluster in the account. Other 
                  DB clusters in the account might have a lower number of associated IAM roles.</p>
            </li>
            <li>
              <p>
                  <code>DBClusters</code> - The number of DB clusters per account. 
                  The used value is the count of DB clusters in the account.</p>
            </li>
            <li>
              <p>
                  <code>DBInstanceRoles</code> - The number of associated IAM roles per DB instance. 
                  The used value is the highest number of associated IAM roles for a DB instance in the account. Other 
                  DB instances in the account might have a lower number of associated IAM roles.</p>
            </li>
            <li>
              <p>
                  <code>DBInstances</code> - The number of DB instances per account. 
                  The used value is the count of the DB instances in the account.</p>
                  <p>Amazon RDS DB instances, Amazon Aurora DB instances, Amazon Neptune instances, and Amazon DocumentDB 
                      instances apply to this quota.</p>          
            </li>
            <li>
              <p>
                  <code>DBParameterGroups</code> - The number of DB parameter groups per account,
                    excluding default parameter groups. The used value is the count of nondefault DB
                    parameter groups in the account.</p>
            </li>
            <li>
              <p>
                  <code>DBSecurityGroups</code> - The number of DB security groups (not VPC
                    security groups) per account, excluding the default security group. The used
                    value is the count of nondefault DB security groups in the account.</p>
            </li>
            <li>
              <p>
                  <code>DBSubnetGroups</code> - The number of DB subnet groups per account. 
                  The used value is the count of the DB subnet groups in the account.</p>
            </li>
            <li>
              <p>
                  <code>EventSubscriptions</code> - The number of event subscriptions per account. 
                  The used value is the count of the event subscriptions in the account.</p>
            </li>
            <li>
              <p>
                  <code>ManualClusterSnapshots</code> - The number of manual DB cluster snapshots per account. 
                  The used value is the count of the manual DB cluster snapshots in the account.</p>
            </li>
            <li>
              <p>
                  <code>ManualSnapshots</code> - The number of manual DB instance snapshots per account. 
                  The used value is the count of the manual DB instance snapshots in the account.</p>
            </li>
            <li>
              <p>
                  <code>OptionGroups</code> - The number of DB option groups per account, excluding
                    default option groups. The used value is the count of nondefault DB option
                    groups in the account.</p>
            </li>
            <li>
              <p>
                  <code>ReadReplicasPerMaster</code> - The number of read replicas per DB
                    instance. The used value is the highest number of read replicas for a DB
                    instance in the account. Other DB instances in the account might have a lower
                    number of read replicas.</p>
            </li>
            <li>
              <p>
                  <code>ReservedDBInstances</code> - The number of reserved DB instances per account.  
                  The used value is the count of the active reserved DB instances in the account.</p>
            </li>
            <li>
              <p>
                  <code>SubnetsPerDBSubnetGroup</code> - The number of subnets per DB subnet group. 
                  The used value is highest number of subnets for a DB subnet group in the account. Other 
                  DB subnet groups in the account might have a lower number of subnets.</p>
            </li>
         </ul>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Limits.html\">Quotas for Amazon RDS</a> in the
                <i>Amazon RDS User Guide</i> and <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_Limits.html\">Quotas for Amazon Aurora</a> in the
                <i>Amazon Aurora User Guide</i>.</p>")
type accountQuota = {
  @ocaml.doc("<p>The maximum allowed value for the quota.</p>") @as("Max") max: option<long>,
  @ocaml.doc("<p>The amount currently used toward the quota maximum.</p>") @as("Used")
  used: option<long>,
  @ocaml.doc("<p>The name of the Amazon RDS quota for this AWS account.</p>")
  @as("AccountQuotaName")
  accountQuotaName: option<string_>,
}
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type userAuthConfigList = array<userAuthConfig>
type userAuthConfigInfoList = array<userAuthConfigInfo>
@ocaml.doc("<p>The version of the database engine that a DB instance can be upgraded to.</p>")
type upgradeTarget = {
  @ocaml.doc(
    "<p>A value that indicates whether you can use Aurora global databases with the target engine version.</p>"
  )
  @as("SupportsGlobalDatabases")
  supportsGlobalDatabases: option<booleanOptional>,
  @ocaml.doc(
    "<p>A value that indicates whether you can use Aurora parallel query with the target engine version.</p>"
  )
  @as("SupportsParallelQuery")
  supportsParallelQuery: option<booleanOptional>,
  @ocaml.doc("<p>A list of the supported DB engine modes for the target engine version.</p>")
  @as("SupportedEngineModes")
  supportedEngineModes: option<engineModeList>,
  @ocaml.doc(
    "<p>A value that indicates whether upgrading to the target version requires upgrading the major version of the database engine.</p>"
  )
  @as("IsMajorVersionUpgrade")
  isMajorVersionUpgrade: option<boolean_>,
  @ocaml.doc(
    "<p>A value that indicates whether the target version is applied to any source DB instances that have <code>AutoMinorVersionUpgrade</code> set to true.</p>"
  )
  @as("AutoUpgrade")
  autoUpgrade: option<boolean_>,
  @ocaml.doc("<p>The version of the database engine that a DB instance can be upgraded to.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The version number of the upgrade target database engine.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the upgrade target database engine.</p>") @as("Engine")
  engine: option<string_>,
}
@ocaml.doc("<p>A list of tags.
          For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html\">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>           
         </p>")
type tagList_ = array<tag>
type supportedTimezonesList = array<timezone>
type supportedCharacterSetsList = array<characterSet>
@ocaml.doc("<p>
        This data type is used as a response element for the <code>DescribeDBSubnetGroups</code> operation.
        </p>")
type subnet = {
  @ocaml.doc("<p>The status of the subnet.</p>") @as("SubnetStatus") subnetStatus: option<string_>,
  @ocaml.doc("<p>If the subnet is associated with an Outpost, this value specifies the Outpost.</p>
        <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Amazon RDS on AWS Outposts</a> 
            in the <i>Amazon RDS User Guide.</i>
         </p>")
  @as("SubnetOutpost")
  subnetOutpost: option<outpost>,
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The identifier of the subnet.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<string_>,
}
type sourceRegionList = array<sourceRegion>
type recurringChargeList = array<recurringCharge>
type rangeList = array<range>
type processorFeatureList = array<processorFeature>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
@ocaml.doc(
  "<p>A list of the log types whose configuration is still pending. In other words, these log types are in the process of being activated or deactivated.</p>"
)
type pendingCloudwatchLogsExports = {
  @ocaml.doc(
    "<p>Log types that are in the process of being enabled. After they are enabled, these log types are exported to CloudWatch Logs.</p>"
  )
  @as("LogTypesToDisable")
  logTypesToDisable: option<logTypeList>,
  @ocaml.doc(
    "<p>Log types that are in the process of being deactivated. After they are deactivated, these log types aren't exported to CloudWatch Logs.</p>"
  )
  @as("LogTypesToEnable")
  logTypesToEnable: option<logTypeList>,
}
@ocaml.doc("<p>
        This data type is used as a request parameter in the
        <code>ModifyDBParameterGroup</code> and <code>ResetDBParameterGroup</code> actions.
        </p>
         <p>This data type is used as a response element in the 
        <code>DescribeEngineDefaultParameters</code> and <code>DescribeDBParameters</code> actions.</p>")
type parameter = {
  @ocaml.doc("<p>The valid DB engine modes.</p>") @as("SupportedEngineModes")
  supportedEngineModes: option<engineModeList>,
  @ocaml.doc("<p>Indicates when to apply parameter updates.</p>") @as("ApplyMethod")
  applyMethod: option<applyMethod>,
  @ocaml.doc("<p>The earliest engine version to which the parameter can apply.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p>
        Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be modified.
        Some parameters have security or operational implications
        that prevent them from being changed.
        </p>")
  @as("IsModifiable")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>Specifies the valid range of values for the parameter.</p>") @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>Specifies the valid data type for the parameter.</p>") @as("DataType")
  dataType: option<string_>,
  @ocaml.doc("<p>Specifies the engine specific parameters type.</p>") @as("ApplyType")
  applyType: option<string_>,
  @ocaml.doc("<p>Indicates the source of the parameter value.</p>") @as("Source")
  source: option<string_>,
  @ocaml.doc("<p>Provides a description of the parameter.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>Specifies the value of the parameter.</p>") @as("ParameterValue")
  parameterValue: option<string_>,
  @ocaml.doc("<p>Specifies the name of the parameter.</p>") @as("ParameterName")
  parameterName: option<string_>,
}
type optionSettingsList = array<optionSetting>
type optionSettingConfigurationList = array<optionSetting>
type optionGroupOptionVersionsList = array<optionVersion>
type optionGroupMembershipList = array<optionGroupMembership>
type minimumEngineVersionPerAllowedValueList = array<minimumEngineVersionPerAllowedValue>
@ocaml.doc("<p>Contains the installation media for a DB engine that requires an on-premises 
          customer provided license, such as Microsoft SQL Server.</p>")
type installationMedia = {
  @ocaml.doc("<p>If an installation media failure occurred, the cause of the failure.</p>")
  @as("FailureCause")
  failureCause: option<installationMediaFailureCause>,
  @ocaml.doc("<p>The status of the installation medium.</p>") @as("Status") status: option<string_>,
  @ocaml.doc(
    "<p>The path to the installation medium for the operating system associated with the DB engine.</p>"
  )
  @as("OSInstallationMediaPath")
  osinstallationMediaPath: option<string_>,
  @ocaml.doc("<p>The path to the installation medium for the DB engine.</p>")
  @as("EngineInstallationMediaPath")
  engineInstallationMediaPath: option<string_>,
  @ocaml.doc("<p>The engine version of the DB engine.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The DB engine.</p>") @as("Engine") engine: option<string_>,
  @ocaml.doc("<p>The custom Availability Zone (AZ) that contains the installation media.</p>")
  @as("CustomAvailabilityZoneId")
  customAvailabilityZoneId: option<string_>,
  @ocaml.doc("<p>The installation medium ID.</p>") @as("InstallationMediaId")
  installationMediaId: option<string_>,
}
type iprangeList = array<iprange>
@ocaml.doc("<p>
        A data structure with information about any primary and
        secondary clusters associated with an Aurora global database.
      </p>")
type globalClusterMember = {
  @ocaml.doc("<p>Specifies whether a secondary cluster in an Aurora global database has
        write forwarding enabled, not enabled, or is in the process of enabling it.</p>")
  @as("GlobalWriteForwardingStatus")
  globalWriteForwardingStatus: option<writeForwardingStatus>,
  @ocaml.doc("<p>
        Specifies whether the Aurora cluster is the primary cluster
        (that is, has read-write capability) for the Aurora global
        database with which it is associated.
      </p>")
  @as("IsWriter")
  isWriter: option<boolean_>,
  @ocaml.doc("<p>
        The Amazon Resource Name (ARN) for each read-only secondary cluster
        associated with the Aurora global database.
      </p>")
  @as("Readers")
  readers: option<readersArnList>,
  @ocaml.doc("<p>
       The Amazon Resource Name (ARN) for each Aurora cluster.
      </p>")
  @as("DBClusterArn")
  dbclusterArn: option<string_>,
}
@ocaml.doc("<p>A filter name and value pair that is used to return a more specific list of results 
            from a describe operation. Filters can be used to match a set of resources by specific 
            criteria, such as IDs. The filters supported by a describe operation are documented 
            with the describe operation.</p>
        <note>
            <p>Currently, wildcards are not supported in filters.</p>
        </note>
        <p>The following actions can be filtered:</p>
        <ul>
            <li>
               <p>
                  <code>DescribeDBClusterBacktracks</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeDBClusterEndpoints</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeDBClusters</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeDBInstances</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribePendingMaintenanceActions</code>
               </p>
            </li>
         </ul>")
type filter = {
  @ocaml.doc("<p>One or more filter values. Filter values are case-sensitive.</p>") @as("Values")
  values: filterValueList,
  @ocaml.doc("<p>The name of the filter. Filter names are case-sensitive.</p>") @as("Name")
  name: string_,
}
@ocaml.doc("<p>Contains the details of a snapshot export to Amazon S3.
        </p>
        <p>This data type is used as a response element in the <code>DescribeExportTasks</code> action.
        </p>")
type exportTask = {
  @ocaml.doc("<p>A warning about the snapshot export task.</p>") @as("WarningMessage")
  warningMessage: option<string_>,
  @ocaml.doc("<p>The reason the export failed, if it failed.</p>") @as("FailureCause")
  failureCause: option<string_>,
  @ocaml.doc("<p>The total amount of data exported, in gigabytes.</p>")
  @as("TotalExtractedDataInGB")
  totalExtractedDataInGB: option<integer_>,
  @ocaml.doc("<p>The progress of the snapshot export task as a percentage.</p>")
  @as("PercentProgress")
  percentProgress: option<integer_>,
  @ocaml.doc("<p>The progress status of the export task.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The key identifier of the AWS KMS customer master key (CMK) that is used to encrypt the snapshot when it's exported to
            Amazon S3. The AWS KMS CMK identifier is its key ARN, key ID, alias ARN, or alias name. The IAM role used for the snapshot export
            must have encryption and decryption permissions to use this AWS KMS CMK. </p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc(
    "<p>The name of the IAM role that is used to write to Amazon S3 when exporting a snapshot. </p>"
  )
  @as("IamRoleArn")
  iamRoleArn: option<string_>,
  @ocaml.doc(
    "<p>The Amazon S3 bucket prefix that is the file name and path of the exported snapshot.</p>"
  )
  @as("S3Prefix")
  s3Prefix: option<string_>,
  @ocaml.doc("<p>The Amazon S3 bucket that the snapshot is exported to.</p>") @as("S3Bucket")
  s3Bucket: option<string_>,
  @ocaml.doc("<p>The time that the snapshot export task completed.</p>") @as("TaskEndTime")
  taskEndTime: option<tstamp>,
  @ocaml.doc("<p>The time that the snapshot export task started.</p>") @as("TaskStartTime")
  taskStartTime: option<tstamp>,
  @ocaml.doc("<p>The time that the snapshot was created.</p>") @as("SnapshotTime")
  snapshotTime: option<tstamp>,
  @ocaml.doc("<p>The data exported from the snapshot. Valid values are the following:</p>
        <ul>
            <li>
               <p>
                  <code>database</code> - Export all the data from a specified database.</p>
            </li>
            <li>
               <p>
                  <code>database.table</code> 
                  <i>table-name</i> - 
                Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p>
            </li>
            <li>
               <p>
                  <code>database.schema</code> 
                  <i>schema-name</i> - Export a database schema of the snapshot. 
                This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
            </li>
            <li>
               <p>
                  <code>database.schema.table</code> 
                  <i>table-name</i> - Export a table of the database schema. 
                This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
            </li>
         </ul>")
  @as("ExportOnly")
  exportOnly: option<stringList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>")
  @as("SourceArn")
  sourceArn: option<string_>,
  @ocaml.doc("<p>A unique identifier for the snapshot export task. This ID isn't an identifier for
            the Amazon S3 bucket where the snapshot is exported to. </p>")
  @as("ExportTaskIdentifier")
  exportTaskIdentifier: option<string_>,
}
@ocaml.doc(
  "<p>Contains the results of a successful invocation of the <code>DescribeEventSubscriptions</code> action.</p>"
)
type eventSubscription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event subscription.</p>")
  @as("EventSubscriptionArn")
  eventSubscriptionArn: option<string_>,
  @ocaml.doc(
    "<p>A Boolean value indicating if the subscription is enabled. True indicates the subscription is enabled.</p>"
  )
  @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>A list of event categories for the RDS event notification subscription.</p>")
  @as("EventCategoriesList")
  eventCategoriesList: option<eventCategoriesList>,
  @ocaml.doc("<p>A list of source IDs for the RDS event notification subscription.</p>")
  @as("SourceIdsList")
  sourceIdsList: option<sourceIdsList>,
  @ocaml.doc("<p>The source type for the RDS event notification subscription.</p>")
  @as("SourceType")
  sourceType: option<string_>,
  @ocaml.doc("<p>The time the RDS event notification subscription was created.</p>")
  @as("SubscriptionCreationTime")
  subscriptionCreationTime: option<string_>,
  @ocaml.doc("<p>The status of the RDS event notification subscription.</p>
         <p>Constraints:</p>
         <p>Can be one of the following: creating | modifying | deleting | active | no-permission | topic-not-exist</p>
         <p>The status \"no-permission\" indicates that RDS no longer has permission to post to the SNS topic. The status \"topic-not-exist\" indicates that the topic was deleted after the subscription was created.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The topic ARN of the RDS event notification subscription.</p>") @as("SnsTopicArn")
  snsTopicArn: option<string_>,
  @ocaml.doc("<p>The RDS event notification subscription Id.</p>") @as("CustSubscriptionId")
  custSubscriptionId: option<string_>,
  @ocaml.doc(
    "<p>The AWS customer account associated with the RDS event notification subscription.</p>"
  )
  @as("CustomerAwsId")
  customerAwsId: option<string_>,
}
@ocaml.doc(
  "<p>Contains the results of a successful invocation of the <code>DescribeEventCategories</code> operation.</p>"
)
type eventCategoriesMap = {
  @ocaml.doc("<p>The event categories for the specified source type</p>") @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>The source type that the returned categories belong to</p>") @as("SourceType")
  sourceType: option<string_>,
}
@ocaml.doc("<p>
        This data type is used as a response element in the <code>DescribeEvents</code> action.
        </p>")
type event = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event.</p>") @as("SourceArn")
  sourceArn: option<string_>,
  @ocaml.doc("<p>Specifies the date and time of the event.</p>") @as("Date") date: option<tstamp>,
  @ocaml.doc("<p>Specifies the category for the event.</p>") @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>Provides the text of this event.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>Specifies the source type for this event.</p>") @as("SourceType")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>Provides the identifier for the source of the event.</p>") @as("SourceIdentifier")
  sourceIdentifier: option<string_>,
}
type ec2SecurityGroupList = array<ec2SecurityGroup>
type doubleRangeList = array<doubleRange>
@ocaml.doc(
  "<p>List of Active Directory Domain membership records associated with a DB instance or cluster.</p>"
)
type domainMembershipList = array<domainMembership>
type describeDBLogFilesList = array<describeDBLogFilesDetails>
@ocaml.doc("<p>Contains the name and values of a manual DB snapshot attribute</p>
         <p>Manual DB snapshot attributes are used to authorize other AWS accounts
    to restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code>
    API.</p>")
type dbsnapshotAttribute = {
  @ocaml.doc("<p>The value or values for the manual DB snapshot attribute.</p>
         <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element
      returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual
      DB snapshot. If a value of <code>all</code> is in the list, then the manual DB snapshot
      is public and available for any AWS account to copy or restore.</p>")
  @as("AttributeValues")
  attributeValues: option<attributeValueList>,
  @ocaml.doc("<p>The name of the manual DB snapshot attribute.</p>
         <p>The attribute named <code>restore</code> refers to the list of AWS accounts that
          have permission to copy or restore the manual DB cluster snapshot. For more information, 
          see the <code>ModifyDBSnapshotAttribute</code>
          API action.</p>")
  @as("AttributeName")
  attributeName: option<string_>,
}
type dbsecurityGroupMembershipList = array<dbsecurityGroupMembership>
@ocaml.doc("<p>Contains the details for an RDS Proxy target. It represents an RDS DB instance or Aurora DB cluster
        that the proxy can connect to. One or more targets are associated with an RDS Proxy target group.</p>
         <p>This data type is used as a response element in the <code>DescribeDBProxyTargets</code> action.</p>")
type dbproxyTarget = {
  @ocaml.doc("<p>Information about the connection health of the RDS Proxy target.</p>")
  @as("TargetHealth")
  targetHealth: option<targetHealth>,
  @ocaml.doc(
    "<p>A value that indicates whether the target of the proxy can be used for read/write or read-only operations.</p>"
  )
  @as("Role")
  role: option<targetRole>,
  @ocaml.doc(
    "<p>Specifies the kind of database, such as an RDS DB instance or an Aurora DB cluster, that the target represents.</p>"
  )
  @as("Type")
  type_: option<targetType>,
  @ocaml.doc(
    "<p>The port that the RDS Proxy uses to connect to the target RDS DB instance or Aurora DB cluster.</p>"
  )
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The identifier representing the target. It can be the instance identifier for an RDS DB instance,
        or the cluster identifier for an Aurora DB cluster.</p>")
  @as("RdsResourceId")
  rdsResourceId: option<string_>,
  @ocaml.doc(
    "<p>The DB cluster identifier when the target represents an Aurora DB cluster. This field is blank when the target represents an RDS DB instance.</p>"
  )
  @as("TrackedClusterId")
  trackedClusterId: option<string_>,
  @ocaml.doc("<p>The writer endpoint for the RDS DB instance or Aurora DB cluster.</p>")
  @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the RDS DB instance or Aurora DB cluster.</p>")
  @as("TargetArn")
  targetArn: option<string_>,
}
@ocaml.doc("<p>The data structure representing an endpoint associated with a DB proxy. RDS automatically creates one
        endpoint for each DB proxy. For Aurora DB clusters, you can associate additional endpoints with the same
        DB proxy. These endpoints can be read/write or read-only. They can also reside in different VPCs than the
        associated DB proxy.</p>
         <p>This data type is used as a response element in the <code>DescribeDBProxyEndpoints</code> operation.</p>")
type dbproxyEndpoint = {
  @ocaml.doc("<p>A value that indicates whether this endpoint is the default endpoint for the associated DB proxy.
        Default DB proxy endpoints always have read/write capability. Other endpoints that you associate with the
        DB proxy can be either read/write or read-only.</p>")
  @as("IsDefault")
  isDefault: option<boolean_>,
  @ocaml.doc(
    "<p>A value that indicates whether the DB proxy endpoint can be used for read/write or read-only operations.</p>"
  )
  @as("TargetRole")
  targetRole: option<dbproxyEndpointTargetRole>,
  @ocaml.doc("<p>The date and time when the DB proxy endpoint was first created.</p>")
  @as("CreatedDate")
  createdDate: option<tstamp>,
  @ocaml.doc("<p>The endpoint that you can use to connect to the DB proxy. You include the endpoint value in the
        connection string for a database client application.</p>")
  @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc("<p>The EC2 subnet IDs for the DB proxy endpoint.</p>") @as("VpcSubnetIds")
  vpcSubnetIds: option<stringList>,
  @ocaml.doc("<p>Provides a list of VPC security groups that the DB proxy endpoint belongs to.</p>")
  @as("VpcSecurityGroupIds")
  vpcSecurityGroupIds: option<stringList>,
  @ocaml.doc("<p>Provides the VPC ID of the DB proxy endpoint.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>The current status of this DB proxy endpoint. A status of <code>available</code> means the
        endpoint is ready to handle requests. Other values indicate that you must wait for
        the endpoint to be ready, or take some action to resolve an issue.</p>")
  @as("Status")
  status: option<dbproxyEndpointStatus>,
  @ocaml.doc(
    "<p>The identifier for the DB proxy that is associated with this DB proxy endpoint.</p>"
  )
  @as("DBProxyName")
  dbproxyName: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB proxy endpoint.</p>")
  @as("DBProxyEndpointArn")
  dbproxyEndpointArn: option<string_>,
  @ocaml.doc("<p>The name for the DB proxy endpoint. An identifier must begin with a letter and
        must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen
        or contain two consecutive hyphens.</p>")
  @as("DBProxyEndpointName")
  dbproxyEndpointName: option<string_>,
}
type dbparameterGroupStatusList = array<dbparameterGroupStatus>
type dbparameterGroupList = array<dbparameterGroup>
type dbinstanceStatusInfoList = array<dbinstanceStatusInfo>
type dbinstanceRoles = array<dbinstanceRole>
type dbinstanceAutomatedBackupsReplicationList = array<dbinstanceAutomatedBackupsReplication>
@ocaml.doc("<p>Contains the name and values of a manual DB cluster snapshot attribute.</p>
        <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts
            to restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code>
            API action.</p>")
type dbclusterSnapshotAttribute = {
  @ocaml.doc("<p>The value(s) for the manual DB cluster snapshot attribute.</p>
        <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element
            returns a list of IDs of the AWS accounts that are authorized to copy or restore the manual
            DB cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster snapshot
            is public and available for any AWS account to copy or restore.</p>")
  @as("AttributeValues")
  attributeValues: option<attributeValueList>,
  @ocaml.doc("<p>The name of the manual DB cluster snapshot attribute.</p>
        <p>The attribute named <code>restore</code> refers to the list of AWS accounts that
            have permission to copy or restore the manual DB cluster snapshot. For more information, 
            see the <code>ModifyDBClusterSnapshotAttribute</code>
            API action.</p>")
  @as("AttributeName")
  attributeName: option<string_>,
}
type dbclusterRoles = array<dbclusterRole>
type dbclusterParameterGroupList = array<dbclusterParameterGroup>
type dbclusterOptionGroupMemberships = array<dbclusterOptionGroupStatus>
type dbclusterMemberList = array<dbclusterMember>
@ocaml.doc("<p>This data type represents the information you need to connect to an Amazon Aurora DB cluster.
      This data type is used as a response element in the following actions:</p>
         <ul>
            <li>
               <p>
                  <code>CreateDBClusterEndpoint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DescribeDBClusterEndpoints</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ModifyDBClusterEndpoint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DeleteDBClusterEndpoint</code>
               </p>
            </li>
         </ul>
         <p>For the data structure that represents Amazon RDS DB instance endpoints,
        see <code>Endpoint</code>.</p>")
type dbclusterEndpoint = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the endpoint.</p>") @as("DBClusterEndpointArn")
  dbclusterEndpointArn: option<string_>,
  @ocaml.doc("<p>List of DB instance identifiers that aren't part of the custom endpoint group.
       All other eligible instances are reachable through the custom endpoint.
       Only relevant if the list of static members is empty.</p>")
  @as("ExcludedMembers")
  excludedMembers: option<stringList>,
  @ocaml.doc("<p>List of DB instance identifiers that are part of the custom endpoint group.</p>")
  @as("StaticMembers")
  staticMembers: option<stringList>,
  @ocaml.doc("<p>The type associated with a custom endpoint. One of: <code>READER</code>,
       <code>WRITER</code>, <code>ANY</code>.</p>")
  @as("CustomEndpointType")
  customEndpointType: option<string_>,
  @ocaml.doc(
    "<p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>CUSTOM</code>.</p>"
  )
  @as("EndpointType")
  endpointType: option<string_>,
  @ocaml.doc("<p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that can't be used for a certain kind of cluster,
     such as a <code>writer</code> endpoint for a read-only secondary cluster in a global database.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The DNS address of the endpoint.</p>") @as("Endpoint") endpoint: option<string_>,
  @ocaml.doc(
    "<p>A unique system-generated identifier for an endpoint. It remains the same for the whole life of the endpoint.</p>"
  )
  @as("DBClusterEndpointResourceIdentifier")
  dbclusterEndpointResourceIdentifier: option<string_>,
  @ocaml.doc("<p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
            stored as a lowercase string.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc(
    "<p>The identifier associated with the endpoint. This parameter is stored as a lowercase string.</p>"
  )
  @as("DBClusterEndpointIdentifier")
  dbclusterEndpointIdentifier: option<string_>,
}
type dbclusterBacktrackList = array<dbclusterBacktrack>
@ocaml.doc("<p>A custom Availability Zone (AZ) is an on-premises AZ that is integrated with a VMware vSphere cluster.</p>
        <p>For more information about RDS on VMware, see the 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\">
                RDS on VMware User Guide.</a>
         </p>")
type customAvailabilityZone = {
  @ocaml.doc("<p>Information about the virtual private network (VPN) between the VMware vSphere cluster
            and the AWS website.</p>")
  @as("VpnDetails")
  vpnDetails: option<vpnDetails>,
  @ocaml.doc("<p>The status of the custom AZ.</p>") @as("CustomAvailabilityZoneStatus")
  customAvailabilityZoneStatus: option<string_>,
  @ocaml.doc("<p>The name of the custom AZ.</p>") @as("CustomAvailabilityZoneName")
  customAvailabilityZoneName: option<string_>,
  @ocaml.doc("<p>The identifier of the custom AZ.</p>
        <p>Amazon RDS generates a unique identifier when a custom AZ is created.</p>")
  @as("CustomAvailabilityZoneId")
  customAvailabilityZoneId: option<string_>,
}
@ocaml.doc(
  "<p>Displays the settings that control the size and behavior of the connection pool associated with a <code>DBProxyTarget</code>.</p>"
)
type connectionPoolConfigurationInfo = {
  @ocaml.doc("<p>
        One or more SQL statements for the proxy to run when opening each new database connection.
        Typically used with <code>SET</code> statements to make sure that each connection has identical
        settings such as time zone and character set. This setting is empty by default.
        For multiple statements, use semicolons as the separator.
        You can also include multiple variables in a single <code>SET</code> statement, such as
        <code>SET x=1, y=2</code>.
      </p>")
  @as("InitQuery")
  initQuery: option<string_>,
  @ocaml.doc("<p>Each item in the list represents a class of SQL operations that normally cause all later statements
        in a session using a proxy to be pinned to the same underlying database connection. Including an item
        in the list exempts that class of SQL operations from the pinning behavior. Currently, the only
        allowed value is <code>EXCLUDE_VARIABLE_SETS</code>.</p>")
  @as("SessionPinningFilters")
  sessionPinningFilters: option<stringList>,
  @ocaml.doc("<p>The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the
        proxy has opened its maximum number of connections and all connections are busy with client sessions.</p>")
  @as("ConnectionBorrowTimeout")
  connectionBorrowTimeout: option<integer_>,
  @ocaml.doc("<p>
        Controls how actively the proxy closes idle database connections in the connection pool.
        A high value enables the proxy to leave a high percentage of idle connections open.
        A low value causes the proxy to close idle client connections and return the underlying database connections to the connection pool.
        For Aurora MySQL, it is expressed as a percentage of the <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.
      </p>")
  @as("MaxIdleConnectionsPercent")
  maxIdleConnectionsPercent: option<integer_>,
  @ocaml.doc("<p>The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the
        <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.</p>")
  @as("MaxConnectionsPercent")
  maxConnectionsPercent: option<integer_>,
}
@ocaml.doc(
  "<p>Specifies the settings that control the size and behavior of the connection pool associated with a <code>DBProxyTargetGroup</code>.</p>"
)
type connectionPoolConfiguration = {
  @ocaml.doc("<p>
        One or more SQL statements for the proxy to run when opening each new database connection.
        Typically used with <code>SET</code> statements to make sure that each connection has identical
        settings such as time zone and character set. For multiple statements, use semicolons as the separator.
        You can also include multiple variables in a single <code>SET</code> statement, such as
        <code>SET x=1, y=2</code>.
      </p>
         <p>Default: no initialization query</p>")
  @as("InitQuery")
  initQuery: option<string_>,
  @ocaml.doc("<p>Each item in the list represents a class of SQL operations that normally cause all later statements
        in a session using a proxy to be pinned to the same underlying database connection. Including an item
        in the list exempts that class of SQL operations from the pinning behavior.</p>
         <p>Default: no session pinning filters</p>")
  @as("SessionPinningFilters")
  sessionPinningFilters: option<stringList>,
  @ocaml.doc("<p>The number of seconds for a proxy to wait for a connection to become available in the connection pool. Only applies when the
        proxy has opened its maximum number of connections and all connections are busy with client sessions.</p>
         <p>Default: 120</p>
         <p>Constraints: between 1 and 3600, or 0 representing unlimited</p>")
  @as("ConnectionBorrowTimeout")
  connectionBorrowTimeout: option<integerOptional>,
  @ocaml.doc("<p>
        Controls how actively the proxy closes idle database connections in the connection pool.
        A high value enables the proxy to leave a high percentage of idle connections open.
        A low value causes the proxy to close idle client connections and return the underlying
        database connections to the connection pool. For Aurora MySQL, it is expressed as a percentage of the
        <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.
      </p>
         <p>Default: 50</p>
         <p>Constraints: between 0 and <code>MaxConnectionsPercent</code>
         </p>")
  @as("MaxIdleConnectionsPercent")
  maxIdleConnectionsPercent: option<integerOptional>,
  @ocaml.doc("<p>The maximum size of the connection pool for each target in a target group. For Aurora MySQL, it is expressed as a percentage of the
        <code>max_connections</code> setting for the RDS DB instance or Aurora DB cluster used by the target group.</p>
         <p>Default: 100</p>
         <p>Constraints: between 1 and 100</p>")
  @as("MaxConnectionsPercent")
  maxConnectionsPercent: option<integerOptional>,
}
@ocaml.doc("<p>The configuration setting for the log types to be enabled for export to CloudWatch
            Logs for a specific DB instance or DB cluster.</p>
        <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays determine which logs will be exported
            (or not exported) to CloudWatch Logs. The values within these arrays depend on the DB
            engine being used.</p>
        <p>For more information about exporting CloudWatch Logs for Amazon RDS DB instances, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon RDS User Guide</i>.</p>
        <p>For more information about exporting CloudWatch Logs for Amazon Aurora DB clusters, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>")
type cloudwatchLogsExportConfiguration = {
  @ocaml.doc("<p>The list of log types to disable.</p>") @as("DisableLogTypes")
  disableLogTypes: option<logTypeList>,
  @ocaml.doc("<p>The list of log types to enable.</p>") @as("EnableLogTypes")
  enableLogTypes: option<logTypeList>,
}
type certificateList = array<certificate>
type availableProcessorFeatureList = array<availableProcessorFeature>
type availabilityZoneList = array<availabilityZone>
type accountQuotaList = array<accountQuota>
type validUpgradeTargetList = array<upgradeTarget>
@ocaml.doc("<p>Information about valid modifications that you can make to your DB instance.
            Contains the result of a successful call to the 
            <code>DescribeValidDBInstanceModifications</code> action.
        </p>")
type validStorageOptions = {
  @ocaml.doc(
    "<p>Whether or not Amazon RDS can automatically scale storage for DB instances that use the new instance class.</p>"
  )
  @as("SupportsStorageAutoscaling")
  supportsStorageAutoscaling: option<boolean_>,
  @ocaml.doc("<p>The valid range of Provisioned IOPS to gibibytes of storage multiplier.
            For example, 3-10,
            which means that provisioned IOPS can be between 3 and 10 times storage.
        </p>")
  @as("IopsToStorageRatio")
  iopsToStorageRatio: option<doubleRangeList>,
  @ocaml.doc("<p>The valid range of provisioned IOPS.
            For example, 1000-20000.
        </p>")
  @as("ProvisionedIops")
  provisionedIops: option<rangeList>,
  @ocaml.doc("<p>The valid range of storage in gibibytes.
            For example, 100 to 16384. 
        </p>")
  @as("StorageSize")
  storageSize: option<rangeList>,
  @ocaml.doc("<p>The valid storage types for your DB instance.
            For example, gp2, io1.
        </p>")
  @as("StorageType")
  storageType: option<string_>,
}
type targetList = array<dbproxyTarget>
type subnetList = array<subnet>
@ocaml.doc("<p>Describes the pending maintenance actions for a resource.</p>")
type resourcePendingMaintenanceActions = {
  @ocaml.doc(
    "<p>A list that provides details about the pending maintenance actions for the resource.</p>"
  )
  @as("PendingMaintenanceActionDetails")
  pendingMaintenanceActionDetails: option<pendingMaintenanceActionDetails>,
  @ocaml.doc("<p>The ARN of the resource that has pending maintenance actions.</p>")
  @as("ResourceIdentifier")
  resourceIdentifier: option<string_>,
}
@ocaml.doc("<p>
            This data type is used as a response element in the <code>DescribeReservedDBInstancesOfferings</code> action.
        </p>")
type reservedDBInstancesOffering = {
  @ocaml.doc("<p>The recurring price charged to run this reserved DB instance.</p>")
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>Indicates if the offering applies to Multi-AZ deployments.</p>") @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc("<p>The offering type.</p>") @as("OfferingType") offeringType: option<string_>,
  @ocaml.doc("<p>The database engine used by the offering.</p>") @as("ProductDescription")
  productDescription: option<string_>,
  @ocaml.doc("<p>The currency code for the reserved DB instance offering.</p>") @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc("<p>The hourly price charged for this offering.</p>") @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc("<p>The fixed price charged for this offering.</p>") @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration of the offering in seconds.</p>") @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The DB instance class for the reserved DB instance.</p>") @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc("<p>The offering identifier.</p>") @as("ReservedDBInstancesOfferingId")
  reservedDBInstancesOfferingId: option<string_>,
}
@ocaml.doc("<p>
            This data type is used as a response element in the 
            <code>DescribeReservedDBInstances</code> and 
            <code>PurchaseReservedDBInstancesOffering</code> actions.
        </p>")
type reservedDBInstance = {
  @ocaml.doc("<p>The unique identifier for the lease associated with the reserved DB instance.</p>
         <note>
            <p>AWS Support might request the lease ID for an issue related to a reserved DB instance.</p>
         </note>")
  @as("LeaseId")
  leaseId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the reserved DB instance.</p>")
  @as("ReservedDBInstanceArn")
  reservedDBInstanceArn: option<string_>,
  @ocaml.doc("<p>The recurring price charged to run this reserved DB instance.</p>")
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>The state of the reserved DB instance.</p>") @as("State") state: option<string_>,
  @ocaml.doc("<p>Indicates if the reservation applies to Multi-AZ deployments.</p>") @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc("<p>The offering type of this reserved DB instance.</p>") @as("OfferingType")
  offeringType: option<string_>,
  @ocaml.doc("<p>The description of the reserved DB instance.</p>") @as("ProductDescription")
  productDescription: option<string_>,
  @ocaml.doc("<p>The number of reserved DB instances.</p>") @as("DBInstanceCount")
  dbinstanceCount: option<integer_>,
  @ocaml.doc("<p>The currency code for the reserved DB instance.</p>") @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc("<p>The hourly price charged for this reserved DB instance.</p>") @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc("<p>The fixed price charged for this reserved DB instance.</p>") @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration of the reservation in seconds.</p>") @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The time the reservation started.</p>") @as("StartTime") startTime: option<tstamp>,
  @ocaml.doc("<p>The DB instance class for the reserved DB instance.</p>") @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc("<p>The offering identifier.</p>") @as("ReservedDBInstancesOfferingId")
  reservedDBInstancesOfferingId: option<string_>,
  @ocaml.doc("<p>The unique identifier for the reservation.</p>") @as("ReservedDBInstanceId")
  reservedDBInstanceId: option<string_>,
}
@ocaml.doc("<p>
        This data type is used as a response element in the <code>ModifyDBInstance</code> operation and 
          contains changes that will be applied during the next maintenance window.
       </p>")
type pendingModifiedValues = {
  @ocaml.doc(
    "<p>Whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.</p>"
  )
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The number of CPU cores and the number of threads per core for the DB instance class
            of the DB instance.</p>")
  @as("ProcessorFeatures")
  processorFeatures: option<processorFeatureList>,
  @as("PendingCloudwatchLogsExports")
  pendingCloudwatchLogsExports: option<pendingCloudwatchLogsExports>,
  @ocaml.doc("<p>The DB subnet group for the DB instance.</p>") @as("DBSubnetGroupName")
  dbsubnetGroupName: option<string_>,
  @ocaml.doc("<p>The identifier of the CA certificate for the DB instance.</p>")
  @as("CACertificateIdentifier")
  cacertificateIdentifier: option<string_>,
  @ocaml.doc("<p>The storage type of the DB instance.</p>") @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc("<p>The  database identifier for the DB instance.</p>") @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
  @ocaml.doc("<p>The Provisioned IOPS value for the DB instance.</p>") @as("Iops")
  iops: option<integerOptional>,
  @ocaml.doc("<p>The license model for the DB instance.</p>
        <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | 
            <code>general-public-license</code>
         </p>")
  @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>The database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc(
    "<p>A value that indicates that the Single-AZ DB instance will change to a Multi-AZ deployment.</p>"
  )
  @as("MultiAZ")
  multiAZ: option<booleanOptional>,
  @ocaml.doc("<p>The number of days for which automated backups are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>The port for the DB instance.</p>") @as("Port") port: option<integerOptional>,
  @ocaml.doc("<p>The master credentials for the DB instance.</p>") @as("MasterUserPassword")
  masterUserPassword: option<string_>,
  @ocaml.doc("<p>The allocated storage size for the DB instance specified in gibibytes .</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integerOptional>,
  @ocaml.doc("<p>The name of the compute and memory capacity class for the DB instance.</p>")
  @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
}
type parametersList = array<parameter>
@ocaml.doc("<p>Contains a list of available options for a DB instance.</p>
         <p>
          This data type is used as a response element in the <code>DescribeOrderableDBInstanceOptions</code> action.
        </p>")
type orderableDBInstanceOption = {
  @ocaml.doc(
    "<p>A value that indicates whether you can use Aurora global databases with a specific combination of other DB engine attributes.</p>"
  )
  @as("SupportsGlobalDatabases")
  supportsGlobalDatabases: option<boolean_>,
  @ocaml.doc("<p>Whether a DB instance supports RDS on Outposts.</p>
        <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Amazon RDS on AWS Outposts</a> 
            in the <i>Amazon RDS User Guide.</i>
         </p>")
  @as("OutpostCapable")
  outpostCapable: option<boolean_>,
  @ocaml.doc("<p>Whether a DB instance supports Kerberos Authentication.</p>")
  @as("SupportsKerberosAuthentication")
  supportsKerberosAuthentication: option<booleanOptional>,
  @ocaml.doc(
    "<p>Whether Amazon RDS can automatically scale storage for DB instances that use the specified DB instance class.</p>"
  )
  @as("SupportsStorageAutoscaling")
  supportsStorageAutoscaling: option<booleanOptional>,
  @ocaml.doc("<p>A list of the supported DB engine modes.</p>") @as("SupportedEngineModes")
  supportedEngineModes: option<engineModeList>,
  @ocaml.doc(
    "<p>A list of the available processor features for the DB instance class of a DB instance.</p>"
  )
  @as("AvailableProcessorFeatures")
  availableProcessorFeatures: option<availableProcessorFeatureList>,
  @ocaml.doc("<p>Maximum provisioned IOPS per GiB for a DB instance.</p>") @as("MaxIopsPerGib")
  maxIopsPerGib: option<doubleOptional>,
  @ocaml.doc("<p>Minimum provisioned IOPS per GiB for a DB instance.</p>") @as("MinIopsPerGib")
  minIopsPerGib: option<doubleOptional>,
  @ocaml.doc("<p>Maximum total provisioned IOPS for a DB instance.</p>") @as("MaxIopsPerDbInstance")
  maxIopsPerDbInstance: option<integerOptional>,
  @ocaml.doc("<p>Minimum total provisioned IOPS for a DB instance.</p>") @as("MinIopsPerDbInstance")
  minIopsPerDbInstance: option<integerOptional>,
  @ocaml.doc("<p>Maximum storage size for a DB instance.</p>") @as("MaxStorageSize")
  maxStorageSize: option<integerOptional>,
  @ocaml.doc("<p>Minimum storage size for a DB instance.</p>") @as("MinStorageSize")
  minStorageSize: option<integerOptional>,
  @ocaml.doc("<p>True if a DB instance supports Performance Insights, otherwise false.</p>")
  @as("SupportsPerformanceInsights")
  supportsPerformanceInsights: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance supports IAM database authentication.</p>")
  @as("SupportsIAMDatabaseAuthentication")
  supportsIAMDatabaseAuthentication: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60 seconds.</p>"
  )
  @as("SupportsEnhancedMonitoring")
  supportsEnhancedMonitoring: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance supports provisioned IOPS.</p>")
  @as("SupportsIops")
  supportsIops: option<boolean_>,
  @ocaml.doc("<p>Indicates the storage type for a DB instance.</p>") @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc("<p>Indicates whether a DB instance supports encrypted storage.</p>")
  @as("SupportsStorageEncryption")
  supportsStorageEncryption: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance is in a VPC.</p>") @as("Vpc")
  vpc: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance can have a read replica.</p>")
  @as("ReadReplicaCapable")
  readReplicaCapable: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance is Multi-AZ capable.</p>") @as("MultiAZCapable")
  multiAZCapable: option<boolean_>,
  @ocaml.doc("<p>A list of Availability Zones for a DB instance.</p>") @as("AvailabilityZones")
  availabilityZones: option<availabilityZoneList>,
  @ocaml.doc("<p>The Availability Zone group for a DB instance.</p>") @as("AvailabilityZoneGroup")
  availabilityZoneGroup: option<string_>,
  @ocaml.doc("<p>The license model for a DB instance.</p>") @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>The DB instance class for a DB instance.</p>") @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc("<p>The engine version of a DB instance.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The engine type of a DB instance.</p>") @as("Engine") engine: option<string_>,
}
@ocaml.doc(
  "<p>Option group option settings are used to display settings available for each option with their default values and other information. These values are used with the DescribeOptionGroupOptions action.</p>"
)
type optionGroupOptionSetting = {
  @ocaml.doc(
    "<p>The minimum DB engine version required for the corresponding allowed value for this option setting.</p>"
  )
  @as("MinimumEngineVersionPerAllowedValue")
  minimumEngineVersionPerAllowedValue: option<minimumEngineVersionPerAllowedValueList>,
  @ocaml.doc(
    "<p>Boolean value where true indicates that a value must be specified for this option setting of the option group option.</p>"
  )
  @as("IsRequired")
  isRequired: option<boolean_>,
  @ocaml.doc(
    "<p>Boolean value where true indicates that this option group option can be changed from the default value.</p>"
  )
  @as("IsModifiable")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>Indicates the acceptable values for the option group option.</p>")
  @as("AllowedValues")
  allowedValues: option<string_>,
  @ocaml.doc("<p>The DB engine specific parameter type for the option group option.</p>")
  @as("ApplyType")
  applyType: option<string_>,
  @ocaml.doc("<p>The default value for the option group option.</p>") @as("DefaultValue")
  defaultValue: option<string_>,
  @ocaml.doc("<p>The description of the option group option.</p>") @as("SettingDescription")
  settingDescription: option<string_>,
  @ocaml.doc("<p>The name of the option group option.</p>") @as("SettingName")
  settingName: option<string_>,
}
@ocaml.doc("<p>A list of all available options</p>")
type optionConfiguration = {
  @ocaml.doc("<p>The option settings to include in an option group.</p>") @as("OptionSettings")
  optionSettings: option<optionSettingsList>,
  @ocaml.doc("<p>A list of VpcSecurityGroupMembership name strings used for this option.</p>")
  @as("VpcSecurityGroupMemberships")
  vpcSecurityGroupMemberships: option<vpcSecurityGroupIdList>,
  @ocaml.doc("<p>A list of DBSecurityGroupMembership name strings used for this option.</p>")
  @as("DBSecurityGroupMemberships")
  dbsecurityGroupMemberships: option<dbsecurityGroupNameList>,
  @ocaml.doc("<p>The version for the option.</p>") @as("OptionVersion")
  optionVersion: option<string_>,
  @ocaml.doc("<p>The optional port for the option.</p>") @as("Port") port: option<integerOptional>,
  @ocaml.doc("<p>The configuration of options to include in a group.</p>") @as("OptionName")
  optionName: string_,
}
@ocaml.doc("<p>Option details.</p>")
type option_ = {
  @ocaml.doc(
    "<p>If the option requires access to a port, then this VPC security group allows access to the port.</p>"
  )
  @as("VpcSecurityGroupMemberships")
  vpcSecurityGroupMemberships: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc(
    "<p>If the option requires access to a port, then this DB security group allows access to the port.</p>"
  )
  @as("DBSecurityGroupMemberships")
  dbsecurityGroupMemberships: option<dbsecurityGroupMembershipList>,
  @ocaml.doc("<p>The option settings for this option.</p>") @as("OptionSettings")
  optionSettings: option<optionSettingConfigurationList>,
  @ocaml.doc("<p>The version of the option.</p>") @as("OptionVersion")
  optionVersion: option<string_>,
  @ocaml.doc("<p>If required, the port configured for this option to use.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Indicate if this option is permanent.</p>") @as("Permanent")
  permanent: option<boolean_>,
  @ocaml.doc("<p>Indicate if this option is persistent.</p>") @as("Persistent")
  persistent: option<boolean_>,
  @ocaml.doc("<p>The description of the option.</p>") @as("OptionDescription")
  optionDescription: option<string_>,
  @ocaml.doc("<p>The name of the option.</p>") @as("OptionName") optionName: option<string_>,
}
type installationMediaList = array<installationMedia>
type globalClusterMemberList = array<globalClusterMember>
type filterList = array<filter>
type exportTasksList = array<exportTask>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
type dbsnapshotAttributeList = array<dbsnapshotAttribute>
@ocaml.doc("<p>Contains the details of an Amazon RDS DB snapshot.
      </p>
         <p>This data type is used as a response element 
          in the <code>DescribeDBSnapshots</code> action.
      </p>")
type dbsnapshot = {
  @as("TagList") tagList_: option<tagList_>,
  @ocaml.doc(
    "<p>The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.</p>"
  )
  @as("DbiResourceId")
  dbiResourceId: option<string_>,
  @ocaml.doc("<p>The number of CPU cores and the number of threads per core for the DB instance class
            of the DB instance when the DB snapshot was created.</p>")
  @as("ProcessorFeatures")
  processorFeatures: option<processorFeatureList>,
  @ocaml.doc(
    "<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>"
  )
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>The time zone of the DB snapshot.
            In most cases, the <code>Timezone</code> element is empty.
            <code>Timezone</code> content appears only for
            snapshots taken from 
            Microsoft SQL Server DB instances 
            that were created with a time zone specified.
        </p>")
  @as("Timezone")
  timezone: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB snapshot.</p>") @as("DBSnapshotArn")
  dbsnapshotArn: option<string_>,
  @ocaml.doc("<p>
            If <code>Encrypted</code> is true, the AWS KMS key identifier 
            for the encrypted DB snapshot.
        </p>
         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies whether the DB snapshot is encrypted.</p>") @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc(
    "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
  )
  @as("TdeCredentialArn")
  tdeCredentialArn: option<string_>,
  @ocaml.doc("<p>Specifies the storage type associated with DB snapshot.</p>") @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc(
    "<p>The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was copied from. It only has value in case of cross-customer or cross-region copy.</p>"
  )
  @as("SourceDBSnapshotIdentifier")
  sourceDBSnapshotIdentifier: option<string_>,
  @ocaml.doc("<p>The AWS Region that the DB snapshot was created in or copied from.</p>")
  @as("SourceRegion")
  sourceRegion: option<string_>,
  @ocaml.doc("<p>The percentage of the estimated data that has been transferred.</p>")
  @as("PercentProgress")
  percentProgress: option<integer_>,
  @ocaml.doc("<p>Provides the option group name for the DB snapshot.</p>") @as("OptionGroupName")
  optionGroupName: option<string_>,
  @ocaml.doc(
    "<p>Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>"
  )
  @as("Iops")
  iops: option<integerOptional>,
  @ocaml.doc("<p>Provides the type of the DB snapshot.</p>") @as("SnapshotType")
  snapshotType: option<string_>,
  @ocaml.doc("<p>License model information for the restored DB instance.</p>") @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>Specifies the version of the database engine.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Provides the master username for the DB snapshot.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from
            which the snapshot was taken, was created.</p>")
  @as("InstanceCreateTime")
  instanceCreateTime: option<tstamp>,
  @ocaml.doc("<p>Provides the VPC ID associated with the DB snapshot.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc(
    "<p>Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot.</p>"
  )
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc(
    "<p>Specifies the port that the database engine was listening on at the time of the snapshot.</p>"
  )
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Specifies the status of this DB snapshot.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies the allocated storage size in gibibytes (GiB).</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>Specifies the name of the database engine.</p>") @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>Specifies when the snapshot was taken in Coordinated Universal Time (UTC).</p>")
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<tstamp>,
  @ocaml.doc(
    "<p>Specifies the DB instance identifier of the DB instance this DB snapshot was created from.</p>"
  )
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the identifier for the DB snapshot.</p>") @as("DBSnapshotIdentifier")
  dbsnapshotIdentifier: option<string_>,
}
@ocaml.doc("<p>Contains the details for an Amazon RDS DB security group.
      </p>
         <p>This data type is used as a response element 
          in the <code>DescribeDBSecurityGroups</code> action.
      </p>")
type dbsecurityGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB security group.</p>")
  @as("DBSecurityGroupArn")
  dbsecurityGroupArn: option<string_>,
  @ocaml.doc("<p>
        Contains a list of <code>IPRange</code> elements.
        </p>")
  @as("IPRanges")
  ipranges: option<iprangeList>,
  @ocaml.doc("<p>
        Contains a list of <code>EC2SecurityGroup</code> elements.
        </p>")
  @as("EC2SecurityGroups")
  ec2SecurityGroups: option<ec2SecurityGroupList>,
  @ocaml.doc("<p>Provides the VpcId of the DB security group.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>Provides the description of the DB security group.</p>")
  @as("DBSecurityGroupDescription")
  dbsecurityGroupDescription: option<string_>,
  @ocaml.doc("<p>Specifies the name of the DB security group.</p>") @as("DBSecurityGroupName")
  dbsecurityGroupName: option<string_>,
  @ocaml.doc("<p>Provides the AWS ID of the owner of a specific DB security group.</p>")
  @as("OwnerId")
  ownerId: option<string_>,
}
@ocaml.doc("<p>Represents a set of RDS DB instances, Aurora DB clusters, or both that a proxy can connect to. Currently, each target group
        is associated with exactly one RDS DB instance or Aurora DB cluster.</p>
         <p>This data type is used as a response element in the <code>DescribeDBProxyTargetGroups</code> action.</p>")
type dbproxyTargetGroup = {
  @ocaml.doc("<p>The date and time when the target group was last updated.</p>") @as("UpdatedDate")
  updatedDate: option<tstamp>,
  @ocaml.doc("<p>The date and time when the target group was first created.</p>") @as("CreatedDate")
  createdDate: option<tstamp>,
  @ocaml.doc(
    "<p>The settings that determine the size and behavior of the connection pool for the target group.</p>"
  )
  @as("ConnectionPoolConfig")
  connectionPoolConfig: option<connectionPoolConfigurationInfo>,
  @ocaml.doc("<p>The current status of this target group. A status of <code>available</code> means the
        target group is correctly associated with a database. Other values indicate that you must wait for
        the target group to be ready, or take some action to resolve an issue.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Whether this target group is the first one used for connection requests by the associated proxy.
        Because each proxy is currently associated with a single target group, currently this setting
        is always <code>true</code>.</p>")
  @as("IsDefault")
  isDefault: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) representing the target group.</p>")
  @as("TargetGroupArn")
  targetGroupArn: option<string_>,
  @ocaml.doc(
    "<p>The identifier for the target group. This name must be unique for all target groups owned by your AWS account in the specified AWS Region.</p>"
  )
  @as("TargetGroupName")
  targetGroupName: option<string_>,
  @ocaml.doc("<p>The identifier for the RDS proxy associated with this target group.</p>")
  @as("DBProxyName")
  dbproxyName: option<string_>,
}
type dbproxyEndpointList = array<dbproxyEndpoint>
@ocaml.doc("<p>The data structure representing a proxy managed by the RDS Proxy.</p>
         <p>This data type is used as a response element in the <code>DescribeDBProxies</code> action.</p>")
type dbproxy = {
  @ocaml.doc("<p>The date and time when the proxy was last updated.</p>") @as("UpdatedDate")
  updatedDate: option<tstamp>,
  @ocaml.doc("<p>The date and time when the proxy was first created.</p>") @as("CreatedDate")
  createdDate: option<tstamp>,
  @ocaml.doc("<p>Whether the proxy includes detailed information about SQL statements in its logs.
        This information helps you to debug issues involving SQL behavior or the performance
        and scalability of the proxy connections. The debug information includes the text of
        SQL statements that you submit through the proxy. Thus, only enable this setting
        when needed for debugging, and only when you have security measures in place to
        safeguard any sensitive information that appears in the logs.</p>")
  @as("DebugLogging")
  debugLogging: option<boolean_>,
  @ocaml.doc("<p>The number of seconds a connection to the proxy can have no activity before the proxy drops the client connection.
        The proxy keeps the underlying database connection open and puts it back into the connection pool for reuse by
        later connection requests.</p>
         <p>Default: 1800 (30 minutes)</p>
         <p>Constraints: 1 to 28,800</p>")
  @as("IdleClientTimeout")
  idleClientTimeout: option<integer_>,
  @ocaml.doc(
    "<p>Indicates whether Transport Layer Security (TLS) encryption is required for connections to the proxy.</p>"
  )
  @as("RequireTLS")
  requireTLS: option<boolean_>,
  @ocaml.doc("<p>The endpoint that you can use to connect to the DB proxy. You include the endpoint value in the
        connection string for a database client application.</p>")
  @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) for the IAM role that the proxy uses to access Amazon Secrets Manager.</p>"
  )
  @as("RoleArn")
  roleArn: option<string_>,
  @ocaml.doc("<p>One or more data structures specifying the authorization mechanism to connect to the associated RDS DB instance
        or Aurora DB cluster.</p>")
  @as("Auth")
  auth: option<userAuthConfigInfoList>,
  @ocaml.doc("<p>The EC2 subnet IDs for the proxy.</p>") @as("VpcSubnetIds")
  vpcSubnetIds: option<stringList>,
  @ocaml.doc("<p>Provides a list of VPC security groups that the proxy belongs to.</p>")
  @as("VpcSecurityGroupIds")
  vpcSecurityGroupIds: option<stringList>,
  @ocaml.doc("<p>Provides the VPC ID of the DB proxy.</p>") @as("VpcId") vpcId: option<string_>,
  @ocaml.doc("<p>The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.</p>")
  @as("EngineFamily")
  engineFamily: option<string_>,
  @ocaml.doc("<p>The current status of this proxy. A status of <code>available</code> means the
        proxy is ready to handle requests. Other values indicate that you must wait for
        the proxy to be ready, or take some action to resolve an issue.</p>")
  @as("Status")
  status: option<dbproxyStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the proxy.</p>") @as("DBProxyArn")
  dbproxyArn: option<string_>,
  @ocaml.doc(
    "<p>The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region.</p>"
  )
  @as("DBProxyName")
  dbproxyName: option<string_>,
}
@ocaml.doc("<p>An automated backup of a DB instance. It consists of system backups, transaction logs, and the database instance properties that
            existed at the time you deleted the source instance.</p>")
type dbinstanceAutomatedBackup = {
  @ocaml.doc(
    "<p>The list of replications to different AWS Regions associated with the automated backup.</p>"
  )
  @as("DBInstanceAutomatedBackupsReplications")
  dbinstanceAutomatedBackupsReplications: option<dbinstanceAutomatedBackupsReplicationList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the replicated automated backups.</p>")
  @as("DBInstanceAutomatedBackupsArn")
  dbinstanceAutomatedBackupsArn: option<string_>,
  @ocaml.doc("<p>The retention period for the automated backups.</p>") @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, 
            and otherwise false.</p>")
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>The time zone of the automated backup. In most cases, the <code>Timezone</code> element is empty.
            <code>Timezone</code> content appears only for Microsoft SQL Server DB instances 
            that were created with a time zone specified.</p>")
  @as("Timezone")
  timezone: option<string_>,
  @ocaml.doc("<p>The AWS KMS key ID for an automated backup.</p> 
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies the storage type associated with the automated backup.</p>")
  @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc("<p>Specifies whether the automated backup is encrypted.</p>") @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc(
    "<p>The ARN from the key store with which the automated backup is associated for TDE encryption.</p>"
  )
  @as("TdeCredentialArn")
  tdeCredentialArn: option<string_>,
  @ocaml.doc(
    "<p>The option group the automated backup is associated with. If omitted, the default option group for the engine specified is used.</p>"
  )
  @as("OptionGroupName")
  optionGroupName: option<string_>,
  @ocaml.doc("<p>The IOPS (I/O operations per second) value for the automated backup. </p>")
  @as("Iops")
  iops: option<integerOptional>,
  @ocaml.doc("<p>License model information for the automated backup.</p>") @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>The version of the database engine for the automated backup.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the database engine for this automated backup.</p>") @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>The license model of an automated backup.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Provides the date and time that the DB instance was created.
        </p>")
  @as("InstanceCreateTime")
  instanceCreateTime: option<tstamp>,
  @ocaml.doc("<p>Provides the VPC ID associated with the DB instance</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>The Availability Zone that the automated backup was created in. For information on
            AWS Regions and Availability Zones, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html\">Regions
                and Availability Zones</a>.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>The port number that the automated backup used for connections.</p>
        <p>Default: Inherits from the source DB instance</p>
        <p>Valid Values: <code>1150-65535</code>
         </p>")
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Provides a list of status information for an automated backup:</p>
        <ul>
            <li>
               <p>
                  <code>active</code> - automated backups for current instances</p>
            </li>
            <li>
               <p>
                  <code>retained</code> - automated backups for deleted instances</p>
            </li>
            <li>
               <p>
                  <code>creating</code> - automated backups that are waiting
                for the first automated snapshot to be available.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies the allocated storage size in gibibytes (GiB).</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>Earliest and latest time an instance can be restored to.</p>") @as("RestoreWindow")
  restoreWindow: option<restoreWindow>,
  @ocaml.doc("<p>The customer id of the instance that is/was associated with the automated backup.
        </p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
  @ocaml.doc("<p>The AWS Region associated with the automated backup.</p>") @as("Region")
  region: option<string_>,
  @ocaml.doc(
    "<p>The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.</p>"
  )
  @as("DbiResourceId")
  dbiResourceId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the automated backups.</p>")
  @as("DBInstanceArn")
  dbinstanceArn: option<string_>,
}
type dbclusterSnapshotAttributeList = array<dbclusterSnapshotAttribute>
@ocaml.doc("<p>Contains the details for an Amazon RDS DB cluster snapshot
      </p>
         <p>This data type is used as a response element 
          in the <code>DescribeDBClusterSnapshots</code> action.
      </p>")
type dbclusterSnapshot = {
  @as("TagList") tagList_: option<tagList_>,
  @ocaml.doc(
    "<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>"
  )
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon
            Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.</p>")
  @as("SourceDBClusterSnapshotArn")
  sourceDBClusterSnapshotArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>")
  @as("DBClusterSnapshotArn")
  dbclusterSnapshotArn: option<string_>,
  @ocaml.doc("<p>If <code>StorageEncrypted</code> is true, the AWS KMS key identifier for the encrypted DB cluster snapshot.</p>
         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies whether the DB cluster snapshot is encrypted.</p>")
  @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the percentage of the estimated data that has been transferred.</p>")
  @as("PercentProgress")
  percentProgress: option<integer_>,
  @ocaml.doc("<p>Provides the type of the DB cluster snapshot.</p>") @as("SnapshotType")
  snapshotType: option<string_>,
  @ocaml.doc("<p>Provides the license model information for this DB cluster snapshot.</p>")
  @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>Provides the version of the database engine for this DB cluster snapshot.</p>")
  @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Provides the master username for this DB cluster snapshot.</p>")
  @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc(
    "<p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>"
  )
  @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>Provides the VPC ID associated with the DB cluster snapshot.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc(
    "<p>Specifies the port that the DB cluster was listening on at the time of the snapshot.</p>"
  )
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Specifies the status of this DB cluster snapshot.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies the allocated storage size in gibibytes (GiB).</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>Provides the engine mode of the database engine for this DB cluster snapshot.</p>")
  @as("EngineMode")
  engineMode: option<string_>,
  @ocaml.doc("<p>Specifies the name of the database engine for this DB cluster snapshot.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc(
    "<p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>"
  )
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<tstamp>,
  @ocaml.doc(
    "<p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from.</p>"
  )
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the identifier for the DB cluster snapshot.</p>")
  @as("DBClusterSnapshotIdentifier")
  dbclusterSnapshotIdentifier: option<string_>,
  @ocaml.doc(
    "<p>Provides the list of Availability Zones (AZs) where instances in the DB cluster snapshot can be restored.</p>"
  )
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
}
type dbclusterEndpointList = array<dbclusterEndpoint>
type customAvailabilityZoneList = array<customAvailabilityZone>
@ocaml.doc("<p>This data type is used as a response element in the <code>ModifyDBCluster</code> operation and 
            contains changes that will be applied during the next maintenance window.</p>")
type clusterPendingModifiedValues = {
  @ocaml.doc("<p>The database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc(
    "<p>A value that indicates whether mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.</p>"
  )
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The master credentials for the DB cluster.</p>") @as("MasterUserPassword")
  masterUserPassword: option<string_>,
  @ocaml.doc("<p>The DBClusterIdentifier value for the DB cluster.</p>") @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
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
@ocaml.doc("<p>A data type representing an Aurora global database.</p>")
type globalCluster = {
  @ocaml.doc("<p>A data object containing all properties for the current state of an in-process or pending failover process for this Aurora global database.
      This object is empty unless the <a>FailoverGlobalCluster</a> API operation has been called on this Aurora global database (<a>GlobalCluster</a>).
    </p>")
  @as("FailoverState")
  failoverState: option<failoverState>,
  @ocaml.doc("<p>
        The list of cluster IDs for secondary clusters within the global database cluster. Currently limited to
        1 item.
      </p>")
  @as("GlobalClusterMembers")
  globalClusterMembers: option<globalClusterMemberList>,
  @ocaml.doc("<p>
        The deletion protection setting for the new global database cluster.
      </p>")
  @as("DeletionProtection")
  deletionProtection: option<booleanOptional>,
  @ocaml.doc("<p>
        The storage encryption setting for the global database cluster.
      </p>")
  @as("StorageEncrypted")
  storageEncrypted: option<booleanOptional>,
  @ocaml.doc("<p>
        The default database name within the new global database cluster.
      </p>")
  @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>
        The Aurora database engine used by the global database cluster.
      </p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc("<p>Specifies the current state of this global database cluster.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the global database cluster.</p>")
  @as("GlobalClusterArn")
  globalClusterArn: option<string_>,
  @ocaml.doc("<p>
        The AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in
        AWS CloudTrail log entries whenever the AWS KMS customer master key (CMK) for the DB cluster is accessed.
      </p>")
  @as("GlobalClusterResourceId")
  globalClusterResourceId: option<string_>,
  @ocaml.doc("<p>
        Contains a user-supplied global database cluster identifier. This identifier is the unique key that
        identifies a global database cluster.
      </p>")
  @as("GlobalClusterIdentifier")
  globalClusterIdentifier: option<string_>,
}
@ocaml.doc("<p>
            Contains the result of a successful invocation of the <code>DescribeEngineDefaultParameters</code> action.
        </p>")
type engineDefaults = {
  @ocaml.doc("<p>Contains a list of engine default parameters.</p>") @as("Parameters")
  parameters: option<parametersList>,
  @ocaml.doc("<p>
            An optional pagination token provided by a previous           
            EngineDefaults request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
  @as("Marker")
  marker: option<string_>,
  @ocaml.doc(
    "<p>Specifies the name of the DB parameter group family that the engine default parameters apply to.</p>"
  )
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
}
@ocaml.doc("<p>Contains the details of an Amazon RDS DB subnet group.
      </p>
         <p>This data type is used as a response element 
          in the <code>DescribeDBSubnetGroups</code> action.
      </p>")
type dbsubnetGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB subnet group.</p>")
  @as("DBSubnetGroupArn")
  dbsubnetGroupArn: option<string_>,
  @ocaml.doc("<p>
        Contains a list of <code>Subnet</code> elements.
        </p>")
  @as("Subnets")
  subnets: option<subnetList>,
  @ocaml.doc("<p>Provides the status of the DB subnet group.</p>") @as("SubnetGroupStatus")
  subnetGroupStatus: option<string_>,
  @ocaml.doc("<p>Provides the VpcId of the DB subnet group.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>Provides the description of the DB subnet group.</p>")
  @as("DBSubnetGroupDescription")
  dbsubnetGroupDescription: option<string_>,
  @ocaml.doc("<p>The name of the DB subnet group.</p>") @as("DBSubnetGroupName")
  dbsubnetGroupName: option<string_>,
}
type dbsnapshotList = array<dbsnapshot>
@ocaml.doc("<p>Contains the results of a successful call to the <code>DescribeDBSnapshotAttributes</code>
    API action.</p>
         <p>Manual DB snapshot attributes are used to authorize other AWS accounts
      to copy or restore a manual DB snapshot. For more information, see the <code>ModifyDBSnapshotAttribute</code>
      API action.</p>")
type dbsnapshotAttributesResult = {
  @ocaml.doc("<p>The list of attributes and values for the manual DB snapshot.</p>")
  @as("DBSnapshotAttributes")
  dbsnapshotAttributes: option<dbsnapshotAttributeList>,
  @ocaml.doc("<p>The identifier of the manual DB snapshot that the attributes apply to.</p>")
  @as("DBSnapshotIdentifier")
  dbsnapshotIdentifier: option<string_>,
}
type dbsecurityGroups = array<dbsecurityGroup>
type dbproxyList = array<dbproxy>
type dbinstanceAutomatedBackupList = array<dbinstanceAutomatedBackup>
@ocaml.doc("<p>
            This data type is used as a response element in the action <code>DescribeDBEngineVersions</code>.
        </p>")
type dbengineVersion = {
  @ocaml.doc(
    "<p>A value that indicates whether you can use Aurora global databases with a specific DB engine version.</p>"
  )
  @as("SupportsGlobalDatabases")
  supportsGlobalDatabases: option<boolean_>,
  @ocaml.doc(
    "<p>A value that indicates whether you can use Aurora parallel query with a specific DB engine version.</p>"
  )
  @as("SupportsParallelQuery")
  supportsParallelQuery: option<boolean_>,
  @ocaml.doc(
    "<p>The status of the DB engine version, either <code>available</code> or <code>deprecated</code>.</p>"
  )
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>
        A list of features supported by the DB engine. Supported feature names include the following.
    </p>
         <ul>
            <li>
               <p>s3Import</p>
            </li>
         </ul>")
  @as("SupportedFeatureNames")
  supportedFeatureNames: option<featureNameList>,
  @ocaml.doc("<p>A list of the supported DB engine modes.</p>") @as("SupportedEngineModes")
  supportedEngineModes: option<engineModeList>,
  @ocaml.doc("<p>Indicates whether the database engine version supports read replicas.</p>")
  @as("SupportsReadReplica")
  supportsReadReplica: option<boolean_>,
  @ocaml.doc(
    "<p>A value that indicates whether the engine version supports exporting the log types specified by ExportableLogTypes to CloudWatch Logs.</p>"
  )
  @as("SupportsLogExportsToCloudwatchLogs")
  supportsLogExportsToCloudwatchLogs: option<boolean_>,
  @ocaml.doc(
    "<p>The types of logs that the database engine has available for export to CloudWatch Logs.</p>"
  )
  @as("ExportableLogTypes")
  exportableLogTypes: option<logTypeList>,
  @ocaml.doc("<p>A list of the time zones supported by this engine for the
            <code>Timezone</code> parameter of the <code>CreateDBInstance</code> action.  
        </p>")
  @as("SupportedTimezones")
  supportedTimezones: option<supportedTimezonesList>,
  @ocaml.doc(
    "<p>A list of engine versions that this database engine version can be upgraded to.</p>"
  )
  @as("ValidUpgradeTarget")
  validUpgradeTarget: option<validUpgradeTargetList>,
  @ocaml.doc("<p>A list of the character sets supported by the Oracle DB engine for the <code>NcharCharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.  
      </p>")
  @as("SupportedNcharCharacterSets")
  supportedNcharCharacterSets: option<supportedCharacterSetsList>,
  @ocaml.doc("<p>A list of the character sets supported by this engine for the <code>CharacterSetName</code> parameter of the <code>CreateDBInstance</code> operation.  
      </p>")
  @as("SupportedCharacterSets")
  supportedCharacterSets: option<supportedCharacterSetsList>,
  @ocaml.doc("<p>
            The default character set for new instances of this engine version,
            if the <code>CharacterSetName</code> parameter of the CreateDBInstance API
            isn't specified.
        </p>")
  @as("DefaultCharacterSet")
  defaultCharacterSet: option<characterSet>,
  @ocaml.doc("<p>The description of the database engine version.</p>")
  @as("DBEngineVersionDescription")
  dbengineVersionDescription: option<string_>,
  @ocaml.doc("<p>The description of the database engine.</p>") @as("DBEngineDescription")
  dbengineDescription: option<string_>,
  @ocaml.doc("<p>The name of the DB parameter group family for the database engine.</p>")
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
  @ocaml.doc("<p>The version number of the database engine.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the database engine.</p>") @as("Engine") engine: option<string_>,
}
type dbclusterSnapshotList = array<dbclusterSnapshot>
@ocaml.doc("<p>Contains the results of a successful call to the <code>DescribeDBClusterSnapshotAttributes</code>
            API action.</p>
        <p>Manual DB cluster snapshot attributes are used to authorize other AWS accounts
            to copy or restore a manual DB cluster snapshot. For more information, see the <code>ModifyDBClusterSnapshotAttribute</code>
            API action.</p>")
type dbclusterSnapshotAttributesResult = {
  @ocaml.doc("<p>The list of attributes and values for the manual DB cluster snapshot.</p>")
  @as("DBClusterSnapshotAttributes")
  dbclusterSnapshotAttributes: option<dbclusterSnapshotAttributeList>,
  @ocaml.doc(
    "<p>The identifier of the manual DB cluster snapshot that the attributes apply to.</p>"
  )
  @as("DBClusterSnapshotIdentifier")
  dbclusterSnapshotIdentifier: option<string_>,
}
@ocaml.doc("<p>Contains the details of an Amazon Aurora DB cluster.
      </p>
         <p>This data type is used as a response element in the <code>DescribeDBClusters</code>,
        <code>StopDBCluster</code>, and <code>StartDBCluster</code> actions.
      </p>")
type dbcluster = {
  @ocaml.doc("<p>A value that specifies that changes to the DB cluster are pending. This element is only included when changes are pending. 
          Specific changes are identified by subelements.</p>")
  @as("PendingModifiedValues")
  pendingModifiedValues: option<clusterPendingModifiedValues>,
  @ocaml.doc("<p>Specifies whether you have requested to enable write forwarding for a secondary cluster
      in an Aurora global database. Because write forwarding takes time to enable, check the
      value of <code>GlobalWriteForwardingStatus</code> to confirm that the request has completed
      before using the write forwarding feature for this cluster.</p>")
  @as("GlobalWriteForwardingRequested")
  globalWriteForwardingRequested: option<booleanOptional>,
  @ocaml.doc("<p>Specifies whether a secondary cluster in an Aurora global database has
        write forwarding enabled, not enabled, or is in the process of enabling it.</p>")
  @as("GlobalWriteForwardingStatus")
  globalWriteForwardingStatus: option<writeForwardingStatus>,
  @as("TagList") tagList_: option<tagList_>,
  @ocaml.doc(
    "<p>The Active Directory Domain membership records associated with the DB cluster.</p>"
  )
  @as("DomainMemberships")
  domainMemberships: option<domainMembershipList>,
  @ocaml.doc(
    "<p>Specifies whether the DB cluster is a clone of a DB cluster owned by a different AWS account.</p>"
  )
  @as("CrossAccountClone")
  crossAccountClone: option<booleanOptional>,
  @ocaml.doc(
    "<p>Specifies whether tags are copied from the DB cluster to snapshots of the DB cluster.</p>"
  )
  @as("CopyTagsToSnapshot")
  copyTagsToSnapshot: option<booleanOptional>,
  @ocaml.doc(
    "<p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>"
  )
  @as("ActivityStreamKinesisStreamName")
  activityStreamKinesisStreamName: option<string_>,
  @ocaml.doc("<p>The AWS KMS key identifier used for encrypting messages in the database activity stream.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
  @as("ActivityStreamKmsKeyId")
  activityStreamKmsKeyId: option<string_>,
  @ocaml.doc("<p>The status of the database activity stream.</p>") @as("ActivityStreamStatus")
  activityStreamStatus: option<activityStreamStatus>,
  @ocaml.doc("<p>The mode of the database activity stream.
           Database events such as a change or access generate an activity stream event.
           The database session can handle these events either synchronously or asynchronously.
       </p>")
  @as("ActivityStreamMode")
  activityStreamMode: option<activityStreamMode>,
  @ocaml.doc("<p>A value that indicates whether the HTTP endpoint for an Aurora Serverless DB cluster is enabled.</p>
         <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
          SQL queries on the Aurora Serverless DB cluster. You can also query your database
          from inside the RDS console with the query editor.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora Serverless</a> in the 
          <i>Amazon Aurora User Guide</i>.</p>")
  @as("HttpEndpointEnabled")
  httpEndpointEnabled: option<booleanOptional>,
  @ocaml.doc("<p>Indicates if the DB cluster has deletion protection enabled.
            The database can't be deleted when deletion protection is enabled.
        </p>")
  @as("DeletionProtection")
  deletionProtection: option<booleanOptional>,
  @as("ScalingConfigurationInfo") scalingConfigurationInfo: option<scalingConfigurationInfo>,
  @ocaml.doc("<p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>,
            <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html\">
            CreateDBCluster</a>.</p>")
  @as("EngineMode")
  engineMode: option<string_>,
  @ocaml.doc("<p>The current capacity of an Aurora Serverless DB cluster. The capacity is 0 (zero) 
          when the cluster is paused.</p>
         <p>For more information about Aurora Serverless, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html\">Using Amazon Aurora Serverless</a> in the 
          <i>Amazon Aurora User Guide</i>.</p>")
  @as("Capacity")
  capacity: option<integerOptional>,
  @ocaml.doc("<p>A list of log types that this DB cluster is configured to export to CloudWatch Logs.</p>
        <p>Log types vary by DB engine. For information about the log types for each DB engine, see
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html\">Amazon RDS Database Log Files</a> in the <i>Amazon Aurora User Guide.</i>
         </p>")
  @as("EnabledCloudwatchLogsExports")
  enabledCloudwatchLogsExports: option<logTypeList>,
  @ocaml.doc("<p>The number of change records stored for Backtrack.</p>")
  @as("BacktrackConsumedChangeRecords")
  backtrackConsumedChangeRecords: option<longOptional>,
  @ocaml.doc("<p>The target backtrack window, in seconds. If this value is set to 0, backtracking is
            disabled for the DB cluster. Otherwise, backtracking is enabled.</p>")
  @as("BacktrackWindow")
  backtrackWindow: option<longOptional>,
  @ocaml.doc("<p>The earliest time to which a DB cluster can be backtracked.</p>")
  @as("EarliestBacktrackTime")
  earliestBacktrackTime: option<tstamp>,
  @ocaml.doc(
    "<p>Specifies the time when the DB cluster was created, in Universal Coordinated Time (UTC).</p>"
  )
  @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>Identifies the clone group to which the DB cluster is associated.</p>")
  @as("CloneGroupId")
  cloneGroupId: option<string_>,
  @ocaml.doc(
    "<p>A value that indicates whether the mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled.</p>"
  )
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<booleanOptional>,
  @ocaml.doc("<p>Provides a list of the AWS Identity and Access Management (IAM) roles that are associated with the DB cluster. 
          IAM roles that are associated with a DB cluster grant permission for the DB cluster to access other AWS services
          on your behalf.</p>")
  @as("AssociatedRoles")
  associatedRoles: option<dbclusterRoles>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB cluster.</p>") @as("DBClusterArn")
  dbclusterArn: option<string_>,
  @ocaml.doc("<p>The AWS Region-unique, immutable identifier for the DB cluster. This identifier is found in AWS CloudTrail log entries whenever 
          the AWS KMS CMK for the DB cluster is accessed.</p>")
  @as("DbClusterResourceId")
  dbClusterResourceId: option<string_>,
  @ocaml.doc("<p>If <code>StorageEncrypted</code> is enabled, the AWS KMS key identifier for the encrypted DB cluster.</p>
         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies whether the DB cluster is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>")
  @as("HostedZoneId")
  hostedZoneId: option<string_>,
  @ocaml.doc("<p>Provides a list of VPC security groups that the DB cluster belongs to.</p>")
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc("<p>Provides the list of instances that make up the DB cluster.</p>")
  @as("DBClusterMembers")
  dbclusterMembers: option<dbclusterMemberList>,
  @ocaml.doc("<p>Contains one or more identifiers of the read replicas associated with this DB
            cluster.</p>")
  @as("ReadReplicaIdentifiers")
  readReplicaIdentifiers: option<readReplicaIdentifierList>,
  @ocaml.doc("<p>Contains the identifier of the source DB cluster if this DB cluster is a read
            replica.</p>")
  @as("ReplicationSourceIdentifier")
  replicationSourceIdentifier: option<string_>,
  @ocaml.doc(
    "<p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>"
  )
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>Specifies the daily time range during which automated backups are
            created if automated backups are enabled, as determined
            by the <code>BackupRetentionPeriod</code>.
        </p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<string_>,
  @ocaml.doc("<p>Provides the list of option group memberships for this DB cluster.</p>")
  @as("DBClusterOptionGroupMemberships")
  dbclusterOptionGroupMemberships: option<dbclusterOptionGroupMemberships>,
  @ocaml.doc("<p>Contains the master username for the DB cluster.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the port that the database engine is listening on.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc(
    "<p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>"
  )
  @as("LatestRestorableTime")
  latestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The name of the database engine to be used for this DB cluster.</p>") @as("Engine")
  engine: option<string_>,
  @ocaml.doc(
    "<p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>"
  )
  @as("MultiAZ")
  multiAZ: option<booleanOptional>,
  @ocaml.doc("<p>Identifies all custom endpoints associated with the cluster.</p>")
  @as("CustomEndpoints")
  customEndpoints: option<stringList>,
  @ocaml.doc("<p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances 
            connections across the Aurora Replicas that are available in a DB cluster. As clients request new connections 
            to the reader endpoint, Aurora distributes the connection requests among the Aurora Replicas in the DB cluster. 
            This functionality can help balance your read workload across multiple Aurora Replicas in your DB cluster. </p>
        <p>If a failover occurs, and the Aurora Replica that you are connected to is promoted 
            to be the primary instance, your connection is dropped. To 
            continue sending your read workload to other Aurora Replicas in the cluster,
            you can then reconnect to the reader endpoint.</p>")
  @as("ReaderEndpoint")
  readerEndpoint: option<string_>,
  @ocaml.doc("<p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>")
  @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc("<p>The earliest time to which a database can be restored with point-in-time
            restore.</p>")
  @as("EarliestRestorableTime")
  earliestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Specifies the progress of the operation as a percentage.</p>")
  @as("PercentProgress")
  percentProgress: option<string_>,
  @ocaml.doc("<p>Specifies the current state of this DB cluster.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc(
    "<p>Specifies information on the subnet group associated with the DB cluster, including the name, description, and subnets in the subnet group.</p>"
  )
  @as("DBSubnetGroup")
  dbsubnetGroup: option<string_>,
  @ocaml.doc("<p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>")
  @as("DBClusterParameterGroup")
  dbclusterParameterGroup: option<string_>,
  @ocaml.doc(
    "<p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that identifies a DB cluster.</p>"
  )
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc(
    "<p>Contains the name of the initial database of this DB cluster that was provided at create time, if one was specified when the DB cluster was created. This same name is returned for the life of the DB cluster.</p>"
  )
  @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc(
    "<p>If present, specifies the name of the character set that this cluster is associated with.</p>"
  )
  @as("CharacterSetName")
  characterSetName: option<string_>,
  @ocaml.doc("<p>Specifies the number of days for which automatic DB snapshots are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integerOptional>,
  @ocaml.doc(
    "<p>Provides the list of Availability Zones (AZs) where instances in the DB cluster can be created.</p>"
  )
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
  @ocaml.doc("<p>For all database engines except Amazon Aurora, <code>AllocatedStorage</code> specifies the allocated storage size in gibibytes (GiB). 
          For Aurora, <code>AllocatedStorage</code> always returns 1, because Aurora DB cluster storage size isn't fixed, but instead automatically
      adjusts as needed.</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integerOptional>,
}
@ocaml.doc("<p>Information about valid modifications that you can make to your DB instance.
            Contains the result of a successful call to the 
            <code>DescribeValidDBInstanceModifications</code> action.
            You can use this information when you call
            <code>ModifyDBInstance</code>.
        </p>")
type validDBInstanceModificationsMessage = {
  @ocaml.doc("<p>Valid processor features for your DB instance.
        </p>")
  @as("ValidProcessorFeatures")
  validProcessorFeatures: option<availableProcessorFeatureList>,
  @ocaml.doc("<p>Valid storage options for your DB instance.
        </p>")
  @as("Storage")
  storage: option<validStorageOptionsList>,
}
@ocaml.doc("<p>Available option.</p>")
type optionGroupOption = {
  @ocaml.doc("<p>The versions that are available for the option.</p>")
  @as("OptionGroupOptionVersions")
  optionGroupOptionVersions: option<optionGroupOptionVersionsList>,
  @ocaml.doc(
    "<p>The option settings that are available (and the default value) for each option in an option group.</p>"
  )
  @as("OptionGroupOptionSettings")
  optionGroupOptionSettings: option<optionGroupOptionSettingsList>,
  @ocaml.doc("<p>If true, you can change the option to an earlier version of the option.  
            This only applies to options that have different versions available.
        </p>")
  @as("SupportsOptionVersionDowngrade")
  supportsOptionVersionDowngrade: option<booleanOptional>,
  @ocaml.doc("<p>If true, you can only use this option with a DB instance that is in a VPC.
        </p>")
  @as("VpcOnly")
  vpcOnly: option<boolean_>,
  @ocaml.doc("<p>If true, you must enable the Auto Minor Version Upgrade setting for your DB instance 
            before you can use this option.
            You can enable Auto Minor Version Upgrade when you first create your DB instance,
            or by modifying your DB instance later.
        </p>")
  @as("RequiresAutoMinorEngineVersionUpgrade")
  requiresAutoMinorEngineVersionUpgrade: option<boolean_>,
  @ocaml.doc(
    "<p>Permanent options can never be removed from an option group. An option group containing a permanent option can't be removed from a DB instance.</p>"
  )
  @as("Permanent")
  permanent: option<boolean_>,
  @ocaml.doc(
    "<p>Persistent options can't be removed from an option group while DB instances are associated with the option group. If you disassociate all DB instances from the option group, your can remove the persistent option from the option group.</p>"
  )
  @as("Persistent")
  persistent: option<boolean_>,
  @ocaml.doc("<p>The options that conflict with this option.</p>") @as("OptionsConflictsWith")
  optionsConflictsWith: option<optionsConflictsWith>,
  @ocaml.doc("<p>The options that are prerequisites for this option.</p>") @as("OptionsDependedOn")
  optionsDependedOn: option<optionsDependedOn>,
  @ocaml.doc("<p>If the option requires a port, specifies the default port for the option.</p>")
  @as("DefaultPort")
  defaultPort: option<integerOptional>,
  @ocaml.doc("<p>Specifies whether the option requires a port.</p>") @as("PortRequired")
  portRequired: option<boolean_>,
  @ocaml.doc("<p>The minimum required engine version for the option to be applied.</p>")
  @as("MinimumRequiredMinorEngineVersion")
  minimumRequiredMinorEngineVersion: option<string_>,
  @ocaml.doc("<p>Indicates the major engine version that the option is available for.</p>")
  @as("MajorEngineVersion")
  majorEngineVersion: option<string_>,
  @ocaml.doc("<p>The name of the engine that this option can be applied to.</p>") @as("EngineName")
  engineName: option<string_>,
  @ocaml.doc("<p>The description of the option.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The name of the option.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc("<p></p>")
type optionGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the option group.</p>") @as("OptionGroupArn")
  optionGroupArn: option<string_>,
  @ocaml.doc("<p>If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>false</code>, this field is blank.
           If <b>AllowsVpcAndNonVpcInstanceMemberships</b> is <code>true</code> and this field is blank, 
           then this option group can be applied to both VPC and non-VPC instances.
           If this field contains a value, then this option group can only be 
           applied to instances that are in the VPC indicated by this field.
        </p>")
  @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>Indicates whether this option group can be applied to both VPC 
           and non-VPC instances. The value <code>true</code> indicates the option group 
           can be applied to both VPC and non-VPC instances.
        </p>")
  @as("AllowsVpcAndNonVpcInstanceMemberships")
  allowsVpcAndNonVpcInstanceMemberships: option<boolean_>,
  @ocaml.doc("<p>Indicates what options are available in the option group.</p>") @as("Options")
  options: option<optionsList>,
  @ocaml.doc("<p>Indicates the major engine version associated with this option group.</p>")
  @as("MajorEngineVersion")
  majorEngineVersion: option<string_>,
  @ocaml.doc("<p>Indicates the name of the engine that this option group can be applied to.</p>")
  @as("EngineName")
  engineName: option<string_>,
  @ocaml.doc("<p>Provides a description of the option group.</p>") @as("OptionGroupDescription")
  optionGroupDescription: option<string_>,
  @ocaml.doc("<p>Specifies the name of the option group.</p>") @as("OptionGroupName")
  optionGroupName: option<string_>,
}
type globalClusterList = array<globalCluster>
type dbsubnetGroups = array<dbsubnetGroup>
@ocaml.doc("<p>Contains the details of an Amazon RDS DB instance.
      </p>
         <p>This data type is used as a response element in the <code>DescribeDBInstances</code> action.
      </p>")
type dbinstance = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the recovery point in AWS Backup.</p>")
  @as("AwsBackupRecoveryPointArn")
  awsBackupRecoveryPointArn: option<string_>,
  @ocaml.doc("<p>Specifies whether a customer-owned IP address (CoIP) is enabled for an RDS on Outposts DB instance.</p>
        <p>A <i>CoIP </i>provides local or external connectivity to resources in
            your Outpost subnets through your on-premises network. For some use cases, a CoIP can
            provide lower latency for connections to the DB instance from outside of its virtual
            private cloud (VPC) on your local network.</p>
        <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Working with Amazon RDS on AWS Outposts</a> 
            in the <i>Amazon RDS User Guide</i>.</p>
        <p>For more information about CoIPs, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing\">Customer-owned IP addresses</a> 
            in the <i>AWS Outposts User Guide</i>.</p>")
  @as("CustomerOwnedIpEnabled")
  customerOwnedIpEnabled: option<booleanOptional>,
  @ocaml.doc("<p>The list of replicated automated backups associated with the DB instance.</p>")
  @as("DBInstanceAutomatedBackupsReplications")
  dbinstanceAutomatedBackupsReplications: option<dbinstanceAutomatedBackupsReplicationList>,
  @as("TagList") tagList_: option<tagList_>,
  @ocaml.doc(
    "<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>"
  )
  @as("MaxAllocatedStorage")
  maxAllocatedStorage: option<integerOptional>,
  @ocaml.doc("<p>Specifies the listener connection endpoint for SQL Server Always On.</p>")
  @as("ListenerEndpoint")
  listenerEndpoint: option<endpoint>,
  @ocaml.doc("<p>
            The AWS Identity and Access Management (IAM) roles associated with the DB instance.
        </p>")
  @as("AssociatedRoles")
  associatedRoles: option<dbinstanceRoles>,
  @ocaml.doc("<p>Indicates if the DB instance has deletion protection enabled.
            The database can't be deleted when deletion protection is enabled.
            For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\">
                Deleting a DB Instance</a>.
        </p>")
  @as("DeletionProtection")
  deletionProtection: option<boolean_>,
  @ocaml.doc(
    "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
  )
  @as("ProcessorFeatures")
  processorFeatures: option<processorFeatureList>,
  @ocaml.doc("<p>A list of log types that this DB instance is configured to export to CloudWatch Logs.</p>
        <p>Log types vary by DB engine. For information about the log types for each DB engine, see
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html\">Amazon RDS Database Log Files</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
  @as("EnabledCloudwatchLogsExports")
  enabledCloudwatchLogsExports: option<logTypeList>,
  @ocaml.doc(
    "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
  )
  @as("PerformanceInsightsRetentionPeriod")
  performanceInsightsRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>The AWS KMS key identifier for encryption of Performance Insights data.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
  @as("PerformanceInsightsKMSKeyId")
  performanceInsightsKMSKeyId: option<string_>,
  @ocaml.doc(
    "<p>True if Performance Insights is enabled for the DB instance, and otherwise false.</p>"
  )
  @as("PerformanceInsightsEnabled")
  performanceInsightsEnabled: option<booleanOptional>,
  @ocaml.doc("<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database accounts is enabled, and otherwise false.</p>

         <p>IAM database authentication can be enabled for the following database engines</p>
         <ul>
            <li>
               <p>For MySQL 5.6, minor version 5.6.34 or higher</p>
            </li>
            <li>
               <p>For MySQL 5.7, minor version 5.7.16 or higher</p>
            </li>
            <li>
               <p>Aurora 5.6 or higher. To enable IAM database authentication for Aurora, see DBCluster Type.</p>
            </li>
         </ul>")
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>The time zone of the DB instance.
            In most cases, the <code>Timezone</code> element is empty.
            <code>Timezone</code> content appears only for
            Microsoft SQL Server DB instances 
            that were created with a time zone specified.
        </p>")
  @as("Timezone")
  timezone: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB instance.</p>") @as("DBInstanceArn")
  dbinstanceArn: option<string_>,
  @ocaml.doc("<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance 
      after a failure of the existing primary instance. For more information, 
      see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\">
          Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.
    </p>")
  @as("PromotionTier")
  promotionTier: option<integerOptional>,
  @ocaml.doc(
    "<p>The ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to Amazon CloudWatch Logs.</p>"
  )
  @as("MonitoringRoleArn")
  monitoringRoleArn: option<string_>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the Enhanced Monitoring metrics data for the DB instance.</p>"
  )
  @as("EnhancedMonitoringResourceArn")
  enhancedMonitoringResourceArn: option<string_>,
  @ocaml.doc(
    "<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.</p>"
  )
  @as("MonitoringInterval")
  monitoringInterval: option<integerOptional>,
  @ocaml.doc("<p>Specifies whether tags are copied from the DB instance to snapshots of the DB instance.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this
            value for an Aurora DB instance has no effect on the DB cluster setting. For more
            information, see <code>DBCluster</code>.</p>")
  @as("CopyTagsToSnapshot")
  copyTagsToSnapshot: option<boolean_>,
  @ocaml.doc(
    "<p>The Active Directory Domain membership records associated with the DB instance.</p>"
  )
  @as("DomainMemberships")
  domainMemberships: option<domainMembershipList>,
  @ocaml.doc("<p>The identifier of the CA certificate for this DB instance.</p>")
  @as("CACertificateIdentifier")
  cacertificateIdentifier: option<string_>,
  @ocaml.doc("<p>The AWS Region-unique, immutable identifier for the DB instance. This identifier is found in AWS CloudTrail log 
          entries whenever the AWS KMS customer master key (CMK) for the DB instance is accessed.</p>")
  @as("DbiResourceId")
  dbiResourceId: option<string_>,
  @ocaml.doc("<p>
            If <code>StorageEncrypted</code> is true, the AWS KMS key identifier 
            for the encrypted DB instance.
        </p>
         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Specifies whether the DB instance is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc(
    "<p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.</p>"
  )
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc(
    "<p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB cluster, this can be a different port than the DB cluster port.</p>"
  )
  @as("DbInstancePort")
  dbInstancePort: option<integer_>,
  @ocaml.doc(
    "<p>The ARN from the key store with which the instance is associated for TDE encryption.</p>"
  )
  @as("TdeCredentialArn")
  tdeCredentialArn: option<string_>,
  @ocaml.doc("<p>Specifies the storage type associated with DB instance.</p>") @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc("<p>The status of a read replica. If the instance isn't a read replica, this is
            blank.</p>")
  @as("StatusInfos")
  statusInfos: option<dbinstanceStatusInfoList>,
  @ocaml.doc("<p>Specifies the accessibility options for the DB instance.</p>
         <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, 
          and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, 
          and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
         <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>  
         <p>For more information, see <a>CreateDBInstance</a>.</p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc(
    "<p>If present, specifies the name of the secondary Availability Zone for a DB instance with multi-AZ support.</p>"
  )
  @as("SecondaryAvailabilityZone")
  secondaryAvailabilityZone: option<string_>,
  @ocaml.doc("<p>The name of the NCHAR character set for the Oracle DB instance. This character set specifies the
            Unicode encoding for data stored in table columns of type NCHAR, NCLOB, or NVARCHAR2.
        </p>")
  @as("NcharCharacterSetName")
  ncharCharacterSetName: option<string_>,
  @ocaml.doc(
    "<p>If present, specifies the name of the character set that this instance is associated with.</p>"
  )
  @as("CharacterSetName")
  characterSetName: option<string_>,
  @ocaml.doc("<p>Provides the list of option group memberships for this DB instance.</p>")
  @as("OptionGroupMemberships")
  optionGroupMemberships: option<optionGroupMembershipList>,
  @ocaml.doc("<p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>") @as("Iops")
  iops: option<integerOptional>,
  @ocaml.doc("<p>License model information for this DB instance.</p>") @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>The open mode of an Oracle read replica. The default is <code>open-read-only</code>. 
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Working with Oracle Read Replicas for Amazon RDS</a> 
            in the <i>Amazon RDS User Guide</i>.</p>
        <note>
            <p>This attribute is only supported in RDS for Oracle.</p>
        </note>")
  @as("ReplicaMode")
  replicaMode: option<replicaMode>,
  @ocaml.doc("<p>Contains one or more identifiers of Aurora DB clusters to which the RDS DB instance
            is replicated as a read replica. For example, when you create an Aurora read replica of
            an RDS MySQL DB instance, the Aurora MySQL DB cluster for the Aurora read replica is
            shown. This output does not contain information about cross region Aurora read
            replicas.</p>
        <note>
            <p>Currently, each RDS DB instance can have only one Aurora read replica.</p>
        </note>")
  @as("ReadReplicaDBClusterIdentifiers")
  readReplicaDBClusterIdentifiers: option<readReplicaDBClusterIdentifierList>,
  @ocaml.doc("<p>Contains one or more identifiers of the read replicas associated with this DB
            instance.</p>")
  @as("ReadReplicaDBInstanceIdentifiers")
  readReplicaDBInstanceIdentifiers: option<readReplicaDBInstanceIdentifierList>,
  @ocaml.doc("<p>Contains the identifier of the source DB instance if this DB instance is a read
            replica.</p>")
  @as("ReadReplicaSourceDBInstanceIdentifier")
  readReplicaSourceDBInstanceIdentifier: option<string_>,
  @ocaml.doc("<p>A value that indicates that minor version patches are applied automatically.</p>")
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Specifies if the DB instance is a Multi-AZ deployment.</p>") @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc(
    "<p>Specifies the latest time to which a database can be restored with point-in-time restore.</p>"
  )
  @as("LatestRestorableTime")
  latestRestorableTime: option<tstamp>,
  @ocaml.doc(
    "<p>A value that specifies that changes to the DB instance are pending. This element is only included when changes are pending. Specific changes are identified by subelements.</p>"
  )
  @as("PendingModifiedValues")
  pendingModifiedValues: option<pendingModifiedValues>,
  @ocaml.doc(
    "<p>Specifies the weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>"
  )
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc(
    "<p>Specifies information on the subnet group associated with the DB instance, including the name, description, and subnets in the subnet group.</p>"
  )
  @as("DBSubnetGroup")
  dbsubnetGroup: option<dbsubnetGroup>,
  @ocaml.doc("<p>Specifies the name of the Availability Zone the DB instance is located in.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<string_>,
  @ocaml.doc("<p>Provides the list of DB parameter groups applied to this DB instance.</p>")
  @as("DBParameterGroups")
  dbparameterGroups: option<dbparameterGroupStatusList>,
  @ocaml.doc(
    "<p>Provides a list of VPC security group elements that the DB instance belongs to.</p>"
  )
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<vpcSecurityGroupMembershipList>,
  @ocaml.doc("<p>
        A list of DB security group elements containing 
        <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements.
        </p>")
  @as("DBSecurityGroups")
  dbsecurityGroups: option<dbsecurityGroupMembershipList>,
  @ocaml.doc("<p>Specifies the number of days for which automatic DB snapshots are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>
        Specifies the daily time range during which automated backups are
        created if automated backups are enabled, as determined
        by the <code>BackupRetentionPeriod</code>.
        </p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<string_>,
  @ocaml.doc("<p>Provides the date and time the DB instance was created.</p>")
  @as("InstanceCreateTime")
  instanceCreateTime: option<tstamp>,
  @ocaml.doc("<p>Specifies the allocated storage size specified in gibibytes.</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>Specifies the connection endpoint.</p>") @as("Endpoint")
  endpoint: option<endpoint>,
  @ocaml.doc("<p>The meaning of this parameter differs according to the database engine you use.</p>
         <p>
            <b>MySQL, MariaDB, SQL Server, PostgreSQL</b>
         </p>
         <p>Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.</p>
         <p>Type: String</p>
         <p>
            <b>Oracle</b>
         </p>
         <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the returned parameters do not apply to an Oracle DB instance.</p>")
  @as("DBName")
  dbname: option<string_>,
  @ocaml.doc("<p>Contains the master username for the DB instance.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the current state of this database.</p>
         <p>For information about DB instance statuses, see
      <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Status.html\">DB Instance Status</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
  @as("DBInstanceStatus")
  dbinstanceStatus: option<string_>,
  @ocaml.doc("<p>The name of the database engine to be used for this DB instance.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc(
    "<p>Contains the name of the compute and memory capacity class of the DB instance.</p>"
  )
  @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc(
    "<p>Contains a user-supplied database identifier. This identifier is the unique key that identifies a DB instance.</p>"
  )
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
}
type dbengineVersionList = array<dbengineVersion>
type dbclusterList = array<dbcluster>
type optionGroupsList = array<optionGroup>
@ocaml.doc("<p>List of available option group options.</p>")
type optionGroupOptionsList = array<optionGroupOption>
type dbinstanceList = array<dbinstance>
@ocaml.doc("<fullname>Amazon Relational Database Service</fullname>
        <p> </p> 
         <p>Amazon Relational Database Service (Amazon RDS) is a web service that makes it easier to set up, operate, and 
          scale a relational database in the cloud. It provides cost-efficient, resizeable capacity for an industry-standard relational 
          database and manages common database administration tasks, freeing up developers to focus on what makes their applications 
          and businesses unique.</p>
         <p>Amazon RDS gives you access to the capabilities of a MySQL, MariaDB, PostgreSQL, Microsoft SQL Server, 
          Oracle, or Amazon Aurora database server. These capabilities mean that the code, applications, and tools 
          you already use today with your existing databases work with Amazon RDS without modification. Amazon RDS 
          automatically backs up your database and maintains the database software that powers your DB instance. Amazon RDS 
          is flexible: you can scale your DB instance's compute resources and storage capacity to meet your 
          application's demand. As with all Amazon Web Services, there are no up-front investments, and you pay only for 
          the resources you use.</p>
         <p>This interface reference for Amazon RDS contains documentation for a programming or command line interface 
          you can use to manage Amazon RDS. Amazon RDS is asynchronous, which means that some interfaces might 
          require techniques such as polling or callback functions to determine when a command has been applied. In this 
          reference, the parameter descriptions indicate whether a command is applied immediately, on the next instance reboot, 
          or during the maintenance window. The reference structure is as follows, and we list following some related topics 
          from the user guide.</p>
    
         <p>
            <b>Amazon RDS API Reference</b>
         </p>
    
         <ul>
            <li>
               <p>For the alphabetical list of API actions, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Operations.html\">API Actions</a>.</p>
            </li>
            <li>
               <p>For the alphabetical list of data types, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Types.html\">Data Types</a>.</p>
            </li>
            <li>
               <p>For a list of common query parameters, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonParameters.html\">Common Parameters</a>.</p>
            </li>
            <li>
               <p>For descriptions of the error codes, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/CommonErrors.html\">Common Errors</a>.</p>
            </li>
         </ul>
    
         <p>
            <b>Amazon RDS User Guide</b>
         </p>
    
         <ul>
            <li>
               <p>For a summary of the Amazon RDS interfaces, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html#Welcome.Interfaces\">Available RDS Interfaces</a>.</p>
            </li>
            <li>
               <p>For more information about how to use the Query API, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Using_the_Query_API.html\">Using the Query API</a>.</p>
            </li>
         </ul>")
module StopActivityStream = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether or not the database activity stream is to stop as soon as possible, 
            regardless of the maintenance window for the database.</p>")
    @as("ApplyImmediately")
    applyImmediately: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the DB cluster for the database activity stream.
            For example, <code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>.
        </p>")
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The status of the database activity stream.</p>") @as("Status")
    status: option<activityStreamStatus>,
    @ocaml.doc(
      "<p>The name of the Amazon Kinesis data stream used for the database activity stream.</p>"
    )
    @as("KinesisStreamName")
    kinesisStreamName: option<string_>,
    @ocaml.doc("<p>The AWS KMS key identifier used for encrypting messages in the database activity stream.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "StopActivityStreamCommand"
  let make = (~resourceArn, ~applyImmediately=?, ()) =>
    new({applyImmediately: applyImmediately, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartActivityStream = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether or not the database activity stream is to start as soon as possible, 
            regardless of the maintenance window for the database.</p>")
    @as("ApplyImmediately")
    applyImmediately: option<booleanOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier for encrypting messages in the database activity stream.
            The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>")
    @as("KmsKeyId")
    kmsKeyId: string_,
    @ocaml.doc("<p>Specifies the mode of the database activity stream.
            Database events such as a change or access generate an activity stream event.
            The database session can handle these events either synchronously or asynchronously.
        </p>")
    @as("Mode")
    mode: activityStreamMode,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the DB cluster,
            for example, <code>arn:aws:rds:us-east-1:12345667890:cluster:das-cluster</code>.</p>")
    @as("ResourceArn")
    resourceArn: string_,
  }
  type response = {
    @ocaml.doc("<p>Indicates whether or not the database activity stream will start as soon as possible, 
            regardless of the maintenance window for the database.</p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The mode of the database activity stream.</p>") @as("Mode")
    mode: option<activityStreamMode>,
    @ocaml.doc("<p>The status of the database activity stream.</p>") @as("Status")
    status: option<activityStreamStatus>,
    @ocaml.doc(
      "<p>The name of the Amazon Kinesis data stream to be used for the database activity stream.</p>"
    )
    @as("KinesisStreamName")
    kinesisStreamName: option<string_>,
    @ocaml.doc(
      "<p>The AWS KMS key identifier for encryption of messages in the database activity stream.</p>"
    )
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "StartActivityStreamCommand"
  let make = (~kmsKeyId, ~mode, ~resourceArn, ~applyImmediately=?, ()) =>
    new({
      applyImmediately: applyImmediately,
      kmsKeyId: kmsKeyId,
      mode: mode,
      resourceArn: resourceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveRoleFromDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the feature for the DB instance that the IAM role is to be disassociated from.
            For the list of supported feature names, see <code>DBEngineVersion</code>.
        </p>")
    @as("FeatureName")
    featureName: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB instance,
            for example, <code>arn:aws:iam::123456789012:role/AccessRole</code>.</p>")
    @as("RoleArn")
    roleArn: string_,
    @ocaml.doc("<p>The name of the DB instance to disassociate the IAM role from.</p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "RemoveRoleFromDBInstanceCommand"
  let make = (~featureName, ~roleArn, ~dbinstanceIdentifier, ()) =>
    new({featureName: featureName, roleArn: roleArn, dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveRoleFromDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the feature for the DB cluster that the IAM role is to be disassociated from.
            For the list of supported feature names, see <a>DBEngineVersion</a>.</p>")
    @as("FeatureName")
    featureName: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the Aurora DB cluster, for example
        <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>")
    @as("RoleArn")
    roleArn: string_,
    @ocaml.doc("<p>The name of the DB cluster to disassociate the IAM role from.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "RemoveRoleFromDBClusterCommand"
  let make = (~roleArn, ~dbclusterIdentifier, ~featureName=?, ()) =>
    new({featureName: featureName, roleArn: roleArn, dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyCurrentDBClusterCapacity = {
  type t
  type request = {
    @ocaml.doc("<p>The action to take when the timeout is reached, either <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>
        <p>
            <code>ForceApplyCapacityChange</code>, the default, sets the capacity to the specified value as soon as possible.</p>
        <p>
            <code>RollbackCapacityChange</code> ignores the capacity change if a scaling point isn't found in the timeout period.</p>")
    @as("TimeoutAction")
    timeoutAction: option<string_>,
    @ocaml.doc("<p>The amount of time, in seconds, that Aurora Serverless tries to find a scaling point
            to perform seamless scaling before enforcing the timeout action. The default is
            300.</p>
        <ul>
            <li>
                <p>Value must be from 10 through 600.</p>
            </li>
         </ul>")
    @as("SecondsBeforeTimeout")
    secondsBeforeTimeout: option<integerOptional>,
    @ocaml.doc("<p>The DB cluster capacity.</p>
        <p>When you change the capacity of a paused Aurora Serverless DB cluster, it automatically resumes.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>For Aurora MySQL, valid capacity values are <code>1</code>, <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>128</code>, and <code>256</code>.</p>
            </li>
            <li>
                <p>For Aurora PostgreSQL, valid capacity values are <code>2</code>, <code>4</code>, <code>8</code>, <code>16</code>, <code>32</code>, <code>64</code>, <code>192</code>, and <code>384</code>.</p>
            </li>
         </ul>")
    @as("Capacity")
    capacity: option<integerOptional>,
    @ocaml.doc("<p>The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must match the identifier of an existing DB cluster.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {
    @ocaml.doc("<p>The timeout action of a call to <code>ModifyCurrentDBClusterCapacity</code>, either 
            <code>ForceApplyCapacityChange</code> or <code>RollbackCapacityChange</code>.</p>")
    @as("TimeoutAction")
    timeoutAction: option<string_>,
    @ocaml.doc(
      "<p>The number of seconds before a call to <code>ModifyCurrentDBClusterCapacity</code> times out.</p>"
    )
    @as("SecondsBeforeTimeout")
    secondsBeforeTimeout: option<integerOptional>,
    @ocaml.doc("<p>The current capacity of the DB cluster.</p>") @as("CurrentCapacity")
    currentCapacity: option<integerOptional>,
    @ocaml.doc("<p>A value that specifies the capacity that the DB cluster scales to next.</p>")
    @as("PendingCapacity")
    pendingCapacity: option<integerOptional>,
    @ocaml.doc("<p>A user-supplied DB cluster identifier. This identifier is the unique key that
            identifies a DB cluster. </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ModifyCurrentDBClusterCapacityCommand"
  let make = (~dbclusterIdentifier, ~timeoutAction=?, ~secondsBeforeTimeout=?, ~capacity=?, ()) =>
    new({
      timeoutAction: timeoutAction,
      secondsBeforeTimeout: secondsBeforeTimeout,
      capacity: capacity,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DownloadDBLogFilePortion = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The number of lines to download. If the number of lines specified results in a file over 1 MB in size, the file is truncated at 1 MB in size.</p>
         <p>If the NumberOfLines parameter is specified, then the block of lines returned can be from the beginning 
            or the end of the log file, depending on the value of the Marker parameter.</p> 
            <ul>
            <li>
               <p>If neither Marker or NumberOfLines are specified, the entire log file is returned up to a 
              maximum of 10000 lines, starting with the most recent log entries first.</p>
            </li>
            <li>
               <p>If 
              NumberOfLines is specified and Marker isn't specified, then the most recent lines from the end 
                    of the log file are returned.</p>
            </li>
            <li>
               <p>If Marker is specified as \"0\", then the specified 
                      number of lines from the beginning of the log file are returned.</p>
            </li>
            <li>
               <p>You can 
                        download the log file in blocks of lines by specifying the size of the block using 
                    the NumberOfLines parameter, and by specifying a value of \"0\" for the Marker parameter in your 
                    first request. Include the Marker value returned in the response as the Marker value for the next 
                    request, continuing until the AdditionalDataPending response element returns false.</p>
            </li>
         </ul>")
    @as("NumberOfLines")
    numberOfLines: option<integer_>,
    @ocaml.doc(
      "<p>The pagination token provided in the previous request or \"0\". If the Marker parameter is specified the response includes only records beyond the marker until the end of the file or up to NumberOfLines.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The name of the log file to be downloaded.</p>") @as("LogFileName")
    logFileName: string_,
    @ocaml.doc("<p>The customer-assigned name of the DB instance that contains the log files you want to list.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  @ocaml.doc(
    "<p>This data type is used as a response element to <code>DownloadDBLogFilePortion</code>.</p>"
  )
  type response = {
    @ocaml.doc("<p>Boolean value that if true, indicates there is more data to be downloaded.</p>")
    @as("AdditionalDataPending")
    additionalDataPending: option<boolean_>,
    @ocaml.doc(
      "<p>A pagination token that can be used in a later DownloadDBLogFilePortion request.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Entries from the specified log file.</p>") @as("LogFileData")
    logFileData: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DownloadDBLogFilePortionCommand"
  let make = (~logFileName, ~dbinstanceIdentifier, ~numberOfLines=?, ~marker=?, ()) =>
    new({
      numberOfLines: numberOfLines,
      marker: marker,
      logFileName: logFileName,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteOptionGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the option group to be deleted.</p>
         <note>
            <p>You can't delete default option groups.</p>
         </note>")
    @as("OptionGroupName")
    optionGroupName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteOptionGroupCommand"
  let make = (~optionGroupName, ()) => new({optionGroupName: optionGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the database subnet group to delete.</p>
         <note>
            <p>You can't delete the default subnet group.</p>
         </note>
         <p>Constraints:</p>
         <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBSubnetGroupCommand"
  let make = (~dbsubnetGroupName, ()) => new({dbsubnetGroupName: dbsubnetGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBSecurityGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the DB security group to delete.</p>
         <note>
            <p>You can't delete the default DB security group.</p>
         </note>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
            <li>
               <p>Must not be \"Default\"</p>
            </li>
         </ul>")
    @as("DBSecurityGroupName")
    dbsecurityGroupName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBSecurityGroupCommand"
  let make = (~dbsecurityGroupName, ()) => new({dbsecurityGroupName: dbsecurityGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be the name of an existing DB parameter group</p>
            </li>
            <li>
               <p>You can't delete a default DB parameter group</p>
            </li>
            <li>
               <p>Can't be associated with any DB instances</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBParameterGroupCommand"
  let make = (~dbparameterGroupName, ()) => new({dbparameterGroupName: dbparameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the DB cluster parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be the name of an existing DB cluster parameter group.</p>
            </li>
            <li>
               <p>You can't delete a default DB cluster parameter group.</p>
            </li>
            <li>
               <p>Can't be associated with any DB clusters.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }

  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DeleteDBClusterParameterGroupCommand"
  let make = (~dbclusterParameterGroupName, ()) =>
    new({dbclusterParameterGroupName: dbclusterParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module BacktrackDBCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to backtrack the DB cluster to the earliest possible
            backtrack time when <i>BacktrackTo</i> is set to a timestamp earlier than the earliest
            backtrack time. When this parameter is disabled and <i>BacktrackTo</i> is set to a timestamp earlier than the earliest
            backtrack time, an error occurs.</p>")
    @as("UseEarliestTimeOnPointInTimeUnavailable")
    useEarliestTimeOnPointInTimeUnavailable: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to force the DB cluster to backtrack when binary logging is
            enabled. Otherwise, an error occurs when binary logging is enabled.</p>")
    @as("Force")
    force: option<booleanOptional>,
    @ocaml.doc("<p>The timestamp of the time to backtrack the DB cluster to, specified in ISO
            8601 format. For more information about ISO 8601, see the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia
            page.</a>
         </p>
        <note>
            <p>If the specified time isn't a consistent time for the DB cluster, 
                Aurora automatically chooses the nearest possible consistent time for the DB cluster.</p>
        </note>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain a valid ISO 8601 timestamp.</p>
            </li>
            <li>
                <p>Can't contain a timestamp set in the future.</p>
            </li>
         </ul>
        <p>Example: <code>2017-07-08T18:00Z</code>
         </p>")
    @as("BacktrackTo")
    backtrackTo: tstamp,
    @ocaml.doc("<p>The DB cluster identifier of the DB cluster to be backtracked. This parameter is
            stored as a lowercase string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <p>Example: <code>my-cluster1</code>
        </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = dbclusterBacktrack
  @module("@aws-sdk/client-rds") @new external new: request => t = "BacktrackDBClusterCommand"
  let make = (
    ~backtrackTo,
    ~dbclusterIdentifier,
    ~useEarliestTimeOnPointInTimeUnavailable=?,
    ~force=?,
    (),
  ) =>
    new({
      useEarliestTimeOnPointInTimeUnavailable: useEarliestTimeOnPointInTimeUnavailable,
      force: force,
      backtrackTo: backtrackTo,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddRoleToDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the feature for the DB instance that the IAM role is to be associated with. 
            For the list of supported feature names, see <a>DBEngineVersion</a>.
        </p>")
    @as("FeatureName")
    featureName: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to associate with the DB instance, for
            example <code>arn:aws:iam::123456789012:role/AccessRole</code>. </p>")
    @as("RoleArn")
    roleArn: string_,
    @ocaml.doc("<p>The name of the DB instance to associate the IAM role with.</p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "AddRoleToDBInstanceCommand"
  let make = (~featureName, ~roleArn, ~dbinstanceIdentifier, ()) =>
    new({featureName: featureName, roleArn: roleArn, dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddRoleToDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the feature for the DB cluster that the IAM role is to be associated with. 
            For the list of supported feature names, see <a>DBEngineVersion</a>.</p>")
    @as("FeatureName")
    featureName: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to associate with the Aurora DB
            cluster, for example, <code>arn:aws:iam::123456789012:role/AuroraAccessRole</code>.</p>")
    @as("RoleArn")
    roleArn: string_,
    @ocaml.doc("<p>The name of the DB cluster to associate the IAM role with.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "AddRoleToDBClusterCommand"
  let make = (~roleArn, ~dbclusterIdentifier, ~featureName=?, ()) =>
    new({featureName: featureName, roleArn: roleArn, dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartExportTask = {
  type t
  type request = {
    @ocaml.doc("<p>The data to be exported from the snapshot. 
            If this parameter is not provided, all the snapshot data is exported.
            Valid values are the following:</p>
        <ul>
            <li>
               <p>
                  <code>database</code> - Export all the data from a specified database.</p>
            </li>
            <li>
               <p>
                  <code>database.table</code> 
                  <i>table-name</i> - 
                Export a table of the snapshot. This format is valid only for RDS for MySQL, RDS for MariaDB, and Aurora MySQL.</p>
            </li>
            <li>
               <p>
                  <code>database.schema</code> 
                  <i>schema-name</i> - Export a database schema of the snapshot. 
                This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
            </li>
            <li>
               <p>
                  <code>database.schema.table</code> 
                  <i>table-name</i> - Export a table of the database schema. 
                This format is valid only for RDS for PostgreSQL and Aurora PostgreSQL.</p>
            </li>
         </ul>")
    @as("ExportOnly")
    exportOnly: option<stringList>,
    @ocaml.doc(
      "<p>The Amazon S3 bucket prefix to use as the file name and path of the exported snapshot.</p>"
    )
    @as("S3Prefix")
    s3Prefix: option<string_>,
    @ocaml.doc("<p>The ID of the AWS KMS customer master key (CMK) to use to encrypt the snapshot exported to Amazon S3. The AWS KMS 
            key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK). 
            The caller of this operation must be authorized to 
            execute the following operations. These can be set in the AWS KMS key policy: </p>
        <ul>
            <li>
               <p>GrantOperation.Encrypt</p>
            </li>
            <li>
               <p>GrantOperation.Decrypt</p>
            </li>
            <li>
               <p>GrantOperation.GenerateDataKey</p>
            </li>
            <li>
               <p>GrantOperation.GenerateDataKeyWithoutPlaintext</p>
            </li>
            <li>
               <p>GrantOperation.ReEncryptFrom</p>
            </li>
            <li>
               <p>GrantOperation.ReEncryptTo</p>
            </li>
            <li>
               <p>GrantOperation.CreateGrant</p>
            </li>
            <li>
               <p>GrantOperation.DescribeKey</p>
            </li>
            <li>
               <p>GrantOperation.RetireGrant</p>
            </li>
         </ul>")
    @as("KmsKeyId")
    kmsKeyId: string_,
    @ocaml.doc("<p>The name of the IAM role to use for writing to the Amazon S3 bucket 
            when exporting a snapshot. </p>")
    @as("IamRoleArn")
    iamRoleArn: string_,
    @ocaml.doc("<p>The name of the Amazon S3 bucket to export the snapshot to.</p>")
    @as("S3BucketName")
    s3BucketName: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the snapshot to export to Amazon S3.</p>")
    @as("SourceArn")
    sourceArn: string_,
    @ocaml.doc("<p>A unique identifier for the snapshot export task. This ID isn't an identifier for
            the Amazon S3 bucket where the snapshot is to be exported to. </p>")
    @as("ExportTaskIdentifier")
    exportTaskIdentifier: string_,
  }
  type response = exportTask
  @module("@aws-sdk/client-rds") @new external new: request => t = "StartExportTaskCommand"
  let make = (
    ~kmsKeyId,
    ~iamRoleArn,
    ~s3BucketName,
    ~sourceArn,
    ~exportTaskIdentifier,
    ~exportOnly=?,
    ~s3Prefix=?,
    (),
  ) =>
    new({
      exportOnly: exportOnly,
      s3Prefix: s3Prefix,
      kmsKeyId: kmsKeyId,
      iamRoleArn: iamRoleArn,
      s3BucketName: s3BucketName,
      sourceArn: sourceArn,
      exportTaskIdentifier: exportTaskIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTagsFromResource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The tag key (name) of the tag to be removed.</p>") @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc("<p>The Amazon RDS resource that the tags are removed from. This value is an Amazon Resource Name (ARN). For information about  
            creating an ARN, 
            see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">
                Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("ResourceName")
    resourceName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "RemoveTagsFromResourceCommand"
  let make = (~tagKeys, ~resourceName, ()) => new({tagKeys: tagKeys, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ModifyDBClusterEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>List of DB instance identifiers that aren't part of the custom endpoint group.
       All other eligible instances are reachable through the custom endpoint.
       Only relevant if the list of static members is empty.</p>")
    @as("ExcludedMembers")
    excludedMembers: option<stringList>,
    @ocaml.doc("<p>List of DB instance identifiers that are part of the custom endpoint group.</p>")
    @as("StaticMembers")
    staticMembers: option<stringList>,
    @ocaml.doc(
      "<p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>"
    )
    @as("EndpointType")
    endpointType: option<string_>,
    @ocaml.doc(
      "<p>The identifier of the endpoint to modify. This parameter is stored as a lowercase string.</p>"
    )
    @as("DBClusterEndpointIdentifier")
    dbclusterEndpointIdentifier: string_,
  }
  type response = dbclusterEndpoint
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBClusterEndpointCommand"
  let make = (
    ~dbclusterEndpointIdentifier,
    ~excludedMembers=?,
    ~staticMembers=?,
    ~endpointType=?,
    (),
  ) =>
    new({
      excludedMembers: excludedMembers,
      staticMembers: staticMembers,
      endpointType: endpointType,
      dbclusterEndpointIdentifier: dbclusterEndpointIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>A value that indicates whether to remove the override for the default certificate. 
            If the override is removed, the default certificate is the system
            default.</p>")
    @as("RemoveCustomerOverride")
    removeCustomerOverride: option<booleanOptional>,
    @ocaml.doc("<p>The new default certificate identifier to override the current one with.</p>
         <p>To determine the valid values, use the <code>describe-certificates</code> AWS CLI
            command or the <code>DescribeCertificates</code> API operation.</p>")
    @as("CertificateIdentifier")
    certificateIdentifier: option<string_>,
  }
  type response = {@as("Certificate") certificate: option<certificate>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyCertificatesCommand"
  let make = (~removeCustomerOverride=?, ~certificateIdentifier=?, ()) =>
    new({
      removeCustomerOverride: removeCustomerOverride,
      certificateIdentifier: certificateIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportInstallationMedia = {
  type t
  type request = {
    @ocaml.doc("<p>The path to the installation medium for the operating system associated with the specified DB engine.</p>
        <p>Example: <code>WindowsISO/en_windows_server_2016_x64_dvd_9327751.iso</code>
         </p>")
    @as("OSInstallationMediaPath")
    osinstallationMediaPath: string_,
    @ocaml.doc("<p>The path to the installation medium for the specified DB engine.</p>
         <p>Example: <code>SQLServerISO/en_sql_server_2016_enterprise_x64_dvd_8701793.iso</code>
         </p>")
    @as("EngineInstallationMediaPath")
    engineInstallationMediaPath: string_,
    @ocaml.doc("<p>The version number of the database engine to use.</p>
         <p>For a list of valid engine versions, call <a>DescribeDBEngineVersions</a>.</p>
         <p>The following are the database engines and links to information about the major and minor 
          versions. The list only includes DB engines that require an on-premises 
          customer provided license.</p>
      
         <p>
            <b>Microsoft SQL Server</b>
         </p>
      
         <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.VersionSupport\">
          Microsoft SQL Server Versions on Amazon RDS</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EngineVersion")
    engineVersion: string_,
    @ocaml.doc("<p>The name of the database engine to be used for this instance.
      </p>
      
         <p>The list only includes supported DB engines that require an on-premises 
          customer provided license.
      </p>
      
         <p>Valid Values:
      </p>
         <ul>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("Engine")
    engine: string_,
    @ocaml.doc(
      "<p>The identifier of the custom Availability Zone (AZ) to import the installation media to.</p>"
    )
    @as("CustomAvailabilityZoneId")
    customAvailabilityZoneId: string_,
  }
  type response = installationMedia
  @module("@aws-sdk/client-rds") @new external new: request => t = "ImportInstallationMediaCommand"
  let make = (
    ~osinstallationMediaPath,
    ~engineInstallationMediaPath,
    ~engineVersion,
    ~engine,
    ~customAvailabilityZoneId,
    (),
  ) =>
    new({
      osinstallationMediaPath: osinstallationMediaPath,
      engineInstallationMediaPath: engineInstallationMediaPath,
      engineVersion: engineVersion,
      engine: engine,
      customAvailabilityZoneId: customAvailabilityZoneId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterDBProxyTargets = {
  type t
  type request = {
    @ocaml.doc("<p>One or more DB cluster identifiers.</p>") @as("DBClusterIdentifiers")
    dbclusterIdentifiers: option<stringList>,
    @ocaml.doc("<p>One or more DB instance identifiers.</p>") @as("DBInstanceIdentifiers")
    dbinstanceIdentifiers: option<stringList>,
    @ocaml.doc("<p>The identifier of the <code>DBProxyTargetGroup</code>.</p>")
    @as("TargetGroupName")
    targetGroupName: option<string_>,
    @ocaml.doc(
      "<p>The identifier of the <code>DBProxy</code> that is associated with the <code>DBProxyTargetGroup</code>.</p>"
    )
    @as("DBProxyName")
    dbproxyName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "DeregisterDBProxyTargetsCommand"
  let make = (
    ~dbproxyName,
    ~dbclusterIdentifiers=?,
    ~dbinstanceIdentifiers=?,
    ~targetGroupName=?,
    (),
  ) =>
    new({
      dbclusterIdentifiers: dbclusterIdentifiers,
      dbinstanceIdentifiers: dbinstanceIdentifiers,
      targetGroupName: targetGroupName,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInstallationMedia = {
  type t
  type request = {
    @ocaml.doc("<p>The installation medium ID.</p>") @as("InstallationMediaId")
    installationMediaId: string_,
  }
  type response = installationMedia
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteInstallationMediaCommand"
  let make = (~installationMediaId, ()) => new({installationMediaId: installationMediaId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterEndpoint = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.</p>"
    )
    @as("DBClusterEndpointIdentifier")
    dbclusterEndpointIdentifier: string_,
  }
  type response = dbclusterEndpoint
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBClusterEndpointCommand"
  let make = (~dbclusterEndpointIdentifier, ()) =>
    new({dbclusterEndpointIdentifier: dbclusterEndpointIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelExportTask = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the snapshot export task to cancel.</p>")
    @as("ExportTaskIdentifier")
    exportTaskIdentifier: string_,
  }
  type response = exportTask
  @module("@aws-sdk/client-rds") @new external new: request => t = "CancelExportTaskCommand"
  let make = (~exportTaskIdentifier, ()) => new({exportTaskIdentifier: exportTaskIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveSourceIdentifierFromSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
            The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> 
            for a DB instance or the name of a security group.
        </p>")
    @as("SourceIdentifier")
    sourceIdentifier: string_,
    @ocaml.doc(
      "<p>The name of the RDS event notification subscription you want to remove a source identifier from.</p>"
    )
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RemoveSourceIdentifierFromSubscriptionCommand"
  let make = (~sourceIdentifier, ~subscriptionName, ()) =>
    new({sourceIdentifier: sourceIdentifier, subscriptionName: subscriptionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
            A value that indicates whether to activate the subscription.
      </p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p>
            A list of event categories for a source type (<code>SourceType</code>) that you want to subscribe to. 
            You can see a list of the categories for a given source type 
            in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html\">Events</a> in the <i>Amazon RDS User Guide</i> 
            or by using the <code>DescribeEventCategories</code> operation.
        </p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The type of source that is generating the events. For example, if you want to be notified of events generated by a DB instance, you would set this parameter to db-instance. If this value isn't specified, all events are returned.</p>
         <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> 
         </p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>"
    )
    @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc("<p>The name of the RDS event notification subscription.</p>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyEventSubscriptionCommand"
  let make = (
    ~subscriptionName,
    ~enabled=?,
    ~eventCategories=?,
    ~sourceType=?,
    ~snsTopicArn=?,
    (),
  ) =>
    new({
      enabled: enabled,
      eventCategories: eventCategories,
      sourceType: sourceType,
      snsTopicArn: snsTopicArn,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBProxyEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The VPC security group IDs for the DB proxy endpoint. When the DB proxy endpoint
        uses a different VPC than the original proxy, you also specify a different
        set of security group IDs than for the original proxy.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<stringList>,
    @ocaml.doc("<p>The new identifier for the <code>DBProxyEndpoint</code>. An identifier must
        begin with a letter and must contain only ASCII letters, digits, and hyphens; it
        can't end with a hyphen or contain two consecutive hyphens.</p>")
    @as("NewDBProxyEndpointName")
    newDBProxyEndpointName: option<dbproxyEndpointName>,
    @ocaml.doc(
      "<p>The name of the DB proxy sociated with the DB proxy endpoint that you want to modify.</p>"
    )
    @as("DBProxyEndpointName")
    dbproxyEndpointName: dbproxyEndpointName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>DBProxyEndpoint</code> object representing the new settings for the DB proxy endpoint.</p>"
    )
    @as("DBProxyEndpoint")
    dbproxyEndpoint: option<dbproxyEndpoint>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBProxyEndpointCommand"
  let make = (~dbproxyEndpointName, ~vpcSecurityGroupIds=?, ~newDBProxyEndpointName=?, ()) =>
    new({
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      newDBProxyEndpointName: newDBProxyEndpointName,
      dbproxyEndpointName: dbproxyEndpointName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAttributes = {
  type t

  @ocaml.doc("<p>Data returned by the <b>DescribeAccountAttributes</b> action.</p>")
  type response = {
    @ocaml.doc("<p>A list of <code>AccountQuota</code> objects. Within this list, each quota has a name, 
            a count of usage toward the quota maximum, and a maximum value for the quota.</p>")
    @as("AccountQuotas")
    accountQuotas: option<accountQuotaList>,
  }
  @module("@aws-sdk/client-rds") @new external new: unit => t = "DescribeAccountAttributesCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the RDS event notification subscription you want to delete.</p>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteEventSubscriptionCommand"
  let make = (~subscriptionName, ()) => new({subscriptionName: subscriptionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBProxyEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the DB proxy endpoint to delete.</p>") @as("DBProxyEndpointName")
    dbproxyEndpointName: dbproxyEndpointName,
  }
  type response = {
    @ocaml.doc(
      "<p>The data structure representing the details of the DB proxy endpoint that you delete.</p>"
    )
    @as("DBProxyEndpoint")
    dbproxyEndpoint: option<dbproxyEndpoint>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBProxyEndpointCommand"
  let make = (~dbproxyEndpointName, ()) => new({dbproxyEndpointName: dbproxyEndpointName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCustomAvailabilityZone = {
  type t
  type request = {
    @ocaml.doc("<p>The custom AZ identifier.</p>") @as("CustomAvailabilityZoneId")
    customAvailabilityZoneId: string_,
  }
  type response = {
    @as("CustomAvailabilityZone") customAvailabilityZone: option<customAvailabilityZone>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DeleteCustomAvailabilityZoneCommand"
  let make = (~customAvailabilityZoneId, ()) =>
    new({customAvailabilityZoneId: customAvailabilityZoneId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>
          A value that indicates whether to activate the subscription. If the event notification subscription isn't activated, the subscription is created but not active.
      </p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p>The list of identifiers of the event sources for which events are returned. If not specified, then all sources are included in the response. 
          An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens. It can't end with a hyphen or contain two consecutive hyphens.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If <code>SourceIds</code> are supplied, <code>SourceType</code> must also be provided.</p>
            </li>
            <li>
               <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p>
            </li>
         </ul>")
    @as("SourceIds")
    sourceIds: option<sourceIdsList>,
    @ocaml.doc("<p> A list of event categories for a particular source type (<code>SourceType</code>)
            that you want to subscribe to. You can see a list of the categories for a given source
            type in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html\">Events</a> in the
                <i>Amazon RDS User Guide</i> or by using the <code>DescribeEventCategories</code> operation. </p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The type of source that is generating the events. For example, if you want to be
            notified of events generated by a DB instance, you set this parameter to
                <code>db-instance</code>. If this value isn't specified, all events are
            returned.</p>
         <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code> 
         </p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>"
    )
    @as("SnsTopicArn")
    snsTopicArn: string_,
    @ocaml.doc("<p>The name of the subscription.</p>
         <p>Constraints: The name must be less than 255 characters.</p>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateEventSubscriptionCommand"
  let make = (
    ~snsTopicArn,
    ~subscriptionName,
    ~tags=?,
    ~enabled=?,
    ~sourceIds=?,
    ~eventCategories=?,
    ~sourceType=?,
    (),
  ) =>
    new({
      tags: tags,
      enabled: enabled,
      sourceIds: sourceIds,
      eventCategories: eventCategories,
      sourceType: sourceType,
      snsTopicArn: snsTopicArn,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBProxyEndpoint = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A value that indicates whether the DB proxy endpoint can be used for read/write
        or read-only operations. The default is <code>READ_WRITE</code>.</p>")
    @as("TargetRole")
    targetRole: option<dbproxyEndpointTargetRole>,
    @ocaml.doc("<p>The VPC security group IDs for the DB proxy endpoint that you create. You can
        specify a different set of security group IDs than for the original DB proxy.
        The default is the default security group for the VPC.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<stringList>,
    @ocaml.doc("<p>The VPC subnet IDs for the DB proxy endpoint that you create. You can specify a
        different set of subnet IDs than for the original DB proxy.</p>")
    @as("VpcSubnetIds")
    vpcSubnetIds: stringList,
    @ocaml.doc("<p>The name of the DB proxy endpoint to create.</p>") @as("DBProxyEndpointName")
    dbproxyEndpointName: dbproxyEndpointName,
    @ocaml.doc(
      "<p>The name of the DB proxy associated with the DB proxy endpoint that you create.</p>"
    )
    @as("DBProxyName")
    dbproxyName: dbproxyName,
  }
  type response = {
    @ocaml.doc("<p>The <code>DBProxyEndpoint</code> object that is created by the API operation.
        The DB proxy endpoint that you create might provide capabilities such as read/write
        or read-only operations, or using a different VPC than the proxy's default VPC.</p>")
    @as("DBProxyEndpoint")
    dbproxyEndpoint: option<dbproxyEndpoint>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBProxyEndpointCommand"
  let make = (
    ~vpcSubnetIds,
    ~dbproxyEndpointName,
    ~dbproxyName,
    ~tags=?,
    ~targetRole=?,
    ~vpcSecurityGroupIds=?,
    (),
  ) =>
    new({
      tags: tags,
      targetRole: targetRole,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      vpcSubnetIds: vpcSubnetIds,
      dbproxyEndpointName: dbproxyEndpointName,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Tags to assign to the DB parameter group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description for the DB parameter group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The DB parameter group family name. A DB parameter group can be associated with one and only one DB parameter group family, and can be applied only to a DB instance running a database engine and engine version compatible with that DB parameter group family.</p>
         <p>To list all of the available parameter group families, use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --query \"DBEngineVersions[].DBParameterGroupFamily\"</code>
         </p>
         <note>
            <p>The output contains duplicates.</p>
         </note>")
    @as("DBParameterGroupFamily")
    dbparameterGroupFamily: string_,
    @ocaml.doc("<p>The name of the DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <note>
            <p>This value is stored as a lowercase string.</p>
         </note>")
    @as("DBParameterGroupName")
    dbparameterGroupName: string_,
  }
  type response = {@as("DBParameterGroup") dbparameterGroup: option<dbparameterGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBParameterGroupCommand"
  let make = (~description, ~dbparameterGroupFamily, ~dbparameterGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      description: description,
      dbparameterGroupFamily: dbparameterGroupFamily,
      dbparameterGroupName: dbparameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Tags to assign to the DB cluster parameter group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description for the DB cluster parameter group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The DB cluster parameter group family name. A DB cluster parameter group can be associated with one and only one DB cluster 
          parameter group family, and can be applied only to a DB cluster running a database engine and engine version compatible with that DB cluster parameter group family.</p>
         <p>
            <b>Aurora MySQL</b>
         </p>
         <p>Example: <code>aurora5.6</code>, <code>aurora-mysql5.7</code>
         </p>
         <p>
            <b>Aurora PostgreSQL</b>
         </p>
         <p>Example: <code>aurora-postgresql9.6</code>
         </p>")
    @as("DBParameterGroupFamily")
    dbparameterGroupFamily: string_,
    @ocaml.doc("<p>The name of the DB cluster parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the name of an existing DB cluster parameter group.</p>
            </li>
         </ul>
         <note>
            <p>This value is stored as a lowercase string.</p>
         </note>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  type response = {
    @as("DBClusterParameterGroup") dbclusterParameterGroup: option<dbclusterParameterGroup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "CreateDBClusterParameterGroupCommand"
  let make = (~description, ~dbparameterGroupFamily, ~dbclusterParameterGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      description: description,
      dbparameterGroupFamily: dbparameterGroupFamily,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterEndpoint = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Amazon RDS resource.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>List of DB instance identifiers that aren't part of the custom endpoint group.
       All other eligible instances are reachable through the custom endpoint.
       Only relevant if the list of static members is empty.</p>")
    @as("ExcludedMembers")
    excludedMembers: option<stringList>,
    @ocaml.doc("<p>List of DB instance identifiers that are part of the custom endpoint group.</p>")
    @as("StaticMembers")
    staticMembers: option<stringList>,
    @ocaml.doc(
      "<p>The type of the endpoint. One of: <code>READER</code>, <code>WRITER</code>, <code>ANY</code>.</p>"
    )
    @as("EndpointType")
    endpointType: string_,
    @ocaml.doc(
      "<p>The identifier to use for the new endpoint. This parameter is stored as a lowercase string.</p>"
    )
    @as("DBClusterEndpointIdentifier")
    dbclusterEndpointIdentifier: string_,
    @ocaml.doc("<p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
            stored as a lowercase string.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = dbclusterEndpoint
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBClusterEndpointCommand"
  let make = (
    ~endpointType,
    ~dbclusterEndpointIdentifier,
    ~dbclusterIdentifier,
    ~tags=?,
    ~excludedMembers=?,
    ~staticMembers=?,
    (),
  ) =>
    new({
      tags: tags,
      excludedMembers: excludedMembers,
      staticMembers: staticMembers,
      endpointType: endpointType,
      dbclusterEndpointIdentifier: dbclusterEndpointIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomAvailabilityZone = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The IP address of network traffic from your on-premises data center. A custom AZ receives the network traffic.</p>
        <p>Specify this parameter only if <code>ExistingVpnId</code> isn't specified.</p>")
    @as("VpnTunnelOriginatorIP")
    vpnTunnelOriginatorIP: option<string_>,
    @ocaml.doc("<p>The name of a new VPN tunnel between the Amazon RDS website and the VMware vSphere cluster.</p>
        <p>Specify this parameter only if <code>ExistingVpnId</code> isn't specified.</p>")
    @as("NewVpnTunnelName")
    newVpnTunnelName: option<string_>,
    @ocaml.doc("<p>The ID of an existing virtual private network (VPN) between the Amazon RDS website and
            the VMware vSphere cluster.</p>")
    @as("ExistingVpnId")
    existingVpnId: option<string_>,
    @ocaml.doc("<p>The name of the custom Availability Zone (AZ).</p>")
    @as("CustomAvailabilityZoneName")
    customAvailabilityZoneName: string_,
  }
  type response = {
    @as("CustomAvailabilityZone") customAvailabilityZone: option<customAvailabilityZone>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "CreateCustomAvailabilityZoneCommand"
  let make = (
    ~customAvailabilityZoneName,
    ~vpnTunnelOriginatorIP=?,
    ~newVpnTunnelName=?,
    ~existingVpnId=?,
    (),
  ) =>
    new({
      vpnTunnelOriginatorIP: vpnTunnelOriginatorIP,
      newVpnTunnelName: newVpnTunnelName,
      existingVpnId: existingVpnId,
      customAvailabilityZoneName: customAvailabilityZoneName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A description for the copied DB parameter group.</p>")
    @as("TargetDBParameterGroupDescription")
    targetDBParameterGroupDescription: string_,
    @ocaml.doc("<p>The identifier for the copied DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Can't be null, empty, or blank</p>
            </li>
            <li>
               <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-db-parameter-group</code>
         </p>")
    @as("TargetDBParameterGroupIdentifier")
    targetDBParameterGroupIdentifier: string_,
    @ocaml.doc("<p>
        The identifier or ARN for the source DB parameter group.
        For information about  
        creating an ARN, 
        see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">
            Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.
        </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must specify a valid DB parameter group.</p>
            </li>
         </ul>")
    @as("SourceDBParameterGroupIdentifier")
    sourceDBParameterGroupIdentifier: string_,
  }
  type response = {@as("DBParameterGroup") dbparameterGroup: option<dbparameterGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CopyDBParameterGroupCommand"
  let make = (
    ~targetDBParameterGroupDescription,
    ~targetDBParameterGroupIdentifier,
    ~sourceDBParameterGroupIdentifier,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      targetDBParameterGroupDescription: targetDBParameterGroupDescription,
      targetDBParameterGroupIdentifier: targetDBParameterGroupIdentifier,
      sourceDBParameterGroupIdentifier: sourceDBParameterGroupIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBClusterParameterGroup = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A description for the copied DB cluster parameter group.</p>")
    @as("TargetDBClusterParameterGroupDescription")
    targetDBClusterParameterGroupDescription: string_,
    @ocaml.doc("<p>The identifier for the copied DB cluster parameter group.</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Can't be null, empty, or blank</p>
            </li>
            <li>
               <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
        <p>Example: <code>my-cluster-param-group1</code>
        </p>")
    @as("TargetDBClusterParameterGroupIdentifier")
    targetDBClusterParameterGroupIdentifier: string_,
    @ocaml.doc("<p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group.
            For information about  
            creating an ARN, 
            see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">
                Constructing an ARN for Amazon RDS</a> in the <i>Amazon Aurora User Guide</i>.
        </p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must specify a valid DB cluster parameter group.</p>
            </li>
         </ul>")
    @as("SourceDBClusterParameterGroupIdentifier")
    sourceDBClusterParameterGroupIdentifier: string_,
  }
  type response = {
    @as("DBClusterParameterGroup") dbclusterParameterGroup: option<dbclusterParameterGroup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "CopyDBClusterParameterGroupCommand"
  let make = (
    ~targetDBClusterParameterGroupDescription,
    ~targetDBClusterParameterGroupIdentifier,
    ~sourceDBClusterParameterGroupIdentifier,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      targetDBClusterParameterGroupDescription: targetDBClusterParameterGroupDescription,
      targetDBClusterParameterGroupIdentifier: targetDBClusterParameterGroupIdentifier,
      sourceDBClusterParameterGroupIdentifier: sourceDBClusterParameterGroupIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTagsToResource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Amazon RDS resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon RDS resource that the tags are added to. This value is an Amazon Resource Name (ARN). For information about  
            creating an ARN, 
        see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">
            Constructing an RDS Amazon Resource Name (ARN)</a>.</p>")
    @as("ResourceName")
    resourceName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceName, ()) => new({tags: tags, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddSourceIdentifierToSubscription = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the event source to be added.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p>
            </li>
         </ul>")
    @as("SourceIdentifier")
    sourceIdentifier: string_,
    @ocaml.doc(
      "<p>The name of the RDS event notification subscription you want to add a source identifier to.</p>"
    )
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "AddSourceIdentifierToSubscriptionCommand"
  let make = (~sourceIdentifier, ~subscriptionName, ()) =>
    new({sourceIdentifier: sourceIdentifier, subscriptionName: subscriptionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDBInstanceAutomatedBackupsReplication = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source DB instance for which to stop replicating automated backups, for example, 
            <code>arn:aws:rds:us-west-2:123456789012:db:mydatabase</code>.</p>")
    @as("SourceDBInstanceArn")
    sourceDBInstanceArn: string_,
  }
  type response = {
    @as("DBInstanceAutomatedBackup") dbinstanceAutomatedBackup: option<dbinstanceAutomatedBackup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "StopDBInstanceAutomatedBackupsReplicationCommand"
  let make = (~sourceDBInstanceArn, ()) => new({sourceDBInstanceArn: sourceDBInstanceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDBInstanceAutomatedBackupsReplication = {
  type t
  type request = {
    @ocaml.doc("<p>A URL that contains a Signature Version 4 signed request for the StartDBInstanceAutomatedBackupsReplication action to be 
            called in the AWS Region of the source DB instance. The presigned URL must be a valid request for the
            StartDBInstanceAutomatedBackupsReplication API action that can be executed in the AWS Region that contains
            the source DB instance.</p>")
    @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc("<p>The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the
            Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, 
            <code>arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE</code>.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The retention period for the replicated automated backups.</p>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, 
            <code>arn:aws:rds:us-west-2:123456789012:db:mydatabase</code>.</p>")
    @as("SourceDBInstanceArn")
    sourceDBInstanceArn: string_,
  }
  type response = {
    @as("DBInstanceAutomatedBackup") dbinstanceAutomatedBackup: option<dbinstanceAutomatedBackup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "StartDBInstanceAutomatedBackupsReplicationCommand"
  let make = (~sourceDBInstanceArn, ~preSignedUrl=?, ~kmsKeyId=?, ~backupRetentionPeriod=?, ()) =>
    new({
      preSignedUrl: preSignedUrl,
      kmsKeyId: kmsKeyId,
      backupRetentionPeriod: backupRetentionPeriod,
      sourceDBInstanceArn: sourceDBInstanceArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokeDBSecurityGroupIngress = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        The AWS account number of the owner of the EC2 security group
        specified in the <code>EC2SecurityGroupName</code> parameter.
        The AWS access key ID isn't an acceptable value.
        For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
        Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.
        </p>")
    @as("EC2SecurityGroupOwnerId")
    ec2SecurityGroupOwnerId: option<string_>,
    @ocaml.doc("<p>
        The id of the EC2 security group to revoke access from.
        For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
        Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.
        </p>")
    @as("EC2SecurityGroupId")
    ec2SecurityGroupId: option<string_>,
    @ocaml.doc("<p>
        The name of the EC2 security group to revoke access from.
        For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
        Otherwise, EC2SecurityGroupOwnerId and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.
        </p>")
    @as("EC2SecurityGroupName")
    ec2SecurityGroupName: option<string_>,
    @ocaml.doc("<p>
        The IP range to revoke access from. 
        Must be a valid CIDR range. If <code>CIDRIP</code> is specified, 
        <code>EC2SecurityGroupName</code>, <code>EC2SecurityGroupId</code> and <code>EC2SecurityGroupOwnerId</code>
        can't be provided.
        </p>")
    @as("CIDRIP")
    cidrip: option<string_>,
    @ocaml.doc("<p>The name of the DB security group to revoke ingress from.</p>")
    @as("DBSecurityGroupName")
    dbsecurityGroupName: string_,
  }
  type response = {@as("DBSecurityGroup") dbsecurityGroup: option<dbsecurityGroup>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RevokeDBSecurityGroupIngressCommand"
  let make = (
    ~dbsecurityGroupName,
    ~ec2SecurityGroupOwnerId=?,
    ~ec2SecurityGroupId=?,
    ~ec2SecurityGroupName=?,
    ~cidrip=?,
    (),
  ) =>
    new({
      ec2SecurityGroupOwnerId: ec2SecurityGroupOwnerId,
      ec2SecurityGroupId: ec2SecurityGroupId,
      ec2SecurityGroupName: ec2SecurityGroupName,
      cidrip: cidrip,
      dbsecurityGroupName: dbsecurityGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetDBParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code>
            name and <code>ResetAllParameters</code> parameters. To reset specific parameters,
            provide a list of the following: <code>ParameterName</code> and
            <code>ApplyMethod</code>. A maximum of 20 parameters can be modified in a single
            request.</p>
         <p>
            <b>MySQL</b>
         </p>
         <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code>
         </p>
         <p>You can use the immediate value with dynamic parameters only. You can use             
            the <code>pending-reboot</code> value for both dynamic and static parameters, and changes 
            are applied when DB instance reboots.</p>
         <p>
            <b>MariaDB</b>
         </p>
         <p>Valid Values (for Apply method): <code>immediate</code> | <code>pending-reboot</code>
         </p>
         <p>You can use the immediate value with dynamic parameters only. You can use             
      the <code>pending-reboot</code> value for both dynamic and static parameters, and changes 
      are applied when DB instance reboots.</p> 
         <p>
            <b>Oracle</b>
         </p>
         <p>Valid Values (for Apply method): <code>pending-reboot</code>
         </p>")
    @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc("<p>
          A value that indicates whether to reset all parameters in the DB parameter group to default values. 
          By default, all parameters in the DB parameter group are reset to default values.
        </p>")
    @as("ResetAllParameters")
    resetAllParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the name of an existing <code>DBParameterGroup</code>.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: string_,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the 
        <code>ModifyDBParameterGroup</code> or <code>ResetDBParameterGroup</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>The name of the DB parameter group.</p>") @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ResetDBParameterGroupCommand"
  let make = (~dbparameterGroupName, ~parameters=?, ~resetAllParameters=?, ()) =>
    new({
      parameters: parameters,
      resetAllParameters: resetAllParameters,
      dbparameterGroupName: dbparameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of parameter names in the DB cluster parameter group to reset to the default values. You can't use this
        parameter if the <code>ResetAllParameters</code> parameter is enabled.</p>")
    @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc("<p>A value that indicates whether to reset all parameters in the DB cluster parameter group 
        to their default values. You can't use this parameter if there 
        is a list of parameter names specified for the <code>Parameters</code> parameter.</p>")
    @as("ResetAllParameters")
    resetAllParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to reset.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The name of the DB cluster parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <note>
            <p>This value is stored as a lowercase string.</p>
         </note>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ResetDBClusterParameterGroupCommand"
  let make = (~dbclusterParameterGroupName, ~parameters=?, ~resetAllParameters=?, ()) =>
    new({
      parameters: parameters,
      resetAllParameters: resetAllParameters,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterDBProxyTargets = {
  type t
  type request = {
    @ocaml.doc("<p>One or more DB cluster identifiers.</p>") @as("DBClusterIdentifiers")
    dbclusterIdentifiers: option<stringList>,
    @ocaml.doc("<p>One or more DB instance identifiers.</p>") @as("DBInstanceIdentifiers")
    dbinstanceIdentifiers: option<stringList>,
    @ocaml.doc("<p>The identifier of the <code>DBProxyTargetGroup</code>.</p>")
    @as("TargetGroupName")
    targetGroupName: option<string_>,
    @ocaml.doc(
      "<p>The identifier of the <code>DBProxy</code> that is associated with the <code>DBProxyTargetGroup</code>.</p>"
    )
    @as("DBProxyName")
    dbproxyName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>One or more <code>DBProxyTarget</code> objects that are created when you register targets with a target group.</p>"
    )
    @as("DBProxyTargets")
    dbproxyTargets: option<targetList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "RegisterDBProxyTargetsCommand"
  let make = (
    ~dbproxyName,
    ~dbclusterIdentifiers=?,
    ~dbinstanceIdentifiers=?,
    ~targetGroupName=?,
    (),
  ) =>
    new({
      dbclusterIdentifiers: dbclusterIdentifiers,
      dbinstanceIdentifiers: dbinstanceIdentifiers,
      targetGroupName: targetGroupName,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseReservedDBInstancesOffering = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The number of instances to reserve.</p>
         <p>Default: <code>1</code>
         </p>")
    @as("DBInstanceCount")
    dbinstanceCount: option<integerOptional>,
    @ocaml.doc("<p>Customer-specified identifier to track this reservation.</p>
         <p>Example: myreservationID</p>")
    @as("ReservedDBInstanceId")
    reservedDBInstanceId: option<string_>,
    @ocaml.doc("<p>The ID of the Reserved DB instance offering to purchase.</p>
         <p>Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706</p>")
    @as("ReservedDBInstancesOfferingId")
    reservedDBInstancesOfferingId: string_,
  }
  type response = {@as("ReservedDBInstance") reservedDBInstance: option<reservedDBInstance>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "PurchaseReservedDBInstancesOfferingCommand"
  let make = (
    ~reservedDBInstancesOfferingId,
    ~tags=?,
    ~dbinstanceCount=?,
    ~reservedDBInstanceId=?,
    (),
  ) =>
    new({
      tags: tags,
      dbinstanceCount: dbinstanceCount,
      reservedDBInstanceId: reservedDBInstanceId,
      reservedDBInstancesOfferingId: reservedDBInstancesOfferingId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The option group to identify with the upgraded DB snapshot.
        </p>
        
        <p>You can specify this parameter when you upgrade an Oracle DB snapshot.
            The same option group considerations apply when upgrading a DB snapshot as when upgrading a DB instance.
            For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Oracle.html#USER_UpgradeDBInstance.Oracle.OGPG.OG\">Option group considerations</a> in the <i>Amazon RDS User Guide.</i>
        </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The engine version to upgrade the DB snapshot to.
      </p>
      
         <p>The following are the database engines and engine versions that are available when you upgrade a DB snapshot.
      </p>

         <p>
            <b>MySQL</b>
         </p>
      
         <ul>
            <li>
               <p>
                  <code>5.5.46</code> (supported for 5.1 DB snapshots)</p>
            </li>
         </ul>
      
      
         <p>
            <b>Oracle</b>
         </p>
      
         <ul>
            <li>
               <p>
                  <code>12.1.0.2.v8</code>  (supported for 12.1.0.1 DB snapshots)</p>
            </li>
            <li>
               <p>
                  <code>11.2.0.4.v12</code> (supported for 11.2.0.2 DB snapshots)</p>
            </li>
            <li>
               <p>
                  <code>11.2.0.4.v11</code> (supported for 11.2.0.3 DB snapshots)</p>
            </li>
         </ul>
      
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>For the list of engine versions that are available for upgrading a DB snapshot, see 
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.PostgreSQL.html#USER_UpgradeDBInstance.PostgreSQL.MajorVersion\">
              Upgrading the PostgreSQL DB Engine for Amazon RDS</a>.
      </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The identifier of the DB snapshot to modify.</p>") @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: string_,
  }
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBSnapshotCommand"
  let make = (~dbsnapshotIdentifier, ~optionGroupName=?, ~engineVersion=?, ()) =>
    new({
      optionGroupName: optionGroupName,
      engineVersion: engineVersion,
      dbsnapshotIdentifier: dbsnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBProxyTargetGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The new name for the modified <code>DBProxyTarget</code>. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>"
    )
    @as("NewName")
    newName: option<string_>,
    @ocaml.doc(
      "<p>The settings that determine the size and behavior of the connection pool for the target group.</p>"
    )
    @as("ConnectionPoolConfig")
    connectionPoolConfig: option<connectionPoolConfiguration>,
    @ocaml.doc("<p>The name of the new proxy to which to assign the target group.</p>")
    @as("DBProxyName")
    dbproxyName: string_,
    @ocaml.doc("<p>The name of the new target group to assign to the proxy.</p>")
    @as("TargetGroupName")
    targetGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>The settings of the modified <code>DBProxyTarget</code>.</p>")
    @as("DBProxyTargetGroup")
    dbproxyTargetGroup: option<dbproxyTargetGroup>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBProxyTargetGroupCommand"
  let make = (~dbproxyName, ~targetGroupName, ~newName=?, ~connectionPoolConfig=?, ()) =>
    new({
      newName: newName,
      connectionPoolConfig: connectionPoolConfig,
      dbproxyName: dbproxyName,
      targetGroupName: targetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBProxy = {
  type t
  type request = {
    @ocaml.doc("<p>The new list of security groups for the <code>DBProxy</code>.</p>")
    @as("SecurityGroups")
    securityGroups: option<stringList>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.</p>"
    )
    @as("RoleArn")
    roleArn: option<string_>,
    @ocaml.doc("<p>Whether the proxy includes detailed information about SQL statements in its logs.
        This information helps you to debug issues involving SQL behavior or the performance
        and scalability of the proxy connections. The debug information includes the text of
        SQL statements that you submit through the proxy. Thus, only enable this setting
        when needed for debugging, and only when you have security measures in place to
        safeguard any sensitive information that appears in the logs.</p>")
    @as("DebugLogging")
    debugLogging: option<booleanOptional>,
    @ocaml.doc("<p>The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this
        value higher or lower than the connection timeout limit for the associated database.</p>")
    @as("IdleClientTimeout")
    idleClientTimeout: option<integerOptional>,
    @ocaml.doc("<p>Whether Transport Layer Security (TLS) encryption is required for connections to the proxy.
        By enabling this setting, you can enforce encrypted TLS connections to the proxy, even if the associated database doesn't
        use TLS.</p>")
    @as("RequireTLS")
    requireTLS: option<booleanOptional>,
    @ocaml.doc("<p>The new authentication settings for the <code>DBProxy</code>.</p>") @as("Auth")
    auth: option<userAuthConfigList>,
    @ocaml.doc(
      "<p>The new identifier for the <code>DBProxy</code>. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>"
    )
    @as("NewDBProxyName")
    newDBProxyName: option<string_>,
    @ocaml.doc("<p>The identifier for the <code>DBProxy</code> to modify.</p>") @as("DBProxyName")
    dbproxyName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>DBProxy</code> object representing the new settings for the proxy.</p>"
    )
    @as("DBProxy")
    dbproxy: option<dbproxy>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBProxyCommand"
  let make = (
    ~dbproxyName,
    ~securityGroups=?,
    ~roleArn=?,
    ~debugLogging=?,
    ~idleClientTimeout=?,
    ~requireTLS=?,
    ~auth=?,
    ~newDBProxyName=?,
    (),
  ) =>
    new({
      securityGroups: securityGroups,
      roleArn: roleArn,
      debugLogging: debugLogging,
      idleClientTimeout: idleClientTimeout,
      requireTLS: requireTLS,
      auth: auth,
      newDBProxyName: newDBProxyName,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An array of parameter names, values, and the apply method for the parameter update. At least one parameter name, value, and apply method must be supplied; later arguments are optional. A maximum of 20 parameters can be modified in a single request.</p>
         <p>Valid Values (for the application method): <code>immediate | pending-reboot</code>
         </p>
         <note>
            <p>You can use the immediate value with dynamic parameters only. You can use the pending-reboot value for both dynamic and static parameters, and changes are applied when you reboot the DB instance without failover.</p>
         </note>")
    @as("Parameters")
    parameters: parametersList,
    @ocaml.doc("<p>The name of the DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing <code>DBParameterGroup</code>.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: string_,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the 
        <code>ModifyDBParameterGroup</code> or <code>ResetDBParameterGroup</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>The name of the DB parameter group.</p>") @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBParameterGroupCommand"
  let make = (~parameters, ~dbparameterGroupName, ()) =>
    new({parameters: parameters, dbparameterGroupName: dbparameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBClusterParameterGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of parameters in the DB cluster parameter group to modify.</p>")
    @as("Parameters")
    parameters: parametersList,
    @ocaml.doc("<p>The name of the DB cluster parameter group to modify.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The name of the DB cluster parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <note>
            <p>This value is stored as a lowercase string.</p>
         </note>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ModifyDBClusterParameterGroupCommand"
  let make = (~parameters, ~dbclusterParameterGroupName, ()) =>
    new({parameters: parameters, dbclusterParameterGroupName: dbclusterParameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The Amazon RDS resource with tags to be listed. This value is an Amazon Resource Name (ARN). For information about 
            creating an ARN, 
            see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">
                Constructing an ARN for Amazon RDS</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>List of tags returned by the ListTagsForResource operation.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceName, ~filters=?, ()) => new({filters: filters, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSourceRegions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous <code>DescribeSourceRegions</code> request. If this parameter is specified, the response
            includes only records beyond the marker, up to the value specified by
            <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist
            than the specified <code>MaxRecords</code> value, a pagination token called a marker is
            included in the response so you can retrieve the remaining results. </p>
        <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>The source AWS Region name. For example, <code>us-east-1</code>.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must specify a valid AWS Region name.</p>
            </li>
         </ul>")
    @as("RegionName")
    regionName: option<string_>,
  }
  @ocaml.doc(
    "<p>Contains the result of a successful invocation of the <code>DescribeSourceRegions</code> action.</p>"
  )
  type response = {
    @ocaml.doc("<p>A list of SourceRegion instances that contains each source AWS Region that the
            current AWS Region can get a read replica or a DB snapshot from.</p>")
    @as("SourceRegions")
    sourceRegions: option<sourceRegionList>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeSourceRegionsCommand"
  let make = (~filters=?, ~marker=?, ~maxRecords=?, ~regionName=?, ()) =>
    new({filters: filters, marker: marker, maxRecords: maxRecords, regionName: regionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstallationMedia = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request.
          If this parameter is specified, the response includes
          only records beyond the marker,
          up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>An optional pagination token provided by a previous DescribeInstallationMedia request.
          If this parameter is specified, the response includes
          only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more installation media to describe. Supported filters
          include the following:</p>
         <ul>
            <li>
               <p>
                    <code>custom-availability-zone-id</code> - Accepts custom Availability Zone (AZ)
                    identifiers. The results list includes information about only the custom AZs
                    identified by these identifiers.</p>
            </li>
            <li>
               <p>
                  <code>engine</code> - Accepts database engines. The results list includes information about 
              only the database engines identified by these identifiers.</p>
              <p>For more information about the valid engines for installation media, see <a>ImportInstallationMedia</a>.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The installation medium ID.</p>") @as("InstallationMediaId")
    installationMediaId: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The list of <a>InstallationMedia</a> objects for the AWS account.</p>")
    @as("InstallationMedia")
    installationMedia: option<installationMediaList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous
          <a>DescribeInstallationMedia</a> request.
          If this parameter is specified, the response includes
          only records beyond the marker,
          up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeInstallationMediaCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~installationMediaId=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      installationMediaId: installationMediaId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExportTasks = {
  type t
  type request = {
    @ocaml.doc("<p>
            The maximum number of records to include in the response. If more records exist than the 
            specified value, a pagination token called a marker is included in the response. 
            You can use the marker in a later <code>DescribeExportTasks</code> request 
            to retrieve the remaining results.
        </p>
        <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous <code>DescribeExportTasks</code> request.
            If you specify this parameter, the response includes only records beyond the marker,
            up to the value specified by the <code>MaxRecords</code> parameter.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Filters specify one or more snapshot exports to describe. The filters are specified as name-value pairs that define what to
            include in the output. Filter names and values are case-sensitive.</p>
        <p>Supported filters include the following: </p>
        <ul>
            <li>
               <p>
                  <code>export-task-identifier</code> - An identifier for the snapshot export task.</p>
            </li>
            <li>
               <p>
                  <code>s3-bucket</code> - The Amazon S3 bucket the snapshot is exported to.</p>
            </li>
            <li>
               <p>
                  <code>source-arn</code> - The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3</p>
            </li>
            <li>
               <p>
                    <code>status</code> - The status of the export task. Must be lowercase, for example, <code>complete</code>.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the snapshot exported to Amazon S3.</p>")
    @as("SourceArn")
    sourceArn: option<string_>,
    @ocaml.doc("<p>The identifier of the snapshot export task to be described.</p>")
    @as("ExportTaskIdentifier")
    exportTaskIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Information about an export of a snapshot to Amazon S3.</p>") @as("ExportTasks")
    exportTasks: option<exportTasksList>,
    @ocaml.doc("<p>A pagination token that can be used in a later <code>DescribeExportTasks</code>
            request. A marker is used for pagination to identify the location to begin output for
            the next response of <code>DescribeExportTasks</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeExportTasksCommand"
  let make = (~maxRecords=?, ~marker=?, ~filters=?, ~sourceArn=?, ~exportTaskIdentifier=?, ()) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      sourceArn: sourceArn,
      exportTaskIdentifier: exportTaskIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        DescribeEvents request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
        you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc(
      "<p>A list of event categories that trigger notifications for a event notification subscription.</p>"
    )
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The number of minutes to retrieve events for.</p>
         <p>Default: 60</p>")
    @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p>
        The end of the time interval for which to retrieve events,
        specified in ISO 8601 format. For more information about ISO 8601, 
        go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>
         </p>
         <p>Example: 2009-07-08T18:00Z</p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p>
        The beginning of the time interval to retrieve events for,
        specified in ISO 8601 format. For more information about ISO 8601, 
        go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>
         </p>
         <p>Example: 2009-07-08T18:00Z</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc(
      "<p>The event source to retrieve events for. If no value is specified, all events are returned.</p>"
    )
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc("<p>The identifier of the event source for which events are returned. If not specified, then all sources are included in the response.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If <code>SourceIdentifier</code> is supplied, <code>SourceType</code> must also be provided.</p>
            </li>
            <li>
               <p>If the source type is a DB instance, a <code>DBInstanceIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB cluster, a <code>DBClusterIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB cluster snapshot, a <code>DBClusterSnapshotIdentifier</code> value must be supplied.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("SourceIdentifier")
    sourceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeEvents</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
        A list of <code>Event</code> instances.
        </p>")
    @as("Events")
    events: option<eventList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous 
            Events request.
            If this parameter is specified, the response includes
            only records beyond the marker, 
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeEventsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~eventCategories=?,
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
      filters: filters,
      eventCategories: eventCategories,
      duration: duration,
      endTime: endTime,
      startTime: startTime,
      sourceType: sourceType,
      sourceIdentifier: sourceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventSubscriptions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            DescribeOrderableDBInstanceOptions request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
            The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
            you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the RDS event notification subscription you want to describe.</p>")
    @as("SubscriptionName")
    subscriptionName: option<string_>,
  }
  @ocaml.doc("<p>Data returned by the <b>DescribeEventSubscriptions</b> action.</p>")
  type response = {
    @ocaml.doc("<p>A list of EventSubscriptions data types.</p>") @as("EventSubscriptionsList")
    eventSubscriptionsList: option<eventSubscriptionsList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            DescribeOrderableDBInstanceOptions request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeEventSubscriptionsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~subscriptionName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      subscriptionName: subscriptionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventCategories = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The type of source that is generating the events.</p>
         <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> | <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> | <code>db-cluster-snapshot</code>
         </p>")
    @as("SourceType")
    sourceType: option<string_>,
  }
  @ocaml.doc("<p>Data returned from the <code>DescribeEventCategories</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>A list of EventCategoriesMap data types.</p>") @as("EventCategoriesMapList")
    eventCategoriesMapList: option<eventCategoriesMapList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeEventCategoriesCommand"
  let make = (~filters=?, ~sourceType=?, ()) => new({filters: filters, sourceType: sourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxyTargets = {
  type t
  type request = {
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
        a pagination token called a marker is included in the response so that the remaining
        results can be retrieved.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The identifier of the <code>DBProxyTargetGroup</code> to describe.</p>")
    @as("TargetGroupName")
    targetGroupName: option<string_>,
    @ocaml.doc("<p>The identifier of the <code>DBProxyTarget</code> to describe.</p>")
    @as("DBProxyName")
    dbproxyName: string_,
  }
  type response = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>An arbitrary number of <code>DBProxyTarget</code> objects, containing details of the corresponding targets.</p>"
    )
    @as("Targets")
    targets: option<targetList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBProxyTargetsCommand"
  let make = (~dbproxyName, ~maxRecords=?, ~marker=?, ~filters=?, ~targetGroupName=?, ()) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      targetGroupName: targetGroupName,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxyEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist
          than the specified <code>MaxRecords</code> value, a pagination token called a marker is
          included in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of a DB proxy endpoint to describe. If you omit this parameter,
        the output includes information about all DB proxy endpoints associated with
        the specified proxy.</p>")
    @as("DBProxyEndpointName")
    dbproxyEndpointName: option<dbproxyEndpointName>,
    @ocaml.doc("<p>The name of the DB proxy whose endpoints you want to describe. If you omit
        this parameter, the output includes information about all DB proxy endpoints
        associated with all your DB proxies.</p>")
    @as("DBProxyName")
    dbproxyName: option<dbproxyName>,
  }
  type response = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>The list of <code>ProxyEndpoint</code> objects returned by the API operation.</p>"
    )
    @as("DBProxyEndpoints")
    dbproxyEndpoints: option<dbproxyEndpointList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBProxyEndpointsCommand"
  let make = (~maxRecords=?, ~marker=?, ~filters=?, ~dbproxyEndpointName=?, ~dbproxyName=?, ()) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      dbproxyEndpointName: dbproxyEndpointName,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBParameters = {
  type t
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeDBParameters</code> request.
            If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
        you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The parameter types to return.</p>
         <p>Default: All parameter types returned</p>
         <p>Valid Values: <code>user | system | engine-default</code>
         </p>")
    @as("Source")
    source: option<string_>,
    @ocaml.doc("<p>The name of a specific DB parameter group to return details for.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBParameterGroup.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: string_,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeDBParameters</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        A list of <code>Parameter</code> values.
        </p>")
    @as("Parameters")
    parameters: option<parametersList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBParametersCommand"
  let make = (~dbparameterGroupName, ~marker=?, ~maxRecords=?, ~filters=?, ~source=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      source: source,
      dbparameterGroupName: dbparameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBParameterGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeDBParameterGroups</code> request.
            If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
        you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of a specific DB parameter group to return details for.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeDBParameterGroups</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
        A list of <code>DBParameterGroup</code> instances.
        </p>")
    @as("DBParameterGroups")
    dbparameterGroups: option<dbparameterGroupList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBParameterGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbparameterGroupName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbparameterGroupName: dbparameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBLogFiles = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>The pagination token provided in the previous request. If this parameter is specified the response includes only records beyond the marker, up to MaxRecords.</p>"
    )
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>"
    )
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>Filters the available log files for files larger than the specified size.</p>")
    @as("FileSize")
    fileSize: option<long>,
    @ocaml.doc(
      "<p>Filters the available log files for files written since the specified date, in POSIX timestamp format with milliseconds.</p>"
    )
    @as("FileLastWritten")
    fileLastWritten: option<long>,
    @ocaml.doc(
      "<p>Filters the available log files for log file names that contain the specified string.</p>"
    )
    @as("FilenameContains")
    filenameContains: option<string_>,
    @ocaml.doc("<p>The customer-assigned name of the DB instance that contains the log files you want to list.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  @ocaml.doc("<p>
            The response from a call to <code>DescribeDBLogFiles</code>.
        </p>")
  type response = {
    @ocaml.doc("<p>A pagination token that can be used in a later DescribeDBLogFiles request.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The DB log files returned.</p>") @as("DescribeDBLogFiles")
    describeDBLogFiles: option<describeDBLogFilesList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBLogFilesCommand"
  let make = (
    ~dbinstanceIdentifier,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~fileSize=?,
    ~fileLastWritten=?,
    ~filenameContains=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      fileSize: fileSize,
      fileLastWritten: fileLastWritten,
      filenameContains: filenameContains,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterParameters = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
      An optional pagination token provided by a previous
      <code>DescribeDBClusterParameters</code> request.
      If this parameter is specified, the response includes
      only records beyond the marker,
      up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
      The maximum number of records to include in the response.
      If more records exist than the specified <code>MaxRecords</code> value,
          a pagination token called a marker is included in the response so you can retrieve the remaining results.
    </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>
      A value that indicates to return only parameters for a specific source. 
      Parameter sources can be <code>engine</code>, <code>service</code>,
      or <code>customer</code>.
    </p>")
    @as("Source")
    source: option<string_>,
    @ocaml.doc("<p>The name of a specific DB cluster parameter group to return parameter details for.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
  @ocaml.doc(
    "<p>Provides details about a DB cluster parameter group including the parameters in the DB cluster parameter group.</p>"
  )
  type response = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            DescribeDBClusterParameters request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>Provides a list of parameters for the DB cluster parameter group.</p>")
    @as("Parameters")
    parameters: option<parametersList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterParametersCommand"
  let make = (~dbclusterParameterGroupName, ~marker=?, ~maxRecords=?, ~filters=?, ~source=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      source: source,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterParameterGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeDBClusterParameterGroups</code> request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
          a pagination token called a marker is included in the response so you can retrieve the remaining results.
      </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of a specific DB cluster parameter group to return details for.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>A list of DB cluster parameter groups.</p>") @as("DBClusterParameterGroups")
    dbclusterParameterGroups: option<dbclusterParameterGroupList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            <code>DescribeDBClusterParameterGroups</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterParameterGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbclusterParameterGroupName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterEndpoints = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous
            <code>DescribeDBClusterEndpoints</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so you can retrieve the remaining results.
        </p>
        <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A set of name-value pairs that define which endpoints to include in the output.
       The filters are specified as name-value pairs, in the format
       <code>Name=<i>endpoint_type</i>,Values=<i>endpoint_type1</i>,<i>endpoint_type2</i>,...</code>.
       <code>Name</code> can be one of: <code>db-cluster-endpoint-type</code>, <code>db-cluster-endpoint-custom-type</code>, <code>db-cluster-endpoint-id</code>, <code>db-cluster-endpoint-status</code>.
         <code>Values</code> for the <code> db-cluster-endpoint-type</code> filter can be one or more of: <code>reader</code>, <code>writer</code>, <code>custom</code>.
       <code>Values</code> for the <code>db-cluster-endpoint-custom-type</code> filter can be one or more of: <code>reader</code>, <code>any</code>.
       <code>Values</code> for the <code>db-cluster-endpoint-status</code> filter can be one or more of: <code>available</code>, <code>creating</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>.
     </p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc(
      "<p>The identifier of the endpoint to describe. This parameter is stored as a lowercase string.</p>"
    )
    @as("DBClusterEndpointIdentifier")
    dbclusterEndpointIdentifier: option<string_>,
    @ocaml.doc("<p>The DB cluster identifier of the DB cluster associated with the endpoint. This parameter is
            stored as a lowercase string.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Contains the details of the endpoints associated with the cluster
       and matching any filter conditions.</p>")
    @as("DBClusterEndpoints")
    dbclusterEndpoints: option<dbclusterEndpointList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous
            <code>DescribeDBClusterEndpoints</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterEndpointsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~dbclusterEndpointIdentifier=?,
    ~dbclusterIdentifier=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbclusterEndpointIdentifier: dbclusterEndpointIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterBacktracks = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous
            <code>DescribeDBClusterBacktracks</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so you can retrieve the remaining results.
        </p>
        <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more DB clusters to describe. Supported filters
            include the following:</p>
        <ul>
            <li>
               <p>
                    <code>db-cluster-backtrack-id</code> - Accepts backtrack identifiers. The
                    results list includes information about only the backtracks identified by these
                    identifiers.</p>
            </li>
            <li>
               <p>
                  <code>db-cluster-backtrack-status</code> - Accepts any of the following backtrack status values:</p>
                <ul>
                  <li>
                     <p>
                        <code>applying</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>completed</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>failed</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>pending</code>
                     </p>
                  </li>
               </ul>
                <p>The results list includes information about only the backtracks identified
                    by these values.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>If specified, this value is the backtrack identifier of the backtrack to be
            described.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>Must contain a valid universally unique identifier (UUID). For more
                    information about UUIDs, see <a href=\"http://www.ietf.org/rfc/rfc4122.txt\">A Universally Unique Identifier 
                        (UUID) URN Namespace</a>.</p>
            </li>
         </ul>
        <p>Example: <code>123e4567-e89b-12d3-a456-426655440000</code>
        </p>")
    @as("BacktrackIdentifier")
    backtrackIdentifier: option<string_>,
    @ocaml.doc("<p>The DB cluster identifier of the DB cluster to be described. This parameter is
            stored as a lowercase string.</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must contain from 1 to 63 alphanumeric characters or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <p>Example: <code>my-cluster1</code>
        </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  @ocaml.doc(
    "<p>Contains the result of a successful invocation of the <code>DescribeDBClusterBacktracks</code> action.</p>"
  )
  type response = {
    @ocaml.doc("<p>Contains a list of backtracks for the user.</p>") @as("DBClusterBacktracks")
    dbclusterBacktracks: option<dbclusterBacktrackList>,
    @ocaml.doc(
      "<p>A pagination token that can be used in a later <code>DescribeDBClusterBacktracks</code> request.</p>"
    )
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterBacktracksCommand"
  let make = (
    ~dbclusterIdentifier,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~backtrackIdentifier=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      backtrackIdentifier: backtrackIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomAvailabilityZones = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeCustomAvailabilityZones</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so you can retrieve the remaining results.</p>
        <p>Default: 100</p>
        <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more custom AZs to describe.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc(
      "<p>The custom AZ identifier. If this parameter is specified, information from only the specific custom AZ is returned.</p>"
    )
    @as("CustomAvailabilityZoneId")
    customAvailabilityZoneId: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The list of <a>CustomAvailabilityZone</a> objects for the AWS account.</p>")
    @as("CustomAvailabilityZones")
    customAvailabilityZones: option<customAvailabilityZoneList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeCustomAvailabilityZones</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeCustomAvailabilityZonesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~customAvailabilityZoneId=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      customAvailabilityZoneId: customAvailabilityZoneId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificates = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeCertificates</code> request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
        a pagination token called a marker is included in the response so you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-supplied certificate identifier. If this parameter is specified, information for only the identified certificate is returned. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match an existing CertificateIdentifier.</p>
            </li>
         </ul>")
    @as("CertificateIdentifier")
    certificateIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Data returned by the <b>DescribeCertificates</b> action.</p>")
  type response = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            <code>DescribeCertificates</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The list of <code>Certificate</code> objects for the AWS account.</p>")
    @as("Certificates")
    certificates: option<certificateList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeCertificatesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~certificateIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      certificateIdentifier: certificateIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The DB snapshot identifier.</p>
         <p>Constraints: Must be the name of an existing DB snapshot in the <code>available</code> state.</p>")
    @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: string_,
  }
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBSnapshotCommand"
  let make = (~dbsnapshotIdentifier, ()) => new({dbsnapshotIdentifier: dbsnapshotIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBProxy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the DB proxy to delete.</p>") @as("DBProxyName")
    dbproxyName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>The data structure representing the details of the DB proxy that you delete.</p>"
    )
    @as("DBProxy")
    dbproxy: option<dbproxy>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBProxyCommand"
  let make = (~dbproxyName, ()) => new({dbproxyName: dbproxyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBInstanceAutomatedBackup = {
  type t
  @ocaml.doc(
    "<p>Parameter input for the <code>DeleteDBInstanceAutomatedBackup</code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the automated backups to delete, for example,
            <code>arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>")
    @as("DBInstanceAutomatedBackupsArn")
    dbinstanceAutomatedBackupsArn: option<string_>,
    @ocaml.doc(
      "<p>The identifier for the source DB instance, which can't be changed and which is unique to an AWS Region.</p>"
    )
    @as("DbiResourceId")
    dbiResourceId: option<string_>,
  }
  type response = {
    @as("DBInstanceAutomatedBackup") dbinstanceAutomatedBackup: option<dbinstanceAutomatedBackup>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DeleteDBInstanceAutomatedBackupCommand"
  let make = (~dbinstanceAutomatedBackupsArn=?, ~dbiResourceId=?, ()) =>
    new({
      dbinstanceAutomatedBackupsArn: dbinstanceAutomatedBackupsArn,
      dbiResourceId: dbiResourceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the DB cluster snapshot to delete.</p>
         <p>Constraints: Must be the name of an existing DB cluster snapshot in the <code>available</code> state.</p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBClusterSnapshotCommand"
  let make = (~dbclusterSnapshotIdentifier, ()) =>
    new({dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The identifier of the DB instance that you want to create the snapshot of.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
    @ocaml.doc("<p>The identifier for the DB snapshot.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Can't be null, empty, or blank</p>
            </li>
            <li>
               <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-snapshot-id</code>
         </p>")
    @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: string_,
  }
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBSnapshotCommand"
  let make = (~dbinstanceIdentifier, ~dbsnapshotIdentifier, ~tags=?, ()) =>
    new({
      tags: tags,
      dbinstanceIdentifier: dbinstanceIdentifier,
      dbsnapshotIdentifier: dbsnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBSecurityGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Tags to assign to the DB security group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description for the DB security group.</p>")
    @as("DBSecurityGroupDescription")
    dbsecurityGroupDescription: string_,
    @ocaml.doc("<p>The name for the DB security group. This value is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
            <li>
               <p>Must not be \"Default\"</p>
            </li>
         </ul>
         <p>Example: <code>mysecuritygroup</code>
         </p>")
    @as("DBSecurityGroupName")
    dbsecurityGroupName: string_,
  }
  type response = {@as("DBSecurityGroup") dbsecurityGroup: option<dbsecurityGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBSecurityGroupCommand"
  let make = (~dbsecurityGroupDescription, ~dbsecurityGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      dbsecurityGroupDescription: dbsecurityGroupDescription,
      dbsecurityGroupName: dbsecurityGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBProxy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional set of key-value pairs to associate arbitrary data of your choosing with the proxy.</p>"
    )
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Whether the proxy includes detailed information about SQL statements in its logs.
        This information helps you to debug issues involving SQL behavior or the performance
        and scalability of the proxy connections. The debug information includes the text of
        SQL statements that you submit through the proxy. Thus, only enable this setting
        when needed for debugging, and only when you have security measures in place to
        safeguard any sensitive information that appears in the logs.</p>")
    @as("DebugLogging")
    debugLogging: option<boolean_>,
    @ocaml.doc("<p>The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this
        value higher or lower than the connection timeout limit for the associated database.</p>")
    @as("IdleClientTimeout")
    idleClientTimeout: option<integerOptional>,
    @ocaml.doc("<p>A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy.
        By enabling this setting, you can enforce encrypted TLS connections to the proxy.</p>")
    @as("RequireTLS")
    requireTLS: option<boolean_>,
    @ocaml.doc("<p>One or more VPC security group IDs to associate with the new proxy.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<stringList>,
    @ocaml.doc("<p>One or more VPC subnet IDs to associate with the new proxy.</p>")
    @as("VpcSubnetIds")
    vpcSubnetIds: stringList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.</p>"
    )
    @as("RoleArn")
    roleArn: string_,
    @ocaml.doc("<p>The authorization mechanism that the proxy uses.</p>") @as("Auth")
    auth: userAuthConfigList,
    @ocaml.doc("<p>The kinds of databases that the proxy can connect to. 
          This value determines which database network protocol the proxy recognizes when it interprets
        network traffic to and from the database. 
        The engine family applies to MySQL and PostgreSQL for both RDS and Aurora.</p>")
    @as("EngineFamily")
    engineFamily: engineFamily,
    @ocaml.doc(
      "<p>The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.</p>"
    )
    @as("DBProxyName")
    dbproxyName: string_,
  }
  type response = {
    @ocaml.doc("<p>The <code>DBProxy</code> structure corresponding to the new proxy.</p>")
    @as("DBProxy")
    dbproxy: option<dbproxy>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBProxyCommand"
  let make = (
    ~vpcSubnetIds,
    ~roleArn,
    ~auth,
    ~engineFamily,
    ~dbproxyName,
    ~tags=?,
    ~debugLogging=?,
    ~idleClientTimeout=?,
    ~requireTLS=?,
    ~vpcSecurityGroupIds=?,
    (),
  ) =>
    new({
      tags: tags,
      debugLogging: debugLogging,
      idleClientTimeout: idleClientTimeout,
      requireTLS: requireTLS,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      vpcSubnetIds: vpcSubnetIds,
      roleArn: roleArn,
      auth: auth,
      engineFamily: engineFamily,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBClusterSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the DB cluster snapshot.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The identifier of the DB cluster to create a snapshot for. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBCluster.</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster1</code>
         </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster1-snapshot1</code>
         </p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBClusterSnapshotCommand"
  let make = (~dbclusterIdentifier, ~dbclusterSnapshotIdentifier, ~tags=?, ()) =>
    new({
      tags: tags,
      dbclusterIdentifier: dbclusterIdentifier,
      dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The external custom Availability Zone (CAZ) identifier for the target CAZ.</p>
        <p>Example: <code>rds-caz-aiqhTgQv</code>.</p>")
    @as("TargetCustomAvailabilityZone")
    targetCustomAvailabilityZone: option<string_>,
    @ocaml.doc("<p>The name of an option group to associate with the copy of the snapshot.</p>
        
        <p>Specify this option if you are copying a snapshot from one AWS Region to another,
            and your DB instance uses a nondefault option group. 
            If your source DB instance uses Transparent Data Encryption for Oracle or Microsoft SQL Server, 
            you must specify this option when copying across AWS Regions. 
            For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options\">Option group considerations</a> in the <i>Amazon RDS User Guide.</i>
        </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The URL that contains a Signature Version 4 signed request for the
                <code>CopyDBSnapshot</code> API action in the source AWS Region that contains the
            source DB snapshot to copy. </p>
        
        <p>You must specify this parameter when you copy an encrypted DB snapshot from another
            AWS Region by using the Amazon RDS API. Don't specify <code>PreSignedUrl</code> when you are 
            copying an encrypted DB snapshot in the same AWS Region.</p>
        
        <p>The presigned URL must be a valid request for the <code>CopyDBSnapshot</code> API action 
            that can be executed in the source AWS Region that contains the encrypted DB snapshot to be copied. 
            The presigned URL request must contain the following parameter values:
        </p>
                
        <ul>
            <li>
                <p>
                  <code>DestinationRegion</code> - The AWS Region that the encrypted DB snapshot is copied to. 
                    This AWS Region is the same one where the <code>CopyDBSnapshot</code> action is called that contains this presigned URL.
                </p>

                <p>For example, if you copy an encrypted DB snapshot from the us-west-2 AWS Region
                    to the us-east-1 AWS Region, then you call the <code>CopyDBSnapshot</code> action in
                    the us-east-1 AWS Region and provide a presigned URL that contains a call to the
                        <code>CopyDBSnapshot</code> action in the us-west-2 AWS Region. For this
                    example, the <code>DestinationRegion</code> in the presigned URL must be set to
                    the us-east-1 AWS Region. </p>
            </li>
            <li>
                <p>
                  <code>KmsKeyId</code> - The AWS KMS key identifier for the customer master key (CMK) to use to encrypt the copy of the DB snapshot in the destination AWS Region. 
                    This is the same identifier for both the <code>CopyDBSnapshot</code> action that is called in the destination AWS Region, 
                    and the action contained in the presigned URL.
                </p>
            </li>
            <li>
                <p>
                  <code>SourceDBSnapshotIdentifier</code> - The DB snapshot identifier for the encrypted snapshot to be copied. 
                    This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. 
                    For example, if you are copying an encrypted DB snapshot from the us-west-2 AWS Region, then your <code>SourceDBSnapshotIdentifier</code> looks like
                    the following example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115</code>.
                </p>
            </li>
         </ul>

	        <p>To learn how to generate a Signature Version 4 signed request, see 
		<a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\">Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and
		<a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>.
	   </p>
        
         <note>
           <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) 
               instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid 
               request for the operation that can be executed in the source AWS Region.</p>
         </note>")
    @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether to copy all tags from the source DB snapshot to the target DB snapshot. By default, tags are not copied.</p>"
    )
    @as("CopyTags")
    copyTags: option<booleanOptional>,
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted DB snapshot. 
            The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK). 
        </p>
        
        <p>If you copy an encrypted DB snapshot from your AWS account, 
            you can specify a value for this parameter to encrypt the copy with a new AWS KMS CMK. 
            If you don't specify a value for this parameter, 
            then the copy of the DB snapshot is encrypted with the same AWS KMS key as the source DB snapshot. 
        </p>

        <p>If you copy an encrypted DB snapshot that is shared from another AWS account, 
            then you must specify a value for this parameter.
        </p>
        
        <p>If you specify this parameter when you copy an unencrypted snapshot, 
            the copy is encrypted.
        </p>
        
        <p>If you copy an encrypted snapshot to a different AWS Region, then you must specify
            a AWS KMS key identifier for the destination AWS Region. AWS KMS CMKs are specific to the AWS Region
            that they are created in, and you can't use CMKs from one AWS Region in another
            AWS Region.
        </p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The identifier for the copy of the snapshot.
        </p>
    
        <p>Constraints:</p>
      
        <ul>
            <li>
               <p>Can't be null, empty, or blank</p>
            </li>
            <li>
               <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>

        <p>Example: <code>my-db-snapshot</code>
         </p>")
    @as("TargetDBSnapshotIdentifier")
    targetDBSnapshotIdentifier: string_,
    @ocaml.doc("<p>The identifier for the source DB snapshot.</p>
      
         <p>If the source snapshot is in the same AWS Region as the copy, specify a valid DB
            snapshot identifier. For example, you might specify
                <code>rds:mysql-instance1-snapshot-20130805</code>. </p>
      
         <p>If the source snapshot is in a different AWS Region than the copy, specify a valid DB
            snapshot ARN. For example, you might specify
                <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>. </p>

         <p>If you are copying from a shared manual DB snapshot, 
          this parameter must be the Amazon Resource Name (ARN) of the shared DB snapshot.
      </p>
      
         <p>If you are copying an encrypted snapshot
            this parameter must be in the ARN format for the source AWS Region, 
            and must match the <code>SourceDBSnapshotIdentifier</code> in the <code>PreSignedUrl</code> parameter.
      </p>
      
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must specify a valid system snapshot in the \"available\" state.</p>
            </li>
         </ul>

         <p>Example: <code>rds:mydb-2012-04-02-00-01</code>
         </p>

         <p>Example: <code>arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20130805</code>
         </p>")
    @as("SourceDBSnapshotIdentifier")
    sourceDBSnapshotIdentifier: string_,
  }
  type response = {@as("DBSnapshot") dbsnapshot: option<dbsnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CopyDBSnapshotCommand"
  let make = (
    ~targetDBSnapshotIdentifier,
    ~sourceDBSnapshotIdentifier,
    ~targetCustomAvailabilityZone=?,
    ~optionGroupName=?,
    ~preSignedUrl=?,
    ~copyTags=?,
    ~tags=?,
    ~kmsKeyId=?,
    (),
  ) =>
    new({
      targetCustomAvailabilityZone: targetCustomAvailabilityZone,
      optionGroupName: optionGroupName,
      preSignedUrl: preSignedUrl,
      copyTags: copyTags,
      tags: tags,
      kmsKeyId: kmsKeyId,
      targetDBSnapshotIdentifier: targetDBSnapshotIdentifier,
      sourceDBSnapshotIdentifier: sourceDBSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyDBClusterSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A value that indicates whether to copy all tags from the source DB cluster snapshot to the target DB cluster snapshot. 
            By default, tags are not copied.</p>")
    @as("CopyTags")
    copyTags: option<booleanOptional>,
    @ocaml.doc("<p>The URL that contains a Signature Version 4 signed request for the <code>CopyDBClusterSnapshot</code> API action in the AWS Region that contains the 
            source DB cluster snapshot to copy. The <code>PreSignedUrl</code> parameter must be used when copying an encrypted DB cluster snapshot from another AWS Region. 
            Don't specify <code>PreSignedUrl</code> when you are copying an encrypted DB cluster snapshot in the same AWS Region.</p>
        <p>The pre-signed URL must be a valid request for the <code>CopyDBClusterSnapshot</code> API action that can be
            executed in the source AWS Region that contains the encrypted DB cluster snapshot to be copied. 
            The pre-signed URL request must contain the following parameter values:</p>
        
        <ul>
            <li>
               <p>
                  <code>KmsKeyId</code> - The AWS KMS key identifier for the customer master key (CMK) to use to encrypt the copy of the DB 
                cluster snapshot in the destination AWS Region. This is the same identifier for both the <code>CopyDBClusterSnapshot</code> 
                action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p>
            </li>
            <li>
               <p>
                  <code>DestinationRegion</code> - The name of the AWS Region that the DB cluster snapshot is to be created in.</p>
            </li>
            <li>
               <p>
                  <code>SourceDBClusterSnapshotIdentifier</code> - The DB cluster snapshot identifier for the encrypted DB cluster 
                snapshot to be copied. This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, 
                if you are copying an encrypted DB cluster snapshot from the us-west-2 AWS Region, then your <code>SourceDBClusterSnapshotIdentifier</code>
                looks like the following example: <code>arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115</code>.</p>
            </li>
         </ul>
        
        <p>To learn how to generate a Signature Version 4 signed request, see 

            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\">
                Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">
                Signature Version 4 Signing Process</a>.</p>
        
        <note>
            <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) 
                instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid 
                request for the operation that can be executed in the source AWS Region.</p>
        </note>")
    @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted DB cluster snapshot. 
            The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>             
        
        <p>If you copy an encrypted DB cluster snapshot from your AWS account, you can specify a value for <code>KmsKeyId</code> to encrypt the copy with a new AWS KMS CMK. 
            If you don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is encrypted with the same AWS KMS key as the source DB cluster snapshot. 
        </p>
         
        <p>If you copy an encrypted DB cluster snapshot that is shared from another AWS account, then you must specify a value for <code>KmsKeyId</code>. </p>
        
        <p>To copy an encrypted DB cluster snapshot to another AWS Region, you must set <code>KmsKeyId</code> to the AWS KMS key identifier you want to use to encrypt the copy of the DB cluster snapshot 
            in the destination AWS Region. AWS KMS CMKs are specific to the AWS Region that they are created in, and you can't use CMKs from one AWS Region 
            in another AWS Region.</p>
        
        <p>If you copy an unencrypted DB cluster snapshot and specify a value for the <code>KmsKeyId</code> parameter, 
            an error is returned.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The identifier of the new DB cluster snapshot to create from the source DB cluster snapshot. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster-snapshot2</code>
         </p>")
    @as("TargetDBClusterSnapshotIdentifier")
    targetDBClusterSnapshotIdentifier: string_,
    @ocaml.doc("<p>The identifier of the DB cluster snapshot to copy. This parameter isn't case-sensitive.</p>
         <p>You can't copy an encrypted, shared DB cluster snapshot from one AWS Region to another.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must specify a valid system snapshot in the \"available\" state.</p>
            </li>
            <li>
               <p>If the source snapshot is in the same AWS Region as the copy, specify a valid DB snapshot identifier.</p>
            </li>
            <li>
               <p>If the source snapshot is in a different AWS Region than the copy,
              specify a valid DB cluster snapshot ARN. For more information, go to
              <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html#USER_CopySnapshot.AcrossRegions\">
                  Copying Snapshots Across AWS Regions</a> in the <i>Amazon Aurora User Guide.</i>
               </p>
            </li>
         </ul>
         <p>Example: <code>my-cluster-snapshot1</code>
         </p>")
    @as("SourceDBClusterSnapshotIdentifier")
    sourceDBClusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CopyDBClusterSnapshotCommand"
  let make = (
    ~targetDBClusterSnapshotIdentifier,
    ~sourceDBClusterSnapshotIdentifier,
    ~tags=?,
    ~copyTags=?,
    ~preSignedUrl=?,
    ~kmsKeyId=?,
    (),
  ) =>
    new({
      tags: tags,
      copyTags: copyTags,
      preSignedUrl: preSignedUrl,
      kmsKeyId: kmsKeyId,
      targetDBClusterSnapshotIdentifier: targetDBClusterSnapshotIdentifier,
      sourceDBClusterSnapshotIdentifier: sourceDBClusterSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AuthorizeDBSecurityGroupIngress = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        AWS account number of the owner of the EC2 security group
        specified in the <code>EC2SecurityGroupName</code> parameter.
        The AWS access key ID isn't an acceptable value.
        For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
        Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.
        </p>")
    @as("EC2SecurityGroupOwnerId")
    ec2SecurityGroupOwnerId: option<string_>,
    @ocaml.doc("<p>
        Id of the EC2 security group to authorize.
        For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
        Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> or <code>EC2SecurityGroupId</code> must be provided.
        </p>")
    @as("EC2SecurityGroupId")
    ec2SecurityGroupId: option<string_>,
    @ocaml.doc("<p>
        Name of the EC2 security group to authorize.
        For VPC DB security groups, <code>EC2SecurityGroupId</code> must be provided.
        Otherwise, <code>EC2SecurityGroupOwnerId</code> and either <code>EC2SecurityGroupName</code> 
      or <code>EC2SecurityGroupId</code> must be provided.
        </p>")
    @as("EC2SecurityGroupName")
    ec2SecurityGroupName: option<string_>,
    @ocaml.doc("<p>The IP range to authorize.</p>") @as("CIDRIP") cidrip: option<string_>,
    @ocaml.doc("<p>The name of the DB security group to add authorization to.</p>")
    @as("DBSecurityGroupName")
    dbsecurityGroupName: string_,
  }
  type response = {@as("DBSecurityGroup") dbsecurityGroup: option<dbsecurityGroup>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "AuthorizeDBSecurityGroupIngressCommand"
  let make = (
    ~dbsecurityGroupName,
    ~ec2SecurityGroupOwnerId=?,
    ~ec2SecurityGroupId=?,
    ~ec2SecurityGroupName=?,
    ~cidrip=?,
    (),
  ) =>
    new({
      ec2SecurityGroupOwnerId: ec2SecurityGroupOwnerId,
      ec2SecurityGroupId: ec2SecurityGroupId,
      ec2SecurityGroupName: ec2SecurityGroupName,
      cidrip: cidrip,
      dbsecurityGroupName: dbsecurityGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplyPendingMaintenanceAction = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that specifies the type of opt-in request, or undoes an opt-in request. An opt-in 
           request of type <code>immediate</code> can't be undone.</p>
         <p>Valid values:</p>
         <ul>
            <li>
               <p>
                  <code>immediate</code> - Apply the maintenance action immediately.</p>
            </li>
            <li>
               <p>
                  <code>next-maintenance</code> - Apply the maintenance action during
            the next maintenance window for the resource.</p>
            </li>
            <li>
               <p>
                  <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code>
            opt-in requests.</p>
            </li>
         </ul>")
    @as("OptInType")
    optInType: string_,
    @ocaml.doc("<p>The pending maintenance action to apply to this resource.</p>
         <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>, 
          <code>hardware-maintenance</code>, <code>ca-certificate-rotation</code>
         </p>")
    @as("ApplyAction")
    applyAction: string_,
    @ocaml.doc("<p>The RDS Amazon Resource Name (ARN) of the resource that the 
      pending maintenance action applies to. For information about  
      creating an ARN, 
      see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">
        Constructing an RDS Amazon Resource Name (ARN)</a>.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: string_,
  }
  type response = {
    @as("ResourcePendingMaintenanceActions")
    resourcePendingMaintenanceActions: option<resourcePendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ApplyPendingMaintenanceActionCommand"
  let make = (~optInType, ~applyAction, ~resourceIdentifier, ()) =>
    new({optInType: optInType, applyAction: applyAction, resourceIdentifier: resourceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The DB cluster identifier of the Amazon Aurora DB cluster to be stopped. This parameter is stored as
        a lowercase string.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "StopDBClusterCommand"
  let make = (~dbclusterIdentifier, ()) => new({dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The DB cluster identifier of the Amazon Aurora DB cluster to be started. This parameter is stored as
        a lowercase string.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "StartDBClusterCommand"
  let make = (~dbclusterIdentifier, ()) => new({dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterToPointInTime = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>Specify the Active Directory directory ID to restore the DB cluster in.
          The domain must be created prior to this operation.
      </p>
         <p>
        For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster.
        For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a>
        in the <i>Amazon Aurora User Guide</i>.
      </p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>"
    )
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to associate with this DB cluster. 
            If this argument is omitted, the default DB cluster parameter group for the specified engine is used.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If supplied, must match the name of an existing DB cluster parameter group.</p>
            </li>
            <li>
                <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>The target backtrack window, in seconds. To disable backtracking, set this value to
            0.</p>
        <note>
            <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
        </note>
        <p>Default: 0</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
            </li>
         </ul>")
    @as("BacktrackWindow")
    backtrackWindow: option<longOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
            Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
        
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\">
                IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier to use when restoring an encrypted DB cluster from an encrypted DB cluster.</p>
         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
          To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
         <p>You can restore to a new DB cluster and encrypt the new DB cluster with a AWS KMS CMK that is different than the
      AWS KMS key used to encrypt the source DB cluster. The new DB cluster is encrypted with the AWS KMS CMK
      identified by the <code>KmsKeyId</code> parameter.</p>
         <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then the following occurs:</p>
         <ul>
            <li>
               <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the AWS KMS CMK that was used to encrypt the source DB cluster.</p>
            </li>
            <li>
               <p>If the DB cluster isn't encrypted, then the restored DB cluster isn't encrypted.</p>
            </li>
         </ul>

         <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that isn't encrypted, then the restore request
      is rejected.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A list of VPC security groups that the new DB cluster belongs to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The name of the option group for the new DB cluster.</p>") @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The DB subnet group name to use for the new DB cluster.</p>
         <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The port number on which the new DB cluster accepts connections.</p>
         <p>Constraints: A value from <code>1150-65535</code>.
      </p>
         <p>Default: The default port for the engine.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether to restore the DB cluster to the latest 
            restorable backup time. By default, the DB cluster isn't restored to the latest 
            restorable backup time.
      </p>
         <p>Constraints: Can't be specified if <code>RestoreToTime</code> parameter is provided.</p>")
    @as("UseLatestRestorableTime")
    useLatestRestorableTime: option<boolean_>,
    @ocaml.doc("<p>The date and time to restore the DB cluster to.</p>
         <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be before the latest restorable time for the DB instance</p>
            </li>
            <li>
               <p>Must be specified if <code>UseLatestRestorableTime</code> parameter isn't provided</p>
            </li>
            <li>
               <p>Can't be specified if the <code>UseLatestRestorableTime</code> parameter is enabled</p>
            </li>
            <li>
               <p>Can't be specified if the <code>RestoreType</code> parameter is <code>copy-on-write</code>
               </p>
            </li>
         </ul>
         <p>Example: <code>2015-03-07T23:45:00Z</code>
         </p>")
    @as("RestoreToTime")
    restoreToTime: option<tstamp>,
    @ocaml.doc("<p>The identifier of the source DB cluster from which to restore.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBCluster.</p>
            </li>
         </ul>")
    @as("SourceDBClusterIdentifier")
    sourceDBClusterIdentifier: string_,
    @ocaml.doc("<p>The type of restore to be performed. You can specify one of the following values:</p>
        <ul>
            <li>
               <p>
                  <code>full-copy</code> - The new DB cluster is restored as a full copy of the
                source DB cluster.</p>
            </li>
            <li>
               <p>
                  <code>copy-on-write</code> - The new DB cluster is restored as a clone of the
                source DB cluster.</p>
            </li>
         </ul>
        <p>Constraints: You can't specify <code>copy-on-write</code> if the engine version of the source DB cluster is earlier than 1.11.</p>
        <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is
            restored as a full copy of the source DB cluster.</p>")
    @as("RestoreType")
    restoreType: option<string_>,
    @ocaml.doc("<p>The name of the new DB cluster to be created.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RestoreDBClusterToPointInTimeCommand"
  let make = (
    ~sourceDBClusterIdentifier,
    ~dbclusterIdentifier,
    ~domainIAMRoleName=?,
    ~domain=?,
    ~copyTagsToSnapshot=?,
    ~deletionProtection=?,
    ~dbclusterParameterGroupName=?,
    ~enableCloudwatchLogsExports=?,
    ~backtrackWindow=?,
    ~enableIAMDatabaseAuthentication=?,
    ~kmsKeyId=?,
    ~tags=?,
    ~vpcSecurityGroupIds=?,
    ~optionGroupName=?,
    ~dbsubnetGroupName=?,
    ~port=?,
    ~useLatestRestorableTime=?,
    ~restoreToTime=?,
    ~restoreType=?,
    (),
  ) =>
    new({
      domainIAMRoleName: domainIAMRoleName,
      domain: domain,
      copyTagsToSnapshot: copyTagsToSnapshot,
      deletionProtection: deletionProtection,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      backtrackWindow: backtrackWindow,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      kmsKeyId: kmsKeyId,
      tags: tags,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      optionGroupName: optionGroupName,
      dbsubnetGroupName: dbsubnetGroupName,
      port: port,
      useLatestRestorableTime: useLatestRestorableTime,
      restoreToTime: restoreToTime,
      sourceDBClusterIdentifier: sourceDBClusterIdentifier,
      restoreType: restoreType,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterFromSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>Specify the Active Directory directory ID to restore the DB cluster in.
           The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL 
           Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\">
            Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.
       </p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>"
    )
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to associate with this DB cluster. If this
            argument is omitted, the default DB cluster parameter group for the specified engine is
            used.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If supplied, must match the name of an existing default DB cluster parameter group.</p>
            </li>
            <li>
                <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc(
      "<p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>"
    )
    @as("ScalingConfiguration")
    scalingConfiguration: option<scalingConfiguration>,
    @ocaml.doc("<p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>,
            <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html\">
            CreateDBCluster</a>.</p>")
    @as("EngineMode")
    engineMode: option<string_>,
    @ocaml.doc("<p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.
            The values in the list depend on the DB engine being used. For more information, see
                <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon
                Aurora User Guide</i>.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>The target backtrack window, in seconds. To disable backtracking, set this value to
            0.</p>
        <note>
            <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
        </note>
        <p>Default: 0</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
            </li>
         </ul>")
    @as("BacktrackWindow")
    backtrackWindow: option<longOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
            Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
        
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\">
                IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier to use when restoring an encrypted DB cluster from a DB
            snapshot or DB cluster snapshot.</p>
         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
          To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>    
        <p>When you don't specify a value for the <code>KmsKeyId</code> parameter, then the
            following occurs:</p>
        <ul>
            <li>
                <p>If the DB snapshot or DB cluster snapshot in
                        <code>SnapshotIdentifier</code> is encrypted, then the restored DB cluster
                    is encrypted using the AWS KMS CMK that was used to encrypt the DB snapshot or DB
                    cluster snapshot.</p>
            </li>
            <li>
                <p>If the DB snapshot or DB cluster snapshot in 
                    <code>SnapshotIdentifier</code> isn't encrypted, then the restored DB cluster
                    isn't encrypted.</p>
            </li>
         </ul>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The tags to be assigned to the restored DB cluster.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of VPC security groups that the new DB cluster will belong to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The name of the option group to use for the restored DB cluster.</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The database name for the restored DB cluster.</p>") @as("DatabaseName")
    databaseName: option<string_>,
    @ocaml.doc("<p>The name of the DB subnet group to use for the new DB cluster.</p>
         <p>Constraints: If supplied, must match the name of an existing DB subnet group.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The port number on which the new DB cluster accepts connections.</p>
         <p>Constraints: This value must be <code>1150-65535</code>
        </p>
         <p>Default: The same port as the original DB cluster.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The version of the database engine to use for the new DB cluster.</p>
         <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
         <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
         <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
         <note>
            <p>If you aren't using the default engine version, then you must specify the engine version.</p>
         </note>
         <p>
            <b>Aurora MySQL</b>
         </p>
         <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code>
         </p>
         <p>
            <b>Aurora PostgreSQL</b>
         </p>
         <p>Example: <code>9.6.3</code>, <code>10.7</code>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The database engine to use for the new DB cluster.</p>
         <p>Default: The same as source</p>
         <p>Constraint: Must be compatible with the engine of the source</p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p>
        <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB
            cluster snapshot. However, you can use only the ARN to specify a DB snapshot.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing Snapshot.</p>
            </li>
         </ul>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
    @ocaml.doc("<p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot.
            This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-snapshot-id</code>
         </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>Provides the list of Availability Zones (AZs) where instances in the restored DB
            cluster can be created.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RestoreDBClusterFromSnapshotCommand"
  let make = (
    ~engine,
    ~snapshotIdentifier,
    ~dbclusterIdentifier,
    ~domainIAMRoleName=?,
    ~domain=?,
    ~copyTagsToSnapshot=?,
    ~deletionProtection=?,
    ~dbclusterParameterGroupName=?,
    ~scalingConfiguration=?,
    ~engineMode=?,
    ~enableCloudwatchLogsExports=?,
    ~backtrackWindow=?,
    ~enableIAMDatabaseAuthentication=?,
    ~kmsKeyId=?,
    ~tags=?,
    ~vpcSecurityGroupIds=?,
    ~optionGroupName=?,
    ~databaseName=?,
    ~dbsubnetGroupName=?,
    ~port=?,
    ~engineVersion=?,
    ~availabilityZones=?,
    (),
  ) =>
    new({
      domainIAMRoleName: domainIAMRoleName,
      domain: domain,
      copyTagsToSnapshot: copyTagsToSnapshot,
      deletionProtection: deletionProtection,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      scalingConfiguration: scalingConfiguration,
      engineMode: engineMode,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      backtrackWindow: backtrackWindow,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      kmsKeyId: kmsKeyId,
      tags: tags,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      optionGroupName: optionGroupName,
      databaseName: databaseName,
      dbsubnetGroupName: dbsubnetGroupName,
      port: port,
      engineVersion: engineVersion,
      engine: engine,
      snapshotIdentifier: snapshotIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
      availabilityZones: availabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBClusterFromS3 = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>Specify the Active Directory directory ID to restore the DB cluster in.
          The domain must be created prior to this operation.
      </p>
         <p>
        For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster.
        For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a>
        in the <i>Amazon Aurora User Guide</i>.
      </p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether to copy all tags from the restored DB cluster to snapshots of the restored DB cluster. The default is not to copy them.</p>"
    )
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The list of logs that the restored DB cluster is to export to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>The target backtrack window, in seconds. To disable backtracking, set this value to
            0.</p>
        <note>
            <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
        </note>
        <p>Default: 0</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
            </li>
         </ul>")
    @as("BacktrackWindow")
    backtrackWindow: option<longOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that authorizes
        Amazon RDS to access the Amazon S3 bucket on your behalf.</p>")
    @as("S3IngestionRoleArn")
    s3IngestionRoleArn: string_,
    @ocaml.doc("<p>The prefix for all of the file names that contain the data used to create the Amazon Aurora DB cluster.
        If you do not specify a <b>SourceS3Prefix</b> value, then the Amazon Aurora DB cluster is
        created by using all of the files in the Amazon S3 bucket.</p>")
    @as("S3Prefix")
    s3Prefix: option<string_>,
    @ocaml.doc(
      "<p>The name of the Amazon S3 bucket that contains the data used to create the Amazon Aurora DB cluster.</p>"
    )
    @as("S3BucketName")
    s3BucketName: string_,
    @ocaml.doc("<p>The version of the database that the backup files were created from.</p>
        <p>MySQL versions 5.5, 5.6, and 5.7 are supported.
        </p>
        <p>Example: <code>5.6.40</code>, <code>5.7.28</code>
         </p>")
    @as("SourceEngineVersion")
    sourceEngineVersion: string_,
    @ocaml.doc("<p>The identifier for the database engine that was backed up to create the files stored in the
            Amazon S3 bucket.
        </p> 
        <p>Valid values: <code>mysql</code>
         </p>")
    @as("SourceEngine")
    sourceEngine: string_,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
            Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
        
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\">
                IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted DB cluster.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
            To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
        <p>If the StorageEncrypted parameter is enabled, and you do
            not specify a value for the <code>KmsKeyId</code> parameter, then
            Amazon RDS will use your default CMK. There is a  
            default CMK for your AWS account. Your AWS account has a different
            default CMK for each AWS Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the restored DB cluster is encrypted.</p>")
    @as("StorageEncrypted")
    storageEncrypted: option<booleanOptional>,
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
        <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
        </p>
        <p>The default is a 30-minute window selected at random from an
            8-hour block of time for each AWS Region, occurring on a random day of the
            week. To see the time blocks available, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\">
                Adjusting the Preferred Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i>
        </p>
        <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
        <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created
            if automated backups are enabled
            using the <code>BackupRetentionPeriod</code> parameter.
        </p>
        <p>The default is a 30-minute window selected at random from an
            8-hour block of time for each AWS Region. 
            To view the time blocks available, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow\">
                Backup window</a> in the <i>Amazon Aurora User Guide.</i>
        </p>
        <p>Constraints:</p> 
        <ul>
            <li>
               <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
               <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>A value that indicates that the restored DB cluster should be associated with the specified option group.</p>
        <p>Permanent options can't be removed from an option group. An option group can't be removed from a 
            DB cluster once it is associated with a DB cluster.</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".</p>
        <p>Constraints: Must contain from 8 to 41 characters.</p>")
    @as("MasterUserPassword")
    masterUserPassword: string_,
    @ocaml.doc("<p>The name of the master user for the restored DB cluster.</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must be 1 to 16 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>")
    @as("MasterUsername")
    masterUsername: string_,
    @ocaml.doc("<p>The port number on which the instances in the restored DB cluster accept connections.</p>
        <p>
            Default: <code>3306</code>
        </p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The version number of the database engine to use.</p>
        <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
        <p>
            <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
        <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p>
        <p>
            <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
        <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
        <p>
            <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
        <p>
            <b>Aurora MySQL</b>
        </p>
        <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code>
        </p>
        <p>
            <b>Aurora PostgreSQL</b>
        </p>
        <p>Example: <code>9.6.3</code>, <code>10.7</code>
        </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this DB cluster.</p>
        <p>Valid Values: <code>aurora</code> (for MySQL 5.6-compatible Aurora), <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), and <code>aurora-postgresql</code> 
        </p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>A DB subnet group to associate with the restored DB cluster.</p>
        <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.
        </p>
        <p>Example: <code>mySubnetgroup</code>
        </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc(
      "<p>A list of EC2 VPC security groups to associate with the restored DB cluster.</p>"
    )
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to associate
            with the restored DB cluster. If this argument is omitted, <code>default.aurora5.6</code> is used.
        </p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The name of the DB cluster to create from the source data in the Amazon S3 bucket. This parameter isn't case-sensitive.</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
        <p>Example: <code>my-cluster1</code>
        </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>The database name for the restored DB cluster.</p>") @as("DatabaseName")
    databaseName: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates that the restored DB cluster should be associated with the specified CharacterSet.</p>"
    )
    @as("CharacterSetName")
    characterSetName: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups of the restored DB cluster are retained. You must specify a minimum value of 1.</p>
        <p>Default: 1</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must be a value from 1 to 35</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc(
      "<p>A list of Availability Zones (AZs) where instances in the restored DB cluster can be created.</p>"
    )
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "RestoreDBClusterFromS3Command"
  let make = (
    ~s3IngestionRoleArn,
    ~s3BucketName,
    ~sourceEngineVersion,
    ~sourceEngine,
    ~masterUserPassword,
    ~masterUsername,
    ~engine,
    ~dbclusterIdentifier,
    ~domainIAMRoleName=?,
    ~domain=?,
    ~copyTagsToSnapshot=?,
    ~deletionProtection=?,
    ~enableCloudwatchLogsExports=?,
    ~backtrackWindow=?,
    ~s3Prefix=?,
    ~enableIAMDatabaseAuthentication=?,
    ~kmsKeyId=?,
    ~storageEncrypted=?,
    ~tags=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~optionGroupName=?,
    ~port=?,
    ~engineVersion=?,
    ~dbsubnetGroupName=?,
    ~vpcSecurityGroupIds=?,
    ~dbclusterParameterGroupName=?,
    ~databaseName=?,
    ~characterSetName=?,
    ~backupRetentionPeriod=?,
    ~availabilityZones=?,
    (),
  ) =>
    new({
      domainIAMRoleName: domainIAMRoleName,
      domain: domain,
      copyTagsToSnapshot: copyTagsToSnapshot,
      deletionProtection: deletionProtection,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      backtrackWindow: backtrackWindow,
      s3IngestionRoleArn: s3IngestionRoleArn,
      s3Prefix: s3Prefix,
      s3BucketName: s3BucketName,
      sourceEngineVersion: sourceEngineVersion,
      sourceEngine: sourceEngine,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      kmsKeyId: kmsKeyId,
      storageEncrypted: storageEncrypted,
      tags: tags,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      optionGroupName: optionGroupName,
      masterUserPassword: masterUserPassword,
      masterUsername: masterUsername,
      port: port,
      engineVersion: engineVersion,
      engine: engine,
      dbsubnetGroupName: dbsubnetGroupName,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      dbclusterIdentifier: dbclusterIdentifier,
      databaseName: databaseName,
      characterSetName: characterSetName,
      backupRetentionPeriod: backupRetentionPeriod,
      availabilityZones: availabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveFromGlobalCluster = {
  type t
  type request = {
    @ocaml.doc("<p>
        The Amazon Resource Name (ARN) identifying the cluster that was detached from the Aurora global database cluster.
      </p>")
    @as("DbClusterIdentifier")
    dbClusterIdentifier: option<string_>,
    @ocaml.doc("<p>
        The cluster identifier to detach from the Aurora global database cluster.
      </p>")
    @as("GlobalClusterIdentifier")
    globalClusterIdentifier: option<string_>,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "RemoveFromGlobalClusterCommand"
  let make = (~dbClusterIdentifier=?, ~globalClusterIdentifier=?, ()) =>
    new({
      dbClusterIdentifier: dbClusterIdentifier,
      globalClusterIdentifier: globalClusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PromoteReadReplicaDBCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier of the DB cluster read replica to promote. This parameter isn't
            case-sensitive. </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DB cluster read replica.</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster-replica1</code>
         </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "PromoteReadReplicaDBClusterCommand"
  let make = (~dbclusterIdentifier, ()) => new({dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyGlobalCluster = {
  type t
  type request = {
    @ocaml.doc("<p>A value that indicates whether major version upgrades are allowed.</p>
         <p>Constraints: You must allow major version upgrades when specifying a value for the
                <code>EngineVersion</code> parameter that is a different major version than the DB
            cluster's current version.</p>
         <p>If you upgrade the major version of a global database, the cluster and DB instance parameter
        groups are set to the default parameter groups for the new version. Apply any custom parameter
        groups after completing the upgrade.</p>")
    @as("AllowMajorVersionUpgrade")
    allowMajorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The version number of the database engine to which you want to upgrade. 
          Changing this parameter results in an outage. The change is applied during
          the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
         <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'</code>
         </p>
         <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora-mysql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'</code>
         </p>
         <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query '*[]|[?SupportsGlobalDatabases == `true`].[EngineVersion]'</code>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>
        Indicates if the global database cluster has deletion protection enabled. The global database cluster
        can't be deleted when deletion protection is enabled.
      </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>
        The new cluster identifier for the global database cluster when modifying a global database cluster.
        This value is stored as a lowercase string.
      </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>The first character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster2</code>
         </p>")
    @as("NewGlobalClusterIdentifier")
    newGlobalClusterIdentifier: option<string_>,
    @ocaml.doc("<p>
        The DB cluster identifier for the global cluster being modified. This parameter isn't case-sensitive.
      </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing global database cluster.</p>
            </li>
         </ul>")
    @as("GlobalClusterIdentifier")
    globalClusterIdentifier: option<string_>,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyGlobalClusterCommand"
  let make = (
    ~allowMajorVersionUpgrade=?,
    ~engineVersion=?,
    ~deletionProtection=?,
    ~newGlobalClusterIdentifier=?,
    ~globalClusterIdentifier=?,
    (),
  ) =>
    new({
      allowMajorVersionUpgrade: allowMajorVersionUpgrade,
      engineVersion: engineVersion,
      deletionProtection: deletionProtection,
      newGlobalClusterIdentifier: newGlobalClusterIdentifier,
      globalClusterIdentifier: globalClusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The EC2 subnet IDs for the DB subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>The description for the DB subnet group.</p>") @as("DBSubnetGroupDescription")
    dbsubnetGroupDescription: option<string_>,
    @ocaml.doc("<p>The name for the DB subnet group. This value is stored as a lowercase string.
          You can't modify the default subnet group.
      </p>
         <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: string_,
  }
  type response = {@as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBSubnetGroupCommand"
  let make = (~subnetIds, ~dbsubnetGroupName, ~dbsubnetGroupDescription=?, ()) =>
    new({
      subnetIds: subnetIds,
      dbsubnetGroupDescription: dbsubnetGroupDescription,
      dbsubnetGroupName: dbsubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBSnapshotAttribute = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of DB snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p>
         <p>To remove authorization for other AWS accounts to copy or restore a manual snapshot, set this list to include 
      one or more AWS account
      identifiers, or <code>all</code> to remove authorization for any AWS account to copy or
      restore the DB snapshot. If you specify <code>all</code>, an AWS account whose
      account ID is explicitly added to the <code>restore</code> attribute
      can still copy or restore the manual DB snapshot.</p>")
    @as("ValuesToRemove")
    valuesToRemove: option<attributeValueList>,
    @ocaml.doc("<p>A list of DB snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p>
         <p>To authorize other AWS accounts to copy or restore a manual snapshot, set this list to include one or more AWS account
      IDs, or <code>all</code> to make the manual DB snapshot restorable by 
      any AWS account. Do not add the <code>all</code> value for any
      manual DB snapshots that contain private information that you don't want available
      to all AWS accounts.</p>")
    @as("ValuesToAdd")
    valuesToAdd: option<attributeValueList>,
    @ocaml.doc("<p>The name of the DB snapshot attribute to modify.</p>
         <p>To manage authorization for other AWS accounts to copy or restore a manual DB snapshot, 
      set this value to <code>restore</code>.</p>
         <note>
            <p>To view the list of attributes available to modify, use the
              <a>DescribeDBSnapshotAttributes</a> API action.</p>
         </note>")
    @as("AttributeName")
    attributeName: string_,
    @ocaml.doc("<p>The identifier for the DB snapshot to modify the attributes for.</p>")
    @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: string_,
  }
  type response = {
    @as("DBSnapshotAttributesResult")
    dbsnapshotAttributesResult: option<dbsnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ModifyDBSnapshotAttributeCommand"
  let make = (~attributeName, ~dbsnapshotIdentifier, ~valuesToRemove=?, ~valuesToAdd=?, ()) =>
    new({
      valuesToRemove: valuesToRemove,
      valuesToAdd: valuesToAdd,
      attributeName: attributeName,
      dbsnapshotIdentifier: dbsnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBClusterSnapshotAttribute = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A list of DB cluster snapshot attributes to remove from the attribute specified by <code>AttributeName</code>.</p>
        <p>To remove authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include
            one or more AWS account
            identifiers, or <code>all</code> to remove authorization for any AWS account to copy or
            restore the DB cluster snapshot. If you specify <code>all</code>, an AWS account whose account ID is
            explicitly added to the <code>restore</code> attribute
            can still copy or restore a manual DB cluster snapshot.</p>")
    @as("ValuesToRemove")
    valuesToRemove: option<attributeValueList>,
    @ocaml.doc("<p>A list of DB cluster snapshot attributes to add to the attribute specified by <code>AttributeName</code>.</p>
        <p>To authorize other AWS accounts to copy or restore a manual DB cluster snapshot, set this list to include one or more AWS account
            IDs, or <code>all</code> to make the manual DB cluster snapshot restorable by 
            any AWS account. Do not add the <code>all</code> value for any
            manual DB cluster snapshots that contain private information that you don't want available
            to all AWS accounts.</p>")
    @as("ValuesToAdd")
    valuesToAdd: option<attributeValueList>,
    @ocaml.doc("<p>The name of the DB cluster snapshot attribute to modify.</p>
        <p>To manage authorization for other AWS accounts to copy or restore a manual DB cluster snapshot, 
            set this value to <code>restore</code>.</p>
        <note>
            <p>To view the list of attributes available to modify, use the
                <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
        </note>")
    @as("AttributeName")
    attributeName: string_,
    @ocaml.doc("<p>The identifier for the DB cluster snapshot to modify the attributes for.</p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {
    @as("DBClusterSnapshotAttributesResult")
    dbclusterSnapshotAttributesResult: option<dbclusterSnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "ModifyDBClusterSnapshotAttributeCommand"
  let make = (
    ~attributeName,
    ~dbclusterSnapshotIdentifier,
    ~valuesToRemove=?,
    ~valuesToAdd=?,
    (),
  ) =>
    new({
      valuesToRemove: valuesToRemove,
      valuesToAdd: valuesToAdd,
      attributeName: attributeName,
      dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to enable this DB cluster to forward write operations to the primary cluster of an
      Aurora global database (<a>GlobalCluster</a>). By default, write operations are not allowed on Aurora DB clusters that
      are secondary clusters in an Aurora global database.</p>
         <p>You can set this value only on Aurora DB clusters that are members of an Aurora global database. With this parameter
      enabled, a secondary cluster can forward writes to the current primary cluster and the resulting changes are replicated back to
      this cluster. For the primary DB cluster of an Aurora global database, this value is used immediately if the primary is
      demoted by the <a>FailoverGlobalCluster</a> API operation, but it does nothing until then.
    </p>")
    @as("EnableGlobalWriteForwarding")
    enableGlobalWriteForwarding: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster. 
            The default is not to copy them.</p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable the HTTP endpoint for an Aurora Serverless DB cluster. By default, the HTTP endpoint 
            is disabled.</p>
        <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
            SQL queries on the Aurora Serverless DB cluster. You can also query your database
            from inside the RDS console with the query editor.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora Serverless</a> in the 
            <i>Amazon Aurora User Guide</i>.</p>")
    @as("EnableHttpEndpoint")
    enableHttpEndpoint: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc(
      "<p>The scaling properties of the DB cluster. You can only modify scaling properties for DB clusters in <code>serverless</code> DB engine mode.</p>"
    )
    @as("ScalingConfiguration")
    scalingConfiguration: option<scalingConfiguration>,
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>The Active Directory directory ID to move the DB cluster to.  
          Specify <code>none</code> to remove the cluster from its current domain.
          The domain must be created prior to this operation.
      </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a>
            in the <i>Amazon Aurora User Guide</i>.
      </p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>The name of the DB parameter group to apply to all instances of the DB cluster. </p>
         <note>
            <p>When you apply a parameter group using the <code>DBInstanceParameterGroupName</code> parameter, the DB
                cluster isn't rebooted automatically. Also, parameter changes aren't
                applied during the next maintenance window but instead are applied immediately.</p>
         </note>
         <p>Default: The existing name setting</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>The DB parameter group must be in the same DB parameter group family as this DB cluster.</p>
            </li>
            <li>
               <p>The <code>DBInstanceParameterGroupName</code> parameter is only valid in combination with 
              the <code>AllowMajorVersionUpgrade</code> parameter.</p>
            </li>
         </ul>")
    @as("DBInstanceParameterGroupName")
    dbinstanceParameterGroupName: option<string_>,
    @ocaml.doc("<p>A value that indicates whether major version upgrades are allowed.</p>
         <p>Constraints: You must allow major version upgrades when specifying a value for the
                <code>EngineVersion</code> parameter that is a different major version than the DB
            cluster's current version.</p>")
    @as("AllowMajorVersionUpgrade")
    allowMajorVersionUpgrade: option<boolean_>,
    @ocaml.doc("<p>The version number of the database engine to which you want to upgrade. 
            Changing this parameter results in an outage. The change is applied during
            the next maintenance window unless <code>ApplyImmediately</code> is enabled.</p>
        <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
        <p>
            <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
        <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p>
        <p>
            <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
        <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
        <p>
            <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc(
      "<p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB cluster.</p>"
    )
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @ocaml.doc("<p>The target backtrack window, in seconds. To disable backtracking, set this value to
            0.</p>
        <note>
            <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
        </note>
        <p>Default: 0</p>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
            </li>
         </ul>")
    @as("BacktrackWindow")
    backtrackWindow: option<longOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
            Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
        
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\">
                IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
         <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
         <p>The default is a 30-minute window selected at random from an
            8-hour block of time for each AWS Region, occurring on a random day of the
            week. To see the time blocks available, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\">
                Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i>
        </p>
         <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
         <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created
            if automated backups are enabled,
            using the <code>BackupRetentionPeriod</code> parameter.
        </p>
         <p>The default is a 30-minute window selected at random from an
            8-hour block of time for each AWS Region. 
            To view the time blocks available, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow\">
                Backup window</a> in the <i>Amazon Aurora User Guide.</i>
        </p>
         <p>Constraints:</p> 
         <ul>
            <li>
               <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
               <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>A value that indicates that the DB cluster should be associated with the specified option group. 
            Changing this parameter doesn't result in an outage except in the following case, and the change 
            is applied during the next maintenance window
            unless the <code>ApplyImmediately</code> is enabled for this request. If the parameter change results in an option group that 
            enables OEM, this change can cause a brief (sub-second) period during which new connections 
            are rejected but existing connections are not interrupted.
        </p>
         <p>Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The new password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".</p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>")
    @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>The port number on which the DB cluster accepts connections.</p>
         <p>Constraints: Value must be <code>1150-65535</code>
         </p>
         <p>Default: The same port as the original DB cluster.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>A list of VPC security groups that the DB cluster will belong to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to use for the DB cluster.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are retained. You must specify a minimum value of 1.</p>
         <p>Default: 1</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 1 to 35</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether the modifications in this request and
      any pending modifications are asynchronously applied
      as soon as possible, regardless of the
      <code>PreferredMaintenanceWindow</code> setting for the DB cluster. 
      If this parameter is disabled, changes to the
      DB cluster are applied during the next maintenance window.</p>
         <p>The <code>ApplyImmediately</code> parameter only affects the <code>EnableIAMDatabaseAuthentication</code>, 
      <code>MasterUserPassword</code>, and <code>NewDBClusterIdentifier</code> values. If the <code>ApplyImmediately</code> 
      parameter is disabled, then changes to the <code>EnableIAMDatabaseAuthentication</code>, <code>MasterUserPassword</code>, 
      and <code>NewDBClusterIdentifier</code> values are applied during the next maintenance window. All other changes are
      applied immediately, regardless of the value of the <code>ApplyImmediately</code> parameter.</p>
         <p>By default, this parameter is disabled.</p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>The first character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster2</code>
         </p>")
    @as("NewDBClusterIdentifier")
    newDBClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The DB cluster identifier for the cluster being modified. This parameter isn't case-sensitive.</p>
         <p>Constraints: This identifier must match the identifier of an existing DB
            cluster.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBClusterCommand"
  let make = (
    ~dbclusterIdentifier,
    ~enableGlobalWriteForwarding=?,
    ~copyTagsToSnapshot=?,
    ~enableHttpEndpoint=?,
    ~deletionProtection=?,
    ~scalingConfiguration=?,
    ~domainIAMRoleName=?,
    ~domain=?,
    ~dbinstanceParameterGroupName=?,
    ~allowMajorVersionUpgrade=?,
    ~engineVersion=?,
    ~cloudwatchLogsExportConfiguration=?,
    ~backtrackWindow=?,
    ~enableIAMDatabaseAuthentication=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~optionGroupName=?,
    ~masterUserPassword=?,
    ~port=?,
    ~vpcSecurityGroupIds=?,
    ~dbclusterParameterGroupName=?,
    ~backupRetentionPeriod=?,
    ~applyImmediately=?,
    ~newDBClusterIdentifier=?,
    (),
  ) =>
    new({
      enableGlobalWriteForwarding: enableGlobalWriteForwarding,
      copyTagsToSnapshot: copyTagsToSnapshot,
      enableHttpEndpoint: enableHttpEndpoint,
      deletionProtection: deletionProtection,
      scalingConfiguration: scalingConfiguration,
      domainIAMRoleName: domainIAMRoleName,
      domain: domain,
      dbinstanceParameterGroupName: dbinstanceParameterGroupName,
      allowMajorVersionUpgrade: allowMajorVersionUpgrade,
      engineVersion: engineVersion,
      cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
      backtrackWindow: backtrackWindow,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      optionGroupName: optionGroupName,
      masterUserPassword: masterUserPassword,
      port: port,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      backupRetentionPeriod: backupRetentionPeriod,
      applyImmediately: applyImmediately,
      newDBClusterIdentifier: newDBClusterIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FailoverGlobalCluster = {
  type t
  type request = {
    @ocaml.doc("<p>Identifier of the secondary Aurora DB cluster that you want to promote to primary for the Aurora
       global database (<a>GlobalCluster</a>.) Use the Amazon Resource Name (ARN) for the identifier so that
       Aurora can locate the cluster in its AWS Region.      
 </p>")
    @as("TargetDbClusterIdentifier")
    targetDbClusterIdentifier: dbclusterIdentifier,
    @ocaml.doc("<p>Identifier of the Aurora global database (<a>GlobalCluster</a>)
    that should be failed over. The identifier is the unique key assigned by
    the user when the Aurora global database was created. In other words,
    it's the name of the Aurora global database that you want to fail over. </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing
      <a>GlobalCluster</a> (Aurora global database).</p>
            </li>
         </ul>")
    @as("GlobalClusterIdentifier")
    globalClusterIdentifier: globalClusterIdentifier,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "FailoverGlobalClusterCommand"
  let make = (~targetDbClusterIdentifier, ~globalClusterIdentifier, ()) =>
    new({
      targetDbClusterIdentifier: targetDbClusterIdentifier,
      globalClusterIdentifier: globalClusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FailoverDBCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the instance to promote to the primary instance.</p>
        <p>You must specify the instance identifier for an Aurora Replica in the DB cluster.
        For example, <code>mydbcluster-replica1</code>.</p>")
    @as("TargetDBInstanceIdentifier")
    targetDBInstanceIdentifier: option<string_>,
    @ocaml.doc("<p>A DB cluster identifier to force a failover for. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBCluster.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "FailoverDBClusterCommand"
  let make = (~dbclusterIdentifier, ~targetDBInstanceIdentifier=?, ()) =>
    new({
      targetDBInstanceIdentifier: targetDBInstanceIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedDBInstancesOfferings = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
    The maximum number of records to include in the response.
    If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is
    included in the response so you can retrieve the remaining results.
    </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc(
      "<p>A value that indicates whether to show only those reservations that support Multi-AZ.</p>"
    )
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p>
         <p>Valid Values: <code>\"Partial Upfront\" | \"All Upfront\" | \"No Upfront\" </code>
         </p>")
    @as("OfferingType")
    offeringType: option<string_>,
    @ocaml.doc("<p>Product description filter value. Specify this parameter to show only the available offerings that contain the specified product description.</p>
         <note>
            <p>The results show offerings that partially match the filter value.</p>
         </note>")
    @as("ProductDescription")
    productDescription: option<string_>,
    @ocaml.doc("<p>Duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p>
         <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
         </p>")
    @as("Duration")
    duration: option<string_>,
    @ocaml.doc(
      "<p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>"
    )
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>The offering identifier filter value. Specify this parameter to show only the available offering that matches the specified reservation identifier.</p>
         <p>Example: <code>438012d3-4052-4cc7-b2e3-8d3372e0e706</code>
         </p>")
    @as("ReservedDBInstancesOfferingId")
    reservedDBInstancesOfferingId: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeReservedDBInstancesOfferings</code> action.    
        </p>")
  type response = {
    @ocaml.doc("<p>A list of reserved DB instance offerings.</p>")
    @as("ReservedDBInstancesOfferings")
    reservedDBInstancesOfferings: option<reservedDBInstancesOfferingList>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeReservedDBInstancesOfferingsCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~multiAZ=?,
    ~offeringType=?,
    ~productDescription=?,
    ~duration=?,
    ~dbinstanceClass=?,
    ~reservedDBInstancesOfferingId=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      multiAZ: multiAZ,
      offeringType: offeringType,
      productDescription: productDescription,
      duration: duration,
      dbinstanceClass: dbinstanceClass,
      reservedDBInstancesOfferingId: reservedDBInstancesOfferingId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedDBInstances = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
    The maximum number of records to include in the response.
    If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is
          included in the response so you can retrieve the remaining results.
    </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The lease identifier filter value. Specify this parameter to show only the reservation that matches the specified lease ID.</p>
         <note>
            <p>AWS Support might request the lease ID for an issue related to a reserved DB instance.</p>
         </note>")
    @as("LeaseId")
    leaseId: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether to show only those reservations that support Multi-AZ.</p>"
    )
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p>
         <p>Valid Values: <code>\"Partial Upfront\" | \"All Upfront\" | \"No Upfront\" </code>
         </p>")
    @as("OfferingType")
    offeringType: option<string_>,
    @ocaml.doc(
      "<p>The product description filter value. Specify this parameter to show only those reservations matching the specified product description.</p>"
    )
    @as("ProductDescription")
    productDescription: option<string_>,
    @ocaml.doc("<p>The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p>
         <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
         </p>")
    @as("Duration")
    duration: option<string_>,
    @ocaml.doc(
      "<p>The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.</p>"
    )
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc(
      "<p>The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.</p>"
    )
    @as("ReservedDBInstancesOfferingId")
    reservedDBInstancesOfferingId: option<string_>,
    @ocaml.doc(
      "<p>The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.</p>"
    )
    @as("ReservedDBInstanceId")
    reservedDBInstanceId: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeReservedDBInstances</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>A list of reserved DB instances.</p>") @as("ReservedDBInstances")
    reservedDBInstances: option<reservedDBInstanceList>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeReservedDBInstancesCommand"
  let make = (
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~leaseId=?,
    ~multiAZ=?,
    ~offeringType=?,
    ~productDescription=?,
    ~duration=?,
    ~dbinstanceClass=?,
    ~reservedDBInstancesOfferingId=?,
    ~reservedDBInstanceId=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      leaseId: leaseId,
      multiAZ: multiAZ,
      offeringType: offeringType,
      productDescription: productDescription,
      duration: duration,
      dbinstanceClass: dbinstanceClass,
      reservedDBInstancesOfferingId: reservedDBInstancesOfferingId,
      reservedDBInstanceId: reservedDBInstanceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePendingMaintenanceActions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
            The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
            you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            <code>DescribePendingMaintenanceActions</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to a number of records specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A filter that specifies one or more resources to return pending maintenance actions for.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p>
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB 
              cluster Amazon Resource Names (ARNs). The results list will only include pending maintenance 
              actions for the DB clusters identified by these ARNs.</p>
            </li>
            <li>
               <p>
                  <code>db-instance-id</code> - Accepts DB instance identifiers and DB 
            instance ARNs. The results list will only include pending maintenance 
            actions for the DB instances identified by these ARNs.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The ARN of a resource to return pending maintenance actions for.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>Data returned from the <b>DescribePendingMaintenanceActions</b> action.</p>")
  type response = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            <code>DescribePendingMaintenanceActions</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to a number of records specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of the pending maintenance actions for the resource.</p>")
    @as("PendingMaintenanceActions")
    pendingMaintenanceActions: option<pendingMaintenanceActions>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribePendingMaintenanceActionsCommand"
  let make = (~maxRecords=?, ~marker=?, ~filters=?, ~resourceIdentifier=?, ()) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      resourceIdentifier: resourceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrderableDBInstanceOptions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous
            DescribeOrderableDBInstanceOptions request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
            The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
            you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>A value that indicates whether to show only VPC or non-VPC offerings.</p>")
    @as("Vpc")
    vpc: option<booleanOptional>,
    @ocaml.doc("<p>The Availability Zone group associated with a Local Zone. Specify this parameter to retrieve available offerings for the Local Zones in the group.</p>
        <p>Omit this parameter to show the available offerings in the specified AWS Region.</p>")
    @as("AvailabilityZoneGroup")
    availabilityZoneGroup: option<string_>,
    @ocaml.doc(
      "<p>The license model filter value. Specify this parameter to show only the available offerings matching the specified license model.</p>"
    )
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc(
      "<p>The DB instance class filter value. Specify this parameter to show only the available offerings matching the specified DB instance class.</p>"
    )
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc(
      "<p>The engine version filter value. Specify this parameter to show only the available offerings matching the specified engine version.</p>"
    )
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the engine to retrieve DB instance options for.</p>
         <p>Valid Values:
      </p>
         <ul>
            <li>
               <p>
                  <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
            </li>
            <li>
               <p>
                  <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora)</p>
            </li>
            <li>
               <p>
                  <code>aurora-postgresql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("Engine")
    engine: string_,
  }
  @ocaml.doc("<p>
            Contains the result of a successful invocation of the <code>DescribeOrderableDBInstanceOptions</code> action. 
        </p>")
  type response = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous 
            OrderableDBInstanceOptions request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>An <code>OrderableDBInstanceOption</code> structure containing information about orderable options for the DB instance.</p>"
    )
    @as("OrderableDBInstanceOptions")
    orderableDBInstanceOptions: option<orderableDBInstanceOptionsList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeOrderableDBInstanceOptionsCommand"
  let make = (
    ~engine,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~vpc=?,
    ~availabilityZoneGroup=?,
    ~licenseModel=?,
    ~dbinstanceClass=?,
    ~engineVersion=?,
    (),
  ) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      vpc: vpc,
      availabilityZoneGroup: availabilityZoneGroup,
      licenseModel: licenseModel,
      dbinstanceClass: dbinstanceClass,
      engineVersion: engineVersion,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngineDefaultParameters = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeEngineDefaultParameters</code> request.
            If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
          a pagination token called a marker is included in the response so you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the DB parameter group family.</p>") @as("DBParameterGroupFamily")
    dbparameterGroupFamily: string_,
  }
  type response = {@as("EngineDefaults") engineDefaults: option<engineDefaults>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeEngineDefaultParametersCommand"
  let make = (~dbparameterGroupFamily, ~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbparameterGroupFamily: dbparameterGroupFamily,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngineDefaultClusterParameters = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
      An optional pagination token provided by a previous
      <code>DescribeEngineDefaultClusterParameters</code> request.
      If this parameter is specified, the response includes
      only records beyond the marker,
      up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
      The maximum number of records to include in the response.
      If more records exist than the specified <code>MaxRecords</code> value,
          a pagination token called a marker is included in the response so you can retrieve the remaining results.
    </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc(
      "<p>The name of the DB cluster parameter group family to return engine parameter information for.</p>"
    )
    @as("DBParameterGroupFamily")
    dbparameterGroupFamily: string_,
  }
  type response = {@as("EngineDefaults") engineDefaults: option<engineDefaults>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeEngineDefaultClusterParametersCommand"
  let make = (~dbparameterGroupFamily, ~marker=?, ~maxRecords=?, ~filters=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbparameterGroupFamily: dbparameterGroupFamily,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSnapshots = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A specific DB resource ID to describe.</p>") @as("DbiResourceId")
    dbiResourceId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to include manual DB cluster snapshots that are public and can be copied 
          or restored by any AWS account. By default, the public snapshots are not included.</p>
         <p>You can share a manual DB snapshot as public by using the <a>ModifyDBSnapshotAttribute</a> API.</p>")
    @as("IncludePublic")
    includePublic: option<boolean_>,
    @ocaml.doc("<p>A value that indicates whether to include shared manual DB cluster snapshots 
          from other AWS accounts that this AWS account has been given 
          permission to copy or restore. By default, these snapshots are not included.</p>
         <p>You can give an AWS account permission to restore a manual DB snapshot from
    another AWS account by using the <code>ModifyDBSnapshotAttribute</code> API action.</p>")
    @as("IncludeShared")
    includeShared: option<boolean_>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeDBSnapshots</code> request.
            If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
        a pagination token called a marker is included in the response so that
        you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more DB snapshots to describe.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p>
                  <code>db-instance-id</code> - Accepts DB instance identifiers and DB 
              instance Amazon Resource Names (ARNs).</p>
            </li>
            <li>
               <p>
                  <code>db-snapshot-id</code> - Accepts DB snapshot identifiers.</p>
            </li>
            <li>
               <p>
                  <code>dbi-resource-id</code> - Accepts identifiers of source DB instances.</p>
            </li>
            <li>
               <p>
                  <code>snapshot-type</code> - Accepts types of DB snapshots.</p>
            </li>
            <li>
               <p>
                  <code>engine</code> - Accepts names of database engines.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The type of snapshots to be returned. You can specify one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>automated</code> - Return all DB snapshots that have been automatically taken by 
      Amazon RDS for my AWS account.</p>
            </li>
            <li>
               <p>
                  <code>manual</code> - Return all DB snapshots that have been taken by my AWS account.</p>
            </li>
            <li>
               <p>
                  <code>shared</code> - Return all manual DB snapshots that have been shared to my AWS account.</p>
            </li>
            <li>
               <p>
                  <code>public</code> - Return all DB snapshots that have been marked as public.</p>
            </li>
            <li>
               <p>
                  <code>awsbackup</code> - Return the DB snapshots managed by the AWS Backup service.</p>
              <p>For information about AWS Backup, see the 
                  <a href=\"https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html\">
                      <i>AWS Backup Developer Guide.</i>
                  </a>
               </p>
              <p>The <code>awsbackup</code> type does not apply to Aurora.</p>
            </li>
         </ul>
         <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual snapshots are
      returned. Shared and public DB snapshots are not included in the returned results by default.
      You can include shared snapshots with these results by enabling the <code>IncludeShared</code>
      parameter. You can include public snapshots with these results by enabling the 
      <code>IncludePublic</code> parameter.</p>
         <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values
      of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is
      set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to
      <code>public</code>.</p>")
    @as("SnapshotType")
    snapshotType: option<string_>,
    @ocaml.doc("<p>
        A specific DB snapshot identifier to describe. This parameter can't be used in conjunction with <code>DBInstanceIdentifier</code>.            
            This value is stored as a lowercase string.
        </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBSnapshot.</p>
            </li>
            <li>
               <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p>
            </li>
         </ul>")
    @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>The ID of the DB instance to retrieve the list of DB snapshots for. 
        This parameter can't be used in conjunction with <code>DBSnapshotIdentifier</code>.
        This parameter isn't case-sensitive.
        </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeDBSnapshots</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
        A list of <code>DBSnapshot</code> instances.
        </p>")
    @as("DBSnapshots")
    dbsnapshots: option<dbsnapshotList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBSnapshotsCommand"
  let make = (
    ~dbiResourceId=?,
    ~includePublic=?,
    ~includeShared=?,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~snapshotType=?,
    ~dbsnapshotIdentifier=?,
    ~dbinstanceIdentifier=?,
    (),
  ) =>
    new({
      dbiResourceId: dbiResourceId,
      includePublic: includePublic,
      includeShared: includeShared,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      snapshotType: snapshotType,
      dbsnapshotIdentifier: dbsnapshotIdentifier,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSnapshotAttributes = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier for the DB snapshot to describe the attributes for.</p>")
    @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: string_,
  }
  type response = {
    @as("DBSnapshotAttributesResult")
    dbsnapshotAttributesResult: option<dbsnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBSnapshotAttributesCommand"
  let make = (~dbsnapshotIdentifier, ()) => new({dbsnapshotIdentifier: dbsnapshotIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSecurityGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeDBSecurityGroups</code> request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
        a pagination token called a marker is included in the response so that
        you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the DB security group to return details for.</p>")
    @as("DBSecurityGroupName")
    dbsecurityGroupName: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeDBSecurityGroups</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
        A list of <code>DBSecurityGroup</code> instances.
        </p>")
    @as("DBSecurityGroups")
    dbsecurityGroups: option<dbsecurityGroups>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBSecurityGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbsecurityGroupName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbsecurityGroupName: dbsecurityGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxyTargetGroups = {
  type t
  type request = {
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
        a pagination token called a marker is included in the response so that the remaining
        results can be retrieved.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The identifier of the <code>DBProxyTargetGroup</code> to describe.</p>")
    @as("TargetGroupName")
    targetGroupName: option<string_>,
    @ocaml.doc(
      "<p>The identifier of the <code>DBProxy</code> associated with the target group.</p>"
    )
    @as("DBProxyName")
    dbproxyName: string_,
  }
  type response = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>An arbitrary number of <code>DBProxyTargetGroup</code> objects, containing details of the corresponding target groups.</p>"
    )
    @as("TargetGroups")
    targetGroups: option<targetGroupList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBProxyTargetGroupsCommand"
  let make = (~dbproxyName, ~maxRecords=?, ~marker=?, ~filters=?, ~targetGroupName=?, ()) =>
    new({
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      targetGroupName: targetGroupName,
      dbproxyName: dbproxyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBProxies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist
          than the specified <code>MaxRecords</code> value, a pagination token called a marker is
          included in the response so that the remaining results can be retrieved. </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<maxRecords>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the DB proxy. If you omit this parameter,
        the output includes information about all DB proxies owned by
        your AWS account ID.</p>")
    @as("DBProxyName")
    dbproxyName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc(
      "<p>A return value representing an arbitrary number of <code>DBProxy</code> data structures.</p>"
    )
    @as("DBProxies")
    dbproxies: option<dbproxyList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBProxiesCommand"
  let make = (~maxRecords=?, ~marker=?, ~filters=?, ~dbproxyName=?, ()) =>
    new({maxRecords: maxRecords, marker: marker, filters: filters, dbproxyName: dbproxyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBInstanceAutomatedBackups = {
  type t
  @ocaml.doc("<p>Parameter input for DescribeDBInstanceAutomatedBackups. </p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replicated automated backups, for example,
            <code>arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>")
    @as("DBInstanceAutomatedBackupsArn")
    dbinstanceAutomatedBackupsArn: option<string_>,
    @ocaml.doc("<p>The pagination token provided in the previous request. If this parameter is specified the response 
			includes only records beyond the marker, up to <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the specified 
			<code>MaxRecords</code> value, a pagination token called a marker is included in the response so that 
			you can retrieve the remaining results.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies which resources to return based on status.</p>
		       <p>Supported filters are the following:</p>
		       <ul>
            <li>
				           <p>
					             <code>status</code>
				           </p>
			            <ul>
                  <li>
                     <p>
                        <code>active</code> - automated backups for current instances</p>
                  </li>
                  <li>
                     <p>
                        <code>retained</code> - automated backups for deleted instances and after backup replication is stopped</p>
                  </li>
                  <li>
                     <p>
                        <code>creating</code> - automated backups that are waiting for the first automated snapshot to be available</p>
                  </li>
               </ul>
			         </li>
            <li>
               <p>
		                <code>db-instance-id</code> - Accepts DB instance identifiers and Amazon Resource Names (ARNs). 
		        The results list includes only information about the DB instance automated backups identified by these ARNs.</p>
		          </li>
            <li>
               <p>
		                <code>dbi-resource-id</code> - Accepts DB resource identifiers and Amazon Resource Names (ARNs). 
		        The results list includes only information about the DB instance resources identified by these ARNs.</p>
		          </li>
         </ul>
		       <p>Returns all resources by default. The status for each resource is specified in the response.</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>(Optional) The user-supplied instance identifier. If this parameter is specified, it must
            match the identifier of an existing DB instance. It returns information from the
            specific DB instance' automated backup. This parameter isn't case-sensitive. </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: option<string_>,
    @ocaml.doc("<p>The resource ID of the DB instance that is the source of 
		    the automated backup. This parameter isn't case-sensitive. </p>")
    @as("DbiResourceId")
    dbiResourceId: option<string_>,
  }
  @ocaml.doc("<p>
            Contains the result of a successful invocation of the <code>DescribeDBInstanceAutomatedBackups</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
            A list of <code>DBInstanceAutomatedBackup</code> instances.
        </p>")
    @as("DBInstanceAutomatedBackups")
    dbinstanceAutomatedBackups: option<dbinstanceAutomatedBackupList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBInstanceAutomatedBackupsCommand"
  let make = (
    ~dbinstanceAutomatedBackupsArn=?,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~dbinstanceIdentifier=?,
    ~dbiResourceId=?,
    (),
  ) =>
    new({
      dbinstanceAutomatedBackupsArn: dbinstanceAutomatedBackupsArn,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbinstanceIdentifier: dbinstanceIdentifier,
      dbiResourceId: dbiResourceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterSnapshots = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to include manual DB cluster snapshots that are public and can be copied 
            or restored by any AWS account. By default, the public snapshots are not included.</p>
        <p>You can share a manual DB cluster snapshot  as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>")
    @as("IncludePublic")
    includePublic: option<boolean_>,
    @ocaml.doc("<p>A value that indicates whether to include shared manual DB cluster snapshots 
            from other AWS accounts that this AWS account has been given 
            permission to copy or restore. By default, these snapshots are not included.</p>
        <p>You can give an AWS account permission to restore a manual DB cluster snapshot from
            another AWS account by the <code>ModifyDBClusterSnapshotAttribute</code> API action.</p>")
    @as("IncludeShared")
    includeShared: option<boolean_>,
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeDBClusterSnapshots</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
          a pagination token called a marker is included in the response so you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more DB cluster snapshots to describe.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p>
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB 
              cluster Amazon Resource Names (ARNs).</p>
            </li>
            <li>
               <p>
                  <code>db-cluster-snapshot-id</code> - Accepts DB cluster snapshot identifiers.</p>
            </li>
            <li>
               <p>
                  <code>snapshot-type</code> - Accepts types of DB cluster snapshots.</p>
            </li>
            <li>
               <p>
                  <code>engine</code> - Accepts names of database engines.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The type of DB cluster snapshots to be returned. You can specify one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>automated</code> - Return all DB cluster snapshots that have been automatically taken by 
              Amazon RDS for my AWS account.</p>
            </li>
            <li>
               <p>
                  <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS account.</p>
            </li>
            <li>
               <p>
                  <code>shared</code> - Return all manual DB cluster snapshots that have been shared to my AWS account.</p>
            </li>
            <li>
               <p>
                  <code>public</code> - Return all DB cluster snapshots that have been marked as public.</p>
            </li>
         </ul>
         <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB cluster snapshots are
          returned. You can include shared DB cluster snapshots with these results by enabling the <code>IncludeShared</code>
          parameter. You can include public DB cluster snapshots with these results by enabling the 
          <code>IncludePublic</code> parameter.</p>
         <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for <code>SnapshotType</code> values
          of <code>manual</code> or <code>automated</code>. The <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is
          set to <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when <code>SnapshotType</code> is set to
          <code>public</code>.</p>")
    @as("SnapshotType")
    snapshotType: option<string_>,
    @ocaml.doc("<p>A specific DB cluster snapshot identifier to describe. 
            This parameter can't be used in conjunction with the
            <code>DBClusterIdentifier</code> parameter.            
            This value is stored as a lowercase string.
        </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p>
            </li>
            <li>
               <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code> parameter must also be specified.</p>
            </li>
         </ul>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. 
            This parameter can't be used in conjunction with the
            <code>DBClusterSnapshotIdentifier</code> parameter.
            This parameter isn't case-sensitive.
        </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBCluster.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  @ocaml.doc("<p>
          Provides a list of DB cluster snapshots for the user as the result of a call to the <code>DescribeDBClusterSnapshots</code> action.
    </p>")
  type response = {
    @ocaml.doc("<p>Provides a list of DB cluster snapshots for the user.</p>")
    @as("DBClusterSnapshots")
    dbclusterSnapshots: option<dbclusterSnapshotList>,
    @ocaml.doc("<p>
      An optional pagination token provided by a previous
          <code>DescribeDBClusterSnapshots</code> request.
      If this parameter is specified, the response includes
      only records beyond the marker,
      up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterSnapshotsCommand"
  let make = (
    ~includePublic=?,
    ~includeShared=?,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~snapshotType=?,
    ~dbclusterSnapshotIdentifier=?,
    ~dbclusterIdentifier=?,
    (),
  ) =>
    new({
      includePublic: includePublic,
      includeShared: includeShared,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      snapshotType: snapshotType,
      dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterSnapshotAttributes = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The identifier for the DB cluster snapshot to describe the attributes for.</p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {
    @as("DBClusterSnapshotAttributesResult")
    dbclusterSnapshotAttributesResult: option<dbclusterSnapshotAttributesResult>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeDBClusterSnapshotAttributesCommand"
  let make = (~dbclusterSnapshotIdentifier, ()) =>
    new({dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGlobalCluster = {
  type t
  type request = {
    @ocaml.doc("<p>
        The cluster identifier of the global database cluster being deleted.
      </p>")
    @as("GlobalClusterIdentifier")
    globalClusterIdentifier: string_,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteGlobalClusterCommand"
  let make = (~globalClusterIdentifier, ()) =>
    new({globalClusterIdentifier: globalClusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
      The DB cluster snapshot identifier of the new DB cluster snapshot created when <code>SkipFinalSnapshot</code>
      is disabled.
    </p>
         <note>
            <p>
          Specifying this parameter and also skipping the creation of a final DB cluster snapshot 
          with the <code>SkipFinalShapshot</code> parameter results in an error.</p>
         </note>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("FinalDBSnapshotIdentifier")
    finalDBSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to skip the creation of a final DB cluster snapshot before the DB cluster is deleted.
          If skip is specified, no DB cluster snapshot is created. If skip isn't specified, a DB cluster snapshot 
          is created before the DB cluster is deleted. By default, skip isn't specified, and the DB cluster snapshot is created. 
          By default, this parameter is disabled.</p>
         <note>
            <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if <code>SkipFinalSnapshot</code> is disabled.</p>
         </note>")
    @as("SkipFinalSnapshot")
    skipFinalSnapshot: option<boolean_>,
    @ocaml.doc("<p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match an existing DBClusterIdentifier.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBClusterCommand"
  let make = (~dbclusterIdentifier, ~finalDBSnapshotIdentifier=?, ~skipFinalSnapshot=?, ()) =>
    new({
      finalDBSnapshotIdentifier: finalDBSnapshotIdentifier,
      skipFinalSnapshot: skipFinalSnapshot,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGlobalCluster = {
  type t
  type request = {
    @ocaml.doc("<p>
        The storage encryption setting for the new global database cluster.
      </p>")
    @as("StorageEncrypted")
    storageEncrypted: option<booleanOptional>,
    @ocaml.doc("<p>
        The name for your database of up to 64 alpha-numeric characters. If you do not provide a name, Amazon
        Aurora will not create a database in the global database cluster you are creating.
      </p>")
    @as("DatabaseName")
    databaseName: option<string_>,
    @ocaml.doc("<p>
        The deletion protection setting for the new global database.
        The global database can't be deleted when deletion protection is enabled.
      </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The engine version of the Aurora global database.</p>") @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this DB cluster.</p>")
    @as("Engine")
    engine: option<string_>,
    @ocaml.doc("<p>
        The Amazon Resource Name (ARN) to use as the primary cluster of the global database.
        This parameter is optional.
      </p>")
    @as("SourceDBClusterIdentifier")
    sourceDBClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The cluster identifier of the new global database cluster.</p>")
    @as("GlobalClusterIdentifier")
    globalClusterIdentifier: option<string_>,
  }
  type response = {@as("GlobalCluster") globalCluster: option<globalCluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateGlobalClusterCommand"
  let make = (
    ~storageEncrypted=?,
    ~databaseName=?,
    ~deletionProtection=?,
    ~engineVersion=?,
    ~engine=?,
    ~sourceDBClusterIdentifier=?,
    ~globalClusterIdentifier=?,
    (),
  ) =>
    new({
      storageEncrypted: storageEncrypted,
      databaseName: databaseName,
      deletionProtection: deletionProtection,
      engineVersion: engineVersion,
      engine: engine,
      sourceDBClusterIdentifier: sourceDBClusterIdentifier,
      globalClusterIdentifier: globalClusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBSubnetGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Tags to assign to the DB subnet group.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The EC2 Subnet IDs for the DB subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>The description for the DB subnet group.</p>") @as("DBSubnetGroupDescription")
    dbsubnetGroupDescription: string_,
    @ocaml.doc("<p>The name for the DB subnet group. This value is stored as a lowercase string.</p>
         <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: string_,
  }
  type response = {@as("DBSubnetGroup") dbsubnetGroup: option<dbsubnetGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBSubnetGroupCommand"
  let make = (~subnetIds, ~dbsubnetGroupDescription, ~dbsubnetGroupName, ~tags=?, ()) =>
    new({
      tags: tags,
      subnetIds: subnetIds,
      dbsubnetGroupDescription: dbsubnetGroupDescription,
      dbsubnetGroupName: dbsubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBCluster = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to enable this DB cluster to forward write operations to the primary cluster of an
      Aurora global database (<a>GlobalCluster</a>). By default, write operations are not allowed on Aurora DB clusters that
      are secondary clusters in an Aurora global database.</p>
         <p>You can set this value only on Aurora DB clusters that are members of an Aurora global database. With this parameter
      enabled, a secondary cluster can forward writes to the current primary cluster and the resulting changes are replicated back to
      this cluster. For the primary DB cluster of an Aurora global database, this value is used immediately if the
        primary is demoted by the <a>FailoverGlobalCluster</a> API operation, but it does nothing until then.
    </p>")
    @as("EnableGlobalWriteForwarding")
    enableGlobalWriteForwarding: option<booleanOptional>,
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>The Active Directory directory ID to create the DB cluster in.</p>
         <p>
         For Amazon Aurora DB clusters, Amazon RDS can use Kerberos Authentication to authenticate users that connect to the DB cluster.
         For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/kerberos-authentication.html\">Kerberos Authentication</a>
         in the <i>Amazon Aurora User Guide</i>.
       </p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to copy all tags from the DB cluster to snapshots of the DB cluster. 
            The default is not to copy them.</p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable the HTTP endpoint for an Aurora Serverless DB cluster. By default, the HTTP endpoint 
            is disabled.</p>
        <p>When enabled, the HTTP endpoint provides a connectionless web service API for running
            SQL queries on the Aurora Serverless DB cluster. You can also query your database
            from inside the RDS console with the query editor.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/data-api.html\">Using the Data API for Aurora Serverless</a> in the 
            <i>Amazon Aurora User Guide</i>.</p>")
    @as("EnableHttpEndpoint")
    enableHttpEndpoint: option<booleanOptional>,
    @ocaml.doc("<p>
        The global cluster ID of an Aurora cluster that becomes the primary cluster
        in the new global database cluster.
      </p>")
    @as("GlobalClusterIdentifier")
    globalClusterIdentifier: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc(
      "<p>For DB clusters in <code>serverless</code> DB engine mode, the scaling properties of the DB cluster.</p>"
    )
    @as("ScalingConfiguration")
    scalingConfiguration: option<scalingConfiguration>,
    @ocaml.doc("<p>The DB engine mode of the DB cluster, either <code>provisioned</code>, <code>serverless</code>, 
            <code>parallelquery</code>, <code>global</code>, or <code>multimaster</code>.</p>
        <p>The <code>parallelquery</code> engine mode isn't required for Aurora MySQL version 1.23 and higher 1.x versions, 
            and version 2.09 and higher 2.x versions.</p>
        <p>The <code>global</code> engine mode isn't required for Aurora MySQL version 1.22 and higher 1.x versions, 
            and <code>global</code> engine mode isn't required for any 2.x versions.</p>
        <p>The <code>multimaster</code> engine mode only applies for DB clusters created with Aurora MySQL version 5.6.10a.</p>
        <p>For Aurora PostgreSQL, the <code>global</code> engine mode isn't required, and both the <code>parallelquery</code> 
            and the <code>multimaster</code> engine modes currently aren't supported.</p>
        <p>Limitations and requirements apply to some DB engine modes. For more information, see the 
            following sections in the <i>Amazon Aurora User Guide</i>:</p>
        <ul>
            <li>
                <p>
                    <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html#aurora-serverless.limitations\">
                        Limitations of Aurora Serverless</a>
                </p>
            </li>
            <li>
                <p>
                    <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-mysql-parallel-query.html#aurora-mysql-parallel-query-limitations\">
                        Limitations of Parallel Query</a>
                </p>
            </li>
            <li>
                <p>
                    <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database.html#aurora-global-database.limitations\">
                        Limitations of Aurora Global Databases</a>
                </p>
            </li>
            <li>
                <p>
                    <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-multi-master.html#aurora-multi-master-limitations\">
                        Limitations of Multi-Master Clusters</a>
                </p>
            </li>
         </ul>")
    @as("EngineMode")
    engineMode: option<string_>,
    @ocaml.doc("<p>The list of log types that need to be enabled for exporting to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon Aurora User Guide</i>.</p>
        <p>
            <b>Aurora MySQL</b>
        </p>
        <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>. 
        </p>
        <p>
            <b>Aurora PostgreSQL</b>
        </p>
        <p>Possible value is <code>postgresql</code>.
        </p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>The target backtrack window, in seconds. To disable backtracking, set this value to
            0. </p>
        <note>
            <p>Currently, Backtrack is only supported for Aurora MySQL DB clusters.</p>
        </note>
         <p>Default: 0</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If specified, this value must be set to a number from 0 to 259,200 (72 hours).</p>
            </li>
         </ul>")
    @as("BacktrackWindow")
    backtrackWindow: option<longOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
            Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
        
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html\">
                IAM Database Authentication</a> in the <i>Amazon Aurora User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>A URL that contains a Signature Version 4 signed request for 
            the <code>CreateDBCluster</code> action to be called in the source AWS Region where the DB cluster is replicated from. 
            You only need to specify <code>PreSignedUrl</code> when you are performing cross-region replication from an encrypted DB cluster.</p>
       
        <p>The pre-signed URL must be a valid request for the <code>CreateDBCluster</code> API action 
            that can be executed in the source AWS Region that contains the encrypted DB cluster to be copied.</p>
        <p>The pre-signed URL request must contain the following parameter values:</p>
        <ul>
            <li>
               <p>
                  <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to encrypt the copy of 
                the DB cluster in the destination AWS Region. This should refer to the same AWS KMS CMK for both the <code>CreateDBCluster</code> 
                action that is called in the destination AWS Region, and the action contained in the pre-signed URL.</p>
            </li>
            <li>
               <p>
                  <code>DestinationRegion</code> - The name of the AWS Region that Aurora read replica will
                    be created in.</p>
            </li>
            <li>
               <p>
                  <code>ReplicationSourceIdentifier</code> - The DB cluster identifier for the encrypted DB cluster to be copied. 
                This identifier must be in the Amazon Resource Name (ARN) format for the source AWS Region. For example, if you are copying an 
                encrypted DB cluster from the us-west-2 AWS Region, then your <code>ReplicationSourceIdentifier</code> would look like
                Example: <code>arn:aws:rds:us-west-2:123456789012:cluster:aurora-cluster1</code>.</p>
            </li>
         </ul>
        
        <p>To learn how to generate a Signature Version 4 signed request, see 
            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\">
                Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">
                Signature Version 4 Signing Process</a>.</p>
        <note>
            <p>If you are using an AWS SDK tool or the AWS CLI, you can specify <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI) 
                instead of specifying <code>PreSignedUrl</code> manually. Specifying <code>SourceRegion</code> autogenerates a pre-signed URL that is a valid 
                request for the operation that can be executed in the source AWS Region.</p>
        </note>")
    @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted DB cluster.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
                 To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
        <p>When a CMK isn't specified in <code>KmsKeyId</code>:</p>
        <ul>
            <li>
                <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted
                    source, then Amazon RDS will use the CMK used to encrypt the
                    source. Otherwise, Amazon RDS will use your default CMK. </p>
            </li>
            <li>
                <p>If the <code>StorageEncrypted</code> parameter is enabled and
                        <code>ReplicationSourceIdentifier</code> isn't specified, then Amazon RDS
                    will use your default CMK.</p>
            </li>
         </ul>
        <p>There is a default CMK for your AWS account. Your AWS account
            has a different default CMK for each AWS Region.</p>
        <p>If you create a read replica of an encrypted DB cluster in another AWS Region, you
            must set <code>KmsKeyId</code> to a AWS KMS key identifier that is valid in the destination AWS
            Region. This CMK is used to encrypt the read replica in that AWS Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster is encrypted.</p>")
    @as("StorageEncrypted")
    storageEncrypted: option<booleanOptional>,
    @ocaml.doc("<p>Tags to assign to the DB cluster.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB
            cluster is created as a read replica.</p>")
    @as("ReplicationSourceIdentifier")
    replicationSourceIdentifier: option<string_>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC).</p>
         <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
         <p>The default is a 30-minute window selected at random from an
            8-hour block of time for each AWS Region, occurring on a random day of the
            week. To see the time blocks available, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_UpgradeDBInstance.Maintenance.html#AdjustingTheMaintenanceWindow.Aurora\">
                Adjusting the Preferred DB Cluster Maintenance Window</a> in the <i>Amazon Aurora User Guide.</i>
        </p>
         <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
         <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created
        if automated backups are enabled
        using the <code>BackupRetentionPeriod</code> parameter.
        </p>
         <p>The default is a 30-minute window selected at random from an
        8-hour block of time for each AWS Region. 
        To view the time blocks available, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.Backups.BackupWindow\">
            Backup window</a> in the <i>Amazon Aurora User Guide.</i>
        </p>
         <p>Constraints:</p> 
         <ul>
            <li>
               <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
               <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>A value that indicates that the DB cluster should be associated with the specified option group.</p>
         <p>Permanent options can't be removed from an option group. The option group can't be removed from a DB cluster once it is associated with a DB cluster.</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The password for the master database user. This password can contain any printable ASCII character except \"/\", \"\"\", or \"@\".</p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>")
    @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>The name of the master user for the DB cluster.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 16 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>")
    @as("MasterUsername")
    masterUsername: option<string_>,
    @ocaml.doc("<p>The port number on which the instances in the DB cluster accept connections.</p>
         <p>
            Default: <code>3306</code> if engine is set as aurora or <code>5432</code> if set to aurora-postgresql.
      </p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The version number of the database engine to use.</p>
         <p>To list all of the available engine versions for <code>aurora</code> (for MySQL 5.6-compatible Aurora), use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
         <p>To list all of the available engine versions for <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora-mysql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
         <p>To list all of the available engine versions for <code>aurora-postgresql</code>, use the following command:</p>
         <p>
            <code>aws rds describe-db-engine-versions --engine aurora-postgresql --query \"DBEngineVersions[].EngineVersion\"</code>
         </p>
         <p>
            <b>Aurora MySQL</b>
         </p>
         <p>Example: <code>5.6.10a</code>, <code>5.6.mysql_aurora.1.19.2</code>, <code>5.7.12</code>, <code>5.7.mysql_aurora.2.04.5</code>
         </p>
         <p>
            <b>Aurora PostgreSQL</b>
         </p>
         <p>Example: <code>9.6.3</code>, <code>10.7</code>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this DB cluster.</p>
         <p>Valid Values: <code>aurora</code> (for MySQL 5.6-compatible Aurora), <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora), and <code>aurora-postgresql</code> 
         </p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>A DB subnet group to associate with this DB cluster.</p>
         <p>Constraints: Must match the name of an existing DBSubnetGroup. Must not be default.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>A list of EC2 VPC security groups to associate with this DB cluster.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>
            The name of the DB cluster parameter group to associate
            with this DB cluster. If you do not specify a value, then 
          the default DB cluster parameter group for the specified DB engine and version is used.
        </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DB cluster parameter group.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc("<p>The DB cluster identifier. This parameter is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster1</code>
         </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>The name for your database of up to 64 alphanumeric characters. If you do not
            provide a name, Amazon RDS doesn't create a database in the DB cluster you are
            creating.</p>")
    @as("DatabaseName")
    databaseName: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates that the DB cluster should be associated with the specified CharacterSet.</p>"
    )
    @as("CharacterSetName")
    characterSetName: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are retained.</p>
         <p>Default: 1</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 1 to 35</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>A list of Availability Zones (AZs) where instances in the DB cluster can be created. For information on
            AWS Regions and Availability Zones, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Concepts.RegionsAndAvailabilityZones.html\">Choosing the Regions and 
                Availability Zones</a> in the <i>Amazon Aurora User Guide</i>.
        </p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBClusterCommand"
  let make = (
    ~engine,
    ~dbclusterIdentifier,
    ~enableGlobalWriteForwarding=?,
    ~domainIAMRoleName=?,
    ~domain=?,
    ~copyTagsToSnapshot=?,
    ~enableHttpEndpoint=?,
    ~globalClusterIdentifier=?,
    ~deletionProtection=?,
    ~scalingConfiguration=?,
    ~engineMode=?,
    ~enableCloudwatchLogsExports=?,
    ~backtrackWindow=?,
    ~enableIAMDatabaseAuthentication=?,
    ~preSignedUrl=?,
    ~kmsKeyId=?,
    ~storageEncrypted=?,
    ~tags=?,
    ~replicationSourceIdentifier=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~optionGroupName=?,
    ~masterUserPassword=?,
    ~masterUsername=?,
    ~port=?,
    ~engineVersion=?,
    ~dbsubnetGroupName=?,
    ~vpcSecurityGroupIds=?,
    ~dbclusterParameterGroupName=?,
    ~databaseName=?,
    ~characterSetName=?,
    ~backupRetentionPeriod=?,
    ~availabilityZones=?,
    (),
  ) =>
    new({
      enableGlobalWriteForwarding: enableGlobalWriteForwarding,
      domainIAMRoleName: domainIAMRoleName,
      domain: domain,
      copyTagsToSnapshot: copyTagsToSnapshot,
      enableHttpEndpoint: enableHttpEndpoint,
      globalClusterIdentifier: globalClusterIdentifier,
      deletionProtection: deletionProtection,
      scalingConfiguration: scalingConfiguration,
      engineMode: engineMode,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      backtrackWindow: backtrackWindow,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      preSignedUrl: preSignedUrl,
      kmsKeyId: kmsKeyId,
      storageEncrypted: storageEncrypted,
      tags: tags,
      replicationSourceIdentifier: replicationSourceIdentifier,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      optionGroupName: optionGroupName,
      masterUserPassword: masterUserPassword,
      masterUsername: masterUsername,
      port: port,
      engineVersion: engineVersion,
      engine: engine,
      dbsubnetGroupName: dbsubnetGroupName,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      dbclusterIdentifier: dbclusterIdentifier,
      databaseName: databaseName,
      characterSetName: characterSetName,
      backupRetentionPeriod: backupRetentionPeriod,
      availabilityZones: availabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p>
            The user-supplied instance identifier of the DB Snapshot created immediately before the DB instance is stopped.
        </p>")
    @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>
            The user-supplied instance identifier.
        </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "StopDBInstanceCommand"
  let make = (~dbinstanceIdentifier, ~dbsnapshotIdentifier=?, ()) =>
    new({dbsnapshotIdentifier: dbsnapshotIdentifier, dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p>
            The user-supplied instance identifier. 
        </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "StartDBInstanceCommand"
  let make = (~dbinstanceIdentifier, ()) => new({dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBInstanceToPointInTime = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance.</p>
        <p>A <i>CoIP</i> provides local or external connectivity to resources in
            your Outpost subnets through your on-premises network. For some use cases, a CoIP can
            provide lower latency for connections to the DB instance from outside of its virtual
            private cloud (VPC) on your local network.</p>
        <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Working with Amazon RDS on AWS Outposts</a> 
            in the <i>Amazon RDS User Guide</i>.</p>
        <p>For more information about CoIPs, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing\">Customer-owned IP addresses</a> 
            in the <i>AWS Outposts User Guide</i>.</p>")
    @as("EnableCustomerOwnedIp")
    enableCustomerOwnedIp: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the replicated automated backups from which to restore, for example, 
            <code>arn:aws:rds:useast-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE</code>.</p>")
    @as("SourceDBInstanceAutomatedBackupsArn")
    sourceDBInstanceAutomatedBackupsArn: option<string_>,
    @ocaml.doc("<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>
         <p>For more information about this setting, including limitations that apply to it, see 
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling\">
              Managing capacity automatically with Amazon RDS storage autoscaling</a> 
          in the <i>Amazon RDS User Guide</i>.</p>")
    @as("MaxAllocatedStorage")
    maxAllocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>The resource ID of the source DB instance from which to restore.</p>")
    @as("SourceDbiResourceId")
    sourceDbiResourceId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\">
                Deleting a DB Instance</a>.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to associate with this DB instance.</p>
        <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code> 
                for the specified DB engine is used.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If supplied, must match the name of an existing DBParameterGroup.</p>
            </li>
            <li>
                <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether the DB instance class of the DB instance uses its default processor features.</p>"
    )
    @as("UseDefaultProcessorFeatures")
    useDefaultProcessorFeatures: option<booleanOptional>,
    @ocaml.doc(
      "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
    )
    @as("ProcessorFeatures")
    processorFeatures: option<processorFeatureList>,
    @ocaml.doc("<p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
          Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
      
         <p>For more information about IAM database authentication, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\">
            IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>Specify the Active Directory directory ID to restore the DB instance in.
          The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL 
          Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\">
          Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>
            A list of EC2 VPC security groups to associate with this DB instance.
        </p>
        <p>
            Default: The default EC2 VPC security group for the DB subnet group's VPC.
        </p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc(
      "<p>The password for the given ARN from the key store in order to access the device.</p>"
    )
    @as("TdeCredentialPassword")
    tdeCredentialPassword: option<string_>,
    @ocaml.doc(
      "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
    )
    @as("TdeCredentialArn")
    tdeCredentialArn: option<string_>,
    @ocaml.doc("<p>Specifies the storage type to be associated with the DB instance.</p>
         <p>
            Valid values: <code>standard | gp2 | io1</code>
         </p>
         <p>
            If you specify <code>io1</code>, you must also include a value for the
            <code>Iops</code> parameter.
        </p>
         <p>
            Default: <code>io1</code> if the <code>Iops</code> parameter
            is specified, otherwise <code>gp2</code>
         </p>")
    @as("StorageType")
    storageType: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc(
      "<p>A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.</p>"
    )
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>The name of the option group to be used for the restored DB instance.</p>
      
         <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>
         <p>Constraints: Must be an integer greater than 1000.</p>
         <p>
            <b>SQL Server</b>
         </p>
         <p>Setting the IOPS value for the SQL Server database engine isn't supported.</p>")
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>The database engine to use for the new instance.</p>
         <p>Default: The same as source</p>
         <p>Constraint: Must be compatible with the engine of the source</p>

         <p>Valid Values:</p>
      
         <ul>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("Engine")
    engine: option<string_>,
    @ocaml.doc("<p>The database name for the restored DB instance.</p>
         <note>
            <p>This parameter isn't used for the MySQL or MariaDB engines.</p>
         </note>")
    @as("DBName")
    dbname: option<string_>,
    @ocaml.doc("<p>License model information for the restored DB instance.</p>
         <p>Default: Same as source.</p>
         <p>
            Valid values:  <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code>
         </p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.</p>"
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is publicly accessible.</p>
         <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, 
          and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, 
          and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
         <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>  
         <p>For more information, see <a>CreateDBInstance</a>.</p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is a Multi-AZ deployment.</p>
         <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The DB subnet group name to use for the new instance.</p>
         <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The Availability Zone (AZ) where the DB instance will be created.</p>
         <p>Default: A random, system-chosen Availability Zone.</p>
         <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>
         <p>Example: <code>us-east-1a</code>
         </p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The port number on which the database accepts connections.</p>
         <p>Constraints: Value must be <code>1150-65535</code>
         </p>
         <p>Default: The same port as the original DB instance.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The compute and memory capacity of the Amazon RDS DB instance, for example, <code>db.m4.large</code>.
          Not all DB instance classes are available in all AWS Regions, or for all database engines.
          For the full list of DB instance classes,
          and availability for your engine, see
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
         </p>
         <p>Default: The same DBInstanceClass as the original DB instance.</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>
          A value that indicates whether the DB instance is restored from the latest backup time. By default, the DB instance 
          isn't restored from the latest backup time.
        </p>
         <p>Constraints: Can't be specified if the <code>RestoreTime</code> parameter is provided.</p>")
    @as("UseLatestRestorableTime")
    useLatestRestorableTime: option<boolean_>,
    @ocaml.doc("<p>The date and time to restore from.</p>
         <p>Valid Values: Value must be a time in Universal Coordinated Time (UTC) format</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be before the latest restorable time for the DB instance</p>
            </li>
            <li>
               <p>Can't be specified if the <code>UseLatestRestorableTime</code> parameter is enabled</p>
            </li>
         </ul>
         <p>Example: <code>2009-09-07T23:45:00Z</code>
         </p>")
    @as("RestoreTime")
    restoreTime: option<tstamp>,
    @ocaml.doc("<p>The name of the new DB instance to be created.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("TargetDBInstanceIdentifier")
    targetDBInstanceIdentifier: string_,
    @ocaml.doc("<p>The identifier of the source DB instance from which to restore.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DB instance.</p>
            </li>
         </ul>")
    @as("SourceDBInstanceIdentifier")
    sourceDBInstanceIdentifier: option<string_>,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RestoreDBInstanceToPointInTimeCommand"
  let make = (
    ~targetDBInstanceIdentifier,
    ~enableCustomerOwnedIp=?,
    ~sourceDBInstanceAutomatedBackupsArn=?,
    ~maxAllocatedStorage=?,
    ~sourceDbiResourceId=?,
    ~deletionProtection=?,
    ~dbparameterGroupName=?,
    ~useDefaultProcessorFeatures=?,
    ~processorFeatures=?,
    ~enableCloudwatchLogsExports=?,
    ~enableIAMDatabaseAuthentication=?,
    ~domainIAMRoleName=?,
    ~domain=?,
    ~vpcSecurityGroupIds=?,
    ~tdeCredentialPassword=?,
    ~tdeCredentialArn=?,
    ~storageType=?,
    ~tags=?,
    ~copyTagsToSnapshot=?,
    ~optionGroupName=?,
    ~iops=?,
    ~engine=?,
    ~dbname=?,
    ~licenseModel=?,
    ~autoMinorVersionUpgrade=?,
    ~publiclyAccessible=?,
    ~multiAZ=?,
    ~dbsubnetGroupName=?,
    ~availabilityZone=?,
    ~port=?,
    ~dbinstanceClass=?,
    ~useLatestRestorableTime=?,
    ~restoreTime=?,
    ~sourceDBInstanceIdentifier=?,
    (),
  ) =>
    new({
      enableCustomerOwnedIp: enableCustomerOwnedIp,
      sourceDBInstanceAutomatedBackupsArn: sourceDBInstanceAutomatedBackupsArn,
      maxAllocatedStorage: maxAllocatedStorage,
      sourceDbiResourceId: sourceDbiResourceId,
      deletionProtection: deletionProtection,
      dbparameterGroupName: dbparameterGroupName,
      useDefaultProcessorFeatures: useDefaultProcessorFeatures,
      processorFeatures: processorFeatures,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      domainIAMRoleName: domainIAMRoleName,
      domain: domain,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      tdeCredentialPassword: tdeCredentialPassword,
      tdeCredentialArn: tdeCredentialArn,
      storageType: storageType,
      tags: tags,
      copyTagsToSnapshot: copyTagsToSnapshot,
      optionGroupName: optionGroupName,
      iops: iops,
      engine: engine,
      dbname: dbname,
      licenseModel: licenseModel,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      publiclyAccessible: publiclyAccessible,
      multiAZ: multiAZ,
      dbsubnetGroupName: dbsubnetGroupName,
      availabilityZone: availabilityZone,
      port: port,
      dbinstanceClass: dbinstanceClass,
      useLatestRestorableTime: useLatestRestorableTime,
      restoreTime: restoreTime,
      targetDBInstanceIdentifier: targetDBInstanceIdentifier,
      sourceDBInstanceIdentifier: sourceDBInstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBInstanceFromS3 = {
  type t
  type request = {
    @ocaml.doc("<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>
        <p>For more information about this setting, including limitations that apply to it, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling\">
                Managing capacity automatically with Amazon RDS storage autoscaling</a> 
            in the <i>Amazon RDS User Guide</i>.</p>")
    @as("MaxAllocatedStorage")
    maxAllocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\">
                Deleting a DB Instance</a>.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance class of the DB instance uses its default
            processor features.</p>")
    @as("UseDefaultProcessorFeatures")
    useDefaultProcessorFeatures: option<booleanOptional>,
    @ocaml.doc(
      "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
    )
    @as("ProcessorFeatures")
    processorFeatures: option<processorFeatureList>,
    @ocaml.doc("<p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc(
      "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
    )
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier for encryption of Performance Insights data.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
        <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS 
            uses your default CMK. There is a default CMK for your AWS account. 
            Your AWS account has a different default CMK for each AWS Region.</p>")
    @as("PerformanceInsightsKMSKeyId")
    performanceInsightsKMSKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to enable Performance Insights for the DB instance.
        </p>
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon Performance Insights</a> in the <i>Amazon Relational Database Service
                    User Guide</i>.
        </p>")
    @as("EnablePerformanceInsights")
    enablePerformanceInsights: option<booleanOptional>,
    @ocaml.doc("<p>An AWS Identity and Access Management (IAM) role to allow Amazon RDS to access your Amazon S3 bucket. 
        </p>")
    @as("S3IngestionRoleArn")
    s3IngestionRoleArn: string_,
    @ocaml.doc("<p>The prefix of your Amazon S3 bucket.
        </p>")
    @as("S3Prefix")
    s3Prefix: option<string_>,
    @ocaml.doc("<p>The name of your Amazon S3 bucket 
            that contains your database backup file. 
        </p>")
    @as("S3BucketName")
    s3BucketName: string_,
    @ocaml.doc("<p>The version of the database that the backup files were created from.</p>
        <p>MySQL versions 5.6 and 5.7 are supported.
        </p>
        <p>Example: <code>5.6.40</code>
         </p>")
    @as("SourceEngineVersion")
    sourceEngineVersion: string_,
    @ocaml.doc("<p>The name of the engine of your source database.
        </p>
        
        <p>Valid Values:  <code>mysql</code>
        </p>")
    @as("SourceEngine")
    sourceEngine: string_,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
            Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
        
         <p>For more information about IAM database authentication, see 
         <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\">
             IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The ARN for the IAM role that permits RDS 
            to send enhanced monitoring metrics to Amazon CloudWatch Logs. 
            For example, <code>arn:aws:iam:123456789012:role/emaccess</code>. 
            For information on creating a monitoring role, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling\">Setting Up and Enabling Enhanced Monitoring</a> 
            in the <i>Amazon RDS User Guide.</i>
        </p>
        <p>If <code>MonitoringInterval</code> is set to a value other than 0, 
            then you must supply a <code>MonitoringRoleArn</code> value.
        </p>")
    @as("MonitoringRoleArn")
    monitoringRoleArn: option<string_>,
    @ocaml.doc("<p>The interval, in seconds, 
            between points when Enhanced Monitoring metrics are collected for the DB instance. 
            To disable collecting Enhanced Monitoring metrics, specify 0.
        </p>

        <p>If <code>MonitoringRoleArn</code> is specified, 
            then you must also set <code>MonitoringInterval</code> to a value other than 0.
        </p>

        <p>Valid Values: 0, 1, 5, 10, 15, 30, 60
        </p>
        <p>Default: <code>0</code>
        </p>")
    @as("MonitoringInterval")
    monitoringInterval: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied. 
        </p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted DB instance.
        </p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
            To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
        <p>If the <code>StorageEncrypted</code> parameter is enabled, 
            and you do not specify a value for the <code>KmsKeyId</code> parameter, 
            then Amazon RDS will use your default CMK. 
            There is a default CMK for your AWS account. 
            Your AWS account has a different default CMK for each AWS Region.
        </p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the new DB instance is encrypted or not.
        </p>")
    @as("StorageEncrypted")
    storageEncrypted: option<booleanOptional>,
    @ocaml.doc("<p>Specifies the storage type to be associated with the DB instance.
        </p>
        <p>Valid values: <code>standard</code> | <code>gp2</code> | <code>io1</code>
        </p>
        <p>If you specify <code>io1</code>, 
            you must also include a value for the <code>Iops</code> parameter.
        </p>
        <p>Default: <code>io1</code> 
            if the <code>Iops</code> parameter is specified; 
            otherwise <code>gp2</code>
        </p>")
    @as("StorageType")
    storageType: option<string_>,
    @ocaml.doc("<p>A list of tags to associate with this DB instance.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html\">Tagging Amazon RDS Resources</a> in the <i>Amazon RDS User Guide.</i>            
        </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is publicly accessible.</p>
        <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, 
            and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, 
            and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
        <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>  
        <p>For more information, see <a>CreateDBInstance</a>.</p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The name of the option group to associate with this DB instance. 
            If this argument is omitted, the default option group for the specified engine is used.
        </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The amount of Provisioned IOPS (input/output operations per second) 
            to allocate initially for the DB instance.
            For information about valid Iops values, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS\">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> 
            in the <i>Amazon RDS User Guide.</i>
        </p>")
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>The license model for this DB instance.
            Use <code>general-public-license</code>.
        </p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc("<p>A value that indicates whether minor engine upgrades are applied automatically 
            to the DB instance during the maintenance window. By default, minor engine upgrades 
            are not applied automatically.
        </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The version number of the database engine to use.
            Choose the latest minor version of your database engine. 
            For information about engine versions, see <code>CreateDBInstance</code>, or call <code>DescribeDBEngineVersions</code>.
        </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is a Multi-AZ deployment. 
            If the DB instance is a Multi-AZ deployment, you can't set the <code>AvailabilityZone</code> parameter.
        </p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The port number on which the database accepts connections.
        </p>
        <p>Type: Integer
        </p>
        <p>Valid Values: <code>1150</code>-<code>65535</code>
        </p>
        <p>Default: <code>3306</code>
        </p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The time range each day 
            during which automated backups are created 
            if automated backups are enabled. 
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow\">Backup window</a> in the <i>Amazon RDS User Guide.</i>
        </p>
        
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
               <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are retained. 
            Setting this parameter to a positive number enables backups.
            For more information, see <code>CreateDBInstance</code>.
        </p>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to associate with this DB instance.</p>
        <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code> 
            for the specified DB engine is used.</p>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc("<p>The time range each week during which system maintenance can occur, 
            in Universal Coordinated Time (UTC). 
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance\">Amazon RDS Maintenance Window</a> in the <i>Amazon RDS User Guide.</i>
        </p>

        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must be in the format <code>ddd:hh24:mi-ddd:hh24:mi</code>.</p>
            </li>
            <li>
               <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
            </li>
            <li>
               <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred backup window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>A DB subnet group to associate with this DB instance.</p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The Availability Zone that the DB instance is created in. 
            For information about AWS Regions and Availability Zones, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html\">Regions and Availability Zones</a> in the <i>Amazon RDS User Guide.</i>
        </p>
        <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.
        </p>
        <p>
            Example: <code>us-east-1d</code>
        </p>
        <p>Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the DB instance is a Multi-AZ deployment. 
            The specified Availability Zone must be in the same AWS Region as the current endpoint.
        </p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>A list of VPC security groups to associate with this DB instance.
        </p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of DB security groups to associate with this DB instance.</p>
        <p>Default: The default DB security group for the database engine.</p>")
    @as("DBSecurityGroups")
    dbsecurityGroups: option<dbsecurityGroupNameList>,
    @ocaml.doc("<p>The password for the master user. 
            The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".
        </p>
        
        <p>Constraints: Must contain from 8 to 41 characters.</p>")
    @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>The name for the master user.
        </p>
        
        <p>Constraints:
        </p>
        <ul>
            <li>
               <p>Must be 1 to 16 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>")
    @as("MasterUsername")
    masterUsername: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this instance.
        </p>
        
        <p>Valid Values:  <code>mysql</code>
        </p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>The compute and memory capacity of the DB instance, 
            for example, <code>db.m4.large</code>.
            Not all DB instance classes are available in all AWS Regions, 
            or for all database engines.
            For the full list of DB instance classes,
            and availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
        </p>
        <p>Importing from Amazon S3 isn't supported on the db.t2.micro DB instance class.
        </p>")
    @as("DBInstanceClass")
    dbinstanceClass: string_,
    @ocaml.doc("<p>The amount of storage (in gigabytes) to allocate initially for the DB instance.
            Follow the allocation rules specified in <code>CreateDBInstance</code>.
        </p>
        
        <note>
            <p>Be sure to allocate enough memory for your new DB instance
                so that the restore operation can succeed.
                You can also allocate additional memory for future growth. 
            </p>
        </note>")
    @as("AllocatedStorage")
    allocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>The DB instance identifier. This parameter is stored as a lowercase string.
        </p>

        <p>Constraints:</p>

        <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>

        <p>Example: <code>mydbinstance</code>
        </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
    @ocaml.doc("<p>The name of the database to create when the DB instance is created.
            Follow the naming rules specified in <code>CreateDBInstance</code>.
        </p>")
    @as("DBName")
    dbname: option<string_>,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "RestoreDBInstanceFromS3Command"
  let make = (
    ~s3IngestionRoleArn,
    ~s3BucketName,
    ~sourceEngineVersion,
    ~sourceEngine,
    ~engine,
    ~dbinstanceClass,
    ~dbinstanceIdentifier,
    ~maxAllocatedStorage=?,
    ~deletionProtection=?,
    ~useDefaultProcessorFeatures=?,
    ~processorFeatures=?,
    ~enableCloudwatchLogsExports=?,
    ~performanceInsightsRetentionPeriod=?,
    ~performanceInsightsKMSKeyId=?,
    ~enablePerformanceInsights=?,
    ~s3Prefix=?,
    ~enableIAMDatabaseAuthentication=?,
    ~monitoringRoleArn=?,
    ~monitoringInterval=?,
    ~copyTagsToSnapshot=?,
    ~kmsKeyId=?,
    ~storageEncrypted=?,
    ~storageType=?,
    ~tags=?,
    ~publiclyAccessible=?,
    ~optionGroupName=?,
    ~iops=?,
    ~licenseModel=?,
    ~autoMinorVersionUpgrade=?,
    ~engineVersion=?,
    ~multiAZ=?,
    ~port=?,
    ~preferredBackupWindow=?,
    ~backupRetentionPeriod=?,
    ~dbparameterGroupName=?,
    ~preferredMaintenanceWindow=?,
    ~dbsubnetGroupName=?,
    ~availabilityZone=?,
    ~vpcSecurityGroupIds=?,
    ~dbsecurityGroups=?,
    ~masterUserPassword=?,
    ~masterUsername=?,
    ~allocatedStorage=?,
    ~dbname=?,
    (),
  ) =>
    new({
      maxAllocatedStorage: maxAllocatedStorage,
      deletionProtection: deletionProtection,
      useDefaultProcessorFeatures: useDefaultProcessorFeatures,
      processorFeatures: processorFeatures,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      performanceInsightsRetentionPeriod: performanceInsightsRetentionPeriod,
      performanceInsightsKMSKeyId: performanceInsightsKMSKeyId,
      enablePerformanceInsights: enablePerformanceInsights,
      s3IngestionRoleArn: s3IngestionRoleArn,
      s3Prefix: s3Prefix,
      s3BucketName: s3BucketName,
      sourceEngineVersion: sourceEngineVersion,
      sourceEngine: sourceEngine,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      monitoringRoleArn: monitoringRoleArn,
      monitoringInterval: monitoringInterval,
      copyTagsToSnapshot: copyTagsToSnapshot,
      kmsKeyId: kmsKeyId,
      storageEncrypted: storageEncrypted,
      storageType: storageType,
      tags: tags,
      publiclyAccessible: publiclyAccessible,
      optionGroupName: optionGroupName,
      iops: iops,
      licenseModel: licenseModel,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      engineVersion: engineVersion,
      multiAZ: multiAZ,
      port: port,
      preferredBackupWindow: preferredBackupWindow,
      backupRetentionPeriod: backupRetentionPeriod,
      dbparameterGroupName: dbparameterGroupName,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      dbsubnetGroupName: dbsubnetGroupName,
      availabilityZone: availabilityZone,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbsecurityGroups: dbsecurityGroups,
      masterUserPassword: masterUserPassword,
      masterUsername: masterUsername,
      engine: engine,
      dbinstanceClass: dbinstanceClass,
      allocatedStorage: allocatedStorage,
      dbinstanceIdentifier: dbinstanceIdentifier,
      dbname: dbname,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreDBInstanceFromDBSnapshot = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance.</p>
        <p>A <i>CoIP</i> provides local or external connectivity to resources in
            your Outpost subnets through your on-premises network. For some use cases, a CoIP can
            provide lower latency for connections to the DB instance from outside of its virtual
            private cloud (VPC) on your local network.</p>
        <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Working with Amazon RDS on AWS Outposts</a> 
            in the <i>Amazon RDS User Guide</i>.</p>
        <p>For more information about CoIPs, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing\">Customer-owned IP addresses</a> 
            in the <i>AWS Outposts User Guide</i>.</p>")
    @as("EnableCustomerOwnedIp")
    enableCustomerOwnedIp: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\">
                Deleting a DB Instance</a>.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to associate with this DB instance.</p>
        <p>If you do not specify a value for <code>DBParameterGroupName</code>, then the default <code>DBParameterGroup</code> 
            for the specified DB engine is used.</p>
        <p>Constraints:</p>
        <ul>
            <li>
                <p>If supplied, must match the name of an existing DBParameterGroup.</p>
            </li>
            <li>
                <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
                <p>First character must be a letter.</p>
            </li>
            <li>
                <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance class of the DB instance uses its default
            processor features.</p>")
    @as("UseDefaultProcessorFeatures")
    useDefaultProcessorFeatures: option<booleanOptional>,
    @ocaml.doc(
      "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
    )
    @as("ProcessorFeatures")
    processorFeatures: option<processorFeatureList>,
    @ocaml.doc("<p>The list of logs that the restored DB instance is to export to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
          Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
      
         <p>For more information about IAM database authentication, see 
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\">
              IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether to copy all tags from the restored DB instance to snapshots of the DB instance. By default, tags are not copied.</p>"
    )
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>Specify the Active Directory directory ID to restore the DB instance in.
           The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL 
           Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\">
           Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>
            A list of EC2 VPC security groups to associate with this DB instance.
        </p>
        <p>
            Default: The default EC2 VPC security group for the DB subnet group's VPC.
        </p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc(
      "<p>The password for the given ARN from the key store in order to access the device.</p>"
    )
    @as("TdeCredentialPassword")
    tdeCredentialPassword: option<string_>,
    @ocaml.doc(
      "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
    )
    @as("TdeCredentialArn")
    tdeCredentialArn: option<string_>,
    @ocaml.doc("<p>Specifies the storage type to be associated with the DB instance.</p>
         <p>
            Valid values: <code>standard | gp2 | io1</code>
         </p>
         <p>
            If you specify <code>io1</code>, you must also include a value for the
            <code>Iops</code> parameter.
        </p>
         <p>
            Default: <code>io1</code> if the <code>Iops</code> parameter
            is specified, otherwise <code>gp2</code>
         </p>")
    @as("StorageType")
    storageType: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The name of the option group to be used for the restored DB instance.</p>
      
         <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>Specifies the amount of provisioned IOPS for the DB instance, expressed in I/O operations per second. 
          If this parameter isn't specified, the IOPS value is taken from the backup. 
          If this parameter is set to 0, the new instance is converted to a non-PIOPS instance. 
          The conversion takes additional time, though your DB instance is available for connections before the conversion starts.
      </p>
         <p>The provisioned IOPS value must follow the requirements for your database engine.
          For more information, see 
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS\">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> 
          in the <i>Amazon RDS User Guide.</i>
         </p>
         <p>Constraints: Must be an integer greater than 1000.</p>")
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>The database engine to use for the new instance.</p>
         <p>Default: The same as source</p>
         <p>Constraint: Must be compatible with the engine of the source. For example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6 snapshot.</p>

         <p>Valid Values:</p>
      
         <ul>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("Engine")
    engine: option<string_>,
    @ocaml.doc("<p>The database name for the restored DB instance.</p>
         <note>
            <p>This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB engines.</p>
         </note>")
    @as("DBName")
    dbname: option<string_>,
    @ocaml.doc("<p>License model information for the restored DB instance.</p>
         <p>Default: Same as source.</p>
         <p>
            Valid values:  <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code>
         </p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc(
      "<p>A value that indicates whether minor version upgrades are applied automatically to the DB instance during the maintenance window.</p>"
    )
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is publicly accessible.</p>
         <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, 
          and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, 
          and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
         <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>  
         <p>For more information, see <a>CreateDBInstance</a>.</p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is a Multi-AZ deployment.</p>
         <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The DB subnet group name to use for the new instance.</p>
         <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The Availability Zone (AZ) where the DB instance will be created.</p>
         <p>Default: A random, system-chosen Availability Zone.</p>
         <p>Constraint: You can't specify the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>
         <p>Example: <code>us-east-1a</code>
         </p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The port number on which the database accepts connections.</p>
         <p>Default: The same port as the original DB instance</p>
         <p>Constraints: Value must be <code>1150-65535</code>
         </p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The compute and memory capacity of the Amazon RDS DB instance, for example, <code>db.m4.large</code>.
          Not all DB instance classes are available in all AWS Regions, or for all database engines.
          For the full list of DB instance classes,
          and availability for your engine, see
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
         </p>
         <p>Default: The same DBInstanceClass as the original DB instance.</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>The identifier for the DB snapshot to restore from.</p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>Must match the identifier of an existing DBSnapshot.</p>
            </li>
            <li>
              <p>If you are restoring from a shared manual DB snapshot, the <code>DBSnapshotIdentifier</code>
              must be the ARN of the shared DB snapshot.</p>
            </li>
         </ul>")
    @as("DBSnapshotIdentifier")
    dbsnapshotIdentifier: string_,
    @ocaml.doc("<p>Name of the DB instance to create from the DB snapshot. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 numbers, letters, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-snapshot-id</code>
         </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "RestoreDBInstanceFromDBSnapshotCommand"
  let make = (
    ~dbsnapshotIdentifier,
    ~dbinstanceIdentifier,
    ~enableCustomerOwnedIp=?,
    ~deletionProtection=?,
    ~dbparameterGroupName=?,
    ~useDefaultProcessorFeatures=?,
    ~processorFeatures=?,
    ~enableCloudwatchLogsExports=?,
    ~enableIAMDatabaseAuthentication=?,
    ~domainIAMRoleName=?,
    ~copyTagsToSnapshot=?,
    ~domain=?,
    ~vpcSecurityGroupIds=?,
    ~tdeCredentialPassword=?,
    ~tdeCredentialArn=?,
    ~storageType=?,
    ~tags=?,
    ~optionGroupName=?,
    ~iops=?,
    ~engine=?,
    ~dbname=?,
    ~licenseModel=?,
    ~autoMinorVersionUpgrade=?,
    ~publiclyAccessible=?,
    ~multiAZ=?,
    ~dbsubnetGroupName=?,
    ~availabilityZone=?,
    ~port=?,
    ~dbinstanceClass=?,
    (),
  ) =>
    new({
      enableCustomerOwnedIp: enableCustomerOwnedIp,
      deletionProtection: deletionProtection,
      dbparameterGroupName: dbparameterGroupName,
      useDefaultProcessorFeatures: useDefaultProcessorFeatures,
      processorFeatures: processorFeatures,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      domainIAMRoleName: domainIAMRoleName,
      copyTagsToSnapshot: copyTagsToSnapshot,
      domain: domain,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      tdeCredentialPassword: tdeCredentialPassword,
      tdeCredentialArn: tdeCredentialArn,
      storageType: storageType,
      tags: tags,
      optionGroupName: optionGroupName,
      iops: iops,
      engine: engine,
      dbname: dbname,
      licenseModel: licenseModel,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      publiclyAccessible: publiclyAccessible,
      multiAZ: multiAZ,
      dbsubnetGroupName: dbsubnetGroupName,
      availabilityZone: availabilityZone,
      port: port,
      dbinstanceClass: dbinstanceClass,
      dbsnapshotIdentifier: dbsnapshotIdentifier,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootDBInstance = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
          A value that indicates whether the reboot is conducted through a Multi-AZ failover.
      </p>
         <p>Constraint: You can't enable force failover if the instance isn't configured for Multi-AZ.</p>")
    @as("ForceFailover")
    forceFailover: option<booleanOptional>,
    @ocaml.doc("<p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "RebootDBInstanceCommand"
  let make = (~dbinstanceIdentifier, ~forceFailover=?, ()) =>
    new({forceFailover: forceFailover, dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PromoteReadReplica = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        The daily time range during which automated backups are created
        if automated backups are enabled,
        using the <code>BackupRetentionPeriod</code> parameter.
        </p>
         <p>
            The default is a 30-minute window selected at random from an
            8-hour block of time for each AWS Region. 
            To see the time blocks available, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html\">
            Adjusting the Preferred Maintenance Window</a> in the <i>Amazon RDS User Guide.</i>
        </p>
         <p>Constraints:</p> 
         <ul>
            <li>
               <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
               <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p>
         <p>Default: 1</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 0 to 35.</p>
            </li>
            <li>
               <p>Can't be set to 0 if the DB instance is a source to read replicas.</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The DB instance identifier. This value is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing read replica DB instance.</p>
            </li>
         </ul>
         <p>Example: <code>mydbinstance</code>
         </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "PromoteReadReplicaCommand"
  let make = (~dbinstanceIdentifier, ~preferredBackupWindow=?, ~backupRetentionPeriod=?, ()) =>
    new({
      preferredBackupWindow: preferredBackupWindow,
      backupRetentionPeriod: backupRetentionPeriod,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyOptionGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>A value that indicates whether to apply the change immediately or during the next maintenance window for each instance associated with the option group.</p>"
    )
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>Options in this list are removed from the option group.</p>")
    @as("OptionsToRemove")
    optionsToRemove: option<optionNamesList>,
    @ocaml.doc(
      "<p>Options in this list are added to the option group or, if already present, the specified configuration is used to update the existing configuration.</p>"
    )
    @as("OptionsToInclude")
    optionsToInclude: option<optionConfigurationList>,
    @ocaml.doc("<p>The name of the option group to be modified.</p>
         <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>")
    @as("OptionGroupName")
    optionGroupName: string_,
  }
  type response = {@as("OptionGroup") optionGroup: option<optionGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyOptionGroupCommand"
  let make = (~optionGroupName, ~applyImmediately=?, ~optionsToRemove=?, ~optionsToInclude=?, ()) =>
    new({
      applyImmediately: applyImmediately,
      optionsToRemove: optionsToRemove,
      optionsToInclude: optionsToInclude,
      optionGroupName: optionGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBInstance = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the recovery point in AWS Backup.</p>")
    @as("AwsBackupRecoveryPointArn")
    awsBackupRecoveryPointArn: option<awsBackupRecoveryPointArn>,
    @ocaml.doc("<p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance.</p>
        <p>A <i>CoIP</i> provides local or external connectivity to resources in
            your Outpost subnets through your on-premises network. For some use cases, a CoIP can
            provide lower latency for connections to the DB instance from outside of its virtual
            private cloud (VPC) on your local network.</p>
        <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Working with Amazon RDS on AWS Outposts</a> 
            in the <i>Amazon RDS User Guide</i>.</p>
        <p>For more information about CoIPs, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing\">Customer-owned IP addresses</a> 
            in the <i>AWS Outposts User Guide</i>.</p>")
    @as("EnableCustomerOwnedIp")
    enableCustomerOwnedIp: option<booleanOptional>,
    @ocaml.doc("<p>A value that sets the open mode of a replica database to either mounted or read-only.</p>
        <note>
            <p>Currently, this parameter is only supported for Oracle DB instances.</p>
        </note>
        <p>Mounted DB replicas are included in Oracle Enterprise Edition. The main use case for 
            mounted replicas is cross-Region disaster recovery. The primary database doesn't use 
            Active Data Guard to transmit information to the mounted replica. Because it doesn't 
            accept user connections, a mounted replica can't serve a read-only workload. 
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Working with Oracle Read Replicas for Amazon RDS</a> 
            in the <i>Amazon RDS User Guide</i>.</p>")
    @as("ReplicaMode")
    replicaMode: option<replicaMode>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is restarted when you rotate your 
            SSL/TLS certificate.</p>
        <p>By default, the DB instance is restarted when you rotate your SSL/TLS certificate. The certificate 
            is not updated until the DB instance is restarted.</p>
        <important>
            <p>Set this parameter only if you are <i>not</i> using SSL/TLS to connect to the DB instance.</p>
        </important>
        <p>If you are using SSL/TLS to connect to the DB instance, follow the appropriate instructions for your 
            DB engine to rotate your SSL/TLS certificate:</p>
        <ul>
            <li>
                <p>For more information about rotating your SSL/TLS certificate for RDS DB engines, see 
                    <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html\">
                        Rotating Your SSL/TLS Certificate.</a> in the <i>Amazon RDS User Guide.</i>
               </p>
            </li>
            <li>
                <p>For more information about rotating your SSL/TLS certificate for Aurora DB engines, see 
                    <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html\">
                        Rotating Your SSL/TLS Certificate</a> in the <i>Amazon Aurora User Guide.</i>
               </p>
            </li>
         </ul>")
    @as("CertificateRotationRestart")
    certificateRotationRestart: option<booleanOptional>,
    @ocaml.doc("<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>
        <p>For more information about this setting, including limitations that apply to it, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling\">
                Managing capacity automatically with Amazon RDS storage autoscaling</a> 
            in the <i>Amazon RDS User Guide</i>.</p>")
    @as("MaxAllocatedStorage")
    maxAllocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\">
                Deleting a DB Instance</a>.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance class of the DB instance uses its default
            processor features.</p>")
    @as("UseDefaultProcessorFeatures")
    useDefaultProcessorFeatures: option<booleanOptional>,
    @ocaml.doc(
      "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
    )
    @as("ProcessorFeatures")
    processorFeatures: option<processorFeatureList>,
    @ocaml.doc("<p>The configuration setting for the log types to be enabled for export to CloudWatch Logs for a specific DB instance.</p>
        <p>A change to the <code>CloudwatchLogsExportConfiguration</code> parameter is always applied to the DB instance 
            immediately. Therefore, the <code>ApplyImmediately</code> parameter has no effect.</p>")
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @ocaml.doc(
      "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
    )
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier for encryption of Performance Insights data.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
        <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS 
            uses your default CMK. There is a default CMK for your AWS account. 
            Your AWS account has a different default CMK for each AWS Region.</p>")
    @as("PerformanceInsightsKMSKeyId")
    performanceInsightsKMSKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to enable Performance Insights for the DB instance.</p>
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon Performance Insights</a> in the <i>Amazon Relational Database Service
                    User Guide</i>.
        </p>")
    @as("EnablePerformanceInsights")
    enablePerformanceInsights: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
          Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
      
         <p>This setting doesn't apply to Amazon Aurora. Mapping AWS IAM accounts to database accounts is managed by the DB
          cluster.</p>
      
         <p>For more information about IAM database authentication, see 
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\">
              IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance 
      after a failure of the existing primary instance. For more information, 
      see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\">
          Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.
    </p>
         <p>Default: 1</p>
         <p>Valid Values: 0 - 15</p>")
    @as("PromotionTier")
    promotionTier: option<integerOptional>,
    @ocaml.doc(
      "<p>The name of the IAM role to use when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For
      example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
      go to <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole\">To 
          create an IAM role for Amazon RDS Enhanced Monitoring</a> in the <i>Amazon RDS User Guide.</i>
         </p>
         <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>")
    @as("MonitoringRoleArn")
    monitoringRoleArn: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is publicly accessible.
      </p>
         <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, 
          and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, 
          and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
         <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>  
         <p>
            <code>PubliclyAccessible</code> only applies to DB instances in a VPC. 
      The DB instance must be part of a public subnet and 
      <code>PubliclyAccessible</code> must be enabled for it to be publicly accessible.
      </p>
         <p>Changes to the <code>PubliclyAccessible</code> parameter are applied immediately regardless
      of the value of the <code>ApplyImmediately</code> parameter.</p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The port number on which the database accepts connections.</p>
         <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values specified for options in the option
      group for the DB instance.</p>
         <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless of the value of the <code>ApplyImmediately</code>
      parameter.</p>
         <p>
            <b>MySQL</b>
         </p>
         <p>
      Default: <code>3306</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>
            <b>MariaDB</b>
         </p>
         <p>
      Default: <code>3306</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>
      Default: <code>5432</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>Type: Integer</p>
         <p>
            <b>Oracle</b>
         </p>
         <p>
      Default: <code>1521</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>
            <b>SQL Server</b>
         </p>
         <p>
      Default: <code>1433</code>
         </p>
        <p> Valid values: <code>1150-65535</code> except <code>1234</code>, <code>1434</code>,
                <code>3260</code>, <code>3343</code>, <code>3389</code>, <code>47001</code>, and
                <code>49152-49156</code>.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>
      Default: <code>3306</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>")
    @as("DBPortNumber")
    dbportNumber: option<integerOptional>,
    @ocaml.doc("<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p>
         <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code>
      to a value other than 0.</p>
         <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
         </p>")
    @as("MonitoringInterval")
    monitoringInterval: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether to copy all tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this
          value for an Aurora DB instance has no effect on the DB cluster setting. For more
          information, see <code>ModifyDBCluster</code>.</p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>The Active Directory directory ID to move the DB instance to.  
          Specify <code>none</code> to remove the instance from its current domain.
          The domain must be created prior to this operation. Currently, only MySQL, Microsoft SQL 
          Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\">
          Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>Indicates the certificate that needs to be associated with the instance.</p>")
    @as("CACertificateIdentifier")
    cacertificateIdentifier: option<string_>,
    @ocaml.doc(
      "<p>The password for the given ARN from the key store in order to access the device.</p>"
    )
    @as("TdeCredentialPassword")
    tdeCredentialPassword: option<string_>,
    @ocaml.doc(
      "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
    )
    @as("TdeCredentialArn")
    tdeCredentialArn: option<string_>,
    @ocaml.doc("<p>Specifies the storage type to be associated with the DB instance.
      </p>
         <p>If you specify Provisioned IOPS (<code>io1</code>), 
          you must also include a value for the <code>Iops</code> parameter.
      </p>
         <p>If you choose to migrate your DB instance from using standard storage to using
            Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process
            can take time. The duration of the migration depends on several factors such as database
            load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS
            provisioned (if any), and the number of prior scale storage operations. Typical
            migration times are under 24 hours, but the process can take up to several days in some
            cases. During the migration, the DB instance is available for use, but might experience
            performance degradation. While the migration takes place, nightly backups for the
            instance are suspended. No other Amazon RDS operations can take place for the instance,
            including modifying the instance, rebooting the instance, deleting the instance,
            creating a read replica for the instance, and creating a DB snapshot of the instance. </p>
         <p>
          Valid values: <code>standard | gp2 | io1</code>
         </p>
         <p>Default: <code>io1</code> if the <code>Iops</code> parameter
          is specified, otherwise <code>gp2</code>
         </p>")
    @as("StorageType")
    storageType: option<string_>,
    @ocaml.doc("<p>
            The new DB instance identifier for the DB instance when renaming a DB
            instance. When you change the DB instance identifier, an instance 
            reboot occurs immediately if you enable <code>ApplyImmediately</code>, or will occur 
            during the next maintenance window if you disable Apply Immediately. This value is stored 
            as a lowercase string. 
        </p>

         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>The first character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>mydbinstance</code>
         </p>")
    @as("NewDBInstanceIdentifier")
    newDBInstanceIdentifier: option<string_>,
    @ocaml.doc("<p>
            A value that indicates the DB instance should be associated with the specified option group. 
            Changing this parameter doesn't result in an outage except in the following case and the change 
            is applied during the next maintenance window
            unless the <code>ApplyImmediately</code> parameter is enabled 
            for this request. If the parameter change results in an option group that 
            enables OEM, this change can cause a brief (sub-second) period during which new connections 
            are rejected but existing connections are not interrupted.
        </p>
         <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group, and that option group can't be removed from a DB instance once it is associated with a DB instance</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The new Provisioned IOPS (I/O operations per second) value for the RDS instance. 
      </p>
         <p>Changing this setting doesn't result in an outage and
            the change is applied during the next maintenance window
            unless the <code>ApplyImmediately</code> parameter is enabled for this request.
          If you are migrating from Provisioned IOPS to standard storage, set this value to 0. 
          The DB instance will require a reboot for the change in storage type to take effect.
      </p>
         <p>If you choose to migrate your DB instance from using standard storage to using
            Provisioned IOPS, or from using Provisioned IOPS to using standard storage, the process
            can take time. The duration of the migration depends on several factors such as database
            load, storage size, storage type (standard or Provisioned IOPS), amount of IOPS
            provisioned (if any), and the number of prior scale storage operations. Typical
            migration times are under 24 hours, but the process can take up to several days in some
            cases. During the migration, the DB instance is available for use, but might experience
            performance degradation. While the migration takes place, nightly backups for the
            instance are suspended. No other Amazon RDS operations can take place for the instance,
            including modifying the instance, rebooting the instance, deleting the instance,
            creating a read replica for the instance, and creating a DB snapshot of the instance. </p>
         <p>Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, 
          the value supplied must be at least 10% greater than the current value. 
          Values that are not at least 10% greater than the existing value are rounded up so that they are 10% greater than the current value. 
      </p>
         <p>Default: Uses existing setting</p>")
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>The license model for the DB instance.</p>
        <p>Valid values: <code>license-included</code> | <code>bring-your-own-license</code> | 
            <code>general-public-license</code>
         </p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc("<p>
    A value that indicates whether minor version upgrades are applied automatically
    to the DB instance during the maintenance window. 
    Changing this parameter doesn't result in an outage except in the following case 
    and the change is asynchronously applied as soon as possible.
    An outage results if this parameter is enabled during the maintenance window, 
    and a newer minor version is available, and RDS has enabled auto patching for that engine version.
    </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether major version upgrades are allowed. Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible.</p>
         <p>Constraints: Major version upgrades must be allowed when specifying a value for the EngineVersion parameter that is a different major version than the DB instance's current version.</p>")
    @as("AllowMajorVersionUpgrade")
    allowMajorVersionUpgrade: option<boolean_>,
    @ocaml.doc("<p>
    The version number of the database engine to upgrade to. 
    Changing this parameter results in an outage and the change 
    is applied during the next maintenance window
    unless the <code>ApplyImmediately</code> parameter is enabled for this request.
    </p>
         <p>For major version upgrades, if a nondefault DB parameter group is currently in use, a
            new DB parameter group in the DB parameter group family for the new engine version must
            be specified. The new DB parameter group can be the default for that DB parameter group
            family.</p>
         <p>If you specify only a major version, Amazon RDS will update the DB instance to the 
          default minor version if the current minor version is lower.
          For information about valid engine versions, see <code>CreateDBInstance</code>, 
          or call <code>DescribeDBEngineVersions</code>.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is a Multi-AZ deployment. 
    Changing this parameter doesn't result in an outage and the change 
    is applied during the next maintenance window
    unless the <code>ApplyImmediately</code> parameter is 
        enabled for this request.
    </p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The weekly time range (in UTC) during which system maintenance can occur, which
            might result in an outage. Changing this parameter doesn't result in an outage, except
            in the following situation, and the change is asynchronously applied as soon as
            possible. If there are pending actions that cause a reboot, and the maintenance window
            is changed to include the current time, then changing this parameter will cause a reboot
            of the DB instance. If moving this window to the current time, there must be at least 30
            minutes between the current time and end of the window to ensure pending changes are
            applied.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance\">Amazon RDS Maintenance Window</a> in the <i>Amazon RDS User Guide.</i>
         </p>
         <p>Default: Uses existing setting</p>
         <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
         <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
         <p>Constraints: Must be at least 30 minutes</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>
        The daily time range during which automated backups are created
        if automated backups are enabled,
        as determined by the <code>BackupRetentionPeriod</code> parameter. 
        Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible. 
        The default is a 30-minute window selected at random from an
        8-hour block of time for each AWS Region. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow\">Backup window</a> in the <i>Amazon RDS User Guide.</i>
         </p>
      
         <p>
            <b>Amazon Aurora</b>
         </p>
        <p>Not applicable. The daily time range for creating automated backups is managed by
            the DB cluster. For more information, see <code>ModifyDBCluster</code>.</p>
      
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be in the format hh24:mi-hh24:mi</p>
            </li>
            <li>
               <p>Must be in Universal Time Coordinated (UTC)</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window</p>
            </li>
            <li>
               <p>Must be at least 30 minutes</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The number of days to retain automated backups. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p>
        <note>
            <p>Enabling and disabling backups can result in a brief I/O suspension that lasts from a few seconds to a few minutes, depending on the size and class of your DB instance.</p>
        </note>
        <p>These changes are applied during the next maintenance window unless the <code>ApplyImmediately</code> parameter is enabled
            for this request. If you change the parameter from one non-zero value to another non-zero value, the change is asynchronously
            applied as soon as possible.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
        <p>Not applicable. The retention period for automated backups is managed by the DB
            cluster. For more information, see <code>ModifyDBCluster</code>.</p>
         <p>Default: Uses existing setting</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 0 to 35</p>
            </li>
            <li>
               <p>Can be specified for a MySQL read replica only if the source is running MySQL 5.6 or
                    later</p>
            </li>
            <li>
               <p>Can be specified for a PostgreSQL read replica only if the source is running PostgreSQL
                    9.3.5</p>
            </li>
            <li>
               <p>Can't be set to 0 if the DB instance is a source to read replicas</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to apply to the DB instance. Changing this
            setting doesn't result in an outage. The parameter group name itself is changed
            immediately, but the actual parameter changes are not applied until you reboot the
            instance without failover. In this case, the DB instance isn't rebooted automatically and the
            parameter changes isn't applied during the next maintenance window.</p>
         <p>Default: Uses existing setting</p>
         <p>Constraints: The DB parameter group must be in the same DB parameter group family as this DB instance.</p>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc("<p>The new password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".</p>
         <p>
        Changing this parameter doesn't result in an outage and the change is asynchronously applied as soon as possible. 
        Between the time of the request and the completion of the request,
        the <code>MasterUserPassword</code> element exists in the
        <code>PendingModifiedValues</code> element of the operation response.
        </p>
      
         <p>
            <b>Amazon Aurora</b>
         </p>
        <p>Not applicable. The password for the master user is managed by the DB cluster. For
            more information, see <code>ModifyDBCluster</code>.
        </p>
      
         <p>Default: Uses existing setting</p>

         <p>
            <b>MariaDB</b>
         </p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>
      
         <p>
            <b>Microsoft SQL Server</b>
         </p>
         <p>Constraints: Must contain from 8 to 128 characters.</p>
      
         <p>
            <b>MySQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>
      
         <p>
            <b>Oracle</b>
         </p>
         <p>Constraints: Must contain from 8 to 30 characters.</p>
      
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 128 characters.</p>

         <note>
            <p>Amazon RDS API actions never return the password, 
              so this action provides a way to regain access to a primary instance user if the password is lost. 
              This includes restoring privileges that might have been accidentally revoked.
          </p>
         </note>")
    @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the modifications in this request and
        any pending modifications are asynchronously applied
        as soon as possible, regardless of the
        <code>PreferredMaintenanceWindow</code> setting for the DB instance. By default, this parameter is 
          disabled.
        </p>
         <p>
        If this parameter is disabled, changes to the
        DB instance are applied during the next maintenance window. Some parameter changes can cause an outage
        and are applied on the next call to <a>RebootDBInstance</a>, or the next failure reboot. 
        Review the table of parameters in <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html\">Modifying a DB Instance</a> 
          in the <i>Amazon RDS User Guide.</i> to see the impact of enabling
          or disabling <code>ApplyImmediately</code> for each modified parameter and to determine when the changes are applied.
        </p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>A list of EC2 VPC security groups to authorize on this DB instance. This change is asynchronously applied as soon as possible.</p>     
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. The associated list of EC2 VPC security groups is managed by
          the DB cluster. For more information, see <code>ModifyDBCluster</code>.</p>      
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match existing VpcSecurityGroupIds.</p>
            </li>
         </ul>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of DB security groups to authorize on this DB instance. Changing this setting doesn't result in an outage and the change is asynchronously applied as soon as possible.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match existing DBSecurityGroups.</p>
            </li>
         </ul>")
    @as("DBSecurityGroups")
    dbsecurityGroups: option<dbsecurityGroupNameList>,
    @ocaml.doc("<p>The new DB subnet group for the DB instance.
          You can use this parameter to move your DB instance to a different VPC.
          
          If your DB instance isn't in a VPC, you can also use this parameter to move your DB instance into a VPC.
          For more information, see 
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC\">Working with a DB instance in a VPC</a> 
          in the <i>Amazon RDS User Guide.</i> 
         </p>
         <p>Changing the subnet group causes an outage during the change. 
        The change is applied during the next maintenance window,
        unless you enable <code>ApplyImmediately</code>.
    </p>
         <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
         <p>Example: <code>mySubnetGroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The new compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>.
          Not all DB instance classes are available in all AWS Regions, or for all database engines.
          For the full list of DB instance classes,
          and availability for your engine, see
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
         </p>
         <p>If you modify the DB instance class, an outage occurs during the change.
        The change is applied during the next maintenance window,
        unless <code>ApplyImmediately</code> is enabled for this request.
        </p>
         <p>Default: Uses existing setting</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>The new amount of storage (in gibibytes) to allocate for the DB instance.
      </p>
      
         <p>For MariaDB, MySQL, Oracle, and PostgreSQL, 
          the value supplied must be at least 10% greater than the current value. 
          Values that are not at least 10% greater than the existing value are rounded up 
          so that they are 10% greater than the current value.
      </p>
      
         <p>For the valid values for allocated storage for each engine,
          see <code>CreateDBInstance</code>.
      </p>")
    @as("AllocatedStorage")
    allocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>The DB instance identifier. This value is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBInstanceCommand"
  let make = (
    ~dbinstanceIdentifier,
    ~awsBackupRecoveryPointArn=?,
    ~enableCustomerOwnedIp=?,
    ~replicaMode=?,
    ~certificateRotationRestart=?,
    ~maxAllocatedStorage=?,
    ~deletionProtection=?,
    ~useDefaultProcessorFeatures=?,
    ~processorFeatures=?,
    ~cloudwatchLogsExportConfiguration=?,
    ~performanceInsightsRetentionPeriod=?,
    ~performanceInsightsKMSKeyId=?,
    ~enablePerformanceInsights=?,
    ~enableIAMDatabaseAuthentication=?,
    ~promotionTier=?,
    ~domainIAMRoleName=?,
    ~monitoringRoleArn=?,
    ~publiclyAccessible=?,
    ~dbportNumber=?,
    ~monitoringInterval=?,
    ~copyTagsToSnapshot=?,
    ~domain=?,
    ~cacertificateIdentifier=?,
    ~tdeCredentialPassword=?,
    ~tdeCredentialArn=?,
    ~storageType=?,
    ~newDBInstanceIdentifier=?,
    ~optionGroupName=?,
    ~iops=?,
    ~licenseModel=?,
    ~autoMinorVersionUpgrade=?,
    ~allowMajorVersionUpgrade=?,
    ~engineVersion=?,
    ~multiAZ=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~backupRetentionPeriod=?,
    ~dbparameterGroupName=?,
    ~masterUserPassword=?,
    ~applyImmediately=?,
    ~vpcSecurityGroupIds=?,
    ~dbsecurityGroups=?,
    ~dbsubnetGroupName=?,
    ~dbinstanceClass=?,
    ~allocatedStorage=?,
    (),
  ) =>
    new({
      awsBackupRecoveryPointArn: awsBackupRecoveryPointArn,
      enableCustomerOwnedIp: enableCustomerOwnedIp,
      replicaMode: replicaMode,
      certificateRotationRestart: certificateRotationRestart,
      maxAllocatedStorage: maxAllocatedStorage,
      deletionProtection: deletionProtection,
      useDefaultProcessorFeatures: useDefaultProcessorFeatures,
      processorFeatures: processorFeatures,
      cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
      performanceInsightsRetentionPeriod: performanceInsightsRetentionPeriod,
      performanceInsightsKMSKeyId: performanceInsightsKMSKeyId,
      enablePerformanceInsights: enablePerformanceInsights,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      promotionTier: promotionTier,
      domainIAMRoleName: domainIAMRoleName,
      monitoringRoleArn: monitoringRoleArn,
      publiclyAccessible: publiclyAccessible,
      dbportNumber: dbportNumber,
      monitoringInterval: monitoringInterval,
      copyTagsToSnapshot: copyTagsToSnapshot,
      domain: domain,
      cacertificateIdentifier: cacertificateIdentifier,
      tdeCredentialPassword: tdeCredentialPassword,
      tdeCredentialArn: tdeCredentialArn,
      storageType: storageType,
      newDBInstanceIdentifier: newDBInstanceIdentifier,
      optionGroupName: optionGroupName,
      iops: iops,
      licenseModel: licenseModel,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      allowMajorVersionUpgrade: allowMajorVersionUpgrade,
      engineVersion: engineVersion,
      multiAZ: multiAZ,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      backupRetentionPeriod: backupRetentionPeriod,
      dbparameterGroupName: dbparameterGroupName,
      masterUserPassword: masterUserPassword,
      applyImmediately: applyImmediately,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbsecurityGroups: dbsecurityGroups,
      dbsubnetGroupName: dbsubnetGroupName,
      dbinstanceClass: dbinstanceClass,
      allocatedStorage: allocatedStorage,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeValidDBInstanceModifications = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The customer identifier or the ARN of your DB instance.
        </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {
    @as("ValidDBInstanceModificationsMessage")
    validDBInstanceModificationsMessage: option<validDBInstanceModificationsMessage>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeValidDBInstanceModificationsCommand"
  let make = (~dbinstanceIdentifier, ()) => new({dbinstanceIdentifier: dbinstanceIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalClusters = {
  type t
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request. If
        this parameter is specified, the response includes only records beyond the marker, up to the value
        specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response. If more records exist than the specified
        <code>MaxRecords</code> value, a pagination token called a marker is included in the response so that
       you can retrieve the remaining results.
      </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more global DB clusters to describe.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p>
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB 
              cluster Amazon Resource Names (ARNs). The results list will only include information about
              the DB clusters identified by these ARNs.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>
        The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.
      </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match an existing DBClusterIdentifier.</p>
            </li>
         </ul>")
    @as("GlobalClusterIdentifier")
    globalClusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>
        The list of global clusters returned by this request.
      </p>")
    @as("GlobalClusters")
    globalClusters: option<globalClusterList>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous <code>DescribeGlobalClusters</code> request.
        If this parameter is specified, the response includes
        only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
      </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeGlobalClustersCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~globalClusterIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      globalClusterIdentifier: globalClusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBSubnetGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
            An optional pagination token provided by a previous DescribeDBSubnetGroups request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
        a pagination token called a marker is included in the response so that
        you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the DB subnet group to return details for.</p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeDBSubnetGroups</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
        A list of <code>DBSubnetGroup</code> instances.
        </p>")
    @as("DBSubnetGroups")
    dbsubnetGroups: option<dbsubnetGroups>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBSubnetGroupsCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbsubnetGroupName=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbsubnetGroupName: dbsubnetGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBEngineVersions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A value that indicates whether to include engine versions that aren't available in the list. The default is to list only available engine versions.</p>"
    )
    @as("IncludeAll")
    includeAll: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to list the supported time zones for each engine version.</p>
        <p>If this parameter is enabled and the requested engine supports the <code>TimeZone</code> parameter for <code>CreateDBInstance</code>, 
            the response includes a list of supported time zones for each engine version.
        </p>")
    @as("ListSupportedTimezones")
    listSupportedTimezones: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to list the supported character sets for each engine version.</p>
         <p>If this parameter is enabled and the requested engine supports the <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, 
          the response includes a list of supported character sets for each engine version.
      </p>")
    @as("ListSupportedCharacterSets")
    listSupportedCharacterSets: option<booleanOptional>,
    @ocaml.doc(
      "<p>A value that indicates whether only the default version of the specified engine or engine and major version combination is returned.</p>"
    )
    @as("DefaultOnly")
    defaultOnly: option<boolean_>,
    @ocaml.doc("<p>
        An optional pagination token provided by a previous request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
    </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
    The maximum number of records to include in the response.
    If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is
    included in the response so you can retrieve the remaining results.
    </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of a specific DB parameter group family to return details for.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match an existing DBParameterGroupFamily.</p>
            </li>
         </ul>")
    @as("DBParameterGroupFamily")
    dbparameterGroupFamily: option<string_>,
    @ocaml.doc("<p>The database engine version to return.</p>
         <p>Example: <code>5.1.49</code>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The database engine to return.</p>
         <p>Valid Values:
      </p>
         <ul>
            <li>
               <p>
                  <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
            </li>
            <li>
               <p>
                  <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora)</p>
            </li>
            <li>
               <p>
                  <code>aurora-postgresql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("Engine")
    engine: option<string_>,
  }
  @ocaml.doc("<p>
            Contains the result of a successful invocation of the <code>DescribeDBEngineVersions</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
            A list of <code>DBEngineVersion</code> elements.
        </p>")
    @as("DBEngineVersions")
    dbengineVersions: option<dbengineVersionList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBEngineVersionsCommand"
  let make = (
    ~includeAll=?,
    ~listSupportedTimezones=?,
    ~listSupportedCharacterSets=?,
    ~defaultOnly=?,
    ~marker=?,
    ~maxRecords=?,
    ~filters=?,
    ~dbparameterGroupFamily=?,
    ~engineVersion=?,
    ~engine=?,
    (),
  ) =>
    new({
      includeAll: includeAll,
      listSupportedTimezones: listSupportedTimezones,
      listSupportedCharacterSets: listSupportedCharacterSets,
      defaultOnly: defaultOnly,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbparameterGroupFamily: dbparameterGroupFamily,
      engineVersion: engineVersion,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusters = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Optional Boolean parameter that specifies whether the output includes information about clusters
          shared from other AWS accounts.</p>")
    @as("IncludeShared")
    includeShared: option<boolean_>,
    @ocaml.doc("<p>An optional pagination token provided by a previous
            <code>DescribeDBClusters</code> request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
          a pagination token called a marker is included in the response so you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more DB clusters to describe.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p>
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB 
              cluster Amazon Resource Names (ARNs). The results list will only include information about
              the DB clusters identified by these ARNs.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-supplied DB cluster identifier. If this parameter is specified, information from only the specific DB cluster is returned. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match an existing DBClusterIdentifier.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  @ocaml.doc(
    "<p>Contains the result of a successful invocation of the <code>DescribeDBClusters</code> action.</p>"
  )
  type response = {
    @ocaml.doc("<p>Contains a list of DB clusters for the user.</p>") @as("DBClusters")
    dbclusters: option<dbclusterList>,
    @ocaml.doc("<p>A pagination token that can be used in a later DescribeDBClusters request.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBClustersCommand"
  let make = (~includeShared=?, ~marker=?, ~maxRecords=?, ~filters=?, ~dbclusterIdentifier=?, ()) =>
    new({
      includeShared: includeShared,
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBInstance = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to remove automated backups immediately after the DB
            instance is deleted. This parameter isn't case-sensitive. The default is to remove 
            automated backups immediately after the DB instance is deleted.</p>")
    @as("DeleteAutomatedBackups")
    deleteAutomatedBackups: option<booleanOptional>,
    @ocaml.doc("<p>
        The <code>DBSnapshotIdentifier</code> of the new <code>DBSnapshot</code> created when the <code>SkipFinalSnapshot</code>
        parameter is disabled.
        </p>
         <note>
            <p>Specifying this parameter and also specifying to skip final DB snapshot creation in SkipFinalShapshot results in an error.</p>
         </note>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
            <li>
               <p>Can't be specified when deleting a read replica.</p>
            </li>
         </ul>")
    @as("FinalDBSnapshotIdentifier")
    finalDBSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to skip the creation of a final DB snapshot before the DB instance is deleted.
          If skip is specified, no DB snapshot is created. If skip isn't specified, a DB snapshot 
          is created before the DB instance is deleted. By default, skip isn't specified, and the DB snapshot is created.</p>
         <p>When a DB instance is in a failure state and has a status of 'failed', 'incompatible-restore', or 'incompatible-network', it can only be deleted when skip is specified.</p>
         <p>Specify skip when deleting a read replica.</p>
         <note>
            <p>The FinalDBSnapshotIdentifier parameter must be specified if skip isn't specified.</p>
         </note>")
    @as("SkipFinalSnapshot")
    skipFinalSnapshot: option<boolean_>,
    @ocaml.doc("<p>The DB instance identifier for the DB instance to be deleted. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the name of an existing DB instance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBInstanceCommand"
  let make = (
    ~dbinstanceIdentifier,
    ~deleteAutomatedBackups=?,
    ~finalDBSnapshotIdentifier=?,
    ~skipFinalSnapshot=?,
    (),
  ) =>
    new({
      deleteAutomatedBackups: deleteAutomatedBackups,
      finalDBSnapshotIdentifier: finalDBSnapshotIdentifier,
      skipFinalSnapshot: skipFinalSnapshot,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOptionGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Tags to assign to the option group.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The description of the option group.</p>") @as("OptionGroupDescription")
    optionGroupDescription: string_,
    @ocaml.doc(
      "<p>Specifies the major version of the engine that this option group should be associated with.</p>"
    )
    @as("MajorEngineVersion")
    majorEngineVersion: string_,
    @ocaml.doc("<p>Specifies the name of the engine that this option group should be associated with.</p>
         <p>Valid Values:
      </p>
         <ul>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("EngineName")
    engineName: string_,
    @ocaml.doc("<p>Specifies the name of the option group to be created.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>myoptiongroup</code>
         </p>")
    @as("OptionGroupName")
    optionGroupName: string_,
  }
  type response = {@as("OptionGroup") optionGroup: option<optionGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateOptionGroupCommand"
  let make = (
    ~optionGroupDescription,
    ~majorEngineVersion,
    ~engineName,
    ~optionGroupName,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      optionGroupDescription: optionGroupDescription,
      majorEngineVersion: majorEngineVersion,
      engineName: engineName,
      optionGroupName: optionGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstanceReadReplica = {
  type t
  type request = {
    @ocaml.doc("<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>
        <p>For more information about this setting, including limitations that apply to it, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling\">
                Managing capacity automatically with Amazon RDS storage autoscaling</a> 
            in the <i>Amazon RDS User Guide</i>.</p>")
    @as("MaxAllocatedStorage")
    maxAllocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>The open mode of the replica database: mounted or read-only.</p>
        <note>
            <p>This parameter is only supported for Oracle DB instances.</p>
        </note>
        <p>Mounted DB replicas are included in Oracle Enterprise Edition. The main use case for
            mounted replicas is cross-Region disaster recovery. The primary database doesn't use Active
            Data Guard to transmit information to the mounted replica. Because it doesn't accept
            user connections, a mounted replica can't serve a read-only workload.</p>
        <p>You can create a combination of mounted and read-only DB replicas for the same primary DB instance.
            For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Working with Oracle Read Replicas for Amazon RDS</a> 
            in the <i>Amazon RDS User Guide</i>.</p>")
    @as("ReplicaMode")
    replicaMode: option<replicaMode>,
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>The Active Directory directory ID to create the DB instance in. Currently, only MySQL, Microsoft SQL 
            Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\">
            Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\">
                Deleting a DB Instance</a>.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance class of the DB instance uses its default
            processor features.</p>")
    @as("UseDefaultProcessorFeatures")
    useDefaultProcessorFeatures: option<booleanOptional>,
    @ocaml.doc(
      "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
    )
    @as("ProcessorFeatures")
    processorFeatures: option<processorFeatureList>,
    @ocaml.doc("<p>The list of logs that the new DB instance is to export to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing
                Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc(
      "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
    )
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier for encryption of Performance Insights data.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p>
        <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS 
            uses your default CMK. There is a default CMK for your AWS account. 
            Your AWS account has a different default CMK for each AWS Region.</p>")
    @as("PerformanceInsightsKMSKeyId")
    performanceInsightsKMSKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to enable Performance Insights for the read replica. </p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using
            Amazon Performance Insights</a> in the <i>Amazon RDS User Guide</i>.
        </p>")
    @as("EnablePerformanceInsights")
    enablePerformanceInsights: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
          Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
      
         <p>For more information about IAM database authentication, see 
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\">
              IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The URL that contains a Signature Version 4 signed request for the <code>CreateDBInstanceReadReplica</code> API action 
            in the source AWS Region that contains the source DB instance.
        </p>
        
        <p>You must specify this parameter when you create an encrypted read replica from
            another AWS Region by using the Amazon RDS API. Don't specify
                <code>PreSignedUrl</code> when you are creating an encrypted read replica in the
            same AWS Region.</p>
        
        <p>The presigned URL must be a valid request for the <code>CreateDBInstanceReadReplica</code> API action 
            that can be executed in the source AWS Region that contains the encrypted source DB instance. 
            The presigned URL request must contain the following parameter values:
        </p>
        
        <ul>
            <li>
                <p>
                  <code>DestinationRegion</code> - The AWS Region that the encrypted read
                    replica is created in. This AWS Region is the same one where the
                        <code>CreateDBInstanceReadReplica</code> action is called that contains this presigned URL.</p>
                
                <p>For example, if you create an encrypted DB instance in the us-west-1 AWS Region,
                    from a source DB instance in the us-east-2 AWS Region, 
                    then you call the <code>CreateDBInstanceReadReplica</code> action in
                    the us-east-1 AWS Region and provide a presigned URL that contains a call to the
                    <code>CreateDBInstanceReadReplica</code> action in the us-west-2 AWS Region. For this
                    example, the <code>DestinationRegion</code> in the presigned URL must be set to
                    the us-east-1 AWS Region.
                </p>
            </li>
            <li>
                <p>
                  <code>KmsKeyId</code> - The AWS KMS key identifier for the key to use to
                    encrypt the read replica in the destination AWS Region. This is the same
                    identifier for both the <code>CreateDBInstanceReadReplica</code> action that is
                    called in the destination AWS Region, and the action contained in the presigned
                    URL. </p>
            </li>
            <li>
                <p>
                  <code>SourceDBInstanceIdentifier</code> - The DB instance identifier for
                    the encrypted DB instance to be replicated. This identifier must be in the
                    Amazon Resource Name (ARN) format for the source AWS Region. For example, if you
                    are creating an encrypted read replica from a DB instance in the us-west-2 AWS
                    Region, then your <code>SourceDBInstanceIdentifier</code> looks like the
                    following example:
                        <code>arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115</code>. </p>
            </li>
         </ul>
        
        <p>To learn how to generate a Signature Version 4 signed request, see 
            <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html\">Authenticating Requests: Using Query Parameters (AWS Signature Version 4)</a> and
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing Process</a>.
        </p>
        
        <note>
            <p>If you are using an AWS SDK tool or the AWS CLI, you can specify
                    <code>SourceRegion</code> (or <code>--source-region</code> for the AWS CLI)
                instead of specifying <code>PreSignedUrl</code> manually. Specifying
                    <code>SourceRegion</code> autogenerates a presigned URL that is a valid request
                for the operation that can be executed in the source AWS Region.</p>
            <p>
               <code>SourceRegion</code> isn't supported for SQL Server, because SQL Server on Amazon RDS
                doesn't support cross-region read replicas.</p>
        </note>")
    @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted read replica.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS CMK.</p>
        <p>If you create an encrypted read replica in the same AWS Region as the source DB
            instance, then do not specify a value for this parameter. A read replica in the same Region
            is always encrypted with the same AWS KMS CMK as the source DB instance.</p>       
        <p>If you create an encrypted read replica in a different AWS Region, then you must
            specify a AWS KMS key identifier for the destination AWS Region. AWS KMS CMKs are specific to
            the AWS Region that they are created in, and you can't use CMKs from one
            AWS Region in another AWS Region.</p>       
        <p>You can't create an encrypted read replica from an unencrypted DB instance.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For
      example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
      go to <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole\">To 
          create an IAM role for Amazon RDS Enhanced Monitoring</a> in the <i>Amazon RDS User Guide</i>.</p>
         <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>")
    @as("MonitoringRoleArn")
    monitoringRoleArn: option<string_>,
    @ocaml.doc("<p>The interval, in seconds, between points when Enhanced Monitoring metrics are
            collected for the read replica. To disable collecting Enhanced Monitoring metrics,
            specify 0. The default is 0.</p>
         <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code>
      to a value other than 0.</p>
         <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
         </p>")
    @as("MonitoringInterval")
    monitoringInterval: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether to copy all tags from the read replica to snapshots of
            the read replica. By default, tags are not copied.</p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>Specifies the storage type to be associated with the read replica.</p>
         <p>
            Valid values: <code>standard | gp2 | io1</code>
         </p>
         <p>
            If you specify <code>io1</code>, you must also include a value for the
            <code>Iops</code> parameter.
        </p>
         <p>
            Default: <code>io1</code> if the <code>Iops</code> parameter
            is specified, otherwise <code>gp2</code>
         </p>")
    @as("StorageType")
    storageType: option<string_>,
    @ocaml.doc("<p> A list of EC2 VPC security groups to associate with the read replica. </p>
        <p>
            Default: The default EC2 VPC security group for the DB subnet group's VPC.
        </p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>Specifies a DB subnet group for the DB instance. The new DB instance is created in the VPC associated with the DB subnet group. If no DB subnet group is specified, then the new DB instance isn't created in a VPC.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Can only be specified if the source DB instance identifier specifies a DB instance in another AWS Region.</p>
            </li>
            <li>
               <p>If supplied, must match the name of an existing DBSubnetGroup.</p>
            </li>
            <li>
               <p>The specified DB subnet group must be in the same AWS Region in which the operation is running.</p>
            </li>
            <li>
              <p>All read replicas in one AWS Region that are created from the same source DB
                    instance must either:></p>
              <ul>
                  <li>
                     <p>Specify DB subnet groups from the same VPC. All these read replicas are created in the same
                            VPC.</p>
                  </li>
                  <li>
                     <p>Not specify a DB subnet group. All these read replicas are created outside of any
                            VPC.</p>
                  </li>
               </ul>
            </li>
         </ul>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is publicly accessible.</p>
         <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, 
              and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, 
              and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
         <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>  
         <p>For more information, see <a>CreateDBInstance</a>.</p>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to associate with this DB instance.</p>
        <p>If you do not specify a value for <code>DBParameterGroupName</code>, then Amazon RDS
            uses the <code>DBParameterGroup</code> of source DB instance for a same region read
            replica, or the default <code>DBParameterGroup</code> for the specified DB engine for a
            cross region read replica.</p>
        <note>
            <p>Currently, specifying a parameter group for this operation is only supported for Oracle DB instances.</p>
        </note>
        <p>Constraints:</p>
        <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc("<p>The option group the DB instance is associated with. If omitted, the option group associated with the source instance is used.</p>
        <note>
            <p>For SQL Server, you must use the option group associated with the source
                instance.</p>
        </note>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc(
      "<p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.</p>"
    )
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether minor engine upgrades are applied automatically to the
            read replica during the maintenance window.</p>
         <p>Default: Inherits from the source DB instance</p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the read replica is in a Multi-AZ deployment. </p>
        
        <p>You can create a read replica as a Multi-AZ DB instance. RDS creates a standby of
            your replica in another Availability Zone for failover support for the replica. Creating
            your read replica as a Multi-AZ DB instance is independent of whether the source
            database is a Multi-AZ DB instance. </p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The port number that the DB instance uses for connections.</p>
         <p>Default: Inherits from the source DB instance</p>
         <p>Valid Values: <code>1150-65535</code>
         </p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The Availability Zone (AZ) where the read replica will be created.</p>
         <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p>
         <p>
           Example: <code>us-east-1d</code>
         </p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The compute and memory capacity of the read replica, for example,
                <code>db.m4.large</code>. Not all DB instance classes are available in all AWS
            Regions, or for all database engines. For the full list of DB instance classes, and
            availability for your engine, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance
                Class</a> in the <i>Amazon RDS User Guide.</i>
        </p>
         <p>Default: Inherits from the source DB instance.</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>The identifier of the DB instance that will act as the source for the read replica.
            Each DB instance can have up to five read replicas.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be the identifier of an existing MySQL, MariaDB, Oracle, PostgreSQL, or SQL Server DB
                    instance.</p>
            </li>
            <li>
               <p>Can specify a DB instance that is a MySQL read replica only if the source is running MySQL
                    5.6 or later.</p>
            </li>
            <li>
              <p>For the limitations of Oracle read replicas, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html\">Read Replica Limitations with Oracle</a> in the
                  <i>Amazon RDS User Guide</i>.</p>
            </li>
            <li>
                <p>For the limitations of SQL Server read replicas, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/SQLServer.ReadReplicas.Limitations.html\">Read Replica
                        Limitations with Microsoft SQL Server</a> in the <i>Amazon RDS User Guide</i>.</p>
            </li>
            <li>
               <p>Can specify a PostgreSQL DB instance only if the source is running PostgreSQL 9.3.5 or
                    later (9.4.7 and higher for cross-region replication).</p>
            </li>
            <li>
               <p>The specified DB instance must have automatic backups enabled, that is, its backup
                    retention period must be greater than 0.</p>
            </li>
            <li>
               <p>If the source DB instance is in the same AWS Region as the read replica, specify a valid DB
                    instance identifier.</p>
            </li>
            <li>
               <p>If the source DB instance is in a different AWS Region from the read replica, specify a valid DB instance ARN. 
             For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing\">Constructing an ARN for Amazon RDS</a> 
             in the <i>Amazon RDS User Guide</i>. This doesn't apply to SQL Server, which doesn't support cross-region replicas.</p>
            </li>
         </ul>")
    @as("SourceDBInstanceIdentifier")
    sourceDBInstanceIdentifier: string_,
    @ocaml.doc("<p>The DB instance identifier of the read replica. This identifier is the unique key
            that identifies a DB instance. This parameter is stored as a lowercase string.</p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "CreateDBInstanceReadReplicaCommand"
  let make = (
    ~sourceDBInstanceIdentifier,
    ~dbinstanceIdentifier,
    ~maxAllocatedStorage=?,
    ~replicaMode=?,
    ~domainIAMRoleName=?,
    ~domain=?,
    ~deletionProtection=?,
    ~useDefaultProcessorFeatures=?,
    ~processorFeatures=?,
    ~enableCloudwatchLogsExports=?,
    ~performanceInsightsRetentionPeriod=?,
    ~performanceInsightsKMSKeyId=?,
    ~enablePerformanceInsights=?,
    ~enableIAMDatabaseAuthentication=?,
    ~preSignedUrl=?,
    ~kmsKeyId=?,
    ~monitoringRoleArn=?,
    ~monitoringInterval=?,
    ~copyTagsToSnapshot=?,
    ~storageType=?,
    ~vpcSecurityGroupIds=?,
    ~dbsubnetGroupName=?,
    ~tags=?,
    ~publiclyAccessible=?,
    ~dbparameterGroupName=?,
    ~optionGroupName=?,
    ~iops=?,
    ~autoMinorVersionUpgrade=?,
    ~multiAZ=?,
    ~port=?,
    ~availabilityZone=?,
    ~dbinstanceClass=?,
    (),
  ) =>
    new({
      maxAllocatedStorage: maxAllocatedStorage,
      replicaMode: replicaMode,
      domainIAMRoleName: domainIAMRoleName,
      domain: domain,
      deletionProtection: deletionProtection,
      useDefaultProcessorFeatures: useDefaultProcessorFeatures,
      processorFeatures: processorFeatures,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      performanceInsightsRetentionPeriod: performanceInsightsRetentionPeriod,
      performanceInsightsKMSKeyId: performanceInsightsKMSKeyId,
      enablePerformanceInsights: enablePerformanceInsights,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      preSignedUrl: preSignedUrl,
      kmsKeyId: kmsKeyId,
      monitoringRoleArn: monitoringRoleArn,
      monitoringInterval: monitoringInterval,
      copyTagsToSnapshot: copyTagsToSnapshot,
      storageType: storageType,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbsubnetGroupName: dbsubnetGroupName,
      tags: tags,
      publiclyAccessible: publiclyAccessible,
      dbparameterGroupName: dbparameterGroupName,
      optionGroupName: optionGroupName,
      iops: iops,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      multiAZ: multiAZ,
      port: port,
      availabilityZone: availabilityZone,
      dbinstanceClass: dbinstanceClass,
      sourceDBInstanceIdentifier: sourceDBInstanceIdentifier,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstance = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>A value that indicates whether to enable a customer-owned IP address (CoIP) for an RDS
            on Outposts DB instance.</p>
        <p>A <i>CoIP</i> provides local or external connectivity to resources in
            your Outpost subnets through your on-premises network. For some use cases, a CoIP can
            provide lower latency for connections to the DB instance from outside of its virtual
            private cloud (VPC) on your local network.</p>
        <p>For more information about RDS on Outposts, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html\">Working with Amazon RDS on AWS Outposts</a> 
            in the <i>Amazon RDS User Guide</i>.</p>
        <p>For more information about CoIPs, see <a href=\"https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing\">Customer-owned IP addresses</a> 
            in the <i>AWS Outposts User Guide</i>.</p>")
    @as("EnableCustomerOwnedIp")
    enableCustomerOwnedIp: option<booleanOptional>,
    @ocaml.doc("<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.</p>
        <p>For more information about this setting, including limitations that apply to it, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling\">
                Managing capacity automatically with Amazon RDS storage autoscaling</a> 
            in the <i>Amazon RDS User Guide</i>.</p>")
    @as("MaxAllocatedStorage")
    maxAllocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled. 
            The database can't be deleted when deletion protection is enabled. By default, 
            deletion protection is disabled. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html\">
                Deleting a DB Instance</a>.
        </p>
        <p>
            <b>Amazon Aurora</b>
        </p>
        <p>Not applicable. You can enable or disable deletion protection for the DB cluster. 
            For more information, see <code>CreateDBCluster</code>. DB instances in a DB 
            cluster can be deleted even when deletion protection is enabled for the DB cluster.
        </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc(
      "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
    )
    @as("ProcessorFeatures")
    processorFeatures: option<processorFeatureList>,
    @ocaml.doc("<p>The list of log types that need to be enabled for exporting to CloudWatch Logs. The values
            in the list depend on the DB engine being used. For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch\">Publishing Database Logs to Amazon CloudWatch Logs </a> in the <i>Amazon Relational Database
                    Service User Guide</i>.</p>
        <p>
            <b>Amazon Aurora</b>
        </p>
        <p>Not applicable. CloudWatch Logs exports are managed by the DB cluster.
        </p>
        <p>
            <b>MariaDB</b>
        </p>
        <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>. 
        </p>
        <p>
            <b>Microsoft SQL Server</b>
        </p>
        <p>Possible values are <code>agent</code> and <code>error</code>.
        </p>
         <p>
            <b>MySQL</b>
        </p>
        <p>Possible values are <code>audit</code>, <code>error</code>, <code>general</code>, and <code>slowquery</code>. 
        </p>
        <p>
            <b>Oracle</b>
        </p>
        <p>Possible values are <code>alert</code>, <code>audit</code>, <code>listener</code>, <code>trace</code>, and
            <code>oemagent</code>.
        </p>
        <p>
            <b>PostgreSQL</b>
        </p>
        <p>Possible values are <code>postgresql</code> and <code>upgrade</code>.
        </p>")
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc(
      "<p>The amount of time, in days, to retain Performance Insights data. Valid values are 7 or 731 (2 years). </p>"
    )
    @as("PerformanceInsightsRetentionPeriod")
    performanceInsightsRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The AWS KMS key identifier for encryption of Performance Insights data.</p>
        <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).</p> 
        <p>If you do not specify a value for <code>PerformanceInsightsKMSKeyId</code>, then Amazon RDS 
            uses your default CMK. There is a default CMK for your AWS account. 
            Your AWS account has a different default CMK for each AWS Region.</p>")
    @as("PerformanceInsightsKMSKeyId")
    performanceInsightsKMSKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether to enable Performance Insights for the DB instance.
        </p>
        <p>For more information, see 
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html\">Using Amazon Performance Insights</a> in the <i>Amazon Relational Database Service
                    User Guide</i>.
        </p>")
    @as("EnablePerformanceInsights")
    enablePerformanceInsights: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether to enable mapping of AWS Identity and Access
            Management (IAM) accounts to database accounts. By default, mapping is disabled.</p>
      
         <p>This setting doesn't apply to Amazon Aurora. Mapping AWS IAM accounts to database accounts is managed by the DB
        cluster.</p>
      
         <p>For more information, see 
       <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html\">
           IAM Database Authentication for MySQL and PostgreSQL</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The time zone of the DB instance. 
            The time zone parameter is currently supported only by
            <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone\">Microsoft SQL Server</a>.
        </p>")
    @as("Timezone")
    timezone: option<string_>,
    @ocaml.doc("<p>A value that specifies the order in which an Aurora Replica is promoted to the primary instance 
      after a failure of the existing primary instance. For more information, 
      see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance\">
          Fault Tolerance for an Aurora DB Cluster</a> in the <i>Amazon Aurora User Guide</i>.
    </p>
         <p>Default: 1</p>
         <p>Valid Values: 0 - 15</p>")
    @as("PromotionTier")
    promotionTier: option<integerOptional>,
    @ocaml.doc(
      "<p>Specify the name of the IAM role to be used when making API calls to the Directory Service.</p>"
    )
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to Amazon CloudWatch Logs. For
      example, <code>arn:aws:iam:123456789012:role/emaccess</code>. For information on creating a monitoring role,
      go to <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling\">Setting Up and Enabling Enhanced Monitoring</a> 
          in the <i>Amazon RDS User Guide</i>.</p>
         <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a <code>MonitoringRoleArn</code> value.</p>")
    @as("MonitoringRoleArn")
    monitoringRoleArn: option<string_>,
    @ocaml.doc("<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0.</p>
         <p>If <code>MonitoringRoleArn</code> is specified, then you must also set <code>MonitoringInterval</code>
      to a value other than 0.</p>
         <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
         </p>")
    @as("MonitoringInterval")
    monitoringInterval: option<integerOptional>,
    @ocaml.doc("<p>A value that indicates whether to copy tags from the DB instance to snapshots of the DB instance. By default, tags are not copied.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. Copying tags to snapshots is managed by the DB cluster. Setting this
          value for an Aurora DB instance has no effect on the DB cluster setting.</p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>The Active Directory directory ID to create the DB instance in. Currently, only MySQL, Microsoft SQL 
            Server, Oracle, and PostgreSQL DB instances can be created in an Active Directory Domain.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html\">
           Kerberos Authentication</a> in the <i>Amazon RDS User Guide</i>.</p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>The AWS KMS key identifier for an encrypted DB instance.</p>
         <p>The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the AWS KMS customer master key (CMK).
          To use a CMK in a different AWS account, specify the key ARN or alias ARN.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. The AWS KMS key identifier is managed by
          the DB cluster. For more information, see <code>CreateDBCluster</code>.</p>     
         <p>If <code>StorageEncrypted</code> is enabled, and you do
        not specify a value for the <code>KmsKeyId</code> parameter, then
        Amazon RDS uses your default CMK. There is a  
        default CMK for your AWS account. Your AWS account has a different
        default CMK for each AWS Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is encrypted. By default, it isn't encrypted.</p>
      
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. The encryption for DB instances is managed by
          the DB cluster.</p>")
    @as("StorageEncrypted")
    storageEncrypted: option<booleanOptional>,
    @ocaml.doc(
      "<p>The password for the given ARN from the key store in order to access the device.</p>"
    )
    @as("TdeCredentialPassword")
    tdeCredentialPassword: option<string_>,
    @ocaml.doc(
      "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
    )
    @as("TdeCredentialArn")
    tdeCredentialArn: option<string_>,
    @ocaml.doc("<p>Specifies the storage type to be associated with the DB instance.</p>
         <p>
            Valid values: <code>standard | gp2 | io1</code>
         </p>
         <p>
            If you specify <code>io1</code>, you must also include a value for the
            <code>Iops</code> parameter.
        </p>
         <p>
            Default: <code>io1</code> if the <code>Iops</code> parameter
            is specified, otherwise <code>gp2</code>
         </p>")
    @as("StorageType")
    storageType: option<string_>,
    @ocaml.doc("<p>The identifier of the DB cluster that the instance will belong to.</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
    @ocaml.doc("<p>Tags to assign to the DB instance.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is publicly accessible.</p>
         <p>When the DB instance is publicly accessible, its DNS endpoint resolves to the private IP address from within the DB instance's VPC, 
          and to the public IP address from outside of the DB instance's VPC. Access to the DB instance is ultimately controlled by the security group it uses, 
          and that public access is not permitted if the security group assigned to the DB instance doesn't permit it.</p>
         <p>When the DB instance isn't publicly accessible, it is an internal DB instance with a DNS name that resolves to a private IP address.</p>
         <p>Default: The default behavior varies depending on whether <code>DBSubnetGroupName</code> is specified.</p>
         <p>If <code>DBSubnetGroupName</code> isn't specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
         <ul>
            <li>
              <p>If the default VPC in the target region doesn’t have an Internet gateway attached to it, the DB instance is private.</p>
            </li>
            <li>
              <p>If the default VPC in the target region has an Internet gateway attached to it, the DB instance is public.</p>
            </li>
         </ul>
         <p>If <code>DBSubnetGroupName</code> is specified, and <code>PubliclyAccessible</code> isn't specified, the following applies:</p>
         <ul>
            <li>
              <p>If the subnets are part of a VPC that doesn’t have an Internet gateway attached to it, the DB instance is private.</p>
            </li>
            <li>
              <p>If the subnets are part of a VPC that has an Internet gateway attached to it, the DB instance is public.</p>
            </li>
         </ul>")
    @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The name of the NCHAR character set for the Oracle DB instance.</p>")
    @as("NcharCharacterSetName")
    ncharCharacterSetName: option<string_>,
    @ocaml.doc("<p>For supported engines, indicates that the DB instance should be associated with the specified CharacterSet.</p>
      
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. The character set is managed by
          the DB cluster. For more information, see <code>CreateDBCluster</code>.</p>")
    @as("CharacterSetName")
    characterSetName: option<string_>,
    @ocaml.doc("<p>A value that indicates that the DB instance should be associated with the specified option group.</p>
         <p>Permanent options, such as the TDE option for Oracle Advanced Security TDE, can't be removed from an option group. Also, that option group can't be removed from a DB instance once it is associated with a DB instance</p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for the DB instance.
          For information about valid Iops values, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS\">Amazon RDS Provisioned IOPS Storage to Improve Performance</a> in the <i>Amazon RDS User Guide</i>.
      </p>
         <p>Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL DB instances, must be a multiple between .5 and 50 of the storage amount for the DB instance. 
          For SQL Server DB instances, must be a multiple between 1 and 50 of the storage amount for the DB instance.
    </p>")
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>License model information for this DB instance.</p>
         <p>
            Valid values:  <code>license-included</code> | <code>bring-your-own-license</code> | <code>general-public-license</code>
         </p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc("<p>A value that indicates whether minor engine upgrades are applied automatically to the DB instance during the maintenance window. 
          By default, minor engine upgrades are applied automatically.</p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The version number of the database engine to use.</p>
         <p>For a list of valid engine versions, use the  <code>DescribeDBEngineVersions</code> action.</p>
         <p>The following are the database engines and links to information about the major and minor versions that are available with 
          Amazon RDS. Not every database engine is available for every AWS Region.</p>
    
         <p>
            <b>Amazon Aurora</b>
         </p>
        <p>Not applicable. The version number of the database engine to be used by the DB
            instance is managed by the DB cluster.</p>
      
         <p>
            <b>MariaDB</b>
         </p>

         <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt\">MariaDB on Amazon RDS Versions</a> in the 
          <i>Amazon RDS User Guide.</i>
         </p>
      
         <p>
            <b>Microsoft SQL Server</b>
         </p>
      
         <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.VersionSupport\">Microsoft SQL Server Versions on Amazon RDS</a> in the 
          <i>Amazon RDS User Guide.</i>
         </p>
      
         <p>
            <b>MySQL</b>
         </p>

         <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt\">MySQL on Amazon RDS Versions</a> in the 
          <i>Amazon RDS User Guide.</i>
         </p>     
      
         <p>
            <b>Oracle</b>
         </p>
      
         <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html\">Oracle Database Engine Release Notes</a> in the 
          <i>Amazon RDS User Guide.</i>
         </p>

         <p>
            <b>PostgreSQL</b>
         </p>

         <p>See <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts\">Amazon RDS for PostgreSQL versions and extensions</a> in the 
          <i>Amazon RDS User Guide.</i>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>A value that indicates whether the DB instance is a Multi-AZ deployment. You can't set 
          the <code>AvailabilityZone</code> parameter if the DB instance is a Multi-AZ deployment.</p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The port number on which the database accepts connections.</p>
         <p>
            <b>MySQL</b>
         </p>
         <p>
            Default: <code>3306</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>Type: Integer</p>
         <p>
            <b>MariaDB</b>
         </p>
         <p>
      Default: <code>3306</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>Type: Integer</p>
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>
            Default: <code>5432</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>Type: Integer</p>
         <p>
            <b>Oracle</b>
         </p>
         <p>
            Default: <code>1521</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>
            <b>SQL Server</b>
         </p>
         <p>
            Default: <code>1433</code>
         </p>
         <p> Valid values: <code>1150-65535</code> except <code>1234</code>, <code>1434</code>,
                <code>3260</code>, <code>3343</code>, <code>3389</code>, <code>47001</code>, and
                <code>49152-49156</code>.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>
      Default: <code>3306</code>
         </p>
         <p> Valid values: <code>1150-65535</code>
        </p>
         <p>Type: Integer</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>
        The daily time range during which automated backups are created
        if automated backups are enabled,
        using the <code>BackupRetentionPeriod</code> parameter.
          The default is a 30-minute window selected at random from an
          8-hour block of time for each AWS Region. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow\">Backup window</a> in the <i>Amazon RDS User Guide</i>.
      </p>
      
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. The daily time range for creating automated backups is managed by
          the DB cluster.</p>
    
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be in the format <code>hh24:mi-hh24:mi</code>.</p>
            </li>
            <li>
               <p>Must be in Universal Coordinated Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are retained. Setting this parameter to a positive number enables backups. Setting this parameter to 0 disables automated backups.</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. The retention period for automated backups is managed by the DB
          cluster.</p>
         <p>Default: 1</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 0 to 35</p>
            </li>
            <li>
               <p>Can't be set to 0 if the DB instance is a source to read replicas</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to associate with this DB instance. If you do not specify a value, then 
          the default DB parameter group for the specified DB engine and version is used.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc("<p>The time range each week during which system maintenance can occur, 
          in Universal Coordinated Time (UTC). 
          For more information, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance\">Amazon RDS Maintenance Window</a>.
      </p>
         <p>
            Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
         <p>The default is a 30-minute window selected at random from an
            8-hour block of time for each AWS Region, occurring on a random day of the
            week.
        </p>
         <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
         <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>A DB subnet group to associate with this DB instance.</p>
         <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>
        The Availability Zone (AZ) where the database will be created. For information on
        AWS Regions and Availability Zones, see 
        <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html\">Regions
        and Availability Zones</a>.
        </p>
         <p>Default: A random, system-chosen Availability Zone in the endpoint's AWS Region.</p>
         <p>
            Example: <code>us-east-1d</code>
         </p>
         <p>
          Constraint: The <code>AvailabilityZone</code> parameter can't be specified if the DB instance is a Multi-AZ deployment. 
            The specified Availability Zone must be in the same AWS Region as the current endpoint.
        </p>
         <note>
            <p>If you're creating a DB instance in an RDS on VMware environment,
                specify the identifier of the custom Availability Zone to create the DB instance
                in.</p>
            <p>For more information about RDS on VMware, see the 
              <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html\">
                  RDS on VMware User Guide.</a>
            </p>
         </note>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>A list of Amazon EC2 VPC security groups to associate with this DB instance.</p>
      
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. The associated list of EC2 VPC security groups is managed by
          the DB cluster.</p>
      
         <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of DB security groups to associate with this DB instance.</p>
         <p>Default: The default DB security group for the database engine.</p>")
    @as("DBSecurityGroups")
    dbsecurityGroups: option<dbsecurityGroupNameList>,
    @ocaml.doc("<p>The password for the master user. The password can include any printable ASCII character except \"/\", \"\"\", or \"@\".</p>

         <p>
            <b>Amazon Aurora</b>
         </p>
        <p>Not applicable. The password for the master user is managed by the DB
            cluster.</p>

         <p>
            <b>MariaDB</b>
         </p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>

         <p>
            <b>Microsoft SQL Server</b>
         </p>
         <p>Constraints: Must contain from 8 to 128 characters.</p>
      
         <p>
            <b>MySQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>

         <p>
            <b>Oracle</b>
         </p>
         <p>Constraints: Must contain from 8 to 30 characters.</p>

         <p>
            <b>PostgreSQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 128 characters.</p>")
    @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>The name for the master user.</p>

         <p>
            <b>Amazon Aurora</b>
         </p>
        <p>Not applicable. The name for the master user is managed by the DB cluster.
        </p>

         <p>
            <b>MariaDB</b>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>Required for MariaDB.</p>
            </li>
            <li>
              <p>Must be 1 to 16 letters or numbers.</p>
            </li>
            <li>
              <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>
      
         <p>
            <b>Microsoft SQL Server</b>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>Required for SQL Server.</p>
            </li>
            <li>
               <p>Must be 1 to 128 letters or numbers.</p>
            </li>
            <li>
               <p>The first character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>
      
         <p>
            <b>MySQL</b>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>Required for MySQL.</p>
            </li>
            <li>
               <p>Must be 1 to 16 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>

         <p>
            <b>Oracle</b>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>Required for Oracle.</p>
            </li>
            <li>
               <p>Must be 1 to 30 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>
 
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>Required for PostgreSQL.</p>
            </li>
            <li>
               <p>Must be 1 to 63 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
            </li>
         </ul>")
    @as("MasterUsername")
    masterUsername: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this instance.
      </p>
      
         <p>Not every database engine is available for every AWS Region.
      </p>

         <p>Valid Values:
      </p>
         <ul>
            <li>
               <p>
                  <code>aurora</code> (for MySQL 5.6-compatible Aurora)</p>
            </li>
            <li>
               <p>
                  <code>aurora-mysql</code> (for MySQL 5.7-compatible Aurora)</p>
            </li>
            <li>
               <p>
                  <code>aurora-postgresql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>.
          Not all DB instance classes are available in all AWS Regions, or for all database engines.
          For the full list of DB instance classes,
          and availability for your engine, see
          <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html\">DB Instance Class</a> in the <i>Amazon RDS User Guide.</i>
         </p>")
    @as("DBInstanceClass")
    dbinstanceClass: string_,
    @ocaml.doc("<p>The amount of storage (in gibibytes) to allocate for the DB instance.</p>
         <p>Type: Integer</p>
         <p>
            <b>Amazon Aurora</b>
         </p>
         <p>Not applicable. Aurora cluster volumes automatically grow as the amount of data in your 
          database increases, though you are only charged for the space that you use in an Aurora cluster volume.</p>

         <p>
            <b>MySQL</b>
         </p>
         <p>Constraints to the amount of storage for each storage type are the following:
      </p>
         <ul>
            <li>
               <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
            </li>
            <li>
               <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
            </li>
            <li>
               <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p>
            </li>
         </ul>
      
         <p>
            <b>MariaDB</b>
         </p>
         <p>Constraints to the amount of storage for each storage type are the following:
      </p>
         <ul>
            <li>
               <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
            </li>
            <li>
               <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
            </li>
            <li>
               <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p>
            </li>
         </ul>
      
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>Constraints to the amount of storage for each storage type are the following:
      </p>
         <ul>
            <li>
               <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
            </li>
            <li>
               <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
            </li>
            <li>
               <p>Magnetic storage (standard): Must be an integer from 5 to 3072.</p>
            </li>
         </ul>
      
         <p>
            <b>Oracle</b>
         </p>
         <p>Constraints to the amount of storage for each storage type are the following:
      </p>
         <ul>
            <li>
               <p>General Purpose (SSD) storage (gp2): Must be an integer from 20 to 65536.</p>
            </li>
            <li>
               <p>Provisioned IOPS storage (io1): Must be an integer from 100 to 65536.</p>
            </li>
            <li>
               <p>Magnetic storage (standard): Must be an integer from 10 to 3072.</p>
            </li>
         </ul>
      
         <p>
            <b>SQL Server</b>
         </p>
         <p>Constraints to the amount of storage for each storage type are the following:
      </p>
         <ul>
            <li>
               <p>General Purpose (SSD) storage (gp2):</p>
               <ul>
                  <li>
                     <p>Enterprise and Standard editions: Must be an integer from 200 to 16384.</p>
                  </li>
                  <li>
                     <p>Web and Express editions: Must be an integer from 20 to 16384.</p>
                  </li>
               </ul>            
            </li>
            <li>
               <p>Provisioned IOPS storage (io1):</p>
              <ul>
                  <li>
                     <p>Enterprise and Standard editions: Must be an integer from 200 to 16384.</p>
                  </li>
                  <li>
                     <p>Web and Express editions: Must be an integer from 100 to 16384.</p>
                  </li>
               </ul>            
            </li>
            <li>
               <p>Magnetic storage (standard):</p>
              <ul>
                  <li>
                     <p>Enterprise and Standard editions: Must be an integer from 200 to 1024.</p>
                  </li>
                  <li>
                     <p>Web and Express editions: Must be an integer from 20 to 1024.</p>
                  </li>
               </ul>            
            </li>
         </ul>")
    @as("AllocatedStorage")
    allocatedStorage: option<integerOptional>,
    @ocaml.doc("<p>The DB instance identifier. This parameter is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>mydbinstance</code>
         </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
    @ocaml.doc("<p>The meaning of this parameter differs according to the database engine you use.</p>
         <p>
            <b>MySQL</b>
         </p>
         <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, no database is created in the DB instance.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1 to 64 letters or numbers.</p>
            </li>
            <li>
               <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p>
            </li>
            <li>
               <p>Can't be a word reserved by the specified database engine</p>
            </li>
         </ul>
         <p>
            <b>MariaDB</b>
         </p>
         <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, no database is created in the DB instance.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1 to 64 letters or numbers.</p>
            </li>
            <li>
               <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p>
            </li>
            <li>
               <p>Can't be a word reserved by the specified database engine</p>
            </li>
         </ul>
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>The name of the database to create when the DB instance is created. If this parameter isn't specified, a database named <code>postgres</code> 
          is created in the DB instance.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1 to 63 letters, numbers, or underscores.</p>
            </li>
            <li>
               <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits (0-9).</p>
            </li>
            <li>
               <p>Can't be a word reserved by the specified database engine</p>
            </li>
         </ul>
         <p>
            <b>Oracle</b>
         </p>
         <p>The Oracle System ID (SID) of the created DB instance.
          If you specify <code>null</code>, the default value <code>ORCL</code> is used.
          You can't specify the string NULL, or any other reserved word, for <code>DBName</code>. 
      </p>
         <p>Default: <code>ORCL</code>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Can't be longer than 8 characters</p>
            </li>
         </ul>
         <p>
            <b>SQL Server</b>
         </p>
         <p>Not applicable. Must be null.</p>
         <p>
            <b>Amazon Aurora MySQL</b>
         </p>
         <p>The name of the database to create when the primary DB instance of the Aurora MySQL DB cluster is
          created. If this parameter isn't specified for an Aurora MySQL DB cluster, no database is created 
          in the DB cluster.</p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>It must contain 1 to 64 alphanumeric characters.</p>
            </li>
            <li>
              <p>It can't be a word reserved by the database engine.</p>
            </li>
         </ul>
         <p>
            <b>Amazon Aurora PostgreSQL</b>
         </p>
         <p>The name of the database to create when the primary DB instance of the Aurora PostgreSQL DB cluster is
          created. If this parameter isn't specified for an Aurora PostgreSQL DB cluster, 
          a database named <code>postgres</code> is created in the DB cluster.</p>
         <p>Constraints:</p>
         <ul>
            <li>
              <p>It must contain 1 to 63 alphanumeric characters.</p>
            </li>
            <li>
              <p>It must begin with a letter or an underscore.
                  Subsequent characters can be letters, underscores, or digits
                  (0 to 9).</p>
            </li>
            <li>
              <p>It can't be a word reserved by the
                  database engine.</p>
            </li>
         </ul>")
    @as("DBName")
    dbname: option<string_>,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBInstanceCommand"
  let make = (
    ~engine,
    ~dbinstanceClass,
    ~dbinstanceIdentifier,
    ~enableCustomerOwnedIp=?,
    ~maxAllocatedStorage=?,
    ~deletionProtection=?,
    ~processorFeatures=?,
    ~enableCloudwatchLogsExports=?,
    ~performanceInsightsRetentionPeriod=?,
    ~performanceInsightsKMSKeyId=?,
    ~enablePerformanceInsights=?,
    ~enableIAMDatabaseAuthentication=?,
    ~timezone=?,
    ~promotionTier=?,
    ~domainIAMRoleName=?,
    ~monitoringRoleArn=?,
    ~monitoringInterval=?,
    ~copyTagsToSnapshot=?,
    ~domain=?,
    ~kmsKeyId=?,
    ~storageEncrypted=?,
    ~tdeCredentialPassword=?,
    ~tdeCredentialArn=?,
    ~storageType=?,
    ~dbclusterIdentifier=?,
    ~tags=?,
    ~publiclyAccessible=?,
    ~ncharCharacterSetName=?,
    ~characterSetName=?,
    ~optionGroupName=?,
    ~iops=?,
    ~licenseModel=?,
    ~autoMinorVersionUpgrade=?,
    ~engineVersion=?,
    ~multiAZ=?,
    ~port=?,
    ~preferredBackupWindow=?,
    ~backupRetentionPeriod=?,
    ~dbparameterGroupName=?,
    ~preferredMaintenanceWindow=?,
    ~dbsubnetGroupName=?,
    ~availabilityZone=?,
    ~vpcSecurityGroupIds=?,
    ~dbsecurityGroups=?,
    ~masterUserPassword=?,
    ~masterUsername=?,
    ~allocatedStorage=?,
    ~dbname=?,
    (),
  ) =>
    new({
      enableCustomerOwnedIp: enableCustomerOwnedIp,
      maxAllocatedStorage: maxAllocatedStorage,
      deletionProtection: deletionProtection,
      processorFeatures: processorFeatures,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
      performanceInsightsRetentionPeriod: performanceInsightsRetentionPeriod,
      performanceInsightsKMSKeyId: performanceInsightsKMSKeyId,
      enablePerformanceInsights: enablePerformanceInsights,
      enableIAMDatabaseAuthentication: enableIAMDatabaseAuthentication,
      timezone: timezone,
      promotionTier: promotionTier,
      domainIAMRoleName: domainIAMRoleName,
      monitoringRoleArn: monitoringRoleArn,
      monitoringInterval: monitoringInterval,
      copyTagsToSnapshot: copyTagsToSnapshot,
      domain: domain,
      kmsKeyId: kmsKeyId,
      storageEncrypted: storageEncrypted,
      tdeCredentialPassword: tdeCredentialPassword,
      tdeCredentialArn: tdeCredentialArn,
      storageType: storageType,
      dbclusterIdentifier: dbclusterIdentifier,
      tags: tags,
      publiclyAccessible: publiclyAccessible,
      ncharCharacterSetName: ncharCharacterSetName,
      characterSetName: characterSetName,
      optionGroupName: optionGroupName,
      iops: iops,
      licenseModel: licenseModel,
      autoMinorVersionUpgrade: autoMinorVersionUpgrade,
      engineVersion: engineVersion,
      multiAZ: multiAZ,
      port: port,
      preferredBackupWindow: preferredBackupWindow,
      backupRetentionPeriod: backupRetentionPeriod,
      dbparameterGroupName: dbparameterGroupName,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      dbsubnetGroupName: dbsubnetGroupName,
      availabilityZone: availabilityZone,
      vpcSecurityGroupIds: vpcSecurityGroupIds,
      dbsecurityGroups: dbsecurityGroups,
      masterUserPassword: masterUserPassword,
      masterUsername: masterUsername,
      engine: engine,
      dbinstanceClass: dbinstanceClass,
      allocatedStorage: allocatedStorage,
      dbinstanceIdentifier: dbinstanceIdentifier,
      dbname: dbname,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyOptionGroup = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The description for the copied option group.</p>")
    @as("TargetOptionGroupDescription")
    targetOptionGroupDescription: string_,
    @ocaml.doc("<p>The identifier for the copied option group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Can't be null, empty, or blank</p>
            </li>
            <li>
               <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Can't end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-option-group</code>
         </p>")
    @as("TargetOptionGroupIdentifier")
    targetOptionGroupIdentifier: string_,
    @ocaml.doc("<p>The identifier for the source option group.
        </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must specify a valid option group.</p>
            </li>
         </ul>")
    @as("SourceOptionGroupIdentifier")
    sourceOptionGroupIdentifier: string_,
  }
  type response = {@as("OptionGroup") optionGroup: option<optionGroup>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CopyOptionGroupCommand"
  let make = (
    ~targetOptionGroupDescription,
    ~targetOptionGroupIdentifier,
    ~sourceOptionGroupIdentifier,
    ~tags=?,
    (),
  ) =>
    new({
      tags: tags,
      targetOptionGroupDescription: targetOptionGroupDescription,
      targetOptionGroupIdentifier: targetOptionGroupIdentifier,
      sourceOptionGroupIdentifier: sourceOptionGroupIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOptionGroups = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc(
      "<p>Filters the list of option groups to only include groups associated with a specific database engine version. If specified, then EngineName must also be specified.</p>"
    )
    @as("MajorEngineVersion")
    majorEngineVersion: option<string_>,
    @ocaml.doc("<p>Filters the list of option groups to only include groups associated with a specific database engine.</p>
         <p>Valid Values:
      </p>
         <ul>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("EngineName")
    engineName: option<string_>,
    @ocaml.doc("<p>
            The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
            you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous DescribeOptionGroups request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc(
      "<p>The name of the option group to describe. Can't be supplied together with EngineName or MajorEngineVersion.</p>"
    )
    @as("OptionGroupName")
    optionGroupName: option<string_>,
  }
  @ocaml.doc("<p>List of option groups.</p>")
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>List of option groups.</p>") @as("OptionGroupsList")
    optionGroupsList: option<optionGroupsList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeOptionGroupsCommand"
  let make = (
    ~majorEngineVersion=?,
    ~engineName=?,
    ~maxRecords=?,
    ~marker=?,
    ~filters=?,
    ~optionGroupName=?,
    (),
  ) =>
    new({
      majorEngineVersion: majorEngineVersion,
      engineName: engineName,
      maxRecords: maxRecords,
      marker: marker,
      filters: filters,
      optionGroupName: optionGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOptionGroupOptions = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
            The maximum number of records to include in the response.
            If more records exist than the specified <code>MaxRecords</code> value,
            a pagination token called a marker is included in the response so that
            you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter isn't currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc(
      "<p>If specified, filters the results to include only options for the specified major engine version.</p>"
    )
    @as("MajorEngineVersion")
    majorEngineVersion: option<string_>,
    @ocaml.doc("<p>A required parameter. Options available for the given engine name are described.</p>
         <p>Valid Values:
      </p>
         <ul>
            <li>
               <p>
                  <code>mariadb</code>
               </p>
            </li>
            <li>
               <p>
                  <code>mysql</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se1</code>
               </p>
            </li>
            <li>
               <p>
                  <code>oracle-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>postgres</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ee</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-se</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-ex</code>
               </p>
            </li>
            <li>
               <p>
                  <code>sqlserver-web</code>
               </p>
            </li>
         </ul>")
    @as("EngineName")
    engineName: string_,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @as("OptionGroupOptions") optionGroupOptions: option<optionGroupOptionsList>,
  }
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "DescribeOptionGroupOptionsCommand"
  let make = (~engineName, ~marker=?, ~maxRecords=?, ~filters=?, ~majorEngineVersion=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      majorEngineVersion: majorEngineVersion,
      engineName: engineName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBInstances = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>
        An optional pagination token provided by a previous
        <code>DescribeDBInstances</code> request.
        If this parameter is specified, the response includes
        only records beyond the marker,
        up to the value specified by <code>MaxRecords</code>.
        </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>
        The maximum number of records to include in the response.
        If more records exist than the specified <code>MaxRecords</code> value,
        a pagination token called a marker is included in the response so that
        you can retrieve the remaining results.
        </p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more DB instances to describe.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p>
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB 
              cluster Amazon Resource Names (ARNs). The results list will only include information about 
              the DB instances associated with the DB clusters identified by these ARNs.</p>
            </li>
            <li>
               <p>
                  <code>db-instance-id</code> - Accepts DB instance identifiers and DB 
              instance Amazon Resource Names (ARNs). The results list will only include information about
              the DB instances identified by these ARNs.</p>
            </li>
            <li>
               <p>
                  <code>dbi-resource-id</code> - Accepts DB instance resource identifiers. The results list will 
              only include information about the DB instances identified by these DB instance resource identifiers.</p>
            </li>
            <li>
               <p>
                  <code>domain</code> - Accepts Active Directory directory IDs. The results list will only 
              include information about the DB instances associated with these domains.</p>
            </li>
            <li>
               <p>
                  <code>engine</code> - Accepts engine names. The results list will only include information 
              about the DB instances for these engines.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-supplied instance identifier. If this parameter is specified, information from only the specific DB instance is returned. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: option<string_>,
  }
  @ocaml.doc("<p>
        Contains the result of a successful invocation of the <code>DescribeDBInstances</code> action.
        </p>")
  type response = {
    @ocaml.doc("<p>
        A list of <code>DBInstance</code> instances.
        </p>")
    @as("DBInstances")
    dbinstances: option<dbinstanceList>,
    @ocaml.doc("<p>
            An optional pagination token provided by a previous request.
            If this parameter is specified, the response includes
            only records beyond the marker,
            up to the value specified by <code>MaxRecords</code> .
        </p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBInstancesCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbinstanceIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
