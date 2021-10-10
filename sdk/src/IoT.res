type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iot") @new external createClient: unit => awsServiceClient = "IoTClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type usePrefixAttributeValue = bool
type stringValue = string
type resourceId = string
type waitingForDataCollectionChecksCount = int
type vpcId = string
type violationId = string
type violationEventType = [
  | @as("alarm-invalidated") #Alarm_Invalidated
  | @as("alarm-cleared") #Alarm_Cleared
  | @as("in-alarm") #In_Alarm
]
type versionNumber = float
type version = float
type variance = float
type value = string
type valid = bool
type useBase64 = bool
type url = string
type unsignedLong = float
type undoDeprecate = bool
type totalResourcesCount = float
type totalFindingsCount = float
type totalChecksCount = int
type topicRuleMaxResults = int
type topicRuleDestinationStatus = [
  | @as("DELETING") #DELETING
  | @as("ERROR") #ERROR
  | @as("DISABLED") #DISABLED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("ENABLED") #ENABLED
]
type topicRuleDestinationMaxResults = int
type topicPattern = string
type topic = string
type tokenSignature = string
type tokenKeyName = string
type token = string
type tinyMaxResults = int
type timestreamTimestampValue = string
type timestreamTimestampUnit = string
type timestreamTableName = string
type timestreamDimensionValue = string
type timestreamDimensionName = string
type timestreamDatabaseName = string
type timestamp_ = Js.Date.t
type timedOutThings = int
type thingTypeName = string
type thingTypeId = string
type thingTypeDescription = string
type thingTypeArn = string
type thingName = string
type thingIndexingMode = [
  | @as("REGISTRY_AND_SHADOW") #REGISTRY_AND_SHADOW
  | @as("REGISTRY") #REGISTRY
  | @as("OFF") #OFF
]
type thingId = string
type thingGroupName = string
type thingGroupIndexingMode = [@as("ON") #ON | @as("OFF") #OFF]
type thingGroupId = string
type thingGroupDescription = string
type thingGroupArn = string
type thingConnectivityIndexingMode = [@as("STATUS") #STATUS | @as("OFF") #OFF]
type thingArn = string
type templateVersionId = int
type templateName = string
type templateDescription = string
type templateBody = string
type templateArn = string
type taskId = string
type targetSelection = [@as("SNAPSHOT") #SNAPSHOT | @as("CONTINUOUS") #CONTINUOUS]
type targetArn = string
type target = string
type tagValue = string
type tagKey = string
type tableName = string
type suppressedNonCompliantResourcesCount = float
type suppressIndefinitely = bool
type suppressAlerts = bool
type sumOfSquares = float
type sum = float
type succeededThings = int
type succeededFindingsCount = float
type subnetId = string
type string_ = string
type streamVersion = int
type streamName = string
type streamId = string
type streamDescription = string
type streamArn = string
type stdDeviation = float
type status = [
  | @as("Cancelling") #Cancelling
  | @as("Cancelled") #Cancelled
  | @as("Failed") #Failed
  | @as("Completed") #Completed
  | @as("InProgress") #InProgress
]
type stateValue = string
type stateReason = string
type stateMachineName = string
type snsTopicArn = string
type skyfallMaxResults = int
type skippedFindingsCount = float
type signingRegion = string
type signingProfileName = string
type signingJobId = string
type signatureAlgorithm = string
type signature = NodeJs.Buffer.t
type setAsDefault = bool
type setAsActiveFlag = bool
type setAsActive = bool
type serviceType = [
  | @as("JOBS") #JOBS
  | @as("CREDENTIAL_PROVIDER") #CREDENTIAL_PROVIDER
  | @as("DATA") #DATA
]
type serviceName = string
type serverName = string
type serverCertificateStatusDetail = string
type serverCertificateStatus = [@as("VALID") #VALID | @as("INVALID") #INVALID]
type securityProfileTargetArn = string
type securityProfileName = string
type securityProfileDescription = string
type securityProfileArn = string
type securityGroupId = string
type seconds = int
type scheduledAuditName = string
type scheduledAuditArn = string
type salesforceToken = string
type salesforceEndpoint = string
type sql = string
type s3Version = string
type s3Key = string
type s3FileUrl = string
type s3Bucket = string
type ruleName = string
type ruleArn = string
type rolloutRatePerMinute = int
type roleArn = string
type roleAliasArn = string
type roleAlias = string
type resourceType = [
  | @as("IAM_ROLE") #IAM_ROLE
  | @as("ROLE_ALIAS") #ROLE_ALIAS
  | @as("ACCOUNT_SETTINGS") #ACCOUNT_SETTINGS
  | @as("CLIENT_ID") #CLIENT_ID
  | @as("COGNITO_IDENTITY_POOL") #COGNITO_IDENTITY_POOL
  | @as("IOT_POLICY") #IOT_POLICY
  | @as("CA_CERTIFICATE") #CA_CERTIFICATE
  | @as("DEVICE_CERTIFICATE") #DEVICE_CERTIFICATE
]
type resourceLogicalId = string
type resourceArn = string
type resource = string
type reservedDomainConfigurationName = string
type reportType = [@as("RESULTS") #RESULTS | @as("ERRORS") #ERRORS]
type removedThings = int
type removeThingType = bool
type removeHook = bool
type removeAutoRegistration = bool
type removeAuthorizerConfig = bool
type rejectedThings = int
type registryS3KeyName = string
type registryS3BucketName = string
type registryMaxResults = int
type registrationCode = string
type recursiveWithoutDefault = bool
type recursive = bool
type reasonForNonComplianceCode = string
type reasonForNonCompliance = string
type reasonCode = string
type rangeKeyValue = string
type rangeKeyField = string
type queuedThings = int
type queueUrl = string
type queryVersion = string
type queryString = string
type queryMaxResults = int
type qos = int
type publicKey = string
type protocol = [@as("HTTP") #HTTP | @as("MQTT") #MQTT]
type processingTargetName = string
type privateKey = string
type principalId = string
type principalArn = string
type principal = string
type primitiveBoolean = bool
type prefix = string
type port = int
type policyVersionId = string
type policyTemplateName = [@as("BLANK_POLICY") #BLANK_POLICY]
type policyTarget = string
type policyName = string
type policyDocument = string
type policyArn = string
type platform = string
type percentage = int
type percentValue = float
type percent = float
type payloadVersion = string
type payloadField = string
type partitionKey = string
type parameter = string
type pageSize = int
type overrideDynamicGroups = bool
type optionalVersion = float
type otaupdateStatus = [
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
  | @as("CREATE_PENDING") #CREATE_PENDING
]
type otaupdateId = string
type otaupdateFileVersion = string
type otaupdateErrorMessage = string
type otaupdateDescription = string
type otaupdateArn = string
type numberOfThings = int
type number = float
type nullableBoolean = bool
type nonCompliantResourcesCount = float
type nonCompliantChecksCount = int
type nextToken = string
type namespaceId = string
type mqttUsername = string
type mqttPassword = NodeJs.Buffer.t
type mqttClientId = string
type modelStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("ACTIVE") #ACTIVE
  | @as("PENDING_BUILD") #PENDING_BUILD
]
type mitigationActionsTaskId = string
type mitigationActionType = [
  | @as("PUBLISH_FINDING_TO_SNS") #PUBLISH_FINDING_TO_SNS
  | @as("ENABLE_IOT_LOGGING") #ENABLE_IOT_LOGGING
  | @as("REPLACE_DEFAULT_POLICY_VERSION") #REPLACE_DEFAULT_POLICY_VERSION
  | @as("ADD_THINGS_TO_THING_GROUP") #ADD_THINGS_TO_THING_GROUP
  | @as("UPDATE_CA_CERTIFICATE") #UPDATE_CA_CERTIFICATE
  | @as("UPDATE_DEVICE_CERTIFICATE") #UPDATE_DEVICE_CERTIFICATE
]
type mitigationActionName = string
type mitigationActionId = string
type mitigationActionArn = string
type missingContextValue = string
type minimumNumberOfExecutedThings = int
type minimum = float
type metricName = string
type messageId = string
type messageFormat = [@as("JSON") #JSON | @as("RAW") #RAW]
type message = string
type maximumPerMinute = int
type maximum = float
type maxResults = int
type maxJobExecutionsPerMin = int
type marker = string
type logTargetType = [@as("THING_GROUP") #THING_GROUP | @as("DEFAULT") #DEFAULT]
type logTargetName = string
type logLevel = [
  | @as("DISABLED") #DISABLED
  | @as("WARN") #WARN
  | @as("ERROR") #ERROR
  | @as("INFO") #INFO
  | @as("DEBUG") #DEBUG
]
type logGroupName = string
type listSuppressedFindings = bool
type listSuppressedAlerts = bool
type lastUpdatedAtDate = Js.Date.t
type lastModifiedDate = Js.Date.t
type laserMaxResults = int
type keyValue = string
type keyName = string
type key = string
type jsonDocument = string
type jobTemplateId = string
type jobTemplateArn = string
type jobStatus = [
  | @as("DELETION_IN_PROGRESS") #DELETION_IN_PROGRESS
  | @as("COMPLETED") #COMPLETED
  | @as("CANCELED") #CANCELED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type jobId = string
type jobExecutionStatus = [
  | @as("CANCELED") #CANCELED
  | @as("REMOVED") #REMOVED
  | @as("REJECTED") #REJECTED
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("QUEUED") #QUEUED
]
type jobExecutionFailureType = [
  | @as("ALL") #ALL
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("REJECTED") #REJECTED
  | @as("FAILED") #FAILED
]
type jobDocumentSource = string
type jobDocument = string
type jobDescription = string
type jobArn = string
type isSuppressed = bool
type isDisabled = bool
type isDefaultVersion = bool
type isAuthenticated = bool
type inputName = string
type inlineDocument = string
type indexStatus = [
  | @as("REBUILDING") #REBUILDING
  | @as("BUILDING") #BUILDING
  | @as("ACTIVE") #ACTIVE
]
type indexSchema = string
type indexName = string
type incrementFactor = float
type inProgressTimeoutInMinutes = float
type inProgressThings = int
type inProgressChecksCount = int
type httpQueryString = string
type httpHeaderValue = string
type httpHeaderName = string
type headerValue = string
type headerKey = string
type hashKeyValue = string
type hashKeyField = string
type hashAlgorithm = string
type genericLongValue = float
type generationId = string
type functionArn = string
type forced = bool
type forceFlag = bool
type forceDeleteAWSJob = bool
type forceDelete = bool
type flag = bool
type firehoseSeparator = string
type findingId = string
type fileType = int
type fileName = string
type fileId = int
type fieldType = [@as("Boolean") #Boolean | @as("String") #String | @as("Number") #Number]
type fieldName = string
type failedThings = int
type failedFindingsCount = float
type failedChecksCount = int
type expiresInSeconds = float
type expiresInSec = float
type expectedVersion = float
type executionNumber = float
type executionNamePrefix = string
type eventType = [
  | @as("CA_CERTIFICATE") #CA_CERTIFICATE
  | @as("CERTIFICATE") #CERTIFICATE
  | @as("POLICY") #POLICY
  | @as("JOB_EXECUTION") #JOB_EXECUTION
  | @as("JOB") #JOB
  | @as("THING_TYPE_ASSOCIATION") #THING_TYPE_ASSOCIATION
  | @as("THING_GROUP_HIERARCHY") #THING_GROUP_HIERARCHY
  | @as("THING_GROUP_MEMBERSHIP") #THING_GROUP_MEMBERSHIP
  | @as("THING_TYPE") #THING_TYPE
  | @as("THING_GROUP") #THING_GROUP
  | @as("THING") #THING
]
type evaluationStatistic = string
type errorMessage2 = string
type errorMessage = string
type errorCode = string
type endpointType = string
type endpointAddress = string
type enabled = bool
type elasticsearchType = string
type elasticsearchIndex = string
type elasticsearchId = string
type elasticsearchEndpoint = string
type dynamoOperation = string
type dynamoKeyType = [@as("NUMBER") #NUMBER | @as("STRING") #STRING]
type dynamicGroupStatus = [
  | @as("REBUILDING") #REBUILDING
  | @as("BUILDING") #BUILDING
  | @as("ACTIVE") #ACTIVE
]
type durationSeconds = int
type domainType = [
  | @as("CUSTOMER_MANAGED") #CUSTOMER_MANAGED
  | @as("AWS_MANAGED") #AWS_MANAGED
  | @as("ENDPOINT") #ENDPOINT
]
type domainName = string
type domainConfigurationStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type domainConfigurationName = string
type domainConfigurationArn = string
type disableAllLogs = bool
type dimensionValueOperator = [@as("NOT_IN") #NOT_IN | @as("IN") #IN]
type dimensionType = [@as("TOPIC_FILTER") #TOPIC_FILTER]
type dimensionStringValue = string
type dimensionName = string
type dimensionArn = string
type deviceDefenderThingName = string
type deviceCertificateUpdateAction = [@as("DEACTIVATE") #DEACTIVATE]
type detectMitigationActionsTaskStatus = [
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("SUCCESSFUL") #SUCCESSFUL
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type detectMitigationActionExecutionStatus = [
  | @as("SKIPPED") #SKIPPED
  | @as("FAILED") #FAILED
  | @as("SUCCESSFUL") #SUCCESSFUL
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type detectMitigationActionExecutionErrorCode = string
type detailsValue = string
type detailsKey = string
type description = string
type deprecationDate = Js.Date.t
type deliveryStreamName = string
type deleteStream_ = bool
type deleteScheduledAudits = bool
type deleteBehaviors = bool
type deleteAlertTargets = bool
type deleteAdditionalMetricsToRetain = bool
type dayOfWeek = [
  | @as("SAT") #SAT
  | @as("FRI") #FRI
  | @as("THU") #THU
  | @as("WED") #WED
  | @as("TUE") #TUE
  | @as("MON") #MON
  | @as("SUN") #SUN
]
type dayOfMonth = string
type dateType = Js.Date.t
type dataCollectionPercentage = float
type customerVersion = int
type customMetricType = [
  | @as("number") #Number
  | @as("number-list") #Number_List
  | @as("ip-address-list") #Ip_Address_List
  | @as("string-list") #String_List
]
type customMetricDisplayName = string
type customMetricArn = string
type credentialDurationSeconds = int
type creationDate = Js.Date.t
type createdAtDate = Js.Date.t
type count = int
type consecutiveDatapointsToClear = int
type consecutiveDatapointsToAlarm = int
type connectivityTimestamp = float
type confirmationToken = string
type confidenceLevel = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type compliantChecksCount = int
type comparisonOperator = [
  | @as("not-in-set") #Not_In_Set
  | @as("in-set") #In_Set
  | @as("not-in-port-set") #Not_In_Port_Set
  | @as("in-port-set") #In_Port_Set
  | @as("not-in-cidr-set") #Not_In_Cidr_Set
  | @as("in-cidr-set") #In_Cidr_Set
  | @as("greater-than-equals") #Greater_Than_Equals
  | @as("greater-than") #Greater_Than
  | @as("less-than-equals") #Less_Than_Equals
  | @as("less-than") #Less_Than
]
type comment = string
type cognitoIdentityPoolId = string
type code = string
type clientRequestToken = string
type clientId = string
type cidr = string
type checkCompliant = bool
type channelName = string
type certificateStatus = [
  | @as("PENDING_ACTIVATION") #PENDING_ACTIVATION
  | @as("REGISTER_INACTIVE") #REGISTER_INACTIVE
  | @as("PENDING_TRANSFER") #PENDING_TRANSFER
  | @as("REVOKED") #REVOKED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]
type certificateSigningRequest = string
@ocaml.doc("<p>The PEM of a certificate.</p>") type certificatePem = string
type certificatePathOnDevice = string
type certificateName = string
type certificateMode = [@as("SNI_ONLY") #SNI_ONLY | @as("DEFAULT") #DEFAULT]
type certificateId = string
type certificateArn = string
type cannedAccessControlList = [
  | @as("log-delivery-write") #Log_Delivery_Write
  | @as("bucket-owner-full-control") #Bucket_Owner_Full_Control
  | @as("bucket-owner-read") #Bucket_Owner_Read
  | @as("authenticated-read") #Authenticated_Read
  | @as("aws-exec-read") #Aws_Exec_Read
  | @as("public-read-write") #Public_Read_Write
  | @as("public-read") #Public_Read
  | @as("private") #Private
]
type canceledThings = int
type canceledFindingsCount = float
type canceledChecksCount = int
type cacertificateUpdateAction = [@as("DEACTIVATE") #DEACTIVATE]
type cacertificateStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type bucketName = string
type booleanKey = bool
type boolean_ = bool
type billingGroupName = string
type billingGroupId = string
type billingGroupDescription = string
type billingGroupArn = string
type behaviorName = string
type behaviorMetric = string
type behaviorCriteriaType = [
  | @as("MACHINE_LEARNING") #MACHINE_LEARNING
  | @as("STATISTICAL") #STATISTICAL
  | @as("STATIC") #STATIC
]
type batchMode = bool
type awsJobTimeoutInProgressTimeoutInMinutes = float
type awsJobRolloutRatePerMinute = int
type awsJobRolloutIncrementFactor = float
type awsJobRateIncreaseCriteriaNumberOfThings = int
type awsJobAbortCriteriaMinimumNumberOfExecutedThings = int
type awsJobAbortCriteriaFailureType = [
  | @as("ALL") #ALL
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("REJECTED") #REJECTED
  | @as("FAILED") #FAILED
]
type awsJobAbortCriteriaAbortThresholdPercentage = float
type awsJobAbortCriteriaAbortAction = [@as("CANCEL") #CANCEL]
type awsIotSqlVersion = string
type awsIotJobId = string
type awsIotJobArn = string
type awsArn = string
type awsAccountId = string
type average = float
type autoRegistrationStatus = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type authorizerStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type authorizerName = string
type authorizerFunctionArn = string
type authorizerArn = string
type authDecision = [
  | @as("IMPLICIT_DENY") #IMPLICIT_DENY
  | @as("EXPLICIT_DENY") #EXPLICIT_DENY
  | @as("ALLOWED") #ALLOWED
]
type auditTaskType = [
  | @as("SCHEDULED_AUDIT_TASK") #SCHEDULED_AUDIT_TASK
  | @as("ON_DEMAND_AUDIT_TASK") #ON_DEMAND_AUDIT_TASK
]
type auditTaskStatus = [
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type auditTaskId = string
type auditNotificationType = [@as("SNS") #SNS]
type auditMitigationActionsTaskStatus = [
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type auditMitigationActionsExecutionStatus = [
  | @as("PENDING") #PENDING
  | @as("SKIPPED") #SKIPPED
  | @as("CANCELED") #CANCELED
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type auditFrequency = [
  | @as("MONTHLY") #MONTHLY
  | @as("BIWEEKLY") #BIWEEKLY
  | @as("WEEKLY") #WEEKLY
  | @as("DAILY") #DAILY
]
type auditFindingSeverity = [
  | @as("LOW") #LOW
  | @as("MEDIUM") #MEDIUM
  | @as("HIGH") #HIGH
  | @as("CRITICAL") #CRITICAL
]
type auditDescription = string
type auditCheckRunStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED_NON_COMPLIANT") #COMPLETED_NON_COMPLIANT
  | @as("COMPLETED_COMPLIANT") #COMPLETED_COMPLIANT
  | @as("CANCELED") #CANCELED
  | @as("WAITING_FOR_DATA_COLLECTION") #WAITING_FOR_DATA_COLLECTION
  | @as("IN_PROGRESS") #IN_PROGRESS
]
@ocaml.doc("<p>An audit check name. Checks must be enabled 
        for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
        of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
        to select which checks are enabled.)</p>")
type auditCheckName = string
type attributeValue = string
type attributeName = string
type attributeKey = string
type assetPropertyTimeInSeconds = string
type assetPropertyStringValue = string
type assetPropertyQuality = string
type assetPropertyOffsetInNanos = string
type assetPropertyIntegerValue = string
type assetPropertyId = string
type assetPropertyEntryId = string
type assetPropertyDoubleValue = string
type assetPropertyBooleanValue = string
type assetPropertyAlias = string
type assetId = string
type ascendingOrder = bool
type approximateSecondsBeforeTimedOut = float
type allowAutoRegistration = bool
type allowAuthorizerOverride = bool
@ocaml.doc("<p>The type of alert target: one of \"SNS\".</p>")
type alertTargetType = [@as("SNS") #SNS]
type alertTargetArn = string
type alarmName = string
type aggregationField = string
type actionType = [
  | @as("CONNECT") #CONNECT
  | @as("RECEIVE") #RECEIVE
  | @as("SUBSCRIBE") #SUBSCRIBE
  | @as("PUBLISH") #PUBLISH
]
type acmCertificateArn = string
type abortThresholdPercentage = float
type abortAction = [@as("CANCEL") #CANCEL]
@ocaml.doc("<p>
            Specifies the time period of which violation events occurred between.
        </p>")
type violationEventOccurrenceRange = {
  @ocaml.doc("<p>
            The end date and time of a time period in which violation events occurred.
        </p>")
  endTime: timestamp_,
  @ocaml.doc("<p>
            The start date and time of a time period in which violation events occurred.
        </p>")
  startTime: timestamp_,
}
@ocaml.doc("<p>
            The details of a violation event.
        </p>")
type violationEventAdditionalInfo = {
  @ocaml.doc("<p>
            The sensitivity of anomalous behavior evaluation. Can be <code>Low</code>, <code>Medium</code>, or <code>High</code>.
        </p>")
  confidenceLevel: option<confidenceLevel>,
}
@ocaml.doc("<p>Information about an error found in a behavior specification.</p>")
type validationError = {
  @ocaml.doc("<p>The description of an error found in the behaviors.</p>")
  errorMessage: option<errorMessage>,
}
@ocaml.doc(
  "<p>Parameters to define a mitigation action that changes the state of the device certificate to inactive.</p>"
)
type updateDeviceCertificateParams = {
  @ocaml.doc(
    "<p>The action that you want to apply to the device certificate. The only supported value is <code>DEACTIVATE</code>.</p>"
  )
  action: deviceCertificateUpdateAction,
}
@ocaml.doc(
  "<p>Parameters to define a mitigation action that changes the state of the CA certificate to inactive.</p>"
)
type updateCACertificateParams = {
  @ocaml.doc(
    "<p>The action that you want to apply to the CA certificate. The only supported value is <code>DEACTIVATE</code>.</p>"
  )
  action: cacertificateUpdateAction,
}
@ocaml.doc("<p>Data used to transfer a certificate to an AWS account.</p>")
type transferData = {
  @ocaml.doc("<p>The date the transfer was rejected.</p>") rejectDate: option<dateType>,
  @ocaml.doc("<p>The date the transfer was accepted.</p>") acceptDate: option<dateType>,
  @ocaml.doc("<p>The date the transfer took place.</p>") transferDate: option<dateType>,
  @ocaml.doc("<p>The reason why the transfer was rejected.</p>") rejectReason: option<message>,
  @ocaml.doc("<p>The transfer message.</p>") transferMessage: option<message>,
}
@ocaml.doc("<p>Describes a rule.</p>")
type topicRuleListItem = {
  @ocaml.doc("<p>Specifies whether the rule is disabled.</p>") ruleDisabled: option<isDisabled>,
  @ocaml.doc("<p>The date and time the rule was created.</p>") createdAt: option<createdAtDate>,
  @ocaml.doc("<p>The pattern for the topic names that apply.</p>")
  topicPattern: option<topicPattern>,
  @ocaml.doc("<p>The name of the rule.</p>") ruleName: option<ruleName>,
  @ocaml.doc("<p>The rule ARN.</p>") ruleArn: option<ruleArn>,
}
@ocaml.doc("<p>Specifies the TLS context to use for the test authorizer request.</p>")
type tlsContext = {
  @ocaml.doc("<p>The value of the <code>serverName</code> key in a TLS authorization request.</p>")
  serverName: option<serverName>,
}
@ocaml.doc("<p>Describes how to interpret an application-defined timestamp value from an MQTT message
         payload and the precision of that value.</p>")
type timestreamTimestamp = {
  @ocaml.doc("<p>The precision of the timestamp value that results from the expression
         described in <code>value</code>.</p>
         <p>Valid values:  <code>SECONDS</code> | <code>MILLISECONDS</code> |
            <code>MICROSECONDS</code> | <code>NANOSECONDS</code>. The default is
            <code>MILLISECONDS</code>.</p>")
  @as("unit")
  unit_: timestreamTimestampUnit,
  @ocaml.doc("<p>An expression that returns a long epoch time value.</p>")
  value: timestreamTimestampValue,
}
@ocaml.doc("<p>Metadata attributes of the time series that are written in each measure record.</p>")
type timestreamDimension = {
  @ocaml.doc("<p>The value to write in this column of the database record.</p>")
  value: timestreamDimensionValue,
  @ocaml.doc("<p>The metadata dimension name. This is the name of the column in the
         Amazon Timestream database table record.</p>
         <p>Dimensions cannot be named: <code>measure_name</code>,
         <code>measure_value</code>, or <code>time</code>.
         These  names are reserved. Dimension names cannot start
         with <code>ts_</code> or <code>measure_value</code> and
         they cannot contain the colon (<code>:</code>)
         character.</p>")
  name: timestreamDimensionName,
}
@ocaml.doc("<p>Specifies the amount of time each device has to finish its execution of the job.  A timer 
           is started when the job execution status is set to <code>IN_PROGRESS</code>. If the job 
           execution status is not set to another terminal state before the timer expires, it will
           be automatically set to <code>TIMED_OUT</code>.</p>")
type timeoutConfig = {
  @ocaml.doc("<p>Specifies the amount of time, in minutes, this device has to finish execution of this job.  
           The timeout interval can be anywhere between 1 minute and 7 days (1 to 10080 minutes). The 
           in progress timer can't be updated and will apply to all job executions for the job. Whenever a job 
           execution remains in the IN_PROGRESS status for longer than this interval, the job execution will fail 
           and switch to the terminal <code>TIMED_OUT</code> status.</p>")
  inProgressTimeoutInMinutes: option<inProgressTimeoutInMinutes>,
}
@ocaml.doc("<p>The ThingTypeMetadata contains additional information about the thing type including: creation date and
			time, a value indicating whether the thing type is deprecated, and a date and time when time was
			deprecated.</p>")
type thingTypeMetadata = {
  @ocaml.doc("<p>The date and time when the thing type was created.</p>")
  creationDate: option<creationDate>,
  @ocaml.doc("<p>The date and time when the thing type was deprecated.</p>")
  deprecationDate: option<deprecationDate>,
  @ocaml.doc("<p>Whether the thing type is deprecated. If <b>true</b>, no new things could be
			associated with this type.</p>")
  deprecated: option<boolean_>,
}
type thingNameList = array<thingName>
type thingGroupNames = array<thingGroupName>
type thingGroupNameList = array<thingGroupName>
type thingGroupList = array<thingGroupName>
@ocaml.doc("<p>The connectivity status of the thing.</p>")
type thingConnectivity = {
  @ocaml.doc("<p>The epoch time (in milliseconds) when the thing last connected or disconnected. If the
      thing has been disconnected for more than a few weeks, the time value might be missing.</p>")
  @as("timestamp")
  timestamp_: option<connectivityTimestamp>,
  @ocaml.doc("<p>True if the thing is connected to the AWS IoT service; false if it is not
      connected.</p>")
  connected: option<boolean_>,
}
@ocaml.doc(
  "<p>Provides summary counts of how many tasks for findings are in a particular state. This information is included in the response from DescribeAuditMitigationActionsTask.</p>"
)
type taskStatisticsForAuditCheck = {
  @ocaml.doc(
    "<p>The number of findings to which the mitigation action task was canceled when applied.</p>"
  )
  canceledFindingsCount: option<canceledFindingsCount>,
  @ocaml.doc(
    "<p>The number of findings skipped because of filter conditions provided in the parameters to the command.</p>"
  )
  skippedFindingsCount: option<skippedFindingsCount>,
  @ocaml.doc(
    "<p>The number of findings for which all mitigation actions succeeded when applied.</p>"
  )
  succeededFindingsCount: option<succeededFindingsCount>,
  @ocaml.doc(
    "<p>The number of findings for which at least one of the actions failed when applied.</p>"
  )
  failedFindingsCount: option<failedFindingsCount>,
  @ocaml.doc("<p>The total number of findings to which a task is being applied.</p>")
  totalFindingsCount: option<totalFindingsCount>,
}
@ocaml.doc("<p>Statistics for the checks performed during the audit.</p>")
type taskStatistics = {
  @ocaml.doc("<p>The number of checks that did not run because the audit was canceled.</p>")
  canceledChecks: option<canceledChecksCount>,
  @ocaml.doc("<p>The number of checks.</p>") failedChecks: option<failedChecksCount>,
  @ocaml.doc("<p>The number of checks that found noncompliant resources.</p>")
  nonCompliantChecks: option<nonCompliantChecksCount>,
  @ocaml.doc("<p>The number of checks that found compliant resources.</p>")
  compliantChecks: option<compliantChecksCount>,
  @ocaml.doc("<p>The number of checks waiting for data collection.</p>")
  waitingForDataCollectionChecks: option<waitingForDataCollectionChecksCount>,
  @ocaml.doc("<p>The number of checks in progress.</p>")
  inProgressChecks: option<inProgressChecksCount>,
  @ocaml.doc("<p>The number of checks in this audit.</p>") totalChecks: option<totalChecksCount>,
}
type taskIdList = array<taskId>
type targets = array<target>
type targetViolationIdsForDetectMitigationActions = array<violationId>
type targetAuditCheckNames = array<auditCheckName>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A set of key/value pairs that are used to manage the resource.</p>")
type tag = {
  @ocaml.doc("<p>The tag's value.</p>") @as("Value") value: option<tagValue>,
  @ocaml.doc("<p>The tag's key.</p>") @as("Key") key: tagKey,
}
type subnetIdList = array<subnetId>
type stringMap = Js.Dict.t<string_>
type stringList = array<stringValue>
@ocaml.doc("<p>A summary of a stream.</p>")
type streamSummary = {
  @ocaml.doc("<p>A description of the stream.</p>") description: option<streamDescription>,
  @ocaml.doc("<p>The stream version.</p>") streamVersion: option<streamVersion>,
  @ocaml.doc("<p>The stream ARN.</p>") streamArn: option<streamArn>,
  @ocaml.doc("<p>The stream ID.</p>") streamId: option<streamId>,
}
@ocaml.doc("<p>Describes a group of files that can be streamed.</p>")
type stream = {
  @ocaml.doc("<p>The ID of a file associated with a stream.</p>") fileId: option<fileId>,
  @ocaml.doc("<p>The stream ID.</p>") streamId: option<streamId>,
}
@ocaml.doc("<p>Starts execution of a Step Functions state machine.</p>")
type stepFunctionsAction = {
  @ocaml.doc("<p>The ARN of the role that grants IoT permission to start execution of a state machine
      (\"Action\":\"states:StartExecution\").</p>")
  roleArn: awsArn,
  @ocaml.doc("<p>The name of the Step Functions state machine whose execution will be started.</p>")
  stateMachineName: stateMachineName,
  @ocaml.doc("<p>(Optional) A name will be given to the state machine execution consisting of this
      prefix followed by a UUID. Step Functions automatically creates a unique name for each state
      machine execution if one is not provided.</p>")
  executionNamePrefix: option<executionNamePrefix>,
}
@ocaml.doc("<p>A map of key-value pairs for all supported statistics. Currently, only count is
      supported.</p>")
type statistics = {
  @ocaml.doc("<p>The standard deviation of the aggregated field values.</p>")
  stdDeviation: option<stdDeviation>,
  @ocaml.doc("<p>The variance of the aggregated field values.</p>") variance: option<variance>,
  @ocaml.doc("<p>The sum of the squares of the aggregated field values.</p>")
  sumOfSquares: option<sumOfSquares>,
  @ocaml.doc("<p>The maximum aggregated field value.</p>") maximum: option<maximum>,
  @ocaml.doc("<p>The minimum aggregated field value.</p>") minimum: option<minimum>,
  @ocaml.doc("<p>The sum of the aggregated field values.</p>") sum: option<sum>,
  @ocaml.doc("<p>The average of the aggregated field values.</p>") average: option<average>,
  @ocaml.doc("<p>The count of things that match the query.</p>") count: option<count>,
}
@ocaml.doc("<p>A statistical ranking (percentile) that
      indicates a threshold value by which a behavior is determined to be in compliance or in
      violation of the behavior.</p>")
type statisticalThreshold = {
  @ocaml.doc("<p>The percentile that
      resolves to a threshold value by which compliance with a behavior is determined. Metrics are
      collected over the specified period (<code>durationSeconds</code>) from all reporting devices
      in your account and statistical ranks are calculated. Then, the measurements from a device are
      collected over the same period. If the accumulated measurements from the device fall above or
      below (<code>comparisonOperator</code>) the value associated with the percentile specified,
      then the device is considered to be in compliance with the behavior, otherwise a violation
      occurs.</p>")
  statistic: option<evaluationStatistic>,
}
@ocaml.doc("<p>Describes an action to publish data to an Amazon SQS queue.</p>")
type sqsAction = {
  @ocaml.doc("<p>Specifies whether to use Base64 encoding.</p>") useBase64: option<useBase64>,
  @ocaml.doc("<p>The URL of the Amazon SQS queue.</p>") queueUrl: queueUrl,
  @ocaml.doc("<p>The ARN of the IAM role that grants access.</p>") roleArn: awsArn,
}
@ocaml.doc("<p>Describes an action to publish to an Amazon SNS topic.</p>")
type snsAction = {
  @ocaml.doc("<p>(Optional) The message format of the message to publish. Accepted values are \"JSON\"
         and \"RAW\". The default value of the attribute is \"RAW\". SNS uses this setting to determine
         if the payload should be parsed and relevant platform-specific bits of the payload should
         be extracted. To read more about SNS message formats, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/json-formats.html\">https://docs.aws.amazon.com/sns/latest/dg/json-formats.html</a> refer to their official documentation.</p>")
  messageFormat: option<messageFormat>,
  @ocaml.doc("<p>The ARN of the IAM role that grants access.</p>") roleArn: awsArn,
  @ocaml.doc("<p>The ARN of the SNS topic.</p>") targetArn: awsArn,
}
@ocaml.doc("<p>Describes the code-signing profile.</p>")
type signingProfileParameter = {
  @ocaml.doc("<p>The location of the code-signing certificate on your device.</p>")
  certificatePathOnDevice: option<certificatePathOnDevice>,
  @ocaml.doc("<p>The hardware platform of your device.</p>") platform: option<platform>,
  @ocaml.doc("<p>Certificate ARN.</p>") certificateArn: option<certificateArn>,
}
@ocaml.doc(
  "<p>For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 signing process</a>.</p>"
)
type sigV4Authorization = {
  @ocaml.doc("<p>The ARN of the signing role.</p>") roleArn: awsArn,
  @ocaml.doc("<p>The service name to use while signing with Sig V4.</p>") serviceName: serviceName,
  @ocaml.doc("<p>The signing region.</p>") signingRegion: signingRegion,
}
@ocaml.doc("<p>An object that contains information about a server certificate.</p>")
type serverCertificateSummary = {
  @ocaml.doc("<p>Details that explain the status of the server certificate.</p>")
  serverCertificateStatusDetail: option<serverCertificateStatusDetail>,
  @ocaml.doc("<p>The status of the server certificate.</p>")
  serverCertificateStatus: option<serverCertificateStatus>,
  @ocaml.doc("<p>The ARN of the server certificate.</p>")
  serverCertificateArn: option<acmCertificateArn>,
}
type serverCertificateArns = array<acmCertificateArn>
@ocaml.doc("<p>A target to which an alert is sent when a security profile behavior is 
          violated.</p>")
type securityProfileTarget = {
  @ocaml.doc("<p>The ARN of the security profile.</p>") arn: securityProfileTargetArn,
}
@ocaml.doc("<p>Identifying information for a Device Defender security profile.</p>")
type securityProfileIdentifier = {
  @ocaml.doc("<p>The ARN of the security profile.</p>") arn: securityProfileArn,
  @ocaml.doc("<p>The name you've given to the security profile.</p>") name: securityProfileName,
}
type securityGroupList = array<securityGroupId>
type searchableAttributes = array<attributeName>
@ocaml.doc("<p>Information about the scheduled audit.</p>")
type scheduledAuditMetadata = {
  @ocaml.doc("<p>The day of the week on which the scheduled audit is run (if the
          <code>frequency</code> is \"WEEKLY\" or \"BIWEEKLY\").</p>")
  dayOfWeek: option<dayOfWeek>,
  @ocaml.doc("<p>The day of the month on which the scheduled audit is run (if the
          <code>frequency</code> is \"MONTHLY\").
        If days 29-31 are specified, and the month does not have that many
        days, the audit takes place on the \"LAST\" day of the month.</p>")
  dayOfMonth: option<dayOfMonth>,
  @ocaml.doc("<p>How often the scheduled audit occurs.</p>") frequency: option<auditFrequency>,
  @ocaml.doc("<p>The ARN of the scheduled audit.</p>") scheduledAuditArn: option<scheduledAuditArn>,
  @ocaml.doc("<p>The name of the scheduled audit.</p>")
  scheduledAuditName: option<scheduledAuditName>,
}
@ocaml.doc("<p>Describes an action to write a message to a Salesforce IoT Cloud Input
         Stream.</p>")
type salesforceAction = {
  @ocaml.doc("<p>The URL exposed by the Salesforce IoT Cloud Input Stream. The URL is available from
         the Salesforce IoT Cloud platform after creation of the Input Stream.</p>")
  url: salesforceEndpoint,
  @ocaml.doc("<p>The token used to authenticate access to the Salesforce IoT Cloud Input Stream. The
         token is available from the Salesforce IoT Cloud platform after creation of the Input
         Stream.</p>")
  token: salesforceToken,
}
@ocaml.doc("<p>The S3 location.</p>")
type s3Location = {
  @ocaml.doc("<p>The S3 bucket version.</p>") version: option<s3Version>,
  @ocaml.doc("<p>The S3 key.</p>") key: option<s3Key>,
  @ocaml.doc("<p>The S3 bucket.</p>") bucket: option<s3Bucket>,
}
type s3FileUrlList = array<s3FileUrl>
@ocaml.doc("<p>Describes the location of updated firmware in S3.</p>")
type s3Destination = {
  @ocaml.doc("<p>The S3 prefix.</p>") prefix: option<prefix>,
  @ocaml.doc("<p>The S3 bucket that contains the updated firmware.</p>") bucket: option<s3Bucket>,
}
@ocaml.doc("<p>Describes an action to write data to an Amazon S3 bucket.</p>")
type s3Action = {
  @ocaml.doc("<p>The Amazon S3 canned ACL that controls access to the object identified by the object
         key. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl\">S3 canned ACLs</a>.</p>")
  cannedAcl: option<cannedAccessControlList>,
  @ocaml.doc(
    "<p>The object key. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/list_amazons3.html\">Actions, resources, and condition keys for Amazon S3</a>.</p>"
  )
  key: key,
  @ocaml.doc("<p>The Amazon S3 bucket.</p>") bucketName: bucketName,
  @ocaml.doc("<p>The ARN of the IAM role that grants access.</p>") roleArn: awsArn,
}
type roleAliases = array<roleAlias>
@ocaml.doc("<p>Role alias description.</p>")
type roleAliasDescription = {
  @ocaml.doc("<p>The UNIX timestamp of when the role alias was last modified.</p>")
  lastModifiedDate: option<dateType>,
  @ocaml.doc("<p>The UNIX timestamp of when the role alias was created.</p>")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The number of seconds for which the credential is valid.</p>")
  credentialDurationSeconds: option<credentialDurationSeconds>,
  @ocaml.doc("<p>The role alias owner.</p>") owner: option<awsAccountId>,
  @ocaml.doc("<p>The role ARN.</p>") roleArn: option<roleArn>,
  @ocaml.doc("<p>The ARN of the role alias.</p>") roleAliasArn: option<roleAliasArn>,
  @ocaml.doc("<p>The role alias.</p>") roleAlias: option<roleAlias>,
}
type resources = array<resource>
type resourceArns = Js.Dict.t<resourceArn>
@ocaml.doc("<p>Describes an action to republish to another topic.</p>")
type republishAction = {
  @ocaml.doc("<p>The Quality of Service (QoS) level to use when republishing messages. The default value
         is 0.</p>")
  qos: option<qos>,
  @ocaml.doc("<p>The name of the MQTT topic.</p>") topic: topicPattern,
  @ocaml.doc("<p>The ARN of the IAM role that grants access.</p>") roleArn: awsArn,
}
@ocaml.doc(
  "<p>Parameters to define a mitigation action that adds a blank policy to restrict permissions.</p>"
)
type replaceDefaultPolicyVersionParams = {
  @ocaml.doc(
    "<p>The name of the template to be applied. The only supported value is <code>BLANK_POLICY</code>.</p>"
  )
  templateName: policyTemplateName,
}
@ocaml.doc("<p>The registration configuration.</p>")
type registrationConfig = {
  @ocaml.doc("<p>The ARN of the role.</p>") roleArn: option<roleArn>,
  @ocaml.doc("<p>The template body.</p>") templateBody: option<templateBody>,
}
type reasonForNonComplianceCodes = array<reasonForNonComplianceCode>
@ocaml.doc(
  "<p>Allows you to define a criteria to initiate the increase in rate of rollout for a job.</p>"
)
type rateIncreaseCriteria = {
  @ocaml.doc(
    "<p>The threshold for number of succeeded things that will initiate the increase in rate of rollout.</p>"
  )
  numberOfSucceededThings: option<numberOfThings>,
  @ocaml.doc(
    "<p>The threshold for number of notified things that will initiate the increase in rate of rollout.</p>"
  )
  numberOfNotifiedThings: option<numberOfThings>,
}
@ocaml.doc("<p>The input for the DynamoActionVS action that specifies the DynamoDB table to which
         the message data will be written.</p>")
type putItemInput = {
  @ocaml.doc("<p>The table where the message data will be written.</p>") tableName: tableName,
}
@ocaml.doc(
  "<p>Parameters to define a mitigation action that publishes findings to Amazon SNS. You can implement your own custom actions in response to the Amazon SNS messages.</p>"
)
type publishFindingToSnsParams = {
  @ocaml.doc("<p>The ARN of the topic to which you want to publish the findings.</p>")
  topicArn: snsTopicArn,
}
type publicKeyMap = Js.Dict.t<keyValue>
@ocaml.doc("<p>A summary of information about a fleet provision template version.</p>")
type provisioningTemplateVersionSummary = {
  @ocaml.doc("<p>True if the fleet provisioning template version is the default version, otherwise
         false.</p>")
  isDefaultVersion: option<isDefaultVersion>,
  @ocaml.doc("<p>The date when the fleet provisioning template version was created</p>")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The ID of the fleet privisioning template version.</p>")
  versionId: option<templateVersionId>,
}
@ocaml.doc("<p>A summary of information about a fleet provisioning template.</p>")
type provisioningTemplateSummary = {
  @ocaml.doc("<p>True if the fleet provision template is enabled, otherwise false.</p>")
  enabled: option<enabled>,
  @ocaml.doc("<p>The date when the fleet provisioning template summary was last modified.</p>")
  lastModifiedDate: option<dateType>,
  @ocaml.doc("<p>The date when the fleet provisioning template summary was created.</p>")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The description of the fleet provisioning template.</p>")
  description: option<templateDescription>,
  @ocaml.doc("<p>The name of the fleet provisioning template.</p>")
  templateName: option<templateName>,
  @ocaml.doc("<p>The ARN of the fleet provisioning template.</p>") templateArn: option<templateArn>,
}
@ocaml.doc("<p>Structure that contains <code>payloadVersion</code> and
         <code>targetArn</code>.</p>")
type provisioningHook = {
  @ocaml.doc("<p>The ARN of the target function.</p>
         <p>
            <i>Note:</i> Only Lambda functions are currently supported.</p>")
  targetArn: targetArn,
  @ocaml.doc("<p>The payload that was sent to the target function.</p>
         <p>
            <i>Note:</i> Only Lambda functions are currently supported.</p>")
  payloadVersion: option<payloadVersion>,
}
type protocols = array<protocol>
type processingTargetNameList = array<processingTargetName>
type principals = array<principalArn>
@ocaml.doc("<p>Configuration for pre-signed S3 URLs.</p>")
type presignedUrlConfig = {
  @ocaml.doc("<p>How long (in seconds) pre-signed URLs are valid. Valid values are 60 - 3600, the default value is 3600
            seconds. Pre-signed URLs are generated when Jobs receives an MQTT request for the job document.</p>")
  expiresInSec: option<expiresInSec>,
  @ocaml.doc("<p>The ARN of an IAM role that grants grants permission to download files from the S3 bucket where the job
            data/updates are stored. The role must also grant permission for IoT to download the files.</p>")
  roleArn: option<roleArn>,
}
type ports = array<port>
@ocaml.doc("<p>Information about the version of the policy associated with the resource.</p>")
type policyVersionIdentifier = {
  @ocaml.doc("<p>The ID of the version of the policy associated with the resource.</p>")
  policyVersionId: option<policyVersionId>,
  @ocaml.doc("<p>The name of the policy.</p>") policyName: option<policyName>,
}
@ocaml.doc("<p>Describes a policy version.</p>")
type policyVersion = {
  @ocaml.doc("<p>The date and time the policy was created.</p>") createDate: option<dateType>,
  @ocaml.doc("<p>Specifies whether the policy version is the default.</p>")
  isDefaultVersion: option<isDefaultVersion>,
  @ocaml.doc("<p>The policy version ID.</p>") versionId: option<policyVersionId>,
}
type policyTargets = array<policyTarget>
type policyNames = array<policyName>
type policyDocuments = array<policyDocument>
@ocaml.doc("<p>Describes an AWS IoT policy.</p>")
type policy = {
  @ocaml.doc("<p>The policy ARN.</p>") policyArn: option<policyArn>,
  @ocaml.doc("<p>The policy name.</p>") policyName: option<policyName>,
}
@ocaml.doc("<p>Describes the percentile and percentile value.</p>")
type percentPair = {
  @ocaml.doc("<p>The value of the percentile.</p>") value: option<percentValue>,
  @ocaml.doc("<p>The percentile.</p>") percent: option<percent>,
}
type percentList = array<percent>
type parameters = Js.Dict.t<value>
@ocaml.doc("<p>A certificate that has been transferred but not yet accepted.</p>")
type outgoingCertificate = {
  @ocaml.doc("<p>The certificate creation date.</p>") creationDate: option<dateType>,
  @ocaml.doc("<p>The transfer message.</p>") transferMessage: option<message>,
  @ocaml.doc("<p>The date the transfer was initiated.</p>") transferDate: option<dateType>,
  @ocaml.doc("<p>The AWS account to which the transfer was made.</p>")
  transferredTo: option<awsAccountId>,
  @ocaml.doc("<p>The certificate ID.</p>") certificateId: option<certificateId>,
  @ocaml.doc("<p>The certificate ARN.</p>") certificateArn: option<certificateArn>,
}
@ocaml.doc("<p>An OTA update summary.</p>")
type otaupdateSummary = {
  @ocaml.doc("<p>The date when the OTA update was created.</p>") creationDate: option<dateType>,
  @ocaml.doc("<p>The OTA update ARN.</p>") otaUpdateArn: option<otaupdateArn>,
  @ocaml.doc("<p>The OTA update ID.</p>") otaUpdateId: option<otaupdateId>,
}
type numberList = array<number>
@ocaml.doc("<p>Specifies the MQTT context to use for the test authorizer request</p>")
type mqttContext = {
  @ocaml.doc("<p>The value of the <code>clientId</code> key in an MQTT authorization request.</p>")
  clientId: option<mqttClientId>,
  @ocaml.doc("<p>The value of the <code>password</code> key in an MQTT authorization request.</p>")
  password: option<mqttPassword>,
  @ocaml.doc("<p>The value of the <code>username</code> key in an MQTT authorization request.</p>")
  username: option<mqttUsername>,
}
type mitigationActionNameList = array<mitigationActionName>
@ocaml.doc(
  "<p>Information that identifies a mitigation action. This information is returned by ListMitigationActions.</p>"
)
type mitigationActionIdentifier = {
  @ocaml.doc("<p>The date when this mitigation action was created.</p>")
  creationDate: option<timestamp_>,
  @ocaml.doc("<p>The IAM role ARN used to apply this mitigation action.</p>")
  actionArn: option<mitigationActionArn>,
  @ocaml.doc("<p>The friendly name of the mitigation action.</p>")
  actionName: option<mitigationActionName>,
}
type missingContextValues = array<missingContextValue>
type metricNames = array<metricName>
@ocaml.doc("<p>The dimension of a metric.</p>")
type metricDimension = {
  @ocaml.doc(
    "<p>Defines how the <code>dimensionValues</code> of a dimension are interpreted. For example, for dimension type TOPIC_FILTER, the <code>IN</code> operator, a message will be counted only if its topic matches one of the topic filters. With <code>NOT_IN</code> operator, a message will be counted only if it doesn't match any of the topic filters. The operator is optional: if it's not provided (is <code>null</code>), it will be interpreted as <code>IN</code>.</p>"
  )
  operator: option<dimensionValueOperator>,
  @ocaml.doc("<p>A unique identifier for the dimension.</p>") dimensionName: dimensionName,
}
@ocaml.doc("<p>
            The configuration of an ML Detect Security Profile.
        </p>")
type machineLearningDetectionConfig = {
  @ocaml.doc("<p>
            The sensitivity of anomalous behavior evaluation. Can be <code>Low</code>, <code>Medium</code>, or <code>High</code>.
        </p>")
  confidenceLevel: confidenceLevel,
}
@ocaml.doc("<p>Describes the logging options payload.</p>")
type loggingOptionsPayload = {
  @ocaml.doc("<p>The log level.</p>") logLevel: option<logLevel>,
  @ocaml.doc("<p>The ARN of the IAM role that grants access.</p>") roleArn: awsArn,
}
@ocaml.doc("<p>A log target.</p>")
type logTarget = {
  @ocaml.doc("<p>The target name.</p>") targetName: option<logTargetName>,
  @ocaml.doc("<p>The target type.</p>") targetType: logTargetType,
}
@ocaml.doc("<p>Describes an action to invoke a Lambda function.</p>")
type lambdaAction = {@ocaml.doc("<p>The ARN of the Lambda function.</p>") functionArn: functionArn}
@ocaml.doc("<p>Describes an action to write data to an Amazon Kinesis stream.</p>")
type kinesisAction = {
  @ocaml.doc("<p>The partition key.</p>") partitionKey: option<partitionKey>,
  @ocaml.doc("<p>The name of the Amazon Kinesis stream.</p>") streamName: streamName,
  @ocaml.doc("<p>The ARN of the IAM role that grants access to the Amazon Kinesis stream.</p>")
  roleArn: awsArn,
}
@ocaml.doc("<p>Describes a key pair.</p>")
type keyPair = {
  @ocaml.doc("<p>The private key.</p>") @as("PrivateKey") privateKey: option<privateKey>,
  @ocaml.doc("<p>The public key.</p>") @as("PublicKey") publicKey: option<publicKey>,
}
@ocaml.doc("<p>An object that contains information about the job template.</p>")
type jobTemplateSummary = {
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job template was created.</p>")
  createdAt: option<dateType>,
  @ocaml.doc("<p>A description of the job template.</p>") description: option<jobDescription>,
  @ocaml.doc("<p>The unique identifier of the job template.</p>")
  jobTemplateId: option<jobTemplateId>,
  @ocaml.doc("<p>The ARN of the job template.</p>") jobTemplateArn: option<jobTemplateArn>,
}
type jobTargets = array<targetArn>
@ocaml.doc("<p>The job summary.</p>")
type jobSummary = {
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job completed.</p>")
  completedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job was last updated.</p>")
  lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job was created.</p>")
  createdAt: option<dateType>,
  @ocaml.doc("<p>The job summary status.</p>") status: option<jobStatus>,
  @ocaml.doc("<p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things
            specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing
            when a change is detected in a target. For example, a job will run on a thing when the thing is added to a
            target group, even after the job was completed by all things originally in the group.</p>")
  targetSelection: option<targetSelection>,
  @ocaml.doc("<p>The ID of the thing group.</p>") thingGroupId: option<thingGroupId>,
  @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
  jobId: option<jobId>,
  @ocaml.doc("<p>The job ARN.</p>") jobArn: option<jobArn>,
}
@ocaml.doc("<p>The job execution summary.</p>")
type jobExecutionSummary = {
  @ocaml.doc("<p>A string (consisting of the digits \"0\" through \"9\") which identifies this particular job execution on
            this particular device. It can be used later in commands which return or update job execution
            information.</p>")
  executionNumber: option<executionNumber>,
  @ocaml.doc(
    "<p>The time, in seconds since the epoch, when the job execution was last updated.</p>"
  )
  lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job execution started.</p>")
  startedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job execution was queued.</p>")
  queuedAt: option<dateType>,
  @ocaml.doc("<p>The status of the job execution.</p>") status: option<jobExecutionStatus>,
}
@ocaml.doc("<p>Sends an input to an AWS IoT Events detector.</p>")
type iotEventsAction = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT permission to send an input to an AWS IoT
      Events detector. (\"Action\":\"iotevents:BatchPutMessage\").</p>")
  roleArn: awsArn,
  @ocaml.doc("<p>Whether to process the event actions as a batch. The default value is
            <code>false</code>.</p>
         <p>When <code>batchMode</code> is <code>true</code>, you can't specify a
            <code>messageId</code>. </p>
         <p>When <code>batchMode</code> is <code>true</code> and the rule SQL statement evaluates
         to an Array, each Array element is treated as a separate message when it's sent to AWS IoT
         Events by calling <a href=\"https://docs.aws.amazon.com/iotevents/latest/apireference/API_iotevents-data_BatchPutMessage.html\">
               <code>BatchPutMessage</code>
            </a>.  The resulting array can't have more
         than 10 messages.</p>")
  batchMode: option<batchMode>,
  @ocaml.doc("<p>The ID of the message. The default <code>messageId</code> is a new UUID value.</p>
         <p>When <code>batchMode</code> is <code>true</code>, you can't specify a
        <code>messageId</code>--a new UUID value will be assigned.</p>
         <p>Assign a value to this property to ensure that only one input (message) with a given
            <code>messageId</code> will be processed by an AWS IoT Events detector.</p>")
  messageId: option<messageId>,
  @ocaml.doc("<p>The name of the AWS IoT Events input.</p>") inputName: inputName,
}
@ocaml.doc("<p>Sends message data to an AWS IoT Analytics channel.</p>")
type iotAnalyticsAction = {
  @ocaml.doc("<p>The ARN of the role which has a policy that grants IoT Analytics permission to send
         message data via IoT Analytics (iotanalytics:BatchPutMessage).</p>")
  roleArn: option<awsArn>,
  @ocaml.doc("<p>Whether to process the action as a batch. The default value is
         <code>false</code>.</p>
         <p>When <code>batchMode</code> is <code>true</code> and the rule SQL statement evaluates
         to an Array, each Array element is delivered as a separate message when passed by <a href=\"https://docs.aws.amazon.com/iotanalytics/latest/APIReference/API_BatchPutMessage.html\">
               <code>BatchPutMessage</code>
            </a> to the AWS IoT Analytics channel. The resulting array can't have more
         than 100 messages.</p>")
  batchMode: option<batchMode>,
  @ocaml.doc("<p>The name of the IoT Analytics channel to which message data will be sent.</p>")
  channelName: option<channelName>,
  @ocaml.doc("<p>(deprecated) The ARN of the IoT Analytics channel to which message data will be
         sent.</p>")
  channelArn: option<awsArn>,
}
type indexNamesList = array<indexName>
@ocaml.doc("<p>Information about an HTTP URL destination.</p>")
type httpUrlDestinationSummary = {
  @ocaml.doc("<p>The URL used to confirm ownership of or access to the HTTP topic rule destination
         URL.</p>")
  confirmationUrl: option<url>,
}
@ocaml.doc("<p>HTTP URL destination properties.</p>")
type httpUrlDestinationProperties = {
  @ocaml.doc("<p>The URL used to confirm the HTTP topic rule destination URL.</p>")
  confirmationUrl: option<url>,
}
@ocaml.doc("<p>HTTP URL destination configuration used by the topic rule's HTTP action.</p>")
type httpUrlDestinationConfiguration = {
  @ocaml.doc("<p>The URL AWS IoT uses to confirm ownership of or access to the topic rule destination
         URL.</p>")
  confirmationUrl: url,
}
type httpHeaders = Js.Dict.t<httpHeaderValue>
@ocaml.doc("<p>The HTTP action header.</p>")
type httpActionHeader = {
  @ocaml.doc("<p>The HTTP header value. Substitution templates are supported.</p>")
  value: headerValue,
  @ocaml.doc("<p>The HTTP header key.</p>") key: headerKey,
}
@ocaml.doc("<p>The name and ARN of a group.</p>")
type groupNameAndArn = {
  @ocaml.doc("<p>The group ARN.</p>") groupArn: option<thingGroupArn>,
  @ocaml.doc("<p>The group name.</p>") groupName: option<thingGroupName>,
}
@ocaml.doc("<p>Describes an action that writes data to an Amazon Kinesis Firehose stream.</p>")
type firehoseAction = {
  @ocaml.doc("<p>Whether to deliver the Kinesis Data Firehose stream as a batch by using <a href=\"https://docs.aws.amazon.com/firehose/latest/APIReference/API_PutRecordBatch.html\">
               <code>PutRecordBatch</code>
            </a>.  The default value is
         <code>false</code>.</p>
         <p>When <code>batchMode</code> is <code>true</code> and the rule's SQL statement
         evaluates to an Array, each Array element forms one record in the <a href=\"https://docs.aws.amazon.com/firehose/latest/APIReference/API_PutRecordBatch.html\">
               <code>PutRecordBatch</code>
            </a> request. The resulting array can't have more
         than 500 records.</p>")
  batchMode: option<batchMode>,
  @ocaml.doc("<p>A character separator that will be used to separate records written to the Firehose
         stream. Valid values are: '\\n' (newline), '\\t' (tab), '\\r\\n' (Windows newline), ','
         (comma).</p>")
  separator: option<firehoseSeparator>,
  @ocaml.doc("<p>The delivery stream name.</p>") deliveryStreamName: deliveryStreamName,
  @ocaml.doc("<p>The IAM role that grants access to the Amazon Kinesis Firehose stream.</p>")
  roleArn: awsArn,
}
type findingIds = array<findingId>
@ocaml.doc("<p>Describes the name and data type at a field.</p>")
type field = {
  @ocaml.doc("<p>The datatype of the field.</p>") @as("type") type_: option<fieldType>,
  @ocaml.doc("<p>The name of the field.</p>") name: option<fieldName>,
}
@ocaml.doc("<p>Error information.</p>")
type errorInfo = {
  @ocaml.doc("<p>The error message.</p>") message: option<otaupdateErrorMessage>,
  @ocaml.doc("<p>The error code.</p>") code: option<code>,
}
@ocaml.doc("<p>Parameters used when defining a mitigation action that enable AWS IoT logging.</p>")
type enableIoTLoggingParams = {
  @ocaml.doc("<p>Specifies the type of information to be logged.</p>") logLevel: logLevel,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used for logging.</p>")
  roleArnForLogging: roleArn,
}
@ocaml.doc("<p>Describes an action that writes data to an Amazon Elasticsearch Service
         domain.</p>")
type elasticsearchAction = {
  @ocaml.doc("<p>The unique identifier for the document you are storing.</p>") id: elasticsearchId,
  @ocaml.doc("<p>The type of document you are storing.</p>") @as("type") type_: elasticsearchType,
  @ocaml.doc("<p>The Elasticsearch index where you want to store your data.</p>")
  index: elasticsearchIndex,
  @ocaml.doc("<p>The endpoint of your Elasticsearch domain.</p>") endpoint: elasticsearchEndpoint,
  @ocaml.doc("<p>The IAM role ARN that has access to Elasticsearch.</p>") roleArn: awsArn,
}
@ocaml.doc("<p>The policy that has the effect on the authorization results.</p>")
type effectivePolicy = {
  @ocaml.doc("<p>The IAM policy document.</p>") policyDocument: option<policyDocument>,
  @ocaml.doc("<p>The policy ARN.</p>") policyArn: option<policyArn>,
  @ocaml.doc("<p>The policy name.</p>") policyName: option<policyName>,
}
@ocaml.doc("<p>Describes an action to write to a DynamoDB table.</p>
         <p>The <code>tableName</code>, <code>hashKeyField</code>, and <code>rangeKeyField</code>
         values must match the values used when you created the table.</p>
         <p>The <code>hashKeyValue</code> and <code>rangeKeyvalue</code> fields use a
         substitution template syntax. These templates provide data at runtime. The syntax is as
         follows: ${<i>sql-expression</i>}.</p>
         <p>You can specify any valid expression in a WHERE or SELECT clause, including JSON
         properties, comparisons, calculations, and functions. For example, the following field uses
         the third level of the topic:</p>
         <p>
            <code>\"hashKeyValue\": \"${topic(3)}\"</code>
         </p>
         <p>The following field uses the timestamp:</p>
         <p>
            <code>\"rangeKeyValue\": \"${timestamp()}\"</code>
         </p>")
type dynamoDBAction = {
  @ocaml.doc("<p>The action payload. This name can be customized.</p>")
  payloadField: option<payloadField>,
  @ocaml.doc("<p>The range key type. Valid values are \"STRING\" or \"NUMBER\"</p>")
  rangeKeyType: option<dynamoKeyType>,
  @ocaml.doc("<p>The range key value.</p>") rangeKeyValue: option<rangeKeyValue>,
  @ocaml.doc("<p>The range key name.</p>") rangeKeyField: option<rangeKeyField>,
  @ocaml.doc("<p>The hash key type. Valid values are \"STRING\" or \"NUMBER\"</p>")
  hashKeyType: option<dynamoKeyType>,
  @ocaml.doc("<p>The hash key value.</p>") hashKeyValue: hashKeyValue,
  @ocaml.doc("<p>The hash key name.</p>") hashKeyField: hashKeyField,
  @ocaml.doc("<p>The type of operation to be performed. This follows the substitution template, so it
         can be <code>${operation}</code>, but the substitution must result in one of the following:
            <code>INSERT</code>, <code>UPDATE</code>, or <code>DELETE</code>.</p>")
  operation: option<dynamoOperation>,
  @ocaml.doc("<p>The ARN of the IAM role that grants access to the DynamoDB table.</p>")
  roleArn: awsArn,
  @ocaml.doc("<p>The name of the DynamoDB table.</p>") tableName: tableName,
}
@ocaml.doc("<p>The summary of a domain configuration. A domain configuration specifies custom IoT-specific information about a domain. 
         A domain configuration can be associated with an AWS-managed domain 
         (for example, dbc123defghijk.iot.us-west-2.amazonaws.com), a customer managed domain, or a default endpoint.</p>
         <ul>
            <li>
               <p>Data</p>
            </li>
            <li>
               <p>Jobs</p>
            </li>
            <li>
               <p>CredentialProvider</p>
            </li>
         </ul>")
type domainConfigurationSummary = {
  @ocaml.doc("<p>The type of service delivered by the endpoint.</p>")
  serviceType: option<serviceType>,
  @ocaml.doc("<p>The ARN of the domain configuration.</p>")
  domainConfigurationArn: option<domainConfigurationArn>,
  @ocaml.doc("<p>The name of the domain configuration. This value must be unique to a region.</p>")
  domainConfigurationName: option<reservedDomainConfigurationName>,
}
type dimensionStringValues = array<dimensionStringValue>
type dimensionNames = array<dimensionName>
type detectMitigationActionsToExecuteList = array<mitigationActionName>
@ocaml.doc("<p>
            The statistics of a mitigation action task.
        </p>")
type detectMitigationActionsTaskStatistics = {
  @ocaml.doc("<p>
            The actions that failed.
        </p>")
  actionsFailed: option<genericLongValue>,
  @ocaml.doc("<p>
            The actions that were skipped.
        </p>")
  actionsSkipped: option<genericLongValue>,
  @ocaml.doc("<p>
            The actions that were performed.
        </p>")
  actionsExecuted: option<genericLongValue>,
}
@ocaml.doc("<p>
            Describes which mitigation actions should be executed.
        </p>")
type detectMitigationActionExecution = {
  @ocaml.doc("<p>
            The message of a mitigation action.
        </p>")
  message: option<errorMessage>,
  @ocaml.doc("<p>
            The error code of a mitigation action.
        </p>")
  errorCode: option<detectMitigationActionExecutionErrorCode>,
  @ocaml.doc("<p>
            The status of a mitigation action.
        </p>")
  status: option<detectMitigationActionExecutionStatus>,
  @ocaml.doc("<p>
            The date a mitigation action ended.
        </p>")
  executionEndDate: option<timestamp_>,
  @ocaml.doc("<p>
            The date a mitigation action was started.
        </p>")
  executionStartDate: option<timestamp_>,
  @ocaml.doc("<p>
            The name of the thing.
        </p>")
  thingName: option<deviceDefenderThingName>,
  @ocaml.doc("<p>
            The friendly name that uniquely identifies the mitigation action.
        </p>")
  actionName: option<mitigationActionName>,
  @ocaml.doc("<p>
            The unique identifier of the violation.
        </p>")
  violationId: option<violationId>,
  @ocaml.doc("<p>
            The unique identifier of the task.
        </p>")
  taskId: option<mitigationActionsTaskId>,
}
type detailsMap = Js.Dict.t<detailsValue>
@ocaml.doc("<p>Configuration.</p>")
type configuration = {
  @ocaml.doc("<p>True to enable the configuration.</p>") @as("Enabled") enabled: option<enabled>,
}
@ocaml.doc("<p>Describes the signature for a file.</p>")
type codeSigningSignature = {
  @ocaml.doc("<p>A base64 encoded binary representation of the code signing signature.</p>")
  inlineDocument: option<signature>,
}
@ocaml.doc("<p>Describes the certificate chain being used when code signing a file.</p>")
type codeSigningCertificateChain = {
  @ocaml.doc("<p>A base64 encoded binary representation of the code signing certificate chain.</p>")
  inlineDocument: option<inlineDocument>,
  @ocaml.doc("<p>The name of the certificate.</p>") certificateName: option<certificateName>,
}
@ocaml.doc("<p>Describes an action that captures a CloudWatch metric.</p>")
type cloudwatchMetricAction = {
  @ocaml.doc(
    "<p>An optional <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#about_timestamp\">Unix timestamp</a>.</p>"
  )
  metricTimestamp: option<string_>,
  @ocaml.doc("<p>The <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Unit\">metric
            unit</a> supported by CloudWatch.</p>")
  metricUnit: string_,
  @ocaml.doc("<p>The CloudWatch metric value.</p>") metricValue: string_,
  @ocaml.doc("<p>The CloudWatch metric name.</p>") metricName: string_,
  @ocaml.doc("<p>The CloudWatch metric namespace name.</p>") metricNamespace: string_,
  @ocaml.doc("<p>The IAM role that allows access to the CloudWatch metric.</p>") roleArn: awsArn,
}
@ocaml.doc("<p>Describes an action that sends data to CloudWatch Logs.</p>")
type cloudwatchLogsAction = {
  @ocaml.doc("<p>The CloudWatch log group to which the action sends data.</p>")
  logGroupName: logGroupName,
  @ocaml.doc("<p>The IAM role that allows access to the CloudWatch log.</p>") roleArn: awsArn,
}
@ocaml.doc("<p>Describes an action that updates a CloudWatch alarm.</p>")
type cloudwatchAlarmAction = {
  @ocaml.doc("<p>The value of the alarm state. Acceptable values are: OK, ALARM,
         INSUFFICIENT_DATA.</p>")
  stateValue: stateValue,
  @ocaml.doc("<p>The reason for the alarm change.</p>") stateReason: stateReason,
  @ocaml.doc("<p>The CloudWatch alarm name.</p>") alarmName: alarmName,
  @ocaml.doc("<p>The IAM role that allows access to the CloudWatch alarm.</p>") roleArn: awsArn,
}
type clientProperties = Js.Dict.t<string_>
type cidrs = array<cidr>
@ocaml.doc("<p>When the certificate is valid.</p>")
type certificateValidity = {
  @ocaml.doc("<p>The certificate is not valid after this date.</p>") notAfter: option<dateType>,
  @ocaml.doc("<p>The certificate is not valid before this date.</p>") notBefore: option<dateType>,
}
@ocaml.doc("<p>Information about a certificate.</p>")
type certificate = {
  @ocaml.doc("<p>The date and time the certificate was created.</p>")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The mode of the certificate.</p>") certificateMode: option<certificateMode>,
  @ocaml.doc("<p>The status of the certificate.</p>
         <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>")
  status: option<certificateStatus>,
  @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
  certificateId: option<certificateId>,
  @ocaml.doc("<p>The ARN of the certificate.</p>") certificateArn: option<certificateArn>,
}
@ocaml.doc("<p>A CA certificate.</p>")
type cacertificate = {
  @ocaml.doc("<p>The date the CA certificate was created.</p>") creationDate: option<dateType>,
  @ocaml.doc("<p>The status of the CA certificate.</p>
         <p>The status value REGISTER_INACTIVE is deprecated and should not be used.</p>")
  status: option<cacertificateStatus>,
  @ocaml.doc("<p>The ID of the CA certificate.</p>") certificateId: option<certificateId>,
  @ocaml.doc("<p>The ARN of the CA certificate.</p>") certificateArn: option<certificateArn>,
}
@ocaml.doc("<p>The properties of a billing group.</p>")
type billingGroupProperties = {
  @ocaml.doc("<p>The description of the billing group.</p>")
  billingGroupDescription: option<billingGroupDescription>,
}
@ocaml.doc("<p>Additional information about the billing group.</p>")
type billingGroupMetadata = {
  @ocaml.doc("<p>The date the billing group was created.</p>") creationDate: option<creationDate>,
}
@ocaml.doc("<p>
            The summary of an ML Detect behavior model.
        </p>")
type behaviorModelTrainingSummary = {
  @ocaml.doc("<p>
            The date the model was last refreshed.
        </p>")
  lastModelRefreshDate: option<timestamp_>,
  @ocaml.doc("<p>
            The percentage of datapoints collected.
        </p>")
  datapointsCollectionPercentage: option<dataCollectionPercentage>,
  @ocaml.doc("<p>
            The status of the behavior model.
        </p>")
  modelStatus: option<modelStatus>,
  @ocaml.doc("<p>
            The date a training model started collecting data.
        </p>")
  trainingDataCollectionStartDate: option<timestamp_>,
  @ocaml.doc("<p>
            The name of the behavior.
        </p>")
  behaviorName: option<behaviorName>,
  @ocaml.doc("<p>
            The name of the security profile.
        </p>")
  securityProfileName: option<securityProfileName>,
}
@ocaml.doc("<p>Specifies the amount of time each device has to finish its execution of the job.  A timer is 
            started when the job execution status is set to <code>IN_PROGRESS</code>. If the job execution 
            status is not set to another terminal state before the timer expires, it will be automatically 
            set to <code>TIMED_OUT</code>.</p>")
type awsJobTimeoutConfig = {
  @ocaml.doc("<p>Specifies the amount of time, in minutes, this device has to finish execution of this job. The 
            timeout interval can be anywhere between 1 minute and 7 days (1 to 10080 minutes). The in progress 
            timer can't be updated and will apply to all job executions for the job. Whenever a job execution 
            remains in the IN_PROGRESS status for longer than this interval, the job execution will fail and 
            switch to the terminal <code>TIMED_OUT</code> status.</p>")
  inProgressTimeoutInMinutes: option<awsJobTimeoutInProgressTimeoutInMinutes>,
}
@ocaml.doc("<p>The criteria to initiate the increase in rate of rollout for a job.</p>")
type awsJobRateIncreaseCriteria = {
  @ocaml.doc("<p>When this number of things have succeeded in their job execution, it will initiate an 
            increase in the rollout rate.</p>")
  numberOfSucceededThings: option<awsJobRateIncreaseCriteriaNumberOfThings>,
  @ocaml.doc("<p>When this number of things have been notified, it will initiate an increase in the rollout
            rate.</p>")
  numberOfNotifiedThings: option<awsJobRateIncreaseCriteriaNumberOfThings>,
}
@ocaml.doc("<p>Configuration information for pre-signed URLs. Valid when <code>protocols</code>
           contains HTTP.</p>")
type awsJobPresignedUrlConfig = {
  @ocaml.doc("<p>How long (in seconds) pre-signed URLs are valid. Valid values are 60 - 3600, the default value is 1800
            seconds. Pre-signed URLs are generated when a request for the job document is received.</p>")
  expiresInSec: option<expiresInSeconds>,
}
@ocaml.doc("<p>The criteria that determine when and how a job abort takes place.</p>")
type awsJobAbortCriteria = {
  @ocaml.doc("<p>The minimum number of things which must receive job execution notifications before the job 
          can be aborted.</p>")
  minNumberOfExecutedThings: awsJobAbortCriteriaMinimumNumberOfExecutedThings,
  @ocaml.doc("<p>The minimum percentage of job execution failures that must occur to initiate the job abort.</p>
         <p>AWS IoT supports up to two digits after the decimal (for example, 10.9 and 10.99, but not 10.999).</p>")
  thresholdPercentage: awsJobAbortCriteriaAbortThresholdPercentage,
  @ocaml.doc("<p>The type of job action to take to initiate the job abort.</p>")
  action: awsJobAbortCriteriaAbortAction,
  @ocaml.doc("<p>The type of job execution failures that can initiate a job abort.</p>")
  failureType: awsJobAbortCriteriaFailureType,
}
@ocaml.doc("<p>The authorizer summary.</p>")
type authorizerSummary = {
  @ocaml.doc("<p>The authorizer ARN.</p>") authorizerArn: option<authorizerArn>,
  @ocaml.doc("<p>The authorizer name.</p>") authorizerName: option<authorizerName>,
}
@ocaml.doc("<p>An object that specifies the authorization service for a domain.</p>")
type authorizerConfig = {
  @ocaml.doc(
    "<p>A Boolean that specifies whether the domain configuration's authorization service can be overridden.</p>"
  )
  allowAuthorizerOverride: option<allowAuthorizerOverride>,
  @ocaml.doc("<p>The name of the authorization service for a domain configuration.</p>")
  defaultAuthorizerName: option<authorizerName>,
}
@ocaml.doc("<p>The audits that were performed.</p>")
type auditTaskMetadata = {
  @ocaml.doc(
    "<p>The type of this audit. One of \"ON_DEMAND_AUDIT_TASK\" or \"SCHEDULED_AUDIT_TASK\".</p>"
  )
  taskType: option<auditTaskType>,
  @ocaml.doc("<p>The status of this audit. One of \"IN_PROGRESS\", \"COMPLETED\",
        \"FAILED\", or \"CANCELED\".</p>")
  taskStatus: option<auditTaskStatus>,
  @ocaml.doc("<p>The ID of this audit.</p>") taskId: option<auditTaskId>,
}
@ocaml.doc("<p>Information about the targets to which audit notifications are sent.</p>")
type auditNotificationTarget = {
  @ocaml.doc("<p>True if notifications to the target are enabled.</p>") enabled: option<enabled>,
  @ocaml.doc(
    "<p>The ARN of the role that grants permission to send notifications to the target.</p>"
  )
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The ARN of the target (SNS topic) to which audit notifications are sent.</p>")
  targetArn: option<targetArn>,
}
@ocaml.doc(
  "<p>Information about an audit mitigation actions task that is returned by <code>ListAuditMitigationActionsTasks</code>.</p>"
)
type auditMitigationActionsTaskMetadata = {
  @ocaml.doc("<p>The current state of the audit mitigation actions task.</p>")
  taskStatus: option<auditMitigationActionsTaskStatus>,
  @ocaml.doc("<p>The time at which the audit mitigation actions task was started.</p>")
  startTime: option<timestamp_>,
  @ocaml.doc("<p>The unique identifier for the task.</p>") taskId: option<mitigationActionsTaskId>,
}
@ocaml.doc(
  "<p>Returned by ListAuditMitigationActionsTask, this object contains information that describes a mitigation action that has been started.</p>"
)
type auditMitigationActionExecutionMetadata = {
  @ocaml.doc("<p>If an error occurred, a message that describes the error.</p>")
  message: option<errorMessage>,
  @ocaml.doc("<p>If an error occurred, the code that indicates which type of error occurred.</p>")
  errorCode: option<errorCode>,
  @ocaml.doc(
    "<p>The date and time when the task was completed or canceled. Blank if the task is still running.</p>"
  )
  endTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time when the task was started.</p>") startTime: option<timestamp_>,
  @ocaml.doc("<p>The current status of the task being executed.</p>")
  status: option<auditMitigationActionsExecutionStatus>,
  @ocaml.doc("<p>The unique identifier for the mitigation action being applied by the task.</p>")
  actionId: option<mitigationActionId>,
  @ocaml.doc("<p>The friendly name of the mitigation action being applied by the task.</p>")
  actionName: option<mitigationActionName>,
  @ocaml.doc(
    "<p>The unique identifier for the findings to which the task and associated mitigation action are applied.</p>"
  )
  findingId: option<findingId>,
  @ocaml.doc("<p>The unique identifier for the task that applies the mitigation action.</p>")
  taskId: option<mitigationActionsTaskId>,
}
@ocaml.doc("<p>Information about the audit check.</p>")
type auditCheckDetails = {
  @ocaml.doc(
    "<p>The message associated with any error encountered when this check is performed during this audit.</p>"
  )
  message: option<errorMessage>,
  @ocaml.doc("<p>The code of any error encountered when this check is performed during this audit.
          One of \"INSUFFICIENT_PERMISSIONS\" or \"AUDIT_CHECK_DISABLED\".</p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>
            Describes how many of the non-compliant resources created during the evaluation of an audit check were marked as suppressed.
        </p>")
  suppressedNonCompliantResourcesCount: option<suppressedNonCompliantResourcesCount>,
  @ocaml.doc("<p>The number of resources that were found noncompliant during the check.</p>")
  nonCompliantResourcesCount: option<nonCompliantResourcesCount>,
  @ocaml.doc("<p>The number of resources on which the check was performed.</p>")
  totalResourcesCount: option<totalResourcesCount>,
  @ocaml.doc("<p>True if the check is complete and found all resources compliant.</p>")
  checkCompliant: option<checkCompliant>,
  @ocaml.doc("<p>The completion status of this check. One of \"IN_PROGRESS\", \"WAITING_FOR_DATA_COLLECTION\",
        \"CANCELED\", \"COMPLETED_COMPLIANT\", \"COMPLETED_NON_COMPLIANT\", or \"FAILED\".</p>")
  checkRunStatus: option<auditCheckRunStatus>,
}
@ocaml.doc("<p>Which audit checks are enabled and disabled for this account.</p>")
type auditCheckConfiguration = {
  @ocaml.doc("<p>True if this audit check is enabled for this account.</p>")
  enabled: option<enabled>,
}
type attributesMap = Js.Dict.t<value>
type attributes = Js.Dict.t<attributeValue>
@ocaml.doc("<p>Contains an asset property value (of a single type).</p>")
type assetPropertyVariant = {
  @ocaml.doc("<p>Optional. A string that contains the boolean value (<code>true</code> or
        <code>false</code>) of the value entry. Accepts substitution templates.</p>")
  booleanValue: option<assetPropertyBooleanValue>,
  @ocaml.doc("<p>Optional. A string that contains the double value of the value entry. Accepts substitution
      templates.</p>")
  doubleValue: option<assetPropertyDoubleValue>,
  @ocaml.doc("<p>Optional. A string that contains the integer value of the value entry. Accepts
      substitution templates.</p>")
  integerValue: option<assetPropertyIntegerValue>,
  @ocaml.doc(
    "<p>Optional. The string value of the value entry. Accepts substitution templates.</p>"
  )
  stringValue: option<assetPropertyStringValue>,
}
module AssetPropertyVariant = {
  type t =
    | BooleanValue(assetPropertyBooleanValue)
    | DoubleValue(assetPropertyDoubleValue)
    | IntegerValue(assetPropertyIntegerValue)
    | StringValue(assetPropertyStringValue)
  exception AssetPropertyVariantUnspecified
  let classify = value =>
    switch value {
    | {booleanValue: Some(x)} => BooleanValue(x)
    | {doubleValue: Some(x)} => DoubleValue(x)
    | {integerValue: Some(x)} => IntegerValue(x)
    | {stringValue: Some(x)} => StringValue(x)
    | _ => raise(AssetPropertyVariantUnspecified)
    }

  let make = value =>
    switch value {
    | BooleanValue(x) => {
        booleanValue: Some(x),
        doubleValue: None,
        integerValue: None,
        stringValue: None,
      }
    | DoubleValue(x) => {
        doubleValue: Some(x),
        booleanValue: None,
        integerValue: None,
        stringValue: None,
      }
    | IntegerValue(x) => {
        integerValue: Some(x),
        booleanValue: None,
        doubleValue: None,
        stringValue: None,
      }
    | StringValue(x) => {
        stringValue: Some(x),
        booleanValue: None,
        doubleValue: None,
        integerValue: None,
      }
    }
}
@ocaml.doc("<p>An asset property timestamp entry containing the following information.</p>")
type assetPropertyTimestamp = {
  @ocaml.doc("<p>Optional. A string that contains the nanosecond time offset. Accepts substitution
      templates.</p>")
  offsetInNanos: option<assetPropertyOffsetInNanos>,
  @ocaml.doc("<p>A string that contains the time in seconds since epoch. Accepts substitution
      templates.</p>")
  timeInSeconds: assetPropertyTimeInSeconds,
}
@ocaml.doc("<p>A structure containing the alert target ARN and the role ARN.</p>")
type alertTarget = {
  @ocaml.doc("<p>The ARN of the role that grants permission to send alerts to the 
        notification target.</p>")
  roleArn: roleArn,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the notification target to which alerts are sent.</p>"
  )
  alertTargetArn: alertTargetArn,
}
type additionalParameterMap = Js.Dict.t<value>
type additionalMetricsToRetainList = array<behaviorMetric>
@ocaml.doc("<p>The criteria that determine when and how a job abort takes place.</p>")
type abortCriteria = {
  @ocaml.doc("<p>The minimum number of things which must receive job execution notifications before the job 
            can be aborted.</p>")
  minNumberOfExecutedThings: minimumNumberOfExecutedThings,
  @ocaml.doc("<p>The minimum percentage of job execution failures that must occur to initiate the job abort.</p>
        <p>AWS IoT supports up to two digits after the decimal (for example, 10.9 and 10.99, but not 10.999).</p>")
  thresholdPercentage: abortThresholdPercentage,
  @ocaml.doc("<p>The type of job action to take to initiate the job abort.</p>")
  action: abortAction,
  @ocaml.doc("<p>The type of job execution failures that can initiate a job abort.</p>")
  failureType: jobExecutionFailureType,
}
@ocaml.doc("<p>The summary of a virtual private cloud (VPC) destination.</p>")
type vpcDestinationSummary = {
  @ocaml.doc(
    "<p>The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).</p>"
  )
  roleArn: option<awsArn>,
  @ocaml.doc("<p>The ID of the VPC.</p>") vpcId: option<vpcId>,
  @ocaml.doc("<p>The security groups of the VPC destination.</p>")
  securityGroups: option<securityGroupList>,
  @ocaml.doc("<p>The subnet IDs of the VPC destination.</p>") subnetIds: option<subnetIdList>,
}
@ocaml.doc("<p>The properties of a virtual private cloud (VPC) destination.</p>")
type vpcDestinationProperties = {
  @ocaml.doc(
    "<p>The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).</p>"
  )
  roleArn: option<awsArn>,
  @ocaml.doc("<p>The ID of the VPC.</p>") vpcId: option<vpcId>,
  @ocaml.doc("<p>The security groups of the VPC destination.</p>")
  securityGroups: option<securityGroupList>,
  @ocaml.doc("<p>The subnet IDs of the VPC destination.</p>") subnetIds: option<subnetIdList>,
}
@ocaml.doc("<p>The configuration information for a virtual private cloud (VPC) destination.</p>")
type vpcDestinationConfiguration = {
  @ocaml.doc(
    "<p>The ARN of a role that has permission to create and attach to elastic network interfaces (ENIs).</p>"
  )
  roleArn: awsArn,
  @ocaml.doc("<p>The ID of the VPC.</p>") vpcId: vpcId,
  @ocaml.doc("<p>The security groups of the VPC destination.</p>")
  securityGroups: option<securityGroupList>,
  @ocaml.doc("<p>The subnet IDs of the VPC destination.</p>") subnetIds: subnetIdList,
}
type validationErrors = array<validationError>
type topicRuleList = array<topicRuleListItem>
type timestreamDimensionList = array<timestreamDimension>
@ocaml.doc("<p>The ThingTypeProperties contains information about the thing type including: a thing type description,
			and a list of searchable thing attribute names.</p>")
type thingTypeProperties = {
  @ocaml.doc("<p>A list of searchable thing attribute names.</p>")
  searchableAttributes: option<searchableAttributes>,
  @ocaml.doc("<p>The description of the thing type.</p>")
  thingTypeDescription: option<thingTypeDescription>,
}
type thingGroupNameAndArnList = array<groupNameAndArn>
@ocaml.doc("<p>The thing group search index document.</p>")
type thingGroupDocument = {
  @ocaml.doc("<p>Parent group names.</p>") parentGroupNames: option<thingGroupNameList>,
  @ocaml.doc("<p>The thing group attributes.</p>") attributes: option<attributes>,
  @ocaml.doc("<p>The thing group description.</p>")
  thingGroupDescription: option<thingGroupDescription>,
  @ocaml.doc("<p>The thing group ID.</p>") thingGroupId: option<thingGroupId>,
  @ocaml.doc("<p>The thing group name.</p>") thingGroupName: option<thingGroupName>,
}
@ocaml.doc("<p>The thing search index document.</p>")
type thingDocument = {
  @ocaml.doc("<p>Indicates whether the thing is connected to the AWS IoT service.</p>")
  connectivity: option<thingConnectivity>,
  @ocaml.doc("<p>The shadow.</p>") shadow: option<jsonDocument>,
  @ocaml.doc("<p>The attributes.</p>") attributes: option<attributes>,
  @ocaml.doc("<p>Thing group names.</p>") thingGroupNames: option<thingGroupNameList>,
  @ocaml.doc("<p>The thing type name.</p>") thingTypeName: option<thingTypeName>,
  @ocaml.doc("<p>The thing ID.</p>") thingId: option<thingId>,
  @ocaml.doc("<p>The thing name.</p>") thingName: option<thingName>,
}
@ocaml.doc("<p>The properties of the thing, including thing name, thing type name, and a list of thing
			attributes.</p>")
type thingAttribute = {
  @ocaml.doc("<p>The version of the thing record in the registry.</p>") version: option<version>,
  @ocaml.doc("<p>A list of thing attributes which are name-value pairs.</p>")
  attributes: option<attributes>,
  @ocaml.doc("<p>The thing ARN.</p>") thingArn: option<thingArn>,
  @ocaml.doc("<p>The name of the thing type, if the thing has been associated with a type.</p>")
  thingTypeName: option<thingTypeName>,
  @ocaml.doc("<p>The name of the thing.</p>") thingName: option<thingName>,
}
type tagList_ = array<tag>
type streamsSummary = array<streamSummary>
@ocaml.doc("<p>Represents a file to stream.</p>")
type streamFile = {
  @ocaml.doc("<p>The location of the file in S3.</p>") s3Location: option<s3Location>,
  @ocaml.doc("<p>The file ID.</p>") fileId: option<fileId>,
}
type serverCertificates = array<serverCertificateSummary>
type securityProfileTargets = array<securityProfileTarget>
@ocaml.doc("<p>Information about a security profile and the target associated with it.</p>")
type securityProfileTargetMapping = {
  @ocaml.doc(
    "<p>Information about the target (thing group) associated with the security profile.</p>"
  )
  target: option<securityProfileTarget>,
  @ocaml.doc("<p>Information that identifies the security profile.</p>")
  securityProfileIdentifier: option<securityProfileIdentifier>,
}
type securityProfileIdentifiers = array<securityProfileIdentifier>
type scheduledAuditMetadataList = array<scheduledAuditMetadata>
@ocaml.doc("<p>Information that identifies the noncompliant resource.</p>")
type resourceIdentifier = {
  @ocaml.doc("<p>The ARN of the role alias that has overly permissive actions.</p>")
  roleAliasArn: option<roleAliasArn>,
  @ocaml.doc("<p>The ARN of the IAM role that has overly permissive actions.</p>")
  iamRoleArn: option<roleArn>,
  @ocaml.doc("<p>The account with which the resource is associated.</p>")
  account: option<awsAccountId>,
  @ocaml.doc("<p>The version of the policy associated with the resource.</p>")
  policyVersionIdentifier: option<policyVersionIdentifier>,
  @ocaml.doc("<p>The client ID.</p>") clientId: option<clientId>,
  @ocaml.doc("<p>The ID of the Amazon Cognito identity pool.</p>")
  cognitoIdentityPoolId: option<cognitoIdentityPoolId>,
  @ocaml.doc("<p>The ID of the CA certificate used to authorize the certificate.</p>")
  caCertificateId: option<certificateId>,
  @ocaml.doc("<p>The ID of the certificate attached to the resource.</p>")
  deviceCertificateId: option<certificateId>,
}
type provisioningTemplateVersionListing = array<provisioningTemplateVersionSummary>
type provisioningTemplateListing = array<provisioningTemplateSummary>
type policyVersions = array<policyVersion>
type policies = array<policy>
type percentiles = array<percentPair>
type outgoingCertificates = array<outgoingCertificate>
type otaupdatesSummary = array<otaupdateSummary>
type mitigationActionIdentifierList = array<mitigationActionIdentifier>
@ocaml.doc("<p>The value to be compared with the <code>metric</code>.</p>")
type metricValue = {
  @ocaml.doc("<p>
            The string values of a metric.
        </p>")
  strings: option<stringList>,
  @ocaml.doc("<p>
            The numeral values of a metric.
        </p>")
  numbers: option<numberList>,
  @ocaml.doc("<p>
            The numeral value of a metric.
        </p>")
  number: option<number>,
  @ocaml.doc("<p>If the <code>comparisonOperator</code> calls for a set of ports, use this
          to specify that set to be compared with the <code>metric</code>.</p>")
  ports: option<ports>,
  @ocaml.doc("<p>If the <code>comparisonOperator</code> calls for a set of CIDRs, use this
          to specify that set to be compared with the <code>metric</code>.</p>")
  cidrs: option<cidrs>,
  @ocaml.doc("<p>If the <code>comparisonOperator</code> calls for a numeric value, use this 
          to specify that numeric value to be compared with the <code>metric</code>.</p>")
  count: option<unsignedLong>,
}
@ocaml.doc("<p>The metric you want to retain. Dimensions are optional.</p>")
type metricToRetain = {
  @ocaml.doc("<p>The dimension of a metric. This can't be used with custom metrics.</p>")
  metricDimension: option<metricDimension>,
  @ocaml.doc("<p>What is measured by the behavior.</p>") metric: behaviorMetric,
}
@ocaml.doc("<p>The target configuration.</p>")
type logTargetConfiguration = {
  @ocaml.doc("<p>The logging level.</p>") logLevel: option<logLevel>,
  @ocaml.doc("<p>A log target</p>") logTarget: option<logTarget>,
}
@ocaml.doc(
  "<p>Send messages to an Amazon Managed Streaming for Apache Kafka (Amazon MSK) or self-managed Apache Kafka cluster.</p>"
)
type kafkaAction = {
  @ocaml.doc("<p>Properties of the Apache Kafka producer client.</p>")
  clientProperties: clientProperties,
  @ocaml.doc("<p>The Kafka message partition.</p>") partition: option<string_>,
  @ocaml.doc("<p>The Kafka message key.</p>") key: option<string_>,
  @ocaml.doc("<p>The Kafka topic for messages to be sent to the Kafka broker.</p>") topic: string_,
  @ocaml.doc("<p>The ARN of Kafka action's VPC <code>TopicRuleDestination</code>.</p>")
  destinationArn: awsArn,
}
type jobTemplateSummaryList = array<jobTemplateSummary>
type jobSummaryList = array<jobSummary>
@ocaml.doc("<p>The job process details.</p>")
type jobProcessDetails = {
  @ocaml.doc("<p>The number of things whose job execution status is <code>TIMED_OUT</code>.</p>")
  numberOfTimedOutThings: option<timedOutThings>,
  @ocaml.doc("<p>The number of things that are no longer scheduled to execute the job because they have been deleted or
            have been removed from the group that was a target of the job.</p>")
  numberOfRemovedThings: option<removedThings>,
  @ocaml.doc("<p>The number of things currently executing the job.</p>")
  numberOfInProgressThings: option<inProgressThings>,
  @ocaml.doc("<p>The number of things that are awaiting execution of the job.</p>")
  numberOfQueuedThings: option<queuedThings>,
  @ocaml.doc("<p>The number of things that rejected the job.</p>")
  numberOfRejectedThings: option<rejectedThings>,
  @ocaml.doc("<p>The number of things that failed executing the job.</p>")
  numberOfFailedThings: option<failedThings>,
  @ocaml.doc("<p>The number of things which successfully completed the job.</p>")
  numberOfSucceededThings: option<succeededThings>,
  @ocaml.doc("<p>The number of things that cancelled the job.</p>")
  numberOfCanceledThings: option<canceledThings>,
  @ocaml.doc(
    "<p>The target devices to which the job execution is being rolled out. This value will be null after the job execution has finished rolling out to all the target devices.</p>"
  )
  processingTargets: option<processingTargetNameList>,
}
@ocaml.doc("<p>The job execution summary for a thing.</p>")
type jobExecutionSummaryForThing = {
  @ocaml.doc("<p>Contains a subset of information about a job execution.</p>")
  jobExecutionSummary: option<jobExecutionSummary>,
  @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Contains a summary of information about job executions for a specific job.</p>")
type jobExecutionSummaryForJob = {
  @ocaml.doc("<p>Contains a subset of information about a job execution.</p>")
  jobExecutionSummary: option<jobExecutionSummary>,
  @ocaml.doc("<p>The ARN of the thing on which the job execution is running.</p>")
  thingArn: option<thingArn>,
}
@ocaml.doc("<p>Details of the job execution status.</p>")
type jobExecutionStatusDetails = {
  @ocaml.doc("<p>The job execution status.</p>") detailsMap: option<detailsMap>,
}
@ocaml.doc("<p>Specifies the HTTP context to use for the test authorizer request.</p>")
type httpContext = {
  @ocaml.doc("<p>The query string keys and values in an HTTP authorization request.</p>")
  queryString: option<httpQueryString>,
  @ocaml.doc("<p>The header keys and values in an HTTP authorization request.</p>")
  headers: option<httpHeaders>,
}
@ocaml.doc("<p>The authorization method used to send messages.</p>")
type httpAuthorization = {
  @ocaml.doc("<p>Use Sig V4 authorization. For more information, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature
            Version 4 Signing Process</a>.</p>")
  sigv4: option<sigV4Authorization>,
}
type headerList = array<httpActionHeader>
@ocaml.doc("<p>The location of the OTA update.</p>")
type fileLocation = {
  @ocaml.doc("<p>The location of the updated firmware in S3.</p>") s3Location: option<s3Location>,
  @ocaml.doc("<p>The stream that contains the OTA update.</p>") stream: option<stream>,
}
type fields = array<field>
@ocaml.doc("<p>Allows you to create an exponential rate of rollout for a job.</p>")
type exponentialRolloutRate = {
  @ocaml.doc("<p>The criteria to initiate the increase in rate of rollout for a job.</p>")
  rateIncreaseCriteria: rateIncreaseCriteria,
  @ocaml.doc("<p>The exponential factor to increase the rate of rollout for a job.</p>
        <p>AWS IoT supports up to one digit after the decimal (for example, 1.5, but not 1.55).</p>")
  incrementFactor: incrementFactor,
  @ocaml.doc("<p>The minimum number of things that will be notified of a pending job, per minute at the start of job rollout.
            This parameter allows you to define the initial rate of rollout.</p>")
  baseRatePerMinute: rolloutRatePerMinute,
}
type eventConfigurations = Js.Dict.t<configuration>
type effectivePolicies = array<effectivePolicy>
@ocaml.doc("<p>Describes an action to write to a DynamoDB table.</p>
         <p>This DynamoDB action writes each attribute in the message payload into it's own
         column in the DynamoDB table.</p>")
type dynamoDBv2Action = {
  @ocaml.doc("<p>Specifies the DynamoDB table to which the message data will be written. For
         example:</p>
         <p>
            <code>{ \"dynamoDBv2\": { \"roleArn\": \"aws:iam:12341251:my-role\" \"putItem\": { \"tableName\":
            \"my-table\" } } }</code>
         </p>
         <p>Each attribute in the message payload will be written to a separate column in the
         DynamoDB database.</p>")
  putItem: putItemInput,
  @ocaml.doc("<p>The ARN of the IAM role that grants access to the DynamoDB table.</p>")
  roleArn: awsArn,
}
type domainConfigurations = array<domainConfigurationSummary>
@ocaml.doc("<p>
            The target of a mitigation action task.
        </p>")
type detectMitigationActionsTaskTarget = {
  @ocaml.doc("<p>
            The name of the behavior.
        </p>")
  behaviorName: option<behaviorName>,
  @ocaml.doc("<p>
            The name of the security profile.
        </p>")
  securityProfileName: option<securityProfileName>,
  @ocaml.doc("<p>
            The unique identifiers of the violations.
        </p>")
  violationIds: option<targetViolationIdsForDetectMitigationActions>,
}
type detectMitigationActionExecutionList = array<detectMitigationActionExecution>
@ocaml.doc("<p>Describes the location of the updated firmware.</p>")
type destination = {
  @ocaml.doc("<p>Describes the location in S3 of the updated firmware.</p>")
  s3Destination: option<s3Destination>,
}
@ocaml.doc("<p>Describes a custom method used to code sign a file.</p>")
type customCodeSigning = {
  @ocaml.doc("<p>The signature algorithm used to code sign the file.</p>")
  signatureAlgorithm: option<signatureAlgorithm>,
  @ocaml.doc("<p>The hash algorithm used to code sign the file.</p>")
  hashAlgorithm: option<hashAlgorithm>,
  @ocaml.doc("<p>The certificate chain.</p>") certificateChain: option<codeSigningCertificateChain>,
  @ocaml.doc("<p>The signature for the file.</p>") signature: option<codeSigningSignature>,
}
type certificates = array<certificate>
@ocaml.doc("<p>Describes a certificate.</p>")
type certificateDescription = {
  @ocaml.doc("<p>The mode of the certificate.</p>") certificateMode: option<certificateMode>,
  @ocaml.doc("<p>When the certificate is valid.</p>") validity: option<certificateValidity>,
  @ocaml.doc("<p>The generation ID of the certificate.</p>") generationId: option<generationId>,
  @ocaml.doc("<p>The transfer data.</p>") transferData: option<transferData>,
  @ocaml.doc("<p>The customer version of the certificate.</p>")
  customerVersion: option<customerVersion>,
  @ocaml.doc("<p>The date and time the certificate was last modified.</p>")
  lastModifiedDate: option<dateType>,
  @ocaml.doc("<p>The date and time the certificate was created.</p>")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The ID of the AWS account of the previous owner of the certificate.</p>")
  previousOwnedBy: option<awsAccountId>,
  @ocaml.doc("<p>The ID of the AWS account that owns the certificate.</p>")
  ownedBy: option<awsAccountId>,
  @ocaml.doc("<p>The certificate data, in PEM format.</p>") certificatePem: option<certificatePem>,
  @ocaml.doc("<p>The status of the certificate.</p>") status: option<certificateStatus>,
  @ocaml.doc("<p>The certificate ID of the CA certificate used to sign this certificate.</p>")
  caCertificateId: option<certificateId>,
  @ocaml.doc("<p>The ID of the certificate.</p>") certificateId: option<certificateId>,
  @ocaml.doc("<p>The ARN of the certificate.</p>") certificateArn: option<certificateArn>,
}
type cacertificates = array<cacertificate>
@ocaml.doc("<p>Describes a CA certificate.</p>")
type cacertificateDescription = {
  @ocaml.doc("<p>When the CA certificate is valid.</p>") validity: option<certificateValidity>,
  @ocaml.doc("<p>The generation ID of the CA certificate.</p>") generationId: option<generationId>,
  @ocaml.doc("<p>The customer version of the CA certificate.</p>")
  customerVersion: option<customerVersion>,
  @ocaml.doc("<p>The date the CA certificate was last modified.</p>")
  lastModifiedDate: option<dateType>,
  @ocaml.doc("<p>Whether the CA certificate configured for auto registration of device certificates.
         Valid values are \"ENABLE\" and \"DISABLE\"</p>")
  autoRegistrationStatus: option<autoRegistrationStatus>,
  @ocaml.doc("<p>The date the CA certificate was created.</p>") creationDate: option<dateType>,
  @ocaml.doc("<p>The owner of the CA certificate.</p>") ownedBy: option<awsAccountId>,
  @ocaml.doc("<p>The CA certificate data, in PEM format.</p>")
  certificatePem: option<certificatePem>,
  @ocaml.doc("<p>The status of a CA certificate.</p>") status: option<cacertificateStatus>,
  @ocaml.doc("<p>The CA certificate ID.</p>") certificateId: option<certificateId>,
  @ocaml.doc("<p>The CA certificate ARN.</p>") certificateArn: option<certificateArn>,
}
type billingGroupNameAndArnList = array<groupNameAndArn>
type behaviorModelTrainingSummaries = array<behaviorModelTrainingSummary>
@ocaml.doc("<p>The rate of increase for a job rollout. This parameter allows you to define an exponential rate 
            increase for a job rollout.</p>")
type awsJobExponentialRolloutRate = {
  @ocaml.doc("<p>The criteria to initiate the increase in rate of rollout for a job.</p>
        <p>AWS IoT supports up to one digit after the decimal (for example, 1.5, but not 1.55).</p>")
  rateIncreaseCriteria: awsJobRateIncreaseCriteria,
  @ocaml.doc("<p>The rate of increase for a job rollout. The number of things notified is multiplied by this 
            factor.</p>")
  incrementFactor: awsJobRolloutIncrementFactor,
  @ocaml.doc("<p>The minimum number of things that will be notified of a pending job, per minute, at the start 
            of the job rollout. This is the initial rate of the rollout.</p>")
  baseRatePerMinute: awsJobRolloutRatePerMinute,
}
type awsJobAbortCriteriaList = array<awsJobAbortCriteria>
type authorizers = array<authorizerSummary>
@ocaml.doc("<p>The authorizer description.</p>")
type authorizerDescription = {
  @ocaml.doc(
    "<p>Specifies whether AWS IoT validates the token signature in an authorization request.</p>"
  )
  signingDisabled: option<booleanKey>,
  @ocaml.doc("<p>The UNIX timestamp of when the authorizer was last updated.</p>")
  lastModifiedDate: option<dateType>,
  @ocaml.doc("<p>The UNIX timestamp of when the authorizer was created.</p>")
  creationDate: option<dateType>,
  @ocaml.doc("<p>The status of the authorizer.</p>") status: option<authorizerStatus>,
  @ocaml.doc("<p>The public keys used to validate the token signature returned by your custom
         authentication service.</p>")
  tokenSigningPublicKeys: option<publicKeyMap>,
  @ocaml.doc("<p>The key used to extract the token from the HTTP headers.</p>")
  tokenKeyName: option<tokenKeyName>,
  @ocaml.doc("<p>The authorizer's Lambda function ARN.</p>")
  authorizerFunctionArn: option<authorizerFunctionArn>,
  @ocaml.doc("<p>The authorizer ARN.</p>") authorizerArn: option<authorizerArn>,
  @ocaml.doc("<p>The authorizer name.</p>") authorizerName: option<authorizerName>,
}
@ocaml.doc("<p>A collection of authorization information.</p>")
type authInfo = {
  @ocaml.doc("<p>The resources for which the principal is being authorized to perform the specified
         action.</p>")
  resources: resources,
  @ocaml.doc("<p>The type of action for which the principal is being authorized.</p>")
  actionType: option<actionType>,
}
type auditTaskMetadataList = array<auditTaskMetadata>
type auditNotificationTargetConfigurations = Js.Dict.t<auditNotificationTarget>
type auditMitigationActionsTaskStatistics = Js.Dict.t<taskStatisticsForAuditCheck>
type auditMitigationActionsTaskMetadataList = array<auditMitigationActionsTaskMetadata>
type auditMitigationActionExecutionMetadataList = array<auditMitigationActionExecutionMetadata>
type auditDetails = Js.Dict.t<auditCheckDetails>
type auditCheckToReasonCodeFilter = Js.Dict.t<reasonForNonComplianceCodes>
type auditCheckToActionsMapping = Js.Dict.t<mitigationActionNameList>
type auditCheckConfigurations = Js.Dict.t<auditCheckConfiguration>
@ocaml.doc("<p>The attribute payload.</p>")
type attributePayload = {
  @ocaml.doc("<p>Specifies whether the list of attributes provided in the <code>AttributePayload</code> is merged with
			the attributes stored in the registry, instead of overwriting them.</p>
		       <p>To remove an attribute, call <code>UpdateThing</code> with an empty attribute value.</p>
		       <note>
			         <p>The <code>merge</code> attribute is only valid when calling <code>UpdateThing</code> or <code>UpdateThingGroup</code>.</p>
		       </note>")
  merge: option<flag>,
  @ocaml.doc("<p>A JSON string containing up to three key-value pair in JSON format. For example:</p>
		       <p>
			         <code>{\\\"attributes\\\":{\\\"string1\\\":\\\"string2\\\"}}</code>
		       </p>")
  attributes: option<attributes>,
}
@ocaml.doc("<p>An asset property value entry containing the following information.</p>")
type assetPropertyValue = {
  @ocaml.doc("<p>Optional. A string that describes the quality of the value. Accepts substitution
      templates. Must be <code>GOOD</code>, <code>BAD</code>, or <code>UNCERTAIN</code>.</p>")
  quality: option<assetPropertyQuality>,
  @ocaml.doc("<p>The asset property value timestamp.</p>") @as("timestamp")
  timestamp_: assetPropertyTimestamp,
  @ocaml.doc("<p>The value of the asset property.</p>") value: assetPropertyVariant,
}
type alertTargets = Js.Dict.t<alertTarget>
@ocaml.doc(
  "<p>Parameters used when defining a mitigation action that move a set of things to a thing group.</p>"
)
type addThingsToThingGroupParams = {
  @ocaml.doc(
    "<p>Specifies if this mitigation action can move the things that triggered the mitigation action even if they are part of one or more dynamic thing groups.</p>"
  )
  overrideDynamicGroups: option<overrideDynamicGroups>,
  @ocaml.doc(
    "<p>The list of groups to which you want to add the things that triggered the mitigation action. You can add a thing to a maximum of 10 groups, but you can't add a thing to more than one group in the same hierarchy.</p>"
  )
  thingGroupNames: thingGroupNames,
}
type abortCriteriaList = array<abortCriteria>
@ocaml.doc("<p>Information about the topic rule destination.</p>")
type topicRuleDestinationSummary = {
  @ocaml.doc("<p>Information about the virtual private cloud (VPC) connection.</p>")
  vpcDestinationSummary: option<vpcDestinationSummary>,
  @ocaml.doc("<p>Information about the HTTP URL.</p>")
  httpUrlSummary: option<httpUrlDestinationSummary>,
  @ocaml.doc("<p>The reason the topic rule destination is in the current status.</p>")
  statusReason: option<string_>,
  @ocaml.doc("<p>The date and time when the topic rule destination was last updated.</p>")
  lastUpdatedAt: option<lastUpdatedAtDate>,
  @ocaml.doc("<p>The date and time when the topic rule destination was created.</p>")
  createdAt: option<createdAtDate>,
  @ocaml.doc("<p>The status of the topic rule destination. Valid values are:</p>
         <dl>
            <dt>IN_PROGRESS</dt>
            <dd>
               <p>A topic rule destination was created but has not been confirmed. You can set
                     <code>status</code> to <code>IN_PROGRESS</code> by calling
                     <code>UpdateTopicRuleDestination</code>. Calling
                     <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
                  be sent to your confirmation endpoint.</p>
            </dd>
            <dt>ENABLED</dt>
            <dd>
               <p>Confirmation was completed, and traffic to this destination is allowed. You can
                  set <code>status</code> to <code>DISABLED</code> by calling
                     <code>UpdateTopicRuleDestination</code>.</p>
            </dd>
            <dt>DISABLED</dt>
            <dd>
               <p>Confirmation was completed, and traffic to this destination is not allowed. You
                  can set <code>status</code> to <code>ENABLED</code> by calling
                     <code>UpdateTopicRuleDestination</code>.</p>
            </dd>
            <dt>ERROR</dt>
            <dd>
               <p>Confirmation could not be completed, for example if the confirmation timed out.
                  You can call <code>GetTopicRuleDestination</code> for details about the error. You
                  can set <code>status</code> to <code>IN_PROGRESS</code> by calling
                     <code>UpdateTopicRuleDestination</code>. Calling
                     <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
                  be sent to your confirmation endpoint.</p>
            </dd>
         </dl>")
  status: option<topicRuleDestinationStatus>,
  @ocaml.doc("<p>The topic rule destination ARN.</p>") arn: option<awsArn>,
}
@ocaml.doc("<p>Configuration of the topic rule destination.</p>")
type topicRuleDestinationConfiguration = {
  @ocaml.doc("<p>Configuration of the virtual private cloud (VPC) connection.</p>")
  vpcConfiguration: option<vpcDestinationConfiguration>,
  @ocaml.doc("<p>Configuration of the HTTP URL.</p>")
  httpUrlConfiguration: option<httpUrlDestinationConfiguration>,
}
@ocaml.doc("<p>A topic rule destination.</p>")
type topicRuleDestination = {
  @ocaml.doc("<p>Properties of the virtual private cloud (VPC) connection.</p>")
  vpcProperties: option<vpcDestinationProperties>,
  @ocaml.doc("<p>Properties of the HTTP URL.</p>")
  httpUrlProperties: option<httpUrlDestinationProperties>,
  @ocaml.doc("<p>Additional details or reason why the topic rule destination is in the current
         status.</p>")
  statusReason: option<string_>,
  @ocaml.doc("<p>The date and time when the topic rule destination was last updated.</p>")
  lastUpdatedAt: option<lastUpdatedAtDate>,
  @ocaml.doc("<p>The date and time when the topic rule destination was created.</p>")
  createdAt: option<createdAtDate>,
  @ocaml.doc("<p>The status of the topic rule destination. Valid values are:</p>
         <dl>
            <dt>IN_PROGRESS</dt>
            <dd>
               <p>A topic rule destination was created but has not been confirmed. You can set
                     <code>status</code> to <code>IN_PROGRESS</code> by calling
                     <code>UpdateTopicRuleDestination</code>. Calling
                     <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
                  be sent to your confirmation endpoint.</p>
            </dd>
            <dt>ENABLED</dt>
            <dd>
               <p>Confirmation was completed, and traffic to this destination is allowed. You can
                  set <code>status</code> to <code>DISABLED</code> by calling
                     <code>UpdateTopicRuleDestination</code>.</p>
            </dd>
            <dt>DISABLED</dt>
            <dd>
               <p>Confirmation was completed, and traffic to this destination is not allowed. You
                  can set <code>status</code> to <code>ENABLED</code> by calling
                     <code>UpdateTopicRuleDestination</code>.</p>
            </dd>
            <dt>ERROR</dt>
            <dd>
               <p>Confirmation could not be completed, for example if the confirmation timed out.
                  You can call <code>GetTopicRuleDestination</code> for details about the error. You
                  can set <code>status</code> to <code>IN_PROGRESS</code> by calling
                     <code>UpdateTopicRuleDestination</code>. Calling
                     <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
                  be sent to your confirmation endpoint.</p>
            </dd>
         </dl>")
  status: option<topicRuleDestinationStatus>,
  @ocaml.doc("<p>The topic rule destination URL.</p>") arn: option<awsArn>,
}
@ocaml.doc("<p>The Timestream rule action writes attributes (measures) from an MQTT message
         into an Amazon Timestream table. For more information, see the <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/timestream-rule-action.html\">Timestream</a>
         topic rule action documentation.</p>")
type timestreamAction = {
  @ocaml.doc("<p>Specifies an application-defined value to replace the default value assigned to the
         Timestream record's timestamp in the <code>time</code> column.</p>
         <p>You can use this property to specify the value and the precision of the Timestream
         record's timestamp. You can specify a value from the message payload or a value computed by
         a substitution template.</p>
         <p>If omitted, the topic rule action assigns the timestamp, in milliseconds, at the time it
         processed the rule. </p>")
  @as("timestamp")
  timestamp_: option<timestreamTimestamp>,
  @ocaml.doc(
    "<p>Metadata attributes of the time series that are written in each measure record.</p>"
  )
  dimensions: timestreamDimensionList,
  @ocaml.doc("<p>The name of the database table into which to write the measure records.</p>")
  tableName: timestreamTableName,
  @ocaml.doc("<p>The name of an Amazon Timestream database.</p>")
  databaseName: timestreamDatabaseName,
  @ocaml.doc("<p>The ARN of the role that grants permission to write to the
         Amazon Timestream database table.</p>")
  roleArn: awsArn,
}
@ocaml.doc("<p>The definition of the thing type, including thing type name and description.</p>")
type thingTypeDefinition = {
  @ocaml.doc("<p>The ThingTypeMetadata contains additional information about the thing type including: creation date and
			time, a value indicating whether the thing type is deprecated, and a date and time when it was
			deprecated.</p>")
  thingTypeMetadata: option<thingTypeMetadata>,
  @ocaml.doc("<p>The ThingTypeProperties for the thing type.</p>")
  thingTypeProperties: option<thingTypeProperties>,
  @ocaml.doc("<p>The thing type ARN.</p>") thingTypeArn: option<thingTypeArn>,
  @ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: option<thingTypeName>,
}
@ocaml.doc("<p>The thing indexing configuration. For more information, see <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html\">Managing
        Thing Indexing</a>.</p>")
type thingIndexingConfiguration = {
  @ocaml.doc("<p>Contains custom field names and their data type.</p>")
  customFields: option<fields>,
  @ocaml.doc("<p>Contains fields that are indexed and whose types are already known by the Fleet Indexing
      service.</p>")
  managedFields: option<fields>,
  @ocaml.doc("<p>Thing connectivity indexing mode. Valid values are: </p>
         <ul>
            <li>
               <p>STATUS – Your thing index contains connectivity status. To enable thing
          connectivity indexing, thingIndexMode must not be set to OFF.</p>
            </li>
            <li>
               <p>OFF - Thing connectivity status indexing is disabled.</p>
            </li>
         </ul>")
  thingConnectivityIndexingMode: option<thingConnectivityIndexingMode>,
  @ocaml.doc("<p>Thing indexing mode. Valid values are:</p>
         <ul>
            <li>
               <p>REGISTRY – Your thing index contains registry data only.</p>
            </li>
            <li>
               <p>REGISTRY_AND_SHADOW - Your thing index contains registry and shadow data.</p>
            </li>
            <li>
               <p>OFF - Thing indexing is disabled.</p>
            </li>
         </ul>")
  thingIndexingMode: thingIndexingMode,
}
@ocaml.doc("<p>Thing group properties.</p>")
type thingGroupProperties = {
  @ocaml.doc("<p>The thing group attributes in JSON format.</p>")
  attributePayload: option<attributePayload>,
  @ocaml.doc("<p>The thing group description.</p>")
  thingGroupDescription: option<thingGroupDescription>,
}
@ocaml.doc("<p>Thing group metadata.</p>")
type thingGroupMetadata = {
  @ocaml.doc("<p>The UNIX timestamp of when the thing group was created.</p>")
  creationDate: option<creationDate>,
  @ocaml.doc("<p>The root parent thing group.</p>")
  rootToParentThingGroups: option<thingGroupNameAndArnList>,
  @ocaml.doc("<p>The parent thing group name.</p>") parentGroupName: option<thingGroupName>,
}
@ocaml.doc("<p>Thing group indexing configuration.</p>")
type thingGroupIndexingConfiguration = {
  @ocaml.doc("<p>A list of thing group fields to index. This list cannot contain any managed fields. Use
      the GetIndexingConfiguration API to get a list of managed fields.</p>
         <p>Contains custom field names and their data type.</p>")
  customFields: option<fields>,
  @ocaml.doc("<p>Contains fields that are indexed and whose types are already known by the Fleet Indexing
      service.</p>")
  managedFields: option<fields>,
  @ocaml.doc("<p>Thing group indexing mode.</p>") thingGroupIndexingMode: thingGroupIndexingMode,
}
type thingGroupDocumentList = array<thingGroupDocument>
type thingDocumentList = array<thingDocument>
type thingAttributeList = array<thingAttribute>
type streamFiles = array<streamFile>
@ocaml.doc("<p>Information required to start a signing job.</p>")
type startSigningJobParameter = {
  @ocaml.doc("<p>The location to write the code-signed file.</p>") destination: option<destination>,
  @ocaml.doc("<p>The code-signing profile name.</p>")
  signingProfileName: option<signingProfileName>,
  @ocaml.doc("<p>Describes the code-signing profile.</p>")
  signingProfileParameter: option<signingProfileParameter>,
}
type securityProfileTargetMappings = array<securityProfileTargetMapping>
@ocaml.doc("<p>Information about a related resource.</p>")
type relatedResource = {
  @ocaml.doc("<p>Other information about the resource.</p>") additionalInfo: option<stringMap>,
  @ocaml.doc("<p>Information that identifies the resource.</p>")
  resourceIdentifier: option<resourceIdentifier>,
  @ocaml.doc("<p>The type of resource.</p>") resourceType: option<resourceType>,
}
@ocaml.doc("<p>Information about the resource that was noncompliant with the audit check.</p>")
type nonCompliantResource = {
  @ocaml.doc("<p>Other information about the noncompliant resource.</p>")
  additionalInfo: option<stringMap>,
  @ocaml.doc("<p>Information that identifies the noncompliant resource.</p>")
  resourceIdentifier: option<resourceIdentifier>,
  @ocaml.doc("<p>The type of the noncompliant resource.</p>") resourceType: option<resourceType>,
}
@ocaml.doc(
  "<p>The set of parameters for this mitigation action. You can specify only one type of parameter (in other words, you can apply only one action for each defined mitigation action).</p>"
)
type mitigationActionParams = {
  @ocaml.doc(
    "<p>Parameters to define a mitigation action that publishes findings to Amazon Simple Notification Service (Amazon SNS. You can implement your own custom actions in response to the Amazon SNS messages.</p>"
  )
  publishFindingToSnsParams: option<publishFindingToSnsParams>,
  @ocaml.doc(
    "<p>Parameters to define a mitigation action that enables AWS IoT logging at a specified level of detail.</p>"
  )
  enableIoTLoggingParams: option<enableIoTLoggingParams>,
  @ocaml.doc(
    "<p>Parameters to define a mitigation action that adds a blank policy to restrict permissions.</p>"
  )
  replaceDefaultPolicyVersionParams: option<replaceDefaultPolicyVersionParams>,
  @ocaml.doc(
    "<p>Parameters to define a mitigation action that moves devices associated with a certificate to one or more specified thing groups, typically for quarantine.</p>"
  )
  addThingsToThingGroupParams: option<addThingsToThingGroupParams>,
  @ocaml.doc(
    "<p>Parameters to define a mitigation action that changes the state of the CA certificate to inactive.</p>"
  )
  updateCACertificateParams: option<updateCACertificateParams>,
  @ocaml.doc(
    "<p>Parameters to define a mitigation action that changes the state of the device certificate to inactive.</p>"
  )
  updateDeviceCertificateParams: option<updateDeviceCertificateParams>,
}
type logTargetConfigurations = array<logTargetConfiguration>
@ocaml.doc("<p>Allows you to create a staged rollout of a job.</p>")
type jobExecutionsRolloutConfig = {
  @ocaml.doc("<p>The rate of increase for a job rollout.
            This parameter allows you to define an exponential rate for a job rollout.</p>")
  exponentialRate: option<exponentialRolloutRate>,
  @ocaml.doc("<p>The maximum number of things that will be notified of a pending job, per minute.
        This parameter allows you to create a staged rollout.</p>")
  maximumPerMinute: option<maxJobExecutionsPerMin>,
}
type jobExecutionSummaryForThingList = array<jobExecutionSummaryForThing>
type jobExecutionSummaryForJobList = array<jobExecutionSummaryForJob>
@ocaml.doc(
  "<p>The job execution object represents the execution of a job on a particular device.</p>"
)
type jobExecution = {
  @ocaml.doc("<p>The estimated number of seconds that remain before the job execution status will be
           changed to <code>TIMED_OUT</code>. The timeout interval can be anywhere between 1 minute and 7 days (1 to 10080 minutes). 
           The actual job execution timeout can occur up to 60 seconds later than the estimated duration. 
       This value will not be included if the job execution has reached a terminal status.</p>")
  approximateSecondsBeforeTimedOut: option<approximateSecondsBeforeTimedOut>,
  @ocaml.doc("<p>The version of the job execution. Job execution versions are incremented each time they are updated
      by a device.</p>")
  versionNumber: option<versionNumber>,
  @ocaml.doc("<p>A string (consisting of the digits \"0\" through \"9\") which identifies this particular job execution on
            this particular device. It can be used in commands which return or update job execution information.
        </p>")
  executionNumber: option<executionNumber>,
  @ocaml.doc(
    "<p>The time, in seconds since the epoch, when the job execution was last updated.</p>"
  )
  lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job execution started.</p>")
  startedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job execution was queued.</p>")
  queuedAt: option<dateType>,
  @ocaml.doc("<p>The ARN of the thing on which the job execution is running.</p>")
  thingArn: option<thingArn>,
  @ocaml.doc(
    "<p>A collection of name/value pairs that describe the status of the job execution.</p>"
  )
  statusDetails: option<jobExecutionStatusDetails>,
  @ocaml.doc("<p>Will be <code>true</code> if the job execution was canceled with the optional <code>force</code> 
          parameter set to <code>true</code>.</p>")
  forceCanceled: option<forced>,
  @ocaml.doc("<p>The status of the job execution (IN_PROGRESS, QUEUED, FAILED, SUCCEEDED, TIMED_OUT, 
            CANCELED, or REJECTED).</p>")
  status: option<jobExecutionStatus>,
  @ocaml.doc("<p>The unique identifier you assigned to the job when it was created.</p>")
  jobId: option<jobId>,
}
@ocaml.doc("<p>Information that implicitly denies authorization. When policy doesn't explicitly deny
         or allow an action on a resource it is considered an implicit deny.</p>")
type implicitDeny = {
  @ocaml.doc("<p>Policies that don't contain a matching allow or deny statement for the specified
         action on the specified resource. </p>")
  policies: option<policies>,
}
@ocaml.doc("<p>Send data to an HTTPS endpoint.</p>")
type httpAction = {
  @ocaml.doc("<p>The authentication method to use when sending data to an HTTPS endpoint.</p>")
  auth: option<httpAuthorization>,
  @ocaml.doc("<p>The HTTP headers to send with the message data.</p>") headers: option<headerList>,
  @ocaml.doc("<p>The URL to which AWS IoT sends a confirmation message. The value of the confirmation URL
         must be a prefix of the endpoint URL. If you do not specify a confirmation URL AWS IoT uses
         the endpoint URL as the confirmation URL. If you use substitution templates in the
         confirmationUrl, you must create and enable topic rule destinations that match each
         possible value of the substitution template before traffic is allowed to your endpoint
         URL.</p>")
  confirmationUrl: option<url>,
  @ocaml.doc("<p>The endpoint URL. If substitution templates are used in the URL, you must also specify a
            <code>confirmationUrl</code>. If this is a new destination, a new
            <code>TopicRuleDestination</code> is created if possible.</p>")
  url: url,
}
@ocaml.doc("<p>Information that explicitly denies authorization.</p>")
type explicitDeny = {
  @ocaml.doc("<p>The policies that denied the authorization.</p>") policies: option<policies>,
}
@ocaml.doc("<p>The criteria by which the behavior is determined to be normal.</p>")
type behaviorCriteria = {
  @ocaml.doc("<p>
            The configuration of an ML Detect 
        </p>")
  mlDetectionConfig: option<machineLearningDetectionConfig>,
  @ocaml.doc("<p>A statistical ranking (percentile)that
      indicates a threshold value by which a behavior is determined to be in compliance or in
      violation of the behavior.</p>")
  statisticalThreshold: option<statisticalThreshold>,
  @ocaml.doc("<p>If an alarm has occurred and the offending device is no longer in violation of the behavior 
          for the specified number of consecutive datapoints, the alarm is cleared. If not specified,
          the default is 1.</p>")
  consecutiveDatapointsToClear: option<consecutiveDatapointsToClear>,
  @ocaml.doc("<p>If a device is in violation of the behavior for the specified number of consecutive 
          datapoints, an alarm occurs. If not specified, the default is 1.</p>")
  consecutiveDatapointsToAlarm: option<consecutiveDatapointsToAlarm>,
  @ocaml.doc("<p>Use this to specify the time duration over which the behavior is evaluated, for those criteria that
      have a time dimension (for example, <code>NUM_MESSAGES_SENT</code>). For a
        <code>statisticalThreshhold</code> metric comparison, measurements from all devices are
      accumulated over this time duration before being used to calculate percentiles, and later,
      measurements from an individual device are also accumulated over this time duration before
      being given a percentile rank. Cannot be used with list-based metric datatypes.</p>")
  durationSeconds: option<durationSeconds>,
  @ocaml.doc("<p>The value to be compared with the <code>metric</code>.</p>")
  value: option<metricValue>,
  @ocaml.doc("<p>The operator that relates the thing measured (<code>metric</code>) to the criteria 
          (containing a <code>value</code> or <code>statisticalThreshold</code>). Valid operators include:</p>
         <ul>
            <li>
               <p>
                  <code>string-list</code>: <code>in-set</code> and <code>not-in-set</code>
               </p>
            </li>
            <li>
               <p>
                  <code>number-list</code>: <code>in-set</code> and <code>not-in-set</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ip-address-list</code>: <code>in-cidr-set</code> and <code>not-in-cidr-set</code>
               </p>
            </li>
            <li>
               <p>
                  <code>number</code>: <code>less-than</code>, <code>less-than-equals</code>, <code>greater-than</code>, and <code>greater-than-equals</code>
               </p>
            </li>
         </ul>")
  comparisonOperator: option<comparisonOperator>,
}
@ocaml.doc("<p>Configuration for the rollout of OTA updates.</p>")
type awsJobExecutionsRolloutConfig = {
  @ocaml.doc("<p>The rate of increase for a job rollout. This parameter allows you to define an exponential rate 
            increase for a job rollout.</p>")
  exponentialRate: option<awsJobExponentialRolloutRate>,
  @ocaml.doc("<p>The maximum number of OTA update job executions started per minute.</p>")
  maximumPerMinute: option<maximumPerMinute>,
}
@ocaml.doc("<p>The criteria that determine when and how a job abort takes place.</p>")
type awsJobAbortConfig = {
  @ocaml.doc("<p>The list of criteria that determine when and how to abort the job.</p>")
  abortCriteriaList: awsJobAbortCriteriaList,
}
type authInfos = array<authInfo>
@ocaml.doc("<p> Filters out specific findings of a Device Defender audit. </p>")
type auditSuppression = {
  @ocaml.doc("<p>
            The description of the audit suppression.
        </p>")
  description: option<auditDescription>,
  @ocaml.doc("<p>
            Indicates whether a suppression should exist indefinitely or not.
        </p>")
  suppressIndefinitely: option<suppressIndefinitely>,
  @ocaml.doc("<p>
            The expiration date (epoch timestamp in seconds) that you want the suppression to adhere to.
        </p>")
  expirationDate: option<timestamp_>,
  resourceIdentifier: resourceIdentifier,
  checkName: auditCheckName,
}
@ocaml.doc(
  "<p>Used in MitigationActionParams, this information identifies the target findings to which the mitigation actions are applied. Only one entry appears.</p>"
)
type auditMitigationActionsTaskTarget = {
  @ocaml.doc(
    "<p>Specifies a filter in the form of an audit check and set of reason codes that identify the findings from the audit to which the audit mitigation actions task apply.</p>"
  )
  auditCheckToReasonCodeFilter: option<auditCheckToReasonCodeFilter>,
  @ocaml.doc(
    "<p>If the task will apply a mitigation action to one or more listed findings, this value uniquely identifies those findings.</p>"
  )
  findingIds: option<findingIds>,
  @ocaml.doc(
    "<p>If the task will apply a mitigation action to findings from a specific audit, this value uniquely identifies the audit.</p>"
  )
  auditTaskId: option<auditTaskId>,
}
type assetPropertyValueList = array<assetPropertyValue>
@ocaml.doc("<p>Contains information that allowed the authorization.</p>")
type allowed = {
  @ocaml.doc("<p>A list of policies that allowed the authentication.</p>")
  policies: option<policies>,
}
type additionalMetricsToRetainV2List = array<metricToRetain>
@ocaml.doc("<p>The criteria that determine when and how a job abort takes place.</p>")
type abortConfig = {
  @ocaml.doc("<p>The list of criteria that determine when and how to abort the job.</p>")
  criteriaList: abortCriteriaList,
}
type topicRuleDestinationSummaries = array<topicRuleDestinationSummary>
type thingTypeList = array<thingTypeDefinition>
@ocaml.doc("<p>Information about a stream.</p>")
type streamInfo = {
  @ocaml.doc("<p>An IAM role AWS IoT assumes to access your S3 files.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The date when the stream was last updated.</p>") lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The date when the stream was created.</p>") createdAt: option<dateType>,
  @ocaml.doc("<p>The files to stream.</p>") files: option<streamFiles>,
  @ocaml.doc("<p>The description of the stream.</p>") description: option<streamDescription>,
  @ocaml.doc("<p>The stream version.</p>") streamVersion: option<streamVersion>,
  @ocaml.doc("<p>The stream ARN.</p>") streamArn: option<streamArn>,
  @ocaml.doc("<p>The stream ID.</p>") streamId: option<streamId>,
}
type relatedResources = array<relatedResource>
@ocaml.doc("<p>An asset property value entry containing the following information.</p>")
type putAssetPropertyValueEntry = {
  @ocaml.doc("<p>A list of property values to insert that each contain timestamp, quality, and value (TQV)
      information.</p>")
  propertyValues: assetPropertyValueList,
  @ocaml.doc("<p>The name of the property alias associated with your asset property. You must specify
      either a <code>propertyAlias</code> or both an <code>aliasId</code> and a
        <code>propertyId</code>. Accepts substitution templates.</p>")
  propertyAlias: option<assetPropertyAlias>,
  @ocaml.doc("<p>The ID of the asset's property. You must specify either a <code>propertyAlias</code> or
      both an <code>aliasId</code> and a <code>propertyId</code>. Accepts substitution
      templates.</p>")
  propertyId: option<assetPropertyId>,
  @ocaml.doc("<p>The ID of the AWS IoT SiteWise asset. You must specify either a <code>propertyAlias</code>
      or both an <code>aliasId</code> and a <code>propertyId</code>. Accepts substitution
      templates.</p>")
  assetId: option<assetId>,
  @ocaml.doc("<p>Optional. A unique identifier for this entry that you can define to better track which
      message caused an error in case of failure. Accepts substitution templates. Defaults to a new
      UUID.</p>")
  entryId: option<assetPropertyEntryId>,
}
@ocaml.doc("<p>Describes which changes should be applied as part of a mitigation action.</p>")
type mitigationAction = {
  @ocaml.doc(
    "<p>The set of parameters for this mitigation action. The parameters vary, depending on the kind of action you apply.</p>"
  )
  actionParams: option<mitigationActionParams>,
  @ocaml.doc("<p>The IAM role ARN used to apply this mitigation action.</p>")
  roleArn: option<roleArn>,
  @ocaml.doc("<p>A unique identifier for the mitigation action.</p>")
  id: option<mitigationActionId>,
  @ocaml.doc("<p>A user-friendly name for the mitigation action.</p>")
  name: option<mitigationActionName>,
}
@ocaml.doc("<p>The <code>Job</code> object contains details about a job.</p>")
type job = {
  @ocaml.doc("<p>The ARN of the job template used to create the job.</p>")
  jobTemplateArn: option<jobTemplateArn>,
  @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
  namespaceId: option<namespaceId>,
  @ocaml.doc("<p>Specifies the amount of time each device has to finish its execution of the job.  A timer 
           is started when the job execution status is set to <code>IN_PROGRESS</code>. If the job 
           execution status is not set to another terminal state before the timer expires, it will
           be automatically set to <code>TIMED_OUT</code>.</p>")
  timeoutConfig: option<timeoutConfig>,
  @ocaml.doc("<p>Details about the job process.</p>") jobProcessDetails: option<jobProcessDetails>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job was completed.</p>")
  completedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job was last updated.</p>")
  lastUpdatedAt: option<dateType>,
  @ocaml.doc("<p>The time, in seconds since the epoch, when the job was created.</p>")
  createdAt: option<dateType>,
  @ocaml.doc("<p>Configuration for criteria to abort the job.</p>")
  abortConfig: option<abortConfig>,
  @ocaml.doc("<p>Allows you to create a staged rollout of a job.</p>")
  jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
  @ocaml.doc("<p>Configuration for pre-signed S3 URLs.</p>")
  presignedUrlConfig: option<presignedUrlConfig>,
  @ocaml.doc("<p>A short text description of the job.</p>") description: option<jobDescription>,
  @ocaml.doc("<p>A list of IoT things and thing groups to which the job should be sent.</p>")
  targets: option<jobTargets>,
  @ocaml.doc("<p>If the job was updated, describes the reason for the update.</p>")
  comment: option<comment>,
  @ocaml.doc("<p>If the job was updated, provides the reason code for the update.</p>")
  reasonCode: option<reasonCode>,
  @ocaml.doc("<p>Will be <code>true</code> if the job was canceled with the optional <code>force</code> parameter set to 
          <code>true</code>.</p>")
  forceCanceled: option<forced>,
  @ocaml.doc("<p>The status of the job, one of <code>IN_PROGRESS</code>, <code>CANCELED</code>, 
            <code>DELETION_IN_PROGRESS</code> or <code>COMPLETED</code>. </p>")
  status: option<jobStatus>,
  @ocaml.doc("<p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things
            specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing
            when a change is detected in a target. For example, a job will run on a device when the thing representing
            the device is added to a target group, even after the job was completed by all things originally in the 
            group. </p>")
  targetSelection: option<targetSelection>,
  @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
  jobId: option<jobId>,
  @ocaml.doc(
    "<p>An ARN identifying the job with format \"arn:aws:iot:region:account:job/jobId\".</p>"
  )
  jobArn: option<jobArn>,
}
@ocaml.doc("<p>Contains information that denied the authorization.</p>")
type denied = {
  @ocaml.doc("<p>Information that explicitly denies the authorization. </p>")
  explicitDeny: option<explicitDeny>,
  @ocaml.doc("<p>Information that implicitly denies the authorization. When a policy doesn't
         explicitly deny or allow an action on a resource it is considered an implicit
         deny.</p>")
  implicitDeny: option<implicitDeny>,
}
@ocaml.doc("<p>Describes the method to use when code signing a file.</p>")
type codeSigning = {
  @ocaml.doc("<p>A custom method for code signing a file.</p>")
  customCodeSigning: option<customCodeSigning>,
  @ocaml.doc("<p>Describes the code-signing job.</p>")
  startSigningJobParameter: option<startSigningJobParameter>,
  @ocaml.doc("<p>The ID of the AWSSignerJob which was created to sign the file.</p>")
  awsSignerJobId: option<signingJobId>,
}
@ocaml.doc("<p>A Device Defender security profile behavior.</p>")
type behavior = {
  @ocaml.doc("<p>
            Suppresses alerts.
        </p>")
  suppressAlerts: option<suppressAlerts>,
  @ocaml.doc("<p>The criteria that determine if a device is behaving normally in regard to
          the <code>metric</code>.</p>")
  criteria: option<behaviorCriteria>,
  @ocaml.doc("<p>The dimension for a metric in your behavior. For example, using a
                <code>TOPIC_FILTER</code> dimension, you can narrow down the scope of the metric to only MQTT topics where the name matches the pattern specified in the dimension. This can't be used with custom metrics.</p>")
  metricDimension: option<metricDimension>,
  @ocaml.doc("<p>What is measured by the behavior.</p>") metric: option<behaviorMetric>,
  @ocaml.doc("<p>The name
      you've given to the behavior.</p>")
  name: behaviorName,
}
type auditSuppressionList = array<auditSuppression>
@ocaml.doc("<p>Information about a Device Defender security profile behavior violation.</p>")
type violationEvent = {
  @ocaml.doc("<p>The time the violation event occurred.</p>")
  violationEventTime: option<timestamp_>,
  @ocaml.doc("<p>The type of violation event.</p>") violationEventType: option<violationEventType>,
  @ocaml.doc("<p>
            The details of a violation event.
        </p>")
  violationEventAdditionalInfo: option<violationEventAdditionalInfo>,
  @ocaml.doc("<p>The value of the metric (the measurement).</p>") metricValue: option<metricValue>,
  @ocaml.doc("<p>The behavior that was violated.</p>") behavior: option<behavior>,
  @ocaml.doc("<p>The name of the security profile whose behavior was violated.</p>")
  securityProfileName: option<securityProfileName>,
  @ocaml.doc("<p>The name of the thing responsible for the violation event.</p>")
  thingName: option<deviceDefenderThingName>,
  @ocaml.doc("<p>The ID of the violation event.</p>") violationId: option<violationId>,
}
type putAssetPropertyValueEntryList = array<putAssetPropertyValueEntry>
@ocaml.doc("<p>Describes a file to be associated with an OTA update.</p>")
type otaupdateFile = {
  @ocaml.doc("<p>A list of name/attribute pairs.</p>") attributes: option<attributesMap>,
  @ocaml.doc("<p>The code signing method of the file.</p>") codeSigning: option<codeSigning>,
  @ocaml.doc("<p>The location of the updated firmware.</p>") fileLocation: option<fileLocation>,
  @ocaml.doc("<p>The file version.</p>") fileVersion: option<otaupdateFileVersion>,
  @ocaml.doc("<p>An integer value you can include in the job document to allow your devices to identify the type of file received 
            from the cloud.</p>")
  fileType: option<fileType>,
  @ocaml.doc("<p>The name of the file.</p>") fileName: option<fileName>,
}
type mitigationActionList = array<mitigationAction>
type behaviors = array<behavior>
@ocaml.doc("<p>The authorizer result.</p>")
type authResult = {
  @ocaml.doc("<p>Contains any missing context values found while evaluating policy.</p>")
  missingContextValues: option<missingContextValues>,
  @ocaml.doc("<p>The final authorization decision of this scenario. Multiple statements are taken into
         account when determining the authorization decision. An explicit deny statement can
         override multiple allow statements.</p>")
  authDecision: option<authDecision>,
  @ocaml.doc("<p>The policies and statements that denied the specified action.</p>")
  denied: option<denied>,
  @ocaml.doc("<p>The policies and statements that allowed the specified action.</p>")
  allowed: option<allowed>,
  @ocaml.doc("<p>Authorization information.</p>") authInfo: option<authInfo>,
}
@ocaml.doc("<p>The findings (results) of the audit.</p>")
type auditFinding = {
  @ocaml.doc("<p>
            Indicates whether the audit finding was suppressed or not during reporting.
        </p>")
  isSuppressed: option<isSuppressed>,
  @ocaml.doc("<p>A code that indicates the reason that the resource was noncompliant.</p>")
  reasonForNonComplianceCode: option<reasonForNonComplianceCode>,
  @ocaml.doc("<p>The reason the resource was noncompliant.</p>")
  reasonForNonCompliance: option<reasonForNonCompliance>,
  @ocaml.doc("<p>The list of related resources.</p>") relatedResources: option<relatedResources>,
  @ocaml.doc("<p>The resource that was found to be noncompliant with the
        audit check.</p>")
  nonCompliantResource: option<nonCompliantResource>,
  @ocaml.doc("<p>The severity of the result (finding).</p>") severity: option<auditFindingSeverity>,
  @ocaml.doc("<p>The time the result (finding) was discovered.</p>")
  findingTime: option<timestamp_>,
  @ocaml.doc("<p>The time the audit started.</p>") taskStartTime: option<timestamp_>,
  @ocaml.doc("<p>The audit check that generated this result.</p>")
  checkName: option<auditCheckName>,
  @ocaml.doc("<p>The ID of the audit that generated this result (finding).</p>")
  taskId: option<auditTaskId>,
  @ocaml.doc("<p>A unique identifier for this set of audit findings. This identifier is used to apply
      mitigation tasks to one or more sets of findings.</p>")
  findingId: option<findingId>,
}
@ocaml.doc(
  "<p>Information about an active Device Defender security profile behavior violation.</p>"
)
type activeViolation = {
  @ocaml.doc("<p>The time the violation started.</p>") violationStartTime: option<timestamp_>,
  @ocaml.doc("<p>The time the most recent violation occurred.</p>")
  lastViolationTime: option<timestamp_>,
  @ocaml.doc("<p>
            The details of a violation event.
        </p>")
  violationEventAdditionalInfo: option<violationEventAdditionalInfo>,
  @ocaml.doc(
    "<p>The value of the metric (the measurement) that caused the most recent violation.</p>"
  )
  lastViolationValue: option<metricValue>,
  @ocaml.doc("<p>The behavior that is being violated.</p>") behavior: option<behavior>,
  @ocaml.doc("<p>The security profile with the behavior is in violation.</p>")
  securityProfileName: option<securityProfileName>,
  @ocaml.doc("<p>The name of the thing responsible for the active violation.</p>")
  thingName: option<deviceDefenderThingName>,
  @ocaml.doc("<p>The ID of the active violation.</p>") violationId: option<violationId>,
}
type violationEvents = array<violationEvent>
type otaupdateFiles = array<otaupdateFile>
@ocaml.doc("<p>Describes an action to send data from an MQTT message that triggered the rule to AWS IoT
      SiteWise asset properties.</p>")
type iotSiteWiseAction = {
  @ocaml.doc("<p>The ARN of the role that grants AWS IoT permission to send an asset property value to AWS
      IoTSiteWise. (<code>\"Action\": \"iotsitewise:BatchPutAssetPropertyValue\"</code>). The trust
      policy can restrict access to specific asset hierarchy paths.</p>")
  roleArn: awsArn,
  @ocaml.doc("<p>A list of asset property value entries.</p>")
  putAssetPropertyValueEntries: putAssetPropertyValueEntryList,
}
@ocaml.doc("<p>
            The summary of the mitigation action tasks.
        </p>")
type detectMitigationActionsTaskSummary = {
  @ocaml.doc("<p>
            The statistics of a mitigation action task.
        </p>")
  taskStatistics: option<detectMitigationActionsTaskStatistics>,
  @ocaml.doc("<p>
            The definition of the actions.
        </p>")
  actionsDefinition: option<mitigationActionList>,
  @ocaml.doc("<p>
            Includes suppressed alerts.
        </p>")
  suppressedAlertsIncluded: option<primitiveBoolean>,
  @ocaml.doc("<p>
            Includes only active violations.
        </p>")
  onlyActiveViolationsIncluded: option<primitiveBoolean>,
  @ocaml.doc("<p>
            Specifies the time period of which violation events occurred between.
        </p>")
  violationEventOccurrenceRange: option<violationEventOccurrenceRange>,
  @ocaml.doc("<p>
            Specifies the ML Detect findings to which the mitigation actions are applied.
        </p>")
  target: option<detectMitigationActionsTaskTarget>,
  @ocaml.doc("<p>
            The date the task ended.
        </p>")
  taskEndTime: option<timestamp_>,
  @ocaml.doc("<p>
            The date the task started.
        </p>")
  taskStartTime: option<timestamp_>,
  @ocaml.doc("<p>
            The status of the task.
        </p>")
  taskStatus: option<detectMitigationActionsTaskStatus>,
  @ocaml.doc("<p>
            The unique identifier of the task.
        </p>")
  taskId: option<mitigationActionsTaskId>,
}
type authResults = array<authResult>
type auditFindings = array<auditFinding>
type activeViolations = array<activeViolation>
@ocaml.doc("<p>Information about an OTA update.</p>")
type otaupdateInfo = {
  @ocaml.doc("<p>A collection of name/value pairs</p>")
  additionalParameters: option<additionalParameterMap>,
  @ocaml.doc("<p>Error information associated with the OTA update.</p>")
  errorInfo: option<errorInfo>,
  @ocaml.doc("<p>The AWS IoT job ARN associated with the OTA update.</p>")
  awsIotJobArn: option<awsIotJobArn>,
  @ocaml.doc("<p>The AWS IoT job ID associated with the OTA update.</p>")
  awsIotJobId: option<awsIotJobId>,
  @ocaml.doc("<p>The status of the OTA update.</p>") otaUpdateStatus: option<otaupdateStatus>,
  @ocaml.doc("<p>A list of files associated with the OTA update.</p>")
  otaUpdateFiles: option<otaupdateFiles>,
  @ocaml.doc("<p>Specifies whether the OTA update will continue to run (CONTINUOUS), or will be complete after all those
            things specified as targets have completed the OTA update (SNAPSHOT). If continuous, the OTA update may also
            be run on a thing when a change is detected in a target. For example, an OTA update will run on a thing when
            the thing is added to a target group, even after the OTA update was completed by all things originally in
            the group. </p>")
  targetSelection: option<targetSelection>,
  @ocaml.doc("<p>Configuration information for pre-signed URLs. Valid when <code>protocols</code>
             contains HTTP.</p>")
  awsJobPresignedUrlConfig: option<awsJobPresignedUrlConfig>,
  @ocaml.doc("<p>Configuration for the rollout of OTA updates.</p>")
  awsJobExecutionsRolloutConfig: option<awsJobExecutionsRolloutConfig>,
  @ocaml.doc("<p>The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both
             HTTP and MQTT are specified, the target device can choose the protocol.</p>")
  protocols: option<protocols>,
  @ocaml.doc("<p>The targets of the OTA update.</p>") targets: option<targets>,
  @ocaml.doc("<p>A description of the OTA update.</p>") description: option<otaupdateDescription>,
  @ocaml.doc("<p>The date when the OTA update was last updated.</p>")
  lastModifiedDate: option<dateType>,
  @ocaml.doc("<p>The date when the OTA update was created.</p>") creationDate: option<dateType>,
  @ocaml.doc("<p>The OTA update ARN.</p>") otaUpdateArn: option<otaupdateArn>,
  @ocaml.doc("<p>The OTA update ID.</p>") otaUpdateId: option<otaupdateId>,
}
type detectMitigationActionsTaskSummaryList = array<detectMitigationActionsTaskSummary>
@ocaml.doc("<p>Describes the actions associated with a rule.</p>")
type action = {
  @ocaml.doc(
    "<p>Send messages to an Amazon Managed Streaming for Apache Kafka (Amazon MSK) or self-managed Apache Kafka cluster.</p>"
  )
  kafka: option<kafkaAction>,
  @ocaml.doc("<p>Send data to an HTTPS endpoint.</p>") http: option<httpAction>,
  @ocaml.doc("<p>The Timestream rule action writes attributes (measures) from an MQTT message
         into an Amazon Timestream table. For more information, see the <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/timestream-rule-action.html\">Timestream</a>
            topic rule action documentation.</p>")
  timestream: option<timestreamAction>,
  @ocaml.doc("<p>Starts execution of a Step Functions state machine.</p>")
  stepFunctions: option<stepFunctionsAction>,
  @ocaml.doc("<p>Sends data from the MQTT message that triggered the rule to AWS IoT SiteWise asset
      properties.</p>")
  iotSiteWise: option<iotSiteWiseAction>,
  @ocaml.doc("<p>Sends an input to an AWS IoT Events detector.</p>")
  iotEvents: option<iotEventsAction>,
  @ocaml.doc("<p>Sends message data to an AWS IoT Analytics channel.</p>")
  iotAnalytics: option<iotAnalyticsAction>,
  @ocaml.doc("<p>Send a message to a Salesforce IoT Cloud Input Stream.</p>")
  salesforce: option<salesforceAction>,
  @ocaml.doc("<p>Write data to an Amazon Elasticsearch Service domain.</p>")
  elasticsearch: option<elasticsearchAction>,
  @ocaml.doc("<p>Send data to CloudWatch Logs.</p>") cloudwatchLogs: option<cloudwatchLogsAction>,
  @ocaml.doc("<p>Change the state of a CloudWatch alarm.</p>")
  cloudwatchAlarm: option<cloudwatchAlarmAction>,
  @ocaml.doc("<p>Capture a CloudWatch metric.</p>")
  cloudwatchMetric: option<cloudwatchMetricAction>,
  @ocaml.doc("<p>Write to an Amazon Kinesis Firehose stream.</p>") firehose: option<firehoseAction>,
  @ocaml.doc("<p>Write to an Amazon S3 bucket.</p>") s3: option<s3Action>,
  @ocaml.doc("<p>Publish to another MQTT topic.</p>") republish: option<republishAction>,
  @ocaml.doc("<p>Write data to an Amazon Kinesis stream.</p>") kinesis: option<kinesisAction>,
  @ocaml.doc("<p>Publish to an Amazon SQS queue.</p>") sqs: option<sqsAction>,
  @ocaml.doc("<p>Publish to an Amazon SNS topic.</p>") sns: option<snsAction>,
  @ocaml.doc("<p>Invoke a Lambda function.</p>") lambda: option<lambdaAction>,
  @ocaml.doc("<p>Write to a DynamoDB table. This is a new version of the DynamoDB action. It allows
         you to write each attribute in an MQTT message payload into a separate DynamoDB
         column.</p>")
  dynamoDBv2: option<dynamoDBv2Action>,
  @ocaml.doc("<p>Write to a DynamoDB table.</p>") dynamoDB: option<dynamoDBAction>,
}
type actionList = array<action>
@ocaml.doc("<p>Describes a rule.</p>")
type topicRulePayload = {
  @ocaml.doc("<p>The action to take when an error occurs.</p>") errorAction: option<action>,
  @ocaml.doc("<p>The version of the SQL rules engine to use when evaluating the rule.</p>")
  awsIotSqlVersion: option<awsIotSqlVersion>,
  @ocaml.doc("<p>Specifies whether the rule is disabled.</p>") ruleDisabled: option<isDisabled>,
  @ocaml.doc("<p>The actions associated with the rule.</p>") actions: actionList,
  @ocaml.doc("<p>The description of the rule.</p>") description: option<description>,
  @ocaml.doc("<p>The SQL statement used to query the topic. For more information, see <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/iot-sql-reference.html\">AWS IoT SQL
            Reference</a> in the <i>AWS IoT Developer Guide</i>.</p>")
  sql: sql,
}
@ocaml.doc("<p>Describes a rule.</p>")
type topicRule = {
  @ocaml.doc("<p>The action to perform when an error occurs.</p>") errorAction: option<action>,
  @ocaml.doc("<p>The version of the SQL rules engine to use when evaluating the rule.</p>")
  awsIotSqlVersion: option<awsIotSqlVersion>,
  @ocaml.doc("<p>Specifies whether the rule is disabled.</p>") ruleDisabled: option<isDisabled>,
  @ocaml.doc("<p>The actions associated with the rule.</p>") actions: option<actionList>,
  @ocaml.doc("<p>The date and time the rule was created.</p>") createdAt: option<createdAtDate>,
  @ocaml.doc("<p>The description of the rule.</p>") description: option<description>,
  @ocaml.doc("<p>The SQL statement used to query the topic. When using a SQL query with multiple
         lines, be sure to escape the newline characters.</p>")
  sql: option<sql>,
  @ocaml.doc("<p>The name of the rule.</p>") ruleName: option<ruleName>,
}
@ocaml.doc("<fullname>AWS IoT</fullname>
        <p>AWS IoT provides secure, bi-directional communication between Internet-connected
            devices (such as sensors, actuators, embedded devices, or smart appliances) and the AWS
            cloud. You can discover your custom IoT-Data endpoint to communicate with, configure
            rules for data processing and integration with other services, organize resources
            associated with each device (Registry), configure logging, and create and manage
            policies and credentials to authenticate devices.</p>
        <p>The service endpoints that expose this API are listed in
            <a href=\"https://docs.aws.amazon.com/general/latest/gr/iot-core.html\">AWS IoT Core Endpoints and Quotas</a>.
            You must use the endpoint for the region that has the resources you want to access.</p>
        <p>The service name used by <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">AWS
                Signature Version 4</a> to sign the request is:
            <i>execute-api</i>.</p>
        <p>For more information about how AWS IoT works, see the <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html\">Developer
            Guide</a>.</p>
        <p>For information about how to use the credentials provider for AWS IoT, see <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/authorizing-direct-aws.html\">Authorizing Direct Calls to AWS Services</a>.</p>")
module UpdateTopicRuleDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the topic rule destination. Valid values are:</p>
         <dl>
            <dt>IN_PROGRESS</dt>
            <dd>
               <p>A topic rule destination was created but has not been confirmed. You can set
                     <code>status</code> to <code>IN_PROGRESS</code> by calling
                     <code>UpdateTopicRuleDestination</code>. Calling
                     <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
                  be sent to your confirmation endpoint.</p>
            </dd>
            <dt>ENABLED</dt>
            <dd>
               <p>Confirmation was completed, and traffic to this destination is allowed. You can
                  set <code>status</code> to <code>DISABLED</code> by calling
                     <code>UpdateTopicRuleDestination</code>.</p>
            </dd>
            <dt>DISABLED</dt>
            <dd>
               <p>Confirmation was completed, and traffic to this destination is not allowed. You
                  can set <code>status</code> to <code>ENABLED</code> by calling
                     <code>UpdateTopicRuleDestination</code>.</p>
            </dd>
            <dt>ERROR</dt>
            <dd>
               <p>Confirmation could not be completed, for example if the confirmation timed out.
                  You can call <code>GetTopicRuleDestination</code> for details about the error. You
                  can set <code>status</code> to <code>IN_PROGRESS</code> by calling
                     <code>UpdateTopicRuleDestination</code>. Calling
                     <code>UpdateTopicRuleDestination</code> causes a new confirmation challenge to
                  be sent to your confirmation endpoint.</p>
            </dd>
         </dl>")
    status: topicRuleDestinationStatus,
    @ocaml.doc("<p>The ARN of the topic rule destination.</p>") arn: awsArn,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateTopicRuleDestinationCommand"
  let make = (~status, ~arn, ()) => new({status: status, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRoleAlias = {
  type t
  type request = {
    @ocaml.doc("<p>The number of seconds the credential will be valid.</p>")
    credentialDurationSeconds: option<credentialDurationSeconds>,
    @ocaml.doc("<p>The role ARN.</p>") roleArn: option<roleArn>,
    @ocaml.doc("<p>The role alias to update.</p>") roleAlias: roleAlias,
  }
  type response = {
    @ocaml.doc("<p>The role alias ARN.</p>") roleAliasArn: option<roleAliasArn>,
    @ocaml.doc("<p>The role alias.</p>") roleAlias: option<roleAlias>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateRoleAliasCommand"
  let make = (~roleAlias, ~credentialDurationSeconds=?, ~roleArn=?, ()) =>
    new({
      credentialDurationSeconds: credentialDurationSeconds,
      roleArn: roleArn,
      roleAlias: roleAlias,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCustomMetric = {
  type t
  type request = {
    @ocaml.doc("<p>
      Field
      represents a friendly name in the console for the custom metric,
      it
      doesn't have to be unique. Don't use this name as the metric identifier in
      the device metric report.
      Can
      be updated. </p>")
    displayName: customMetricDisplayName,
    @ocaml.doc("<p> The name of the custom metric.
      Cannot be updated. </p>")
    metricName: metricName,
  }
  type response = {
    @ocaml.doc("<p>
      The time the custom metric was last modified in milliseconds since epoch.
    </p>")
    lastModifiedDate: option<timestamp_>,
    @ocaml.doc("<p>
      The creation date of the custom metric in milliseconds since epoch.
    </p>")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>
      A friendly name in the console for the custom metric
    </p>")
    displayName: option<customMetricDisplayName>,
    @ocaml.doc("<p>
      The type of the custom metric. Types include <code>string-list</code>, <code>ip-address-list</code>, <code>number-list</code>, and <code>number</code>.
    </p>")
    metricType: option<customMetricType>,
    @ocaml.doc("<p>
      The Amazon Resource Number (ARN) of the custom metric.
    </p>")
    metricArn: option<customMetricArn>,
    @ocaml.doc("<p>
      The name of the custom metric.
    </p>")
    metricName: option<metricName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateCustomMetricCommand"
  let make = (~displayName, ~metricName, ()) =>
    new({displayName: displayName, metricName: metricName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCertificate = {
  type t
  @ocaml.doc("<p>The input for the UpdateCertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>The new status.</p>
         <p>
            <b>Note:</b> Setting the status to PENDING_TRANSFER  or PENDING_ACTIVATION will result
         in an exception being thrown. PENDING_TRANSFER and PENDING_ACTIVATION are statuses used internally by AWS IoT. They 
         are not intended for developer use.</p>
         <p>
            <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
         should not be used.</p>")
    newStatus: certificateStatus,
    @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateCertificateCommand"
  let make = (~newStatus, ~certificateId, ()) =>
    new({newStatus: newStatus, certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TransferCertificate = {
  type t
  @ocaml.doc("<p>The input for the TransferCertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>The transfer message.</p>") transferMessage: option<message>,
    @ocaml.doc("<p>The AWS account.</p>") targetAwsAccount: awsAccountId,
    @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
    certificateId: certificateId,
  }
  @ocaml.doc("<p>The output from the TransferCertificate operation.</p>")
  type response = {
    @ocaml.doc("<p>The ARN of the certificate.</p>")
    transferredCertificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "TransferCertificateCommand"
  let make = (~targetAwsAccount, ~certificateId, ~transferMessage=?, ()) =>
    new({
      transferMessage: transferMessage,
      targetAwsAccount: targetAwsAccount,
      certificateId: certificateId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopThingRegistrationTask = {
  type t
  type request = {@ocaml.doc("<p>The bulk thing provisioning task ID.</p>") taskId: taskId}

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StopThingRegistrationTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartThingRegistrationTask = {
  type t
  type request = {
    @ocaml.doc("<p>The IAM role ARN that grants permission the input file.</p>") roleArn: roleArn,
    @ocaml.doc("<p>The name of input file within the S3 bucket. This file contains a newline delimited
			JSON file. Each line contains the parameter values to provision one device
			(thing).</p>")
    inputFileKey: registryS3KeyName,
    @ocaml.doc("<p>The S3 bucket that contains the input file.</p>")
    inputFileBucket: registryS3BucketName,
    @ocaml.doc("<p>The provisioning template.</p>") templateBody: templateBody,
  }
  type response = {@ocaml.doc("<p>The bulk thing provisioning task ID.</p>") taskId: option<taskId>}
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StartThingRegistrationTaskCommand"
  let make = (~roleArn, ~inputFileKey, ~inputFileBucket, ~templateBody, ()) =>
    new({
      roleArn: roleArn,
      inputFileKey: inputFileKey,
      inputFileBucket: inputFileBucket,
      templateBody: templateBody,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetV2LoggingOptions = {
  type t
  type request = {
    @ocaml.doc("<p>If true all logs are disabled. The default is false.</p>")
    disableAllLogs: option<disableAllLogs>,
    @ocaml.doc("<p>The default logging level.</p>") defaultLogLevel: option<logLevel>,
    @ocaml.doc("<p>The ARN of the role that allows IoT to write to Cloudwatch logs.</p>")
    roleArn: option<awsArn>,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetV2LoggingOptionsCommand"
  let make = (~disableAllLogs=?, ~defaultLogLevel=?, ~roleArn=?, ()) =>
    new({disableAllLogs: disableAllLogs, defaultLogLevel: defaultLogLevel, roleArn: roleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetDefaultPolicyVersion = {
  type t
  @ocaml.doc("<p>The input for the SetDefaultPolicyVersion operation.</p>")
  type request = {
    @ocaml.doc("<p>The policy version ID.</p>") policyVersionId: policyVersionId,
    @ocaml.doc("<p>The policy name.</p>") policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetDefaultPolicyVersionCommand"
  let make = (~policyVersionId, ~policyName, ()) =>
    new({policyVersionId: policyVersionId, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetDefaultAuthorizer = {
  type t
  type request = {@ocaml.doc("<p>The authorizer name.</p>") authorizerName: authorizerName}
  type response = {
    @ocaml.doc("<p>The authorizer ARN.</p>") authorizerArn: option<authorizerArn>,
    @ocaml.doc("<p>The authorizer name.</p>") authorizerName: option<authorizerName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "SetDefaultAuthorizerCommand"
  let make = (~authorizerName, ()) => new({authorizerName: authorizerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveThingFromThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the thing to remove from the group.</p>") thingArn: option<thingArn>,
    @ocaml.doc("<p>The name of the thing to remove from the group.</p>")
    thingName: option<thingName>,
    @ocaml.doc("<p>The group ARN.</p>") thingGroupArn: option<thingGroupArn>,
    @ocaml.doc("<p>The group name.</p>") thingGroupName: option<thingGroupName>,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RemoveThingFromThingGroupCommand"
  let make = (~thingArn=?, ~thingName=?, ~thingGroupArn=?, ~thingGroupName=?, ()) =>
    new({
      thingArn: thingArn,
      thingName: thingName,
      thingGroupArn: thingGroupArn,
      thingGroupName: thingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveThingFromBillingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the thing to be removed from the billing group.</p>")
    thingArn: option<thingArn>,
    @ocaml.doc("<p>The name of the thing to be removed from the billing group.</p>")
    thingName: option<thingName>,
    @ocaml.doc("<p>The ARN of the billing group.</p>") billingGroupArn: option<billingGroupArn>,
    @ocaml.doc("<p>The name of the billing group.</p>") billingGroupName: option<billingGroupName>,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RemoveThingFromBillingGroupCommand"
  let make = (~thingArn=?, ~thingName=?, ~billingGroupArn=?, ~billingGroupName=?, ()) =>
    new({
      thingArn: thingArn,
      thingName: thingName,
      billingGroupArn: billingGroupArn,
      billingGroupName: billingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RejectCertificateTransfer = {
  type t
  @ocaml.doc("<p>The input for the RejectCertificateTransfer operation.</p>")
  type request = {
    @ocaml.doc("<p>The reason the certificate transfer was rejected.</p>")
    rejectReason: option<message>,
    @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RejectCertificateTransferCommand"
  let make = (~certificateId, ~rejectReason=?, ()) =>
    new({rejectReason: rejectReason, certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterCertificateWithoutCA = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the register certificate request.</p>")
    status: option<certificateStatus>,
    @ocaml.doc("<p>The certificate data, in PEM format.</p>") certificatePem: certificatePem,
  }
  type response = {
    @ocaml.doc("<p>The ID of the registered certificate. (The last part of the certificate ARN contains the
         certificate ID.</p>")
    certificateId: option<certificateId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the registered certificate.</p>")
    certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RegisterCertificateWithoutCACommand"
  let make = (~certificatePem, ~status=?, ()) =>
    new({status: status, certificatePem: certificatePem})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterCertificate = {
  type t
  @ocaml.doc("<p>The input to the RegisterCertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>The status of the register certificate request.</p>")
    status: option<certificateStatus>,
    @ocaml.doc("<p>A boolean value that specifies if the certificate is set to active.</p>")
    setAsActive: option<setAsActiveFlag>,
    @ocaml.doc("<p>The CA certificate used to sign the device certificate being registered.</p>")
    caCertificatePem: option<certificatePem>,
    @ocaml.doc("<p>The certificate data, in PEM format.</p>") certificatePem: certificatePem,
  }
  @ocaml.doc("<p>The output from the RegisterCertificate operation.</p>")
  type response = {
    @ocaml.doc("<p>The certificate identifier.</p>") certificateId: option<certificateId>,
    @ocaml.doc("<p>The certificate ARN.</p>") certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "RegisterCertificateCommand"
  let make = (~certificatePem, ~status=?, ~setAsActive=?, ~caCertificatePem=?, ()) =>
    new({
      status: status,
      setAsActive: setAsActive,
      caCertificatePem: caCertificatePem,
      certificatePem: certificatePem,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetV2LoggingOptions = {
  type t

  type response = {
    @ocaml.doc("<p>Disables all logs.</p>") disableAllLogs: option<disableAllLogs>,
    @ocaml.doc("<p>The default log level.</p>") defaultLogLevel: option<logLevel>,
    @ocaml.doc("<p>The IAM role ARN AWS IoT uses to write to your CloudWatch logs.</p>")
    roleArn: option<awsArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: unit => t = "GetV2LoggingOptionsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegistrationCode = {
  type t

  @ocaml.doc("<p>The output from the GetRegistrationCode operation.</p>")
  type response = {
    @ocaml.doc("<p>The CA certificate registration code.</p>")
    registrationCode: option<registrationCode>,
  }
  @module("@aws-sdk/client-iot") @new external new: unit => t = "GetRegistrationCodeCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPolicyVersion = {
  type t
  @ocaml.doc("<p>The input for the GetPolicyVersion operation.</p>")
  type request = {
    @ocaml.doc("<p>The policy version ID.</p>") policyVersionId: policyVersionId,
    @ocaml.doc("<p>The name of the policy.</p>") policyName: policyName,
  }
  @ocaml.doc("<p>The output from the GetPolicyVersion operation.</p>")
  type response = {
    @ocaml.doc("<p>The generation ID of the policy version.</p>")
    generationId: option<generationId>,
    @ocaml.doc("<p>The date the policy was last modified.</p>") lastModifiedDate: option<dateType>,
    @ocaml.doc("<p>The date the policy was created.</p>") creationDate: option<dateType>,
    @ocaml.doc("<p>Specifies whether the policy version is the default.</p>")
    isDefaultVersion: option<isDefaultVersion>,
    @ocaml.doc("<p>The policy version ID.</p>") policyVersionId: option<policyVersionId>,
    @ocaml.doc("<p>The JSON document that describes the policy.</p>")
    policyDocument: option<policyDocument>,
    @ocaml.doc("<p>The policy name.</p>") policyName: option<policyName>,
    @ocaml.doc("<p>The policy ARN.</p>") policyArn: option<policyArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetPolicyVersionCommand"
  let make = (~policyVersionId, ~policyName, ()) =>
    new({policyVersionId: policyVersionId, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPolicy = {
  type t
  @ocaml.doc("<p>The input for the GetPolicy operation.</p>")
  type request = {@ocaml.doc("<p>The name of the policy.</p>") policyName: policyName}
  @ocaml.doc("<p>The output from the GetPolicy operation.</p>")
  type response = {
    @ocaml.doc("<p>The generation ID of the policy.</p>") generationId: option<generationId>,
    @ocaml.doc("<p>The date the policy was last modified.</p>") lastModifiedDate: option<dateType>,
    @ocaml.doc("<p>The date the policy was created.</p>") creationDate: option<dateType>,
    @ocaml.doc("<p>The default policy version ID.</p>") defaultVersionId: option<policyVersionId>,
    @ocaml.doc("<p>The JSON document that describes the policy.</p>")
    policyDocument: option<policyDocument>,
    @ocaml.doc("<p>The policy ARN.</p>") policyArn: option<policyArn>,
    @ocaml.doc("<p>The policy name.</p>") policyName: option<policyName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetPolicyCommand"
  let make = (~policyName, ()) => new({policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoggingOptions = {
  type t

  @ocaml.doc("<p>The output from the GetLoggingOptions operation.</p>")
  type response = {
    @ocaml.doc("<p>The logging level.</p>") logLevel: option<logLevel>,
    @ocaml.doc("<p>The ARN of the IAM role that grants access.</p>") roleArn: option<awsArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: unit => t = "GetLoggingOptionsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobDocument = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: jobId,
  }
  type response = {@ocaml.doc("<p>The job document content.</p>") document: option<jobDocument>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetJobDocumentCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCardinality = {
  type t
  type request = {
    @ocaml.doc("<p>The query version.</p>") queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The field to aggregate.</p>") aggregationField: option<aggregationField>,
    @ocaml.doc("<p>The search query.</p>") queryString: queryString,
    @ocaml.doc("<p>The name of the index to search.</p>") indexName: option<indexName>,
  }
  type response = {
    @ocaml.doc("<p>The approximate count of unique values that match the query.</p>")
    cardinality: option<count>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetCardinalityCommand"
  let make = (~queryString, ~queryVersion=?, ~aggregationField=?, ~indexName=?, ()) =>
    new({
      queryVersion: queryVersion,
      aggregationField: aggregationField,
      queryString: queryString,
      indexName: indexName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableTopicRule = {
  type t
  @ocaml.doc("<p>The input for the EnableTopicRuleRequest operation.</p>")
  type request = {@ocaml.doc("<p>The name of the topic rule to enable.</p>") ruleName: ruleName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "EnableTopicRuleCommand"
  let make = (~ruleName, ()) => new({ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableTopicRule = {
  type t
  @ocaml.doc("<p>The input for the DisableTopicRuleRequest operation.</p>")
  type request = {@ocaml.doc("<p>The name of the rule to disable.</p>") ruleName: ruleName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DisableTopicRuleCommand"
  let make = (~ruleName, ()) => new({ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachThingPrincipal = {
  type t
  @ocaml.doc("<p>The input for the DetachThingPrincipal operation.</p>")
  type request = {
    @ocaml.doc("<p>If the principal is a certificate, this value must be ARN of the certificate. If
			the principal is an Amazon Cognito identity, this value must be the ID of the Amazon
			Cognito identity.</p>")
    principal: principal,
    @ocaml.doc("<p>The name of the thing.</p>") thingName: thingName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachThingPrincipalCommand"
  let make = (~principal, ~thingName, ()) => new({principal: principal, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachSecurityProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the thing group from which the security profile is detached.</p>")
    securityProfileTargetArn: securityProfileTargetArn,
    @ocaml.doc("<p>The security profile that is detached.</p>")
    securityProfileName: securityProfileName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachSecurityProfileCommand"
  let make = (~securityProfileTargetArn, ~securityProfileName, ()) =>
    new({
      securityProfileTargetArn: securityProfileTargetArn,
      securityProfileName: securityProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachPrincipalPolicy = {
  type t
  @ocaml.doc("<p>The input for the DetachPrincipalPolicy operation.</p>")
  type request = {
    @ocaml.doc("<p>The principal.</p>
         <p>Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>")
    principal: principal,
    @ocaml.doc("<p>The name of the policy to detach.</p>") policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachPrincipalPolicyCommand"
  let make = (~principal, ~policyName, ()) => new({principal: principal, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The target from which the policy will be detached.</p>") target: policyTarget,
    @ocaml.doc("<p>The policy to detach.</p>") policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachPolicyCommand"
  let make = (~target, ~policyName, ()) => new({target: target, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeThingRegistrationTask = {
  type t
  type request = {@ocaml.doc("<p>The task ID.</p>") taskId: taskId}
  type response = {
    @ocaml.doc("<p>The progress of the bulk provisioning task expressed as a percentage.</p>")
    percentageProgress: option<percentage>,
    @ocaml.doc("<p>The number of things that failed to be provisioned.</p>")
    failureCount: option<count>,
    @ocaml.doc("<p>The number of things successfully provisioned.</p>") successCount: option<count>,
    @ocaml.doc("<p>The message.</p>") message: option<errorMessage>,
    @ocaml.doc("<p>The status of the bulk thing provisioning task.</p>") status: option<status>,
    @ocaml.doc("<p>The role ARN that grants access to the input file bucket.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The input file key.</p>") inputFileKey: option<registryS3KeyName>,
    @ocaml.doc("<p>The S3 bucket that contains the input file.</p>")
    inputFileBucket: option<registryS3BucketName>,
    @ocaml.doc("<p>The task's template.</p>") templateBody: option<templateBody>,
    @ocaml.doc("<p>The date when the task was last modified.</p>")
    lastModifiedDate: option<lastModifiedDate>,
    @ocaml.doc("<p>The task creation date.</p>") creationDate: option<creationDate>,
    @ocaml.doc("<p>The task ID.</p>") taskId: option<taskId>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeThingRegistrationTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisioningTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The fleet provisioning template version ID.</p>") versionId: templateVersionId,
    @ocaml.doc("<p>The template name.</p>") templateName: templateName,
  }
  type response = {
    @ocaml.doc("<p>True if the fleet provisioning template version is the default version.</p>")
    isDefaultVersion: option<isDefaultVersion>,
    @ocaml.doc("<p>The JSON formatted contents of the fleet provisioning template version.</p>")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>The date when the fleet provisioning template version was created.</p>")
    creationDate: option<dateType>,
    @ocaml.doc("<p>The fleet provisioning template version ID.</p>")
    versionId: option<templateVersionId>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeProvisioningTemplateVersionCommand"
  let make = (~versionId, ~templateName, ()) =>
    new({versionId: versionId, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIndex = {
  type t
  type request = {@ocaml.doc("<p>The index name.</p>") indexName: indexName}
  type response = {
    @ocaml.doc("<p>Contains a value that specifies the type of indexing performed. Valid values
      are:</p>
         <ul>
            <li>
               <p>REGISTRY – Your thing index contains only registry data.</p>
            </li>
            <li>
               <p>REGISTRY_AND_SHADOW - Your thing index contains registry data and shadow data.</p>
            </li>
            <li>
               <p>REGISTRY_AND_CONNECTIVITY_STATUS - Your thing index contains registry data and
          thing connectivity status data.</p>
            </li>
            <li>
               <p>REGISTRY_AND_SHADOW_AND_CONNECTIVITY_STATUS - Your thing index contains registry
          data, shadow data, and thing connectivity status data.</p>
            </li>
         </ul>")
    schema: option<indexSchema>,
    @ocaml.doc("<p>The index status.</p>") indexStatus: option<indexStatus>,
    @ocaml.doc("<p>The index name.</p>") indexName: option<indexName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeIndexCommand"
  let make = (~indexName, ()) => new({indexName: indexName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoint = {
  type t
  @ocaml.doc("<p>The input for the DescribeEndpoint operation.</p>")
  type request = {
    @ocaml.doc("<p>The endpoint type. Valid endpoint types include:</p>
         <ul>
            <li>
               <p>
                  <code>iot:Data</code> - Returns a VeriSign signed data endpoint.</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>
                  <code>iot:Data-ATS</code> - Returns an ATS signed data endpoint.</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>
                  <code>iot:CredentialProvider</code> - Returns an AWS IoT credentials provider API
               endpoint.</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>
                  <code>iot:Jobs</code> - Returns an AWS IoT device management Jobs API
               endpoint.</p>
            </li>
         </ul>
         <p>We strongly recommend that customers use the newer <code>iot:Data-ATS</code> endpoint type to avoid 
         issues related to the widespread distrust of Symantec certificate authorities.</p>")
    endpointType: option<endpointType>,
  }
  @ocaml.doc("<p>The output from the DescribeEndpoint operation.</p>")
  type response = {
    @ocaml.doc("<p>The endpoint. The format of the endpoint is as follows:
            <i>identifier</i>.iot.<i>region</i>.amazonaws.com.</p>")
    endpointAddress: option<endpointAddress>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeEndpointCommand"
  let make = (~endpointType=?, ()) => new({endpointType: endpointType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomMetric = {
  type t
  type request = {
    @ocaml.doc("<p>
      The name of the custom metric.
    </p>")
    metricName: metricName,
  }
  type response = {
    @ocaml.doc("<p>
      The time the custom metric was last modified in milliseconds since epoch.
    </p>")
    lastModifiedDate: option<timestamp_>,
    @ocaml.doc("<p>
      The creation date of the custom metric in milliseconds since epoch.
    </p>")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>
      Field represents a friendly name in the console for the custom metric; doesn't have to be unique. Don't use this name as the metric identifier in the device metric report. Can be updated.
    </p>")
    displayName: option<customMetricDisplayName>,
    @ocaml.doc("<p>
      The type of the custom metric. Types include <code>string-list</code>, <code>ip-address-list</code>, <code>number-list</code>, and <code>number</code>.
    </p>")
    metricType: option<customMetricType>,
    @ocaml.doc("<p>
      The Amazon Resource Number (ARN) of the custom metric.
    </p>")
    metricArn: option<customMetricArn>,
    @ocaml.doc("<p>
      The name of the custom metric.
    </p>")
    metricName: option<metricName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeCustomMetricCommand"
  let make = (~metricName, ()) => new({metricName: metricName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprecateThingType = {
  type t
  @ocaml.doc("<p>The input for the DeprecateThingType operation.</p>")
  type request = {
    @ocaml.doc("<p>Whether to undeprecate a deprecated thing type. If <b>true</b>, the thing type will not be deprecated anymore and you can
			associate it with things.</p>")
    undoDeprecate: option<undoDeprecate>,
    @ocaml.doc("<p>The name of the thing type to deprecate.</p>") thingTypeName: thingTypeName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeprecateThingTypeCommand"
  let make = (~thingTypeName, ~undoDeprecate=?, ()) =>
    new({undoDeprecate: undoDeprecate, thingTypeName: thingTypeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteV2LoggingLevel = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the resource for which you are configuring logging.</p>")
    targetName: logTargetName,
    @ocaml.doc("<p>The type of resource for which you are configuring logging. Must be
            <code>THING_Group</code>.</p>")
    targetType: logTargetType,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteV2LoggingLevelCommand"
  let make = (~targetName, ~targetType, ()) => new({targetName: targetName, targetType: targetType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTopicRuleDestination = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the topic rule destination to delete.</p>") arn: awsArn}

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteTopicRuleDestinationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTopicRule = {
  type t
  @ocaml.doc("<p>The input for the DeleteTopicRule operation.</p>")
  type request = {@ocaml.doc("<p>The name of the rule.</p>") ruleName: ruleName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteTopicRuleCommand"
  let make = (~ruleName, ()) => new({ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteThingType = {
  type t
  @ocaml.doc("<p>The input for the DeleteThingType operation.</p>")
  type request = {@ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: thingTypeName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteThingTypeCommand"
  let make = (~thingTypeName, ()) => new({thingTypeName: thingTypeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The expected version of the thing group to delete.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The name of the thing group to delete.</p>") thingGroupName: thingGroupName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteThingGroupCommand"
  let make = (~thingGroupName, ~expectedVersion=?, ()) =>
    new({expectedVersion: expectedVersion, thingGroupName: thingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteThing = {
  type t
  @ocaml.doc("<p>The input for the DeleteThing operation.</p>")
  type request = {
    @ocaml.doc("<p>The expected version of the thing record in the registry. If the version of the
			record in the registry does not match the expected version specified in the request, the
				<code>DeleteThing</code> request is rejected with a
				<code>VersionConflictException</code>.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The name of the thing to delete.</p>") thingName: thingName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteThingCommand"
  let make = (~thingName, ~expectedVersion=?, ()) =>
    new({expectedVersion: expectedVersion, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteStream = {
  type t
  type request = {@ocaml.doc("<p>The stream ID.</p>") streamId: streamId}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteStreamCommand"
  let make = (~streamId, ()) => new({streamId: streamId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSecurityProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The expected version of the security profile. A new version is generated whenever
        the security profile is updated. If you specify a value that is different from the actual
        version, a <code>VersionConflictException</code> is thrown.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The name of the security profile to be deleted.</p>")
    securityProfileName: securityProfileName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteSecurityProfileCommand"
  let make = (~securityProfileName, ~expectedVersion=?, ()) =>
    new({expectedVersion: expectedVersion, securityProfileName: securityProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScheduledAudit = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the scheduled audit you want to delete.</p>")
    scheduledAuditName: scheduledAuditName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteScheduledAuditCommand"
  let make = (~scheduledAuditName, ()) => new({scheduledAuditName: scheduledAuditName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRoleAlias = {
  type t
  type request = {@ocaml.doc("<p>The role alias to delete.</p>") roleAlias: roleAlias}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteRoleAliasCommand"
  let make = (~roleAlias, ()) => new({roleAlias: roleAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRegistrationCode = {
  type t

  @module("@aws-sdk/client-iot") @new external new: unit => t = "DeleteRegistrationCodeCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProvisioningTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The fleet provisioning template version ID to delete.</p>")
    versionId: templateVersionId,
    @ocaml.doc("<p>The name of the fleet provisioning template version to delete.</p>")
    templateName: templateName,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteProvisioningTemplateVersionCommand"
  let make = (~versionId, ~templateName, ()) =>
    new({versionId: versionId, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProvisioningTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the fleet provision template to delete.</p>")
    templateName: templateName,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteProvisioningTemplateCommand"
  let make = (~templateName, ()) => new({templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePolicyVersion = {
  type t
  @ocaml.doc("<p>The input for the DeletePolicyVersion operation.</p>")
  type request = {
    @ocaml.doc("<p>The policy version ID.</p>") policyVersionId: policyVersionId,
    @ocaml.doc("<p>The name of the policy.</p>") policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeletePolicyVersionCommand"
  let make = (~policyVersionId, ~policyName, ()) =>
    new({policyVersionId: policyVersionId, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePolicy = {
  type t
  @ocaml.doc("<p>The input for the DeletePolicy operation.</p>")
  type request = {@ocaml.doc("<p>The name of the policy to delete.</p>") policyName: policyName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeletePolicyCommand"
  let make = (~policyName, ()) => new({policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOTAUpdate = {
  type t
  type request = {
    @ocaml.doc("<p>When true, deletes the AWS job created by the OTAUpdate process even if it is \"IN_PROGRESS\". Otherwise, if the 
            job is not in a terminal state (\"COMPLETED\" or \"CANCELED\") an exception will occur. The default is false.</p>")
    forceDeleteAWSJob: option<forceDeleteAWSJob>,
    @ocaml.doc("<p>When true, the stream created by the OTAUpdate process is deleted when the OTA update is deleted.
            Ignored if the stream specified in the OTAUpdate is supplied by the user.</p>")
    deleteStream: option<deleteStream_>,
    @ocaml.doc("<p>The ID of the OTA update to delete.</p>") otaUpdateId: otaupdateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteOTAUpdateCommand"
  let make = (~otaUpdateId, ~forceDeleteAWSJob=?, ~deleteStream=?, ()) =>
    new({
      forceDeleteAWSJob: forceDeleteAWSJob,
      deleteStream: deleteStream,
      otaUpdateId: otaUpdateId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteMitigationAction = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the mitigation action that you want to delete.</p>")
    actionName: mitigationActionName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteMitigationActionCommand"
  let make = (~actionName, ()) => new({actionName: actionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJobTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the job template to delete.</p>")
    jobTemplateId: jobTemplateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteJobTemplateCommand"
  let make = (~jobTemplateId, ()) => new({jobTemplateId: jobTemplateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJobExecution = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
    namespaceId: option<namespaceId>,
    @ocaml.doc("<p>(Optional) When true, you can delete a job execution which is \"IN_PROGRESS\". Otherwise, 
        you can only delete a job execution which is in a terminal state (\"SUCCEEDED\", \"FAILED\",
        \"REJECTED\", \"REMOVED\" or \"CANCELED\") or an exception will occur. The default is false.</p>
         <note>
            <p>Deleting a job execution which is \"IN_PROGRESS\", will cause the device 
        to be unable to access job information or update the job execution status.
        Use caution and ensure that the device is able to recover to a valid state.</p>
         </note>")
    force: option<forceFlag>,
    @ocaml.doc("<p>The ID of the job execution to be deleted. The <code>executionNumber</code> refers to the 
        execution of a particular job on a particular device.</p>
         <p>Note that once a job execution is deleted, the <code>executionNumber</code> may be reused 
        by IoT, so be sure you get and use the correct value here.</p>")
    executionNumber: executionNumber,
    @ocaml.doc("<p>The name of the thing whose job execution will be deleted.</p>")
    thingName: thingName,
    @ocaml.doc("<p>The ID of the job whose execution on a particular device will be deleted.</p>")
    jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteJobExecutionCommand"
  let make = (~executionNumber, ~thingName, ~jobId, ~namespaceId=?, ~force=?, ()) =>
    new({
      namespaceId: namespaceId,
      force: force,
      executionNumber: executionNumber,
      thingName: thingName,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJob = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
    namespaceId: option<namespaceId>,
    @ocaml.doc("<p>(Optional) When true, you can delete a job which is \"IN_PROGRESS\". Otherwise, you can
        only delete a job which is in a terminal state (\"COMPLETED\" or \"CANCELED\") or an exception 
        will occur. The default is false.</p>
         <note>
            <p>Deleting a job which is \"IN_PROGRESS\", will cause a device which is executing 
        the job to be unable to access job information or update the job execution status.
        Use caution and ensure that each device executing a job which is deleted is able to recover to 
        a valid state.</p>
         </note>")
    force: option<forceFlag>,
    @ocaml.doc("<p>The ID of the job to be deleted.</p>
         <p>After a job deletion is completed, you may reuse this jobId when you create a new job. 
        However, this is not recommended, and you must ensure that your devices are not using the 
        jobId to refer to the deleted job.</p>")
    jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteJobCommand"
  let make = (~jobId, ~namespaceId=?, ~force=?, ()) =>
    new({namespaceId: namespaceId, force: force, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDynamicThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The expected version of the dynamic thing group to delete.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The name of the dynamic thing group to delete.</p>")
    thingGroupName: thingGroupName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteDynamicThingGroupCommand"
  let make = (~thingGroupName, ~expectedVersion=?, ()) =>
    new({expectedVersion: expectedVersion, thingGroupName: thingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDomainConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain configuration to be deleted.</p>")
    domainConfigurationName: domainConfigurationName,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteDomainConfigurationCommand"
  let make = (~domainConfigurationName, ()) =>
    new({domainConfigurationName: domainConfigurationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDimension = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the dimension that you want to delete.</p>")
    name: dimensionName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteDimensionCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCustomMetric = {
  type t
  type request = {
    @ocaml.doc("<p>
      The name of the custom metric.
    </p>")
    metricName: metricName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteCustomMetricCommand"
  let make = (~metricName, ()) => new({metricName: metricName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCertificate = {
  type t
  @ocaml.doc("<p>The input for the DeleteCertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>Forces the deletion of a certificate if it is inactive and is not attached to an IoT
         thing.</p>")
    forceDelete: option<forceDelete>,
    @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteCertificateCommand"
  let make = (~certificateId, ~forceDelete=?, ()) =>
    new({forceDelete: forceDelete, certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCACertificate = {
  type t
  @ocaml.doc("<p>Input for the DeleteCACertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the certificate to delete. (The last part of the certificate ARN contains
         the certificate ID.)</p>")
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteCACertificateCommand"
  let make = (~certificateId, ()) => new({certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteBillingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The expected version of the billing group. If the version of the billing group does
			not match the expected version specified in the request, the
				<code>DeleteBillingGroup</code> request is rejected with a
				<code>VersionConflictException</code>.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The name of the billing group.</p>") billingGroupName: billingGroupName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteBillingGroupCommand"
  let make = (~billingGroupName, ~expectedVersion=?, ()) =>
    new({expectedVersion: expectedVersion, billingGroupName: billingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAuthorizer = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the authorizer to delete.</p>") authorizerName: authorizerName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteAuthorizerCommand"
  let make = (~authorizerName, ()) => new({authorizerName: authorizerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAccountAuditConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>If true, all scheduled audits are deleted.</p>")
    deleteScheduledAudits: option<deleteScheduledAudits>,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteAccountAuditConfigurationCommand"
  let make = (~deleteScheduledAudits=?, ()) => new({deleteScheduledAudits: deleteScheduledAudits})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateProvisioningTemplateVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Sets a fleet provision template version as the default version.</p>")
    setAsDefault: option<setAsDefault>,
    @ocaml.doc("<p>The JSON formatted contents of the fleet provisioning template.</p>")
    templateBody: templateBody,
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>") templateName: templateName,
  }
  type response = {
    @ocaml.doc("<p>True if the fleet provisioning template version is the default version, otherwise
         false.</p>")
    isDefaultVersion: option<isDefaultVersion>,
    @ocaml.doc("<p>The version of the fleet provisioning template.</p>")
    versionId: option<templateVersionId>,
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>")
    templateName: option<templateName>,
    @ocaml.doc("<p>The ARN that identifies the provisioning template.</p>")
    templateArn: option<templateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateProvisioningTemplateVersionCommand"
  let make = (~templateBody, ~templateName, ~setAsDefault=?, ()) =>
    new({setAsDefault: setAsDefault, templateBody: templateBody, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePolicyVersion = {
  type t
  @ocaml.doc("<p>The input for the CreatePolicyVersion operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether the policy version is set as the default. When this parameter is
         true, the new policy version becomes the operative version (that is, the version that is in
         effect for the certificates to which the policy is attached).</p>")
    setAsDefault: option<setAsDefault>,
    @ocaml.doc("<p>The JSON document that describes the policy. Minimum length of 1. Maximum length of
         2048, excluding whitespace.</p>")
    policyDocument: policyDocument,
    @ocaml.doc("<p>The policy name.</p>") policyName: policyName,
  }
  @ocaml.doc("<p>The output of the CreatePolicyVersion operation.</p>")
  type response = {
    @ocaml.doc("<p>Specifies whether the policy version is the default.</p>")
    isDefaultVersion: option<isDefaultVersion>,
    @ocaml.doc("<p>The policy version ID.</p>") policyVersionId: option<policyVersionId>,
    @ocaml.doc("<p>The JSON document that describes the policy.</p>")
    policyDocument: option<policyDocument>,
    @ocaml.doc("<p>The policy ARN.</p>") policyArn: option<policyArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreatePolicyVersionCommand"
  let make = (~policyDocument, ~policyName, ~setAsDefault=?, ()) =>
    new({setAsDefault: setAsDefault, policyDocument: policyDocument, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCertificateFromCsr = {
  type t
  @ocaml.doc("<p>The input for the CreateCertificateFromCsr operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether the certificate is active.</p>")
    setAsActive: option<setAsActive>,
    @ocaml.doc("<p>The certificate signing request (CSR).</p>")
    certificateSigningRequest: certificateSigningRequest,
  }
  @ocaml.doc("<p>The output from the CreateCertificateFromCsr operation.</p>")
  type response = {
    @ocaml.doc("<p>The certificate data, in PEM format.</p>")
    certificatePem: option<certificatePem>,
    @ocaml.doc("<p>The ID of the certificate. Certificate management operations only take a
         certificateId.</p>")
    certificateId: option<certificateId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificate. You can use the ARN as a principal
         for policy operations.</p>")
    certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateCertificateFromCsrCommand"
  let make = (~certificateSigningRequest, ~setAsActive=?, ()) =>
    new({setAsActive: setAsActive, certificateSigningRequest: certificateSigningRequest})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ConfirmTopicRuleDestination = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token used to confirm ownership or access to the topic rule confirmation URL.</p>"
    )
    confirmationToken: confirmationToken,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ConfirmTopicRuleDestinationCommand"
  let make = (~confirmationToken, ()) => new({confirmationToken: confirmationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ClearDefaultAuthorizer = {
  type t

  @module("@aws-sdk/client-iot") @new external new: unit => t = "ClearDefaultAuthorizerCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelJob = {
  type t
  type request = {
    @ocaml.doc("<p>(Optional) If <code>true</code> job executions with status \"IN_PROGRESS\" and \"QUEUED\" 
          are canceled, otherwise only job executions with status \"QUEUED\" are canceled. The default 
          is <code>false</code>.</p>
        <p>Canceling a job which is \"IN_PROGRESS\", will cause a device which is executing 
          the job to be unable to update the job execution status.  Use caution and ensure that each 
          device executing a job which is canceled is able to recover to a valid state.</p>")
    force: option<forceFlag>,
    @ocaml.doc("<p>An optional comment string describing why the job was canceled.</p>")
    comment: option<comment>,
    @ocaml.doc("<p>(Optional)A reason code string that explains why the job was canceled.</p>")
    reasonCode: option<reasonCode>,
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>A short text description of the job.</p>") description: option<jobDescription>,
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: option<jobId>,
    @ocaml.doc("<p>The job ARN.</p>") jobArn: option<jobArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CancelJobCommand"
  let make = (~jobId, ~force=?, ~comment=?, ~reasonCode=?, ()) =>
    new({force: force, comment: comment, reasonCode: reasonCode, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelDetectMitigationActionsTask = {
  type t
  type request = {
    @ocaml.doc("<p>
      The unique identifier of the task.
    </p>")
    taskId: mitigationActionsTaskId,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CancelDetectMitigationActionsTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelCertificateTransfer = {
  type t
  @ocaml.doc("<p>The input for the CancelCertificateTransfer operation.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CancelCertificateTransferCommand"
  let make = (~certificateId, ()) => new({certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelAuditTask = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the audit you want to cancel. You can only cancel an
              audit that is \"IN_PROGRESS\".</p>")
    taskId: auditTaskId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "CancelAuditTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelAuditMitigationActionsTask = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the task that you want to cancel. </p>")
    taskId: mitigationActionsTaskId,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CancelAuditMitigationActionsTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachThingPrincipal = {
  type t
  @ocaml.doc("<p>The input for the AttachThingPrincipal operation.</p>")
  type request = {
    @ocaml.doc("<p>The principal, which can be a certificate ARN (as returned from the
			CreateCertificate operation) or an Amazon Cognito ID.</p>")
    principal: principal,
    @ocaml.doc("<p>The name of the thing.</p>") thingName: thingName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachThingPrincipalCommand"
  let make = (~principal, ~thingName, ()) => new({principal: principal, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachSecurityProfile = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of the target (thing group) to which the security profile is attached.</p>"
    )
    securityProfileTargetArn: securityProfileTargetArn,
    @ocaml.doc("<p>The security profile that is attached.</p>")
    securityProfileName: securityProfileName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachSecurityProfileCommand"
  let make = (~securityProfileTargetArn, ~securityProfileName, ()) =>
    new({
      securityProfileTargetArn: securityProfileTargetArn,
      securityProfileName: securityProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachPrincipalPolicy = {
  type t
  @ocaml.doc("<p>The input for the AttachPrincipalPolicy operation.</p>")
  type request = {
    @ocaml.doc("<p>The principal, which can be a certificate ARN (as returned from the CreateCertificate
         operation) or an Amazon Cognito ID.</p>")
    principal: principal,
    @ocaml.doc("<p>The policy name.</p>") policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachPrincipalPolicyCommand"
  let make = (~principal, ~policyName, ()) => new({principal: principal, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachPolicy = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/security-iam.html\">identity</a> to which the policy is attached. For example, a thing group or a certificate.</p>"
    )
    target: policyTarget,
    @ocaml.doc("<p>The name of the policy to attach.</p>") policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachPolicyCommand"
  let make = (~target, ~policyName, ()) => new({target: target, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddThingToThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Override dynamic thing groups with static thing groups when 10-group limit is
			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
			dynamic thing groups, adding a thing to a static group removes the thing from the last
			dynamic group.</p>")
    overrideDynamicGroups: option<overrideDynamicGroups>,
    @ocaml.doc("<p>The ARN of the thing to add to a group.</p>") thingArn: option<thingArn>,
    @ocaml.doc("<p>The name of the thing to add to a group.</p>") thingName: option<thingName>,
    @ocaml.doc("<p>The ARN of the group to which you are adding a thing.</p>")
    thingGroupArn: option<thingGroupArn>,
    @ocaml.doc("<p>The name of the group to which you are adding a thing.</p>")
    thingGroupName: option<thingGroupName>,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AddThingToThingGroupCommand"
  let make = (
    ~overrideDynamicGroups=?,
    ~thingArn=?,
    ~thingName=?,
    ~thingGroupArn=?,
    ~thingGroupName=?,
    (),
  ) =>
    new({
      overrideDynamicGroups: overrideDynamicGroups,
      thingArn: thingArn,
      thingName: thingName,
      thingGroupArn: thingGroupArn,
      thingGroupName: thingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddThingToBillingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the thing to be added to the billing group.</p>")
    thingArn: option<thingArn>,
    @ocaml.doc("<p>The name of the thing to be added to the billing group.</p>")
    thingName: option<thingName>,
    @ocaml.doc("<p>The ARN of the billing group.</p>") billingGroupArn: option<billingGroupArn>,
    @ocaml.doc("<p>The name of the billing group.</p>") billingGroupName: option<billingGroupName>,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AddThingToBillingGroupCommand"
  let make = (~thingArn=?, ~thingName=?, ~billingGroupArn=?, ~billingGroupName=?, ()) =>
    new({
      thingArn: thingArn,
      thingName: thingName,
      billingGroupArn: billingGroupArn,
      billingGroupName: billingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptCertificateTransfer = {
  type t
  @ocaml.doc("<p>The input for the AcceptCertificateTransfer operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether the certificate is active.</p>")
    setAsActive: option<setAsActive>,
    @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "AcceptCertificateTransferCommand"
  let make = (~certificateId, ~setAsActive=?, ()) =>
    new({setAsActive: setAsActive, certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateThingGroupsForThing = {
  type t
  type request = {
    @ocaml.doc("<p>Override dynamic thing groups with static thing groups when 10-group limit is
			reached. If a thing belongs to 10 thing groups, and one or more of those groups are
			dynamic thing groups, adding a thing to a static group removes the thing from the last
			dynamic group.</p>")
    overrideDynamicGroups: option<overrideDynamicGroups>,
    @ocaml.doc("<p>The groups from which the thing will be removed.</p>")
    thingGroupsToRemove: option<thingGroupList>,
    @ocaml.doc("<p>The groups to which the thing will be added.</p>")
    thingGroupsToAdd: option<thingGroupList>,
    @ocaml.doc("<p>The thing whose group memberships will be updated.</p>")
    thingName: option<thingName>,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateThingGroupsForThingCommand"
  let make = (
    ~overrideDynamicGroups=?,
    ~thingGroupsToRemove=?,
    ~thingGroupsToAdd=?,
    ~thingName=?,
    (),
  ) =>
    new({
      overrideDynamicGroups: overrideDynamicGroups,
      thingGroupsToRemove: thingGroupsToRemove,
      thingGroupsToAdd: thingGroupsToAdd,
      thingName: thingName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateScheduledAudit = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the scheduled audit. (Max. 128 chars)</p>")
    scheduledAuditName: scheduledAuditName,
    @ocaml.doc("<p>Which checks are performed during the scheduled audit. Checks must be enabled 
            for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
            of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
            to select which checks are enabled.)</p>")
    targetCheckNames: option<targetAuditCheckNames>,
    @ocaml.doc("<p>The day of the week on which the scheduled audit takes place.
      This
      can
      be one of <code>SUN</code>, <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the
            \"frequency\" parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>")
    dayOfWeek: option<dayOfWeek>,
    @ocaml.doc("<p>The day of the month on which the scheduled audit takes place.
      This
      can
      be <code>1</code> through <code>31</code> or <code>LAST</code>. This field is required if the <code>frequency</code> parameter is set to
            <code>MONTHLY</code>. If days 29-31 are specified, and the month does not have that many days, the audit
      takes place on the \"LAST\" day of the month.</p>")
    dayOfMonth: option<dayOfMonth>,
    @ocaml.doc("<p>How often the scheduled audit takes
      place,
      either <code>DAILY</code>,
      <code>WEEKLY</code>, <code>BIWEEKLY</code>, or <code>MONTHLY</code>. The start time of each audit is determined by the
      system.</p>")
    frequency: option<auditFrequency>,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the scheduled audit.</p>")
    scheduledAuditArn: option<scheduledAuditArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateScheduledAuditCommand"
  let make = (
    ~scheduledAuditName,
    ~targetCheckNames=?,
    ~dayOfWeek=?,
    ~dayOfMonth=?,
    ~frequency=?,
    (),
  ) =>
    new({
      scheduledAuditName: scheduledAuditName,
      targetCheckNames: targetCheckNames,
      dayOfWeek: dayOfWeek,
      dayOfMonth: dayOfMonth,
      frequency: frequency,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProvisioningTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Removes pre-provisioning hook template.</p>")
    removePreProvisioningHook: option<removeHook>,
    @ocaml.doc("<p>Updates the pre-provisioning hook template.</p>")
    preProvisioningHook: option<provisioningHook>,
    @ocaml.doc("<p>The ARN of the role associated with the provisioning template. This IoT role grants
         permission to provision a device.</p>")
    provisioningRoleArn: option<roleArn>,
    @ocaml.doc("<p>The ID of the default provisioning template version.</p>")
    defaultVersionId: option<templateVersionId>,
    @ocaml.doc("<p>True to enable the fleet provisioning template, otherwise false.</p>")
    enabled: option<enabled>,
    @ocaml.doc("<p>The description of the fleet provisioning template.</p>")
    description: option<templateDescription>,
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>") templateName: templateName,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateProvisioningTemplateCommand"
  let make = (
    ~templateName,
    ~removePreProvisioningHook=?,
    ~preProvisioningHook=?,
    ~provisioningRoleArn=?,
    ~defaultVersionId=?,
    ~enabled=?,
    ~description=?,
    (),
  ) =>
    new({
      removePreProvisioningHook: removePreProvisioningHook,
      preProvisioningHook: preProvisioningHook,
      provisioningRoleArn: provisioningRoleArn,
      defaultVersionId: defaultVersionId,
      enabled: enabled,
      description: description,
      templateName: templateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDomainConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Removes the authorization configuration from a domain.</p>")
    removeAuthorizerConfig: option<removeAuthorizerConfig>,
    @ocaml.doc("<p>The status to which the domain configuration should be updated.</p>")
    domainConfigurationStatus: option<domainConfigurationStatus>,
    @ocaml.doc("<p>An object that specifies the authorization service for a domain.</p>")
    authorizerConfig: option<authorizerConfig>,
    @ocaml.doc("<p>The name of the domain configuration to be updated.</p>")
    domainConfigurationName: reservedDomainConfigurationName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the domain configuration that was updated.</p>")
    domainConfigurationArn: option<domainConfigurationArn>,
    @ocaml.doc("<p>The name of the domain configuration that was updated.</p>")
    domainConfigurationName: option<reservedDomainConfigurationName>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateDomainConfigurationCommand"
  let make = (
    ~domainConfigurationName,
    ~removeAuthorizerConfig=?,
    ~domainConfigurationStatus=?,
    ~authorizerConfig=?,
    (),
  ) =>
    new({
      removeAuthorizerConfig: removeAuthorizerConfig,
      domainConfigurationStatus: domainConfigurationStatus,
      authorizerConfig: authorizerConfig,
      domainConfigurationName: domainConfigurationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDimension = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, \"admin/#\").</p>"
    )
    stringValues: dimensionStringValues,
    @ocaml.doc(
      "<p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>"
    )
    name: dimensionName,
  }
  type response = {
    @ocaml.doc(
      "<p>The date and time, in milliseconds since epoch, when the dimension was most recently updated.</p>"
    )
    lastModifiedDate: option<timestamp_>,
    @ocaml.doc(
      "<p>The date and time, in milliseconds since epoch, when the dimension was initially created.</p>"
    )
    creationDate: option<timestamp_>,
    @ocaml.doc(
      "<p>The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.</p>"
    )
    stringValues: option<dimensionStringValues>,
    @ocaml.doc("<p>The type of the dimension.</p>") @as("type") type_: option<dimensionType>,
    @ocaml.doc("<p>The Amazon Resource
      Name (ARN)of
      the created dimension.</p>")
    arn: option<dimensionArn>,
    @ocaml.doc("<p>A unique identifier for the dimension.</p>") name: option<dimensionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateDimensionCommand"
  let make = (~stringValues, ~name, ()) => new({stringValues: stringValues, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCACertificate = {
  type t
  @ocaml.doc("<p>The input to the UpdateCACertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>If true, removes auto registration.</p>")
    removeAutoRegistration: option<removeAutoRegistration>,
    @ocaml.doc("<p>Information about the registration configuration.</p>")
    registrationConfig: option<registrationConfig>,
    @ocaml.doc("<p>The new value for the auto registration status. Valid values are: \"ENABLE\" or
         \"DISABLE\".</p>")
    newAutoRegistrationStatus: option<autoRegistrationStatus>,
    @ocaml.doc("<p>The updated status of the CA certificate.</p>
         <p>
            <b>Note:</b> The status value REGISTER_INACTIVE is deprecated and
         should not be used.</p>")
    newStatus: option<cacertificateStatus>,
    @ocaml.doc("<p>The CA certificate identifier.</p>") certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateCACertificateCommand"
  let make = (
    ~certificateId,
    ~removeAutoRegistration=?,
    ~registrationConfig=?,
    ~newAutoRegistrationStatus=?,
    ~newStatus=?,
    (),
  ) =>
    new({
      removeAutoRegistration: removeAutoRegistration,
      registrationConfig: registrationConfig,
      newAutoRegistrationStatus: newAutoRegistrationStatus,
      newStatus: newStatus,
      certificateId: certificateId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateBillingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The expected version of the billing group. If the version of the billing group does
			not match the expected version specified in the request, the
				<code>UpdateBillingGroup</code> request is rejected with a
				<code>VersionConflictException</code>.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The properties of the billing group.</p>")
    billingGroupProperties: billingGroupProperties,
    @ocaml.doc("<p>The name of the billing group.</p>") billingGroupName: billingGroupName,
  }
  type response = {
    @ocaml.doc("<p>The latest version of the billing group.</p>") version: option<version>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateBillingGroupCommand"
  let make = (~billingGroupProperties, ~billingGroupName, ~expectedVersion=?, ()) =>
    new({
      expectedVersion: expectedVersion,
      billingGroupProperties: billingGroupProperties,
      billingGroupName: billingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAuthorizer = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the update authorizer request.</p>")
    status: option<authorizerStatus>,
    @ocaml.doc("<p>The public keys used to verify the token signature.</p>")
    tokenSigningPublicKeys: option<publicKeyMap>,
    @ocaml.doc("<p>The key used to extract the token from the HTTP headers. </p>")
    tokenKeyName: option<tokenKeyName>,
    @ocaml.doc("<p>The ARN of the authorizer's Lambda function.</p>")
    authorizerFunctionArn: option<authorizerFunctionArn>,
    @ocaml.doc("<p>The authorizer name.</p>") authorizerName: authorizerName,
  }
  type response = {
    @ocaml.doc("<p>The authorizer ARN.</p>") authorizerArn: option<authorizerArn>,
    @ocaml.doc("<p>The authorizer name.</p>") authorizerName: option<authorizerName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateAuthorizerCommand"
  let make = (
    ~authorizerName,
    ~status=?,
    ~tokenSigningPublicKeys=?,
    ~tokenKeyName=?,
    ~authorizerFunctionArn=?,
    (),
  ) =>
    new({
      status: status,
      tokenSigningPublicKeys: tokenSigningPublicKeys,
      tokenKeyName: tokenKeyName,
      authorizerFunctionArn: authorizerFunctionArn,
      authorizerName: authorizerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the keys of the tags to be removed from the resource.</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartOnDemandAuditTask = {
  type t
  type request = {
    @ocaml.doc("<p>Which checks are performed during the audit. The checks you specify must be enabled 
            for your account or an exception occurs. Use <code>DescribeAccountAuditConfiguration</code> 
            to see the list of all checks, including those that are enabled or 
            <code>UpdateAccountAuditConfiguration</code> to select which checks are enabled.</p>")
    targetCheckNames: targetAuditCheckNames,
  }
  type response = {
    @ocaml.doc("<p>The ID of the on-demand audit you started.</p>") taskId: option<auditTaskId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "StartOnDemandAuditTaskCommand"
  let make = (~targetCheckNames, ()) => new({targetCheckNames: targetCheckNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetV2LoggingLevel = {
  type t
  type request = {
    @ocaml.doc("<p>The log level.</p>") logLevel: logLevel,
    @ocaml.doc("<p>The log target.</p>") logTarget: logTarget,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetV2LoggingLevelCommand"
  let make = (~logLevel, ~logTarget, ()) => new({logLevel: logLevel, logTarget: logTarget})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetLoggingOptions = {
  type t
  @ocaml.doc("<p>The input for the SetLoggingOptions operation.</p>")
  type request = {
    @ocaml.doc("<p>The logging options payload.</p>") loggingOptionsPayload: loggingOptionsPayload,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetLoggingOptionsCommand"
  let make = (~loggingOptionsPayload, ()) => new({loggingOptionsPayload: loggingOptionsPayload})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterThing = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The parameters for provisioning a thing. See <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/provision-template.html\">Provisioning Templates</a> for more information.</p>"
    )
    parameters: option<parameters>,
    @ocaml.doc(
      "<p>The provisioning template. See <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/provision-w-cert.html\">Provisioning Devices That Have Device Certificates</a> for more information.</p>"
    )
    templateBody: templateBody,
  }
  type response = {
    @ocaml.doc("<p>ARNs for the generated resources.</p>") resourceArns: option<resourceArns>,
    @ocaml.doc("<p>The certificate data, in PEM format.</p>")
    certificatePem: option<certificatePem>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "RegisterThingCommand"
  let make = (~templateBody, ~parameters=?, ()) =>
    new({parameters: parameters, templateBody: templateBody})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingsInThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>When true, list things in this thing group and in all child groups as
			well.</p>")
    recursive: option<recursive>,
    @ocaml.doc("<p>The thing group name.</p>") thingGroupName: thingGroupName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The things in the specified thing group.</p>") things: option<thingNameList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingsInThingGroupCommand"
  let make = (~thingGroupName, ~maxResults=?, ~nextToken=?, ~recursive=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      recursive: recursive,
      thingGroupName: thingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingsInBillingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per request.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the billing group.</p>") billingGroupName: billingGroupName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results. Will not be returned if operation has returned all results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of things in the billing group.</p>") things: option<thingNameList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingsInBillingGroupCommand"
  let make = (~billingGroupName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, billingGroupName: billingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingRegistrationTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the bulk thing provisioning task.</p>") status: option<status>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of bulk thing provisioning task IDs.</p>") taskIds: option<taskIdList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListThingRegistrationTasksCommand"
  let make = (~status=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({status: status, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingRegistrationTaskReports = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per request.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
		the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of task report.</p>") reportType: reportType,
    @ocaml.doc("<p>The id of the task.</p>") taskId: taskId,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of task report.</p>") reportType: option<reportType>,
    @ocaml.doc("<p>Links to the task resources.</p>") resourceLinks: option<s3FileUrlList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListThingRegistrationTaskReportsCommand"
  let make = (~reportType, ~taskId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, reportType: reportType, taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingPrincipals = {
  type t
  @ocaml.doc("<p>The input for the ListThingPrincipal operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the thing.</p>") thingName: thingName,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>The output from the ListThingPrincipals operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The principals associated with the thing.</p>") principals: option<principals>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingPrincipalsCommand"
  let make = (~thingName, ~maxResults=?, ~nextToken=?, ()) =>
    new({thingName: thingName, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTargetsForPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>A marker used to get the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The policy name.</p>") policyName: policyName,
  }
  type response = {
    @ocaml.doc("<p>A marker used to get the next set of results.</p>") nextMarker: option<marker>,
    @ocaml.doc("<p>The policy targets.</p>") targets: option<policyTargets>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListTargetsForPolicyCommand"
  let make = (~policyName, ~pageSize=?, ~marker=?, ()) =>
    new({pageSize: pageSize, marker: marker, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoleAliases = {
  type t
  type request = {
    @ocaml.doc("<p>Return the list of role aliases in ascending alphabetical order.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>A marker used to get the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    pageSize: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>A marker used to get the next set of results.</p>") nextMarker: option<marker>,
    @ocaml.doc("<p>The role aliases.</p>") roleAliases: option<roleAliases>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListRoleAliasesCommand"
  let make = (~ascendingOrder=?, ~marker=?, ~pageSize=?, ()) =>
    new({ascendingOrder: ascendingOrder, marker: marker, pageSize: pageSize})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrincipalThings = {
  type t
  @ocaml.doc("<p>The input for the ListPrincipalThings operation.</p>")
  type request = {
    @ocaml.doc("<p>The principal.</p>") principal: principal,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>The output from the ListPrincipalThings operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The things.</p>") things: option<thingNameList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPrincipalThingsCommand"
  let make = (~principal, ~maxResults=?, ~nextToken=?, ()) =>
    new({principal: principal, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicyPrincipals = {
  type t
  @ocaml.doc("<p>The input for the ListPolicyPrincipals operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the order for results. If true, the results are returned in ascending
         creation order.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The policy name.</p>") policyName: policyName,
  }
  @ocaml.doc("<p>The output from the ListPolicyPrincipals operation.</p>")
  type response = {
    @ocaml.doc("<p>The marker for the next set of results, or null if there are no additional
         results.</p>")
    nextMarker: option<marker>,
    @ocaml.doc("<p>The descriptions of the principals.</p>") principals: option<principals>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPolicyPrincipalsCommand"
  let make = (~policyName, ~ascendingOrder=?, ~pageSize=?, ~marker=?, ()) =>
    new({
      ascendingOrder: ascendingOrder,
      pageSize: pageSize,
      marker: marker,
      policyName: policyName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIndices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<queryMaxResults>,
    @ocaml.doc("<p>The token used to get the next set of results, or <code>null</code> if there are no additional
      results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The token used to get the next set of results, or <code>null</code> if there are no additional
      results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The index names.</p>") indexNames: option<indexNamesList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListIndicesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDimensions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of the names of the defined dimensions. Use <code>DescribeDimension</code> to get details for a dimension.</p>"
    )
    dimensionNames: option<dimensionNames>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListDimensionsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomMetrics = {
  type t
  type request = {
    @ocaml.doc("<p>
      The maximum number of results to return at one time. The default is 25.
    </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      The token for the next set of results.
    </p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>
      A token that can be used to retrieve the next set of results, 
      or <code>null</code> if there are no additional results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      The name of the custom metric.
    </p>")
    metricNames: option<metricNames>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCustomMetricsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStatistics = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the query used to search.</p>")
    queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The aggregation field name.</p>") aggregationField: option<aggregationField>,
    @ocaml.doc("<p>The query used to search. You can specify \"*\" for the query string to get the count of all
      indexed things in your AWS account.</p>")
    queryString: queryString,
    @ocaml.doc(
      "<p>The name of the index to search. The default value is <code>AWS_Things</code>.</p>"
    )
    indexName: option<indexName>,
  }
  type response = {
    @ocaml.doc("<p>The statistics returned by the Fleet Indexing service based on the query and aggregation
      field.</p>")
    statistics: option<statistics>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetStatisticsCommand"
  let make = (~queryString, ~queryVersion=?, ~aggregationField=?, ~indexName=?, ()) =>
    new({
      queryVersion: queryVersion,
      aggregationField: aggregationField,
      queryString: queryString,
      indexName: indexName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThing = {
  type t
  @ocaml.doc("<p>The input for the DescribeThing operation.</p>")
  type request = {@ocaml.doc("<p>The name of the thing.</p>") thingName: thingName}
  @ocaml.doc("<p>The output from the DescribeThing operation.</p>")
  type response = {
    @ocaml.doc("<p>The name of the billing group the thing belongs to.</p>")
    billingGroupName: option<billingGroupName>,
    @ocaml.doc("<p>The current version of the thing record in the registry.</p>
		       <note>
			         <p>To avoid unintentional changes to the information in the registry, you can pass
				the version information in the <code>expectedVersion</code> parameter of the
					<code>UpdateThing</code> and <code>DeleteThing</code> calls.</p>
		       </note>")
    version: option<version>,
    @ocaml.doc("<p>The thing attributes.</p>") attributes: option<attributes>,
    @ocaml.doc("<p>The thing type name.</p>") thingTypeName: option<thingTypeName>,
    @ocaml.doc("<p>The ARN of the thing to describe.</p>") thingArn: option<thingArn>,
    @ocaml.doc("<p>The ID of the thing to describe.</p>") thingId: option<thingId>,
    @ocaml.doc("<p>The name of the thing.</p>") thingName: option<thingName>,
    @ocaml.doc("<p>The default MQTT client ID. For a typical device, the thing name is also used as the default MQTT client ID.  
			Although we don’t require a mapping between a thing's registry name and its use of MQTT client IDs, certificates, or 
			shadow state, we recommend that you choose a thing name and use it as the MQTT client ID for the registry and the Device Shadow service.</p>
		       <p>This lets you better organize your AWS IoT fleet without removing the flexibility of the underlying device certificate model or shadows.</p>")
    defaultClientId: option<clientId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeThingCommand"
  let make = (~thingName, ()) => new({thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledAudit = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the scheduled audit whose information you want to get.</p>")
    scheduledAuditName: scheduledAuditName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the scheduled audit.</p>")
    scheduledAuditArn: option<scheduledAuditArn>,
    @ocaml.doc("<p>The name of the scheduled audit.</p>")
    scheduledAuditName: option<scheduledAuditName>,
    @ocaml.doc("<p>Which checks are performed during the scheduled audit. Checks must be 
            enabled for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
            of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
            to select which checks are enabled.)</p>")
    targetCheckNames: option<targetAuditCheckNames>,
    @ocaml.doc("<p>The day of the week on which the scheduled audit takes
      place,
      either one of
            <code>SUN</code>, <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>.</p>")
    dayOfWeek: option<dayOfWeek>,
    @ocaml.doc("<p>The day of the month on which the scheduled audit takes place.
      This is
      will be <code>1</code>
            through <code>31</code> or <code>LAST</code>. If days
      <code>29</code>-<code>31</code>
      are specified, and the month does not have that many days, the audit takes place on the <code>LAST</code>
      day of the month.</p>")
    dayOfMonth: option<dayOfMonth>,
    @ocaml.doc("<p>How often the scheduled audit takes
      place, either
      one of <code>DAILY</code>,
            <code>WEEKLY</code>, <code>BIWEEKLY</code>, or <code>MONTHLY</code>. The start time of each audit is determined by the
      system.</p>")
    frequency: option<auditFrequency>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeScheduledAuditCommand"
  let make = (~scheduledAuditName, ()) => new({scheduledAuditName: scheduledAuditName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRoleAlias = {
  type t
  type request = {@ocaml.doc("<p>The role alias to describe.</p>") roleAlias: roleAlias}
  type response = {
    @ocaml.doc("<p>The role alias description.</p>")
    roleAliasDescription: option<roleAliasDescription>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeRoleAliasCommand"
  let make = (~roleAlias, ()) => new({roleAlias: roleAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisioningTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>") templateName: templateName,
  }
  type response = {
    @ocaml.doc("<p>Gets information about a pre-provisioned hook.</p>")
    preProvisioningHook: option<provisioningHook>,
    @ocaml.doc("<p>The ARN of the role associated with the provisioning template. This IoT role grants
         permission to provision a device.</p>")
    provisioningRoleArn: option<roleArn>,
    @ocaml.doc("<p>True if the fleet provisioning template is enabled, otherwise false.</p>")
    enabled: option<enabled>,
    @ocaml.doc("<p>The JSON formatted contents of the fleet provisioning template.</p>")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>The default fleet template version ID.</p>")
    defaultVersionId: option<templateVersionId>,
    @ocaml.doc("<p>The date when the fleet provisioning template was last modified.</p>")
    lastModifiedDate: option<dateType>,
    @ocaml.doc("<p>The date when the fleet provisioning template was created.</p>")
    creationDate: option<dateType>,
    @ocaml.doc("<p>The description of the fleet provisioning template.</p>")
    description: option<templateDescription>,
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>")
    templateName: option<templateName>,
    @ocaml.doc("<p>The ARN of the fleet provisioning template.</p>")
    templateArn: option<templateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeProvisioningTemplateCommand"
  let make = (~templateName, ()) => new({templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDimension = {
  type t
  type request = {@ocaml.doc("<p>The unique identifier for the dimension.</p>") name: dimensionName}
  type response = {
    @ocaml.doc("<p>The date the dimension was last modified.</p>")
    lastModifiedDate: option<timestamp_>,
    @ocaml.doc("<p>The date the dimension was created.</p>") creationDate: option<timestamp_>,
    @ocaml.doc(
      "<p>The value or list of values used to scope the dimension. For example, for topic filters, this is the pattern used to match the MQTT topic name.</p>"
    )
    stringValues: option<dimensionStringValues>,
    @ocaml.doc("<p>The type of the dimension.</p>") @as("type") type_: option<dimensionType>,
    @ocaml.doc("<p>The Amazon Resource Name
      (ARN)
      for
      the dimension.</p>")
    arn: option<dimensionArn>,
    @ocaml.doc("<p>The unique identifier for the dimension.</p>") name: option<dimensionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeDimensionCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBillingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the billing group.</p>") billingGroupName: billingGroupName,
  }
  type response = {
    @ocaml.doc("<p>Additional information about the billing group.</p>")
    billingGroupMetadata: option<billingGroupMetadata>,
    @ocaml.doc("<p>The properties of the billing group.</p>")
    billingGroupProperties: option<billingGroupProperties>,
    @ocaml.doc("<p>The version of the billing group.</p>") version: option<version>,
    @ocaml.doc("<p>The ARN of the billing group.</p>") billingGroupArn: option<billingGroupArn>,
    @ocaml.doc("<p>The ID of the billing group.</p>") billingGroupId: option<billingGroupId>,
    @ocaml.doc("<p>The name of the billing group.</p>") billingGroupName: option<billingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeBillingGroupCommand"
  let make = (~billingGroupName, ()) => new({billingGroupName: billingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProvisioningClaim = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the provisioning template to use.</p>") templateName: templateName,
  }
  type response = {
    @ocaml.doc("<p>The provisioning claim expiration time.</p>") expiration: option<dateType>,
    @ocaml.doc("<p>The provisioning claim key pair.</p>") keyPair: option<keyPair>,
    @ocaml.doc("<p>The provisioning claim certificate.</p>") certificatePem: option<certificatePem>,
    @ocaml.doc("<p>The ID of the certificate.</p>") certificateId: option<certificateId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateProvisioningClaimCommand"
  let make = (~templateName, ()) => new({templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKeysAndCertificate = {
  type t
  @ocaml.doc("<p>The input for the CreateKeysAndCertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether the certificate is active.</p>")
    setAsActive: option<setAsActive>,
  }
  @ocaml.doc("<p>The output of the CreateKeysAndCertificate operation.</p>")
  type response = {
    @ocaml.doc("<p>The generated key pair.</p>") keyPair: option<keyPair>,
    @ocaml.doc("<p>The certificate data, in PEM format.</p>")
    certificatePem: option<certificatePem>,
    @ocaml.doc("<p>The ID of the certificate. AWS IoT issues a default subject name for the certificate
         (for example, AWS IoT Certificate).</p>")
    certificateId: option<certificateId>,
    @ocaml.doc("<p>The ARN of the certificate.</p>") certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateKeysAndCertificateCommand"
  let make = (~setAsActive=?, ()) => new({setAsActive: setAsActive})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJobExecution = {
  type t
  type request = {
    @ocaml.doc("<p>A collection of name/value pairs that describe the status of the job execution. If not 
          specified, the statusDetails are unchanged. You can specify at most 10 name/value pairs.</p>")
    statusDetails: option<detailsMap>,
    @ocaml.doc("<p>(Optional) The expected current version of the job execution. Each time you update the job 
          execution, its version is incremented. If the version of the job execution stored in Jobs does 
          not match, the update is rejected with a VersionMismatch error, and an ErrorResponse that 
          contains the current job execution status data is returned. (This makes it unnecessary to 
          perform a separate DescribeJobExecution request in order to obtain the job execution status 
          data.)</p>")
    expectedVersion: option<expectedVersion>,
    @ocaml.doc("<p>(Optional) If <code>true</code> the job execution will be canceled if it has status 
          IN_PROGRESS or QUEUED, otherwise the job execution will be canceled only if it has status 
          QUEUED. If you attempt to cancel a job execution that is IN_PROGRESS, and you do not set 
          <code>force</code> to <code>true</code>, then an <code>InvalidStateTransitionException</code> 
          will be thrown. The default is <code>false</code>.</p>
        <p>Canceling a job execution which is \"IN_PROGRESS\", will cause the device to be unable 
          to update the job execution status.  Use caution and ensure that the device is able to 
          recover to a valid state.</p>")
    force: option<forceFlag>,
    @ocaml.doc("<p>The name of the thing whose execution of the job will be canceled.</p>")
    thingName: thingName,
    @ocaml.doc("<p>The ID of the job to be canceled.</p>") jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "CancelJobExecutionCommand"
  let make = (~thingName, ~jobId, ~statusDetails=?, ~expectedVersion=?, ~force=?, ()) =>
    new({
      statusDetails: statusDetails,
      expectedVersion: expectedVersion,
      force: force,
      thingName: thingName,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateTargetsWithJob = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
    namespaceId: option<namespaceId>,
    @ocaml.doc(
      "<p>An optional comment string describing why the job was associated with the targets.</p>"
    )
    comment: option<comment>,
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: jobId,
    @ocaml.doc("<p>A list of thing group ARNs that define the targets of the job.</p>")
    targets: jobTargets,
  }
  type response = {
    @ocaml.doc("<p>A short text description of the job.</p>") description: option<jobDescription>,
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: option<jobId>,
    @ocaml.doc("<p>An ARN identifying the job.</p>") jobArn: option<jobArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "AssociateTargetsWithJobCommand"
  let make = (~jobId, ~targets, ~namespaceId=?, ~comment=?, ()) =>
    new({namespaceId: namespaceId, comment: comment, jobId: jobId, targets: targets})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateThing = {
  type t
  @ocaml.doc("<p>The input for the UpdateThing operation.</p>")
  type request = {
    @ocaml.doc("<p>Remove a thing type association. If <b>true</b>, the
			association is removed.</p>")
    removeThingType: option<removeThingType>,
    @ocaml.doc("<p>The expected version of the thing record in the registry. If the version of the
			record in the registry does not match the expected version specified in the request, the
				<code>UpdateThing</code> request is rejected with a
				<code>VersionConflictException</code>.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>A list of thing attributes, a JSON string containing name-value pairs. For
			example:</p>
		       <p>
			         <code>{\\\"attributes\\\":{\\\"name1\\\":\\\"value2\\\"}}</code>
		       </p>
		       <p>This data is used to add new attributes or update existing attributes.</p>")
    attributePayload: option<attributePayload>,
    @ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: option<thingTypeName>,
    @ocaml.doc("<p>The name of the thing to update.</p>
		       <p>You can't change a thing's name. To change a thing's name, you must create a
			new thing, give it the new name, and then delete the old thing.</p>")
    thingName: thingName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateThingCommand"
  let make = (
    ~thingName,
    ~removeThingType=?,
    ~expectedVersion=?,
    ~attributePayload=?,
    ~thingTypeName=?,
    (),
  ) =>
    new({
      removeThingType: removeThingType,
      expectedVersion: expectedVersion,
      attributePayload: attributePayload,
      thingTypeName: thingTypeName,
      thingName: thingName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateEventConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The new event configuration values.</p>")
    eventConfigurations: option<eventConfigurations>,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateEventConfigurationsCommand"
  let make = (~eventConfigurations=?, ()) => new({eventConfigurations: eventConfigurations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateAuditSuppression = {
  type t
  type request = {
    @ocaml.doc("<p>
      The description of the audit suppression.
    </p>")
    description: option<auditDescription>,
    @ocaml.doc("<p>
      Indicates whether a suppression should exist indefinitely or not.
    </p>")
    suppressIndefinitely: option<suppressIndefinitely>,
    @ocaml.doc("<p>
      The expiration date (epoch timestamp in seconds) that you want the suppression to adhere to.
    </p>")
    expirationDate: option<timestamp_>,
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateAuditSuppressionCommand"
  let make = (
    ~resourceIdentifier,
    ~checkName,
    ~description=?,
    ~suppressIndefinitely=?,
    ~expirationDate=?,
    (),
  ) =>
    new({
      description: description,
      suppressIndefinitely: suppressIndefinitely,
      expirationDate: expirationDate,
      resourceIdentifier: resourceIdentifier,
      checkName: checkName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateAccountAuditConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies which audit checks are enabled and disabled for this account. Use 
            <code>DescribeAccountAuditConfiguration</code> to see the list of all checks, including those 
            that are currently enabled.</p>
          <p>Some data collection might start immediately when certain checks are enabled. 
            When a check is disabled, any data collected so far in relation to the check is deleted.</p>
          <p>You
      cannot
      disable a check if
      it's
      used by any scheduled audit. You must first delete the check from the scheduled audit or
      delete the scheduled audit itself.</p>
          <p>On the first call to <code>UpdateAccountAuditConfiguration</code>,
            this parameter is required and must specify at least one enabled check.</p>")
    auditCheckConfigurations: option<auditCheckConfigurations>,
    @ocaml.doc("<p>Information about the targets to which audit notifications are sent.</p>")
    auditNotificationTargetConfigurations: option<auditNotificationTargetConfigurations>,
    @ocaml.doc("<p>The Amazon
      Resource Name
      (ARN)
      of the role that grants permission
      to
      AWS IoT to access information about your devices, policies,
      certificates,
      and other items as required when performing an audit.</p>")
    roleArn: option<roleArn>,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateAccountAuditConfigurationCommand"
  let make = (
    ~auditCheckConfigurations=?,
    ~auditNotificationTargetConfigurations=?,
    ~roleArn=?,
    (),
  ) =>
    new({
      auditCheckConfigurations: auditCheckConfigurations,
      auditNotificationTargetConfigurations: auditNotificationTargetConfigurations,
      roleArn: roleArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TestInvokeAuthorizer = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies a test TLS authorization request.</p>") tlsContext: option<tlsContext>,
    @ocaml.doc("<p>Specifies a test MQTT authorization request.</p>")
    mqttContext: option<mqttContext>,
    @ocaml.doc("<p>Specifies a test HTTP authorization request.</p>")
    httpContext: option<httpContext>,
    @ocaml.doc("<p>The signature made with the token and your custom authentication service's private
         key. This value must be Base-64-encoded.</p>")
    tokenSignature: option<tokenSignature>,
    @ocaml.doc("<p>The token returned by your custom authentication service.</p>")
    token: option<token>,
    @ocaml.doc("<p>The custom authorizer name.</p>") authorizerName: authorizerName,
  }
  type response = {
    @ocaml.doc("<p>The number of seconds after which the connection is terminated.</p>")
    disconnectAfterInSeconds: option<seconds>,
    @ocaml.doc("<p>The number of seconds after which the temporary credentials are refreshed.</p>")
    refreshAfterInSeconds: option<seconds>,
    @ocaml.doc("<p>IAM policy documents.</p>") policyDocuments: option<policyDocuments>,
    @ocaml.doc("<p>The principal ID.</p>") principalId: option<principalId>,
    @ocaml.doc("<p>True if the token is authenticated, otherwise false.</p>")
    isAuthenticated: option<isAuthenticated>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "TestInvokeAuthorizerCommand"
  let make = (
    ~authorizerName,
    ~tlsContext=?,
    ~mqttContext=?,
    ~httpContext=?,
    ~tokenSignature=?,
    ~token=?,
    (),
  ) =>
    new({
      tlsContext: tlsContext,
      mqttContext: mqttContext,
      httpContext: httpContext,
      tokenSignature: tokenSignature,
      token: token,
      authorizerName: authorizerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The new or modified tags for the resource.</p>") tags: tagList_,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartDetectMitigationActionsTask = {
  type t
  type request = {
    @ocaml.doc("<p>
      Each mitigation action task must have a unique client request token. If you try to create a new task with the same token as a task that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.
    </p>")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>
      Specifies to include suppressed alerts.
    </p>")
    includeSuppressedAlerts: option<nullableBoolean>,
    @ocaml.doc("<p>
      Specifies to list only active violations.
    </p>")
    includeOnlyActiveViolations: option<nullableBoolean>,
    @ocaml.doc("<p>
      Specifies the time period of which violation events occurred between.
    </p>")
    violationEventOccurrenceRange: option<violationEventOccurrenceRange>,
    @ocaml.doc("<p>
      The actions to be performed when a device has unexpected behavior.
    </p>")
    actions: detectMitigationActionsToExecuteList,
    @ocaml.doc("<p>
      Specifies the ML Detect findings to which the mitigation actions are applied.
    </p>")
    target: detectMitigationActionsTaskTarget,
    @ocaml.doc("<p>
      The unique identifier of the task.
    </p>")
    taskId: mitigationActionsTaskId,
  }
  type response = {
    @ocaml.doc("<p>
      The unique identifier of the task.
    </p>")
    taskId: option<mitigationActionsTaskId>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StartDetectMitigationActionsTaskCommand"
  let make = (
    ~clientRequestToken,
    ~actions,
    ~target,
    ~taskId,
    ~includeSuppressedAlerts=?,
    ~includeOnlyActiveViolations=?,
    ~violationEventOccurrenceRange=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      includeSuppressedAlerts: includeSuppressedAlerts,
      includeOnlyActiveViolations: includeOnlyActiveViolations,
      violationEventOccurrenceRange: violationEventOccurrenceRange,
      actions: actions,
      target: target,
      taskId: taskId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterCACertificate = {
  type t
  @ocaml.doc("<p>The input to the RegisterCACertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the CA certificate.</p>
         <note>
            <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
            <p>For the CLI command-line parameter use format: &&tags
            \"key1=value1&key2=value2...\"</p>
            <p>For the cli-input-json file use format: \"tags\":
            \"key1=value1&key2=value2...\"</p>
         </note>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Information about the registration configuration.</p>")
    registrationConfig: option<registrationConfig>,
    @ocaml.doc("<p>Allows this CA certificate to be used for auto registration of device
         certificates.</p>")
    allowAutoRegistration: option<allowAutoRegistration>,
    @ocaml.doc("<p>A boolean value that specifies if the CA certificate is set to active.</p>")
    setAsActive: option<setAsActive>,
    @ocaml.doc("<p>The private key verification certificate.</p>")
    verificationCertificate: certificatePem,
    @ocaml.doc("<p>The CA certificate.</p>") caCertificate: certificatePem,
  }
  @ocaml.doc("<p>The output from the RegisterCACertificateResponse operation.</p>")
  type response = {
    @ocaml.doc("<p>The CA certificate identifier.</p>") certificateId: option<certificateId>,
    @ocaml.doc("<p>The CA certificate ARN.</p>") certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "RegisterCACertificateCommand"
  let make = (
    ~verificationCertificate,
    ~caCertificate,
    ~tags=?,
    ~registrationConfig=?,
    ~allowAutoRegistration=?,
    ~setAsActive=?,
    (),
  ) =>
    new({
      tags: tags,
      registrationConfig: registrationConfig,
      allowAutoRegistration: allowAutoRegistration,
      setAsActive: setAsActive,
      verificationCertificate: verificationCertificate,
      caCertificate: caCertificate,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTopicRules = {
  type t
  @ocaml.doc("<p>The input for the ListTopicRules operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether the rule is disabled.</p>") ruleDisabled: option<isDisabled>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
         value from a previous response; otherwise <b>null</b> to receive
         the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>")
    maxResults: option<topicRuleMaxResults>,
    @ocaml.doc("<p>The topic.</p>") topic: option<topic>,
  }
  @ocaml.doc("<p>The output from the ListTopicRules operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The rules.</p>") rules: option<topicRuleList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListTopicRulesCommand"
  let make = (~ruleDisabled=?, ~nextToken=?, ~maxResults=?, ~topic=?, ()) =>
    new({ruleDisabled: ruleDisabled, nextToken: nextToken, maxResults: maxResults, topic: topic})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingGroupsForThing = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The thing name.</p>") thingName: thingName,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The thing groups.</p>") thingGroups: option<thingGroupNameAndArnList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingGroupsForThingCommand"
  let make = (~thingName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, thingName: thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingGroups = {
  type t
  type request = {
    @ocaml.doc("<p>If true, return child groups as well.</p>")
    recursive: option<recursiveWithoutDefault>,
    @ocaml.doc("<p>A filter that limits the results to those with the specified name prefix.</p>")
    namePrefixFilter: option<thingGroupName>,
    @ocaml.doc("<p>A filter that limits the results to those with the specified parent group.</p>")
    parentGroup: option<thingGroupName>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results. Will not be returned if operation has returned all results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The thing groups.</p>") thingGroups: option<thingGroupNameAndArnList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingGroupsCommand"
  let make = (~recursive=?, ~namePrefixFilter=?, ~parentGroup=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      recursive: recursive,
      namePrefixFilter: namePrefixFilter,
      parentGroup: parentGroup,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTargetsForSecurityProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The security profile.</p>") securityProfileName: securityProfileName,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
        additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The thing groups to which the security profile is attached.</p>")
    securityProfileTargets: option<securityProfileTargets>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListTargetsForSecurityProfileCommand"
  let make = (~securityProfileName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, securityProfileName: securityProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of tags assigned to the resource.</p>") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreams = {
  type t
  type request = {
    @ocaml.doc("<p>Set to true to return the list of streams in ascending order.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>A token used to get the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at a time.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A token used to get the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of streams.</p>") streams: option<streamsSummary>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListStreamsCommand"
  let make = (~ascendingOrder=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({ascendingOrder: ascendingOrder, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityProfiles = {
  type t
  type request = {
    @ocaml.doc("<p> The name of the custom metric.
      Cannot be used with <code>dimensionName</code>. </p>")
    metricName: option<metricName>,
    @ocaml.doc("<p>A filter to limit results to the security profiles that use the defined dimension.
      Cannot be used with <code>metricName</code>
         </p>")
    dimensionName: option<dimensionName>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
        additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of security profile identifiers (names and ARNs).</p>")
    securityProfileIdentifiers: option<securityProfileIdentifiers>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListSecurityProfilesCommand"
  let make = (~metricName=?, ~dimensionName=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      metricName: metricName,
      dimensionName: dimensionName,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListScheduledAudits = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time. The default is 25.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, 
            or <code>null</code> if there are no additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of scheduled audits.</p>")
    scheduledAudits: option<scheduledAuditMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListScheduledAuditsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisioningTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>A token to retrieve the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A token to retrieve the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of fleet provisioning templates</p>")
    templates: option<provisioningTemplateListing>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListProvisioningTemplatesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisioningTemplateVersions = {
  type t
  type request = {
    @ocaml.doc("<p>A token to retrieve the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>") templateName: templateName,
  }
  type response = {
    @ocaml.doc("<p>A token to retrieve the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of fleet provisioning template versions.</p>")
    versions: option<provisioningTemplateVersionListing>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListProvisioningTemplateVersionsCommand"
  let make = (~templateName, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, templateName: templateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrincipalPolicies = {
  type t
  @ocaml.doc("<p>The input for the ListPrincipalPolicies operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the order for results. If true, results are returned in ascending creation
         order.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
    @ocaml.doc(
      "<p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>"
    )
    principal: principal,
  }
  @ocaml.doc("<p>The output from the ListPrincipalPolicies operation.</p>")
  type response = {
    @ocaml.doc("<p>The marker for the next set of results, or null if there are no additional
         results.</p>")
    nextMarker: option<marker>,
    @ocaml.doc("<p>The policies.</p>") policies: option<policies>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPrincipalPoliciesCommand"
  let make = (~principal, ~ascendingOrder=?, ~pageSize=?, ~marker=?, ()) =>
    new({ascendingOrder: ascendingOrder, pageSize: pageSize, marker: marker, principal: principal})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicyVersions = {
  type t
  @ocaml.doc("<p>The input for the ListPolicyVersions operation.</p>")
  type request = {@ocaml.doc("<p>The policy name.</p>") policyName: policyName}
  @ocaml.doc("<p>The output from the ListPolicyVersions operation.</p>")
  type response = {@ocaml.doc("<p>The policy versions.</p>") policyVersions: option<policyVersions>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPolicyVersionsCommand"
  let make = (~policyName, ()) => new({policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicies = {
  type t
  @ocaml.doc("<p>The input for the ListPolicies operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the order for results. If true, the results are returned in ascending
         creation order.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
  }
  @ocaml.doc("<p>The output from the ListPolicies operation.</p>")
  type response = {
    @ocaml.doc("<p>The marker for the next set of results, or null if there are no additional
         results.</p>")
    nextMarker: option<marker>,
    @ocaml.doc("<p>The descriptions of the policies.</p>") policies: option<policies>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPoliciesCommand"
  let make = (~ascendingOrder=?, ~pageSize=?, ~marker=?, ()) =>
    new({ascendingOrder: ascendingOrder, pageSize: pageSize, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOutgoingCertificates = {
  type t
  @ocaml.doc("<p>The input to the ListOutgoingCertificates operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the order for results. If True, the results are returned in ascending
         order, based on the creation date.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
  }
  @ocaml.doc("<p>The output from the ListOutgoingCertificates operation.</p>")
  type response = {
    @ocaml.doc("<p>The marker for the next set of results.</p>") nextMarker: option<marker>,
    @ocaml.doc("<p>The certificates that are being transferred but not yet accepted.</p>")
    outgoingCertificates: option<outgoingCertificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListOutgoingCertificatesCommand"
  let make = (~ascendingOrder=?, ~marker=?, ~pageSize=?, ()) =>
    new({ascendingOrder: ascendingOrder, marker: marker, pageSize: pageSize})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOTAUpdates = {
  type t
  type request = {
    @ocaml.doc("<p>The OTA update job status.</p>") otaUpdateStatus: option<otaupdateStatus>,
    @ocaml.doc("<p>A token used to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>A token to use to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of OTA update jobs.</p>") otaUpdates: option<otaupdatesSummary>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListOTAUpdatesCommand"
  let make = (~otaUpdateStatus=?, ~nextToken=?, ~maxResults=?, ()) =>
    new({otaUpdateStatus: otaUpdateStatus, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMitigationActions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time. The default is 25.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Specify a value to limit the result to mitigation actions with a specific action type.</p>"
    )
    actionType: option<mitigationActionType>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>A set of actions that matched the specified filter criteria.</p>")
    actionIdentifiers: option<mitigationActionIdentifierList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListMitigationActionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~actionType=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, actionType: actionType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
    namespaceId: option<namespaceId>,
    @ocaml.doc("<p>A filter that limits the returned jobs to those for the specified group.</p>")
    thingGroupId: option<thingGroupId>,
    @ocaml.doc("<p>A filter that limits the returned jobs to those for the specified group.</p>")
    thingGroupName: option<thingGroupName>,
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return per request.</p>")
    maxResults: option<laserMaxResults>,
    @ocaml.doc("<p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things
            specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing
            when a change is detected in a target. For example, a job will run on a thing when the thing is added to a
            target group, even after the job was completed by all things originally in the group. </p>")
    targetSelection: option<targetSelection>,
    @ocaml.doc(
      "<p>An optional filter that lets you search for jobs that have the specified status.</p>"
    )
    status: option<jobStatus>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results, or <b>null</b> if there are no
            additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of jobs.</p>") jobs: option<jobSummaryList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListJobsCommand"
  let make = (
    ~namespaceId=?,
    ~thingGroupId=?,
    ~thingGroupName=?,
    ~nextToken=?,
    ~maxResults=?,
    ~targetSelection=?,
    ~status=?,
    (),
  ) =>
    new({
      namespaceId: namespaceId,
      thingGroupId: thingGroupId,
      thingGroupName: thingGroupName,
      nextToken: nextToken,
      maxResults: maxResults,
      targetSelection: targetSelection,
      status: status,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to return the next set of results in the list.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return in the list.</p>")
    maxResults: option<laserMaxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results, or <b>null</b> if there are no
            additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects that contain information about the job templates.</p>")
    jobTemplates: option<jobTemplateSummaryList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListJobTemplatesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomainConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The type of service delivered by the endpoint.</p>")
    serviceType: option<serviceType>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
  }
  type response = {
    @ocaml.doc("<p>The marker for the next set of results.</p>") nextMarker: option<marker>,
    @ocaml.doc(
      "<p>A list of objects that contain summary information about the user's domain configurations.</p>"
    )
    domainConfigurations: option<domainConfigurations>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListDomainConfigurationsCommand"
  let make = (~serviceType=?, ~pageSize=?, ~marker=?, ()) =>
    new({serviceType: serviceType, pageSize: pageSize, marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectMitigationActionsExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>
      The token for the next set of results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      The maximum number of results to return at one time. The default is 25.
    </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      The end of the time period for which ML Detect mitigation actions executions are returned.
    </p>")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>
      A filter to limit results to those found after the specified time. You must
      specify either the startTime and endTime or the taskId, but not both.
    </p>")
    startTime: option<timestamp_>,
    @ocaml.doc("<p>
      The name of the thing whose mitigation actions are listed.
    </p>")
    thingName: option<deviceDefenderThingName>,
    @ocaml.doc("<p>
      The unique identifier of the violation.
    </p>")
    violationId: option<violationId>,
    @ocaml.doc("<p>
      The unique identifier of the task.
    </p>")
    taskId: option<mitigationActionsTaskId>,
  }
  type response = {
    @ocaml.doc("<p>
      A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      List of actions executions.
    </p>")
    actionsExecutions: option<detectMitigationActionExecutionList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListDetectMitigationActionsExecutionsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~endTime=?,
    ~startTime=?,
    ~thingName=?,
    ~violationId=?,
    ~taskId=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      endTime: endTime,
      startTime: startTime,
      thingName: thingName,
      violationId: violationId,
      taskId: taskId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCertificatesByCA = {
  type t
  @ocaml.doc("<p>The input to the ListCertificatesByCA operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the order for results. If True, the results are returned in ascending
         order, based on the creation date.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
    @ocaml.doc("<p>The ID of the CA certificate. This operation will list all registered device
         certificate that were signed by this CA certificate.</p>")
    caCertificateId: certificateId,
  }
  @ocaml.doc("<p>The output of the ListCertificatesByCA operation.</p>")
  type response = {
    @ocaml.doc("<p>The marker for the next set of results, or null if there are no additional
         results.</p>")
    nextMarker: option<marker>,
    @ocaml.doc("<p>The device certificates signed by the specified CA certificate.</p>")
    certificates: option<certificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCertificatesByCACommand"
  let make = (~caCertificateId, ~ascendingOrder=?, ~marker=?, ~pageSize=?, ()) =>
    new({
      ascendingOrder: ascendingOrder,
      marker: marker,
      pageSize: pageSize,
      caCertificateId: caCertificateId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCertificates = {
  type t
  @ocaml.doc("<p>The input for the ListCertificates operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the order for results. If True, the results are returned in ascending
         order, based on the creation date.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
  }
  @ocaml.doc("<p>The output of the ListCertificates operation.</p>")
  type response = {
    @ocaml.doc("<p>The marker for the next set of results, or null if there are no additional
         results.</p>")
    nextMarker: option<marker>,
    @ocaml.doc("<p>The descriptions of the certificates.</p>") certificates: option<certificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCertificatesCommand"
  let make = (~ascendingOrder=?, ~marker=?, ~pageSize=?, ()) =>
    new({ascendingOrder: ascendingOrder, marker: marker, pageSize: pageSize})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCACertificates = {
  type t
  @ocaml.doc("<p>Input for the ListCACertificates operation.</p>")
  type request = {
    @ocaml.doc("<p>Determines the order of the results.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>The marker for the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The result page size.</p>") pageSize: option<pageSize>,
  }
  @ocaml.doc("<p>The output from the ListCACertificates operation.</p>")
  type response = {
    @ocaml.doc("<p>The current position within the list of CA certificates.</p>")
    nextMarker: option<marker>,
    @ocaml.doc("<p>The CA certificates registered in your AWS account.</p>")
    certificates: option<cacertificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCACertificatesCommand"
  let make = (~ascendingOrder=?, ~marker=?, ~pageSize=?, ()) =>
    new({ascendingOrder: ascendingOrder, marker: marker, pageSize: pageSize})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBillingGroups = {
  type t
  type request = {
    @ocaml.doc("<p>Limit the results to billing groups whose names have the given prefix.</p>")
    namePrefixFilter: option<billingGroupName>,
    @ocaml.doc("<p>The maximum number of results to return per request.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of billing groups.</p>")
    billingGroups: option<billingGroupNameAndArnList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListBillingGroupsCommand"
  let make = (~namePrefixFilter=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({namePrefixFilter: namePrefixFilter, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuthorizers = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the list authorizers request.</p>")
    status: option<authorizerStatus>,
    @ocaml.doc("<p>Return the list of authorizers in ascending alphabetical order.</p>")
    ascendingOrder: option<ascendingOrder>,
    @ocaml.doc("<p>A marker used to get the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    pageSize: option<pageSize>,
  }
  type response = {
    @ocaml.doc("<p>A marker used to get the next set of results.</p>") nextMarker: option<marker>,
    @ocaml.doc("<p>The authorizers.</p>") authorizers: option<authorizers>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuthorizersCommand"
  let make = (~status=?, ~ascendingOrder=?, ~marker=?, ~pageSize=?, ()) =>
    new({status: status, ascendingOrder: ascendingOrder, marker: marker, pageSize: pageSize})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditTasks = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time. The default is 25.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>A filter to limit the output to audits with the specified completion
            status: can be one of \"IN_PROGRESS\", \"COMPLETED\", \"FAILED\", or \"CANCELED\".</p>")
    taskStatus: option<auditTaskStatus>,
    @ocaml.doc("<p>A filter to limit the output to the specified type of audit: can be one of
            \"ON_DEMAND_AUDIT_TASK\" or \"SCHEDULED__AUDIT_TASK\".</p>")
    taskType: option<auditTaskType>,
    @ocaml.doc("<p>The end of the time period.</p>") endTime: timestamp_,
    @ocaml.doc("<p>The beginning of the time period. Audit information is retained for a 
              limited time (90 days). Requesting a start time prior to what is retained 
              results in an \"InvalidRequestException\".</p>")
    startTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, or <code>null</code> 
            if there are no additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The audits that were performed during the specified time period.</p>")
    tasks: option<auditTaskMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuditTasksCommand"
  let make = (~endTime, ~startTime, ~maxResults=?, ~nextToken=?, ~taskStatus=?, ~taskType=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      taskStatus: taskStatus,
      taskType: taskType,
      endTime: endTime,
      startTime: startTime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditMitigationActionsTasks = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specify this filter to limit results to tasks that were completed or canceled on or before a specific date and time.</p>"
    )
    endTime: timestamp_,
    @ocaml.doc(
      "<p>Specify this filter to limit results to tasks that began on or after a specific date and time.</p>"
    )
    startTime: timestamp_,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time. The default is 25.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specify this filter to limit results to tasks that are in a specific state.</p>")
    taskStatus: option<auditMitigationActionsTaskStatus>,
    @ocaml.doc(
      "<p>Specify this filter to limit results to tasks that were applied to a specific audit finding.</p>"
    )
    findingId: option<findingId>,
    @ocaml.doc(
      "<p>Specify this filter to limit results to tasks that were applied to results for a specific audit.</p>"
    )
    auditTaskId: option<auditTaskId>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The collection of audit mitigation tasks that matched the filter criteria.</p>")
    tasks: option<auditMitigationActionsTaskMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListAuditMitigationActionsTasksCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~nextToken=?,
    ~maxResults=?,
    ~taskStatus=?,
    ~findingId=?,
    ~auditTaskId=?,
    (),
  ) =>
    new({
      endTime: endTime,
      startTime: startTime,
      nextToken: nextToken,
      maxResults: maxResults,
      taskStatus: taskStatus,
      findingId: findingId,
      auditTaskId: auditTaskId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditMitigationActionsExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time. The default is 25.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>Specify this filter to limit results to those that were applied to a specific audit finding.</p>"
    )
    findingId: findingId,
    @ocaml.doc("<p>Specify this filter to limit results to those with a specific status.</p>")
    actionStatus: option<auditMitigationActionsExecutionStatus>,
    @ocaml.doc(
      "<p>Specify this filter to limit results to actions for a specific audit mitigation actions task.</p>"
    )
    taskId: mitigationActionsTaskId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A set of task execution results based on the input parameters. Details include the mitigation action applied, start time, and task status.</p>"
    )
    actionsExecutions: option<auditMitigationActionExecutionMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListAuditMitigationActionsExecutionsCommand"
  let make = (~findingId, ~taskId, ~nextToken=?, ~maxResults=?, ~actionStatus=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      findingId: findingId,
      actionStatus: actionStatus,
      taskId: taskId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAttachedPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>") marker: option<marker>,
    @ocaml.doc("<p>When true, recursively list attached policies.</p>")
    recursive: option<recursive>,
    @ocaml.doc(
      "<p>The group or principal for which the policies will be listed. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>"
    )
    target: policyTarget,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next set of results, or ``null`` if there are no more
         results.</p>")
    nextMarker: option<marker>,
    @ocaml.doc("<p>The policies.</p>") policies: option<policies>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAttachedPoliciesCommand"
  let make = (~target, ~pageSize=?, ~marker=?, ~recursive=?, ()) =>
    new({pageSize: pageSize, marker: marker, recursive: recursive, target: target})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPercentiles = {
  type t
  type request = {
    @ocaml.doc("<p>The percentile groups returned.</p>") percents: option<percentList>,
    @ocaml.doc("<p>The query version.</p>") queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The field to aggregate.</p>") aggregationField: option<aggregationField>,
    @ocaml.doc("<p>The query string.</p>") queryString: queryString,
    @ocaml.doc("<p>The name of the index to search.</p>") indexName: option<indexName>,
  }
  type response = {
    @ocaml.doc("<p>The percentile values of the aggregated fields.</p>")
    percentiles: option<percentiles>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetPercentilesCommand"
  let make = (~queryString, ~percents=?, ~queryVersion=?, ~aggregationField=?, ~indexName=?, ()) =>
    new({
      percents: percents,
      queryVersion: queryVersion,
      aggregationField: aggregationField,
      queryString: queryString,
      indexName: indexName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEffectivePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The thing name.</p>") thingName: option<thingName>,
    @ocaml.doc("<p>The Cognito identity pool ID.</p>")
    cognitoIdentityPoolId: option<cognitoIdentityPoolId>,
    @ocaml.doc(
      "<p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>"
    )
    principal: option<principal>,
  }
  type response = {
    @ocaml.doc("<p>The effective policies.</p>") effectivePolicies: option<effectivePolicies>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetEffectivePoliciesCommand"
  let make = (~thingName=?, ~cognitoIdentityPoolId=?, ~principal=?, ()) =>
    new({thingName: thingName, cognitoIdentityPoolId: cognitoIdentityPoolId, principal: principal})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBehaviorModelTrainingSummaries = {
  type t
  type request = {
    @ocaml.doc("<p>
      The token for the next set of results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      The maximum number of results to return at one time. The default is 25.
    </p>")
    maxResults: option<tinyMaxResults>,
    @ocaml.doc("<p>
      The name of the security profile.
    </p>")
    securityProfileName: option<securityProfileName>,
  }
  type response = {
    @ocaml.doc("<p>
      A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      A list of all ML Detect behaviors and their model status for a given Security Profile.
    </p>")
    summaries: option<behaviorModelTrainingSummaries>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "GetBehaviorModelTrainingSummariesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~securityProfileName=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, securityProfileName: securityProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThingType = {
  type t
  @ocaml.doc("<p>The input for the DescribeThingType operation.</p>")
  type request = {@ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: thingTypeName}
  @ocaml.doc("<p>The output for the DescribeThingType operation.</p>")
  type response = {
    @ocaml.doc("<p>The ThingTypeMetadata contains additional information about the thing type
			including: creation date and time, a value indicating whether the thing type is
			deprecated, and a date and time when it was deprecated.</p>")
    thingTypeMetadata: option<thingTypeMetadata>,
    @ocaml.doc("<p>The ThingTypeProperties contains information about the thing type including
			description, and a list of searchable thing attribute names.</p>")
    thingTypeProperties: option<thingTypeProperties>,
    @ocaml.doc("<p>The thing type ARN.</p>") thingTypeArn: option<thingTypeArn>,
    @ocaml.doc("<p>The thing type ID.</p>") thingTypeId: option<thingTypeId>,
    @ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: option<thingTypeName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeThingTypeCommand"
  let make = (~thingTypeName, ()) => new({thingTypeName: thingTypeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventConfigurations = {
  type t

  type response = {
    @ocaml.doc("<p>The date the event configurations were last modified.</p>")
    lastModifiedDate: option<lastModifiedDate>,
    @ocaml.doc("<p>The creation date of the event configuration.</p>")
    creationDate: option<creationDate>,
    @ocaml.doc("<p>The event configurations.</p>") eventConfigurations: option<eventConfigurations>,
  }
  @module("@aws-sdk/client-iot") @new external new: unit => t = "DescribeEventConfigurationsCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomainConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain configuration.</p>")
    domainConfigurationName: reservedDomainConfigurationName,
  }
  type response = {
    @ocaml.doc("<p>The date and time the domain configuration's status was last changed.</p>")
    lastStatusChangeDate: option<dateType>,
    @ocaml.doc("<p>The type of the domain.</p>") domainType: option<domainType>,
    @ocaml.doc("<p>The type of service delivered by the endpoint.</p>")
    serviceType: option<serviceType>,
    @ocaml.doc(
      "<p>A Boolean value that specifies the current state of the domain configuration.</p>"
    )
    domainConfigurationStatus: option<domainConfigurationStatus>,
    @ocaml.doc("<p>An object that specifies the authorization service for a domain.</p>")
    authorizerConfig: option<authorizerConfig>,
    @ocaml.doc(
      "<p>A list containing summary information about the server certificate included in the domain configuration.</p>"
    )
    serverCertificates: option<serverCertificates>,
    @ocaml.doc("<p>The name of the domain.</p>") domainName: option<domainName>,
    @ocaml.doc("<p>The ARN of the domain configuration.</p>")
    domainConfigurationArn: option<domainConfigurationArn>,
    @ocaml.doc("<p>The name of the domain configuration.</p>")
    domainConfigurationName: option<reservedDomainConfigurationName>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeDomainConfigurationCommand"
  let make = (~domainConfigurationName, ()) =>
    new({domainConfigurationName: domainConfigurationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDefaultAuthorizer = {
  type t

  type response = {
    @ocaml.doc("<p>The default authorizer's description.</p>")
    authorizerDescription: option<authorizerDescription>,
  }
  @module("@aws-sdk/client-iot") @new external new: unit => t = "DescribeDefaultAuthorizerCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificate = {
  type t
  @ocaml.doc("<p>The input for the DescribeCertificate operation.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the certificate. (The last part of the certificate ARN contains the
         certificate ID.)</p>")
    certificateId: certificateId,
  }
  @ocaml.doc("<p>The output of the DescribeCertificate operation.</p>")
  type response = {
    @ocaml.doc("<p>The description of the certificate.</p>")
    certificateDescription: option<certificateDescription>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeCertificateCommand"
  let make = (~certificateId, ()) => new({certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCACertificate = {
  type t
  @ocaml.doc("<p>The input for the DescribeCACertificate operation.</p>")
  type request = {@ocaml.doc("<p>The CA certificate identifier.</p>") certificateId: certificateId}
  @ocaml.doc("<p>The output from the DescribeCACertificate operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the registration configuration.</p>")
    registrationConfig: option<registrationConfig>,
    @ocaml.doc("<p>The CA certificate description.</p>")
    certificateDescription: option<cacertificateDescription>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeCACertificateCommand"
  let make = (~certificateId, ()) => new({certificateId: certificateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuthorizer = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the authorizer to describe.</p>") authorizerName: authorizerName,
  }
  type response = {
    @ocaml.doc("<p>The authorizer description.</p>")
    authorizerDescription: option<authorizerDescription>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuthorizerCommand"
  let make = (~authorizerName, ()) => new({authorizerName: authorizerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditTask = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the audit whose information you want to get.</p>") taskId: auditTaskId,
  }
  type response = {
    @ocaml.doc("<p>Detailed information about each check performed during this audit.</p>")
    auditDetails: option<auditDetails>,
    @ocaml.doc("<p>The name of the scheduled audit (only if the audit was a scheduled audit).</p>")
    scheduledAuditName: option<scheduledAuditName>,
    @ocaml.doc("<p>Statistical information about the audit.</p>")
    taskStatistics: option<taskStatistics>,
    @ocaml.doc("<p>The time the audit started.</p>") taskStartTime: option<timestamp_>,
    @ocaml.doc("<p>The type of audit: \"ON_DEMAND_AUDIT_TASK\" or \"SCHEDULED_AUDIT_TASK\".</p>")
    taskType: option<auditTaskType>,
    @ocaml.doc("<p>The status of the audit: one of \"IN_PROGRESS\", \"COMPLETED\",
            \"FAILED\", or \"CANCELED\".</p>")
    taskStatus: option<auditTaskStatus>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuditTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditSuppression = {
  type t
  type request = {
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }
  type response = {
    @ocaml.doc("<p>
      The description of the audit suppression.
    </p>")
    description: option<auditDescription>,
    @ocaml.doc("<p>
      Indicates whether a suppression should exist indefinitely or not.
    </p>")
    suppressIndefinitely: option<suppressIndefinitely>,
    @ocaml.doc("<p>
      The epoch timestamp in seconds at which this suppression expires.
    </p>")
    expirationDate: option<timestamp_>,
    resourceIdentifier: option<resourceIdentifier>,
    checkName: option<auditCheckName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuditSuppressionCommand"
  let make = (~resourceIdentifier, ~checkName, ()) =>
    new({resourceIdentifier: resourceIdentifier, checkName: checkName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAuditConfiguration = {
  type t

  type response = {
    @ocaml.doc("<p>Which audit checks are enabled and disabled for this account.</p>")
    auditCheckConfigurations: option<auditCheckConfigurations>,
    @ocaml.doc("<p>Information about the targets to which audit notifications are sent for 
            this account.</p>")
    auditNotificationTargetConfigurations: option<auditNotificationTargetConfigurations>,
    @ocaml.doc("<p>The ARN of the role that grants permission to AWS IoT to access information
            about your devices, policies, certificates, and other items as required when 
            performing an audit.</p>
          <p>On the first call to <code>UpdateAccountAuditConfiguration</code>,
            this parameter is required.</p>")
    roleArn: option<roleArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: unit => t = "DescribeAccountAuditConfigurationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAuditSuppression = {
  type t
  type request = {
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteAuditSuppressionCommand"
  let make = (~resourceIdentifier, ~checkName, ()) =>
    new({resourceIdentifier: resourceIdentifier, checkName: checkName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateThingType = {
  type t
  @ocaml.doc("<p>The input for the CreateThingType operation.</p>")
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the thing type.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ThingTypeProperties for the thing type to create. It contains information about
			the new thing type including a description, and a list of searchable thing attribute
			names.</p>")
    thingTypeProperties: option<thingTypeProperties>,
    @ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: thingTypeName,
  }
  @ocaml.doc("<p>The output of the CreateThingType operation.</p>")
  type response = {
    @ocaml.doc("<p>The thing type ID.</p>") thingTypeId: option<thingTypeId>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the thing type.</p>")
    thingTypeArn: option<thingTypeArn>,
    @ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: option<thingTypeName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateThingTypeCommand"
  let make = (~thingTypeName, ~tags=?, ~thingTypeProperties=?, ()) =>
    new({tags: tags, thingTypeProperties: thingTypeProperties, thingTypeName: thingTypeName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThing = {
  type t
  @ocaml.doc("<p>The input for the CreateThing operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the billing group the thing will be added to.</p>")
    billingGroupName: option<billingGroupName>,
    @ocaml.doc("<p>The attribute payload, which consists of up to three name/value pairs in a JSON
			document. For example:</p>
		       <p>
			         <code>{\\\"attributes\\\":{\\\"string1\\\":\\\"string2\\\"}}</code>
		       </p>")
    attributePayload: option<attributePayload>,
    @ocaml.doc("<p>The name of the thing type associated with the new thing.</p>")
    thingTypeName: option<thingTypeName>,
    @ocaml.doc("<p>The name of the thing to create.</p>
		       <p>You can't change a thing's name after you create it. To change a thing's name, you must create a
			new thing, give it the new name, and then delete the old thing.</p>")
    thingName: thingName,
  }
  @ocaml.doc("<p>The output of the CreateThing operation.</p>")
  type response = {
    @ocaml.doc("<p>The thing ID.</p>") thingId: option<thingId>,
    @ocaml.doc("<p>The ARN of the new thing.</p>") thingArn: option<thingArn>,
    @ocaml.doc("<p>The name of the new thing.</p>") thingName: option<thingName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateThingCommand"
  let make = (~thingName, ~billingGroupName=?, ~attributePayload=?, ~thingTypeName=?, ()) =>
    new({
      billingGroupName: billingGroupName,
      attributePayload: attributePayload,
      thingTypeName: thingTypeName,
      thingName: thingName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScheduledAudit = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that can be used to manage the scheduled audit.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name you want to give to the scheduled audit. (Max. 128 chars)</p>")
    scheduledAuditName: scheduledAuditName,
    @ocaml.doc("<p>Which checks are performed during the scheduled audit. Checks must be enabled 
            for your account. (Use <code>DescribeAccountAuditConfiguration</code> to see the list
            of all checks, including those that are enabled or use <code>UpdateAccountAuditConfiguration</code> 
            to select which checks are enabled.)</p>")
    targetCheckNames: targetAuditCheckNames,
    @ocaml.doc("<p>The day of the week on which the scheduled audit takes
      place,
      either
      <code>SUN</code>,
      <code>MON</code>, <code>TUE</code>, <code>WED</code>, <code>THU</code>, <code>FRI</code>, or <code>SAT</code>. This field is required if the <code>frequency</code>
      parameter is set to <code>WEEKLY</code> or <code>BIWEEKLY</code>.</p>")
    dayOfWeek: option<dayOfWeek>,
    @ocaml.doc("<p>The day of the month on which the scheduled audit takes place.
      This
      can be \"1\" through \"31\" or \"LAST\". This field is required if the \"frequency\"
      parameter is set to <code>MONTHLY</code>. If days
      29
      to 31 are specified, and the month
      doesn't
      have that many days, the audit takes place on the <code>LAST</code> day of the month.</p>")
    dayOfMonth: option<dayOfMonth>,
    @ocaml.doc("<p>How often the scheduled audit takes
      place, either
      <code>DAILY</code>,
      <code>WEEKLY</code>, <code>BIWEEKLY</code> or <code>MONTHLY</code>. The start time of each audit is
      determined by the system.</p>")
    frequency: auditFrequency,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the scheduled audit.</p>")
    scheduledAuditArn: option<scheduledAuditArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateScheduledAuditCommand"
  let make = (
    ~scheduledAuditName,
    ~targetCheckNames,
    ~frequency,
    ~tags=?,
    ~dayOfWeek=?,
    ~dayOfMonth=?,
    (),
  ) =>
    new({
      tags: tags,
      scheduledAuditName: scheduledAuditName,
      targetCheckNames: targetCheckNames,
      dayOfWeek: dayOfWeek,
      dayOfMonth: dayOfMonth,
      frequency: frequency,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoleAlias = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the role alias.</p>
         <note>
            <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
            <p>For the CLI command-line parameter use format: &&tags
            \"key1=value1&key2=value2...\"</p>
            <p>For the cli-input-json file use format: \"tags\":
            \"key1=value1&key2=value2...\"</p>
         </note>")
    tags: option<tagList_>,
    @ocaml.doc("<p>How long (in seconds) the credentials will be valid.</p>")
    credentialDurationSeconds: option<credentialDurationSeconds>,
    @ocaml.doc("<p>The role ARN.</p>") roleArn: roleArn,
    @ocaml.doc("<p>The role alias that points to a role ARN. This allows you to change the role without
         having to update the device.</p>")
    roleAlias: roleAlias,
  }
  type response = {
    @ocaml.doc("<p>The role alias ARN.</p>") roleAliasArn: option<roleAliasArn>,
    @ocaml.doc("<p>The role alias.</p>") roleAlias: option<roleAlias>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateRoleAliasCommand"
  let make = (~roleArn, ~roleAlias, ~tags=?, ~credentialDurationSeconds=?, ()) =>
    new({
      tags: tags,
      credentialDurationSeconds: credentialDurationSeconds,
      roleArn: roleArn,
      roleAlias: roleAlias,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProvisioningTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the fleet provisioning template.</p>
         <note>
            <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
            <p>For the CLI command-line parameter use format: &&tags
            \"key1=value1&key2=value2...\"</p>
            <p>For the cli-input-json file use format: \"tags\":
            \"key1=value1&key2=value2...\"</p>
         </note>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Creates a pre-provisioning hook template.</p>")
    preProvisioningHook: option<provisioningHook>,
    @ocaml.doc("<p>The role ARN for the role associated with the fleet provisioning template. This IoT role
         grants permission to provision a device.</p>")
    provisioningRoleArn: roleArn,
    @ocaml.doc("<p>True to enable the fleet provisioning template, otherwise false.</p>")
    enabled: option<enabled>,
    @ocaml.doc("<p>The JSON formatted contents of the fleet provisioning template.</p>")
    templateBody: templateBody,
    @ocaml.doc("<p>The description of the fleet provisioning template.</p>")
    description: option<templateDescription>,
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>") templateName: templateName,
  }
  type response = {
    @ocaml.doc("<p>The default version of the fleet provisioning template.</p>")
    defaultVersionId: option<templateVersionId>,
    @ocaml.doc("<p>The name of the fleet provisioning template.</p>")
    templateName: option<templateName>,
    @ocaml.doc("<p>The ARN that identifies the provisioning template.</p>")
    templateArn: option<templateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateProvisioningTemplateCommand"
  let make = (
    ~provisioningRoleArn,
    ~templateBody,
    ~templateName,
    ~tags=?,
    ~preProvisioningHook=?,
    ~enabled=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      preProvisioningHook: preProvisioningHook,
      provisioningRoleArn: provisioningRoleArn,
      enabled: enabled,
      templateBody: templateBody,
      description: description,
      templateName: templateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePolicy = {
  type t
  @ocaml.doc("<p>The input for the CreatePolicy operation.</p>")
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the policy.</p>
         <note>
            <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
            <p>For the CLI command-line parameter use format: &&tags
            \"key1=value1&key2=value2...\"</p>
            <p>For the cli-input-json file use format: \"tags\":
            \"key1=value1&key2=value2...\"</p>
         </note>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The JSON document that describes the policy. <b>policyDocument</b> must have a minimum length of 1, with a maximum length of
         2048, excluding whitespace.</p>")
    policyDocument: policyDocument,
    @ocaml.doc("<p>The policy name.</p>") policyName: policyName,
  }
  @ocaml.doc("<p>The output from the CreatePolicy operation.</p>")
  type response = {
    @ocaml.doc("<p>The policy version ID.</p>") policyVersionId: option<policyVersionId>,
    @ocaml.doc("<p>The JSON document that describes the policy.</p>")
    policyDocument: option<policyDocument>,
    @ocaml.doc("<p>The policy ARN.</p>") policyArn: option<policyArn>,
    @ocaml.doc("<p>The policy name.</p>") policyName: option<policyName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreatePolicyCommand"
  let make = (~policyDocument, ~policyName, ~tags=?, ()) =>
    new({tags: tags, policyDocument: policyDocument, policyName: policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomainConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the domain configuration.</p>
         <note>
            <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
            <p>For the CLI command-line parameter use format: &&tags
            \"key1=value1&key2=value2...\"</p>
            <p>For the cli-input-json file use format: \"tags\":
            \"key1=value1&key2=value2...\"</p>
         </note>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The type of service delivered by the endpoint.</p>
         <note>
            <p>AWS IoT Core currently supports only the <code>DATA</code> service type.</p>
         </note>")
    serviceType: option<serviceType>,
    @ocaml.doc("<p>An object that specifies the authorization service for a domain.</p>")
    authorizerConfig: option<authorizerConfig>,
    @ocaml.doc("<p>The certificate used to validate the server certificate and prove domain name ownership. This certificate must be signed by a public certificate authority. 
         This value is not required for AWS-managed domains.</p>")
    validationCertificateArn: option<acmCertificateArn>,
    @ocaml.doc("<p>The ARNs of the certificates that AWS IoT passes to the device during the TLS handshake. Currently you can specify only one certificate ARN. 
      This value is not required for AWS-managed domains.</p>")
    serverCertificateArns: option<serverCertificateArns>,
    @ocaml.doc("<p>The name of the domain.</p>") domainName: option<domainName>,
    @ocaml.doc(
      "<p>The name of the domain configuration. This value must be unique to a region.</p>"
    )
    domainConfigurationName: domainConfigurationName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the domain configuration.</p>")
    domainConfigurationArn: option<domainConfigurationArn>,
    @ocaml.doc("<p>The name of the domain configuration.</p>")
    domainConfigurationName: option<domainConfigurationName>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateDomainConfigurationCommand"
  let make = (
    ~domainConfigurationName,
    ~tags=?,
    ~serviceType=?,
    ~authorizerConfig=?,
    ~validationCertificateArn=?,
    ~serverCertificateArns=?,
    ~domainName=?,
    (),
  ) =>
    new({
      tags: tags,
      serviceType: serviceType,
      authorizerConfig: authorizerConfig,
      validationCertificateArn: validationCertificateArn,
      serverCertificateArns: serverCertificateArns,
      domainName: domainName,
      domainConfigurationName: domainConfigurationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDimension = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Each dimension must have a unique client request token. If you try to create a new dimension with the same token as a dimension that already exists, an exception occurs. If you omit this value, AWS SDKs will automatically generate a unique client request.</p>"
    )
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>Metadata that can be used to manage the dimension.</p>") tags: option<tagList_>,
    @ocaml.doc(
      "<p>Specifies the value or list of values for the dimension. For <code>TOPIC_FILTER</code> dimensions, this is a pattern used to match the MQTT topic (for example, \"admin/#\").</p>"
    )
    stringValues: dimensionStringValues,
    @ocaml.doc("<p>Specifies the type of dimension. Supported types: <code>TOPIC_FILTER.</code>
         </p>")
    @as("type")
    type_: dimensionType,
    @ocaml.doc(
      "<p>A unique identifier for the dimension. Choose something that describes the type and value to make it easy to remember what it does.</p>"
    )
    name: dimensionName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name
      (ARN)
      of
      the created dimension.</p>")
    arn: option<dimensionArn>,
    @ocaml.doc("<p>A unique identifier for the dimension.</p>") name: option<dimensionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateDimensionCommand"
  let make = (~clientRequestToken, ~stringValues, ~type_, ~name, ~tags=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      tags: tags,
      stringValues: stringValues,
      type_: type_,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomMetric = {
  type t
  type request = {
    @ocaml.doc("<p>Each custom
      metric must have a unique client request token. If you try to create a new custom metric that
      already exists with a different token,
      an exception
      occurs. If you omit this value, AWS SDKs will automatically generate a unique client request. </p>")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>
      Metadata that can be used to manage the custom metric.
    </p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>
      The type of the custom metric. Types include <code>string-list</code>, <code>ip-address-list</code>, <code>number-list</code>, and <code>number</code>.
    </p>")
    metricType: customMetricType,
    @ocaml.doc("<p>
      Field
      represents a friendly name in the console for the custom metric;
      it
      doesn't have to be unique. Don't use this name as the metric identifier in
      the device metric report. Can be updated once defined.</p>")
    displayName: option<customMetricDisplayName>,
    @ocaml.doc("<p> The name of the custom metric. This will be used in the metric report submitted from the device/thing. Shouldn't begin with <code>aws:</code>.
      Cannot be updated
      once defined.</p>")
    metricName: metricName,
  }
  type response = {
    @ocaml.doc("<p>
      The Amazon Resource Number (ARN) of the custom metric, e.g. <code>arn:<i>aws-partition</i>:iot:<i>region</i>:<i>accountId</i>:custommetric/<i>metricName</i>
            </code>
         </p>")
    metricArn: option<customMetricArn>,
    @ocaml.doc("<p>
      The name of the custom metric to be used in the metric report.
    </p>")
    metricName: option<metricName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateCustomMetricCommand"
  let make = (~clientRequestToken, ~metricType, ~metricName, ~tags=?, ~displayName=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      tags: tags,
      metricType: metricType,
      displayName: displayName,
      metricName: metricName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBillingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the billing group.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The properties of the billing group.</p>")
    billingGroupProperties: option<billingGroupProperties>,
    @ocaml.doc("<p>The name you wish to give to the billing group.</p>")
    billingGroupName: billingGroupName,
  }
  type response = {
    @ocaml.doc("<p>The ID of the billing group.</p>") billingGroupId: option<billingGroupId>,
    @ocaml.doc("<p>The ARN of the billing group.</p>") billingGroupArn: option<billingGroupArn>,
    @ocaml.doc("<p>The name you gave to the billing group.</p>")
    billingGroupName: option<billingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateBillingGroupCommand"
  let make = (~billingGroupName, ~tags=?, ~billingGroupProperties=?, ()) =>
    new({
      tags: tags,
      billingGroupProperties: billingGroupProperties,
      billingGroupName: billingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAuthorizer = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether AWS IoT validates the token signature in an authorization request.</p>"
    )
    signingDisabled: option<booleanKey>,
    @ocaml.doc("<p>Metadata which can be used to manage the custom authorizer.</p>
         <note>
            <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
            <p>For the CLI command-line parameter use format: &&tags
            \"key1=value1&key2=value2...\"</p>
            <p>For the cli-input-json file use format: \"tags\":
            \"key1=value1&key2=value2...\"</p>
         </note>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The status of the create authorizer request.</p>")
    status: option<authorizerStatus>,
    @ocaml.doc("<p>The public keys used to verify the digital signature returned by your custom
         authentication service.</p>")
    tokenSigningPublicKeys: option<publicKeyMap>,
    @ocaml.doc("<p>The name of the token key used to extract the token from the HTTP headers.</p>")
    tokenKeyName: option<tokenKeyName>,
    @ocaml.doc("<p>The ARN of the authorizer's Lambda function.</p>")
    authorizerFunctionArn: authorizerFunctionArn,
    @ocaml.doc("<p>The authorizer name.</p>") authorizerName: authorizerName,
  }
  type response = {
    @ocaml.doc("<p>The authorizer ARN.</p>") authorizerArn: option<authorizerArn>,
    @ocaml.doc("<p>The authorizer's name.</p>") authorizerName: option<authorizerName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateAuthorizerCommand"
  let make = (
    ~authorizerFunctionArn,
    ~authorizerName,
    ~signingDisabled=?,
    ~tags=?,
    ~status=?,
    ~tokenSigningPublicKeys=?,
    ~tokenKeyName=?,
    (),
  ) =>
    new({
      signingDisabled: signingDisabled,
      tags: tags,
      status: status,
      tokenSigningPublicKeys: tokenSigningPublicKeys,
      tokenKeyName: tokenKeyName,
      authorizerFunctionArn: authorizerFunctionArn,
      authorizerName: authorizerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAuditSuppression = {
  type t
  type request = {
    @ocaml.doc("<p>
      The epoch timestamp in seconds at which this suppression expires.
    </p>")
    clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>
      The description of the audit suppression.
    </p>")
    description: option<auditDescription>,
    @ocaml.doc("<p>
      Indicates whether a suppression should exist indefinitely or not.
    </p>")
    suppressIndefinitely: option<suppressIndefinitely>,
    @ocaml.doc("<p>
      The epoch timestamp in seconds at which this suppression expires.
    </p>")
    expirationDate: option<timestamp_>,
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateAuditSuppressionCommand"
  let make = (
    ~clientRequestToken,
    ~resourceIdentifier,
    ~checkName,
    ~description=?,
    ~suppressIndefinitely=?,
    ~expirationDate=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      description: description,
      suppressIndefinitely: suppressIndefinitely,
      expirationDate: expirationDate,
      resourceIdentifier: resourceIdentifier,
      checkName: checkName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The expected version of the thing group. If this does not match the version of the
			thing group being updated, the update will fail.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The thing group properties.</p>") thingGroupProperties: thingGroupProperties,
    @ocaml.doc("<p>The thing group to update.</p>") thingGroupName: thingGroupName,
  }
  type response = {
    @ocaml.doc("<p>The version of the updated thing group.</p>") version: option<version>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateThingGroupCommand"
  let make = (~thingGroupProperties, ~thingGroupName, ~expectedVersion=?, ()) =>
    new({
      expectedVersion: expectedVersion,
      thingGroupProperties: thingGroupProperties,
      thingGroupName: thingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStream = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An IAM role that allows the IoT service principal assumes to access your S3 files.</p>"
    )
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The files associated with the stream.</p>") files: option<streamFiles>,
    @ocaml.doc("<p>The description of the stream.</p>") description: option<streamDescription>,
    @ocaml.doc("<p>The stream ID.</p>") streamId: streamId,
  }
  type response = {
    @ocaml.doc("<p>The stream version.</p>") streamVersion: option<streamVersion>,
    @ocaml.doc("<p>A description of the stream.</p>") description: option<streamDescription>,
    @ocaml.doc("<p>The stream ARN.</p>") streamArn: option<streamArn>,
    @ocaml.doc("<p>The stream ID.</p>") streamId: option<streamId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateStreamCommand"
  let make = (~streamId, ~roleArn=?, ~files=?, ~description=?, ()) =>
    new({roleArn: roleArn, files: files, description: description, streamId: streamId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMitigationAction = {
  type t
  type request = {
    @ocaml.doc("<p>Defines the type of action and the parameters for that action.</p>")
    actionParams: option<mitigationActionParams>,
    @ocaml.doc("<p>The ARN of the IAM role that is used to apply the mitigation action.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The friendly name for the mitigation action. You cannot change the name by using
        <code>UpdateMitigationAction</code>. Instead, you must delete and
      recreate the
      mitigation action with the new name.</p>")
    actionName: mitigationActionName,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the mitigation action.</p>")
    actionId: option<mitigationActionId>,
    @ocaml.doc("<p>The ARN for the new mitigation action.</p>")
    actionArn: option<mitigationActionArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateMitigationActionCommand"
  let make = (~actionName, ~actionParams=?, ~roleArn=?, ()) =>
    new({actionParams: actionParams, roleArn: roleArn, actionName: actionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJob = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
    namespaceId: option<namespaceId>,
    @ocaml.doc("<p>Specifies the amount of time each device has to finish its execution of the job. The timer is started when the job execution status is set to <code>IN_PROGRESS</code>. 
            If the job execution status is not set to another terminal state before the time expires, it will be automatically set to <code>TIMED_OUT</code>. </p>")
    timeoutConfig: option<timeoutConfig>,
    @ocaml.doc("<p>Allows you to create criteria to abort a job.</p>")
    abortConfig: option<abortConfig>,
    @ocaml.doc("<p>Allows you to create a staged rollout of the job.</p>")
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    @ocaml.doc("<p>Configuration information for pre-signed S3 URLs.</p>")
    presignedUrlConfig: option<presignedUrlConfig>,
    @ocaml.doc("<p>A short text description of the job.</p>") description: option<jobDescription>,
    @ocaml.doc("<p>The ID of the job to be updated.</p>") jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateJobCommand"
  let make = (
    ~jobId,
    ~namespaceId=?,
    ~timeoutConfig=?,
    ~abortConfig=?,
    ~jobExecutionsRolloutConfig=?,
    ~presignedUrlConfig=?,
    ~description=?,
    (),
  ) =>
    new({
      namespaceId: namespaceId,
      timeoutConfig: timeoutConfig,
      abortConfig: abortConfig,
      jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
      presignedUrlConfig: presignedUrlConfig,
      description: description,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateIndexingConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Thing group indexing configuration.</p>")
    thingGroupIndexingConfiguration: option<thingGroupIndexingConfiguration>,
    @ocaml.doc("<p>Thing indexing configuration.</p>")
    thingIndexingConfiguration: option<thingIndexingConfiguration>,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateIndexingConfigurationCommand"
  let make = (~thingGroupIndexingConfiguration=?, ~thingIndexingConfiguration=?, ()) =>
    new({
      thingGroupIndexingConfiguration: thingGroupIndexingConfiguration,
      thingIndexingConfiguration: thingIndexingConfiguration,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDynamicThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>The dynamic thing group query version to update.</p>
		       <note>
			         <p>Currently one query version is supported: \"2017-09-30\". If not specified, the
				query version defaults to this value.</p>
		       </note>")
    queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The dynamic thing group search query string to update.</p>")
    queryString: option<queryString>,
    @ocaml.doc("<p>The dynamic thing group index to update.</p>
		       <note>
			         <p>Currently one index is supported: 'AWS_Things'.</p>
		       </note>")
    indexName: option<indexName>,
    @ocaml.doc("<p>The expected version of the dynamic thing group to update.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>The dynamic thing group properties to update.</p>")
    thingGroupProperties: thingGroupProperties,
    @ocaml.doc("<p>The name of the dynamic thing group to update.</p>")
    thingGroupName: thingGroupName,
  }
  type response = {@ocaml.doc("<p>The dynamic thing group version.</p>") version: option<version>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateDynamicThingGroupCommand"
  let make = (
    ~thingGroupProperties,
    ~thingGroupName,
    ~queryVersion=?,
    ~queryString=?,
    ~indexName=?,
    ~expectedVersion=?,
    (),
  ) =>
    new({
      queryVersion: queryVersion,
      queryString: queryString,
      indexName: indexName,
      expectedVersion: expectedVersion,
      thingGroupProperties: thingGroupProperties,
      thingGroupName: thingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAuditMitigationActionsTask = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Each audit mitigation task must have a unique client request token. If you try to start a new task with the same token as a task that already exists, an exception occurs. If you omit this value, a unique client request token is generated automatically.</p>"
    )
    clientRequestToken: clientRequestToken,
    @ocaml.doc(
      "<p>For an audit check, specifies which mitigation actions to apply. Those actions must be defined in your AWS account.</p>"
    )
    auditCheckToActionsMapping: auditCheckToActionsMapping,
    @ocaml.doc("<p>Specifies the audit findings to which the mitigation actions are applied. You can apply
      them to a type of audit check, to all findings from an audit, or to a
      specific set of
      findings.</p>")
    target: auditMitigationActionsTaskTarget,
    @ocaml.doc(
      "<p>A unique identifier for the task. You can use this identifier to check the status of the task or to cancel it.</p>"
    )
    taskId: mitigationActionsTaskId,
  }
  type response = {
    @ocaml.doc(
      "<p>The unique identifier for the audit mitigation task. This matches the <code>taskId</code> that you specified in the request.</p>"
    )
    taskId: option<mitigationActionsTaskId>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StartAuditMitigationActionsTaskCommand"
  let make = (~clientRequestToken, ~auditCheckToActionsMapping, ~target, ~taskId, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      auditCheckToActionsMapping: auditCheckToActionsMapping,
      target: target,
      taskId: taskId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchIndex = {
  type t
  type request = {
    @ocaml.doc("<p>The query version.</p>") queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<queryMaxResults>,
    @ocaml.doc("<p>The token used to get the next set of results, or <code>null</code> if there are no additional
      results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The search query string.</p>") queryString: queryString,
    @ocaml.doc("<p>The search index name.</p>") indexName: option<indexName>,
  }
  type response = {
    @ocaml.doc("<p>The thing groups that match the search query.</p>")
    thingGroups: option<thingGroupDocumentList>,
    @ocaml.doc("<p>The things that match the search query.</p>") things: option<thingDocumentList>,
    @ocaml.doc("<p>The token used to get the next set of results, or <code>null</code> if there are no additional
      results.</p>")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "SearchIndexCommand"
  let make = (~queryString, ~queryVersion=?, ~maxResults=?, ~nextToken=?, ~indexName=?, ()) =>
    new({
      queryVersion: queryVersion,
      maxResults: maxResults,
      nextToken: nextToken,
      queryString: queryString,
      indexName: indexName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListV2LoggingLevels = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<skyfallMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
         value from a previous response; otherwise <b>null</b> to receive
         the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of resource for which you are configuring logging. Must be
            <code>THING_Group</code>.</p>")
    targetType: option<logTargetType>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The logging configuration for a target.</p>")
    logTargetConfigurations: option<logTargetConfigurations>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListV2LoggingLevelsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~targetType=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, targetType: targetType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThings = {
  type t
  @ocaml.doc("<p>The input for the ListThings operation.</p>")
  type request = {
    @ocaml.doc("<p>When <code>true</code>, the action returns the thing resources with attribute values
                     that start with the <code>attributeValue</code> provided.</p>
            <p>When <code>false</code>, or not present, the action returns only the thing
			resources with attribute values that match the entire <code>attributeValue</code>
			provided. </p>")
    usePrefixAttributeValue: option<usePrefixAttributeValue>,
    @ocaml.doc("<p>The name of the thing type used to search for things.</p>")
    thingTypeName: option<thingTypeName>,
    @ocaml.doc("<p>The attribute value used to search for things.</p>")
    attributeValue: option<attributeValue>,
    @ocaml.doc("<p>The attribute name used to search for things.</p>")
    attributeName: option<attributeName>,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>The output from the ListThings operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results. Will not be returned if operation has returned all results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The things.</p>") things: option<thingAttributeList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingsCommand"
  let make = (
    ~usePrefixAttributeValue=?,
    ~thingTypeName=?,
    ~attributeValue=?,
    ~attributeName=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      usePrefixAttributeValue: usePrefixAttributeValue,
      thingTypeName: thingTypeName,
      attributeValue: attributeValue,
      attributeName: attributeName,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityProfilesForTarget = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of the target (thing group) whose attached security profiles you want to get.</p>"
    )
    securityProfileTargetArn: securityProfileTargetArn,
    @ocaml.doc("<p>If true, return child groups too.</p>") recursive: option<recursive>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
        additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of security profiles and their associated targets.</p>")
    securityProfileTargetMappings: option<securityProfileTargetMappings>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListSecurityProfilesForTargetCommand"
  let make = (~securityProfileTargetArn, ~recursive=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      securityProfileTargetArn: securityProfileTargetArn,
      recursive: recursive,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobExecutionsForThing = {
  type t
  type request = {
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<laserMaxResults>,
    @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
    namespaceId: option<namespaceId>,
    @ocaml.doc(
      "<p>An optional filter that lets you search for jobs that have the specified status.</p>"
    )
    status: option<jobExecutionStatus>,
    @ocaml.doc("<p>The thing name.</p>") thingName: thingName,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results, or <b>null</b> if there are no
            additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of job execution summaries.</p>")
    executionSummaries: option<jobExecutionSummaryForThingList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListJobExecutionsForThingCommand"
  let make = (~thingName, ~nextToken=?, ~maxResults=?, ~namespaceId=?, ~status=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      namespaceId: namespaceId,
      status: status,
      thingName: thingName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobExecutionsForJob = {
  type t
  type request = {
    @ocaml.doc("<p>The token to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to be returned per request.</p>")
    maxResults: option<laserMaxResults>,
    @ocaml.doc("<p>The status of the job.</p>") status: option<jobExecutionStatus>,
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next set of results, or <b>null</b> if there are no
            additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of job execution summaries.</p>")
    executionSummaries: option<jobExecutionSummaryForJobList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListJobExecutionsForJobCommand"
  let make = (~jobId, ~nextToken=?, ~maxResults=?, ~status=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, status: status, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTopicRuleDestination = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the topic rule destination.</p>") arn: awsArn}
  type response = {
    @ocaml.doc("<p>The topic rule destination.</p>")
    topicRuleDestination: option<topicRuleDestination>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetTopicRuleDestinationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIndexingConfiguration = {
  type t

  type response = {
    @ocaml.doc("<p>The index configuration.</p>")
    thingGroupIndexingConfiguration: option<thingGroupIndexingConfiguration>,
    @ocaml.doc("<p>Thing indexing configuration.</p>")
    thingIndexingConfiguration: option<thingIndexingConfiguration>,
  }
  @module("@aws-sdk/client-iot") @new external new: unit => t = "GetIndexingConfigurationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThingGroup = {
  type t
  type request = {@ocaml.doc("<p>The name of the thing group.</p>") thingGroupName: thingGroupName}
  type response = {
    @ocaml.doc("<p>The dynamic thing group status.</p>") status: option<dynamicGroupStatus>,
    @ocaml.doc("<p>The dynamic thing group query version.</p>") queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The dynamic thing group search query string.</p>")
    queryString: option<queryString>,
    @ocaml.doc("<p>The dynamic thing group index name.</p>") indexName: option<indexName>,
    @ocaml.doc("<p>Thing group metadata.</p>") thingGroupMetadata: option<thingGroupMetadata>,
    @ocaml.doc("<p>The thing group properties.</p>")
    thingGroupProperties: option<thingGroupProperties>,
    @ocaml.doc("<p>The version of the thing group.</p>") version: option<version>,
    @ocaml.doc("<p>The thing group ARN.</p>") thingGroupArn: option<thingGroupArn>,
    @ocaml.doc("<p>The thing group ID.</p>") thingGroupId: option<thingGroupId>,
    @ocaml.doc("<p>The name of the thing group.</p>") thingGroupName: option<thingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeThingGroupCommand"
  let make = (~thingGroupName, ()) => new({thingGroupName: thingGroupName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMitigationAction = {
  type t
  type request = {
    @ocaml.doc("<p>The friendly name that uniquely identifies the mitigation action.</p>")
    actionName: mitigationActionName,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the mitigation action was last changed.</p>")
    lastModifiedDate: option<timestamp_>,
    @ocaml.doc("<p>The date and time when the mitigation action was added to your AWS account.</p>")
    creationDate: option<timestamp_>,
    @ocaml.doc(
      "<p>Parameters that control how the mitigation action is applied, specific to the type of mitigation action.</p>"
    )
    actionParams: option<mitigationActionParams>,
    @ocaml.doc("<p>The ARN of the IAM role used to apply this action.</p>")
    roleArn: option<roleArn>,
    @ocaml.doc("<p>A unique identifier for this action.</p>") actionId: option<mitigationActionId>,
    @ocaml.doc("<p>The ARN that identifies this migration action.</p>")
    actionArn: option<mitigationActionArn>,
    @ocaml.doc("<p>The type of mitigation action.</p>") actionType: option<mitigationActionType>,
    @ocaml.doc("<p>The friendly name that uniquely identifies the mitigation action.</p>")
    actionName: option<mitigationActionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeMitigationActionCommand"
  let make = (~actionName, ()) => new({actionName: actionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the job template.</p>") jobTemplateId: jobTemplateId,
  }
  type response = {
    timeoutConfig: option<timeoutConfig>,
    abortConfig: option<abortConfig>,
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    presignedUrlConfig: option<presignedUrlConfig>,
    @ocaml.doc("<p>The time, in seconds since the epoch, when the job template was created.</p>")
    createdAt: option<dateType>,
    @ocaml.doc("<p>The job document.</p>") document: option<jobDocument>,
    @ocaml.doc("<p>An S3 link to the job document.</p>") documentSource: option<jobDocumentSource>,
    @ocaml.doc("<p>A description of the job template.</p>") description: option<jobDescription>,
    @ocaml.doc("<p>The unique identifier of the job template.</p>")
    jobTemplateId: option<jobTemplateId>,
    @ocaml.doc("<p>The ARN of the job template.</p>") jobTemplateArn: option<jobTemplateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeJobTemplateCommand"
  let make = (~jobTemplateId, ()) => new({jobTemplateId: jobTemplateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobExecution = {
  type t
  type request = {
    @ocaml.doc("<p>A string (consisting of the digits \"0\" through \"9\" which is used to specify a particular job execution
            on a particular device.</p>")
    executionNumber: option<executionNumber>,
    @ocaml.doc("<p>The name of the thing on which the job execution is running.</p>")
    thingName: thingName,
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Information about the job execution.</p>") execution: option<jobExecution>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeJobExecutionCommand"
  let make = (~thingName, ~jobId, ~executionNumber=?, ()) =>
    new({executionNumber: executionNumber, thingName: thingName, jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTopicRuleDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The topic rule destination configuration.</p>")
    destinationConfiguration: topicRuleDestinationConfiguration,
  }
  type response = {
    @ocaml.doc("<p>The topic rule destination.</p>")
    topicRuleDestination: option<topicRuleDestination>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateTopicRuleDestinationCommand"
  let make = (~destinationConfiguration, ()) =>
    new({destinationConfiguration: destinationConfiguration})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the thing group.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The thing group properties.</p>")
    thingGroupProperties: option<thingGroupProperties>,
    @ocaml.doc("<p>The name of the parent thing group.</p>")
    parentGroupName: option<thingGroupName>,
    @ocaml.doc("<p>The thing group name to create.</p>") thingGroupName: thingGroupName,
  }
  type response = {
    @ocaml.doc("<p>The thing group ID.</p>") thingGroupId: option<thingGroupId>,
    @ocaml.doc("<p>The thing group ARN.</p>") thingGroupArn: option<thingGroupArn>,
    @ocaml.doc("<p>The thing group name.</p>") thingGroupName: option<thingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateThingGroupCommand"
  let make = (~thingGroupName, ~tags=?, ~thingGroupProperties=?, ~parentGroupName=?, ()) =>
    new({
      tags: tags,
      thingGroupProperties: thingGroupProperties,
      parentGroupName: parentGroupName,
      thingGroupName: thingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStream = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage streams.</p>") tags: option<tagList_>,
    @ocaml.doc(
      "<p>An IAM role that allows the IoT service principal assumes to access your S3 files.</p>"
    )
    roleArn: roleArn,
    @ocaml.doc("<p>The files to stream.</p>") files: streamFiles,
    @ocaml.doc("<p>A description of the stream.</p>") description: option<streamDescription>,
    @ocaml.doc("<p>The stream ID.</p>") streamId: streamId,
  }
  type response = {
    @ocaml.doc("<p>The version of the stream.</p>") streamVersion: option<streamVersion>,
    @ocaml.doc("<p>A description of the stream.</p>") description: option<streamDescription>,
    @ocaml.doc("<p>The stream ARN.</p>") streamArn: option<streamArn>,
    @ocaml.doc("<p>The stream ID.</p>") streamId: option<streamId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateStreamCommand"
  let make = (~roleArn, ~files, ~streamId, ~tags=?, ~description=?, ()) =>
    new({tags: tags, roleArn: roleArn, files: files, description: description, streamId: streamId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMitigationAction = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that can be used to manage the mitigation action.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Defines the type of action and the parameters for that action.</p>")
    actionParams: mitigationActionParams,
    @ocaml.doc("<p>The ARN of the IAM role that is used to apply the mitigation action.</p>")
    roleArn: roleArn,
    @ocaml.doc(
      "<p>A friendly name for the action. Choose a friendly name that accurately describes the action (for example, <code>EnableLoggingAction</code>).</p>"
    )
    actionName: mitigationActionName,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the new mitigation action.</p>")
    actionId: option<mitigationActionId>,
    @ocaml.doc("<p>The ARN for the new mitigation action.</p>")
    actionArn: option<mitigationActionArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateMitigationActionCommand"
  let make = (~actionParams, ~roleArn, ~actionName, ~tags=?, ()) =>
    new({tags: tags, actionParams: actionParams, roleArn: roleArn, actionName: actionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJobTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that can be used to manage the job template.</p>")
    tags: option<tagList_>,
    timeoutConfig: option<timeoutConfig>,
    abortConfig: option<abortConfig>,
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    presignedUrlConfig: option<presignedUrlConfig>,
    @ocaml.doc("<p>A description of the job document.</p>") description: jobDescription,
    @ocaml.doc(
      "<p>The job document. Required if you don't specify a value for <code>documentSource</code>.</p>"
    )
    document: option<jobDocument>,
    @ocaml.doc("<p>An S3 link to the job document to use in the template. Required if you don't specify a value for <code>document</code>.</p>
        <note>
            <p>If the job document resides in an S3 bucket, you must use a placeholder link when specifying the document.</p>
            <p>The placeholder link is of the following form:</p>
            <p>
               <code>${aws:iot:s3-presigned-url:https://s3.amazonaws.com/<i>bucket</i>/<i>key</i>}</code>
            </p>
            <p>where <i>bucket</i> is your bucket name and <i>key</i> is the object in the bucket to which you are linking.</p>
        </note>")
    documentSource: option<jobDocumentSource>,
    @ocaml.doc("<p>The ARN of the job to use as the basis for the job template.</p>")
    jobArn: option<jobArn>,
    @ocaml.doc("<p>A unique identifier for the job template. We recommend using a UUID. Alpha-numeric 
        characters, \"-\", and \"_\" are valid for use here.</p>")
    jobTemplateId: jobTemplateId,
  }
  type response = {
    @ocaml.doc("<p>The unique identifier of the job template.</p>")
    jobTemplateId: option<jobTemplateId>,
    @ocaml.doc("<p>The ARN of the job template.</p>") jobTemplateArn: option<jobTemplateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateJobTemplateCommand"
  let make = (
    ~description,
    ~jobTemplateId,
    ~tags=?,
    ~timeoutConfig=?,
    ~abortConfig=?,
    ~jobExecutionsRolloutConfig=?,
    ~presignedUrlConfig=?,
    ~document=?,
    ~documentSource=?,
    ~jobArn=?,
    (),
  ) =>
    new({
      tags: tags,
      timeoutConfig: timeoutConfig,
      abortConfig: abortConfig,
      jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
      presignedUrlConfig: presignedUrlConfig,
      description: description,
      document: document,
      documentSource: documentSource,
      jobArn: jobArn,
      jobTemplateId: jobTemplateId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJob = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the job template used to create the job.</p>")
    jobTemplateArn: option<jobTemplateArn>,
    @ocaml.doc("<p>The namespace used to indicate that a job is a customer-managed job.</p>
        <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that 
            contain the value in the following format.</p>
        <p>
            <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
         </p>
        <note>
            <p>The <code>namespaceId</code> feature is in public preview.</p>
         </note>")
    namespaceId: option<namespaceId>,
    @ocaml.doc("<p>Metadata which can be used to manage the job.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>Specifies the amount of time each device has to finish its execution of the job. The timer 
           is started when the job execution status is set to <code>IN_PROGRESS</code>. If the job 
           execution status is not set to another terminal state before the time expires, it will be 
           automatically set to <code>TIMED_OUT</code>.</p>")
    timeoutConfig: option<timeoutConfig>,
    @ocaml.doc("<p>Allows you to create criteria to abort a job.</p>")
    abortConfig: option<abortConfig>,
    @ocaml.doc("<p>Allows you to create a staged rollout of the job.</p>")
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    @ocaml.doc("<p>Specifies whether the job will continue to run (CONTINUOUS), or will be complete after all those things
            specified as targets have completed the job (SNAPSHOT). If continuous, the job may also be run on a thing
            when a change is detected in a target. For example, a job will run on a thing when the thing is added to a
            target group, even after the job was completed by all things originally in the group.</p>")
    targetSelection: option<targetSelection>,
    @ocaml.doc("<p>Configuration information for pre-signed S3 URLs.</p>")
    presignedUrlConfig: option<presignedUrlConfig>,
    @ocaml.doc("<p>A short text description of the job.</p>") description: option<jobDescription>,
    @ocaml.doc(
      "<p>The job document. Required if you don't specify a value for <code>documentSource</code>.</p>"
    )
    document: option<jobDocument>,
    @ocaml.doc("<p>An S3 link to the job document. Required if you don't specify a value for <code>document</code>.</p>
        <note>
            <p>If the job document resides in an S3 bucket, you must use a placeholder link when specifying the document.</p>
            <p>The placeholder link is of the following form:</p>
            <p>
               <code>${aws:iot:s3-presigned-url:https://s3.amazonaws.com/<i>bucket</i>/<i>key</i>}</code>
            </p>
            <p>where <i>bucket</i> is your bucket name and <i>key</i> is the object in the bucket to which you are linking.</p>
        </note>")
    documentSource: option<jobDocumentSource>,
    @ocaml.doc("<p>A list of things and thing groups to which the job should be sent.</p>")
    targets: jobTargets,
    @ocaml.doc("<p>A job identifier which must be unique for your AWS account. We recommend using a UUID. Alpha-numeric
            characters, \"-\" and \"_\" are valid for use here.</p>")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>The job description.</p>") description: option<jobDescription>,
    @ocaml.doc("<p>The unique identifier you assigned to this job.</p>") jobId: option<jobId>,
    @ocaml.doc("<p>The job ARN.</p>") jobArn: option<jobArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateJobCommand"
  let make = (
    ~targets,
    ~jobId,
    ~jobTemplateArn=?,
    ~namespaceId=?,
    ~tags=?,
    ~timeoutConfig=?,
    ~abortConfig=?,
    ~jobExecutionsRolloutConfig=?,
    ~targetSelection=?,
    ~presignedUrlConfig=?,
    ~description=?,
    ~document=?,
    ~documentSource=?,
    (),
  ) =>
    new({
      jobTemplateArn: jobTemplateArn,
      namespaceId: namespaceId,
      tags: tags,
      timeoutConfig: timeoutConfig,
      abortConfig: abortConfig,
      jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
      targetSelection: targetSelection,
      presignedUrlConfig: presignedUrlConfig,
      description: description,
      document: document,
      documentSource: documentSource,
      targets: targets,
      jobId: jobId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDynamicThingGroup = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the dynamic thing group.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The dynamic thing group query version.</p>
		       <note>
			         <p>Currently one query version is supported: \"2017-09-30\". If not specified, the
				query version defaults to this value.</p>
		       </note>")
    queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The dynamic thing group search query string.</p>
		       <p>See <a href=\"https://docs.aws.amazon.com/iot/latest/developerguide/query-syntax.html\">Query Syntax</a> for information about query string syntax.</p>")
    queryString: queryString,
    @ocaml.doc("<p>The dynamic thing group index name.</p>
		       <note>
			         <p>Currently one index is supported: \"AWS_Things\".</p>
		       </note>")
    indexName: option<indexName>,
    @ocaml.doc("<p>The dynamic thing group properties.</p>")
    thingGroupProperties: option<thingGroupProperties>,
    @ocaml.doc("<p>The dynamic thing group name to create.</p>") thingGroupName: thingGroupName,
  }
  type response = {
    @ocaml.doc("<p>The dynamic thing group query version.</p>") queryVersion: option<queryVersion>,
    @ocaml.doc("<p>The dynamic thing group search query string.</p>")
    queryString: option<queryString>,
    @ocaml.doc("<p>The dynamic thing group index name.</p>") indexName: option<indexName>,
    @ocaml.doc("<p>The dynamic thing group ID.</p>") thingGroupId: option<thingGroupId>,
    @ocaml.doc("<p>The dynamic thing group ARN.</p>") thingGroupArn: option<thingGroupArn>,
    @ocaml.doc("<p>The dynamic thing group name.</p>") thingGroupName: option<thingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateDynamicThingGroupCommand"
  let make = (
    ~queryString,
    ~thingGroupName,
    ~tags=?,
    ~queryVersion=?,
    ~indexName=?,
    ~thingGroupProperties=?,
    (),
  ) =>
    new({
      tags: tags,
      queryVersion: queryVersion,
      queryString: queryString,
      indexName: indexName,
      thingGroupProperties: thingGroupProperties,
      thingGroupName: thingGroupName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTopicRuleDestinations = {
  type t
  type request = {
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
         value from a previous response; otherwise <b>null</b> to receive
         the first set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<topicRuleDestinationMaxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next set of results, or <b>null</b> if there are no additional results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about a topic rule destination.</p>")
    destinationSummaries: option<topicRuleDestinationSummaries>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListTopicRuleDestinationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingTypes = {
  type t
  @ocaml.doc("<p>The input for the ListThingTypes operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the thing type.</p>") thingTypeName: option<thingTypeName>,
    @ocaml.doc("<p>The maximum number of results to return in this operation.</p>")
    maxResults: option<registryMaxResults>,
    @ocaml.doc("<p>To retrieve the next set of results, the <code>nextToken</code>
			value from a previous response; otherwise <b>null</b> to receive
			the first set of results.</p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>The output for the ListThingTypes operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results. Will not be returned if operation has returned all results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The thing types.</p>") thingTypes: option<thingTypeList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingTypesCommand"
  let make = (~thingTypeName=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({thingTypeName: thingTypeName, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditSuppressions = {
  type t
  type request = {
    @ocaml.doc("<p>
      The maximum number of results to return at one time. The default is 25.
    </p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
      The token for the next set of results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      Determines whether suppressions are listed in ascending order by expiration date or not. If parameter isn't provided, <code>ascendingOrder=true</code>.
    </p>")
    ascendingOrder: option<ascendingOrder>,
    resourceIdentifier: option<resourceIdentifier>,
    checkName: option<auditCheckName>,
  }
  type response = {
    @ocaml.doc("<p>
      A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      List of audit suppressions.
    </p>")
    suppressions: option<auditSuppressionList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuditSuppressionsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~ascendingOrder=?,
    ~resourceIdentifier=?,
    ~checkName=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      ascendingOrder: ascendingOrder,
      resourceIdentifier: resourceIdentifier,
      checkName: checkName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStream = {
  type t
  type request = {@ocaml.doc("<p>The stream ID.</p>") streamId: streamId}
  type response = {
    @ocaml.doc("<p>Information about the stream.</p>") streamInfo: option<streamInfo>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeStreamCommand"
  let make = (~streamId, ()) => new({streamId: streamId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJob = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier you assigned to this job when it was created.</p>")
    jobId: jobId,
  }
  type response = {
    @ocaml.doc("<p>Information about the job.</p>") job: option<job>,
    @ocaml.doc("<p>An S3 link to the job document.</p>") documentSource: option<jobDocumentSource>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeJobCommand"
  let make = (~jobId, ()) => new({jobId: jobId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ValidateSecurityProfileBehaviors = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>"
    )
    behaviors: behaviors,
  }
  type response = {
    @ocaml.doc("<p>The list of any errors found in the behaviors.</p>")
    validationErrors: option<validationErrors>,
    @ocaml.doc("<p>True if the behaviors were valid.</p>") valid: option<valid>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ValidateSecurityProfileBehaviorsCommand"
  let make = (~behaviors, ()) => new({behaviors: behaviors})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSecurityProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The expected version of the security profile. A new version is generated whenever
        the security profile is updated. If you specify a value that is different from the actual
        version, a <code>VersionConflictException</code> is thrown.</p>")
    expectedVersion: option<optionalVersion>,
    @ocaml.doc("<p>If true, delete all <code>additionalMetricsToRetain</code> defined for this 
        security profile. If any <code>additionalMetricsToRetain</code> are defined in the current 
        invocation, an exception occurs.</p>")
    deleteAdditionalMetricsToRetain: option<deleteAdditionalMetricsToRetain>,
    @ocaml.doc("<p>If true, delete all <code>alertTargets</code> defined for this security profile. 
        If any <code>alertTargets</code> are defined in the current invocation, an exception occurs.</p>")
    deleteAlertTargets: option<deleteAlertTargets>,
    @ocaml.doc("<p>If true, delete all <code>behaviors</code> defined for this security profile. 
        If any <code>behaviors</code> are defined in the current invocation, an exception occurs.</p>")
    deleteBehaviors: option<deleteBehaviors>,
    @ocaml.doc(
      "<p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>"
    )
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    @ocaml.doc("<p>
            <i>Please use
          <a>UpdateSecurityProfileRequest$additionalMetricsToRetainV2</a>
        instead.</i>
         </p>
         <p>A list of metrics
     whose data is retained (stored). By default, data is retained for any metric
      used in the profile's <code>behaviors</code>, but
      it is
      also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>")
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    @ocaml.doc("<p>Where the alerts are sent. (Alerts are always sent to the console.)</p>")
    alertTargets: option<alertTargets>,
    @ocaml.doc(
      "<p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>"
    )
    behaviors: option<behaviors>,
    @ocaml.doc("<p>A description of the security profile.</p>")
    securityProfileDescription: option<securityProfileDescription>,
    @ocaml.doc("<p>The name of the security profile you want to update.</p>")
    securityProfileName: securityProfileName,
  }
  type response = {
    @ocaml.doc("<p>The time the security profile was last modified.</p>")
    lastModifiedDate: option<timestamp_>,
    @ocaml.doc("<p>The time the security profile was created.</p>")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>The updated version of the security profile.</p>") version: option<version>,
    @ocaml.doc(
      "<p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's behaviors, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>"
    )
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    @ocaml.doc("<p>
            <i>Please use
          <a>UpdateSecurityProfileResponse$additionalMetricsToRetainV2</a>
        instead.</i>
         </p>
         <p>A list of metrics
      whose data is retained (stored). By default, data is retained for any metric
      used in the security profile's <code>behaviors</code>, but
      it is
      also retained for any metric specified here.</p>")
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    @ocaml.doc("<p>Where the alerts are sent. (Alerts are always sent to the console.)</p>")
    alertTargets: option<alertTargets>,
    @ocaml.doc(
      "<p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>"
    )
    behaviors: option<behaviors>,
    @ocaml.doc("<p>The description of the security profile.</p>")
    securityProfileDescription: option<securityProfileDescription>,
    @ocaml.doc("<p>The ARN of the security profile that was updated.</p>")
    securityProfileArn: option<securityProfileArn>,
    @ocaml.doc("<p>The name of the security profile that was updated.</p>")
    securityProfileName: option<securityProfileName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateSecurityProfileCommand"
  let make = (
    ~securityProfileName,
    ~expectedVersion=?,
    ~deleteAdditionalMetricsToRetain=?,
    ~deleteAlertTargets=?,
    ~deleteBehaviors=?,
    ~additionalMetricsToRetainV2=?,
    ~additionalMetricsToRetain=?,
    ~alertTargets=?,
    ~behaviors=?,
    ~securityProfileDescription=?,
    (),
  ) =>
    new({
      expectedVersion: expectedVersion,
      deleteAdditionalMetricsToRetain: deleteAdditionalMetricsToRetain,
      deleteAlertTargets: deleteAlertTargets,
      deleteBehaviors: deleteBehaviors,
      additionalMetricsToRetainV2: additionalMetricsToRetainV2,
      additionalMetricsToRetain: additionalMetricsToRetain,
      alertTargets: alertTargets,
      behaviors: behaviors,
      securityProfileDescription: securityProfileDescription,
      securityProfileName: securityProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the security profile
      whose information you want to get.</p>")
    securityProfileName: securityProfileName,
  }
  type response = {
    @ocaml.doc("<p>The time the security profile was last modified.</p>")
    lastModifiedDate: option<timestamp_>,
    @ocaml.doc("<p>The time the security profile was created.</p>")
    creationDate: option<timestamp_>,
    @ocaml.doc("<p>The version of the security profile. A new version is generated whenever the
        security profile is updated.</p>")
    version: option<version>,
    @ocaml.doc("<p>A list of metrics whose data is retained (stored). By default, data is retained for any
      metric used in the profile's behaviors, but
      it is
      also retained for any metric specified here.</p>")
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    @ocaml.doc("<p>
            <i>Please use
          <a>DescribeSecurityProfileResponse$additionalMetricsToRetainV2</a>
        instead.</i>
         </p>
         <p>A list of metrics
      whose data is retained (stored). By default, data is retained for any metric
      used in the profile's <code>behaviors</code>, but
      it is
      also retained for any metric specified here.</p>")
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    @ocaml.doc("<p>Where the alerts are sent. (Alerts are always sent to the console.)</p>")
    alertTargets: option<alertTargets>,
    @ocaml.doc(
      "<p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>"
    )
    behaviors: option<behaviors>,
    @ocaml.doc("<p>A description of the security profile (associated with the security profile
        when it was created or updated).</p>")
    securityProfileDescription: option<securityProfileDescription>,
    @ocaml.doc("<p>The ARN of the security profile.</p>")
    securityProfileArn: option<securityProfileArn>,
    @ocaml.doc("<p>The name of the security profile.</p>")
    securityProfileName: option<securityProfileName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeSecurityProfileCommand"
  let make = (~securityProfileName, ()) => new({securityProfileName: securityProfileName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditMitigationActionsTask = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the audit mitigation task.</p>")
    taskId: mitigationActionsTaskId,
  }
  type response = {
    @ocaml.doc(
      "<p>Specifies the mitigation actions and their parameters that are applied as part of this task.</p>"
    )
    actionsDefinition: option<mitigationActionList>,
    @ocaml.doc(
      "<p>Specifies the mitigation actions that should be applied to specific audit checks.</p>"
    )
    auditCheckToActionsMapping: option<auditCheckToActionsMapping>,
    @ocaml.doc(
      "<p>Identifies the findings to which the mitigation actions are applied. This can be by audit checks, by audit task, or a set of findings.</p>"
    )
    target: option<auditMitigationActionsTaskTarget>,
    @ocaml.doc(
      "<p>Aggregate counts of the results when the mitigation tasks were applied to the findings for this audit mitigation actions task.</p>"
    )
    taskStatistics: option<auditMitigationActionsTaskStatistics>,
    @ocaml.doc("<p>The date and time when the task was completed or canceled.</p>")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time when the task was started.</p>") startTime: option<timestamp_>,
    @ocaml.doc("<p>The current status of the task.</p>")
    taskStatus: option<auditMitigationActionsTaskStatus>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeAuditMitigationActionsTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditFinding = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A unique identifier for a single audit finding. You can use this identifier to apply mitigation actions to the finding.</p>"
    )
    findingId: findingId,
  }
  type response = {finding: option<auditFinding>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuditFindingCommand"
  let make = (~findingId, ()) => new({findingId: findingId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSecurityProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that can be used to manage the security profile.</p>")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>A list of metrics whose data is retained (stored). By default, data is retained for any metric used in the profile's <code>behaviors</code>, but it is also retained for any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>"
    )
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    @ocaml.doc("<p>
            <i>Please use <a>CreateSecurityProfileRequest$additionalMetricsToRetainV2</a> instead.</i>
         </p>
         <p>A list of metrics whose data is retained (stored). By default, data is retained 
        for any metric used in the profile's <code>behaviors</code>, but it is also retained for 
        any metric specified here. Can be used with custom metrics; cannot be used with dimensions.</p>")
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    @ocaml.doc("<p>Specifies the destinations to which alerts are sent. (Alerts are always sent to the 
        console.) Alerts are generated when a device (thing) violates a behavior.</p>")
    alertTargets: option<alertTargets>,
    @ocaml.doc(
      "<p>Specifies the behaviors that, when violated by a device (thing), cause an alert.</p>"
    )
    behaviors: option<behaviors>,
    @ocaml.doc("<p>A description of the security profile.</p>")
    securityProfileDescription: option<securityProfileDescription>,
    @ocaml.doc("<p>The name you are giving to the security profile.</p>")
    securityProfileName: securityProfileName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the security profile.</p>")
    securityProfileArn: option<securityProfileArn>,
    @ocaml.doc("<p>The name you gave to the security profile.</p>")
    securityProfileName: option<securityProfileName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateSecurityProfileCommand"
  let make = (
    ~securityProfileName,
    ~tags=?,
    ~additionalMetricsToRetainV2=?,
    ~additionalMetricsToRetain=?,
    ~alertTargets=?,
    ~behaviors=?,
    ~securityProfileDescription=?,
    (),
  ) =>
    new({
      tags: tags,
      additionalMetricsToRetainV2: additionalMetricsToRetainV2,
      additionalMetricsToRetain: additionalMetricsToRetain,
      alertTargets: alertTargets,
      behaviors: behaviors,
      securityProfileDescription: securityProfileDescription,
      securityProfileName: securityProfileName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>When testing custom authorization, the policies specified here are treated as if they
         are not attached to the principal being authorized.</p>")
    policyNamesToSkip: option<policyNames>,
    @ocaml.doc("<p>When testing custom authorization, the policies specified here are treated as if they
         are attached to the principal being authorized.</p>")
    policyNamesToAdd: option<policyNames>,
    @ocaml.doc("<p>The MQTT client ID.</p>") clientId: option<clientId>,
    @ocaml.doc("<p>A list of authorization info objects. Simulating authorization will create a response
         for each <code>authInfo</code> object in the list.</p>")
    authInfos: authInfos,
    @ocaml.doc("<p>The Cognito identity pool ID.</p>")
    cognitoIdentityPoolId: option<cognitoIdentityPoolId>,
    @ocaml.doc(
      "<p>The principal. Valid principals are CertificateArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:cert/<i>certificateId</i>), thingGroupArn (arn:aws:iot:<i>region</i>:<i>accountId</i>:thinggroup/<i>groupName</i>) and CognitoId (<i>region</i>:<i>id</i>).</p>"
    )
    principal: option<principal>,
  }
  type response = {
    @ocaml.doc("<p>The authentication results.</p>") authResults: option<authResults>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "TestAuthorizationCommand"
  let make = (
    ~authInfos,
    ~policyNamesToSkip=?,
    ~policyNamesToAdd=?,
    ~clientId=?,
    ~cognitoIdentityPoolId=?,
    ~principal=?,
    (),
  ) =>
    new({
      policyNamesToSkip: policyNamesToSkip,
      policyNamesToAdd: policyNamesToAdd,
      clientId: clientId,
      authInfos: authInfos,
      cognitoIdentityPoolId: cognitoIdentityPoolId,
      principal: principal,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListViolationEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>
      A list of all suppressed alerts.
    </p>")
    listSuppressedAlerts: option<listSuppressedAlerts>,
    @ocaml.doc("<p>
      The criteria for a behavior.
    </p>")
    behaviorCriteriaType: option<behaviorCriteriaType>,
    @ocaml.doc(
      "<p>A filter to limit results to those alerts generated by the specified security profile.</p>"
    )
    securityProfileName: option<securityProfileName>,
    @ocaml.doc("<p>A filter to limit results to those alerts caused by the specified thing.</p>")
    thingName: option<deviceDefenderThingName>,
    @ocaml.doc("<p>The end time for the alerts to be listed.</p>") endTime: timestamp_,
    @ocaml.doc("<p>The start time for the alerts to be listed.</p>") startTime: timestamp_,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, or <code>null</code> if there are no
        additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The security profile violation alerts issued for this account during the given time period, 
      potentially filtered by security profile, behavior violated, or thing (device) violating.</p>")
    violationEvents: option<violationEvents>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListViolationEventsCommand"
  let make = (
    ~endTime,
    ~startTime,
    ~maxResults=?,
    ~nextToken=?,
    ~listSuppressedAlerts=?,
    ~behaviorCriteriaType=?,
    ~securityProfileName=?,
    ~thingName=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      listSuppressedAlerts: listSuppressedAlerts,
      behaviorCriteriaType: behaviorCriteriaType,
      securityProfileName: securityProfileName,
      thingName: thingName,
      endTime: endTime,
      startTime: startTime,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditFindings = {
  type t
  type request = {
    @ocaml.doc("<p>
      Boolean flag indicating whether only the suppressed findings or the unsuppressed findings should be listed. If this parameter isn't provided, the response will list both suppressed and unsuppressed findings.
    </p>")
    listSuppressedFindings: option<listSuppressedFindings>,
    @ocaml.doc("<p>A filter to limit results to those found before the specified time. You must
            specify either the startTime and endTime or the taskId, but not both.</p>")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>A filter to limit results to those found after the specified time. You must
            specify either the startTime and endTime or the taskId, but not both.</p>")
    startTime: option<timestamp_>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time. The default is 25.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Information identifying the noncompliant resource.</p>")
    resourceIdentifier: option<resourceIdentifier>,
    @ocaml.doc("<p>A filter to limit results to the findings for the specified audit check.</p>")
    checkName: option<auditCheckName>,
    @ocaml.doc("<p>A filter to limit results to the audit with the specified ID. You must
            specify either the taskId or the startTime and endTime, but not both.</p>")
    taskId: option<auditTaskId>,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, or <code>null</code> 
            if there are no additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The findings (results) of the audit.</p>") findings: option<auditFindings>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuditFindingsCommand"
  let make = (
    ~listSuppressedFindings=?,
    ~endTime=?,
    ~startTime=?,
    ~nextToken=?,
    ~maxResults=?,
    ~resourceIdentifier=?,
    ~checkName=?,
    ~taskId=?,
    (),
  ) =>
    new({
      listSuppressedFindings: listSuppressedFindings,
      endTime: endTime,
      startTime: startTime,
      nextToken: nextToken,
      maxResults: maxResults,
      resourceIdentifier: resourceIdentifier,
      checkName: checkName,
      taskId: taskId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActiveViolations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return at one time.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>
      A list of all suppressed alerts.
    </p>")
    listSuppressedAlerts: option<listSuppressedAlerts>,
    @ocaml.doc("<p>
      The criteria for a behavior.
    </p>")
    behaviorCriteriaType: option<behaviorCriteriaType>,
    @ocaml.doc(
      "<p>The name of the Device Defender security profile for which violations are listed.</p>"
    )
    securityProfileName: option<securityProfileName>,
    @ocaml.doc("<p>The name of the thing whose active violations are listed.</p>")
    thingName: option<deviceDefenderThingName>,
  }
  type response = {
    @ocaml.doc("<p>A token that can be used to retrieve the next set of results, 
            or <code>null</code> if there are no additional results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of active violations.</p>") activeViolations: option<activeViolations>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListActiveViolationsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~listSuppressedAlerts=?,
    ~behaviorCriteriaType=?,
    ~securityProfileName=?,
    ~thingName=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      listSuppressedAlerts: listSuppressedAlerts,
      behaviorCriteriaType: behaviorCriteriaType,
      securityProfileName: securityProfileName,
      thingName: thingName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDetectMitigationActionsTask = {
  type t
  type request = {
    @ocaml.doc("<p>
      The unique identifier of the task.
    </p>")
    taskId: mitigationActionsTaskId,
  }
  type response = {
    @ocaml.doc("<p>
      The description of a task.
    </p>")
    taskSummary: option<detectMitigationActionsTaskSummary>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeDetectMitigationActionsTaskCommand"
  let make = (~taskId, ()) => new({taskId: taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOTAUpdate = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage updates.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>A list of additional OTA update parameters which are name-value pairs.</p>")
    additionalParameters: option<additionalParameterMap>,
    @ocaml.doc("<p>The IAM role that grants AWS IoT access to the Amazon S3, AWS IoT jobs and AWS Code Signing resources 
            to create an OTA update job.</p>")
    roleArn: roleArn,
    @ocaml.doc("<p>The files to be streamed by the OTA update.</p>") files: otaupdateFiles,
    @ocaml.doc("<p>Specifies the amount of time each device has to finish its execution of the job.  A timer is 
            started when the job execution status is set to <code>IN_PROGRESS</code>. If the job execution 
            status is not set to another terminal state before the timer expires, it will be automatically 
            set to <code>TIMED_OUT</code>.</p>")
    awsJobTimeoutConfig: option<awsJobTimeoutConfig>,
    @ocaml.doc("<p>The criteria that determine when and how a job abort takes place.</p>")
    awsJobAbortConfig: option<awsJobAbortConfig>,
    @ocaml.doc("<p>Configuration information for pre-signed URLs.</p>")
    awsJobPresignedUrlConfig: option<awsJobPresignedUrlConfig>,
    @ocaml.doc("<p>Configuration for the rollout of OTA updates.</p>")
    awsJobExecutionsRolloutConfig: option<awsJobExecutionsRolloutConfig>,
    @ocaml.doc("<p>Specifies whether the update will continue to run (CONTINUOUS), or will be complete after all the things
            specified as targets have completed the update (SNAPSHOT). If continuous, the update may also be run on a
            thing when a change is detected in a target. For example, an update will run on a thing when the thing is
            added to a target group, even after the update was completed by all things originally in the group. Valid
            values: CONTINUOUS | SNAPSHOT.</p>")
    targetSelection: option<targetSelection>,
    @ocaml.doc("<p>The protocol used to transfer the OTA update image. Valid values are [HTTP], [MQTT], [HTTP, MQTT]. When both
           HTTP and MQTT are specified, the target device can choose the protocol.</p>")
    protocols: option<protocols>,
    @ocaml.doc("<p>The devices targeted to receive OTA updates.</p>") targets: targets,
    @ocaml.doc("<p>The description of the OTA update.</p>")
    description: option<otaupdateDescription>,
    @ocaml.doc("<p>The ID of the OTA update to be created.</p>") otaUpdateId: otaupdateId,
  }
  type response = {
    @ocaml.doc("<p>The OTA update status.</p>") otaUpdateStatus: option<otaupdateStatus>,
    @ocaml.doc("<p>The AWS IoT job ARN associated with the OTA update.</p>")
    awsIotJobArn: option<awsIotJobArn>,
    @ocaml.doc("<p>The OTA update ARN.</p>") otaUpdateArn: option<otaupdateArn>,
    @ocaml.doc("<p>The AWS IoT job ID associated with the OTA update.</p>")
    awsIotJobId: option<awsIotJobId>,
    @ocaml.doc("<p>The OTA update ID.</p>") otaUpdateId: option<otaupdateId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateOTAUpdateCommand"
  let make = (
    ~roleArn,
    ~files,
    ~targets,
    ~otaUpdateId,
    ~tags=?,
    ~additionalParameters=?,
    ~awsJobTimeoutConfig=?,
    ~awsJobAbortConfig=?,
    ~awsJobPresignedUrlConfig=?,
    ~awsJobExecutionsRolloutConfig=?,
    ~targetSelection=?,
    ~protocols=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      additionalParameters: additionalParameters,
      roleArn: roleArn,
      files: files,
      awsJobTimeoutConfig: awsJobTimeoutConfig,
      awsJobAbortConfig: awsJobAbortConfig,
      awsJobPresignedUrlConfig: awsJobPresignedUrlConfig,
      awsJobExecutionsRolloutConfig: awsJobExecutionsRolloutConfig,
      targetSelection: targetSelection,
      protocols: protocols,
      targets: targets,
      description: description,
      otaUpdateId: otaUpdateId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectMitigationActionsTasks = {
  type t
  type request = {
    @ocaml.doc("<p>
      The end of the time period for which ML Detect mitigation actions tasks are returned.
    </p>")
    endTime: timestamp_,
    @ocaml.doc("<p>
      A filter to limit results to those found after the specified time. You must
      specify either the startTime and endTime or the taskId, but not both.
    </p>")
    startTime: timestamp_,
    @ocaml.doc("<p>
      The token for the next set of results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return at one time. The default is 25.</p>")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>
      A token that can be used to retrieve the next set of results, or <code>null</code> if there are no additional results.
    </p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
      The collection of ML Detect mitigation tasks that matched the filter criteria.
    </p>")
    tasks: option<detectMitigationActionsTaskSummaryList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListDetectMitigationActionsTasksCommand"
  let make = (~endTime, ~startTime, ~nextToken=?, ~maxResults=?, ()) =>
    new({endTime: endTime, startTime: startTime, nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOTAUpdate = {
  type t
  type request = {@ocaml.doc("<p>The OTA update ID.</p>") otaUpdateId: otaupdateId}
  type response = {@ocaml.doc("<p>The OTA update info.</p>") otaUpdateInfo: option<otaupdateInfo>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetOTAUpdateCommand"
  let make = (~otaUpdateId, ()) => new({otaUpdateId: otaUpdateId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReplaceTopicRule = {
  type t
  @ocaml.doc("<p>The input for the ReplaceTopicRule operation.</p>")
  type request = {
    @ocaml.doc("<p>The rule payload.</p>") topicRulePayload: topicRulePayload,
    @ocaml.doc("<p>The name of the rule.</p>") ruleName: ruleName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "ReplaceTopicRuleCommand"
  let make = (~topicRulePayload, ~ruleName, ()) =>
    new({topicRulePayload: topicRulePayload, ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetTopicRule = {
  type t
  @ocaml.doc("<p>The input for the GetTopicRule operation.</p>")
  type request = {@ocaml.doc("<p>The name of the rule.</p>") ruleName: ruleName}
  @ocaml.doc("<p>The output from the GetTopicRule operation.</p>")
  type response = {
    @ocaml.doc("<p>The rule.</p>") rule: option<topicRule>,
    @ocaml.doc("<p>The rule ARN.</p>") ruleArn: option<ruleArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetTopicRuleCommand"
  let make = (~ruleName, ()) => new({ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTopicRule = {
  type t
  @ocaml.doc("<p>The input for the CreateTopicRule operation.</p>")
  type request = {
    @ocaml.doc("<p>Metadata which can be used to manage the topic rule.</p>
         <note>
            <p>For URI Request parameters use format: ...key1=value1&key2=value2...</p>
            <p>For the CLI command-line parameter use format: --tags
            \"key1=value1&key2=value2...\"</p>
            <p>For the cli-input-json file use format: \"tags\":
            \"key1=value1&key2=value2...\"</p>
         </note>")
    tags: option<string_>,
    @ocaml.doc("<p>The rule payload.</p>") topicRulePayload: topicRulePayload,
    @ocaml.doc("<p>The name of the rule.</p>") ruleName: ruleName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateTopicRuleCommand"
  let make = (~topicRulePayload, ~ruleName, ~tags=?, ()) =>
    new({tags: tags, topicRulePayload: topicRulePayload, ruleName: ruleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
