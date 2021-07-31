type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type timestamp_ = Js.Date.t;
type version = string
type value = string
type templateS3Uri = string
type templateBody = string
type tagValue = string
type tagKey = string
type supplementaryConfigurationValue = string
type supplementaryConfigurationName = string
type stringWithCharLimit768 = string
type stringWithCharLimit64 = string
type stringWithCharLimit256Min0 = string
type stringWithCharLimit256 = string
type stringWithCharLimit2048 = string
type stringWithCharLimit128 = string
type stringWithCharLimit1024 = string
type string_ = string
type stackArn = string
type schemaVersionId = string
type ruleLimit = int
type retentionPeriodInDays = int
type retentionConfigurationName = string
type resourceValueType = [@as("RESOURCE_ID") #RESOURCEID]
type resourceTypeString = string
type resourceType = [@as("AWS::SSM::FileData") #AWSSSMFileData | @as("AWS::SNS::Topic") #AWSSNSTopic | @as("AWS::SecretsManager::Secret") #AWSSecretsManagerSecret | @as("AWS::QLDB::Ledger") #AWSQLDBLedger | @as("AWS::KMS::Key") #AWSKMSKey | @as("AWS::SQS::Queue") #AWSSQSQueue | @as("AWS::ServiceCatalog::Portfolio") #AWSServiceCatalogPortfolio | @as("AWS::ServiceCatalog::CloudFormationProduct") #AWSServiceCatalogCloudFormationProduct | @as("AWS::ServiceCatalog::CloudFormationProvisionedProduct") #AWSServiceCatalogCloudFormationProvisionedProduct | @as("AWS::CodePipeline::Pipeline") #AWSCodePipelinePipeline | @as("AWS::ApiGatewayV2::Api") #AWSApiGatewayV2Api | @as("AWS::ApiGatewayV2::Stage") #AWSApiGatewayV2Stage | @as("AWS::ApiGateway::RestApi") #AWSApiGatewayRestApi | @as("AWS::ApiGateway::Stage") #AWSApiGatewayStage | @as("AWS::Config::ResourceCompliance") #AWSConfigResourceCompliance | @as("AWS::Config::ConformancePackCompliance") #AWSConfigConformancePackCompliance | @as("AWS::ShieldRegional::Protection") #AWSShieldRegionalProtection | @as("AWS::Shield::Protection") #AWSShieldProtection | @as("AWS::SSM::PatchCompliance") #AWSSSMPatchCompliance | @as("AWS::SSM::AssociationCompliance") #AWSSSMAssociationCompliance | @as("AWS::XRay::EncryptionConfig") #AWSXRayEncryptionConfig | @as("AWS::WAFv2::ManagedRuleSet") #AWSWAFv2ManagedRuleSet | @as("AWS::WAFv2::RegexPatternSet") #AWSWAFv2RegexPatternSet | @as("AWS::WAFv2::IPSet") #AWSWAFv2IPSet | @as("AWS::WAFv2::RuleGroup") #AWSWAFv2RuleGroup | @as("AWS::WAFv2::WebACL") #AWSWAFv2WebACL | @as("AWS::ElasticBeanstalk::Environment") #AWSElasticBeanstalkEnvironment | @as("AWS::ElasticBeanstalk::ApplicationVersion") #AWSElasticBeanstalkApplicationVersion | @as("AWS::ElasticBeanstalk::Application") #AWSElasticBeanstalkApplication | @as("AWS::NetworkFirewall::RuleGroup") #AWSNetworkFirewallRuleGroup | @as("AWS::NetworkFirewall::FirewallPolicy") #AWSNetworkFirewallFirewallPolicy | @as("AWS::NetworkFirewall::Firewall") #AWSNetworkFirewallFirewall | @as("AWS::Lambda::Function") #AWSLambdaFunction | @as("AWS::CloudFront::StreamingDistribution") #AWSCloudFrontStreamingDistribution | @as("AWS::CloudFront::Distribution") #AWSCloudFrontDistribution | @as("AWS::WAFRegional::WebACL") #AWSWAFRegionalWebACL | @as("AWS::WAFRegional::RuleGroup") #AWSWAFRegionalRuleGroup | @as("AWS::WAFRegional::Rule") #AWSWAFRegionalRule | @as("AWS::WAFRegional::RateBasedRule") #AWSWAFRegionalRateBasedRule | @as("AWS::WAF::WebACL") #AWSWAFWebACL | @as("AWS::WAF::RuleGroup") #AWSWAFRuleGroup | @as("AWS::WAF::Rule") #AWSWAFRule | @as("AWS::WAF::RateBasedRule") #AWSWAFRateBasedRule | @as("AWS::CodeBuild::Project") #AWSCodeBuildProject | @as("AWS::DynamoDB::Table") #AWSDynamoDBTable | @as("AWS::AutoScaling::ScheduledAction") #AWSAutoScalingScheduledAction | @as("AWS::AutoScaling::ScalingPolicy") #AWSAutoScalingScalingPolicy | @as("AWS::AutoScaling::LaunchConfiguration") #AWSAutoScalingLaunchConfiguration | @as("AWS::AutoScaling::AutoScalingGroup") #AWSAutoScalingAutoScalingGroup | @as("AWS::ElasticLoadBalancing::LoadBalancer") #AWSElasticLoadBalancingLoadBalancer | @as("AWS::CloudFormation::Stack") #AWSCloudFormationStack | @as("AWS::CloudWatch::Alarm") #AWSCloudWatchAlarm | @as("AWS::SSM::ManagedInstanceInventory") #AWSSSMManagedInstanceInventory | @as("AWS::Redshift::EventSubscription") #AWSRedshiftEventSubscription | @as("AWS::Redshift::ClusterSubnetGroup") #AWSRedshiftClusterSubnetGroup | @as("AWS::Redshift::ClusterSecurityGroup") #AWSRedshiftClusterSecurityGroup | @as("AWS::Redshift::ClusterParameterGroup") #AWSRedshiftClusterParameterGroup | @as("AWS::Redshift::ClusterSnapshot") #AWSRedshiftClusterSnapshot | @as("AWS::Redshift::Cluster") #AWSRedshiftCluster | @as("AWS::S3::AccountPublicAccessBlock") #AWSS3AccountPublicAccessBlock | @as("AWS::S3::Bucket") #AWSS3Bucket | @as("AWS::RDS::EventSubscription") #AWSRDSEventSubscription | @as("AWS::RDS::DBClusterSnapshot") #AWSRDSDBClusterSnapshot | @as("AWS::RDS::DBCluster") #AWSRDSDBCluster | @as("AWS::RDS::DBSnapshot") #AWSRDSDBSnapshot | @as("AWS::RDS::DBSecurityGroup") #AWSRDSDBSecurityGroup | @as("AWS::RDS::DBSubnetGroup") #AWSRDSDBSubnetGroup | @as("AWS::RDS::DBInstance") #AWSRDSDBInstance | @as("AWS::ACM::Certificate") #AWSACMCertificate | @as("AWS::ElasticLoadBalancingV2::LoadBalancer") #AWSElasticLoadBalancingV2LoadBalancer | @as("AWS::IAM::User") #AWSIAMUser | @as("AWS::IAM::Role") #AWSIAMRole | @as("AWS::IAM::Policy") #AWSIAMPolicy | @as("AWS::IAM::Group") #AWSIAMGroup | @as("AWS::Elasticsearch::Domain") #AWSElasticsearchDomain | @as("AWS::EC2::VPCPeeringConnection") #AWSEC2VPCPeeringConnection | @as("AWS::EC2::FlowLog") #AWSEC2FlowLog | @as("AWS::EC2::VPCEndpointService") #AWSEC2VPCEndpointService | @as("AWS::EC2::VPCEndpoint") #AWSEC2VPCEndpoint | @as("AWS::EC2::EgressOnlyInternetGateway") #AWSEC2EgressOnlyInternetGateway | @as("AWS::EC2::NatGateway") #AWSEC2NatGateway | @as("AWS::EC2::RegisteredHAInstance") #AWSEC2RegisteredHAInstance | @as("AWS::EC2::VPNGateway") #AWSEC2VPNGateway | @as("AWS::EC2::VPNConnection") #AWSEC2VPNConnection | @as("AWS::EC2::VPC") #AWSEC2VPC | @as("AWS::EC2::Volume") #AWSEC2Volume | @as("AWS::CloudTrail::Trail") #AWSCloudTrailTrail | @as("AWS::EC2::Subnet") #AWSEC2Subnet | @as("AWS::EC2::SecurityGroup") #AWSEC2SecurityGroup | @as("AWS::EC2::RouteTable") #AWSEC2RouteTable | @as("AWS::EC2::NetworkInterface") #AWSEC2NetworkInterface | @as("AWS::EC2::NetworkAcl") #AWSEC2NetworkAcl | @as("AWS::EC2::InternetGateway") #AWSEC2InternetGateway | @as("AWS::EC2::Instance") #AWSEC2Instance | @as("AWS::EC2::Host") #AWSEC2Host | @as("AWS::EC2::EIP") #AWSEC2EIP | @as("AWS::EC2::CustomerGateway") #AWSEC2CustomerGateway]
type resourceName = string
type resourceId = string
type resourceDeletionTime = Js.Date.t;
type resourceCreationTime = Js.Date.t;
type resourceCountGroupKey = [@as("AWS_REGION") #AWSREGION | @as("ACCOUNT_ID") #ACCOUNTID | @as("RESOURCE_TYPE") #RESOURCETYPE]
type remediationTargetType = [@as("SSM_DOCUMENT") #SSMDOCUMENT]
type remediationExecutionStepState = [@as("FAILED") #FAILED | @as("PENDING") #PENDING | @as("SUCCEEDED") #SUCCEEDED]
type remediationExecutionState = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #INPROGRESS | @as("QUEUED") #QUEUED]
type relationshipName = string
type relatedEvent = string
type recorderStatus = [@as("Failure") #Failure | @as("Success") #Success | @as("Pending") #Pending]
type recorderName = string
type queryName = string
type queryId = string
type queryExpression = string
type queryDescription = string
type queryArn = string
type percentage = int
type parameterValue = string
type parameterName = string
type pageSizeLimit = int
type owner = [@as("AWS") #AWS | @as("CUSTOM_LAMBDA") #CUSTOMLAMBDA]
type organizationRuleStatus = [@as("UPDATE_FAILED") #UPDATEFAILED | @as("UPDATE_IN_PROGRESS") #UPDATEINPROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATESUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("DELETE_FAILED") #DELETEFAILED | @as("DELETE_SUCCESSFUL") #DELETESUCCESSFUL | @as("CREATE_FAILED") #CREATEFAILED | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS | @as("CREATE_SUCCESSFUL") #CREATESUCCESSFUL]
type organizationResourceStatus = [@as("UPDATE_FAILED") #UPDATEFAILED | @as("UPDATE_IN_PROGRESS") #UPDATEINPROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATESUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("DELETE_FAILED") #DELETEFAILED | @as("DELETE_SUCCESSFUL") #DELETESUCCESSFUL | @as("CREATE_FAILED") #CREATEFAILED | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS | @as("CREATE_SUCCESSFUL") #CREATESUCCESSFUL]
type organizationResourceDetailedStatus = [@as("UPDATE_FAILED") #UPDATEFAILED | @as("UPDATE_IN_PROGRESS") #UPDATEINPROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATESUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("DELETE_FAILED") #DELETEFAILED | @as("DELETE_SUCCESSFUL") #DELETESUCCESSFUL | @as("CREATE_FAILED") #CREATEFAILED | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS | @as("CREATE_SUCCESSFUL") #CREATESUCCESSFUL]
type organizationConformancePackName = string
type organizationConfigRuleTriggerType = [@as("ScheduledNotification") #ScheduledNotification | @as("OversizedConfigurationItemChangeNotification") #OversizedConfigurationItemChangeNotification | @as("ConfigurationItemChangeNotification") #ConfigurationItemChangeNotification]
type organizationConfigRuleName = string
type orderingTimestamp = Js.Date.t;
type nextToken = string
type name = string
type messageType = [@as("OversizedConfigurationItemChangeNotification") #OversizedConfigurationItemChangeNotification | @as("ScheduledNotification") #ScheduledNotification | @as("ConfigurationSnapshotDeliveryCompleted") #ConfigurationSnapshotDeliveryCompleted | @as("ConfigurationItemChangeNotification") #ConfigurationItemChangeNotification]
type memberAccountRuleStatus = [@as("UPDATE_FAILED") #UPDATEFAILED | @as("UPDATE_IN_PROGRESS") #UPDATEINPROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATESUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("DELETE_FAILED") #DELETEFAILED | @as("DELETE_SUCCESSFUL") #DELETESUCCESSFUL | @as("CREATE_FAILED") #CREATEFAILED | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS | @as("CREATE_SUCCESSFUL") #CREATESUCCESSFUL]
type maximumExecutionFrequency = [@as("TwentyFour_Hours") #TwentyFourHours | @as("Twelve_Hours") #TwelveHours | @as("Six_Hours") #SixHours | @as("Three_Hours") #ThreeHours | @as("One_Hour") #OneHour]
type long = float
type limit = int
type laterTime = Js.Date.t;
type integer_ = int
type includeGlobalResourceTypes = bool
type groupByAPILimit = int
type getConformancePackComplianceDetailsLimit = int
type fieldName = string
type expression = string
type eventSource = [@as("aws.config") #AwsConfig]
type errorMessage = string
type emptiableStringWithCharLimit256 = string
type earlierTime = Js.Date.t;
type describePendingAggregationRequestsLimit = int
type describeConformancePackComplianceLimit = int
type deliveryStatus = [@as("Not_Applicable") #NotApplicable | @as("Failure") #Failure | @as("Success") #Success]
type deliveryS3KeyPrefix = string
type deliveryS3Bucket = string
type date = Js.Date.t;
type cosmosPageLimit = int
type conformancePackStatusReason = string
type conformancePackState = [@as("DELETE_FAILED") #DELETEFAILED | @as("DELETE_IN_PROGRESS") #DELETEINPROGRESS | @as("CREATE_FAILED") #CREATEFAILED | @as("CREATE_COMPLETE") #CREATECOMPLETE | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS]
type conformancePackName = string
type conformancePackId = string
type conformancePackComplianceType = [@as("INSUFFICIENT_DATA") #INSUFFICIENTDATA | @as("NON_COMPLIANT") #NONCOMPLIANT | @as("COMPLIANT") #COMPLIANT]
type conformancePackArn = string
type configurationStateId = string
type configurationItemStatus = [@as("ResourceDeletedNotRecorded") #ResourceDeletedNotRecorded | @as("ResourceDeleted") #ResourceDeleted | @as("ResourceNotRecorded") #ResourceNotRecorded | @as("ResourceDiscovered") #ResourceDiscovered | @as("OK") #OK]
type configurationItemMD5Hash = string
type configurationItemCaptureTime = Js.Date.t;
type configurationAggregatorName = string
type configurationAggregatorArn = string
type configuration = string
type configRuleState = [@as("EVALUATING") #EVALUATING | @as("DELETING_RESULTS") #DELETINGRESULTS | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type configRuleName = string
type configRuleComplianceSummaryGroupKey = [@as("AWS_REGION") #AWSREGION | @as("ACCOUNT_ID") #ACCOUNTID]
type complianceType = [@as("INSUFFICIENT_DATA") #INSUFFICIENTDATA | @as("NOT_APPLICABLE") #NOTAPPLICABLE | @as("NON_COMPLIANT") #NONCOMPLIANT | @as("COMPLIANT") #COMPLIANT]
type chronologicalOrder = [@as("Forward") #Forward | @as("Reverse") #Reverse]
type channelName = string
type boolean_ = bool
type baseResourceId = string
type awsRegion = string
type availabilityZone = string
type autoRemediationAttempts = int
type autoRemediationAttemptSeconds = float
type annotation = string
type amazonResourceName = string
type allSupported = bool
type aggregatedSourceType = [@as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type aggregatedSourceStatusType = [@as("OUTDATED") #OUTDATED | @as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED]
type aggregateConformancePackComplianceSummaryGroupKey = [@as("AWS_REGION") #AWSREGION | @as("ACCOUNT_ID") #ACCOUNTID]
type accountId = string
type arn = string
type tags = Js.Dict.t< value>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type supplementaryConfiguration = Js.Dict.t< supplementaryConfigurationValue>
type storedQueryMetadata = {
@as("Description") description: option<queryDescription>,
@as("QueryName") queryName: queryName,
@as("QueryArn") queryArn: queryArn,
@as("QueryId") queryId: queryId
}
type storedQuery = {
@as("Expression") expression: option<queryExpression>,
@as("Description") description: option<queryDescription>,
@as("QueryName") queryName: queryName,
@as("QueryArn") queryArn: option<queryArn>,
@as("QueryId") queryId: option<queryId>
}
type statusDetailFilters = {
@as("MemberAccountRuleStatus") memberAccountRuleStatus: option<memberAccountRuleStatus>,
@as("AccountId") accountId: option<accountId>
}
type staticParameterValues = array<stringWithCharLimit256>
type ssmControls = {
@as("ErrorPercentage") errorPercentage: option<percentage>,
@as("ConcurrentExecutionRatePercentage") concurrentExecutionRatePercentage: option<percentage>
}
type sourceDetail = {
@as("MaximumExecutionFrequency") maximumExecutionFrequency: option<maximumExecutionFrequency>,
@as("MessageType") messageType: option<messageType>,
@as("EventSource") eventSource: option<eventSource>
}
type retentionConfigurationNameList = array<retentionConfigurationName>
type retentionConfiguration = {
@as("RetentionPeriodInDays") retentionPeriodInDays: retentionPeriodInDays,
@as("Name") name: retentionConfigurationName
}
type results = array<string_>
type resourceValue = {
@as("Value") value: resourceValueType
}
type resourceTypesScope = array<stringWithCharLimit256>
type resourceTypes = array<stringWithCharLimit256>
type resourceTypeList = array<resourceType>
type resourceKey = {
resourceId: resourceId,
resourceType: resourceType
}
type resourceIdentifier = {
resourceDeletionTime: option<resourceDeletionTime>,
resourceName: option<resourceName>,
resourceId: option<resourceId>,
resourceType: option<resourceType>
}
type resourceIdList = array<resourceId>
type resourceFilters = {
@as("Region") region: option<awsRegion>,
@as("ResourceName") resourceName: option<resourceName>,
@as("ResourceId") resourceId: option<resourceId>,
@as("AccountId") accountId: option<accountId>
}
type resourceCountFilters = {
@as("Region") region: option<awsRegion>,
@as("AccountId") accountId: option<accountId>,
@as("ResourceType") resourceType: option<resourceType>
}
type resourceCount = {
count: option<long>,
resourceType: option<resourceType>
}
type remediationExecutionStep = {
@as("StopTime") stopTime: option<date>,
@as("StartTime") startTime: option<date>,
@as("ErrorMessage") errorMessage: option<string_>,
@as("State") state: option<remediationExecutionStepState>,
@as("Name") name: option<string_>
}
type remediationExceptionResourceKey = {
@as("ResourceId") resourceId: option<stringWithCharLimit1024>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>
}
type remediationException = {
@as("ExpirationTime") expirationTime: option<date>,
@as("Message") message: option<stringWithCharLimit1024>,
@as("ResourceId") resourceId: stringWithCharLimit1024,
@as("ResourceType") resourceType: stringWithCharLimit256,
@as("ConfigRuleName") configRuleName: configRuleName
}
type relationship = {
relationshipName: option<relationshipName>,
resourceName: option<resourceName>,
resourceId: option<resourceId>,
resourceType: option<resourceType>
}
type relatedEventList = array<relatedEvent>
type reevaluateConfigRuleNames = array<configRuleName>
type pendingAggregationRequest = {
@as("RequesterAwsRegion") requesterAwsRegion: option<awsRegion>,
@as("RequesterAccountId") requesterAccountId: option<accountId>
}
type organizationResourceDetailedStatusFilters = {
@as("Status") status: option<organizationResourceDetailedStatus>,
@as("AccountId") accountId: option<accountId>
}
type organizationConformancePackStatus = {
@as("LastUpdateTime") lastUpdateTime: option<date>,
@as("ErrorMessage") errorMessage: option<string_>,
@as("ErrorCode") errorCode: option<string_>,
@as("Status") status: organizationResourceStatus,
@as("OrganizationConformancePackName") organizationConformancePackName: organizationConformancePackName
}
type organizationConformancePackNames = array<organizationConformancePackName>
type organizationConformancePackDetailedStatus = {
@as("LastUpdateTime") lastUpdateTime: option<date>,
@as("ErrorMessage") errorMessage: option<string_>,
@as("ErrorCode") errorCode: option<string_>,
@as("Status") status: organizationResourceDetailedStatus,
@as("ConformancePackName") conformancePackName: stringWithCharLimit256,
@as("AccountId") accountId: accountId
}
type organizationConfigRuleTriggerTypes = array<organizationConfigRuleTriggerType>
type organizationConfigRuleStatus = {
@as("LastUpdateTime") lastUpdateTime: option<date>,
@as("ErrorMessage") errorMessage: option<string_>,
@as("ErrorCode") errorCode: option<string_>,
@as("OrganizationRuleStatus") organizationRuleStatus: organizationRuleStatus,
@as("OrganizationConfigRuleName") organizationConfigRuleName: organizationConfigRuleName
}
type organizationConfigRuleNames = array<stringWithCharLimit64>
type memberAccountStatus = {
@as("LastUpdateTime") lastUpdateTime: option<date>,
@as("ErrorMessage") errorMessage: option<string_>,
@as("ErrorCode") errorCode: option<string_>,
@as("MemberAccountRuleStatus") memberAccountRuleStatus: memberAccountRuleStatus,
@as("ConfigRuleName") configRuleName: stringWithCharLimit64,
@as("AccountId") accountId: accountId
}
type groupedResourceCount = {
@as("ResourceCount") resourceCount: long,
@as("GroupName") groupName: stringWithCharLimit256
}
type fieldInfo = {
@as("Name") name: option<fieldName>
}
type externalEvaluation = {
@as("OrderingTimestamp") orderingTimestamp: orderingTimestamp,
@as("Annotation") annotation: option<stringWithCharLimit256>,
@as("ComplianceType") complianceType: complianceType,
@as("ComplianceResourceId") complianceResourceId: baseResourceId,
@as("ComplianceResourceType") complianceResourceType: stringWithCharLimit256
}
type excludedAccounts = array<accountId>
type evaluationResultQualifier = {
@as("ResourceId") resourceId: option<baseResourceId>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type evaluation = {
@as("OrderingTimestamp") orderingTimestamp: orderingTimestamp,
@as("Annotation") annotation: option<stringWithCharLimit256>,
@as("ComplianceType") complianceType: complianceType,
@as("ComplianceResourceId") complianceResourceId: baseResourceId,
@as("ComplianceResourceType") complianceResourceType: stringWithCharLimit256
}
type deliveryChannelNameList = array<channelName>
type controlsList = array<stringWithCharLimit128>
type conformancePackStatusDetail = {
@as("LastUpdateCompletedTime") lastUpdateCompletedTime: option<date>,
@as("LastUpdateRequestedTime") lastUpdateRequestedTime: date,
@as("ConformancePackStatusReason") conformancePackStatusReason: option<conformancePackStatusReason>,
@as("StackArn") stackArn: stackArn,
@as("ConformancePackState") conformancePackState: conformancePackState,
@as("ConformancePackArn") conformancePackArn: conformancePackArn,
@as("ConformancePackId") conformancePackId: conformancePackId,
@as("ConformancePackName") conformancePackName: conformancePackName
}
type conformancePackNamesToSummarizeList = array<conformancePackName>
type conformancePackNamesList = array<conformancePackName>
type conformancePackInputParameter = {
@as("ParameterValue") parameterValue: parameterValue,
@as("ParameterName") parameterName: parameterName
}
type conformancePackConfigRuleNames = array<stringWithCharLimit64>
type conformancePackComplianceSummary = {
@as("ConformancePackComplianceStatus") conformancePackComplianceStatus: conformancePackComplianceType,
@as("ConformancePackName") conformancePackName: conformancePackName
}
type conformancePackComplianceResourceIds = array<stringWithCharLimit256>
type configurationRecorderStatus = {
lastStatusChangeTime: option<date>,
lastErrorMessage: option<string_>,
lastErrorCode: option<string_>,
lastStatus: option<recorderStatus>,
recording: option<boolean_>,
lastStopTime: option<date>,
lastStartTime: option<date>,
name: option<string_>
}
type configurationRecorderNameList = array<recorderName>
type configurationAggregatorNameList = array<configurationAggregatorName>
type configStreamDeliveryInfo = {
lastStatusChangeTime: option<date>,
lastErrorMessage: option<string_>,
lastErrorCode: option<string_>,
lastStatus: option<deliveryStatus>
}
type configSnapshotDeliveryProperties = {
deliveryFrequency: option<maximumExecutionFrequency>
}
type configRuleNames = array<configRuleName>
type configRuleEvaluationStatus = {
@as("FirstEvaluationStarted") firstEvaluationStarted: option<boolean_>,
@as("LastErrorMessage") lastErrorMessage: option<string_>,
@as("LastErrorCode") lastErrorCode: option<string_>,
@as("LastDeactivatedTime") lastDeactivatedTime: option<date>,
@as("FirstActivatedTime") firstActivatedTime: option<date>,
@as("LastFailedEvaluationTime") lastFailedEvaluationTime: option<date>,
@as("LastSuccessfulEvaluationTime") lastSuccessfulEvaluationTime: option<date>,
@as("LastFailedInvocationTime") lastFailedInvocationTime: option<date>,
@as("LastSuccessfulInvocationTime") lastSuccessfulInvocationTime: option<date>,
@as("ConfigRuleId") configRuleId: option<string_>,
@as("ConfigRuleArn") configRuleArn: option<string_>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type configRuleComplianceSummaryFilters = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>
}
type configRuleComplianceFilters = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>,
@as("ComplianceType") complianceType: option<complianceType>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type configExportDeliveryInfo = {
nextDeliveryTime: option<date>,
lastSuccessfulTime: option<date>,
lastAttemptTime: option<date>,
lastErrorMessage: option<string_>,
lastErrorCode: option<string_>,
lastStatus: option<deliveryStatus>
}
type complianceTypes = array<complianceType>
type complianceResourceTypes = array<stringWithCharLimit256>
type complianceContributorCount = {
@as("CapExceeded") capExceeded: option<boolean_>,
@as("CappedCount") cappedCount: option<integer_>
}
type aggregatorRegionList = array<string_>
type aggregationAuthorization = {
@as("CreationTime") creationTime: option<date>,
@as("AuthorizedAwsRegion") authorizedAwsRegion: option<awsRegion>,
@as("AuthorizedAccountId") authorizedAccountId: option<accountId>,
@as("AggregationAuthorizationArn") aggregationAuthorizationArn: option<string_>
}
type aggregatedSourceStatusTypeList = array<aggregatedSourceStatusType>
type aggregatedSourceStatus = {
@as("LastErrorMessage") lastErrorMessage: option<string_>,
@as("LastErrorCode") lastErrorCode: option<string_>,
@as("LastUpdateTime") lastUpdateTime: option<date>,
@as("LastUpdateStatus") lastUpdateStatus: option<aggregatedSourceStatusType>,
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("SourceType") sourceType: option<aggregatedSourceType>,
@as("SourceId") sourceId: option<string_>
}
type aggregateResourceIdentifier = {
@as("ResourceName") resourceName: option<resourceName>,
@as("ResourceType") resourceType: resourceType,
@as("ResourceId") resourceId: resourceId,
@as("SourceRegion") sourceRegion: awsRegion,
@as("SourceAccountId") sourceAccountId: accountId
}
type aggregateConformancePackComplianceSummaryFilters = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>
}
type aggregateConformancePackComplianceFilters = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>,
@as("ComplianceType") complianceType: option<conformancePackComplianceType>,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
type aggregateConformancePackComplianceCount = {
@as("NonCompliantConformancePackCount") nonCompliantConformancePackCount: option<integer_>,
@as("CompliantConformancePackCount") compliantConformancePackCount: option<integer_>
}
type aggregateConformancePackCompliance = {
@as("TotalRuleCount") totalRuleCount: option<integer_>,
@as("NonCompliantRuleCount") nonCompliantRuleCount: option<integer_>,
@as("CompliantRuleCount") compliantRuleCount: option<integer_>,
@as("ComplianceType") complianceType: option<conformancePackComplianceType>
}
type accountAggregationSourceAccountList = array<accountId>
type unprocessedResourceIdentifierList = array<aggregateResourceIdentifier>
type tagsList = array<tag>
type tagList_ = array<tag>
type storedQueryMetadataList = array<storedQueryMetadata>
type staticValue = {
@as("Values") values: staticParameterValues
}
type sourceDetails = array<sourceDetail>
type scope = {
@as("ComplianceResourceId") complianceResourceId: option<baseResourceId>,
@as("TagValue") tagValue: option<stringWithCharLimit256>,
@as("TagKey") tagKey: option<stringWithCharLimit128>,
@as("ComplianceResourceTypes") complianceResourceTypes: option<complianceResourceTypes>
}
type retentionConfigurationList = array<retentionConfiguration>
type resourceKeys = array<resourceKey>
type resourceIdentifiersList = array<aggregateResourceIdentifier>
type resourceIdentifierList = array<resourceIdentifier>
type resourceCounts = array<resourceCount>
type remediationExecutionSteps = array<remediationExecutionStep>
type remediationExceptions = array<remediationException>
type remediationExceptionResourceKeys = array<remediationExceptionResourceKey>
type relationshipList = array<relationship>
type recordingGroup = {
resourceTypes: option<resourceTypeList>,
includeGlobalResourceTypes: option<includeGlobalResourceTypes>,
allSupported: option<allSupported>
}
type pendingAggregationRequestList = array<pendingAggregationRequest>
type organizationManagedRuleMetadata = {
@as("TagValueScope") tagValueScope: option<stringWithCharLimit256>,
@as("TagKeyScope") tagKeyScope: option<stringWithCharLimit128>,
@as("ResourceIdScope") resourceIdScope: option<stringWithCharLimit768>,
@as("ResourceTypesScope") resourceTypesScope: option<resourceTypesScope>,
@as("MaximumExecutionFrequency") maximumExecutionFrequency: option<maximumExecutionFrequency>,
@as("InputParameters") inputParameters: option<stringWithCharLimit2048>,
@as("RuleIdentifier") ruleIdentifier: stringWithCharLimit256,
@as("Description") description: option<stringWithCharLimit256Min0>
}
type organizationCustomRuleMetadata = {
@as("TagValueScope") tagValueScope: option<stringWithCharLimit256>,
@as("TagKeyScope") tagKeyScope: option<stringWithCharLimit128>,
@as("ResourceIdScope") resourceIdScope: option<stringWithCharLimit768>,
@as("ResourceTypesScope") resourceTypesScope: option<resourceTypesScope>,
@as("MaximumExecutionFrequency") maximumExecutionFrequency: option<maximumExecutionFrequency>,
@as("InputParameters") inputParameters: option<stringWithCharLimit2048>,
@as("OrganizationConfigRuleTriggerTypes") organizationConfigRuleTriggerTypes: organizationConfigRuleTriggerTypes,
@as("LambdaFunctionArn") lambdaFunctionArn: stringWithCharLimit256,
@as("Description") description: option<stringWithCharLimit256Min0>
}
type organizationConformancePackStatuses = array<organizationConformancePackStatus>
type organizationConformancePackDetailedStatuses = array<organizationConformancePackDetailedStatus>
type organizationConfigRuleStatuses = array<organizationConfigRuleStatus>
type organizationConfigRuleDetailedStatus = array<memberAccountStatus>
type organizationAggregationSource = {
@as("AllAwsRegions") allAwsRegions: option<boolean_>,
@as("AwsRegions") awsRegions: option<aggregatorRegionList>,
@as("RoleArn") roleArn: string_
}
type groupedResourceCountList = array<groupedResourceCount>
type fieldInfoList = array<fieldInfo>
type executionControls = {
@as("SsmControls") ssmControls: option<ssmControls>
}
type evaluations = array<evaluation>
type evaluationResultIdentifier = {
@as("OrderingTimestamp") orderingTimestamp: option<date>,
@as("EvaluationResultQualifier") evaluationResultQualifier: option<evaluationResultQualifier>
}
type discoveredResourceIdentifierList = array<aggregateResourceIdentifier>
type deliveryChannelStatus = {
configStreamDeliveryInfo: option<configStreamDeliveryInfo>,
configHistoryDeliveryInfo: option<configExportDeliveryInfo>,
configSnapshotDeliveryInfo: option<configExportDeliveryInfo>,
name: option<string_>
}
type deliveryChannel = {
configSnapshotDeliveryProperties: option<configSnapshotDeliveryProperties>,
snsTopicARN: option<string_>,
s3KmsKeyArn: option<string_>,
s3KeyPrefix: option<string_>,
s3BucketName: option<string_>,
name: option<channelName>
}
type conformancePackStatusDetailsList = array<conformancePackStatusDetail>
type conformancePackRuleCompliance = {
@as("Controls") controls: option<controlsList>,
@as("ComplianceType") complianceType: option<conformancePackComplianceType>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type conformancePackInputParameters = array<conformancePackInputParameter>
type conformancePackEvaluationFilters = {
@as("ResourceIds") resourceIds: option<conformancePackComplianceResourceIds>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>,
@as("ComplianceType") complianceType: option<conformancePackComplianceType>,
@as("ConfigRuleNames") configRuleNames: option<conformancePackConfigRuleNames>
}
type conformancePackComplianceSummaryList = array<conformancePackComplianceSummary>
type conformancePackComplianceFilters = {
@as("ComplianceType") complianceType: option<conformancePackComplianceType>,
@as("ConfigRuleNames") configRuleNames: option<conformancePackConfigRuleNames>
}
type configurationRecorderStatusList = array<configurationRecorderStatus>
type configRuleEvaluationStatusList = array<configRuleEvaluationStatus>
type complianceSummary = {
@as("ComplianceSummaryTimestamp") complianceSummaryTimestamp: option<date>,
@as("NonCompliantResourceCount") nonCompliantResourceCount: option<complianceContributorCount>,
@as("CompliantResourceCount") compliantResourceCount: option<complianceContributorCount>
}
type compliance = {
@as("ComplianceContributorCount") complianceContributorCount: option<complianceContributorCount>,
@as("ComplianceType") complianceType: option<complianceType>
}
type baseConfigurationItem = {
supplementaryConfiguration: option<supplementaryConfiguration>,
configuration: option<configuration>,
resourceCreationTime: option<resourceCreationTime>,
availabilityZone: option<availabilityZone>,
awsRegion: option<awsRegion>,
resourceName: option<resourceName>,
resourceId: option<resourceId>,
resourceType: option<resourceType>,
arn: option<arn>,
configurationStateId: option<configurationStateId>,
configurationItemStatus: option<configurationItemStatus>,
configurationItemCaptureTime: option<configurationItemCaptureTime>,
accountId: option<accountId>,
version: option<version>
}
type aggregationAuthorizationList = array<aggregationAuthorization>
type aggregatedSourceStatusList = array<aggregatedSourceStatus>
type aggregateConformancePackComplianceSummary = {
@as("GroupName") groupName: option<stringWithCharLimit256>,
@as("ComplianceSummary") complianceSummary: option<aggregateConformancePackComplianceCount>
}
type aggregateComplianceByConformancePack = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>,
@as("Compliance") compliance: option<aggregateConformancePackCompliance>,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
type accountAggregationSource = {
@as("AwsRegions") awsRegions: option<aggregatorRegionList>,
@as("AllAwsRegions") allAwsRegions: option<boolean_>,
@as("AccountIds") accountIds: accountAggregationSourceAccountList
}
type source = {
@as("SourceDetails") sourceDetails: option<sourceDetails>,
@as("SourceIdentifier") sourceIdentifier: stringWithCharLimit256,
@as("Owner") owner: owner
}
type remediationParameterValue = {
@as("StaticValue") staticValue: option<staticValue>,
@as("ResourceValue") resourceValue: option<resourceValue>
}
type remediationExecutionStatus = {
@as("LastUpdatedTime") lastUpdatedTime: option<date>,
@as("InvocationTime") invocationTime: option<date>,
@as("StepDetails") stepDetails: option<remediationExecutionSteps>,
@as("State") state: option<remediationExecutionState>,
@as("ResourceKey") resourceKey: option<resourceKey>
}
type queryInfo = {
@as("SelectFields") selectFields: option<fieldInfoList>
}
type organizationConformancePack = {
@as("LastUpdateTime") lastUpdateTime: date,
@as("ExcludedAccounts") excludedAccounts: option<excludedAccounts>,
@as("ConformancePackInputParameters") conformancePackInputParameters: option<conformancePackInputParameters>,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
@as("DeliveryS3Bucket") deliveryS3Bucket: option<deliveryS3Bucket>,
@as("OrganizationConformancePackArn") organizationConformancePackArn: stringWithCharLimit256,
@as("OrganizationConformancePackName") organizationConformancePackName: organizationConformancePackName
}
type organizationConfigRule = {
@as("LastUpdateTime") lastUpdateTime: option<date>,
@as("ExcludedAccounts") excludedAccounts: option<excludedAccounts>,
@as("OrganizationCustomRuleMetadata") organizationCustomRuleMetadata: option<organizationCustomRuleMetadata>,
@as("OrganizationManagedRuleMetadata") organizationManagedRuleMetadata: option<organizationManagedRuleMetadata>,
@as("OrganizationConfigRuleArn") organizationConfigRuleArn: stringWithCharLimit256,
@as("OrganizationConfigRuleName") organizationConfigRuleName: organizationConfigRuleName
}
type failedRemediationExceptionBatch = {
@as("FailedItems") failedItems: option<remediationExceptions>,
@as("FailureMessage") failureMessage: option<string_>
}
type failedDeleteRemediationExceptionsBatch = {
@as("FailedItems") failedItems: option<remediationExceptionResourceKeys>,
@as("FailureMessage") failureMessage: option<string_>
}
type evaluationResult = {
@as("ResultToken") resultToken: option<string_>,
@as("Annotation") annotation: option<stringWithCharLimit256>,
@as("ConfigRuleInvokedTime") configRuleInvokedTime: option<date>,
@as("ResultRecordedTime") resultRecordedTime: option<date>,
@as("ComplianceType") complianceType: option<complianceType>,
@as("EvaluationResultIdentifier") evaluationResultIdentifier: option<evaluationResultIdentifier>
}
type deliveryChannelStatusList = array<deliveryChannelStatus>
type deliveryChannelList = array<deliveryChannel>
type conformancePackRuleComplianceList = array<conformancePackRuleCompliance>
type conformancePackEvaluationResult = {
@as("Annotation") annotation: option<annotation>,
@as("ResultRecordedTime") resultRecordedTime: date,
@as("ConfigRuleInvokedTime") configRuleInvokedTime: date,
@as("EvaluationResultIdentifier") evaluationResultIdentifier: evaluationResultIdentifier,
@as("ComplianceType") complianceType: conformancePackComplianceType
}
type conformancePackDetail = {
@as("CreatedBy") createdBy: option<stringWithCharLimit256>,
@as("LastUpdateRequestedTime") lastUpdateRequestedTime: option<date>,
@as("ConformancePackInputParameters") conformancePackInputParameters: option<conformancePackInputParameters>,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
@as("DeliveryS3Bucket") deliveryS3Bucket: option<deliveryS3Bucket>,
@as("ConformancePackId") conformancePackId: conformancePackId,
@as("ConformancePackArn") conformancePackArn: conformancePackArn,
@as("ConformancePackName") conformancePackName: conformancePackName
}
type configurationRecorder = {
recordingGroup: option<recordingGroup>,
roleARN: option<string_>,
name: option<recorderName>
}
type configurationItem = {
supplementaryConfiguration: option<supplementaryConfiguration>,
configuration: option<configuration>,
relationships: option<relationshipList>,
relatedEvents: option<relatedEventList>,
tags: option<tags>,
resourceCreationTime: option<resourceCreationTime>,
availabilityZone: option<availabilityZone>,
awsRegion: option<awsRegion>,
resourceName: option<resourceName>,
resourceId: option<resourceId>,
resourceType: option<resourceType>,
arn: option<arn>,
configurationItemMD5Hash: option<configurationItemMD5Hash>,
configurationStateId: option<configurationStateId>,
configurationItemStatus: option<configurationItemStatus>,
configurationItemCaptureTime: option<configurationItemCaptureTime>,
accountId: option<accountId>,
version: option<version>
}
type complianceSummaryByResourceType = {
@as("ComplianceSummary") complianceSummary: option<complianceSummary>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>
}
type complianceByResource = {
@as("Compliance") compliance: option<compliance>,
@as("ResourceId") resourceId: option<baseResourceId>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>
}
type complianceByConfigRule = {
@as("Compliance") compliance: option<compliance>,
@as("ConfigRuleName") configRuleName: option<stringWithCharLimit64>
}
type baseConfigurationItems = array<baseConfigurationItem>
type aggregateEvaluationResult = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>,
@as("Annotation") annotation: option<stringWithCharLimit256>,
@as("ConfigRuleInvokedTime") configRuleInvokedTime: option<date>,
@as("ResultRecordedTime") resultRecordedTime: option<date>,
@as("ComplianceType") complianceType: option<complianceType>,
@as("EvaluationResultIdentifier") evaluationResultIdentifier: option<evaluationResultIdentifier>
}
type aggregateConformancePackComplianceSummaryList = array<aggregateConformancePackComplianceSummary>
type aggregateComplianceCount = {
@as("ComplianceSummary") complianceSummary: option<complianceSummary>,
@as("GroupName") groupName: option<stringWithCharLimit256>
}
type aggregateComplianceByConformancePackList = array<aggregateComplianceByConformancePack>
type aggregateComplianceByConfigRule = {
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>,
@as("Compliance") compliance: option<compliance>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type accountAggregationSourceList = array<accountAggregationSource>
type remediationParameters = Js.Dict.t< remediationParameterValue>
type remediationExecutionStatuses = array<remediationExecutionStatus>
type organizationConformancePacks = array<organizationConformancePack>
type organizationConfigRules = array<organizationConfigRule>
type failedRemediationExceptionBatches = array<failedRemediationExceptionBatch>
type failedDeleteRemediationExceptionsBatches = array<failedDeleteRemediationExceptionsBatch>
type evaluationResults = array<evaluationResult>
type conformancePackRuleEvaluationResultsList = array<conformancePackEvaluationResult>
type conformancePackDetailList = array<conformancePackDetail>
type configurationRecorderList = array<configurationRecorder>
type configurationItemList = array<configurationItem>
type configurationAggregator = {
@as("CreatedBy") createdBy: option<stringWithCharLimit256>,
@as("LastUpdatedTime") lastUpdatedTime: option<date>,
@as("CreationTime") creationTime: option<date>,
@as("OrganizationAggregationSource") organizationAggregationSource: option<organizationAggregationSource>,
@as("AccountAggregationSources") accountAggregationSources: option<accountAggregationSourceList>,
@as("ConfigurationAggregatorArn") configurationAggregatorArn: option<configurationAggregatorArn>,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
type configRule = {
@as("CreatedBy") createdBy: option<stringWithCharLimit256>,
@as("ConfigRuleState") configRuleState: option<configRuleState>,
@as("MaximumExecutionFrequency") maximumExecutionFrequency: option<maximumExecutionFrequency>,
@as("InputParameters") inputParameters: option<stringWithCharLimit1024>,
@as("Source") source: source,
@as("Scope") scope: option<scope>,
@as("Description") description: option<emptiableStringWithCharLimit256>,
@as("ConfigRuleId") configRuleId: option<stringWithCharLimit64>,
@as("ConfigRuleArn") configRuleArn: option<stringWithCharLimit256>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type complianceSummariesByResourceType = array<complianceSummaryByResourceType>
type complianceByResources = array<complianceByResource>
type complianceByConfigRules = array<complianceByConfigRule>
type aggregateEvaluationResultList = array<aggregateEvaluationResult>
type aggregateComplianceCountList = array<aggregateComplianceCount>
type aggregateComplianceByConfigRuleList = array<aggregateComplianceByConfigRule>
type remediationConfiguration = {
@as("CreatedByService") createdByService: option<stringWithCharLimit1024>,
@as("Arn") arn: option<stringWithCharLimit1024>,
@as("RetryAttemptSeconds") retryAttemptSeconds: option<autoRemediationAttemptSeconds>,
@as("MaximumAutomaticAttempts") maximumAutomaticAttempts: option<autoRemediationAttempts>,
@as("ExecutionControls") executionControls: option<executionControls>,
@as("Automatic") automatic: option<boolean_>,
@as("ResourceType") resourceType: option<string_>,
@as("Parameters") parameters: option<remediationParameters>,
@as("TargetVersion") targetVersion: option<string_>,
@as("TargetId") targetId: stringWithCharLimit256,
@as("TargetType") targetType: remediationTargetType,
@as("ConfigRuleName") configRuleName: configRuleName
}
type configurationAggregatorList = array<configurationAggregator>
type configRules = array<configRule>
type remediationConfigurations = array<remediationConfiguration>
type failedRemediationBatch = {
@as("FailedItems") failedItems: option<remediationConfigurations>,
@as("FailureMessage") failureMessage: option<string_>
}
type failedRemediationBatches = array<failedRemediationBatch>
type awsServiceClient;
@module("@aws-sdk/client-config") @new external createClient: unit => awsServiceClient = "ConfigClient";
module StopConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorderName") configurationRecorderName: recorderName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "StopConfigurationRecorderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorderName") configurationRecorderName: recorderName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "StartConfigurationRecorderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeliverConfigSnapshot = {
  type t;
  type request = {
deliveryChannelName: channelName
}
  type response = {
configSnapshotId: option<string_>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeliverConfigSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteStoredQuery = {
  type t;
  type request = {
@as("QueryName") queryName: queryName
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteStoredQueryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRetentionConfiguration = {
  type t;
  type request = {
@as("RetentionConfigurationName") retentionConfigurationName: retentionConfigurationName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteRetentionConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourceConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceId,
@as("ResourceType") resourceType: resourceTypeString
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteResourceConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRemediationConfiguration = {
  type t;
  type request = {
@as("ResourceType") resourceType: option<string_>,
@as("ConfigRuleName") configRuleName: configRuleName
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteRemediationConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePendingAggregationRequest = {
  type t;
  type request = {
@as("RequesterAwsRegion") requesterAwsRegion: awsRegion,
@as("RequesterAccountId") requesterAccountId: accountId
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeletePendingAggregationRequestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteOrganizationConformancePack = {
  type t;
  type request = {
@as("OrganizationConformancePackName") organizationConformancePackName: organizationConformancePackName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteOrganizationConformancePackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteOrganizationConfigRule = {
  type t;
  type request = {
@as("OrganizationConfigRuleName") organizationConfigRuleName: organizationConfigRuleName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteOrganizationConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteEvaluationResults = {
  type t;
  type request = {
@as("ConfigRuleName") configRuleName: stringWithCharLimit64
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteEvaluationResultsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDeliveryChannel = {
  type t;
  type request = {
@as("DeliveryChannelName") deliveryChannelName: channelName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteDeliveryChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteConformancePack = {
  type t;
  type request = {
@as("ConformancePackName") conformancePackName: conformancePackName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteConformancePackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorderName") configurationRecorderName: recorderName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteConfigurationRecorderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationAggregator = {
  type t;
  type request = {
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteConfigurationAggregatorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigRule = {
  type t;
  type request = {
@as("ConfigRuleName") configRuleName: configRuleName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteAggregationAuthorization = {
  type t;
  type request = {
@as("AuthorizedAwsRegion") authorizedAwsRegion: awsRegion,
@as("AuthorizedAccountId") authorizedAccountId: accountId
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteAggregationAuthorizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceArn") resourceArn: amazonResourceName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartConfigRulesEvaluation = {
  type t;
  type request = {
@as("ConfigRuleNames") configRuleNames: option<reevaluateConfigRuleNames>
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "StartConfigRulesEvaluationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRetentionConfiguration = {
  type t;
  type request = {
@as("RetentionPeriodInDays") retentionPeriodInDays: retentionPeriodInDays
}
  type response = {
@as("RetentionConfiguration") retentionConfiguration: option<retentionConfiguration>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutRetentionConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutResourceConfig = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Configuration") configuration: configuration,
@as("ResourceName") resourceName: option<resourceName>,
@as("ResourceId") resourceId: resourceId,
@as("SchemaVersionId") schemaVersionId: schemaVersionId,
@as("ResourceType") resourceType: resourceTypeString
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutResourceConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutExternalEvaluation = {
  type t;
  type request = {
@as("ExternalEvaluation") externalEvaluation: externalEvaluation,
@as("ConfigRuleName") configRuleName: configRuleName
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutExternalEvaluationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStoredQuery = {
  type t;
  type request = {
@as("QueryName") queryName: queryName
}
  type response = {
@as("StoredQuery") storedQuery: option<storedQuery>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetStoredQueryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceArn") resourceArn: amazonResourceName
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module StartRemediationExecution = {
  type t;
  type request = {
@as("ResourceKeys") resourceKeys: resourceKeys,
@as("ConfigRuleName") configRuleName: configRuleName
}
  type response = {
@as("FailedItems") failedItems: option<resourceKeys>,
@as("FailureMessage") failureMessage: option<string_>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "StartRemediationExecutionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutStoredQuery = {
  type t;
  type request = {
@as("Tags") tags: option<tagsList>,
@as("StoredQuery") storedQuery: storedQuery
}
  type response = {
@as("QueryArn") queryArn: option<queryArn>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutStoredQueryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutOrganizationConformancePack = {
  type t;
  type request = {
@as("ExcludedAccounts") excludedAccounts: option<excludedAccounts>,
@as("ConformancePackInputParameters") conformancePackInputParameters: option<conformancePackInputParameters>,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
@as("DeliveryS3Bucket") deliveryS3Bucket: option<deliveryS3Bucket>,
@as("TemplateBody") templateBody: option<templateBody>,
@as("TemplateS3Uri") templateS3Uri: option<templateS3Uri>,
@as("OrganizationConformancePackName") organizationConformancePackName: organizationConformancePackName
}
  type response = {
@as("OrganizationConformancePackArn") organizationConformancePackArn: option<stringWithCharLimit256>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutOrganizationConformancePackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutOrganizationConfigRule = {
  type t;
  type request = {
@as("ExcludedAccounts") excludedAccounts: option<excludedAccounts>,
@as("OrganizationCustomRuleMetadata") organizationCustomRuleMetadata: option<organizationCustomRuleMetadata>,
@as("OrganizationManagedRuleMetadata") organizationManagedRuleMetadata: option<organizationManagedRuleMetadata>,
@as("OrganizationConfigRuleName") organizationConfigRuleName: organizationConfigRuleName
}
  type response = {
@as("OrganizationConfigRuleArn") organizationConfigRuleArn: option<stringWithCharLimit256>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutOrganizationConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutEvaluations = {
  type t;
  type request = {
@as("TestMode") testMode: option<boolean_>,
@as("ResultToken") resultToken: string_,
@as("Evaluations") evaluations: option<evaluations>
}
  type response = {
@as("FailedEvaluations") failedEvaluations: option<evaluations>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutEvaluationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutDeliveryChannel = {
  type t;
  type request = {
@as("DeliveryChannel") deliveryChannel: deliveryChannel
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutDeliveryChannelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutConformancePack = {
  type t;
  type request = {
@as("ConformancePackInputParameters") conformancePackInputParameters: option<conformancePackInputParameters>,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
@as("DeliveryS3Bucket") deliveryS3Bucket: option<deliveryS3Bucket>,
@as("TemplateBody") templateBody: option<templateBody>,
@as("TemplateS3Uri") templateS3Uri: option<templateS3Uri>,
@as("ConformancePackName") conformancePackName: conformancePackName
}
  type response = {
@as("ConformancePackArn") conformancePackArn: option<conformancePackArn>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutConformancePackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAggregationAuthorization = {
  type t;
  type request = {
@as("Tags") tags: option<tagsList>,
@as("AuthorizedAwsRegion") authorizedAwsRegion: awsRegion,
@as("AuthorizedAccountId") authorizedAccountId: accountId
}
  type response = {
@as("AggregationAuthorization") aggregationAuthorization: option<aggregationAuthorization>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutAggregationAuthorizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("ResourceArn") resourceArn: amazonResourceName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStoredQueries = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<limit>,
@as("NextToken") nextToken: option<string_>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("StoredQueryMetadata") storedQueryMetadata: option<storedQueryMetadataList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "ListStoredQueriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDiscoveredResources = {
  type t;
  type request = {
nextToken: option<nextToken>,
includeDeletedResources: option<boolean_>,
limit: option<limit>,
resourceName: option<resourceName>,
resourceIds: option<resourceIdList>,
resourceType: resourceType
}
  type response = {
nextToken: option<nextToken>,
resourceIdentifiers: option<resourceIdentifierList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "ListDiscoveredResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAggregateDiscoveredResources = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("Filters") filters: option<resourceFilters>,
@as("ResourceType") resourceType: resourceType,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ResourceIdentifiers") resourceIdentifiers: option<discoveredResourceIdentifierList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "ListAggregateDiscoveredResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationConformancePackDetailedStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<cosmosPageLimit>,
@as("Filters") filters: option<organizationResourceDetailedStatusFilters>,
@as("OrganizationConformancePackName") organizationConformancePackName: organizationConformancePackName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("OrganizationConformancePackDetailedStatuses") organizationConformancePackDetailedStatuses: option<organizationConformancePackDetailedStatuses>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetOrganizationConformancePackDetailedStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationConfigRuleDetailedStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<cosmosPageLimit>,
@as("Filters") filters: option<statusDetailFilters>,
@as("OrganizationConfigRuleName") organizationConfigRuleName: organizationConfigRuleName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("OrganizationConfigRuleDetailedStatus") organizationConfigRuleDetailedStatus: option<organizationConfigRuleDetailedStatus>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetOrganizationConfigRuleDetailedStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDiscoveredResourceCounts = {
  type t;
  type request = {
nextToken: option<nextToken>,
limit: option<limit>,
resourceTypes: option<resourceTypes>
}
  type response = {
nextToken: option<nextToken>,
resourceCounts: option<resourceCounts>,
totalDiscoveredResources: option<long>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetDiscoveredResourceCountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConformancePackComplianceSummary = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<pageSizeLimit>,
@as("ConformancePackNames") conformancePackNames: conformancePackNamesToSummarizeList
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ConformancePackComplianceSummaryList") conformancePackComplianceSummaryList: option<conformancePackComplianceSummaryList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetConformancePackComplianceSummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComplianceSummaryByConfigRule = {
  type t;
  
  type response = {
@as("ComplianceSummary") complianceSummary: option<complianceSummary>
}
  @module("@aws-sdk/client-config") @new external new_: (unit) => t = "GetComplianceSummaryByConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAggregateDiscoveredResourceCounts = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<groupByAPILimit>,
@as("GroupByKey") groupByKey: option<resourceCountGroupKey>,
@as("Filters") filters: option<resourceCountFilters>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("GroupedResourceCounts") groupedResourceCounts: option<groupedResourceCountList>,
@as("GroupByKey") groupByKey: option<stringWithCharLimit256>,
@as("TotalDiscoveredResources") totalDiscoveredResources: long
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetAggregateDiscoveredResourceCountsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRetentionConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("RetentionConfigurationNames") retentionConfigurationNames: option<retentionConfigurationNameList>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("RetentionConfigurations") retentionConfigurations: option<retentionConfigurationList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeRetentionConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRemediationExceptions = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<limit>,
@as("ResourceKeys") resourceKeys: option<remediationExceptionResourceKeys>,
@as("ConfigRuleName") configRuleName: configRuleName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("RemediationExceptions") remediationExceptions: option<remediationExceptions>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeRemediationExceptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePendingAggregationRequests = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<describePendingAggregationRequestsLimit>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("PendingAggregationRequests") pendingAggregationRequests: option<pendingAggregationRequestList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribePendingAggregationRequestsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConformancePackStatuses = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<cosmosPageLimit>,
@as("OrganizationConformancePackNames") organizationConformancePackNames: option<organizationConformancePackNames>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("OrganizationConformancePackStatuses") organizationConformancePackStatuses: option<organizationConformancePackStatuses>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeOrganizationConformancePackStatusesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfigRuleStatuses = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<cosmosPageLimit>,
@as("OrganizationConfigRuleNames") organizationConfigRuleNames: option<organizationConfigRuleNames>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("OrganizationConfigRuleStatuses") organizationConfigRuleStatuses: option<organizationConfigRuleStatuses>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeOrganizationConfigRuleStatusesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConformancePackStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<pageSizeLimit>,
@as("ConformancePackNames") conformancePackNames: option<conformancePackNamesList>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ConformancePackStatusDetails") conformancePackStatusDetails: option<conformancePackStatusDetailsList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConformancePackStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRecorderStatus = {
  type t;
  type request = {
@as("ConfigurationRecorderNames") configurationRecorderNames: option<configurationRecorderNameList>
}
  type response = {
@as("ConfigurationRecordersStatus") configurationRecordersStatus: option<configurationRecorderStatusList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConfigurationRecorderStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationAggregatorSourcesStatus = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<string_>,
@as("UpdateStatus") updateStatus: option<aggregatedSourceStatusTypeList>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("AggregatedSourceStatusList") aggregatedSourceStatusList: option<aggregatedSourceStatusList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConfigurationAggregatorSourcesStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigRuleEvaluationStatus = {
  type t;
  type request = {
@as("Limit") limit: option<ruleLimit>,
@as("NextToken") nextToken: option<string_>,
@as("ConfigRuleNames") configRuleNames: option<configRuleNames>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ConfigRulesEvaluationStatus") configRulesEvaluationStatus: option<configRuleEvaluationStatusList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConfigRuleEvaluationStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAggregationAuthorizations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<limit>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("AggregationAuthorizations") aggregationAuthorizations: option<aggregationAuthorizationList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeAggregationAuthorizationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SelectResourceConfig = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("Expression") expression: expression
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("QueryInfo") queryInfo: option<queryInfo>,
@as("Results") results: option<results>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "SelectResourceConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SelectAggregateResourceConfig = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<limit>,
@as("Limit") limit: option<limit>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName,
@as("Expression") expression: expression
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("QueryInfo") queryInfo: option<queryInfo>,
@as("Results") results: option<results>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "SelectAggregateResourceConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorder") configurationRecorder: configurationRecorder
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutConfigurationRecorderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetAggregateResourceConfig = {
  type t;
  type request = {
@as("ResourceIdentifier") resourceIdentifier: aggregateResourceIdentifier,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("ConfigurationItem") configurationItem: option<configurationItem>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetAggregateResourceConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAggregateConformancePackComplianceSummary = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("GroupByKey") groupByKey: option<aggregateConformancePackComplianceSummaryGroupKey>,
@as("Filters") filters: option<aggregateConformancePackComplianceSummaryFilters>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("GroupByKey") groupByKey: option<stringWithCharLimit256>,
@as("AggregateConformancePackComplianceSummaries") aggregateConformancePackComplianceSummaries: option<aggregateConformancePackComplianceSummaryList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetAggregateConformancePackComplianceSummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDeliveryChannels = {
  type t;
  type request = {
@as("DeliveryChannelNames") deliveryChannelNames: option<deliveryChannelNameList>
}
  type response = {
@as("DeliveryChannels") deliveryChannels: option<deliveryChannelList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeDeliveryChannelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDeliveryChannelStatus = {
  type t;
  type request = {
@as("DeliveryChannelNames") deliveryChannelNames: option<deliveryChannelNameList>
}
  type response = {
@as("DeliveryChannelsStatus") deliveryChannelsStatus: option<deliveryChannelStatusList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeDeliveryChannelStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConformancePackCompliance = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<describeConformancePackComplianceLimit>,
@as("Filters") filters: option<conformancePackComplianceFilters>,
@as("ConformancePackName") conformancePackName: conformancePackName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ConformancePackRuleComplianceList") conformancePackRuleComplianceList: conformancePackRuleComplianceList,
@as("ConformancePackName") conformancePackName: conformancePackName
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConformancePackComplianceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAggregateComplianceByConformancePacks = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("Filters") filters: option<aggregateConformancePackComplianceFilters>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("AggregateComplianceByConformancePacks") aggregateComplianceByConformancePacks: option<aggregateComplianceByConformancePackList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeAggregateComplianceByConformancePacksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetResourceConfig = {
  type t;
  type request = {
resourceKeys: resourceKeys
}
  type response = {
unprocessedResourceKeys: option<resourceKeys>,
baseConfigurationItems: option<baseConfigurationItems>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "BatchGetResourceConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetAggregateResourceConfig = {
  type t;
  type request = {
@as("ResourceIdentifiers") resourceIdentifiers: resourceIdentifiersList,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("UnprocessedResourceIdentifiers") unprocessedResourceIdentifiers: option<unprocessedResourceIdentifierList>,
@as("BaseConfigurationItems") baseConfigurationItems: option<baseConfigurationItems>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "BatchGetAggregateResourceConfigCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRemediationExceptions = {
  type t;
  type request = {
@as("ExpirationTime") expirationTime: option<date>,
@as("Message") message: option<stringWithCharLimit1024>,
@as("ResourceKeys") resourceKeys: remediationExceptionResourceKeys,
@as("ConfigRuleName") configRuleName: configRuleName
}
  type response = {
@as("FailedBatches") failedBatches: option<failedRemediationExceptionBatches>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutRemediationExceptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationAggregator = {
  type t;
  type request = {
@as("Tags") tags: option<tagsList>,
@as("OrganizationAggregationSource") organizationAggregationSource: option<organizationAggregationSource>,
@as("AccountAggregationSources") accountAggregationSources: option<accountAggregationSourceList>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("ConfigurationAggregator") configurationAggregator: option<configurationAggregator>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutConfigurationAggregatorCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutConfigRule = {
  type t;
  type request = {
@as("Tags") tags: option<tagsList>,
@as("ConfigRule") configRule: configRule
}
  
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetResourceConfigHistory = {
  type t;
  type request = {
nextToken: option<nextToken>,
limit: option<limit>,
chronologicalOrder: option<chronologicalOrder>,
earlierTime: option<earlierTime>,
laterTime: option<laterTime>,
resourceId: resourceId,
resourceType: resourceType
}
  type response = {
nextToken: option<nextToken>,
configurationItems: option<configurationItemList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetResourceConfigHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetConformancePackComplianceDetails = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<getConformancePackComplianceDetailsLimit>,
@as("Filters") filters: option<conformancePackEvaluationFilters>,
@as("ConformancePackName") conformancePackName: conformancePackName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ConformancePackRuleEvaluationResults") conformancePackRuleEvaluationResults: option<conformancePackRuleEvaluationResultsList>,
@as("ConformancePackName") conformancePackName: conformancePackName
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetConformancePackComplianceDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComplianceSummaryByResourceType = {
  type t;
  type request = {
@as("ResourceTypes") resourceTypes: option<resourceTypes>
}
  type response = {
@as("ComplianceSummariesByResourceType") complianceSummariesByResourceType: option<complianceSummariesByResourceType>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetComplianceSummaryByResourceTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComplianceDetailsByResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("ComplianceTypes") complianceTypes: option<complianceTypes>,
@as("ResourceId") resourceId: baseResourceId,
@as("ResourceType") resourceType: stringWithCharLimit256
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("EvaluationResults") evaluationResults: option<evaluationResults>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetComplianceDetailsByResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComplianceDetailsByConfigRule = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("ComplianceTypes") complianceTypes: option<complianceTypes>,
@as("ConfigRuleName") configRuleName: stringWithCharLimit64
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("EvaluationResults") evaluationResults: option<evaluationResults>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetComplianceDetailsByConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAggregateConfigRuleComplianceSummary = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<groupByAPILimit>,
@as("GroupByKey") groupByKey: option<configRuleComplianceSummaryGroupKey>,
@as("Filters") filters: option<configRuleComplianceSummaryFilters>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("AggregateComplianceCounts") aggregateComplianceCounts: option<aggregateComplianceCountList>,
@as("GroupByKey") groupByKey: option<stringWithCharLimit256>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetAggregateConfigRuleComplianceSummaryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAggregateComplianceDetailsByConfigRule = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("ComplianceType") complianceType: option<complianceType>,
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId,
@as("ConfigRuleName") configRuleName: configRuleName,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("AggregateEvaluationResults") aggregateEvaluationResults: option<aggregateEvaluationResultList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "GetAggregateComplianceDetailsByConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRemediationExecutionStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<limit>,
@as("ResourceKeys") resourceKeys: option<resourceKeys>,
@as("ConfigRuleName") configRuleName: configRuleName
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("RemediationExecutionStatuses") remediationExecutionStatuses: option<remediationExecutionStatuses>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeRemediationExecutionStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConformancePacks = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<cosmosPageLimit>,
@as("OrganizationConformancePackNames") organizationConformancePackNames: option<organizationConformancePackNames>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("OrganizationConformancePacks") organizationConformancePacks: option<organizationConformancePacks>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeOrganizationConformancePacksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfigRules = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("Limit") limit: option<cosmosPageLimit>,
@as("OrganizationConfigRuleNames") organizationConfigRuleNames: option<organizationConfigRuleNames>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("OrganizationConfigRules") organizationConfigRules: option<organizationConfigRules>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeOrganizationConfigRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConformancePacks = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<pageSizeLimit>,
@as("ConformancePackNames") conformancePackNames: option<conformancePackNamesList>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ConformancePackDetails") conformancePackDetails: option<conformancePackDetailList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConformancePacksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRecorders = {
  type t;
  type request = {
@as("ConfigurationRecorderNames") configurationRecorderNames: option<configurationRecorderNameList>
}
  type response = {
@as("ConfigurationRecorders") configurationRecorders: option<configurationRecorderList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConfigurationRecordersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeComplianceByResource = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<limit>,
@as("ComplianceTypes") complianceTypes: option<complianceTypes>,
@as("ResourceId") resourceId: option<baseResourceId>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ComplianceByResources") complianceByResources: option<complianceByResources>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeComplianceByResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeComplianceByConfigRule = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("ComplianceTypes") complianceTypes: option<complianceTypes>,
@as("ConfigRuleNames") configRuleNames: option<configRuleNames>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ComplianceByConfigRules") complianceByConfigRules: option<complianceByConfigRules>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeComplianceByConfigRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAggregateComplianceByConfigRules = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("Limit") limit: option<groupByAPILimit>,
@as("Filters") filters: option<configRuleComplianceFilters>,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("AggregateComplianceByConfigRules") aggregateComplianceByConfigRules: option<aggregateComplianceByConfigRuleList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeAggregateComplianceByConfigRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRemediationExceptions = {
  type t;
  type request = {
@as("ResourceKeys") resourceKeys: remediationExceptionResourceKeys,
@as("ConfigRuleName") configRuleName: configRuleName
}
  type response = {
@as("FailedBatches") failedBatches: option<failedDeleteRemediationExceptionsBatches>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DeleteRemediationExceptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationAggregators = {
  type t;
  type request = {
@as("Limit") limit: option<limit>,
@as("NextToken") nextToken: option<string_>,
@as("ConfigurationAggregatorNames") configurationAggregatorNames: option<configurationAggregatorNameList>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ConfigurationAggregators") configurationAggregators: option<configurationAggregatorList>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConfigurationAggregatorsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigRules = {
  type t;
  type request = {
@as("NextToken") nextToken: option<string_>,
@as("ConfigRuleNames") configRuleNames: option<configRuleNames>
}
  type response = {
@as("NextToken") nextToken: option<string_>,
@as("ConfigRules") configRules: option<configRules>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeConfigRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRemediationConfigurations = {
  type t;
  type request = {
@as("ConfigRuleNames") configRuleNames: configRuleNames
}
  type response = {
@as("RemediationConfigurations") remediationConfigurations: option<remediationConfigurations>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "DescribeRemediationConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRemediationConfigurations = {
  type t;
  type request = {
@as("RemediationConfigurations") remediationConfigurations: remediationConfigurations
}
  type response = {
@as("FailedBatches") failedBatches: option<failedRemediationBatches>
}
  @module("@aws-sdk/client-config") @new external new_: (request) => t = "PutRemediationConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
