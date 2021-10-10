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
@ocaml.doc("<p>This data type is used as a response element for queries on VPC security group
      membership.</p>")
type vpcSecurityGroupMembership = {
  @ocaml.doc("<p>The status of the VPC security group.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>The name of the VPC security group.</p>") @as("VpcSecurityGroupId")
  vpcSecurityGroupId: option<string_>,
}
type vpcSecurityGroupIdList = array<string_>
@ocaml.doc("<p>The version of the database engine that a DB instance can be upgraded to.</p>")
type upgradeTarget = {
  @ocaml.doc(
    "<p>A value that indicates whether a database engine is upgraded to a major version.</p>"
  )
  @as("IsMajorVersionUpgrade")
  isMajorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether the target version is applied to any source DB instances
      that have AutoMinorVersionUpgrade set to true.</p>")
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
@ocaml.doc("<p>A time zone associated with a <a>DBInstance</a>.</p>")
type timezone = {
  @ocaml.doc("<p>The name of the time zone.</p>") @as("TimezoneName") timezoneName: option<string_>,
}
@ocaml.doc("<p>Metadata assigned to an Amazon Neptune resource consisting of a key-value pair.</p>")
type tag = {
  @ocaml.doc("<p>A value is the optional value of the tag. The string value can be from 1 to 256 Unicode
      characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can only contain
      only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java
      regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Value")
  value: option<string_>,
  @ocaml.doc("<p>A key is the required name of the tag. The string value can be from 1 to 128 Unicode
      characters in length and can't be prefixed with \"aws:\" or \"rds:\". The string can only contain
      only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java
      regex: \"^([\\\\p{L}\\\\p{Z}\\\\p{N}_.:/=+\\\\-]*)$\").</p>")
  @as("Key")
  key: option<string_>,
}
type subnetIdentifierList = array<string_>
type stringList = array<string_>
type sourceIdsList = array<string_>
type readReplicaIdentifierList = array<string_>
type readReplicaDBInstanceIdentifierList = array<string_>
type readReplicaDBClusterIdentifierList = array<string_>
@ocaml.doc("<p>A range of integer values.</p>")
type range = {
  @ocaml.doc("<p>The step value for the range. For example, if you have a range of 5,000 to 10,000, with a
      step value of 1,000, the valid values start at 5,000 and step up by 1,000. Even though 7,500
      is within the range, it isn't a valid value for the range. The valid values are 5,000, 6,000,
      7,000, 8,000...</p>")
  @as("Step")
  step: option<integerOptional>,
  @ocaml.doc("<p>The maximum value in the range.</p>") @as("To") to: option<integer_>,
  @ocaml.doc("<p>The minimum value in the range.</p>") @as("From") from: option<integer_>,
}
@ocaml.doc("<p>Provides information about a pending maintenance action for a resource.</p>")
type pendingMaintenanceAction = {
  @ocaml.doc("<p>A description providing more detail about the maintenance action.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The effective date when the pending maintenance action is applied to the resource. This
      date takes into account opt-in requests received from the <a>ApplyPendingMaintenanceAction</a> API, the <code>AutoAppliedAfterDate</code>, and the
      <code>ForcedApplyDate</code>. This value is blank if an opt-in request has not been received
      and nothing has been specified as <code>AutoAppliedAfterDate</code> or
      <code>ForcedApplyDate</code>.</p>")
  @as("CurrentApplyDate")
  currentApplyDate: option<tstamp>,
  @ocaml.doc("<p>Indicates the type of opt-in request that has been received for the resource.</p>")
  @as("OptInStatus")
  optInStatus: option<string_>,
  @ocaml.doc("<p>The date when the maintenance action is automatically applied. The maintenance action is
      applied to the resource on this date regardless of the maintenance window for the resource. If
      this date is specified, any <code>immediate</code> opt-in requests are ignored.</p>")
  @as("ForcedApplyDate")
  forcedApplyDate: option<tstamp>,
  @ocaml.doc("<p>The date of the maintenance window when the action is applied. The maintenance action is
      applied to the resource during its first maintenance window after this date. If this date is
      specified, any <code>next-maintenance</code> opt-in requests are ignored.</p>")
  @as("AutoAppliedAfterDate")
  autoAppliedAfterDate: option<tstamp>,
  @ocaml.doc("<p>The type of pending maintenance action that is available for the resource.</p>")
  @as("Action")
  action: option<string_>,
}
@ocaml.doc("<p>Specifies a parameter.</p>")
type parameter = {
  @ocaml.doc("<p>Indicates when to apply parameter updates.</p>") @as("ApplyMethod")
  applyMethod: option<applyMethod>,
  @ocaml.doc("<p>The earliest engine version to which the parameter can apply.</p>")
  @as("MinimumEngineVersion")
  minimumEngineVersion: option<string_>,
  @ocaml.doc("<p> Indicates whether (<code>true</code>) or not (<code>false</code>) the parameter can be
      modified. Some parameters have security or operational implications that prevent them from
      being changed.</p>")
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
@ocaml.doc("<p>Not supported by Neptune.</p>")
type optionGroupMembership = {
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("OptionGroupName")
  optionGroupName: option<string_>,
}
type logTypeList = array<string_>
type keyList = array<string_>
type filterValueList = array<string_>
type eventCategoriesList = array<string_>
@ocaml.doc("<p>Specifies a connection endpoint.</p>

         <p>For the data structure that represents Amazon Neptune DB cluster endpoints,
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
@ocaml.doc("<p>A range of double values.</p>")
type doubleRange = {
  @ocaml.doc("<p>The maximum value in the range.</p>") @as("To") to: option<double>,
  @ocaml.doc("<p>The minimum value in the range.</p>") @as("From") from: option<double>,
}
@ocaml.doc("<p>An Active Directory Domain membership record associated with a DB instance.</p>")
type domainMembership = {
  @ocaml.doc(
    "<p>The name of the IAM role to be used when making API calls to the Directory Service.</p>"
  )
  @as("IAMRoleName")
  iamroleName: option<string_>,
  @ocaml.doc("<p>The fully qualified domain name of the Active Directory Domain.</p>") @as("FQDN")
  fqdn: option<string_>,
  @ocaml.doc("<p>The status of the DB instance's Active Directory Domain membership, such as joined,
      pending-join, failed etc).</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The identifier of the Active Directory Domain.</p>") @as("Domain")
  domain: option<string_>,
}
type dbsecurityGroupNameList = array<string_>
@ocaml.doc("<p>Specifies membership in a designated DB security group.</p>")
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
                  <a>CreateDBInstance</a>
               </p>
            </li>
            <li>
               <p>
                  <a>DeleteDBInstance</a>
               </p>
            </li>
            <li>
               <p>
                  <a>ModifyDBInstance</a>
               </p>
            </li>
            <li>
               <p>
                  <a>RebootDBInstance</a>
               </p>
            </li>
         </ul>")
type dbparameterGroupStatus = {
  @ocaml.doc("<p>The status of parameter updates.</p>") @as("ParameterApplyStatus")
  parameterApplyStatus: option<string_>,
  @ocaml.doc("<p>The name of the DP parameter group.</p>") @as("DBParameterGroupName")
  dbparameterGroupName: option<string_>,
}
@ocaml.doc("<p>Contains the details of an Amazon Neptune DB parameter group.</p>
         <p>This data type is used as a response element in the <a>DescribeDBParameterGroups</a> action.</p>")
type dbparameterGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB parameter group.</p>")
  @as("DBParameterGroupArn")
  dbparameterGroupArn: option<string_>,
  @ocaml.doc("<p>Provides the customer-specified description for this DB parameter group.</p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>Provides the name of the DB parameter group family that this DB parameter group is
      compatible with.</p>")
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
  @ocaml.doc("<p>Provides the name of the DB parameter group.</p>") @as("DBParameterGroupName")
  dbparameterGroupName: option<string_>,
}
@ocaml.doc("<p>Provides a list of status information for a DB instance.</p>")
type dbinstanceStatusInfo = {
  @ocaml.doc("<p>Details of the error if there is an error for the instance. If the instance is not in an
      error state, this value is blank.</p>")
  @as("Message")
  message: option<string_>,
  @ocaml.doc("<p>Status of the DB instance. For a StatusType of read replica, the values can be
      replicating, error, stopped, or terminated.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Boolean value that is true if the instance is operating normally, or false if the instance
      is in an error state.</p>")
  @as("Normal")
  normal: option<boolean_>,
  @ocaml.doc("<p>This value is currently \"read replication.\"</p>") @as("StatusType")
  statusType: option<string_>,
}
@ocaml.doc("<p>Describes an Amazon Identity and Access Management (IAM) role that is associated with a DB
      cluster.</p>")
type dbclusterRole = {
  @ocaml.doc("<p>The name of the feature associated with the Amazon Identity and Access Management (IAM) role.
      For the list of supported feature names, see <a>DBEngineVersion</a>.
    </p>")
  @as("FeatureName")
  featureName: option<string_>,
  @ocaml.doc("<p>Describes the state of association between the IAM role and the DB cluster. The Status
      property returns one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - the IAM role ARN is associated with the DB cluster and can be
          used to access other Amazon services on your behalf.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - the IAM role ARN is being associated with the DB
          cluster.</p>
            </li>
            <li>
               <p>
                  <code>INVALID</code> - the IAM role ARN is associated with the DB cluster, but the DB
          cluster is unable to assume the IAM role in order to access other Amazon services on your
          behalf.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB
      cluster.</p>")
  @as("RoleArn")
  roleArn: option<string_>,
}
@ocaml.doc("<p>Contains the details of an Amazon Neptune DB cluster parameter group.</p>
         <p>This data type is used as a response element in the <a>DescribeDBClusterParameterGroups</a> action.</p>")
type dbclusterParameterGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB cluster parameter group.</p>")
  @as("DBClusterParameterGroupArn")
  dbclusterParameterGroupArn: option<string_>,
  @ocaml.doc(
    "<p>Provides the customer-specified description for this DB cluster parameter group.</p>"
  )
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>Provides the name of the DB parameter group family that this DB cluster parameter group is
      compatible with.</p>")
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
  @ocaml.doc("<p>Provides the name of the DB cluster parameter group.</p>")
  @as("DBClusterParameterGroupName")
  dbclusterParameterGroupName: option<string_>,
}
@ocaml.doc("<p>Not supported by Neptune.</p>")
type dbclusterOptionGroupStatus = {
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("Status") status: option<string_>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("DBClusterOptionGroupName")
  dbclusterOptionGroupName: option<string_>,
}
@ocaml.doc("<p>Contains information about an instance that is part of a DB cluster.</p>")
type dbclusterMember = {
  @ocaml.doc("<p>A value that specifies the order in which a Read Replica is promoted to the primary
      instance after a failure of the existing primary instance.</p>")
  @as("PromotionTier")
  promotionTier: option<integerOptional>,
  @ocaml.doc("<p>Specifies the status of the DB cluster parameter group for this member of the DB
      cluster.</p>")
  @as("DBClusterParameterGroupStatus")
  dbclusterParameterGroupStatus: option<string_>,
  @ocaml.doc("<p>Value that is <code>true</code> if the cluster member is the primary instance for the DB
      cluster and <code>false</code> otherwise.</p>")
  @as("IsClusterWriter")
  isClusterWriter: option<boolean_>,
  @ocaml.doc("<p>Specifies the instance identifier for this member of the DB cluster.</p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
}
@ocaml.doc("<p>Specifies a character set.</p>")
type characterSet = {
  @ocaml.doc("<p>The description of the character set.</p>") @as("CharacterSetDescription")
  characterSetDescription: option<string_>,
  @ocaml.doc("<p>The name of the character set.</p>") @as("CharacterSetName")
  characterSetName: option<string_>,
}
type availabilityZones = array<string_>
@ocaml.doc("<p>Specifies an Availability Zone.</p>")
type availabilityZone = {
  @ocaml.doc("<p>The name of the availability zone.</p>") @as("Name") name: option<string_>,
}
type attributeValueList = array<string_>
type vpcSecurityGroupMembershipList = array<vpcSecurityGroupMembership>
type validUpgradeTargetList = array<upgradeTarget>
type tagList_ = array<tag>
type supportedTimezonesList = array<timezone>
type supportedCharacterSetsList = array<characterSet>
@ocaml.doc("<p>Specifies a subnet.</p>
         <p> This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>")
type subnet = {
  @ocaml.doc("<p>Specifies the status of the subnet.</p>") @as("SubnetStatus")
  subnetStatus: option<string_>,
  @ocaml.doc("<p>Specifies the EC2 Availability Zone that the subnet is in.</p>")
  @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>Specifies the identifier of the subnet.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<string_>,
}
type rangeList = array<range>
type pendingMaintenanceActionDetails = array<pendingMaintenanceAction>
@ocaml.doc("<p>A list of the log types whose configuration is still pending. In other
      words, these log types are in the process of being activated or deactivated.</p>")
type pendingCloudwatchLogsExports = {
  @ocaml.doc("<p>Log types that are in the process of being enabled. After they are
      enabled, these log types are exported to CloudWatch Logs.</p>")
  @as("LogTypesToDisable")
  logTypesToDisable: option<logTypeList>,
  @ocaml.doc("<p>Log types that are in the process of being deactivated. After they are
      deactivated, these log types aren't exported to CloudWatch Logs.</p>")
  @as("LogTypesToEnable")
  logTypesToEnable: option<logTypeList>,
}
type parametersList = array<parameter>
type optionGroupMembershipList = array<optionGroupMembership>
@ocaml.doc("<p>This type is not currently supported.</p>")
type filter = {
  @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Values")
  values: filterValueList,
  @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Name") name: string_,
}
@ocaml.doc(
  "<p>Contains the results of a successful invocation of the <a>DescribeEventSubscriptions</a> action.</p>"
)
type eventSubscription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event subscription.</p>")
  @as("EventSubscriptionArn")
  eventSubscriptionArn: option<string_>,
  @ocaml.doc("<p>A Boolean value indicating if the subscription is enabled. True indicates the subscription
      is enabled.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>A list of event categories for the event notification subscription.</p>")
  @as("EventCategoriesList")
  eventCategoriesList: option<eventCategoriesList>,
  @ocaml.doc("<p>A list of source IDs for the event notification subscription.</p>")
  @as("SourceIdsList")
  sourceIdsList: option<sourceIdsList>,
  @ocaml.doc("<p>The source type for the event notification subscription.</p>") @as("SourceType")
  sourceType: option<string_>,
  @ocaml.doc("<p>The time the event notification subscription was created.</p>")
  @as("SubscriptionCreationTime")
  subscriptionCreationTime: option<string_>,
  @ocaml.doc("<p>The status of the event notification subscription.</p>
         <p>Constraints:</p>
         <p>Can be one of the following: creating | modifying | deleting | active | no-permission |
      topic-not-exist</p>
         <p>The status \"no-permission\" indicates that Neptune no longer has permission to post to the
      SNS topic. The status \"topic-not-exist\" indicates that the topic was deleted after the
      subscription was created.</p>")
  @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>The topic ARN of the event notification subscription.</p>") @as("SnsTopicArn")
  snsTopicArn: option<string_>,
  @ocaml.doc("<p>The event notification subscription Id.</p>") @as("CustSubscriptionId")
  custSubscriptionId: option<string_>,
  @ocaml.doc(
    "<p>The Amazon customer account associated with the event notification subscription.</p>"
  )
  @as("CustomerAwsId")
  customerAwsId: option<string_>,
}
@ocaml.doc(
  "<p>Contains the results of a successful invocation of the <a>DescribeEventCategories</a> action.</p>"
)
type eventCategoriesMap = {
  @ocaml.doc("<p>The event categories for the specified source type</p>") @as("EventCategories")
  eventCategories: option<eventCategoriesList>,
  @ocaml.doc("<p>The source type that the returned categories belong to</p>") @as("SourceType")
  sourceType: option<string_>,
}
@ocaml.doc("<p> This data type is used as a response element in the <a>DescribeEvents</a>
      action.</p>")
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
type doubleRangeList = array<doubleRange>
type domainMembershipList = array<domainMembership>
type dbsecurityGroupMembershipList = array<dbsecurityGroupMembership>
type dbparameterGroupStatusList = array<dbparameterGroupStatus>
type dbparameterGroupList = array<dbparameterGroup>
type dbinstanceStatusInfoList = array<dbinstanceStatusInfo>
@ocaml.doc("<p>Contains the name and values of a manual DB cluster snapshot attribute.</p>
         <p>Manual DB cluster snapshot attributes are used to authorize other Amazon accounts to restore
      a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>")
type dbclusterSnapshotAttribute = {
  @ocaml.doc("<p>The value(s) for the manual DB cluster snapshot attribute.</p>
         <p>If the <code>AttributeName</code> field is set to <code>restore</code>, then this element
      returns a list of IDs of the Amazon accounts that are authorized to copy or restore the manual DB
      cluster snapshot. If a value of <code>all</code> is in the list, then the manual DB cluster
      snapshot is public and available for any Amazon account to copy or restore.</p>")
  @as("AttributeValues")
  attributeValues: option<attributeValueList>,
  @ocaml.doc("<p>The name of the manual DB cluster snapshot attribute.</p>
         <p>The attribute named <code>restore</code> refers to the list of Amazon accounts that have
      permission to copy or restore the manual DB cluster snapshot. For more information, see the
      <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>")
  @as("AttributeName")
  attributeName: option<string_>,
}
@ocaml.doc("<p>Contains the details for an Amazon Neptune DB cluster snapshot</p>
         <p>This data type is used as a response element in the <a>DescribeDBClusterSnapshots</a> action.</p>")
type dbclusterSnapshot = {
  @ocaml.doc("<p>True if mapping of Amazon Identity and Access Management (IAM) accounts to database accounts
      is enabled, and otherwise false.</p>")
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>If the DB cluster snapshot was copied from a source DB cluster snapshot, the Amazon
      Resource Name (ARN) for the source DB cluster snapshot, otherwise, a null value.</p>")
  @as("SourceDBClusterSnapshotArn")
  sourceDBClusterSnapshotArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB cluster snapshot.</p>")
  @as("DBClusterSnapshotArn")
  dbclusterSnapshotArn: option<string_>,
  @ocaml.doc("<p>If <code>StorageEncrypted</code> is true, the Amazon KMS key identifier for the encrypted DB
      cluster snapshot.</p>")
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
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the time when the DB cluster was created, in Universal Coordinated Time
      (UTC).</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>Provides the VPC ID associated with the DB cluster snapshot.</p>") @as("VpcId")
  vpcId: option<string_>,
  @ocaml.doc("<p>Specifies the port that the DB cluster was listening on at the time of the
      snapshot.</p>")
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Specifies the status of this DB cluster snapshot.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies the allocated storage size in gibibytes (GiB).</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>Specifies the name of the database engine.</p>") @as("Engine")
  engine: option<string_>,
  @ocaml.doc(
    "<p>Provides the time when the snapshot was taken, in Universal Coordinated Time (UTC).</p>"
  )
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<tstamp>,
  @ocaml.doc("<p>Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was
      created from.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the identifier for a DB cluster snapshot. Must match the identifier
      of an existing snapshot.</p>

         <p>After you restore a DB cluster using a <code>DBClusterSnapshotIdentifier</code>,
      you must specify the same <code>DBClusterSnapshotIdentifier</code> for any future
      updates to the DB cluster. When you specify this property for an update, the DB
      cluster is not restored from the snapshot again, and the data in the database is not
      changed.</p>

         <p>However, if you don't specify the <code>DBClusterSnapshotIdentifier</code>, an empty
      DB cluster is created, and the original DB cluster is deleted. If you specify a
      property that is different from the previous snapshot restore property, the DB
      cluster is restored from the snapshot specified by the <code>DBClusterSnapshotIdentifier</code>,
      and the original DB cluster is deleted.</p>")
  @as("DBClusterSnapshotIdentifier")
  dbclusterSnapshotIdentifier: option<string_>,
  @ocaml.doc("<p>Provides the list of EC2 Availability Zones that instances in the DB cluster snapshot can
      be restored in.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
}
type dbclusterRoles = array<dbclusterRole>
type dbclusterParameterGroupList = array<dbclusterParameterGroup>
type dbclusterOptionGroupMemberships = array<dbclusterOptionGroupStatus>
type dbclusterMemberList = array<dbclusterMember>
@ocaml.doc("<p>This data type represents the information you need to connect to an Amazon Neptune DB cluster.
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
         <p>For the data structure that represents Amazon Neptune DB instance endpoints,
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
  @ocaml.doc("<p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
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
@ocaml.doc("<p>The configuration setting for the log types to be enabled for export
      to CloudWatch Logs for a specific DB instance or DB cluster.</p>

         <p>The <code>EnableLogTypes</code> and <code>DisableLogTypes</code> arrays
      determine which logs will be exported (or not exported) to CloudWatch Logs.</p>")
type cloudwatchLogsExportConfiguration = {
  @ocaml.doc("<p>The list of log types to disable.</p>") @as("DisableLogTypes")
  disableLogTypes: option<logTypeList>,
  @ocaml.doc("<p>The list of log types to enable.</p>") @as("EnableLogTypes")
  enableLogTypes: option<logTypeList>,
}
type availabilityZoneList = array<availabilityZone>
@ocaml.doc("<p>Information about valid modifications that you can make to your DB
      instance.</p>
         <p>Contains the result of a successful call to the <a>DescribeValidDBInstanceModifications</a> action.</p>")
type validStorageOptions = {
  @ocaml.doc("<p>The valid range of Provisioned IOPS to gibibytes of storage multiplier. For example, 3-10,
      which means that provisioned IOPS can be between 3 and 10 times storage.</p>")
  @as("IopsToStorageRatio")
  iopsToStorageRatio: option<doubleRangeList>,
  @ocaml.doc("<p>The valid range of provisioned IOPS. For example, 1000-20000.</p>")
  @as("ProvisionedIops")
  provisionedIops: option<rangeList>,
  @ocaml.doc("<p>The valid range of storage in gibibytes. For example, 100 to 16384.</p>")
  @as("StorageSize")
  storageSize: option<rangeList>,
  @ocaml.doc("<p>The valid storage types for your DB instance. For example, gp2, io1.</p>")
  @as("StorageType")
  storageType: option<string_>,
}
type subnetList = array<subnet>
@ocaml.doc("<p>Describes the pending maintenance actions for a resource.</p>")
type resourcePendingMaintenanceActions = {
  @ocaml.doc("<p>A list that provides details about the pending maintenance actions for the
      resource.</p>")
  @as("PendingMaintenanceActionDetails")
  pendingMaintenanceActionDetails: option<pendingMaintenanceActionDetails>,
  @ocaml.doc("<p>The ARN of the resource that has pending maintenance actions.</p>")
  @as("ResourceIdentifier")
  resourceIdentifier: option<string_>,
}
@ocaml.doc("<p> This data type is used as a response element in the <a>ModifyDBInstance</a>
      action.</p>")
type pendingModifiedValues = {
  @ocaml.doc("<p>This <code>PendingCloudwatchLogsExports</code> structure specifies
      pending changes to which CloudWatch logs are enabled and which are disabled.</p>")
  @as("PendingCloudwatchLogsExports")
  pendingCloudwatchLogsExports: option<pendingCloudwatchLogsExports>,
  @ocaml.doc("<p>The new DB subnet group for the DB instance.</p>") @as("DBSubnetGroupName")
  dbsubnetGroupName: option<string_>,
  @ocaml.doc("<p>Specifies the identifier of the CA certificate for the DB instance.</p>")
  @as("CACertificateIdentifier")
  cacertificateIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the storage type to be associated with the DB instance.</p>")
  @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc("<p> Contains the new <code>DBInstanceIdentifier</code> for the DB instance that will be
      applied or is currently being applied.</p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the new Provisioned IOPS value for the DB instance that will be applied or is
      currently being applied.</p>")
  @as("Iops")
  iops: option<integerOptional>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("LicenseModel") licenseModel: option<string_>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc(
    "<p>Indicates that the Single-AZ DB instance is to change to a Multi-AZ deployment.</p>"
  )
  @as("MultiAZ")
  multiAZ: option<booleanOptional>,
  @ocaml.doc(
    "<p>Specifies the pending number of days for which automated backups are retained.</p>"
  )
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>Specifies the pending port for the DB instance.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUserPassword")
  masterUserPassword: option<string_>,
  @ocaml.doc("<p> Contains the new <code>AllocatedStorage</code> size for the DB instance that will be
      applied or is currently being applied.</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integerOptional>,
  @ocaml.doc("<p> Contains the new <code>DBInstanceClass</code> for the DB instance that will be applied or
      is currently being applied.</p>")
  @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
}
@ocaml.doc("<p>Contains a list of available options for a DB instance.</p>
         <p> This data type is used as a response element in the <a>DescribeOrderableDBInstanceOptions</a> action.</p>")
type orderableDBInstanceOption = {
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
  @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
  @as("SupportsPerformanceInsights")
  supportsPerformanceInsights: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance supports IAM database authentication.</p>")
  @as("SupportsIAMDatabaseAuthentication")
  supportsIAMDatabaseAuthentication: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance supports Enhanced Monitoring at intervals from 1 to 60
      seconds.</p>")
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
  @ocaml.doc("<p>Indicates whether a DB instance can have a Read Replica.</p>")
  @as("ReadReplicaCapable")
  readReplicaCapable: option<boolean_>,
  @ocaml.doc("<p>Indicates whether a DB instance is Multi-AZ capable.</p>") @as("MultiAZCapable")
  multiAZCapable: option<boolean_>,
  @ocaml.doc("<p>A list of Availability Zones for a DB instance.</p>") @as("AvailabilityZones")
  availabilityZones: option<availabilityZoneList>,
  @ocaml.doc("<p>The license model for a DB instance.</p>") @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>The DB instance class for a DB instance.</p>") @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc("<p>The engine version of a DB instance.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>The engine type of a DB instance.</p>") @as("Engine") engine: option<string_>,
}
type filterList = array<filter>
type eventSubscriptionsList = array<eventSubscription>
type eventList = array<event>
type eventCategoriesMapList = array<eventCategoriesMap>
@ocaml.doc(
  "<p> Contains the result of a successful invocation of the <a>DescribeEngineDefaultParameters</a> action.</p>"
)
type engineDefaults = {
  @ocaml.doc("<p>Contains a list of engine default parameters.</p>") @as("Parameters")
  parameters: option<parametersList>,
  @ocaml.doc("<p> An optional pagination token provided by a previous EngineDefaults request. If this
      parameter is specified, the response includes only records beyond the marker, up to the value
      specified by <code>MaxRecords</code> .</p>")
  @as("Marker")
  marker: option<string_>,
  @ocaml.doc("<p>Specifies the name of the DB parameter group family that the engine default parameters
      apply to.</p>")
  @as("DBParameterGroupFamily")
  dbparameterGroupFamily: option<string_>,
}
@ocaml.doc(
  "<p> This data type is used as a response element in the action <a>DescribeDBEngineVersions</a>.</p>"
)
type dbengineVersion = {
  @ocaml.doc("<p>Indicates whether the database engine version supports read replicas.</p>")
  @as("SupportsReadReplica")
  supportsReadReplica: option<boolean_>,
  @ocaml.doc("<p>A value that indicates whether the engine version supports exporting the log types
      specified by ExportableLogTypes to CloudWatch Logs.</p>")
  @as("SupportsLogExportsToCloudwatchLogs")
  supportsLogExportsToCloudwatchLogs: option<boolean_>,
  @ocaml.doc("<p>The types of logs that the database engine has available for export to CloudWatch
      Logs.</p>")
  @as("ExportableLogTypes")
  exportableLogTypes: option<logTypeList>,
  @ocaml.doc("<p>A list of the time zones supported by this engine for the <code>Timezone</code> parameter
      of the <code>CreateDBInstance</code> action.</p>")
  @as("SupportedTimezones")
  supportedTimezones: option<supportedTimezonesList>,
  @ocaml.doc(
    "<p>A list of engine versions that this database engine version can be upgraded to.</p>"
  )
  @as("ValidUpgradeTarget")
  validUpgradeTarget: option<validUpgradeTargetList>,
  @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
  @as("SupportedCharacterSets")
  supportedCharacterSets: option<supportedCharacterSetsList>,
  @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
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
type dbclusterSnapshotAttributeList = array<dbclusterSnapshotAttribute>
type dbclusterEndpointList = array<dbclusterEndpoint>
@ocaml.doc("<p>Contains the details of an Amazon Neptune DB cluster.</p>
         <p>This data type is used as a response element in the <a>DescribeDBClusters</a> action.</p>")
type dbcluster = {
  @ocaml.doc("<p>Time at which the DB cluster will be automatically restarted.</p>")
  @as("AutomaticRestartTime")
  automaticRestartTime: option<tstamp>,
  @ocaml.doc("<p>If set to <code>true</code>, the DB cluster can be cloned across accounts.</p>")
  @as("CrossAccountClone")
  crossAccountClone: option<booleanOptional>,
  @ocaml.doc("<p>Indicates whether or not the DB cluster has deletion protection enabled.
      The database can't be deleted when deletion protection is enabled.</p>")
  @as("DeletionProtection")
  deletionProtection: option<booleanOptional>,
  @ocaml.doc(
    "<p>A list of log types that this DB cluster is configured to export to CloudWatch Logs.</p>"
  )
  @as("EnabledCloudwatchLogsExports")
  enabledCloudwatchLogsExports: option<logTypeList>,
  @ocaml.doc("<p>
            <i>If set to <code>true</code>, tags are copied to any snapshot of
      the DB cluster that is created.</i>
         </p>")
  @as("CopyTagsToSnapshot")
  copyTagsToSnapshot: option<booleanOptional>,
  @ocaml.doc("<p>Specifies the time when the DB cluster was created, in Universal Coordinated Time
      (UTC).</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<tstamp>,
  @ocaml.doc("<p>Identifies the clone group to which the DB cluster is associated.</p>")
  @as("CloneGroupId")
  cloneGroupId: option<string_>,
  @ocaml.doc("<p>True if mapping of Amazon Identity and Access Management (IAM) accounts to database accounts
      is enabled, and otherwise false.</p>")
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>Provides a list of the Amazon Identity and Access Management (IAM) roles that are associated
      with the DB cluster. IAM roles that are associated with a DB cluster grant permission for the
      DB cluster to access other Amazon services on your behalf.</p>")
  @as("AssociatedRoles")
  associatedRoles: option<dbclusterRoles>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB cluster.</p>") @as("DBClusterArn")
  dbclusterArn: option<string_>,
  @ocaml.doc("<p>The Amazon Region-unique, immutable identifier for the DB cluster. This identifier is found
      in Amazon CloudTrail log entries whenever the Amazon KMS key for the DB cluster is accessed.</p>")
  @as("DbClusterResourceId")
  dbClusterResourceId: option<string_>,
  @ocaml.doc("<p>If <code>StorageEncrypted</code> is true, the Amazon KMS key identifier for the
      encrypted DB cluster.</p>")
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
  @ocaml.doc("<p>Contains one or more identifiers of the Read Replicas associated with this DB
      cluster.</p>")
  @as("ReadReplicaIdentifiers")
  readReplicaIdentifiers: option<readReplicaIdentifierList>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("ReplicationSourceIdentifier")
  replicationSourceIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the weekly time range during which system maintenance can occur, in Universal
      Coordinated Time (UTC).</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>Specifies the daily time range during which automated backups are created if automated
      backups are enabled, as determined by the <code>BackupRetentionPeriod</code>.</p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<string_>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("DBClusterOptionGroupMemberships")
  dbclusterOptionGroupMemberships: option<dbclusterOptionGroupMemberships>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the port that the database engine is listening on.</p>") @as("Port")
  port: option<integerOptional>,
  @ocaml.doc("<p>Specifies the latest time to which a database can be restored with point-in-time
      restore.</p>")
  @as("LatestRestorableTime")
  latestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Provides the name of the database engine to be used for this DB cluster.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc(
    "<p>Specifies whether the DB cluster has instances in multiple Availability Zones.</p>"
  )
  @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc("<p>The reader endpoint for the DB cluster. The reader endpoint for a DB cluster load-balances
      connections across the Read Replicas that are available in a DB cluster. As clients request
      new connections to the reader endpoint, Neptune distributes the connection requests among the
      Read Replicas in the DB cluster. This functionality can help balance your read workload across
      multiple Read Replicas in your DB cluster.</p>
         <p>If a failover occurs, and the Read Replica that you are connected to is promoted to be the
      primary instance, your connection is dropped. To continue sending your read workload to other
      Read Replicas in the cluster, you can then reconnect to the reader endpoint.</p>")
  @as("ReaderEndpoint")
  readerEndpoint: option<string_>,
  @ocaml.doc("<p>Specifies the connection endpoint for the primary instance of the DB cluster.</p>")
  @as("Endpoint")
  endpoint: option<string_>,
  @ocaml.doc("<p>Specifies the earliest time to which a database can be restored with point-in-time
      restore.</p>")
  @as("EarliestRestorableTime")
  earliestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Specifies the progress of the operation as a percentage.</p>")
  @as("PercentProgress")
  percentProgress: option<string_>,
  @ocaml.doc("<p>Specifies the current state of this DB cluster.</p>") @as("Status")
  status: option<string_>,
  @ocaml.doc("<p>Specifies information on the subnet group associated with the DB cluster, including the
      name, description, and subnets in the subnet group.</p>")
  @as("DBSubnetGroup")
  dbsubnetGroup: option<string_>,
  @ocaml.doc("<p>Specifies the name of the DB cluster parameter group for the DB cluster.</p>")
  @as("DBClusterParameterGroup")
  dbclusterParameterGroup: option<string_>,
  @ocaml.doc("<p>Contains a user-supplied DB cluster identifier. This identifier is the unique key that
      identifies a DB cluster.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc("<p>Contains the name of the initial database of this DB cluster that was provided at create
      time, if one was specified when the DB cluster was created. This same name is returned for the
      life of the DB cluster.</p>")
  @as("DatabaseName")
  databaseName: option<string_>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("CharacterSetName")
  characterSetName: option<string_>,
  @ocaml.doc("<p>Specifies the number of days for which automatic DB snapshots are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integerOptional>,
  @ocaml.doc("<p>Provides the list of EC2 Availability Zones that instances in the DB cluster can be
      created in.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
  @ocaml.doc("<p>
            <code>AllocatedStorage</code> always returns 1, because Neptune DB cluster storage size is
      not fixed, but instead automatically adjusts as needed.</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integerOptional>,
}
type validStorageOptionsList = array<validStorageOptions>
type pendingMaintenanceActions = array<resourcePendingMaintenanceActions>
type orderableDBInstanceOptionsList = array<orderableDBInstanceOption>
@ocaml.doc("<p>Contains the details of an Amazon Neptune DB subnet group.</p>
         <p>This data type is used as a response element in the <a>DescribeDBSubnetGroups</a> action.</p>")
type dbsubnetGroup = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB subnet group.</p>")
  @as("DBSubnetGroupArn")
  dbsubnetGroupArn: option<string_>,
  @ocaml.doc("<p> Contains a list of <a>Subnet</a> elements.</p>") @as("Subnets")
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
type dbengineVersionList = array<dbengineVersion>
@ocaml.doc("<p>Contains the results of a successful call to the <a>DescribeDBClusterSnapshotAttributes</a> API action.</p>
         <p>Manual DB cluster snapshot attributes are used to authorize other Amazon accounts to copy or
      restore a manual DB cluster snapshot. For more information, see the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>")
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
type dbclusterList = array<dbcluster>
@ocaml.doc("<p>Information about valid modifications that you can make to your DB instance. Contains the
      result of a successful call to the <a>DescribeValidDBInstanceModifications</a>
      action. You can use this information when you call <a>ModifyDBInstance</a>.
   </p>")
type validDBInstanceModificationsMessage = {
  @ocaml.doc("<p>Valid storage options for your DB instance.</p>") @as("Storage")
  storage: option<validStorageOptionsList>,
}
type dbsubnetGroups = array<dbsubnetGroup>
@ocaml.doc("<p>Contains the details of an Amazon Neptune DB instance.</p>
         <p>This data type is used as a response element in the <a>DescribeDBInstances</a> action.</p>")
type dbinstance = {
  @ocaml.doc("<p>Indicates whether or not the DB instance has deletion protection enabled.
      The instance can't be deleted when deletion protection is enabled. See <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html\">Deleting
      a DB Instance</a>.</p>")
  @as("DeletionProtection")
  deletionProtection: option<booleanOptional>,
  @ocaml.doc("<p>A list of log types that this DB instance is configured to export to CloudWatch
      Logs.</p>")
  @as("EnabledCloudwatchLogsExports")
  enabledCloudwatchLogsExports: option<logTypeList>,
  @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
  @as("PerformanceInsightsKMSKeyId")
  performanceInsightsKMSKeyId: option<string_>,
  @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
  @as("PerformanceInsightsEnabled")
  performanceInsightsEnabled: option<booleanOptional>,
  @ocaml.doc("<p>True if Amazon Identity and Access Management (IAM) authentication is enabled, and otherwise
      false.</p>")
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>Not supported.</p>") @as("Timezone") timezone: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DB instance.</p>") @as("DBInstanceArn")
  dbinstanceArn: option<string_>,
  @ocaml.doc("<p>A value that specifies the order in which a Read Replica is promoted to the primary
      instance after a failure of the existing primary instance.
   </p>")
  @as("PromotionTier")
  promotionTier: option<integerOptional>,
  @ocaml.doc("<p>The ARN for the IAM role that permits Neptune to send Enhanced Monitoring metrics to
      Amazon CloudWatch Logs.</p>")
  @as("MonitoringRoleArn")
  monitoringRoleArn: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log stream that receives the
      Enhanced Monitoring metrics data for the DB instance.</p>")
  @as("EnhancedMonitoringResourceArn")
  enhancedMonitoringResourceArn: option<string_>,
  @ocaml.doc("<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
      for the DB instance.</p>")
  @as("MonitoringInterval")
  monitoringInterval: option<integerOptional>,
  @ocaml.doc("<p>Specifies whether tags are copied from the DB instance to snapshots of the DB
      instance.</p>")
  @as("CopyTagsToSnapshot")
  copyTagsToSnapshot: option<boolean_>,
  @ocaml.doc("<p>Not supported</p>") @as("DomainMemberships")
  domainMemberships: option<domainMembershipList>,
  @ocaml.doc("<p>The identifier of the CA certificate for this DB instance.</p>")
  @as("CACertificateIdentifier")
  cacertificateIdentifier: option<string_>,
  @ocaml.doc("<p>The Amazon Region-unique, immutable identifier for the DB instance. This identifier is found
      in Amazon CloudTrail log entries whenever the Amazon KMS key for the DB instance is accessed.</p>")
  @as("DbiResourceId")
  dbiResourceId: option<string_>,
  @ocaml.doc("<p> Not supported: The encryption for DB instances is managed by the DB cluster.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc("<p>Not supported: The encryption for DB instances is managed by the DB cluster.</p>")
  @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that
      the DB instance is a member of.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<string_>,
  @ocaml.doc("<p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB
      cluster, this can be a different port than the DB cluster port.</p>")
  @as("DbInstancePort")
  dbInstancePort: option<integer_>,
  @ocaml.doc("<p>The ARN from the key store with which the instance is associated for TDE
      encryption.</p>")
  @as("TdeCredentialArn")
  tdeCredentialArn: option<string_>,
  @ocaml.doc("<p>Specifies the storage type associated with DB instance.</p>") @as("StorageType")
  storageType: option<string_>,
  @ocaml.doc(
    "<p>The status of a Read Replica. If the instance is not a Read Replica, this is blank.</p>"
  )
  @as("StatusInfos")
  statusInfos: option<dbinstanceStatusInfoList>,
  @ocaml.doc("<p>This flag should no longer be used.</p>") @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>If present, specifies the name of the secondary Availability Zone for a DB instance with
      multi-AZ support.</p>")
  @as("SecondaryAvailabilityZone")
  secondaryAvailabilityZone: option<string_>,
  @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
  @as("CharacterSetName")
  characterSetName: option<string_>,
  @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
  @as("OptionGroupMemberships")
  optionGroupMemberships: option<optionGroupMembershipList>,
  @ocaml.doc("<p>Specifies the Provisioned IOPS (I/O operations per second) value.</p>") @as("Iops")
  iops: option<integerOptional>,
  @ocaml.doc("<p>License model information for this DB instance.</p>") @as("LicenseModel")
  licenseModel: option<string_>,
  @ocaml.doc("<p>Contains one or more identifiers of DB clusters that are Read Replicas of this DB
      instance.</p>")
  @as("ReadReplicaDBClusterIdentifiers")
  readReplicaDBClusterIdentifiers: option<readReplicaDBClusterIdentifierList>,
  @ocaml.doc("<p>Contains one or more identifiers of the Read Replicas associated with this DB
      instance.</p>")
  @as("ReadReplicaDBInstanceIdentifiers")
  readReplicaDBInstanceIdentifiers: option<readReplicaDBInstanceIdentifierList>,
  @ocaml.doc("<p>Contains the identifier of the source DB instance if this DB instance is a Read
      Replica.</p>")
  @as("ReadReplicaSourceDBInstanceIdentifier")
  readReplicaSourceDBInstanceIdentifier: option<string_>,
  @ocaml.doc("<p>Indicates that minor version patches are applied automatically.</p>")
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<string_>,
  @ocaml.doc("<p>Specifies if the DB instance is a Multi-AZ deployment.</p>") @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc("<p>Specifies the latest time to which a database can be restored with point-in-time
      restore.</p>")
  @as("LatestRestorableTime")
  latestRestorableTime: option<tstamp>,
  @ocaml.doc("<p>Specifies that changes to the DB instance are pending. This element is only included when
      changes are pending. Specific changes are identified by subelements.</p>")
  @as("PendingModifiedValues")
  pendingModifiedValues: option<pendingModifiedValues>,
  @ocaml.doc("<p>Specifies the weekly time range during which system maintenance can occur, in Universal
      Coordinated Time (UTC).</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<string_>,
  @ocaml.doc("<p>Specifies information on the subnet group associated with the DB instance, including the
      name, description, and subnets in the subnet group.</p>")
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
  @ocaml.doc("<p> Provides List of DB security group elements containing only
      <code>DBSecurityGroup.Name</code> and <code>DBSecurityGroup.Status</code> subelements.</p>")
  @as("DBSecurityGroups")
  dbsecurityGroups: option<dbsecurityGroupMembershipList>,
  @ocaml.doc("<p>Specifies the number of days for which automatic DB snapshots are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integer_>,
  @ocaml.doc("<p> Specifies the daily time range during which automated backups are created if automated
      backups are enabled, as determined by the <code>BackupRetentionPeriod</code>.</p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<string_>,
  @ocaml.doc("<p>Provides the date and time the DB instance was created.</p>")
  @as("InstanceCreateTime")
  instanceCreateTime: option<tstamp>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>Specifies the connection endpoint.</p>") @as("Endpoint")
  endpoint: option<endpoint>,
  @ocaml.doc("<p>The database name.</p>") @as("DBName") dbname: option<string_>,
  @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUsername")
  masterUsername: option<string_>,
  @ocaml.doc("<p>Specifies the current state of this database.</p>") @as("DBInstanceStatus")
  dbinstanceStatus: option<string_>,
  @ocaml.doc("<p>Provides the name of the database engine to be used for this DB instance.</p>")
  @as("Engine")
  engine: option<string_>,
  @ocaml.doc(
    "<p>Contains the name of the compute and memory capacity class of the DB instance.</p>"
  )
  @as("DBInstanceClass")
  dbinstanceClass: option<string_>,
  @ocaml.doc("<p>Contains a user-supplied database identifier. This identifier is the unique key that
      identifies a DB instance.</p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<string_>,
}
type dbinstanceList = array<dbinstance>
@ocaml.doc("<fullname>Amazon Neptune</fullname>
         <p>Amazon Neptune is a fast, reliable, fully-managed graph database service that makes it
      easy to build and run applications that work with highly connected datasets. The core of
      Amazon Neptune is a purpose-built, high-performance graph database engine optimized for
      storing billions of relationships and querying the graph with milliseconds latency. Amazon
      Neptune supports popular graph models Property Graph and W3C's RDF, and their respective query
      languages Apache TinkerPop Gremlin and SPARQL, allowing you to easily build queries that
      efficiently navigate highly connected datasets. Neptune powers graph use cases such as
      recommendation engines, fraud detection, knowledge graphs, drug discovery, and network
      security.</p>

         <p>This interface reference for Amazon Neptune contains documentation for a programming or
      command line interface you can use to manage Amazon Neptune. Note that Amazon Neptune is
      asynchronous, which means that some interfaces might require techniques such as polling or
      callback functions to determine when a command has been applied. In this reference, the
      parameter descriptions indicate whether a command is applied immediately, on the next instance
      reboot, or during the maintenance window. The reference structure is as follows, and we list
      following some related topics from the user guide.</p>")
module RemoveRoleFromDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the feature for the DB cluster that the IAM role is to be disassociated from.
      For the list of supported feature names, see <a>DBEngineVersion</a>.</p>")
    @as("FeatureName")
    featureName: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to disassociate from the DB cluster, for
      example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>")
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

module DeleteDBSubnetGroup = {
  type t
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

module DeleteDBParameterGroup = {
  type t
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
               <p>Cannot be associated with any DB instances</p>
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
               <p>Cannot be associated with any DB clusters.</p>
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

module AddRoleToDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the feature for the Neptune DB cluster that the IAM role is to be associated with.
      For the list of supported feature names, see <a>DBEngineVersion</a>.</p>")
    @as("FeatureName")
    featureName: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role to associate with the Neptune DB cluster,
      for example <code>arn:aws:iam::123456789012:role/NeptuneAccessRole</code>.</p>")
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

module RemoveTagsFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key (name) of the tag to be removed.</p>") @as("TagKeys")
    tagKeys: keyList,
    @ocaml.doc("<p>The Amazon Neptune resource that the tags are removed from. This value is an Amazon
      Resource Name (ARN). For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing\"> Constructing an
      Amazon Resource Name (ARN)</a>.</p>")
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
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the endpoint.</p>")
    @as("DBClusterEndpointArn")
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
    @ocaml.doc("<p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
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

module DeleteDBClusterEndpoint = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier associated with the custom endpoint. This parameter is stored as a lowercase string.</p>"
    )
    @as("DBClusterEndpointIdentifier")
    dbclusterEndpointIdentifier: string_,
  }
  @ocaml.doc("<p>This data type represents the information you need to connect to an Amazon Neptune DB cluster.
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
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the endpoint.</p>")
    @as("DBClusterEndpointArn")
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
    @ocaml.doc("<p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
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
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBClusterEndpointCommand"
  let make = (~dbclusterEndpointIdentifier, ()) =>
    new({dbclusterEndpointIdentifier: dbclusterEndpointIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetDBParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>To reset the entire DB parameter group, specify the <code>DBParameterGroup</code> name and
      <code>ResetAllParameters</code> parameters. To reset specific parameters, provide a list of
      the following: <code>ParameterName</code> and <code>ApplyMethod</code>. A maximum of 20
      parameters can be modified in a single request.</p>
         <p>Valid Values (for Apply method): <code>pending-reboot</code>
         </p>")
    @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc("<p>Specifies whether (<code>true</code>) or not (<code>false</code>) to reset all parameters
      in the DB parameter group to default values.</p>
         <p>Default: <code>true</code>
         </p>")
    @as("ResetAllParameters")
    resetAllParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the name of an existing DBParameterGroup.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>Provides the name of the DB parameter group.</p>") @as("DBParameterGroupName")
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
  type request = {
    @ocaml.doc("<p>A list of parameter names in the DB cluster parameter group to reset to the default
      values. You can't use this parameter if the <code>ResetAllParameters</code> parameter is set
      to <code>true</code>.</p>")
    @as("Parameters")
    parameters: option<parametersList>,
    @ocaml.doc("<p>A value that is set to <code>true</code> to reset all parameters in the DB cluster
      parameter group to their default values, and <code>false</code> otherwise. You can't use this
      parameter if there is a list of parameter names specified for the <code>Parameters</code>
      parameter.</p>")
    @as("ResetAllParameters")
    resetAllParameters: option<boolean_>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to reset.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
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
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
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

module RemoveSourceIdentifierFromSubscription = {
  type t
  type request = {
    @ocaml.doc("<p> The source identifier to be removed from the subscription, such as the <b>DB instance identifier</b> for a DB instance or the name of a security
      group.</p>")
    @as("SourceIdentifier")
    sourceIdentifier: string_,
    @ocaml.doc("<p>The name of the event notification subscription you want to remove a source identifier
      from.</p>")
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
  type request = {
    @ocaml.doc("<p> A Boolean value; set to <b>true</b> to activate the
      subscription.</p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p> A list of event categories for a SourceType that you want to subscribe to. You can see a
      list of the categories for a given SourceType
      
      by using the <b>DescribeEventCategories</b> action.</p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The type of source that is generating the events. For example, if you want to be notified
      of events generated by a DB instance, you would set this parameter to db-instance. if this
      value is not specified, all events are returned.</p>
         <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
      created by Amazon SNS when you create a topic and subscribe to it.</p>")
    @as("SnsTopicArn")
    snsTopicArn: option<string_>,
    @ocaml.doc("<p>The name of the event notification subscription.</p>") @as("SubscriptionName")
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

module ModifyDBParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>An array of parameter names, values, and the apply method for the parameter update. At
      least one parameter name, value, and apply method must be supplied; subsequent arguments are
      optional. A maximum of 20 parameters can be modified in a single request.</p>
         <p>Valid Values (for the application method): <code>immediate | pending-reboot</code>
         </p>
         <note>
            <p>You can use the immediate value with dynamic parameters only. You can use the
        pending-reboot value for both dynamic and static parameters, and changes are applied when
        you reboot the DB instance without failover.</p>
         </note>")
    @as("Parameters")
    parameters: parametersList,
    @ocaml.doc("<p>The name of the DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBParameterGroup.</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: string_,
  }
  type response = {
    @ocaml.doc("<p>Provides the name of the DB parameter group.</p>") @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBParameterGroupCommand"
  let make = (~parameters, ~dbparameterGroupName, ()) =>
    new({parameters: parameters, dbparameterGroupName: dbparameterGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBClusterParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A list of parameters in the DB cluster parameter group to modify.</p>")
    @as("Parameters")
    parameters: parametersList,
    @ocaml.doc("<p>The name of the DB cluster parameter group to modify.</p>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: string_,
  }
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
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
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

module DeleteEventSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the event notification subscription you want to delete.</p>")
    @as("SubscriptionName")
    subscriptionName: string_,
  }
  type response = {@as("EventSubscription") eventSubscription: option<eventSubscription>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteEventSubscriptionCommand"
  let make = (~subscriptionName, ()) => new({subscriptionName: subscriptionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDBClusterSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the DB cluster snapshot to delete.</p>
         <p>Constraints: Must be the name of an existing DB cluster snapshot in the
      <code>available</code> state.</p>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: string_,
  }
  type response = {@as("DBClusterSnapshot") dbclusterSnapshot: option<dbclusterSnapshot>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "DeleteDBClusterSnapshotCommand"
  let make = (~dbclusterSnapshotIdentifier, ()) =>
    new({dbclusterSnapshotIdentifier: dbclusterSnapshotIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be applied to the new event subscription.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p> A Boolean value; set to <b>true</b> to activate the
      subscription, set to <b>false</b> to create the subscription but not
      active it.</p>")
    @as("Enabled")
    enabled: option<booleanOptional>,
    @ocaml.doc("<p>The list of identifiers of the event sources for which events are returned. If not
      specified, then all sources are included in the response. An identifier must begin with a
      letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or
      contain two consecutive hyphens.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If SourceIds are supplied, SourceType must also be provided.</p>
            </li>
            <li>
               <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
          supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
          supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
          be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
          supplied.</p>
            </li>
         </ul>")
    @as("SourceIds")
    sourceIds: option<sourceIdsList>,
    @ocaml.doc("<p> A list of event categories for a SourceType that you want to subscribe to. You can see a
      list of the categories for a given SourceType by using the
      <b>DescribeEventCategories</b> action.</p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The type of source that is generating the events. For example, if you want to be notified
      of events generated by a DB instance, you would set this parameter to db-instance. if this
      value is not specified, all events are returned.</p>
         <p>Valid values: <code>db-instance</code> | <code>db-cluster</code> |
      <code>db-parameter-group</code> | <code>db-security-group</code> | <code>db-snapshot</code> |
      <code>db-cluster-snapshot</code>
         </p>")
    @as("SourceType")
    sourceType: option<string_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic created for event notification. The ARN is
      created by Amazon SNS when you create a topic and subscribe to it.</p>")
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

module CreateDBParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the new DB parameter group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description for the DB parameter group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The DB parameter group family name. A DB parameter group can be associated with one and
      only one DB parameter group family, and can be applied only to a DB instance running a
      database engine and engine version compatible with that DB parameter group family.</p>")
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
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
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

module CreateDBClusterSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the DB cluster snapshot.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The identifier of the DB cluster to create a snapshot for. This parameter is not
      case-sensitive.</p>
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
    @ocaml.doc("<p>The identifier of the DB cluster snapshot. This parameter is stored as a lowercase
      string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
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

module CreateDBClusterParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the new DB cluster parameter group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description for the DB cluster parameter group.</p>") @as("Description")
    description: string_,
    @ocaml.doc("<p>The DB cluster parameter group family name. A DB cluster parameter group can be associated
      with one and only one DB cluster parameter group family, and can be applied only to a DB
      cluster running a database engine and engine version compatible with that DB cluster parameter
      group family.</p>")
    @as("DBParameterGroupFamily")
    dbparameterGroupFamily: string_,
    @ocaml.doc("<p>The name of the DB cluster parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the name of an existing DBClusterParameterGroup.</p>
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
    @ocaml.doc("<p>The tags to be assigned to the Amazon Neptune resource.</p>") @as("Tags")
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
  @ocaml.doc("<p>This data type represents the information you need to connect to an Amazon Neptune DB cluster.
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
         <p>For the data structure that represents Amazon Neptune DB instance endpoints,
      see <code>Endpoint</code>.</p>")
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the endpoint.</p>")
    @as("DBClusterEndpointArn")
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
    @ocaml.doc("<p>The current status of the endpoint. One of: <code>creating</code>, <code>available</code>, <code>deleting</code>, <code>inactive</code>, <code>modifying</code>. The <code>inactive</code> state applies to an endpoint that cannot be used for a certain kind of cluster,
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

module CopyDBParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the copied DB parameter group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description for the copied DB parameter group.</p>")
    @as("TargetDBParameterGroupDescription")
    targetDBParameterGroupDescription: string_,
    @ocaml.doc("<p>The identifier for the copied DB parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Cannot be null, empty, or blank.</p>
            </li>
            <li>
               <p>Must contain from 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>

         <p>Example: <code>my-db-parameter-group</code>
         </p>")
    @as("TargetDBParameterGroupIdentifier")
    targetDBParameterGroupIdentifier: string_,
    @ocaml.doc("<p>The identifier or ARN for the source DB parameter group. For information about creating
      an ARN, see <a href=\"https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing\"> Constructing an
      Amazon Resource Name (ARN)</a>.</p>

         <p>Constraints:</p>

         <ul>
            <li>
               <p>Must specify a valid DB parameter group.</p>
            </li>
            <li>
               <p>Must specify a valid DB parameter group identifier, for example
        <code>my-db-param-group</code>, or a valid ARN.</p>
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

module CopyDBClusterSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the new DB cluster snapshot copy.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>True to copy all tags from the source DB cluster snapshot to the target DB cluster
      snapshot, and otherwise false. The default is false.</p>")
    @as("CopyTags")
    copyTags: option<booleanOptional>,
    @ocaml.doc("<p>Not currently supported.</p>") @as("PreSignedUrl") preSignedUrl: option<string_>,
    @ocaml.doc("<p>The Amazon Amazon KMS key ID for an encrypted DB cluster snapshot. The KMS key ID is the Amazon
      Resource Name (ARN), KMS key identifier, or the KMS key alias for the KMS encryption key.</p>

         <p>If you copy an encrypted DB cluster snapshot from your Amazon account, you can specify a
      value for <code>KmsKeyId</code> to encrypt the copy with a new KMS encryption key. If you
      don't specify a value for <code>KmsKeyId</code>, then the copy of the DB cluster snapshot is
      encrypted with the same KMS key as the source DB cluster snapshot.</p>

         <p>If you copy an encrypted DB cluster snapshot that is shared from another Amazon account, then
      you must specify a value for <code>KmsKeyId</code>.</p>
         <p> KMS encryption keys are specific to the Amazon Region that they are created in, and you
      can't use encryption keys from one Amazon Region in another Amazon Region.</p>

         <p>You cannot encrypt an unencrypted DB cluster snapshot when you copy it. If you try to
      copy an unencrypted DB cluster snapshot and specify a value for the KmsKeyId parameter, an
      error is returned.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The identifier of the new DB cluster snapshot to create from the source DB cluster
      snapshot. This parameter is not case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster-snapshot2</code>
         </p>")
    @as("TargetDBClusterSnapshotIdentifier")
    targetDBClusterSnapshotIdentifier: string_,
    @ocaml.doc("<p>The identifier of the DB cluster snapshot to copy. This parameter is not
      case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must specify a valid system snapshot in the \"available\" state.</p>
            </li>
            <li>
               <p>Specify a valid DB snapshot identifier.</p>
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

module CopyDBClusterParameterGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the copied DB cluster parameter group.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description for the copied DB cluster parameter group.</p>")
    @as("TargetDBClusterParameterGroupDescription")
    targetDBClusterParameterGroupDescription: string_,
    @ocaml.doc("<p>The identifier for the copied DB cluster parameter group.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Cannot be null, empty, or blank</p>
            </li>
            <li>
               <p>Must contain from 1 to 255 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster-param-group1</code>
         </p>")
    @as("TargetDBClusterParameterGroupIdentifier")
    targetDBClusterParameterGroupIdentifier: string_,
    @ocaml.doc("<p>The identifier or Amazon Resource Name (ARN) for the source DB cluster parameter group.
      For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing\"> Constructing an
      Amazon Resource Name (ARN)</a>.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must specify a valid DB cluster parameter group.</p>
            </li>
            <li>
               <p>If the source DB cluster parameter group is in the same Amazon Region as the copy,
          specify a valid DB parameter group identifier, for example
          <code>my-db-cluster-param-group</code>, or a valid ARN.</p>
            </li>
            <li>
               <p>If the source DB parameter group is in a different Amazon Region than the copy, specify a
          valid DB cluster parameter group ARN, for example
          <code>arn:aws:rds:us-east-1:123456789012:cluster-pg:custom-cluster-group1</code>.</p>
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
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Amazon Neptune resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Neptune resource that the tags are added to. This value is an Amazon Resource
      Name (ARN). For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing\"> Constructing an
      Amazon Resource Name (ARN)</a>.</p>")
    @as("ResourceName")
    resourceName: string_,
  }

  @module("@aws-sdk/client-rds") @new external new: request => t = "AddTagsToResourceCommand"
  let make = (~tags, ~resourceName, ()) => new({tags: tags, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddSourceIdentifierToSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the event source to be added.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If the source type is a DB instance, then a <code>DBInstanceIdentifier</code> must be
          supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB security group, a <code>DBSecurityGroupName</code> must be
          supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB parameter group, a <code>DBParameterGroupName</code> must
          be supplied.</p>
            </li>
            <li>
               <p>If the source type is a DB snapshot, a <code>DBSnapshotIdentifier</code> must be
          supplied.</p>
            </li>
         </ul>")
    @as("SourceIdentifier")
    sourceIdentifier: string_,
    @ocaml.doc("<p>The name of the event notification subscription you want to add a source identifier
      to.</p>")
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

module StopDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The DB cluster identifier of the Neptune DB cluster to be stopped.
      This parameter is stored as a lowercase string.</p>")
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
    @ocaml.doc("<p>The DB cluster identifier of the Neptune DB cluster to be started.
      This parameter is stored as a lowercase string.</p>")
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
  type request = {
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled.
      The database can't be deleted when deletion protection is enabled. By default,
      deletion protection is disabled.
    </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc(
      "<p>The list of logs that the restored DB cluster is to export to CloudWatch Logs.</p>"
    )
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
      accounts, and otherwise false.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from an encrypted
      DB cluster.</p>
         <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
      you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
      to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
      KMS encryption key.</p>
         <p>You can restore to a new DB cluster and encrypt the new DB cluster with a KMS key that is
      different than the KMS key used to encrypt the source DB cluster. The new DB cluster is
      encrypted with the KMS key identified by the <code>KmsKeyId</code> parameter.</p>
         <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
      will occur:</p>
         <ul>
            <li>
               <p>If the DB cluster is encrypted, then the restored DB cluster is encrypted using the
          KMS key that was used to encrypt the source DB cluster.</p>
            </li>
            <li>
               <p>If the DB cluster is not encrypted, then the restored DB cluster is not
          encrypted.</p>
            </li>
         </ul>
         <p>If <code>DBClusterIdentifier</code> refers to a DB cluster that is not encrypted, then the
      restore request is rejected.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The tags to be applied to the restored DB cluster.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of VPC security groups that the new DB cluster belongs to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The DB subnet group name to use for the new DB cluster.</p>
         <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The port number on which the new DB cluster accepts connections.</p>
         <p>Constraints: Value must be <code>1150-65535</code>
         </p>
         <p>Default: The same port as the original DB cluster.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>A value that is set to <code>true</code> to restore the DB cluster to the latest
      restorable backup time, and <code>false</code> otherwise.</p>
         <p>Default: <code>false</code>
         </p>
         <p>Constraints: Cannot be specified if <code>RestoreToTime</code> parameter is
      provided.</p>")
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
               <p>Must be specified if <code>UseLatestRestorableTime</code> parameter is not
          provided</p>
            </li>
            <li>
               <p>Cannot be specified if <code>UseLatestRestorableTime</code> parameter is true</p>
            </li>
            <li>
               <p>Cannot be specified if <code>RestoreType</code> parameter is
          <code>copy-on-write</code>
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
                  <code>full-copy</code> - The new DB cluster is restored as a full copy of the source
          DB cluster.</p>
            </li>
            <li>
               <p> 
                  <code>copy-on-write</code> - The new DB cluster is restored as a clone of the source
          DB cluster.</p>
            </li>
         </ul>
         <p>If you don't specify a <code>RestoreType</code> value, then the new DB cluster is restored
      as a full copy of the source DB cluster.</p>")
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
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
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
    ~deletionProtection=?,
    ~dbclusterParameterGroupName=?,
    ~enableCloudwatchLogsExports=?,
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
      deletionProtection: deletionProtection,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
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
  type request = {
    @ocaml.doc("<p>
            <i>If set to <code>true</code>, tags are copied to any snapshot of
      the restored DB cluster that is created.</i>
         </p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled.
      The database can't be deleted when deletion protection is enabled. By default,
      deletion protection is disabled.
    </p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The name of the DB cluster parameter group to associate with the new DB cluster.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
            </li>
         </ul>")
    @as("DBClusterParameterGroupName")
    dbclusterParameterGroupName: option<string_>,
    @ocaml.doc(
      "<p>The list of logs that the restored DB cluster is to export to Amazon CloudWatch Logs.</p>"
    )
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
      accounts, and otherwise false.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon KMS key identifier to use when restoring an encrypted DB cluster from a DB
      snapshot or DB cluster snapshot.</p>
         <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
      you are restoring a DB cluster with the same Amazon account that owns the KMS encryption key used
      to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
      KMS encryption key.</p>
         <p>If you do not specify a value for the <code>KmsKeyId</code> parameter, then the following
      will occur:</p>
         <ul>
            <li>
               <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is
          encrypted, then the restored DB cluster is encrypted using the KMS key that was used to
          encrypt the DB snapshot or DB cluster snapshot.</p>
            </li>
            <li>
               <p>If the DB snapshot or DB cluster snapshot in <code>SnapshotIdentifier</code> is not
          encrypted, then the restored DB cluster is not encrypted.</p>
            </li>
         </ul>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>The tags to be assigned to the restored DB cluster.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A list of VPC security groups that the new DB cluster will belong to.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>Not supported.</p>") @as("DatabaseName") databaseName: option<string_>,
    @ocaml.doc("<p>The name of the DB subnet group to use for the new DB cluster.</p>
         <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
         <p>Example: <code>mySubnetgroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The port number on which the new DB cluster accepts connections.</p>
         <p>Constraints: Value must be <code>1150-65535</code>
         </p>
         <p>Default: The same port as the original DB cluster.</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The version of the database engine to use for the new DB cluster.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The database engine to use for the new DB cluster.</p>
         <p>Default: The same as source</p>
         <p>Constraint: Must be compatible with the engine of the source</p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>The identifier for the DB snapshot or DB cluster snapshot to restore from.</p>
         <p>You can use either the name or the Amazon Resource Name (ARN) to specify a DB cluster
      snapshot. However, you can use only the ARN to specify a DB snapshot.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing Snapshot.</p>
            </li>
         </ul>")
    @as("SnapshotIdentifier")
    snapshotIdentifier: string_,
    @ocaml.doc("<p>The name of the DB cluster to create from the DB snapshot or DB cluster snapshot. This
      parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
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
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>Provides the list of EC2 Availability Zones that instances in the restored DB cluster can
      be created in.</p>")
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
    ~copyTagsToSnapshot=?,
    ~deletionProtection=?,
    ~dbclusterParameterGroupName=?,
    ~enableCloudwatchLogsExports=?,
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
      copyTagsToSnapshot: copyTagsToSnapshot,
      deletionProtection: deletionProtection,
      dbclusterParameterGroupName: dbclusterParameterGroupName,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
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

module PromoteReadReplicaDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>Not supported.</p>") @as("DBClusterIdentifier") dbclusterIdentifier: string_,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new
  external new: request => t = "PromoteReadReplicaDBClusterCommand"
  let make = (~dbclusterIdentifier, ()) => new({dbclusterIdentifier: dbclusterIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ModifyDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>
            <i>If set to <code>true</code>, tags are copied to any snapshot of
      the DB cluster that is created.</i>
         </p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled.
      The database can't be deleted when deletion protection is enabled. By default,
      deletion protection is disabled.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The version number of the database engine to which you want to upgrade. Changing this
      parameter results in an outage. The change is applied during the next maintenance window
      unless the <code>ApplyImmediately</code> parameter is set to true.</p>
         <p>For a list of valid engine versions, see <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/engine-releases.html\">Engine Releases for Amazon
      Neptune</a>, or call <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/api-other-apis.html#DescribeDBEngineVersions\">DescribeDBEngineVersions</a>.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
      for a specific DB cluster.</p>")
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @ocaml.doc("<p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
      accounts, and otherwise false.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal Coordinated
      Time (UTC).</p>
         <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      Amazon Region, occurring on a random day of the
      week.</p>
         <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
         <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created if automated backups are
      enabled, using the <code>BackupRetentionPeriod</code> parameter.</p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      Amazon Region.</p>
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
    @ocaml.doc("<p>
            <i>Not supported by Neptune.</i>
         </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUserPassword")
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
    @ocaml.doc("<p>The number of days for which automated backups are retained. You must specify a minimum
      value of 1.</p>
         <p>Default: 1</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 1 to 35</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>A value that specifies whether the modifications in this request and any pending
      modifications are asynchronously applied as soon as possible, regardless of the
      <code>PreferredMaintenanceWindow</code> setting for the DB cluster. If this parameter is set
      to <code>false</code>, changes to the DB cluster are applied during the next maintenance
      window.</p>
         <p>The <code>ApplyImmediately</code> parameter only affects <code>NewDBClusterIdentifier</code>
      values. If you set the <code>ApplyImmediately</code> parameter value to false, then changes to
      <code>NewDBClusterIdentifier</code> values are applied during the next maintenance window.
      All other changes are applied immediately, regardless of the value of the
      <code>ApplyImmediately</code> parameter.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>The new DB cluster identifier for the DB cluster when renaming a DB cluster. This value is
      stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
            </li>
            <li>
               <p>The first character must be a letter</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster2</code>
         </p>")
    @as("NewDBClusterIdentifier")
    newDBClusterIdentifier: option<string_>,
    @ocaml.doc("<p>The DB cluster identifier for the cluster being modified. This parameter is not
      case-sensitive.</p>
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
  @module("@aws-sdk/client-rds") @new external new: request => t = "ModifyDBClusterCommand"
  let make = (
    ~dbclusterIdentifier,
    ~copyTagsToSnapshot=?,
    ~deletionProtection=?,
    ~engineVersion=?,
    ~cloudwatchLogsExportConfiguration=?,
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
      copyTagsToSnapshot: copyTagsToSnapshot,
      deletionProtection: deletionProtection,
      engineVersion: engineVersion,
      cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
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

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The Amazon Neptune resource with tags to be listed. This value is an Amazon Resource Name
      (ARN). For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing\"> Constructing an
      Amazon Resource Name (ARN)</a>.</p>")
    @as("ResourceName")
    resourceName: string_,
  }
  type response = {
    @ocaml.doc("<p>List of tags returned by the ListTagsForResource operation.</p>") @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceName, ~filters=?, ()) => new({filters: filters, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module FailoverDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance to promote to the primary instance.</p>
         <p>You must specify the instance identifier for an Read Replica in the DB cluster. For
      example, <code>mydbcluster-replica1</code>.</p>")
    @as("TargetDBInstanceIdentifier")
    targetDBInstanceIdentifier: option<string_>,
    @ocaml.doc("<p>A DB cluster identifier to force a failover for. This parameter is not
      case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must match the identifier of an existing DBCluster.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "FailoverDBClusterCommand"
  let make = (~targetDBInstanceIdentifier=?, ~dbclusterIdentifier=?, ()) =>
    new({
      targetDBInstanceIdentifier: targetDBInstanceIdentifier,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous DescribeEvents request. If this
      parameter is specified, the response includes only records beyond the marker, up to the value
      specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>A list of event categories that trigger notifications for a event notification
      subscription.</p>")
    @as("EventCategories")
    eventCategories: option<eventCategoriesList>,
    @ocaml.doc("<p>The number of minutes to retrieve events for.</p>
         <p>Default: 60</p>")
    @as("Duration")
    duration: option<integerOptional>,
    @ocaml.doc("<p> The end of the time interval for which to retrieve events, specified in ISO 8601 format.
      For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>
         </p>
         <p>Example: 2009-07-08T18:00Z</p>")
    @as("EndTime")
    endTime: option<tstamp>,
    @ocaml.doc("<p> The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
      For more information about ISO 8601, go to the <a href=\"http://en.wikipedia.org/wiki/ISO_8601\">ISO8601 Wikipedia page.</a>
         </p>
         <p>Example: 2009-07-08T18:00Z</p>")
    @as("StartTime")
    startTime: option<tstamp>,
    @ocaml.doc("<p>The event source to retrieve events for. If no value is specified, all events are
      returned.</p>")
    @as("SourceType")
    sourceType: option<sourceType>,
    @ocaml.doc("<p>The identifier of the event source for which events are returned. If not specified, then
      all sources are included in the response.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If SourceIdentifier is supplied, SourceType must also be provided.</p>
            </li>
            <li>
               <p>If the source type is <code>DBInstance</code>, then a
          <code>DBInstanceIdentifier</code> must be supplied.</p>
            </li>
            <li>
               <p>If the source type is <code>DBSecurityGroup</code>, a <code>DBSecurityGroupName</code>
          must be supplied.</p>
            </li>
            <li>
               <p>If the source type is <code>DBParameterGroup</code>, a
          <code>DBParameterGroupName</code> must be supplied.</p>
            </li>
            <li>
               <p>If the source type is <code>DBSnapshot</code>, a <code>DBSnapshotIdentifier</code>
          must be supplied.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>")
    @as("SourceIdentifier")
    sourceIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p> A list of <a>Event</a> instances.</p>") @as("Events") events: option<eventList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous Events request. If this parameter is
      specified, the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code> .</p>")
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
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
      request. If this parameter is specified, the response includes only records beyond the marker,
      up to the value specified by <code>MaxRecords</code> .</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the event notification subscription you want to describe.</p>")
    @as("SubscriptionName")
    subscriptionName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of EventSubscriptions data types.</p>") @as("EventSubscriptionsList")
    eventSubscriptionsList: option<eventSubscriptionsList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
      request. If this parameter is specified, the response includes only records beyond the marker,
      up to the value specified by <code>MaxRecords</code>.</p>")
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
  type request = {
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The type of source that is generating the events.</p>
         <p>Valid values: db-instance | db-parameter-group | db-security-group | db-snapshot</p>")
    @as("SourceType")
    sourceType: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>A list of EventCategoriesMap data types.</p>") @as("EventCategoriesMapList")
    eventCategoriesMapList: option<eventCategoriesMapList>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeEventCategoriesCommand"
  let make = (~filters=?, ~sourceType=?, ()) => new({filters: filters, sourceType: sourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEngineDefaultParameters = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous
      <code>DescribeEngineDefaultParameters</code> request. If this parameter is specified, the
      response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Not currently supported.</p>") @as("Filters") filters: option<filterList>,
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
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous
      <code>DescribeEngineDefaultClusterParameters</code> request. If this parameter is specified,
      the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the DB cluster parameter group family to return engine parameter information
      for.</p>")
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

module DescribeDBParameters = {
  type t
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous <code>DescribeDBParameters</code>
      request. If this parameter is specified, the response includes only records beyond the marker,
      up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
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
  type response = {
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is
      specified, the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A list of <a>Parameter</a> values.</p>") @as("Parameters")
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
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous
      <code>DescribeDBParameterGroups</code> request. If this parameter is specified, the response
      includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
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
  type response = {
    @ocaml.doc("<p>A list of <a>DBParameterGroup</a> instances.</p>") @as("DBParameterGroups")
    dbparameterGroups: option<dbparameterGroupList>,
    @ocaml.doc("<p>An optional pagination token provided by a previous request. If this parameter is
      specified, the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
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

module DescribeDBClusterSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>True to include manual DB cluster snapshots that are public and can be copied or restored
      by any Amazon account, and otherwise false. The default is <code>false</code>. The default is
      false.</p>
         <p>You can share a manual DB cluster snapshot as public by using the <a>ModifyDBClusterSnapshotAttribute</a> API action.</p>")
    @as("IncludePublic")
    includePublic: option<boolean_>,
    @ocaml.doc("<p>True to include shared manual DB cluster snapshots from other Amazon accounts that this AWS
      account has been given permission to copy or restore, and otherwise false. The default is
      <code>false</code>.</p>
         <p>You can give an Amazon account permission to restore a manual DB cluster snapshot from
      another Amazon account by the <a>ModifyDBClusterSnapshotAttribute</a> API
      action.</p>")
    @as("IncludeShared")
    includeShared: option<boolean_>,
    @ocaml.doc("<p>An optional pagination token provided by a previous
      <code>DescribeDBClusterSnapshots</code> request. If this parameter is specified, the response
      includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
   </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The type of DB cluster snapshots to be returned. You can specify one of the following
      values:</p>
         <ul>
            <li>
               <p> 
                  <code>automated</code> - Return all DB cluster snapshots that have been automatically
          taken by Amazon Neptune for my Amazon account.</p>
            </li>
            <li>
               <p> 
                  <code>manual</code> - Return all DB cluster snapshots that have been taken by my AWS
          account.</p>
            </li>
            <li>
               <p> 
                  <code>shared</code> - Return all manual DB cluster snapshots that have been shared to
          my Amazon account.</p>
            </li>
            <li>
               <p> 
                  <code>public</code> - Return all DB cluster snapshots that have been marked as
          public.</p>
            </li>
         </ul>
         <p>If you don't specify a <code>SnapshotType</code> value, then both automated and manual DB
      cluster snapshots are returned. You can include shared DB cluster snapshots with these results
      by setting the <code>IncludeShared</code> parameter to <code>true</code>. You can include
      public DB cluster snapshots with these results by setting the <code>IncludePublic</code>
      parameter to <code>true</code>.</p>
         <p>The <code>IncludeShared</code> and <code>IncludePublic</code> parameters don't apply for
      <code>SnapshotType</code> values of <code>manual</code> or <code>automated</code>. The
      <code>IncludePublic</code> parameter doesn't apply when <code>SnapshotType</code> is set to
      <code>shared</code>. The <code>IncludeShared</code> parameter doesn't apply when
      <code>SnapshotType</code> is set to <code>public</code>.</p>")
    @as("SnapshotType")
    snapshotType: option<string_>,
    @ocaml.doc("<p>A specific DB cluster snapshot identifier to describe. This parameter can't be used in
      conjunction with the <code>DBClusterIdentifier</code> parameter. This value is stored as a
      lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBClusterSnapshot.</p>
            </li>
            <li>
               <p>If this identifier is for an automated snapshot, the <code>SnapshotType</code>
          parameter must also be specified.</p>
            </li>
         </ul>")
    @as("DBClusterSnapshotIdentifier")
    dbclusterSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p>The ID of the DB cluster to retrieve the list of DB cluster snapshots for. This parameter
      can't be used in conjunction with the <code>DBClusterSnapshotIdentifier</code> parameter. This
      parameter is not case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBCluster.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Provides a list of DB cluster snapshots for the user.</p>")
    @as("DBClusterSnapshots")
    dbclusterSnapshots: option<dbclusterSnapshotList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous <a>DescribeDBClusterSnapshots</a> request. If this parameter is specified, the response
      includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
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

module DescribeDBClusterParameters = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous
      <code>DescribeDBClusterParameters</code> request. If this parameter is specified, the response
      includes only records beyond the marker, up to the value specified by <code>MaxRecords</code>.
   </p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p> A value that indicates to return only parameters for a specific source. Parameter sources
      can be <code>engine</code>, <code>service</code>, or <code>customer</code>.</p>")
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
  type response = {
    @ocaml.doc("<p> An optional pagination token provided by a previous DescribeDBClusterParameters request.
      If this parameter is specified, the response includes only records beyond the marker, up to
      the value specified by <code>MaxRecords</code> .</p>")
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
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous
      <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the
      response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
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
  type response = {
    @ocaml.doc("<p>A list of DB cluster parameter groups.</p>") @as("DBClusterParameterGroups")
    dbclusterParameterGroups: option<dbclusterParameterGroupList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous
      <code>DescribeDBClusterParameterGroups</code> request. If this parameter is specified, the
      response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
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

module DeleteDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p> The DB cluster snapshot identifier of the new DB cluster snapshot created when
      <code>SkipFinalSnapshot</code> is set to <code>false</code>.</p>
         <note>
            <p> Specifying this parameter and also setting the <code>SkipFinalShapshot</code> parameter
        to true results in an error.</p>
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
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("FinalDBSnapshotIdentifier")
    finalDBSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p> Determines whether a final DB cluster snapshot is created before the DB cluster is
      deleted. If <code>true</code> is specified, no DB cluster snapshot is created. If
      <code>false</code> is specified, a DB cluster snapshot is created before the DB cluster is
      deleted.</p>
         <note>
            <p>You must specify a <code>FinalDBSnapshotIdentifier</code> parameter if
        <code>SkipFinalSnapshot</code> is <code>false</code>.</p>
         </note>
         <p>Default: <code>false</code>
         </p>")
    @as("SkipFinalSnapshot")
    skipFinalSnapshot: option<boolean_>,
    @ocaml.doc("<p>The DB cluster identifier for the DB cluster to be deleted. This parameter isn't
      case-sensitive.</p>
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

module CreateDBCluster = {
  type t
  type request = {
    @ocaml.doc("<p>A value that indicates whether the DB cluster has deletion protection enabled.
      The database can't be deleted when deletion protection is enabled. By default,
      deletion protection is enabled.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc(
      "<p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>"
    )
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>If set to <code>true</code>, enables Amazon Identity and Access Management
      (IAM) authentication for the entire DB cluster (this cannot be set at an
      instance level).</p>
         <p>Default: <code>false</code>.</p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("PreSignedUrl")
    preSignedUrl: option<string_>,
    @ocaml.doc("<p>The Amazon KMS key identifier for an encrypted DB cluster.</p>
         <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
      you are creating a DB cluster with the same Amazon account that owns the KMS encryption key used
      to encrypt the new DB cluster, then you can use the KMS key alias instead of the ARN for the
      KMS encryption key.</p>
         <p>If an encryption key is not specified in <code>KmsKeyId</code>:</p>
         <ul>
            <li>
               <p>If <code>ReplicationSourceIdentifier</code> identifies an encrypted source, then
          Amazon Neptune will use the encryption key used to encrypt the source. Otherwise, Amazon
          Neptune will use your default encryption key.</p>
            </li>
            <li>
               <p>If the <code>StorageEncrypted</code> parameter is true and
          <code>ReplicationSourceIdentifier</code> is not specified, then Amazon Neptune will use
          your default encryption key.</p>
            </li>
         </ul>
         <p>Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
      different default encryption key for each Amazon Region.</p>
         <p>If you create a Read Replica of an encrypted DB cluster in another Amazon Region, you must
      set <code>KmsKeyId</code> to a KMS key ID that is valid in the destination Amazon Region. This
      key is used to encrypt the Read Replica in that Amazon Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>Specifies whether the DB cluster is encrypted.</p>") @as("StorageEncrypted")
    storageEncrypted: option<booleanOptional>,
    @ocaml.doc("<p>The tags to assign to the new DB cluster.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source DB instance or DB cluster if this DB cluster
      is created as a Read Replica.</p>")
    @as("ReplicationSourceIdentifier")
    replicationSourceIdentifier: option<string_>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal Coordinated
      Time (UTC).</p>
         <p>Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      Amazon Region, occurring on a random day of the week. To see the time blocks available, see
      <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html\"> Adjusting the Preferred
      Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
         </p>
         <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
         <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created if automated backups are
      enabled using the <code>BackupRetentionPeriod</code> parameter.</p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      Amazon Region. To see the time blocks available, see <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html\"> Adjusting the Preferred
      Maintenance Window</a> in the <i>Amazon Neptune User Guide.</i>
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
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUsername")
    masterUsername: option<string_>,
    @ocaml.doc("<p>The port number on which the instances in the DB cluster accept connections.</p>
         <p> Default: <code>8182</code>
         </p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p>The version number of the database engine to use for the new DB cluster.</p>
         <p>Example: <code>1.0.2.1</code>
         </p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this DB cluster.</p>
         <p>Valid Values: <code>neptune</code>
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
    @ocaml.doc("<p> The name of the DB cluster parameter group to associate with this DB cluster. If this
      argument is omitted, the default is used.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the name of an existing DBClusterParameterGroup.</p>
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
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>my-cluster1</code>
         </p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: string_,
    @ocaml.doc("<p>The name for your database of up to 64 alpha-numeric characters. If you do not provide a
      name, Amazon Neptune will not create a database in the DB cluster you are creating.</p>")
    @as("DatabaseName")
    databaseName: option<string_>,
    @ocaml.doc("<p>
            <i>If set to <code>true</code>, tags are copied to any snapshot of
      the DB cluster that is created.</i>
         </p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("CharacterSetName")
    characterSetName: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are retained. You must specify a minimum
      value of 1.</p>
         <p>Default: 1</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 1 to 35</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>A list of EC2 Availability Zones that instances in the DB cluster can be created
      in.</p>")
    @as("AvailabilityZones")
    availabilityZones: option<availabilityZones>,
  }
  type response = {@as("DBCluster") dbcluster: option<dbcluster>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBClusterCommand"
  let make = (
    ~engine,
    ~dbclusterIdentifier,
    ~deletionProtection=?,
    ~enableCloudwatchLogsExports=?,
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
    ~copyTagsToSnapshot=?,
    ~characterSetName=?,
    ~backupRetentionPeriod=?,
    ~availabilityZones=?,
    (),
  ) =>
    new({
      deletionProtection: deletionProtection,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
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
      copyTagsToSnapshot: copyTagsToSnapshot,
      characterSetName: characterSetName,
      backupRetentionPeriod: backupRetentionPeriod,
      availabilityZones: availabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplyPendingMaintenanceAction = {
  type t
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
                  <code>next-maintenance</code> - Apply the maintenance action during the next
          maintenance window for the resource.</p>
            </li>
            <li>
               <p>
                  <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
          requests.</p>
            </li>
         </ul>")
    @as("OptInType")
    optInType: string_,
    @ocaml.doc("<p>The pending maintenance action to apply to this resource.</p>
         <p>Valid values: <code>system-update</code>, <code>db-upgrade</code>
         </p>")
    @as("ApplyAction")
    applyAction: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that the pending maintenance action applies
      to. For information about creating an ARN, see <a href=\"https://docs.aws.amazon.com/neptune/latest/UserGuide/tagging.ARN.html#tagging.ARN.Constructing\"> Constructing an
      Amazon Resource Name (ARN)</a>.</p>")
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

module ModifyDBSubnetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The EC2 subnet IDs for the DB subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>The description for the DB subnet group.</p>") @as("DBSubnetGroupDescription")
    dbsubnetGroupDescription: option<string_>,
    @ocaml.doc("<p>The name for the DB subnet group. This value is stored as a lowercase string. You can't
      modify the default subnet group.</p>
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

module ModifyDBClusterSnapshotAttribute = {
  type t
  type request = {
    @ocaml.doc("<p>A list of DB cluster snapshot attributes to remove from the attribute specified by
      <code>AttributeName</code>.</p>
         <p>To remove authorization for other Amazon accounts to copy or restore a manual DB cluster
      snapshot, set this list to include one or more Amazon account identifiers, or <code>all</code> to
      remove authorization for any Amazon account to copy or restore the DB cluster snapshot. If you
      specify <code>all</code>, an Amazon account whose account ID is explicitly added to the
      <code>restore</code> attribute can still copy or restore a manual DB cluster snapshot.</p>")
    @as("ValuesToRemove")
    valuesToRemove: option<attributeValueList>,
    @ocaml.doc("<p>A list of DB cluster snapshot attributes to add to the attribute specified by
      <code>AttributeName</code>.</p>
         <p>To authorize other Amazon accounts to copy or restore a manual DB cluster snapshot, set this
      list to include one or more Amazon account IDs, or <code>all</code> to make the manual DB cluster
      snapshot restorable by any Amazon account. Do not add the <code>all</code> value for any manual
      DB cluster snapshots that contain private information that you don't want available to all AWS
      accounts.</p>")
    @as("ValuesToAdd")
    valuesToAdd: option<attributeValueList>,
    @ocaml.doc("<p>The name of the DB cluster snapshot attribute to modify.</p>
         <p>To manage authorization for other Amazon accounts to copy or restore a manual DB cluster
      snapshot, set this value to <code>restore</code>.</p>")
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

module DescribePendingMaintenanceActions = {
  type t
  type request = {
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p> An optional pagination token provided by a previous
      <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the
      response includes only records beyond the marker, up to a number of records specified by
      <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>A filter that specifies one or more resources to return pending maintenance actions
      for.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p> 
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
          Resource Names (ARNs). The results list will only include pending maintenance actions for
          the DB clusters identified by these ARNs.</p>
            </li>
            <li>
               <p> 
                  <code>db-instance-id</code> - Accepts DB instance identifiers and DB instance ARNs.
          The results list will only include pending maintenance actions for the DB instances
          identified by these ARNs.</p>
            </li>
         </ul>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The ARN of a resource to return pending maintenance actions for.</p>")
    @as("ResourceIdentifier")
    resourceIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p> An optional pagination token provided by a previous
      <code>DescribePendingMaintenanceActions</code> request. If this parameter is specified, the
      response includes only records beyond the marker, up to a number of records specified by
      <code>MaxRecords</code>.</p>")
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
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous DescribeOrderableDBInstanceOptions
      request. If this parameter is specified, the response includes only records beyond the marker,
      up to the value specified by <code>MaxRecords</code> .</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The VPC filter value. Specify this parameter to show only the available VPC or non-VPC
      offerings.</p>")
    @as("Vpc")
    vpc: option<booleanOptional>,
    @ocaml.doc("<p>The license model filter value. Specify this parameter to show only the available
      offerings matching the specified license model.</p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc("<p>The DB instance class filter value. Specify this parameter to show only the available
      offerings matching the specified DB instance class.</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>The engine version filter value. Specify this parameter to show only the available
      offerings matching the specified engine version.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>The name of the engine to retrieve DB instance options for.</p>") @as("Engine")
    engine: string_,
  }
  type response = {
    @ocaml.doc("<p> An optional pagination token provided by a previous OrderableDBInstanceOptions request.
      If this parameter is specified, the response includes only records beyond the marker, up to
      the value specified by <code>MaxRecords</code> .</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>An <a>OrderableDBInstanceOption</a> structure
      containing information about orderable options for the DB instance.</p>")
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
      licenseModel: licenseModel,
      dbinstanceClass: dbinstanceClass,
      engineVersion: engineVersion,
      engine: engine,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBEngineVersions = {
  type t
  type request = {
    @ocaml.doc("<p>If this parameter is specified and the requested engine supports the <code>TimeZone</code>
      parameter for <code>CreateDBInstance</code>, the response includes a list of supported time
      zones for each engine version.</p>")
    @as("ListSupportedTimezones")
    listSupportedTimezones: option<booleanOptional>,
    @ocaml.doc("<p>If this parameter is specified and the requested engine supports the
      <code>CharacterSetName</code> parameter for <code>CreateDBInstance</code>, the response
      includes a list of supported character sets for each engine version.</p>")
    @as("ListSupportedCharacterSets")
    listSupportedCharacterSets: option<booleanOptional>,
    @ocaml.doc("<p>Indicates that only the default version of the specified engine or engine and major
      version combination is returned.</p>")
    @as("DefaultOnly")
    defaultOnly: option<boolean_>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
      specified, the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more than the
      <code>MaxRecords</code> value is available, a pagination token called a marker is included in
      the response so that the following results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>Not currently supported.</p>") @as("Filters") filters: option<filterList>,
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
    @ocaml.doc("<p>The database engine to return.</p>") @as("Engine") engine: option<string_>,
  }
  type response = {
    @ocaml.doc("<p> A list of <code>DBEngineVersion</code> elements.</p>") @as("DBEngineVersions")
    dbengineVersions: option<dbengineVersionList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
      specified, the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBEngineVersionsCommand"
  let make = (
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
  type request = {
    @ocaml.doc("<p>An optional pagination token provided by a previous <a>DescribeDBClusters</a>
      request. If this parameter is specified, the response includes only records beyond the marker,
      up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p>The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more DB clusters to describe.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p>
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
        Resource Names (ARNs). The results list will only include information about the DB
        clusters identified by these ARNs.</p>
            </li>
            <li>
               <p>
                  <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
        and restricts the results list to DB clusters created by that engine.</p>
            </li>
         </ul>

         <p>For example, to invoke this API from the Amazon CLI and filter so that only
      Neptune DB clusters are returned, you could use the following command:</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-supplied DB cluster identifier. If this parameter is specified, information from
      only the specific DB cluster is returned. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match an existing DBClusterIdentifier.</p>
            </li>
         </ul>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Contains a list of DB clusters for the user.</p>") @as("DBClusters")
    dbclusters: option<dbclusterList>,
    @ocaml.doc(
      "<p>A pagination token that can be used in a subsequent DescribeDBClusters request.</p>"
    )
    @as("Marker")
    marker: option<string_>,
  }
  @module("@aws-sdk/client-rds") @new external new: request => t = "DescribeDBClustersCommand"
  let make = (~marker=?, ~maxRecords=?, ~filters=?, ~dbclusterIdentifier=?, ()) =>
    new({
      marker: marker,
      maxRecords: maxRecords,
      filters: filters,
      dbclusterIdentifier: dbclusterIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDBClusterSnapshotAttributes = {
  type t
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

module CreateDBSubnetGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the new DB subnet group.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The EC2 Subnet IDs for the DB subnet group.</p>") @as("SubnetIds")
    subnetIds: subnetIdentifierList,
    @ocaml.doc("<p>The description for the DB subnet group.</p>") @as("DBSubnetGroupDescription")
    dbsubnetGroupDescription: string_,
    @ocaml.doc("<p>The name for the DB subnet group. This value is stored as a lowercase string.</p>
         <p>Constraints: Must contain no more than 255 letters, numbers, periods, underscores, spaces,
      or hyphens. Must not be default.</p>
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

module RebootDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p> When <code>true</code>, the reboot is conducted through a MultiAZ failover.</p>
         <p>Constraint: You can't specify <code>true</code> if the instance is not configured for
      MultiAZ.</p>")
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

module ModifyDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled.
      The database can't be deleted when deletion protection is enabled. By default,
      deletion protection is disabled.  See <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html\">Deleting
      a DB Instance</a>.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc("<p>The configuration setting for the log types to be enabled for export to CloudWatch Logs
      for a specific DB instance or DB cluster.</p>")
    @as("CloudwatchLogsExportConfiguration")
    cloudwatchLogsExportConfiguration: option<cloudwatchLogsExportConfiguration>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("PerformanceInsightsKMSKeyId")
    performanceInsightsKMSKeyId: option<string_>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("EnablePerformanceInsights")
    enablePerformanceInsights: option<booleanOptional>,
    @ocaml.doc("<p>True to enable mapping of Amazon Identity and Access Management (IAM) accounts to database
      accounts, and otherwise false.</p>
         <p>You can enable IAM database authentication for the following database engines</p>
         <p>Not applicable. Mapping Amazon IAM accounts to database accounts is managed by the DB
      cluster. For more information, see <a>ModifyDBCluster</a>.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>A value that specifies the order in which a Read Replica is promoted to the primary
      instance after a failure of the existing primary instance.</p>
         <p>Default: 1</p>
         <p>Valid Values: 0 - 15</p>")
    @as("PromotionTier")
    promotionTier: option<integerOptional>,
    @ocaml.doc("<p>Not supported</p>") @as("DomainIAMRoleName") domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
      Amazon CloudWatch Logs. For example, <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
         <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
      <code>MonitoringRoleArn</code> value.</p>")
    @as("MonitoringRoleArn")
    monitoringRoleArn: option<string_>,
    @ocaml.doc("<p>This flag should no longer be used.</p>") @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>The port number on which the database accepts connections.</p>
         <p>The value of the <code>DBPortNumber</code> parameter must not match any of the port values
      specified for options in the option group for the DB instance.</p>
         <p>Your database will restart when you change the <code>DBPortNumber</code> value regardless
      of the value of the <code>ApplyImmediately</code> parameter.</p>
         <p> Default: <code>8182</code>
         </p>")
    @as("DBPortNumber")
    dbportNumber: option<integerOptional>,
    @ocaml.doc("<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
      for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
      is 0.</p>
         <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
      <code>MonitoringInterval</code> to a value other than 0.</p>
         <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
         </p>")
    @as("MonitoringInterval")
    monitoringInterval: option<integerOptional>,
    @ocaml.doc("<p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
      false. The default is false.</p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>Not supported.</p>") @as("Domain") domain: option<string_>,
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
    @ocaml.doc("<p>Not supported.</p>") @as("StorageType") storageType: option<string_>,
    @ocaml.doc("<p> The new DB instance identifier for the DB instance when renaming a DB instance. When you
      change the DB instance identifier, an instance reboot will occur immediately if you set
      <code>Apply Immediately</code> to true, or will occur during the next maintenance window if
      <code>Apply Immediately</code> to false. This value is stored as a lowercase string.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 1 to 63 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>The first character must be a letter.</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>mydbinstance</code>
         </p>")
    @as("NewDBInstanceIdentifier")
    newDBInstanceIdentifier: option<string_>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The new Provisioned IOPS (I/O operations per second) value for the instance.</p>
         <p>Changing this setting doesn't result in an outage and the change is applied during the
      next maintenance window unless the <code>ApplyImmediately</code> parameter is set to
      <code>true</code> for this request.</p>
         <p>Default: Uses existing setting</p>")
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc("<p> Indicates that minor version upgrades are applied automatically to the DB instance during
      the maintenance window. Changing this parameter doesn't result in an outage except in the
      following case and the change is asynchronously applied as soon as possible. An outage will
      result if this parameter is set to <code>true</code> during the maintenance window, and a
      newer minor version is available, and Neptune has enabled auto patching for that engine
      version.</p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>Indicates that major version upgrades are allowed. Changing this parameter doesn't result
      in an outage and the change is asynchronously applied as soon as possible.</p>")
    @as("AllowMajorVersionUpgrade")
    allowMajorVersionUpgrade: option<boolean_>,
    @ocaml.doc("<p>The version number of the database engine to upgrade to. Currently, setting this
      parameter has no effect. To upgrade your database engine to the most recent release,
      use the <a>ApplyPendingMaintenanceAction</a> API.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>Specifies if the DB instance is a Multi-AZ deployment. Changing this parameter doesn't
      result in an outage and the change is applied during the next maintenance window unless the
      <code>ApplyImmediately</code> parameter is set to <code>true</code> for this request.</p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The weekly time range (in UTC) during which system maintenance can occur, which might
      result in an outage. Changing this parameter doesn't result in an outage, except in the
      following situation, and the change is asynchronously applied as soon as possible. If there
      are pending actions that cause a reboot, and the maintenance window is changed to include the
      current time, then changing this parameter will cause a reboot of the DB instance. If moving
      this window to the current time, there must be at least 30 minutes between the current time
      and end of the window to ensure pending changes are applied.</p>
         <p>Default: Uses existing setting</p>
         <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
         <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
         <p>Constraints: Must be at least 30 minutes</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p> The daily time range during which automated backups are created if automated backups are
      enabled.</p>
         <p>Not applicable. The daily time range for creating automated backups is managed by the DB
      cluster. For more information, see <a>ModifyDBCluster</a>.</p>
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
    @ocaml.doc("<p>Not applicable. The retention period for automated backups is managed by the DB cluster.
      For more information, see <a>ModifyDBCluster</a>.</p>
         <p>Default: Uses existing setting</p>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to apply to the DB instance. Changing this setting
      doesn't result in an outage. The parameter group name itself is changed immediately, but the
      actual parameter changes are not applied until you reboot the instance without failover. The
      db instance will NOT be rebooted automatically and the parameter changes will NOT be applied
      during the next maintenance window.</p>
         <p>Default: Uses existing setting</p>
         <p>Constraints: The DB parameter group must be in the same DB parameter group family as this
      DB instance.</p>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>Specifies whether the modifications in this request and any pending modifications are
      asynchronously applied as soon as possible, regardless of the
      <code>PreferredMaintenanceWindow</code> setting for the DB instance.</p>
         <p> If this parameter is set to <code>false</code>, changes to the DB instance are applied
      during the next maintenance window. Some parameter changes can cause an outage and are applied
      on the next call to <a>RebootDBInstance</a>, or the next
      failure reboot.</p>
         <p>Default: <code>false</code>
         </p>")
    @as("ApplyImmediately")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>A list of EC2 VPC security groups to authorize on this DB instance. This change is
      asynchronously applied as soon as possible.</p>
         <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
      cluster. For more information, see <a>ModifyDBCluster</a>.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match existing VpcSecurityGroupIds.</p>
            </li>
         </ul>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of DB security groups to authorize on this DB instance. Changing this setting
      doesn't result in an outage and the change is asynchronously applied as soon as
      possible.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match existing DBSecurityGroups.</p>
            </li>
         </ul>")
    @as("DBSecurityGroups")
    dbsecurityGroups: option<dbsecurityGroupNameList>,
    @ocaml.doc("<p>The new DB subnet group for the DB instance. You can use this parameter to move your DB
      instance to a different VPC.</p>
         <p>Changing the subnet group causes an outage during the change. The change is applied during
      the next maintenance window, unless you specify <code>true</code> for the
      <code>ApplyImmediately</code> parameter.</p>
         <p>Constraints: If supplied, must match the name of an existing DBSubnetGroup.</p>
         <p>Example: <code>mySubnetGroup</code>
         </p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p>The new compute and memory capacity of the DB instance, for example,
      <code>db.m4.large</code>. Not all DB instance classes are available in all AWS
      Regions.</p>
         <p>If you modify the DB instance class, an outage occurs during the change. The change is
      applied during the next maintenance window, unless <code>ApplyImmediately</code> is specified
      as <code>true</code> for this request.</p>
         <p>Default: Uses existing setting</p>")
    @as("DBInstanceClass")
    dbinstanceClass: option<string_>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("AllocatedStorage")
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
    ~deletionProtection=?,
    ~cloudwatchLogsExportConfiguration=?,
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
      deletionProtection: deletionProtection,
      cloudwatchLogsExportConfiguration: cloudwatchLogsExportConfiguration,
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
  type request = {
    @ocaml.doc("<p>The customer identifier or the ARN of your DB instance.</p>")
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

module DescribeDBSubnetGroups = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous DescribeDBSubnetGroups request. If
      this parameter is specified, the response includes only records beyond the marker, up to the
      value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>This parameter is not currently supported.</p>") @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The name of the DB subnet group to return details for.</p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
  }
  type response = {
    @ocaml.doc("<p> A list of <a>DBSubnetGroup</a> instances.</p>") @as("DBSubnetGroups")
    dbsubnetGroups: option<dbsubnetGroups>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
      specified, the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code>.</p>")
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

module DeleteDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p> The DBSnapshotIdentifier of the new DBSnapshot created when SkipFinalSnapshot is set to
      <code>false</code>.</p>
         <note>
            <p>Specifying this parameter and also setting the SkipFinalShapshot parameter to true
        results in an error.</p>
         </note>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters or numbers.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
            <li>
               <p>Cannot be specified when deleting a Read Replica.</p>
            </li>
         </ul>")
    @as("FinalDBSnapshotIdentifier")
    finalDBSnapshotIdentifier: option<string_>,
    @ocaml.doc("<p> Determines whether a final DB snapshot is created before the DB instance is deleted. If
      <code>true</code> is specified, no DBSnapshot is created. If <code>false</code> is specified,
      a DB snapshot is created before the DB instance is deleted.</p>
         <p>Note that when a DB instance is in a failure state and has a status of 'failed',
      'incompatible-restore', or 'incompatible-network', it can only be deleted when the
      SkipFinalSnapshot parameter is set to \"true\".</p>
         <p>Specify <code>true</code> when deleting a Read Replica.</p>
         <note>
            <p>The FinalDBSnapshotIdentifier parameter must be specified if SkipFinalSnapshot is
        <code>false</code>.</p>
         </note>
         <p>Default: <code>false</code>
         </p>")
    @as("SkipFinalSnapshot")
    skipFinalSnapshot: option<boolean_>,
    @ocaml.doc("<p>The DB instance identifier for the DB instance to be deleted. This parameter isn't
      case-sensitive.</p>
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
  let make = (~dbinstanceIdentifier, ~finalDBSnapshotIdentifier=?, ~skipFinalSnapshot=?, ()) =>
    new({
      finalDBSnapshotIdentifier: finalDBSnapshotIdentifier,
      skipFinalSnapshot: skipFinalSnapshot,
      dbinstanceIdentifier: dbinstanceIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDBInstance = {
  type t
  type request = {
    @ocaml.doc("<p>A value that indicates whether the DB instance has deletion protection enabled.
      The database can't be deleted when deletion protection is enabled. By default,
      deletion protection is disabled. See <a href=\"https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-instances-delete.html\">Deleting
      a DB Instance</a>.</p>

         <p>DB instances in a DB cluster can be deleted even when deletion
      protection is enabled in their parent DB cluster.</p>")
    @as("DeletionProtection")
    deletionProtection: option<booleanOptional>,
    @ocaml.doc(
      "<p>The list of log types that need to be enabled for exporting to CloudWatch Logs.</p>"
    )
    @as("EnableCloudwatchLogsExports")
    enableCloudwatchLogsExports: option<logTypeList>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("PerformanceInsightsKMSKeyId")
    performanceInsightsKMSKeyId: option<string_>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("EnablePerformanceInsights")
    enablePerformanceInsights: option<booleanOptional>,
    @ocaml.doc("<p>Not supported by Neptune (ignored).</p>") @as("EnableIAMDatabaseAuthentication")
    enableIAMDatabaseAuthentication: option<booleanOptional>,
    @ocaml.doc("<p>The time zone of the DB instance.</p>") @as("Timezone")
    timezone: option<string_>,
    @ocaml.doc("<p>A value that specifies the order in which an Read Replica is promoted to the primary
      instance after a failure of the existing primary instance.
      </p>
         <p>Default: 1</p>
         <p>Valid Values: 0 - 15</p>")
    @as("PromotionTier")
    promotionTier: option<integerOptional>,
    @ocaml.doc("<p>Specify the name of the IAM role to be used when making API calls to the Directory
      Service.</p>")
    @as("DomainIAMRoleName")
    domainIAMRoleName: option<string_>,
    @ocaml.doc("<p>The ARN for the IAM role that permits Neptune to send enhanced monitoring metrics to
      Amazon CloudWatch Logs. For example,
      <code>arn:aws:iam:123456789012:role/emaccess</code>.</p>
         <p>If <code>MonitoringInterval</code> is set to a value other than 0, then you must supply a
      <code>MonitoringRoleArn</code> value.</p>")
    @as("MonitoringRoleArn")
    monitoringRoleArn: option<string_>,
    @ocaml.doc("<p>The interval, in seconds, between points when Enhanced Monitoring metrics are collected
      for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default
      is 0.</p>
         <p>If <code>MonitoringRoleArn</code> is specified, then you must also set
      <code>MonitoringInterval</code> to a value other than 0.</p>
         <p>Valid Values: <code>0, 1, 5, 10, 15, 30, 60</code>
         </p>")
    @as("MonitoringInterval")
    monitoringInterval: option<integerOptional>,
    @ocaml.doc("<p>True to copy all tags from the DB instance to snapshots of the DB instance, and otherwise
      false. The default is false.</p>")
    @as("CopyTagsToSnapshot")
    copyTagsToSnapshot: option<booleanOptional>,
    @ocaml.doc("<p>Specify the Active Directory Domain to create the instance in.</p>")
    @as("Domain")
    domain: option<string_>,
    @ocaml.doc("<p>The Amazon KMS key identifier for an encrypted DB instance.</p>
         <p>The KMS key identifier is the Amazon Resource Name (ARN) for the KMS encryption key. If
      you are creating a DB instance with the same Amazon account that owns the KMS encryption key used
      to encrypt the new DB instance, then you can use the KMS key alias instead of the ARN for the
      KM encryption key.</p>
         <p>Not applicable. The KMS key identifier is managed by the DB cluster. For more information,
      see <a>CreateDBCluster</a>.</p>
         <p>If the <code>StorageEncrypted</code> parameter is true, and you do not specify a value for
      the <code>KmsKeyId</code> parameter, then Amazon Neptune will use your default encryption key.
      Amazon KMS creates the default encryption key for your Amazon account. Your Amazon account has a
      different default encryption key for each Amazon Region.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc("<p>Specifies whether the DB instance is encrypted.</p>
         <p>Not applicable. The encryption for DB instances is managed by the DB cluster. For more
      information, see <a>CreateDBCluster</a>.</p>
         <p>Default: false</p>")
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
         <p>Not applicable. Storage is managed by the DB Cluster.</p>")
    @as("StorageType")
    storageType: option<string_>,
    @ocaml.doc("<p>The identifier of the DB cluster that the instance will belong to.</p>
         <p>For information on creating a DB cluster, see <a>CreateDBCluster</a>.</p>
         <p>Type: String</p>")
    @as("DBClusterIdentifier")
    dbclusterIdentifier: option<string_>,
    @ocaml.doc("<p>The tags to assign to the new instance.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>This flag should no longer be used.</p>") @as("PubliclyAccessible")
    publiclyAccessible: option<booleanOptional>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("CharacterSetName")
    characterSetName: option<string_>,
    @ocaml.doc("<p>
            <i>(Not supported by Neptune)</i>
         </p>")
    @as("OptionGroupName")
    optionGroupName: option<string_>,
    @ocaml.doc("<p>The amount of Provisioned IOPS (input/output operations per second) to be initially
      allocated for the DB instance.</p>")
    @as("Iops")
    iops: option<integerOptional>,
    @ocaml.doc("<p>License model information for this DB instance.</p>
         <p> Valid values: <code>license-included</code> | <code>bring-your-own-license</code> |
      <code>general-public-license</code>
         </p>")
    @as("LicenseModel")
    licenseModel: option<string_>,
    @ocaml.doc("<p>Indicates that minor engine upgrades are applied automatically to the DB instance during
      the maintenance window.</p>
         <p>Default: <code>true</code>
         </p>")
    @as("AutoMinorVersionUpgrade")
    autoMinorVersionUpgrade: option<booleanOptional>,
    @ocaml.doc("<p>The version number of the database engine to use. Currently, setting this
      parameter has no effect.</p>")
    @as("EngineVersion")
    engineVersion: option<string_>,
    @ocaml.doc("<p>Specifies if the DB instance is a Multi-AZ deployment. You can't set the AvailabilityZone
      parameter if the MultiAZ parameter is set to true.</p>")
    @as("MultiAZ")
    multiAZ: option<booleanOptional>,
    @ocaml.doc("<p>The port number on which the database accepts connections.</p>
         <p>Not applicable. The port is managed by the DB cluster. For more information, see <a>CreateDBCluster</a>.</p>
         <p> Default: <code>8182</code>
         </p>
         <p>Type: Integer</p>")
    @as("Port")
    port: option<integerOptional>,
    @ocaml.doc("<p> The daily time range during which automated backups are created.</p>
         <p>Not applicable. The daily time range for creating automated backups is managed by the DB
      cluster. For more information, see <a>CreateDBCluster</a>.</p>")
    @as("PreferredBackupWindow")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The number of days for which automated backups are
      retained.</p>
         <p>Not applicable. The retention period for automated backups is managed by the DB cluster.
      For more information, see <a>CreateDBCluster</a>.</p>
         <p>Default: 1</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be a value from 0 to 35</p>
            </li>
            <li>
               <p>Cannot be set to 0 if the DB instance is a source to Read Replicas</p>
            </li>
         </ul>")
    @as("BackupRetentionPeriod")
    backupRetentionPeriod: option<integerOptional>,
    @ocaml.doc("<p>The name of the DB parameter group to associate with this DB instance. If this argument is
      omitted, the default DBParameterGroup for the specified engine is used.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be 1 to 255 letters, numbers, or hyphens.</p>
            </li>
            <li>
               <p>First character must be a letter</p>
            </li>
            <li>
               <p>Cannot end with a hyphen or contain two consecutive hyphens</p>
            </li>
         </ul>")
    @as("DBParameterGroupName")
    dbparameterGroupName: option<string_>,
    @ocaml.doc("<p>The time range each week during which system maintenance can occur, in Universal
      Coordinated Time (UTC).</p>
         <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
         </p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      Amazon Region, occurring on a random day of the week.</p>
         <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
         <p>Constraints: Minimum 30-minute window.</p>")
    @as("PreferredMaintenanceWindow")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>A DB subnet group to associate with this DB instance.</p>
         <p>If there is no DB subnet group, then it is a non-VPC DB instance.</p>")
    @as("DBSubnetGroupName")
    dbsubnetGroupName: option<string_>,
    @ocaml.doc("<p> The EC2 Availability Zone that the DB instance is created in</p>
         <p>Default: A random, system-chosen Availability Zone in the endpoint's Amazon Region.</p>
         <p> Example: <code>us-east-1d</code>
         </p>
         <p> Constraint: The AvailabilityZone parameter can't be specified if the MultiAZ parameter is
      set to <code>true</code>. The specified Availability Zone must be in the same Amazon Region as
      the current endpoint.</p>")
    @as("AvailabilityZone")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>A list of EC2 VPC security groups to associate with this DB instance.</p>
         <p>Not applicable. The associated list of EC2 VPC security groups is managed by the DB
      cluster. For more information, see <a>CreateDBCluster</a>.</p>
         <p>Default: The default EC2 VPC security group for the DB subnet group's VPC.</p>")
    @as("VpcSecurityGroupIds")
    vpcSecurityGroupIds: option<vpcSecurityGroupIdList>,
    @ocaml.doc("<p>A list of DB security groups to associate with this DB instance.</p>
         <p>Default: The default DB security group for the database engine.</p>")
    @as("DBSecurityGroups")
    dbsecurityGroups: option<dbsecurityGroupNameList>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUserPassword")
    masterUserPassword: option<string_>,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("MasterUsername")
    masterUsername: option<string_>,
    @ocaml.doc("<p>The name of the database engine to be used for this instance.</p>
         <p>Valid Values: <code>neptune</code>
         </p>")
    @as("Engine")
    engine: string_,
    @ocaml.doc("<p>The compute and memory capacity of the DB instance, for example, <code>db.m4.large</code>.
      Not all DB instance classes are available in all Amazon Regions.</p>")
    @as("DBInstanceClass")
    dbinstanceClass: string_,
    @ocaml.doc("<p>Not supported by Neptune.</p>") @as("AllocatedStorage")
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
               <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
            </li>
         </ul>
         <p>Example: <code>mydbinstance</code>
         </p>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: string_,
    @ocaml.doc("<p>Not supported.</p>") @as("DBName") dbname: option<string_>,
  }
  type response = {@as("DBInstance") dbinstance: option<dbinstance>}
  @module("@aws-sdk/client-rds") @new external new: request => t = "CreateDBInstanceCommand"
  let make = (
    ~engine,
    ~dbinstanceClass,
    ~dbinstanceIdentifier,
    ~deletionProtection=?,
    ~enableCloudwatchLogsExports=?,
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
      deletionProtection: deletionProtection,
      enableCloudwatchLogsExports: enableCloudwatchLogsExports,
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

module DescribeDBInstances = {
  type t
  type request = {
    @ocaml.doc("<p> An optional pagination token provided by a previous <code>DescribeDBInstances</code>
      request. If this parameter is specified, the response includes only records beyond the marker,
      up to the value specified by <code>MaxRecords</code>.</p>")
    @as("Marker")
    marker: option<string_>,
    @ocaml.doc("<p> The maximum number of records to include in the response. If more records exist than the
      specified <code>MaxRecords</code> value, a pagination token called a marker is included in the
      response so that the remaining results can be retrieved.</p>
         <p>Default: 100</p>
         <p>Constraints: Minimum 20, maximum 100.</p>")
    @as("MaxRecords")
    maxRecords: option<integerOptional>,
    @ocaml.doc("<p>A filter that specifies one or more DB instances to describe.</p>
         <p>Supported filters:</p>
         <ul>
            <li>
               <p> 
                  <code>db-cluster-id</code> - Accepts DB cluster identifiers and DB cluster Amazon
        Resource Names (ARNs). The results list will only include information about the DB
        instances associated with the DB clusters identified by these ARNs.</p>
            </li>
            <li>
               <p>
                  <code>engine</code> - Accepts an engine name (such as <code>neptune</code>),
        and restricts the results list to DB instances created by that engine.</p>
            </li>
         </ul>

         <p>For example, to invoke this API from the Amazon CLI and filter so that only
      Neptune DB instances are returned, you could use the following command:</p>")
    @as("Filters")
    filters: option<filterList>,
    @ocaml.doc("<p>The user-supplied instance identifier. If this parameter is specified, information from
      only the specific DB instance is returned. This parameter isn't case-sensitive.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>If supplied, must match the identifier of an existing DBInstance.</p>
            </li>
         </ul>")
    @as("DBInstanceIdentifier")
    dbinstanceIdentifier: option<string_>,
  }
  type response = {
    @ocaml.doc("<p> A list of <a>DBInstance</a> instances.</p>") @as("DBInstances")
    dbinstances: option<dbinstanceList>,
    @ocaml.doc("<p> An optional pagination token provided by a previous request. If this parameter is
      specified, the response includes only records beyond the marker, up to the value specified by
      <code>MaxRecords</code> .</p>")
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
