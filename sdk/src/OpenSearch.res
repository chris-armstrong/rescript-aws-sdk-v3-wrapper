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
external createClient: unit => awsServiceClient = "OpenSearchClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
@ocaml.doc("<p>The type of EBS volume, standard, gp2, or io1. See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/opensearch-createupdatedomains.html#opensearch-createdomain-configure-ebs\" target=\"_blank\">Configuring EBS-based Storage</a> for more information.
    </p>")
type volumeType = [@as("io1") #Io1 | @as("gp2") #Gp2 | @as("standard") #Standard]
type versionString = string
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
@ocaml.doc("<p>The unit of a maintenance schedule duration. Valid value is HOUR. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
type timeUnit = [@as("HOURS") #HOURS]
@ocaml.doc("<p>A string of length from 0 to 256 characters that specifies the value for a tag. Tag values can be null and don't
      have to be unique in a tag set.
    </p>")
type tagValue = string
@ocaml.doc("<p>A string of length from 1 to 128 characters that specifies the key for a tag. Tag keys must be unique for the
      domain to which they're attached.
    </p>")
type tagKey = string
type tlssecurityPolicy = [
  | @as("Policy-Min-TLS-1-2-2019-07") #Policy_Min_TLS_1_2_2019_07
  | @as("Policy-Min-TLS-1-0-2019-07") #Policy_Min_TLS_1_0_2019_07
]
type string_ = string
@ocaml.doc("<p>
      Type of storage.
      List of available storage options:
      <ol>
        <li>instance</li>
        Built-in storage available for the instance
        <li>ebs</li>
        Elastic block storage attached to the instance
      </ol>
    </p>")
type storageTypeName = string
@ocaml.doc("<p>
      Sub-type of the given storage type.
      List of available sub-storage options:
      \"instance\" storageType has no storageSubType.
      \"ebs\" storageType has the following valid storageSubTypes:
      <ol>
        <li>standard</li>
        <li>gp2</li>
        <li>io1</li>
      </ol>
      See
      <code>
        <a>VolumeType</a>
      </code>
      for more information regarding each EBS storage option.
    </p>")
type storageSubTypeName = string
type startTimestamp = Js.Date.t
type startAt = Js.Date.t
@ocaml.doc("<p>The endpoint to which service requests are submitted. For example, <code>
      search-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com
    </code> or <code>doc-imdb-movies-oopcnjfn6ugofer3zx5iadxxca.eu-west-1.es.amazonaws.com</code>.
    </p>")
type serviceUrl = string
@ocaml.doc("<p>The Auto-Tune action severity. Valid values are LOW, MEDIUM, and HIGH.</p>")
type scheduledAutoTuneSeverityType = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
@ocaml.doc("<p>The Auto-Tune action description.</p>") type scheduledAutoTuneDescription = string
@ocaml.doc(
  "<p>The Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING, and JVM_YOUNG_GEN_TUNING.</p>"
)
type scheduledAutoTuneActionType = [
  | @as("JVM_YOUNG_GEN_TUNING") #JVM_YOUNG_GEN_TUNING
  | @as("JVM_HEAP_SIZE_TUNING") #JVM_HEAP_SIZE_TUNING
]
type samlmetadata = string
type samlentityId = string
type s3Key = string
type s3BucketName = string
@ocaml.doc("<p>The rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK and DEFAULT_ROLLBACK.
    </p>")
type rollbackOnDisable = [
  | @as("DEFAULT_ROLLBACK") #DEFAULT_ROLLBACK
  | @as("NO_ROLLBACK") #NO_ROLLBACK
]
type roleArn = string
type reservedInstancePaymentOption = [
  | @as("NO_UPFRONT") #NO_UPFRONT
  | @as("PARTIAL_UPFRONT") #PARTIAL_UPFRONT
  | @as("ALL_UPFRONT") #ALL_UPFRONT
]
type reservationToken = string
type region = string
type referencePath = string
@ocaml.doc("<p>Access policy rules for a domain service endpoints. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies\" target=\"_blank\">Configuring access policies
    </a>. The maximum size of a policy document is 100 KB.
    </p>")
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
type outboundConnectionStatusCode = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("REJECTED") #REJECTED
  | @as("REJECTING") #REJECTING
  | @as("ACTIVE") #ACTIVE
  | @as("PROVISIONING") #PROVISIONING
  | @as("APPROVED") #APPROVED
  | @as("PENDING_ACCEPTANCE") #PENDING_ACCEPTANCE
  | @as("VALIDATION_FAILED") #VALIDATION_FAILED
  | @as("VALIDATING") #VALIDATING
]
@ocaml.doc("<p>The state of a requested change. One of the following:</p>
    <ul>
      <li>Processing: The request change is still in progress.</li>
      <li>Active: The request change is processed and deployed to the domain.</li>
    </ul>")
type optionState = [
  | @as("Active") #Active
  | @as("Processing") #Processing
  | @as("RequiresIndexDocuments") #RequiresIndexDocuments
]
type openSearchWarmPartitionInstanceType = [
  | @as("ultrawarm1.xlarge.search") #Ultrawarm1_Xlarge_Search
  | @as("ultrawarm1.large.search") #Ultrawarm1_Large_Search
  | @as("ultrawarm1.medium.search") #Ultrawarm1_Medium_Search
]
type openSearchPartitionInstanceType = [
  | @as("t4g.medium.search") #T4g_Medium_Search
  | @as("t4g.small.search") #T4g_Small_Search
  | @as("r6gd.16xlarge.search") #R6gd_16xlarge_Search
  | @as("r6gd.12xlarge.search") #R6gd_12xlarge_Search
  | @as("r6gd.8xlarge.search") #R6gd_8xlarge_Search
  | @as("r6gd.4xlarge.search") #R6gd_4xlarge_Search
  | @as("r6gd.2xlarge.search") #R6gd_2xlarge_Search
  | @as("r6gd.xlarge.search") #R6gd_Xlarge_Search
  | @as("r6gd.large.search") #R6gd_Large_Search
  | @as("c6g.12xlarge.search") #C6g_12xlarge_Search
  | @as("c6g.8xlarge.search") #C6g_8xlarge_Search
  | @as("c6g.4xlarge.search") #C6g_4xlarge_Search
  | @as("c6g.2xlarge.search") #C6g_2xlarge_Search
  | @as("c6g.xlarge.search") #C6g_Xlarge_Search
  | @as("c6g.large.search") #C6g_Large_Search
  | @as("m6g.12xlarge.search") #M6g_12xlarge_Search
  | @as("m6g.8xlarge.search") #M6g_8xlarge_Search
  | @as("m6g.4xlarge.search") #M6g_4xlarge_Search
  | @as("m6g.2xlarge.search") #M6g_2xlarge_Search
  | @as("m6g.xlarge.search") #M6g_Xlarge_Search
  | @as("m6g.large.search") #M6g_Large_Search
  | @as("r6g.12xlarge.search") #R6g_12xlarge_Search
  | @as("r6g.8xlarge.search") #R6g_8xlarge_Search
  | @as("r6g.4xlarge.search") #R6g_4xlarge_Search
  | @as("r6g.2xlarge.search") #R6g_2xlarge_Search
  | @as("r6g.xlarge.search") #R6g_Xlarge_Search
  | @as("r6g.large.search") #R6g_Large_Search
  | @as("i3.16xlarge.search") #I3_16xlarge_Search
  | @as("i3.8xlarge.search") #I3_8xlarge_Search
  | @as("i3.4xlarge.search") #I3_4xlarge_Search
  | @as("i3.2xlarge.search") #I3_2xlarge_Search
  | @as("i3.xlarge.search") #I3_Xlarge_Search
  | @as("i3.large.search") #I3_Large_Search
  | @as("r4.16xlarge.search") #R4_16xlarge_Search
  | @as("r4.8xlarge.search") #R4_8xlarge_Search
  | @as("r4.4xlarge.search") #R4_4xlarge_Search
  | @as("r4.2xlarge.search") #R4_2xlarge_Search
  | @as("r4.xlarge.search") #R4_Xlarge_Search
  | @as("r4.large.search") #R4_Large_Search
  | @as("c4.8xlarge.search") #C4_8xlarge_Search
  | @as("c4.4xlarge.search") #C4_4xlarge_Search
  | @as("c4.2xlarge.search") #C4_2xlarge_Search
  | @as("c4.xlarge.search") #C4_Xlarge_Search
  | @as("c4.large.search") #C4_Large_Search
  | @as("d2.8xlarge.search") #D2_8xlarge_Search
  | @as("d2.4xlarge.search") #D2_4xlarge_Search
  | @as("d2.2xlarge.search") #D2_2xlarge_Search
  | @as("d2.xlarge.search") #D2_Xlarge_Search
  | @as("i2.2xlarge.search") #I2_2xlarge_Search
  | @as("i2.xlarge.search") #I2_Xlarge_Search
  | @as("r3.8xlarge.search") #R3_8xlarge_Search
  | @as("r3.4xlarge.search") #R3_4xlarge_Search
  | @as("r3.2xlarge.search") #R3_2xlarge_Search
  | @as("r3.xlarge.search") #R3_Xlarge_Search
  | @as("r3.large.search") #R3_Large_Search
  | @as("t2.medium.search") #T2_Medium_Search
  | @as("t2.small.search") #T2_Small_Search
  | @as("t2.micro.search") #T2_Micro_Search
  | @as("ultrawarm1.xlarge.search") #Ultrawarm1_Xlarge_Search
  | @as("ultrawarm1.large.search") #Ultrawarm1_Large_Search
  | @as("ultrawarm1.medium.search") #Ultrawarm1_Medium_Search
  | @as("t3.2xlarge.search") #T3_2xlarge_Search
  | @as("t3.xlarge.search") #T3_Xlarge_Search
  | @as("t3.large.search") #T3_Large_Search
  | @as("t3.medium.search") #T3_Medium_Search
  | @as("t3.small.search") #T3_Small_Search
  | @as("t3.micro.search") #T3_Micro_Search
  | @as("t3.nano.search") #T3_Nano_Search
  | @as("c5.18xlarge.search") #C5_18xlarge_Search
  | @as("c5.9xlarge.search") #C5_9xlarge_Search
  | @as("c5.4xlarge.search") #C5_4xlarge_Search
  | @as("c5.2xlarge.search") #C5_2xlarge_Search
  | @as("c5.xlarge.search") #C5_Xlarge_Search
  | @as("c5.large.search") #C5_Large_Search
  | @as("r5.24xlarge.search") #R5_24xlarge_Search
  | @as("r5.12xlarge.search") #R5_12xlarge_Search
  | @as("r5.4xlarge.search") #R5_4xlarge_Search
  | @as("r5.2xlarge.search") #R5_2xlarge_Search
  | @as("r5.xlarge.search") #R5_Xlarge_Search
  | @as("r5.large.search") #R5_Large_Search
  | @as("m5.24xlarge.search") #M5_24xlarge_Search
  | @as("m5.12xlarge.search") #M5_12xlarge_Search
  | @as("m5.4xlarge.search") #M5_4xlarge_Search
  | @as("m5.2xlarge.search") #M5_2xlarge_Search
  | @as("m5.xlarge.search") #M5_Xlarge_Search
  | @as("m5.large.search") #M5_Large_Search
  | @as("m4.10xlarge.search") #M4_10xlarge_Search
  | @as("m4.4xlarge.search") #M4_4xlarge_Search
  | @as("m4.2xlarge.search") #M4_2xlarge_Search
  | @as("m4.xlarge.search") #M4_Xlarge_Search
  | @as("m4.large.search") #M4_Large_Search
  | @as("m3.2xlarge.search") #M3_2xlarge_Search
  | @as("m3.xlarge.search") #M3_Xlarge_Search
  | @as("m3.large.search") #M3_Large_Search
  | @as("m3.medium.search") #M3_Medium_Search
]
type nonEmptyString = string
@ocaml.doc("<p>
      Paginated APIs accept the NextToken input to return the next page of results and provide
      a NextToken output in the response, which you can use to retrieve more results.
    </p>")
type nextToken = string
@ocaml.doc("<p>
      Minimum number of instances that can be instantiated for a given InstanceType.
    </p>")
type minimumInstanceCount = int
type message = string
@ocaml.doc("<p>
      Maximum number of instances that can be instantiated for a given InstanceType.
    </p>")
type maximumInstanceCount = int
@ocaml.doc("<p>
      Set this value to limit the number of results returned.
    </p>")
type maxResults = int
type long = float
@ocaml.doc("<p>Type of log file. Can be one of the following:
      <ul>
        <li>INDEX_SLOW_LOGS: Index slow logs contain insert requests that took more time than configured index query log
          threshold to execute.
        </li>
        <li>SEARCH_SLOW_LOGS: Search slow logs contain search queries that took more time than configured search query
          log threshold to execute.
        </li>
        <li>ES_APPLICATION_LOGS: OpenSearch application logs contain information about errors and warnings raised
          during the operation of the service and can be useful for troubleshooting.
        </li>
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
@ocaml.doc("<p>The number of EC2 instances in the domain.</p>") type instanceCount = int
type inboundConnectionStatusCode = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("REJECTED") #REJECTED
  | @as("REJECTING") #REJECTING
  | @as("ACTIVE") #ACTIVE
  | @as("PROVISIONING") #PROVISIONING
  | @as("APPROVED") #APPROVED
  | @as("PENDING_ACCEPTANCE") #PENDING_ACCEPTANCE
]
type identityPoolId = string
type guid = string
type errorType = string
type errorMessage = string
type engineType = [@as("Elasticsearch") #Elasticsearch | @as("OpenSearch") #OpenSearch]
@ocaml.doc("<p>Integer to specify the value of a maintenance schedule duration. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
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
@ocaml.doc("<p>The name of an domain. Domain names are unique across the domains owned by an account within an AWS
      region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9,
      and - (hyphen).
    </p>")
type domainName = string
@ocaml.doc("<p>Unique identifier for the domain.</p>") type domainId = string
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
type createdAt = Js.Date.t
type connectionStatusMessage = string
type connectionId = string
type connectionAlias = string
type commitMessage = string
@ocaml.doc("<p>ARN of the Cloudwatch log group to publish logs to.</p>")
type cloudWatchLogsLogGroupArn = string
type changeProgressStageStatus = string
type changeProgressStageName = string
type boolean_ = bool
type backendRole = string
@ocaml.doc("<p>Specifies the Auto-Tune type. Valid value is SCHEDULED_ACTION.</p>")
type autoTuneType = [@as("SCHEDULED_ACTION") #SCHEDULED_ACTION]
@ocaml.doc("<p>The Auto-Tune state for the domain. For valid states see <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service</a>.
    </p>")
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
@ocaml.doc("<p>The Auto-Tune desired state. Valid values are ENABLED and DISABLED.</p>")
type autoTuneDesiredState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
@ocaml.doc("<p>The timestamp of the Auto-Tune action scheduled for the domain.</p>")
type autoTuneDate = Js.Date.t
@ocaml.doc("<p>The Amazon Resource Name (ARN) of the domain. See <a href=\"http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html\" target=\"_blank\">Identifiers for IAM Entities
    </a> in <i>Using AWS Identity and Access Management</i> for more information.
    </p>")
type arn = string
@ocaml.doc(
  "<p>The zone awareness configuration for the domain cluster, such as the number of availability zones.</p>"
)
type zoneAwarenessConfig = {
  @ocaml.doc("<p>An integer value to indicate the number of availability zones for a domain when zone awareness is enabled. This
      should be equal to number of subnets if VPC endpoints is enabled.
    </p>")
  @as("AvailabilityZoneCount")
  availabilityZoneCount: option<integerClass>,
}
@ocaml.doc("<p>List of supported OpenSearch versions.
    </p>")
type versionList = array<versionString>
type valueStringList = array<nonEmptyString>
@ocaml.doc("<p>A key value pair for a resource tag.</p>")
type tag = {
  @ocaml.doc("<p>The <code>TagValue</code>, the value assigned to the corresponding tag key. Tag values can be null and
      don't have to be unique in a tag set. For example, you can have a key value
      pair in a tag set of <code>project : Trinity</code> and
      <code>cost-center : Trinity</code>
    </p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>The <code>TagKey</code>, the name of the tag. Tag keys must be unique for the domain to
      which they are attached.
    </p>")
  @as("Key")
  key: tagKey,
}
type stringList = array<string_>
@ocaml.doc("<p>The time, in UTC format, when the service takes a daily automated snapshot of the specified
      domain. Default is <code>0</code> hours.
    </p>")
type snapshotOptions = {
  @ocaml.doc("<p>The time, in UTC format, when the service takes a daily automated snapshot of the specified
      domain. Default is <code>0</code> hours.
    </p>")
  @as("AutomatedSnapshotStartHour")
  automatedSnapshotStartHour: option<integerClass>,
}
@ocaml.doc("<p>The current options of an domain service software options.</p>")
type serviceSoftwareOptions = {
  @ocaml.doc("<p>
      <code>True</code>
      if a service software is never automatically updated. <code>False</code> if a service software is automatically
      updated after <code>AutomatedUpdateDate</code>.
    </p>")
  @as("OptionalDeployment")
  optionalDeployment: option<boolean_>,
  @ocaml.doc("<p>The timestamp, in Epoch time, until which you can manually request a service software update. After this date, we
      automatically update your service software.
    </p>")
  @as("AutomatedUpdateDate")
  automatedUpdateDate: option<deploymentCloseDateTimeStamp>,
  @ocaml.doc("<p>The description of the <code>UpdateStatus</code>.
    </p>")
  @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The status of your service software update. This field can take the following values: <code>
      ELIGIBLE</code>, <code>PENDING_UPDATE</code>, <code>IN_PROGRESS</code>, <code>COMPLETED</code>, and <code>
      NOT_ELIGIBLE</code>.
    </p>")
  @as("UpdateStatus")
  updateStatus: option<deploymentStatus>,
  @ocaml.doc("<p>
      <code>True</code>
      if you're able to cancel your service software version update. <code>False</code> if you can't cancel
      your service software update.
    </p>")
  @as("Cancellable")
  cancellable: option<boolean_>,
  @ocaml.doc("<p>
      <code>True</code>
      if you're able to update your service software version. <code>False</code> if you can't update your
      service software version.
    </p>")
  @as("UpdateAvailable")
  updateAvailable: option<boolean_>,
  @ocaml.doc("<p>The new service software version if one is available.</p>") @as("NewVersion")
  newVersion: option<string_>,
  @ocaml.doc("<p>The current service software version present on the domain.</p>")
  @as("CurrentVersion")
  currentVersion: option<string_>,
}
@ocaml.doc("<p>Specifies details about the scheduled Auto-Tune action. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
type scheduledAutoTuneDetails = {
  @ocaml.doc("<p>The Auto-Tune action severity. Valid values are LOW, MEDIUM, and HIGH.</p>")
  @as("Severity")
  severity: option<scheduledAutoTuneSeverityType>,
  @ocaml.doc("<p>The Auto-Tune action description.</p>") @as("Action")
  action: option<scheduledAutoTuneDescription>,
  @ocaml.doc(
    "<p>The Auto-Tune action type. Valid values are JVM_HEAP_SIZE_TUNING and JVM_YOUNG_GEN_TUNING.</p>"
  )
  @as("ActionType")
  actionType: option<scheduledAutoTuneActionType>,
  @ocaml.doc("<p>The timestamp of the Auto-Tune action scheduled for the domain.</p>") @as("Date")
  date: option<autoTuneDate>,
}
@ocaml.doc("<p>The SAML identity povider's information.</p>")
type samlidp = {
  @ocaml.doc("<p>The unique entity ID of the application in SAML identity provider.</p>")
  @as("EntityId")
  entityId: samlentityId,
  @ocaml.doc("<p>The metadata of the SAML application in XML format.</p>") @as("MetadataContent")
  metadataContent: samlmetadata,
}
@ocaml.doc("<p>Contains the specific price and frequency of a recurring charges for a reserved OpenSearch instance, or for a
      reserved OpenSearch instance offering.
    </p>")
type recurringCharge = {
  @ocaml.doc("<p>The frequency of the recurring charge.</p>") @as("RecurringChargeFrequency")
  recurringChargeFrequency: option<string_>,
  @ocaml.doc("<p>The monetary amount of the recurring charge.</p>") @as("RecurringChargeAmount")
  recurringChargeAmount: option<double>,
}
@ocaml.doc("<p>Details of a package version.</p>")
type packageVersionHistory = {
  @ocaml.doc("<p>The timestamp of when the package was created.</p>") @as("CreatedAt")
  createdAt: option<createdAt>,
  @ocaml.doc("<p>A message associated with the package version.</p>") @as("CommitMessage")
  commitMessage: option<commitMessage>,
  @ocaml.doc("<p>The package version.</p>") @as("PackageVersion")
  packageVersion: option<packageVersion>,
}
@ocaml.doc("<p>The Amazon S3 location for importing the package specified as <code>S3BucketName</code> and
      <code>S3Key</code>
    </p>")
type packageSource = {
  @ocaml.doc("<p>Key (file name) of the package.</p>") @as("S3Key") s3Key: option<s3Key>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket containing the package.</p>") @as("S3BucketName")
  s3BucketName: option<s3BucketName>,
}
@ocaml.doc("<p>The connection status of an outbound cross-cluster connection.</p>")
type outboundConnectionStatus = {
  @ocaml.doc("<p>Verbose information for the outbound connection status.</p>") @as("Message")
  message: option<connectionStatusMessage>,
  @ocaml.doc("<p>The state code for the outbound connection. Can be one of the following:</p>
    <ul>
      <li>VALIDATING: The outbound connection request is being validated.</li>
      <li>VALIDATION_FAILED: Validation failed for the connection request.</li>
      <li>PENDING_ACCEPTANCE: Outbound connection request is validated and is not yet accepted by the remote domain
        owner.
      </li>
      <li>APPROVED: Outbound connection has been approved by the remote domain owner for getting provisioned.</li>
      <li>PROVISIONING: Outbound connection request is in process.</li>
      <li>ACTIVE: Outbound connection is active and ready to use.</li>
      <li>REJECTING: Outbound connection rejection by remote domain owner is in progress.</li>
      <li>REJECTED: Outbound connection request is rejected by remote domain owner.</li>
      <li>DELETING: Outbound connection deletion is in progress.</li>
      <li>DELETED: Outbound connection is deleted and can no longer be used.</li>
    </ul>")
  @as("StatusCode")
  statusCode: option<outboundConnectionStatusCode>,
}
@ocaml.doc("<p>Provides the current status of the entity.</p>")
type optionStatus = {
  @ocaml.doc("<p>Indicates whether the domain is being deleted.</p>") @as("PendingDeletion")
  pendingDeletion: option<boolean_>,
  @ocaml.doc("<p>Provides the <code>OptionState</code> for the domain.
    </p>")
  @as("State")
  state: optionState,
  @ocaml.doc("<p>The latest version of the entity.</p>") @as("UpdateVersion")
  updateVersion: option<uintValue>,
  @ocaml.doc("<p>The timestamp of the last time the entity was updated.</p>") @as("UpdateDate")
  updateDate: updateTimestamp,
  @ocaml.doc("<p>The timestamp of when the entity was created.</p>") @as("CreationDate")
  creationDate: updateTimestamp,
}
@ocaml.doc("<p>The node-to-node encryption options.</p>")
type nodeToNodeEncryptionOptions = {
  @ocaml.doc("<p>True to enable node-to-node encryption.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>Credentials for the master user: username and password, ARN, or both.</p>")
type masterUserOptions = {
  @ocaml.doc(
    "<p>The master user's password, which is stored in the Amazon OpenSearch Service domain's internal database.</p>"
  )
  @as("MasterUserPassword")
  masterUserPassword: option<password>,
  @ocaml.doc(
    "<p>The master user's username, which is stored in the Amazon OpenSearch Service domain's internal database.</p>"
  )
  @as("MasterUserName")
  masterUserName: option<username>,
  @ocaml.doc("<p>ARN for the master user (if IAM is enabled).</p>") @as("MasterUserARN")
  masterUserARN: option<arn>,
}
@ocaml.doc("<p>Log Publishing option that is set for a given domain.
      <br></br>Attributes and their details:
      <ul>
        <li>CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to publish logs to.</li>
        <li>Enabled: Whether the log publishing for a given log type is enabled or not.</li>
      </ul>
    </p>")
type logPublishingOption = {
  @ocaml.doc("<p>Whether the given log publishing option is enabled or not.</p>") @as("Enabled")
  enabled: option<boolean_>,
  @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<cloudWatchLogsLogGroupArn>,
}
type limitValueList = array<limitValue>
type issues = array<issue>
type instanceRoleList = array<instanceRole>
@ocaml.doc("<p>
      InstanceCountLimits represents the limits on the number of instances that can be created in Amazon OpenSearch Service for
      a given InstanceType.
    </p>")
type instanceCountLimits = {
  @as("MaximumInstanceCount") maximumInstanceCount: option<maximumInstanceCount>,
  @as("MinimumInstanceCount") minimumInstanceCount: option<minimumInstanceCount>,
}
@ocaml.doc("<p>The connection status of an inbound cross-cluster connection.</p>")
type inboundConnectionStatus = {
  @ocaml.doc("<p>Verbose information for the inbound connection status.</p>") @as("Message")
  message: option<connectionStatusMessage>,
  @ocaml.doc("<p>The state code for the inbound connection. Can be one of the following:</p>
    <ul>
      <li>PENDING_ACCEPTANCE: Inbound connection is not yet accepted by the remote domain owner.</li>
      <li>APPROVED: Inbound connection is pending acceptance by the remote domain owner.</li>
      <li>PROVISIONING: Inbound connection provisioning is in progress.</li>
      <li>ACTIVE: Inbound connection is active and ready to use.</li>
      <li>REJECTING: Inbound connection rejection is in process.</li>
      <li>REJECTED: Inbound connection is rejected.</li>
      <li>DELETING: Inbound connection deletion is in progress.</li>
      <li>DELETED: Inbound connection is deleted and can no longer be used.</li>
    </ul>")
  @as("StatusCode")
  statusCode: option<inboundConnectionStatusCode>,
}
type errorDetails = {
  @as("ErrorMessage") errorMessage: option<errorMessage>,
  @as("ErrorType") errorType: option<errorType>,
}
type endpointsMap = Js.Dict.t<serviceUrl>
@ocaml.doc("<p>Specifies encryption at rest options.</p>")
type encryptionAtRestOptions = {
  @ocaml.doc("<p>The KMS key ID for encryption at rest options.</p>") @as("KmsKeyId")
  kmsKeyId: option<kmsKeyId>,
  @ocaml.doc("<p>The option to enable encryption at rest.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>Options to enable, disable, and specify the properties of EBS storage volumes.</p>")
type ebsoptions = {
  @ocaml.doc("<p>The IOPD for a Provisioned IOPS EBS volume (SSD).</p>") @as("Iops")
  iops: option<integerClass>,
  @ocaml.doc("<p>Integer to specify the size of an EBS volume.</p>") @as("VolumeSize")
  volumeSize: option<integerClass>,
  @ocaml.doc("<p>The volume type for EBS-based storage.</p>") @as("VolumeType")
  volumeType: option<volumeType>,
  @ocaml.doc("<p>Whether EBS-based storage is enabled.</p>") @as("EBSEnabled")
  ebsenabled: option<boolean_>,
}
@ocaml.doc("<p>The maintenance schedule duration: duration value and duration unit. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
type duration = {
  @ocaml.doc("<p>The unit of a maintenance schedule duration. Valid value is HOURS. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("Unit")
  unit_: option<timeUnit>,
  @ocaml.doc("<p>Integer to specify the value of a maintenance schedule duration. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("Value")
  value: option<durationValue>,
}
type dryRunResults = {
  @ocaml.doc("<p>Contains an optional message associated with the DryRunResults.</p>")
  @as("Message")
  message: option<message>,
  @ocaml.doc("<p>
      Specifies the way in which Amazon OpenSearch Service applies the update.
      Possible responses are <code>Blue/Green</code> (the update requires a blue/green deployment), <code>DynamicUpdate</code> (no blue/green required), <code>Undetermined</code> (the domain is undergoing an update and can't predict the deployment type; try again after the update is complete), and <code>None</code> (the request doesn't include any configuration changes).
    </p>")
  @as("DeploymentType")
  deploymentType: option<deploymentType>,
}
@ocaml.doc("<p>A list of domain names.</p>") type domainNameList = array<domainName>
type domainInfo = {
  @ocaml.doc("<p> Specifies the <code>EngineType</code> of the domain.</p>") @as("EngineType")
  engineType: option<engineType>,
  @ocaml.doc("<p>The <code>DomainName</code>.
    </p>")
  @as("DomainName")
  domainName: option<domainName>,
}
@ocaml.doc("<p>Options to configure the endpoint for the domain.</p>")
type domainEndpointOptions = {
  @ocaml.doc("<p>The ACM certificate ARN for your custom endpoint.</p>")
  @as("CustomEndpointCertificateArn")
  customEndpointCertificateArn: option<arn>,
  @ocaml.doc("<p>The fully qualified domain for your custom endpoint.</p>") @as("CustomEndpoint")
  customEndpoint: option<domainNameFqdn>,
  @ocaml.doc("<p>Whether to enable a custom endpoint for the domain.</p>")
  @as("CustomEndpointEnabled")
  customEndpointEnabled: option<boolean_>,
  @ocaml.doc("<p>Specify the TLS security policy to apply to the HTTPS endpoint of the domain.
      <br></br>
      Can be one of the following values:
      <ul>
        <li>
          <b>Policy-Min-TLS-1-0-2019-07:</b>
          TLS security policy which supports TLSv1.0 and higher.
        </li>
        <li>
          <b>Policy-Min-TLS-1-2-2019-07:</b>
          TLS security policy which supports only TLSv1.2
        </li>
      </ul>
    </p>")
  @as("TLSSecurityPolicy")
  tlssecurityPolicy: option<tlssecurityPolicy>,
  @ocaml.doc("<p>Whether only HTTPS endpoint should be enabled for the domain.</p>")
  @as("EnforceHTTPS")
  enforceHTTPS: option<boolean_>,
}
type describePackagesFilterValues = array<describePackagesFilterValue>
@ocaml.doc("<p>Specifies the configuration for cold storage options such as enabled</p>")
type coldStorageOptions = {
  @ocaml.doc("<p>Enable cold storage option. Accepted values true or false</p>") @as("Enabled")
  enabled: boolean_,
}
@ocaml.doc("<p>Options to specify the Cognito user and identity pools for OpenSearch Dashboards authentication. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html\" target=\"_blank\">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.
    </p>")
type cognitoOptions = {
  @ocaml.doc(
    "<p>The role ARN that provides OpenSearch permissions for accessing Cognito resources.</p>"
  )
  @as("RoleArn")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The Cognito identity pool ID for OpenSearch Dashboards authentication.</p>")
  @as("IdentityPoolId")
  identityPoolId: option<identityPoolId>,
  @ocaml.doc("<p>The Cognito user pool ID for OpenSearch Dashboards authentication.</p>")
  @as("UserPoolId")
  userPoolId: option<userPoolId>,
  @ocaml.doc("<p>The option to enable Cognito for OpenSearch Dashboards authentication.</p>")
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
@ocaml.doc("<p>Provides the current Auto-Tune status for the domain.</p>")
type autoTuneStatus = {
  @ocaml.doc("<p>Indicates whether the domain is being deleted.</p>") @as("PendingDeletion")
  pendingDeletion: option<boolean_>,
  @ocaml.doc("<p>The error message while enabling or disabling Auto-Tune.</p>") @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The <code>AutoTuneState</code> for the domain.
    </p>")
  @as("State")
  state: autoTuneState,
  @ocaml.doc("<p>The latest version of the Auto-Tune options.</p>") @as("UpdateVersion")
  updateVersion: option<uintValue>,
  @ocaml.doc("<p>The timestamp of when the Auto-Tune options were last updated.</p>")
  @as("UpdateDate")
  updateDate: updateTimestamp,
  @ocaml.doc("<p>The timestamp of the Auto-Tune options creation date.</p>") @as("CreationDate")
  creationDate: updateTimestamp,
}
@ocaml.doc("<p>The Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.
    </p>")
type autoTuneOptionsOutput = {
  @ocaml.doc("<p>The error message while enabling or disabling Auto-Tune.</p>") @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The <code>AutoTuneState</code> for the domain.
    </p>")
  @as("State")
  state: option<autoTuneState>,
}
@ocaml.doc("<p>Exposes select native OpenSearch configuration values from <code>opensearch.yml</code>. Currently, the
      following advanced options are available:
    </p>
    <ul>
      <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring
        access to individual sub-resources. By default, the value is <code>true</code>.
        See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\" target=\"_blank\">Advanced cluster parameters
        </a> for more information.
      </li>
      <li>Option to specify the percentage of heap space allocated to field data. By default, this setting is
        unbounded.
      </li>
    </ul>
    <p>For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\">
      Advanced cluster parameters</a>.
    </p>")
type advancedOptions = Js.Dict.t<string_>
type awsdomainInformation = {
  @as("Region") region: option<region>,
  @as("DomainName") domainName: domainName,
  @as("OwnerId") ownerId: option<ownerId>,
}
@ocaml.doc(
  "<p>The status of the OpenSearch version options for the specified OpenSearch domain.</p>"
)
type versionStatus = {
  @ocaml.doc(
    "<p>The status of the OpenSearch version options for the specified OpenSearch domain.</p>"
  )
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The OpenSearch version for the specified OpenSearch domain.</p>") @as("Options")
  options: versionString,
}
@ocaml.doc("<p>Options to specify the subnets and security groups for the VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\" target=\"_blank\">
      Launching your Amazon OpenSearch Service domains using a VPC</a>.
    </p>")
type vpcoptions = {
  @ocaml.doc("<p>The security groups for the VPC endpoint.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<stringList>,
  @ocaml.doc("<p>The subnets for the VPC endpoint.</p>") @as("SubnetIds")
  subnetIds: option<stringList>,
}
@ocaml.doc("<p>Options to specify the subnets and security groups for the VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\" target=\"_blank\">
      Launching your Amazon OpenSearch Service domains using a VPC</a>.
    </p>")
type vpcderivedInfo = {
  @ocaml.doc("<p>The security groups for the VPC endpoint.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<stringList>,
  @ocaml.doc(
    "<p>The Availability Zones for the domain. Exists only if the domain was created with <code>VPCOptions</code>.</p>"
  )
  @as("AvailabilityZones")
  availabilityZones: option<stringList>,
  @ocaml.doc("<p>The subnets for the VPC endpoint.</p>") @as("SubnetIds")
  subnetIds: option<stringList>,
  @ocaml.doc(
    "<p>The VPC ID for the domain. Exists only if the domain was created with <code>VPCOptions</code>.</p>"
  )
  @as("VPCId")
  vpcid: option<string_>,
}
@ocaml.doc("<p>Represents a single step of the upgrade or upgrade eligibility check workflow.</p>")
type upgradeStepItem = {
  @ocaml.doc(
    "<p>The floating point value representing the progress percentage of a particular step.</p>"
  )
  @as("ProgressPercent")
  progressPercent: option<double>,
  @ocaml.doc(
    "<p>A list of strings containing detailed information about the errors encountered in a particular step.</p>"
  )
  @as("Issues")
  issues: option<issues>,
  @ocaml.doc("<p>
      The current status of the upgrade. The status can take one of the following values:
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
      One of three steps an upgrade or upgrade eligibility check goes through:
      <ul>
        <li>PreUpgradeCheck</li>
        <li>Snapshot</li>
        <li>Upgrade</li>
      </ul>
    </p>")
  @as("UpgradeStep")
  upgradeStep: option<upgradeStep>,
}
@ocaml.doc("<p>A list of
      <code>Tag</code>.
    </p>")
type tagList_ = array<tag>
@ocaml.doc("<p>Limits that are applicable for the given storage type.
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
      Name of storage limits that are applicable for the given storage type.
      If
      <code>
        <a>StorageType</a>
      </code>
      is \"ebs\", the following storage options are applicable:
      <ol>
        <li>MinimumVolumeSize</li>
        Minimum amount of volume size that is applicable for the given storage type. Can be empty if not applicable.
        <li>MaximumVolumeSize</li>
        Maximum amount of volume size that is applicable for the given storage type. Can be empty if not applicable.
        <li>MaximumIops</li>
        Maximum amount of Iops that is applicable for given the storage type. Can be empty if not applicable.
        <li>MinimumIops</li>
        Minimum amount of Iops that is applicable for given the storage type. Can be empty if not applicable.
      </ol>
    </p>")
  @as("LimitName")
  limitName: option<limitName>,
}
@ocaml.doc("<p>Status of a daily automated snapshot.</p>")
type snapshotOptionsStatus = {
  @ocaml.doc("<p>The status of a daily automated snapshot.</p>") @as("Status") status: optionStatus,
  @ocaml.doc("<p>The daily snapshot options specified for the domain.</p>") @as("Options")
  options: snapshotOptions,
}
@ocaml.doc("<p>Describes the SAML application configured for the domain.</p>")
type samloptionsOutput = {
  @ocaml.doc("<p>The duration, in minutes, after which a user session becomes inactive.</p>")
  @as("SessionTimeoutMinutes")
  sessionTimeoutMinutes: option<integerClass>,
  @ocaml.doc("<p>The key used for matching the SAML roles attribute.</p>") @as("RolesKey")
  rolesKey: option<string_>,
  @ocaml.doc("<p>The key used for matching the SAML subject attribute.</p>") @as("SubjectKey")
  subjectKey: option<string_>,
  @ocaml.doc("<p>Describes the SAML identity provider's information.</p>") @as("Idp")
  idp: option<samlidp>,
  @ocaml.doc("<p>True if SAML is enabled.</p>") @as("Enabled") enabled: option<boolean_>,
}
@ocaml.doc("<p>The SAML application configuration for the domain.</p>")
type samloptionsInput = {
  @ocaml.doc("<p>The duration, in minutes, after which a user session becomes inactive. Acceptable values are between 1 and 1440,
      and the default value is 60.
    </p>")
  @as("SessionTimeoutMinutes")
  sessionTimeoutMinutes: option<integerClass>,
  @ocaml.doc("<p>Element of the SAML assertion to use for backend roles. Default is roles.</p>")
  @as("RolesKey")
  rolesKey: option<string_>,
  @ocaml.doc("<p>Element of the SAML assertion to use for username. Default is NameID.</p>")
  @as("SubjectKey")
  subjectKey: option<string_>,
  @ocaml.doc("<p>The backend role that the SAML master user is mapped to.</p>")
  @as("MasterBackendRole")
  masterBackendRole: option<backendRole>,
  @ocaml.doc(
    "<p>The SAML master username, which is stored in the Amazon OpenSearch Service domain's internal database.</p>"
  )
  @as("MasterUserName")
  masterUserName: option<username>,
  @ocaml.doc("<p>The SAML Identity Provider's information.</p>") @as("Idp") idp: option<samlidp>,
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
  @ocaml.doc("<p>The timestamp of when the package was created.</p>") @as("CreatedAt")
  createdAt: option<createdAt>,
  @ocaml.doc(
    "<p>Current state of the package. Values are COPYING, COPY_FAILED, AVAILABLE, DELETING, and DELETE_FAILED.</p>"
  )
  @as("PackageStatus")
  packageStatus: option<packageStatus>,
  @ocaml.doc("<p>User-specified description of the package.</p>") @as("PackageDescription")
  packageDescription: option<packageDescription>,
  @ocaml.doc("<p>Currently supports only TXT-DICTIONARY.</p>") @as("PackageType")
  packageType: option<packageType>,
  @ocaml.doc("<p>User-specified name of the package.</p>") @as("PackageName")
  packageName: option<packageName>,
  @ocaml.doc("<p>Internal ID of the package.</p>") @as("PackageID") packageID: option<packageID>,
}
@ocaml.doc("<p>Status of the node-to-node encryption options for the specified domain.</p>")
type nodeToNodeEncryptionOptionsStatus = {
  @ocaml.doc("<p>The status of the node-to-node encryption options for the specified domain.</p>")
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The node-to-node encryption options for the specified domain.</p>") @as("Options")
  options: nodeToNodeEncryptionOptions,
}
type logPublishingOptions = Js.Dict.t<logPublishingOption>
type instanceTypeDetails = {
  @as("InstanceRole") instanceRole: option<instanceRoleList>,
  @as("WarmEnabled") warmEnabled: option<boolean_>,
  @as("AdvancedSecurityEnabled") advancedSecurityEnabled: option<boolean_>,
  @as("AppLogsEnabled") appLogsEnabled: option<boolean_>,
  @as("CognitoEnabled") cognitoEnabled: option<boolean_>,
  @as("EncryptionEnabled") encryptionEnabled: option<boolean_>,
  @as("InstanceType") instanceType: option<openSearchPartitionInstanceType>,
}
@ocaml.doc("<p>InstanceLimits represents the list of instance-related attributes that are available for a given InstanceType.
    </p>")
type instanceLimits = {@as("InstanceCountLimits") instanceCountLimits: option<instanceCountLimits>}
@ocaml.doc("<p>
      A filter used to limit results when describing inbound or outbound cross-cluster connections.
      Multiple values can be specified per filter.
      A cross-cluster connection must match at least one of the specified values for it to be
      returned from an operation.
    </p>")
type filter = {
  @ocaml.doc("<p>
      Contains one or more values for the filter.
    </p>")
  @as("Values")
  values: option<valueStringList>,
  @ocaml.doc("<p>
      The name of the filter.
    </p>")
  @as("Name")
  name: option<nonEmptyString>,
}
@ocaml.doc("<p>Status of the encryption At Rest options for the specified domain.</p>")
type encryptionAtRestOptionsStatus = {
  @ocaml.doc("<p>The status of the Encryption At Rest options for the specified domain.</p>")
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The Encryption At Rest options for the specified domain.</p>") @as("Options")
  options: encryptionAtRestOptions,
}
@ocaml.doc("<p>Status of the EBS options for the specified domain.</p>")
type ebsoptionsStatus = {
  @ocaml.doc("<p>The status of the EBS options for the specified domain.</p>") @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The EBS options for the specified domain.</p>") @as("Options") options: ebsoptions,
}
@ocaml.doc("<p>Information on a package associated with a domain.</p>")
type domainPackageDetails = {
  @ocaml.doc("<p>Additional information if the package is in an error state. Null otherwise.</p>")
  @as("ErrorDetails")
  errorDetails: option<errorDetails>,
  @ocaml.doc(
    "<p>The relative path on Amazon OpenSearch Service nodes, which can be used as synonym_path when the package is a synonym file.</p>"
  )
  @as("ReferencePath")
  referencePath: option<referencePath>,
  @as("PackageVersion") packageVersion: option<packageVersion>,
  @ocaml.doc(
    "<p>State of the association. Values are ASSOCIATING, ASSOCIATION_FAILED, ACTIVE, DISSOCIATING, and DISSOCIATION_FAILED.</p>"
  )
  @as("DomainPackageStatus")
  domainPackageStatus: option<domainPackageStatus>,
  @ocaml.doc("<p>The name of the domain you've associated a package with.</p>") @as("DomainName")
  domainName: option<domainName>,
  @ocaml.doc("<p>The timestamp of the most recent update to the package association status.</p>")
  @as("LastUpdated")
  lastUpdated: option<lastUpdated>,
  @ocaml.doc("<p>Currently supports only TXT-DICTIONARY.</p>") @as("PackageType")
  packageType: option<packageType>,
  @ocaml.doc("<p>User-specified name of the package.</p>") @as("PackageName")
  packageName: option<packageName>,
  @ocaml.doc("<p>The internal ID of the package.</p>") @as("PackageID")
  packageID: option<packageID>,
}
type domainInformationContainer = {
  @as("AWSDomainInformation") awsdomainInformation: option<awsdomainInformation>,
}
@ocaml.doc("<p>Contains the list of domain information.</p>")
type domainInfoList = array<domainInfo>
@ocaml.doc("<p>The configured endpoint options for the domain and their current status.</p>")
type domainEndpointOptionsStatus = {
  @ocaml.doc("<p>The status of the endpoint options for the domain. See <code>OptionStatus</code> for the status
      information that's included.
    </p>")
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>Options to configure the endpoint for the domain.</p>") @as("Options")
  options: domainEndpointOptions,
}
@ocaml.doc("<p>A filter to apply to the <code>DescribePackage</code> response.
    </p>")
type describePackagesFilter = {
  @ocaml.doc("<p>A list of values for the specified field.</p>") @as("Value")
  value: option<describePackagesFilterValues>,
  @ocaml.doc("<p>Any field from <code>PackageDetails</code>.
    </p>")
  @as("Name")
  name: option<describePackagesFilterName>,
}
@ocaml.doc("<p>
      A map from an
      <code>
        <a>EngineVersion</a>
      </code>
      to a list of compatible
      <code>
        <a>EngineVersion</a>
      </code>
      s to which the domain can be upgraded.
    </p>")
type compatibleVersionsMap = {
  @as("TargetVersions") targetVersions: option<versionList>,
  @ocaml.doc("<p>The current version of OpenSearch a domain is on.</p>") @as("SourceVersion")
  sourceVersion: option<versionString>,
}
@ocaml.doc("<p>The status of the Cognito options for the specified domain.</p>")
type cognitoOptionsStatus = {
  @ocaml.doc("<p>The status of the Cognito options for the specified domain.</p>") @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>Cognito options for the specified domain.</p>") @as("Options")
  options: cognitoOptions,
}
@ocaml.doc(
  "<p>The configuration for the domain cluster, such as the type and number of instances.</p>"
)
type clusterConfig = {
  @ocaml.doc("<p>Specifies the <code>ColdStorageOptions</code> config for a Domain</p>")
  @as("ColdStorageOptions")
  coldStorageOptions: option<coldStorageOptions>,
  @ocaml.doc("<p>The number of UltraWarm nodes in the cluster.</p>") @as("WarmCount")
  warmCount: option<integerClass>,
  @ocaml.doc("<p>The instance type for the OpenSearch cluster's warm nodes.</p>") @as("WarmType")
  warmType: option<openSearchWarmPartitionInstanceType>,
  @ocaml.doc("<p>True to enable UltraWarm storage.</p>") @as("WarmEnabled")
  warmEnabled: option<boolean_>,
  @ocaml.doc(
    "<p>Total number of dedicated master nodes, active and on standby, for the cluster.</p>"
  )
  @as("DedicatedMasterCount")
  dedicatedMasterCount: option<integerClass>,
  @ocaml.doc("<p>The instance type for a dedicated master node.</p>") @as("DedicatedMasterType")
  dedicatedMasterType: option<openSearchPartitionInstanceType>,
  @ocaml.doc("<p>The zone awareness configuration for a domain when zone awareness is enabled.</p>")
  @as("ZoneAwarenessConfig")
  zoneAwarenessConfig: option<zoneAwarenessConfig>,
  @ocaml.doc("<p>A boolean value to indicate whether zone awareness is enabled. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-multiaz.html\" target=\"_blank\">Configuring a multi-AZ domain in Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("ZoneAwarenessEnabled")
  zoneAwarenessEnabled: option<boolean_>,
  @ocaml.doc("<p>A boolean value to indicate whether a dedicated master node is enabled. See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-dedicatedmasternodes\" target=\"_blank\">Dedicated master nodes in Amazon OpenSearch Service 
    </a> for more information.
    </p>")
  @as("DedicatedMasterEnabled")
  dedicatedMasterEnabled: option<boolean_>,
  @ocaml.doc("<p>The number of instances in the specified domain cluster.</p>") @as("InstanceCount")
  instanceCount: option<integerClass>,
  @ocaml.doc("<p>The instance type for an OpenSearch cluster. UltraWarm instance types are not supported for data instances.
    </p>")
  @as("InstanceType")
  instanceType: option<openSearchPartitionInstanceType>,
}
@ocaml.doc("<p>The list of progress stages of a specific domain configuration change.</p>")
type changeProgressStageList = array<changeProgressStage>
@ocaml.doc("<p>Specifies the Auto-Tune maintenance schedule. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
type autoTuneMaintenanceSchedule = {
  @ocaml.doc("<p>A cron expression for a recurring maintenance schedule. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("CronExpressionForRecurrence")
  cronExpressionForRecurrence: option<string_>,
  @ocaml.doc("<p>Specifies maintenance schedule duration: duration value and duration unit. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("Duration")
  duration: option<duration>,
  @ocaml.doc("<p>The timestamp at which the Auto-Tune maintenance schedule starts.</p>")
  @as("StartAt")
  startAt: option<startAt>,
}
@ocaml.doc("<p>Specifies details about the Auto-Tune action. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
type autoTuneDetails = {
  @as("ScheduledAutoTuneDetails") scheduledAutoTuneDetails: option<scheduledAutoTuneDetails>,
}
@ocaml.doc("<p>Status of the advanced options for the specified domain. Currently, the following advanced options
      are available:
    </p>
    <ul>
      <li>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring
        access to individual sub-resources. By default, the value is <code>true</code>.
        See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\" target=\"_blank\">Advanced cluster parameters
        </a> for more information.
      </li>
      <li>Option to specify the percentage of heap space allocated to field data. By default, this setting is
        unbounded.
      </li>
    </ul>
    <p>For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\">
      Advanced cluster parameters</a>.
    </p>")
type advancedOptionsStatus = {
  @ocaml.doc("<p>The <code>OptionStatus</code> for advanced options for the specified domain.
    </p>")
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The status of advanced options for the specified domain.</p>") @as("Options")
  options: advancedOptions,
}
@ocaml.doc("<p>
      List of limits that are specific to a given InstanceType and for each of its
      <code>
        <a>InstanceRole</a>
      </code>
      .
    </p>")
type additionalLimit = {
  @ocaml.doc("<p>
      Value for a given
      <code>
        <a>AdditionalLimit$LimitName</a>
      </code>
      .
    </p>")
  @as("LimitValues")
  limitValues: option<limitValueList>,
  @ocaml.doc("<p>
      Additional limit is specific to a given InstanceType and for each of its
      <code>
        <a>InstanceRole</a>
      </code>
      etc.
      <br></br>
      Attributes and their details:
      <br></br>
      <ul>
        <li>MaximumNumberOfDataNodesSupported</li>
        This attribute is present on the master node only to specify how
        much data nodes up to which given
        <code>
          <a>ESPartitionInstanceType</a>
        </code>
        can support as master node.
        <li>MaximumNumberOfDataNodesWithoutMasterNode</li>
        This attribute is present on data node only to specify how much
        data nodes of given
        <code>
          <a>ESPartitionInstanceType</a>
        </code>
        up to which you don't need any master nodes to govern them.
      </ul>
    </p>")
  @as("LimitName")
  limitName: option<limitName>,
}
@ocaml.doc("<p>The configured access rules for the domain's document and search endpoints, and the current status of those
      rules.
    </p>")
type accessPoliciesStatus = {
  @ocaml.doc("<p>The status of the access policy for the domain. See <code>OptionStatus</code> for the status
      information that's included.
    </p>")
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The access policy configured for the domain. Access policies can be resource-based, IP-based, or
      IAM-based. See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-access-policies\" target=\"_blank\">
        Configuring access policies</a>for more information.
    </p>")
  @as("Options")
  options: policyDocument,
}
@ocaml.doc("<p>Status of the VPC options for the specified domain.</p>")
type vpcderivedInfoStatus = {
  @ocaml.doc("<p>The status of the VPC options for the specified domain.</p>") @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The VPC options for the specified domain.</p>") @as("Options")
  options: vpcderivedInfo,
}
type upgradeStepsList = array<upgradeStepItem>
type storageTypeLimitList = array<storageTypeLimit>
@ocaml.doc("<p>Details of a reserved OpenSearch instance offering.</p>")
type reservedInstanceOffering = {
  @ocaml.doc(
    "<p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>"
  )
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>Payment option for the reserved OpenSearch instance offering</p>")
  @as("PaymentOption")
  paymentOption: option<reservedInstancePaymentOption>,
  @ocaml.doc("<p>The currency code for the reserved OpenSearch instance offering.</p>")
  @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc(
    "<p>The rate you are charged for each hour the domain that is using the offering is running.</p>"
  )
  @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc(
    "<p>The upfront fixed charge you will pay to purchase the specific reserved OpenSearch instance offering.</p>"
  )
  @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc(
    "<p>The duration, in seconds, for which the offering will reserve the OpenSearch instance.</p>"
  )
  @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The OpenSearch instance type offered by the reserved instance offering.</p>")
  @as("InstanceType")
  instanceType: option<openSearchPartitionInstanceType>,
  @ocaml.doc("<p>The OpenSearch reserved instance offering identifier.</p>")
  @as("ReservedInstanceOfferingId")
  reservedInstanceOfferingId: option<guid>,
}
@ocaml.doc("<p>Details of a reserved OpenSearch instance.</p>")
type reservedInstance = {
  @ocaml.doc(
    "<p>The charge to your account regardless of whether you are creating any domains using the instance offering.</p>"
  )
  @as("RecurringCharges")
  recurringCharges: option<recurringChargeList>,
  @ocaml.doc("<p>The payment option as defined in the reserved OpenSearch instance offering.</p>")
  @as("PaymentOption")
  paymentOption: option<reservedInstancePaymentOption>,
  @ocaml.doc("<p>The state of the reserved OpenSearch instance.</p>") @as("State")
  state: option<string_>,
  @ocaml.doc("<p>The number of OpenSearch instances that have been reserved.</p>")
  @as("InstanceCount")
  instanceCount: option<integer_>,
  @ocaml.doc("<p>The currency code for the reserved OpenSearch instance offering.</p>")
  @as("CurrencyCode")
  currencyCode: option<string_>,
  @ocaml.doc(
    "<p>The rate you are charged for each hour for the domain that is using this reserved instance.</p>"
  )
  @as("UsagePrice")
  usagePrice: option<double>,
  @ocaml.doc(
    "<p>The upfront fixed charge you will paid to purchase the specific reserved OpenSearch instance offering.</p>"
  )
  @as("FixedPrice")
  fixedPrice: option<double>,
  @ocaml.doc("<p>The duration, in seconds, for which the OpenSearch instance is reserved.</p>")
  @as("Duration")
  duration: option<integer_>,
  @ocaml.doc("<p>The time the reservation started.</p>") @as("StartTime")
  startTime: option<updateTimestamp>,
  @ocaml.doc("<p>The OpenSearch instance type offered by the reserved instance offering.</p>")
  @as("InstanceType")
  instanceType: option<openSearchPartitionInstanceType>,
  @ocaml.doc("<p>The offering identifier.</p>") @as("ReservedInstanceOfferingId")
  reservedInstanceOfferingId: option<string_>,
  @as("BillingSubscriptionId") billingSubscriptionId: option<long>,
  @ocaml.doc("<p>The unique identifier for the reservation.</p>") @as("ReservedInstanceId")
  reservedInstanceId: option<guid>,
  @ocaml.doc("<p>The customer-specified identifier to track this reservation.</p>")
  @as("ReservationName")
  reservationName: option<reservationToken>,
}
type packageDetailsList = array<packageDetails>
@ocaml.doc("<p>Specifies details about an outbound connection.</p>")
type outboundConnection = {
  @ocaml.doc("<p>The
      <code>
        <a>OutboundConnectionStatus</a>
      </code>
      for the outbound connection.
    </p>")
  @as("ConnectionStatus")
  connectionStatus: option<outboundConnectionStatus>,
  @ocaml.doc("<p>The connection alias for the outbound cross-cluster connection.</p>")
  @as("ConnectionAlias")
  connectionAlias: option<connectionAlias>,
  @ocaml.doc("<p>The connection ID for the outbound cross-cluster connection.</p>")
  @as("ConnectionId")
  connectionId: option<connectionId>,
  @ocaml.doc("<p>The
      <code>
        <a>DomainInformation</a>
      </code>
      for the remote OpenSearch domain.
    </p>")
  @as("RemoteDomainInfo")
  remoteDomainInfo: option<domainInformationContainer>,
  @ocaml.doc("<p>The
      <code>
        <a>DomainInformation</a>
      </code>
      for the local OpenSearch domain.
    </p>")
  @as("LocalDomainInfo")
  localDomainInfo: option<domainInformationContainer>,
}
@ocaml.doc("<p>The configured log publishing options for the domain and their current status.</p>")
type logPublishingOptionsStatus = {
  @ocaml.doc("<p>The status of the log publishing options for the domain. See <code>OptionStatus</code> for the
      status information that's included.
    </p>")
  @as("Status")
  status: option<optionStatus>,
  @ocaml.doc("<p>The log publishing options configured for the domain.</p>") @as("Options")
  options: option<logPublishingOptions>,
}
type instanceTypeDetailsList = array<instanceTypeDetails>
@ocaml.doc("<p>Details of an inbound connection.</p>")
type inboundConnection = {
  @ocaml.doc("<p>The
      <code>
        <a>InboundConnectionStatus</a>
      </code>
      for the outbound connection.
    </p>")
  @as("ConnectionStatus")
  connectionStatus: option<inboundConnectionStatus>,
  @ocaml.doc("<p>The connection ID for the inbound cross-cluster connection.</p>")
  @as("ConnectionId")
  connectionId: option<connectionId>,
  @ocaml.doc("<p>The
      <code>
        <a>AWSDomainInformation</a>
      </code>
      for the remote OpenSearch domain.
    </p>")
  @as("RemoteDomainInfo")
  remoteDomainInfo: option<domainInformationContainer>,
  @ocaml.doc("<p>The
      <code>
        <a>AWSDomainInformation</a>
      </code>
      for the local OpenSearch domain.
    </p>")
  @as("LocalDomainInfo")
  localDomainInfo: option<domainInformationContainer>,
}
type filterList = array<filter>
type domainPackageDetailsList = array<domainPackageDetails>
@ocaml.doc("<p>A list of <code>DescribePackagesFilter</code> to filter the packages included in a <code>DescribePackages</code> response.
    </p>")
type describePackagesFilterList = array<describePackagesFilter>
type compatibleVersionsList = array<compatibleVersionsMap>
@ocaml.doc("<p>The configuration status for the specified domain.</p>")
type clusterConfigStatus = {
  @ocaml.doc("<p>The cluster configuration status for the specified domain.</p>") @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>The cluster configuration for the specified domain.</p>") @as("Options")
  options: clusterConfig,
}
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
@ocaml.doc("<p>Specifies the Auto-Tune type and Auto-Tune action details.</p>")
type autoTune = {
  @ocaml.doc("<p>Specifies details about the Auto-Tune action. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("AutoTuneDetails")
  autoTuneDetails: option<autoTuneDetails>,
  @ocaml.doc("<p>Specifies the Auto-Tune type. Valid value is SCHEDULED_ACTION.</p>")
  @as("AutoTuneType")
  autoTuneType: option<autoTuneType>,
}
@ocaml.doc("<p>The advanced security configuration: whether advanced security is enabled, whether the internal
      database option is enabled, master username and password (if internal database is enabled), and master user ARN
      (if IAM is enabled).
    </p>")
type advancedSecurityOptionsInput = {
  @ocaml.doc(
    "<p>True if Anonymous auth is enabled. Anonymous auth can be enabled only when AdvancedSecurity is enabled on existing domains.</p>"
  )
  @as("AnonymousAuthEnabled")
  anonymousAuthEnabled: option<boolean_>,
  @ocaml.doc("<p>The SAML application configuration for the domain.</p>") @as("SAMLOptions")
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
@ocaml.doc("<p>The advanced security configuration: whether advanced security is enabled, whether the internal
      database option is enabled.
    </p>")
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
@ocaml.doc("<p>History of the last 10 upgrades and upgrade eligibility checks.</p>")
type upgradeHistory = {
  @ocaml.doc("<p>
      A list of
      <code>
        <a>UpgradeStepItem</a>
      </code>
      s representing information about each step performed as part of a specific upgrade or upgrade eligibility check.
    </p>")
  @as("StepsList")
  stepsList: option<upgradeStepsList>,
  @ocaml.doc("<p>
      The current status of the upgrade. The status can take one of the following values:
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
    "<p>UTC timestamp at which the upgrade API call was made in \"yyyy-MM-ddTHH:mm:ssZ\" format.</p>"
  )
  @as("StartTimestamp")
  startTimestamp: option<startTimestamp>,
  @ocaml.doc("<p>A string that briefly describes the upgrade.</p>") @as("UpgradeName")
  upgradeName: option<upgradeName>,
}
@ocaml.doc("<p>StorageTypes represents the list of storage-related types and their attributes
      that are available for a given InstanceType.
    </p>")
type storageType = {
  @ocaml.doc("<p>Limits that are applicable for the given storage type.
    </p>")
  @as("StorageTypeLimits")
  storageTypeLimits: option<storageTypeLimitList>,
  @as("StorageSubTypeName") storageSubTypeName: option<storageSubTypeName>,
  @as("StorageTypeName") storageTypeName: option<storageTypeName>,
}
type reservedInstanceOfferingList = array<reservedInstanceOffering>
type reservedInstanceList = array<reservedInstance>
type outboundConnections = array<outboundConnection>
type inboundConnections = array<inboundConnection>
@ocaml.doc("<p>The current status of a domain.</p>")
type domainStatus = {
  @ocaml.doc("<p>Specifies change details of the domain configuration change.</p>")
  @as("ChangeProgressDetails")
  changeProgressDetails: option<changeProgressDetails>,
  @ocaml.doc("<p>The current status of the domain's Auto-Tune options.</p>") @as("AutoTuneOptions")
  autoTuneOptions: option<autoTuneOptionsOutput>,
  @ocaml.doc("<p>The current status of the domain's advanced security options.</p>")
  @as("AdvancedSecurityOptions")
  advancedSecurityOptions: option<advancedSecurityOptions>,
  @ocaml.doc("<p>The current status of the domain's endpoint options.</p>")
  @as("DomainEndpointOptions")
  domainEndpointOptions: option<domainEndpointOptions>,
  @ocaml.doc("<p>The current status of the domain's service software.</p>")
  @as("ServiceSoftwareOptions")
  serviceSoftwareOptions: option<serviceSoftwareOptions>,
  @ocaml.doc("<p>Log publishing options for the given domain.</p>") @as("LogPublishingOptions")
  logPublishingOptions: option<logPublishingOptions>,
  @ocaml.doc("<p>The status of the
      <code>AdvancedOptions</code>.
    </p>")
  @as("AdvancedOptions")
  advancedOptions: option<advancedOptions>,
  @ocaml.doc("<p>The status of the <code>NodeToNodeEncryptionOptions</code>.
    </p>")
  @as("NodeToNodeEncryptionOptions")
  nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
  @ocaml.doc("<p>The status of the <code>EncryptionAtRestOptions</code>.
    </p>")
  @as("EncryptionAtRestOptions")
  encryptionAtRestOptions: option<encryptionAtRestOptions>,
  @ocaml.doc("<p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html\" target=\"_blank\">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.
    </p>")
  @as("CognitoOptions")
  cognitoOptions: option<cognitoOptions>,
  @ocaml.doc("<p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\" target=\"_blank\">
      Launching your Amazon OpenSearch Service domains using a VPC</a>.
    </p>")
  @as("VPCOptions")
  vpcoptions: option<vpcderivedInfo>,
  @ocaml.doc("<p>The status of the
      <code>SnapshotOptions</code>.
    </p>")
  @as("SnapshotOptions")
  snapshotOptions: option<snapshotOptions>,
  @ocaml.doc("<p>IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
  accessPolicies: option<policyDocument>,
  @ocaml.doc("<p>The <code>EBSOptions</code> for the specified domain.
    </p>")
  @as("EBSOptions")
  ebsoptions: option<ebsoptions>,
  @ocaml.doc("<p>The type and number of instances in the domain.</p>") @as("ClusterConfig")
  clusterConfig: clusterConfig,
  @as("EngineVersion") engineVersion: option<versionString>,
  @ocaml.doc("<p>The status of a domain version upgrade. <code>True</code> if Amazon OpenSearch Service is
      undergoing a version upgrade. <code>False</code> if the configuration is active.
    </p>")
  @as("UpgradeProcessing")
  upgradeProcessing: option<boolean_>,
  @ocaml.doc("<p>The status of the domain configuration. <code>True</code> if Amazon OpenSearch Service is
      processing configuration changes. <code>False</code> if the configuration is active.
    </p>")
  @as("Processing")
  processing: option<boolean_>,
  @ocaml.doc("<p>Map containing the domain endpoints used to submit index and search requests. Example <code>key,
      value</code>: <code>'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'</code>.
    </p>")
  @as("Endpoints")
  endpoints: option<endpointsMap>,
  @ocaml.doc("<p>The domain endpoint that you use to submit index and search requests.</p>")
  @as("Endpoint")
  endpoint: option<serviceUrl>,
  @ocaml.doc("<p>The domain deletion status. <code>True</code> if a delete request has been received for the domain but resource
      cleanup is still in progress. <code>False</code> if the domain has not been deleted. Once domain deletion is
      complete, the status of the domain is no longer returned.
    </p>")
  @as("Deleted")
  deleted: option<boolean_>,
  @ocaml.doc("<p>The domain creation status. <code>True</code> if the creation of a domain is complete. <code>
      False
    </code> if domain creation is still in progress.
    </p>")
  @as("Created")
  created: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of a domain. See <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\" target=\"_blank\">IAM identifiers
    </a> in the <i>AWS Identity and Access Management User Guide</i> for more information.
    </p>")
  @as("ARN")
  arn: arn,
  @ocaml.doc("<p>The name of a domain. Domain names are unique across the domains owned by an account within an AWS
      region. Domain names start with a letter or number and can contain the following characters: a-z (lowercase), 0-9,
      and - (hyphen).
    </p>")
  @as("DomainName")
  domainName: domainName,
  @ocaml.doc("<p>The unique identifier for the specified domain.</p>") @as("DomainId")
  domainId: domainId,
}
@ocaml.doc("<p>The Auto-Tune options: the Auto-Tune desired state for the domain and list of maintenance schedules.
    </p>")
type autoTuneOptionsInput = {
  @ocaml.doc("<p>A list of maintenance schedules. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("MaintenanceSchedules")
  maintenanceSchedules: option<autoTuneMaintenanceScheduleList>,
  @ocaml.doc("<p>The Auto-Tune desired state. Valid values are ENABLED and DISABLED.</p>")
  @as("DesiredState")
  desiredState: option<autoTuneDesiredState>,
}
@ocaml.doc("<p>The Auto-Tune options: the Auto-Tune desired state for the domain, rollback state when disabling
      Auto-Tune options and list of maintenance schedules.
    </p>")
type autoTuneOptions = {
  @ocaml.doc("<p>A list of maintenance schedules. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  @as("MaintenanceSchedules")
  maintenanceSchedules: option<autoTuneMaintenanceScheduleList>,
  @ocaml.doc("<p>The rollback state while disabling Auto-Tune for the domain. Valid values are NO_ROLLBACK and DEFAULT_ROLLBACK.
    </p>")
  @as("RollbackOnDisable")
  rollbackOnDisable: option<rollbackOnDisable>,
  @ocaml.doc("<p>The Auto-Tune desired state. Valid values are ENABLED and DISABLED.</p>")
  @as("DesiredState")
  desiredState: option<autoTuneDesiredState>,
}
type autoTuneList = array<autoTune>
@ocaml.doc("<p>The status of advanced security options for the specified domain.</p>")
type advancedSecurityOptionsStatus = {
  @ocaml.doc("<p>Status of the advanced security options for the specified domain.</p>")
  @as("Status")
  status: optionStatus,
  @ocaml.doc("<p>Advanced security options for the specified domain.</p>") @as("Options")
  options: advancedSecurityOptions,
}
type upgradeHistoryList = array<upgradeHistory>
type storageTypeList = array<storageType>
@ocaml.doc("<p>A list that contains the status of each requested domain.</p>")
type domainStatusList = array<domainStatus>
@ocaml.doc("<p>The Auto-Tune status for the domain.</p>")
type autoTuneOptionsStatus = {
  @ocaml.doc("<p>The status of the Auto-Tune options for the domain.</p>") @as("Status")
  status: option<autoTuneStatus>,
  @ocaml.doc("<p>Specifies Auto-Tune options for the domain.</p>") @as("Options")
  options: option<autoTuneOptions>,
}
@ocaml.doc("<p>
      Limits for a given InstanceType and for each of its roles.
      <br></br>
      Limits contains the following:
      <code>
        <a>StorageTypes</a>
      </code>,
      <code>
        <a>InstanceLimits</a>
      </code>,
      and
      <code>
        <a>AdditionalLimits</a>
      </code>
    </p>")
type limits = {
  @ocaml.doc("<p>
      List of additional limits that are specific to a given InstanceType and for each of its
      <code>
        <a>InstanceRole</a>
      </code>
      .
    </p>")
  @as("AdditionalLimits")
  additionalLimits: option<additionalLimitList>,
  @as("InstanceLimits") instanceLimits: option<instanceLimits>,
  @ocaml.doc("<p>Storage-related types and attributes
      that are available for a given InstanceType.
    </p>")
  @as("StorageTypes")
  storageTypes: option<storageTypeList>,
}
@ocaml.doc("<p>The configuration of a domain.</p>")
type domainConfig = {
  @ocaml.doc("<p>Specifies change details of the domain configuration change.</p>")
  @as("ChangeProgressDetails")
  changeProgressDetails: option<changeProgressDetails>,
  @ocaml.doc("<p>Specifies <code>AutoTuneOptions</code> for the domain.
    </p>")
  @as("AutoTuneOptions")
  autoTuneOptions: option<autoTuneOptionsStatus>,
  @ocaml.doc("<p>Specifies <code>AdvancedSecurityOptions</code> for the domain.
    </p>")
  @as("AdvancedSecurityOptions")
  advancedSecurityOptions: option<advancedSecurityOptionsStatus>,
  @ocaml.doc("<p>The <code>DomainEndpointOptions</code> for the domain.
    </p>")
  @as("DomainEndpointOptions")
  domainEndpointOptions: option<domainEndpointOptionsStatus>,
  @ocaml.doc("<p>Log publishing options for the given domain.</p>") @as("LogPublishingOptions")
  logPublishingOptions: option<logPublishingOptionsStatus>,
  @ocaml.doc("<p>The <code>AdvancedOptions</code> for the domain. See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\" target=\"_blank\">Advanced options
    </a> for more information.
    </p>")
  @as("AdvancedOptions")
  advancedOptions: option<advancedOptionsStatus>,
  @ocaml.doc("<p>The <code>NodeToNodeEncryptionOptions</code> for the domain.
    </p>")
  @as("NodeToNodeEncryptionOptions")
  nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptionsStatus>,
  @ocaml.doc("<p>The <code>EncryptionAtRestOptions</code> for the domain.
    </p>")
  @as("EncryptionAtRestOptions")
  encryptionAtRestOptions: option<encryptionAtRestOptionsStatus>,
  @ocaml.doc("<p>The <code>CognitoOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html\" target=\"_blank\">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.
    </p>")
  @as("CognitoOptions")
  cognitoOptions: option<cognitoOptionsStatus>,
  @ocaml.doc("<p>The <code>VPCOptions</code> for the specified domain. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\" target=\"_blank\">
      Launching your Amazon OpenSearch Service domains using a VPC</a>.
    </p>")
  @as("VPCOptions")
  vpcoptions: option<vpcderivedInfoStatus>,
  @ocaml.doc("<p>The <code>SnapshotOptions</code> for the domain.
    </p>")
  @as("SnapshotOptions")
  snapshotOptions: option<snapshotOptionsStatus>,
  @ocaml.doc("<p>IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
  accessPolicies: option<accessPoliciesStatus>,
  @ocaml.doc("<p>The <code>EBSOptions</code> for the domain.
    </p>")
  @as("EBSOptions")
  ebsoptions: option<ebsoptionsStatus>,
  @ocaml.doc("<p>The <code>ClusterConfig</code> for the domain.
    </p>")
  @as("ClusterConfig")
  clusterConfig: option<clusterConfigStatus>,
  @ocaml.doc(
    "<p>String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify the engine version for the OpenSearch or Elasticsearch domain.</p>"
  )
  @as("EngineVersion")
  engineVersion: option<versionStatus>,
}
@ocaml.doc("<p>
      The role of a given instance and all applicable limits.
      The role performed by a given OpenSearch instance
      can be one of the following:
      <ul>
        <li>data: If the given InstanceType is used as a data node</li>
        <li>master: If the given InstanceType is used as a master node</li>
        <li>ultra_warm: If the given InstanceType is used as a warm node</li>
      </ul>
    </p>")
type limitsByRole = Js.Dict.t<limits>
@ocaml.doc("<fullname>Amazon OpenSearch Configuration Service</fullname>
    <p>Use the Amazon OpenSearch configuration API to create, configure, and manage Amazon OpenSearch Service domains.</p>
    <p>For sample code that uses the configuration API, see the <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/opensearch-configuration-samples.html\">
      Amazon OpenSearch Service Developer Guide</a>.
      The guide also contains <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/request-signing.html\">
        sample
        code for sending signed HTTP requests to the OpenSearch APIs</a>.
    </p>
    <p>The endpoint for configuration service requests is region-specific: es.<i>region</i>.amazonaws.com.
      For example, es.us-east-1.amazonaws.com. For a current list of supported regions and endpoints,
      see <a href=\"http://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions\" target=\"_blank\">Regions and Endpoints</a>.
    </p>")
module PurchaseReservedInstanceOffering = {
  type t
  @ocaml.doc("<p>Container for parameters to
      <code>PurchaseReservedInstanceOffering</code>
    </p>")
  type request = {
    @ocaml.doc("<p>The number of OpenSearch instances to reserve.</p>") @as("InstanceCount")
    instanceCount: option<instanceCount>,
    @ocaml.doc("<p>A customer-specified identifier to track this reservation.</p>")
    @as("ReservationName")
    reservationName: reservationToken,
    @ocaml.doc("<p>The ID of the reserved OpenSearch instance offering to purchase.</p>")
    @as("ReservedInstanceOfferingId")
    reservedInstanceOfferingId: guid,
  }
  @ocaml.doc("<p>Represents the output of a <code>PurchaseReservedInstanceOffering</code> operation.
    </p>")
  type response = {
    @ocaml.doc("<p>The customer-specified identifier used to track this reservation.</p>")
    @as("ReservationName")
    reservationName: option<reservationToken>,
    @ocaml.doc("<p>Details of the reserved OpenSearch instance which was purchased.</p>")
    @as("ReservedInstanceId")
    reservedInstanceId: option<guid>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "PurchaseReservedInstanceOfferingCommand"
  let make = (~reservationName, ~reservedInstanceOfferingId, ~instanceCount=?, ()) =>
    new({
      instanceCount: instanceCount,
      reservationName: reservationName,
      reservedInstanceOfferingId: reservedInstanceOfferingId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUpgradeStatus = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
      <code>
        <a>GetUpgradeStatus</a>
      </code>
      operation.
    </p>")
  type request = {@as("DomainName") domainName: domainName}
  @ocaml.doc("<p>
      Container for the response returned by the
      <code>
        <a>GetUpgradeStatus</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>A string that briefly describes the update.</p>") @as("UpgradeName")
    upgradeName: option<upgradeName>,
    @ocaml.doc("<p>
      One of four statuses an upgrade have, returned as part of the
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
      One of three steps an upgrade or upgrade eligibility check goes through:
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

module UpgradeDomain = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to
      <code>
        <a>UpgradeDomain</a>
      </code>
      operation.
    </p>")
  type request = {
    @as("AdvancedOptions") advancedOptions: option<advancedOptions>,
    @ocaml.doc("<p>
      When true, indicates that an upgrade eligibility check needs to be performed.
      Does not actually perform the upgrade.
    </p>")
    @as("PerformCheckOnly")
    performCheckOnly: option<boolean_>,
    @ocaml.doc("<p>The version of OpenSearch you intend to upgrade the domain to.</p>")
    @as("TargetVersion")
    targetVersion: versionString,
    @as("DomainName") domainName: domainName,
  }
  @ocaml.doc("<p>
      Container for response returned by
      <code>
        <a>UpgradeDomain</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("ChangeProgressDetails") changeProgressDetails: option<changeProgressDetails>,
    @as("AdvancedOptions") advancedOptions: option<advancedOptions>,
    @ocaml.doc("<p>
      When true, indicates that an upgrade eligibility check needs to be performed.
      Does not actually perform the upgrade.
    </p>")
    @as("PerformCheckOnly")
    performCheckOnly: option<boolean_>,
    @ocaml.doc("<p>The version of OpenSearch that you intend to upgrade the domain to.</p>")
    @as("TargetVersion")
    targetVersion: option<versionString>,
    @as("DomainName") domainName: option<domainName>,
    @as("UpgradeId") upgradeId: option<string_>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "UpgradeDomainCommand"
  let make = (~targetVersion, ~domainName, ~advancedOptions=?, ~performCheckOnly=?, ()) =>
    new({
      advancedOptions: advancedOptions,
      performCheckOnly: performCheckOnly,
      targetVersion: targetVersion,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartServiceSoftwareUpdate = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>StartServiceSoftwareUpdate</a>
      </code>
      operation. Specifies the name of the domain to schedule a service software update for.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>The name of the domain that you want to update to the latest service software.</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>StartServiceSoftwareUpdate</code> operation. Contains the status of the
      update.
    </p>")
  type response = {
    @ocaml.doc("<p>The current status of the OpenSearch service software update.</p>")
    @as("ServiceSoftwareOptions")
    serviceSoftwareOptions: option<serviceSoftwareOptions>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "StartServiceSoftwareUpdateCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTags = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>RemoveTags</a>
      </code>
      operation. Specify the <code>ARN</code> for the domain from which you want to remove the
      specified <code>TagKey</code>.
    </p>")
  type request = {
    @ocaml.doc("<p>The <code>TagKey</code> list you want to remove from the domain.
    </p>")
    @as("TagKeys")
    tagKeys: stringList,
    @ocaml.doc("<p>The <code>ARN</code> of the domain from which you want to delete the specified tags.
    </p>")
    @as("ARN")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-es") @new external new: request => t = "RemoveTagsCommand"
  let make = (~tagKeys, ~arn, ()) => new({tagKeys: tagKeys, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListVersions = {
  type t
  @ocaml.doc("<p>
      Container for the parameters to the
      <code>
        <a>ListVersions</a>
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
        not contain a NextToken, there are no more results to retrieve.
      </p>
    </p>")
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>
      Set this value to limit the number of results returned.
      Value must be greater than 10 or it won't be honored.
    </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
  }
  @ocaml.doc("<p>
      Container for the parameters for response received from the
      <code>
        <a>ListVersions</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("Versions") versions: option<versionList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListVersionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelServiceSoftwareUpdate = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>CancelServiceSoftwareUpdate</a>
      </code>
      operation. Specifies the name of the domain that you wish to cancel a service software update on.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>The name of the domain that you want to stop the latest service software update on.</p>"
    )
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>CancelServiceSoftwareUpdate</code> operation. Contains the status of the
      update.
    </p>")
  type response = {
    @ocaml.doc("<p>The current status of the OpenSearch service software update.</p>")
    @as("ServiceSoftwareOptions")
    serviceSoftwareOptions: option<serviceSoftwareOptions>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "CancelServiceSoftwareUpdateCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to the
      <code>
        <a>UpdatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>A commit message for the new version which is shown as part of <code>GetPackageVersionHistoryResponse</code>.
    </p>")
    @as("CommitMessage")
    commitMessage: option<commitMessage>,
    @ocaml.doc("<p>A new description of the package.</p>") @as("PackageDescription")
    packageDescription: option<packageDescription>,
    @as("PackageSource") packageSource: packageSource,
    @ocaml.doc("<p>The unique identifier for the package.</p>") @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for the response returned by the
      <code>
        <a>UpdatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>Information about the package.
    </p>")
    @as("PackageDetails")
    packageDetails: option<packageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "UpdatePackageCommand"
  let make = (~packageSource, ~packageID, ~commitMessage=?, ~packageDescription=?, ()) =>
    new({
      commitMessage: commitMessage,
      packageDescription: packageDescription,
      packageSource: packageSource,
      packageID: packageID,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>ListTags</a>
      </code>
      operation. Specify the <code>ARN</code> of the domain that the tags you want
      to view are attached to.
    </p>")
  type request = {
    @ocaml.doc("<p>Specify the <code>ARN</code> of the domain that the tags you want
      to view are attached to.
    </p>")
    @as("ARN")
    arn: arn,
  }
  @ocaml.doc("<p>The result of a <code>ListTags</code> operation. Contains tags for all requested domains.
    </p>")
  type response = {
    @ocaml.doc("<p>List of <code>Tag</code> for the requested domain.
    </p>")
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
      Container for the request parameters to the
      <code>
        <a>GetPackageVersionHistory</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
      returns results for the next page.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits results to a maximum number of package versions.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Returns an audit history of package versions.</p>") @as("PackageID")
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
    @ocaml.doc("<p>List of <code>PackageVersionHistory</code> objects.
    </p>")
    @as("PackageVersionHistoryList")
    packageVersionHistoryList: option<packageVersionHistoryList>,
    @as("PackageID") packageID: option<packageID>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "GetPackageVersionHistoryCommand"
  let make = (~packageID, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, packageID: packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DissociatePackage = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
      <code>
        <a>DissociatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The name of the domain to associate the package with.</p>") @as("DomainName")
    domainName: domainName,
    @ocaml.doc("<p>The internal ID of the package to associate with a domain. Use <code>DescribePackages</code> to find
      this value.
    </p>")
    @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for the response returned by
      <code>
        <a>DissociatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>
      <code>DomainPackageDetails</code>
    </p>")
    @as("DomainPackageDetails")
    domainPackageDetails: option<domainPackageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DissociatePackageCommand"
  let make = (~domainName, ~packageID, ()) => new({domainName: domainName, packageID: packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePackage = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
      <code>
        <a>DeletePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The internal ID of the package you want to delete. Use <code>DescribePackages</code> to find this value.
    </p>")
    @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for the response parameters to the
      <code>
        <a>DeletePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>
      <code>PackageDetails</code>
    </p>")
    @as("PackageDetails")
    packageDetails: option<packageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DeletePackageCommand"
  let make = (~packageID, ()) => new({packageID: packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePackage = {
  type t
  @ocaml.doc("<p>
      Container for request parameters to the
      <code>
        <a>CreatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The Amazon S3 location from which to import the package.
    </p>")
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
      Container for the response returned by the
      <code>
        <a>CreatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>Information about the package.
    </p>")
    @as("PackageDetails")
    packageDetails: option<packageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "CreatePackageCommand"
  let make = (~packageSource, ~packageType, ~packageName, ~packageDescription=?, ()) =>
    new({
      packageSource: packageSource,
      packageDescription: packageDescription,
      packageType: packageType,
      packageName: packageName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOutboundConnection = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>CreateOutboundConnection</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>The connection alias used used by the customer for this cross-cluster connection.</p>"
    )
    @as("ConnectionAlias")
    connectionAlias: connectionAlias,
    @ocaml.doc("<p>The
      <code>
        <a>AWSDomainInformation</a>
      </code>
      for the remote OpenSearch domain.
    </p>")
    @as("RemoteDomainInfo")
    remoteDomainInfo: domainInformationContainer,
    @ocaml.doc("<p>The
      <code>
        <a>AWSDomainInformation</a>
      </code>
      for the local OpenSearch domain.
    </p>")
    @as("LocalDomainInfo")
    localDomainInfo: domainInformationContainer,
  }
  @ocaml.doc("<p>The result of a
      <code>
        <a>CreateOutboundConnection</a>
      </code>
      request. Contains the details about the newly created cross-cluster connection.
    </p>")
  type response = {
    @ocaml.doc(
      "<p>The unique ID for the created outbound connection, which is used for subsequent operations on the connection.</p>"
    )
    @as("ConnectionId")
    connectionId: option<connectionId>,
    @ocaml.doc("<p>The
      <code>
        <a>OutboundConnectionStatus</a>
      </code>
      for the newly created connection.
    </p>")
    @as("ConnectionStatus")
    connectionStatus: option<outboundConnectionStatus>,
    @ocaml.doc("<p>The connection alias provided during the create connection request.</p>")
    @as("ConnectionAlias")
    connectionAlias: option<connectionAlias>,
    @ocaml.doc("<p>The
      <code>
        <a>AWSDomainInformation</a>
      </code>
      for the remote OpenSearch domain.
    </p>")
    @as("RemoteDomainInfo")
    remoteDomainInfo: option<domainInformationContainer>,
    @ocaml.doc("<p>The
      <code>
        <a>AWSDomainInformation</a>
      </code>
      for the local OpenSearch domain.
    </p>")
    @as("LocalDomainInfo")
    localDomainInfo: option<domainInformationContainer>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "CreateOutboundConnectionCommand"
  let make = (~connectionAlias, ~remoteDomainInfo, ~localDomainInfo, ()) =>
    new({
      connectionAlias: connectionAlias,
      remoteDomainInfo: remoteDomainInfo,
      localDomainInfo: localDomainInfo,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociatePackage = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
      <code>
        <a>AssociatePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The name of the domain to associate the package with.</p>") @as("DomainName")
    domainName: domainName,
    @ocaml.doc("<p>Internal ID of the package to associate with a domain. Use <code>DescribePackages</code> to find
      this value.
    </p>")
    @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for the response returned by
      <code>
        <a>AssociatePackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>
      <code>DomainPackageDetails</code>
    </p>")
    @as("DomainPackageDetails")
    domainPackageDetails: option<domainPackageDetails>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "AssociatePackageCommand"
  let make = (~domainName, ~packageID, ()) => new({domainName: domainName, packageID: packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>AddTags</a>
      </code>
      operation. Specifies the tags to attach to the domain.
    </p>")
  type request = {
    @ocaml.doc("<p>List of <code>Tag</code> to add to the domain.
    </p>")
    @as("TagList")
    tagList_: tagList_,
    @ocaml.doc("<p>Specify the <code>ARN</code> of the domain you want to add tags to.
    </p>")
    @as("ARN")
    arn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-es") @new external new: request => t = "AddTagsCommand"
  let make = (~tagList_, ~arn, ()) => new({tagList_: tagList_, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectInboundConnection = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>RejectInboundConnection</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The ID of the inbound connection to reject.</p>") @as("ConnectionId")
    connectionId: connectionId,
  }
  @ocaml.doc("<p>The result of a
      <code>
        <a>RejectInboundConnection</a>
      </code>
      operation. Contains details about the rejected inbound connection.
    </p>")
  type response = {
    @ocaml.doc("<p>The
      <code>
        <a>InboundConnection</a>
      </code>
      of the rejected inbound connection.
    </p>")
    @as("Connection")
    connection: option<inboundConnection>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "RejectInboundConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPackagesForDomain = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
      <code>
        <a>ListPackagesForDomain</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
      returns results for the next page.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits results to a maximum number of packages.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the domain for which you want to list associated packages.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>
      Container for the response parameters to the
      <code>
        <a>ListPackagesForDomain</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc(
      "<p>Pagination token to supply to the next call to get the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>List of <code>DomainPackageDetails</code> objects.
    </p>")
    @as("DomainPackageDetailsList")
    domainPackageDetailsList: option<domainPackageDetailsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListPackagesForDomainCommand"
  let make = (~domainName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstanceTypeDetails = {
  type t
  type request = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DomainName") domainName: option<domainName>,
    @as("EngineVersion") engineVersion: versionString,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("InstanceTypeDetails") instanceTypeDetails: option<instanceTypeDetailsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListInstanceTypeDetailsCommand"
  let make = (~engineVersion, ~nextToken=?, ~maxResults=?, ~domainName=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      domainName: domainName,
      engineVersion: engineVersion,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomainsForPackage = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
      <code>
        <a>ListDomainsForPackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
      returns results for the next page.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits the results to a maximum number of domains.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The package for which to list associated domains.</p>") @as("PackageID")
    packageID: packageID,
  }
  @ocaml.doc("<p>
      Container for the response parameters to the
      <code>
        <a>ListDomainsForPackage</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>List of <code>DomainPackageDetails</code> objects.
    </p>")
    @as("DomainPackageDetailsList")
    domainPackageDetailsList: option<domainPackageDetailsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "ListDomainsForPackageCommand"
  let make = (~packageID, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, packageID: packageID})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCompatibleVersions = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to
      <code>
        <a>GetCompatibleVersions</a>
      </code>
      operation.
    </p>")
  type request = {@as("DomainName") domainName: option<domainName>}
  @ocaml.doc("<p>
      Container for the response returned by the
      <code>
        <a>GetCompatibleVersions</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc("<p>
      A map of compatible OpenSearch versions returned as part of the
      <code>
        <a>GetCompatibleVersions</a>
      </code>
      operation.
    </p>")
    @as("CompatibleVersions")
    compatibleVersions: option<compatibleVersionsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "GetCompatibleVersionsCommand"
  let make = (~domainName=?, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePackages = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
      <code>
        <a>DescribePackage</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>Used for pagination. Only necessary if a previous API call includes a non-null NextToken value. If provided,
      returns results for the next page.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Limits results to a maximum number of packages.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Only returns packages that match the <code>DescribePackagesFilterList</code> values.
    </p>")
    @as("Filters")
    filters: option<describePackagesFilterList>,
  }
  @ocaml.doc("<p>
      Container for the response returned by the
      <code>
        <a>DescribePackages</a>
      </code>
      operation.
    </p>")
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>List of <code>PackageDetails</code> objects.
    </p>")
    @as("PackageDetailsList")
    packageDetailsList: option<packageDetailsList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribePackagesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
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
  let make = (~domainName, ~changeId=?, ()) => new({changeId: changeId, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteOutboundConnection = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>DeleteOutboundConnection</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The ID of the outbound connection you want to permanently delete.</p>")
    @as("ConnectionId")
    connectionId: connectionId,
  }
  @ocaml.doc("<p>The result of a
      <code>
        <a>DeleteOutboundConnection</a>
      </code>
      operation. Contains details about the deleted outbound connection.
    </p>")
  type response = {
    @ocaml.doc("<p>The
      <code>
        <a>OutboundConnection</a>
      </code>
      of the deleted outbound connection.
    </p>")
    @as("Connection")
    connection: option<outboundConnection>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DeleteOutboundConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInboundConnection = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>DeleteInboundConnection</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The ID of the inbound connection to permanently delete.</p>") @as("ConnectionId")
    connectionId: connectionId,
  }
  @ocaml.doc("<p>The result of a
      <code>
        <a>DeleteInboundConnection</a>
      </code>
      operation. Contains details about the deleted inbound connection.
    </p>")
  type response = {
    @ocaml.doc("<p>The
      <code>
        <a>InboundConnection</a>
      </code>
      of the deleted inbound connection.
    </p>")
    @as("Connection")
    connection: option<inboundConnection>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DeleteInboundConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptInboundConnection = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>AcceptInboundConnection</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The ID of the inbound connection you want to accept.</p>") @as("ConnectionId")
    connectionId: connectionId,
  }
  @ocaml.doc("<p>The result of an
      <code>
        <a>AcceptInboundConnection</a>
      </code>
      operation. Contains details about the accepted inbound connection.
    </p>")
  type response = {
    @ocaml.doc("<p>The
      <code>
        <a>InboundConnection</a>
      </code>
      of the accepted inbound connection.
    </p>")
    @as("Connection")
    connection: option<inboundConnection>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "AcceptInboundConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedInstances = {
  type t
  @ocaml.doc("<p>Container for parameters to
      <code>DescribeReservedInstances</code>
    </p>")
  type request = {
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The reserved instance identifier filter value. Use this parameter to show only the reservation that matches the
      specified reserved OpenSearch instance ID.
    </p>")
    @as("ReservedInstanceId")
    reservedInstanceId: option<guid>,
  }
  @ocaml.doc("<p>Container for results from
      <code>DescribeReservedInstances</code>
    </p>")
  type response = {
    @ocaml.doc("<p>List of reserved OpenSearch instances.</p>") @as("ReservedInstances")
    reservedInstances: option<reservedInstanceList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribeReservedInstancesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~reservedInstanceId=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, reservedInstanceId: reservedInstanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeReservedInstanceOfferings = {
  type t
  @ocaml.doc("<p>Container for parameters to
      <code>DescribeReservedInstanceOfferings</code>
    </p>")
  type request = {
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The offering identifier filter value. Use this parameter to show only the available offering that matches the
      specified reservation identifier.
    </p>")
    @as("ReservedInstanceOfferingId")
    reservedInstanceOfferingId: option<guid>,
  }
  @ocaml.doc("<p>Container for results from
      <code>DescribeReservedInstanceOfferings</code>
    </p>")
  type response = {
    @ocaml.doc("<p>List of reserved OpenSearch instance offerings</p>")
    @as("ReservedInstanceOfferings")
    reservedInstanceOfferings: option<reservedInstanceOfferingList>,
    @ocaml.doc("<p>Provides an identifier to allow retrieval of paginated results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeReservedInstanceOfferingsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~reservedInstanceOfferingId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      reservedInstanceOfferingId: reservedInstanceOfferingId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOutboundConnections = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>DescribeOutboundConnections</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>NextToken is sent in case the earlier API call results contain the NextToken parameter. Used for pagination.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      A list of filters used to match properties for outbound cross-cluster connections.
      Available
      <code>
        <a>Filter</a>
      </code>
      names for this operation are:
      <ul>
        <li>connection-id</li>
        <li>remote-domain-info.domain-name</li>
        <li>remote-domain-info.owner-id</li>
        <li>remote-domain-info.region</li>
        <li>local-domain-info.domain-name</li>
      </ul>
    </p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p>The result of a
      <code>
        <a>DescribeOutboundConnections</a>
      </code>
      request. Contains the list of connections matching the filter criteria.
    </p>")
  type response = {
    @ocaml.doc("<p>If more results are available and NextToken is present, make the next request to the same API with the received
      NextToken to paginate the remaining results.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of
      <code>
        <a>OutboundConnection</a>
      </code>
      matching the specified filter criteria.
    </p>")
    @as("Connections")
    connections: option<outboundConnections>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeOutboundConnectionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInboundConnections = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>DescribeInboundConnections</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>If more results are available and NextToken is present, make the next request to the same API with the received
      NextToken to paginate the remaining results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      A list of filters used to match properties for inbound cross-cluster connections.
      Available
      <code>
        <a>Filter</a>
      </code>
      values are:
      <ul>
        <li>connection-id</li>
        <li>local-domain-info.domain-name</li>
        <li>local-domain-info.owner-id</li>
        <li>local-domain-info.region</li>
        <li>remote-domain-info.domain-name</li>
      </ul>
    </p>")
    @as("Filters")
    filters: option<filterList>,
  }
  @ocaml.doc("<p>The result of a
      <code>
        <a>DescribeInboundConnections</a>
      </code>
      request. Contains a list of connections matching the filter criteria.
    </p>")
  type response = {
    @ocaml.doc("<p>If more results are available and NextToken is present, make the next request to the same API with the received
      NextToken to paginate the remaining results.
    </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of
      <code>
        <a>InboundConnection</a>
      </code>
      matching the specified filter criteria.
    </p>")
    @as("Connections")
    connections: option<inboundConnections>,
  }
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeInboundConnectionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomainAutoTunes = {
  type t
  @ocaml.doc("<p>Container for the parameters to the <code>DescribeDomainAutoTunes</code> operation.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>NextToken is sent in case the earlier API call results contain the NextToken. Used for pagination.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Set this value to limit the number of results returned. If not specified, defaults to 100.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The domain name for which you want Auto-Tune action details.</p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>DescribeDomainAutoTunes</code> request. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
  type response = {
    @ocaml.doc("<p>An identifier to allow retrieval of paginated results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of setting adjustments that Auto-Tune has made to the domain. See <a href=\"https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html\" target=\"_blank\">
      Auto-Tune for Amazon OpenSearch Service
    </a> for more information.
    </p>")
    @as("AutoTunes")
    autoTunes: option<autoTuneList>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribeDomainAutoTunesCommand"
  let make = (~domainName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomain = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>DescribeDomain</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>The name of the domain for which you want information.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>DescribeDomain</code> request. Contains the status of the domain specified in
      the request.
    </p>")
  type response = {
    @ocaml.doc("<p>The current status of the domain.</p>") @as("DomainStatus")
    domainStatus: domainStatus,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribeDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomain = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>DeleteDomain</a>
      </code>
      operation. Specifies the name of the domain you want to delete.
    </p>")
  type request = {
    @ocaml.doc("<p>The name of the domain you want to permanently delete.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>DeleteDomain</code> request. Contains the status of the pending deletion, or
      a \"domain not found\" error if the domain and all of its resources have been deleted.
    </p>")
  type response = {
    @ocaml.doc("<p>The status of the domain being deleted.</p>") @as("DomainStatus")
    domainStatus: option<domainStatus>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DeleteDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies Auto-Tune options.</p>") @as("AutoTuneOptions")
    autoTuneOptions: option<autoTuneOptionsInput>,
    @ocaml.doc("<p>A list of <code>Tag</code> added during domain creation.
    </p>")
    @as("TagList")
    tagList_: option<tagList_>,
    @ocaml.doc("<p>Specifies advanced security options.</p>") @as("AdvancedSecurityOptions")
    advancedSecurityOptions: option<advancedSecurityOptionsInput>,
    @ocaml.doc(
      "<p>Options to specify configurations that will be applied to the domain endpoint.</p>"
    )
    @as("DomainEndpointOptions")
    domainEndpointOptions: option<domainEndpointOptions>,
    @ocaml.doc("<p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type
      of OpenSearch log.
    </p>")
    @as("LogPublishingOptions")
    logPublishingOptions: option<logPublishingOptions>,
    @ocaml.doc("<p>Option to allow references to indices in an HTTP request body. Must be <code>false</code> when configuring access
      to individual sub-resources. By default, the value is <code>true</code>.
      See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\" target=\"_blank\">Advanced cluster parameters
      </a> for more information.
    </p>")
    @as("AdvancedOptions")
    advancedOptions: option<advancedOptions>,
    @ocaml.doc("<p>Node-to-node encryption options.</p>") @as("NodeToNodeEncryptionOptions")
    nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
    @ocaml.doc("<p>Options for encryption of data at rest.</p>") @as("EncryptionAtRestOptions")
    encryptionAtRestOptions: option<encryptionAtRestOptions>,
    @ocaml.doc("<p>Options to specify the Cognito user and identity pools for OpenSearch Dashboards authentication. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html\" target=\"_blank\">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.
    </p>")
    @as("CognitoOptions")
    cognitoOptions: option<cognitoOptions>,
    @ocaml.doc("<p>Options to specify the subnets and security groups for a VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\" target=\"_blank\">Launching your Amazon OpenSearch Service domains using a VPC
    </a>.
    </p>")
    @as("VPCOptions")
    vpcoptions: option<vpcoptions>,
    @ocaml.doc(
      "<p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours.</p>"
    )
    @as("SnapshotOptions")
    snapshotOptions: option<snapshotOptions>,
    @ocaml.doc("<p>IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
    accessPolicies: option<policyDocument>,
    @ocaml.doc(
      "<p>Options to enable, disable, and specify the type and size of EBS storage volumes.</p>"
    )
    @as("EBSOptions")
    ebsoptions: option<ebsoptions>,
    @ocaml.doc("<p>Configuration options for a domain. Specifies the instance type and number of instances in the
      domain.
    </p>")
    @as("ClusterConfig")
    clusterConfig: option<clusterConfig>,
    @ocaml.doc("<p>String of format Elasticsearch_X.Y or OpenSearch_X.Y to specify the engine version for the Amazon OpenSearch Service domain.
      For example, \"OpenSearch_1.0\" or \"Elasticsearch_7.9\". For more information,
      see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomains\" target=\"_blank\">Creating and managing Amazon OpenSearch Service domains
      </a>.
    </p>")
    @as("EngineVersion")
    engineVersion: option<versionString>,
    @ocaml.doc("<p>The name of the Amazon OpenSearch Service domain you're creating. Domain names are unique across the domains owned by
      an account within an AWS region. Domain names must start with a lowercase letter and can contain the following
      characters: a-z (lowercase), 0-9, and - (hyphen).
    </p>")
    @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>CreateDomain</code> operation. Contains the status of the newly created
      Amazon OpenSearch Service domain.
    </p>")
  type response = {
    @ocaml.doc("<p>The status of the newly created domain.</p>") @as("DomainStatus")
    domainStatus: option<domainStatus>,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "CreateDomainCommand"
  let make = (
    ~domainName,
    ~autoTuneOptions=?,
    ~tagList_=?,
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
    ~clusterConfig=?,
    ~engineVersion=?,
    (),
  ) =>
    new({
      autoTuneOptions: autoTuneOptions,
      tagList_: tagList_,
      advancedSecurityOptions: advancedSecurityOptions,
      domainEndpointOptions: domainEndpointOptions,
      logPublishingOptions: logPublishingOptions,
      advancedOptions: advancedOptions,
      nodeToNodeEncryptionOptions: nodeToNodeEncryptionOptions,
      encryptionAtRestOptions: encryptionAtRestOptions,
      cognitoOptions: cognitoOptions,
      vpcoptions: vpcoptions,
      snapshotOptions: snapshotOptions,
      accessPolicies: accessPolicies,
      ebsoptions: ebsoptions,
      clusterConfig: clusterConfig,
      engineVersion: engineVersion,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUpgradeHistory = {
  type t
  @ocaml.doc("<p>
      Container for the request parameters to the
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
      Container for the response returned by the
      <code>
        <a>GetUpgradeHistory</a>
      </code>
      operation.
    </p>")
  type response = {
    @ocaml.doc(
      "<p>Pagination token that needs to be supplied to the next call to get the next page of results.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>
      A list of
      <code>
        <a>UpgradeHistory</a>
      </code>
      objects corresponding to each upgrade or upgrade eligibility check performed on a domain returned as part of the
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
    new({nextToken: nextToken, maxResults: maxResults, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomains = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>DescribeDomains</a>
      </code>
      operation. By default, the API returns the status of all domains.
    </p>")
  type request = {
    @ocaml.doc("<p>The domains for which you want information.</p>") @as("DomainNames")
    domainNames: domainNameList,
  }
  @ocaml.doc("<p>The result of a <code>DescribeDomains</code> request. Contains the status of the specified domains
      or all domains owned by the account.
    </p>")
  type response = {
    @ocaml.doc("<p>The status of the domains requested in the <code>DescribeDomains</code> request.
    </p>")
    @as("DomainStatusList")
    domainStatusList: domainStatusList,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribeDomainsCommand"
  let make = (~domainNames, ()) => new({domainNames: domainNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainConfig = {
  type t
  @ocaml.doc("<p>Container for the parameters to the
      <code>
        <a>UpdateDomain</a>
      </code>
      operation. Specifies the type and number of instances in the domain cluster.
    </p>")
  type request = {
    @ocaml.doc(
      "<p>This flag, when set to True, specifies whether the <code>UpdateDomain</code> request should return the results of validation checks (DryRunResults) without actually applying the change.</p>"
    )
    @as("DryRun")
    dryRun: option<dryRun>,
    @ocaml.doc("<p>Specifies Auto-Tune options.</p>") @as("AutoTuneOptions")
    autoTuneOptions: option<autoTuneOptions>,
    @ocaml.doc("<p>Specifies advanced security options.</p>") @as("AdvancedSecurityOptions")
    advancedSecurityOptions: option<advancedSecurityOptionsInput>,
    @ocaml.doc("<p>Specifies node-to-node encryption options.</p>")
    @as("NodeToNodeEncryptionOptions")
    nodeToNodeEncryptionOptions: option<nodeToNodeEncryptionOptions>,
    @ocaml.doc(
      "<p>Options to specify configuration that will be applied to the domain endpoint.</p>"
    )
    @as("DomainEndpointOptions")
    domainEndpointOptions: option<domainEndpointOptions>,
    @ocaml.doc("<p>Specifies encryption of data at rest options.</p>")
    @as("EncryptionAtRestOptions")
    encryptionAtRestOptions: option<encryptionAtRestOptions>,
    @ocaml.doc("<p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type
      of OpenSearch log.
    </p>")
    @as("LogPublishingOptions")
    logPublishingOptions: option<logPublishingOptions>,
    @ocaml.doc("<p>IAM access policy as a JSON-formatted string.</p>") @as("AccessPolicies")
    accessPolicies: option<policyDocument>,
    @ocaml.doc("<p>Modifies the advanced option to allow references to indices in an HTTP request body. Must be <code>false</code> when
      configuring access to individual sub-resources. By default, the value is <code>true</code>.
      See <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html#createdomain-configure-advanced-options\" target=\"_blank\">Advanced options
      </a> for more information.
    </p>")
    @as("AdvancedOptions")
    advancedOptions: option<advancedOptions>,
    @ocaml.doc("<p>Options to specify the Cognito user and identity pools for OpenSearch Dashboards authentication. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html\" target=\"_blank\">Configuring Amazon Cognito authentication for OpenSearch Dashboards</a>.
    </p>")
    @as("CognitoOptions")
    cognitoOptions: option<cognitoOptions>,
    @ocaml.doc("<p>Options to specify the subnets and security groups for the VPC endpoint. For more information, see <a href=\"http://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html\" target=\"_blank\">Launching your Amazon OpenSearch Service domains using a VPC
    </a>.
    </p>")
    @as("VPCOptions")
    vpcoptions: option<vpcoptions>,
    @ocaml.doc("<p>Option to set the time, in UTC format, for the daily automated snapshot. Default value is <code>0</code> hours.
    </p>")
    @as("SnapshotOptions")
    snapshotOptions: option<snapshotOptions>,
    @ocaml.doc("<p>Specify the type and size of the EBS volume to use.</p>") @as("EBSOptions")
    ebsoptions: option<ebsoptions>,
    @ocaml.doc("<p>The type and number of instances to instantiate for the domain cluster.</p>")
    @as("ClusterConfig")
    clusterConfig: option<clusterConfig>,
    @ocaml.doc("<p>The name of the domain you're updating.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of an <code>UpdateDomain</code> request. Contains the status of the domain
      being updated.
    </p>")
  type response = {
    @ocaml.doc("<p>Contains result of DryRun. </p>") @as("DryRunResults")
    dryRunResults: option<dryRunResults>,
    @ocaml.doc("<p>The status of the updated domain.</p>") @as("DomainConfig")
    domainConfig: domainConfig,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "UpdateDomainConfigCommand"
  let make = (
    ~domainName,
    ~dryRun=?,
    ~autoTuneOptions=?,
    ~advancedSecurityOptions=?,
    ~nodeToNodeEncryptionOptions=?,
    ~domainEndpointOptions=?,
    ~encryptionAtRestOptions=?,
    ~logPublishingOptions=?,
    ~accessPolicies=?,
    ~advancedOptions=?,
    ~cognitoOptions=?,
    ~vpcoptions=?,
    ~snapshotOptions=?,
    ~ebsoptions=?,
    ~clusterConfig=?,
    (),
  ) =>
    new({
      dryRun: dryRun,
      autoTuneOptions: autoTuneOptions,
      advancedSecurityOptions: advancedSecurityOptions,
      nodeToNodeEncryptionOptions: nodeToNodeEncryptionOptions,
      domainEndpointOptions: domainEndpointOptions,
      encryptionAtRestOptions: encryptionAtRestOptions,
      logPublishingOptions: logPublishingOptions,
      accessPolicies: accessPolicies,
      advancedOptions: advancedOptions,
      cognitoOptions: cognitoOptions,
      vpcoptions: vpcoptions,
      snapshotOptions: snapshotOptions,
      ebsoptions: ebsoptions,
      clusterConfig: clusterConfig,
      domainName: domainName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomainConfig = {
  type t
  @ocaml.doc("<p>Container for the parameters to the <code>DescribeDomainConfig</code> operation. Specifies the
      domain name for which you want configuration information.
    </p>")
  type request = {
    @ocaml.doc("<p>The domain you want to get information about.</p>") @as("DomainName")
    domainName: domainName,
  }
  @ocaml.doc("<p>The result of a <code>DescribeDomainConfig</code> request. Contains the configuration information of
      the requested domain.
    </p>")
  type response = {
    @ocaml.doc("<p>The configuration information of the domain requested in the <code>DescribeDomainConfig</code> request.
    </p>")
    @as("DomainConfig")
    domainConfig: domainConfig,
  }
  @module("@aws-sdk/client-es") @new external new: request => t = "DescribeDomainConfigCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeInstanceTypeLimits = {
  type t
  @ocaml.doc("<p>
      Container for the parameters to the
      <code>
        <a>DescribeInstanceTypeLimits</a>
      </code>
      operation.
    </p>")
  type request = {
    @ocaml.doc("<p>
      Version of OpenSearch for which
      <code>
        <a>Limits</a>
      </code>
      are needed.
    </p>")
    @as("EngineVersion")
    engineVersion: versionString,
    @ocaml.doc("<p>
      The instance type for an OpenSearch cluster for which OpenSearch
      <code>
        <a>Limits</a>
      </code>
      are needed.
    </p>")
    @as("InstanceType")
    instanceType: openSearchPartitionInstanceType,
    @ocaml.doc("<p>
      The name of the domain you want to modify. Only include this value if you're
      querying OpenSearch
      <code>
        <a>Limits</a>
      </code>
      for an existing domain.
    </p>")
    @as("DomainName")
    domainName: option<domainName>,
  }
  @ocaml.doc("<p>
      Container for the parameters received from the
      <code>
        <a>DescribeInstanceTypeLimits</a>
      </code>
      operation.
    </p>")
  type response = {@as("LimitsByRole") limitsByRole: option<limitsByRole>}
  @module("@aws-sdk/client-es") @new
  external new: request => t = "DescribeInstanceTypeLimitsCommand"
  let make = (~engineVersion, ~instanceType, ~domainName=?, ()) =>
    new({engineVersion: engineVersion, instanceType: instanceType, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
