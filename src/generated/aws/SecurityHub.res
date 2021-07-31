type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-securityhub") @new external createClient: unit => awsServiceClient = "SecurityHubClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type workflowStatus = [@as("SUPPRESSED") #SUPPRESSED | @as("RESOLVED") #RESOLVED | @as("NOTIFIED") #NOTIFIED | @as("NEW") #NEW]
type workflowState = [@as("RESOLVED") #RESOLVED | @as("DEFERRED") #DEFERRED | @as("IN_PROGRESS") #IN_PROGRESS | @as("ASSIGNED") #ASSIGNED | @as("NEW") #NEW]
type verificationState = [@as("BENIGN_POSITIVE") #BENIGN_POSITIVE | @as("FALSE_POSITIVE") #FALSE_POSITIVE | @as("TRUE_POSITIVE") #TRUE_POSITIVE | @as("UNKNOWN") #UNKNOWN]
type timestamp_ = Js.Date.t;
type threatIntelIndicatorType = [@as("URL") #URL | @as("PROCESS") #PROCESS | @as("MUTEX") #MUTEX | @as("IPV6_ADDRESS") #IPV6_ADDRESS | @as("IPV4_ADDRESS") #IPV4_ADDRESS | @as("HASH_SHA512") #HASH_SHA512 | @as("HASH_SHA256") #HASH_SHA256 | @as("HASH_SHA1") #HASH_SHA1 | @as("HASH_MD5") #HASH_MD5 | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS | @as("DOMAIN") #DOMAIN]
type threatIntelIndicatorCategory = [@as("KEYLOGGER") #KEYLOGGER | @as("EXPLOIT_SITE") #EXPLOIT_SITE | @as("DROP_SITE") #DROP_SITE | @as("COMMAND_AND_CONTROL") #COMMAND_AND_CONTROL | @as("CARD_STEALER") #CARD_STEALER | @as("BACKDOOR") #BACKDOOR]
type tagValue = string
type tagKey = string
type stringFilterComparison = [@as("PREFIX_NOT_EQUALS") #PREFIX_NOT_EQUALS | @as("NOT_EQUALS") #NOT_EQUALS | @as("PREFIX") #PREFIX | @as("EQUALS") #EQUALS]
type standardsStatus = [@as("INCOMPLETE") #INCOMPLETE | @as("DELETING") #DELETING | @as("FAILED") #FAILED | @as("READY") #READY | @as("PENDING") #PENDING]
type sortOrder = [@as("desc") #Desc | @as("asc") #Asc]
type sizeBytes = float
type severityRating = [@as("CRITICAL") #CRITICAL | @as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type severityLabel = [@as("CRITICAL") #CRITICAL | @as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("INFORMATIONAL") #INFORMATIONAL]
type resourceArn = string
type recordState = [@as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type ratioScale = int
type partition = [@as("aws-us-gov") #Aws_Us_Gov | @as("aws-cn") #Aws_Cn | @as("aws") #Aws]
type nonEmptyString = string
type nextToken = string
type networkDirection = [@as("OUT") #OUT | @as("IN") #IN]
type maxResults = int
type mapFilterComparison = [@as("NOT_EQUALS") #NOT_EQUALS | @as("EQUALS") #EQUALS]
type malwareType = [@as("WORM") #WORM | @as("VIRUS") #VIRUS | @as("TROJAN") #TROJAN | @as("ROOTKIT") #ROOTKIT | @as("REMOTE_ACCESS") #REMOTE_ACCESS | @as("RANSOMWARE") #RANSOMWARE | @as("SPYWARE") #SPYWARE | @as("POTENTIALLY_UNWANTED") #POTENTIALLY_UNWANTED | @as("MACRO") #MACRO | @as("KEYLOGGER") #KEYLOGGER | @as("EXPLOIT_KIT") #EXPLOIT_KIT | @as("COIN_MINER") #COIN_MINER | @as("BOTNET_AGENT") #BOTNET_AGENT | @as("BLENDED_THREAT") #BLENDED_THREAT | @as("ADWARE") #ADWARE]
type malwareState = [@as("REMOVED") #REMOVED | @as("REMOVAL_FAILED") #REMOVAL_FAILED | @as("OBSERVED") #OBSERVED]
type long = float
type integrationType = [@as("UPDATE_FINDINGS_IN_SECURITY_HUB") #UPDATE_FINDINGS_IN_SECURITY_HUB | @as("RECEIVE_FINDINGS_FROM_SECURITY_HUB") #RECEIVE_FINDINGS_FROM_SECURITY_HUB | @as("SEND_FINDINGS_TO_SECURITY_HUB") #SEND_FINDINGS_TO_SECURITY_HUB]
type integer_ = int
type double = float
type dateRangeUnit = [@as("DAYS") #DAYS]
type crossAccountMaxResults = int
type controlStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type complianceStatus = [@as("NOT_AVAILABLE") #NOT_AVAILABLE | @as("FAILED") #FAILED | @as("WARNING") #WARNING | @as("PASSED") #PASSED]
type boolean_ = bool
type awsLambdaLayerVersionNumber = float
type awsIamRoleAssumeRolePolicyDocument = string
type awsIamAccessKeyStatus = [@as("Inactive") #Inactive | @as("Active") #Active]
type adminsMaxResults = int
type adminStatus = [@as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS | @as("ENABLED") #ENABLED]
type accountId = string
type workflowUpdate = {
@as("Status") status: option<workflowStatus>
}
type workflow = {
@as("Status") status: option<workflowStatus>
}
type wafOverrideAction = {
@as("Type") type_: option<nonEmptyString>
}
type wafExcludedRule = {
@as("RuleId") ruleId: option<nonEmptyString>
}
type wafAction = {
@as("Type") type_: option<nonEmptyString>
}
type vulnerabilityVendor = {
@as("VendorUpdatedAt") vendorUpdatedAt: option<nonEmptyString>,
  @as("VendorCreatedAt") vendorCreatedAt: option<nonEmptyString>,
  @as("VendorSeverity") vendorSeverity: option<nonEmptyString>,
  @as("Url") url: option<nonEmptyString>,
  @as("Name") name: nonEmptyString
}
type typeList = array<nonEmptyString>
type threatIntelIndicator = {
@as("SourceUrl") sourceUrl: option<nonEmptyString>,
  @as("Source") source: option<nonEmptyString>,
  @as("LastObservedAt") lastObservedAt: option<nonEmptyString>,
  @as("Category") category: option<threatIntelIndicatorCategory>,
  @as("Value") value: option<nonEmptyString>,
  @as("Type") type_: option<threatIntelIndicatorType>
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<nonEmptyString>
type stringFilter = {
@as("Comparison") comparison: option<stringFilterComparison>,
  @as("Value") value: option<nonEmptyString>
}
type statusReason = {
@as("Description") description: option<nonEmptyString>,
  @as("ReasonCode") reasonCode: nonEmptyString
}
type standardsSubscriptionArns = array<nonEmptyString>
type standardsInputParameterMap = Js.Dict.t<nonEmptyString>
type standard = {
@as("EnabledByDefault") enabledByDefault: option<boolean_>,
  @as("Description") description: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>,
  @as("StandardsArn") standardsArn: option<nonEmptyString>
}
type sortCriterion = {
@as("SortOrder") sortOrder: option<sortOrder>,
  @as("Field") field: option<nonEmptyString>
}
type softwarePackage = {
@as("Architecture") architecture: option<nonEmptyString>,
  @as("Release") release: option<nonEmptyString>,
  @as("Epoch") epoch: option<nonEmptyString>,
  @as("Version") version: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type severityUpdate = {
@as("Label") label: option<severityLabel>,
  @as("Product") product: option<double>,
  @as("Normalized") normalized: option<ratioScale>
}
type severity = {
@as("Original") original: option<nonEmptyString>,
  @as("Normalized") normalized: option<integer_>,
  @as("Label") label: option<severityLabel>,
  @as("Product") product: option<double>
}
type securityGroups = array<nonEmptyString>
type result = {
@as("ProcessingResult") processingResult: option<nonEmptyString>,
  @as("AccountId") accountId: option<accountId>
}
type relatedRequirementsList = array<nonEmptyString>
type relatedFinding = {
@as("Id") id: nonEmptyString,
  @as("ProductArn") productArn: nonEmptyString
}
type record = {
@as("RecordIndex") recordIndex: option<long>,
  @as("JsonPath") jsonPath: option<nonEmptyString>
}
type recommendation = {
@as("Url") url: option<nonEmptyString>,
  @as("Text") text: option<nonEmptyString>
}
type range = {
@as("StartColumn") startColumn: option<long>,
  @as("End") end: option<long>,
  @as("Start") start: option<long>
}
type productSubscriptionArnList = array<nonEmptyString>
type processDetails = {
@as("TerminatedAt") terminatedAt: option<nonEmptyString>,
  @as("LaunchedAt") launchedAt: option<nonEmptyString>,
  @as("ParentPid") parentPid: option<integer_>,
  @as("Pid") pid: option<integer_>,
  @as("Path") path: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type portRangeFromTo = {
@as("To") to: option<integer_>,
  @as("From") from: option<integer_>
}
type portRange = {
@as("End") end: option<integer_>,
  @as("Begin") begin: option<integer_>
}
type patchSummary = {
@as("Operation") operation: option<nonEmptyString>,
  @as("RebootOption") rebootOption: option<nonEmptyString>,
  @as("OperationEndTime") operationEndTime: option<nonEmptyString>,
  @as("OperationStartTime") operationStartTime: option<nonEmptyString>,
  @as("InstalledPendingReboot") installedPendingReboot: option<integer_>,
  @as("InstalledRejectedCount") installedRejectedCount: option<integer_>,
  @as("InstalledOtherCount") installedOtherCount: option<integer_>,
  @as("FailedCount") failedCount: option<integer_>,
  @as("MissingCount") missingCount: option<integer_>,
  @as("InstalledCount") installedCount: option<integer_>,
  @as("Id") id: nonEmptyString
}
type numberFilter = {
@as("Eq") eq: option<double>,
  @as("Lte") lte: option<double>,
  @as("Gte") gte: option<double>
}
type noteUpdate = {
@as("UpdatedBy") updatedBy: nonEmptyString,
  @as("Text") text: nonEmptyString
}
type note = {
@as("UpdatedAt") updatedAt: nonEmptyString,
  @as("UpdatedBy") updatedBy: nonEmptyString,
  @as("Text") text: nonEmptyString
}
type nonEmptyStringList = array<nonEmptyString>
type member = {
@as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("InvitedAt") invitedAt: option<timestamp_>,
  @as("MemberStatus") memberStatus: option<nonEmptyString>,
  @as("AdministratorId") administratorId: option<nonEmptyString>,
  @as("MasterId") masterId: option<nonEmptyString>,
  @as("Email") email: option<nonEmptyString>,
  @as("AccountId") accountId: option<accountId>
}
type mapFilter = {
@as("Comparison") comparison: option<mapFilterComparison>,
  @as("Value") value: option<nonEmptyString>,
  @as("Key") key: option<nonEmptyString>
}
type malware = {
@as("State") state: option<malwareState>,
  @as("Path") path: option<nonEmptyString>,
  @as("Type") type_: option<malwareType>,
  @as("Name") name: nonEmptyString
}
type loadBalancerState = {
@as("Reason") reason: option<nonEmptyString>,
  @as("Code") code: option<nonEmptyString>
}
type keywordFilter = {
@as("Value") value: option<nonEmptyString>
}
type ipv6CidrBlockAssociation = {
@as("CidrBlockState") cidrBlockState: option<nonEmptyString>,
  @as("Ipv6CidrBlock") ipv6CidrBlock: option<nonEmptyString>,
  @as("AssociationId") associationId: option<nonEmptyString>
}
type ipOrganizationDetails = {
@as("Org") org: option<nonEmptyString>,
  @as("Isp") isp: option<nonEmptyString>,
  @as("AsnOrg") asnOrg: option<nonEmptyString>,
  @as("Asn") asn: option<integer_>
}
type ipFilter = {
@as("Cidr") cidr: option<nonEmptyString>
}
type invitation = {
@as("MemberStatus") memberStatus: option<nonEmptyString>,
  @as("InvitedAt") invitedAt: option<timestamp_>,
  @as("InvitationId") invitationId: option<nonEmptyString>,
  @as("AccountId") accountId: option<accountId>
}
type integrationTypeList = array<integrationType>
type insightResultValue = {
@as("Count") count: integer_,
  @as("GroupByAttributeValue") groupByAttributeValue: nonEmptyString
}
type importFindingsError = {
@as("ErrorMessage") errorMessage: nonEmptyString,
  @as("ErrorCode") errorCode: nonEmptyString,
  @as("Id") id: nonEmptyString
}
type icmpTypeCode = {
@as("Type") type_: option<integer_>,
  @as("Code") code: option<integer_>
}
type geoLocation = {
@as("Lat") lat: option<double>,
  @as("Lon") lon: option<double>
}
type findingProviderSeverity = {
@as("Original") original: option<nonEmptyString>,
  @as("Label") label: option<severityLabel>
}
type fieldMap = Js.Dict.t<nonEmptyString>
type dnsRequestAction = {
@as("Blocked") blocked: option<boolean_>,
  @as("Protocol") protocol: option<nonEmptyString>,
  @as("Domain") domain: option<nonEmptyString>
}
type dateRange = {
@as("Unit") unit_: option<dateRangeUnit>,
  @as("Value") value: option<integer_>
}
type cvss = {
@as("BaseVector") baseVector: option<nonEmptyString>,
  @as("BaseScore") baseScore: option<double>,
  @as("Version") version: option<nonEmptyString>
}
type country = {
@as("CountryName") countryName: option<nonEmptyString>,
  @as("CountryCode") countryCode: option<nonEmptyString>
}
type containerDetails = {
@as("LaunchedAt") launchedAt: option<nonEmptyString>,
  @as("ImageName") imageName: option<nonEmptyString>,
  @as("ImageId") imageId: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type classificationStatus = {
@as("Reason") reason: option<nonEmptyString>,
  @as("Code") code: option<nonEmptyString>
}
type city = {
@as("CityName") cityName: option<nonEmptyString>
}
type cidrBlockAssociation = {
@as("CidrBlockState") cidrBlockState: option<nonEmptyString>,
  @as("CidrBlock") cidrBlock: option<nonEmptyString>,
  @as("AssociationId") associationId: option<nonEmptyString>
}
type cell = {
@as("CellReference") cellReference: option<nonEmptyString>,
  @as("ColumnName") columnName: option<nonEmptyString>,
  @as("Row") row: option<long>,
  @as("Column") column: option<long>
}
type categoryList = array<nonEmptyString>
type awsSsmComplianceSummary = {
@as("PatchGroup") patchGroup: option<nonEmptyString>,
  @as("NonCompliantUnspecifiedCount") nonCompliantUnspecifiedCount: option<integer_>,
  @as("NonCompliantMediumCount") nonCompliantMediumCount: option<integer_>,
  @as("OverallSeverity") overallSeverity: option<nonEmptyString>,
  @as("PatchBaselineId") patchBaselineId: option<nonEmptyString>,
  @as("ComplianceType") complianceType: option<nonEmptyString>,
  @as("CompliantLowCount") compliantLowCount: option<integer_>,
  @as("NonCompliantHighCount") nonCompliantHighCount: option<integer_>,
  @as("NonCompliantLowCount") nonCompliantLowCount: option<integer_>,
  @as("CompliantUnspecifiedCount") compliantUnspecifiedCount: option<integer_>,
  @as("NonCompliantInformationalCount") nonCompliantInformationalCount: option<integer_>,
  @as("CompliantInformationalCount") compliantInformationalCount: option<integer_>,
  @as("NonCompliantCriticalCount") nonCompliantCriticalCount: option<integer_>,
  @as("ExecutionType") executionType: option<nonEmptyString>,
  @as("CompliantMediumCount") compliantMediumCount: option<integer_>,
  @as("CompliantHighCount") compliantHighCount: option<integer_>,
  @as("CompliantCriticalCount") compliantCriticalCount: option<integer_>,
  @as("Status") status: option<nonEmptyString>
}
type awsSqsQueueDetails = {
@as("DeadLetterTargetArn") deadLetterTargetArn: option<nonEmptyString>,
  @as("QueueName") queueName: option<nonEmptyString>,
  @as("KmsMasterKeyId") kmsMasterKeyId: option<nonEmptyString>,
  @as("KmsDataKeyReusePeriodSeconds") kmsDataKeyReusePeriodSeconds: option<integer_>
}
type awsSnsTopicSubscription = {
@as("Protocol") protocol: option<nonEmptyString>,
  @as("Endpoint") endpoint: option<nonEmptyString>
}
type awsSecurityFindingIdentifier = {
@as("ProductArn") productArn: nonEmptyString,
  @as("Id") id: nonEmptyString
}
type awsSecretsManagerSecretRotationRules = {
@as("AutomaticallyAfterDays") automaticallyAfterDays: option<integer_>
}
type awsS3ObjectDetails = {
@as("SSEKMSKeyId") ssekmskeyId: option<nonEmptyString>,
  @as("ServerSideEncryption") serverSideEncryption: option<nonEmptyString>,
  @as("ContentType") contentType: option<nonEmptyString>,
  @as("VersionId") versionId: option<nonEmptyString>,
  @as("ETag") etag: option<nonEmptyString>,
  @as("LastModified") lastModified: option<nonEmptyString>
}
type awsS3BucketServerSideEncryptionByDefault = {
@as("KMSMasterKeyID") kmsmasterKeyID: option<nonEmptyString>,
  @as("SSEAlgorithm") ssealgorithm: option<nonEmptyString>
}
type awsS3AccountPublicAccessBlockDetails = {
@as("RestrictPublicBuckets") restrictPublicBuckets: option<boolean_>,
  @as("IgnorePublicAcls") ignorePublicAcls: option<boolean_>,
  @as("BlockPublicPolicy") blockPublicPolicy: option<boolean_>,
  @as("BlockPublicAcls") blockPublicAcls: option<boolean_>
}
type awsRedshiftClusterVpcSecurityGroup = {
@as("VpcSecurityGroupId") vpcSecurityGroupId: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>
}
type awsRedshiftClusterRestoreStatus = {
@as("Status") status: option<nonEmptyString>,
  @as("SnapshotSizeInMegaBytes") snapshotSizeInMegaBytes: option<long>,
  @as("ProgressInMegaBytes") progressInMegaBytes: option<long>,
  @as("EstimatedTimeToCompletionInSeconds") estimatedTimeToCompletionInSeconds: option<long>,
  @as("ElapsedTimeInSeconds") elapsedTimeInSeconds: option<long>,
  @as("CurrentRestoreRateInMegaBytesPerSecond") currentRestoreRateInMegaBytesPerSecond: option<double>
}
type awsRedshiftClusterResizeInfo = {
@as("ResizeType") resizeType: option<nonEmptyString>,
  @as("AllowCancelResize") allowCancelResize: option<boolean_>
}
type awsRedshiftClusterPendingModifiedValues = {
@as("PubliclyAccessible") publiclyAccessible: option<boolean_>,
  @as("NumberOfNodes") numberOfNodes: option<integer_>,
  @as("NodeType") nodeType: option<nonEmptyString>,
  @as("MasterUserPassword") masterUserPassword: option<nonEmptyString>,
  @as("MaintenanceTrackName") maintenanceTrackName: option<nonEmptyString>,
  @as("EnhancedVpcRouting") enhancedVpcRouting: option<boolean_>,
  @as("EncryptionType") encryptionType: option<nonEmptyString>,
  @as("ClusterVersion") clusterVersion: option<nonEmptyString>,
  @as("ClusterType") clusterType: option<nonEmptyString>,
  @as("ClusterIdentifier") clusterIdentifier: option<nonEmptyString>,
  @as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: option<integer_>
}
type awsRedshiftClusterIamRole = {
@as("IamRoleArn") iamRoleArn: option<nonEmptyString>,
  @as("ApplyStatus") applyStatus: option<nonEmptyString>
}
type awsRedshiftClusterHsmStatus = {
@as("Status") status: option<nonEmptyString>,
  @as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: option<nonEmptyString>,
  @as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: option<nonEmptyString>
}
type awsRedshiftClusterEndpoint = {
@as("Port") port: option<integer_>,
  @as("Address") address: option<nonEmptyString>
}
type awsRedshiftClusterElasticIpStatus = {
@as("Status") status: option<nonEmptyString>,
  @as("ElasticIp") elasticIp: option<nonEmptyString>
}
type awsRedshiftClusterDeferredMaintenanceWindow = {
@as("DeferMaintenanceStartTime") deferMaintenanceStartTime: option<nonEmptyString>,
  @as("DeferMaintenanceIdentifier") deferMaintenanceIdentifier: option<nonEmptyString>,
  @as("DeferMaintenanceEndTime") deferMaintenanceEndTime: option<nonEmptyString>
}
type awsRedshiftClusterClusterSnapshotCopyStatus = {
@as("SnapshotCopyGrantName") snapshotCopyGrantName: option<nonEmptyString>,
  @as("RetentionPeriod") retentionPeriod: option<integer_>,
  @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integer_>,
  @as("DestinationRegion") destinationRegion: option<nonEmptyString>
}
type awsRedshiftClusterClusterSecurityGroup = {
@as("Status") status: option<nonEmptyString>,
  @as("ClusterSecurityGroupName") clusterSecurityGroupName: option<nonEmptyString>
}
type awsRedshiftClusterClusterParameterStatus = {
@as("ParameterApplyErrorDescription") parameterApplyErrorDescription: option<nonEmptyString>,
  @as("ParameterApplyStatus") parameterApplyStatus: option<nonEmptyString>,
  @as("ParameterName") parameterName: option<nonEmptyString>
}
type awsRedshiftClusterClusterNode = {
@as("PublicIpAddress") publicIpAddress: option<nonEmptyString>,
  @as("PrivateIpAddress") privateIpAddress: option<nonEmptyString>,
  @as("NodeRole") nodeRole: option<nonEmptyString>
}
type awsRdsDbSubnetGroupSubnetAvailabilityZone = {
@as("Name") name: option<nonEmptyString>
}
type awsRdsDbStatusInfo = {
@as("Message") message: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>,
  @as("Normal") normal: option<boolean_>,
  @as("StatusType") statusType: option<nonEmptyString>
}
type awsRdsDbProcessorFeature = {
@as("Value") value: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type awsRdsDbParameterGroup = {
@as("ParameterApplyStatus") parameterApplyStatus: option<nonEmptyString>,
  @as("DbParameterGroupName") dbParameterGroupName: option<nonEmptyString>
}
type awsRdsDbOptionGroupMembership = {
@as("Status") status: option<nonEmptyString>,
  @as("OptionGroupName") optionGroupName: option<nonEmptyString>
}
type awsRdsDbInstanceVpcSecurityGroup = {
@as("Status") status: option<nonEmptyString>,
  @as("VpcSecurityGroupId") vpcSecurityGroupId: option<nonEmptyString>
}
type awsRdsDbInstanceEndpoint = {
@as("HostedZoneId") hostedZoneId: option<nonEmptyString>,
  @as("Port") port: option<integer_>,
  @as("Address") address: option<nonEmptyString>
}
type awsRdsDbInstanceAssociatedRole = {
@as("Status") status: option<nonEmptyString>,
  @as("FeatureName") featureName: option<nonEmptyString>,
  @as("RoleArn") roleArn: option<nonEmptyString>
}
type awsRdsDbDomainMembership = {
@as("IamRoleName") iamRoleName: option<nonEmptyString>,
  @as("Fqdn") fqdn: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>,
  @as("Domain") domain: option<nonEmptyString>
}
type awsRdsDbClusterOptionGroupMembership = {
@as("Status") status: option<nonEmptyString>,
  @as("DbClusterOptionGroupName") dbClusterOptionGroupName: option<nonEmptyString>
}
type awsRdsDbClusterMember = {
@as("DbClusterParameterGroupStatus") dbClusterParameterGroupStatus: option<nonEmptyString>,
  @as("DbInstanceIdentifier") dbInstanceIdentifier: option<nonEmptyString>,
  @as("PromotionTier") promotionTier: option<integer_>,
  @as("IsClusterWriter") isClusterWriter: option<boolean_>
}
type awsRdsDbClusterAssociatedRole = {
@as("Status") status: option<nonEmptyString>,
  @as("RoleArn") roleArn: option<nonEmptyString>
}
type awsLambdaFunctionTracingConfig = {
@as("Mode") mode: option<nonEmptyString>
}
type awsLambdaFunctionLayer = {
@as("CodeSize") codeSize: option<integer_>,
  @as("Arn") arn: option<nonEmptyString>
}
type awsLambdaFunctionEnvironmentError = {
@as("Message") message: option<nonEmptyString>,
  @as("ErrorCode") errorCode: option<nonEmptyString>
}
type awsLambdaFunctionDeadLetterConfig = {
@as("TargetArn") targetArn: option<nonEmptyString>
}
type awsLambdaFunctionCode = {
@as("ZipFile") zipFile: option<nonEmptyString>,
  @as("S3ObjectVersion") s3ObjectVersion: option<nonEmptyString>,
  @as("S3Key") s3Key: option<nonEmptyString>,
  @as("S3Bucket") s3Bucket: option<nonEmptyString>
}
type awsKmsKeyDetails = {
@as("Description") description: option<nonEmptyString>,
  @as("Origin") origin: option<nonEmptyString>,
  @as("KeyState") keyState: option<nonEmptyString>,
  @as("KeyManager") keyManager: option<nonEmptyString>,
  @as("KeyId") keyId: option<nonEmptyString>,
  @as("CreationDate") creationDate: option<double>,
  @as("AWSAccountId") awsaccountId: option<nonEmptyString>
}
type awsIamUserPolicy = {
@as("PolicyName") policyName: option<nonEmptyString>
}
type awsIamRolePolicy = {
@as("PolicyName") policyName: option<nonEmptyString>
}
type awsIamPolicyVersion = {
@as("CreateDate") createDate: option<nonEmptyString>,
  @as("IsDefaultVersion") isDefaultVersion: option<boolean_>,
  @as("VersionId") versionId: option<nonEmptyString>
}
type awsIamPermissionsBoundary = {
@as("PermissionsBoundaryType") permissionsBoundaryType: option<nonEmptyString>,
  @as("PermissionsBoundaryArn") permissionsBoundaryArn: option<nonEmptyString>
}
type awsIamInstanceProfileRole = {
@as("RoleName") roleName: option<nonEmptyString>,
  @as("RoleId") roleId: option<nonEmptyString>,
  @as("Path") path: option<nonEmptyString>,
  @as("CreateDate") createDate: option<nonEmptyString>,
  @as("AssumeRolePolicyDocument") assumeRolePolicyDocument: option<awsIamRoleAssumeRolePolicyDocument>,
  @as("Arn") arn: option<nonEmptyString>
}
type awsIamGroupPolicy = {
@as("PolicyName") policyName: option<nonEmptyString>
}
type awsIamAttachedManagedPolicy = {
@as("PolicyArn") policyArn: option<nonEmptyString>,
  @as("PolicyName") policyName: option<nonEmptyString>
}
type awsIamAccessKeySessionContextSessionIssuer = {
@as("UserName") userName: option<nonEmptyString>,
  @as("AccountId") accountId: option<nonEmptyString>,
  @as("Arn") arn: option<nonEmptyString>,
  @as("PrincipalId") principalId: option<nonEmptyString>,
  @as("Type") type_: option<nonEmptyString>
}
type awsIamAccessKeySessionContextAttributes = {
@as("CreationDate") creationDate: option<nonEmptyString>,
  @as("MfaAuthenticated") mfaAuthenticated: option<boolean_>
}
type awsElbLoadBalancerSourceSecurityGroup = {
@as("OwnerAlias") ownerAlias: option<nonEmptyString>,
  @as("GroupName") groupName: option<nonEmptyString>
}
type awsElbLoadBalancerListener = {
@as("SslCertificateId") sslCertificateId: option<nonEmptyString>,
  @as("Protocol") protocol: option<nonEmptyString>,
  @as("LoadBalancerPort") loadBalancerPort: option<integer_>,
  @as("InstanceProtocol") instanceProtocol: option<nonEmptyString>,
  @as("InstancePort") instancePort: option<integer_>
}
type awsElbLoadBalancerInstance = {
@as("InstanceId") instanceId: option<nonEmptyString>
}
type awsElbLoadBalancerHealthCheck = {
@as("UnhealthyThreshold") unhealthyThreshold: option<integer_>,
  @as("Timeout") timeout: option<integer_>,
  @as("Target") target: option<nonEmptyString>,
  @as("Interval") interval: option<integer_>,
  @as("HealthyThreshold") healthyThreshold: option<integer_>
}
type awsElbLoadBalancerCrossZoneLoadBalancing = {
@as("Enabled") enabled: option<boolean_>
}
type awsElbLoadBalancerConnectionSettings = {
@as("IdleTimeout") idleTimeout: option<integer_>
}
type awsElbLoadBalancerConnectionDraining = {
@as("Timeout") timeout: option<integer_>,
  @as("Enabled") enabled: option<boolean_>
}
type awsElbLoadBalancerAccessLog = {
@as("S3BucketPrefix") s3BucketPrefix: option<nonEmptyString>,
  @as("S3BucketName") s3BucketName: option<nonEmptyString>,
  @as("Enabled") enabled: option<boolean_>,
  @as("EmitInterval") emitInterval: option<integer_>
}
type awsElbLbCookieStickinessPolicy = {
@as("PolicyName") policyName: option<nonEmptyString>,
  @as("CookieExpirationPeriod") cookieExpirationPeriod: option<long>
}
type awsElbAppCookieStickinessPolicy = {
@as("PolicyName") policyName: option<nonEmptyString>,
  @as("CookieName") cookieName: option<nonEmptyString>
}
type awsElasticsearchDomainNodeToNodeEncryptionOptions = {
@as("Enabled") enabled: option<boolean_>
}
type awsElasticsearchDomainEncryptionAtRestOptions = {
@as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("Enabled") enabled: option<boolean_>
}
type awsElasticsearchDomainDomainEndpointOptions = {
@as("TLSSecurityPolicy") tlssecurityPolicy: option<nonEmptyString>,
  @as("EnforceHTTPS") enforceHTTPS: option<boolean_>
}
type awsElasticBeanstalkEnvironmentTier = {
@as("Version") version: option<nonEmptyString>,
  @as("Type") type_: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type awsElasticBeanstalkEnvironmentOptionSetting = {
@as("Value") value: option<nonEmptyString>,
  @as("ResourceName") resourceName: option<nonEmptyString>,
  @as("OptionName") optionName: option<nonEmptyString>,
  @as("Namespace") namespace: option<nonEmptyString>
}
type awsElasticBeanstalkEnvironmentEnvironmentLink = {
@as("LinkName") linkName: option<nonEmptyString>,
  @as("EnvironmentName") environmentName: option<nonEmptyString>
}
type awsEc2VolumeAttachment = {
@as("Status") status: option<nonEmptyString>,
  @as("InstanceId") instanceId: option<nonEmptyString>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AttachTime") attachTime: option<nonEmptyString>
}
type awsEc2SecurityGroupUserIdGroupPair = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: option<nonEmptyString>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("UserId") userId: option<nonEmptyString>,
  @as("PeeringStatus") peeringStatus: option<nonEmptyString>,
  @as("GroupName") groupName: option<nonEmptyString>,
  @as("GroupId") groupId: option<nonEmptyString>
}
type awsEc2SecurityGroupPrefixListId = {
@as("PrefixListId") prefixListId: option<nonEmptyString>
}
type awsEc2SecurityGroupIpv6Range = {
@as("CidrIpv6") cidrIpv6: option<nonEmptyString>
}
type awsEc2SecurityGroupIpRange = {
@as("CidrIp") cidrIp: option<nonEmptyString>
}
type awsEc2NetworkInterfaceSecurityGroup = {
@as("GroupId") groupId: option<nonEmptyString>,
  @as("GroupName") groupName: option<nonEmptyString>
}
type awsEc2NetworkInterfacePrivateIpAddressDetail = {
@as("PrivateDnsName") privateDnsName: option<nonEmptyString>,
  @as("PrivateIpAddress") privateIpAddress: option<nonEmptyString>
}
type awsEc2NetworkInterfaceIpV6AddressDetail = {
@as("IpV6Address") ipV6Address: option<nonEmptyString>
}
type awsEc2NetworkInterfaceAttachment = {
@as("Status") status: option<nonEmptyString>,
  @as("InstanceOwnerId") instanceOwnerId: option<nonEmptyString>,
  @as("InstanceId") instanceId: option<nonEmptyString>,
  @as("DeviceIndex") deviceIndex: option<integer_>,
  @as("DeleteOnTermination") deleteOnTermination: option<boolean_>,
  @as("AttachmentId") attachmentId: option<nonEmptyString>,
  @as("AttachTime") attachTime: option<nonEmptyString>
}
type awsEc2NetworkAclAssociation = {
@as("SubnetId") subnetId: option<nonEmptyString>,
  @as("NetworkAclId") networkAclId: option<nonEmptyString>,
  @as("NetworkAclAssociationId") networkAclAssociationId: option<nonEmptyString>
}
type awsEc2EipDetails = {
@as("PrivateIpAddress") privateIpAddress: option<nonEmptyString>,
  @as("NetworkInterfaceOwnerId") networkInterfaceOwnerId: option<nonEmptyString>,
  @as("NetworkInterfaceId") networkInterfaceId: option<nonEmptyString>,
  @as("NetworkBorderGroup") networkBorderGroup: option<nonEmptyString>,
  @as("PublicIpv4Pool") publicIpv4Pool: option<nonEmptyString>,
  @as("Domain") domain: option<nonEmptyString>,
  @as("AssociationId") associationId: option<nonEmptyString>,
  @as("AllocationId") allocationId: option<nonEmptyString>,
  @as("PublicIp") publicIp: option<nonEmptyString>,
  @as("InstanceId") instanceId: option<nonEmptyString>
}
type awsDynamoDbTableStreamSpecification = {
@as("StreamViewType") streamViewType: option<nonEmptyString>,
  @as("StreamEnabled") streamEnabled: option<boolean_>
}
type awsDynamoDbTableSseDescription = {
@as("KmsMasterKeyArn") kmsMasterKeyArn: option<nonEmptyString>,
  @as("SseType") sseType: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>,
  @as("InaccessibleEncryptionDateTime") inaccessibleEncryptionDateTime: option<nonEmptyString>
}
type awsDynamoDbTableRestoreSummary = {
@as("RestoreInProgress") restoreInProgress: option<boolean_>,
  @as("RestoreDateTime") restoreDateTime: option<nonEmptyString>,
  @as("SourceTableArn") sourceTableArn: option<nonEmptyString>,
  @as("SourceBackupArn") sourceBackupArn: option<nonEmptyString>
}
type awsDynamoDbTableProvisionedThroughputOverride = {
@as("ReadCapacityUnits") readCapacityUnits: option<integer_>
}
type awsDynamoDbTableProvisionedThroughput = {
@as("WriteCapacityUnits") writeCapacityUnits: option<integer_>,
  @as("ReadCapacityUnits") readCapacityUnits: option<integer_>,
  @as("NumberOfDecreasesToday") numberOfDecreasesToday: option<integer_>,
  @as("LastIncreaseDateTime") lastIncreaseDateTime: option<nonEmptyString>,
  @as("LastDecreaseDateTime") lastDecreaseDateTime: option<nonEmptyString>
}
type awsDynamoDbTableKeySchema = {
@as("KeyType") keyType: option<nonEmptyString>,
  @as("AttributeName") attributeName: option<nonEmptyString>
}
type awsDynamoDbTableBillingModeSummary = {
@as("LastUpdateToPayPerRequestDateTime") lastUpdateToPayPerRequestDateTime: option<nonEmptyString>,
  @as("BillingMode") billingMode: option<nonEmptyString>
}
type awsDynamoDbTableAttributeDefinition = {
@as("AttributeType") attributeType: option<nonEmptyString>,
  @as("AttributeName") attributeName: option<nonEmptyString>
}
type awsCodeBuildProjectSource = {
@as("InsecureSsl") insecureSsl: option<boolean_>,
  @as("GitCloneDepth") gitCloneDepth: option<integer_>,
  @as("Location") location: option<nonEmptyString>,
  @as("Type") type_: option<nonEmptyString>
}
type awsCodeBuildProjectEnvironmentRegistryCredential = {
@as("CredentialProvider") credentialProvider: option<nonEmptyString>,
  @as("Credential") credential: option<nonEmptyString>
}
type awsCloudTrailTrailDetails = {
@as("TrailArn") trailArn: option<nonEmptyString>,
  @as("SnsTopicName") snsTopicName: option<nonEmptyString>,
  @as("SnsTopicArn") snsTopicArn: option<nonEmptyString>,
  @as("S3KeyPrefix") s3KeyPrefix: option<nonEmptyString>,
  @as("S3BucketName") s3BucketName: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>,
  @as("LogFileValidationEnabled") logFileValidationEnabled: option<boolean_>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("IsOrganizationTrail") isOrganizationTrail: option<boolean_>,
  @as("IsMultiRegionTrail") isMultiRegionTrail: option<boolean_>,
  @as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: option<boolean_>,
  @as("HomeRegion") homeRegion: option<nonEmptyString>,
  @as("HasCustomEventSelectors") hasCustomEventSelectors: option<boolean_>,
  @as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: option<nonEmptyString>,
  @as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: option<nonEmptyString>
}
type awsCloudFrontDistributionOriginS3OriginConfig = {
@as("OriginAccessIdentity") originAccessIdentity: option<nonEmptyString>
}
type awsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList = array<integer_>
type awsCloudFrontDistributionLogging = {
@as("Prefix") prefix: option<nonEmptyString>,
  @as("IncludeCookies") includeCookies: option<boolean_>,
  @as("Enabled") enabled: option<boolean_>,
  @as("Bucket") bucket: option<nonEmptyString>
}
type awsCloudFrontDistributionDefaultCacheBehavior = {
@as("ViewerProtocolPolicy") viewerProtocolPolicy: option<nonEmptyString>
}
type awsCloudFrontDistributionCacheBehavior = {
@as("ViewerProtocolPolicy") viewerProtocolPolicy: option<nonEmptyString>
}
type awsCertificateManagerCertificateResourceRecord = {
@as("Value") value: option<nonEmptyString>,
  @as("Type") type_: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type awsCertificateManagerCertificateOptions = {
@as("CertificateTransparencyLoggingPreference") certificateTransparencyLoggingPreference: option<nonEmptyString>
}
type awsCertificateManagerCertificateKeyUsage = {
@as("Name") name: option<nonEmptyString>
}
type awsCertificateManagerCertificateExtendedKeyUsage = {
@as("OId") oid: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type awsApiGatewayV2RouteSettings = {
@as("ThrottlingRateLimit") throttlingRateLimit: option<double>,
  @as("ThrottlingBurstLimit") throttlingBurstLimit: option<integer_>,
  @as("DataTraceEnabled") dataTraceEnabled: option<boolean_>,
  @as("LoggingLevel") loggingLevel: option<nonEmptyString>,
  @as("DetailedMetricsEnabled") detailedMetricsEnabled: option<boolean_>
}
type awsApiGatewayMethodSettings = {
@as("ResourcePath") resourcePath: option<nonEmptyString>,
  @as("HttpMethod") httpMethod: option<nonEmptyString>,
  @as("UnauthorizedCacheControlHeaderStrategy") unauthorizedCacheControlHeaderStrategy: option<nonEmptyString>,
  @as("RequireAuthorizationForCacheControl") requireAuthorizationForCacheControl: option<boolean_>,
  @as("CacheDataEncrypted") cacheDataEncrypted: option<boolean_>,
  @as("CacheTtlInSeconds") cacheTtlInSeconds: option<integer_>,
  @as("CachingEnabled") cachingEnabled: option<boolean_>,
  @as("ThrottlingRateLimit") throttlingRateLimit: option<double>,
  @as("ThrottlingBurstLimit") throttlingBurstLimit: option<integer_>,
  @as("DataTraceEnabled") dataTraceEnabled: option<boolean_>,
  @as("LoggingLevel") loggingLevel: option<nonEmptyString>,
  @as("MetricsEnabled") metricsEnabled: option<boolean_>
}
type awsApiGatewayAccessLogSettings = {
@as("DestinationArn") destinationArn: option<nonEmptyString>,
  @as("Format") format: option<nonEmptyString>
}
type awsApiCallActionDomainDetails = {
@as("Domain") domain: option<nonEmptyString>
}
type availabilityZone = {
@as("SubnetId") subnetId: option<nonEmptyString>,
  @as("ZoneName") zoneName: option<nonEmptyString>
}
type arnList = array<nonEmptyString>
type adminAccount = {
@as("Status") status: option<adminStatus>,
  @as("AccountId") accountId: option<nonEmptyString>
}
type actionTarget = {
@as("Description") description: nonEmptyString,
  @as("Name") name: nonEmptyString,
  @as("ActionTargetArn") actionTargetArn: nonEmptyString
}
type actionRemotePortDetails = {
@as("PortName") portName: option<nonEmptyString>,
  @as("Port") port: option<integer_>
}
type actionLocalPortDetails = {
@as("PortName") portName: option<nonEmptyString>,
  @as("Port") port: option<integer_>
}
type actionLocalIpDetails = {
@as("IpAddressV4") ipAddressV4: option<nonEmptyString>
}
type accountIdList = array<nonEmptyString>
type accountDetails = {
@as("Email") email: option<nonEmptyString>,
  @as("AccountId") accountId: accountId
}
type wafExcludedRuleList = array<wafExcludedRule>
type threatIntelIndicatorList = array<threatIntelIndicator>
type stringFilterList = array<stringFilter>
type statusReasonsList = array<statusReason>
type standardsSubscriptionRequest = {
@as("StandardsInput") standardsInput: option<standardsInputParameterMap>,
  @as("StandardsArn") standardsArn: nonEmptyString
}
type standardsSubscription = {
@as("StandardsStatus") standardsStatus: standardsStatus,
  @as("StandardsInput") standardsInput: standardsInputParameterMap,
  @as("StandardsArn") standardsArn: nonEmptyString,
  @as("StandardsSubscriptionArn") standardsSubscriptionArn: nonEmptyString
}
type standardsControl = {
@as("RelatedRequirements") relatedRequirements: option<relatedRequirementsList>,
  @as("SeverityRating") severityRating: option<severityRating>,
  @as("RemediationUrl") remediationUrl: option<nonEmptyString>,
  @as("Description") description: option<nonEmptyString>,
  @as("Title") title: option<nonEmptyString>,
  @as("ControlId") controlId: option<nonEmptyString>,
  @as("ControlStatusUpdatedAt") controlStatusUpdatedAt: option<timestamp_>,
  @as("DisabledReason") disabledReason: option<nonEmptyString>,
  @as("ControlStatus") controlStatus: option<controlStatus>,
  @as("StandardsControlArn") standardsControlArn: option<nonEmptyString>
}
type standards = array<standard>
type sortCriteria = array<sortCriterion>
type softwarePackageList = array<softwarePackage>
type resultList = array<result>
type remediation = {
@as("Recommendation") recommendation: option<recommendation>
}
type relatedFindingList = array<relatedFinding>
type records = array<record>
type ranges = array<range>
type product = {
@as("ProductSubscriptionResourcePolicy") productSubscriptionResourcePolicy: option<nonEmptyString>,
  @as("ActivationUrl") activationUrl: option<nonEmptyString>,
  @as("MarketplaceUrl") marketplaceUrl: option<nonEmptyString>,
  @as("IntegrationTypes") integrationTypes: option<integrationTypeList>,
  @as("Categories") categories: option<categoryList>,
  @as("Description") description: option<nonEmptyString>,
  @as("CompanyName") companyName: option<nonEmptyString>,
  @as("ProductName") productName: option<nonEmptyString>,
  @as("ProductArn") productArn: nonEmptyString
}
type portRangeList = array<portRange>
type page = {
@as("OffsetRange") offsetRange: option<range>,
  @as("LineRange") lineRange: option<range>,
  @as("PageNumber") pageNumber: option<long>
}
type numberFilterList = array<numberFilter>
type network = {
@as("DestinationDomain") destinationDomain: option<nonEmptyString>,
  @as("DestinationPort") destinationPort: option<integer_>,
  @as("DestinationIpV6") destinationIpV6: option<nonEmptyString>,
  @as("DestinationIpV4") destinationIpV4: option<nonEmptyString>,
  @as("SourceMac") sourceMac: option<nonEmptyString>,
  @as("SourceDomain") sourceDomain: option<nonEmptyString>,
  @as("SourcePort") sourcePort: option<integer_>,
  @as("SourceIpV6") sourceIpV6: option<nonEmptyString>,
  @as("SourceIpV4") sourceIpV4: option<nonEmptyString>,
  @as("OpenPortRange") openPortRange: option<portRange>,
  @as("Protocol") protocol: option<nonEmptyString>,
  @as("Direction") direction: option<networkDirection>
}
type memberList = array<member>
type mapFilterList = array<mapFilter>
type malwareList = array<malware>
type keywordFilterList = array<keywordFilter>
type ipv6CidrBlockAssociationList = array<ipv6CidrBlockAssociation>
type ipFilterList = array<ipFilter>
type invitationList = array<invitation>
type insightResultValueList = array<insightResultValue>
type importFindingsErrorList = array<importFindingsError>
type dateFilter = {
@as("DateRange") dateRange: option<dateRange>,
  @as("End") end: option<nonEmptyString>,
  @as("Start") start: option<nonEmptyString>
}
type cvssList = array<cvss>
type cidrBlockAssociationList = array<cidrBlockAssociation>
type cells = array<cell>
type batchUpdateFindingsUnprocessedFinding = {
@as("ErrorMessage") errorMessage: nonEmptyString,
  @as("ErrorCode") errorCode: nonEmptyString,
  @as("FindingIdentifier") findingIdentifier: awsSecurityFindingIdentifier
}
type awsSsmPatch = {
@as("ComplianceSummary") complianceSummary: option<awsSsmComplianceSummary>
}
type awsSnsTopicSubscriptionList = array<awsSnsTopicSubscription>
type awsSecurityFindingIdentifierList = array<awsSecurityFindingIdentifier>
type awsSecretsManagerSecretDetails = {
@as("Description") description: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>,
  @as("Deleted") deleted: option<boolean_>,
  @as("RotationLambdaArn") rotationLambdaArn: option<nonEmptyString>,
  @as("RotationEnabled") rotationEnabled: option<boolean_>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("RotationOccurredWithinFrequency") rotationOccurredWithinFrequency: option<boolean_>,
  @as("RotationRules") rotationRules: option<awsSecretsManagerSecretRotationRules>
}
type awsS3BucketServerSideEncryptionRule = {
@as("ApplyServerSideEncryptionByDefault") applyServerSideEncryptionByDefault: option<awsS3BucketServerSideEncryptionByDefault>
}
type awsRedshiftClusterVpcSecurityGroups = array<awsRedshiftClusterVpcSecurityGroup>
type awsRedshiftClusterIamRoles = array<awsRedshiftClusterIamRole>
type awsRedshiftClusterDeferredMaintenanceWindows = array<awsRedshiftClusterDeferredMaintenanceWindow>
type awsRedshiftClusterClusterSecurityGroups = array<awsRedshiftClusterClusterSecurityGroup>
type awsRedshiftClusterClusterParameterStatusList = array<awsRedshiftClusterClusterParameterStatus>
type awsRedshiftClusterClusterNodes = array<awsRedshiftClusterClusterNode>
type awsRdsPendingCloudWatchLogsExports = {
@as("LogTypesToDisable") logTypesToDisable: option<stringList>,
  @as("LogTypesToEnable") logTypesToEnable: option<stringList>
}
type awsRdsDbSubnetGroupSubnet = {
@as("SubnetStatus") subnetStatus: option<nonEmptyString>,
  @as("SubnetAvailabilityZone") subnetAvailabilityZone: option<awsRdsDbSubnetGroupSubnetAvailabilityZone>,
  @as("SubnetIdentifier") subnetIdentifier: option<nonEmptyString>
}
type awsRdsDbStatusInfos = array<awsRdsDbStatusInfo>
type awsRdsDbProcessorFeatures = array<awsRdsDbProcessorFeature>
type awsRdsDbParameterGroups = array<awsRdsDbParameterGroup>
type awsRdsDbOptionGroupMemberships = array<awsRdsDbOptionGroupMembership>
type awsRdsDbInstanceVpcSecurityGroups = array<awsRdsDbInstanceVpcSecurityGroup>
type awsRdsDbInstanceAssociatedRoles = array<awsRdsDbInstanceAssociatedRole>
type awsRdsDbDomainMemberships = array<awsRdsDbDomainMembership>
type awsRdsDbClusterSnapshotDetails = {
@as("IamDatabaseAuthenticationEnabled") iamDatabaseAuthenticationEnabled: option<boolean_>,
  @as("DbClusterSnapshotIdentifier") dbClusterSnapshotIdentifier: option<nonEmptyString>,
  @as("DbClusterIdentifier") dbClusterIdentifier: option<nonEmptyString>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("PercentProgress") percentProgress: option<integer_>,
  @as("SnapshotType") snapshotType: option<nonEmptyString>,
  @as("LicenseModel") licenseModel: option<nonEmptyString>,
  @as("EngineVersion") engineVersion: option<nonEmptyString>,
  @as("MasterUsername") masterUsername: option<nonEmptyString>,
  @as("ClusterCreateTime") clusterCreateTime: option<nonEmptyString>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("Port") port: option<integer_>,
  @as("Status") status: option<nonEmptyString>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("Engine") engine: option<nonEmptyString>,
  @as("SnapshotCreateTime") snapshotCreateTime: option<nonEmptyString>,
  @as("AvailabilityZones") availabilityZones: option<stringList>
}
type awsRdsDbClusterOptionGroupMemberships = array<awsRdsDbClusterOptionGroupMembership>
type awsRdsDbClusterMembers = array<awsRdsDbClusterMember>
type awsRdsDbClusterAssociatedRoles = array<awsRdsDbClusterAssociatedRole>
type awsLambdaLayerVersionDetails = {
@as("CreatedDate") createdDate: option<nonEmptyString>,
  @as("CompatibleRuntimes") compatibleRuntimes: option<nonEmptyStringList>,
  @as("Version") version: option<awsLambdaLayerVersionNumber>
}
type awsLambdaFunctionVpcConfig = {
@as("VpcId") vpcId: option<nonEmptyString>,
  @as("SubnetIds") subnetIds: option<nonEmptyStringList>,
  @as("SecurityGroupIds") securityGroupIds: option<nonEmptyStringList>
}
type awsLambdaFunctionLayerList = array<awsLambdaFunctionLayer>
type awsLambdaFunctionEnvironment = {
@as("Error") error: option<awsLambdaFunctionEnvironmentError>,
  @as("Variables") variables: option<fieldMap>
}
type awsIamUserPolicyList = array<awsIamUserPolicy>
type awsIamRolePolicyList = array<awsIamRolePolicy>
type awsIamPolicyVersionList = array<awsIamPolicyVersion>
type awsIamInstanceProfileRoles = array<awsIamInstanceProfileRole>
type awsIamGroupPolicyList = array<awsIamGroupPolicy>
type awsIamAttachedManagedPolicyList = array<awsIamAttachedManagedPolicy>
type awsIamAccessKeySessionContext = {
@as("SessionIssuer") sessionIssuer: option<awsIamAccessKeySessionContextSessionIssuer>,
  @as("Attributes") attributes: option<awsIamAccessKeySessionContextAttributes>
}
type awsElbLoadBalancerListenerDescription = {
@as("PolicyNames") policyNames: option<stringList>,
  @as("Listener") listener: option<awsElbLoadBalancerListener>
}
type awsElbLoadBalancerInstances = array<awsElbLoadBalancerInstance>
type awsElbLoadBalancerBackendServerDescription = {
@as("PolicyNames") policyNames: option<stringList>,
  @as("InstancePort") instancePort: option<integer_>
}
type awsElbLoadBalancerAttributes = {
@as("CrossZoneLoadBalancing") crossZoneLoadBalancing: option<awsElbLoadBalancerCrossZoneLoadBalancing>,
  @as("ConnectionSettings") connectionSettings: option<awsElbLoadBalancerConnectionSettings>,
  @as("ConnectionDraining") connectionDraining: option<awsElbLoadBalancerConnectionDraining>,
  @as("AccessLog") accessLog: option<awsElbLoadBalancerAccessLog>
}
type awsElbLbCookieStickinessPolicies = array<awsElbLbCookieStickinessPolicy>
type awsElbAppCookieStickinessPolicies = array<awsElbAppCookieStickinessPolicy>
type awsElasticsearchDomainVPCOptions = {
@as("VPCId") vpcid: option<nonEmptyString>,
  @as("SubnetIds") subnetIds: option<nonEmptyStringList>,
  @as("SecurityGroupIds") securityGroupIds: option<nonEmptyStringList>,
  @as("AvailabilityZones") availabilityZones: option<nonEmptyStringList>
}
type awsElasticBeanstalkEnvironmentOptionSettings = array<awsElasticBeanstalkEnvironmentOptionSetting>
type awsElasticBeanstalkEnvironmentEnvironmentLinks = array<awsElasticBeanstalkEnvironmentEnvironmentLink>
type awsEc2VolumeAttachmentList = array<awsEc2VolumeAttachment>
type awsEc2SecurityGroupUserIdGroupPairList = array<awsEc2SecurityGroupUserIdGroupPair>
type awsEc2SecurityGroupPrefixListIdList = array<awsEc2SecurityGroupPrefixListId>
type awsEc2SecurityGroupIpv6RangeList = array<awsEc2SecurityGroupIpv6Range>
type awsEc2SecurityGroupIpRangeList = array<awsEc2SecurityGroupIpRange>
type awsEc2NetworkInterfaceSecurityGroupList = array<awsEc2NetworkInterfaceSecurityGroup>
type awsEc2NetworkInterfacePrivateIpAddressList = array<awsEc2NetworkInterfacePrivateIpAddressDetail>
type awsEc2NetworkInterfaceIpV6AddressList = array<awsEc2NetworkInterfaceIpV6AddressDetail>
type awsEc2NetworkAclEntry = {
@as("RuleNumber") ruleNumber: option<integer_>,
  @as("RuleAction") ruleAction: option<nonEmptyString>,
  @as("Protocol") protocol: option<nonEmptyString>,
  @as("PortRange") portRange: option<portRangeFromTo>,
  @as("Ipv6CidrBlock") ipv6CidrBlock: option<nonEmptyString>,
  @as("IcmpTypeCode") icmpTypeCode: option<icmpTypeCode>,
  @as("Egress") egress: option<boolean_>,
  @as("CidrBlock") cidrBlock: option<nonEmptyString>
}
type awsEc2NetworkAclAssociationList = array<awsEc2NetworkAclAssociation>
type awsEc2InstanceDetails = {
@as("LaunchedAt") launchedAt: option<nonEmptyString>,
  @as("SubnetId") subnetId: option<nonEmptyString>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("IamInstanceProfileArn") iamInstanceProfileArn: option<nonEmptyString>,
  @as("KeyName") keyName: option<nonEmptyString>,
  @as("IpV6Addresses") ipV6Addresses: option<stringList>,
  @as("IpV4Addresses") ipV4Addresses: option<stringList>,
  @as("ImageId") imageId: option<nonEmptyString>,
  @as("Type") type_: option<nonEmptyString>
}
type awsDynamoDbTableReplicaGlobalSecondaryIndex = {
@as("ProvisionedThroughputOverride") provisionedThroughputOverride: option<awsDynamoDbTableProvisionedThroughputOverride>,
  @as("IndexName") indexName: option<nonEmptyString>
}
type awsDynamoDbTableProjection = {
@as("ProjectionType") projectionType: option<nonEmptyString>,
  @as("NonKeyAttributes") nonKeyAttributes: option<stringList>
}
type awsDynamoDbTableKeySchemaList = array<awsDynamoDbTableKeySchema>
type awsDynamoDbTableAttributeDefinitionList = array<awsDynamoDbTableAttributeDefinition>
type awsCorsConfiguration = {
@as("AllowHeaders") allowHeaders: option<nonEmptyStringList>,
  @as("AllowMethods") allowMethods: option<nonEmptyStringList>,
  @as("MaxAge") maxAge: option<integer_>,
  @as("ExposeHeaders") exposeHeaders: option<nonEmptyStringList>,
  @as("AllowCredentials") allowCredentials: option<boolean_>,
  @as("AllowOrigins") allowOrigins: option<nonEmptyStringList>
}
type awsCodeBuildProjectVpcConfig = {
@as("SecurityGroupIds") securityGroupIds: option<nonEmptyStringList>,
  @as("Subnets") subnets: option<nonEmptyStringList>,
  @as("VpcId") vpcId: option<nonEmptyString>
}
type awsCodeBuildProjectEnvironment = {
@as("Type") type_: option<nonEmptyString>,
  @as("RegistryCredential") registryCredential: option<awsCodeBuildProjectEnvironmentRegistryCredential>,
  @as("ImagePullCredentialsType") imagePullCredentialsType: option<nonEmptyString>,
  @as("Certificate") certificate: option<nonEmptyString>
}
type awsCloudFrontDistributionOriginItem = {
@as("S3OriginConfig") s3OriginConfig: option<awsCloudFrontDistributionOriginS3OriginConfig>,
  @as("OriginPath") originPath: option<nonEmptyString>,
  @as("Id") id: option<nonEmptyString>,
  @as("DomainName") domainName: option<nonEmptyString>
}
type awsCloudFrontDistributionOriginGroupFailoverStatusCodes = {
@as("Quantity") quantity: option<integer_>,
  @as("Items") items: option<awsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList>
}
type awsCloudFrontDistributionCacheBehaviorsItemList = array<awsCloudFrontDistributionCacheBehavior>
type awsCertificateManagerCertificateKeyUsages = array<awsCertificateManagerCertificateKeyUsage>
type awsCertificateManagerCertificateExtendedKeyUsages = array<awsCertificateManagerCertificateExtendedKeyUsage>
type awsCertificateManagerCertificateDomainValidationOption = {
@as("ValidationStatus") validationStatus: option<nonEmptyString>,
  @as("ValidationMethod") validationMethod: option<nonEmptyString>,
  @as("ValidationEmails") validationEmails: option<stringList>,
  @as("ValidationDomain") validationDomain: option<nonEmptyString>,
  @as("ResourceRecord") resourceRecord: option<awsCertificateManagerCertificateResourceRecord>,
  @as("DomainName") domainName: option<nonEmptyString>
}
type awsAutoScalingAutoScalingGroupDetails = {
@as("CreatedTime") createdTime: option<nonEmptyString>,
  @as("HealthCheckGracePeriod") healthCheckGracePeriod: option<integer_>,
  @as("HealthCheckType") healthCheckType: option<nonEmptyString>,
  @as("LoadBalancerNames") loadBalancerNames: option<stringList>,
  @as("LaunchConfigurationName") launchConfigurationName: option<nonEmptyString>
}
type awsApiGatewayV2StageDetails = {
@as("ApiGatewayManaged") apiGatewayManaged: option<boolean_>,
  @as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: option<nonEmptyString>,
  @as("AutoDeploy") autoDeploy: option<boolean_>,
  @as("AccessLogSettings") accessLogSettings: option<awsApiGatewayAccessLogSettings>,
  @as("StageVariables") stageVariables: option<fieldMap>,
  @as("StageName") stageName: option<nonEmptyString>,
  @as("RouteSettings") routeSettings: option<awsApiGatewayV2RouteSettings>,
  @as("LastUpdatedDate") lastUpdatedDate: option<nonEmptyString>,
  @as("DeploymentId") deploymentId: option<nonEmptyString>,
  @as("DefaultRouteSettings") defaultRouteSettings: option<awsApiGatewayV2RouteSettings>,
  @as("Description") description: option<nonEmptyString>,
  @as("CreatedDate") createdDate: option<nonEmptyString>
}
type awsApiGatewayMethodSettingsList = array<awsApiGatewayMethodSettings>
type awsApiGatewayEndpointConfiguration = {
@as("Types") types: option<nonEmptyStringList>
}
type awsApiGatewayCanarySettings = {
@as("UseStageCache") useStageCache: option<boolean_>,
  @as("StageVariableOverrides") stageVariableOverrides: option<fieldMap>,
  @as("DeploymentId") deploymentId: option<nonEmptyString>,
  @as("PercentTraffic") percentTraffic: option<double>
}
type availabilityZones = array<availabilityZone>
type adminAccounts = array<adminAccount>
type actionTargetList = array<actionTarget>
type actionRemoteIpDetails = {
@as("GeoLocation") geoLocation: option<geoLocation>,
  @as("City") city: option<city>,
  @as("Country") country: option<country>,
  @as("Organization") organization: option<ipOrganizationDetails>,
  @as("IpAddressV4") ipAddressV4: option<nonEmptyString>
}
type accountDetailsList = array<accountDetails>
type vulnerability = {
@as("ReferenceUrls") referenceUrls: option<stringList>,
  @as("Vendor") vendor: option<vulnerabilityVendor>,
  @as("RelatedVulnerabilities") relatedVulnerabilities: option<stringList>,
  @as("Cvss") cvss: option<cvssList>,
  @as("VulnerablePackages") vulnerablePackages: option<softwarePackageList>,
  @as("Id") id: nonEmptyString
}
type standardsSubscriptions = array<standardsSubscription>
type standardsSubscriptionRequests = array<standardsSubscriptionRequest>
type standardsControls = array<standardsControl>
type productsList = array<product>
type portProbeDetail = {
@as("RemoteIpDetails") remoteIpDetails: option<actionRemoteIpDetails>,
  @as("LocalIpDetails") localIpDetails: option<actionLocalIpDetails>,
  @as("LocalPortDetails") localPortDetails: option<actionLocalPortDetails>
}
type pages = array<page>
type networkPathComponentDetails = {
@as("PortRanges") portRanges: option<portRangeList>,
  @as("Address") address: option<stringList>
}
type networkConnectionAction = {
@as("Blocked") blocked: option<boolean_>,
  @as("Protocol") protocol: option<nonEmptyString>,
  @as("LocalPortDetails") localPortDetails: option<actionLocalPortDetails>,
  @as("RemotePortDetails") remotePortDetails: option<actionRemotePortDetails>,
  @as("RemoteIpDetails") remoteIpDetails: option<actionRemoteIpDetails>,
  @as("ConnectionDirection") connectionDirection: option<nonEmptyString>
}
type insightResults = {
@as("ResultValues") resultValues: insightResultValueList,
  @as("GroupByAttribute") groupByAttribute: nonEmptyString,
  @as("InsightArn") insightArn: nonEmptyString
}
type findingProviderFields = {
@as("Types") types: option<typeList>,
  @as("Severity") severity: option<findingProviderSeverity>,
  @as("RelatedFindings") relatedFindings: option<relatedFindingList>,
  @as("Criticality") criticality: option<ratioScale>,
  @as("Confidence") confidence: option<ratioScale>
}
type dateFilterList = array<dateFilter>
type compliance = {
@as("StatusReasons") statusReasons: option<statusReasonsList>,
  @as("RelatedRequirements") relatedRequirements: option<relatedRequirementsList>,
  @as("Status") status: option<complianceStatus>
}
type batchUpdateFindingsUnprocessedFindingsList = array<batchUpdateFindingsUnprocessedFinding>
type awsWafWebAclRule = {
@as("Type") type_: option<nonEmptyString>,
  @as("RuleId") ruleId: option<nonEmptyString>,
  @as("Priority") priority: option<integer_>,
  @as("OverrideAction") overrideAction: option<wafOverrideAction>,
  @as("ExcludedRules") excludedRules: option<wafExcludedRuleList>,
  @as("Action") action: option<wafAction>
}
type awsSsmPatchComplianceDetails = {
@as("Patch") patch: option<awsSsmPatch>
}
type awsSnsTopicDetails = {
@as("Owner") owner: option<nonEmptyString>,
  @as("TopicName") topicName: option<nonEmptyString>,
  @as("Subscription") subscription: option<awsSnsTopicSubscriptionList>,
  @as("KmsMasterKeyId") kmsMasterKeyId: option<nonEmptyString>
}
type awsS3BucketServerSideEncryptionRules = array<awsS3BucketServerSideEncryptionRule>
type awsRedshiftClusterClusterParameterGroup = {
@as("ParameterGroupName") parameterGroupName: option<nonEmptyString>,
  @as("ParameterApplyStatus") parameterApplyStatus: option<nonEmptyString>,
  @as("ClusterParameterStatusList") clusterParameterStatusList: option<awsRedshiftClusterClusterParameterStatusList>
}
type awsRdsDbSubnetGroupSubnets = array<awsRdsDbSubnetGroupSubnet>
type awsRdsDbSnapshotDetails = {
@as("DbiResourceId") dbiResourceId: option<nonEmptyString>,
  @as("ProcessorFeatures") processorFeatures: option<awsRdsDbProcessorFeatures>,
  @as("IamDatabaseAuthenticationEnabled") iamDatabaseAuthenticationEnabled: option<boolean_>,
  @as("Timezone") timezone: option<nonEmptyString>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("TdeCredentialArn") tdeCredentialArn: option<nonEmptyString>,
  @as("StorageType") storageType: option<nonEmptyString>,
  @as("SourceDbSnapshotIdentifier") sourceDbSnapshotIdentifier: option<nonEmptyString>,
  @as("SourceRegion") sourceRegion: option<nonEmptyString>,
  @as("PercentProgress") percentProgress: option<integer_>,
  @as("OptionGroupName") optionGroupName: option<nonEmptyString>,
  @as("Iops") iops: option<integer_>,
  @as("SnapshotType") snapshotType: option<nonEmptyString>,
  @as("LicenseModel") licenseModel: option<nonEmptyString>,
  @as("EngineVersion") engineVersion: option<nonEmptyString>,
  @as("MasterUsername") masterUsername: option<nonEmptyString>,
  @as("InstanceCreateTime") instanceCreateTime: option<nonEmptyString>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("AvailabilityZone") availabilityZone: option<nonEmptyString>,
  @as("Port") port: option<integer_>,
  @as("Status") status: option<nonEmptyString>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("Engine") engine: option<nonEmptyString>,
  @as("SnapshotCreateTime") snapshotCreateTime: option<nonEmptyString>,
  @as("DbInstanceIdentifier") dbInstanceIdentifier: option<nonEmptyString>,
  @as("DbSnapshotIdentifier") dbSnapshotIdentifier: option<nonEmptyString>
}
type awsRdsDbPendingModifiedValues = {
@as("ProcessorFeatures") processorFeatures: option<awsRdsDbProcessorFeatures>,
  @as("PendingCloudWatchLogsExports") pendingCloudWatchLogsExports: option<awsRdsPendingCloudWatchLogsExports>,
  @as("DbSubnetGroupName") dbSubnetGroupName: option<nonEmptyString>,
  @as("CaCertificateIdentifier") caCertificateIdentifier: option<nonEmptyString>,
  @as("StorageType") storageType: option<nonEmptyString>,
  @as("DbInstanceIdentifier") dbInstanceIdentifier: option<nonEmptyString>,
  @as("Iops") iops: option<integer_>,
  @as("LicenseModel") licenseModel: option<nonEmptyString>,
  @as("EngineVersion") engineVersion: option<nonEmptyString>,
  @as("MultiAZ") multiAZ: option<boolean_>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integer_>,
  @as("Port") port: option<integer_>,
  @as("MasterUserPassword") masterUserPassword: option<nonEmptyString>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("DbInstanceClass") dbInstanceClass: option<nonEmptyString>
}
type awsRdsDbClusterDetails = {
@as("IamDatabaseAuthenticationEnabled") iamDatabaseAuthenticationEnabled: option<boolean_>,
  @as("DbClusterMembers") dbClusterMembers: option<awsRdsDbClusterMembers>,
  @as("DbClusterIdentifier") dbClusterIdentifier: option<nonEmptyString>,
  @as("DbClusterOptionGroupMemberships") dbClusterOptionGroupMemberships: option<awsRdsDbClusterOptionGroupMemberships>,
  @as("DbSubnetGroup") dbSubnetGroup: option<nonEmptyString>,
  @as("DbClusterParameterGroup") dbClusterParameterGroup: option<nonEmptyString>,
  @as("DomainMemberships") domainMemberships: option<awsRdsDbDomainMemberships>,
  @as("CrossAccountClone") crossAccountClone: option<boolean_>,
  @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<boolean_>,
  @as("ActivityStreamStatus") activityStreamStatus: option<nonEmptyString>,
  @as("HttpEndpointEnabled") httpEndpointEnabled: option<boolean_>,
  @as("DeletionProtection") deletionProtection: option<boolean_>,
  @as("EngineMode") engineMode: option<nonEmptyString>,
  @as("EnabledCloudWatchLogsExports") enabledCloudWatchLogsExports: option<stringList>,
  @as("ClusterCreateTime") clusterCreateTime: option<nonEmptyString>,
  @as("AssociatedRoles") associatedRoles: option<awsRdsDbClusterAssociatedRoles>,
  @as("DbClusterResourceId") dbClusterResourceId: option<nonEmptyString>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("HostedZoneId") hostedZoneId: option<nonEmptyString>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<awsRdsDbInstanceVpcSecurityGroups>,
  @as("ReadReplicaIdentifiers") readReplicaIdentifiers: option<stringList>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<nonEmptyString>,
  @as("PreferredBackupWindow") preferredBackupWindow: option<nonEmptyString>,
  @as("MasterUsername") masterUsername: option<nonEmptyString>,
  @as("Port") port: option<integer_>,
  @as("EngineVersion") engineVersion: option<nonEmptyString>,
  @as("Engine") engine: option<nonEmptyString>,
  @as("MultiAz") multiAz: option<boolean_>,
  @as("CustomEndpoints") customEndpoints: option<stringList>,
  @as("ReaderEndpoint") readerEndpoint: option<nonEmptyString>,
  @as("Endpoint") endpoint: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>,
  @as("DatabaseName") databaseName: option<nonEmptyString>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integer_>,
  @as("AvailabilityZones") availabilityZones: option<stringList>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>
}
type awsLambdaFunctionDetails = {
@as("Version") version: option<nonEmptyString>,
  @as("VpcConfig") vpcConfig: option<awsLambdaFunctionVpcConfig>,
  @as("TracingConfig") tracingConfig: option<awsLambdaFunctionTracingConfig>,
  @as("Timeout") timeout: option<integer_>,
  @as("Runtime") runtime: option<nonEmptyString>,
  @as("Role") role: option<nonEmptyString>,
  @as("RevisionId") revisionId: option<nonEmptyString>,
  @as("MemorySize") memorySize: option<integer_>,
  @as("MasterArn") masterArn: option<nonEmptyString>,
  @as("Layers") layers: option<awsLambdaFunctionLayerList>,
  @as("LastModified") lastModified: option<nonEmptyString>,
  @as("KmsKeyArn") kmsKeyArn: option<nonEmptyString>,
  @as("Handler") handler: option<nonEmptyString>,
  @as("FunctionName") functionName: option<nonEmptyString>,
  @as("Environment") environment: option<awsLambdaFunctionEnvironment>,
  @as("DeadLetterConfig") deadLetterConfig: option<awsLambdaFunctionDeadLetterConfig>,
  @as("CodeSha256") codeSha256: option<nonEmptyString>,
  @as("Code") code: option<awsLambdaFunctionCode>
}
type awsIamUserDetails = {
@as("UserPolicyList") userPolicyList: option<awsIamUserPolicyList>,
  @as("UserName") userName: option<nonEmptyString>,
  @as("UserId") userId: option<nonEmptyString>,
  @as("PermissionsBoundary") permissionsBoundary: option<awsIamPermissionsBoundary>,
  @as("Path") path: option<nonEmptyString>,
  @as("GroupList") groupList: option<stringList>,
  @as("CreateDate") createDate: option<nonEmptyString>,
  @as("AttachedManagedPolicies") attachedManagedPolicies: option<awsIamAttachedManagedPolicyList>
}
type awsIamPolicyDetails = {
@as("UpdateDate") updateDate: option<nonEmptyString>,
  @as("PolicyVersionList") policyVersionList: option<awsIamPolicyVersionList>,
  @as("PolicyName") policyName: option<nonEmptyString>,
  @as("PolicyId") policyId: option<nonEmptyString>,
  @as("PermissionsBoundaryUsageCount") permissionsBoundaryUsageCount: option<integer_>,
  @as("Path") path: option<nonEmptyString>,
  @as("IsAttachable") isAttachable: option<boolean_>,
  @as("Description") description: option<nonEmptyString>,
  @as("DefaultVersionId") defaultVersionId: option<nonEmptyString>,
  @as("CreateDate") createDate: option<nonEmptyString>,
  @as("AttachmentCount") attachmentCount: option<integer_>
}
type awsIamInstanceProfile = {
@as("Roles") roles: option<awsIamInstanceProfileRoles>,
  @as("Path") path: option<nonEmptyString>,
  @as("InstanceProfileName") instanceProfileName: option<nonEmptyString>,
  @as("InstanceProfileId") instanceProfileId: option<nonEmptyString>,
  @as("CreateDate") createDate: option<nonEmptyString>,
  @as("Arn") arn: option<nonEmptyString>
}
type awsIamGroupDetails = {
@as("Path") path: option<nonEmptyString>,
  @as("GroupPolicyList") groupPolicyList: option<awsIamGroupPolicyList>,
  @as("GroupName") groupName: option<nonEmptyString>,
  @as("GroupId") groupId: option<nonEmptyString>,
  @as("CreateDate") createDate: option<nonEmptyString>,
  @as("AttachedManagedPolicies") attachedManagedPolicies: option<awsIamAttachedManagedPolicyList>
}
type awsIamAccessKeyDetails = {
@as("SessionContext") sessionContext: option<awsIamAccessKeySessionContext>,
  @as("AccessKeyId") accessKeyId: option<nonEmptyString>,
  @as("AccountId") accountId: option<nonEmptyString>,
  @as("PrincipalName") principalName: option<nonEmptyString>,
  @as("PrincipalType") principalType: option<nonEmptyString>,
  @as("PrincipalId") principalId: option<nonEmptyString>,
  @as("CreatedAt") createdAt: option<nonEmptyString>,
  @as("Status") status: option<awsIamAccessKeyStatus>,
  @as("UserName") userName: option<nonEmptyString>
}
type awsElbv2LoadBalancerDetails = {
@as("VpcId") vpcId: option<nonEmptyString>,
  @as("Type") type_: option<nonEmptyString>,
  @as("State") state: option<loadBalancerState>,
  @as("SecurityGroups") securityGroups: option<securityGroups>,
  @as("Scheme") scheme: option<nonEmptyString>,
  @as("IpAddressType") ipAddressType: option<nonEmptyString>,
  @as("DNSName") dnsname: option<nonEmptyString>,
  @as("CreatedTime") createdTime: option<nonEmptyString>,
  @as("CanonicalHostedZoneId") canonicalHostedZoneId: option<nonEmptyString>,
  @as("AvailabilityZones") availabilityZones: option<availabilityZones>
}
type awsElbLoadBalancerPolicies = {
@as("OtherPolicies") otherPolicies: option<stringList>,
  @as("LbCookieStickinessPolicies") lbCookieStickinessPolicies: option<awsElbLbCookieStickinessPolicies>,
  @as("AppCookieStickinessPolicies") appCookieStickinessPolicies: option<awsElbAppCookieStickinessPolicies>
}
type awsElbLoadBalancerListenerDescriptions = array<awsElbLoadBalancerListenerDescription>
type awsElbLoadBalancerBackendServerDescriptions = array<awsElbLoadBalancerBackendServerDescription>
type awsElasticsearchDomainDetails = {
@as("VPCOptions") vpcoptions: option<awsElasticsearchDomainVPCOptions>,
  @as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: option<awsElasticsearchDomainNodeToNodeEncryptionOptions>,
  @as("EncryptionAtRestOptions") encryptionAtRestOptions: option<awsElasticsearchDomainEncryptionAtRestOptions>,
  @as("ElasticsearchVersion") elasticsearchVersion: option<nonEmptyString>,
  @as("Endpoints") endpoints: option<fieldMap>,
  @as("Endpoint") endpoint: option<nonEmptyString>,
  @as("DomainName") domainName: option<nonEmptyString>,
  @as("DomainId") domainId: option<nonEmptyString>,
  @as("DomainEndpointOptions") domainEndpointOptions: option<awsElasticsearchDomainDomainEndpointOptions>,
  @as("AccessPolicies") accessPolicies: option<nonEmptyString>
}
type awsElasticBeanstalkEnvironmentDetails = {
@as("VersionLabel") versionLabel: option<nonEmptyString>,
  @as("Tier") tier: option<awsElasticBeanstalkEnvironmentTier>,
  @as("Status") status: option<nonEmptyString>,
  @as("SolutionStackName") solutionStackName: option<nonEmptyString>,
  @as("PlatformArn") platformArn: option<nonEmptyString>,
  @as("OptionSettings") optionSettings: option<awsElasticBeanstalkEnvironmentOptionSettings>,
  @as("EnvironmentName") environmentName: option<nonEmptyString>,
  @as("EnvironmentLinks") environmentLinks: option<awsElasticBeanstalkEnvironmentEnvironmentLinks>,
  @as("EnvironmentId") environmentId: option<nonEmptyString>,
  @as("EnvironmentArn") environmentArn: option<nonEmptyString>,
  @as("EndpointUrl") endpointUrl: option<nonEmptyString>,
  @as("Description") description: option<nonEmptyString>,
  @as("DateUpdated") dateUpdated: option<nonEmptyString>,
  @as("DateCreated") dateCreated: option<nonEmptyString>,
  @as("Cname") cname: option<nonEmptyString>,
  @as("ApplicationName") applicationName: option<nonEmptyString>
}
type awsEc2VpcDetails = {
@as("State") state: option<nonEmptyString>,
  @as("DhcpOptionsId") dhcpOptionsId: option<nonEmptyString>,
  @as("Ipv6CidrBlockAssociationSet") ipv6CidrBlockAssociationSet: option<ipv6CidrBlockAssociationList>,
  @as("CidrBlockAssociationSet") cidrBlockAssociationSet: option<cidrBlockAssociationList>
}
type awsEc2VolumeDetails = {
@as("Attachments") attachments: option<awsEc2VolumeAttachmentList>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>,
  @as("SnapshotId") snapshotId: option<nonEmptyString>,
  @as("Size") size: option<integer_>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("CreateTime") createTime: option<nonEmptyString>
}
type awsEc2SubnetDetails = {
@as("Ipv6CidrBlockAssociationSet") ipv6CidrBlockAssociationSet: option<ipv6CidrBlockAssociationList>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("SubnetId") subnetId: option<nonEmptyString>,
  @as("SubnetArn") subnetArn: option<nonEmptyString>,
  @as("State") state: option<nonEmptyString>,
  @as("OwnerId") ownerId: option<nonEmptyString>,
  @as("MapPublicIpOnLaunch") mapPublicIpOnLaunch: option<boolean_>,
  @as("DefaultForAz") defaultForAz: option<boolean_>,
  @as("CidrBlock") cidrBlock: option<nonEmptyString>,
  @as("AvailableIpAddressCount") availableIpAddressCount: option<integer_>,
  @as("AvailabilityZoneId") availabilityZoneId: option<nonEmptyString>,
  @as("AvailabilityZone") availabilityZone: option<nonEmptyString>,
  @as("AssignIpv6AddressOnCreation") assignIpv6AddressOnCreation: option<boolean_>
}
type awsEc2SecurityGroupIpPermission = {
@as("PrefixListIds") prefixListIds: option<awsEc2SecurityGroupPrefixListIdList>,
  @as("Ipv6Ranges") ipv6Ranges: option<awsEc2SecurityGroupIpv6RangeList>,
  @as("IpRanges") ipRanges: option<awsEc2SecurityGroupIpRangeList>,
  @as("UserIdGroupPairs") userIdGroupPairs: option<awsEc2SecurityGroupUserIdGroupPairList>,
  @as("ToPort") toPort: option<integer_>,
  @as("FromPort") fromPort: option<integer_>,
  @as("IpProtocol") ipProtocol: option<nonEmptyString>
}
type awsEc2NetworkInterfaceDetails = {
@as("PublicIp") publicIp: option<nonEmptyString>,
  @as("PublicDnsName") publicDnsName: option<nonEmptyString>,
  @as("PrivateIpAddresses") privateIpAddresses: option<awsEc2NetworkInterfacePrivateIpAddressList>,
  @as("IpV6Addresses") ipV6Addresses: option<awsEc2NetworkInterfaceIpV6AddressList>,
  @as("SourceDestCheck") sourceDestCheck: option<boolean_>,
  @as("SecurityGroups") securityGroups: option<awsEc2NetworkInterfaceSecurityGroupList>,
  @as("NetworkInterfaceId") networkInterfaceId: option<nonEmptyString>,
  @as("Attachment") attachment: option<awsEc2NetworkInterfaceAttachment>
}
type awsEc2NetworkAclEntryList = array<awsEc2NetworkAclEntry>
type awsDynamoDbTableReplicaGlobalSecondaryIndexList = array<awsDynamoDbTableReplicaGlobalSecondaryIndex>
type awsDynamoDbTableLocalSecondaryIndex = {
@as("Projection") projection: option<awsDynamoDbTableProjection>,
  @as("KeySchema") keySchema: option<awsDynamoDbTableKeySchemaList>,
  @as("IndexName") indexName: option<nonEmptyString>,
  @as("IndexArn") indexArn: option<nonEmptyString>
}
type awsDynamoDbTableGlobalSecondaryIndex = {
@as("ProvisionedThroughput") provisionedThroughput: option<awsDynamoDbTableProvisionedThroughput>,
  @as("Projection") projection: option<awsDynamoDbTableProjection>,
  @as("KeySchema") keySchema: option<awsDynamoDbTableKeySchemaList>,
  @as("ItemCount") itemCount: option<integer_>,
  @as("IndexStatus") indexStatus: option<nonEmptyString>,
  @as("IndexSizeBytes") indexSizeBytes: option<sizeBytes>,
  @as("IndexName") indexName: option<nonEmptyString>,
  @as("IndexArn") indexArn: option<nonEmptyString>,
  @as("Backfilling") backfilling: option<boolean_>
}
type awsCodeBuildProjectDetails = {
@as("VpcConfig") vpcConfig: option<awsCodeBuildProjectVpcConfig>,
  @as("ServiceRole") serviceRole: option<nonEmptyString>,
  @as("Source") source: option<awsCodeBuildProjectSource>,
  @as("Name") name: option<nonEmptyString>,
  @as("Environment") environment: option<awsCodeBuildProjectEnvironment>,
  @as("EncryptionKey") encryptionKey: option<nonEmptyString>
}
type awsCloudFrontDistributionOriginItemList = array<awsCloudFrontDistributionOriginItem>
type awsCloudFrontDistributionOriginGroupFailover = {
@as("StatusCodes") statusCodes: option<awsCloudFrontDistributionOriginGroupFailoverStatusCodes>
}
type awsCloudFrontDistributionCacheBehaviors = {
@as("Items") items: option<awsCloudFrontDistributionCacheBehaviorsItemList>
}
type awsCertificateManagerCertificateDomainValidationOptions = array<awsCertificateManagerCertificateDomainValidationOption>
type awsApiGatewayV2ApiDetails = {
@as("CorsConfiguration") corsConfiguration: option<awsCorsConfiguration>,
  @as("RouteSelectionExpression") routeSelectionExpression: option<nonEmptyString>,
  @as("ProtocolType") protocolType: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>,
  @as("Version") version: option<nonEmptyString>,
  @as("Description") description: option<nonEmptyString>,
  @as("CreatedDate") createdDate: option<nonEmptyString>,
  @as("ApiKeySelectionExpression") apiKeySelectionExpression: option<nonEmptyString>,
  @as("ApiId") apiId: option<nonEmptyString>,
  @as("ApiEndpoint") apiEndpoint: option<nonEmptyString>
}
type awsApiGatewayStageDetails = {
@as("WebAclArn") webAclArn: option<nonEmptyString>,
  @as("LastUpdatedDate") lastUpdatedDate: option<nonEmptyString>,
  @as("CreatedDate") createdDate: option<nonEmptyString>,
  @as("TracingEnabled") tracingEnabled: option<boolean_>,
  @as("CanarySettings") canarySettings: option<awsApiGatewayCanarySettings>,
  @as("AccessLogSettings") accessLogSettings: option<awsApiGatewayAccessLogSettings>,
  @as("DocumentationVersion") documentationVersion: option<nonEmptyString>,
  @as("Variables") variables: option<fieldMap>,
  @as("MethodSettings") methodSettings: option<awsApiGatewayMethodSettingsList>,
  @as("CacheClusterStatus") cacheClusterStatus: option<nonEmptyString>,
  @as("CacheClusterSize") cacheClusterSize: option<nonEmptyString>,
  @as("CacheClusterEnabled") cacheClusterEnabled: option<boolean_>,
  @as("Description") description: option<nonEmptyString>,
  @as("StageName") stageName: option<nonEmptyString>,
  @as("ClientCertificateId") clientCertificateId: option<nonEmptyString>,
  @as("DeploymentId") deploymentId: option<nonEmptyString>
}
type awsApiGatewayRestApiDetails = {
@as("EndpointConfiguration") endpointConfiguration: option<awsApiGatewayEndpointConfiguration>,
  @as("ApiKeySource") apiKeySource: option<nonEmptyString>,
  @as("MinimumCompressionSize") minimumCompressionSize: option<integer_>,
  @as("BinaryMediaTypes") binaryMediaTypes: option<nonEmptyStringList>,
  @as("Version") version: option<nonEmptyString>,
  @as("CreatedDate") createdDate: option<nonEmptyString>,
  @as("Description") description: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>,
  @as("Id") id: option<nonEmptyString>
}
type awsApiCallAction = {
@as("LastSeen") lastSeen: option<nonEmptyString>,
  @as("FirstSeen") firstSeen: option<nonEmptyString>,
  @as("AffectedResources") affectedResources: option<fieldMap>,
  @as("DomainDetails") domainDetails: option<awsApiCallActionDomainDetails>,
  @as("RemoteIpDetails") remoteIpDetails: option<actionRemoteIpDetails>,
  @as("CallerType") callerType: option<nonEmptyString>,
  @as("ServiceName") serviceName: option<nonEmptyString>,
  @as("Api") api: option<nonEmptyString>
}
type vulnerabilityList = array<vulnerability>
type portProbeDetailList = array<portProbeDetail>
type occurrences = {
@as("Cells") cells: option<cells>,
  @as("Records") records: option<records>,
  @as("Pages") pages: option<pages>,
  @as("OffsetRanges") offsetRanges: option<ranges>,
  @as("LineRanges") lineRanges: option<ranges>
}
type networkHeader = {
@as("Source") source: option<networkPathComponentDetails>,
  @as("Destination") destination: option<networkPathComponentDetails>,
  @as("Protocol") protocol: option<nonEmptyString>
}
type awsWafWebAclRuleList = array<awsWafWebAclRule>
type awsSecurityFindingFilters = {
@as("FindingProviderFieldsTypes") findingProviderFieldsTypes: option<stringFilterList>,
  @as("FindingProviderFieldsSeverityOriginal") findingProviderFieldsSeverityOriginal: option<stringFilterList>,
  @as("FindingProviderFieldsSeverityLabel") findingProviderFieldsSeverityLabel: option<stringFilterList>,
  @as("FindingProviderFieldsRelatedFindingsProductArn") findingProviderFieldsRelatedFindingsProductArn: option<stringFilterList>,
  @as("FindingProviderFieldsRelatedFindingsId") findingProviderFieldsRelatedFindingsId: option<stringFilterList>,
  @as("FindingProviderFieldsCriticality") findingProviderFieldsCriticality: option<numberFilterList>,
  @as("FindingProviderFieldsConfidence") findingProviderFieldsConfidence: option<numberFilterList>,
  @as("Keyword") keyword: option<keywordFilterList>,
  @as("NoteUpdatedBy") noteUpdatedBy: option<stringFilterList>,
  @as("NoteUpdatedAt") noteUpdatedAt: option<dateFilterList>,
  @as("NoteText") noteText: option<stringFilterList>,
  @as("RelatedFindingsId") relatedFindingsId: option<stringFilterList>,
  @as("RelatedFindingsProductArn") relatedFindingsProductArn: option<stringFilterList>,
  @as("RecordState") recordState: option<stringFilterList>,
  @as("WorkflowStatus") workflowStatus: option<stringFilterList>,
  @as("WorkflowState") workflowState: option<stringFilterList>,
  @as("VerificationState") verificationState: option<stringFilterList>,
  @as("ComplianceStatus") complianceStatus: option<stringFilterList>,
  @as("ResourceDetailsOther") resourceDetailsOther: option<mapFilterList>,
  @as("ResourceContainerLaunchedAt") resourceContainerLaunchedAt: option<dateFilterList>,
  @as("ResourceContainerImageName") resourceContainerImageName: option<stringFilterList>,
  @as("ResourceContainerImageId") resourceContainerImageId: option<stringFilterList>,
  @as("ResourceContainerName") resourceContainerName: option<stringFilterList>,
  @as("ResourceAwsIamAccessKeyCreatedAt") resourceAwsIamAccessKeyCreatedAt: option<dateFilterList>,
  @as("ResourceAwsIamAccessKeyStatus") resourceAwsIamAccessKeyStatus: option<stringFilterList>,
  @as("ResourceAwsIamAccessKeyUserName") resourceAwsIamAccessKeyUserName: option<stringFilterList>,
  @as("ResourceAwsS3BucketOwnerName") resourceAwsS3BucketOwnerName: option<stringFilterList>,
  @as("ResourceAwsS3BucketOwnerId") resourceAwsS3BucketOwnerId: option<stringFilterList>,
  @as("ResourceAwsEc2InstanceLaunchedAt") resourceAwsEc2InstanceLaunchedAt: option<dateFilterList>,
  @as("ResourceAwsEc2InstanceSubnetId") resourceAwsEc2InstanceSubnetId: option<stringFilterList>,
  @as("ResourceAwsEc2InstanceVpcId") resourceAwsEc2InstanceVpcId: option<stringFilterList>,
  @as("ResourceAwsEc2InstanceIamInstanceProfileArn") resourceAwsEc2InstanceIamInstanceProfileArn: option<stringFilterList>,
  @as("ResourceAwsEc2InstanceKeyName") resourceAwsEc2InstanceKeyName: option<stringFilterList>,
  @as("ResourceAwsEc2InstanceIpV6Addresses") resourceAwsEc2InstanceIpV6Addresses: option<ipFilterList>,
  @as("ResourceAwsEc2InstanceIpV4Addresses") resourceAwsEc2InstanceIpV4Addresses: option<ipFilterList>,
  @as("ResourceAwsEc2InstanceImageId") resourceAwsEc2InstanceImageId: option<stringFilterList>,
  @as("ResourceAwsEc2InstanceType") resourceAwsEc2InstanceType: option<stringFilterList>,
  @as("ResourceTags") resourceTags: option<mapFilterList>,
  @as("ResourceRegion") resourceRegion: option<stringFilterList>,
  @as("ResourcePartition") resourcePartition: option<stringFilterList>,
  @as("ResourceId") resourceId: option<stringFilterList>,
  @as("ResourceType") resourceType: option<stringFilterList>,
  @as("ThreatIntelIndicatorSourceUrl") threatIntelIndicatorSourceUrl: option<stringFilterList>,
  @as("ThreatIntelIndicatorSource") threatIntelIndicatorSource: option<stringFilterList>,
  @as("ThreatIntelIndicatorLastObservedAt") threatIntelIndicatorLastObservedAt: option<dateFilterList>,
  @as("ThreatIntelIndicatorCategory") threatIntelIndicatorCategory: option<stringFilterList>,
  @as("ThreatIntelIndicatorValue") threatIntelIndicatorValue: option<stringFilterList>,
  @as("ThreatIntelIndicatorType") threatIntelIndicatorType: option<stringFilterList>,
  @as("ProcessTerminatedAt") processTerminatedAt: option<dateFilterList>,
  @as("ProcessLaunchedAt") processLaunchedAt: option<dateFilterList>,
  @as("ProcessParentPid") processParentPid: option<numberFilterList>,
  @as("ProcessPid") processPid: option<numberFilterList>,
  @as("ProcessPath") processPath: option<stringFilterList>,
  @as("ProcessName") processName: option<stringFilterList>,
  @as("NetworkDestinationDomain") networkDestinationDomain: option<stringFilterList>,
  @as("NetworkDestinationPort") networkDestinationPort: option<numberFilterList>,
  @as("NetworkDestinationIpV6") networkDestinationIpV6: option<ipFilterList>,
  @as("NetworkDestinationIpV4") networkDestinationIpV4: option<ipFilterList>,
  @as("NetworkSourceMac") networkSourceMac: option<stringFilterList>,
  @as("NetworkSourceDomain") networkSourceDomain: option<stringFilterList>,
  @as("NetworkSourcePort") networkSourcePort: option<numberFilterList>,
  @as("NetworkSourceIpV6") networkSourceIpV6: option<ipFilterList>,
  @as("NetworkSourceIpV4") networkSourceIpV4: option<ipFilterList>,
  @as("NetworkProtocol") networkProtocol: option<stringFilterList>,
  @as("NetworkDirection") networkDirection: option<stringFilterList>,
  @as("MalwareState") malwareState: option<stringFilterList>,
  @as("MalwarePath") malwarePath: option<stringFilterList>,
  @as("MalwareType") malwareType: option<stringFilterList>,
  @as("MalwareName") malwareName: option<stringFilterList>,
  @as("UserDefinedFields") userDefinedFields: option<mapFilterList>,
  @as("CompanyName") companyName: option<stringFilterList>,
  @as("ProductName") productName: option<stringFilterList>,
  @as("ProductFields") productFields: option<mapFilterList>,
  @as("SourceUrl") sourceUrl: option<stringFilterList>,
  @as("RecommendationText") recommendationText: option<stringFilterList>,
  @as("Description") description: option<stringFilterList>,
  @as("Title") title: option<stringFilterList>,
  @as("Criticality") criticality: option<numberFilterList>,
  @as("Confidence") confidence: option<numberFilterList>,
  @as("SeverityLabel") severityLabel: option<stringFilterList>,
  @as("SeverityNormalized") severityNormalized: option<numberFilterList>,
  @as("SeverityProduct") severityProduct: option<numberFilterList>,
  @as("UpdatedAt") updatedAt: option<dateFilterList>,
  @as("CreatedAt") createdAt: option<dateFilterList>,
  @as("LastObservedAt") lastObservedAt: option<dateFilterList>,
  @as("FirstObservedAt") firstObservedAt: option<dateFilterList>,
  @as("Type") type_: option<stringFilterList>,
  @as("GeneratorId") generatorId: option<stringFilterList>,
  @as("Id") id: option<stringFilterList>,
  @as("AwsAccountId") awsAccountId: option<stringFilterList>,
  @as("ProductArn") productArn: option<stringFilterList>
}
type awsS3BucketServerSideEncryptionConfiguration = {
@as("Rules") rules: option<awsS3BucketServerSideEncryptionRules>
}
type awsRedshiftClusterClusterParameterGroups = array<awsRedshiftClusterClusterParameterGroup>
type awsRdsDbSubnetGroup = {
@as("DbSubnetGroupArn") dbSubnetGroupArn: option<nonEmptyString>,
  @as("Subnets") subnets: option<awsRdsDbSubnetGroupSubnets>,
  @as("SubnetGroupStatus") subnetGroupStatus: option<nonEmptyString>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("DbSubnetGroupDescription") dbSubnetGroupDescription: option<nonEmptyString>,
  @as("DbSubnetGroupName") dbSubnetGroupName: option<nonEmptyString>
}
type awsIamInstanceProfileList = array<awsIamInstanceProfile>
type awsElbLoadBalancerDetails = {
@as("VpcId") vpcId: option<nonEmptyString>,
  @as("Subnets") subnets: option<stringList>,
  @as("SourceSecurityGroup") sourceSecurityGroup: option<awsElbLoadBalancerSourceSecurityGroup>,
  @as("SecurityGroups") securityGroups: option<stringList>,
  @as("Scheme") scheme: option<nonEmptyString>,
  @as("Policies") policies: option<awsElbLoadBalancerPolicies>,
  @as("LoadBalancerName") loadBalancerName: option<nonEmptyString>,
  @as("LoadBalancerAttributes") loadBalancerAttributes: option<awsElbLoadBalancerAttributes>,
  @as("ListenerDescriptions") listenerDescriptions: option<awsElbLoadBalancerListenerDescriptions>,
  @as("Instances") instances: option<awsElbLoadBalancerInstances>,
  @as("HealthCheck") healthCheck: option<awsElbLoadBalancerHealthCheck>,
  @as("DnsName") dnsName: option<nonEmptyString>,
  @as("CreatedTime") createdTime: option<nonEmptyString>,
  @as("CanonicalHostedZoneNameID") canonicalHostedZoneNameID: option<nonEmptyString>,
  @as("CanonicalHostedZoneName") canonicalHostedZoneName: option<nonEmptyString>,
  @as("BackendServerDescriptions") backendServerDescriptions: option<awsElbLoadBalancerBackendServerDescriptions>,
  @as("AvailabilityZones") availabilityZones: option<stringList>
}
type awsEc2SecurityGroupIpPermissionList = array<awsEc2SecurityGroupIpPermission>
type awsEc2NetworkAclDetails = {
@as("Entries") entries: option<awsEc2NetworkAclEntryList>,
  @as("Associations") associations: option<awsEc2NetworkAclAssociationList>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("OwnerId") ownerId: option<nonEmptyString>,
  @as("NetworkAclId") networkAclId: option<nonEmptyString>,
  @as("IsDefault") isDefault: option<boolean_>
}
type awsDynamoDbTableReplica = {
@as("ReplicaStatusDescription") replicaStatusDescription: option<nonEmptyString>,
  @as("ReplicaStatus") replicaStatus: option<nonEmptyString>,
  @as("RegionName") regionName: option<nonEmptyString>,
  @as("ProvisionedThroughputOverride") provisionedThroughputOverride: option<awsDynamoDbTableProvisionedThroughputOverride>,
  @as("KmsMasterKeyId") kmsMasterKeyId: option<nonEmptyString>,
  @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<awsDynamoDbTableReplicaGlobalSecondaryIndexList>
}
type awsDynamoDbTableLocalSecondaryIndexList = array<awsDynamoDbTableLocalSecondaryIndex>
type awsDynamoDbTableGlobalSecondaryIndexList = array<awsDynamoDbTableGlobalSecondaryIndex>
type awsCloudFrontDistributionOrigins = {
@as("Items") items: option<awsCloudFrontDistributionOriginItemList>
}
type awsCloudFrontDistributionOriginGroup = {
@as("FailoverCriteria") failoverCriteria: option<awsCloudFrontDistributionOriginGroupFailover>
}
type awsCertificateManagerCertificateRenewalSummary = {
@as("UpdatedAt") updatedAt: option<nonEmptyString>,
  @as("RenewalStatusReason") renewalStatusReason: option<nonEmptyString>,
  @as("RenewalStatus") renewalStatus: option<nonEmptyString>,
  @as("DomainValidationOptions") domainValidationOptions: option<awsCertificateManagerCertificateDomainValidationOptions>
}
type sensitiveDataDetections = {
@as("Occurrences") occurrences: option<occurrences>,
  @as("Type") type_: option<nonEmptyString>,
  @as("Count") count: option<long>
}
type portProbeAction = {
@as("Blocked") blocked: option<boolean_>,
  @as("PortProbeDetails") portProbeDetails: option<portProbeDetailList>
}
type networkPathComponent = {
@as("Ingress") ingress: option<networkHeader>,
  @as("Egress") egress: option<networkHeader>,
  @as("ComponentType") componentType: option<nonEmptyString>,
  @as("ComponentId") componentId: option<nonEmptyString>
}
type insight = {
@as("GroupByAttribute") groupByAttribute: nonEmptyString,
  @as("Filters") filters: awsSecurityFindingFilters,
  @as("Name") name: nonEmptyString,
  @as("InsightArn") insightArn: nonEmptyString
}
type customDataIdentifiersDetections = {
@as("Occurrences") occurrences: option<occurrences>,
  @as("Name") name: option<nonEmptyString>,
  @as("Arn") arn: option<nonEmptyString>,
  @as("Count") count: option<long>
}
type awsWafWebAclDetails = {
@as("WebAclId") webAclId: option<nonEmptyString>,
  @as("Rules") rules: option<awsWafWebAclRuleList>,
  @as("DefaultAction") defaultAction: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>
}
type awsS3BucketDetails = {
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: option<awsS3AccountPublicAccessBlockDetails>,
  @as("ServerSideEncryptionConfiguration") serverSideEncryptionConfiguration: option<awsS3BucketServerSideEncryptionConfiguration>,
  @as("CreatedAt") createdAt: option<nonEmptyString>,
  @as("OwnerName") ownerName: option<nonEmptyString>,
  @as("OwnerId") ownerId: option<nonEmptyString>
}
type awsRedshiftClusterDetails = {
@as("VpcSecurityGroups") vpcSecurityGroups: option<awsRedshiftClusterVpcSecurityGroups>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("SnapshotScheduleState") snapshotScheduleState: option<nonEmptyString>,
  @as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: option<nonEmptyString>,
  @as("RestoreStatus") restoreStatus: option<awsRedshiftClusterRestoreStatus>,
  @as("ResizeInfo") resizeInfo: option<awsRedshiftClusterResizeInfo>,
  @as("PubliclyAccessible") publiclyAccessible: option<boolean_>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<nonEmptyString>,
  @as("PendingModifiedValues") pendingModifiedValues: option<awsRedshiftClusterPendingModifiedValues>,
  @as("PendingActions") pendingActions: option<stringList>,
  @as("NumberOfNodes") numberOfNodes: option<integer_>,
  @as("NodeType") nodeType: option<nonEmptyString>,
  @as("NextMaintenanceWindowStartTime") nextMaintenanceWindowStartTime: option<nonEmptyString>,
  @as("MasterUsername") masterUsername: option<nonEmptyString>,
  @as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: option<integer_>,
  @as("MaintenanceTrackName") maintenanceTrackName: option<nonEmptyString>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("IamRoles") iamRoles: option<awsRedshiftClusterIamRoles>,
  @as("HsmStatus") hsmStatus: option<awsRedshiftClusterHsmStatus>,
  @as("ExpectedNextSnapshotScheduleTimeStatus") expectedNextSnapshotScheduleTimeStatus: option<nonEmptyString>,
  @as("ExpectedNextSnapshotScheduleTime") expectedNextSnapshotScheduleTime: option<nonEmptyString>,
  @as("EnhancedVpcRouting") enhancedVpcRouting: option<boolean_>,
  @as("Endpoint") endpoint: option<awsRedshiftClusterEndpoint>,
  @as("Encrypted") encrypted: option<boolean_>,
  @as("ElasticResizeNumberOfNodeOptions") elasticResizeNumberOfNodeOptions: option<nonEmptyString>,
  @as("ElasticIpStatus") elasticIpStatus: option<awsRedshiftClusterElasticIpStatus>,
  @as("DeferredMaintenanceWindows") deferredMaintenanceWindows: option<awsRedshiftClusterDeferredMaintenanceWindows>,
  @as("DBName") dbname: option<nonEmptyString>,
  @as("ClusterVersion") clusterVersion: option<nonEmptyString>,
  @as("ClusterSubnetGroupName") clusterSubnetGroupName: option<nonEmptyString>,
  @as("ClusterStatus") clusterStatus: option<nonEmptyString>,
  @as("ClusterSnapshotCopyStatus") clusterSnapshotCopyStatus: option<awsRedshiftClusterClusterSnapshotCopyStatus>,
  @as("ClusterSecurityGroups") clusterSecurityGroups: option<awsRedshiftClusterClusterSecurityGroups>,
  @as("ClusterRevisionNumber") clusterRevisionNumber: option<nonEmptyString>,
  @as("ClusterPublicKey") clusterPublicKey: option<nonEmptyString>,
  @as("ClusterParameterGroups") clusterParameterGroups: option<awsRedshiftClusterClusterParameterGroups>,
  @as("ClusterNodes") clusterNodes: option<awsRedshiftClusterClusterNodes>,
  @as("ClusterIdentifier") clusterIdentifier: option<nonEmptyString>,
  @as("ClusterCreateTime") clusterCreateTime: option<nonEmptyString>,
  @as("ClusterAvailabilityStatus") clusterAvailabilityStatus: option<nonEmptyString>,
  @as("AvailabilityZone") availabilityZone: option<nonEmptyString>,
  @as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: option<integer_>,
  @as("AllowVersionUpgrade") allowVersionUpgrade: option<boolean_>
}
type awsRdsDbInstanceDetails = {
@as("MaxAllocatedStorage") maxAllocatedStorage: option<integer_>,
  @as("ListenerEndpoint") listenerEndpoint: option<awsRdsDbInstanceEndpoint>,
  @as("ProcessorFeatures") processorFeatures: option<awsRdsDbProcessorFeatures>,
  @as("EnabledCloudWatchLogsExports") enabledCloudWatchLogsExports: option<stringList>,
  @as("PerformanceInsightsRetentionPeriod") performanceInsightsRetentionPeriod: option<integer_>,
  @as("PerformanceInsightsKmsKeyId") performanceInsightsKmsKeyId: option<nonEmptyString>,
  @as("PerformanceInsightsEnabled") performanceInsightsEnabled: option<boolean_>,
  @as("Timezone") timezone: option<nonEmptyString>,
  @as("PromotionTier") promotionTier: option<integer_>,
  @as("MonitoringRoleArn") monitoringRoleArn: option<nonEmptyString>,
  @as("MonitoringInterval") monitoringInterval: option<integer_>,
  @as("CopyTagsToSnapshot") copyTagsToSnapshot: option<boolean_>,
  @as("DomainMemberships") domainMemberships: option<awsRdsDbDomainMemberships>,
  @as("StorageType") storageType: option<nonEmptyString>,
  @as("StatusInfos") statusInfos: option<awsRdsDbStatusInfos>,
  @as("SecondaryAvailabilityZone") secondaryAvailabilityZone: option<nonEmptyString>,
  @as("CharacterSetName") characterSetName: option<nonEmptyString>,
  @as("OptionGroupMemberships") optionGroupMemberships: option<awsRdsDbOptionGroupMemberships>,
  @as("Iops") iops: option<integer_>,
  @as("LicenseModel") licenseModel: option<nonEmptyString>,
  @as("ReadReplicaDBClusterIdentifiers") readReplicaDBClusterIdentifiers: option<stringList>,
  @as("ReadReplicaDBInstanceIdentifiers") readReplicaDBInstanceIdentifiers: option<stringList>,
  @as("ReadReplicaSourceDBInstanceIdentifier") readReplicaSourceDBInstanceIdentifier: option<nonEmptyString>,
  @as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: option<boolean_>,
  @as("LatestRestorableTime") latestRestorableTime: option<nonEmptyString>,
  @as("PendingModifiedValues") pendingModifiedValues: option<awsRdsDbPendingModifiedValues>,
  @as("PreferredMaintenanceWindow") preferredMaintenanceWindow: option<nonEmptyString>,
  @as("DbSubnetGroup") dbSubnetGroup: option<awsRdsDbSubnetGroup>,
  @as("AvailabilityZone") availabilityZone: option<nonEmptyString>,
  @as("DbParameterGroups") dbParameterGroups: option<awsRdsDbParameterGroups>,
  @as("DbSecurityGroups") dbSecurityGroups: option<stringList>,
  @as("BackupRetentionPeriod") backupRetentionPeriod: option<integer_>,
  @as("PreferredBackupWindow") preferredBackupWindow: option<nonEmptyString>,
  @as("AllocatedStorage") allocatedStorage: option<integer_>,
  @as("MasterUsername") masterUsername: option<nonEmptyString>,
  @as("DbInstanceStatus") dbInstanceStatus: option<nonEmptyString>,
  @as("EnhancedMonitoringResourceArn") enhancedMonitoringResourceArn: option<nonEmptyString>,
  @as("MultiAz") multiAz: option<boolean_>,
  @as("VpcSecurityGroups") vpcSecurityGroups: option<awsRdsDbInstanceVpcSecurityGroups>,
  @as("TdeCredentialArn") tdeCredentialArn: option<nonEmptyString>,
  @as("StorageEncrypted") storageEncrypted: option<boolean_>,
  @as("PubliclyAccessible") publiclyAccessible: option<boolean_>,
  @as("KmsKeyId") kmsKeyId: option<nonEmptyString>,
  @as("InstanceCreateTime") instanceCreateTime: option<nonEmptyString>,
  @as("IAMDatabaseAuthenticationEnabled") iamdatabaseAuthenticationEnabled: option<boolean_>,
  @as("EngineVersion") engineVersion: option<nonEmptyString>,
  @as("Engine") engine: option<nonEmptyString>,
  @as("Endpoint") endpoint: option<awsRdsDbInstanceEndpoint>,
  @as("DeletionProtection") deletionProtection: option<boolean_>,
  @as("DBName") dbname: option<nonEmptyString>,
  @as("DbiResourceId") dbiResourceId: option<nonEmptyString>,
  @as("DbInstancePort") dbInstancePort: option<integer_>,
  @as("DBInstanceClass") dbinstanceClass: option<nonEmptyString>,
  @as("DBInstanceIdentifier") dbinstanceIdentifier: option<nonEmptyString>,
  @as("DBClusterIdentifier") dbclusterIdentifier: option<nonEmptyString>,
  @as("CACertificateIdentifier") cacertificateIdentifier: option<nonEmptyString>,
  @as("AssociatedRoles") associatedRoles: option<awsRdsDbInstanceAssociatedRoles>
}
type awsIamRoleDetails = {
@as("Path") path: option<nonEmptyString>,
  @as("MaxSessionDuration") maxSessionDuration: option<integer_>,
  @as("RolePolicyList") rolePolicyList: option<awsIamRolePolicyList>,
  @as("RoleName") roleName: option<nonEmptyString>,
  @as("RoleId") roleId: option<nonEmptyString>,
  @as("PermissionsBoundary") permissionsBoundary: option<awsIamPermissionsBoundary>,
  @as("InstanceProfileList") instanceProfileList: option<awsIamInstanceProfileList>,
  @as("CreateDate") createDate: option<nonEmptyString>,
  @as("AttachedManagedPolicies") attachedManagedPolicies: option<awsIamAttachedManagedPolicyList>,
  @as("AssumeRolePolicyDocument") assumeRolePolicyDocument: option<awsIamRoleAssumeRolePolicyDocument>
}
type awsEc2SecurityGroupDetails = {
@as("IpPermissionsEgress") ipPermissionsEgress: option<awsEc2SecurityGroupIpPermissionList>,
  @as("IpPermissions") ipPermissions: option<awsEc2SecurityGroupIpPermissionList>,
  @as("VpcId") vpcId: option<nonEmptyString>,
  @as("OwnerId") ownerId: option<nonEmptyString>,
  @as("GroupId") groupId: option<nonEmptyString>,
  @as("GroupName") groupName: option<nonEmptyString>
}
type awsDynamoDbTableReplicaList = array<awsDynamoDbTableReplica>
type awsCloudFrontDistributionOriginGroupsItemList = array<awsCloudFrontDistributionOriginGroup>
type awsCertificateManagerCertificateDetails = {
@as("Type") type_: option<nonEmptyString>,
  @as("SubjectAlternativeNames") subjectAlternativeNames: option<stringList>,
  @as("Subject") subject: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>,
  @as("SignatureAlgorithm") signatureAlgorithm: option<nonEmptyString>,
  @as("Serial") serial: option<nonEmptyString>,
  @as("RenewalSummary") renewalSummary: option<awsCertificateManagerCertificateRenewalSummary>,
  @as("RenewalEligibility") renewalEligibility: option<nonEmptyString>,
  @as("Options") options: option<awsCertificateManagerCertificateOptions>,
  @as("NotBefore") notBefore: option<nonEmptyString>,
  @as("NotAfter") notAfter: option<nonEmptyString>,
  @as("KeyUsages") keyUsages: option<awsCertificateManagerCertificateKeyUsages>,
  @as("KeyAlgorithm") keyAlgorithm: option<nonEmptyString>,
  @as("Issuer") issuer: option<nonEmptyString>,
  @as("IssuedAt") issuedAt: option<nonEmptyString>,
  @as("InUseBy") inUseBy: option<stringList>,
  @as("ImportedAt") importedAt: option<nonEmptyString>,
  @as("FailureReason") failureReason: option<nonEmptyString>,
  @as("ExtendedKeyUsages") extendedKeyUsages: option<awsCertificateManagerCertificateExtendedKeyUsages>,
  @as("DomainValidationOptions") domainValidationOptions: option<awsCertificateManagerCertificateDomainValidationOptions>,
  @as("DomainName") domainName: option<nonEmptyString>,
  @as("CreatedAt") createdAt: option<nonEmptyString>,
  @as("CertificateAuthorityArn") certificateAuthorityArn: option<nonEmptyString>
}
type sensitiveDataDetectionsList = array<sensitiveDataDetections>
type networkPathList = array<networkPathComponent>
type insightList = array<insight>
type customDataIdentifiersDetectionsList = array<customDataIdentifiersDetections>
type awsDynamoDbTableDetails = {
@as("TableStatus") tableStatus: option<nonEmptyString>,
  @as("TableSizeBytes") tableSizeBytes: option<sizeBytes>,
  @as("TableName") tableName: option<nonEmptyString>,
  @as("TableId") tableId: option<nonEmptyString>,
  @as("StreamSpecification") streamSpecification: option<awsDynamoDbTableStreamSpecification>,
  @as("SseDescription") sseDescription: option<awsDynamoDbTableSseDescription>,
  @as("RestoreSummary") restoreSummary: option<awsDynamoDbTableRestoreSummary>,
  @as("Replicas") replicas: option<awsDynamoDbTableReplicaList>,
  @as("ProvisionedThroughput") provisionedThroughput: option<awsDynamoDbTableProvisionedThroughput>,
  @as("LocalSecondaryIndexes") localSecondaryIndexes: option<awsDynamoDbTableLocalSecondaryIndexList>,
  @as("LatestStreamLabel") latestStreamLabel: option<nonEmptyString>,
  @as("LatestStreamArn") latestStreamArn: option<nonEmptyString>,
  @as("KeySchema") keySchema: option<awsDynamoDbTableKeySchemaList>,
  @as("ItemCount") itemCount: option<integer_>,
  @as("GlobalTableVersion") globalTableVersion: option<nonEmptyString>,
  @as("GlobalSecondaryIndexes") globalSecondaryIndexes: option<awsDynamoDbTableGlobalSecondaryIndexList>,
  @as("CreationDateTime") creationDateTime: option<nonEmptyString>,
  @as("BillingModeSummary") billingModeSummary: option<awsDynamoDbTableBillingModeSummary>,
  @as("AttributeDefinitions") attributeDefinitions: option<awsDynamoDbTableAttributeDefinitionList>
}
type awsCloudFrontDistributionOriginGroups = {
@as("Items") items: option<awsCloudFrontDistributionOriginGroupsItemList>
}
type action = {
@as("PortProbeAction") portProbeAction: option<portProbeAction>,
  @as("DnsRequestAction") dnsRequestAction: option<dnsRequestAction>,
  @as("AwsApiCallAction") awsApiCallAction: option<awsApiCallAction>,
  @as("NetworkConnectionAction") networkConnectionAction: option<networkConnectionAction>,
  @as("ActionType") actionType: option<nonEmptyString>
}
type sensitiveDataResult = {
@as("TotalCount") totalCount: option<long>,
  @as("Detections") detections: option<sensitiveDataDetectionsList>,
  @as("Category") category: option<nonEmptyString>
}
type customDataIdentifiersResult = {
@as("TotalCount") totalCount: option<long>,
  @as("Detections") detections: option<customDataIdentifiersDetectionsList>
}
type awsCloudFrontDistributionDetails = {
@as("WebAclId") webAclId: option<nonEmptyString>,
  @as("Status") status: option<nonEmptyString>,
  @as("OriginGroups") originGroups: option<awsCloudFrontDistributionOriginGroups>,
  @as("Origins") origins: option<awsCloudFrontDistributionOrigins>,
  @as("Logging") logging: option<awsCloudFrontDistributionLogging>,
  @as("LastModifiedTime") lastModifiedTime: option<nonEmptyString>,
  @as("ETag") etag: option<nonEmptyString>,
  @as("DomainName") domainName: option<nonEmptyString>,
  @as("DefaultRootObject") defaultRootObject: option<nonEmptyString>,
  @as("DefaultCacheBehavior") defaultCacheBehavior: option<awsCloudFrontDistributionDefaultCacheBehavior>,
  @as("CacheBehaviors") cacheBehaviors: option<awsCloudFrontDistributionCacheBehaviors>
}
type sensitiveDataResultList = array<sensitiveDataResult>
type resourceDetails = {
@as("Other") other: option<fieldMap>,
  @as("Container") container: option<containerDetails>,
  @as("AwsRdsDbCluster") awsRdsDbCluster: option<awsRdsDbClusterDetails>,
  @as("AwsRdsDbClusterSnapshot") awsRdsDbClusterSnapshot: option<awsRdsDbClusterSnapshotDetails>,
  @as("AwsRdsDbSnapshot") awsRdsDbSnapshot: option<awsRdsDbSnapshotDetails>,
  @as("AwsWafWebAcl") awsWafWebAcl: option<awsWafWebAclDetails>,
  @as("AwsSqsQueue") awsSqsQueue: option<awsSqsQueueDetails>,
  @as("AwsSnsTopic") awsSnsTopic: option<awsSnsTopicDetails>,
  @as("AwsRdsDbInstance") awsRdsDbInstance: option<awsRdsDbInstanceDetails>,
  @as("AwsLambdaLayerVersion") awsLambdaLayerVersion: option<awsLambdaLayerVersionDetails>,
  @as("AwsLambdaFunction") awsLambdaFunction: option<awsLambdaFunctionDetails>,
  @as("AwsKmsKey") awsKmsKey: option<awsKmsKeyDetails>,
  @as("AwsIamRole") awsIamRole: option<awsIamRoleDetails>,
  @as("AwsIamGroup") awsIamGroup: option<awsIamGroupDetails>,
  @as("AwsElbLoadBalancer") awsElbLoadBalancer: option<awsElbLoadBalancerDetails>,
  @as("AwsRedshiftCluster") awsRedshiftCluster: option<awsRedshiftClusterDetails>,
  @as("AwsCertificateManagerCertificate") awsCertificateManagerCertificate: option<awsCertificateManagerCertificateDetails>,
  @as("AwsSsmPatchCompliance") awsSsmPatchCompliance: option<awsSsmPatchComplianceDetails>,
  @as("AwsCloudTrailTrail") awsCloudTrailTrail: option<awsCloudTrailTrailDetails>,
  @as("AwsApiGatewayRestApi") awsApiGatewayRestApi: option<awsApiGatewayRestApiDetails>,
  @as("AwsApiGatewayStage") awsApiGatewayStage: option<awsApiGatewayStageDetails>,
  @as("AwsDynamoDbTable") awsDynamoDbTable: option<awsDynamoDbTableDetails>,
  @as("AwsApiGatewayV2Api") awsApiGatewayV2Api: option<awsApiGatewayV2ApiDetails>,
  @as("AwsApiGatewayV2Stage") awsApiGatewayV2Stage: option<awsApiGatewayV2StageDetails>,
  @as("AwsIamPolicy") awsIamPolicy: option<awsIamPolicyDetails>,
  @as("AwsIamUser") awsIamUser: option<awsIamUserDetails>,
  @as("AwsIamAccessKey") awsIamAccessKey: option<awsIamAccessKeyDetails>,
  @as("AwsSecretsManagerSecret") awsSecretsManagerSecret: option<awsSecretsManagerSecretDetails>,
  @as("AwsS3Object") awsS3Object: option<awsS3ObjectDetails>,
  @as("AwsS3AccountPublicAccessBlock") awsS3AccountPublicAccessBlock: option<awsS3AccountPublicAccessBlockDetails>,
  @as("AwsS3Bucket") awsS3Bucket: option<awsS3BucketDetails>,
  @as("AwsElasticsearchDomain") awsElasticsearchDomain: option<awsElasticsearchDomainDetails>,
  @as("AwsElasticBeanstalkEnvironment") awsElasticBeanstalkEnvironment: option<awsElasticBeanstalkEnvironmentDetails>,
  @as("AwsElbv2LoadBalancer") awsElbv2LoadBalancer: option<awsElbv2LoadBalancerDetails>,
  @as("AwsEc2NetworkAcl") awsEc2NetworkAcl: option<awsEc2NetworkAclDetails>,
  @as("AwsEc2Subnet") awsEc2Subnet: option<awsEc2SubnetDetails>,
  @as("AwsEc2Eip") awsEc2Eip: option<awsEc2EipDetails>,
  @as("AwsEc2Vpc") awsEc2Vpc: option<awsEc2VpcDetails>,
  @as("AwsEc2Volume") awsEc2Volume: option<awsEc2VolumeDetails>,
  @as("AwsEc2SecurityGroup") awsEc2SecurityGroup: option<awsEc2SecurityGroupDetails>,
  @as("AwsEc2NetworkInterface") awsEc2NetworkInterface: option<awsEc2NetworkInterfaceDetails>,
  @as("AwsEc2Instance") awsEc2Instance: option<awsEc2InstanceDetails>,
  @as("AwsCloudFrontDistribution") awsCloudFrontDistribution: option<awsCloudFrontDistributionDetails>,
  @as("AwsCodeBuildProject") awsCodeBuildProject: option<awsCodeBuildProjectDetails>,
  @as("AwsAutoScalingAutoScalingGroup") awsAutoScalingAutoScalingGroup: option<awsAutoScalingAutoScalingGroupDetails>
}
type classificationResult = {
@as("CustomDataIdentifiers") customDataIdentifiers: option<customDataIdentifiersResult>,
  @as("SensitiveData") sensitiveData: option<sensitiveDataResultList>,
  @as("Status") status: option<classificationStatus>,
  @as("AdditionalOccurrences") additionalOccurrences: option<boolean_>,
  @as("SizeClassified") sizeClassified: option<long>,
  @as("MimeType") mimeType: option<nonEmptyString>
}
type dataClassificationDetails = {
@as("Result") result: option<classificationResult>,
  @as("DetailedResultsLocation") detailedResultsLocation: option<nonEmptyString>
}
type resource = {
@as("Details") details: option<resourceDetails>,
  @as("DataClassification") dataClassification: option<dataClassificationDetails>,
  @as("Tags") tags: option<fieldMap>,
  @as("ResourceRole") resourceRole: option<nonEmptyString>,
  @as("Region") region: option<nonEmptyString>,
  @as("Partition") partition: option<partition>,
  @as("Id") id: nonEmptyString,
  @as("Type") type_: nonEmptyString
}
type resourceList = array<resource>
type awsSecurityFinding = {
@as("FindingProviderFields") findingProviderFields: option<findingProviderFields>,
  @as("Action") action: option<action>,
  @as("PatchSummary") patchSummary: option<patchSummary>,
  @as("Vulnerabilities") vulnerabilities: option<vulnerabilityList>,
  @as("Note") note: option<note>,
  @as("RelatedFindings") relatedFindings: option<relatedFindingList>,
  @as("RecordState") recordState: option<recordState>,
  @as("Workflow") workflow: option<workflow>,
  @as("WorkflowState") workflowState: option<workflowState>,
  @as("VerificationState") verificationState: option<verificationState>,
  @as("Compliance") compliance: option<compliance>,
  @as("Resources") resources: resourceList,
  @as("ThreatIntelIndicators") threatIntelIndicators: option<threatIntelIndicatorList>,
  @as("Process") process: option<processDetails>,
  @as("NetworkPath") networkPath: option<networkPathList>,
  @as("Network") network: option<network>,
  @as("Malware") malware: option<malwareList>,
  @as("UserDefinedFields") userDefinedFields: option<fieldMap>,
  @as("ProductFields") productFields: option<fieldMap>,
  @as("SourceUrl") sourceUrl: option<nonEmptyString>,
  @as("Remediation") remediation: option<remediation>,
  @as("Description") description: nonEmptyString,
  @as("Title") title: nonEmptyString,
  @as("Criticality") criticality: option<integer_>,
  @as("Confidence") confidence: option<integer_>,
  @as("Severity") severity: option<severity>,
  @as("UpdatedAt") updatedAt: nonEmptyString,
  @as("CreatedAt") createdAt: nonEmptyString,
  @as("LastObservedAt") lastObservedAt: option<nonEmptyString>,
  @as("FirstObservedAt") firstObservedAt: option<nonEmptyString>,
  @as("Types") types: option<typeList>,
  @as("AwsAccountId") awsAccountId: nonEmptyString,
  @as("GeneratorId") generatorId: nonEmptyString,
  @as("ProductArn") productArn: nonEmptyString,
  @as("Id") id: nonEmptyString,
  @as("SchemaVersion") schemaVersion: nonEmptyString
}
type batchImportFindingsRequestFindingList = array<awsSecurityFinding>
type awsSecurityFindingList = array<awsSecurityFinding>

module UpdateStandardsControl = {
  type t;
  type request = {
@as("DisabledReason") disabledReason: option<nonEmptyString>,
  @as("ControlStatus") controlStatus: option<controlStatus>,
  @as("StandardsControlArn") standardsControlArn: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateStandardsControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSecurityHubConfiguration = {
  type t;
  type request = {
@as("AutoEnableControls") autoEnableControls: option<boolean_>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateSecurityHubConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateOrganizationConfiguration = {
  type t;
  type request = {
@as("AutoEnable") autoEnable: boolean_
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateOrganizationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateActionTarget = {
  type t;
  type request = {
@as("Description") description: option<nonEmptyString>,
  @as("Name") name: option<nonEmptyString>,
  @as("ActionTargetArn") actionTargetArn: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateActionTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInvitationsCount = {
  type t;
  type request = unit
  type response = {
@as("InvitationsCount") invitationsCount: option<integer_>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetInvitationsCountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableOrganizationAdminAccount = {
  type t;
  type request = {
@as("AdminAccountId") adminAccountId: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "EnableOrganizationAdminAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableImportFindingsForProduct = {
  type t;
  type request = {
@as("ProductArn") productArn: nonEmptyString
}
  type response = {
@as("ProductSubscriptionArn") productSubscriptionArn: option<nonEmptyString>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "EnableImportFindingsForProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromMasterAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisassociateFromMasterAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromAdministratorAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisassociateFromAdministratorAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableSecurityHub = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisableSecurityHubCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableOrganizationAdminAccount = {
  type t;
  type request = {
@as("AdminAccountId") adminAccountId: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisableOrganizationAdminAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableImportFindingsForProduct = {
  type t;
  type request = {
@as("ProductSubscriptionArn") productSubscriptionArn: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisableImportFindingsForProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfiguration = {
  type t;
  type request = unit
  type response = {
@as("MemberAccountLimitReached") memberAccountLimitReached: option<boolean_>,
  @as("AutoEnable") autoEnable: option<boolean_>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeOrganizationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeHub = {
  type t;
  type request = {
@as("HubArn") hubArn: option<nonEmptyString>
}
  type response = {
@as("AutoEnableControls") autoEnableControls: option<boolean_>,
  @as("SubscribedAt") subscribedAt: option<nonEmptyString>,
  @as("HubArn") hubArn: option<nonEmptyString>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeHubCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInsight = {
  type t;
  type request = {
@as("InsightArn") insightArn: nonEmptyString
}
  type response = {
@as("InsightArn") insightArn: nonEmptyString
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteInsightCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteActionTarget = {
  type t;
  type request = {
@as("ActionTargetArn") actionTargetArn: nonEmptyString
}
  type response = {
@as("ActionTargetArn") actionTargetArn: nonEmptyString
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteActionTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateActionTarget = {
  type t;
  type request = {
@as("Id") id: nonEmptyString,
  @as("Description") description: nonEmptyString,
  @as("Name") name: nonEmptyString
}
  type response = {
@as("ActionTargetArn") actionTargetArn: nonEmptyString
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "CreateActionTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptInvitation = {
  type t;
  type request = {
@as("InvitationId") invitationId: nonEmptyString,
  @as("MasterId") masterId: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "AcceptInvitationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptAdministratorInvitation = {
  type t;
  type request = {
@as("InvitationId") invitationId: nonEmptyString,
  @as("AdministratorId") administratorId: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "AcceptAdministratorInvitationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceArn") resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
  @as("ResourceArn") resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArn
}
  type response = {
@as("Tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEnabledProductsForImport = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ProductSubscriptions") productSubscriptions: option<productSubscriptionArnList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListEnabledProductsForImportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMasterAccount = {
  type t;
  type request = unit
  type response = {
@as("Master") master: option<invitation>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetMasterAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAdministratorAccount = {
  type t;
  type request = unit
  type response = {
@as("Administrator") administrator: option<invitation>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetAdministratorAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableSecurityHub = {
  type t;
  type request = {
@as("EnableDefaultStandards") enableDefaultStandards: option<boolean_>,
  @as("Tags") tags: option<tagMap>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "EnableSecurityHubCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: accountIdList
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisassociateMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationAdminAccounts = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<adminsMaxResults>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("AdminAccounts") adminAccounts: option<adminAccounts>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListOrganizationAdminAccountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListMembers = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<crossAccountMaxResults>,
  @as("OnlyAssociated") onlyAssociated: option<boolean_>
}
  type response = {
@as("NextToken") nextToken: option<nonEmptyString>,
  @as("Members") members: option<memberList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInvitations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<crossAccountMaxResults>
}
  type response = {
@as("NextToken") nextToken: option<nonEmptyString>,
  @as("Invitations") invitations: option<invitationList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListInvitationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InviteMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: accountIdList
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<resultList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "InviteMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: accountIdList
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<resultList>,
  @as("Members") members: option<memberList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStandards = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Standards") standards: option<standards>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeStandardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeActionTargets = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ActionTargetArns") actionTargetArns: option<arnList>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ActionTargets") actionTargets: actionTargetList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeActionTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: accountIdList
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<resultList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInvitations = {
  type t;
  type request = {
@as("AccountIds") accountIds: accountIdList
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<resultList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteInvitationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeclineInvitations = {
  type t;
  type request = {
@as("AccountIds") accountIds: accountIdList
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<resultList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeclineInvitationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateMembers = {
  type t;
  type request = {
@as("AccountDetails") accountDetails: accountDetailsList
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<resultList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "CreateMembersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInsightResults = {
  type t;
  type request = {
@as("InsightArn") insightArn: nonEmptyString
}
  type response = {
@as("InsightResults") insightResults: insightResults
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetInsightResultsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEnabledStandards = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("StandardsSubscriptionArns") standardsSubscriptionArns: option<standardsSubscriptionArns>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("StandardsSubscriptions") standardsSubscriptions: option<standardsSubscriptions>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetEnabledStandardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeStandardsControls = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("StandardsSubscriptionArn") standardsSubscriptionArn: nonEmptyString
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Controls") controls: option<standardsControls>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeStandardsControlsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProducts = {
  type t;
  type request = {
@as("ProductArn") productArn: option<nonEmptyString>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Products") products: productsList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeProductsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchUpdateFindings = {
  type t;
  type request = {
@as("RelatedFindings") relatedFindings: option<relatedFindingList>,
  @as("Workflow") workflow: option<workflowUpdate>,
  @as("UserDefinedFields") userDefinedFields: option<fieldMap>,
  @as("Types") types: option<typeList>,
  @as("Criticality") criticality: option<ratioScale>,
  @as("Confidence") confidence: option<ratioScale>,
  @as("VerificationState") verificationState: option<verificationState>,
  @as("Severity") severity: option<severityUpdate>,
  @as("Note") note: option<noteUpdate>,
  @as("FindingIdentifiers") findingIdentifiers: awsSecurityFindingIdentifierList
}
  type response = {
@as("UnprocessedFindings") unprocessedFindings: batchUpdateFindingsUnprocessedFindingsList,
  @as("ProcessedFindings") processedFindings: awsSecurityFindingIdentifierList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchUpdateFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchEnableStandards = {
  type t;
  type request = {
@as("StandardsSubscriptionRequests") standardsSubscriptionRequests: standardsSubscriptionRequests
}
  type response = {
@as("StandardsSubscriptions") standardsSubscriptions: option<standardsSubscriptions>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchEnableStandardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDisableStandards = {
  type t;
  type request = {
@as("StandardsSubscriptionArns") standardsSubscriptionArns: standardsSubscriptionArns
}
  type response = {
@as("StandardsSubscriptions") standardsSubscriptions: option<standardsSubscriptions>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchDisableStandardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateInsight = {
  type t;
  type request = {
@as("GroupByAttribute") groupByAttribute: option<nonEmptyString>,
  @as("Filters") filters: option<awsSecurityFindingFilters>,
  @as("Name") name: option<nonEmptyString>,
  @as("InsightArn") insightArn: nonEmptyString
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateInsightCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFindings = {
  type t;
  type request = {
@as("RecordState") recordState: option<recordState>,
  @as("Note") note: option<noteUpdate>,
  @as("Filters") filters: awsSecurityFindingFilters
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInsight = {
  type t;
  type request = {
@as("GroupByAttribute") groupByAttribute: nonEmptyString,
  @as("Filters") filters: awsSecurityFindingFilters,
  @as("Name") name: nonEmptyString
}
  type response = {
@as("InsightArn") insightArn: nonEmptyString
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "CreateInsightCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInsights = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("InsightArns") insightArns: option<arnList>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Insights") insights: insightList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetInsightsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFindings = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("SortCriteria") sortCriteria: option<sortCriteria>,
  @as("Filters") filters: option<awsSecurityFindingFilters>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Findings") findings: awsSecurityFindingList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchImportFindings = {
  type t;
  type request = {
@as("Findings") findings: batchImportFindingsRequestFindingList
}
  type response = {
@as("FailedFindings") failedFindings: option<importFindingsErrorList>,
  @as("SuccessCount") successCount: integer_,
  @as("FailedCount") failedCount: integer_
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchImportFindingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
