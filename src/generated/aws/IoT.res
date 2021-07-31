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
type certificatePem = string
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
type violationEventOccurrenceRange = {
  endTime: timestamp_,
  startTime: timestamp_,
}
type violationEventAdditionalInfo = {confidenceLevel: option<confidenceLevel>}
type validationError = {errorMessage: option<errorMessage>}
type updateDeviceCertificateParams = {action: deviceCertificateUpdateAction}
type updateCACertificateParams = {action: cacertificateUpdateAction}
type transferData = {
  rejectDate: option<dateType>,
  acceptDate: option<dateType>,
  transferDate: option<dateType>,
  rejectReason: option<message>,
  transferMessage: option<message>,
}
type topicRuleListItem = {
  ruleDisabled: option<isDisabled>,
  createdAt: option<createdAtDate>,
  topicPattern: option<topicPattern>,
  ruleName: option<ruleName>,
  ruleArn: option<ruleArn>,
}
type tlsContext = {serverName: option<serverName>}
type timestreamTimestamp = {
  @as("unit") unit_: timestreamTimestampUnit,
  value: timestreamTimestampValue,
}
type timestreamDimension = {
  value: timestreamDimensionValue,
  name: timestreamDimensionName,
}
type timeoutConfig = {inProgressTimeoutInMinutes: option<inProgressTimeoutInMinutes>}
type thingTypeMetadata = {
  creationDate: option<creationDate>,
  deprecationDate: option<deprecationDate>,
  deprecated: option<boolean_>,
}
type thingNameList = array<thingName>
type thingGroupNames = array<thingGroupName>
type thingGroupNameList = array<thingGroupName>
type thingGroupList = array<thingGroupName>
type thingConnectivity = {
  @as("timestamp") timestamp_: option<connectivityTimestamp>,
  connected: option<boolean_>,
}
type taskStatisticsForAuditCheck = {
  canceledFindingsCount: option<canceledFindingsCount>,
  skippedFindingsCount: option<skippedFindingsCount>,
  succeededFindingsCount: option<succeededFindingsCount>,
  failedFindingsCount: option<failedFindingsCount>,
  totalFindingsCount: option<totalFindingsCount>,
}
type taskStatistics = {
  canceledChecks: option<canceledChecksCount>,
  failedChecks: option<failedChecksCount>,
  nonCompliantChecks: option<nonCompliantChecksCount>,
  compliantChecks: option<compliantChecksCount>,
  waitingForDataCollectionChecks: option<waitingForDataCollectionChecksCount>,
  inProgressChecks: option<inProgressChecksCount>,
  totalChecks: option<totalChecksCount>,
}
type taskIdList = array<taskId>
type targets = array<target>
type targetViolationIdsForDetectMitigationActions = array<violationId>
type targetAuditCheckNames = array<auditCheckName>
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: tagKey,
}
type subnetIdList = array<subnetId>
type stringMap = Js.Dict.t<string_>
type stringList = array<stringValue>
type streamSummary = {
  description: option<streamDescription>,
  streamVersion: option<streamVersion>,
  streamArn: option<streamArn>,
  streamId: option<streamId>,
}
type stream = {
  fileId: option<fileId>,
  streamId: option<streamId>,
}
type stepFunctionsAction = {
  roleArn: awsArn,
  stateMachineName: stateMachineName,
  executionNamePrefix: option<executionNamePrefix>,
}
type statistics = {
  stdDeviation: option<stdDeviation>,
  variance: option<variance>,
  sumOfSquares: option<sumOfSquares>,
  maximum: option<maximum>,
  minimum: option<minimum>,
  sum: option<sum>,
  average: option<average>,
  count: option<count>,
}
type statisticalThreshold = {statistic: option<evaluationStatistic>}
type sqsAction = {
  useBase64: option<useBase64>,
  queueUrl: queueUrl,
  roleArn: awsArn,
}
type snsAction = {
  messageFormat: option<messageFormat>,
  roleArn: awsArn,
  targetArn: awsArn,
}
type signingProfileParameter = {
  certificatePathOnDevice: option<certificatePathOnDevice>,
  platform: option<platform>,
  certificateArn: option<certificateArn>,
}
type sigV4Authorization = {
  roleArn: awsArn,
  serviceName: serviceName,
  signingRegion: signingRegion,
}
type serverCertificateSummary = {
  serverCertificateStatusDetail: option<serverCertificateStatusDetail>,
  serverCertificateStatus: option<serverCertificateStatus>,
  serverCertificateArn: option<acmCertificateArn>,
}
type serverCertificateArns = array<acmCertificateArn>
type securityProfileTarget = {arn: securityProfileTargetArn}
type securityProfileIdentifier = {
  arn: securityProfileArn,
  name: securityProfileName,
}
type securityGroupList = array<securityGroupId>
type searchableAttributes = array<attributeName>
type scheduledAuditMetadata = {
  dayOfWeek: option<dayOfWeek>,
  dayOfMonth: option<dayOfMonth>,
  frequency: option<auditFrequency>,
  scheduledAuditArn: option<scheduledAuditArn>,
  scheduledAuditName: option<scheduledAuditName>,
}
type salesforceAction = {
  url: salesforceEndpoint,
  token: salesforceToken,
}
type s3Location = {
  version: option<s3Version>,
  key: option<s3Key>,
  bucket: option<s3Bucket>,
}
type s3FileUrlList = array<s3FileUrl>
type s3Destination = {
  prefix: option<prefix>,
  bucket: option<s3Bucket>,
}
type s3Action = {
  cannedAcl: option<cannedAccessControlList>,
  key: key,
  bucketName: bucketName,
  roleArn: awsArn,
}
type roleAliases = array<roleAlias>
type roleAliasDescription = {
  lastModifiedDate: option<dateType>,
  creationDate: option<dateType>,
  credentialDurationSeconds: option<credentialDurationSeconds>,
  owner: option<awsAccountId>,
  roleArn: option<roleArn>,
  roleAliasArn: option<roleAliasArn>,
  roleAlias: option<roleAlias>,
}
type resources = array<resource>
type resourceArns = Js.Dict.t<resourceArn>
type republishAction = {
  qos: option<qos>,
  topic: topicPattern,
  roleArn: awsArn,
}
type replaceDefaultPolicyVersionParams = {templateName: policyTemplateName}
type registrationConfig = {
  roleArn: option<roleArn>,
  templateBody: option<templateBody>,
}
type reasonForNonComplianceCodes = array<reasonForNonComplianceCode>
type rateIncreaseCriteria = {
  numberOfSucceededThings: option<numberOfThings>,
  numberOfNotifiedThings: option<numberOfThings>,
}
type putItemInput = {tableName: tableName}
type publishFindingToSnsParams = {topicArn: snsTopicArn}
type publicKeyMap = Js.Dict.t<keyValue>
type provisioningTemplateVersionSummary = {
  isDefaultVersion: option<isDefaultVersion>,
  creationDate: option<dateType>,
  versionId: option<templateVersionId>,
}
type provisioningTemplateSummary = {
  enabled: option<enabled>,
  lastModifiedDate: option<dateType>,
  creationDate: option<dateType>,
  description: option<templateDescription>,
  templateName: option<templateName>,
  templateArn: option<templateArn>,
}
type provisioningHook = {
  targetArn: targetArn,
  payloadVersion: option<payloadVersion>,
}
type protocols = array<protocol>
type processingTargetNameList = array<processingTargetName>
type principals = array<principalArn>
type presignedUrlConfig = {
  expiresInSec: option<expiresInSec>,
  roleArn: option<roleArn>,
}
type ports = array<port>
type policyVersionIdentifier = {
  policyVersionId: option<policyVersionId>,
  policyName: option<policyName>,
}
type policyVersion = {
  createDate: option<dateType>,
  isDefaultVersion: option<isDefaultVersion>,
  versionId: option<policyVersionId>,
}
type policyTargets = array<policyTarget>
type policyNames = array<policyName>
type policyDocuments = array<policyDocument>
type policy = {
  policyArn: option<policyArn>,
  policyName: option<policyName>,
}
type percentPair = {
  value: option<percentValue>,
  percent: option<percent>,
}
type percentList = array<percent>
type parameters = Js.Dict.t<value>
type outgoingCertificate = {
  creationDate: option<dateType>,
  transferMessage: option<message>,
  transferDate: option<dateType>,
  transferredTo: option<awsAccountId>,
  certificateId: option<certificateId>,
  certificateArn: option<certificateArn>,
}
type otaupdateSummary = {
  creationDate: option<dateType>,
  otaUpdateArn: option<otaupdateArn>,
  otaUpdateId: option<otaupdateId>,
}
type numberList = array<number>
type mqttContext = {
  clientId: option<mqttClientId>,
  password: option<mqttPassword>,
  username: option<mqttUsername>,
}
type mitigationActionNameList = array<mitigationActionName>
type mitigationActionIdentifier = {
  creationDate: option<timestamp_>,
  actionArn: option<mitigationActionArn>,
  actionName: option<mitigationActionName>,
}
type missingContextValues = array<missingContextValue>
type metricNames = array<metricName>
type metricDimension = {
  operator: option<dimensionValueOperator>,
  dimensionName: dimensionName,
}
type machineLearningDetectionConfig = {confidenceLevel: confidenceLevel}
type loggingOptionsPayload = {
  logLevel: option<logLevel>,
  roleArn: awsArn,
}
type logTarget = {
  targetName: option<logTargetName>,
  targetType: logTargetType,
}
type lambdaAction = {functionArn: functionArn}
type kinesisAction = {
  partitionKey: option<partitionKey>,
  streamName: streamName,
  roleArn: awsArn,
}
type keyPair = {
  @as("PrivateKey") privateKey: option<privateKey>,
  @as("PublicKey") publicKey: option<publicKey>,
}
type jobTemplateSummary = {
  createdAt: option<dateType>,
  description: option<jobDescription>,
  jobTemplateId: option<jobTemplateId>,
  jobTemplateArn: option<jobTemplateArn>,
}
type jobTargets = array<targetArn>
type jobSummary = {
  completedAt: option<dateType>,
  lastUpdatedAt: option<dateType>,
  createdAt: option<dateType>,
  status: option<jobStatus>,
  targetSelection: option<targetSelection>,
  thingGroupId: option<thingGroupId>,
  jobId: option<jobId>,
  jobArn: option<jobArn>,
}
type jobExecutionSummary = {
  executionNumber: option<executionNumber>,
  lastUpdatedAt: option<dateType>,
  startedAt: option<dateType>,
  queuedAt: option<dateType>,
  status: option<jobExecutionStatus>,
}
type iotEventsAction = {
  roleArn: awsArn,
  batchMode: option<batchMode>,
  messageId: option<messageId>,
  inputName: inputName,
}
type iotAnalyticsAction = {
  roleArn: option<awsArn>,
  batchMode: option<batchMode>,
  channelName: option<channelName>,
  channelArn: option<awsArn>,
}
type indexNamesList = array<indexName>
type httpUrlDestinationSummary = {confirmationUrl: option<url>}
type httpUrlDestinationProperties = {confirmationUrl: option<url>}
type httpUrlDestinationConfiguration = {confirmationUrl: url}
type httpHeaders = Js.Dict.t<httpHeaderValue>
type httpActionHeader = {
  value: headerValue,
  key: headerKey,
}
type groupNameAndArn = {
  groupArn: option<thingGroupArn>,
  groupName: option<thingGroupName>,
}
type firehoseAction = {
  batchMode: option<batchMode>,
  separator: option<firehoseSeparator>,
  deliveryStreamName: deliveryStreamName,
  roleArn: awsArn,
}
type findingIds = array<findingId>
type field = {
  @as("type") type_: option<fieldType>,
  name: option<fieldName>,
}
type errorInfo = {
  message: option<otaupdateErrorMessage>,
  code: option<code>,
}
type enableIoTLoggingParams = {
  logLevel: logLevel,
  roleArnForLogging: roleArn,
}
type elasticsearchAction = {
  id: elasticsearchId,
  @as("type") type_: elasticsearchType,
  index: elasticsearchIndex,
  endpoint: elasticsearchEndpoint,
  roleArn: awsArn,
}
type effectivePolicy = {
  policyDocument: option<policyDocument>,
  policyArn: option<policyArn>,
  policyName: option<policyName>,
}
type dynamoDBAction = {
  payloadField: option<payloadField>,
  rangeKeyType: option<dynamoKeyType>,
  rangeKeyValue: option<rangeKeyValue>,
  rangeKeyField: option<rangeKeyField>,
  hashKeyType: option<dynamoKeyType>,
  hashKeyValue: hashKeyValue,
  hashKeyField: hashKeyField,
  operation: option<dynamoOperation>,
  roleArn: awsArn,
  tableName: tableName,
}
type domainConfigurationSummary = {
  serviceType: option<serviceType>,
  domainConfigurationArn: option<domainConfigurationArn>,
  domainConfigurationName: option<reservedDomainConfigurationName>,
}
type dimensionStringValues = array<dimensionStringValue>
type dimensionNames = array<dimensionName>
type detectMitigationActionsToExecuteList = array<mitigationActionName>
type detectMitigationActionsTaskStatistics = {
  actionsFailed: option<genericLongValue>,
  actionsSkipped: option<genericLongValue>,
  actionsExecuted: option<genericLongValue>,
}
type detectMitigationActionExecution = {
  message: option<errorMessage>,
  errorCode: option<detectMitigationActionExecutionErrorCode>,
  status: option<detectMitigationActionExecutionStatus>,
  executionEndDate: option<timestamp_>,
  executionStartDate: option<timestamp_>,
  thingName: option<deviceDefenderThingName>,
  actionName: option<mitigationActionName>,
  violationId: option<violationId>,
  taskId: option<mitigationActionsTaskId>,
}
type detailsMap = Js.Dict.t<detailsValue>
type configuration = {@as("Enabled") enabled: option<enabled>}
type codeSigningSignature = {inlineDocument: option<signature>}
type codeSigningCertificateChain = {
  inlineDocument: option<inlineDocument>,
  certificateName: option<certificateName>,
}
type cloudwatchMetricAction = {
  metricTimestamp: option<string_>,
  metricUnit: string_,
  metricValue: string_,
  metricName: string_,
  metricNamespace: string_,
  roleArn: awsArn,
}
type cloudwatchLogsAction = {
  logGroupName: logGroupName,
  roleArn: awsArn,
}
type cloudwatchAlarmAction = {
  stateValue: stateValue,
  stateReason: stateReason,
  alarmName: alarmName,
  roleArn: awsArn,
}
type clientProperties = Js.Dict.t<string_>
type cidrs = array<cidr>
type certificateValidity = {
  notAfter: option<dateType>,
  notBefore: option<dateType>,
}
type certificate = {
  creationDate: option<dateType>,
  certificateMode: option<certificateMode>,
  status: option<certificateStatus>,
  certificateId: option<certificateId>,
  certificateArn: option<certificateArn>,
}
type cacertificate = {
  creationDate: option<dateType>,
  status: option<cacertificateStatus>,
  certificateId: option<certificateId>,
  certificateArn: option<certificateArn>,
}
type billingGroupProperties = {billingGroupDescription: option<billingGroupDescription>}
type billingGroupMetadata = {creationDate: option<creationDate>}
type behaviorModelTrainingSummary = {
  lastModelRefreshDate: option<timestamp_>,
  datapointsCollectionPercentage: option<dataCollectionPercentage>,
  modelStatus: option<modelStatus>,
  trainingDataCollectionStartDate: option<timestamp_>,
  behaviorName: option<behaviorName>,
  securityProfileName: option<securityProfileName>,
}
type awsJobTimeoutConfig = {
  inProgressTimeoutInMinutes: option<awsJobTimeoutInProgressTimeoutInMinutes>,
}
type awsJobRateIncreaseCriteria = {
  numberOfSucceededThings: option<awsJobRateIncreaseCriteriaNumberOfThings>,
  numberOfNotifiedThings: option<awsJobRateIncreaseCriteriaNumberOfThings>,
}
type awsJobPresignedUrlConfig = {expiresInSec: option<expiresInSeconds>}
type awsJobAbortCriteria = {
  minNumberOfExecutedThings: awsJobAbortCriteriaMinimumNumberOfExecutedThings,
  thresholdPercentage: awsJobAbortCriteriaAbortThresholdPercentage,
  action: awsJobAbortCriteriaAbortAction,
  failureType: awsJobAbortCriteriaFailureType,
}
type authorizerSummary = {
  authorizerArn: option<authorizerArn>,
  authorizerName: option<authorizerName>,
}
type authorizerConfig = {
  allowAuthorizerOverride: option<allowAuthorizerOverride>,
  defaultAuthorizerName: option<authorizerName>,
}
type auditTaskMetadata = {
  taskType: option<auditTaskType>,
  taskStatus: option<auditTaskStatus>,
  taskId: option<auditTaskId>,
}
type auditNotificationTarget = {
  enabled: option<enabled>,
  roleArn: option<roleArn>,
  targetArn: option<targetArn>,
}
type auditMitigationActionsTaskMetadata = {
  taskStatus: option<auditMitigationActionsTaskStatus>,
  startTime: option<timestamp_>,
  taskId: option<mitigationActionsTaskId>,
}
type auditMitigationActionExecutionMetadata = {
  message: option<errorMessage>,
  errorCode: option<errorCode>,
  endTime: option<timestamp_>,
  startTime: option<timestamp_>,
  status: option<auditMitigationActionsExecutionStatus>,
  actionId: option<mitigationActionId>,
  actionName: option<mitigationActionName>,
  findingId: option<findingId>,
  taskId: option<mitigationActionsTaskId>,
}
type auditCheckDetails = {
  message: option<errorMessage>,
  errorCode: option<errorCode>,
  suppressedNonCompliantResourcesCount: option<suppressedNonCompliantResourcesCount>,
  nonCompliantResourcesCount: option<nonCompliantResourcesCount>,
  totalResourcesCount: option<totalResourcesCount>,
  checkCompliant: option<checkCompliant>,
  checkRunStatus: option<auditCheckRunStatus>,
}
type auditCheckConfiguration = {enabled: option<enabled>}
type attributesMap = Js.Dict.t<value>
type attributes = Js.Dict.t<attributeValue>
type assetPropertyVariant = {
  booleanValue: option<assetPropertyBooleanValue>,
  doubleValue: option<assetPropertyDoubleValue>,
  integerValue: option<assetPropertyIntegerValue>,
  stringValue: option<assetPropertyStringValue>,
}
type assetPropertyTimestamp = {
  offsetInNanos: option<assetPropertyOffsetInNanos>,
  timeInSeconds: assetPropertyTimeInSeconds,
}
type alertTarget = {
  roleArn: roleArn,
  alertTargetArn: alertTargetArn,
}
type additionalParameterMap = Js.Dict.t<value>
type additionalMetricsToRetainList = array<behaviorMetric>
type abortCriteria = {
  minNumberOfExecutedThings: minimumNumberOfExecutedThings,
  thresholdPercentage: abortThresholdPercentage,
  action: abortAction,
  failureType: jobExecutionFailureType,
}
type vpcDestinationSummary = {
  roleArn: option<awsArn>,
  vpcId: option<vpcId>,
  securityGroups: option<securityGroupList>,
  subnetIds: option<subnetIdList>,
}
type vpcDestinationProperties = {
  roleArn: option<awsArn>,
  vpcId: option<vpcId>,
  securityGroups: option<securityGroupList>,
  subnetIds: option<subnetIdList>,
}
type vpcDestinationConfiguration = {
  roleArn: awsArn,
  vpcId: vpcId,
  securityGroups: option<securityGroupList>,
  subnetIds: subnetIdList,
}
type validationErrors = array<validationError>
type topicRuleList = array<topicRuleListItem>
type timestreamDimensionList = array<timestreamDimension>
type thingTypeProperties = {
  searchableAttributes: option<searchableAttributes>,
  thingTypeDescription: option<thingTypeDescription>,
}
type thingGroupNameAndArnList = array<groupNameAndArn>
type thingGroupDocument = {
  parentGroupNames: option<thingGroupNameList>,
  attributes: option<attributes>,
  thingGroupDescription: option<thingGroupDescription>,
  thingGroupId: option<thingGroupId>,
  thingGroupName: option<thingGroupName>,
}
type thingDocument = {
  connectivity: option<thingConnectivity>,
  shadow: option<jsonDocument>,
  attributes: option<attributes>,
  thingGroupNames: option<thingGroupNameList>,
  thingTypeName: option<thingTypeName>,
  thingId: option<thingId>,
  thingName: option<thingName>,
}
type thingAttribute = {
  version: option<version>,
  attributes: option<attributes>,
  thingArn: option<thingArn>,
  thingTypeName: option<thingTypeName>,
  thingName: option<thingName>,
}
type tagList_ = array<tag>
type streamsSummary = array<streamSummary>
type streamFile = {
  s3Location: option<s3Location>,
  fileId: option<fileId>,
}
type serverCertificates = array<serverCertificateSummary>
type securityProfileTargets = array<securityProfileTarget>
type securityProfileTargetMapping = {
  target: option<securityProfileTarget>,
  securityProfileIdentifier: option<securityProfileIdentifier>,
}
type securityProfileIdentifiers = array<securityProfileIdentifier>
type scheduledAuditMetadataList = array<scheduledAuditMetadata>
type resourceIdentifier = {
  roleAliasArn: option<roleAliasArn>,
  iamRoleArn: option<roleArn>,
  account: option<awsAccountId>,
  policyVersionIdentifier: option<policyVersionIdentifier>,
  clientId: option<clientId>,
  cognitoIdentityPoolId: option<cognitoIdentityPoolId>,
  caCertificateId: option<certificateId>,
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
type metricValue = {
  strings: option<stringList>,
  numbers: option<numberList>,
  number: option<number>,
  ports: option<ports>,
  cidrs: option<cidrs>,
  count: option<unsignedLong>,
}
type metricToRetain = {
  metricDimension: option<metricDimension>,
  metric: behaviorMetric,
}
type logTargetConfiguration = {
  logLevel: option<logLevel>,
  logTarget: option<logTarget>,
}
type kafkaAction = {
  clientProperties: clientProperties,
  partition: option<string_>,
  key: option<string_>,
  topic: string_,
  destinationArn: awsArn,
}
type jobTemplateSummaryList = array<jobTemplateSummary>
type jobSummaryList = array<jobSummary>
type jobProcessDetails = {
  numberOfTimedOutThings: option<timedOutThings>,
  numberOfRemovedThings: option<removedThings>,
  numberOfInProgressThings: option<inProgressThings>,
  numberOfQueuedThings: option<queuedThings>,
  numberOfRejectedThings: option<rejectedThings>,
  numberOfFailedThings: option<failedThings>,
  numberOfSucceededThings: option<succeededThings>,
  numberOfCanceledThings: option<canceledThings>,
  processingTargets: option<processingTargetNameList>,
}
type jobExecutionSummaryForThing = {
  jobExecutionSummary: option<jobExecutionSummary>,
  jobId: option<jobId>,
}
type jobExecutionSummaryForJob = {
  jobExecutionSummary: option<jobExecutionSummary>,
  thingArn: option<thingArn>,
}
type jobExecutionStatusDetails = {detailsMap: option<detailsMap>}
type httpContext = {
  queryString: option<httpQueryString>,
  headers: option<httpHeaders>,
}
type httpAuthorization = {sigv4: option<sigV4Authorization>}
type headerList = array<httpActionHeader>
type fileLocation = {
  s3Location: option<s3Location>,
  stream: option<stream>,
}
type fields = array<field>
type exponentialRolloutRate = {
  rateIncreaseCriteria: rateIncreaseCriteria,
  incrementFactor: incrementFactor,
  baseRatePerMinute: rolloutRatePerMinute,
}
type eventConfigurations = Js.Dict.t<configuration>
type effectivePolicies = array<effectivePolicy>
type dynamoDBv2Action = {
  putItem: putItemInput,
  roleArn: awsArn,
}
type domainConfigurations = array<domainConfigurationSummary>
type detectMitigationActionsTaskTarget = {
  behaviorName: option<behaviorName>,
  securityProfileName: option<securityProfileName>,
  violationIds: option<targetViolationIdsForDetectMitigationActions>,
}
type detectMitigationActionExecutionList = array<detectMitigationActionExecution>
type destination = {s3Destination: option<s3Destination>}
type customCodeSigning = {
  signatureAlgorithm: option<signatureAlgorithm>,
  hashAlgorithm: option<hashAlgorithm>,
  certificateChain: option<codeSigningCertificateChain>,
  signature: option<codeSigningSignature>,
}
type certificates = array<certificate>
type certificateDescription = {
  certificateMode: option<certificateMode>,
  validity: option<certificateValidity>,
  generationId: option<generationId>,
  transferData: option<transferData>,
  customerVersion: option<customerVersion>,
  lastModifiedDate: option<dateType>,
  creationDate: option<dateType>,
  previousOwnedBy: option<awsAccountId>,
  ownedBy: option<awsAccountId>,
  certificatePem: option<certificatePem>,
  status: option<certificateStatus>,
  caCertificateId: option<certificateId>,
  certificateId: option<certificateId>,
  certificateArn: option<certificateArn>,
}
type cacertificates = array<cacertificate>
type cacertificateDescription = {
  validity: option<certificateValidity>,
  generationId: option<generationId>,
  customerVersion: option<customerVersion>,
  lastModifiedDate: option<dateType>,
  autoRegistrationStatus: option<autoRegistrationStatus>,
  creationDate: option<dateType>,
  ownedBy: option<awsAccountId>,
  certificatePem: option<certificatePem>,
  status: option<cacertificateStatus>,
  certificateId: option<certificateId>,
  certificateArn: option<certificateArn>,
}
type billingGroupNameAndArnList = array<groupNameAndArn>
type behaviorModelTrainingSummaries = array<behaviorModelTrainingSummary>
type awsJobExponentialRolloutRate = {
  rateIncreaseCriteria: awsJobRateIncreaseCriteria,
  incrementFactor: awsJobRolloutIncrementFactor,
  baseRatePerMinute: awsJobRolloutRatePerMinute,
}
type awsJobAbortCriteriaList = array<awsJobAbortCriteria>
type authorizers = array<authorizerSummary>
type authorizerDescription = {
  signingDisabled: option<booleanKey>,
  lastModifiedDate: option<dateType>,
  creationDate: option<dateType>,
  status: option<authorizerStatus>,
  tokenSigningPublicKeys: option<publicKeyMap>,
  tokenKeyName: option<tokenKeyName>,
  authorizerFunctionArn: option<authorizerFunctionArn>,
  authorizerArn: option<authorizerArn>,
  authorizerName: option<authorizerName>,
}
type authInfo = {
  resources: resources,
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
type attributePayload = {
  merge: option<flag>,
  attributes: option<attributes>,
}
type assetPropertyValue = {
  quality: option<assetPropertyQuality>,
  @as("timestamp") timestamp_: assetPropertyTimestamp,
  value: assetPropertyVariant,
}
type alertTargets = Js.Dict.t<alertTarget>
type addThingsToThingGroupParams = {
  overrideDynamicGroups: option<overrideDynamicGroups>,
  thingGroupNames: thingGroupNames,
}
type abortCriteriaList = array<abortCriteria>
type topicRuleDestinationSummary = {
  vpcDestinationSummary: option<vpcDestinationSummary>,
  httpUrlSummary: option<httpUrlDestinationSummary>,
  statusReason: option<string_>,
  lastUpdatedAt: option<lastUpdatedAtDate>,
  createdAt: option<createdAtDate>,
  status: option<topicRuleDestinationStatus>,
  arn: option<awsArn>,
}
type topicRuleDestinationConfiguration = {
  vpcConfiguration: option<vpcDestinationConfiguration>,
  httpUrlConfiguration: option<httpUrlDestinationConfiguration>,
}
type topicRuleDestination = {
  vpcProperties: option<vpcDestinationProperties>,
  httpUrlProperties: option<httpUrlDestinationProperties>,
  statusReason: option<string_>,
  lastUpdatedAt: option<lastUpdatedAtDate>,
  createdAt: option<createdAtDate>,
  status: option<topicRuleDestinationStatus>,
  arn: option<awsArn>,
}
type timestreamAction = {
  @as("timestamp") timestamp_: option<timestreamTimestamp>,
  dimensions: timestreamDimensionList,
  tableName: timestreamTableName,
  databaseName: timestreamDatabaseName,
  roleArn: awsArn,
}
type thingTypeDefinition = {
  thingTypeMetadata: option<thingTypeMetadata>,
  thingTypeProperties: option<thingTypeProperties>,
  thingTypeArn: option<thingTypeArn>,
  thingTypeName: option<thingTypeName>,
}
type thingIndexingConfiguration = {
  customFields: option<fields>,
  managedFields: option<fields>,
  thingConnectivityIndexingMode: option<thingConnectivityIndexingMode>,
  thingIndexingMode: thingIndexingMode,
}
type thingGroupProperties = {
  attributePayload: option<attributePayload>,
  thingGroupDescription: option<thingGroupDescription>,
}
type thingGroupMetadata = {
  creationDate: option<creationDate>,
  rootToParentThingGroups: option<thingGroupNameAndArnList>,
  parentGroupName: option<thingGroupName>,
}
type thingGroupIndexingConfiguration = {
  customFields: option<fields>,
  managedFields: option<fields>,
  thingGroupIndexingMode: thingGroupIndexingMode,
}
type thingGroupDocumentList = array<thingGroupDocument>
type thingDocumentList = array<thingDocument>
type thingAttributeList = array<thingAttribute>
type streamFiles = array<streamFile>
type startSigningJobParameter = {
  destination: option<destination>,
  signingProfileName: option<signingProfileName>,
  signingProfileParameter: option<signingProfileParameter>,
}
type securityProfileTargetMappings = array<securityProfileTargetMapping>
type relatedResource = {
  additionalInfo: option<stringMap>,
  resourceIdentifier: option<resourceIdentifier>,
  resourceType: option<resourceType>,
}
type nonCompliantResource = {
  additionalInfo: option<stringMap>,
  resourceIdentifier: option<resourceIdentifier>,
  resourceType: option<resourceType>,
}
type mitigationActionParams = {
  publishFindingToSnsParams: option<publishFindingToSnsParams>,
  enableIoTLoggingParams: option<enableIoTLoggingParams>,
  replaceDefaultPolicyVersionParams: option<replaceDefaultPolicyVersionParams>,
  addThingsToThingGroupParams: option<addThingsToThingGroupParams>,
  updateCACertificateParams: option<updateCACertificateParams>,
  updateDeviceCertificateParams: option<updateDeviceCertificateParams>,
}
type logTargetConfigurations = array<logTargetConfiguration>
type jobExecutionsRolloutConfig = {
  exponentialRate: option<exponentialRolloutRate>,
  maximumPerMinute: option<maxJobExecutionsPerMin>,
}
type jobExecutionSummaryForThingList = array<jobExecutionSummaryForThing>
type jobExecutionSummaryForJobList = array<jobExecutionSummaryForJob>
type jobExecution = {
  approximateSecondsBeforeTimedOut: option<approximateSecondsBeforeTimedOut>,
  versionNumber: option<versionNumber>,
  executionNumber: option<executionNumber>,
  lastUpdatedAt: option<dateType>,
  startedAt: option<dateType>,
  queuedAt: option<dateType>,
  thingArn: option<thingArn>,
  statusDetails: option<jobExecutionStatusDetails>,
  forceCanceled: option<forced>,
  status: option<jobExecutionStatus>,
  jobId: option<jobId>,
}
type implicitDeny = {policies: option<policies>}
type httpAction = {
  auth: option<httpAuthorization>,
  headers: option<headerList>,
  confirmationUrl: option<url>,
  url: url,
}
type explicitDeny = {policies: option<policies>}
type behaviorCriteria = {
  mlDetectionConfig: option<machineLearningDetectionConfig>,
  statisticalThreshold: option<statisticalThreshold>,
  consecutiveDatapointsToClear: option<consecutiveDatapointsToClear>,
  consecutiveDatapointsToAlarm: option<consecutiveDatapointsToAlarm>,
  durationSeconds: option<durationSeconds>,
  value: option<metricValue>,
  comparisonOperator: option<comparisonOperator>,
}
type awsJobExecutionsRolloutConfig = {
  exponentialRate: option<awsJobExponentialRolloutRate>,
  maximumPerMinute: option<maximumPerMinute>,
}
type awsJobAbortConfig = {abortCriteriaList: awsJobAbortCriteriaList}
type authInfos = array<authInfo>
type auditSuppression = {
  description: option<auditDescription>,
  suppressIndefinitely: option<suppressIndefinitely>,
  expirationDate: option<timestamp_>,
  resourceIdentifier: resourceIdentifier,
  checkName: auditCheckName,
}
type auditMitigationActionsTaskTarget = {
  auditCheckToReasonCodeFilter: option<auditCheckToReasonCodeFilter>,
  findingIds: option<findingIds>,
  auditTaskId: option<auditTaskId>,
}
type assetPropertyValueList = array<assetPropertyValue>
type allowed = {policies: option<policies>}
type additionalMetricsToRetainV2List = array<metricToRetain>
type abortConfig = {criteriaList: abortCriteriaList}
type topicRuleDestinationSummaries = array<topicRuleDestinationSummary>
type thingTypeList = array<thingTypeDefinition>
type streamInfo = {
  roleArn: option<roleArn>,
  lastUpdatedAt: option<dateType>,
  createdAt: option<dateType>,
  files: option<streamFiles>,
  description: option<streamDescription>,
  streamVersion: option<streamVersion>,
  streamArn: option<streamArn>,
  streamId: option<streamId>,
}
type relatedResources = array<relatedResource>
type putAssetPropertyValueEntry = {
  propertyValues: assetPropertyValueList,
  propertyAlias: option<assetPropertyAlias>,
  propertyId: option<assetPropertyId>,
  assetId: option<assetId>,
  entryId: option<assetPropertyEntryId>,
}
type mitigationAction = {
  actionParams: option<mitigationActionParams>,
  roleArn: option<roleArn>,
  id: option<mitigationActionId>,
  name: option<mitigationActionName>,
}
type job = {
  jobTemplateArn: option<jobTemplateArn>,
  namespaceId: option<namespaceId>,
  timeoutConfig: option<timeoutConfig>,
  jobProcessDetails: option<jobProcessDetails>,
  completedAt: option<dateType>,
  lastUpdatedAt: option<dateType>,
  createdAt: option<dateType>,
  abortConfig: option<abortConfig>,
  jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
  presignedUrlConfig: option<presignedUrlConfig>,
  description: option<jobDescription>,
  targets: option<jobTargets>,
  comment: option<comment>,
  reasonCode: option<reasonCode>,
  forceCanceled: option<forced>,
  status: option<jobStatus>,
  targetSelection: option<targetSelection>,
  jobId: option<jobId>,
  jobArn: option<jobArn>,
}
type denied = {
  explicitDeny: option<explicitDeny>,
  implicitDeny: option<implicitDeny>,
}
type codeSigning = {
  customCodeSigning: option<customCodeSigning>,
  startSigningJobParameter: option<startSigningJobParameter>,
  awsSignerJobId: option<signingJobId>,
}
type behavior = {
  suppressAlerts: option<suppressAlerts>,
  criteria: option<behaviorCriteria>,
  metricDimension: option<metricDimension>,
  metric: option<behaviorMetric>,
  name: behaviorName,
}
type auditSuppressionList = array<auditSuppression>
type violationEvent = {
  violationEventTime: option<timestamp_>,
  violationEventType: option<violationEventType>,
  violationEventAdditionalInfo: option<violationEventAdditionalInfo>,
  metricValue: option<metricValue>,
  behavior: option<behavior>,
  securityProfileName: option<securityProfileName>,
  thingName: option<deviceDefenderThingName>,
  violationId: option<violationId>,
}
type putAssetPropertyValueEntryList = array<putAssetPropertyValueEntry>
type otaupdateFile = {
  attributes: option<attributesMap>,
  codeSigning: option<codeSigning>,
  fileLocation: option<fileLocation>,
  fileVersion: option<otaupdateFileVersion>,
  fileType: option<fileType>,
  fileName: option<fileName>,
}
type mitigationActionList = array<mitigationAction>
type behaviors = array<behavior>
type authResult = {
  missingContextValues: option<missingContextValues>,
  authDecision: option<authDecision>,
  denied: option<denied>,
  allowed: option<allowed>,
  authInfo: option<authInfo>,
}
type auditFinding = {
  isSuppressed: option<isSuppressed>,
  reasonForNonComplianceCode: option<reasonForNonComplianceCode>,
  reasonForNonCompliance: option<reasonForNonCompliance>,
  relatedResources: option<relatedResources>,
  nonCompliantResource: option<nonCompliantResource>,
  severity: option<auditFindingSeverity>,
  findingTime: option<timestamp_>,
  taskStartTime: option<timestamp_>,
  checkName: option<auditCheckName>,
  taskId: option<auditTaskId>,
  findingId: option<findingId>,
}
type activeViolation = {
  violationStartTime: option<timestamp_>,
  lastViolationTime: option<timestamp_>,
  violationEventAdditionalInfo: option<violationEventAdditionalInfo>,
  lastViolationValue: option<metricValue>,
  behavior: option<behavior>,
  securityProfileName: option<securityProfileName>,
  thingName: option<deviceDefenderThingName>,
  violationId: option<violationId>,
}
type violationEvents = array<violationEvent>
type otaupdateFiles = array<otaupdateFile>
type iotSiteWiseAction = {
  roleArn: awsArn,
  putAssetPropertyValueEntries: putAssetPropertyValueEntryList,
}
type detectMitigationActionsTaskSummary = {
  taskStatistics: option<detectMitigationActionsTaskStatistics>,
  actionsDefinition: option<mitigationActionList>,
  suppressedAlertsIncluded: option<primitiveBoolean>,
  onlyActiveViolationsIncluded: option<primitiveBoolean>,
  violationEventOccurrenceRange: option<violationEventOccurrenceRange>,
  target: option<detectMitigationActionsTaskTarget>,
  taskEndTime: option<timestamp_>,
  taskStartTime: option<timestamp_>,
  taskStatus: option<detectMitigationActionsTaskStatus>,
  taskId: option<mitigationActionsTaskId>,
}
type authResults = array<authResult>
type auditFindings = array<auditFinding>
type activeViolations = array<activeViolation>
type otaupdateInfo = {
  additionalParameters: option<additionalParameterMap>,
  errorInfo: option<errorInfo>,
  awsIotJobArn: option<awsIotJobArn>,
  awsIotJobId: option<awsIotJobId>,
  otaUpdateStatus: option<otaupdateStatus>,
  otaUpdateFiles: option<otaupdateFiles>,
  targetSelection: option<targetSelection>,
  awsJobPresignedUrlConfig: option<awsJobPresignedUrlConfig>,
  awsJobExecutionsRolloutConfig: option<awsJobExecutionsRolloutConfig>,
  protocols: option<protocols>,
  targets: option<targets>,
  description: option<otaupdateDescription>,
  lastModifiedDate: option<dateType>,
  creationDate: option<dateType>,
  otaUpdateArn: option<otaupdateArn>,
  otaUpdateId: option<otaupdateId>,
}
type detectMitigationActionsTaskSummaryList = array<detectMitigationActionsTaskSummary>
type action = {
  kafka: option<kafkaAction>,
  http: option<httpAction>,
  timestream: option<timestreamAction>,
  stepFunctions: option<stepFunctionsAction>,
  iotSiteWise: option<iotSiteWiseAction>,
  iotEvents: option<iotEventsAction>,
  iotAnalytics: option<iotAnalyticsAction>,
  salesforce: option<salesforceAction>,
  elasticsearch: option<elasticsearchAction>,
  cloudwatchLogs: option<cloudwatchLogsAction>,
  cloudwatchAlarm: option<cloudwatchAlarmAction>,
  cloudwatchMetric: option<cloudwatchMetricAction>,
  firehose: option<firehoseAction>,
  s3: option<s3Action>,
  republish: option<republishAction>,
  kinesis: option<kinesisAction>,
  sqs: option<sqsAction>,
  sns: option<snsAction>,
  lambda: option<lambdaAction>,
  dynamoDBv2: option<dynamoDBv2Action>,
  dynamoDB: option<dynamoDBAction>,
}
type actionList = array<action>
type topicRulePayload = {
  errorAction: option<action>,
  awsIotSqlVersion: option<awsIotSqlVersion>,
  ruleDisabled: option<isDisabled>,
  actions: actionList,
  description: option<description>,
  sql: sql,
}
type topicRule = {
  errorAction: option<action>,
  awsIotSqlVersion: option<awsIotSqlVersion>,
  ruleDisabled: option<isDisabled>,
  actions: option<actionList>,
  createdAt: option<createdAtDate>,
  description: option<description>,
  sql: option<sql>,
  ruleName: option<ruleName>,
}

module UpdateTopicRuleDestination = {
  type t
  type request = {
    status: topicRuleDestinationStatus,
    arn: awsArn,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateTopicRuleDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRoleAlias = {
  type t
  type request = {
    credentialDurationSeconds: option<credentialDurationSeconds>,
    roleArn: option<roleArn>,
    roleAlias: roleAlias,
  }
  type response = {
    roleAliasArn: option<roleAliasArn>,
    roleAlias: option<roleAlias>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateRoleAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCustomMetric = {
  type t
  type request = {
    displayName: customMetricDisplayName,
    metricName: metricName,
  }
  type response = {
    lastModifiedDate: option<timestamp_>,
    creationDate: option<timestamp_>,
    displayName: option<customMetricDisplayName>,
    metricType: option<customMetricType>,
    metricArn: option<customMetricArn>,
    metricName: option<metricName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateCustomMetricCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCertificate = {
  type t
  type request = {
    newStatus: certificateStatus,
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TransferCertificate = {
  type t
  type request = {
    transferMessage: option<message>,
    targetAwsAccount: awsAccountId,
    certificateId: certificateId,
  }
  type response = {transferredCertificateArn: option<certificateArn>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "TransferCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopThingRegistrationTask = {
  type t
  type request = {taskId: taskId}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StopThingRegistrationTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartThingRegistrationTask = {
  type t
  type request = {
    roleArn: roleArn,
    inputFileKey: registryS3KeyName,
    inputFileBucket: registryS3BucketName,
    templateBody: templateBody,
  }
  type response = {taskId: option<taskId>}
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StartThingRegistrationTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetV2LoggingOptions = {
  type t
  type request = {
    disableAllLogs: option<disableAllLogs>,
    defaultLogLevel: option<logLevel>,
    roleArn: option<awsArn>,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetV2LoggingOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetDefaultPolicyVersion = {
  type t
  type request = {
    policyVersionId: policyVersionId,
    policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetDefaultPolicyVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetDefaultAuthorizer = {
  type t
  type request = {authorizerName: authorizerName}
  type response = {
    authorizerArn: option<authorizerArn>,
    authorizerName: option<authorizerName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "SetDefaultAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveThingFromThingGroup = {
  type t
  type request = {
    thingArn: option<thingArn>,
    thingName: option<thingName>,
    thingGroupArn: option<thingGroupArn>,
    thingGroupName: option<thingGroupName>,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RemoveThingFromThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveThingFromBillingGroup = {
  type t
  type request = {
    thingArn: option<thingArn>,
    thingName: option<thingName>,
    billingGroupArn: option<billingGroupArn>,
    billingGroupName: option<billingGroupName>,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RemoveThingFromBillingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RejectCertificateTransfer = {
  type t
  type request = {
    rejectReason: option<message>,
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RejectCertificateTransferCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterCertificateWithoutCA = {
  type t
  type request = {
    status: option<certificateStatus>,
    certificatePem: certificatePem,
  }
  type response = {
    certificateId: option<certificateId>,
    certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "RegisterCertificateWithoutCACommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterCertificate = {
  type t
  type request = {
    status: option<certificateStatus>,
    setAsActive: option<setAsActiveFlag>,
    caCertificatePem: option<certificatePem>,
    certificatePem: certificatePem,
  }
  type response = {
    certificateId: option<certificateId>,
    certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "RegisterCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetV2LoggingOptions = {
  type t
  type request = unit
  type response = {
    disableAllLogs: option<disableAllLogs>,
    defaultLogLevel: option<logLevel>,
    roleArn: option<awsArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetV2LoggingOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegistrationCode = {
  type t
  type request = unit
  type response = {registrationCode: option<registrationCode>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetRegistrationCodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPolicyVersion = {
  type t
  type request = {
    policyVersionId: policyVersionId,
    policyName: policyName,
  }
  type response = {
    generationId: option<generationId>,
    lastModifiedDate: option<dateType>,
    creationDate: option<dateType>,
    isDefaultVersion: option<isDefaultVersion>,
    policyVersionId: option<policyVersionId>,
    policyDocument: option<policyDocument>,
    policyName: option<policyName>,
    policyArn: option<policyArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetPolicyVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPolicy = {
  type t
  type request = {policyName: policyName}
  type response = {
    generationId: option<generationId>,
    lastModifiedDate: option<dateType>,
    creationDate: option<dateType>,
    defaultVersionId: option<policyVersionId>,
    policyDocument: option<policyDocument>,
    policyArn: option<policyArn>,
    policyName: option<policyName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoggingOptions = {
  type t
  type request = unit
  type response = {
    logLevel: option<logLevel>,
    roleArn: option<awsArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetLoggingOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJobDocument = {
  type t
  type request = {jobId: jobId}
  type response = {document: option<jobDocument>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetJobDocumentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCardinality = {
  type t
  type request = {
    queryVersion: option<queryVersion>,
    aggregationField: option<aggregationField>,
    queryString: queryString,
    indexName: option<indexName>,
  }
  type response = {cardinality: option<count>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetCardinalityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableTopicRule = {
  type t
  type request = {ruleName: ruleName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "EnableTopicRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableTopicRule = {
  type t
  type request = {ruleName: ruleName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DisableTopicRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachThingPrincipal = {
  type t
  type request = {
    principal: principal,
    thingName: thingName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachThingPrincipalCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachSecurityProfile = {
  type t
  type request = {
    securityProfileTargetArn: securityProfileTargetArn,
    securityProfileName: securityProfileName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachSecurityProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachPrincipalPolicy = {
  type t
  type request = {
    principal: principal,
    policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachPrincipalPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachPolicy = {
  type t
  type request = {
    target: policyTarget,
    policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DetachPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeThingRegistrationTask = {
  type t
  type request = {taskId: taskId}
  type response = {
    percentageProgress: option<percentage>,
    failureCount: option<count>,
    successCount: option<count>,
    message: option<errorMessage>,
    status: option<status>,
    roleArn: option<roleArn>,
    inputFileKey: option<registryS3KeyName>,
    inputFileBucket: option<registryS3BucketName>,
    templateBody: option<templateBody>,
    lastModifiedDate: option<lastModifiedDate>,
    creationDate: option<creationDate>,
    taskId: option<taskId>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeThingRegistrationTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisioningTemplateVersion = {
  type t
  type request = {
    versionId: templateVersionId,
    templateName: templateName,
  }
  type response = {
    isDefaultVersion: option<isDefaultVersion>,
    templateBody: option<templateBody>,
    creationDate: option<dateType>,
    versionId: option<templateVersionId>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeProvisioningTemplateVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeIndex = {
  type t
  type request = {indexName: indexName}
  type response = {
    schema: option<indexSchema>,
    indexStatus: option<indexStatus>,
    indexName: option<indexName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeIndexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoint = {
  type t
  type request = {endpointType: option<endpointType>}
  type response = {endpointAddress: option<endpointAddress>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeEndpointCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCustomMetric = {
  type t
  type request = {metricName: metricName}
  type response = {
    lastModifiedDate: option<timestamp_>,
    creationDate: option<timestamp_>,
    displayName: option<customMetricDisplayName>,
    metricType: option<customMetricType>,
    metricArn: option<customMetricArn>,
    metricName: option<metricName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeCustomMetricCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprecateThingType = {
  type t
  type request = {
    undoDeprecate: option<undoDeprecate>,
    thingTypeName: thingTypeName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeprecateThingTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteV2LoggingLevel = {
  type t
  type request = {
    targetName: logTargetName,
    targetType: logTargetType,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteV2LoggingLevelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTopicRuleDestination = {
  type t
  type request = {arn: awsArn}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteTopicRuleDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTopicRule = {
  type t
  type request = {ruleName: ruleName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteTopicRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteThingType = {
  type t
  type request = {thingTypeName: thingTypeName}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteThingTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThingGroup = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    thingGroupName: thingGroupName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThing = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    thingName: thingName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStream = {
  type t
  type request = {streamId: streamId}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSecurityProfile = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    securityProfileName: securityProfileName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteSecurityProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteScheduledAudit = {
  type t
  type request = {scheduledAuditName: scheduledAuditName}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteScheduledAuditCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRoleAlias = {
  type t
  type request = {roleAlias: roleAlias}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteRoleAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRegistrationCode = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteRegistrationCodeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProvisioningTemplateVersion = {
  type t
  type request = {
    versionId: templateVersionId,
    templateName: templateName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteProvisioningTemplateVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProvisioningTemplate = {
  type t
  type request = {templateName: templateName}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteProvisioningTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePolicyVersion = {
  type t
  type request = {
    policyVersionId: policyVersionId,
    policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeletePolicyVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePolicy = {
  type t
  type request = {policyName: policyName}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeletePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOTAUpdate = {
  type t
  type request = {
    forceDeleteAWSJob: option<forceDeleteAWSJob>,
    deleteStream: option<deleteStream_>,
    otaUpdateId: otaupdateId,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteOTAUpdateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMitigationAction = {
  type t
  type request = {actionName: mitigationActionName}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteMitigationActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteJobTemplate = {
  type t
  type request = {jobTemplateId: jobTemplateId}

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteJobTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJobExecution = {
  type t
  type request = {
    namespaceId: option<namespaceId>,
    force: option<forceFlag>,
    executionNumber: executionNumber,
    thingName: thingName,
    jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteJobExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteJob = {
  type t
  type request = {
    namespaceId: option<namespaceId>,
    force: option<forceFlag>,
    jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDynamicThingGroup = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    thingGroupName: thingGroupName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteDynamicThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomainConfiguration = {
  type t
  type request = {domainConfigurationName: domainConfigurationName}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteDomainConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDimension = {
  type t
  type request = {name: dimensionName}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteDimensionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCustomMetric = {
  type t
  type request = {metricName: metricName}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteCustomMetricCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCertificate = {
  type t
  type request = {
    forceDelete: option<forceDelete>,
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteCACertificate = {
  type t
  type request = {certificateId: certificateId}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteCACertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBillingGroup = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    billingGroupName: billingGroupName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteBillingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAuthorizer = {
  type t
  type request = {authorizerName: authorizerName}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAccountAuditConfiguration = {
  type t
  type request = {deleteScheduledAudits: option<deleteScheduledAudits>}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DeleteAccountAuditConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProvisioningTemplateVersion = {
  type t
  type request = {
    setAsDefault: option<setAsDefault>,
    templateBody: templateBody,
    templateName: templateName,
  }
  type response = {
    isDefaultVersion: option<isDefaultVersion>,
    versionId: option<templateVersionId>,
    templateName: option<templateName>,
    templateArn: option<templateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateProvisioningTemplateVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePolicyVersion = {
  type t
  type request = {
    setAsDefault: option<setAsDefault>,
    policyDocument: policyDocument,
    policyName: policyName,
  }
  type response = {
    isDefaultVersion: option<isDefaultVersion>,
    policyVersionId: option<policyVersionId>,
    policyDocument: option<policyDocument>,
    policyArn: option<policyArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreatePolicyVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCertificateFromCsr = {
  type t
  type request = {
    setAsActive: option<setAsActive>,
    certificateSigningRequest: certificateSigningRequest,
  }
  type response = {
    certificatePem: option<certificatePem>,
    certificateId: option<certificateId>,
    certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateCertificateFromCsrCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ConfirmTopicRuleDestination = {
  type t
  type request = {confirmationToken: confirmationToken}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ConfirmTopicRuleDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ClearDefaultAuthorizer = {
  type t
  type request = unit
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "ClearDefaultAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJob = {
  type t
  type request = {
    force: option<forceFlag>,
    comment: option<comment>,
    reasonCode: option<reasonCode>,
    jobId: jobId,
  }
  type response = {
    description: option<jobDescription>,
    jobId: option<jobId>,
    jobArn: option<jobArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CancelJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelDetectMitigationActionsTask = {
  type t
  type request = {taskId: mitigationActionsTaskId}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CancelDetectMitigationActionsTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelCertificateTransfer = {
  type t
  type request = {certificateId: certificateId}

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CancelCertificateTransferCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelAuditTask = {
  type t
  type request = {taskId: auditTaskId}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "CancelAuditTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelAuditMitigationActionsTask = {
  type t
  type request = {taskId: mitigationActionsTaskId}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CancelAuditMitigationActionsTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachThingPrincipal = {
  type t
  type request = {
    principal: principal,
    thingName: thingName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachThingPrincipalCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachSecurityProfile = {
  type t
  type request = {
    securityProfileTargetArn: securityProfileTargetArn,
    securityProfileName: securityProfileName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachSecurityProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachPrincipalPolicy = {
  type t
  type request = {
    principal: principal,
    policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachPrincipalPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachPolicy = {
  type t
  type request = {
    target: policyTarget,
    policyName: policyName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "AttachPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AddThingToThingGroup = {
  type t
  type request = {
    overrideDynamicGroups: option<overrideDynamicGroups>,
    thingArn: option<thingArn>,
    thingName: option<thingName>,
    thingGroupArn: option<thingGroupArn>,
    thingGroupName: option<thingGroupName>,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "AddThingToThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddThingToBillingGroup = {
  type t
  type request = {
    thingArn: option<thingArn>,
    thingName: option<thingName>,
    billingGroupArn: option<billingGroupArn>,
    billingGroupName: option<billingGroupName>,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "AddThingToBillingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptCertificateTransfer = {
  type t
  type request = {
    setAsActive: option<setAsActive>,
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new
  external new: request => t = "AcceptCertificateTransferCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateThingGroupsForThing = {
  type t
  type request = {
    overrideDynamicGroups: option<overrideDynamicGroups>,
    thingGroupsToRemove: option<thingGroupList>,
    thingGroupsToAdd: option<thingGroupList>,
    thingName: option<thingName>,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateThingGroupsForThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateScheduledAudit = {
  type t
  type request = {
    scheduledAuditName: scheduledAuditName,
    targetCheckNames: option<targetAuditCheckNames>,
    dayOfWeek: option<dayOfWeek>,
    dayOfMonth: option<dayOfMonth>,
    frequency: option<auditFrequency>,
  }
  type response = {scheduledAuditArn: option<scheduledAuditArn>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateScheduledAuditCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProvisioningTemplate = {
  type t
  type request = {
    removePreProvisioningHook: option<removeHook>,
    preProvisioningHook: option<provisioningHook>,
    provisioningRoleArn: option<roleArn>,
    defaultVersionId: option<templateVersionId>,
    enabled: option<enabled>,
    description: option<templateDescription>,
    templateName: templateName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateProvisioningTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainConfiguration = {
  type t
  type request = {
    removeAuthorizerConfig: option<removeAuthorizerConfig>,
    domainConfigurationStatus: option<domainConfigurationStatus>,
    authorizerConfig: option<authorizerConfig>,
    domainConfigurationName: reservedDomainConfigurationName,
  }
  type response = {
    domainConfigurationArn: option<domainConfigurationArn>,
    domainConfigurationName: option<reservedDomainConfigurationName>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateDomainConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDimension = {
  type t
  type request = {
    stringValues: dimensionStringValues,
    name: dimensionName,
  }
  type response = {
    lastModifiedDate: option<timestamp_>,
    creationDate: option<timestamp_>,
    stringValues: option<dimensionStringValues>,
    @as("type") type_: option<dimensionType>,
    arn: option<dimensionArn>,
    name: option<dimensionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateDimensionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateCACertificate = {
  type t
  type request = {
    removeAutoRegistration: option<removeAutoRegistration>,
    registrationConfig: option<registrationConfig>,
    newAutoRegistrationStatus: option<autoRegistrationStatus>,
    newStatus: option<cacertificateStatus>,
    certificateId: certificateId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateCACertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateBillingGroup = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    billingGroupProperties: billingGroupProperties,
    billingGroupName: billingGroupName,
  }
  type response = {version: option<version>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateBillingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAuthorizer = {
  type t
  type request = {
    status: option<authorizerStatus>,
    tokenSigningPublicKeys: option<publicKeyMap>,
    tokenKeyName: option<tokenKeyName>,
    authorizerFunctionArn: option<authorizerFunctionArn>,
    authorizerName: authorizerName,
  }
  type response = {
    authorizerArn: option<authorizerArn>,
    authorizerName: option<authorizerName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartOnDemandAuditTask = {
  type t
  type request = {targetCheckNames: targetAuditCheckNames}
  type response = {taskId: option<auditTaskId>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "StartOnDemandAuditTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetV2LoggingLevel = {
  type t
  type request = {
    logLevel: logLevel,
    logTarget: logTarget,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetV2LoggingLevelCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module SetLoggingOptions = {
  type t
  type request = {loggingOptionsPayload: loggingOptionsPayload}

  @module("@aws-sdk/client-iot") @new external new: request => t = "SetLoggingOptionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterThing = {
  type t
  type request = {
    parameters: option<parameters>,
    templateBody: templateBody,
  }
  type response = {
    resourceArns: option<resourceArns>,
    certificatePem: option<certificatePem>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "RegisterThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingsInThingGroup = {
  type t
  type request = {
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
    recursive: option<recursive>,
    thingGroupName: thingGroupName,
  }
  type response = {
    nextToken: option<nextToken>,
    things: option<thingNameList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingsInThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingsInBillingGroup = {
  type t
  type request = {
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
    billingGroupName: billingGroupName,
  }
  type response = {
    nextToken: option<nextToken>,
    things: option<thingNameList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingsInBillingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingRegistrationTasks = {
  type t
  type request = {
    status: option<status>,
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    taskIds: option<taskIdList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListThingRegistrationTasksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingRegistrationTaskReports = {
  type t
  type request = {
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
    reportType: reportType,
    taskId: taskId,
  }
  type response = {
    nextToken: option<nextToken>,
    reportType: option<reportType>,
    resourceLinks: option<s3FileUrlList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListThingRegistrationTaskReportsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingPrincipals = {
  type t
  type request = {
    thingName: thingName,
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    principals: option<principals>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingPrincipalsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTargetsForPolicy = {
  type t
  type request = {
    pageSize: option<pageSize>,
    marker: option<marker>,
    policyName: policyName,
  }
  type response = {
    nextMarker: option<marker>,
    targets: option<policyTargets>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListTargetsForPolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRoleAliases = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    marker: option<marker>,
    pageSize: option<pageSize>,
  }
  type response = {
    nextMarker: option<marker>,
    roleAliases: option<roleAliases>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListRoleAliasesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrincipalThings = {
  type t
  type request = {
    principal: principal,
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    things: option<thingNameList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPrincipalThingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicyPrincipals = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    pageSize: option<pageSize>,
    marker: option<marker>,
    policyName: policyName,
  }
  type response = {
    nextMarker: option<marker>,
    principals: option<principals>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPolicyPrincipalsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIndices = {
  type t
  type request = {
    maxResults: option<queryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    indexNames: option<indexNamesList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListIndicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDimensions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    dimensionNames: option<dimensionNames>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListDimensionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCustomMetrics = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    metricNames: option<metricNames>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCustomMetricsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStatistics = {
  type t
  type request = {
    queryVersion: option<queryVersion>,
    aggregationField: option<aggregationField>,
    queryString: queryString,
    indexName: option<indexName>,
  }
  type response = {statistics: option<statistics>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetStatisticsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThing = {
  type t
  type request = {thingName: thingName}
  type response = {
    billingGroupName: option<billingGroupName>,
    version: option<version>,
    attributes: option<attributes>,
    thingTypeName: option<thingTypeName>,
    thingArn: option<thingArn>,
    thingId: option<thingId>,
    thingName: option<thingName>,
    defaultClientId: option<clientId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeScheduledAudit = {
  type t
  type request = {scheduledAuditName: scheduledAuditName}
  type response = {
    scheduledAuditArn: option<scheduledAuditArn>,
    scheduledAuditName: option<scheduledAuditName>,
    targetCheckNames: option<targetAuditCheckNames>,
    dayOfWeek: option<dayOfWeek>,
    dayOfMonth: option<dayOfMonth>,
    frequency: option<auditFrequency>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeScheduledAuditCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRoleAlias = {
  type t
  type request = {roleAlias: roleAlias}
  type response = {roleAliasDescription: option<roleAliasDescription>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeRoleAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisioningTemplate = {
  type t
  type request = {templateName: templateName}
  type response = {
    preProvisioningHook: option<provisioningHook>,
    provisioningRoleArn: option<roleArn>,
    enabled: option<enabled>,
    templateBody: option<templateBody>,
    defaultVersionId: option<templateVersionId>,
    lastModifiedDate: option<dateType>,
    creationDate: option<dateType>,
    description: option<templateDescription>,
    templateName: option<templateName>,
    templateArn: option<templateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeProvisioningTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDimension = {
  type t
  type request = {name: dimensionName}
  type response = {
    lastModifiedDate: option<timestamp_>,
    creationDate: option<timestamp_>,
    stringValues: option<dimensionStringValues>,
    @as("type") type_: option<dimensionType>,
    arn: option<dimensionArn>,
    name: option<dimensionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeDimensionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBillingGroup = {
  type t
  type request = {billingGroupName: billingGroupName}
  type response = {
    billingGroupMetadata: option<billingGroupMetadata>,
    billingGroupProperties: option<billingGroupProperties>,
    version: option<version>,
    billingGroupArn: option<billingGroupArn>,
    billingGroupId: option<billingGroupId>,
    billingGroupName: option<billingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeBillingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProvisioningClaim = {
  type t
  type request = {templateName: templateName}
  type response = {
    expiration: option<dateType>,
    keyPair: option<keyPair>,
    certificatePem: option<certificatePem>,
    certificateId: option<certificateId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateProvisioningClaimCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKeysAndCertificate = {
  type t
  type request = {setAsActive: option<setAsActive>}
  type response = {
    keyPair: option<keyPair>,
    certificatePem: option<certificatePem>,
    certificateId: option<certificateId>,
    certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateKeysAndCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CancelJobExecution = {
  type t
  type request = {
    statusDetails: option<detailsMap>,
    expectedVersion: option<expectedVersion>,
    force: option<forceFlag>,
    thingName: thingName,
    jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "CancelJobExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateTargetsWithJob = {
  type t
  type request = {
    namespaceId: option<namespaceId>,
    comment: option<comment>,
    jobId: jobId,
    targets: jobTargets,
  }
  type response = {
    description: option<jobDescription>,
    jobId: option<jobId>,
    jobArn: option<jobArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "AssociateTargetsWithJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateThing = {
  type t
  type request = {
    removeThingType: option<removeThingType>,
    expectedVersion: option<optionalVersion>,
    attributePayload: option<attributePayload>,
    thingTypeName: option<thingTypeName>,
    thingName: thingName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEventConfigurations = {
  type t
  type request = {eventConfigurations: option<eventConfigurations>}
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateEventConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAuditSuppression = {
  type t
  type request = {
    description: option<auditDescription>,
    suppressIndefinitely: option<suppressIndefinitely>,
    expirationDate: option<timestamp_>,
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateAuditSuppressionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAccountAuditConfiguration = {
  type t
  type request = {
    auditCheckConfigurations: option<auditCheckConfigurations>,
    auditNotificationTargetConfigurations: option<auditNotificationTargetConfigurations>,
    roleArn: option<roleArn>,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateAccountAuditConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestInvokeAuthorizer = {
  type t
  type request = {
    tlsContext: option<tlsContext>,
    mqttContext: option<mqttContext>,
    httpContext: option<httpContext>,
    tokenSignature: option<tokenSignature>,
    token: option<token>,
    authorizerName: authorizerName,
  }
  type response = {
    disconnectAfterInSeconds: option<seconds>,
    refreshAfterInSeconds: option<seconds>,
    policyDocuments: option<policyDocuments>,
    principalId: option<principalId>,
    isAuthenticated: option<isAuthenticated>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "TestInvokeAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDetectMitigationActionsTask = {
  type t
  type request = {
    clientRequestToken: clientRequestToken,
    includeSuppressedAlerts: option<nullableBoolean>,
    includeOnlyActiveViolations: option<nullableBoolean>,
    violationEventOccurrenceRange: option<violationEventOccurrenceRange>,
    actions: detectMitigationActionsToExecuteList,
    target: detectMitigationActionsTaskTarget,
    taskId: mitigationActionsTaskId,
  }
  type response = {taskId: option<mitigationActionsTaskId>}
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StartDetectMitigationActionsTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterCACertificate = {
  type t
  type request = {
    tags: option<tagList_>,
    registrationConfig: option<registrationConfig>,
    allowAutoRegistration: option<allowAutoRegistration>,
    setAsActive: option<setAsActive>,
    verificationCertificate: certificatePem,
    caCertificate: certificatePem,
  }
  type response = {
    certificateId: option<certificateId>,
    certificateArn: option<certificateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "RegisterCACertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTopicRules = {
  type t
  type request = {
    ruleDisabled: option<isDisabled>,
    nextToken: option<nextToken>,
    maxResults: option<topicRuleMaxResults>,
    topic: option<topic>,
  }
  type response = {
    nextToken: option<nextToken>,
    rules: option<topicRuleList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListTopicRulesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingGroupsForThing = {
  type t
  type request = {
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
    thingName: thingName,
  }
  type response = {
    nextToken: option<nextToken>,
    thingGroups: option<thingGroupNameAndArnList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingGroupsForThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingGroups = {
  type t
  type request = {
    recursive: option<recursiveWithoutDefault>,
    namePrefixFilter: option<thingGroupName>,
    parentGroup: option<thingGroupName>,
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    thingGroups: option<thingGroupNameAndArnList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTargetsForSecurityProfile = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    securityProfileName: securityProfileName,
  }
  type response = {
    nextToken: option<nextToken>,
    securityProfileTargets: option<securityProfileTargets>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListTargetsForSecurityProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    nextToken: option<nextToken>,
    resourceArn: resourceArn,
  }
  type response = {
    nextToken: option<nextToken>,
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStreams = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    streams: option<streamsSummary>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListStreamsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityProfiles = {
  type t
  type request = {
    metricName: option<metricName>,
    dimensionName: option<dimensionName>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    securityProfileIdentifiers: option<securityProfileIdentifiers>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListSecurityProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListScheduledAudits = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    scheduledAudits: option<scheduledAuditMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListScheduledAuditsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisioningTemplates = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    templates: option<provisioningTemplateListing>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListProvisioningTemplatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisioningTemplateVersions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    templateName: templateName,
  }
  type response = {
    nextToken: option<nextToken>,
    versions: option<provisioningTemplateVersionListing>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListProvisioningTemplateVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrincipalPolicies = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    pageSize: option<pageSize>,
    marker: option<marker>,
    principal: principal,
  }
  type response = {
    nextMarker: option<marker>,
    policies: option<policies>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPrincipalPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicyVersions = {
  type t
  type request = {policyName: policyName}
  type response = {policyVersions: option<policyVersions>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPolicyVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicies = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    pageSize: option<pageSize>,
    marker: option<marker>,
  }
  type response = {
    nextMarker: option<marker>,
    policies: option<policies>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOutgoingCertificates = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    marker: option<marker>,
    pageSize: option<pageSize>,
  }
  type response = {
    nextMarker: option<marker>,
    outgoingCertificates: option<outgoingCertificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListOutgoingCertificatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOTAUpdates = {
  type t
  type request = {
    otaUpdateStatus: option<otaupdateStatus>,
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    otaUpdates: option<otaupdatesSummary>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListOTAUpdatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMitigationActions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    actionType: option<mitigationActionType>,
  }
  type response = {
    nextToken: option<nextToken>,
    actionIdentifiers: option<mitigationActionIdentifierList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListMitigationActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    namespaceId: option<namespaceId>,
    thingGroupId: option<thingGroupId>,
    thingGroupName: option<thingGroupName>,
    nextToken: option<nextToken>,
    maxResults: option<laserMaxResults>,
    targetSelection: option<targetSelection>,
    status: option<jobStatus>,
  }
  type response = {
    nextToken: option<nextToken>,
    jobs: option<jobSummaryList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobTemplates = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<laserMaxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    jobTemplates: option<jobTemplateSummaryList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListJobTemplatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDomainConfigurations = {
  type t
  type request = {
    serviceType: option<serviceType>,
    pageSize: option<pageSize>,
    marker: option<marker>,
  }
  type response = {
    nextMarker: option<marker>,
    domainConfigurations: option<domainConfigurations>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListDomainConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectMitigationActionsExecutions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    endTime: option<timestamp_>,
    startTime: option<timestamp_>,
    thingName: option<deviceDefenderThingName>,
    violationId: option<violationId>,
    taskId: option<mitigationActionsTaskId>,
  }
  type response = {
    nextToken: option<nextToken>,
    actionsExecutions: option<detectMitigationActionExecutionList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListDetectMitigationActionsExecutionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCertificatesByCA = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    marker: option<marker>,
    pageSize: option<pageSize>,
    caCertificateId: certificateId,
  }
  type response = {
    nextMarker: option<marker>,
    certificates: option<certificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCertificatesByCACommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCertificates = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    marker: option<marker>,
    pageSize: option<pageSize>,
  }
  type response = {
    nextMarker: option<marker>,
    certificates: option<certificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCertificatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListCACertificates = {
  type t
  type request = {
    ascendingOrder: option<ascendingOrder>,
    marker: option<marker>,
    pageSize: option<pageSize>,
  }
  type response = {
    nextMarker: option<marker>,
    certificates: option<cacertificates>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListCACertificatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBillingGroups = {
  type t
  type request = {
    namePrefixFilter: option<billingGroupName>,
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    billingGroups: option<billingGroupNameAndArnList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListBillingGroupsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuthorizers = {
  type t
  type request = {
    status: option<authorizerStatus>,
    ascendingOrder: option<ascendingOrder>,
    marker: option<marker>,
    pageSize: option<pageSize>,
  }
  type response = {
    nextMarker: option<marker>,
    authorizers: option<authorizers>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuthorizersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditTasks = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    taskStatus: option<auditTaskStatus>,
    taskType: option<auditTaskType>,
    endTime: timestamp_,
    startTime: timestamp_,
  }
  type response = {
    nextToken: option<nextToken>,
    tasks: option<auditTaskMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuditTasksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditMitigationActionsTasks = {
  type t
  type request = {
    endTime: timestamp_,
    startTime: timestamp_,
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    taskStatus: option<auditMitigationActionsTaskStatus>,
    findingId: option<findingId>,
    auditTaskId: option<auditTaskId>,
  }
  type response = {
    nextToken: option<nextToken>,
    tasks: option<auditMitigationActionsTaskMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListAuditMitigationActionsTasksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditMitigationActionsExecutions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    findingId: findingId,
    actionStatus: option<auditMitigationActionsExecutionStatus>,
    taskId: mitigationActionsTaskId,
  }
  type response = {
    nextToken: option<nextToken>,
    actionsExecutions: option<auditMitigationActionExecutionMetadataList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListAuditMitigationActionsExecutionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAttachedPolicies = {
  type t
  type request = {
    pageSize: option<pageSize>,
    marker: option<marker>,
    recursive: option<recursive>,
    target: policyTarget,
  }
  type response = {
    nextMarker: option<marker>,
    policies: option<policies>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAttachedPoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPercentiles = {
  type t
  type request = {
    percents: option<percentList>,
    queryVersion: option<queryVersion>,
    aggregationField: option<aggregationField>,
    queryString: queryString,
    indexName: option<indexName>,
  }
  type response = {percentiles: option<percentiles>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetPercentilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEffectivePolicies = {
  type t
  type request = {
    thingName: option<thingName>,
    cognitoIdentityPoolId: option<cognitoIdentityPoolId>,
    principal: option<principal>,
  }
  type response = {effectivePolicies: option<effectivePolicies>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetEffectivePoliciesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBehaviorModelTrainingSummaries = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<tinyMaxResults>,
    securityProfileName: option<securityProfileName>,
  }
  type response = {
    nextToken: option<nextToken>,
    summaries: option<behaviorModelTrainingSummaries>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "GetBehaviorModelTrainingSummariesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThingType = {
  type t
  type request = {thingTypeName: thingTypeName}
  type response = {
    thingTypeMetadata: option<thingTypeMetadata>,
    thingTypeProperties: option<thingTypeProperties>,
    thingTypeArn: option<thingTypeArn>,
    thingTypeId: option<thingTypeId>,
    thingTypeName: option<thingTypeName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeThingTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventConfigurations = {
  type t
  type request = unit
  type response = {
    lastModifiedDate: option<lastModifiedDate>,
    creationDate: option<creationDate>,
    eventConfigurations: option<eventConfigurations>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeEventConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDomainConfiguration = {
  type t
  type request = {domainConfigurationName: reservedDomainConfigurationName}
  type response = {
    lastStatusChangeDate: option<dateType>,
    domainType: option<domainType>,
    serviceType: option<serviceType>,
    domainConfigurationStatus: option<domainConfigurationStatus>,
    authorizerConfig: option<authorizerConfig>,
    serverCertificates: option<serverCertificates>,
    domainName: option<domainName>,
    domainConfigurationArn: option<domainConfigurationArn>,
    domainConfigurationName: option<reservedDomainConfigurationName>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeDomainConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDefaultAuthorizer = {
  type t
  type request = unit
  type response = {authorizerDescription: option<authorizerDescription>}
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeDefaultAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCertificate = {
  type t
  type request = {certificateId: certificateId}
  type response = {certificateDescription: option<certificateDescription>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeCertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCACertificate = {
  type t
  type request = {certificateId: certificateId}
  type response = {
    registrationConfig: option<registrationConfig>,
    certificateDescription: option<cacertificateDescription>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeCACertificateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuthorizer = {
  type t
  type request = {authorizerName: authorizerName}
  type response = {authorizerDescription: option<authorizerDescription>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditTask = {
  type t
  type request = {taskId: auditTaskId}
  type response = {
    auditDetails: option<auditDetails>,
    scheduledAuditName: option<scheduledAuditName>,
    taskStatistics: option<taskStatistics>,
    taskStartTime: option<timestamp_>,
    taskType: option<auditTaskType>,
    taskStatus: option<auditTaskStatus>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuditTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditSuppression = {
  type t
  type request = {
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }
  type response = {
    description: option<auditDescription>,
    suppressIndefinitely: option<suppressIndefinitely>,
    expirationDate: option<timestamp_>,
    resourceIdentifier: option<resourceIdentifier>,
    checkName: option<auditCheckName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuditSuppressionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAccountAuditConfiguration = {
  type t
  type request = unit
  type response = {
    auditCheckConfigurations: option<auditCheckConfigurations>,
    auditNotificationTargetConfigurations: option<auditNotificationTargetConfigurations>,
    roleArn: option<roleArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeAccountAuditConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAuditSuppression = {
  type t
  type request = {
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "DeleteAuditSuppressionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThingType = {
  type t
  type request = {
    tags: option<tagList_>,
    thingTypeProperties: option<thingTypeProperties>,
    thingTypeName: thingTypeName,
  }
  type response = {
    thingTypeId: option<thingTypeId>,
    thingTypeArn: option<thingTypeArn>,
    thingTypeName: option<thingTypeName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateThingTypeCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThing = {
  type t
  type request = {
    billingGroupName: option<billingGroupName>,
    attributePayload: option<attributePayload>,
    thingTypeName: option<thingTypeName>,
    thingName: thingName,
  }
  type response = {
    thingId: option<thingId>,
    thingArn: option<thingArn>,
    thingName: option<thingName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScheduledAudit = {
  type t
  type request = {
    tags: option<tagList_>,
    scheduledAuditName: scheduledAuditName,
    targetCheckNames: targetAuditCheckNames,
    dayOfWeek: option<dayOfWeek>,
    dayOfMonth: option<dayOfMonth>,
    frequency: auditFrequency,
  }
  type response = {scheduledAuditArn: option<scheduledAuditArn>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateScheduledAuditCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRoleAlias = {
  type t
  type request = {
    tags: option<tagList_>,
    credentialDurationSeconds: option<credentialDurationSeconds>,
    roleArn: roleArn,
    roleAlias: roleAlias,
  }
  type response = {
    roleAliasArn: option<roleAliasArn>,
    roleAlias: option<roleAlias>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateRoleAliasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProvisioningTemplate = {
  type t
  type request = {
    tags: option<tagList_>,
    preProvisioningHook: option<provisioningHook>,
    provisioningRoleArn: roleArn,
    enabled: option<enabled>,
    templateBody: templateBody,
    description: option<templateDescription>,
    templateName: templateName,
  }
  type response = {
    defaultVersionId: option<templateVersionId>,
    templateName: option<templateName>,
    templateArn: option<templateArn>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateProvisioningTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePolicy = {
  type t
  type request = {
    tags: option<tagList_>,
    policyDocument: policyDocument,
    policyName: policyName,
  }
  type response = {
    policyVersionId: option<policyVersionId>,
    policyDocument: option<policyDocument>,
    policyArn: option<policyArn>,
    policyName: option<policyName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreatePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomainConfiguration = {
  type t
  type request = {
    tags: option<tagList_>,
    serviceType: option<serviceType>,
    authorizerConfig: option<authorizerConfig>,
    validationCertificateArn: option<acmCertificateArn>,
    serverCertificateArns: option<serverCertificateArns>,
    domainName: option<domainName>,
    domainConfigurationName: domainConfigurationName,
  }
  type response = {
    domainConfigurationArn: option<domainConfigurationArn>,
    domainConfigurationName: option<domainConfigurationName>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateDomainConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDimension = {
  type t
  type request = {
    clientRequestToken: clientRequestToken,
    tags: option<tagList_>,
    stringValues: dimensionStringValues,
    @as("type") type_: dimensionType,
    name: dimensionName,
  }
  type response = {
    arn: option<dimensionArn>,
    name: option<dimensionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateDimensionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCustomMetric = {
  type t
  type request = {
    clientRequestToken: clientRequestToken,
    tags: option<tagList_>,
    metricType: customMetricType,
    displayName: option<customMetricDisplayName>,
    metricName: metricName,
  }
  type response = {
    metricArn: option<customMetricArn>,
    metricName: option<metricName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateCustomMetricCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBillingGroup = {
  type t
  type request = {
    tags: option<tagList_>,
    billingGroupProperties: option<billingGroupProperties>,
    billingGroupName: billingGroupName,
  }
  type response = {
    billingGroupId: option<billingGroupId>,
    billingGroupArn: option<billingGroupArn>,
    billingGroupName: option<billingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateBillingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAuthorizer = {
  type t
  type request = {
    signingDisabled: option<booleanKey>,
    tags: option<tagList_>,
    status: option<authorizerStatus>,
    tokenSigningPublicKeys: option<publicKeyMap>,
    tokenKeyName: option<tokenKeyName>,
    authorizerFunctionArn: authorizerFunctionArn,
    authorizerName: authorizerName,
  }
  type response = {
    authorizerArn: option<authorizerArn>,
    authorizerName: option<authorizerName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateAuthorizerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAuditSuppression = {
  type t
  type request = {
    clientRequestToken: clientRequestToken,
    description: option<auditDescription>,
    suppressIndefinitely: option<suppressIndefinitely>,
    expirationDate: option<timestamp_>,
    resourceIdentifier: resourceIdentifier,
    checkName: auditCheckName,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateAuditSuppressionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateThingGroup = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    thingGroupProperties: thingGroupProperties,
    thingGroupName: thingGroupName,
  }
  type response = {version: option<version>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateStream = {
  type t
  type request = {
    roleArn: option<roleArn>,
    files: option<streamFiles>,
    description: option<streamDescription>,
    streamId: streamId,
  }
  type response = {
    streamVersion: option<streamVersion>,
    description: option<streamDescription>,
    streamArn: option<streamArn>,
    streamId: option<streamId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMitigationAction = {
  type t
  type request = {
    actionParams: option<mitigationActionParams>,
    roleArn: option<roleArn>,
    actionName: mitigationActionName,
  }
  type response = {
    actionId: option<mitigationActionId>,
    actionArn: option<mitigationActionArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateMitigationActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateJob = {
  type t
  type request = {
    namespaceId: option<namespaceId>,
    timeoutConfig: option<timeoutConfig>,
    abortConfig: option<abortConfig>,
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    presignedUrlConfig: option<presignedUrlConfig>,
    description: option<jobDescription>,
    jobId: jobId,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateIndexingConfiguration = {
  type t
  type request = {
    thingGroupIndexingConfiguration: option<thingGroupIndexingConfiguration>,
    thingIndexingConfiguration: option<thingIndexingConfiguration>,
  }
  type response = unit
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "UpdateIndexingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDynamicThingGroup = {
  type t
  type request = {
    queryVersion: option<queryVersion>,
    queryString: option<queryString>,
    indexName: option<indexName>,
    expectedVersion: option<optionalVersion>,
    thingGroupProperties: thingGroupProperties,
    thingGroupName: thingGroupName,
  }
  type response = {version: option<version>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateDynamicThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartAuditMitigationActionsTask = {
  type t
  type request = {
    clientRequestToken: clientRequestToken,
    auditCheckToActionsMapping: auditCheckToActionsMapping,
    target: auditMitigationActionsTaskTarget,
    taskId: mitigationActionsTaskId,
  }
  type response = {taskId: option<mitigationActionsTaskId>}
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "StartAuditMitigationActionsTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchIndex = {
  type t
  type request = {
    queryVersion: option<queryVersion>,
    maxResults: option<queryMaxResults>,
    nextToken: option<nextToken>,
    queryString: queryString,
    indexName: option<indexName>,
  }
  type response = {
    thingGroups: option<thingGroupDocumentList>,
    things: option<thingDocumentList>,
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "SearchIndexCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListV2LoggingLevels = {
  type t
  type request = {
    maxResults: option<skyfallMaxResults>,
    nextToken: option<nextToken>,
    targetType: option<logTargetType>,
  }
  type response = {
    nextToken: option<nextToken>,
    logTargetConfigurations: option<logTargetConfigurations>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListV2LoggingLevelsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThings = {
  type t
  type request = {
    usePrefixAttributeValue: option<usePrefixAttributeValue>,
    thingTypeName: option<thingTypeName>,
    attributeValue: option<attributeValue>,
    attributeName: option<attributeName>,
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    things: option<thingAttributeList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSecurityProfilesForTarget = {
  type t
  type request = {
    securityProfileTargetArn: securityProfileTargetArn,
    recursive: option<recursive>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    securityProfileTargetMappings: option<securityProfileTargetMappings>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListSecurityProfilesForTargetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobExecutionsForThing = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<laserMaxResults>,
    namespaceId: option<namespaceId>,
    status: option<jobExecutionStatus>,
    thingName: thingName,
  }
  type response = {
    nextToken: option<nextToken>,
    executionSummaries: option<jobExecutionSummaryForThingList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListJobExecutionsForThingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobExecutionsForJob = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<laserMaxResults>,
    status: option<jobExecutionStatus>,
    jobId: jobId,
  }
  type response = {
    nextToken: option<nextToken>,
    executionSummaries: option<jobExecutionSummaryForJobList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListJobExecutionsForJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTopicRuleDestination = {
  type t
  type request = {arn: awsArn}
  type response = {topicRuleDestination: option<topicRuleDestination>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetTopicRuleDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIndexingConfiguration = {
  type t
  type request = unit
  type response = {
    thingGroupIndexingConfiguration: option<thingGroupIndexingConfiguration>,
    thingIndexingConfiguration: option<thingIndexingConfiguration>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetIndexingConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeThingGroup = {
  type t
  type request = {thingGroupName: thingGroupName}
  type response = {
    status: option<dynamicGroupStatus>,
    queryVersion: option<queryVersion>,
    queryString: option<queryString>,
    indexName: option<indexName>,
    thingGroupMetadata: option<thingGroupMetadata>,
    thingGroupProperties: option<thingGroupProperties>,
    version: option<version>,
    thingGroupArn: option<thingGroupArn>,
    thingGroupId: option<thingGroupId>,
    thingGroupName: option<thingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMitigationAction = {
  type t
  type request = {actionName: mitigationActionName}
  type response = {
    lastModifiedDate: option<timestamp_>,
    creationDate: option<timestamp_>,
    actionParams: option<mitigationActionParams>,
    roleArn: option<roleArn>,
    actionId: option<mitigationActionId>,
    actionArn: option<mitigationActionArn>,
    actionType: option<mitigationActionType>,
    actionName: option<mitigationActionName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeMitigationActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobTemplate = {
  type t
  type request = {jobTemplateId: jobTemplateId}
  type response = {
    timeoutConfig: option<timeoutConfig>,
    abortConfig: option<abortConfig>,
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    presignedUrlConfig: option<presignedUrlConfig>,
    createdAt: option<dateType>,
    document: option<jobDocument>,
    documentSource: option<jobDocumentSource>,
    description: option<jobDescription>,
    jobTemplateId: option<jobTemplateId>,
    jobTemplateArn: option<jobTemplateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeJobTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJobExecution = {
  type t
  type request = {
    executionNumber: option<executionNumber>,
    thingName: thingName,
    jobId: jobId,
  }
  type response = {execution: option<jobExecution>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeJobExecutionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTopicRuleDestination = {
  type t
  type request = {destinationConfiguration: topicRuleDestinationConfiguration}
  type response = {topicRuleDestination: option<topicRuleDestination>}
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "CreateTopicRuleDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThingGroup = {
  type t
  type request = {
    tags: option<tagList_>,
    thingGroupProperties: option<thingGroupProperties>,
    parentGroupName: option<thingGroupName>,
    thingGroupName: thingGroupName,
  }
  type response = {
    thingGroupId: option<thingGroupId>,
    thingGroupArn: option<thingGroupArn>,
    thingGroupName: option<thingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateStream = {
  type t
  type request = {
    tags: option<tagList_>,
    roleArn: roleArn,
    files: streamFiles,
    description: option<streamDescription>,
    streamId: streamId,
  }
  type response = {
    streamVersion: option<streamVersion>,
    description: option<streamDescription>,
    streamArn: option<streamArn>,
    streamId: option<streamId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMitigationAction = {
  type t
  type request = {
    tags: option<tagList_>,
    actionParams: mitigationActionParams,
    roleArn: roleArn,
    actionName: mitigationActionName,
  }
  type response = {
    actionId: option<mitigationActionId>,
    actionArn: option<mitigationActionArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateMitigationActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJobTemplate = {
  type t
  type request = {
    tags: option<tagList_>,
    timeoutConfig: option<timeoutConfig>,
    abortConfig: option<abortConfig>,
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    presignedUrlConfig: option<presignedUrlConfig>,
    description: jobDescription,
    document: option<jobDocument>,
    documentSource: option<jobDocumentSource>,
    jobArn: option<jobArn>,
    jobTemplateId: jobTemplateId,
  }
  type response = {
    jobTemplateId: option<jobTemplateId>,
    jobTemplateArn: option<jobTemplateArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateJobTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateJob = {
  type t
  type request = {
    jobTemplateArn: option<jobTemplateArn>,
    namespaceId: option<namespaceId>,
    tags: option<tagList_>,
    timeoutConfig: option<timeoutConfig>,
    abortConfig: option<abortConfig>,
    jobExecutionsRolloutConfig: option<jobExecutionsRolloutConfig>,
    targetSelection: option<targetSelection>,
    presignedUrlConfig: option<presignedUrlConfig>,
    description: option<jobDescription>,
    document: option<jobDocument>,
    documentSource: option<jobDocumentSource>,
    targets: jobTargets,
    jobId: jobId,
  }
  type response = {
    description: option<jobDescription>,
    jobId: option<jobId>,
    jobArn: option<jobArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDynamicThingGroup = {
  type t
  type request = {
    tags: option<tagList_>,
    queryVersion: option<queryVersion>,
    queryString: queryString,
    indexName: option<indexName>,
    thingGroupProperties: option<thingGroupProperties>,
    thingGroupName: thingGroupName,
  }
  type response = {
    queryVersion: option<queryVersion>,
    queryString: option<queryString>,
    indexName: option<indexName>,
    thingGroupId: option<thingGroupId>,
    thingGroupArn: option<thingGroupArn>,
    thingGroupName: option<thingGroupName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateDynamicThingGroupCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTopicRuleDestinations = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<topicRuleDestinationMaxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    destinationSummaries: option<topicRuleDestinationSummaries>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListTopicRuleDestinationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThingTypes = {
  type t
  type request = {
    thingTypeName: option<thingTypeName>,
    maxResults: option<registryMaxResults>,
    nextToken: option<nextToken>,
  }
  type response = {
    nextToken: option<nextToken>,
    thingTypes: option<thingTypeList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListThingTypesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditSuppressions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    ascendingOrder: option<ascendingOrder>,
    resourceIdentifier: option<resourceIdentifier>,
    checkName: option<auditCheckName>,
  }
  type response = {
    nextToken: option<nextToken>,
    suppressions: option<auditSuppressionList>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuditSuppressionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStream = {
  type t
  type request = {streamId: streamId}
  type response = {streamInfo: option<streamInfo>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeStreamCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeJob = {
  type t
  type request = {jobId: jobId}
  type response = {
    job: option<job>,
    documentSource: option<jobDocumentSource>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ValidateSecurityProfileBehaviors = {
  type t
  type request = {behaviors: behaviors}
  type response = {
    validationErrors: option<validationErrors>,
    valid: option<valid>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ValidateSecurityProfileBehaviorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSecurityProfile = {
  type t
  type request = {
    expectedVersion: option<optionalVersion>,
    deleteAdditionalMetricsToRetain: option<deleteAdditionalMetricsToRetain>,
    deleteAlertTargets: option<deleteAlertTargets>,
    deleteBehaviors: option<deleteBehaviors>,
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    alertTargets: option<alertTargets>,
    behaviors: option<behaviors>,
    securityProfileDescription: option<securityProfileDescription>,
    securityProfileName: securityProfileName,
  }
  type response = {
    lastModifiedDate: option<timestamp_>,
    creationDate: option<timestamp_>,
    version: option<version>,
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    alertTargets: option<alertTargets>,
    behaviors: option<behaviors>,
    securityProfileDescription: option<securityProfileDescription>,
    securityProfileArn: option<securityProfileArn>,
    securityProfileName: option<securityProfileName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "UpdateSecurityProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSecurityProfile = {
  type t
  type request = {securityProfileName: securityProfileName}
  type response = {
    lastModifiedDate: option<timestamp_>,
    creationDate: option<timestamp_>,
    version: option<version>,
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    alertTargets: option<alertTargets>,
    behaviors: option<behaviors>,
    securityProfileDescription: option<securityProfileDescription>,
    securityProfileArn: option<securityProfileArn>,
    securityProfileName: option<securityProfileName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeSecurityProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditMitigationActionsTask = {
  type t
  type request = {taskId: mitigationActionsTaskId}
  type response = {
    actionsDefinition: option<mitigationActionList>,
    auditCheckToActionsMapping: option<auditCheckToActionsMapping>,
    target: option<auditMitigationActionsTaskTarget>,
    taskStatistics: option<auditMitigationActionsTaskStatistics>,
    endTime: option<timestamp_>,
    startTime: option<timestamp_>,
    taskStatus: option<auditMitigationActionsTaskStatus>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeAuditMitigationActionsTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAuditFinding = {
  type t
  type request = {findingId: findingId}
  type response = {finding: option<auditFinding>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "DescribeAuditFindingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSecurityProfile = {
  type t
  type request = {
    tags: option<tagList_>,
    additionalMetricsToRetainV2: option<additionalMetricsToRetainV2List>,
    additionalMetricsToRetain: option<additionalMetricsToRetainList>,
    alertTargets: option<alertTargets>,
    behaviors: option<behaviors>,
    securityProfileDescription: option<securityProfileDescription>,
    securityProfileName: securityProfileName,
  }
  type response = {
    securityProfileArn: option<securityProfileArn>,
    securityProfileName: option<securityProfileName>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateSecurityProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestAuthorization = {
  type t
  type request = {
    policyNamesToSkip: option<policyNames>,
    policyNamesToAdd: option<policyNames>,
    clientId: option<clientId>,
    authInfos: authInfos,
    cognitoIdentityPoolId: option<cognitoIdentityPoolId>,
    principal: option<principal>,
  }
  type response = {authResults: option<authResults>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "TestAuthorizationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListViolationEvents = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    listSuppressedAlerts: option<listSuppressedAlerts>,
    behaviorCriteriaType: option<behaviorCriteriaType>,
    securityProfileName: option<securityProfileName>,
    thingName: option<deviceDefenderThingName>,
    endTime: timestamp_,
    startTime: timestamp_,
  }
  type response = {
    nextToken: option<nextToken>,
    violationEvents: option<violationEvents>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListViolationEventsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAuditFindings = {
  type t
  type request = {
    listSuppressedFindings: option<listSuppressedFindings>,
    endTime: option<timestamp_>,
    startTime: option<timestamp_>,
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
    resourceIdentifier: option<resourceIdentifier>,
    checkName: option<auditCheckName>,
    taskId: option<auditTaskId>,
  }
  type response = {
    nextToken: option<nextToken>,
    findings: option<auditFindings>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListAuditFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActiveViolations = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    listSuppressedAlerts: option<listSuppressedAlerts>,
    behaviorCriteriaType: option<behaviorCriteriaType>,
    securityProfileName: option<securityProfileName>,
    thingName: option<deviceDefenderThingName>,
  }
  type response = {
    nextToken: option<nextToken>,
    activeViolations: option<activeViolations>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "ListActiveViolationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDetectMitigationActionsTask = {
  type t
  type request = {taskId: mitigationActionsTaskId}
  type response = {taskSummary: option<detectMitigationActionsTaskSummary>}
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "DescribeDetectMitigationActionsTaskCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateOTAUpdate = {
  type t
  type request = {
    tags: option<tagList_>,
    additionalParameters: option<additionalParameterMap>,
    roleArn: roleArn,
    files: otaupdateFiles,
    awsJobTimeoutConfig: option<awsJobTimeoutConfig>,
    awsJobAbortConfig: option<awsJobAbortConfig>,
    awsJobPresignedUrlConfig: option<awsJobPresignedUrlConfig>,
    awsJobExecutionsRolloutConfig: option<awsJobExecutionsRolloutConfig>,
    targetSelection: option<targetSelection>,
    protocols: option<protocols>,
    targets: targets,
    description: option<otaupdateDescription>,
    otaUpdateId: otaupdateId,
  }
  type response = {
    otaUpdateStatus: option<otaupdateStatus>,
    awsIotJobArn: option<awsIotJobArn>,
    otaUpdateArn: option<otaupdateArn>,
    awsIotJobId: option<awsIotJobId>,
    otaUpdateId: option<otaupdateId>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateOTAUpdateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectMitigationActionsTasks = {
  type t
  type request = {
    endTime: timestamp_,
    startTime: timestamp_,
    nextToken: option<nextToken>,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    tasks: option<detectMitigationActionsTaskSummaryList>,
  }
  @module("@aws-sdk/client-iot") @new
  external new: request => t = "ListDetectMitigationActionsTasksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOTAUpdate = {
  type t
  type request = {otaUpdateId: otaupdateId}
  type response = {otaUpdateInfo: option<otaupdateInfo>}
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetOTAUpdateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReplaceTopicRule = {
  type t
  type request = {
    topicRulePayload: topicRulePayload,
    ruleName: ruleName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "ReplaceTopicRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetTopicRule = {
  type t
  type request = {ruleName: ruleName}
  type response = {
    rule: option<topicRule>,
    ruleArn: option<ruleArn>,
  }
  @module("@aws-sdk/client-iot") @new external new: request => t = "GetTopicRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTopicRule = {
  type t
  type request = {
    tags: option<string_>,
    topicRulePayload: topicRulePayload,
    ruleName: ruleName,
  }

  @module("@aws-sdk/client-iot") @new external new: request => t = "CreateTopicRuleCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
