type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-es") @new
external createClient: unit => awsServiceClient = "ElasticsearchClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc(
  "<p> The type of EBS volume, standard, gp2, or io1. See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs\" target=\"_blank\">Configuring EBS-based Storage</a>for more information.</p>"
)
type volumeType = [@as("io1") #Io1 | @as("gp2") #Gp2 | @as("standard") #Standard]
type username = string
type userPoolId = string
type upgradeStep = [
  | @as("UPGRADE") #UPGRADE
  | @as("SNAPSHOT") #SNAPSHOT
  | @as("PRE_UPGRADE_CHECK") #PRE_UPGRADE_CHECK
]
type upgradeStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED_WITH_ISSUES") #SUCCEEDED_WITH_ISSUES
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type upgradeName = string
type updateTimestamp = Js.Date.t
type uintValue = int
type totalNumberOfStages = int
@ocaml.doc(
  "<p>Specifies the unit of a maintenance schedule duration. Valid value is HOUR. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
)
type timeUnit = [@as("HOURS") #HOURS]
@ocaml.doc(
  "<p>A string of length from 0 to 256 characters that specifies the value for a Tag. Tag values can be null and do not have to be unique in a tag set.</p>"
)
type tagValue = string
@ocaml.doc(
  "<p>A string of length from 1 to 128 characters that specifies the key for a Tag. Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>"
)
type tagKey = string
type tlssecurityPolicy = [
  | @as("Policy-Min-TLS-1-2-2019-07") #Policy_Min_TLS_1_2_2019_07
  | @as("Policy-Min-TLS-1-0-2019-07") #Policy_Min_TLS_1_0_2019_07
]
type string_ = string
@ocaml.doc("<p>
  Type of the storage.
  List of available storage options:
  <ol>
    <li>instance</li> Inbuilt storage available for the given Instance
    <li>ebs</li> Elastic block storage that would be attached to the given Instance
  </ol>
    </p>")
type storageTypeName = string
@ocaml.doc("<p>
      SubType of the given storage type.
      List of available sub-storage options:
      For \"instance\" storageType we wont have any storageSubType,
      in case of \"ebs\" storageType we will have following valid storageSubTypes
      <ol>
        <li>standard</li>
        <li>gp2</li>
        <li>io1</li>
      </ol>
      Refer <code><a>VolumeType</a></code> for more information regarding above EBS storage options.
    </p>")
type storageSubTypeName = string
type startTimestamp = Js.Date.t
type startAt = Js.Date.t
@ocaml.doc(
  "<p>The endpoint to which service requests are submitted. For example, <code>search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code>.</p>"
)
type serviceUrl = string
@ocaml.doc("<p>Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and HIGH. </p>")
type scheduledAutoTuneSeverityType = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
@ocaml.doc("<p>Specifies Auto-Tune action description. </p>")
type scheduledAutoTuneDescription = string
@ocaml.doc(
  "<p>Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING. </p>"
)
type scheduledAutoTuneActionType = [
  | @as("JVM_YOUNG_GEN_TUNING") #JVM_YOUNG_GEN_TUNING
  | @as("JVM_HEAP_SIZE_TUNING") #JVM_HEAP_SIZE_TUNING
]
type samlmetadata = string
type samlentityId = string
type s3Key = string
type s3BucketName = string
@ocaml.doc(
  "<p>Specifies the rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK.</p>"
)
type rollbackOnDisable = [
  | @as("DEFAULT_ROLLBACK") #DEFAULT_ROLLBACK
  | @as("NO_ROLLBACK") #NO_ROLLBACK
]
type roleArn = string
type reservedElasticsearchInstancePaymentOption = [
  | @as("NO_UPFRONT") #NO_UPFRONT
  | @as("PARTIAL_UPFRONT") #PARTIAL_UPFRONT
  | @as("ALL_UPFRONT") #ALL_UPFRONT
]
type reservationToken = string
type region = string
type referencePath = string
@ocaml.doc(
  "<p>Access policy rules for an Elasticsearch domain service endpoints. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies\" target=\"_blank\">Configuring Access Policies</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>. The maximum size of a policy document is 100 KB.</p>"
)
type policyDocument = string
type password = string
type packageVersion = string
type packageType = [@as("TXT-DICTIONARY") #TXT_DICTIONARY]
type packageStatus = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("VALIDATION_FAILED") #VALIDATION_FAILED
  | @as("VALIDATING") #VALIDATING
  | @as("COPY_FAILED") #COPY_FAILED
  | @as("COPYING") #COPYING
]
type packageName = string
type packageID = string
type packageDescription = string
type ownerId = string
@ocaml.doc("<p>The overall status value of the domain configuration change.</p>")
type overallChangeStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("PROCESSING") #PROCESSING
  | @as("PENDING") #PENDING
]
type outboundCrossClusterSearchConnectionStatusCode = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("REJECTED") #REJECTED
  | @as("ACTIVE") #ACTIVE
  | @as("PROVISIONING") #PROVISIONING
  | @as("VALIDATION_FAILED") #VALIDATION_FAILED
  | @as("VALIDATING") #VALIDATING
  | @as("PENDING_ACCEPTANCE") #PENDING_ACCEPTANCE
]
@ocaml.doc("<p>The state of a requested change. One of the following:</p>
    <ul>
      <li>Processing: The request change is still in-process.</li>
      <li>Active: The request change is processed and deployed to the Elasticsearch domain.</li>
    </ul>")
type optionState = [
  | @as("Active") #Active
  | @as("Processing") #Processing
  | @as("RequiresIndexDocuments") #RequiresIndexDocuments
]
type nonEmptyString = string
@ocaml.doc("<p>
      Paginated APIs accepts NextToken input to returns next page results and provides
      a NextToken output in the response which can be used by the client to retrieve more results.
    </p>")
type nextToken = string
@ocaml.doc("<p>
      Minimum number of Instances that can be instantiated for given InstanceType.
    </p>")
type minimumInstanceCount = int
type message = string
@ocaml.doc("<p>
      Maximum number of Instances that can be instantiated for given InstanceType.
    </p>")
type maximumInstanceCount = int
@ocaml.doc("<p>
      Set this value to limit the number of results returned.
    </p>")
type maxResults = int
@ocaml.doc("<p>Type of Log File, it can be one of the following:
     <ul>
       <li>INDEX_SLOW_LOGS: Index slow logs contain insert requests that took more time than configured index query log threshold to execute.</li>
       <li>SEARCH_SLOW_LOGS: Search slow logs contain search queries that took more time than configured search query log threshold to execute.</li>
       <li>ES_APPLICATION_LOGS: Elasticsearch application logs contain information about errors and warnings raised during the operation of the service and can be useful for troubleshooting.</li>
       <li>AUDIT_LOGS: Audit logs contain records of user requests for access from the domain.</li>
     </ul>
    </p>")
type logType = [
  | @as("AUDIT_LOGS") #AUDIT_LOGS
  | @as("ES_APPLICATION_LOGS") #ES_APPLICATION_LOGS
  | @as("SEARCH_SLOW_LOGS") #SEARCH_SLOW_LOGS
  | @as("INDEX_SLOW_LOGS") #INDEX_SLOW_LOGS
]
type limitValue = string
type limitName = string
type lastUpdated = Js.Date.t
type kmsKeyId = string
type issue = string
type integerClass = int
type integer_ = int
type instanceRole = string
@ocaml.doc("<p>Specifies the number of EC2 instances in the Elasticsearch domain.</p>")
type instanceCount = int
type inboundCrossClusterSearchConnectionStatusCode = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("REJECTED") #REJECTED
  | @as("REJECTING") #REJECTING
  | @as("APPROVED") #APPROVED
  | @as("PENDING_ACCEPTANCE") #PENDING_ACCEPTANCE
]
type identityPoolId = string
type guid = string
type errorType = string
type errorMessage = string
type engineType = [@as("Elasticsearch") #Elasticsearch | @as("OpenSearch") #OpenSearch]
type elasticsearchVersionString = string
type eswarmPartitionInstanceType = [
  | @as("ultrawarm1.large.elasticsearch") #Ultrawarm1_Large_Elasticsearch
  | @as("ultrawarm1.medium.elasticsearch") #Ultrawarm1_Medium_Elasticsearch
]
type espartitionInstanceType = [
  | @as("i3.16xlarge.elasticsearch") #I3_16xlarge_Elasticsearch
  | @as("i3.8xlarge.elasticsearch") #I3_8xlarge_Elasticsearch
  | @as("i3.4xlarge.elasticsearch") #I3_4xlarge_Elasticsearch
  | @as("i3.2xlarge.elasticsearch") #I3_2xlarge_Elasticsearch
  | @as("i3.xlarge.elasticsearch") #I3_Xlarge_Elasticsearch
  | @as("i3.large.elasticsearch") #I3_Large_Elasticsearch
  | @as("r4.16xlarge.elasticsearch") #R4_16xlarge_Elasticsearch
  | @as("r4.8xlarge.elasticsearch") #R4_8xlarge_Elasticsearch
  | @as("r4.4xlarge.elasticsearch") #R4_4xlarge_Elasticsearch
  | @as("r4.2xlarge.elasticsearch") #R4_2xlarge_Elasticsearch
  | @as("r4.xlarge.elasticsearch") #R4_Xlarge_Elasticsearch
  | @as("r4.large.elasticsearch") #R4_Large_Elasticsearch
  | @as("c4.8xlarge.elasticsearch") #C4_8xlarge_Elasticsearch
  | @as("c4.4xlarge.elasticsearch") #C4_4xlarge_Elasticsearch
  | @as("c4.2xlarge.elasticsearch") #C4_2xlarge_Elasticsearch
  | @as("c4.xlarge.elasticsearch") #C4_Xlarge_Elasticsearch
  | @as("c4.large.elasticsearch") #C4_Large_Elasticsearch
  | @as("d2.8xlarge.elasticsearch") #D2_8xlarge_Elasticsearch
  | @as("d2.4xlarge.elasticsearch") #D2_4xlarge_Elasticsearch
  | @as("d2.2xlarge.elasticsearch") #D2_2xlarge_Elasticsearch
  | @as("d2.xlarge.elasticsearch") #D2_Xlarge_Elasticsearch
  | @as("i2.2xlarge.elasticsearch") #I2_2xlarge_Elasticsearch
  | @as("i2.xlarge.elasticsearch") #I2_Xlarge_Elasticsearch
  | @as("r3.8xlarge.elasticsearch") #R3_8xlarge_Elasticsearch
  | @as("r3.4xlarge.elasticsearch") #R3_4xlarge_Elasticsearch
  | @as("r3.2xlarge.elasticsearch") #R3_2xlarge_Elasticsearch
  | @as("r3.xlarge.elasticsearch") #R3_Xlarge_Elasticsearch
  | @as("r3.large.elasticsearch") #R3_Large_Elasticsearch
  | @as("t2.medium.elasticsearch") #T2_Medium_Elasticsearch
  | @as("t2.small.elasticsearch") #T2_Small_Elasticsearch
  | @as("t2.micro.elasticsearch") #T2_Micro_Elasticsearch
  | @as("ultrawarm1.large.elasticsearch") #Ultrawarm1_Large_Elasticsearch
  | @as("ultrawarm1.medium.elasticsearch") #Ultrawarm1_Medium_Elasticsearch
  | @as("c5.18xlarge.elasticsearch") #C5_18xlarge_Elasticsearch
  | @as("c5.9xlarge.elasticsearch") #C5_9xlarge_Elasticsearch
  | @as("c5.4xlarge.elasticsearch") #C5_4xlarge_Elasticsearch
  | @as("c5.2xlarge.elasticsearch") #C5_2xlarge_Elasticsearch
  | @as("c5.xlarge.elasticsearch") #C5_Xlarge_Elasticsearch
  | @as("c5.large.elasticsearch") #C5_Large_Elasticsearch
  | @as("r5.12xlarge.elasticsearch") #R5_12xlarge_Elasticsearch
  | @as("r5.4xlarge.elasticsearch") #R5_4xlarge_Elasticsearch
  | @as("r5.2xlarge.elasticsearch") #R5_2xlarge_Elasticsearch
  | @as("r5.xlarge.elasticsearch") #R5_Xlarge_Elasticsearch
  | @as("r5.large.elasticsearch") #R5_Large_Elasticsearch
  | @as("m5.12xlarge.elasticsearch") #M5_12xlarge_Elasticsearch
  | @as("m5.4xlarge.elasticsearch") #M5_4xlarge_Elasticsearch
  | @as("m5.2xlarge.elasticsearch") #M5_2xlarge_Elasticsearch
  | @as("m5.xlarge.elasticsearch") #M5_Xlarge_Elasticsearch
  | @as("m5.large.elasticsearch") #M5_Large_Elasticsearch
  | @as("m4.10xlarge.elasticsearch") #M4_10xlarge_Elasticsearch
  | @as("m4.4xlarge.elasticsearch") #M4_4xlarge_Elasticsearch
  | @as("m4.2xlarge.elasticsearch") #M4_2xlarge_Elasticsearch
  | @as("m4.xlarge.elasticsearch") #M4_Xlarge_Elasticsearch
  | @as("m4.large.elasticsearch") #M4_Large_Elasticsearch
  | @as("m3.2xlarge.elasticsearch") #M3_2xlarge_Elasticsearch
  | @as("m3.xlarge.elasticsearch") #M3_Xlarge_Elasticsearch
  | @as("m3.large.elasticsearch") #M3_Large_Elasticsearch
  | @as("m3.medium.elasticsearch") #M3_Medium_Elasticsearch
]
@ocaml.doc(
  "<p> Integer to specify the value of a maintenance schedule duration. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
)
type durationValue = float
type dryRun = bool
type double = float
type domainPackageStatus = [
  | @as("DISSOCIATION_FAILED") #DISSOCIATION_FAILED
  | @as("DISSOCIATING") #DISSOCIATING
  | @as("ACTIVE") #ACTIVE
  | @as("ASSOCIATION_FAILED") #ASSOCIATION_FAILED
  | @as("ASSOCIATING") #ASSOCIATING
]
type domainNameFqdn = string
@ocaml.doc(
  "<p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>"
)
type domainName = string
@ocaml.doc("<p>Unique identifier for an Elasticsearch domain.</p>") type domainId = string
type disableTimestamp = Js.Date.t
type description = string
type describePackagesFilterValue = string
type describePackagesFilterName = [
  | @as("PackageStatus") #PackageStatus
  | @as("PackageName") #PackageName
  | @as("PackageID") #PackageID
]
type deploymentType = string
type deploymentStatus = [
  | @as("ELIGIBLE") #ELIGIBLE
  | @as("NOT_ELIGIBLE") #NOT_ELIGIBLE
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("PENDING_UPDATE") #PENDING_UPDATE
]
type deploymentCloseDateTimeStamp = Js.Date.t
type crossClusterSearchConnectionStatusMessage = string
type crossClusterSearchConnectionId = string
type createdAt = Js.Date.t
type connectionAlias = string
type commitMessage = string
@ocaml.doc("<p>ARN of the Cloudwatch log group to which log needs to be published.</p>")
type cloudWatchLogsLogGroupArn = string
type changeProgressStageStatus = string
type changeProgressStageName = string
type boolean_ = bool
type backendRole = string
@ocaml.doc("<p>Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION. </p>")
type autoTuneType = [@as("SCHEDULED_ACTION") #SCHEDULED_ACTION]
@ocaml.doc(
  "<p>Specifies the Auto-Tune state for the Elasticsearch domain. For valid states see the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a>.</p>"
)
type autoTuneState = [
  | @as("ERROR") #ERROR
  | @as("DISABLED_AND_ROLLBACK_ERROR") #DISABLED_AND_ROLLBACK_ERROR
  | @as("DISABLED_AND_ROLLBACK_COMPLETE") #DISABLED_AND_ROLLBACK_COMPLETE
  | @as("DISABLED_AND_ROLLBACK_IN_PROGRESS") #DISABLED_AND_ROLLBACK_IN_PROGRESS
  | @as("DISABLED_AND_ROLLBACK_SCHEDULED") #DISABLED_AND_ROLLBACK_SCHEDULED
  | @as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS
  | @as("ENABLE_IN_PROGRESS") #ENABLE_IN_PROGRESS
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
@ocaml.doc("<p>Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED.</p>")
type autoTuneDesiredState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc("<p>Specifies timestamp for the Auto-Tune action scheduled for the domain. </p>")
type autoTuneDate = Js.Date.t
@ocaml.doc(
  "<p>The Amazon Resource Name (ARN) of the Elasticsearch domain.  See <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html\" target=\"_blank\">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>"
)
type arn = string
@ocaml.doc(
  "<p>Specifies the zone awareness configuration for the domain cluster, such as the number of availability zones.</p>"
)
type zoneAwarenessConfig = {
  @ocaml.doc(
    "<p>An integer value to indicate the number of availability zones for a domain when zone awareness is enabled. This should be equal to number of subnets if VPC endpoints is enabled</p>"
  )
  @as("AvailabilityZoneCount")
  availabilityZoneCount: option<integerClass>,
}
type valueStringList = array<nonEmptyString>
@ocaml.doc("<p>Specifies a key value pair for a resource tag.</p>")
type tag = {
  @ocaml.doc("<p>Specifies the <code>TagValue</code>, the value assigned to the corresponding tag key.  Tag values can be null and do not have to be unique in a tag set.  For example, you can have a key value
       pair in a tag set of <code>project : Trinity</code> and <code>cost-center : Trinity</code></p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc(
    "<p>Specifies the <code>TagKey</code>, the name of the tag.  Tag keys must be unique for the Elasticsearch domain to which they are attached.</p>"
  )
  @as("Key")
  key: tagKey,
}
type stringList = array<string_>
@ocaml.doc(
  "<p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>"
)
type snapshotOptions = {
  @ocaml.doc(
    "<p>Specifies the time, in UTC format, when the service takes a daily automated snapshot of the specified Elasticsearch domain. Default value is <code>0</code> hours.</p>"
  )
  @as("AutomatedSnapshotStartHour")
  automatedSnapshotStartHour: option<integerClass>,
}
@ocaml.doc("<p>The current options of an Elasticsearch domain service software options.</p>")
type serviceSoftwareOptions = {
  @ocaml.doc(
    "<p><code>True</code> if a service software is never automatically updated. <code>False</code> if a service software is automatically updated after <code>AutomatedUpdateDate</code>.  </p>"
  )
  @as("OptionalDeployment")
  optionalDeployment: option<boolean_>,
  @ocaml.doc(
    "<p>Timestamp, in Epoch time, until which you can manually request a service software update. After this date, we automatically update your service software.</p>"
  )
  @as("AutomatedUpdateDate")
  automatedUpdateDate: option<deploymentCloseDateTimeStamp>,
  @ocaml.doc("<p>The description of the <code>UpdateStatus</code>.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc(
    "<p>The status of your service software update. This field can take the following values: <code>ELIGIBLE</code>, <code>PENDING_UPDATE</code>, <code>IN_PROGRESS</code>, <code>COMPLETED</code>, and <code>NOT_ELIGIBLE</code>.</p>"
  )
  @as("UpdateStatus")
  updateStatus: option<deploymentStatus>,
  @ocaml.doc(
    "<p><code>True</code> if you are able to cancel your service software version update. <code>False</code> if you are not able to cancel your service software version. </p>"
  )
  @as("Cancellable")
  cancellable: option<boolean_>,
  @ocaml.doc(
    "<p><code>True</code> if you are able to update you service software version. <code>False</code> if you are not able to update your service software version. </p>"
  )
  @as("UpdateAvailable")
  updateAvailable: option<boolean_>,
  @ocaml.doc("<p>The new service software version if one is available.</p>") @as("NewVersion")
  newVersion: option<string_>,
  @ocaml.doc("<p>The current service software version that is present on the domain.</p>")
  @as("CurrentVersion")
  currentVersion: option<string_>,
}
@ocaml.doc(
  "<p>Specifies details of the scheduled Auto-Tune action. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information. </p>"
)
type scheduledAutoTuneDetails = {
  @ocaml.doc("<p>Specifies Auto-Tune action severity. Valid values are LOW, MEDIUM and HIGH. </p>")
  @as("Severity")
  severity: option<scheduledAutoTuneSeverityType>,
  @ocaml.doc("<p>Specifies Auto-Tune action description. </p>") @as("Action")
  action: option<scheduledAutoTuneDescription>,
  @ocaml.doc(
    "<p>Specifies Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING. </p>"
  )
  @as("ActionType")
  actionType: option<scheduledAutoTuneActionType>,
  @ocaml.doc("<p>Specifies timestamp for the Auto-Tune action scheduled for the domain. </p>")
  @as("Date")
  date: option<autoTuneDate>,
}
@ocaml.doc("<p>Specifies the SAML Identity Provider's information.</p>")
type samlidp = {
  @ocaml.doc("<p>The unique Entity ID of the application in SAML Identity Provider.</p>")
  @as("EntityId")
  entityId: samlentityId,
  @ocaml.doc("<p>The Metadata of the SAML application in xml format.</p>") @as("MetadataContent")
  metadataContent: samlmetadata,
}
@ocaml.doc(
  "<p>Contains the specific price and frequency of a recurring charges for a reserved Elasticsearch instance, or for a reserved Elasticsearch instance offering.</p>"
)
type recurringCharge = {
  @ocaml.doc("<p>The frequency of the recurring charge.</p>") @as("RecurringChargeFrequency")
  recurringChargeFrequency: option<string_>,
  @ocaml.doc("<p>The monetary amount of the recurring charge.</p>") @as("RecurringChargeAmount")
  recurringChargeAmount: option<double>,
}
@ocaml.doc("<p>Details of a package version.</p>")
type packageVersionHistory = {
  @ocaml.doc("<p>Timestamp which tells creation time of the package version.</p>") @as("CreatedAt")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>A message associated with the version.</p>") @as("CommitMessage")
  commitMessage: option<commitMessage>,
  @ocaml.doc("<p>Version of the package.</p>") @as("PackageVersion")
  packageVersion: option<packageVersion>,
}
@ocaml.doc(
  "<p>The S3 location for importing the package specified as <code>S3BucketName</code> and <code>S3Key</code></p>"
)
type packageSource = {
  @ocaml.doc("<p>Key (file name) of the package.</p>") @as("S3Key") s3Key: option<s3Key>,
  @ocaml.doc("<p>Name of the bucket containing the package.</p>") @as("S3BucketName")
  s3BucketName: option<s3BucketName>,
}
@ocaml.doc("<p>Specifies the connection status of an outbound cross-cluster search connection.</p>")
type outboundCrossClusterSearchConnectionStatus = {
  @ocaml.doc("<p>Specifies verbose information for the outbound connection status.</p>")
  @as("Message")
  message: option<crossClusterSearchConnectionStatusMessage>,
  @ocaml.doc("<p>The state code for outbound connection. This can be one of the following:</p>
    <ul>
      <li>VALIDATING: The outbound connection request is being validated.</li>
      <li>VALIDATION_FAILED: Validation failed for the connection request.</li>
      <li>PENDING_ACCEPTANCE: Outbound connection request is validated and is not yet accepted by destination domain owner.</li>
      <li>PROVISIONING: Outbound connection request is in process.</li>
      <li>ACTIVE: Outbound connection is active and ready to use.</li>
      <li>REJECTED: Outbound connection request is rejected by destination domain owner.</li>
      <li>DELETING: Outbound connection deletion is in progress.</li>
      <li>DELETED: Outbound connection is deleted and cannot be used further.</li>
    </ul>")
  @as("StatusCode")
  statusCode: option<outboundCrossClusterSearchConnectionStatusCode>,
}
@ocaml.doc("<p>Provides the current status of the entity.</p>")
type optionStatus = {
  @ocaml.doc("<p>Indicates whether the Elasticsearch domain is being deleted.</p>")
  @as("PendingDeletion")
  pendingDeletion: option<boolean_>,
  @ocaml.doc("<p>Provides the <code>OptionState</code> for the Elasticsearch domain.</p>")
  @as("State")
  state: optionState,
  @ocaml.doc("<p>Specifies the latest version for the entity.</p>") @as("UpdateVersion")
  updateVersion: option<uintValue>,
  @ocaml.doc("<p>Timestamp which tells the last updated time for the entity.</p>") @as("UpdateDate")
  updateDate: updateTimestamp,
  @ocaml.doc("<p>Timestamp which tells the creation date for the entity.</p>") @as("CreationDate")
  creationDate: updateTimestamp,
}
@ocaml.doc("<p>Specifies the node-to-node encryption options.</p>")
type nodeToNodeEncryptionOptions = {
  @ocaml.doc("<p>Specify true to enable node-to-node encryption.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>Credentials for the master user: username and password, ARN, or both.</p>")
type masterUserOptions = {
  @ocaml.doc(
    "<p>The master user's password, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>"
  )
  @as("MasterUserPassword")
  masterUserPassword: option<password>,
  @ocaml.doc(
    "<p>The master user's username, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>"
  )
  @as("MasterUserName")
  masterUserName: option<username>,
  @ocaml.doc("<p>ARN for the master user (if IAM is enabled).</p>") @as("MasterUserARN")
  masterUserARN: option<arn>,
}
@ocaml.doc("<p>Log Publishing option that is set for given domain.
       <br></br>Attributes and their details:
     <ul>
       <li>CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to which log needs to be published.</li>
       <li>Enabled: Whether the log publishing for given log type is enabled or not</li>
     </ul>
   </p>")
type logPublishingOption = {
  @ocaml.doc("<p> Specifies whether given log publishing option is enabled or not.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
  @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<cloudWatchLogsLogGroupArn>,
}
type limitValueList = array<limitValue>
type issues = array<issue>
@ocaml.doc("<p>
      InstanceCountLimits represents the limits on number of instances that be created in Amazon Elasticsearch for
      given InstanceType.
    </p>")
type instanceCountLimits = {
  @as("MaximumInstanceCount") maximumInstanceCount: option<maximumInstanceCount>,
  @as("MinimumInstanceCount") minimumInstanceCount: option<minimumInstanceCount>,
}
@ocaml.doc("<p>Specifies the coonection status of an inbound cross-cluster search connection.</p>")
type inboundCrossClusterSearchConnectionStatus = {
  @ocaml.doc("<p>Specifies verbose information for the inbound connection status.</p>")
  @as("Message")
  message: option<crossClusterSearchConnectionStatusMessage>,
  @ocaml.doc("<p>The state code for inbound connection. This can be one of the following:</p>
    <ul>
      <li>PENDING_ACCEPTANCE: Inbound connection is not yet accepted by destination domain owner.</li>
      <li>APPROVED: Inbound connection is pending acceptance by destination domain owner.</li>
      <li>REJECTING: Inbound connection rejection is in process.</li>
      <li>REJECTED: Inbound connection is rejected.</li>
      <li>DELETING: Inbound connection deletion is in progress.</li>
      <li>DELETED: Inbound connection is deleted and cannot be used further.</li>
    </ul>")
  @as("StatusCode")
  statusCode: option<inboundCrossClusterSearchConnectionStatusCode>,
}
type errorDetails = {
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorType") errorType: option<errorType>,
}
type endpointsMap = Js.Dict.t<serviceUrl>
@ocaml.doc("<p>Specifies the Encryption At Rest Options.</p>")
type encryptionAtRestOptions = {
  @ocaml.doc("<p> Specifies the KMS Key ID for Encryption At Rest options.</p>") @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>Specifies the option to enable Encryption At Rest.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>List of supported elastic search versions.
    </p>")
type elasticsearchVersionList = array<elasticsearchVersionString>
@ocaml.doc("<p>
      List of instance types supported by Amazon Elasticsearch service.
    </p>")
type elasticsearchInstanceTypeList = array<espartitionInstanceType>
@ocaml.doc(
  "<p>Options to enable, disable, and specify the properties of EBS storage volumes. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs\" target=\"_blank\"> Configuring EBS-based Storage</a>.</p>"
)
type ebsoptions = {
  @ocaml.doc("<p>Specifies the IOPD for a Provisioned IOPS EBS volume (SSD).</p>") @as("Iops")
  iops: option<integerClass>,
  @ocaml.doc("<p> Integer to specify the size of an EBS volume.</p>") @as("VolumeSize")
  volumeSize: option<integerClass>,
  @ocaml.doc("<p> Specifies the volume type for EBS-based storage.</p>") @as("VolumeType")
  volumeType: option<volumeType>,
  @ocaml.doc("<p>Specifies whether EBS-based storage is enabled.</p>") @as("EBSEnabled")
  ebsenabled: option<boolean_>,
}
@ocaml.doc(
  "<p>Specifies maintenance schedule duration: duration value and duration unit. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
)
type duration = {
  @ocaml.doc(
    "<p>Specifies the unit of a maintenance schedule duration. Valid value is HOURS. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
  )
  @as("Unit")
  unit_: option<timeUnit>,
  @ocaml.doc(
    "<p> Integer to specify the value of a maintenance schedule duration. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
  )
  @as("Value")
  value: option<durationValue>,
}
type dryRunResults = {
  @ocaml.doc("<p>Contains an optional message associated with the DryRunResults.</p>")
  @as("Message")
  message: option<message>,
  @ocaml.doc("<p>
            Specifies the deployment mechanism through which the update shall be applied on the domain.
            Possible responses are
            <code>Blue/Green</code> (The update will require a blue/green deployment.)
            <code>DynamicUpdate</code> (The update can be applied in-place without a Blue/Green deployment required.)
            <code>Undetermined</code> (The domain is undergoing an update which needs to complete before the deployment type can be predicted.)
            <code>None</code> (The configuration change matches the current configuration and will not result in any update.)
        </p>")
  @as("DeploymentType")
  deploymentType: option<deploymentType>,
}
@ocaml.doc("<p>A list of Elasticsearch domain names.</p>") type domainNameList = array<domainName>
type domainInformation = {
  @as("Region") region: option<region>,
  @as("DomainName") domainName: domainName,
  @as("OwnerId") ownerId: option<ownerId>,
}
type domainInfo = {
  @ocaml.doc("<p> Specifies the <code>EngineType</code> of the domain.</p>") @as("EngineType")
  engineType: option<engineType>,
  @ocaml.doc("<p> Specifies the <code>DomainName</code>.</p>") @as("DomainName")
  domainName: option<domainName>,
}
@ocaml.doc("<p>Options to configure endpoint for the Elasticsearch domain.</p>")
type domainEndpointOptions = {
  @ocaml.doc("<p>Specify ACM certificate ARN for your custom endpoint.</p>")
  @as("CustomEndpointCertificateArn")
  customEndpointCertificateArn: option<arn>,
  @ocaml.doc("<p>Specify the fully qualified domain for your custom endpoint.</p>")
  @as("CustomEndpoint")
  customEndpoint: option<domainNameFqdn>,
  @ocaml.doc("<p>Specify if custom endpoint should be enabled for the Elasticsearch domain.</p>")
  @as("CustomEndpointEnabled")
  customEndpointEnabled: option<boolean_>,
  @ocaml.doc("<p>Specify the TLS security policy that needs to be applied to the HTTPS endpoint of Elasticsearch domain.
        <br></br> It can be one of the following values:
        <ul>
            <li><b>Policy-Min-TLS-1-0-2019-07: </b> TLS security policy which supports TLSv1.0 and higher.</li>
            <li><b>Policy-Min-TLS-1-2-2019-07: </b> TLS security policy which supports only TLSv1.2</li>
        </ul>
    </p>")
  @as("TLSSecurityPolicy")
  tlssecurityPolicy: option<tlssecurityPolicy>,
  @ocaml.doc(
    "<p>Specify if only HTTPS endpoint should be enabled for the Elasticsearch domain.</p>"
  )
  @as("EnforceHTTPS")
  enforceHTTPS: option<boolean_>,
}
type describePackagesFilterValues = array<describePackagesFilterValue>
@ocaml.doc("<p>Specifies the configuration for cold storage options such as enabled</p>")
type coldStorageOptions = {
  @ocaml.doc("<p>Enable cold storage option. Accepted values true or false</p>") @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc(
  "<p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html\" target=\"_blank\">Amazon Cognito Authentication for Kibana</a>.</p>"
)
type cognitoOptions = {
  @ocaml.doc(
    "<p>Specifies the role ARN that provides Elasticsearch permissions for accessing Cognito resources.</p>"
  )
  @as("RoleArn")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>Specifies the Cognito identity pool ID for Kibana authentication.</p>")
  @as("IdentityPoolId")
  identityPoolId: option<identityPoolId>,
  @ocaml.doc("<p>Specifies the Cognito user pool ID for Kibana authentication.</p>")
  @as("UserPoolId")
  userPoolId: option<userPoolId>,
  @ocaml.doc("<p>Specifies the option to enable Cognito for Kibana authentication.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>A progress stage details of a specific domain configuration change.</p>")
type changeProgressStage = {
  @ocaml.doc("<p>The last updated timestamp of the progress stage.</p>") @as("LastUpdated")
  lastUpdated: option<lastUpdated>,
  @ocaml.doc("<p>The description of the progress stage.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The overall status of a specific progress stage.</p>") @as("Status")
  status: option<changeProgressStageStatus>,
  @ocaml.doc("<p>The name of the specific progress stage.</p>") @as("Name")
  name: option<changeProgressStageName>,
}
@ocaml.doc("<p>Specifies change details of the domain configuration change.</p>")
type changeProgressDetails = {
  @ocaml.doc("<p>Contains an optional message associated with the domain configuration change.</p>")
  @as("Message")
  message: option<message>,
  @ocaml.doc(
    "<p>The unique change identifier associated with a specific domain configuration change.</p>"
  )
  @as("ChangeId")
  changeId: option<guid>,
}
@ocaml.doc("<p>Provides the current status of the Auto-Tune options. </p>")
type autoTuneStatus = {
  @ocaml.doc("<p>Indicates whether the Elasticsearch domain is being deleted.</p>")
  @as("PendingDeletion")
  pendingDeletion: option<boolean_>,
  @ocaml.doc(
    "<p>Specifies the error message while enabling or disabling the Auto-Tune options.</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>Specifies the <code>AutoTuneState</code> for the Elasticsearch domain.</p>")
  @as("State")
  state: autoTuneState,
  @ocaml.doc("<p>Specifies the Auto-Tune options latest version.</p>") @as("UpdateVersion")
  updateVersion: option<uintValue>,
  @ocaml.doc("<p>Timestamp which tells Auto-Tune options last updated time.</p>") @as("UpdateDate")
  updateDate: updateTimestamp,
  @ocaml.doc("<p>Timestamp which tells Auto-Tune options creation date .</p>") @as("CreationDate")
  creationDate: updateTimestamp,
}
@ocaml.doc(
  "<p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.</p>"
)
type autoTuneOptionsOutput = {
  @ocaml.doc("<p>Specifies the error message while enabling or disabling the Auto-Tune.</p>")
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>Specifies the <code>AutoTuneState</code> for the Elasticsearch domain.</p>")
  @as("State")
  state: option<autoTuneState>,
}
@ocaml.doc("<p> Exposes select native Elasticsearch configuration values from <code>elasticsearch.yml</code>.  Currently, the following advanced options are available:</p>
       <ul>
           <li>Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
               See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options\" target=\"_blank\">Configuration Advanced Options</a> for more information.</li>
           <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li>
       </ul>
       <p>For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options\">Configuring Advanced Options</a>.</p>")
type advancedOptions = Js.Dict.t<string_>
@ocaml.doc(
  "<p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html\" target=\"_blank\"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>"
)
type vpcoptions = {
  @ocaml.doc("<p>Specifies the security groups for VPC endpoint.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<stringList>,
  @ocaml.doc("<p>Specifies the subnets for VPC endpoint.</p>") @as("SubnetIds")
  subnetIds: option<stringList>,
}
@ocaml.doc(
  "<p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html\" target=\"_blank\"> VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>"
)
type vpcderivedInfo = {
  @ocaml.doc("<p>Specifies the security groups for VPC endpoint.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<stringList>,
  @ocaml.doc(
    "<p>The availability zones for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>"
  )
  @as("AvailabilityZones")
  availabilityZones: option<stringList>,
  @ocaml.doc("<p>Specifies the subnets for VPC endpoint.</p>") @as("SubnetIds")
  subnetIds: option<stringList>,
  @ocaml.doc(
    "<p>The VPC Id for the Elasticsearch domain. Exists only if the domain was created with VPCOptions.</p>"
  )
  @as("VPCId")
  vpcid: option<string_>,
}
@ocaml.doc("<p>Represents a single step of the Upgrade or Upgrade Eligibility Check workflow.</p>")
type upgradeStepItem = {
  @ocaml.doc(
    "<p>The Floating point value representing progress percentage of a particular step.</p>"
  )
  @as("ProgressPercent")
  progressPercent: option<double>,
  @ocaml.doc(
    "<p>A list of strings containing detailed information about the errors encountered in a particular step.</p>"
  )
  @as("Issues")
  issues: option<issues>,
  @ocaml.doc("<p>
      The status of a particular step during an upgrade. The status can take one of the following values:
      <ul>
        <li>In Progress</li>
        <li>Succeeded</li>
        <li>Succeeded with Issues</li>
        <li>Failed</li>
      </ul>
    </p>")
  @as("UpgradeStepStatus")
  upgradeStepStatus: option<upgradeStatus>,
  @ocaml.doc("<p>
      Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:
      <ul>
        <li>PreUpgradeCheck</li>
        <li>Snapshot</li>
        <li>Upgrade</li>
      </ul>
    </p>")
  @as("UpgradeStep")
  upgradeStep: option<upgradeStep>,
}
@ocaml.doc("<p>A list of <code>Tag</code> </p>") type tagList_ = array<tag>
@ocaml.doc("<p>Limits that are applicable for given storage type.
    </p>")
type storageTypeLimit = {
  @ocaml.doc("<p>
      Values for the
      <code>
        <a>StorageTypeLimit$LimitName</a>
      </code>
      .
    </p>")
  @as("LimitValues")
  limitValues: option<limitValueList>,
  @ocaml.doc("<p>
    Name of storage limits that are applicable for given storage type.
    If
    <code>
      <a>StorageType</a>
    </code>
    is ebs, following storage options are applicable
    <ol>
      <li>MinimumVolumeSize</li>
      Minimum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
      <li>MaximumVolumeSize</li>
      Maximum amount of volume size that is applicable for given storage type.It can be empty if it is not applicable.
      <li>MaximumIops</li>
      Maximum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
      <li>MinimumIops</li>
      Minimum amount of Iops that is applicable for given storage type.It can be empty if it is not applicable.
    </ol>
  </p>")
  @as("LimitName")
  limitName: option<limitName>,
}
@ocaml.doc("<p>Status of a daily automated snapshot.</p>")
type snapshotOptionsStatus = {
  @ocaml.doc("<p>Specifies the status of a daily automated snapshot.</p>") @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>Specifies the daily snapshot options specified for the Elasticsearch domain.</p>")
  @as("Options")
  options: snapshotOptions,
}
@ocaml.doc("<p>Describes the SAML application configured for the domain.</p>")
type samloptionsOutput = {
  @ocaml.doc("<p>The duration, in minutes, after which a user session becomes inactive.</p>")
  @as("SessionTimeoutMinutes")
  sessionTimeoutMinutes: option<integerClass>,
  @ocaml.doc("<p>The key used for matching the SAML Roles attribute.</p>") @as("RolesKey")
  rolesKey: option<string_>,
  @ocaml.doc("<p>The key used for matching the SAML Subject attribute.</p>") @as("SubjectKey")
  subjectKey: option<string_>,
  @ocaml.doc("<p>Describes the SAML Identity Provider's information.</p>") @as("Idp")
  idp: option<samlidp>,
  @ocaml.doc("<p>True if SAML is enabled.</p>") @as("Enabled") enabled: option<boolean_>,
}
@ocaml.doc("<p>Specifies the SAML application configuration for the domain.</p>")
type samloptionsInput = {
  @ocaml.doc(
    "<p>The duration, in minutes, after which a user session becomes inactive. Acceptable values are between 1 and 1440, and the default value is 60.</p>"
  )
  @as("SessionTimeoutMinutes")
  sessionTimeoutMinutes: option<integerClass>,
  @ocaml.doc("<p>The key to use for matching the SAML Roles attribute.</p>") @as("RolesKey")
  rolesKey: option<string_>,
  @ocaml.doc("<p>The key to use for matching the SAML Subject attribute.</p>") @as("SubjectKey")
  subjectKey: option<string_>,
  @ocaml.doc("<p>The backend role to which the SAML master user is mapped to.</p>")
  @as("MasterBackendRole")
  masterBackendRole: option<backendRole>,
  @ocaml.doc(
    "<p>The SAML master username, which is stored in the Amazon Elasticsearch Service domain's internal database.</p>"
  )
  @as("MasterUserName")
  masterUserName: option<username>,
  @ocaml.doc("<p>Specifies the SAML Identity Provider's information.</p>") @as("Idp")
  idp: option<samlidp>,
  @ocaml.doc("<p>True if SAML is enabled.</p>") @as("Enabled") enabled: option<boolean_>,
}
type recurringChargeList = array<recurringCharge>
type packageVersionHistoryList = array<packageVersionHistory>
@ocaml.doc("<p>Basic information about a package.</p>")
type packageDetails = {
  @ocaml.doc("<p>Additional information if the package is in an error state. Null otherwise.</p>")
  @as("ErrorDetails")
  errorDetails: option<errorDetails>,
  @as("AvailablePackageVersion") availablePackageVersion: option<packageVersion>,
  @as("LastUpdatedAt") lastUpdatedAt: option<lastUpdated>,
  @ocaml.doc("<p>Timestamp which tells creation date of the package.</p>") @as("CreatedAt")
  createdAt: option<createdAt>,
  @ocaml.doc(
    "<p>Current state of the package. Values are COPYING/COPY_FAILED/AVAILABLE/DELETING/DELETE_FAILED</p>"
  )
  @as("PackageStatus")
  packageStatus: option<packageStatus>,
  @ocaml.doc("<p>User-specified description of the package.</p>") @as("PackageDescription")
  packageDescription: option<packageDescription>,
  @ocaml.doc("<p>Currently supports only TXT-DICTIONARY.</p>") @as("PackageType")
  packageType: option<packageType>,
  @ocaml.doc("<p>User specified name of the package.</p>") @as("PackageName")
  packageName: option<packageName>,
  @ocaml.doc("<p>Internal ID of the package.</p>") @as("PackageID") packageID: option<packageID>,
}
@ocaml.doc("<p>Specifies details of an outbound connection.</p>")
type outboundCrossClusterSearchConnection = {
  @ocaml.doc(
    "<p>Specifies the <code><a>OutboundCrossClusterSearchConnectionStatus</a></code> for the outbound connection.</p>"
  )
  @as("ConnectionStatus")
  connectionStatus: option<outboundCrossClusterSearchConnectionStatus>,
  @ocaml.doc(
    "<p>Specifies the connection alias for the outbound cross-cluster search connection.</p>"
  )
  @as("ConnectionAlias")
  connectionAlias: option<connectionAlias>,
  @ocaml.doc("<p>Specifies the connection id for the outbound cross-cluster search connection.</p>")
  @as("CrossClusterSearchConnectionId")
  crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>,
  @ocaml.doc(
    "<p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>"
  )
  @as("DestinationDomainInfo")
  destinationDomainInfo: option<domainInformation>,
  @ocaml.doc(
    "<p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>"
  )
  @as("SourceDomainInfo")
  sourceDomainInfo: option<domainInformation>,
}
@ocaml.doc(
  "<p>Status of the node-to-node encryption options for the specified Elasticsearch domain.</p>"
)
type nodeToNodeEncryptionOptionsStatus = {
  @ocaml.doc(
    "<p>Specifies the status of the node-to-node encryption options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc(
    "<p>Specifies the node-to-node encryption options for the specified Elasticsearch domain.</p>"
  )
  @as("Options")
  options: nodeToNodeEncryptionOptions,
}
type logPublishingOptions = Js.Dict.t<logPublishingOption>
@ocaml.doc("<p>InstanceLimits represents the list of instance related attributes that are available for given InstanceType.
    </p>")
type instanceLimits = {@as("InstanceCountLimits") instanceCountLimits: option<instanceCountLimits>}
@ocaml.doc("<p>Specifies details of an inbound connection.</p>")
type inboundCrossClusterSearchConnection = {
  @ocaml.doc(
    "<p>Specifies the <code><a>InboundCrossClusterSearchConnectionStatus</a></code> for the outbound connection.</p>"
  )
  @as("ConnectionStatus")
  connectionStatus: option<inboundCrossClusterSearchConnectionStatus>,
  @ocaml.doc("<p>Specifies the connection id for the inbound cross-cluster search connection.</p>")
  @as("CrossClusterSearchConnectionId")
  crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>,
  @ocaml.doc(
    "<p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>"
  )
  @as("DestinationDomainInfo")
  destinationDomainInfo: option<domainInformation>,
  @ocaml.doc(
    "<p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>"
  )
  @as("SourceDomainInfo")
  sourceDomainInfo: option<domainInformation>,
}
@ocaml.doc("<p>
      A filter used to limit results when describing inbound or outbound cross-cluster search connections.
      Multiple values can be specified per filter.
      A cross-cluster search connection must match at least one of the specified values for it to be
      returned from an operation.
    </p>")
type filter = {
  @ocaml.doc("<p>
      Contains one or more values for the filter.
    </p>")
  @as("Values")
  values: option<valueStringList>,
  @ocaml.doc("<p>
      Specifies the name of the filter.
    </p>")
  @as("Name")
  name: option<nonEmptyString>,
}
@ocaml.doc(
  "<p> Status of the Encryption At Rest options for the specified Elasticsearch domain.</p>"
)
type encryptionAtRestOptionsStatus = {
  @ocaml.doc(
    "<p> Specifies the status of the Encryption At Rest options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc(
    "<p> Specifies the Encryption At Rest options for the specified Elasticsearch domain.</p>"
  )
  @as("Options")
  options: encryptionAtRestOptions,
}
@ocaml.doc(
  "<p> Status of the Elasticsearch version options for the specified Elasticsearch domain.</p>"
)
type elasticsearchVersionStatus = {
  @ocaml.doc(
    "<p> Specifies the status of the Elasticsearch version options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p> Specifies the Elasticsearch version for the specified Elasticsearch domain.</p>")
  @as("Options")
  options: elasticsearchVersionString,
}
@ocaml.doc(
  "<p>Specifies the configuration for the domain cluster, such as the type and number of instances.</p>"
)
type elasticsearchClusterConfig = {
  @ocaml.doc("<p>Specifies the <code>ColdStorageOptions</code> config for Elasticsearch Domain</p>")
  @as("ColdStorageOptions")
  coldStorageOptions: option<coldStorageOptions>,
  @ocaml.doc("<p>The number of warm nodes in the cluster.</p>") @as("WarmCount")
  warmCount: option<integerClass>,
  @ocaml.doc("<p>The instance type for the Elasticsearch cluster's warm nodes.</p>") @as("WarmType")
  warmType: option<eswarmPartitionInstanceType>,
  @ocaml.doc("<p>True to enable warm storage.</p>") @as("WarmEnabled")
  warmEnabled: option<boolean_>,
  @ocaml.doc(
    "<p>Total number of dedicated master nodes, active and on standby, for the cluster.</p>"
  )
  @as("DedicatedMasterCount")
  dedicatedMasterCount: option<integerClass>,
  @ocaml.doc("<p>The instance type for a dedicated master node.</p>") @as("DedicatedMasterType")
  dedicatedMasterType: option<espartitionInstanceType>,
  @ocaml.doc(
    "<p>Specifies the zone awareness configuration for a domain when zone awareness is enabled.</p>"
  )
  @as("ZoneAwarenessConfig")
  zoneAwarenessConfig: option<zoneAwarenessConfig>,
  @ocaml.doc(
    "<p>A boolean value to indicate whether zone awareness is enabled.  See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-zoneawareness\" target=\"_blank\">About Zone Awareness</a> for more information.</p>"
  )
  @as("ZoneAwarenessEnabled")
  zoneAwarenessEnabled: option<boolean_>,
  @ocaml.doc(
    "<p>A boolean value to indicate whether a dedicated master node is enabled.  See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-dedicatedmasternodes\" target=\"_blank\">About Dedicated Master Nodes</a> for more information.</p>"
  )
  @as("DedicatedMasterEnabled")
  dedicatedMasterEnabled: option<boolean_>,
  @ocaml.doc("<p>The number of instances in the specified domain cluster.</p>") @as("InstanceCount")
  instanceCount: option<integerClass>,
  @ocaml.doc(
    "<p>The instance type for an Elasticsearch cluster. UltraWarm instance types are not supported for data instances.</p>"
  )
  @as("InstanceType")
  instanceType: option<espartitionInstanceType>,
}
@ocaml.doc("<p> Status of the EBS options for the specified Elasticsearch domain.</p>")
type ebsoptionsStatus = {
  @ocaml.doc(
    "<p> Specifies the status of the EBS options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p> Specifies the EBS options for the specified Elasticsearch domain.</p>")
  @as("Options")
  options: ebsoptions,
}
@ocaml.doc("<p>Information on a package that is associated with a domain.</p>")
type domainPackageDetails = {
  @ocaml.doc("<p>Additional information if the package is in an error state. Null otherwise.</p>")
  @as("ErrorDetails")
  errorDetails: option<errorDetails>,
  @ocaml.doc(
    "<p>The relative path on Amazon ES nodes, which can be used as synonym_path when the package is synonym file.</p>"
  )
  @as("ReferencePath")
  referencePath: option<referencePath>,
  @as("PackageVersion") packageVersion: option<packageVersion>,
  @ocaml.doc(
    "<p>State of the association. Values are ASSOCIATING/ASSOCIATION_FAILED/ACTIVE/DISSOCIATING/DISSOCIATION_FAILED.</p>"
  )
  @as("DomainPackageStatus")
  domainPackageStatus: option<domainPackageStatus>,
  @ocaml.doc("<p>Name of the domain you've associated a package with.</p>") @as("DomainName")
  domainName: option<domainName>,
  @ocaml.doc("<p>Timestamp of the most-recent update to the association status.</p>")
  @as("LastUpdated")
  lastUpdated: option<lastUpdated>,
  @ocaml.doc("<p>Currently supports only TXT-DICTIONARY.</p>") @as("PackageType")
  packageType: option<packageType>,
  @ocaml.doc("<p>User specified name of the package.</p>") @as("PackageName")
  packageName: option<packageName>,
  @ocaml.doc("<p>Internal ID of the package.</p>") @as("PackageID") packageID: option<packageID>,
}
@ocaml.doc("<p> Contains the list of Elasticsearch domain information.</p>")
type domainInfoList = array<domainInfo>
@ocaml.doc("<p>The configured endpoint options for the domain and their current status.</p>")
type domainEndpointOptionsStatus = {
  @ocaml.doc(
    "<p>The status of the endpoint options for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>Options to configure endpoint for the Elasticsearch domain.</p>") @as("Options")
  options: domainEndpointOptions,
}
@ocaml.doc("<p>Filter to apply in <code>DescribePackage</code> response.</p>")
type describePackagesFilter = {
  @ocaml.doc("<p>A list of values for the specified field.</p>") @as("Value")
  value: option<describePackagesFilterValues>,
  @ocaml.doc("<p>Any field from <code>PackageDetails</code>.</p>") @as("Name")
  name: option<describePackagesFilterName>,
}
@ocaml.doc("<p>
      A map from an
      <code>
        <a>ElasticsearchVersion</a>
      </code>
      to a list of compatible
      <code>
        <a>ElasticsearchVersion</a>
      </code>
      s to which the domain can be upgraded.
    </p>")
type compatibleVersionsMap = {
  @as("TargetVersions") targetVersions: option<elasticsearchVersionList>,
  @ocaml.doc("<p>The current version of Elasticsearch on which a domain is.</p>")
  @as("SourceVersion")
  sourceVersion: option<elasticsearchVersionString>,
}
@ocaml.doc("<p>Status of the Cognito options for the specified Elasticsearch domain.</p>")
type cognitoOptionsStatus = {
  @ocaml.doc(
    "<p>Specifies the status of the Cognito options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>Specifies the Cognito options for the specified Elasticsearch domain.</p>")
  @as("Options")
  options: cognitoOptions,
}
@ocaml.doc("<p>The list of progress stages of a specific domain configuration change.</p>")
type changeProgressStageList = array<changeProgressStage>
@ocaml.doc(
  "<p>Specifies Auto-Tune maitenance schedule. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
)
type autoTuneMaintenanceSchedule = {
  @ocaml.doc(
    "<p>Specifies cron expression for a recurring maintenance schedule. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
  )
  @as("CronExpressionForRecurrence")
  cronExpressionForRecurrence: option<string_>,
  @ocaml.doc(
    "<p>Specifies maintenance schedule duration: duration value and duration unit. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
  )
  @as("Duration")
  duration: option<duration>,
  @ocaml.doc("<p>Specifies timestamp at which Auto-Tune maintenance schedule start. </p>")
  @as("StartAt")
  startAt: option<startAt>,
}
@ocaml.doc(
  "<p>Specifies details of the Auto-Tune action. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information. </p>"
)
type autoTuneDetails = {
  @as("ScheduledAutoTuneDetails") scheduledAutoTuneDetails: option<scheduledAutoTuneDetails>,
}
@ocaml.doc("<p> Status of the advanced options for the specified Elasticsearch domain. Currently, the following advanced options are available:</p>
       <ul>
           <li>Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
               See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options\" target=\"_blank\">Configuration Advanced Options</a> for more information.</li>
           <li>Option to specify the percentage of heap space that is allocated to field data. By default, this setting is unbounded.</li>
       </ul>
       <p>For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options\">Configuring Advanced Options</a>.</p>")
type advancedOptionsStatus = {
  @ocaml.doc(
    "<p> Specifies the status of <code>OptionStatus</code> for advanced options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc(
    "<p> Specifies the status of advanced options for the specified Elasticsearch domain.</p>"
  )
  @as("Options")
  options: advancedOptions,
}
@ocaml.doc("<p>
      List of limits that are specific to a given InstanceType and for each of it's
      <code>
        <a>InstanceRole</a>
      </code>
      .
    </p>")
type additionalLimit = {
  @ocaml.doc("<p>
    Value for given
    <code>
      <a>AdditionalLimit$LimitName</a>
    </code>
    .
  </p>")
  @as("LimitValues")
  limitValues: option<limitValueList>,
  @ocaml.doc("<p>
      Name of Additional Limit is specific to a given InstanceType and for each of it's
      <code>
        <a>InstanceRole</a>
      </code>
      etc.
      <br></br>
      Attributes and their details:
      <br></br>
      <ul>
        <li>MaximumNumberOfDataNodesSupported</li>
        This attribute will be present in Master node only to specify how
        much data nodes upto which given
        <code>
          <a>ESPartitionInstanceType</a>
        </code>
        can support as master node.
        <li>MaximumNumberOfDataNodesWithoutMasterNode</li>
        This attribute will be present in Data node only to specify how much
        data nodes of given
        <code>
          <a>ESPartitionInstanceType</a>
        </code>
        upto which you don't need any master nodes to govern them.
      </ul>
    </p>")
  @as("LimitName")
  limitName: option<limitName>,
}
@ocaml.doc(
  "<p>The configured access rules for the domain's document and search endpoints, and the current status of those rules.</p>"
)
type accessPoliciesStatus = {
  @ocaml.doc(
    "<p>The status of the access policy for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The access policy configured for the Elasticsearch domain.  Access policies may be resource-based, IP-based, or IAM-based.  See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-access-policies\" target=\"_blank\">
           Configuring Access Policies</a>for more information.</p>")
  @as("Options")
  options: policyDocument,
}
@ocaml.doc("<p> Status of the VPC options for the specified Elasticsearch domain.</p>")
type vpcderivedInfoStatus = {
  @ocaml.doc(
    "<p> Specifies the status of the VPC options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p> Specifies the VPC options for the specified Elasticsearch domain.</p>")
  @as("Options")
  options: vpcderivedInfo,
}
type upgradeStepsList = array<upgradeStepItem>
type storageTypeLimitList = array<storageTypeLimit>
@ocaml.doc("<p>Details of a reserved Elasticsearch instance offering.</p>")
type reservedElasticsearchInstanceOffering = {
  @ocaml.doc(
    "<p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>"
  )
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>Payment option for the reserved Elasticsearch instance offering</p>")
  @as("PaymentOption")
  paymentOption: option<reservedElasticsearchInstancePaymentOption>,
  @ocaml.doc("<p>The currency code for the reserved Elasticsearch instance offering.</p>")
  @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc(
    "<p>The rate you are charged for each hour the domain that is using the offering is running.</p>"
  )
  @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc(
    "<p>The upfront fixed charge you will pay to purchase the specific reserved Elasticsearch instance offering. </p>"
  )
  @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc(
    "<p>The duration, in seconds, for which the offering will reserve the Elasticsearch instance.</p>"
  )
  @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The Elasticsearch instance type offered by the reserved instance offering.</p>")
  @as("ElasticsearchInstanceType")
  elasticsearchInstanceType: option<espartitionInstanceType>,
  @ocaml.doc("<p>The Elasticsearch reserved instance offering identifier.</p>")
  @as("ReservedElasticsearchInstanceOfferingId")
  reservedElasticsearchInstanceOfferingId: option<guid>,
}
@ocaml.doc("<p>Details of a reserved Elasticsearch instance.</p>")
type reservedElasticsearchInstance = {
  @ocaml.doc(
    "<p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>"
  )
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc(
    "<p>The payment option as defined in the reserved Elasticsearch instance offering.</p>"
  )
  @as("PaymentOption")
  paymentOption: option<reservedElasticsearchInstancePaymentOption>,
  @ocaml.doc("<p>The state of the reserved Elasticsearch instance.</p>") @as("State")
  state: option<string_>,
  @ocaml.doc("<p>The number of Elasticsearch instances that have been reserved.</p>")
  @as("ElasticsearchInstanceCount")
  elasticsearchInstanceCount: option<integer_>,
  @ocaml.doc("<p>The currency code for the reserved Elasticsearch instance offering.</p>")
  @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc(
    "<p>The rate you are charged for each hour for the domain that is using this reserved instance.</p>"
  )
  @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc(
    "<p>The upfront fixed charge you will paid to purchase the specific reserved Elasticsearch instance offering. </p>"
  )
  @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration, in seconds, for which the Elasticsearch instance is reserved.</p>")
  @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The time the reservation started.</p>") @as("StartTime")
  startTime: option<updateTimestamp>,
  @ocaml.doc("<p>The Elasticsearch instance type offered by the reserved instance offering.</p>")
  @as("ElasticsearchInstanceType")
  elasticsearchInstanceType: option<espartitionInstanceType>,
  @ocaml.doc("<p>The offering identifier.</p>") @as("ReservedElasticsearchInstanceOfferingId")
  reservedElasticsearchInstanceOfferingId: option<string_>,
  @ocaml.doc("<p>The unique identifier for the reservation.</p>")
  @as("ReservedElasticsearchInstanceId")
  reservedElasticsearchInstanceId: option<guid>,
  @ocaml.doc("<p>The customer-specified identifier to track this reservation.</p>")
  @as("ReservationName")
  reservationName: option<reservationToken>,
}
type packageDetailsList = array<packageDetails>
type outboundCrossClusterSearchConnections = array<outboundCrossClusterSearchConnection>
@ocaml.doc("<p>The configured log publishing options for the domain and their current status.</p>")
type logPublishingOptionsStatus = {
  @ocaml.doc(
    "<p>The status of the log publishing options for the Elasticsearch domain. See <code>OptionStatus</code> for the status information that's included. </p>"
  )
  @as("Status")
  status: option<optionStatus>,
  @ocaml.doc("<p>The log publishing options configured for the Elasticsearch domain.</p>")
  @as("Options")
  options: option<logPublishingOptions>,
}
type inboundCrossClusterSearchConnections = array<inboundCrossClusterSearchConnection>
type filterList = array<filter>
@ocaml.doc("<p> Specifies the configuration status for the specified Elasticsearch domain.</p>")
type elasticsearchClusterConfigStatus = {
  @ocaml.doc(
    "<p> Specifies the status of the configuration for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p> Specifies the cluster configuration for the specified Elasticsearch domain.</p>")
  @as("Options")
  options: elasticsearchClusterConfig,
}
type domainPackageDetailsList = array<domainPackageDetails>
@ocaml.doc(
  "<p>A list of <code>DescribePackagesFilter</code> to filter the packages included in a <code>DescribePackages</code> response.</p>"
)
type describePackagesFilterList = array<describePackagesFilter>
type compatibleElasticsearchVersionsList = array<compatibleVersionsMap>
@ocaml.doc("<p>The progress details of a specific domain configuration change.</p>")
type changeProgressStatusDetails = {
  @ocaml.doc(
    "<p>The specific stages that the domain is going through to perform the configuration change.</p>"
  )
  @as("ChangeProgressStages")
  changeProgressStages: option<changeProgressStageList>,
  @ocaml.doc("<p>The total number of stages required for the configuration change.</p>")
  @as("TotalNumberOfStages")
  totalNumberOfStages: option<totalNumberOfStages>,
  @ocaml.doc(
    "<p>The list of properties involved in the domain configuration change that are completed.</p>"
  )
  @as("CompletedProperties")
  completedProperties: option<stringList>,
  @ocaml.doc(
    "<p>The list of properties involved in the domain configuration change that are still in pending.</p>"
  )
  @as("PendingProperties")
  pendingProperties: option<stringList>,
  @ocaml.doc(
    "<p>The overall status of the domain configuration change. This field can take the following values: <code>PENDING</code>, <code>PROCESSING</code>, <code>COMPLETED</code> and <code>FAILED</code></p>"
  )
  @as("Status")
  status: option<overallChangeStatus>,
  @ocaml.doc("<p>The time at which the configuration change is made on the domain.</p>")
  @as("StartTime")
  startTime: option<updateTimestamp>,
  @ocaml.doc(
    "<p>The unique change identifier associated with a specific domain configuration change.</p>"
  )
  @as("ChangeId")
  changeId: option<guid>,
}
type autoTuneMaintenanceScheduleList = array<autoTuneMaintenanceSchedule>
@ocaml.doc("<p>Specifies Auto-Tune type and Auto-Tune action details. </p>")
type autoTune = {
  @ocaml.doc(
    "<p>Specifies details of the Auto-Tune action. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information. </p>"
  )
  @as("AutoTuneDetails")
  autoTuneDetails: option<autoTuneDetails>,
  @ocaml.doc("<p>Specifies Auto-Tune type. Valid value is SCHEDULED_ACTION. </p>")
  @as("AutoTuneType")
  autoTuneType: option<autoTuneType>,
}
@ocaml.doc(
  "<p>Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled, master username and password (if internal database is enabled), and master user ARN (if IAM is enabled).</p>"
)
type advancedSecurityOptionsInput = {
  @ocaml.doc(
    "<p>True if Anonymous auth is enabled. Anonymous auth can be enabled only when AdvancedSecurity is enabled on existing domains.</p>"
  )
  @as("AnonymousAuthEnabled")
  anonymousAuthEnabled: option<boolean_>,
  @ocaml.doc("<p>Specifies the SAML application configuration for the domain.</p>")
  @as("SAMLOptions")
  samloptions: option<samloptionsInput>,
  @ocaml.doc("<p>Credentials for the master user: username and password, ARN, or both.</p>")
  @as("MasterUserOptions")
  masterUserOptions: option<masterUserOptions>,
  @ocaml.doc("<p>True if the internal user database is enabled.</p>")
  @as("InternalUserDatabaseEnabled")
  internalUserDatabaseEnabled: option<boolean_>,
  @ocaml.doc("<p>True if advanced security is enabled.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc(
  "<p>Specifies the advanced security configuration: whether advanced security is enabled, whether the internal database option is enabled.</p>"
)
type advancedSecurityOptions = {
  @ocaml.doc(
    "<p>True if Anonymous auth is enabled. Anonymous auth can be enabled only when AdvancedSecurity is enabled on existing domains.</p>"
  )
  @as("AnonymousAuthEnabled")
  anonymousAuthEnabled: option<boolean_>,
  @ocaml.doc("<p>Specifies the Anonymous Auth Disable Date when Anonymous Auth is enabled.</p>")
  @as("AnonymousAuthDisableDate")
  anonymousAuthDisableDate: option<disableTimestamp>,
  @ocaml.doc("<p>Describes the SAML application configured for a domain.</p>") @as("SAMLOptions")
  samloptions: option<samloptionsOutput>,
  @ocaml.doc("<p>True if the internal user database is enabled.</p>")
  @as("InternalUserDatabaseEnabled")
  internalUserDatabaseEnabled: option<boolean_>,
  @ocaml.doc("<p>True if advanced security is enabled.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
type additionalLimitList = array<additionalLimit>
@ocaml.doc("<p>History of the last 10 Upgrades and Upgrade Eligibility Checks.</p>")
type upgradeHistory = {
  @ocaml.doc("<p>
      A list of
      <code>
        <a>UpgradeStepItem</a>
      </code>
      s representing information about each step performed as pard of a specific Upgrade or Upgrade Eligibility Check.
    </p>")
  @as("StepsList")
  stepsList: option<upgradeStepsList>,
  @ocaml.doc("<p>
      The overall status of the update. The status can take one of the following values:
      <ul>
        <li>In Progress</li>
        <li>Succeeded</li>
        <li>Succeeded with Issues</li>
        <li>Failed</li>
      </ul>
    </p>")
  @as("UpgradeStatus")
  upgradeStatus: option<upgradeStatus>,
  @ocaml.doc(
    "<p>UTC Timestamp at which the Upgrade API call was made in \"yyyy-MM-ddTHH:mm:ssZ\" format.</p>"
  )
  @as("StartTimestamp")
  startTimestamp: option<startTimestamp>,
  @ocaml.doc("<p>A string that describes the update briefly</p>") @as("UpgradeName")
  upgradeName: option<upgradeName>,
}
@ocaml.doc("<p>StorageTypes represents the list of storage related types and their attributes
      that are available for given InstanceType.
    </p>")
type storageType = {
  @ocaml.doc("<p>List of limits that are applicable for given storage type.
    </p>")
  @as("StorageTypeLimits")
  storageTypeLimits: option<storageTypeLimitList>,
  @as("StorageSubTypeName") storageSubTypeName: option<storageSubTypeName>,
  @as("StorageTypeName") storageTypeName: option<storageTypeName>,
}
type reservedElasticsearchInstanceOfferingList = array<reservedElasticsearchInstanceOffering>
type reservedElasticsearchInstanceList = array<reservedElasticsearchInstance>
@ocaml.doc("<p>The current status of an Elasticsearch domain.</p>")
type elasticsearchDomainStatus = {
  @ocaml.doc("<p>Specifies change details of the domain configuration change.</p>")
  @as("ChangeProgressDetails")
  changeProgressDetails: option<changeProgressDetails>,
  @ocaml.doc("<p>The current status of the Elasticsearch domain's Auto-Tune options.</p>")
  @as("AutoTuneOptions")
  autoTuneOptions: option<autoTuneOptionsOutput>,
  @ocaml.doc("<p>The current status of the Elasticsearch domain's advanced security options.</p>")
  @as("AdvancedSecurityOptions")
  advancedSecurityOptions: option<advancedSecurityOptions>,
  @ocaml.doc("<p>The current status of the Elasticsearch domain's endpoint options.</p>")
  @as("DomainEndpointOptions")
  domainEndpointOptions: option<domainEndpointOptions>,
  @ocaml.doc("<p>The current status of the Elasticsearch domain's service software.</p>")
  @as("ServiceSoftwareOptions")
  serviceSoftwareOptions: option<serviceSoftwareOptions>,
  @ocaml.doc("<p>Log publishing options for the given domain.</p>") @as("LogPublishingOptions")
  logPublishingOptions: option<logPublishingOptions>,
  @ocaml.doc("<p>Specifies the status of the <code>AdvancedOptions</code></p>")
  @as("AdvancedOptions")
  advancedOptions: option<advancedOptions>,
  @ocaml.doc("<p>Specifies the status of the <code>NodeToNodeEncryptionOptions</code>.</p>")
  @as("NodeToNodeEncryptionOptions")
  nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
  @ocaml.doc("<p> Specifies the status of the <code>EncryptionAtRestOptions</code>.</p>")
  @as("EncryptionAtRestOptions")
  encryptionAtRestOptions: option<encryptionAtRestOptions>,
  @ocaml.doc(
    "<p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html\" target=\"_blank\">Amazon Cognito Authentication for Kibana</a>.</p>"
  )
  @as("CognitoOptions")
  cognitoOptions: option<cognitoOptions>,
  @ocaml.doc(
    "<p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html\" target=\"_blank\">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>"
  )
  @as("VPCOptions")
  vpcoptions: option<vpcderivedInfo>,
  @ocaml.doc("<p>Specifies the status of the <code>SnapshotOptions</code></p>")
  @as("SnapshotOptions")
  snapshotOptions: option<snapshotOptions>,
  @ocaml.doc("<p> IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
  accessPolicies: option<policyDocument>,
  @ocaml.doc(
    "<p>The <code>EBSOptions</code> for the specified domain.  See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs\" target=\"_blank\">Configuring EBS-based Storage</a> for more information.</p>"
  )
  @as("EBSOptions")
  ebsoptions: option<ebsoptions>,
  @ocaml.doc("<p>The type and number of instances in the domain cluster.</p>")
  @as("ElasticsearchClusterConfig")
  elasticsearchClusterConfig: elasticsearchClusterConfig,
  @as("ElasticsearchVersion") elasticsearchVersion: option<elasticsearchVersionString>,
  @ocaml.doc(
    "<p>The status of an Elasticsearch domain version upgrade. <code>True</code> if Amazon Elasticsearch Service is undergoing a version upgrade. <code>False</code> if the configuration is active.</p>"
  )
  @as("UpgradeProcessing")
  upgradeProcessing: option<boolean_>,
  @ocaml.doc(
    "<p>The status of the Elasticsearch domain configuration. <code>True</code> if Amazon Elasticsearch Service is processing configuration changes. <code>False</code> if the configuration is active.</p>"
  )
  @as("Processing")
  processing: option<boolean_>,
  @ocaml.doc(
    "<p>Map containing the Elasticsearch domain endpoints used to submit index and search requests. Example <code>key, value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.</p>"
  )
  @as("Endpoints")
  endpoints: option<endpointsMap>,
  @ocaml.doc(
    "<p>The Elasticsearch domain endpoint that you use to submit index and search requests.</p>"
  )
  @as("Endpoint")
  endpoint: option<serviceUrl>,
  @ocaml.doc(
    "<p>The domain deletion status. <code>True</code> if a delete request has been received for the domain but resource cleanup is still in progress. <code>False</code> if the domain has not been deleted. Once domain deletion is complete, the status of the domain is no longer returned.</p>"
  )
  @as("Deleted")
  deleted: option<boolean_>,
  @ocaml.doc(
    "<p>The domain creation status. <code>True</code> if the creation of an Elasticsearch domain is complete. <code>False</code> if domain creation is still in progress.</p>"
  )
  @as("Created")
  created: option<boolean_>,
  @ocaml.doc(
    "<p>The Amazon resource name (ARN) of an Elasticsearch domain.  See <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html\" target=\"_blank\">Identifiers for IAM Entities</a> in <i>Using AWS Identity and Access Management</i> for more information.</p>"
  )
  @as("ARN")
  arn: arn,
  @ocaml.doc(
    "<p>The name of an Elasticsearch domain. Domain names are unique across the domains owned by an account within an AWS region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>"
  )
  @as("DomainName")
  domainName: domainName,
  @ocaml.doc("<p>The unique identifier for the specified Elasticsearch domain.</p>") @as("DomainId")
  domainId: domainId,
}
@ocaml.doc(
  "<p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.</p>"
)
type autoTuneOptionsInput = {
  @ocaml.doc(
    "<p>Specifies list of maitenance schedules. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
  )
  @as("MaintenanceSchedules")
  maintenanceSchedules: option<autoTuneMaintenanceScheduleList>,
  @ocaml.doc("<p>Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED. </p>")
  @as("DesiredState")
  desiredState: option<autoTuneDesiredState>,
}
@ocaml.doc(
  "<p>Specifies the Auto-Tune options: the Auto-Tune desired state for the domain, rollback state when disabling Auto-Tune options and list of maintenance schedules.</p>"
)
type autoTuneOptions = {
  @ocaml.doc(
    "<p>Specifies list of maitenance schedules. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
  )
  @as("MaintenanceSchedules")
  maintenanceSchedules: option<autoTuneMaintenanceScheduleList>,
  @ocaml.doc(
    "<p>Specifies the rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK, DEFAULT_ROLLBACK. </p>"
  )
  @as("RollbackOnDisable")
  rollbackOnDisable: option<rollbackOnDisable>,
  @ocaml.doc("<p>Specifies the Auto-Tune desired state. Valid values are ENABLED, DISABLED. </p>")
  @as("DesiredState")
  desiredState: option<autoTuneDesiredState>,
}
type autoTuneList = array<autoTune>
@ocaml.doc(
  "<p> Specifies the status of advanced security options for the specified Elasticsearch domain.</p>"
)
type advancedSecurityOptionsStatus = {
  @ocaml.doc(
    "<p> Status of the advanced security options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p> Specifies advanced security options for the specified Elasticsearch domain.</p>")
  @as("Options")
  options: advancedSecurityOptions,
}
type upgradeHistoryList = array<upgradeHistory>
type storageTypeList = array<storageType>
@ocaml.doc("<p>A list that contains the status of each requested Elasticsearch domain.</p>")
type elasticsearchDomainStatusList = array<elasticsearchDomainStatus>
@ocaml.doc(
  "<p> Specifies the status of Auto-Tune options for the specified Elasticsearch domain.</p>"
)
type autoTuneOptionsStatus = {
  @ocaml.doc(
    "<p> Specifies Status of the Auto-Tune options for the specified Elasticsearch domain.</p>"
  )
  @as("Status")
  status: option<autoTuneStatus>,
  @ocaml.doc("<p> Specifies Auto-Tune options for the specified Elasticsearch domain.</p>")
  @as("Options")
  options: option<autoTuneOptions>,
}
@ocaml.doc("<p>
      Limits for given InstanceType and for each of it's role.
      <br></br>
      Limits contains following
      <code>
        <a>StorageTypes,</a>
      </code>
      <code>
        <a>InstanceLimits</a>
      </code>
      and
      <code>
        <a>AdditionalLimits</a>
      </code>
    </p>")
type limits = {
  @ocaml.doc("<p>
      List of additional limits that are specific to a given InstanceType and for each of it's
      <code>
        <a>InstanceRole</a>
      </code>
      .
    </p>")
  @as("AdditionalLimits")
  additionalLimits: option<additionalLimitList>,
  @as("InstanceLimits") instanceLimits: option<instanceLimits>,
  @ocaml.doc("<p>StorageType represents the list of storage related types and attributes
      that are available for given InstanceType.
    </p>")
  @as("StorageTypes")
  storageTypes: option<storageTypeList>,
}
@ocaml.doc("<p>The configuration of an Elasticsearch domain.</p>")
type elasticsearchDomainConfig = {
  @ocaml.doc("<p>Specifies change details of the domain configuration change.</p>")
  @as("ChangeProgressDetails")
  changeProgressDetails: option<changeProgressDetails>,
  @ocaml.doc("<p>Specifies <code>AutoTuneOptions</code> for the domain. </p>")
  @as("AutoTuneOptions")
  autoTuneOptions: option<autoTuneOptionsStatus>,
  @ocaml.doc("<p>Specifies <code>AdvancedSecurityOptions</code> for the domain. </p>")
  @as("AdvancedSecurityOptions")
  advancedSecurityOptions: option<advancedSecurityOptionsStatus>,
  @ocaml.doc(
    "<p>Specifies the <code>DomainEndpointOptions</code> for the Elasticsearch domain.</p>"
  )
  @as("DomainEndpointOptions")
  domainEndpointOptions: option<domainEndpointOptionsStatus>,
  @ocaml.doc("<p>Log publishing options for the given domain.</p>") @as("LogPublishingOptions")
  logPublishingOptions: option<logPublishingOptionsStatus>,
  @ocaml.doc(
    "<p>Specifies the <code>AdvancedOptions</code> for the domain.  See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options\" target=\"_blank\">Configuring Advanced Options</a> for more information.</p>"
  )
  @as("AdvancedOptions")
  advancedOptions: option<advancedOptionsStatus>,
  @ocaml.doc(
    "<p>Specifies the <code>NodeToNodeEncryptionOptions</code> for the Elasticsearch domain.</p>"
  )
  @as("NodeToNodeEncryptionOptions")
  nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptionsStatus>,
  @ocaml.doc(
    "<p>Specifies the <code>EncryptionAtRestOptions</code> for the Elasticsearch domain.</p>"
  )
  @as("EncryptionAtRestOptions")
  encryptionAtRestOptions: option<encryptionAtRestOptionsStatus>,
  @ocaml.doc(
    "<p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html\" target=\"_blank\">Amazon Cognito Authentication for Kibana</a>.</p>"
  )
  @as("CognitoOptions")
  cognitoOptions: option<cognitoOptionsStatus>,
  @ocaml.doc(
    "<p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html\" target=\"_blank\">VPC Endpoints for Amazon Elasticsearch Service Domains</a>.</p>"
  )
  @as("VPCOptions")
  vpcoptions: option<vpcderivedInfoStatus>,
  @ocaml.doc("<p>Specifies the <code>SnapshotOptions</code> for the Elasticsearch domain.</p>")
  @as("SnapshotOptions")
  snapshotOptions: option<snapshotOptionsStatus>,
  @ocaml.doc("<p>IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
  accessPolicies: option<accessPoliciesStatus>,
  @ocaml.doc("<p>Specifies the <code>EBSOptions</code> for the Elasticsearch domain.</p>")
  @as("EBSOptions")
  ebsoptions: option<ebsoptionsStatus>,
  @ocaml.doc(
    "<p>Specifies the <code>ElasticsearchClusterConfig</code> for the Elasticsearch domain.</p>"
  )
  @as("ElasticsearchClusterConfig")
  elasticsearchClusterConfig: option<elasticsearchClusterConfigStatus>,
  @ocaml.doc("<p>String of format X.Y to specify version for the Elasticsearch domain.</p>")
  @as("ElasticsearchVersion")
  elasticsearchVersion: option<elasticsearchVersionStatus>,
}
@ocaml.doc("<p>
      Map of Role of the Instance and Limits that are applicable.
      Role performed by given Instance in Elasticsearch
      can be one of the following:
      <ul>
        <li>data: If the given InstanceType is used as data node</li>
        <li>master: If the given InstanceType is used as master node</li>
        <li>ultra_warm: If the given InstanceType is used as warm node</li>
      </ul>
    </p>")
type limitsByRole = Js.Dict.t<limits>
@ocaml.doc("<fullname>Amazon Elasticsearch Configuration Service</fullname>
      <p>Use the Amazon Elasticsearch Configuration API to create, configure, and manage Elasticsearch domains.</p>
      <p>For sample code that uses the Configuration API, see the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html\">Amazon Elasticsearch Service Developer Guide</a>.
      The guide also contains <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html\">sample code for sending signed HTTP requests to the Elasticsearch APIs</a>.</p>
      <p>The endpoint for configuration service requests is region-specific: es.<i>region</i>.amazonaws.com.
         For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
         see <a href=\"http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions\" target=\"_blank\">Regions and Endpoints</a>.</p>")
module PurchaseReservedElasticsearchInstanceOffering = {
  type t
  @ocaml.doc(
    "<p>Container for parameters to <code>PurchaseReservedElasticsearchInstanceOffering</code></p>"
  )
  type request = {
    @ocaml.doc("<p>The number of Elasticsearch instances to reserve.</p>") @as("InstanceCount")
    instanceCount: option<instanceCount>,
    @ocaml.doc("<p>A customer-specified identifier to track this reservation.</p>")
    @as("ReservationName")
    reservationName: reservationToken,
    @ocaml.doc("<p>The ID of the reserved Elasticsearch instance offering to purchase.</p>")
    @as("ReservedElasticsearchInstanceOfferingId")
    reservedElasticsearchInstanceOfferingId: guid,
  }
  @ocaml.doc(
    "<p>Represents the output of a <code>PurchaseReservedElasticsearchInstanceOffering</code> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>The customer-specified identifier used to track this reservation.</p>")
    @as("ReservationName")
    reservationName: option<reservationToken>,
    @ocaml.doc("<p>Details of the reserved Elasticsearch instance which was purchased.</p>")
    @as("ReservedElasticsearchInstanceId")
    reservedElasticsearchInstanceId: option<guid>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "PurchaseReservedElasticsearchInstanceOfferingCommand"
  let make = (~reservationName, ~reservedElasticsearchInstanceOfferingId, ~instanceCount=?, ()) =>
    new({instanceCount, reservationName, reservedElasticsearchInstanceOfferingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUpgradeStatus = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>GetUpgradeStatus</a>
      </code>
      operation.
    </p>")
  type request = {@as("DomainName") domainName: domainName}
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>GetUpgradeStatus</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>A string that describes the update briefly</p>") @as("UpgradeName")
    upgradeName: option<upgradeName>,
    @ocaml.doc("<p>
      One of 4 statuses that a step can go through returned as part of the
      <code>
        <a>GetUpgradeStatusResponse</a>
      </code>
      object. The status can take one of the following values:
      <ul>
        <li>In Progress</li>
        <li>Succeeded</li>
        <li>Succeeded with Issues</li>
        <li>Failed</li>
      </ul>
    </p>")
    @as("StepStatus")
    stepStatus: option<upgradeStatus>,
    @ocaml.doc("<p>
      Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check does through:
      <ul>
        <li>PreUpgradeCheck</li>
        <li>Snapshot</li>
        <li>Upgrade</li>
      </ul>
    </p>")
    @as("UpgradeStep")
    upgradeStep: option<upgradeStep>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "GetUpgradeStatusCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteElasticsearchServiceRole = {
  type t
  type request = {.}
  type response = {.}
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DeleteElasticsearchServiceRoleCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpgradeElasticsearchDomain = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>UpgradeElasticsearchDomain</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>
      This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
      This will not actually perform the Upgrade.
    </p>")
    @as("PerformCheckOnly")
    performCheckOnly: option<boolean_>,
    @ocaml.doc("<p>The version of Elasticsearch that you intend to upgrade the domain to.</p>")
    @as("TargetVersion")
    targetVersion: elasticsearchVersionString,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>UpgradeElasticsearchDomain</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("ChangeProgressDetails") changeProgressDetails: option<changeProgressDetails>,
    @ocaml.doc("<p>
      This flag, when set to True, indicates that an Upgrade Eligibility Check needs to be performed.
      This will not actually perform the Upgrade.
    </p>")
    @as("PerformCheckOnly")
    performCheckOnly: option<boolean_>,
    @ocaml.doc("<p>The version of Elasticsearch that you intend to upgrade the domain to.</p>")
    @as("TargetVersion")
    targetVersion: option<elasticsearchVersionString>,
    @as("DomainName") domainName: option<domainName>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "UpgradeElasticsearchDomainCommand"
  let make = (~targetVersion, ~domainName, ~performCheckOnly=?, ()) =>
    new({performCheckOnly, targetVersion, domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartElasticsearchServiceSoftwareUpdate = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>StartElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to schedule a service software update on.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The name of the domain that you want to update to the latest service software.</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>StartElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>"
  )
  type response = {
    @ocaml.doc("<p>The current status of the Elasticsearch service software update.</p>")
    @as("ServiceSoftwareOptions")
    serviceSoftwareOptions: option<serviceSoftwareOptions>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "StartElasticsearchServiceSoftwareUpdateCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RemoveTags = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>RemoveTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain from which you want to remove the specified <code>TagKey</code>.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Specifies the <code>TagKey</code> list which you want to remove from the Elasticsearch domain.</p>"
    )
    @as("TagKeys")
    tagKeys: stringList,
    @ocaml.doc(
      "<p>Specifies the <code>ARN</code> for the Elasticsearch domain from which you want to delete the specified tags.</p>"
    )
    @as("ARN")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-es") @new external new: request => t = "RemoveTagsCommand"
  let make = (~tagKeys, ~arn, ()) => new({tagKeys, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListElasticsearchVersions = {
  type t
  @ocaml.doc("<p>
      Container for the parameters to the
      <code>
        <a>ListElasticsearchVersions</a>
      </code>
      operation.
      <p>
        Use
        <code>
          <a>MaxResults</a>
        </code>
        to control the maximum number of results to retrieve in a single
        call.
      </p>
      <p>
        Use
        <code>
          <a>NextToken</a>
        </code>
        in response to retrieve more results. If the received response does
        not contain a NextToken, then there are no more results to retrieve.
      </p>
    </p>")
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>
      Set this value to limit the number of results returned.
      Value provided must be greater than 10 else it wont be honored.
    </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>
      Container for the parameters for response received from
      <code>
        <a>ListElasticsearchVersions</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ElasticsearchVersions") elasticsearchVersions: option<elasticsearchVersionList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListElasticsearchVersionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListElasticsearchInstanceTypes = {
  type t
  @ocaml.doc("<p>
      Container for the parameters to the
      <code>
        <a>ListElasticsearchInstanceTypes</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>NextToken should be sent in case if earlier API call produced result
      containing NextToken. It is used for pagination.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
    Set this value to limit the number of results returned.
    Value provided must be greater than 30 else it wont be honored.
  </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>DomainName represents the name of the Domain that we are trying to modify. This should be present only if we are
      querying for list of available Elasticsearch instance types when modifying existing domain.
    </p>")
    @as("DomainName")
    domainName: option<domainName>,
    @ocaml.doc("<p>Version of Elasticsearch for which list of supported elasticsearch
      instance types are needed.
    </p>")
    @as("ElasticsearchVersion")
    elasticsearchVersion: elasticsearchVersionString,
  }
  @ocaml.doc("<p>
      Container for the parameters returned by
      <code>
        <a>ListElasticsearchInstanceTypes</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>In case if there are more results available NextToken would be
      present, make further request to the same API with
      received NextToken to paginate remaining results.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      List of instance types supported by Amazon Elasticsearch service for
      given
      <code>
        <a>ElasticsearchVersion</a>
      </code>
    </p>")
    @as("ElasticsearchInstanceTypes")
    elasticsearchInstanceTypes: option<elasticsearchInstanceTypeList>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "ListElasticsearchInstanceTypesCommand"
  let make = (~elasticsearchVersion, ~nextToken=?, ~maxResults=?, ~domainName=?, ()) =>
    new({nextToken, maxResults, domainName, elasticsearchVersion})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateOutboundCrossClusterSearchConnection = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>CreateOutboundCrossClusterSearchConnection</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>Specifies the connection alias that will be used by the customer for this connection.</p>"
    )
    @as("ConnectionAlias")
    connectionAlias: connectionAlias,
    @ocaml.doc(
      "<p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>"
    )
    @as("DestinationDomainInfo")
    destinationDomainInfo: domainInformation,
    @ocaml.doc(
      "<p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>"
    )
    @as("SourceDomainInfo")
    sourceDomainInfo: domainInformation,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>CreateOutboundCrossClusterSearchConnection</a></code> request. Contains the details of the newly created cross-cluster search connection.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>Unique id for the created outbound connection, which is used for subsequent operations on connection.</p>"
    )
    @as("CrossClusterSearchConnectionId")
    crossClusterSearchConnectionId: option<crossClusterSearchConnectionId>,
    @ocaml.doc(
      "<p>Specifies the <code><a>OutboundCrossClusterSearchConnectionStatus</a></code> for the newly created connection.</p>"
    )
    @as("ConnectionStatus")
    connectionStatus: option<outboundCrossClusterSearchConnectionStatus>,
    @ocaml.doc(
      "<p>Specifies the connection alias provided during the create connection request.</p>"
    )
    @as("ConnectionAlias")
    connectionAlias: option<connectionAlias>,
    @ocaml.doc(
      "<p>Specifies the <code><a>DomainInformation</a></code> for the destination Elasticsearch domain.</p>"
    )
    @as("DestinationDomainInfo")
    destinationDomainInfo: option<domainInformation>,
    @ocaml.doc(
      "<p>Specifies the <code><a>DomainInformation</a></code> for the source Elasticsearch domain.</p>"
    )
    @as("SourceDomainInfo")
    sourceDomainInfo: option<domainInformation>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "CreateOutboundCrossClusterSearchConnectionCommand"
  let make = (~connectionAlias, ~destinationDomainInfo, ~sourceDomainInfo, ()) =>
    new({connectionAlias, destinationDomainInfo, sourceDomainInfo})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelElasticsearchServiceSoftwareUpdate = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>CancelElasticsearchServiceSoftwareUpdate</a></code> operation. Specifies the name of the Elasticsearch domain that you wish to cancel a service software update on.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>The name of the domain that you want to stop the latest service software update on.</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>CancelElasticsearchServiceSoftwareUpdate</code> operation. Contains the status of the update.</p>"
  )
  type response = {
    @ocaml.doc("<p>The current status of the Elasticsearch service software update.</p>")
    @as("ServiceSoftwareOptions")
    serviceSoftwareOptions: option<serviceSoftwareOptions>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "CancelElasticsearchServiceSoftwareUpdateCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdatePackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>UpdatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>An info message for the new version which will be shown as part of <code>GetPackageVersionHistoryResponse</code>.</p>"
    )
    @as("CommitMessage")
    commitMessage: option<commitMessage>,
    @ocaml.doc("<p>New description of the package.</p>") @as("PackageDescription")
    packageDescription: option<packageDescription>,
    @as("PackageSource") packageSource: packageSource,
    @ocaml.doc("<p>Unique identifier for the package.</p>") @as("PackageID") packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>UpdatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>Information about the package <code>PackageDetails</code>.</p>")
    @as("PackageDetails")
    packageDetails: option<packageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "UpdatePackageCommand"
  let make = (~packageSource, ~packageID, ~commitMessage=?, ~packageDescription=?, ()) =>
    new({commitMessage, packageDescription, packageSource, packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RejectInboundCrossClusterSearchConnection = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>RejectInboundCrossClusterSearchConnection</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The id of the inbound connection that you want to reject.</p>")
    @as("CrossClusterSearchConnectionId")
    crossClusterSearchConnectionId: crossClusterSearchConnectionId,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>RejectInboundCrossClusterSearchConnection</a></code> operation. Contains details of rejected inbound connection.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of rejected inbound connection. </p>"
    )
    @as("CrossClusterSearchConnection")
    crossClusterSearchConnection: option<inboundCrossClusterSearchConnection>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "RejectInboundCrossClusterSearchConnectionCommand"
  let make = (~crossClusterSearchConnectionId, ()) =>
    new({crossClusterSearchConnectionId: crossClusterSearchConnectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTags = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>ListTags</a></code> operation. Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view are attached.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p> Specify the <code>ARN</code> for the Elasticsearch domain to which the tags are attached that you want to view.</p>"
    )
    @as("ARN")
    arn: arn,
  }
  @ocaml.doc(
    "<p>The result of a <code>ListTags</code> operation. Contains tags for all requested Elasticsearch domains.</p>"
  )
  type response = {
    @ocaml.doc("<p> List of <code>Tag</code> for the requested Elasticsearch domain.</p>")
    @as("TagList")
    tagList_: option<tagList_>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListTagsCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDomainNames = {
  type t
  @ocaml.doc(
    "<p> Container for the parameters to the <code><a>ListDomainNames</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p> Optional parameter to filter the output by domain engine type. Acceptable values are 'Elasticsearch' and 'OpenSearch'. </p>"
    )
    @as("EngineType")
    engineType: option<engineType>,
  }
  @ocaml.doc(
    "<p>The result of a <code>ListDomainNames</code> operation. Contains the names of all domains owned by this account and their respective engine types.</p>"
  )
  type response = {
    @ocaml.doc("<p>List of domain names and respective engine types.</p>") @as("DomainNames")
    domainNames: option<domainInfoList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListDomainNamesCommand"
  let make = (~engineType=?, ()) => new({engineType: engineType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPackageVersionHistory = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>GetPackageVersionHistory</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits results to a maximum number of versions.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Returns an audit history of versions of the package.</p>") @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>GetPackageVersionHistory</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>List of <code>PackageVersionHistory</code> objects.</p>")
    @as("PackageVersionHistoryList")
    packageVersionHistoryList: option<packageVersionHistoryList>,
    @as("PackageID") packageID: option<packageID>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "GetPackageVersionHistoryCommand"
  let make = (~packageID, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DissociatePackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>DissociatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>Name of the domain that you want to associate the package with.</p>")
    @as("DomainName")
    domainName: domainName,
    @ocaml.doc(
      "<p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>"
    )
    @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>DissociatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p><code>DomainPackageDetails</code></p>") @as("DomainPackageDetails")
    domainPackageDetails: option<domainPackageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DissociatePackageCommand"
  let make = (~domainName, ~packageID, ()) => new({domainName, packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeletePackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>DeletePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>Internal ID of the package that you want to delete. Use <code>DescribePackages</code> to find this value.</p>"
    )
    @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for response parameters to
      <code>
        <a>DeletePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p><code>PackageDetails</code></p>") @as("PackageDetails")
    packageDetails: option<packageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DeletePackageCommand"
  let make = (~packageID, ()) => new({packageID: packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteOutboundCrossClusterSearchConnection = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteOutboundCrossClusterSearchConnection</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The id of the outbound connection that you want to permanently delete.</p>")
    @as("CrossClusterSearchConnectionId")
    crossClusterSearchConnectionId: crossClusterSearchConnectionId,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>DeleteOutboundCrossClusterSearchConnection</a></code> operation. Contains details of deleted outbound connection.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>Specifies the <code><a>OutboundCrossClusterSearchConnection</a></code> of deleted outbound connection. </p>"
    )
    @as("CrossClusterSearchConnection")
    crossClusterSearchConnection: option<outboundCrossClusterSearchConnection>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DeleteOutboundCrossClusterSearchConnectionCommand"
  let make = (~crossClusterSearchConnectionId, ()) =>
    new({crossClusterSearchConnectionId: crossClusterSearchConnectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteInboundCrossClusterSearchConnection = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteInboundCrossClusterSearchConnection</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The id of the inbound connection that you want to permanently delete.</p>")
    @as("CrossClusterSearchConnectionId")
    crossClusterSearchConnectionId: crossClusterSearchConnectionId,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>DeleteInboundCrossClusterSearchConnection</a></code> operation. Contains details of deleted inbound connection.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of deleted inbound connection. </p>"
    )
    @as("CrossClusterSearchConnection")
    crossClusterSearchConnection: option<inboundCrossClusterSearchConnection>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DeleteInboundCrossClusterSearchConnectionCommand"
  let make = (~crossClusterSearchConnectionId, ()) =>
    new({crossClusterSearchConnectionId: crossClusterSearchConnectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>CreatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>The customer S3 location <code>PackageSource</code> for importing the package.</p>"
    )
    @as("PackageSource")
    packageSource: packageSource,
    @ocaml.doc("<p>Description of the package.</p>") @as("PackageDescription")
    packageDescription: option<packageDescription>,
    @ocaml.doc("<p>Type of package. Currently supports only TXT-DICTIONARY.</p>") @as("PackageType")
    packageType: packageType,
    @ocaml.doc("<p>Unique identifier for the package.</p>") @as("PackageName")
    packageName: packageName,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>CreatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>Information about the package <code>PackageDetails</code>.</p>")
    @as("PackageDetails")
    packageDetails: option<packageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "CreatePackageCommand"
  let make = (~packageSource, ~packageType, ~packageName, ~packageDescription=?, ()) =>
    new({packageSource, packageDescription, packageType, packageName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociatePackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>AssociatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>Name of the domain that you want to associate the package with.</p>")
    @as("DomainName")
    domainName: domainName,
    @ocaml.doc(
      "<p>Internal ID of the package that you want to associate with a domain. Use <code>DescribePackages</code> to find this value.</p>"
    )
    @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>AssociatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p><code>DomainPackageDetails</code></p>") @as("DomainPackageDetails")
    domainPackageDetails: option<domainPackageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "AssociatePackageCommand"
  let make = (~domainName, ~packageID, ()) => new({domainName, packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddTags = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>AddTags</a></code> operation. Specify the tags that you want to attach to the Elasticsearch domain.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p> List of <code>Tag</code> that need to be added for the Elasticsearch domain. </p>"
    )
    @as("TagList")
    tagList_: tagList_,
    @ocaml.doc("<p> Specify the <code>ARN</code> for which you want to add the tags.</p>")
    @as("ARN")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-es") @new external new: request => t = "AddTagsCommand"
  let make = (~tagList_, ~arn, ()) => new({tagList_, arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AcceptInboundCrossClusterSearchConnection = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>AcceptInboundCrossClusterSearchConnection</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The id of the inbound connection that you want to accept.</p>")
    @as("CrossClusterSearchConnectionId")
    crossClusterSearchConnectionId: crossClusterSearchConnectionId,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>AcceptInboundCrossClusterSearchConnection</a></code> operation. Contains details of accepted inbound connection.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>Specifies the <code><a>InboundCrossClusterSearchConnection</a></code> of accepted inbound connection. </p>"
    )
    @as("CrossClusterSearchConnection")
    crossClusterSearchConnection: option<inboundCrossClusterSearchConnection>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "AcceptInboundCrossClusterSearchConnectionCommand"
  let make = (~crossClusterSearchConnectionId, ()) =>
    new({crossClusterSearchConnectionId: crossClusterSearchConnectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPackagesForDomain = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>ListPackagesForDomain</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits results to a maximum number of packages.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the domain for which you want to list associated packages.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>
      Container for response parameters to
      <code>
        <a>ListPackagesForDomain</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc(
      "<p>Pagination token that needs to be supplied to the next call to get the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of <code>DomainPackageDetails</code> objects.</p>")
    @as("DomainPackageDetailsList")
    domainPackageDetailsList: option<domainPackageDetailsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListPackagesForDomainCommand"
  let make = (~domainName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDomainsForPackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>ListDomainsForPackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits results to a maximum number of domains.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The package for which to list domains.</p>") @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for response parameters to
      <code>
        <a>ListDomainsForPackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>List of <code>DomainPackageDetails</code> objects.</p>")
    @as("DomainPackageDetailsList")
    domainPackageDetailsList: option<domainPackageDetailsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListDomainsForPackageCommand"
  let make = (~packageID, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCompatibleElasticsearchVersions = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>GetCompatibleElasticsearchVersions</a>
      </code>
      operation.
    </p>")
  type request = {@as("DomainName") domainName: option<domainName>}
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>GetCompatibleElasticsearchVersions</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>
      A map of compatible Elasticsearch versions returned as part of the
      <code>
        <a>GetCompatibleElasticsearchVersions</a>
      </code>
      operation.
    </p>")
    @as("CompatibleElasticsearchVersions")
    compatibleElasticsearchVersions: option<compatibleElasticsearchVersionsList>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "GetCompatibleElasticsearchVersionsCommand"
  let make = (~domainName=?, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribePackages = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>DescribePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided, returns results for the next page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits results to a maximum number of packages.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.</p>"
    )
    @as("Filters")
    filters: option<describePackagesFilterList>,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>DescribePackages</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>List of <code>PackageDetails</code> objects.</p>") @as("PackageDetailsList")
    packageDetailsList: option<packageDetailsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribePackagesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeOutboundCrossClusterSearchConnections = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeOutboundCrossClusterSearchConnections</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      A list of filters used to match properties for outbound cross-cluster search connection.
      Available <code><a>Filter</a></code> names for this operation are:
      <ul>
        <li>cross-cluster-search-connection-id</li>
        <li>destination-domain-info.domain-name</li>
        <li>destination-domain-info.owner-id</li>
        <li>destination-domain-info.region</li>
        <li>source-domain-info.domain-name</li>
      </ul>
    </p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>DescribeOutboundCrossClusterSearchConnections</a></code> request. Contains the list of connections matching the filter criteria.</p>"
  )
  type response = {
    @ocaml.doc("<p>If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Consists of list of <code><a>OutboundCrossClusterSearchConnection</a></code> matching the specified filter criteria.</p>"
    )
    @as("CrossClusterSearchConnections")
    crossClusterSearchConnections: option<outboundCrossClusterSearchConnections>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeOutboundCrossClusterSearchConnectionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeInboundCrossClusterSearchConnections = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeInboundCrossClusterSearchConnections</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p> NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      A list of filters used to match properties for inbound cross-cluster search connection.
      Available <code><a>Filter</a></code> names for this operation are:
      <ul>
        <li>cross-cluster-search-connection-id</li>
        <li>source-domain-info.domain-name</li>
        <li>source-domain-info.owner-id</li>
        <li>source-domain-info.region</li>
        <li>destination-domain-info.domain-name</li>
      </ul>
    </p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc(
    "<p>The result of a <code><a>DescribeInboundCrossClusterSearchConnections</a></code> request. Contains the list of connections matching the filter criteria.</p>"
  )
  type response = {
    @ocaml.doc("<p>If more results are available and NextToken is present, make the next request to the same API with the received NextToken to paginate the remaining results.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Consists of list of <code><a>InboundCrossClusterSearchConnection</a></code> matching the specified filter criteria.</p>"
    )
    @as("CrossClusterSearchConnections")
    crossClusterSearchConnections: option<inboundCrossClusterSearchConnections>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeInboundCrossClusterSearchConnectionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) => new({nextToken, maxResults, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDomainChangeProgress = {
  type t
  @ocaml.doc("<p>Container for the parameters to the <code>DescribeDomainChangeProgress</code> operation. Specifies the
        domain name and optional change specific identity for which you want progress information.
      </p>")
  type request = {
    @ocaml.doc("<p>The specific change ID for which you want to get progress information. This is an optional parameter.
        If omitted, the service returns information about the most recent configuration change.
      </p>")
    @as("ChangeId")
    changeId: option<guid>,
    @ocaml.doc("<p>The domain you want to get the progress information about.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>DescribeDomainChangeProgress</code> request. Contains the progress information of
        the requested domain change.
      </p>")
  type response = {
    @ocaml.doc("<p>Progress information for the configuration change that is requested in the <code>DescribeDomainChangeProgress</code> request.
      </p>")
    @as("ChangeProgressStatus")
    changeProgressStatus: option<changeProgressStatusDetails>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeDomainChangeProgressCommand"
  let make = (~domainName, ~changeId=?, ()) => new({changeId, domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReservedElasticsearchInstances = {
  type t
  @ocaml.doc(
    "<p>Container for parameters to <code>DescribeReservedElasticsearchInstances</code></p>"
  )
  type request = {
    @ocaml.doc("<p>NextToken should be sent in case if earlier API call produced result
		containing NextToken. It is used for pagination.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the specified reserved Elasticsearch instance ID.</p>"
    )
    @as("ReservedElasticsearchInstanceId")
    reservedElasticsearchInstanceId: option<guid>,
  }
  @ocaml.doc(
    "<p>Container for results from <code>DescribeReservedElasticsearchInstances</code></p>"
  )
  type response = {
    @ocaml.doc("<p>List of reserved Elasticsearch instances.</p>")
    @as("ReservedElasticsearchInstances")
    reservedElasticsearchInstances: option<reservedElasticsearchInstanceList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeReservedElasticsearchInstancesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~reservedElasticsearchInstanceId=?, ()) =>
    new({nextToken, maxResults, reservedElasticsearchInstanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeReservedElasticsearchInstanceOfferings = {
  type t
  @ocaml.doc(
    "<p>Container for parameters to <code>DescribeReservedElasticsearchInstanceOfferings</code></p>"
  )
  type request = {
    @ocaml.doc("<p>NextToken should be sent in case if earlier API call produced result
		containing NextToken. It is used for pagination.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>"
    )
    @as("ReservedElasticsearchInstanceOfferingId")
    reservedElasticsearchInstanceOfferingId: option<guid>,
  }
  @ocaml.doc(
    "<p>Container for results from <code>DescribeReservedElasticsearchInstanceOfferings</code></p>"
  )
  type response = {
    @ocaml.doc("<p>List of reserved Elasticsearch instance offerings</p>")
    @as("ReservedElasticsearchInstanceOfferings")
    reservedElasticsearchInstanceOfferings: option<reservedElasticsearchInstanceOfferingList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeReservedElasticsearchInstanceOfferingsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~reservedElasticsearchInstanceOfferingId=?, ()) =>
    new({nextToken, maxResults, reservedElasticsearchInstanceOfferingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeElasticsearchDomain = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeElasticsearchDomain</a></code> operation.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the Elasticsearch domain for which you want information.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeElasticsearchDomain</code> request. Contains the status of the domain specified in the request.</p>"
  )
  type response = {
    @ocaml.doc("<p>The current status of the Elasticsearch domain.</p>") @as("DomainStatus")
    domainStatus: elasticsearchDomainStatus,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeElasticsearchDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDomainAutoTunes = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code>DescribeDomainAutoTunes</code> operation.</p>"
  )
  type request = {
    @ocaml.doc(
      "<p>NextToken is sent in case the earlier API call results contain the NextToken. It is used for pagination.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies the domain name for which you want Auto-Tune action details.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of <code>DescribeDomainAutoTunes</code> request. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information. </p>"
  )
  type response = {
    @ocaml.doc("<p>Specifies an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Specifies the list of setting adjustments that Auto-Tune has made to the domain. See the <a href=\"https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">Developer Guide</a> for more information.</p>"
    )
    @as("AutoTunes")
    autoTunes: option<autoTuneList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribeDomainAutoTunesCommand"
  let make = (~domainName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteElasticsearchDomain = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DeleteElasticsearchDomain</a></code> operation. Specifies the name of the Elasticsearch domain that you want to delete.</p>"
  )
  type request = {
    @ocaml.doc("<p>The name of the Elasticsearch domain that you want to permanently delete.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DeleteElasticsearchDomain</code> request. Contains the status of the pending deletion, or no status if the domain and all of its resources have been deleted.</p>"
  )
  type response = {
    @ocaml.doc("<p>The status of the Elasticsearch domain being deleted.</p>") @as("DomainStatus")
    domainStatus: option<elasticsearchDomainStatus>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DeleteElasticsearchDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateElasticsearchDomain = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>Tag</code> added during domain creation.</p>") @as("TagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>Specifies Auto-Tune options.</p>") @as("AutoTuneOptions")
    autoTuneOptions: option<autoTuneOptionsInput>,
    @ocaml.doc("<p>Specifies advanced security options.</p>") @as("AdvancedSecurityOptions")
    advancedSecurityOptions: option<advancedSecurityOptionsInput>,
    @ocaml.doc(
      "<p>Options to specify configuration that will be applied to the domain endpoint.</p>"
    )
    @as("DomainEndpointOptions")
    domainEndpointOptions: option<domainEndpointOptions>,
    @ocaml.doc(
      "<p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>"
    )
    @as("LogPublishingOptions")
    logPublishingOptions: option<logPublishingOptions>,
    @ocaml.doc("<p> Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
          See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options\" target=\"_blank\">Configuration Advanced Options</a> for more information.</p>")
    @as("AdvancedOptions")
    advancedOptions: option<advancedOptions>,
    @ocaml.doc("<p>Specifies the NodeToNodeEncryptionOptions.</p>")
    @as("NodeToNodeEncryptionOptions")
    nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
    @ocaml.doc("<p>Specifies the Encryption At Rest Options.</p>") @as("EncryptionAtRestOptions")
    encryptionAtRestOptions: option<encryptionAtRestOptions>,
    @ocaml.doc(
      "<p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html\" target=\"_blank\">Amazon Cognito Authentication for Kibana</a>.</p>"
    )
    @as("CognitoOptions")
    cognitoOptions: option<cognitoOptions>,
    @ocaml.doc(
      "<p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc\" target=\"_blank\">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>"
    )
    @as("VPCOptions")
    vpcoptions: option<vpcoptions>,
    @ocaml.doc(
      "<p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>"
    )
    @as("SnapshotOptions")
    snapshotOptions: option<snapshotOptions>,
    @ocaml.doc("<p> IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
    accessPolicies: option<policyDocument>,
    @ocaml.doc(
      "<p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>"
    )
    @as("EBSOptions")
    ebsoptions: option<ebsoptions>,
    @ocaml.doc(
      "<p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>"
    )
    @as("ElasticsearchClusterConfig")
    elasticsearchClusterConfig: option<elasticsearchClusterConfig>,
    @ocaml.doc("<p>String of format X.Y to specify version for the Elasticsearch domain eg. \"1.5\" or \"2.3\". For more information,
          see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains\" target=\"_blank\">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>")
    @as("ElasticsearchVersion")
    elasticsearchVersion: option<elasticsearchVersionString>,
    @ocaml.doc(
      "<p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>CreateElasticsearchDomain</code> operation. Contains the status of the newly created Elasticsearch domain.</p>"
  )
  type response = {
    @ocaml.doc("<p>The status of the newly created Elasticsearch domain. </p>") @as("DomainStatus")
    domainStatus: option<elasticsearchDomainStatus>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "CreateElasticsearchDomainCommand"
  let make = (
    ~domainName,
    ~tagList_=?,
    ~autoTuneOptions=?,
    ~advancedSecurityOptions=?,
    ~domainEndpointOptions=?,
    ~logPublishingOptions=?,
    ~advancedOptions=?,
    ~nodeToNodeEncryptionOptions=?,
    ~encryptionAtRestOptions=?,
    ~cognitoOptions=?,
    ~vpcoptions=?,
    ~snapshotOptions=?,
    ~accessPolicies=?,
    ~ebsoptions=?,
    ~elasticsearchClusterConfig=?,
    ~elasticsearchVersion=?,
    (),
  ) =>
    new({
      tagList_,
      autoTuneOptions,
      advancedSecurityOptions,
      domainEndpointOptions,
      logPublishingOptions,
      advancedOptions,
      nodeToNodeEncryptionOptions,
      encryptionAtRestOptions,
      cognitoOptions,
      vpcoptions,
      snapshotOptions,
      accessPolicies,
      ebsoptions,
      elasticsearchClusterConfig,
      elasticsearchVersion,
      domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUpgradeHistory = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to
      <code>
        <a>GetUpgradeHistory</a>
      </code>
      operation.
    </p>")
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>GetUpgradeHistory</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc(
      "<p>Pagination token that needs to be supplied to the next call to get the next page of results</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      A list of
      <code>
        <a>UpgradeHistory</a>
      </code>
      objects corresponding to each Upgrade or Upgrade Eligibility Check performed on a domain returned as part of
      <code>
        <a>GetUpgradeHistoryResponse</a>
      </code>
      object.
    </p>")
    @as("UpgradeHistories")
    upgradeHistories: option<upgradeHistoryList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "GetUpgradeHistoryCommand"
  let make = (~domainName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeElasticsearchDomains = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>DescribeElasticsearchDomains</a></code> operation. By default, the API returns the status of all Elasticsearch domains.</p>"
  )
  type request = {
    @ocaml.doc("<p>The Elasticsearch domains for which you want information.</p>")
    @as("DomainNames")
    domainNames: domainNameList,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeElasticsearchDomains</code> request. Contains the status of the specified domains or all domains owned by the account.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The status of the domains requested in the <code>DescribeElasticsearchDomains</code> request.</p>"
    )
    @as("DomainStatusList")
    domainStatusList: elasticsearchDomainStatusList,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeElasticsearchDomainsCommand"
  let make = (~domainNames, ()) => new({domainNames: domainNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateElasticsearchDomainConfig = {
  type t
  @ocaml.doc(
    "<p>Container for the parameters to the <code><a>UpdateElasticsearchDomain</a></code> operation. Specifies the type and number of instances in the domain cluster.</p>"
  )
  type request = {
    @ocaml.doc("<p>
           This flag, when set to True, specifies whether the <code>UpdateElasticsearchDomain</code> request should return the results of validation checks without actually applying the change.
           This flag, when set to True, specifies the deployment mechanism through which the update shall be applied on the domain.
           This will not actually perform the Update.
       </p>")
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>Specifies Auto-Tune options.</p>") @as("AutoTuneOptions")
    autoTuneOptions: option<autoTuneOptions>,
    @ocaml.doc("<p>Specifies the Encryption At Rest Options.</p>") @as("EncryptionAtRestOptions")
    encryptionAtRestOptions: option<encryptionAtRestOptions>,
    @ocaml.doc("<p>Specifies the NodeToNodeEncryptionOptions.</p>")
    @as("NodeToNodeEncryptionOptions")
    nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
    @ocaml.doc("<p>Specifies advanced security options.</p>") @as("AdvancedSecurityOptions")
    advancedSecurityOptions: option<advancedSecurityOptionsInput>,
    @ocaml.doc(
      "<p>Options to specify configuration that will be applied to the domain endpoint.</p>"
    )
    @as("DomainEndpointOptions")
    domainEndpointOptions: option<domainEndpointOptions>,
    @ocaml.doc(
      "<p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>"
    )
    @as("LogPublishingOptions")
    logPublishingOptions: option<logPublishingOptions>,
    @ocaml.doc("<p>IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
    accessPolicies: option<policyDocument>,
    @ocaml.doc("<p>Modifies the advanced option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
       See <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options\" target=\"_blank\">Configuration Advanced Options</a> for more information.</p>")
    @as("AdvancedOptions")
    advancedOptions: option<advancedOptions>,
    @ocaml.doc(
      "<p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html\" target=\"_blank\">Amazon Cognito Authentication for Kibana</a>.</p>"
    )
    @as("CognitoOptions")
    cognitoOptions: option<cognitoOptions>,
    @ocaml.doc(
      "<p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc\" target=\"_blank\">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>"
    )
    @as("VPCOptions")
    vpcoptions: option<vpcoptions>,
    @ocaml.doc(
      "<p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours. </p>"
    )
    @as("SnapshotOptions")
    snapshotOptions: option<snapshotOptions>,
    @ocaml.doc("<p>Specify the type and size of the EBS volume that you want to use. </p>")
    @as("EBSOptions")
    ebsoptions: option<ebsoptions>,
    @ocaml.doc("<p>The type and number of instances to instantiate for the domain cluster.</p>")
    @as("ElasticsearchClusterConfig")
    elasticsearchClusterConfig: option<elasticsearchClusterConfig>,
    @ocaml.doc("<p>The name of the Elasticsearch domain that you are updating. </p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of an <code>UpdateElasticsearchDomain</code> request. Contains the status of the Elasticsearch domain being updated.</p>"
  )
  type response = {
    @ocaml.doc("<p>Contains result of DryRun. </p>") @as("DryRunResults")
    dryRunResults: option<dryRunResults>,
    @ocaml.doc("<p>The status of the updated Elasticsearch domain. </p>") @as("DomainConfig")
    domainConfig: elasticsearchDomainConfig,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "UpdateElasticsearchDomainConfigCommand"
  let make = (
    ~domainName,
    ~dryRun=?,
    ~autoTuneOptions=?,
    ~encryptionAtRestOptions=?,
    ~nodeToNodeEncryptionOptions=?,
    ~advancedSecurityOptions=?,
    ~domainEndpointOptions=?,
    ~logPublishingOptions=?,
    ~accessPolicies=?,
    ~advancedOptions=?,
    ~cognitoOptions=?,
    ~vpcoptions=?,
    ~snapshotOptions=?,
    ~ebsoptions=?,
    ~elasticsearchClusterConfig=?,
    (),
  ) =>
    new({
      dryRun,
      autoTuneOptions,
      encryptionAtRestOptions,
      nodeToNodeEncryptionOptions,
      advancedSecurityOptions,
      domainEndpointOptions,
      logPublishingOptions,
      accessPolicies,
      advancedOptions,
      cognitoOptions,
      vpcoptions,
      snapshotOptions,
      ebsoptions,
      elasticsearchClusterConfig,
      domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeElasticsearchDomainConfig = {
  type t
  @ocaml.doc(
    "<p> Container for the parameters to the <code>DescribeElasticsearchDomainConfig</code> operation. Specifies the domain name for which you want configuration information.</p>"
  )
  type request = {
    @ocaml.doc("<p>The Elasticsearch domain that you want to get information about.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc(
    "<p>The result of a <code>DescribeElasticsearchDomainConfig</code> request. Contains the configuration information of the requested domain.</p>"
  )
  type response = {
    @ocaml.doc(
      "<p>The configuration information of the domain requested in the <code>DescribeElasticsearchDomainConfig</code> request.</p>"
    )
    @as("DomainConfig")
    domainConfig: elasticsearchDomainConfig,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeElasticsearchDomainConfigCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeElasticsearchInstanceTypeLimits = {
  type t
  @ocaml.doc("<p>
      Container for the parameters to
      <code>
        <a>DescribeElasticsearchInstanceTypeLimits</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>
      Version of Elasticsearch for which
      <code>
        <a>Limits</a>
      </code>
      are needed.
    </p>")
    @as("ElasticsearchVersion")
    elasticsearchVersion: elasticsearchVersionString,
    @ocaml.doc("<p>
      The instance type for an Elasticsearch cluster for which Elasticsearch
      <code>
        <a>Limits</a>
      </code>
      are needed.
    </p>")
    @as("InstanceType")
    instanceType: espartitionInstanceType,
    @ocaml.doc("<p>
      DomainName represents the name of the Domain that we are trying to
      modify. This should be present only if we are
      querying for Elasticsearch
      <code>
        <a>Limits</a>
      </code>
      for existing domain.
    </p>")
    @as("DomainName")
    domainName: option<domainName>,
  }
  @ocaml.doc("<p>
      Container for the parameters received from
      <code>
        <a>DescribeElasticsearchInstanceTypeLimits</a>
      </code>
      operation.
    </p>")
  type response = {@as("LimitsByRole") limitsByRole: option<limitsByRole>}
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeElasticsearchInstanceTypeLimitsCommand"
  let make = (~elasticsearchVersion, ~instanceType, ~domainName=?, ()) =>
    new({elasticsearchVersion, instanceType, domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
