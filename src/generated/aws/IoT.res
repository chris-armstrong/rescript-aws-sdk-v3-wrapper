type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type usePrefixAttributeValue = bool;
type stringValue = string
type resourceId = string
type waitingForDataCollectionChecksCount = int;
type vpcId = string
type violationId = string
type violationEventType = [@as("alarm-invalidated") #alarm_invalidated | @as("alarm-cleared") #alarm_cleared | @as("in-alarm") #in_alarm]
type versionNumber = float;
type version = float;
type variance = float;
type value = string
type valid = bool;
type useBase64 = bool;
type url = string
type unsignedLong = float;
type undoDeprecate = bool;
type totalResourcesCount = float;
type totalFindingsCount = float;
type totalChecksCount = int;
type topicRuleMaxResults = int;
type topicRuleDestinationStatus = [@as("DELETING") #DELETING | @as("ERROR") #ERROR | @as("DISABLED") #DISABLED | @as("IN_PROGRESS") #IN_PROGRESS | @as("ENABLED") #ENABLED]
type topicRuleDestinationMaxResults = int;
type topicPattern = string
type topic = string
type tokenSignature = string
type tokenKeyName = string
type token = string
type tinyMaxResults = int;
type timestreamTimestampValue = string
type timestreamTimestampUnit = string
type timestreamTableName = string
type timestreamDimensionValue = string
type timestreamDimensionName = string
type timestreamDatabaseName = string
type amazonawsTimestamp = Js.Date.t;
type timedOutThings = int;
type thingTypeName = string
type thingTypeId = string
type thingTypeDescription = string
type thingTypeArn = string
type thingName = string
type thingIndexingMode = [@as("REGISTRY_AND_SHADOW") #REGISTRY_AND_SHADOW | @as("REGISTRY") #REGISTRY | @as("OFF") #OFF]
type thingId = string
type thingGroupName = string
type thingGroupIndexingMode = [@as("ON") #ON | @as("OFF") #OFF]
type thingGroupId = string
type thingGroupDescription = string
type thingGroupArn = string
type thingConnectivityIndexingMode = [@as("STATUS") #STATUS | @as("OFF") #OFF]
type thingArn = string
type templateVersionId = int;
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
type suppressedNonCompliantResourcesCount = float;
type suppressIndefinitely = bool;
type suppressAlerts = bool;
type sumOfSquares = float;
type sum = float;
type succeededThings = int;
type succeededFindingsCount = float;
type subnetId = string
type amazonawsString = string
type streamVersion = int;
type streamName = string
type streamId = string
type streamDescription = string
type streamArn = string
type stdDeviation = float;
type status = [@as("Cancelling") #Cancelling | @as("Cancelled") #Cancelled | @as("Failed") #Failed | @as("Completed") #Completed | @as("InProgress") #InProgress]
type stateValue = string
type stateReason = string
type stateMachineName = string
type snsTopicArn = string
type skyfallMaxResults = int;
type skippedFindingsCount = float;
type signingRegion = string
type signingProfileName = string
type signingJobId = string
type signatureAlgorithm = string
type signature = NodeJs.Buffer.t;
type setAsDefault = bool;
type setAsActiveFlag = bool;
type setAsActive = bool;
type serviceType = [@as("JOBS") #JOBS | @as("CREDENTIAL_PROVIDER") #CREDENTIAL_PROVIDER | @as("DATA") #DATA]
type serviceName = string
type serverName = string
type serverCertificateStatusDetail = string
type serverCertificateStatus = [@as("VALID") #VALID | @as("INVALID") #INVALID]
type securityProfileTargetArn = string
type securityProfileName = string
type securityProfileDescription = string
type securityProfileArn = string
type securityGroupId = string
type seconds = int;
type scheduledAuditName = string
type scheduledAuditArn = string
type salesforceToken = string
type salesforceEndpoint = string
type sQL = string
type s3Version = string
type s3Key = string
type s3FileUrl = string
type s3Bucket = string
type ruleName = string
type ruleArn = string
type rolloutRatePerMinute = int;
type roleArn = string
type roleAliasArn = string
type roleAlias = string
type resourceType = [@as("IAM_ROLE") #IAM_ROLE | @as("ROLE_ALIAS") #ROLE_ALIAS | @as("ACCOUNT_SETTINGS") #ACCOUNT_SETTINGS | @as("CLIENT_ID") #CLIENT_ID | @as("COGNITO_IDENTITY_POOL") #COGNITO_IDENTITY_POOL | @as("IOT_POLICY") #IOT_POLICY | @as("CA_CERTIFICATE") #CA_CERTIFICATE | @as("DEVICE_CERTIFICATE") #DEVICE_CERTIFICATE]
type resourceLogicalId = string
type resourceArn = string
type resource = string
type reservedDomainConfigurationName = string
type reportType = [@as("RESULTS") #RESULTS | @as("ERRORS") #ERRORS]
type removedThings = int;
type removeThingType = bool;
type removeHook = bool;
type removeAutoRegistration = bool;
type removeAuthorizerConfig = bool;
type rejectedThings = int;
type registryS3KeyName = string
type registryS3BucketName = string
type registryMaxResults = int;
type registrationCode = string
type recursiveWithoutDefault = bool;
type recursive = bool;
type reasonForNonComplianceCode = string
type reasonForNonCompliance = string
type reasonCode = string
type rangeKeyValue = string
type rangeKeyField = string
type queuedThings = int;
type queueUrl = string
type queryVersion = string
type queryString = string
type queryMaxResults = int;
type qos = int;
type publicKey = string
type protocol = [@as("HTTP") #HTTP | @as("MQTT") #MQTT]
type processingTargetName = string
type privateKey = string
type principalId = string
type principalArn = string
type principal = string
type primitiveBoolean = bool;
type prefix = string
type port = int;
type policyVersionId = string
type policyTemplateName = [@as("BLANK_POLICY") #BLANK_POLICY]
type policyTarget = string
type policyName = string
type policyDocument = string
type policyArn = string
type platform = string
type percentage = int;
type percentValue = float;
type percent = float;
type payloadVersion = string
type payloadField = string
type partitionKey = string
type parameter = string
type pageSize = int;
type overrideDynamicGroups = bool;
type optionalVersion = float;
type oTAUpdateStatus = [@as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_COMPLETE") #CREATE_COMPLETE | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS | @as("CREATE_PENDING") #CREATE_PENDING]
type oTAUpdateId = string
type oTAUpdateFileVersion = string
type oTAUpdateErrorMessage = string
type oTAUpdateDescription = string
type oTAUpdateArn = string
type numberOfThings = int;
type number = float;
type nullableBoolean = bool;
type nonCompliantResourcesCount = float;
type nonCompliantChecksCount = int;
type nextToken = string
type namespaceId = string
type mqttUsername = string
type mqttPassword = NodeJs.Buffer.t;
type mqttClientId = string
type modelStatus = [@as("EXPIRED") #EXPIRED | @as("ACTIVE") #ACTIVE | @as("PENDING_BUILD") #PENDING_BUILD]
type mitigationActionsTaskId = string
type mitigationActionType = [@as("PUBLISH_FINDING_TO_SNS") #PUBLISH_FINDING_TO_SNS | @as("ENABLE_IOT_LOGGING") #ENABLE_IOT_LOGGING | @as("REPLACE_DEFAULT_POLICY_VERSION") #REPLACE_DEFAULT_POLICY_VERSION | @as("ADD_THINGS_TO_THING_GROUP") #ADD_THINGS_TO_THING_GROUP | @as("UPDATE_CA_CERTIFICATE") #UPDATE_CA_CERTIFICATE | @as("UPDATE_DEVICE_CERTIFICATE") #UPDATE_DEVICE_CERTIFICATE]
type mitigationActionName = string
type mitigationActionId = string
type mitigationActionArn = string
type missingContextValue = string
type minimumNumberOfExecutedThings = int;
type minimum = float;
type metricName = string
type messageId = string
type messageFormat = [@as("JSON") #JSON | @as("RAW") #RAW]
type message = string
type maximumPerMinute = int;
type maximum = float;
type maxResults = int;
type maxJobExecutionsPerMin = int;
type marker = string
type logTargetType = [@as("THING_GROUP") #THING_GROUP | @as("DEFAULT") #DEFAULT]
type logTargetName = string
type logLevel = [@as("DISABLED") #DISABLED | @as("WARN") #WARN | @as("ERROR") #ERROR | @as("INFO") #INFO | @as("DEBUG") #DEBUG]
type logGroupName = string
type listSuppressedFindings = bool;
type listSuppressedAlerts = bool;
type lastUpdatedAtDate = Js.Date.t;
type lastModifiedDate = Js.Date.t;
type laserMaxResults = int;
type keyValue = string
type keyName = string
type key = string
type jsonDocument = string
type jobTemplateId = string
type jobTemplateArn = string
type jobStatus = [@as("DELETION_IN_PROGRESS") #DELETION_IN_PROGRESS | @as("COMPLETED") #COMPLETED | @as("CANCELED") #CANCELED | @as("IN_PROGRESS") #IN_PROGRESS]
type jobId = string
type jobExecutionStatus = [@as("CANCELED") #CANCELED | @as("REMOVED") #REMOVED | @as("REJECTED") #REJECTED | @as("TIMED_OUT") #TIMED_OUT | @as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("QUEUED") #QUEUED]
type jobExecutionFailureType = [@as("ALL") #ALL | @as("TIMED_OUT") #TIMED_OUT | @as("REJECTED") #REJECTED | @as("FAILED") #FAILED]
type jobDocumentSource = string
type jobDocument = string
type jobDescription = string
type jobArn = string
type isSuppressed = bool;
type isDisabled = bool;
type isDefaultVersion = bool;
type isAuthenticated = bool;
type inputName = string
type inlineDocument = string
type indexStatus = [@as("REBUILDING") #REBUILDING | @as("BUILDING") #BUILDING | @as("ACTIVE") #ACTIVE]
type indexSchema = string
type indexName = string
type incrementFactor = float;
type inProgressTimeoutInMinutes = float;
type inProgressThings = int;
type inProgressChecksCount = int;
type httpQueryString = string
type httpHeaderValue = string
type httpHeaderName = string
type headerValue = string
type headerKey = string
type hashKeyValue = string
type hashKeyField = string
type hashAlgorithm = string
type genericLongValue = float;
type generationId = string
type functionArn = string
type forced = bool;
type forceFlag = bool;
type forceDeleteAWSJob = bool;
type forceDelete = bool;
type flag = bool;
type firehoseSeparator = string
type findingId = string
type fileType = int;
type fileName = string
type fileId = int;
type fieldType = [@as("Boolean") #Boolean | @as("String") #String | @as("Number") #Number]
type fieldName = string
type failedThings = int;
type failedFindingsCount = float;
type failedChecksCount = int;
type expiresInSeconds = float;
type expiresInSec = float;
type expectedVersion = float;
type executionNumber = float;
type executionNamePrefix = string
type eventType = [@as("CA_CERTIFICATE") #CA_CERTIFICATE | @as("CERTIFICATE") #CERTIFICATE | @as("POLICY") #POLICY | @as("JOB_EXECUTION") #JOB_EXECUTION | @as("JOB") #JOB | @as("THING_TYPE_ASSOCIATION") #THING_TYPE_ASSOCIATION | @as("THING_GROUP_HIERARCHY") #THING_GROUP_HIERARCHY | @as("THING_GROUP_MEMBERSHIP") #THING_GROUP_MEMBERSHIP | @as("THING_TYPE") #THING_TYPE | @as("THING_GROUP") #THING_GROUP | @as("THING") #THING]
type evaluationStatistic = string
type errorMessage2 = string
type errorMessage = string
type errorCode = string
type endpointType = string
type endpointAddress = string
type enabled = bool;
type elasticsearchType = string
type elasticsearchIndex = string
type elasticsearchId = string
type elasticsearchEndpoint = string
type dynamoOperation = string
type dynamoKeyType = [@as("NUMBER") #NUMBER | @as("STRING") #STRING]
type dynamicGroupStatus = [@as("REBUILDING") #REBUILDING | @as("BUILDING") #BUILDING | @as("ACTIVE") #ACTIVE]
type durationSeconds = int;
type domainType = [@as("CUSTOMER_MANAGED") #CUSTOMER_MANAGED | @as("AWS_MANAGED") #AWS_MANAGED | @as("ENDPOINT") #ENDPOINT]
type domainName = string
type domainConfigurationStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type domainConfigurationName = string
type domainConfigurationArn = string
type disableAllLogs = bool;
type dimensionValueOperator = [@as("NOT_IN") #NOT_IN | @as("IN") #IN]
type dimensionType = [@as("TOPIC_FILTER") #TOPIC_FILTER]
type dimensionStringValue = string
type dimensionName = string
type dimensionArn = string
type deviceDefenderThingName = string
type deviceCertificateUpdateAction = [@as("DEACTIVATE") #DEACTIVATE]
type detectMitigationActionsTaskStatus = [@as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("SUCCESSFUL") #SUCCESSFUL | @as("IN_PROGRESS") #IN_PROGRESS]
type detectMitigationActionExecutionStatus = [@as("SKIPPED") #SKIPPED | @as("FAILED") #FAILED | @as("SUCCESSFUL") #SUCCESSFUL | @as("IN_PROGRESS") #IN_PROGRESS]
type detectMitigationActionExecutionErrorCode = string
type detailsValue = string
type detailsKey = string
type description = string
type deprecationDate = Js.Date.t;
type deliveryStreamName = string
type deleteStream_ = bool;
type deleteScheduledAudits = bool;
type deleteBehaviors = bool;
type deleteAlertTargets = bool;
type deleteAdditionalMetricsToRetain = bool;
type dayOfWeek = [@as("SAT") #SAT | @as("FRI") #FRI | @as("THU") #THU | @as("WED") #WED | @as("TUE") #TUE | @as("MON") #MON | @as("SUN") #SUN]
type dayOfMonth = string
type dateType = Js.Date.t;
type dataCollectionPercentage = float;
type customerVersion = int;
type customMetricType = [@as("number") #number | @as("number-list") #number_list | @as("ip-address-list") #ip_address_list | @as("string-list") #string_list]
type customMetricDisplayName = string
type customMetricArn = string
type credentialDurationSeconds = int;
type creationDate = Js.Date.t;
type createdAtDate = Js.Date.t;
type count = int;
type consecutiveDatapointsToClear = int;
type consecutiveDatapointsToAlarm = int;
type connectivityTimestamp = float;
type confirmationToken = string
type confidenceLevel = [@as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type compliantChecksCount = int;
type comparisonOperator = [@as("not-in-set") #not_in_set | @as("in-set") #in_set | @as("not-in-port-set") #not_in_port_set | @as("in-port-set") #in_port_set | @as("not-in-cidr-set") #not_in_cidr_set | @as("in-cidr-set") #in_cidr_set | @as("greater-than-equals") #greater_than_equals | @as("greater-than") #greater_than | @as("less-than-equals") #less_than_equals | @as("less-than") #less_than]
type comment = string
type cognitoIdentityPoolId = string
type code = string
type clientRequestToken = string
type clientId = string
type cidr = string
type checkCompliant = bool;
type channelName = string
type certificateStatus = [@as("PENDING_ACTIVATION") #PENDING_ACTIVATION | @as("REGISTER_INACTIVE") #REGISTER_INACTIVE | @as("PENDING_TRANSFER") #PENDING_TRANSFER | @as("REVOKED") #REVOKED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type certificateSigningRequest = string
type certificatePem = string
type certificatePathOnDevice = string
type certificateName = string
type certificateMode = [@as("SNI_ONLY") #SNI_ONLY | @as("DEFAULT") #DEFAULT]
type certificateId = string
type certificateArn = string
type cannedAccessControlList = [@as("log-delivery-write") #log_delivery_write | @as("bucket-owner-full-control") #bucket_owner_full_control | @as("bucket-owner-read") #bucket_owner_read | @as("authenticated-read") #authenticated_read | @as("aws-exec-read") #aws_exec_read | @as("public-read-write") #public_read_write | @as("public-read") #public_read | @as("private") #private]
type canceledThings = int;
type canceledFindingsCount = float;
type canceledChecksCount = int;
type cACertificateUpdateAction = [@as("DEACTIVATE") #DEACTIVATE]
type cACertificateStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type bucketName = string
type booleanKey = bool;
type amazonawsBoolean = bool;
type billingGroupName = string
type billingGroupId = string
type billingGroupDescription = string
type billingGroupArn = string
type behaviorName = string
type behaviorMetric = string
type behaviorCriteriaType = [@as("MACHINE_LEARNING") #MACHINE_LEARNING | @as("STATISTICAL") #STATISTICAL | @as("STATIC") #STATIC]
type batchMode = bool;
type awsJobTimeoutInProgressTimeoutInMinutes = float;
type awsJobRolloutRatePerMinute = int;
type awsJobRolloutIncrementFactor = float;
type awsJobRateIncreaseCriteriaNumberOfThings = int;
type awsJobAbortCriteriaMinimumNumberOfExecutedThings = int;
type awsJobAbortCriteriaFailureType = [@as("ALL") #ALL | @as("TIMED_OUT") #TIMED_OUT | @as("REJECTED") #REJECTED | @as("FAILED") #FAILED]
type awsJobAbortCriteriaAbortThresholdPercentage = float;
type awsJobAbortCriteriaAbortAction = [@as("CANCEL") #CANCEL]
type awsIotSqlVersion = string
type awsIotJobId = string
type awsIotJobArn = string
type awsArn = string
type awsAccountId = string
type average = float;
type autoRegistrationStatus = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type authorizerStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type authorizerName = string
type authorizerFunctionArn = string
type authorizerArn = string
type authDecision = [@as("IMPLICIT_DENY") #IMPLICIT_DENY | @as("EXPLICIT_DENY") #EXPLICIT_DENY | @as("ALLOWED") #ALLOWED]
type auditTaskType = [@as("SCHEDULED_AUDIT_TASK") #SCHEDULED_AUDIT_TASK | @as("ON_DEMAND_AUDIT_TASK") #ON_DEMAND_AUDIT_TASK]
type auditTaskStatus = [@as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type auditTaskId = string
type auditNotificationType = [@as("SNS") #SNS]
type auditMitigationActionsTaskStatus = [@as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type auditMitigationActionsExecutionStatus = [@as("PENDING") #PENDING | @as("SKIPPED") #SKIPPED | @as("CANCELED") #CANCELED | @as("FAILED") #FAILED | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS]
type auditFrequency = [@as("MONTHLY") #MONTHLY | @as("BIWEEKLY") #BIWEEKLY | @as("WEEKLY") #WEEKLY | @as("DAILY") #DAILY]
type auditFindingSeverity = [@as("LOW") #LOW | @as("MEDIUM") #MEDIUM | @as("HIGH") #HIGH | @as("CRITICAL") #CRITICAL]
type auditDescription = string
type auditCheckRunStatus = [@as("FAILED") #FAILED | @as("COMPLETED_NON_COMPLIANT") #COMPLETED_NON_COMPLIANT | @as("COMPLETED_COMPLIANT") #COMPLETED_COMPLIANT | @as("CANCELED") #CANCELED | @as("WAITING_FOR_DATA_COLLECTION") #WAITING_FOR_DATA_COLLECTION | @as("IN_PROGRESS") #IN_PROGRESS]
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
type ascendingOrder = bool;
type approximateSecondsBeforeTimedOut = float;
type allowAutoRegistration = bool;
type allowAuthorizerOverride = bool;
type alertTargetType = [@as("SNS") #SNS]
type alertTargetArn = string
type alarmName = string
type aggregationField = string
type actionType = [@as("CONNECT") #CONNECT | @as("RECEIVE") #RECEIVE | @as("SUBSCRIBE") #SUBSCRIBE | @as("PUBLISH") #PUBLISH]
type acmCertificateArn = string
type abortThresholdPercentage = float;
type abortAction = [@as("CANCEL") #CANCEL]
type violationEventOccurrenceRange = {
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>
}
type violationEventAdditionalInfo = {
@as("confidenceLevel") confidenceLevel: confidenceLevel
}
type validationError = {
@as("errorMessage") errorMessage: errorMessage
}
type updateDeviceCertificateParams = {
@as("action") action: option<deviceCertificateUpdateAction>
}
type updateCACertificateParams = {
@as("action") action: option<cACertificateUpdateAction>
}
type transferData = {
@as("rejectDate") rejectDate: dateType,
@as("acceptDate") acceptDate: dateType,
@as("transferDate") transferDate: dateType,
@as("rejectReason") rejectReason: message,
@as("transferMessage") transferMessage: message
}
type topicRuleListItem = {
@as("ruleDisabled") ruleDisabled: isDisabled,
@as("createdAt") createdAt: createdAtDate,
@as("topicPattern") topicPattern: topicPattern,
@as("ruleName") ruleName: ruleName,
@as("ruleArn") ruleArn: ruleArn
}
type tlsContext = {
@as("serverName") serverName: serverName
}
type timestreamTimestamp = {
@as("unit") unit: option<timestreamTimestampUnit>,
@as("value") value: option<timestreamTimestampValue>
}
type timestreamDimension = {
@as("value") value: option<timestreamDimensionValue>,
@as("name") name: option<timestreamDimensionName>
}
type timeoutConfig = {
@as("inProgressTimeoutInMinutes") inProgressTimeoutInMinutes: inProgressTimeoutInMinutes
}
type thingTypeMetadata = {
@as("creationDate") creationDate: creationDate,
@as("deprecationDate") deprecationDate: deprecationDate,
@as("deprecated") deprecated: amazonawsBoolean
}
type thingNameList = array<thingName>
type thingGroupNames = array<thingGroupName>
type thingGroupNameList = array<thingGroupName>
type thingGroupList = array<thingGroupName>
type thingConnectivity = {
@as("timestamp") timestamp: connectivityTimestamp,
@as("connected") connected: amazonawsBoolean
}
type taskStatisticsForAuditCheck = {
@as("canceledFindingsCount") canceledFindingsCount: canceledFindingsCount,
@as("skippedFindingsCount") skippedFindingsCount: skippedFindingsCount,
@as("succeededFindingsCount") succeededFindingsCount: succeededFindingsCount,
@as("failedFindingsCount") failedFindingsCount: failedFindingsCount,
@as("totalFindingsCount") totalFindingsCount: totalFindingsCount
}
type taskStatistics = {
@as("canceledChecks") canceledChecks: canceledChecksCount,
@as("failedChecks") failedChecks: failedChecksCount,
@as("nonCompliantChecks") nonCompliantChecks: nonCompliantChecksCount,
@as("compliantChecks") compliantChecks: compliantChecksCount,
@as("waitingForDataCollectionChecks") waitingForDataCollectionChecks: waitingForDataCollectionChecksCount,
@as("inProgressChecks") inProgressChecks: inProgressChecksCount,
@as("totalChecks") totalChecks: totalChecksCount
}
type taskIdList = array<taskId>
type targets = array<target>
type targetViolationIdsForDetectMitigationActions = array<violationId>
type targetAuditCheckNames = array<auditCheckName>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: option<tagKey>
}
type subnetIdList = array<subnetId>
type stringMap = Js.Dict.t< amazonawsString>
type stringList = array<stringValue>
type streamSummary = {
@as("description") description: streamDescription,
@as("streamVersion") streamVersion: streamVersion,
@as("streamArn") streamArn: streamArn,
@as("streamId") streamId: streamId
}
type stream = {
@as("fileId") fileId: fileId,
@as("streamId") streamId: streamId
}
type stepFunctionsAction = {
@as("roleArn") roleArn: option<awsArn>,
@as("stateMachineName") stateMachineName: option<stateMachineName>,
@as("executionNamePrefix") executionNamePrefix: executionNamePrefix
}
type statistics = {
@as("stdDeviation") stdDeviation: stdDeviation,
@as("variance") variance: variance,
@as("sumOfSquares") sumOfSquares: sumOfSquares,
@as("maximum") maximum: maximum,
@as("minimum") minimum: minimum,
@as("sum") sum: sum,
@as("average") average: average,
@as("count") count: count
}
type statisticalThreshold = {
@as("statistic") statistic: evaluationStatistic
}
type sqsAction = {
@as("useBase64") useBase64: useBase64,
@as("queueUrl") queueUrl: option<queueUrl>,
@as("roleArn") roleArn: option<awsArn>
}
type snsAction = {
@as("messageFormat") messageFormat: messageFormat,
@as("roleArn") roleArn: option<awsArn>,
@as("targetArn") targetArn: option<awsArn>
}
type signingProfileParameter = {
@as("certificatePathOnDevice") certificatePathOnDevice: certificatePathOnDevice,
@as("platform") platform: platform,
@as("certificateArn") certificateArn: certificateArn
}
type sigV4Authorization = {
@as("roleArn") roleArn: option<awsArn>,
@as("serviceName") serviceName: option<serviceName>,
@as("signingRegion") signingRegion: option<signingRegion>
}
type serverCertificateSummary = {
@as("serverCertificateStatusDetail") serverCertificateStatusDetail: serverCertificateStatusDetail,
@as("serverCertificateStatus") serverCertificateStatus: serverCertificateStatus,
@as("serverCertificateArn") serverCertificateArn: acmCertificateArn
}
type serverCertificateArns = array<acmCertificateArn>
type securityProfileTarget = {
@as("arn") arn: option<securityProfileTargetArn>
}
type securityProfileIdentifier = {
@as("arn") arn: option<securityProfileArn>,
@as("name") name: option<securityProfileName>
}
type securityGroupList = array<securityGroupId>
type searchableAttributes = array<attributeName>
type scheduledAuditMetadata = {
@as("dayOfWeek") dayOfWeek: dayOfWeek,
@as("dayOfMonth") dayOfMonth: dayOfMonth,
@as("frequency") frequency: auditFrequency,
@as("scheduledAuditArn") scheduledAuditArn: scheduledAuditArn,
@as("scheduledAuditName") scheduledAuditName: scheduledAuditName
}
type salesforceAction = {
@as("url") url: option<salesforceEndpoint>,
@as("token") token: option<salesforceToken>
}
type s3Location = {
@as("version") version: s3Version,
@as("key") key: s3Key,
@as("bucket") bucket: s3Bucket
}
type s3FileUrlList = array<s3FileUrl>
type s3Destination = {
@as("prefix") prefix: prefix,
@as("bucket") bucket: s3Bucket
}
type s3Action = {
@as("cannedAcl") cannedAcl: cannedAccessControlList,
@as("key") key: option<key>,
@as("bucketName") bucketName: option<bucketName>,
@as("roleArn") roleArn: option<awsArn>
}
type roleAliases = array<roleAlias>
type roleAliasDescription = {
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("credentialDurationSeconds") credentialDurationSeconds: credentialDurationSeconds,
@as("owner") owner: awsAccountId,
@as("roleArn") roleArn: roleArn,
@as("roleAliasArn") roleAliasArn: roleAliasArn,
@as("roleAlias") roleAlias: roleAlias
}
type resources = array<resource>
type resourceArns = Js.Dict.t< resourceArn>
type republishAction = {
@as("qos") qos: qos,
@as("topic") topic: option<topicPattern>,
@as("roleArn") roleArn: option<awsArn>
}
type replaceDefaultPolicyVersionParams = {
@as("templateName") templateName: option<policyTemplateName>
}
type registrationConfig = {
@as("roleArn") roleArn: roleArn,
@as("templateBody") templateBody: templateBody
}
type reasonForNonComplianceCodes = array<reasonForNonComplianceCode>
type rateIncreaseCriteria = {
@as("numberOfSucceededThings") numberOfSucceededThings: numberOfThings,
@as("numberOfNotifiedThings") numberOfNotifiedThings: numberOfThings
}
type putItemInput = {
@as("tableName") tableName: option<tableName>
}
type publishFindingToSnsParams = {
@as("topicArn") topicArn: option<snsTopicArn>
}
type publicKeyMap = Js.Dict.t< keyValue>
type provisioningTemplateVersionSummary = {
@as("isDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("creationDate") creationDate: dateType,
@as("versionId") versionId: templateVersionId
}
type provisioningTemplateSummary = {
@as("enabled") enabled: enabled,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("description") description: templateDescription,
@as("templateName") templateName: templateName,
@as("templateArn") templateArn: templateArn
}
type provisioningHook = {
@as("targetArn") targetArn: option<targetArn>,
@as("payloadVersion") payloadVersion: payloadVersion
}
type protocols = array<protocol>
type processingTargetNameList = array<processingTargetName>
type principals = array<principalArn>
type presignedUrlConfig = {
@as("expiresInSec") expiresInSec: expiresInSec,
@as("roleArn") roleArn: roleArn
}
type ports = array<port>
type policyVersionIdentifier = {
@as("policyVersionId") policyVersionId: policyVersionId,
@as("policyName") policyName: policyName
}
type policyVersion = {
@as("createDate") createDate: dateType,
@as("isDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("versionId") versionId: policyVersionId
}
type policyTargets = array<policyTarget>
type policyNames = array<policyName>
type policyDocuments = array<policyDocument>
type policy = {
@as("policyArn") policyArn: policyArn,
@as("policyName") policyName: policyName
}
type percentPair = {
@as("value") value: percentValue,
@as("percent") percent: percent
}
type percentList = array<percent>
type parameters = Js.Dict.t< value>
type outgoingCertificate = {
@as("creationDate") creationDate: dateType,
@as("transferMessage") transferMessage: message,
@as("transferDate") transferDate: dateType,
@as("transferredTo") transferredTo: awsAccountId,
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
type oTAUpdateSummary = {
@as("creationDate") creationDate: dateType,
@as("otaUpdateArn") otaUpdateArn: oTAUpdateArn,
@as("otaUpdateId") otaUpdateId: oTAUpdateId
}
type numberList = array<number>
type mqttContext = {
@as("clientId") clientId: mqttClientId,
@as("password") password: mqttPassword,
@as("username") username: mqttUsername
}
type mitigationActionNameList = array<mitigationActionName>
type mitigationActionIdentifier = {
@as("creationDate") creationDate: amazonawsTimestamp,
@as("actionArn") actionArn: mitigationActionArn,
@as("actionName") actionName: mitigationActionName
}
type missingContextValues = array<missingContextValue>
type metricNames = array<metricName>
type metricDimension = {
@as("operator") operator: dimensionValueOperator,
@as("dimensionName") dimensionName: option<dimensionName>
}
type machineLearningDetectionConfig = {
@as("confidenceLevel") confidenceLevel: option<confidenceLevel>
}
type loggingOptionsPayload = {
@as("logLevel") logLevel: logLevel,
@as("roleArn") roleArn: option<awsArn>
}
type logTarget = {
@as("targetName") targetName: logTargetName,
@as("targetType") targetType: option<logTargetType>
}
type lambdaAction = {
@as("functionArn") functionArn: option<functionArn>
}
type kinesisAction = {
@as("partitionKey") partitionKey: partitionKey,
@as("streamName") streamName: option<streamName>,
@as("roleArn") roleArn: option<awsArn>
}
type keyPair = {
@as("PrivateKey") privateKey: privateKey,
@as("PublicKey") publicKey: publicKey
}
type jobTemplateSummary = {
@as("createdAt") createdAt: dateType,
@as("description") description: jobDescription,
@as("jobTemplateId") jobTemplateId: jobTemplateId,
@as("jobTemplateArn") jobTemplateArn: jobTemplateArn
}
type jobTargets = array<targetArn>
type jobSummary = {
@as("completedAt") completedAt: dateType,
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("createdAt") createdAt: dateType,
@as("status") status: jobStatus,
@as("targetSelection") targetSelection: targetSelection,
@as("thingGroupId") thingGroupId: thingGroupId,
@as("jobId") jobId: jobId,
@as("jobArn") jobArn: jobArn
}
type jobExecutionSummary = {
@as("executionNumber") executionNumber: executionNumber,
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("startedAt") startedAt: dateType,
@as("queuedAt") queuedAt: dateType,
@as("status") status: jobExecutionStatus
}
type iotEventsAction = {
@as("roleArn") roleArn: option<awsArn>,
@as("batchMode") batchMode: batchMode,
@as("messageId") messageId: messageId,
@as("inputName") inputName: option<inputName>
}
type iotAnalyticsAction = {
@as("roleArn") roleArn: awsArn,
@as("batchMode") batchMode: batchMode,
@as("channelName") channelName: channelName,
@as("channelArn") channelArn: awsArn
}
type indexNamesList = array<indexName>
type httpUrlDestinationSummary = {
@as("confirmationUrl") confirmationUrl: url
}
type httpUrlDestinationProperties = {
@as("confirmationUrl") confirmationUrl: url
}
type httpUrlDestinationConfiguration = {
@as("confirmationUrl") confirmationUrl: option<url>
}
type httpHeaders = Js.Dict.t< httpHeaderValue>
type httpActionHeader = {
@as("value") value: option<headerValue>,
@as("key") key: option<headerKey>
}
type groupNameAndArn = {
@as("groupArn") groupArn: thingGroupArn,
@as("groupName") groupName: thingGroupName
}
type firehoseAction = {
@as("batchMode") batchMode: batchMode,
@as("separator") separator: firehoseSeparator,
@as("deliveryStreamName") deliveryStreamName: option<deliveryStreamName>,
@as("roleArn") roleArn: option<awsArn>
}
type findingIds = array<findingId>
type field = {
@as("type") type_: fieldType,
@as("name") name: fieldName
}
type errorInfo = {
@as("message") message: oTAUpdateErrorMessage,
@as("code") code: code
}
type enableIoTLoggingParams = {
@as("logLevel") logLevel: option<logLevel>,
@as("roleArnForLogging") roleArnForLogging: option<roleArn>
}
type elasticsearchAction = {
@as("id") id: option<elasticsearchId>,
@as("type") type_: option<elasticsearchType>,
@as("index") index: option<elasticsearchIndex>,
@as("endpoint") endpoint: option<elasticsearchEndpoint>,
@as("roleArn") roleArn: option<awsArn>
}
type effectivePolicy = {
@as("policyDocument") policyDocument: policyDocument,
@as("policyArn") policyArn: policyArn,
@as("policyName") policyName: policyName
}
type dynamoDBAction = {
@as("payloadField") payloadField: payloadField,
@as("rangeKeyType") rangeKeyType: dynamoKeyType,
@as("rangeKeyValue") rangeKeyValue: rangeKeyValue,
@as("rangeKeyField") rangeKeyField: rangeKeyField,
@as("hashKeyType") hashKeyType: dynamoKeyType,
@as("hashKeyValue") hashKeyValue: option<hashKeyValue>,
@as("hashKeyField") hashKeyField: option<hashKeyField>,
@as("operation") operation: dynamoOperation,
@as("roleArn") roleArn: option<awsArn>,
@as("tableName") tableName: option<tableName>
}
type domainConfigurationSummary = {
@as("serviceType") serviceType: serviceType,
@as("domainConfigurationArn") domainConfigurationArn: domainConfigurationArn,
@as("domainConfigurationName") domainConfigurationName: reservedDomainConfigurationName
}
type dimensionStringValues = array<dimensionStringValue>
type dimensionNames = array<dimensionName>
type detectMitigationActionsToExecuteList = array<mitigationActionName>
type detectMitigationActionsTaskStatistics = {
@as("actionsFailed") actionsFailed: genericLongValue,
@as("actionsSkipped") actionsSkipped: genericLongValue,
@as("actionsExecuted") actionsExecuted: genericLongValue
}
type detectMitigationActionExecution = {
@as("message") message: errorMessage,
@as("errorCode") errorCode: detectMitigationActionExecutionErrorCode,
@as("status") status: detectMitigationActionExecutionStatus,
@as("executionEndDate") executionEndDate: amazonawsTimestamp,
@as("executionStartDate") executionStartDate: amazonawsTimestamp,
@as("thingName") thingName: deviceDefenderThingName,
@as("actionName") actionName: mitigationActionName,
@as("violationId") violationId: violationId,
@as("taskId") taskId: mitigationActionsTaskId
}
type detailsMap = Js.Dict.t< detailsValue>
type configuration = {
@as("Enabled") enabled: enabled
}
type codeSigningSignature = {
@as("inlineDocument") inlineDocument: signature
}
type codeSigningCertificateChain = {
@as("inlineDocument") inlineDocument: inlineDocument,
@as("certificateName") certificateName: certificateName
}
type cloudwatchMetricAction = {
@as("metricTimestamp") metricTimestamp: amazonawsString,
@as("metricUnit") metricUnit: option<amazonawsString>,
@as("metricValue") metricValue: option<amazonawsString>,
@as("metricName") metricName: option<amazonawsString>,
@as("metricNamespace") metricNamespace: option<amazonawsString>,
@as("roleArn") roleArn: option<awsArn>
}
type cloudwatchLogsAction = {
@as("logGroupName") logGroupName: option<logGroupName>,
@as("roleArn") roleArn: option<awsArn>
}
type cloudwatchAlarmAction = {
@as("stateValue") stateValue: option<stateValue>,
@as("stateReason") stateReason: option<stateReason>,
@as("alarmName") alarmName: option<alarmName>,
@as("roleArn") roleArn: option<awsArn>
}
type clientProperties = Js.Dict.t< amazonawsString>
type cidrs = array<cidr>
type certificateValidity = {
@as("notAfter") notAfter: dateType,
@as("notBefore") notBefore: dateType
}
type certificate = {
@as("creationDate") creationDate: dateType,
@as("certificateMode") certificateMode: certificateMode,
@as("status") status: certificateStatus,
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
type cACertificate = {
@as("creationDate") creationDate: dateType,
@as("status") status: cACertificateStatus,
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
type billingGroupProperties = {
@as("billingGroupDescription") billingGroupDescription: billingGroupDescription
}
type billingGroupMetadata = {
@as("creationDate") creationDate: creationDate
}
type behaviorModelTrainingSummary = {
@as("lastModelRefreshDate") lastModelRefreshDate: amazonawsTimestamp,
@as("datapointsCollectionPercentage") datapointsCollectionPercentage: dataCollectionPercentage,
@as("modelStatus") modelStatus: modelStatus,
@as("trainingDataCollectionStartDate") trainingDataCollectionStartDate: amazonawsTimestamp,
@as("behaviorName") behaviorName: behaviorName,
@as("securityProfileName") securityProfileName: securityProfileName
}
type awsJobTimeoutConfig = {
@as("inProgressTimeoutInMinutes") inProgressTimeoutInMinutes: awsJobTimeoutInProgressTimeoutInMinutes
}
type awsJobRateIncreaseCriteria = {
@as("numberOfSucceededThings") numberOfSucceededThings: awsJobRateIncreaseCriteriaNumberOfThings,
@as("numberOfNotifiedThings") numberOfNotifiedThings: awsJobRateIncreaseCriteriaNumberOfThings
}
type awsJobPresignedUrlConfig = {
@as("expiresInSec") expiresInSec: expiresInSeconds
}
type awsJobAbortCriteria = {
@as("minNumberOfExecutedThings") minNumberOfExecutedThings: option<awsJobAbortCriteriaMinimumNumberOfExecutedThings>,
@as("thresholdPercentage") thresholdPercentage: option<awsJobAbortCriteriaAbortThresholdPercentage>,
@as("action") action: option<awsJobAbortCriteriaAbortAction>,
@as("failureType") failureType: option<awsJobAbortCriteriaFailureType>
}
type authorizerSummary = {
@as("authorizerArn") authorizerArn: authorizerArn,
@as("authorizerName") authorizerName: authorizerName
}
type authorizerConfig = {
@as("allowAuthorizerOverride") allowAuthorizerOverride: allowAuthorizerOverride,
@as("defaultAuthorizerName") defaultAuthorizerName: authorizerName
}
type auditTaskMetadata = {
@as("taskType") taskType: auditTaskType,
@as("taskStatus") taskStatus: auditTaskStatus,
@as("taskId") taskId: auditTaskId
}
type auditNotificationTarget = {
@as("enabled") enabled: enabled,
@as("roleArn") roleArn: roleArn,
@as("targetArn") targetArn: targetArn
}
type auditMitigationActionsTaskMetadata = {
@as("taskStatus") taskStatus: auditMitigationActionsTaskStatus,
@as("startTime") startTime: amazonawsTimestamp,
@as("taskId") taskId: mitigationActionsTaskId
}
type auditMitigationActionExecutionMetadata = {
@as("message") message: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("status") status: auditMitigationActionsExecutionStatus,
@as("actionId") actionId: mitigationActionId,
@as("actionName") actionName: mitigationActionName,
@as("findingId") findingId: findingId,
@as("taskId") taskId: mitigationActionsTaskId
}
type auditCheckDetails = {
@as("message") message: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("suppressedNonCompliantResourcesCount") suppressedNonCompliantResourcesCount: suppressedNonCompliantResourcesCount,
@as("nonCompliantResourcesCount") nonCompliantResourcesCount: nonCompliantResourcesCount,
@as("totalResourcesCount") totalResourcesCount: totalResourcesCount,
@as("checkCompliant") checkCompliant: checkCompliant,
@as("checkRunStatus") checkRunStatus: auditCheckRunStatus
}
type auditCheckConfiguration = {
@as("enabled") enabled: enabled
}
type attributesMap = Js.Dict.t< value>
type attributes = Js.Dict.t< attributeValue>
type assetPropertyVariant = BooleanValue(assetPropertyBooleanValue) | DoubleValue(assetPropertyDoubleValue) | IntegerValue(assetPropertyIntegerValue) | StringValue(assetPropertyStringValue);
type assetPropertyTimestamp = {
@as("offsetInNanos") offsetInNanos: assetPropertyOffsetInNanos,
@as("timeInSeconds") timeInSeconds: option<assetPropertyTimeInSeconds>
}
type alertTarget = {
@as("roleArn") roleArn: option<roleArn>,
@as("alertTargetArn") alertTargetArn: option<alertTargetArn>
}
type additionalParameterMap = Js.Dict.t< value>
type additionalMetricsToRetainList = array<behaviorMetric>
type abortCriteria = {
@as("minNumberOfExecutedThings") minNumberOfExecutedThings: option<minimumNumberOfExecutedThings>,
@as("thresholdPercentage") thresholdPercentage: option<abortThresholdPercentage>,
@as("action") action: option<abortAction>,
@as("failureType") failureType: option<jobExecutionFailureType>
}
type vpcDestinationSummary = {
@as("roleArn") roleArn: awsArn,
@as("vpcId") vpcId: vpcId,
@as("securityGroups") securityGroups: securityGroupList,
@as("subnetIds") subnetIds: subnetIdList
}
type vpcDestinationProperties = {
@as("roleArn") roleArn: awsArn,
@as("vpcId") vpcId: vpcId,
@as("securityGroups") securityGroups: securityGroupList,
@as("subnetIds") subnetIds: subnetIdList
}
type vpcDestinationConfiguration = {
@as("roleArn") roleArn: option<awsArn>,
@as("vpcId") vpcId: option<vpcId>,
@as("securityGroups") securityGroups: securityGroupList,
@as("subnetIds") subnetIds: option<subnetIdList>
}
type validationErrors = array<validationError>
type topicRuleList = array<topicRuleListItem>
type timestreamDimensionList = array<timestreamDimension>
type thingTypeProperties = {
@as("searchableAttributes") searchableAttributes: searchableAttributes,
@as("thingTypeDescription") thingTypeDescription: thingTypeDescription
}
type thingGroupNameAndArnList = array<groupNameAndArn>
type thingGroupDocument = {
@as("parentGroupNames") parentGroupNames: thingGroupNameList,
@as("attributes") attributes: attributes,
@as("thingGroupDescription") thingGroupDescription: thingGroupDescription,
@as("thingGroupId") thingGroupId: thingGroupId,
@as("thingGroupName") thingGroupName: thingGroupName
}
type thingDocument = {
@as("connectivity") connectivity: thingConnectivity,
@as("shadow") shadow: jsonDocument,
@as("attributes") attributes: attributes,
@as("thingGroupNames") thingGroupNames: thingGroupNameList,
@as("thingTypeName") thingTypeName: thingTypeName,
@as("thingId") thingId: thingId,
@as("thingName") thingName: thingName
}
type thingAttribute = {
@as("version") version: version,
@as("attributes") attributes: attributes,
@as("thingArn") thingArn: thingArn,
@as("thingTypeName") thingTypeName: thingTypeName,
@as("thingName") thingName: thingName
}
type tagList = array<tag>
type streamsSummary = array<streamSummary>
type streamFile = {
@as("s3Location") s3Location: s3Location,
@as("fileId") fileId: fileId
}
type serverCertificates = array<serverCertificateSummary>
type securityProfileTargets = array<securityProfileTarget>
type securityProfileTargetMapping = {
@as("target") target: securityProfileTarget,
@as("securityProfileIdentifier") securityProfileIdentifier: securityProfileIdentifier
}
type securityProfileIdentifiers = array<securityProfileIdentifier>
type scheduledAuditMetadataList = array<scheduledAuditMetadata>
type resourceIdentifier = {
@as("roleAliasArn") roleAliasArn: roleAliasArn,
@as("iamRoleArn") iamRoleArn: roleArn,
@as("account") account: awsAccountId,
@as("policyVersionIdentifier") policyVersionIdentifier: policyVersionIdentifier,
@as("clientId") clientId: clientId,
@as("cognitoIdentityPoolId") cognitoIdentityPoolId: cognitoIdentityPoolId,
@as("caCertificateId") caCertificateId: certificateId,
@as("deviceCertificateId") deviceCertificateId: certificateId
}
type provisioningTemplateVersionListing = array<provisioningTemplateVersionSummary>
type provisioningTemplateListing = array<provisioningTemplateSummary>
type policyVersions = array<policyVersion>
type policies = array<policy>
type percentiles = array<percentPair>
type outgoingCertificates = array<outgoingCertificate>
type oTAUpdatesSummary = array<oTAUpdateSummary>
type mitigationActionIdentifierList = array<mitigationActionIdentifier>
type metricValue = {
@as("strings") strings: stringList,
@as("numbers") numbers: numberList,
@as("number") number: number,
@as("ports") ports: ports,
@as("cidrs") cidrs: cidrs,
@as("count") count: unsignedLong
}
type metricToRetain = {
@as("metricDimension") metricDimension: metricDimension,
@as("metric") metric: option<behaviorMetric>
}
type logTargetConfiguration = {
@as("logLevel") logLevel: logLevel,
@as("logTarget") logTarget: logTarget
}
type kafkaAction = {
@as("clientProperties") clientProperties: option<clientProperties>,
@as("partition") partition: amazonawsString,
@as("key") key: amazonawsString,
@as("topic") topic: option<amazonawsString>,
@as("destinationArn") destinationArn: option<awsArn>
}
type jobTemplateSummaryList = array<jobTemplateSummary>
type jobSummaryList = array<jobSummary>
type jobProcessDetails = {
@as("numberOfTimedOutThings") numberOfTimedOutThings: timedOutThings,
@as("numberOfRemovedThings") numberOfRemovedThings: removedThings,
@as("numberOfInProgressThings") numberOfInProgressThings: inProgressThings,
@as("numberOfQueuedThings") numberOfQueuedThings: queuedThings,
@as("numberOfRejectedThings") numberOfRejectedThings: rejectedThings,
@as("numberOfFailedThings") numberOfFailedThings: failedThings,
@as("numberOfSucceededThings") numberOfSucceededThings: succeededThings,
@as("numberOfCanceledThings") numberOfCanceledThings: canceledThings,
@as("processingTargets") processingTargets: processingTargetNameList
}
type jobExecutionSummaryForThing = {
@as("jobExecutionSummary") jobExecutionSummary: jobExecutionSummary,
@as("jobId") jobId: jobId
}
type jobExecutionSummaryForJob = {
@as("jobExecutionSummary") jobExecutionSummary: jobExecutionSummary,
@as("thingArn") thingArn: thingArn
}
type jobExecutionStatusDetails = {
@as("detailsMap") detailsMap: detailsMap
}
type httpContext = {
@as("queryString") queryString: httpQueryString,
@as("headers") headers: httpHeaders
}
type httpAuthorization = {
@as("sigv4") sigv4: sigV4Authorization
}
type headerList = array<httpActionHeader>
type fileLocation = {
@as("s3Location") s3Location: s3Location,
@as("stream") stream: stream
}
type fields = array<field>
type exponentialRolloutRate = {
@as("rateIncreaseCriteria") rateIncreaseCriteria: option<rateIncreaseCriteria>,
@as("incrementFactor") incrementFactor: option<incrementFactor>,
@as("baseRatePerMinute") baseRatePerMinute: option<rolloutRatePerMinute>
}
type eventConfigurations = Js.Dict.t< configuration>
type effectivePolicies = array<effectivePolicy>
type dynamoDBv2Action = {
@as("putItem") putItem: option<putItemInput>,
@as("roleArn") roleArn: option<awsArn>
}
type domainConfigurations = array<domainConfigurationSummary>
type detectMitigationActionsTaskTarget = {
@as("behaviorName") behaviorName: behaviorName,
@as("securityProfileName") securityProfileName: securityProfileName,
@as("violationIds") violationIds: targetViolationIdsForDetectMitigationActions
}
type detectMitigationActionExecutionList = array<detectMitigationActionExecution>
type destination = {
@as("s3Destination") s3Destination: s3Destination
}
type customCodeSigning = {
@as("signatureAlgorithm") signatureAlgorithm: signatureAlgorithm,
@as("hashAlgorithm") hashAlgorithm: hashAlgorithm,
@as("certificateChain") certificateChain: codeSigningCertificateChain,
@as("signature") signature: codeSigningSignature
}
type certificates = array<certificate>
type certificateDescription = {
@as("certificateMode") certificateMode: certificateMode,
@as("validity") validity: certificateValidity,
@as("generationId") generationId: generationId,
@as("transferData") transferData: transferData,
@as("customerVersion") customerVersion: customerVersion,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("previousOwnedBy") previousOwnedBy: awsAccountId,
@as("ownedBy") ownedBy: awsAccountId,
@as("certificatePem") certificatePem: certificatePem,
@as("status") status: certificateStatus,
@as("caCertificateId") caCertificateId: certificateId,
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
type cACertificates = array<cACertificate>
type cACertificateDescription = {
@as("validity") validity: certificateValidity,
@as("generationId") generationId: generationId,
@as("customerVersion") customerVersion: customerVersion,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("autoRegistrationStatus") autoRegistrationStatus: autoRegistrationStatus,
@as("creationDate") creationDate: dateType,
@as("ownedBy") ownedBy: awsAccountId,
@as("certificatePem") certificatePem: certificatePem,
@as("status") status: cACertificateStatus,
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
type billingGroupNameAndArnList = array<groupNameAndArn>
type behaviorModelTrainingSummaries = array<behaviorModelTrainingSummary>
type awsJobExponentialRolloutRate = {
@as("rateIncreaseCriteria") rateIncreaseCriteria: option<awsJobRateIncreaseCriteria>,
@as("incrementFactor") incrementFactor: option<awsJobRolloutIncrementFactor>,
@as("baseRatePerMinute") baseRatePerMinute: option<awsJobRolloutRatePerMinute>
}
type awsJobAbortCriteriaList = array<awsJobAbortCriteria>
type authorizers = array<authorizerSummary>
type authorizerDescription = {
@as("signingDisabled") signingDisabled: booleanKey,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("status") status: authorizerStatus,
@as("tokenSigningPublicKeys") tokenSigningPublicKeys: publicKeyMap,
@as("tokenKeyName") tokenKeyName: tokenKeyName,
@as("authorizerFunctionArn") authorizerFunctionArn: authorizerFunctionArn,
@as("authorizerArn") authorizerArn: authorizerArn,
@as("authorizerName") authorizerName: authorizerName
}
type authInfo = {
@as("resources") resources: option<resources>,
@as("actionType") actionType: actionType
}
type auditTaskMetadataList = array<auditTaskMetadata>
type auditNotificationTargetConfigurations = Js.Dict.t< auditNotificationTarget>
type auditMitigationActionsTaskStatistics = Js.Dict.t< taskStatisticsForAuditCheck>
type auditMitigationActionsTaskMetadataList = array<auditMitigationActionsTaskMetadata>
type auditMitigationActionExecutionMetadataList = array<auditMitigationActionExecutionMetadata>
type auditDetails = Js.Dict.t< auditCheckDetails>
type auditCheckToReasonCodeFilter = Js.Dict.t< reasonForNonComplianceCodes>
type auditCheckToActionsMapping = Js.Dict.t< mitigationActionNameList>
type auditCheckConfigurations = Js.Dict.t< auditCheckConfiguration>
type attributePayload = {
@as("merge") merge: flag,
@as("attributes") attributes: attributes
}
type assetPropertyValue = {
@as("quality") quality: assetPropertyQuality,
@as("timestamp") timestamp: option<assetPropertyTimestamp>,
@as("value") value: option<assetPropertyVariant>
}
type alertTargets = Js.Dict.t< alertTarget>
type addThingsToThingGroupParams = {
@as("overrideDynamicGroups") overrideDynamicGroups: overrideDynamicGroups,
@as("thingGroupNames") thingGroupNames: option<thingGroupNames>
}
type abortCriteriaList = array<abortCriteria>
type topicRuleDestinationSummary = {
@as("vpcDestinationSummary") vpcDestinationSummary: vpcDestinationSummary,
@as("httpUrlSummary") httpUrlSummary: httpUrlDestinationSummary,
@as("statusReason") statusReason: amazonawsString,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAtDate,
@as("createdAt") createdAt: createdAtDate,
@as("status") status: topicRuleDestinationStatus,
@as("arn") arn: awsArn
}
type topicRuleDestinationConfiguration = {
@as("vpcConfiguration") vpcConfiguration: vpcDestinationConfiguration,
@as("httpUrlConfiguration") httpUrlConfiguration: httpUrlDestinationConfiguration
}
type topicRuleDestination = {
@as("vpcProperties") vpcProperties: vpcDestinationProperties,
@as("httpUrlProperties") httpUrlProperties: httpUrlDestinationProperties,
@as("statusReason") statusReason: amazonawsString,
@as("lastUpdatedAt") lastUpdatedAt: lastUpdatedAtDate,
@as("createdAt") createdAt: createdAtDate,
@as("status") status: topicRuleDestinationStatus,
@as("arn") arn: awsArn
}
type timestreamAction = {
@as("timestamp") timestamp: timestreamTimestamp,
@as("dimensions") dimensions: option<timestreamDimensionList>,
@as("tableName") tableName: option<timestreamTableName>,
@as("databaseName") databaseName: option<timestreamDatabaseName>,
@as("roleArn") roleArn: option<awsArn>
}
type thingTypeDefinition = {
@as("thingTypeMetadata") thingTypeMetadata: thingTypeMetadata,
@as("thingTypeProperties") thingTypeProperties: thingTypeProperties,
@as("thingTypeArn") thingTypeArn: thingTypeArn,
@as("thingTypeName") thingTypeName: thingTypeName
}
type thingIndexingConfiguration = {
@as("customFields") customFields: fields,
@as("managedFields") managedFields: fields,
@as("thingConnectivityIndexingMode") thingConnectivityIndexingMode: thingConnectivityIndexingMode,
@as("thingIndexingMode") thingIndexingMode: option<thingIndexingMode>
}
type thingGroupProperties = {
@as("attributePayload") attributePayload: attributePayload,
@as("thingGroupDescription") thingGroupDescription: thingGroupDescription
}
type thingGroupMetadata = {
@as("creationDate") creationDate: creationDate,
@as("rootToParentThingGroups") rootToParentThingGroups: thingGroupNameAndArnList,
@as("parentGroupName") parentGroupName: thingGroupName
}
type thingGroupIndexingConfiguration = {
@as("customFields") customFields: fields,
@as("managedFields") managedFields: fields,
@as("thingGroupIndexingMode") thingGroupIndexingMode: option<thingGroupIndexingMode>
}
type thingGroupDocumentList = array<thingGroupDocument>
type thingDocumentList = array<thingDocument>
type thingAttributeList = array<thingAttribute>
type streamFiles = array<streamFile>
type startSigningJobParameter = {
@as("destination") destination: destination,
@as("signingProfileName") signingProfileName: signingProfileName,
@as("signingProfileParameter") signingProfileParameter: signingProfileParameter
}
type securityProfileTargetMappings = array<securityProfileTargetMapping>
type relatedResource = {
@as("additionalInfo") additionalInfo: stringMap,
@as("resourceIdentifier") resourceIdentifier: resourceIdentifier,
@as("resourceType") resourceType: resourceType
}
type nonCompliantResource = {
@as("additionalInfo") additionalInfo: stringMap,
@as("resourceIdentifier") resourceIdentifier: resourceIdentifier,
@as("resourceType") resourceType: resourceType
}
type mitigationActionParams = {
@as("publishFindingToSnsParams") publishFindingToSnsParams: publishFindingToSnsParams,
@as("enableIoTLoggingParams") enableIoTLoggingParams: enableIoTLoggingParams,
@as("replaceDefaultPolicyVersionParams") replaceDefaultPolicyVersionParams: replaceDefaultPolicyVersionParams,
@as("addThingsToThingGroupParams") addThingsToThingGroupParams: addThingsToThingGroupParams,
@as("updateCACertificateParams") updateCACertificateParams: updateCACertificateParams,
@as("updateDeviceCertificateParams") updateDeviceCertificateParams: updateDeviceCertificateParams
}
type logTargetConfigurations = array<logTargetConfiguration>
type jobExecutionsRolloutConfig = {
@as("exponentialRate") exponentialRate: exponentialRolloutRate,
@as("maximumPerMinute") maximumPerMinute: maxJobExecutionsPerMin
}
type jobExecutionSummaryForThingList = array<jobExecutionSummaryForThing>
type jobExecutionSummaryForJobList = array<jobExecutionSummaryForJob>
type jobExecution = {
@as("approximateSecondsBeforeTimedOut") approximateSecondsBeforeTimedOut: approximateSecondsBeforeTimedOut,
@as("versionNumber") versionNumber: versionNumber,
@as("executionNumber") executionNumber: executionNumber,
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("startedAt") startedAt: dateType,
@as("queuedAt") queuedAt: dateType,
@as("thingArn") thingArn: thingArn,
@as("statusDetails") statusDetails: jobExecutionStatusDetails,
@as("forceCanceled") forceCanceled: forced,
@as("status") status: jobExecutionStatus,
@as("jobId") jobId: jobId
}
type implicitDeny = {
@as("policies") policies: policies
}
type httpAction = {
@as("auth") auth: httpAuthorization,
@as("headers") headers: headerList,
@as("confirmationUrl") confirmationUrl: url,
@as("url") url: option<url>
}
type explicitDeny = {
@as("policies") policies: policies
}
type behaviorCriteria = {
@as("mlDetectionConfig") mlDetectionConfig: machineLearningDetectionConfig,
@as("statisticalThreshold") statisticalThreshold: statisticalThreshold,
@as("consecutiveDatapointsToClear") consecutiveDatapointsToClear: consecutiveDatapointsToClear,
@as("consecutiveDatapointsToAlarm") consecutiveDatapointsToAlarm: consecutiveDatapointsToAlarm,
@as("durationSeconds") durationSeconds: durationSeconds,
@as("value") value: metricValue,
@as("comparisonOperator") comparisonOperator: comparisonOperator
}
type awsJobExecutionsRolloutConfig = {
@as("exponentialRate") exponentialRate: awsJobExponentialRolloutRate,
@as("maximumPerMinute") maximumPerMinute: maximumPerMinute
}
type awsJobAbortConfig = {
@as("abortCriteriaList") abortCriteriaList: option<awsJobAbortCriteriaList>
}
type authInfos = array<authInfo>
type auditSuppression = {
@as("description") description: auditDescription,
@as("suppressIndefinitely") suppressIndefinitely: suppressIndefinitely,
@as("expirationDate") expirationDate: amazonawsTimestamp,
@as("resourceIdentifier") resourceIdentifier: option<resourceIdentifier>,
@as("checkName") checkName: option<auditCheckName>
}
type auditMitigationActionsTaskTarget = {
@as("auditCheckToReasonCodeFilter") auditCheckToReasonCodeFilter: auditCheckToReasonCodeFilter,
@as("findingIds") findingIds: findingIds,
@as("auditTaskId") auditTaskId: auditTaskId
}
type assetPropertyValueList = array<assetPropertyValue>
type allowed = {
@as("policies") policies: policies
}
type additionalMetricsToRetainV2List = array<metricToRetain>
type abortConfig = {
@as("criteriaList") criteriaList: option<abortCriteriaList>
}
type topicRuleDestinationSummaries = array<topicRuleDestinationSummary>
type thingTypeList = array<thingTypeDefinition>
type streamInfo = {
@as("roleArn") roleArn: roleArn,
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("createdAt") createdAt: dateType,
@as("files") files: streamFiles,
@as("description") description: streamDescription,
@as("streamVersion") streamVersion: streamVersion,
@as("streamArn") streamArn: streamArn,
@as("streamId") streamId: streamId
}
type relatedResources = array<relatedResource>
type putAssetPropertyValueEntry = {
@as("propertyValues") propertyValues: option<assetPropertyValueList>,
@as("propertyAlias") propertyAlias: assetPropertyAlias,
@as("propertyId") propertyId: assetPropertyId,
@as("assetId") assetId: assetId,
@as("entryId") entryId: assetPropertyEntryId
}
type mitigationAction = {
@as("actionParams") actionParams: mitigationActionParams,
@as("roleArn") roleArn: roleArn,
@as("id") id: mitigationActionId,
@as("name") name: mitigationActionName
}
type job = {
@as("jobTemplateArn") jobTemplateArn: jobTemplateArn,
@as("namespaceId") namespaceId: namespaceId,
@as("timeoutConfig") timeoutConfig: timeoutConfig,
@as("jobProcessDetails") jobProcessDetails: jobProcessDetails,
@as("completedAt") completedAt: dateType,
@as("lastUpdatedAt") lastUpdatedAt: dateType,
@as("createdAt") createdAt: dateType,
@as("abortConfig") abortConfig: abortConfig,
@as("jobExecutionsRolloutConfig") jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
@as("presignedUrlConfig") presignedUrlConfig: presignedUrlConfig,
@as("description") description: jobDescription,
@as("targets") targets: jobTargets,
@as("comment") comment: comment,
@as("reasonCode") reasonCode: reasonCode,
@as("forceCanceled") forceCanceled: forced,
@as("status") status: jobStatus,
@as("targetSelection") targetSelection: targetSelection,
@as("jobId") jobId: jobId,
@as("jobArn") jobArn: jobArn
}
type denied = {
@as("explicitDeny") explicitDeny: explicitDeny,
@as("implicitDeny") implicitDeny: implicitDeny
}
type codeSigning = {
@as("customCodeSigning") customCodeSigning: customCodeSigning,
@as("startSigningJobParameter") startSigningJobParameter: startSigningJobParameter,
@as("awsSignerJobId") awsSignerJobId: signingJobId
}
type behavior = {
@as("suppressAlerts") suppressAlerts: suppressAlerts,
@as("criteria") criteria: behaviorCriteria,
@as("metricDimension") metricDimension: metricDimension,
@as("metric") metric: behaviorMetric,
@as("name") name: option<behaviorName>
}
type auditSuppressionList = array<auditSuppression>
type violationEvent = {
@as("violationEventTime") violationEventTime: amazonawsTimestamp,
@as("violationEventType") violationEventType: violationEventType,
@as("violationEventAdditionalInfo") violationEventAdditionalInfo: violationEventAdditionalInfo,
@as("metricValue") metricValue: metricValue,
@as("behavior") behavior: behavior,
@as("securityProfileName") securityProfileName: securityProfileName,
@as("thingName") thingName: deviceDefenderThingName,
@as("violationId") violationId: violationId
}
type putAssetPropertyValueEntryList = array<putAssetPropertyValueEntry>
type oTAUpdateFile = {
@as("attributes") attributes: attributesMap,
@as("codeSigning") codeSigning: codeSigning,
@as("fileLocation") fileLocation: fileLocation,
@as("fileVersion") fileVersion: oTAUpdateFileVersion,
@as("fileType") fileType: fileType,
@as("fileName") fileName: fileName
}
type mitigationActionList = array<mitigationAction>
type behaviors = array<behavior>
type authResult = {
@as("missingContextValues") missingContextValues: missingContextValues,
@as("authDecision") authDecision: authDecision,
@as("denied") denied: denied,
@as("allowed") allowed: allowed,
@as("authInfo") authInfo: authInfo
}
type auditFinding = {
@as("isSuppressed") isSuppressed: isSuppressed,
@as("reasonForNonComplianceCode") reasonForNonComplianceCode: reasonForNonComplianceCode,
@as("reasonForNonCompliance") reasonForNonCompliance: reasonForNonCompliance,
@as("relatedResources") relatedResources: relatedResources,
@as("nonCompliantResource") nonCompliantResource: nonCompliantResource,
@as("severity") severity: auditFindingSeverity,
@as("findingTime") findingTime: amazonawsTimestamp,
@as("taskStartTime") taskStartTime: amazonawsTimestamp,
@as("checkName") checkName: auditCheckName,
@as("taskId") taskId: auditTaskId,
@as("findingId") findingId: findingId
}
type activeViolation = {
@as("violationStartTime") violationStartTime: amazonawsTimestamp,
@as("lastViolationTime") lastViolationTime: amazonawsTimestamp,
@as("violationEventAdditionalInfo") violationEventAdditionalInfo: violationEventAdditionalInfo,
@as("lastViolationValue") lastViolationValue: metricValue,
@as("behavior") behavior: behavior,
@as("securityProfileName") securityProfileName: securityProfileName,
@as("thingName") thingName: deviceDefenderThingName,
@as("violationId") violationId: violationId
}
type violationEvents = array<violationEvent>
type oTAUpdateFiles = array<oTAUpdateFile>
type iotSiteWiseAction = {
@as("roleArn") roleArn: option<awsArn>,
@as("putAssetPropertyValueEntries") putAssetPropertyValueEntries: option<putAssetPropertyValueEntryList>
}
type detectMitigationActionsTaskSummary = {
@as("taskStatistics") taskStatistics: detectMitigationActionsTaskStatistics,
@as("actionsDefinition") actionsDefinition: mitigationActionList,
@as("suppressedAlertsIncluded") suppressedAlertsIncluded: primitiveBoolean,
@as("onlyActiveViolationsIncluded") onlyActiveViolationsIncluded: primitiveBoolean,
@as("violationEventOccurrenceRange") violationEventOccurrenceRange: violationEventOccurrenceRange,
@as("target") target: detectMitigationActionsTaskTarget,
@as("taskEndTime") taskEndTime: amazonawsTimestamp,
@as("taskStartTime") taskStartTime: amazonawsTimestamp,
@as("taskStatus") taskStatus: detectMitigationActionsTaskStatus,
@as("taskId") taskId: mitigationActionsTaskId
}
type authResults = array<authResult>
type auditFindings = array<auditFinding>
type activeViolations = array<activeViolation>
type oTAUpdateInfo = {
@as("additionalParameters") additionalParameters: additionalParameterMap,
@as("errorInfo") errorInfo: errorInfo,
@as("awsIotJobArn") awsIotJobArn: awsIotJobArn,
@as("awsIotJobId") awsIotJobId: awsIotJobId,
@as("otaUpdateStatus") otaUpdateStatus: oTAUpdateStatus,
@as("otaUpdateFiles") otaUpdateFiles: oTAUpdateFiles,
@as("targetSelection") targetSelection: targetSelection,
@as("awsJobPresignedUrlConfig") awsJobPresignedUrlConfig: awsJobPresignedUrlConfig,
@as("awsJobExecutionsRolloutConfig") awsJobExecutionsRolloutConfig: awsJobExecutionsRolloutConfig,
@as("protocols") protocols: protocols,
@as("targets") targets: targets,
@as("description") description: oTAUpdateDescription,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("otaUpdateArn") otaUpdateArn: oTAUpdateArn,
@as("otaUpdateId") otaUpdateId: oTAUpdateId
}
type detectMitigationActionsTaskSummaryList = array<detectMitigationActionsTaskSummary>
type action = {
@as("kafka") kafka: kafkaAction,
@as("http") http: httpAction,
@as("timestream") timestream: timestreamAction,
@as("stepFunctions") stepFunctions: stepFunctionsAction,
@as("iotSiteWise") iotSiteWise: iotSiteWiseAction,
@as("iotEvents") iotEvents: iotEventsAction,
@as("iotAnalytics") iotAnalytics: iotAnalyticsAction,
@as("salesforce") salesforce: salesforceAction,
@as("elasticsearch") elasticsearch: elasticsearchAction,
@as("cloudwatchLogs") cloudwatchLogs: cloudwatchLogsAction,
@as("cloudwatchAlarm") cloudwatchAlarm: cloudwatchAlarmAction,
@as("cloudwatchMetric") cloudwatchMetric: cloudwatchMetricAction,
@as("firehose") firehose: firehoseAction,
@as("s3") s3: s3Action,
@as("republish") republish: republishAction,
@as("kinesis") kinesis: kinesisAction,
@as("sqs") sqs: sqsAction,
@as("sns") sns: snsAction,
@as("lambda") lambda: lambdaAction,
@as("dynamoDBv2") dynamoDBv2: dynamoDBv2Action,
@as("dynamoDB") dynamoDB: dynamoDBAction
}
type actionList = array<action>
type topicRulePayload = {
@as("errorAction") errorAction: action,
@as("awsIotSqlVersion") awsIotSqlVersion: awsIotSqlVersion,
@as("ruleDisabled") ruleDisabled: isDisabled,
@as("actions") actions: option<actionList>,
@as("description") description: description,
@as("sql") sql: option<sQL>
}
type topicRule = {
@as("errorAction") errorAction: action,
@as("awsIotSqlVersion") awsIotSqlVersion: awsIotSqlVersion,
@as("ruleDisabled") ruleDisabled: isDisabled,
@as("actions") actions: actionList,
@as("createdAt") createdAt: createdAtDate,
@as("description") description: description,
@as("sql") sql: sQL,
@as("ruleName") ruleName: ruleName
}
type clientType;
@module("@aws-sdk/client-iot") @new external createClient: unit => clientType = "IoTClient";
module UpdateTopicRuleDestination = {
  type t;
  type request = {
@as("status") status: option<topicRuleDestinationStatus>,
@as("arn") arn: option<awsArn>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateTopicRuleDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRoleAlias = {
  type t;
  type request = {
@as("credentialDurationSeconds") credentialDurationSeconds: credentialDurationSeconds,
@as("roleArn") roleArn: roleArn,
@as("roleAlias") roleAlias: option<roleAlias>
}
  type response = {
@as("roleAliasArn") roleAliasArn: roleAliasArn,
@as("roleAlias") roleAlias: roleAlias
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateRoleAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCustomMetric = {
  type t;
  type request = {
@as("displayName") displayName: option<customMetricDisplayName>,
@as("metricName") metricName: option<metricName>
}
  type response = {
@as("lastModifiedDate") lastModifiedDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("displayName") displayName: customMetricDisplayName,
@as("metricType") metricType: customMetricType,
@as("metricArn") metricArn: customMetricArn,
@as("metricName") metricName: metricName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateCustomMetricCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCertificate = {
  type t;
  type request = {
@as("newStatus") newStatus: option<certificateStatus>,
@as("certificateId") certificateId: option<certificateId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TransferCertificate = {
  type t;
  type request = {
@as("transferMessage") transferMessage: message,
@as("targetAwsAccount") targetAwsAccount: option<awsAccountId>,
@as("certificateId") certificateId: option<certificateId>
}
  type response = {
@as("transferredCertificateArn") transferredCertificateArn: certificateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "TransferCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopThingRegistrationTask = {
  type t;
  type request = {
@as("taskId") taskId: option<taskId>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "StopThingRegistrationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartThingRegistrationTask = {
  type t;
  type request = {
@as("roleArn") roleArn: option<roleArn>,
@as("inputFileKey") inputFileKey: option<registryS3KeyName>,
@as("inputFileBucket") inputFileBucket: option<registryS3BucketName>,
@as("templateBody") templateBody: option<templateBody>
}
  type response = {
@as("taskId") taskId: taskId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "StartThingRegistrationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetV2LoggingOptions = {
  type t;
  type request = {
@as("disableAllLogs") disableAllLogs: disableAllLogs,
@as("defaultLogLevel") defaultLogLevel: logLevel,
@as("roleArn") roleArn: awsArn
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "SetV2LoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetDefaultPolicyVersion = {
  type t;
  type request = {
@as("policyVersionId") policyVersionId: option<policyVersionId>,
@as("policyName") policyName: option<policyName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "SetDefaultPolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetDefaultAuthorizer = {
  type t;
  type request = {
@as("authorizerName") authorizerName: option<authorizerName>
}
  type response = {
@as("authorizerArn") authorizerArn: authorizerArn,
@as("authorizerName") authorizerName: authorizerName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "SetDefaultAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveThingFromThingGroup = {
  type t;
  type request = {
@as("thingArn") thingArn: thingArn,
@as("thingName") thingName: thingName,
@as("thingGroupArn") thingGroupArn: thingGroupArn,
@as("thingGroupName") thingGroupName: thingGroupName
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "RemoveThingFromThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveThingFromBillingGroup = {
  type t;
  type request = {
@as("thingArn") thingArn: thingArn,
@as("thingName") thingName: thingName,
@as("billingGroupArn") billingGroupArn: billingGroupArn,
@as("billingGroupName") billingGroupName: billingGroupName
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "RemoveThingFromBillingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RejectCertificateTransfer = {
  type t;
  type request = {
@as("rejectReason") rejectReason: message,
@as("certificateId") certificateId: option<certificateId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "RejectCertificateTransferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterCertificateWithoutCA = {
  type t;
  type request = {
@as("status") status: certificateStatus,
@as("certificatePem") certificatePem: option<certificatePem>
}
  type response = {
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "RegisterCertificateWithoutCACommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterCertificate = {
  type t;
  type request = {
@as("status") status: certificateStatus,
@as("setAsActive") setAsActive: setAsActiveFlag,
@as("caCertificatePem") caCertificatePem: certificatePem,
@as("certificatePem") certificatePem: option<certificatePem>
}
  type response = {
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "RegisterCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetV2LoggingOptions = {
  type t;
  type request = unit
  type response = {
@as("disableAllLogs") disableAllLogs: disableAllLogs,
@as("defaultLogLevel") defaultLogLevel: logLevel,
@as("roleArn") roleArn: awsArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetV2LoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRegistrationCode = {
  type t;
  type request = unit
  type response = {
@as("registrationCode") registrationCode: registrationCode
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetRegistrationCodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPolicyVersion = {
  type t;
  type request = {
@as("policyVersionId") policyVersionId: option<policyVersionId>,
@as("policyName") policyName: option<policyName>
}
  type response = {
@as("generationId") generationId: generationId,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("isDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("policyVersionId") policyVersionId: policyVersionId,
@as("policyDocument") policyDocument: policyDocument,
@as("policyName") policyName: policyName,
@as("policyArn") policyArn: policyArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetPolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPolicy = {
  type t;
  type request = {
@as("policyName") policyName: option<policyName>
}
  type response = {
@as("generationId") generationId: generationId,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("defaultVersionId") defaultVersionId: policyVersionId,
@as("policyDocument") policyDocument: policyDocument,
@as("policyArn") policyArn: policyArn,
@as("policyName") policyName: policyName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoggingOptions = {
  type t;
  type request = unit
  type response = {
@as("logLevel") logLevel: logLevel,
@as("roleArn") roleArn: awsArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJobDocument = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("document") document: jobDocument
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetJobDocumentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCardinality = {
  type t;
  type request = {
@as("queryVersion") queryVersion: queryVersion,
@as("aggregationField") aggregationField: aggregationField,
@as("queryString") queryString: option<queryString>,
@as("indexName") indexName: indexName
}
  type response = {
@as("cardinality") cardinality: count
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetCardinalityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableTopicRule = {
  type t;
  type request = {
@as("ruleName") ruleName: option<ruleName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "EnableTopicRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableTopicRule = {
  type t;
  type request = {
@as("ruleName") ruleName: option<ruleName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DisableTopicRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachThingPrincipal = {
  type t;
  type request = {
@as("principal") principal: option<principal>,
@as("thingName") thingName: option<thingName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DetachThingPrincipalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachSecurityProfile = {
  type t;
  type request = {
@as("securityProfileTargetArn") securityProfileTargetArn: option<securityProfileTargetArn>,
@as("securityProfileName") securityProfileName: option<securityProfileName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DetachSecurityProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachPrincipalPolicy = {
  type t;
  type request = {
@as("principal") principal: option<principal>,
@as("policyName") policyName: option<policyName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DetachPrincipalPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DetachPolicy = {
  type t;
  type request = {
@as("target") target: option<policyTarget>,
@as("policyName") policyName: option<policyName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DetachPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeThingRegistrationTask = {
  type t;
  type request = {
@as("taskId") taskId: option<taskId>
}
  type response = {
@as("percentageProgress") percentageProgress: percentage,
@as("failureCount") failureCount: count,
@as("successCount") successCount: count,
@as("message") message: errorMessage,
@as("status") status: status,
@as("roleArn") roleArn: roleArn,
@as("inputFileKey") inputFileKey: registryS3KeyName,
@as("inputFileBucket") inputFileBucket: registryS3BucketName,
@as("templateBody") templateBody: templateBody,
@as("lastModifiedDate") lastModifiedDate: lastModifiedDate,
@as("creationDate") creationDate: creationDate,
@as("taskId") taskId: taskId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeThingRegistrationTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisioningTemplateVersion = {
  type t;
  type request = {
@as("versionId") versionId: option<templateVersionId>,
@as("templateName") templateName: option<templateName>
}
  type response = {
@as("isDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("templateBody") templateBody: templateBody,
@as("creationDate") creationDate: dateType,
@as("versionId") versionId: templateVersionId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeProvisioningTemplateVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIndex = {
  type t;
  type request = {
@as("indexName") indexName: option<indexName>
}
  type response = {
@as("schema") schema: indexSchema,
@as("indexStatus") indexStatus: indexStatus,
@as("indexName") indexName: indexName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeIndexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpoint = {
  type t;
  type request = {
@as("endpointType") endpointType: endpointType
}
  type response = {
@as("endpointAddress") endpointAddress: endpointAddress
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeEndpointCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCustomMetric = {
  type t;
  type request = {
@as("metricName") metricName: option<metricName>
}
  type response = {
@as("lastModifiedDate") lastModifiedDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("displayName") displayName: customMetricDisplayName,
@as("metricType") metricType: customMetricType,
@as("metricArn") metricArn: customMetricArn,
@as("metricName") metricName: metricName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeCustomMetricCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeprecateThingType = {
  type t;
  type request = {
@as("undoDeprecate") undoDeprecate: undoDeprecate,
@as("thingTypeName") thingTypeName: option<thingTypeName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeprecateThingTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteV2LoggingLevel = {
  type t;
  type request = {
@as("targetName") targetName: option<logTargetName>,
@as("targetType") targetType: option<logTargetType>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteV2LoggingLevelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteTopicRuleDestination = {
  type t;
  type request = {
@as("arn") arn: option<awsArn>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteTopicRuleDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTopicRule = {
  type t;
  type request = {
@as("ruleName") ruleName: option<ruleName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteTopicRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteThingType = {
  type t;
  type request = {
@as("thingTypeName") thingTypeName: option<thingTypeName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteThingTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteThingGroup = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteThing = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("thingName") thingName: option<thingName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStream = {
  type t;
  type request = {
@as("streamId") streamId: option<streamId>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSecurityProfile = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("securityProfileName") securityProfileName: option<securityProfileName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteSecurityProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteScheduledAudit = {
  type t;
  type request = {
@as("scheduledAuditName") scheduledAuditName: option<scheduledAuditName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteScheduledAuditCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRoleAlias = {
  type t;
  type request = {
@as("roleAlias") roleAlias: option<roleAlias>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteRoleAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRegistrationCode = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteRegistrationCodeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProvisioningTemplateVersion = {
  type t;
  type request = {
@as("versionId") versionId: option<templateVersionId>,
@as("templateName") templateName: option<templateName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteProvisioningTemplateVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProvisioningTemplate = {
  type t;
  type request = {
@as("templateName") templateName: option<templateName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteProvisioningTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePolicyVersion = {
  type t;
  type request = {
@as("policyVersionId") policyVersionId: option<policyVersionId>,
@as("policyName") policyName: option<policyName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeletePolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeletePolicy = {
  type t;
  type request = {
@as("policyName") policyName: option<policyName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeletePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteOTAUpdate = {
  type t;
  type request = {
@as("forceDeleteAWSJob") forceDeleteAWSJob: forceDeleteAWSJob,
@as("deleteStream") deleteStream: deleteStream_,
@as("otaUpdateId") otaUpdateId: option<oTAUpdateId>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteOTAUpdateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMitigationAction = {
  type t;
  type request = {
@as("actionName") actionName: option<mitigationActionName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteMitigationActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteJobTemplate = {
  type t;
  type request = {
@as("jobTemplateId") jobTemplateId: option<jobTemplateId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteJobTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteJobExecution = {
  type t;
  type request = {
@as("namespaceId") namespaceId: namespaceId,
@as("force") force: forceFlag,
@as("executionNumber") executionNumber: option<executionNumber>,
@as("thingName") thingName: option<thingName>,
@as("jobId") jobId: option<jobId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteJobExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteJob = {
  type t;
  type request = {
@as("namespaceId") namespaceId: namespaceId,
@as("force") force: forceFlag,
@as("jobId") jobId: option<jobId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDynamicThingGroup = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteDynamicThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomainConfiguration = {
  type t;
  type request = {
@as("domainConfigurationName") domainConfigurationName: option<domainConfigurationName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteDomainConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDimension = {
  type t;
  type request = {
@as("name") name: option<dimensionName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteDimensionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCustomMetric = {
  type t;
  type request = {
@as("metricName") metricName: option<metricName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteCustomMetricCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCertificate = {
  type t;
  type request = {
@as("forceDelete") forceDelete: forceDelete,
@as("certificateId") certificateId: option<certificateId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCACertificate = {
  type t;
  type request = {
@as("certificateId") certificateId: option<certificateId>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteCACertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBillingGroup = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("billingGroupName") billingGroupName: option<billingGroupName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteBillingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAuthorizer = {
  type t;
  type request = {
@as("authorizerName") authorizerName: option<authorizerName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAccountAuditConfiguration = {
  type t;
  type request = {
@as("deleteScheduledAudits") deleteScheduledAudits: deleteScheduledAudits
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteAccountAuditConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProvisioningTemplateVersion = {
  type t;
  type request = {
@as("setAsDefault") setAsDefault: setAsDefault,
@as("templateBody") templateBody: option<templateBody>,
@as("templateName") templateName: option<templateName>
}
  type response = {
@as("isDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("versionId") versionId: templateVersionId,
@as("templateName") templateName: templateName,
@as("templateArn") templateArn: templateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateProvisioningTemplateVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePolicyVersion = {
  type t;
  type request = {
@as("setAsDefault") setAsDefault: setAsDefault,
@as("policyDocument") policyDocument: option<policyDocument>,
@as("policyName") policyName: option<policyName>
}
  type response = {
@as("isDefaultVersion") isDefaultVersion: isDefaultVersion,
@as("policyVersionId") policyVersionId: policyVersionId,
@as("policyDocument") policyDocument: policyDocument,
@as("policyArn") policyArn: policyArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreatePolicyVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCertificateFromCsr = {
  type t;
  type request = {
@as("setAsActive") setAsActive: setAsActive,
@as("certificateSigningRequest") certificateSigningRequest: option<certificateSigningRequest>
}
  type response = {
@as("certificatePem") certificatePem: certificatePem,
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateCertificateFromCsrCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfirmTopicRuleDestination = {
  type t;
  type request = {
@as("confirmationToken") confirmationToken: option<confirmationToken>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ConfirmTopicRuleDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ClearDefaultAuthorizer = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ClearDefaultAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelJob = {
  type t;
  type request = {
@as("force") force: forceFlag,
@as("comment") comment: comment,
@as("reasonCode") reasonCode: reasonCode,
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("description") description: jobDescription,
@as("jobId") jobId: jobId,
@as("jobArn") jobArn: jobArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CancelJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelDetectMitigationActionsTask = {
  type t;
  type request = {
@as("taskId") taskId: option<mitigationActionsTaskId>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CancelDetectMitigationActionsTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelCertificateTransfer = {
  type t;
  type request = {
@as("certificateId") certificateId: option<certificateId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CancelCertificateTransferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CancelAuditTask = {
  type t;
  type request = {
@as("taskId") taskId: option<auditTaskId>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CancelAuditTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelAuditMitigationActionsTask = {
  type t;
  type request = {
@as("taskId") taskId: option<mitigationActionsTaskId>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CancelAuditMitigationActionsTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachThingPrincipal = {
  type t;
  type request = {
@as("principal") principal: option<principal>,
@as("thingName") thingName: option<thingName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AttachThingPrincipalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachSecurityProfile = {
  type t;
  type request = {
@as("securityProfileTargetArn") securityProfileTargetArn: option<securityProfileTargetArn>,
@as("securityProfileName") securityProfileName: option<securityProfileName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AttachSecurityProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachPrincipalPolicy = {
  type t;
  type request = {
@as("principal") principal: option<principal>,
@as("policyName") policyName: option<policyName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AttachPrincipalPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AttachPolicy = {
  type t;
  type request = {
@as("target") target: option<policyTarget>,
@as("policyName") policyName: option<policyName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AttachPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AddThingToThingGroup = {
  type t;
  type request = {
@as("overrideDynamicGroups") overrideDynamicGroups: overrideDynamicGroups,
@as("thingArn") thingArn: thingArn,
@as("thingName") thingName: thingName,
@as("thingGroupArn") thingGroupArn: thingGroupArn,
@as("thingGroupName") thingGroupName: thingGroupName
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AddThingToThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddThingToBillingGroup = {
  type t;
  type request = {
@as("thingArn") thingArn: thingArn,
@as("thingName") thingName: thingName,
@as("billingGroupArn") billingGroupArn: billingGroupArn,
@as("billingGroupName") billingGroupName: billingGroupName
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AddThingToBillingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptCertificateTransfer = {
  type t;
  type request = {
@as("setAsActive") setAsActive: setAsActive,
@as("certificateId") certificateId: option<certificateId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AcceptCertificateTransferCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateThingGroupsForThing = {
  type t;
  type request = {
@as("overrideDynamicGroups") overrideDynamicGroups: overrideDynamicGroups,
@as("thingGroupsToRemove") thingGroupsToRemove: thingGroupList,
@as("thingGroupsToAdd") thingGroupsToAdd: thingGroupList,
@as("thingName") thingName: thingName
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateThingGroupsForThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateScheduledAudit = {
  type t;
  type request = {
@as("scheduledAuditName") scheduledAuditName: option<scheduledAuditName>,
@as("targetCheckNames") targetCheckNames: targetAuditCheckNames,
@as("dayOfWeek") dayOfWeek: dayOfWeek,
@as("dayOfMonth") dayOfMonth: dayOfMonth,
@as("frequency") frequency: auditFrequency
}
  type response = {
@as("scheduledAuditArn") scheduledAuditArn: scheduledAuditArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateScheduledAuditCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProvisioningTemplate = {
  type t;
  type request = {
@as("removePreProvisioningHook") removePreProvisioningHook: removeHook,
@as("preProvisioningHook") preProvisioningHook: provisioningHook,
@as("provisioningRoleArn") provisioningRoleArn: roleArn,
@as("defaultVersionId") defaultVersionId: templateVersionId,
@as("enabled") enabled: enabled,
@as("description") description: templateDescription,
@as("templateName") templateName: option<templateName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateProvisioningTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainConfiguration = {
  type t;
  type request = {
@as("removeAuthorizerConfig") removeAuthorizerConfig: removeAuthorizerConfig,
@as("domainConfigurationStatus") domainConfigurationStatus: domainConfigurationStatus,
@as("authorizerConfig") authorizerConfig: authorizerConfig,
@as("domainConfigurationName") domainConfigurationName: option<reservedDomainConfigurationName>
}
  type response = {
@as("domainConfigurationArn") domainConfigurationArn: domainConfigurationArn,
@as("domainConfigurationName") domainConfigurationName: reservedDomainConfigurationName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateDomainConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDimension = {
  type t;
  type request = {
@as("stringValues") stringValues: option<dimensionStringValues>,
@as("name") name: option<dimensionName>
}
  type response = {
@as("lastModifiedDate") lastModifiedDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("stringValues") stringValues: dimensionStringValues,
@as("type") type_: dimensionType,
@as("arn") arn: dimensionArn,
@as("name") name: dimensionName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateDimensionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCACertificate = {
  type t;
  type request = {
@as("removeAutoRegistration") removeAutoRegistration: removeAutoRegistration,
@as("registrationConfig") registrationConfig: registrationConfig,
@as("newAutoRegistrationStatus") newAutoRegistrationStatus: autoRegistrationStatus,
@as("newStatus") newStatus: cACertificateStatus,
@as("certificateId") certificateId: option<certificateId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateCACertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateBillingGroup = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("billingGroupProperties") billingGroupProperties: option<billingGroupProperties>,
@as("billingGroupName") billingGroupName: option<billingGroupName>
}
  type response = {
@as("version") version: version
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateBillingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAuthorizer = {
  type t;
  type request = {
@as("status") status: authorizerStatus,
@as("tokenSigningPublicKeys") tokenSigningPublicKeys: publicKeyMap,
@as("tokenKeyName") tokenKeyName: tokenKeyName,
@as("authorizerFunctionArn") authorizerFunctionArn: authorizerFunctionArn,
@as("authorizerName") authorizerName: option<authorizerName>
}
  type response = {
@as("authorizerArn") authorizerArn: authorizerArn,
@as("authorizerName") authorizerName: authorizerName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartOnDemandAuditTask = {
  type t;
  type request = {
@as("targetCheckNames") targetCheckNames: option<targetAuditCheckNames>
}
  type response = {
@as("taskId") taskId: auditTaskId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "StartOnDemandAuditTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetV2LoggingLevel = {
  type t;
  type request = {
@as("logLevel") logLevel: option<logLevel>,
@as("logTarget") logTarget: option<logTarget>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "SetV2LoggingLevelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module SetLoggingOptions = {
  type t;
  type request = {
@as("loggingOptionsPayload") loggingOptionsPayload: option<loggingOptionsPayload>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "SetLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RegisterThing = {
  type t;
  type request = {
@as("parameters") parameters: parameters,
@as("templateBody") templateBody: option<templateBody>
}
  type response = {
@as("resourceArns") resourceArns: resourceArns,
@as("certificatePem") certificatePem: certificatePem
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "RegisterThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingsInThingGroup = {
  type t;
  type request = {
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken,
@as("recursive") recursive: recursive,
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("things") things: thingNameList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingsInThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingsInBillingGroup = {
  type t;
  type request = {
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken,
@as("billingGroupName") billingGroupName: option<billingGroupName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("things") things: thingNameList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingsInBillingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingRegistrationTasks = {
  type t;
  type request = {
@as("status") status: status,
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("taskIds") taskIds: taskIdList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingRegistrationTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingRegistrationTaskReports = {
  type t;
  type request = {
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken,
@as("reportType") reportType: option<reportType>,
@as("taskId") taskId: option<taskId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("reportType") reportType: reportType,
@as("resourceLinks") resourceLinks: s3FileUrlList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingRegistrationTaskReportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingPrincipals = {
  type t;
  type request = {
@as("thingName") thingName: option<thingName>,
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("principals") principals: principals
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingPrincipalsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTargetsForPolicy = {
  type t;
  type request = {
@as("pageSize") pageSize: pageSize,
@as("marker") marker: marker,
@as("policyName") policyName: option<policyName>
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("targets") targets: policyTargets
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListTargetsForPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRoleAliases = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("marker") marker: marker,
@as("pageSize") pageSize: pageSize
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("roleAliases") roleAliases: roleAliases
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListRoleAliasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPrincipalThings = {
  type t;
  type request = {
@as("principal") principal: option<principal>,
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("things") things: thingNameList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListPrincipalThingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicyPrincipals = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("pageSize") pageSize: pageSize,
@as("marker") marker: marker,
@as("policyName") policyName: option<policyName>
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("principals") principals: principals
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListPolicyPrincipalsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIndices = {
  type t;
  type request = {
@as("maxResults") maxResults: queryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("indexNames") indexNames: indexNamesList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListIndicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDimensions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("dimensionNames") dimensionNames: dimensionNames
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListDimensionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCustomMetrics = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("metricNames") metricNames: metricNames
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListCustomMetricsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStatistics = {
  type t;
  type request = {
@as("queryVersion") queryVersion: queryVersion,
@as("aggregationField") aggregationField: aggregationField,
@as("queryString") queryString: option<queryString>,
@as("indexName") indexName: indexName
}
  type response = {
@as("statistics") statistics: statistics
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeThing = {
  type t;
  type request = {
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("billingGroupName") billingGroupName: billingGroupName,
@as("version") version: version,
@as("attributes") attributes: attributes,
@as("thingTypeName") thingTypeName: thingTypeName,
@as("thingArn") thingArn: thingArn,
@as("thingId") thingId: thingId,
@as("thingName") thingName: thingName,
@as("defaultClientId") defaultClientId: clientId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeScheduledAudit = {
  type t;
  type request = {
@as("scheduledAuditName") scheduledAuditName: option<scheduledAuditName>
}
  type response = {
@as("scheduledAuditArn") scheduledAuditArn: scheduledAuditArn,
@as("scheduledAuditName") scheduledAuditName: scheduledAuditName,
@as("targetCheckNames") targetCheckNames: targetAuditCheckNames,
@as("dayOfWeek") dayOfWeek: dayOfWeek,
@as("dayOfMonth") dayOfMonth: dayOfMonth,
@as("frequency") frequency: auditFrequency
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeScheduledAuditCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRoleAlias = {
  type t;
  type request = {
@as("roleAlias") roleAlias: option<roleAlias>
}
  type response = {
@as("roleAliasDescription") roleAliasDescription: roleAliasDescription
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeRoleAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisioningTemplate = {
  type t;
  type request = {
@as("templateName") templateName: option<templateName>
}
  type response = {
@as("preProvisioningHook") preProvisioningHook: provisioningHook,
@as("provisioningRoleArn") provisioningRoleArn: roleArn,
@as("enabled") enabled: enabled,
@as("templateBody") templateBody: templateBody,
@as("defaultVersionId") defaultVersionId: templateVersionId,
@as("lastModifiedDate") lastModifiedDate: dateType,
@as("creationDate") creationDate: dateType,
@as("description") description: templateDescription,
@as("templateName") templateName: templateName,
@as("templateArn") templateArn: templateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeProvisioningTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDimension = {
  type t;
  type request = {
@as("name") name: option<dimensionName>
}
  type response = {
@as("lastModifiedDate") lastModifiedDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("stringValues") stringValues: dimensionStringValues,
@as("type") type_: dimensionType,
@as("arn") arn: dimensionArn,
@as("name") name: dimensionName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeDimensionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeBillingGroup = {
  type t;
  type request = {
@as("billingGroupName") billingGroupName: option<billingGroupName>
}
  type response = {
@as("billingGroupMetadata") billingGroupMetadata: billingGroupMetadata,
@as("billingGroupProperties") billingGroupProperties: billingGroupProperties,
@as("version") version: version,
@as("billingGroupArn") billingGroupArn: billingGroupArn,
@as("billingGroupId") billingGroupId: billingGroupId,
@as("billingGroupName") billingGroupName: billingGroupName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeBillingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProvisioningClaim = {
  type t;
  type request = {
@as("templateName") templateName: option<templateName>
}
  type response = {
@as("expiration") expiration: dateType,
@as("keyPair") keyPair: keyPair,
@as("certificatePem") certificatePem: certificatePem,
@as("certificateId") certificateId: certificateId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateProvisioningClaimCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateKeysAndCertificate = {
  type t;
  type request = {
@as("setAsActive") setAsActive: setAsActive
}
  type response = {
@as("keyPair") keyPair: keyPair,
@as("certificatePem") certificatePem: certificatePem,
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateKeysAndCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelJobExecution = {
  type t;
  type request = {
@as("statusDetails") statusDetails: detailsMap,
@as("expectedVersion") expectedVersion: expectedVersion,
@as("force") force: forceFlag,
@as("thingName") thingName: option<thingName>,
@as("jobId") jobId: option<jobId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CancelJobExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateTargetsWithJob = {
  type t;
  type request = {
@as("namespaceId") namespaceId: namespaceId,
@as("comment") comment: comment,
@as("jobId") jobId: option<jobId>,
@as("targets") targets: option<jobTargets>
}
  type response = {
@as("description") description: jobDescription,
@as("jobId") jobId: jobId,
@as("jobArn") jobArn: jobArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "AssociateTargetsWithJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateThing = {
  type t;
  type request = {
@as("removeThingType") removeThingType: removeThingType,
@as("expectedVersion") expectedVersion: optionalVersion,
@as("attributePayload") attributePayload: attributePayload,
@as("thingTypeName") thingTypeName: thingTypeName,
@as("thingName") thingName: option<thingName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateEventConfigurations = {
  type t;
  type request = {
@as("eventConfigurations") eventConfigurations: eventConfigurations
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateEventConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAuditSuppression = {
  type t;
  type request = {
@as("description") description: auditDescription,
@as("suppressIndefinitely") suppressIndefinitely: suppressIndefinitely,
@as("expirationDate") expirationDate: amazonawsTimestamp,
@as("resourceIdentifier") resourceIdentifier: option<resourceIdentifier>,
@as("checkName") checkName: option<auditCheckName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateAuditSuppressionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccountAuditConfiguration = {
  type t;
  type request = {
@as("auditCheckConfigurations") auditCheckConfigurations: auditCheckConfigurations,
@as("auditNotificationTargetConfigurations") auditNotificationTargetConfigurations: auditNotificationTargetConfigurations,
@as("roleArn") roleArn: roleArn
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateAccountAuditConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestInvokeAuthorizer = {
  type t;
  type request = {
@as("tlsContext") tlsContext: tlsContext,
@as("mqttContext") mqttContext: mqttContext,
@as("httpContext") httpContext: httpContext,
@as("tokenSignature") tokenSignature: tokenSignature,
@as("token") token: token,
@as("authorizerName") authorizerName: option<authorizerName>
}
  type response = {
@as("disconnectAfterInSeconds") disconnectAfterInSeconds: seconds,
@as("refreshAfterInSeconds") refreshAfterInSeconds: seconds,
@as("policyDocuments") policyDocuments: policyDocuments,
@as("principalId") principalId: principalId,
@as("isAuthenticated") isAuthenticated: isAuthenticated
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "TestInvokeAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDetectMitigationActionsTask = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("includeSuppressedAlerts") includeSuppressedAlerts: nullableBoolean,
@as("includeOnlyActiveViolations") includeOnlyActiveViolations: nullableBoolean,
@as("violationEventOccurrenceRange") violationEventOccurrenceRange: violationEventOccurrenceRange,
@as("actions") actions: option<detectMitigationActionsToExecuteList>,
@as("target") target: option<detectMitigationActionsTaskTarget>,
@as("taskId") taskId: option<mitigationActionsTaskId>
}
  type response = {
@as("taskId") taskId: mitigationActionsTaskId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "StartDetectMitigationActionsTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterCACertificate = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("registrationConfig") registrationConfig: registrationConfig,
@as("allowAutoRegistration") allowAutoRegistration: allowAutoRegistration,
@as("setAsActive") setAsActive: setAsActive,
@as("verificationCertificate") verificationCertificate: option<certificatePem>,
@as("caCertificate") caCertificate: option<certificatePem>
}
  type response = {
@as("certificateId") certificateId: certificateId,
@as("certificateArn") certificateArn: certificateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "RegisterCACertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTopicRules = {
  type t;
  type request = {
@as("ruleDisabled") ruleDisabled: isDisabled,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: topicRuleMaxResults,
@as("topic") topic: topic
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("rules") rules: topicRuleList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListTopicRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingGroupsForThing = {
  type t;
  type request = {
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("thingGroups") thingGroups: thingGroupNameAndArnList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingGroupsForThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingGroups = {
  type t;
  type request = {
@as("recursive") recursive: recursiveWithoutDefault,
@as("namePrefixFilter") namePrefixFilter: thingGroupName,
@as("parentGroup") parentGroup: thingGroupName,
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("thingGroups") thingGroups: thingGroupNameAndArnList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTargetsForSecurityProfile = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("securityProfileName") securityProfileName: option<securityProfileName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("securityProfileTargets") securityProfileTargets: securityProfileTargets
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListTargetsForSecurityProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStreams = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("streams") streams: streamsSummary
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSecurityProfiles = {
  type t;
  type request = {
@as("metricName") metricName: metricName,
@as("dimensionName") dimensionName: dimensionName,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("securityProfileIdentifiers") securityProfileIdentifiers: securityProfileIdentifiers
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListSecurityProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListScheduledAudits = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("scheduledAudits") scheduledAudits: scheduledAuditMetadataList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListScheduledAuditsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProvisioningTemplates = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("templates") templates: provisioningTemplateListing
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListProvisioningTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProvisioningTemplateVersions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("templateName") templateName: option<templateName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("versions") versions: provisioningTemplateVersionListing
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListProvisioningTemplateVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPrincipalPolicies = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("pageSize") pageSize: pageSize,
@as("marker") marker: marker,
@as("principal") principal: option<principal>
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("policies") policies: policies
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListPrincipalPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicyVersions = {
  type t;
  type request = {
@as("policyName") policyName: option<policyName>
}
  type response = {
@as("policyVersions") policyVersions: policyVersions
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListPolicyVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicies = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("pageSize") pageSize: pageSize,
@as("marker") marker: marker
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("policies") policies: policies
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOutgoingCertificates = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("marker") marker: marker,
@as("pageSize") pageSize: pageSize
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("outgoingCertificates") outgoingCertificates: outgoingCertificates
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListOutgoingCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOTAUpdates = {
  type t;
  type request = {
@as("otaUpdateStatus") otaUpdateStatus: oTAUpdateStatus,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("otaUpdates") otaUpdates: oTAUpdatesSummary
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListOTAUpdatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMitigationActions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("actionType") actionType: mitigationActionType
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("actionIdentifiers") actionIdentifiers: mitigationActionIdentifierList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListMitigationActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("namespaceId") namespaceId: namespaceId,
@as("thingGroupId") thingGroupId: thingGroupId,
@as("thingGroupName") thingGroupName: thingGroupName,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: laserMaxResults,
@as("targetSelection") targetSelection: targetSelection,
@as("status") status: jobStatus
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("jobs") jobs: jobSummaryList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobTemplates = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: laserMaxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("jobTemplates") jobTemplates: jobTemplateSummaryList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListJobTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomainConfigurations = {
  type t;
  type request = {
@as("serviceType") serviceType: serviceType,
@as("pageSize") pageSize: pageSize,
@as("marker") marker: marker
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("domainConfigurations") domainConfigurations: domainConfigurations
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListDomainConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDetectMitigationActionsExecutions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("thingName") thingName: deviceDefenderThingName,
@as("violationId") violationId: violationId,
@as("taskId") taskId: mitigationActionsTaskId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("actionsExecutions") actionsExecutions: detectMitigationActionExecutionList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListDetectMitigationActionsExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCertificatesByCA = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("marker") marker: marker,
@as("pageSize") pageSize: pageSize,
@as("caCertificateId") caCertificateId: option<certificateId>
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("certificates") certificates: certificates
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListCertificatesByCACommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCertificates = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("marker") marker: marker,
@as("pageSize") pageSize: pageSize
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("certificates") certificates: certificates
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCACertificates = {
  type t;
  type request = {
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("marker") marker: marker,
@as("pageSize") pageSize: pageSize
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("certificates") certificates: cACertificates
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListCACertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBillingGroups = {
  type t;
  type request = {
@as("namePrefixFilter") namePrefixFilter: billingGroupName,
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("billingGroups") billingGroups: billingGroupNameAndArnList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListBillingGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAuthorizers = {
  type t;
  type request = {
@as("status") status: authorizerStatus,
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("marker") marker: marker,
@as("pageSize") pageSize: pageSize
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("authorizers") authorizers: authorizers
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListAuthorizersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAuditTasks = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("taskStatus") taskStatus: auditTaskStatus,
@as("taskType") taskType: auditTaskType,
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tasks") tasks: auditTaskMetadataList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListAuditTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAuditMitigationActionsTasks = {
  type t;
  type request = {
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("taskStatus") taskStatus: auditMitigationActionsTaskStatus,
@as("findingId") findingId: findingId,
@as("auditTaskId") auditTaskId: auditTaskId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tasks") tasks: auditMitigationActionsTaskMetadataList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListAuditMitigationActionsTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAuditMitigationActionsExecutions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("findingId") findingId: option<findingId>,
@as("actionStatus") actionStatus: auditMitigationActionsExecutionStatus,
@as("taskId") taskId: option<mitigationActionsTaskId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("actionsExecutions") actionsExecutions: auditMitigationActionExecutionMetadataList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListAuditMitigationActionsExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttachedPolicies = {
  type t;
  type request = {
@as("pageSize") pageSize: pageSize,
@as("marker") marker: marker,
@as("recursive") recursive: recursive,
@as("target") target: option<policyTarget>
}
  type response = {
@as("nextMarker") nextMarker: marker,
@as("policies") policies: policies
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListAttachedPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPercentiles = {
  type t;
  type request = {
@as("percents") percents: percentList,
@as("queryVersion") queryVersion: queryVersion,
@as("aggregationField") aggregationField: aggregationField,
@as("queryString") queryString: option<queryString>,
@as("indexName") indexName: indexName
}
  type response = {
@as("percentiles") percentiles: percentiles
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetPercentilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEffectivePolicies = {
  type t;
  type request = {
@as("thingName") thingName: thingName,
@as("cognitoIdentityPoolId") cognitoIdentityPoolId: cognitoIdentityPoolId,
@as("principal") principal: principal
}
  type response = {
@as("effectivePolicies") effectivePolicies: effectivePolicies
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetEffectivePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBehaviorModelTrainingSummaries = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: tinyMaxResults,
@as("securityProfileName") securityProfileName: securityProfileName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("summaries") summaries: behaviorModelTrainingSummaries
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetBehaviorModelTrainingSummariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeThingType = {
  type t;
  type request = {
@as("thingTypeName") thingTypeName: option<thingTypeName>
}
  type response = {
@as("thingTypeMetadata") thingTypeMetadata: thingTypeMetadata,
@as("thingTypeProperties") thingTypeProperties: thingTypeProperties,
@as("thingTypeArn") thingTypeArn: thingTypeArn,
@as("thingTypeId") thingTypeId: thingTypeId,
@as("thingTypeName") thingTypeName: thingTypeName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeThingTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventConfigurations = {
  type t;
  type request = unit
  type response = {
@as("lastModifiedDate") lastModifiedDate: lastModifiedDate,
@as("creationDate") creationDate: creationDate,
@as("eventConfigurations") eventConfigurations: eventConfigurations
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeEventConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomainConfiguration = {
  type t;
  type request = {
@as("domainConfigurationName") domainConfigurationName: option<reservedDomainConfigurationName>
}
  type response = {
@as("lastStatusChangeDate") lastStatusChangeDate: dateType,
@as("domainType") domainType: domainType,
@as("serviceType") serviceType: serviceType,
@as("domainConfigurationStatus") domainConfigurationStatus: domainConfigurationStatus,
@as("authorizerConfig") authorizerConfig: authorizerConfig,
@as("serverCertificates") serverCertificates: serverCertificates,
@as("domainName") domainName: domainName,
@as("domainConfigurationArn") domainConfigurationArn: domainConfigurationArn,
@as("domainConfigurationName") domainConfigurationName: reservedDomainConfigurationName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeDomainConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDefaultAuthorizer = {
  type t;
  type request = unit
  type response = {
@as("authorizerDescription") authorizerDescription: authorizerDescription
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeDefaultAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCertificate = {
  type t;
  type request = {
@as("certificateId") certificateId: option<certificateId>
}
  type response = {
@as("certificateDescription") certificateDescription: certificateDescription
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCACertificate = {
  type t;
  type request = {
@as("certificateId") certificateId: option<certificateId>
}
  type response = {
@as("registrationConfig") registrationConfig: registrationConfig,
@as("certificateDescription") certificateDescription: cACertificateDescription
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeCACertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAuthorizer = {
  type t;
  type request = {
@as("authorizerName") authorizerName: option<authorizerName>
}
  type response = {
@as("authorizerDescription") authorizerDescription: authorizerDescription
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAuditTask = {
  type t;
  type request = {
@as("taskId") taskId: option<auditTaskId>
}
  type response = {
@as("auditDetails") auditDetails: auditDetails,
@as("scheduledAuditName") scheduledAuditName: scheduledAuditName,
@as("taskStatistics") taskStatistics: taskStatistics,
@as("taskStartTime") taskStartTime: amazonawsTimestamp,
@as("taskType") taskType: auditTaskType,
@as("taskStatus") taskStatus: auditTaskStatus
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeAuditTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAuditSuppression = {
  type t;
  type request = {
@as("resourceIdentifier") resourceIdentifier: option<resourceIdentifier>,
@as("checkName") checkName: option<auditCheckName>
}
  type response = {
@as("description") description: auditDescription,
@as("suppressIndefinitely") suppressIndefinitely: suppressIndefinitely,
@as("expirationDate") expirationDate: amazonawsTimestamp,
@as("resourceIdentifier") resourceIdentifier: resourceIdentifier,
@as("checkName") checkName: auditCheckName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeAuditSuppressionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccountAuditConfiguration = {
  type t;
  type request = unit
  type response = {
@as("auditCheckConfigurations") auditCheckConfigurations: auditCheckConfigurations,
@as("auditNotificationTargetConfigurations") auditNotificationTargetConfigurations: auditNotificationTargetConfigurations,
@as("roleArn") roleArn: roleArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeAccountAuditConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAuditSuppression = {
  type t;
  type request = {
@as("resourceIdentifier") resourceIdentifier: option<resourceIdentifier>,
@as("checkName") checkName: option<auditCheckName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DeleteAuditSuppressionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateThingType = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("thingTypeProperties") thingTypeProperties: thingTypeProperties,
@as("thingTypeName") thingTypeName: option<thingTypeName>
}
  type response = {
@as("thingTypeId") thingTypeId: thingTypeId,
@as("thingTypeArn") thingTypeArn: thingTypeArn,
@as("thingTypeName") thingTypeName: thingTypeName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateThingTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateThing = {
  type t;
  type request = {
@as("billingGroupName") billingGroupName: billingGroupName,
@as("attributePayload") attributePayload: attributePayload,
@as("thingTypeName") thingTypeName: thingTypeName,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("thingId") thingId: thingId,
@as("thingArn") thingArn: thingArn,
@as("thingName") thingName: thingName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateScheduledAudit = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("scheduledAuditName") scheduledAuditName: option<scheduledAuditName>,
@as("targetCheckNames") targetCheckNames: option<targetAuditCheckNames>,
@as("dayOfWeek") dayOfWeek: dayOfWeek,
@as("dayOfMonth") dayOfMonth: dayOfMonth,
@as("frequency") frequency: option<auditFrequency>
}
  type response = {
@as("scheduledAuditArn") scheduledAuditArn: scheduledAuditArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateScheduledAuditCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRoleAlias = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("credentialDurationSeconds") credentialDurationSeconds: credentialDurationSeconds,
@as("roleArn") roleArn: option<roleArn>,
@as("roleAlias") roleAlias: option<roleAlias>
}
  type response = {
@as("roleAliasArn") roleAliasArn: roleAliasArn,
@as("roleAlias") roleAlias: roleAlias
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateRoleAliasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProvisioningTemplate = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("preProvisioningHook") preProvisioningHook: provisioningHook,
@as("provisioningRoleArn") provisioningRoleArn: option<roleArn>,
@as("enabled") enabled: enabled,
@as("templateBody") templateBody: option<templateBody>,
@as("description") description: templateDescription,
@as("templateName") templateName: option<templateName>
}
  type response = {
@as("defaultVersionId") defaultVersionId: templateVersionId,
@as("templateName") templateName: templateName,
@as("templateArn") templateArn: templateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateProvisioningTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePolicy = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("policyDocument") policyDocument: option<policyDocument>,
@as("policyName") policyName: option<policyName>
}
  type response = {
@as("policyVersionId") policyVersionId: policyVersionId,
@as("policyDocument") policyDocument: policyDocument,
@as("policyArn") policyArn: policyArn,
@as("policyName") policyName: policyName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreatePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomainConfiguration = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("serviceType") serviceType: serviceType,
@as("authorizerConfig") authorizerConfig: authorizerConfig,
@as("validationCertificateArn") validationCertificateArn: acmCertificateArn,
@as("serverCertificateArns") serverCertificateArns: serverCertificateArns,
@as("domainName") domainName: domainName,
@as("domainConfigurationName") domainConfigurationName: option<domainConfigurationName>
}
  type response = {
@as("domainConfigurationArn") domainConfigurationArn: domainConfigurationArn,
@as("domainConfigurationName") domainConfigurationName: domainConfigurationName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateDomainConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDimension = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("tags") tags: tagList,
@as("stringValues") stringValues: option<dimensionStringValues>,
@as("type") type_: option<dimensionType>,
@as("name") name: option<dimensionName>
}
  type response = {
@as("arn") arn: dimensionArn,
@as("name") name: dimensionName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateDimensionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomMetric = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("tags") tags: tagList,
@as("metricType") metricType: option<customMetricType>,
@as("displayName") displayName: customMetricDisplayName,
@as("metricName") metricName: option<metricName>
}
  type response = {
@as("metricArn") metricArn: customMetricArn,
@as("metricName") metricName: metricName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateCustomMetricCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBillingGroup = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("billingGroupProperties") billingGroupProperties: billingGroupProperties,
@as("billingGroupName") billingGroupName: option<billingGroupName>
}
  type response = {
@as("billingGroupId") billingGroupId: billingGroupId,
@as("billingGroupArn") billingGroupArn: billingGroupArn,
@as("billingGroupName") billingGroupName: billingGroupName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateBillingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAuthorizer = {
  type t;
  type request = {
@as("signingDisabled") signingDisabled: booleanKey,
@as("tags") tags: tagList,
@as("status") status: authorizerStatus,
@as("tokenSigningPublicKeys") tokenSigningPublicKeys: publicKeyMap,
@as("tokenKeyName") tokenKeyName: tokenKeyName,
@as("authorizerFunctionArn") authorizerFunctionArn: option<authorizerFunctionArn>,
@as("authorizerName") authorizerName: option<authorizerName>
}
  type response = {
@as("authorizerArn") authorizerArn: authorizerArn,
@as("authorizerName") authorizerName: authorizerName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateAuthorizerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAuditSuppression = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("description") description: auditDescription,
@as("suppressIndefinitely") suppressIndefinitely: suppressIndefinitely,
@as("expirationDate") expirationDate: amazonawsTimestamp,
@as("resourceIdentifier") resourceIdentifier: option<resourceIdentifier>,
@as("checkName") checkName: option<auditCheckName>
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateAuditSuppressionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateThingGroup = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("thingGroupProperties") thingGroupProperties: option<thingGroupProperties>,
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = {
@as("version") version: version
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateStream = {
  type t;
  type request = {
@as("roleArn") roleArn: roleArn,
@as("files") files: streamFiles,
@as("description") description: streamDescription,
@as("streamId") streamId: option<streamId>
}
  type response = {
@as("streamVersion") streamVersion: streamVersion,
@as("description") description: streamDescription,
@as("streamArn") streamArn: streamArn,
@as("streamId") streamId: streamId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMitigationAction = {
  type t;
  type request = {
@as("actionParams") actionParams: mitigationActionParams,
@as("roleArn") roleArn: roleArn,
@as("actionName") actionName: option<mitigationActionName>
}
  type response = {
@as("actionId") actionId: mitigationActionId,
@as("actionArn") actionArn: mitigationActionArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateMitigationActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateJob = {
  type t;
  type request = {
@as("namespaceId") namespaceId: namespaceId,
@as("timeoutConfig") timeoutConfig: timeoutConfig,
@as("abortConfig") abortConfig: abortConfig,
@as("jobExecutionsRolloutConfig") jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
@as("presignedUrlConfig") presignedUrlConfig: presignedUrlConfig,
@as("description") description: jobDescription,
@as("jobId") jobId: option<jobId>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateIndexingConfiguration = {
  type t;
  type request = {
@as("thingGroupIndexingConfiguration") thingGroupIndexingConfiguration: thingGroupIndexingConfiguration,
@as("thingIndexingConfiguration") thingIndexingConfiguration: thingIndexingConfiguration
}
  type response = unit
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateIndexingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDynamicThingGroup = {
  type t;
  type request = {
@as("queryVersion") queryVersion: queryVersion,
@as("queryString") queryString: queryString,
@as("indexName") indexName: indexName,
@as("expectedVersion") expectedVersion: optionalVersion,
@as("thingGroupProperties") thingGroupProperties: option<thingGroupProperties>,
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = {
@as("version") version: version
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateDynamicThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartAuditMitigationActionsTask = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("auditCheckToActionsMapping") auditCheckToActionsMapping: option<auditCheckToActionsMapping>,
@as("target") target: option<auditMitigationActionsTaskTarget>,
@as("taskId") taskId: option<mitigationActionsTaskId>
}
  type response = {
@as("taskId") taskId: mitigationActionsTaskId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "StartAuditMitigationActionsTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchIndex = {
  type t;
  type request = {
@as("queryVersion") queryVersion: queryVersion,
@as("maxResults") maxResults: queryMaxResults,
@as("nextToken") nextToken: nextToken,
@as("queryString") queryString: option<queryString>,
@as("indexName") indexName: indexName
}
  type response = {
@as("thingGroups") thingGroups: thingGroupDocumentList,
@as("things") things: thingDocumentList,
@as("nextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "SearchIndexCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListV2LoggingLevels = {
  type t;
  type request = {
@as("maxResults") maxResults: skyfallMaxResults,
@as("nextToken") nextToken: nextToken,
@as("targetType") targetType: logTargetType
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("logTargetConfigurations") logTargetConfigurations: logTargetConfigurations
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListV2LoggingLevelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThings = {
  type t;
  type request = {
@as("usePrefixAttributeValue") usePrefixAttributeValue: usePrefixAttributeValue,
@as("thingTypeName") thingTypeName: thingTypeName,
@as("attributeValue") attributeValue: attributeValue,
@as("attributeName") attributeName: attributeName,
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("things") things: thingAttributeList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSecurityProfilesForTarget = {
  type t;
  type request = {
@as("securityProfileTargetArn") securityProfileTargetArn: option<securityProfileTargetArn>,
@as("recursive") recursive: recursive,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("securityProfileTargetMappings") securityProfileTargetMappings: securityProfileTargetMappings
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListSecurityProfilesForTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobExecutionsForThing = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: laserMaxResults,
@as("namespaceId") namespaceId: namespaceId,
@as("status") status: jobExecutionStatus,
@as("thingName") thingName: option<thingName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("executionSummaries") executionSummaries: jobExecutionSummaryForThingList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListJobExecutionsForThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobExecutionsForJob = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: laserMaxResults,
@as("status") status: jobExecutionStatus,
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("executionSummaries") executionSummaries: jobExecutionSummaryForJobList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListJobExecutionsForJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTopicRuleDestination = {
  type t;
  type request = {
@as("arn") arn: option<awsArn>
}
  type response = {
@as("topicRuleDestination") topicRuleDestination: topicRuleDestination
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetTopicRuleDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIndexingConfiguration = {
  type t;
  type request = unit
  type response = {
@as("thingGroupIndexingConfiguration") thingGroupIndexingConfiguration: thingGroupIndexingConfiguration,
@as("thingIndexingConfiguration") thingIndexingConfiguration: thingIndexingConfiguration
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetIndexingConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeThingGroup = {
  type t;
  type request = {
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = {
@as("status") status: dynamicGroupStatus,
@as("queryVersion") queryVersion: queryVersion,
@as("queryString") queryString: queryString,
@as("indexName") indexName: indexName,
@as("thingGroupMetadata") thingGroupMetadata: thingGroupMetadata,
@as("thingGroupProperties") thingGroupProperties: thingGroupProperties,
@as("version") version: version,
@as("thingGroupArn") thingGroupArn: thingGroupArn,
@as("thingGroupId") thingGroupId: thingGroupId,
@as("thingGroupName") thingGroupName: thingGroupName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMitigationAction = {
  type t;
  type request = {
@as("actionName") actionName: option<mitigationActionName>
}
  type response = {
@as("lastModifiedDate") lastModifiedDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("actionParams") actionParams: mitigationActionParams,
@as("roleArn") roleArn: roleArn,
@as("actionId") actionId: mitigationActionId,
@as("actionArn") actionArn: mitigationActionArn,
@as("actionType") actionType: mitigationActionType,
@as("actionName") actionName: mitigationActionName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeMitigationActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobTemplate = {
  type t;
  type request = {
@as("jobTemplateId") jobTemplateId: option<jobTemplateId>
}
  type response = {
@as("timeoutConfig") timeoutConfig: timeoutConfig,
@as("abortConfig") abortConfig: abortConfig,
@as("jobExecutionsRolloutConfig") jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
@as("presignedUrlConfig") presignedUrlConfig: presignedUrlConfig,
@as("createdAt") createdAt: dateType,
@as("document") document: jobDocument,
@as("documentSource") documentSource: jobDocumentSource,
@as("description") description: jobDescription,
@as("jobTemplateId") jobTemplateId: jobTemplateId,
@as("jobTemplateArn") jobTemplateArn: jobTemplateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJobExecution = {
  type t;
  type request = {
@as("executionNumber") executionNumber: executionNumber,
@as("thingName") thingName: option<thingName>,
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("execution") execution: jobExecution
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTopicRuleDestination = {
  type t;
  type request = {
@as("destinationConfiguration") destinationConfiguration: option<topicRuleDestinationConfiguration>
}
  type response = {
@as("topicRuleDestination") topicRuleDestination: topicRuleDestination
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateTopicRuleDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateThingGroup = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("thingGroupProperties") thingGroupProperties: thingGroupProperties,
@as("parentGroupName") parentGroupName: thingGroupName,
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = {
@as("thingGroupId") thingGroupId: thingGroupId,
@as("thingGroupArn") thingGroupArn: thingGroupArn,
@as("thingGroupName") thingGroupName: thingGroupName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateStream = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("roleArn") roleArn: option<roleArn>,
@as("files") files: option<streamFiles>,
@as("description") description: streamDescription,
@as("streamId") streamId: option<streamId>
}
  type response = {
@as("streamVersion") streamVersion: streamVersion,
@as("description") description: streamDescription,
@as("streamArn") streamArn: streamArn,
@as("streamId") streamId: streamId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMitigationAction = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("actionParams") actionParams: option<mitigationActionParams>,
@as("roleArn") roleArn: option<roleArn>,
@as("actionName") actionName: option<mitigationActionName>
}
  type response = {
@as("actionId") actionId: mitigationActionId,
@as("actionArn") actionArn: mitigationActionArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateMitigationActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJobTemplate = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("timeoutConfig") timeoutConfig: timeoutConfig,
@as("abortConfig") abortConfig: abortConfig,
@as("jobExecutionsRolloutConfig") jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
@as("presignedUrlConfig") presignedUrlConfig: presignedUrlConfig,
@as("description") description: option<jobDescription>,
@as("document") document: jobDocument,
@as("documentSource") documentSource: jobDocumentSource,
@as("jobArn") jobArn: jobArn,
@as("jobTemplateId") jobTemplateId: option<jobTemplateId>
}
  type response = {
@as("jobTemplateId") jobTemplateId: jobTemplateId,
@as("jobTemplateArn") jobTemplateArn: jobTemplateArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateJobTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateJob = {
  type t;
  type request = {
@as("jobTemplateArn") jobTemplateArn: jobTemplateArn,
@as("namespaceId") namespaceId: namespaceId,
@as("tags") tags: tagList,
@as("timeoutConfig") timeoutConfig: timeoutConfig,
@as("abortConfig") abortConfig: abortConfig,
@as("jobExecutionsRolloutConfig") jobExecutionsRolloutConfig: jobExecutionsRolloutConfig,
@as("targetSelection") targetSelection: targetSelection,
@as("presignedUrlConfig") presignedUrlConfig: presignedUrlConfig,
@as("description") description: jobDescription,
@as("document") document: jobDocument,
@as("documentSource") documentSource: jobDocumentSource,
@as("targets") targets: option<jobTargets>,
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("description") description: jobDescription,
@as("jobId") jobId: jobId,
@as("jobArn") jobArn: jobArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDynamicThingGroup = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("queryVersion") queryVersion: queryVersion,
@as("queryString") queryString: option<queryString>,
@as("indexName") indexName: indexName,
@as("thingGroupProperties") thingGroupProperties: thingGroupProperties,
@as("thingGroupName") thingGroupName: option<thingGroupName>
}
  type response = {
@as("queryVersion") queryVersion: queryVersion,
@as("queryString") queryString: queryString,
@as("indexName") indexName: indexName,
@as("thingGroupId") thingGroupId: thingGroupId,
@as("thingGroupArn") thingGroupArn: thingGroupArn,
@as("thingGroupName") thingGroupName: thingGroupName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateDynamicThingGroupCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTopicRuleDestinations = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: topicRuleDestinationMaxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("destinationSummaries") destinationSummaries: topicRuleDestinationSummaries
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListTopicRuleDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThingTypes = {
  type t;
  type request = {
@as("thingTypeName") thingTypeName: thingTypeName,
@as("maxResults") maxResults: registryMaxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("thingTypes") thingTypes: thingTypeList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListThingTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAuditSuppressions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("ascendingOrder") ascendingOrder: ascendingOrder,
@as("resourceIdentifier") resourceIdentifier: resourceIdentifier,
@as("checkName") checkName: auditCheckName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("suppressions") suppressions: auditSuppressionList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListAuditSuppressionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStream = {
  type t;
  type request = {
@as("streamId") streamId: option<streamId>
}
  type response = {
@as("streamInfo") streamInfo: streamInfo
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeStreamCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeJob = {
  type t;
  type request = {
@as("jobId") jobId: option<jobId>
}
  type response = {
@as("job") job: job,
@as("documentSource") documentSource: jobDocumentSource
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ValidateSecurityProfileBehaviors = {
  type t;
  type request = {
@as("behaviors") behaviors: option<behaviors>
}
  type response = {
@as("validationErrors") validationErrors: validationErrors,
@as("valid") valid: valid
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ValidateSecurityProfileBehaviorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSecurityProfile = {
  type t;
  type request = {
@as("expectedVersion") expectedVersion: optionalVersion,
@as("deleteAdditionalMetricsToRetain") deleteAdditionalMetricsToRetain: deleteAdditionalMetricsToRetain,
@as("deleteAlertTargets") deleteAlertTargets: deleteAlertTargets,
@as("deleteBehaviors") deleteBehaviors: deleteBehaviors,
@as("additionalMetricsToRetainV2") additionalMetricsToRetainV2: additionalMetricsToRetainV2List,
@as("additionalMetricsToRetain") additionalMetricsToRetain: additionalMetricsToRetainList,
@as("alertTargets") alertTargets: alertTargets,
@as("behaviors") behaviors: behaviors,
@as("securityProfileDescription") securityProfileDescription: securityProfileDescription,
@as("securityProfileName") securityProfileName: option<securityProfileName>
}
  type response = {
@as("lastModifiedDate") lastModifiedDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("version") version: version,
@as("additionalMetricsToRetainV2") additionalMetricsToRetainV2: additionalMetricsToRetainV2List,
@as("additionalMetricsToRetain") additionalMetricsToRetain: additionalMetricsToRetainList,
@as("alertTargets") alertTargets: alertTargets,
@as("behaviors") behaviors: behaviors,
@as("securityProfileDescription") securityProfileDescription: securityProfileDescription,
@as("securityProfileArn") securityProfileArn: securityProfileArn,
@as("securityProfileName") securityProfileName: securityProfileName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "UpdateSecurityProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSecurityProfile = {
  type t;
  type request = {
@as("securityProfileName") securityProfileName: option<securityProfileName>
}
  type response = {
@as("lastModifiedDate") lastModifiedDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("version") version: version,
@as("additionalMetricsToRetainV2") additionalMetricsToRetainV2: additionalMetricsToRetainV2List,
@as("additionalMetricsToRetain") additionalMetricsToRetain: additionalMetricsToRetainList,
@as("alertTargets") alertTargets: alertTargets,
@as("behaviors") behaviors: behaviors,
@as("securityProfileDescription") securityProfileDescription: securityProfileDescription,
@as("securityProfileArn") securityProfileArn: securityProfileArn,
@as("securityProfileName") securityProfileName: securityProfileName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeSecurityProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAuditMitigationActionsTask = {
  type t;
  type request = {
@as("taskId") taskId: option<mitigationActionsTaskId>
}
  type response = {
@as("actionsDefinition") actionsDefinition: mitigationActionList,
@as("auditCheckToActionsMapping") auditCheckToActionsMapping: auditCheckToActionsMapping,
@as("target") target: auditMitigationActionsTaskTarget,
@as("taskStatistics") taskStatistics: auditMitigationActionsTaskStatistics,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("taskStatus") taskStatus: auditMitigationActionsTaskStatus
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeAuditMitigationActionsTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAuditFinding = {
  type t;
  type request = {
@as("findingId") findingId: option<findingId>
}
  type response = {
@as("finding") finding: auditFinding
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeAuditFindingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSecurityProfile = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("additionalMetricsToRetainV2") additionalMetricsToRetainV2: additionalMetricsToRetainV2List,
@as("additionalMetricsToRetain") additionalMetricsToRetain: additionalMetricsToRetainList,
@as("alertTargets") alertTargets: alertTargets,
@as("behaviors") behaviors: behaviors,
@as("securityProfileDescription") securityProfileDescription: securityProfileDescription,
@as("securityProfileName") securityProfileName: option<securityProfileName>
}
  type response = {
@as("securityProfileArn") securityProfileArn: securityProfileArn,
@as("securityProfileName") securityProfileName: securityProfileName
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateSecurityProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestAuthorization = {
  type t;
  type request = {
@as("policyNamesToSkip") policyNamesToSkip: policyNames,
@as("policyNamesToAdd") policyNamesToAdd: policyNames,
@as("clientId") clientId: clientId,
@as("authInfos") authInfos: option<authInfos>,
@as("cognitoIdentityPoolId") cognitoIdentityPoolId: cognitoIdentityPoolId,
@as("principal") principal: principal
}
  type response = {
@as("authResults") authResults: authResults
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "TestAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListViolationEvents = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("listSuppressedAlerts") listSuppressedAlerts: listSuppressedAlerts,
@as("behaviorCriteriaType") behaviorCriteriaType: behaviorCriteriaType,
@as("securityProfileName") securityProfileName: securityProfileName,
@as("thingName") thingName: deviceDefenderThingName,
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("violationEvents") violationEvents: violationEvents
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListViolationEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAuditFindings = {
  type t;
  type request = {
@as("listSuppressedFindings") listSuppressedFindings: listSuppressedFindings,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("resourceIdentifier") resourceIdentifier: resourceIdentifier,
@as("checkName") checkName: auditCheckName,
@as("taskId") taskId: auditTaskId
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("findings") findings: auditFindings
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListAuditFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListActiveViolations = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("listSuppressedAlerts") listSuppressedAlerts: listSuppressedAlerts,
@as("behaviorCriteriaType") behaviorCriteriaType: behaviorCriteriaType,
@as("securityProfileName") securityProfileName: securityProfileName,
@as("thingName") thingName: deviceDefenderThingName
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("activeViolations") activeViolations: activeViolations
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListActiveViolationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDetectMitigationActionsTask = {
  type t;
  type request = {
@as("taskId") taskId: option<mitigationActionsTaskId>
}
  type response = {
@as("taskSummary") taskSummary: detectMitigationActionsTaskSummary
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "DescribeDetectMitigationActionsTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateOTAUpdate = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("additionalParameters") additionalParameters: additionalParameterMap,
@as("roleArn") roleArn: option<roleArn>,
@as("files") files: option<oTAUpdateFiles>,
@as("awsJobTimeoutConfig") awsJobTimeoutConfig: awsJobTimeoutConfig,
@as("awsJobAbortConfig") awsJobAbortConfig: awsJobAbortConfig,
@as("awsJobPresignedUrlConfig") awsJobPresignedUrlConfig: awsJobPresignedUrlConfig,
@as("awsJobExecutionsRolloutConfig") awsJobExecutionsRolloutConfig: awsJobExecutionsRolloutConfig,
@as("targetSelection") targetSelection: targetSelection,
@as("protocols") protocols: protocols,
@as("targets") targets: option<targets>,
@as("description") description: oTAUpdateDescription,
@as("otaUpdateId") otaUpdateId: option<oTAUpdateId>
}
  type response = {
@as("otaUpdateStatus") otaUpdateStatus: oTAUpdateStatus,
@as("awsIotJobArn") awsIotJobArn: awsIotJobArn,
@as("otaUpdateArn") otaUpdateArn: oTAUpdateArn,
@as("awsIotJobId") awsIotJobId: awsIotJobId,
@as("otaUpdateId") otaUpdateId: oTAUpdateId
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateOTAUpdateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDetectMitigationActionsTasks = {
  type t;
  type request = {
@as("endTime") endTime: option<amazonawsTimestamp>,
@as("startTime") startTime: option<amazonawsTimestamp>,
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tasks") tasks: detectMitigationActionsTaskSummaryList
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ListDetectMitigationActionsTasksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOTAUpdate = {
  type t;
  type request = {
@as("otaUpdateId") otaUpdateId: option<oTAUpdateId>
}
  type response = {
@as("otaUpdateInfo") otaUpdateInfo: oTAUpdateInfo
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetOTAUpdateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReplaceTopicRule = {
  type t;
  type request = {
@as("topicRulePayload") topicRulePayload: option<topicRulePayload>,
@as("ruleName") ruleName: option<ruleName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "ReplaceTopicRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetTopicRule = {
  type t;
  type request = {
@as("ruleName") ruleName: option<ruleName>
}
  type response = {
@as("rule") rule: topicRule,
@as("ruleArn") ruleArn: ruleArn
}
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "GetTopicRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTopicRule = {
  type t;
  type request = {
@as("tags") tags: amazonawsString,
@as("topicRulePayload") topicRulePayload: option<topicRulePayload>,
@as("ruleName") ruleName: option<ruleName>
}
  
  @module("@aws-sdk/client-iot") @new external new_: (Js.Promise.t<request>) => t = "CreateTopicRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}
