type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workflowStatus = [@as("SUPPRESSED") #SUPPRESSED | @as("RESOLVED") #RESOLVED | @as("NOTIFIED") #NOTIFIED | @as("NEW") #NEW]
type workflowState = [@as("RESOLVED") #RESOLVED | @as("DEFERRED") #DEFERRED | @as("IN_PROGRESS") #IN_PROGRESS | @as("ASSIGNED") #ASSIGNED | @as("NEW") #NEW]
type verificationState = [@as("BENIGN_POSITIVE") #BENIGN_POSITIVE | @as("FALSE_POSITIVE") #FALSE_POSITIVE | @as("TRUE_POSITIVE") #TRUE_POSITIVE | @as("UNKNOWN") #UNKNOWN]
type amazonawsTimestamp = Js.Date.t;
type threatIntelIndicatorType = [@as("URL") #URL | @as("PROCESS") #PROCESS | @as("MUTEX") #MUTEX | @as("IPV6_ADDRESS") #IPV6_ADDRESS | @as("IPV4_ADDRESS") #IPV4_ADDRESS | @as("HASH_SHA512") #HASH_SHA512 | @as("HASH_SHA256") #HASH_SHA256 | @as("HASH_SHA1") #HASH_SHA1 | @as("HASH_MD5") #HASH_MD5 | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS | @as("DOMAIN") #DOMAIN]
type threatIntelIndicatorCategory = [@as("KEYLOGGER") #KEYLOGGER | @as("EXPLOIT_SITE") #EXPLOIT_SITE | @as("DROP_SITE") #DROP_SITE | @as("COMMAND_AND_CONTROL") #COMMAND_AND_CONTROL | @as("CARD_STEALER") #CARD_STEALER | @as("BACKDOOR") #BACKDOOR]
type tagValue = string
type tagKey = string
type stringFilterComparison = [@as("PREFIX_NOT_EQUALS") #PREFIX_NOT_EQUALS | @as("NOT_EQUALS") #NOT_EQUALS | @as("PREFIX") #PREFIX | @as("EQUALS") #EQUALS]
type standardsStatus = [@as("INCOMPLETE") #INCOMPLETE | @as("DELETING") #DELETING | @as("FAILED") #FAILED | @as("READY") #READY | @as("PENDING") #PENDING]
type sortOrder = [@as("desc") #desc | @as("asc") #asc]
type sizeBytes = float;
type severityRating = [@as("CRITICAL") #CRITICAL | @as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW]
type severityLabel = [@as("CRITICAL") #CRITICAL | @as("HIGH") #HIGH | @as("MEDIUM") #MEDIUM | @as("LOW") #LOW | @as("INFORMATIONAL") #INFORMATIONAL]
type resourceArn = string
type recordState = [@as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type ratioScale = int;
type partition = [@as("aws-us-gov") #aws_us_gov | @as("aws-cn") #aws_cn | @as("aws") #aws]
type nonEmptyString = string
type nextToken = string
type networkDirection = [@as("OUT") #OUT | @as("IN") #IN]
type maxResults = int;
type mapFilterComparison = [@as("NOT_EQUALS") #NOT_EQUALS | @as("EQUALS") #EQUALS]
type malwareType = [@as("WORM") #WORM | @as("VIRUS") #VIRUS | @as("TROJAN") #TROJAN | @as("ROOTKIT") #ROOTKIT | @as("REMOTE_ACCESS") #REMOTE_ACCESS | @as("RANSOMWARE") #RANSOMWARE | @as("SPYWARE") #SPYWARE | @as("POTENTIALLY_UNWANTED") #POTENTIALLY_UNWANTED | @as("MACRO") #MACRO | @as("KEYLOGGER") #KEYLOGGER | @as("EXPLOIT_KIT") #EXPLOIT_KIT | @as("COIN_MINER") #COIN_MINER | @as("BOTNET_AGENT") #BOTNET_AGENT | @as("BLENDED_THREAT") #BLENDED_THREAT | @as("ADWARE") #ADWARE]
type malwareState = [@as("REMOVED") #REMOVED | @as("REMOVAL_FAILED") #REMOVAL_FAILED | @as("OBSERVED") #OBSERVED]
type amazonawsLong = float;
type integrationType = [@as("UPDATE_FINDINGS_IN_SECURITY_HUB") #UPDATE_FINDINGS_IN_SECURITY_HUB | @as("RECEIVE_FINDINGS_FROM_SECURITY_HUB") #RECEIVE_FINDINGS_FROM_SECURITY_HUB | @as("SEND_FINDINGS_TO_SECURITY_HUB") #SEND_FINDINGS_TO_SECURITY_HUB]
type amazonawsInteger = int;
type amazonawsDouble = float;
type dateRangeUnit = [@as("DAYS") #DAYS]
type crossAccountMaxResults = int;
type controlStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type complianceStatus = [@as("NOT_AVAILABLE") #NOT_AVAILABLE | @as("FAILED") #FAILED | @as("WARNING") #WARNING | @as("PASSED") #PASSED]
type amazonawsBoolean = bool;
type awsLambdaLayerVersionNumber = float;
type awsIamRoleAssumeRolePolicyDocument = string
type awsIamAccessKeyStatus = [@as("Inactive") #Inactive | @as("Active") #Active]
type adminsMaxResults = int;
type adminStatus = [@as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS | @as("ENABLED") #ENABLED]
type accountId = string
type workflowUpdate = {
@as("Status") status: workflowStatus
}
type workflow = {
@as("Status") status: workflowStatus
}
type wafOverrideAction = {
@as("Type") type_: nonEmptyString
}
type wafExcludedRule = {
@as("RuleId") ruleId: nonEmptyString
}
type wafAction = {
@as("Type") type_: nonEmptyString
}
type vulnerabilityVendor = {
@as("VendorUpdatedAt") vendorUpdatedAt: nonEmptyString,
@as("VendorCreatedAt") vendorCreatedAt: nonEmptyString,
@as("VendorSeverity") vendorSeverity: nonEmptyString,
@as("Url") url: nonEmptyString,
@as("Name") name: option<nonEmptyString>
}
type typeList = array<nonEmptyString>
type threatIntelIndicator = {
@as("SourceUrl") sourceUrl: nonEmptyString,
@as("Source") source: nonEmptyString,
@as("LastObservedAt") lastObservedAt: nonEmptyString,
@as("Category") category: threatIntelIndicatorCategory,
@as("Value") value: nonEmptyString,
@as("Type") type_: threatIntelIndicatorType
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type stringList = array<nonEmptyString>
type stringFilter = {
@as("Comparison") comparison: stringFilterComparison,
@as("Value") value: nonEmptyString
}
type statusReason = {
@as("Description") description: nonEmptyString,
@as("ReasonCode") reasonCode: option<nonEmptyString>
}
type standardsSubscriptionArns = array<nonEmptyString>
type standardsInputParameterMap = Js.Dict.t< nonEmptyString>
type standard = {
@as("EnabledByDefault") enabledByDefault: amazonawsBoolean,
@as("Description") description: nonEmptyString,
@as("Name") name: nonEmptyString,
@as("StandardsArn") standardsArn: nonEmptyString
}
type sortCriterion = {
@as("SortOrder") sortOrder: sortOrder,
@as("Field") field: nonEmptyString
}
type softwarePackage = {
@as("Architecture") architecture: nonEmptyString,
@as("Release") release: nonEmptyString,
@as("Epoch") epoch: nonEmptyString,
@as("Version") version: nonEmptyString,
@as("Name") name: nonEmptyString
}
type severityUpdate = {
@as("Label") label: severityLabel,
@as("Product") product: amazonawsDouble,
@as("Normalized") normalized: ratioScale
}
type severity = {
@as("Original") original: nonEmptyString,
@as("Normalized") normalized: amazonawsInteger,
@as("Label") label: severityLabel,
@as("Product") product: amazonawsDouble
}
type securityGroups = array<nonEmptyString>
type result = {
@as("ProcessingResult") processingResult: nonEmptyString,
@as("AccountId") accountId: accountId
}
type relatedRequirementsList = array<nonEmptyString>
type relatedFinding = {
@as("Id") id: option<nonEmptyString>,
@as("ProductArn") productArn: option<nonEmptyString>
}
type record = {
@as("RecordIndex") recordIndex: amazonawsLong,
@as("JsonPath") jsonPath: nonEmptyString
}
type recommendation = {
@as("Url") url: nonEmptyString,
@as("Text") text: nonEmptyString
}
type range = {
@as("StartColumn") startColumn: amazonawsLong,
@as("End") end: amazonawsLong,
@as("Start") start: amazonawsLong
}
type productSubscriptionArnList = array<nonEmptyString>
type processDetails = {
@as("TerminatedAt") terminatedAt: nonEmptyString,
@as("LaunchedAt") launchedAt: nonEmptyString,
@as("ParentPid") parentPid: amazonawsInteger,
@as("Pid") pid: amazonawsInteger,
@as("Path") path: nonEmptyString,
@as("Name") name: nonEmptyString
}
type portRangeFromTo = {
@as("To") to: amazonawsInteger,
@as("From") from: amazonawsInteger
}
type portRange = {
@as("End") end: amazonawsInteger,
@as("Begin") begin: amazonawsInteger
}
type patchSummary = {
@as("Operation") operation: nonEmptyString,
@as("RebootOption") rebootOption: nonEmptyString,
@as("OperationEndTime") operationEndTime: nonEmptyString,
@as("OperationStartTime") operationStartTime: nonEmptyString,
@as("InstalledPendingReboot") installedPendingReboot: amazonawsInteger,
@as("InstalledRejectedCount") installedRejectedCount: amazonawsInteger,
@as("InstalledOtherCount") installedOtherCount: amazonawsInteger,
@as("FailedCount") failedCount: amazonawsInteger,
@as("MissingCount") missingCount: amazonawsInteger,
@as("InstalledCount") installedCount: amazonawsInteger,
@as("Id") id: option<nonEmptyString>
}
type numberFilter = {
@as("Eq") eq: amazonawsDouble,
@as("Lte") lte: amazonawsDouble,
@as("Gte") gte: amazonawsDouble
}
type noteUpdate = {
@as("UpdatedBy") updatedBy: option<nonEmptyString>,
@as("Text") text: option<nonEmptyString>
}
type note = {
@as("UpdatedAt") updatedAt: option<nonEmptyString>,
@as("UpdatedBy") updatedBy: option<nonEmptyString>,
@as("Text") text: option<nonEmptyString>
}
type nonEmptyStringList = array<nonEmptyString>
type member = {
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("InvitedAt") invitedAt: amazonawsTimestamp,
@as("MemberStatus") memberStatus: nonEmptyString,
@as("AdministratorId") administratorId: nonEmptyString,
@as("MasterId") masterId: nonEmptyString,
@as("Email") email: nonEmptyString,
@as("AccountId") accountId: accountId
}
type mapFilter = {
@as("Comparison") comparison: mapFilterComparison,
@as("Value") value: nonEmptyString,
@as("Key") key: nonEmptyString
}
type malware = {
@as("State") state: malwareState,
@as("Path") path: nonEmptyString,
@as("Type") type_: malwareType,
@as("Name") name: option<nonEmptyString>
}
type loadBalancerState = {
@as("Reason") reason: nonEmptyString,
@as("Code") code: nonEmptyString
}
type keywordFilter = {
@as("Value") value: nonEmptyString
}
type ipv6CidrBlockAssociation = {
@as("CidrBlockState") cidrBlockState: nonEmptyString,
@as("Ipv6CidrBlock") ipv6CidrBlock: nonEmptyString,
@as("AssociationId") associationId: nonEmptyString
}
type ipOrganizationDetails = {
@as("Org") org: nonEmptyString,
@as("Isp") isp: nonEmptyString,
@as("AsnOrg") asnOrg: nonEmptyString,
@as("Asn") asn: amazonawsInteger
}
type ipFilter = {
@as("Cidr") cidr: nonEmptyString
}
type invitation = {
@as("MemberStatus") memberStatus: nonEmptyString,
@as("InvitedAt") invitedAt: amazonawsTimestamp,
@as("InvitationId") invitationId: nonEmptyString,
@as("AccountId") accountId: accountId
}
type integrationTypeList = array<integrationType>
type insightResultValue = {
@as("Count") count: option<amazonawsInteger>,
@as("GroupByAttributeValue") groupByAttributeValue: option<nonEmptyString>
}
type importFindingsError = {
@as("ErrorMessage") errorMessage: option<nonEmptyString>,
@as("ErrorCode") errorCode: option<nonEmptyString>,
@as("Id") id: option<nonEmptyString>
}
type icmpTypeCode = {
@as("Type") type_: amazonawsInteger,
@as("Code") code: amazonawsInteger
}
type geoLocation = {
@as("Lat") lat: amazonawsDouble,
@as("Lon") lon: amazonawsDouble
}
type findingProviderSeverity = {
@as("Original") original: nonEmptyString,
@as("Label") label: severityLabel
}
type fieldMap = Js.Dict.t< nonEmptyString>
type dnsRequestAction = {
@as("Blocked") blocked: amazonawsBoolean,
@as("Protocol") protocol: nonEmptyString,
@as("Domain") domain: nonEmptyString
}
type dateRange = {
@as("Unit") unit: dateRangeUnit,
@as("Value") value: amazonawsInteger
}
type cvss = {
@as("BaseVector") baseVector: nonEmptyString,
@as("BaseScore") baseScore: amazonawsDouble,
@as("Version") version: nonEmptyString
}
type country = {
@as("CountryName") countryName: nonEmptyString,
@as("CountryCode") countryCode: nonEmptyString
}
type containerDetails = {
@as("LaunchedAt") launchedAt: nonEmptyString,
@as("ImageName") imageName: nonEmptyString,
@as("ImageId") imageId: nonEmptyString,
@as("Name") name: nonEmptyString
}
type classificationStatus = {
@as("Reason") reason: nonEmptyString,
@as("Code") code: nonEmptyString
}
type city = {
@as("CityName") cityName: nonEmptyString
}
type cidrBlockAssociation = {
@as("CidrBlockState") cidrBlockState: nonEmptyString,
@as("CidrBlock") cidrBlock: nonEmptyString,
@as("AssociationId") associationId: nonEmptyString
}
type cell = {
@as("CellReference") cellReference: nonEmptyString,
@as("ColumnName") columnName: nonEmptyString,
@as("Row") row: amazonawsLong,
@as("Column") column: amazonawsLong
}
type categoryList = array<nonEmptyString>
type awsSsmComplianceSummary = {
@as("PatchGroup") patchGroup: nonEmptyString,
@as("NonCompliantUnspecifiedCount") nonCompliantUnspecifiedCount: amazonawsInteger,
@as("NonCompliantMediumCount") nonCompliantMediumCount: amazonawsInteger,
@as("OverallSeverity") overallSeverity: nonEmptyString,
@as("PatchBaselineId") patchBaselineId: nonEmptyString,
@as("ComplianceType") complianceType: nonEmptyString,
@as("CompliantLowCount") compliantLowCount: amazonawsInteger,
@as("NonCompliantHighCount") nonCompliantHighCount: amazonawsInteger,
@as("NonCompliantLowCount") nonCompliantLowCount: amazonawsInteger,
@as("CompliantUnspecifiedCount") compliantUnspecifiedCount: amazonawsInteger,
@as("NonCompliantInformationalCount") nonCompliantInformationalCount: amazonawsInteger,
@as("CompliantInformationalCount") compliantInformationalCount: amazonawsInteger,
@as("NonCompliantCriticalCount") nonCompliantCriticalCount: amazonawsInteger,
@as("ExecutionType") executionType: nonEmptyString,
@as("CompliantMediumCount") compliantMediumCount: amazonawsInteger,
@as("CompliantHighCount") compliantHighCount: amazonawsInteger,
@as("CompliantCriticalCount") compliantCriticalCount: amazonawsInteger,
@as("Status") status: nonEmptyString
}
type awsSqsQueueDetails = {
@as("DeadLetterTargetArn") deadLetterTargetArn: nonEmptyString,
@as("QueueName") queueName: nonEmptyString,
@as("KmsMasterKeyId") kmsMasterKeyId: nonEmptyString,
@as("KmsDataKeyReusePeriodSeconds") kmsDataKeyReusePeriodSeconds: amazonawsInteger
}
type awsSnsTopicSubscription = {
@as("Protocol") protocol: nonEmptyString,
@as("Endpoint") endpoint: nonEmptyString
}
type awsSecurityFindingIdentifier = {
@as("ProductArn") productArn: option<nonEmptyString>,
@as("Id") id: option<nonEmptyString>
}
type awsSecretsManagerSecretRotationRules = {
@as("AutomaticallyAfterDays") automaticallyAfterDays: amazonawsInteger
}
type awsS3ObjectDetails = {
@as("SSEKMSKeyId") sSEKMSKeyId: nonEmptyString,
@as("ServerSideEncryption") serverSideEncryption: nonEmptyString,
@as("ContentType") contentType: nonEmptyString,
@as("VersionId") versionId: nonEmptyString,
@as("ETag") eTag: nonEmptyString,
@as("LastModified") lastModified: nonEmptyString
}
type awsS3BucketServerSideEncryptionByDefault = {
@as("KMSMasterKeyID") kMSMasterKeyID: nonEmptyString,
@as("SSEAlgorithm") sSEAlgorithm: nonEmptyString
}
type awsS3AccountPublicAccessBlockDetails = {
@as("RestrictPublicBuckets") restrictPublicBuckets: amazonawsBoolean,
@as("IgnorePublicAcls") ignorePublicAcls: amazonawsBoolean,
@as("BlockPublicPolicy") blockPublicPolicy: amazonawsBoolean,
@as("BlockPublicAcls") blockPublicAcls: amazonawsBoolean
}
type awsRedshiftClusterVpcSecurityGroup = {
@as("VpcSecurityGroupId") vpcSecurityGroupId: nonEmptyString,
@as("Status") status: nonEmptyString
}
type awsRedshiftClusterRestoreStatus = {
@as("Status") status: nonEmptyString,
@as("SnapshotSizeInMegaBytes") snapshotSizeInMegaBytes: amazonawsLong,
@as("ProgressInMegaBytes") progressInMegaBytes: amazonawsLong,
@as("EstimatedTimeToCompletionInSeconds") estimatedTimeToCompletionInSeconds: amazonawsLong,
@as("ElapsedTimeInSeconds") elapsedTimeInSeconds: amazonawsLong,
@as("CurrentRestoreRateInMegaBytesPerSecond") currentRestoreRateInMegaBytesPerSecond: amazonawsDouble
}
type awsRedshiftClusterResizeInfo = {
@as("ResizeType") resizeType: nonEmptyString,
@as("AllowCancelResize") allowCancelResize: amazonawsBoolean
}
type awsRedshiftClusterPendingModifiedValues = {
@as("PubliclyAccessible") publiclyAccessible: amazonawsBoolean,
@as("NumberOfNodes") numberOfNodes: amazonawsInteger,
@as("NodeType") nodeType: nonEmptyString,
@as("MasterUserPassword") masterUserPassword: nonEmptyString,
@as("MaintenanceTrackName") maintenanceTrackName: nonEmptyString,
@as("EnhancedVpcRouting") enhancedVpcRouting: amazonawsBoolean,
@as("EncryptionType") encryptionType: nonEmptyString,
@as("ClusterVersion") clusterVersion: nonEmptyString,
@as("ClusterType") clusterType: nonEmptyString,
@as("ClusterIdentifier") clusterIdentifier: nonEmptyString,
@as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: amazonawsInteger
}
type awsRedshiftClusterIamRole = {
@as("IamRoleArn") iamRoleArn: nonEmptyString,
@as("ApplyStatus") applyStatus: nonEmptyString
}
type awsRedshiftClusterHsmStatus = {
@as("Status") status: nonEmptyString,
@as("HsmConfigurationIdentifier") hsmConfigurationIdentifier: nonEmptyString,
@as("HsmClientCertificateIdentifier") hsmClientCertificateIdentifier: nonEmptyString
}
type awsRedshiftClusterEndpoint = {
@as("Port") port: amazonawsInteger,
@as("Address") address: nonEmptyString
}
type awsRedshiftClusterElasticIpStatus = {
@as("Status") status: nonEmptyString,
@as("ElasticIp") elasticIp: nonEmptyString
}
type awsRedshiftClusterDeferredMaintenanceWindow = {
@as("DeferMaintenanceStartTime") deferMaintenanceStartTime: nonEmptyString,
@as("DeferMaintenanceIdentifier") deferMaintenanceIdentifier: nonEmptyString,
@as("DeferMaintenanceEndTime") deferMaintenanceEndTime: nonEmptyString
}
type awsRedshiftClusterClusterSnapshotCopyStatus = {
@as("SnapshotCopyGrantName") snapshotCopyGrantName: nonEmptyString,
@as("RetentionPeriod") retentionPeriod: amazonawsInteger,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: amazonawsInteger,
@as("DestinationRegion") destinationRegion: nonEmptyString
}
type awsRedshiftClusterClusterSecurityGroup = {
@as("Status") status: nonEmptyString,
@as("ClusterSecurityGroupName") clusterSecurityGroupName: nonEmptyString
}
type awsRedshiftClusterClusterParameterStatus = {
@as("ParameterApplyErrorDescription") parameterApplyErrorDescription: nonEmptyString,
@as("ParameterApplyStatus") parameterApplyStatus: nonEmptyString,
@as("ParameterName") parameterName: nonEmptyString
}
type awsRedshiftClusterClusterNode = {
@as("PublicIpAddress") publicIpAddress: nonEmptyString,
@as("PrivateIpAddress") privateIpAddress: nonEmptyString,
@as("NodeRole") nodeRole: nonEmptyString
}
type awsRdsDbSubnetGroupSubnetAvailabilityZone = {
@as("Name") name: nonEmptyString
}
type awsRdsDbStatusInfo = {
@as("Message") message: nonEmptyString,
@as("Status") status: nonEmptyString,
@as("Normal") normal: amazonawsBoolean,
@as("StatusType") statusType: nonEmptyString
}
type awsRdsDbProcessorFeature = {
@as("Value") value: nonEmptyString,
@as("Name") name: nonEmptyString
}
type awsRdsDbParameterGroup = {
@as("ParameterApplyStatus") parameterApplyStatus: nonEmptyString,
@as("DbParameterGroupName") dbParameterGroupName: nonEmptyString
}
type awsRdsDbOptionGroupMembership = {
@as("Status") status: nonEmptyString,
@as("OptionGroupName") optionGroupName: nonEmptyString
}
type awsRdsDbInstanceVpcSecurityGroup = {
@as("Status") status: nonEmptyString,
@as("VpcSecurityGroupId") vpcSecurityGroupId: nonEmptyString
}
type awsRdsDbInstanceEndpoint = {
@as("HostedZoneId") hostedZoneId: nonEmptyString,
@as("Port") port: amazonawsInteger,
@as("Address") address: nonEmptyString
}
type awsRdsDbInstanceAssociatedRole = {
@as("Status") status: nonEmptyString,
@as("FeatureName") featureName: nonEmptyString,
@as("RoleArn") roleArn: nonEmptyString
}
type awsRdsDbDomainMembership = {
@as("IamRoleName") iamRoleName: nonEmptyString,
@as("Fqdn") fqdn: nonEmptyString,
@as("Status") status: nonEmptyString,
@as("Domain") domain: nonEmptyString
}
type awsRdsDbClusterOptionGroupMembership = {
@as("Status") status: nonEmptyString,
@as("DbClusterOptionGroupName") dbClusterOptionGroupName: nonEmptyString
}
type awsRdsDbClusterMember = {
@as("DbClusterParameterGroupStatus") dbClusterParameterGroupStatus: nonEmptyString,
@as("DbInstanceIdentifier") dbInstanceIdentifier: nonEmptyString,
@as("PromotionTier") promotionTier: amazonawsInteger,
@as("IsClusterWriter") isClusterWriter: amazonawsBoolean
}
type awsRdsDbClusterAssociatedRole = {
@as("Status") status: nonEmptyString,
@as("RoleArn") roleArn: nonEmptyString
}
type awsLambdaFunctionTracingConfig = {
@as("Mode") mode: nonEmptyString
}
type awsLambdaFunctionLayer = {
@as("CodeSize") codeSize: amazonawsInteger,
@as("Arn") arn: nonEmptyString
}
type awsLambdaFunctionEnvironmentError = {
@as("Message") message: nonEmptyString,
@as("ErrorCode") errorCode: nonEmptyString
}
type awsLambdaFunctionDeadLetterConfig = {
@as("TargetArn") targetArn: nonEmptyString
}
type awsLambdaFunctionCode = {
@as("ZipFile") zipFile: nonEmptyString,
@as("S3ObjectVersion") s3ObjectVersion: nonEmptyString,
@as("S3Key") s3Key: nonEmptyString,
@as("S3Bucket") s3Bucket: nonEmptyString
}
type awsKmsKeyDetails = {
@as("Description") description: nonEmptyString,
@as("Origin") origin: nonEmptyString,
@as("KeyState") keyState: nonEmptyString,
@as("KeyManager") keyManager: nonEmptyString,
@as("KeyId") keyId: nonEmptyString,
@as("CreationDate") creationDate: amazonawsDouble,
@as("AWSAccountId") aWSAccountId: nonEmptyString
}
type awsIamUserPolicy = {
@as("PolicyName") policyName: nonEmptyString
}
type awsIamRolePolicy = {
@as("PolicyName") policyName: nonEmptyString
}
type awsIamPolicyVersion = {
@as("CreateDate") createDate: nonEmptyString,
@as("IsDefaultVersion") isDefaultVersion: amazonawsBoolean,
@as("VersionId") versionId: nonEmptyString
}
type awsIamPermissionsBoundary = {
@as("PermissionsBoundaryType") permissionsBoundaryType: nonEmptyString,
@as("PermissionsBoundaryArn") permissionsBoundaryArn: nonEmptyString
}
type awsIamInstanceProfileRole = {
@as("RoleName") roleName: nonEmptyString,
@as("RoleId") roleId: nonEmptyString,
@as("Path") path: nonEmptyString,
@as("CreateDate") createDate: nonEmptyString,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: awsIamRoleAssumeRolePolicyDocument,
@as("Arn") arn: nonEmptyString
}
type awsIamGroupPolicy = {
@as("PolicyName") policyName: nonEmptyString
}
type awsIamAttachedManagedPolicy = {
@as("PolicyArn") policyArn: nonEmptyString,
@as("PolicyName") policyName: nonEmptyString
}
type awsIamAccessKeySessionContextSessionIssuer = {
@as("UserName") userName: nonEmptyString,
@as("AccountId") accountId: nonEmptyString,
@as("Arn") arn: nonEmptyString,
@as("PrincipalId") principalId: nonEmptyString,
@as("Type") type_: nonEmptyString
}
type awsIamAccessKeySessionContextAttributes = {
@as("CreationDate") creationDate: nonEmptyString,
@as("MfaAuthenticated") mfaAuthenticated: amazonawsBoolean
}
type awsElbLoadBalancerSourceSecurityGroup = {
@as("OwnerAlias") ownerAlias: nonEmptyString,
@as("GroupName") groupName: nonEmptyString
}
type awsElbLoadBalancerListener = {
@as("SslCertificateId") sslCertificateId: nonEmptyString,
@as("Protocol") protocol: nonEmptyString,
@as("LoadBalancerPort") loadBalancerPort: amazonawsInteger,
@as("InstanceProtocol") instanceProtocol: nonEmptyString,
@as("InstancePort") instancePort: amazonawsInteger
}
type awsElbLoadBalancerInstance = {
@as("InstanceId") instanceId: nonEmptyString
}
type awsElbLoadBalancerHealthCheck = {
@as("UnhealthyThreshold") unhealthyThreshold: amazonawsInteger,
@as("Timeout") timeout: amazonawsInteger,
@as("Target") target: nonEmptyString,
@as("Interval") interval: amazonawsInteger,
@as("HealthyThreshold") healthyThreshold: amazonawsInteger
}
type awsElbLoadBalancerCrossZoneLoadBalancing = {
@as("Enabled") enabled: amazonawsBoolean
}
type awsElbLoadBalancerConnectionSettings = {
@as("IdleTimeout") idleTimeout: amazonawsInteger
}
type awsElbLoadBalancerConnectionDraining = {
@as("Timeout") timeout: amazonawsInteger,
@as("Enabled") enabled: amazonawsBoolean
}
type awsElbLoadBalancerAccessLog = {
@as("S3BucketPrefix") s3BucketPrefix: nonEmptyString,
@as("S3BucketName") s3BucketName: nonEmptyString,
@as("Enabled") enabled: amazonawsBoolean,
@as("EmitInterval") emitInterval: amazonawsInteger
}
type awsElbLbCookieStickinessPolicy = {
@as("PolicyName") policyName: nonEmptyString,
@as("CookieExpirationPeriod") cookieExpirationPeriod: amazonawsLong
}
type awsElbAppCookieStickinessPolicy = {
@as("PolicyName") policyName: nonEmptyString,
@as("CookieName") cookieName: nonEmptyString
}
type awsElasticsearchDomainNodeToNodeEncryptionOptions = {
@as("Enabled") enabled: amazonawsBoolean
}
type awsElasticsearchDomainEncryptionAtRestOptions = {
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("Enabled") enabled: amazonawsBoolean
}
type awsElasticsearchDomainDomainEndpointOptions = {
@as("TLSSecurityPolicy") tLSSecurityPolicy: nonEmptyString,
@as("EnforceHTTPS") enforceHTTPS: amazonawsBoolean
}
type awsElasticBeanstalkEnvironmentTier = {
@as("Version") version: nonEmptyString,
@as("Type") type_: nonEmptyString,
@as("Name") name: nonEmptyString
}
type awsElasticBeanstalkEnvironmentOptionSetting = {
@as("Value") value: nonEmptyString,
@as("ResourceName") resourceName: nonEmptyString,
@as("OptionName") optionName: nonEmptyString,
@as("Namespace") namespace: nonEmptyString
}
type awsElasticBeanstalkEnvironmentEnvironmentLink = {
@as("LinkName") linkName: nonEmptyString,
@as("EnvironmentName") environmentName: nonEmptyString
}
type awsEc2VolumeAttachment = {
@as("Status") status: nonEmptyString,
@as("InstanceId") instanceId: nonEmptyString,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AttachTime") attachTime: nonEmptyString
}
type awsEc2SecurityGroupUserIdGroupPair = {
@as("VpcPeeringConnectionId") vpcPeeringConnectionId: nonEmptyString,
@as("VpcId") vpcId: nonEmptyString,
@as("UserId") userId: nonEmptyString,
@as("PeeringStatus") peeringStatus: nonEmptyString,
@as("GroupName") groupName: nonEmptyString,
@as("GroupId") groupId: nonEmptyString
}
type awsEc2SecurityGroupPrefixListId = {
@as("PrefixListId") prefixListId: nonEmptyString
}
type awsEc2SecurityGroupIpv6Range = {
@as("CidrIpv6") cidrIpv6: nonEmptyString
}
type awsEc2SecurityGroupIpRange = {
@as("CidrIp") cidrIp: nonEmptyString
}
type awsEc2NetworkInterfaceSecurityGroup = {
@as("GroupId") groupId: nonEmptyString,
@as("GroupName") groupName: nonEmptyString
}
type awsEc2NetworkInterfacePrivateIpAddressDetail = {
@as("PrivateDnsName") privateDnsName: nonEmptyString,
@as("PrivateIpAddress") privateIpAddress: nonEmptyString
}
type awsEc2NetworkInterfaceIpV6AddressDetail = {
@as("IpV6Address") ipV6Address: nonEmptyString
}
type awsEc2NetworkInterfaceAttachment = {
@as("Status") status: nonEmptyString,
@as("InstanceOwnerId") instanceOwnerId: nonEmptyString,
@as("InstanceId") instanceId: nonEmptyString,
@as("DeviceIndex") deviceIndex: amazonawsInteger,
@as("DeleteOnTermination") deleteOnTermination: amazonawsBoolean,
@as("AttachmentId") attachmentId: nonEmptyString,
@as("AttachTime") attachTime: nonEmptyString
}
type awsEc2NetworkAclAssociation = {
@as("SubnetId") subnetId: nonEmptyString,
@as("NetworkAclId") networkAclId: nonEmptyString,
@as("NetworkAclAssociationId") networkAclAssociationId: nonEmptyString
}
type awsEc2EipDetails = {
@as("PrivateIpAddress") privateIpAddress: nonEmptyString,
@as("NetworkInterfaceOwnerId") networkInterfaceOwnerId: nonEmptyString,
@as("NetworkInterfaceId") networkInterfaceId: nonEmptyString,
@as("NetworkBorderGroup") networkBorderGroup: nonEmptyString,
@as("PublicIpv4Pool") publicIpv4Pool: nonEmptyString,
@as("Domain") domain: nonEmptyString,
@as("AssociationId") associationId: nonEmptyString,
@as("AllocationId") allocationId: nonEmptyString,
@as("PublicIp") publicIp: nonEmptyString,
@as("InstanceId") instanceId: nonEmptyString
}
type awsDynamoDbTableStreamSpecification = {
@as("StreamViewType") streamViewType: nonEmptyString,
@as("StreamEnabled") streamEnabled: amazonawsBoolean
}
type awsDynamoDbTableSseDescription = {
@as("KmsMasterKeyArn") kmsMasterKeyArn: nonEmptyString,
@as("SseType") sseType: nonEmptyString,
@as("Status") status: nonEmptyString,
@as("InaccessibleEncryptionDateTime") inaccessibleEncryptionDateTime: nonEmptyString
}
type awsDynamoDbTableRestoreSummary = {
@as("RestoreInProgress") restoreInProgress: amazonawsBoolean,
@as("RestoreDateTime") restoreDateTime: nonEmptyString,
@as("SourceTableArn") sourceTableArn: nonEmptyString,
@as("SourceBackupArn") sourceBackupArn: nonEmptyString
}
type awsDynamoDbTableProvisionedThroughputOverride = {
@as("ReadCapacityUnits") readCapacityUnits: amazonawsInteger
}
type awsDynamoDbTableProvisionedThroughput = {
@as("WriteCapacityUnits") writeCapacityUnits: amazonawsInteger,
@as("ReadCapacityUnits") readCapacityUnits: amazonawsInteger,
@as("NumberOfDecreasesToday") numberOfDecreasesToday: amazonawsInteger,
@as("LastIncreaseDateTime") lastIncreaseDateTime: nonEmptyString,
@as("LastDecreaseDateTime") lastDecreaseDateTime: nonEmptyString
}
type awsDynamoDbTableKeySchema = {
@as("KeyType") keyType: nonEmptyString,
@as("AttributeName") attributeName: nonEmptyString
}
type awsDynamoDbTableBillingModeSummary = {
@as("LastUpdateToPayPerRequestDateTime") lastUpdateToPayPerRequestDateTime: nonEmptyString,
@as("BillingMode") billingMode: nonEmptyString
}
type awsDynamoDbTableAttributeDefinition = {
@as("AttributeType") attributeType: nonEmptyString,
@as("AttributeName") attributeName: nonEmptyString
}
type awsCodeBuildProjectSource = {
@as("InsecureSsl") insecureSsl: amazonawsBoolean,
@as("GitCloneDepth") gitCloneDepth: amazonawsInteger,
@as("Location") location: nonEmptyString,
@as("Type") type_: nonEmptyString
}
type awsCodeBuildProjectEnvironmentRegistryCredential = {
@as("CredentialProvider") credentialProvider: nonEmptyString,
@as("Credential") credential: nonEmptyString
}
type awsCloudTrailTrailDetails = {
@as("TrailArn") trailArn: nonEmptyString,
@as("SnsTopicName") snsTopicName: nonEmptyString,
@as("SnsTopicArn") snsTopicArn: nonEmptyString,
@as("S3KeyPrefix") s3KeyPrefix: nonEmptyString,
@as("S3BucketName") s3BucketName: nonEmptyString,
@as("Name") name: nonEmptyString,
@as("LogFileValidationEnabled") logFileValidationEnabled: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("IsOrganizationTrail") isOrganizationTrail: amazonawsBoolean,
@as("IsMultiRegionTrail") isMultiRegionTrail: amazonawsBoolean,
@as("IncludeGlobalServiceEvents") includeGlobalServiceEvents: amazonawsBoolean,
@as("HomeRegion") homeRegion: nonEmptyString,
@as("HasCustomEventSelectors") hasCustomEventSelectors: amazonawsBoolean,
@as("CloudWatchLogsRoleArn") cloudWatchLogsRoleArn: nonEmptyString,
@as("CloudWatchLogsLogGroupArn") cloudWatchLogsLogGroupArn: nonEmptyString
}
type awsCloudFrontDistributionOriginS3OriginConfig = {
@as("OriginAccessIdentity") originAccessIdentity: nonEmptyString
}
type awsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList = array<amazonawsInteger>
type awsCloudFrontDistributionLogging = {
@as("Prefix") prefix: nonEmptyString,
@as("IncludeCookies") includeCookies: amazonawsBoolean,
@as("Enabled") enabled: amazonawsBoolean,
@as("Bucket") bucket: nonEmptyString
}
type awsCloudFrontDistributionDefaultCacheBehavior = {
@as("ViewerProtocolPolicy") viewerProtocolPolicy: nonEmptyString
}
type awsCloudFrontDistributionCacheBehavior = {
@as("ViewerProtocolPolicy") viewerProtocolPolicy: nonEmptyString
}
type awsCertificateManagerCertificateResourceRecord = {
@as("Value") value: nonEmptyString,
@as("Type") type_: nonEmptyString,
@as("Name") name: nonEmptyString
}
type awsCertificateManagerCertificateOptions = {
@as("CertificateTransparencyLoggingPreference") certificateTransparencyLoggingPreference: nonEmptyString
}
type awsCertificateManagerCertificateKeyUsage = {
@as("Name") name: nonEmptyString
}
type awsCertificateManagerCertificateExtendedKeyUsage = {
@as("OId") oId: nonEmptyString,
@as("Name") name: nonEmptyString
}
type awsApiGatewayV2RouteSettings = {
@as("ThrottlingRateLimit") throttlingRateLimit: amazonawsDouble,
@as("ThrottlingBurstLimit") throttlingBurstLimit: amazonawsInteger,
@as("DataTraceEnabled") dataTraceEnabled: amazonawsBoolean,
@as("LoggingLevel") loggingLevel: nonEmptyString,
@as("DetailedMetricsEnabled") detailedMetricsEnabled: amazonawsBoolean
}
type awsApiGatewayMethodSettings = {
@as("ResourcePath") resourcePath: nonEmptyString,
@as("HttpMethod") httpMethod: nonEmptyString,
@as("UnauthorizedCacheControlHeaderStrategy") unauthorizedCacheControlHeaderStrategy: nonEmptyString,
@as("RequireAuthorizationForCacheControl") requireAuthorizationForCacheControl: amazonawsBoolean,
@as("CacheDataEncrypted") cacheDataEncrypted: amazonawsBoolean,
@as("CacheTtlInSeconds") cacheTtlInSeconds: amazonawsInteger,
@as("CachingEnabled") cachingEnabled: amazonawsBoolean,
@as("ThrottlingRateLimit") throttlingRateLimit: amazonawsDouble,
@as("ThrottlingBurstLimit") throttlingBurstLimit: amazonawsInteger,
@as("DataTraceEnabled") dataTraceEnabled: amazonawsBoolean,
@as("LoggingLevel") loggingLevel: nonEmptyString,
@as("MetricsEnabled") metricsEnabled: amazonawsBoolean
}
type awsApiGatewayAccessLogSettings = {
@as("DestinationArn") destinationArn: nonEmptyString,
@as("Format") format: nonEmptyString
}
type awsApiCallActionDomainDetails = {
@as("Domain") domain: nonEmptyString
}
type availabilityZone = {
@as("SubnetId") subnetId: nonEmptyString,
@as("ZoneName") zoneName: nonEmptyString
}
type arnList = array<nonEmptyString>
type adminAccount = {
@as("Status") status: adminStatus,
@as("AccountId") accountId: nonEmptyString
}
type actionTarget = {
@as("Description") description: option<nonEmptyString>,
@as("Name") name: option<nonEmptyString>,
@as("ActionTargetArn") actionTargetArn: option<nonEmptyString>
}
type actionRemotePortDetails = {
@as("PortName") portName: nonEmptyString,
@as("Port") port: amazonawsInteger
}
type actionLocalPortDetails = {
@as("PortName") portName: nonEmptyString,
@as("Port") port: amazonawsInteger
}
type actionLocalIpDetails = {
@as("IpAddressV4") ipAddressV4: nonEmptyString
}
type accountIdList = array<nonEmptyString>
type accountDetails = {
@as("Email") email: nonEmptyString,
@as("AccountId") accountId: option<accountId>
}
type wafExcludedRuleList = array<wafExcludedRule>
type threatIntelIndicatorList = array<threatIntelIndicator>
type stringFilterList = array<stringFilter>
type statusReasonsList = array<statusReason>
type standardsSubscriptionRequest = {
@as("StandardsInput") standardsInput: standardsInputParameterMap,
@as("StandardsArn") standardsArn: option<nonEmptyString>
}
type standardsSubscription = {
@as("StandardsStatus") standardsStatus: option<standardsStatus>,
@as("StandardsInput") standardsInput: option<standardsInputParameterMap>,
@as("StandardsArn") standardsArn: option<nonEmptyString>,
@as("StandardsSubscriptionArn") standardsSubscriptionArn: option<nonEmptyString>
}
type standardsControl = {
@as("RelatedRequirements") relatedRequirements: relatedRequirementsList,
@as("SeverityRating") severityRating: severityRating,
@as("RemediationUrl") remediationUrl: nonEmptyString,
@as("Description") description: nonEmptyString,
@as("Title") title: nonEmptyString,
@as("ControlId") controlId: nonEmptyString,
@as("ControlStatusUpdatedAt") controlStatusUpdatedAt: amazonawsTimestamp,
@as("DisabledReason") disabledReason: nonEmptyString,
@as("ControlStatus") controlStatus: controlStatus,
@as("StandardsControlArn") standardsControlArn: nonEmptyString
}
type standards = array<standard>
type sortCriteria = array<sortCriterion>
type softwarePackageList = array<softwarePackage>
type resultList = array<result>
type remediation = {
@as("Recommendation") recommendation: recommendation
}
type relatedFindingList = array<relatedFinding>
type records = array<record>
type ranges = array<range>
type product = {
@as("ProductSubscriptionResourcePolicy") productSubscriptionResourcePolicy: nonEmptyString,
@as("ActivationUrl") activationUrl: nonEmptyString,
@as("MarketplaceUrl") marketplaceUrl: nonEmptyString,
@as("IntegrationTypes") integrationTypes: integrationTypeList,
@as("Categories") categories: categoryList,
@as("Description") description: nonEmptyString,
@as("CompanyName") companyName: nonEmptyString,
@as("ProductName") productName: nonEmptyString,
@as("ProductArn") productArn: option<nonEmptyString>
}
type portRangeList = array<portRange>
type page = {
@as("OffsetRange") offsetRange: range,
@as("LineRange") lineRange: range,
@as("PageNumber") pageNumber: amazonawsLong
}
type numberFilterList = array<numberFilter>
type network = {
@as("DestinationDomain") destinationDomain: nonEmptyString,
@as("DestinationPort") destinationPort: amazonawsInteger,
@as("DestinationIpV6") destinationIpV6: nonEmptyString,
@as("DestinationIpV4") destinationIpV4: nonEmptyString,
@as("SourceMac") sourceMac: nonEmptyString,
@as("SourceDomain") sourceDomain: nonEmptyString,
@as("SourcePort") sourcePort: amazonawsInteger,
@as("SourceIpV6") sourceIpV6: nonEmptyString,
@as("SourceIpV4") sourceIpV4: nonEmptyString,
@as("OpenPortRange") openPortRange: portRange,
@as("Protocol") protocol: nonEmptyString,
@as("Direction") direction: networkDirection
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
@as("DateRange") dateRange: dateRange,
@as("End") end: nonEmptyString,
@as("Start") start: nonEmptyString
}
type cvssList = array<cvss>
type cidrBlockAssociationList = array<cidrBlockAssociation>
type cells = array<cell>
type batchUpdateFindingsUnprocessedFinding = {
@as("ErrorMessage") errorMessage: option<nonEmptyString>,
@as("ErrorCode") errorCode: option<nonEmptyString>,
@as("FindingIdentifier") findingIdentifier: option<awsSecurityFindingIdentifier>
}
type awsSsmPatch = {
@as("ComplianceSummary") complianceSummary: awsSsmComplianceSummary
}
type awsSnsTopicSubscriptionList = array<awsSnsTopicSubscription>
type awsSecurityFindingIdentifierList = array<awsSecurityFindingIdentifier>
type awsSecretsManagerSecretDetails = {
@as("Description") description: nonEmptyString,
@as("Name") name: nonEmptyString,
@as("Deleted") deleted: amazonawsBoolean,
@as("RotationLambdaArn") rotationLambdaArn: nonEmptyString,
@as("RotationEnabled") rotationEnabled: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("RotationOccurredWithinFrequency") rotationOccurredWithinFrequency: amazonawsBoolean,
@as("RotationRules") rotationRules: awsSecretsManagerSecretRotationRules
}
type awsS3BucketServerSideEncryptionRule = {
@as("ApplyServerSideEncryptionByDefault") applyServerSideEncryptionByDefault: awsS3BucketServerSideEncryptionByDefault
}
type awsRedshiftClusterVpcSecurityGroups = array<awsRedshiftClusterVpcSecurityGroup>
type awsRedshiftClusterIamRoles = array<awsRedshiftClusterIamRole>
type awsRedshiftClusterDeferredMaintenanceWindows = array<awsRedshiftClusterDeferredMaintenanceWindow>
type awsRedshiftClusterClusterSecurityGroups = array<awsRedshiftClusterClusterSecurityGroup>
type awsRedshiftClusterClusterParameterStatusList = array<awsRedshiftClusterClusterParameterStatus>
type awsRedshiftClusterClusterNodes = array<awsRedshiftClusterClusterNode>
type awsRdsPendingCloudWatchLogsExports = {
@as("LogTypesToDisable") logTypesToDisable: stringList,
@as("LogTypesToEnable") logTypesToEnable: stringList
}
type awsRdsDbSubnetGroupSubnet = {
@as("SubnetStatus") subnetStatus: nonEmptyString,
@as("SubnetAvailabilityZone") subnetAvailabilityZone: awsRdsDbSubnetGroupSubnetAvailabilityZone,
@as("SubnetIdentifier") subnetIdentifier: nonEmptyString
}
type awsRdsDbStatusInfos = array<awsRdsDbStatusInfo>
type awsRdsDbProcessorFeatures = array<awsRdsDbProcessorFeature>
type awsRdsDbParameterGroups = array<awsRdsDbParameterGroup>
type awsRdsDbOptionGroupMemberships = array<awsRdsDbOptionGroupMembership>
type awsRdsDbInstanceVpcSecurityGroups = array<awsRdsDbInstanceVpcSecurityGroup>
type awsRdsDbInstanceAssociatedRoles = array<awsRdsDbInstanceAssociatedRole>
type awsRdsDbDomainMemberships = array<awsRdsDbDomainMembership>
type awsRdsDbClusterSnapshotDetails = {
@as("IamDatabaseAuthenticationEnabled") iamDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("DbClusterSnapshotIdentifier") dbClusterSnapshotIdentifier: nonEmptyString,
@as("DbClusterIdentifier") dbClusterIdentifier: nonEmptyString,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("PercentProgress") percentProgress: amazonawsInteger,
@as("SnapshotType") snapshotType: nonEmptyString,
@as("LicenseModel") licenseModel: nonEmptyString,
@as("EngineVersion") engineVersion: nonEmptyString,
@as("MasterUsername") masterUsername: nonEmptyString,
@as("ClusterCreateTime") clusterCreateTime: nonEmptyString,
@as("VpcId") vpcId: nonEmptyString,
@as("Port") port: amazonawsInteger,
@as("Status") status: nonEmptyString,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("Engine") engine: nonEmptyString,
@as("SnapshotCreateTime") snapshotCreateTime: nonEmptyString,
@as("AvailabilityZones") availabilityZones: stringList
}
type awsRdsDbClusterOptionGroupMemberships = array<awsRdsDbClusterOptionGroupMembership>
type awsRdsDbClusterMembers = array<awsRdsDbClusterMember>
type awsRdsDbClusterAssociatedRoles = array<awsRdsDbClusterAssociatedRole>
type awsLambdaLayerVersionDetails = {
@as("CreatedDate") createdDate: nonEmptyString,
@as("CompatibleRuntimes") compatibleRuntimes: nonEmptyStringList,
@as("Version") version: awsLambdaLayerVersionNumber
}
type awsLambdaFunctionVpcConfig = {
@as("VpcId") vpcId: nonEmptyString,
@as("SubnetIds") subnetIds: nonEmptyStringList,
@as("SecurityGroupIds") securityGroupIds: nonEmptyStringList
}
type awsLambdaFunctionLayerList = array<awsLambdaFunctionLayer>
type awsLambdaFunctionEnvironment = {
@as("Error") error: awsLambdaFunctionEnvironmentError,
@as("Variables") variables: fieldMap
}
type awsIamUserPolicyList = array<awsIamUserPolicy>
type awsIamRolePolicyList = array<awsIamRolePolicy>
type awsIamPolicyVersionList = array<awsIamPolicyVersion>
type awsIamInstanceProfileRoles = array<awsIamInstanceProfileRole>
type awsIamGroupPolicyList = array<awsIamGroupPolicy>
type awsIamAttachedManagedPolicyList = array<awsIamAttachedManagedPolicy>
type awsIamAccessKeySessionContext = {
@as("SessionIssuer") sessionIssuer: awsIamAccessKeySessionContextSessionIssuer,
@as("Attributes") attributes: awsIamAccessKeySessionContextAttributes
}
type awsElbLoadBalancerListenerDescription = {
@as("PolicyNames") policyNames: stringList,
@as("Listener") listener: awsElbLoadBalancerListener
}
type awsElbLoadBalancerInstances = array<awsElbLoadBalancerInstance>
type awsElbLoadBalancerBackendServerDescription = {
@as("PolicyNames") policyNames: stringList,
@as("InstancePort") instancePort: amazonawsInteger
}
type awsElbLoadBalancerAttributes = {
@as("CrossZoneLoadBalancing") crossZoneLoadBalancing: awsElbLoadBalancerCrossZoneLoadBalancing,
@as("ConnectionSettings") connectionSettings: awsElbLoadBalancerConnectionSettings,
@as("ConnectionDraining") connectionDraining: awsElbLoadBalancerConnectionDraining,
@as("AccessLog") accessLog: awsElbLoadBalancerAccessLog
}
type awsElbLbCookieStickinessPolicies = array<awsElbLbCookieStickinessPolicy>
type awsElbAppCookieStickinessPolicies = array<awsElbAppCookieStickinessPolicy>
type awsElasticsearchDomainVPCOptions = {
@as("VPCId") vPCId: nonEmptyString,
@as("SubnetIds") subnetIds: nonEmptyStringList,
@as("SecurityGroupIds") securityGroupIds: nonEmptyStringList,
@as("AvailabilityZones") availabilityZones: nonEmptyStringList
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
@as("RuleNumber") ruleNumber: amazonawsInteger,
@as("RuleAction") ruleAction: nonEmptyString,
@as("Protocol") protocol: nonEmptyString,
@as("PortRange") portRange: portRangeFromTo,
@as("Ipv6CidrBlock") ipv6CidrBlock: nonEmptyString,
@as("IcmpTypeCode") icmpTypeCode: icmpTypeCode,
@as("Egress") egress: amazonawsBoolean,
@as("CidrBlock") cidrBlock: nonEmptyString
}
type awsEc2NetworkAclAssociationList = array<awsEc2NetworkAclAssociation>
type awsEc2InstanceDetails = {
@as("LaunchedAt") launchedAt: nonEmptyString,
@as("SubnetId") subnetId: nonEmptyString,
@as("VpcId") vpcId: nonEmptyString,
@as("IamInstanceProfileArn") iamInstanceProfileArn: nonEmptyString,
@as("KeyName") keyName: nonEmptyString,
@as("IpV6Addresses") ipV6Addresses: stringList,
@as("IpV4Addresses") ipV4Addresses: stringList,
@as("ImageId") imageId: nonEmptyString,
@as("Type") type_: nonEmptyString
}
type awsDynamoDbTableReplicaGlobalSecondaryIndex = {
@as("ProvisionedThroughputOverride") provisionedThroughputOverride: awsDynamoDbTableProvisionedThroughputOverride,
@as("IndexName") indexName: nonEmptyString
}
type awsDynamoDbTableProjection = {
@as("ProjectionType") projectionType: nonEmptyString,
@as("NonKeyAttributes") nonKeyAttributes: stringList
}
type awsDynamoDbTableKeySchemaList = array<awsDynamoDbTableKeySchema>
type awsDynamoDbTableAttributeDefinitionList = array<awsDynamoDbTableAttributeDefinition>
type awsCorsConfiguration = {
@as("AllowHeaders") allowHeaders: nonEmptyStringList,
@as("AllowMethods") allowMethods: nonEmptyStringList,
@as("MaxAge") maxAge: amazonawsInteger,
@as("ExposeHeaders") exposeHeaders: nonEmptyStringList,
@as("AllowCredentials") allowCredentials: amazonawsBoolean,
@as("AllowOrigins") allowOrigins: nonEmptyStringList
}
type awsCodeBuildProjectVpcConfig = {
@as("SecurityGroupIds") securityGroupIds: nonEmptyStringList,
@as("Subnets") subnets: nonEmptyStringList,
@as("VpcId") vpcId: nonEmptyString
}
type awsCodeBuildProjectEnvironment = {
@as("Type") type_: nonEmptyString,
@as("RegistryCredential") registryCredential: awsCodeBuildProjectEnvironmentRegistryCredential,
@as("ImagePullCredentialsType") imagePullCredentialsType: nonEmptyString,
@as("Certificate") certificate: nonEmptyString
}
type awsCloudFrontDistributionOriginItem = {
@as("S3OriginConfig") s3OriginConfig: awsCloudFrontDistributionOriginS3OriginConfig,
@as("OriginPath") originPath: nonEmptyString,
@as("Id") id: nonEmptyString,
@as("DomainName") domainName: nonEmptyString
}
type awsCloudFrontDistributionOriginGroupFailoverStatusCodes = {
@as("Quantity") quantity: amazonawsInteger,
@as("Items") items: awsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList
}
type awsCloudFrontDistributionCacheBehaviorsItemList = array<awsCloudFrontDistributionCacheBehavior>
type awsCertificateManagerCertificateKeyUsages = array<awsCertificateManagerCertificateKeyUsage>
type awsCertificateManagerCertificateExtendedKeyUsages = array<awsCertificateManagerCertificateExtendedKeyUsage>
type awsCertificateManagerCertificateDomainValidationOption = {
@as("ValidationStatus") validationStatus: nonEmptyString,
@as("ValidationMethod") validationMethod: nonEmptyString,
@as("ValidationEmails") validationEmails: stringList,
@as("ValidationDomain") validationDomain: nonEmptyString,
@as("ResourceRecord") resourceRecord: awsCertificateManagerCertificateResourceRecord,
@as("DomainName") domainName: nonEmptyString
}
type awsAutoScalingAutoScalingGroupDetails = {
@as("CreatedTime") createdTime: nonEmptyString,
@as("HealthCheckGracePeriod") healthCheckGracePeriod: amazonawsInteger,
@as("HealthCheckType") healthCheckType: nonEmptyString,
@as("LoadBalancerNames") loadBalancerNames: stringList,
@as("LaunchConfigurationName") launchConfigurationName: nonEmptyString
}
type awsApiGatewayV2StageDetails = {
@as("ApiGatewayManaged") apiGatewayManaged: amazonawsBoolean,
@as("LastDeploymentStatusMessage") lastDeploymentStatusMessage: nonEmptyString,
@as("AutoDeploy") autoDeploy: amazonawsBoolean,
@as("AccessLogSettings") accessLogSettings: awsApiGatewayAccessLogSettings,
@as("StageVariables") stageVariables: fieldMap,
@as("StageName") stageName: nonEmptyString,
@as("RouteSettings") routeSettings: awsApiGatewayV2RouteSettings,
@as("LastUpdatedDate") lastUpdatedDate: nonEmptyString,
@as("DeploymentId") deploymentId: nonEmptyString,
@as("DefaultRouteSettings") defaultRouteSettings: awsApiGatewayV2RouteSettings,
@as("Description") description: nonEmptyString,
@as("CreatedDate") createdDate: nonEmptyString
}
type awsApiGatewayMethodSettingsList = array<awsApiGatewayMethodSettings>
type awsApiGatewayEndpointConfiguration = {
@as("Types") types: nonEmptyStringList
}
type awsApiGatewayCanarySettings = {
@as("UseStageCache") useStageCache: amazonawsBoolean,
@as("StageVariableOverrides") stageVariableOverrides: fieldMap,
@as("DeploymentId") deploymentId: nonEmptyString,
@as("PercentTraffic") percentTraffic: amazonawsDouble
}
type availabilityZones = array<availabilityZone>
type adminAccounts = array<adminAccount>
type actionTargetList = array<actionTarget>
type actionRemoteIpDetails = {
@as("GeoLocation") geoLocation: geoLocation,
@as("City") city: city,
@as("Country") country: country,
@as("Organization") organization: ipOrganizationDetails,
@as("IpAddressV4") ipAddressV4: nonEmptyString
}
type accountDetailsList = array<accountDetails>
type vulnerability = {
@as("ReferenceUrls") referenceUrls: stringList,
@as("Vendor") vendor: vulnerabilityVendor,
@as("RelatedVulnerabilities") relatedVulnerabilities: stringList,
@as("Cvss") cvss: cvssList,
@as("VulnerablePackages") vulnerablePackages: softwarePackageList,
@as("Id") id: option<nonEmptyString>
}
type standardsSubscriptions = array<standardsSubscription>
type standardsSubscriptionRequests = array<standardsSubscriptionRequest>
type standardsControls = array<standardsControl>
type productsList = array<product>
type portProbeDetail = {
@as("RemoteIpDetails") remoteIpDetails: actionRemoteIpDetails,
@as("LocalIpDetails") localIpDetails: actionLocalIpDetails,
@as("LocalPortDetails") localPortDetails: actionLocalPortDetails
}
type pages = array<page>
type networkPathComponentDetails = {
@as("PortRanges") portRanges: portRangeList,
@as("Address") address: stringList
}
type networkConnectionAction = {
@as("Blocked") blocked: amazonawsBoolean,
@as("Protocol") protocol: nonEmptyString,
@as("LocalPortDetails") localPortDetails: actionLocalPortDetails,
@as("RemotePortDetails") remotePortDetails: actionRemotePortDetails,
@as("RemoteIpDetails") remoteIpDetails: actionRemoteIpDetails,
@as("ConnectionDirection") connectionDirection: nonEmptyString
}
type insightResults = {
@as("ResultValues") resultValues: option<insightResultValueList>,
@as("GroupByAttribute") groupByAttribute: option<nonEmptyString>,
@as("InsightArn") insightArn: option<nonEmptyString>
}
type findingProviderFields = {
@as("Types") types: typeList,
@as("Severity") severity: findingProviderSeverity,
@as("RelatedFindings") relatedFindings: relatedFindingList,
@as("Criticality") criticality: ratioScale,
@as("Confidence") confidence: ratioScale
}
type dateFilterList = array<dateFilter>
type compliance = {
@as("StatusReasons") statusReasons: statusReasonsList,
@as("RelatedRequirements") relatedRequirements: relatedRequirementsList,
@as("Status") status: complianceStatus
}
type batchUpdateFindingsUnprocessedFindingsList = array<batchUpdateFindingsUnprocessedFinding>
type awsWafWebAclRule = {
@as("Type") type_: nonEmptyString,
@as("RuleId") ruleId: nonEmptyString,
@as("Priority") priority: amazonawsInteger,
@as("OverrideAction") overrideAction: wafOverrideAction,
@as("ExcludedRules") excludedRules: wafExcludedRuleList,
@as("Action") action: wafAction
}
type awsSsmPatchComplianceDetails = {
@as("Patch") patch: awsSsmPatch
}
type awsSnsTopicDetails = {
@as("Owner") owner: nonEmptyString,
@as("TopicName") topicName: nonEmptyString,
@as("Subscription") subscription: awsSnsTopicSubscriptionList,
@as("KmsMasterKeyId") kmsMasterKeyId: nonEmptyString
}
type awsS3BucketServerSideEncryptionRules = array<awsS3BucketServerSideEncryptionRule>
type awsRedshiftClusterClusterParameterGroup = {
@as("ParameterGroupName") parameterGroupName: nonEmptyString,
@as("ParameterApplyStatus") parameterApplyStatus: nonEmptyString,
@as("ClusterParameterStatusList") clusterParameterStatusList: awsRedshiftClusterClusterParameterStatusList
}
type awsRdsDbSubnetGroupSubnets = array<awsRdsDbSubnetGroupSubnet>
type awsRdsDbSnapshotDetails = {
@as("DbiResourceId") dbiResourceId: nonEmptyString,
@as("ProcessorFeatures") processorFeatures: awsRdsDbProcessorFeatures,
@as("IamDatabaseAuthenticationEnabled") iamDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("Timezone") timezone: nonEmptyString,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("TdeCredentialArn") tdeCredentialArn: nonEmptyString,
@as("StorageType") storageType: nonEmptyString,
@as("SourceDbSnapshotIdentifier") sourceDbSnapshotIdentifier: nonEmptyString,
@as("SourceRegion") sourceRegion: nonEmptyString,
@as("PercentProgress") percentProgress: amazonawsInteger,
@as("OptionGroupName") optionGroupName: nonEmptyString,
@as("Iops") iops: amazonawsInteger,
@as("SnapshotType") snapshotType: nonEmptyString,
@as("LicenseModel") licenseModel: nonEmptyString,
@as("EngineVersion") engineVersion: nonEmptyString,
@as("MasterUsername") masterUsername: nonEmptyString,
@as("InstanceCreateTime") instanceCreateTime: nonEmptyString,
@as("VpcId") vpcId: nonEmptyString,
@as("AvailabilityZone") availabilityZone: nonEmptyString,
@as("Port") port: amazonawsInteger,
@as("Status") status: nonEmptyString,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("Engine") engine: nonEmptyString,
@as("SnapshotCreateTime") snapshotCreateTime: nonEmptyString,
@as("DbInstanceIdentifier") dbInstanceIdentifier: nonEmptyString,
@as("DbSnapshotIdentifier") dbSnapshotIdentifier: nonEmptyString
}
type awsRdsDbPendingModifiedValues = {
@as("ProcessorFeatures") processorFeatures: awsRdsDbProcessorFeatures,
@as("PendingCloudWatchLogsExports") pendingCloudWatchLogsExports: awsRdsPendingCloudWatchLogsExports,
@as("DbSubnetGroupName") dbSubnetGroupName: nonEmptyString,
@as("CaCertificateIdentifier") caCertificateIdentifier: nonEmptyString,
@as("StorageType") storageType: nonEmptyString,
@as("DbInstanceIdentifier") dbInstanceIdentifier: nonEmptyString,
@as("Iops") iops: amazonawsInteger,
@as("LicenseModel") licenseModel: nonEmptyString,
@as("EngineVersion") engineVersion: nonEmptyString,
@as("MultiAZ") multiAZ: amazonawsBoolean,
@as("BackupRetentionPeriod") backupRetentionPeriod: amazonawsInteger,
@as("Port") port: amazonawsInteger,
@as("MasterUserPassword") masterUserPassword: nonEmptyString,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("DbInstanceClass") dbInstanceClass: nonEmptyString
}
type awsRdsDbClusterDetails = {
@as("IamDatabaseAuthenticationEnabled") iamDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("DbClusterMembers") dbClusterMembers: awsRdsDbClusterMembers,
@as("DbClusterIdentifier") dbClusterIdentifier: nonEmptyString,
@as("DbClusterOptionGroupMemberships") dbClusterOptionGroupMemberships: awsRdsDbClusterOptionGroupMemberships,
@as("DbSubnetGroup") dbSubnetGroup: nonEmptyString,
@as("DbClusterParameterGroup") dbClusterParameterGroup: nonEmptyString,
@as("DomainMemberships") domainMemberships: awsRdsDbDomainMemberships,
@as("CrossAccountClone") crossAccountClone: amazonawsBoolean,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: amazonawsBoolean,
@as("ActivityStreamStatus") activityStreamStatus: nonEmptyString,
@as("HttpEndpointEnabled") httpEndpointEnabled: amazonawsBoolean,
@as("DeletionProtection") deletionProtection: amazonawsBoolean,
@as("EngineMode") engineMode: nonEmptyString,
@as("EnabledCloudWatchLogsExports") enabledCloudWatchLogsExports: stringList,
@as("ClusterCreateTime") clusterCreateTime: nonEmptyString,
@as("AssociatedRoles") associatedRoles: awsRdsDbClusterAssociatedRoles,
@as("DbClusterResourceId") dbClusterResourceId: nonEmptyString,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("HostedZoneId") hostedZoneId: nonEmptyString,
@as("VpcSecurityGroups") vpcSecurityGroups: awsRdsDbInstanceVpcSecurityGroups,
@as("ReadReplicaIdentifiers") readReplicaIdentifiers: stringList,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: nonEmptyString,
@as("PreferredBackupWindow") preferredBackupWindow: nonEmptyString,
@as("MasterUsername") masterUsername: nonEmptyString,
@as("Port") port: amazonawsInteger,
@as("EngineVersion") engineVersion: nonEmptyString,
@as("Engine") engine: nonEmptyString,
@as("MultiAz") multiAz: amazonawsBoolean,
@as("CustomEndpoints") customEndpoints: stringList,
@as("ReaderEndpoint") readerEndpoint: nonEmptyString,
@as("Endpoint") endpoint: nonEmptyString,
@as("Status") status: nonEmptyString,
@as("DatabaseName") databaseName: nonEmptyString,
@as("BackupRetentionPeriod") backupRetentionPeriod: amazonawsInteger,
@as("AvailabilityZones") availabilityZones: stringList,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger
}
type awsLambdaFunctionDetails = {
@as("Version") version: nonEmptyString,
@as("VpcConfig") vpcConfig: awsLambdaFunctionVpcConfig,
@as("TracingConfig") tracingConfig: awsLambdaFunctionTracingConfig,
@as("Timeout") timeout: amazonawsInteger,
@as("Runtime") runtime: nonEmptyString,
@as("Role") role: nonEmptyString,
@as("RevisionId") revisionId: nonEmptyString,
@as("MemorySize") memorySize: amazonawsInteger,
@as("MasterArn") masterArn: nonEmptyString,
@as("Layers") layers: awsLambdaFunctionLayerList,
@as("LastModified") lastModified: nonEmptyString,
@as("KmsKeyArn") kmsKeyArn: nonEmptyString,
@as("Handler") handler: nonEmptyString,
@as("FunctionName") functionName: nonEmptyString,
@as("Environment") environment: awsLambdaFunctionEnvironment,
@as("DeadLetterConfig") deadLetterConfig: awsLambdaFunctionDeadLetterConfig,
@as("CodeSha256") codeSha256: nonEmptyString,
@as("Code") code: awsLambdaFunctionCode
}
type awsIamUserDetails = {
@as("UserPolicyList") userPolicyList: awsIamUserPolicyList,
@as("UserName") userName: nonEmptyString,
@as("UserId") userId: nonEmptyString,
@as("PermissionsBoundary") permissionsBoundary: awsIamPermissionsBoundary,
@as("Path") path: nonEmptyString,
@as("GroupList") groupList: stringList,
@as("CreateDate") createDate: nonEmptyString,
@as("AttachedManagedPolicies") attachedManagedPolicies: awsIamAttachedManagedPolicyList
}
type awsIamPolicyDetails = {
@as("UpdateDate") updateDate: nonEmptyString,
@as("PolicyVersionList") policyVersionList: awsIamPolicyVersionList,
@as("PolicyName") policyName: nonEmptyString,
@as("PolicyId") policyId: nonEmptyString,
@as("PermissionsBoundaryUsageCount") permissionsBoundaryUsageCount: amazonawsInteger,
@as("Path") path: nonEmptyString,
@as("IsAttachable") isAttachable: amazonawsBoolean,
@as("Description") description: nonEmptyString,
@as("DefaultVersionId") defaultVersionId: nonEmptyString,
@as("CreateDate") createDate: nonEmptyString,
@as("AttachmentCount") attachmentCount: amazonawsInteger
}
type awsIamInstanceProfile = {
@as("Roles") roles: awsIamInstanceProfileRoles,
@as("Path") path: nonEmptyString,
@as("InstanceProfileName") instanceProfileName: nonEmptyString,
@as("InstanceProfileId") instanceProfileId: nonEmptyString,
@as("CreateDate") createDate: nonEmptyString,
@as("Arn") arn: nonEmptyString
}
type awsIamGroupDetails = {
@as("Path") path: nonEmptyString,
@as("GroupPolicyList") groupPolicyList: awsIamGroupPolicyList,
@as("GroupName") groupName: nonEmptyString,
@as("GroupId") groupId: nonEmptyString,
@as("CreateDate") createDate: nonEmptyString,
@as("AttachedManagedPolicies") attachedManagedPolicies: awsIamAttachedManagedPolicyList
}
type awsIamAccessKeyDetails = {
@as("SessionContext") sessionContext: awsIamAccessKeySessionContext,
@as("AccessKeyId") accessKeyId: nonEmptyString,
@as("AccountId") accountId: nonEmptyString,
@as("PrincipalName") principalName: nonEmptyString,
@as("PrincipalType") principalType: nonEmptyString,
@as("PrincipalId") principalId: nonEmptyString,
@as("CreatedAt") createdAt: nonEmptyString,
@as("Status") status: awsIamAccessKeyStatus,
@as("UserName") userName: nonEmptyString
}
type awsElbv2LoadBalancerDetails = {
@as("VpcId") vpcId: nonEmptyString,
@as("Type") type_: nonEmptyString,
@as("State") state: loadBalancerState,
@as("SecurityGroups") securityGroups: securityGroups,
@as("Scheme") scheme: nonEmptyString,
@as("IpAddressType") ipAddressType: nonEmptyString,
@as("DNSName") dNSName: nonEmptyString,
@as("CreatedTime") createdTime: nonEmptyString,
@as("CanonicalHostedZoneId") canonicalHostedZoneId: nonEmptyString,
@as("AvailabilityZones") availabilityZones: availabilityZones
}
type awsElbLoadBalancerPolicies = {
@as("OtherPolicies") otherPolicies: stringList,
@as("LbCookieStickinessPolicies") lbCookieStickinessPolicies: awsElbLbCookieStickinessPolicies,
@as("AppCookieStickinessPolicies") appCookieStickinessPolicies: awsElbAppCookieStickinessPolicies
}
type awsElbLoadBalancerListenerDescriptions = array<awsElbLoadBalancerListenerDescription>
type awsElbLoadBalancerBackendServerDescriptions = array<awsElbLoadBalancerBackendServerDescription>
type awsElasticsearchDomainDetails = {
@as("VPCOptions") vPCOptions: awsElasticsearchDomainVPCOptions,
@as("NodeToNodeEncryptionOptions") nodeToNodeEncryptionOptions: awsElasticsearchDomainNodeToNodeEncryptionOptions,
@as("EncryptionAtRestOptions") encryptionAtRestOptions: awsElasticsearchDomainEncryptionAtRestOptions,
@as("ElasticsearchVersion") elasticsearchVersion: nonEmptyString,
@as("Endpoints") endpoints: fieldMap,
@as("Endpoint") endpoint: nonEmptyString,
@as("DomainName") domainName: nonEmptyString,
@as("DomainId") domainId: nonEmptyString,
@as("DomainEndpointOptions") domainEndpointOptions: awsElasticsearchDomainDomainEndpointOptions,
@as("AccessPolicies") accessPolicies: nonEmptyString
}
type awsElasticBeanstalkEnvironmentDetails = {
@as("VersionLabel") versionLabel: nonEmptyString,
@as("Tier") tier: awsElasticBeanstalkEnvironmentTier,
@as("Status") status: nonEmptyString,
@as("SolutionStackName") solutionStackName: nonEmptyString,
@as("PlatformArn") platformArn: nonEmptyString,
@as("OptionSettings") optionSettings: awsElasticBeanstalkEnvironmentOptionSettings,
@as("EnvironmentName") environmentName: nonEmptyString,
@as("EnvironmentLinks") environmentLinks: awsElasticBeanstalkEnvironmentEnvironmentLinks,
@as("EnvironmentId") environmentId: nonEmptyString,
@as("EnvironmentArn") environmentArn: nonEmptyString,
@as("EndpointUrl") endpointUrl: nonEmptyString,
@as("Description") description: nonEmptyString,
@as("DateUpdated") dateUpdated: nonEmptyString,
@as("DateCreated") dateCreated: nonEmptyString,
@as("Cname") cname: nonEmptyString,
@as("ApplicationName") applicationName: nonEmptyString
}
type awsEc2VpcDetails = {
@as("State") state: nonEmptyString,
@as("DhcpOptionsId") dhcpOptionsId: nonEmptyString,
@as("Ipv6CidrBlockAssociationSet") ipv6CidrBlockAssociationSet: ipv6CidrBlockAssociationList,
@as("CidrBlockAssociationSet") cidrBlockAssociationSet: cidrBlockAssociationList
}
type awsEc2VolumeDetails = {
@as("Attachments") attachments: awsEc2VolumeAttachmentList,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("Status") status: nonEmptyString,
@as("SnapshotId") snapshotId: nonEmptyString,
@as("Size") size: amazonawsInteger,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("CreateTime") createTime: nonEmptyString
}
type awsEc2SubnetDetails = {
@as("Ipv6CidrBlockAssociationSet") ipv6CidrBlockAssociationSet: ipv6CidrBlockAssociationList,
@as("VpcId") vpcId: nonEmptyString,
@as("SubnetId") subnetId: nonEmptyString,
@as("SubnetArn") subnetArn: nonEmptyString,
@as("State") state: nonEmptyString,
@as("OwnerId") ownerId: nonEmptyString,
@as("MapPublicIpOnLaunch") mapPublicIpOnLaunch: amazonawsBoolean,
@as("DefaultForAz") defaultForAz: amazonawsBoolean,
@as("CidrBlock") cidrBlock: nonEmptyString,
@as("AvailableIpAddressCount") availableIpAddressCount: amazonawsInteger,
@as("AvailabilityZoneId") availabilityZoneId: nonEmptyString,
@as("AvailabilityZone") availabilityZone: nonEmptyString,
@as("AssignIpv6AddressOnCreation") assignIpv6AddressOnCreation: amazonawsBoolean
}
type awsEc2SecurityGroupIpPermission = {
@as("PrefixListIds") prefixListIds: awsEc2SecurityGroupPrefixListIdList,
@as("Ipv6Ranges") ipv6Ranges: awsEc2SecurityGroupIpv6RangeList,
@as("IpRanges") ipRanges: awsEc2SecurityGroupIpRangeList,
@as("UserIdGroupPairs") userIdGroupPairs: awsEc2SecurityGroupUserIdGroupPairList,
@as("ToPort") toPort: amazonawsInteger,
@as("FromPort") fromPort: amazonawsInteger,
@as("IpProtocol") ipProtocol: nonEmptyString
}
type awsEc2NetworkInterfaceDetails = {
@as("PublicIp") publicIp: nonEmptyString,
@as("PublicDnsName") publicDnsName: nonEmptyString,
@as("PrivateIpAddresses") privateIpAddresses: awsEc2NetworkInterfacePrivateIpAddressList,
@as("IpV6Addresses") ipV6Addresses: awsEc2NetworkInterfaceIpV6AddressList,
@as("SourceDestCheck") sourceDestCheck: amazonawsBoolean,
@as("SecurityGroups") securityGroups: awsEc2NetworkInterfaceSecurityGroupList,
@as("NetworkInterfaceId") networkInterfaceId: nonEmptyString,
@as("Attachment") attachment: awsEc2NetworkInterfaceAttachment
}
type awsEc2NetworkAclEntryList = array<awsEc2NetworkAclEntry>
type awsDynamoDbTableReplicaGlobalSecondaryIndexList = array<awsDynamoDbTableReplicaGlobalSecondaryIndex>
type awsDynamoDbTableLocalSecondaryIndex = {
@as("Projection") projection: awsDynamoDbTableProjection,
@as("KeySchema") keySchema: awsDynamoDbTableKeySchemaList,
@as("IndexName") indexName: nonEmptyString,
@as("IndexArn") indexArn: nonEmptyString
}
type awsDynamoDbTableGlobalSecondaryIndex = {
@as("ProvisionedThroughput") provisionedThroughput: awsDynamoDbTableProvisionedThroughput,
@as("Projection") projection: awsDynamoDbTableProjection,
@as("KeySchema") keySchema: awsDynamoDbTableKeySchemaList,
@as("ItemCount") itemCount: amazonawsInteger,
@as("IndexStatus") indexStatus: nonEmptyString,
@as("IndexSizeBytes") indexSizeBytes: sizeBytes,
@as("IndexName") indexName: nonEmptyString,
@as("IndexArn") indexArn: nonEmptyString,
@as("Backfilling") backfilling: amazonawsBoolean
}
type awsCodeBuildProjectDetails = {
@as("VpcConfig") vpcConfig: awsCodeBuildProjectVpcConfig,
@as("ServiceRole") serviceRole: nonEmptyString,
@as("Source") source: awsCodeBuildProjectSource,
@as("Name") name: nonEmptyString,
@as("Environment") environment: awsCodeBuildProjectEnvironment,
@as("EncryptionKey") encryptionKey: nonEmptyString
}
type awsCloudFrontDistributionOriginItemList = array<awsCloudFrontDistributionOriginItem>
type awsCloudFrontDistributionOriginGroupFailover = {
@as("StatusCodes") statusCodes: awsCloudFrontDistributionOriginGroupFailoverStatusCodes
}
type awsCloudFrontDistributionCacheBehaviors = {
@as("Items") items: awsCloudFrontDistributionCacheBehaviorsItemList
}
type awsCertificateManagerCertificateDomainValidationOptions = array<awsCertificateManagerCertificateDomainValidationOption>
type awsApiGatewayV2ApiDetails = {
@as("CorsConfiguration") corsConfiguration: awsCorsConfiguration,
@as("RouteSelectionExpression") routeSelectionExpression: nonEmptyString,
@as("ProtocolType") protocolType: nonEmptyString,
@as("Name") name: nonEmptyString,
@as("Version") version: nonEmptyString,
@as("Description") description: nonEmptyString,
@as("CreatedDate") createdDate: nonEmptyString,
@as("ApiKeySelectionExpression") apiKeySelectionExpression: nonEmptyString,
@as("ApiId") apiId: nonEmptyString,
@as("ApiEndpoint") apiEndpoint: nonEmptyString
}
type awsApiGatewayStageDetails = {
@as("WebAclArn") webAclArn: nonEmptyString,
@as("LastUpdatedDate") lastUpdatedDate: nonEmptyString,
@as("CreatedDate") createdDate: nonEmptyString,
@as("TracingEnabled") tracingEnabled: amazonawsBoolean,
@as("CanarySettings") canarySettings: awsApiGatewayCanarySettings,
@as("AccessLogSettings") accessLogSettings: awsApiGatewayAccessLogSettings,
@as("DocumentationVersion") documentationVersion: nonEmptyString,
@as("Variables") variables: fieldMap,
@as("MethodSettings") methodSettings: awsApiGatewayMethodSettingsList,
@as("CacheClusterStatus") cacheClusterStatus: nonEmptyString,
@as("CacheClusterSize") cacheClusterSize: nonEmptyString,
@as("CacheClusterEnabled") cacheClusterEnabled: amazonawsBoolean,
@as("Description") description: nonEmptyString,
@as("StageName") stageName: nonEmptyString,
@as("ClientCertificateId") clientCertificateId: nonEmptyString,
@as("DeploymentId") deploymentId: nonEmptyString
}
type awsApiGatewayRestApiDetails = {
@as("EndpointConfiguration") endpointConfiguration: awsApiGatewayEndpointConfiguration,
@as("ApiKeySource") apiKeySource: nonEmptyString,
@as("MinimumCompressionSize") minimumCompressionSize: amazonawsInteger,
@as("BinaryMediaTypes") binaryMediaTypes: nonEmptyStringList,
@as("Version") version: nonEmptyString,
@as("CreatedDate") createdDate: nonEmptyString,
@as("Description") description: nonEmptyString,
@as("Name") name: nonEmptyString,
@as("Id") id: nonEmptyString
}
type awsApiCallAction = {
@as("LastSeen") lastSeen: nonEmptyString,
@as("FirstSeen") firstSeen: nonEmptyString,
@as("AffectedResources") affectedResources: fieldMap,
@as("DomainDetails") domainDetails: awsApiCallActionDomainDetails,
@as("RemoteIpDetails") remoteIpDetails: actionRemoteIpDetails,
@as("CallerType") callerType: nonEmptyString,
@as("ServiceName") serviceName: nonEmptyString,
@as("Api") api: nonEmptyString
}
type vulnerabilityList = array<vulnerability>
type portProbeDetailList = array<portProbeDetail>
type occurrences = {
@as("Cells") cells: cells,
@as("Records") records: records,
@as("Pages") pages: pages,
@as("OffsetRanges") offsetRanges: ranges,
@as("LineRanges") lineRanges: ranges
}
type networkHeader = {
@as("Source") source: networkPathComponentDetails,
@as("Destination") destination: networkPathComponentDetails,
@as("Protocol") protocol: nonEmptyString
}
type awsWafWebAclRuleList = array<awsWafWebAclRule>
type awsSecurityFindingFilters = {
@as("FindingProviderFieldsTypes") findingProviderFieldsTypes: stringFilterList,
@as("FindingProviderFieldsSeverityOriginal") findingProviderFieldsSeverityOriginal: stringFilterList,
@as("FindingProviderFieldsSeverityLabel") findingProviderFieldsSeverityLabel: stringFilterList,
@as("FindingProviderFieldsRelatedFindingsProductArn") findingProviderFieldsRelatedFindingsProductArn: stringFilterList,
@as("FindingProviderFieldsRelatedFindingsId") findingProviderFieldsRelatedFindingsId: stringFilterList,
@as("FindingProviderFieldsCriticality") findingProviderFieldsCriticality: numberFilterList,
@as("FindingProviderFieldsConfidence") findingProviderFieldsConfidence: numberFilterList,
@as("Keyword") keyword: keywordFilterList,
@as("NoteUpdatedBy") noteUpdatedBy: stringFilterList,
@as("NoteUpdatedAt") noteUpdatedAt: dateFilterList,
@as("NoteText") noteText: stringFilterList,
@as("RelatedFindingsId") relatedFindingsId: stringFilterList,
@as("RelatedFindingsProductArn") relatedFindingsProductArn: stringFilterList,
@as("RecordState") recordState: stringFilterList,
@as("WorkflowStatus") workflowStatus: stringFilterList,
@as("WorkflowState") workflowState: stringFilterList,
@as("VerificationState") verificationState: stringFilterList,
@as("ComplianceStatus") complianceStatus: stringFilterList,
@as("ResourceDetailsOther") resourceDetailsOther: mapFilterList,
@as("ResourceContainerLaunchedAt") resourceContainerLaunchedAt: dateFilterList,
@as("ResourceContainerImageName") resourceContainerImageName: stringFilterList,
@as("ResourceContainerImageId") resourceContainerImageId: stringFilterList,
@as("ResourceContainerName") resourceContainerName: stringFilterList,
@as("ResourceAwsIamAccessKeyCreatedAt") resourceAwsIamAccessKeyCreatedAt: dateFilterList,
@as("ResourceAwsIamAccessKeyStatus") resourceAwsIamAccessKeyStatus: stringFilterList,
@as("ResourceAwsIamAccessKeyUserName") resourceAwsIamAccessKeyUserName: stringFilterList,
@as("ResourceAwsS3BucketOwnerName") resourceAwsS3BucketOwnerName: stringFilterList,
@as("ResourceAwsS3BucketOwnerId") resourceAwsS3BucketOwnerId: stringFilterList,
@as("ResourceAwsEc2InstanceLaunchedAt") resourceAwsEc2InstanceLaunchedAt: dateFilterList,
@as("ResourceAwsEc2InstanceSubnetId") resourceAwsEc2InstanceSubnetId: stringFilterList,
@as("ResourceAwsEc2InstanceVpcId") resourceAwsEc2InstanceVpcId: stringFilterList,
@as("ResourceAwsEc2InstanceIamInstanceProfileArn") resourceAwsEc2InstanceIamInstanceProfileArn: stringFilterList,
@as("ResourceAwsEc2InstanceKeyName") resourceAwsEc2InstanceKeyName: stringFilterList,
@as("ResourceAwsEc2InstanceIpV6Addresses") resourceAwsEc2InstanceIpV6Addresses: ipFilterList,
@as("ResourceAwsEc2InstanceIpV4Addresses") resourceAwsEc2InstanceIpV4Addresses: ipFilterList,
@as("ResourceAwsEc2InstanceImageId") resourceAwsEc2InstanceImageId: stringFilterList,
@as("ResourceAwsEc2InstanceType") resourceAwsEc2InstanceType: stringFilterList,
@as("ResourceTags") resourceTags: mapFilterList,
@as("ResourceRegion") resourceRegion: stringFilterList,
@as("ResourcePartition") resourcePartition: stringFilterList,
@as("ResourceId") resourceId: stringFilterList,
@as("ResourceType") resourceType: stringFilterList,
@as("ThreatIntelIndicatorSourceUrl") threatIntelIndicatorSourceUrl: stringFilterList,
@as("ThreatIntelIndicatorSource") threatIntelIndicatorSource: stringFilterList,
@as("ThreatIntelIndicatorLastObservedAt") threatIntelIndicatorLastObservedAt: dateFilterList,
@as("ThreatIntelIndicatorCategory") threatIntelIndicatorCategory: stringFilterList,
@as("ThreatIntelIndicatorValue") threatIntelIndicatorValue: stringFilterList,
@as("ThreatIntelIndicatorType") threatIntelIndicatorType: stringFilterList,
@as("ProcessTerminatedAt") processTerminatedAt: dateFilterList,
@as("ProcessLaunchedAt") processLaunchedAt: dateFilterList,
@as("ProcessParentPid") processParentPid: numberFilterList,
@as("ProcessPid") processPid: numberFilterList,
@as("ProcessPath") processPath: stringFilterList,
@as("ProcessName") processName: stringFilterList,
@as("NetworkDestinationDomain") networkDestinationDomain: stringFilterList,
@as("NetworkDestinationPort") networkDestinationPort: numberFilterList,
@as("NetworkDestinationIpV6") networkDestinationIpV6: ipFilterList,
@as("NetworkDestinationIpV4") networkDestinationIpV4: ipFilterList,
@as("NetworkSourceMac") networkSourceMac: stringFilterList,
@as("NetworkSourceDomain") networkSourceDomain: stringFilterList,
@as("NetworkSourcePort") networkSourcePort: numberFilterList,
@as("NetworkSourceIpV6") networkSourceIpV6: ipFilterList,
@as("NetworkSourceIpV4") networkSourceIpV4: ipFilterList,
@as("NetworkProtocol") networkProtocol: stringFilterList,
@as("NetworkDirection") networkDirection: stringFilterList,
@as("MalwareState") malwareState: stringFilterList,
@as("MalwarePath") malwarePath: stringFilterList,
@as("MalwareType") malwareType: stringFilterList,
@as("MalwareName") malwareName: stringFilterList,
@as("UserDefinedFields") userDefinedFields: mapFilterList,
@as("CompanyName") companyName: stringFilterList,
@as("ProductName") productName: stringFilterList,
@as("ProductFields") productFields: mapFilterList,
@as("SourceUrl") sourceUrl: stringFilterList,
@as("RecommendationText") recommendationText: stringFilterList,
@as("Description") description: stringFilterList,
@as("Title") title: stringFilterList,
@as("Criticality") criticality: numberFilterList,
@as("Confidence") confidence: numberFilterList,
@as("SeverityLabel") severityLabel: stringFilterList,
@as("SeverityNormalized") severityNormalized: numberFilterList,
@as("SeverityProduct") severityProduct: numberFilterList,
@as("UpdatedAt") updatedAt: dateFilterList,
@as("CreatedAt") createdAt: dateFilterList,
@as("LastObservedAt") lastObservedAt: dateFilterList,
@as("FirstObservedAt") firstObservedAt: dateFilterList,
@as("Type") type_: stringFilterList,
@as("GeneratorId") generatorId: stringFilterList,
@as("Id") id: stringFilterList,
@as("AwsAccountId") awsAccountId: stringFilterList,
@as("ProductArn") productArn: stringFilterList
}
type awsS3BucketServerSideEncryptionConfiguration = {
@as("Rules") rules: awsS3BucketServerSideEncryptionRules
}
type awsRedshiftClusterClusterParameterGroups = array<awsRedshiftClusterClusterParameterGroup>
type awsRdsDbSubnetGroup = {
@as("DbSubnetGroupArn") dbSubnetGroupArn: nonEmptyString,
@as("Subnets") subnets: awsRdsDbSubnetGroupSubnets,
@as("SubnetGroupStatus") subnetGroupStatus: nonEmptyString,
@as("VpcId") vpcId: nonEmptyString,
@as("DbSubnetGroupDescription") dbSubnetGroupDescription: nonEmptyString,
@as("DbSubnetGroupName") dbSubnetGroupName: nonEmptyString
}
type awsIamInstanceProfileList = array<awsIamInstanceProfile>
type awsElbLoadBalancerDetails = {
@as("VpcId") vpcId: nonEmptyString,
@as("Subnets") subnets: stringList,
@as("SourceSecurityGroup") sourceSecurityGroup: awsElbLoadBalancerSourceSecurityGroup,
@as("SecurityGroups") securityGroups: stringList,
@as("Scheme") scheme: nonEmptyString,
@as("Policies") policies: awsElbLoadBalancerPolicies,
@as("LoadBalancerName") loadBalancerName: nonEmptyString,
@as("LoadBalancerAttributes") loadBalancerAttributes: awsElbLoadBalancerAttributes,
@as("ListenerDescriptions") listenerDescriptions: awsElbLoadBalancerListenerDescriptions,
@as("Instances") instances: awsElbLoadBalancerInstances,
@as("HealthCheck") healthCheck: awsElbLoadBalancerHealthCheck,
@as("DnsName") dnsName: nonEmptyString,
@as("CreatedTime") createdTime: nonEmptyString,
@as("CanonicalHostedZoneNameID") canonicalHostedZoneNameID: nonEmptyString,
@as("CanonicalHostedZoneName") canonicalHostedZoneName: nonEmptyString,
@as("BackendServerDescriptions") backendServerDescriptions: awsElbLoadBalancerBackendServerDescriptions,
@as("AvailabilityZones") availabilityZones: stringList
}
type awsEc2SecurityGroupIpPermissionList = array<awsEc2SecurityGroupIpPermission>
type awsEc2NetworkAclDetails = {
@as("Entries") entries: awsEc2NetworkAclEntryList,
@as("Associations") associations: awsEc2NetworkAclAssociationList,
@as("VpcId") vpcId: nonEmptyString,
@as("OwnerId") ownerId: nonEmptyString,
@as("NetworkAclId") networkAclId: nonEmptyString,
@as("IsDefault") isDefault: amazonawsBoolean
}
type awsDynamoDbTableReplica = {
@as("ReplicaStatusDescription") replicaStatusDescription: nonEmptyString,
@as("ReplicaStatus") replicaStatus: nonEmptyString,
@as("RegionName") regionName: nonEmptyString,
@as("ProvisionedThroughputOverride") provisionedThroughputOverride: awsDynamoDbTableProvisionedThroughputOverride,
@as("KmsMasterKeyId") kmsMasterKeyId: nonEmptyString,
@as("GlobalSecondaryIndexes") globalSecondaryIndexes: awsDynamoDbTableReplicaGlobalSecondaryIndexList
}
type awsDynamoDbTableLocalSecondaryIndexList = array<awsDynamoDbTableLocalSecondaryIndex>
type awsDynamoDbTableGlobalSecondaryIndexList = array<awsDynamoDbTableGlobalSecondaryIndex>
type awsCloudFrontDistributionOrigins = {
@as("Items") items: awsCloudFrontDistributionOriginItemList
}
type awsCloudFrontDistributionOriginGroup = {
@as("FailoverCriteria") failoverCriteria: awsCloudFrontDistributionOriginGroupFailover
}
type awsCertificateManagerCertificateRenewalSummary = {
@as("UpdatedAt") updatedAt: nonEmptyString,
@as("RenewalStatusReason") renewalStatusReason: nonEmptyString,
@as("RenewalStatus") renewalStatus: nonEmptyString,
@as("DomainValidationOptions") domainValidationOptions: awsCertificateManagerCertificateDomainValidationOptions
}
type sensitiveDataDetections = {
@as("Occurrences") occurrences: occurrences,
@as("Type") type_: nonEmptyString,
@as("Count") count: amazonawsLong
}
type portProbeAction = {
@as("Blocked") blocked: amazonawsBoolean,
@as("PortProbeDetails") portProbeDetails: portProbeDetailList
}
type networkPathComponent = {
@as("Ingress") ingress: networkHeader,
@as("Egress") egress: networkHeader,
@as("ComponentType") componentType: nonEmptyString,
@as("ComponentId") componentId: nonEmptyString
}
type insight = {
@as("GroupByAttribute") groupByAttribute: option<nonEmptyString>,
@as("Filters") filters: option<awsSecurityFindingFilters>,
@as("Name") name: option<nonEmptyString>,
@as("InsightArn") insightArn: option<nonEmptyString>
}
type customDataIdentifiersDetections = {
@as("Occurrences") occurrences: occurrences,
@as("Name") name: nonEmptyString,
@as("Arn") arn: nonEmptyString,
@as("Count") count: amazonawsLong
}
type awsWafWebAclDetails = {
@as("WebAclId") webAclId: nonEmptyString,
@as("Rules") rules: awsWafWebAclRuleList,
@as("DefaultAction") defaultAction: nonEmptyString,
@as("Name") name: nonEmptyString
}
type awsS3BucketDetails = {
@as("PublicAccessBlockConfiguration") publicAccessBlockConfiguration: awsS3AccountPublicAccessBlockDetails,
@as("ServerSideEncryptionConfiguration") serverSideEncryptionConfiguration: awsS3BucketServerSideEncryptionConfiguration,
@as("CreatedAt") createdAt: nonEmptyString,
@as("OwnerName") ownerName: nonEmptyString,
@as("OwnerId") ownerId: nonEmptyString
}
type awsRedshiftClusterDetails = {
@as("VpcSecurityGroups") vpcSecurityGroups: awsRedshiftClusterVpcSecurityGroups,
@as("VpcId") vpcId: nonEmptyString,
@as("SnapshotScheduleState") snapshotScheduleState: nonEmptyString,
@as("SnapshotScheduleIdentifier") snapshotScheduleIdentifier: nonEmptyString,
@as("RestoreStatus") restoreStatus: awsRedshiftClusterRestoreStatus,
@as("ResizeInfo") resizeInfo: awsRedshiftClusterResizeInfo,
@as("PubliclyAccessible") publiclyAccessible: amazonawsBoolean,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: nonEmptyString,
@as("PendingModifiedValues") pendingModifiedValues: awsRedshiftClusterPendingModifiedValues,
@as("PendingActions") pendingActions: stringList,
@as("NumberOfNodes") numberOfNodes: amazonawsInteger,
@as("NodeType") nodeType: nonEmptyString,
@as("NextMaintenanceWindowStartTime") nextMaintenanceWindowStartTime: nonEmptyString,
@as("MasterUsername") masterUsername: nonEmptyString,
@as("ManualSnapshotRetentionPeriod") manualSnapshotRetentionPeriod: amazonawsInteger,
@as("MaintenanceTrackName") maintenanceTrackName: nonEmptyString,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("IamRoles") iamRoles: awsRedshiftClusterIamRoles,
@as("HsmStatus") hsmStatus: awsRedshiftClusterHsmStatus,
@as("ExpectedNextSnapshotScheduleTimeStatus") expectedNextSnapshotScheduleTimeStatus: nonEmptyString,
@as("ExpectedNextSnapshotScheduleTime") expectedNextSnapshotScheduleTime: nonEmptyString,
@as("EnhancedVpcRouting") enhancedVpcRouting: amazonawsBoolean,
@as("Endpoint") endpoint: awsRedshiftClusterEndpoint,
@as("Encrypted") encrypted: amazonawsBoolean,
@as("ElasticResizeNumberOfNodeOptions") elasticResizeNumberOfNodeOptions: nonEmptyString,
@as("ElasticIpStatus") elasticIpStatus: awsRedshiftClusterElasticIpStatus,
@as("DeferredMaintenanceWindows") deferredMaintenanceWindows: awsRedshiftClusterDeferredMaintenanceWindows,
@as("DBName") dBName: nonEmptyString,
@as("ClusterVersion") clusterVersion: nonEmptyString,
@as("ClusterSubnetGroupName") clusterSubnetGroupName: nonEmptyString,
@as("ClusterStatus") clusterStatus: nonEmptyString,
@as("ClusterSnapshotCopyStatus") clusterSnapshotCopyStatus: awsRedshiftClusterClusterSnapshotCopyStatus,
@as("ClusterSecurityGroups") clusterSecurityGroups: awsRedshiftClusterClusterSecurityGroups,
@as("ClusterRevisionNumber") clusterRevisionNumber: nonEmptyString,
@as("ClusterPublicKey") clusterPublicKey: nonEmptyString,
@as("ClusterParameterGroups") clusterParameterGroups: awsRedshiftClusterClusterParameterGroups,
@as("ClusterNodes") clusterNodes: awsRedshiftClusterClusterNodes,
@as("ClusterIdentifier") clusterIdentifier: nonEmptyString,
@as("ClusterCreateTime") clusterCreateTime: nonEmptyString,
@as("ClusterAvailabilityStatus") clusterAvailabilityStatus: nonEmptyString,
@as("AvailabilityZone") availabilityZone: nonEmptyString,
@as("AutomatedSnapshotRetentionPeriod") automatedSnapshotRetentionPeriod: amazonawsInteger,
@as("AllowVersionUpgrade") allowVersionUpgrade: amazonawsBoolean
}
type awsRdsDbInstanceDetails = {
@as("MaxAllocatedStorage") maxAllocatedStorage: amazonawsInteger,
@as("ListenerEndpoint") listenerEndpoint: awsRdsDbInstanceEndpoint,
@as("ProcessorFeatures") processorFeatures: awsRdsDbProcessorFeatures,
@as("EnabledCloudWatchLogsExports") enabledCloudWatchLogsExports: stringList,
@as("PerformanceInsightsRetentionPeriod") performanceInsightsRetentionPeriod: amazonawsInteger,
@as("PerformanceInsightsKmsKeyId") performanceInsightsKmsKeyId: nonEmptyString,
@as("PerformanceInsightsEnabled") performanceInsightsEnabled: amazonawsBoolean,
@as("Timezone") timezone: nonEmptyString,
@as("PromotionTier") promotionTier: amazonawsInteger,
@as("MonitoringRoleArn") monitoringRoleArn: nonEmptyString,
@as("MonitoringInterval") monitoringInterval: amazonawsInteger,
@as("CopyTagsToSnapshot") copyTagsToSnapshot: amazonawsBoolean,
@as("DomainMemberships") domainMemberships: awsRdsDbDomainMemberships,
@as("StorageType") storageType: nonEmptyString,
@as("StatusInfos") statusInfos: awsRdsDbStatusInfos,
@as("SecondaryAvailabilityZone") secondaryAvailabilityZone: nonEmptyString,
@as("CharacterSetName") characterSetName: nonEmptyString,
@as("OptionGroupMemberships") optionGroupMemberships: awsRdsDbOptionGroupMemberships,
@as("Iops") iops: amazonawsInteger,
@as("LicenseModel") licenseModel: nonEmptyString,
@as("ReadReplicaDBClusterIdentifiers") readReplicaDBClusterIdentifiers: stringList,
@as("ReadReplicaDBInstanceIdentifiers") readReplicaDBInstanceIdentifiers: stringList,
@as("ReadReplicaSourceDBInstanceIdentifier") readReplicaSourceDBInstanceIdentifier: nonEmptyString,
@as("AutoMinorVersionUpgrade") autoMinorVersionUpgrade: amazonawsBoolean,
@as("LatestRestorableTime") latestRestorableTime: nonEmptyString,
@as("PendingModifiedValues") pendingModifiedValues: awsRdsDbPendingModifiedValues,
@as("PreferredMaintenanceWindow") preferredMaintenanceWindow: nonEmptyString,
@as("DbSubnetGroup") dbSubnetGroup: awsRdsDbSubnetGroup,
@as("AvailabilityZone") availabilityZone: nonEmptyString,
@as("DbParameterGroups") dbParameterGroups: awsRdsDbParameterGroups,
@as("DbSecurityGroups") dbSecurityGroups: stringList,
@as("BackupRetentionPeriod") backupRetentionPeriod: amazonawsInteger,
@as("PreferredBackupWindow") preferredBackupWindow: nonEmptyString,
@as("AllocatedStorage") allocatedStorage: amazonawsInteger,
@as("MasterUsername") masterUsername: nonEmptyString,
@as("DbInstanceStatus") dbInstanceStatus: nonEmptyString,
@as("EnhancedMonitoringResourceArn") enhancedMonitoringResourceArn: nonEmptyString,
@as("MultiAz") multiAz: amazonawsBoolean,
@as("VpcSecurityGroups") vpcSecurityGroups: awsRdsDbInstanceVpcSecurityGroups,
@as("TdeCredentialArn") tdeCredentialArn: nonEmptyString,
@as("StorageEncrypted") storageEncrypted: amazonawsBoolean,
@as("PubliclyAccessible") publiclyAccessible: amazonawsBoolean,
@as("KmsKeyId") kmsKeyId: nonEmptyString,
@as("InstanceCreateTime") instanceCreateTime: nonEmptyString,
@as("IAMDatabaseAuthenticationEnabled") iAMDatabaseAuthenticationEnabled: amazonawsBoolean,
@as("EngineVersion") engineVersion: nonEmptyString,
@as("Engine") engine: nonEmptyString,
@as("Endpoint") endpoint: awsRdsDbInstanceEndpoint,
@as("DeletionProtection") deletionProtection: amazonawsBoolean,
@as("DBName") dBName: nonEmptyString,
@as("DbiResourceId") dbiResourceId: nonEmptyString,
@as("DbInstancePort") dbInstancePort: amazonawsInteger,
@as("DBInstanceClass") dBInstanceClass: nonEmptyString,
@as("DBInstanceIdentifier") dBInstanceIdentifier: nonEmptyString,
@as("DBClusterIdentifier") dBClusterIdentifier: nonEmptyString,
@as("CACertificateIdentifier") cACertificateIdentifier: nonEmptyString,
@as("AssociatedRoles") associatedRoles: awsRdsDbInstanceAssociatedRoles
}
type awsIamRoleDetails = {
@as("Path") path: nonEmptyString,
@as("MaxSessionDuration") maxSessionDuration: amazonawsInteger,
@as("RolePolicyList") rolePolicyList: awsIamRolePolicyList,
@as("RoleName") roleName: nonEmptyString,
@as("RoleId") roleId: nonEmptyString,
@as("PermissionsBoundary") permissionsBoundary: awsIamPermissionsBoundary,
@as("InstanceProfileList") instanceProfileList: awsIamInstanceProfileList,
@as("CreateDate") createDate: nonEmptyString,
@as("AttachedManagedPolicies") attachedManagedPolicies: awsIamAttachedManagedPolicyList,
@as("AssumeRolePolicyDocument") assumeRolePolicyDocument: awsIamRoleAssumeRolePolicyDocument
}
type awsEc2SecurityGroupDetails = {
@as("IpPermissionsEgress") ipPermissionsEgress: awsEc2SecurityGroupIpPermissionList,
@as("IpPermissions") ipPermissions: awsEc2SecurityGroupIpPermissionList,
@as("VpcId") vpcId: nonEmptyString,
@as("OwnerId") ownerId: nonEmptyString,
@as("GroupId") groupId: nonEmptyString,
@as("GroupName") groupName: nonEmptyString
}
type awsDynamoDbTableReplicaList = array<awsDynamoDbTableReplica>
type awsCloudFrontDistributionOriginGroupsItemList = array<awsCloudFrontDistributionOriginGroup>
type awsCertificateManagerCertificateDetails = {
@as("Type") type_: nonEmptyString,
@as("SubjectAlternativeNames") subjectAlternativeNames: stringList,
@as("Subject") subject: nonEmptyString,
@as("Status") status: nonEmptyString,
@as("SignatureAlgorithm") signatureAlgorithm: nonEmptyString,
@as("Serial") serial: nonEmptyString,
@as("RenewalSummary") renewalSummary: awsCertificateManagerCertificateRenewalSummary,
@as("RenewalEligibility") renewalEligibility: nonEmptyString,
@as("Options") options: awsCertificateManagerCertificateOptions,
@as("NotBefore") notBefore: nonEmptyString,
@as("NotAfter") notAfter: nonEmptyString,
@as("KeyUsages") keyUsages: awsCertificateManagerCertificateKeyUsages,
@as("KeyAlgorithm") keyAlgorithm: nonEmptyString,
@as("Issuer") issuer: nonEmptyString,
@as("IssuedAt") issuedAt: nonEmptyString,
@as("InUseBy") inUseBy: stringList,
@as("ImportedAt") importedAt: nonEmptyString,
@as("FailureReason") failureReason: nonEmptyString,
@as("ExtendedKeyUsages") extendedKeyUsages: awsCertificateManagerCertificateExtendedKeyUsages,
@as("DomainValidationOptions") domainValidationOptions: awsCertificateManagerCertificateDomainValidationOptions,
@as("DomainName") domainName: nonEmptyString,
@as("CreatedAt") createdAt: nonEmptyString,
@as("CertificateAuthorityArn") certificateAuthorityArn: nonEmptyString
}
type sensitiveDataDetectionsList = array<sensitiveDataDetections>
type networkPathList = array<networkPathComponent>
type insightList = array<insight>
type customDataIdentifiersDetectionsList = array<customDataIdentifiersDetections>
type awsDynamoDbTableDetails = {
@as("TableStatus") tableStatus: nonEmptyString,
@as("TableSizeBytes") tableSizeBytes: sizeBytes,
@as("TableName") tableName: nonEmptyString,
@as("TableId") tableId: nonEmptyString,
@as("StreamSpecification") streamSpecification: awsDynamoDbTableStreamSpecification,
@as("SseDescription") sseDescription: awsDynamoDbTableSseDescription,
@as("RestoreSummary") restoreSummary: awsDynamoDbTableRestoreSummary,
@as("Replicas") replicas: awsDynamoDbTableReplicaList,
@as("ProvisionedThroughput") provisionedThroughput: awsDynamoDbTableProvisionedThroughput,
@as("LocalSecondaryIndexes") localSecondaryIndexes: awsDynamoDbTableLocalSecondaryIndexList,
@as("LatestStreamLabel") latestStreamLabel: nonEmptyString,
@as("LatestStreamArn") latestStreamArn: nonEmptyString,
@as("KeySchema") keySchema: awsDynamoDbTableKeySchemaList,
@as("ItemCount") itemCount: amazonawsInteger,
@as("GlobalTableVersion") globalTableVersion: nonEmptyString,
@as("GlobalSecondaryIndexes") globalSecondaryIndexes: awsDynamoDbTableGlobalSecondaryIndexList,
@as("CreationDateTime") creationDateTime: nonEmptyString,
@as("BillingModeSummary") billingModeSummary: awsDynamoDbTableBillingModeSummary,
@as("AttributeDefinitions") attributeDefinitions: awsDynamoDbTableAttributeDefinitionList
}
type awsCloudFrontDistributionOriginGroups = {
@as("Items") items: awsCloudFrontDistributionOriginGroupsItemList
}
type action = {
@as("PortProbeAction") portProbeAction: portProbeAction,
@as("DnsRequestAction") dnsRequestAction: dnsRequestAction,
@as("AwsApiCallAction") awsApiCallAction: awsApiCallAction,
@as("NetworkConnectionAction") networkConnectionAction: networkConnectionAction,
@as("ActionType") actionType: nonEmptyString
}
type sensitiveDataResult = {
@as("TotalCount") totalCount: amazonawsLong,
@as("Detections") detections: sensitiveDataDetectionsList,
@as("Category") category: nonEmptyString
}
type customDataIdentifiersResult = {
@as("TotalCount") totalCount: amazonawsLong,
@as("Detections") detections: customDataIdentifiersDetectionsList
}
type awsCloudFrontDistributionDetails = {
@as("WebAclId") webAclId: nonEmptyString,
@as("Status") status: nonEmptyString,
@as("OriginGroups") originGroups: awsCloudFrontDistributionOriginGroups,
@as("Origins") origins: awsCloudFrontDistributionOrigins,
@as("Logging") logging: awsCloudFrontDistributionLogging,
@as("LastModifiedTime") lastModifiedTime: nonEmptyString,
@as("ETag") eTag: nonEmptyString,
@as("DomainName") domainName: nonEmptyString,
@as("DefaultRootObject") defaultRootObject: nonEmptyString,
@as("DefaultCacheBehavior") defaultCacheBehavior: awsCloudFrontDistributionDefaultCacheBehavior,
@as("CacheBehaviors") cacheBehaviors: awsCloudFrontDistributionCacheBehaviors
}
type sensitiveDataResultList = array<sensitiveDataResult>
type resourceDetails = {
@as("Other") other: fieldMap,
@as("Container") container: containerDetails,
@as("AwsRdsDbCluster") awsRdsDbCluster: awsRdsDbClusterDetails,
@as("AwsRdsDbClusterSnapshot") awsRdsDbClusterSnapshot: awsRdsDbClusterSnapshotDetails,
@as("AwsRdsDbSnapshot") awsRdsDbSnapshot: awsRdsDbSnapshotDetails,
@as("AwsWafWebAcl") awsWafWebAcl: awsWafWebAclDetails,
@as("AwsSqsQueue") awsSqsQueue: awsSqsQueueDetails,
@as("AwsSnsTopic") awsSnsTopic: awsSnsTopicDetails,
@as("AwsRdsDbInstance") awsRdsDbInstance: awsRdsDbInstanceDetails,
@as("AwsLambdaLayerVersion") awsLambdaLayerVersion: awsLambdaLayerVersionDetails,
@as("AwsLambdaFunction") awsLambdaFunction: awsLambdaFunctionDetails,
@as("AwsKmsKey") awsKmsKey: awsKmsKeyDetails,
@as("AwsIamRole") awsIamRole: awsIamRoleDetails,
@as("AwsIamGroup") awsIamGroup: awsIamGroupDetails,
@as("AwsElbLoadBalancer") awsElbLoadBalancer: awsElbLoadBalancerDetails,
@as("AwsRedshiftCluster") awsRedshiftCluster: awsRedshiftClusterDetails,
@as("AwsCertificateManagerCertificate") awsCertificateManagerCertificate: awsCertificateManagerCertificateDetails,
@as("AwsSsmPatchCompliance") awsSsmPatchCompliance: awsSsmPatchComplianceDetails,
@as("AwsCloudTrailTrail") awsCloudTrailTrail: awsCloudTrailTrailDetails,
@as("AwsApiGatewayRestApi") awsApiGatewayRestApi: awsApiGatewayRestApiDetails,
@as("AwsApiGatewayStage") awsApiGatewayStage: awsApiGatewayStageDetails,
@as("AwsDynamoDbTable") awsDynamoDbTable: awsDynamoDbTableDetails,
@as("AwsApiGatewayV2Api") awsApiGatewayV2Api: awsApiGatewayV2ApiDetails,
@as("AwsApiGatewayV2Stage") awsApiGatewayV2Stage: awsApiGatewayV2StageDetails,
@as("AwsIamPolicy") awsIamPolicy: awsIamPolicyDetails,
@as("AwsIamUser") awsIamUser: awsIamUserDetails,
@as("AwsIamAccessKey") awsIamAccessKey: awsIamAccessKeyDetails,
@as("AwsSecretsManagerSecret") awsSecretsManagerSecret: awsSecretsManagerSecretDetails,
@as("AwsS3Object") awsS3Object: awsS3ObjectDetails,
@as("AwsS3AccountPublicAccessBlock") awsS3AccountPublicAccessBlock: awsS3AccountPublicAccessBlockDetails,
@as("AwsS3Bucket") awsS3Bucket: awsS3BucketDetails,
@as("AwsElasticsearchDomain") awsElasticsearchDomain: awsElasticsearchDomainDetails,
@as("AwsElasticBeanstalkEnvironment") awsElasticBeanstalkEnvironment: awsElasticBeanstalkEnvironmentDetails,
@as("AwsElbv2LoadBalancer") awsElbv2LoadBalancer: awsElbv2LoadBalancerDetails,
@as("AwsEc2NetworkAcl") awsEc2NetworkAcl: awsEc2NetworkAclDetails,
@as("AwsEc2Subnet") awsEc2Subnet: awsEc2SubnetDetails,
@as("AwsEc2Eip") awsEc2Eip: awsEc2EipDetails,
@as("AwsEc2Vpc") awsEc2Vpc: awsEc2VpcDetails,
@as("AwsEc2Volume") awsEc2Volume: awsEc2VolumeDetails,
@as("AwsEc2SecurityGroup") awsEc2SecurityGroup: awsEc2SecurityGroupDetails,
@as("AwsEc2NetworkInterface") awsEc2NetworkInterface: awsEc2NetworkInterfaceDetails,
@as("AwsEc2Instance") awsEc2Instance: awsEc2InstanceDetails,
@as("AwsCloudFrontDistribution") awsCloudFrontDistribution: awsCloudFrontDistributionDetails,
@as("AwsCodeBuildProject") awsCodeBuildProject: awsCodeBuildProjectDetails,
@as("AwsAutoScalingAutoScalingGroup") awsAutoScalingAutoScalingGroup: awsAutoScalingAutoScalingGroupDetails
}
type classificationResult = {
@as("CustomDataIdentifiers") customDataIdentifiers: customDataIdentifiersResult,
@as("SensitiveData") sensitiveData: sensitiveDataResultList,
@as("Status") status: classificationStatus,
@as("AdditionalOccurrences") additionalOccurrences: amazonawsBoolean,
@as("SizeClassified") sizeClassified: amazonawsLong,
@as("MimeType") mimeType: nonEmptyString
}
type dataClassificationDetails = {
@as("Result") result: classificationResult,
@as("DetailedResultsLocation") detailedResultsLocation: nonEmptyString
}
type resource = {
@as("Details") details: resourceDetails,
@as("DataClassification") dataClassification: dataClassificationDetails,
@as("Tags") tags: fieldMap,
@as("ResourceRole") resourceRole: nonEmptyString,
@as("Region") region: nonEmptyString,
@as("Partition") partition: partition,
@as("Id") id: option<nonEmptyString>,
@as("Type") type_: option<nonEmptyString>
}
type resourceList = array<resource>
type awsSecurityFinding = {
@as("FindingProviderFields") findingProviderFields: findingProviderFields,
@as("Action") action: action,
@as("PatchSummary") patchSummary: patchSummary,
@as("Vulnerabilities") vulnerabilities: vulnerabilityList,
@as("Note") note: note,
@as("RelatedFindings") relatedFindings: relatedFindingList,
@as("RecordState") recordState: recordState,
@as("Workflow") workflow: workflow,
@as("WorkflowState") workflowState: workflowState,
@as("VerificationState") verificationState: verificationState,
@as("Compliance") compliance: compliance,
@as("Resources") resources: option<resourceList>,
@as("ThreatIntelIndicators") threatIntelIndicators: threatIntelIndicatorList,
@as("Process") process: processDetails,
@as("NetworkPath") networkPath: networkPathList,
@as("Network") network: network,
@as("Malware") malware: malwareList,
@as("UserDefinedFields") userDefinedFields: fieldMap,
@as("ProductFields") productFields: fieldMap,
@as("SourceUrl") sourceUrl: nonEmptyString,
@as("Remediation") remediation: remediation,
@as("Description") description: option<nonEmptyString>,
@as("Title") title: option<nonEmptyString>,
@as("Criticality") criticality: amazonawsInteger,
@as("Confidence") confidence: amazonawsInteger,
@as("Severity") severity: severity,
@as("UpdatedAt") updatedAt: option<nonEmptyString>,
@as("CreatedAt") createdAt: option<nonEmptyString>,
@as("LastObservedAt") lastObservedAt: nonEmptyString,
@as("FirstObservedAt") firstObservedAt: nonEmptyString,
@as("Types") types: typeList,
@as("AwsAccountId") awsAccountId: option<nonEmptyString>,
@as("GeneratorId") generatorId: option<nonEmptyString>,
@as("ProductArn") productArn: option<nonEmptyString>,
@as("Id") id: option<nonEmptyString>,
@as("SchemaVersion") schemaVersion: option<nonEmptyString>
}
type batchImportFindingsRequestFindingList = array<awsSecurityFinding>
type awsSecurityFindingList = array<awsSecurityFinding>
type clientType;
@module("@aws-sdk/client-securityhub") @new external createClient: unit => clientType = "SecurityHubClient";
module UpdateStandardsControl = {
  type t;
  type request = {
@as("DisabledReason") disabledReason: nonEmptyString,
@as("ControlStatus") controlStatus: controlStatus,
@as("StandardsControlArn") standardsControlArn: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateStandardsControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSecurityHubConfiguration = {
  type t;
  type request = {
@as("AutoEnableControls") autoEnableControls: amazonawsBoolean
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateSecurityHubConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateOrganizationConfiguration = {
  type t;
  type request = {
@as("AutoEnable") autoEnable: option<amazonawsBoolean>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateOrganizationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateActionTarget = {
  type t;
  type request = {
@as("Description") description: nonEmptyString,
@as("Name") name: nonEmptyString,
@as("ActionTargetArn") actionTargetArn: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateActionTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInvitationsCount = {
  type t;
  type request = unit
  type response = {
@as("InvitationsCount") invitationsCount: amazonawsInteger
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetInvitationsCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableOrganizationAdminAccount = {
  type t;
  type request = {
@as("AdminAccountId") adminAccountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "EnableOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableImportFindingsForProduct = {
  type t;
  type request = {
@as("ProductArn") productArn: option<nonEmptyString>
}
  type response = {
@as("ProductSubscriptionArn") productSubscriptionArn: nonEmptyString
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "EnableImportFindingsForProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromMasterAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisassociateFromMasterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromAdministratorAccount = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisassociateFromAdministratorAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableSecurityHub = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisableSecurityHubCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableOrganizationAdminAccount = {
  type t;
  type request = {
@as("AdminAccountId") adminAccountId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisableOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableImportFindingsForProduct = {
  type t;
  type request = {
@as("ProductSubscriptionArn") productSubscriptionArn: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisableImportFindingsForProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfiguration = {
  type t;
  type request = unit
  type response = {
@as("MemberAccountLimitReached") memberAccountLimitReached: amazonawsBoolean,
@as("AutoEnable") autoEnable: amazonawsBoolean
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeOrganizationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHub = {
  type t;
  type request = {
@as("HubArn") hubArn: nonEmptyString
}
  type response = {
@as("AutoEnableControls") autoEnableControls: amazonawsBoolean,
@as("SubscribedAt") subscribedAt: nonEmptyString,
@as("HubArn") hubArn: nonEmptyString
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeHubCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInsight = {
  type t;
  type request = {
@as("InsightArn") insightArn: option<nonEmptyString>
}
  type response = {
@as("InsightArn") insightArn: option<nonEmptyString>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteInsightCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteActionTarget = {
  type t;
  type request = {
@as("ActionTargetArn") actionTargetArn: option<nonEmptyString>
}
  type response = {
@as("ActionTargetArn") actionTargetArn: option<nonEmptyString>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteActionTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateActionTarget = {
  type t;
  type request = {
@as("Id") id: option<nonEmptyString>,
@as("Description") description: option<nonEmptyString>,
@as("Name") name: option<nonEmptyString>
}
  type response = {
@as("ActionTargetArn") actionTargetArn: option<nonEmptyString>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "CreateActionTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptInvitation = {
  type t;
  type request = {
@as("InvitationId") invitationId: option<nonEmptyString>,
@as("MasterId") masterId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "AcceptInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptAdministratorInvitation = {
  type t;
  type request = {
@as("InvitationId") invitationId: option<nonEmptyString>,
@as("AdministratorId") administratorId: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "AcceptAdministratorInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEnabledProductsForImport = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ProductSubscriptions") productSubscriptions: productSubscriptionArnList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListEnabledProductsForImportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMasterAccount = {
  type t;
  type request = unit
  type response = {
@as("Master") master: invitation
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetMasterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAdministratorAccount = {
  type t;
  type request = unit
  type response = {
@as("Administrator") administrator: invitation
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetAdministratorAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableSecurityHub = {
  type t;
  type request = {
@as("EnableDefaultStandards") enableDefaultStandards: amazonawsBoolean,
@as("Tags") tags: tagMap
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "EnableSecurityHubCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DisassociateMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationAdminAccounts = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: adminsMaxResults
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AdminAccounts") adminAccounts: adminAccounts
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListOrganizationAdminAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMembers = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: crossAccountMaxResults,
@as("OnlyAssociated") onlyAssociated: amazonawsBoolean
}
  type response = {
@as("NextToken") nextToken: nonEmptyString,
@as("Members") members: memberList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInvitations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: crossAccountMaxResults
}
  type response = {
@as("NextToken") nextToken: nonEmptyString,
@as("Invitations") invitations: invitationList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "ListInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InviteMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: resultList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "InviteMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: resultList,
@as("Members") members: memberList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStandards = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Standards") standards: standards
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeStandardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeActionTargets = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("ActionTargetArns") actionTargetArns: arnList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ActionTargets") actionTargets: option<actionTargetList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeActionTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: resultList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInvitations = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: resultList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeleteInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeclineInvitations = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIdList>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: resultList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DeclineInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMembers = {
  type t;
  type request = {
@as("AccountDetails") accountDetails: option<accountDetailsList>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: resultList
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "CreateMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsightResults = {
  type t;
  type request = {
@as("InsightArn") insightArn: option<nonEmptyString>
}
  type response = {
@as("InsightResults") insightResults: option<insightResults>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetInsightResultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEnabledStandards = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("StandardsSubscriptionArns") standardsSubscriptionArns: standardsSubscriptionArns
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("StandardsSubscriptions") standardsSubscriptions: standardsSubscriptions
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetEnabledStandardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeStandardsControls = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("StandardsSubscriptionArn") standardsSubscriptionArn: option<nonEmptyString>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Controls") controls: standardsControls
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeStandardsControlsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProducts = {
  type t;
  type request = {
@as("ProductArn") productArn: nonEmptyString,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Products") products: option<productsList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "DescribeProductsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchUpdateFindings = {
  type t;
  type request = {
@as("RelatedFindings") relatedFindings: relatedFindingList,
@as("Workflow") workflow: workflowUpdate,
@as("UserDefinedFields") userDefinedFields: fieldMap,
@as("Types") types: typeList,
@as("Criticality") criticality: ratioScale,
@as("Confidence") confidence: ratioScale,
@as("VerificationState") verificationState: verificationState,
@as("Severity") severity: severityUpdate,
@as("Note") note: noteUpdate,
@as("FindingIdentifiers") findingIdentifiers: option<awsSecurityFindingIdentifierList>
}
  type response = {
@as("UnprocessedFindings") unprocessedFindings: option<batchUpdateFindingsUnprocessedFindingsList>,
@as("ProcessedFindings") processedFindings: option<awsSecurityFindingIdentifierList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchUpdateFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchEnableStandards = {
  type t;
  type request = {
@as("StandardsSubscriptionRequests") standardsSubscriptionRequests: option<standardsSubscriptionRequests>
}
  type response = {
@as("StandardsSubscriptions") standardsSubscriptions: standardsSubscriptions
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchEnableStandardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisableStandards = {
  type t;
  type request = {
@as("StandardsSubscriptionArns") standardsSubscriptionArns: option<standardsSubscriptionArns>
}
  type response = {
@as("StandardsSubscriptions") standardsSubscriptions: standardsSubscriptions
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchDisableStandardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInsight = {
  type t;
  type request = {
@as("GroupByAttribute") groupByAttribute: nonEmptyString,
@as("Filters") filters: awsSecurityFindingFilters,
@as("Name") name: nonEmptyString,
@as("InsightArn") insightArn: option<nonEmptyString>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateInsightCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFindings = {
  type t;
  type request = {
@as("RecordState") recordState: recordState,
@as("Note") note: noteUpdate,
@as("Filters") filters: option<awsSecurityFindingFilters>
}
  type response = unit
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "UpdateFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInsight = {
  type t;
  type request = {
@as("GroupByAttribute") groupByAttribute: option<nonEmptyString>,
@as("Filters") filters: option<awsSecurityFindingFilters>,
@as("Name") name: option<nonEmptyString>
}
  type response = {
@as("InsightArn") insightArn: option<nonEmptyString>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "CreateInsightCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInsights = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("InsightArns") insightArns: arnList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Insights") insights: option<insightList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetInsightsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFindings = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("SortCriteria") sortCriteria: sortCriteria,
@as("Filters") filters: awsSecurityFindingFilters
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Findings") findings: option<awsSecurityFindingList>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "GetFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchImportFindings = {
  type t;
  type request = {
@as("Findings") findings: option<batchImportFindingsRequestFindingList>
}
  type response = {
@as("FailedFindings") failedFindings: importFindingsErrorList,
@as("SuccessCount") successCount: option<amazonawsInteger>,
@as("FailedCount") failedCount: option<amazonawsInteger>
}
  @module("@aws-sdk/client-securityhub") @new external new_: (request) => t = "BatchImportFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
