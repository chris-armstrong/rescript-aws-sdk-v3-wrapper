type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type amazonawsString = string
type stackArn = string
type schemaVersionId = string
type ruleLimit = int;
type retentionPeriodInDays = int;
type retentionConfigurationName = string
type resourceValueType = [@as("RESOURCE_ID") #RESOURCE_ID]
type resourceTypeString = string
type resourceType = [@as("AWS::SSM::FileData") #AWS__SSM__FileData | @as("AWS::SNS::Topic") #AWS__SNS__Topic | @as("AWS::SecretsManager::Secret") #AWS__SecretsManager__Secret | @as("AWS::QLDB::Ledger") #AWS__QLDB__Ledger | @as("AWS::KMS::Key") #AWS__KMS__Key | @as("AWS::SQS::Queue") #AWS__SQS__Queue | @as("AWS::ServiceCatalog::Portfolio") #AWS__ServiceCatalog__Portfolio | @as("AWS::ServiceCatalog::CloudFormationProduct") #AWS__ServiceCatalog__CloudFormationProduct | @as("AWS::ServiceCatalog::CloudFormationProvisionedProduct") #AWS__ServiceCatalog__CloudFormationProvisionedProduct | @as("AWS::CodePipeline::Pipeline") #AWS__CodePipeline__Pipeline | @as("AWS::ApiGatewayV2::Api") #AWS__ApiGatewayV2__Api | @as("AWS::ApiGatewayV2::Stage") #AWS__ApiGatewayV2__Stage | @as("AWS::ApiGateway::RestApi") #AWS__ApiGateway__RestApi | @as("AWS::ApiGateway::Stage") #AWS__ApiGateway__Stage | @as("AWS::Config::ResourceCompliance") #AWS__Config__ResourceCompliance | @as("AWS::Config::ConformancePackCompliance") #AWS__Config__ConformancePackCompliance | @as("AWS::ShieldRegional::Protection") #AWS__ShieldRegional__Protection | @as("AWS::Shield::Protection") #AWS__Shield__Protection | @as("AWS::SSM::PatchCompliance") #AWS__SSM__PatchCompliance | @as("AWS::SSM::AssociationCompliance") #AWS__SSM__AssociationCompliance | @as("AWS::XRay::EncryptionConfig") #AWS__XRay__EncryptionConfig | @as("AWS::WAFv2::ManagedRuleSet") #AWS__WAFv2__ManagedRuleSet | @as("AWS::WAFv2::RegexPatternSet") #AWS__WAFv2__RegexPatternSet | @as("AWS::WAFv2::IPSet") #AWS__WAFv2__IPSet | @as("AWS::WAFv2::RuleGroup") #AWS__WAFv2__RuleGroup | @as("AWS::WAFv2::WebACL") #AWS__WAFv2__WebACL | @as("AWS::ElasticBeanstalk::Environment") #AWS__ElasticBeanstalk__Environment | @as("AWS::ElasticBeanstalk::ApplicationVersion") #AWS__ElasticBeanstalk__ApplicationVersion | @as("AWS::ElasticBeanstalk::Application") #AWS__ElasticBeanstalk__Application | @as("AWS::NetworkFirewall::RuleGroup") #AWS__NetworkFirewall__RuleGroup | @as("AWS::NetworkFirewall::FirewallPolicy") #AWS__NetworkFirewall__FirewallPolicy | @as("AWS::NetworkFirewall::Firewall") #AWS__NetworkFirewall__Firewall | @as("AWS::Lambda::Function") #AWS__Lambda__Function | @as("AWS::CloudFront::StreamingDistribution") #AWS__CloudFront__StreamingDistribution | @as("AWS::CloudFront::Distribution") #AWS__CloudFront__Distribution | @as("AWS::WAFRegional::WebACL") #AWS__WAFRegional__WebACL | @as("AWS::WAFRegional::RuleGroup") #AWS__WAFRegional__RuleGroup | @as("AWS::WAFRegional::Rule") #AWS__WAFRegional__Rule | @as("AWS::WAFRegional::RateBasedRule") #AWS__WAFRegional__RateBasedRule | @as("AWS::WAF::WebACL") #AWS__WAF__WebACL | @as("AWS::WAF::RuleGroup") #AWS__WAF__RuleGroup | @as("AWS::WAF::Rule") #AWS__WAF__Rule | @as("AWS::WAF::RateBasedRule") #AWS__WAF__RateBasedRule | @as("AWS::CodeBuild::Project") #AWS__CodeBuild__Project | @as("AWS::DynamoDB::Table") #AWS__DynamoDB__Table | @as("AWS::AutoScaling::ScheduledAction") #AWS__AutoScaling__ScheduledAction | @as("AWS::AutoScaling::ScalingPolicy") #AWS__AutoScaling__ScalingPolicy | @as("AWS::AutoScaling::LaunchConfiguration") #AWS__AutoScaling__LaunchConfiguration | @as("AWS::AutoScaling::AutoScalingGroup") #AWS__AutoScaling__AutoScalingGroup | @as("AWS::ElasticLoadBalancing::LoadBalancer") #AWS__ElasticLoadBalancing__LoadBalancer | @as("AWS::CloudFormation::Stack") #AWS__CloudFormation__Stack | @as("AWS::CloudWatch::Alarm") #AWS__CloudWatch__Alarm | @as("AWS::SSM::ManagedInstanceInventory") #AWS__SSM__ManagedInstanceInventory | @as("AWS::Redshift::EventSubscription") #AWS__Redshift__EventSubscription | @as("AWS::Redshift::ClusterSubnetGroup") #AWS__Redshift__ClusterSubnetGroup | @as("AWS::Redshift::ClusterSecurityGroup") #AWS__Redshift__ClusterSecurityGroup | @as("AWS::Redshift::ClusterParameterGroup") #AWS__Redshift__ClusterParameterGroup | @as("AWS::Redshift::ClusterSnapshot") #AWS__Redshift__ClusterSnapshot | @as("AWS::Redshift::Cluster") #AWS__Redshift__Cluster | @as("AWS::S3::AccountPublicAccessBlock") #AWS__S3__AccountPublicAccessBlock | @as("AWS::S3::Bucket") #AWS__S3__Bucket | @as("AWS::RDS::EventSubscription") #AWS__RDS__EventSubscription | @as("AWS::RDS::DBClusterSnapshot") #AWS__RDS__DBClusterSnapshot | @as("AWS::RDS::DBCluster") #AWS__RDS__DBCluster | @as("AWS::RDS::DBSnapshot") #AWS__RDS__DBSnapshot | @as("AWS::RDS::DBSecurityGroup") #AWS__RDS__DBSecurityGroup | @as("AWS::RDS::DBSubnetGroup") #AWS__RDS__DBSubnetGroup | @as("AWS::RDS::DBInstance") #AWS__RDS__DBInstance | @as("AWS::ACM::Certificate") #AWS__ACM__Certificate | @as("AWS::ElasticLoadBalancingV2::LoadBalancer") #AWS__ElasticLoadBalancingV2__LoadBalancer | @as("AWS::IAM::User") #AWS__IAM__User | @as("AWS::IAM::Role") #AWS__IAM__Role | @as("AWS::IAM::Policy") #AWS__IAM__Policy | @as("AWS::IAM::Group") #AWS__IAM__Group | @as("AWS::Elasticsearch::Domain") #AWS__Elasticsearch__Domain | @as("AWS::EC2::VPCPeeringConnection") #AWS__EC2__VPCPeeringConnection | @as("AWS::EC2::FlowLog") #AWS__EC2__FlowLog | @as("AWS::EC2::VPCEndpointService") #AWS__EC2__VPCEndpointService | @as("AWS::EC2::VPCEndpoint") #AWS__EC2__VPCEndpoint | @as("AWS::EC2::EgressOnlyInternetGateway") #AWS__EC2__EgressOnlyInternetGateway | @as("AWS::EC2::NatGateway") #AWS__EC2__NatGateway | @as("AWS::EC2::RegisteredHAInstance") #AWS__EC2__RegisteredHAInstance | @as("AWS::EC2::VPNGateway") #AWS__EC2__VPNGateway | @as("AWS::EC2::VPNConnection") #AWS__EC2__VPNConnection | @as("AWS::EC2::VPC") #AWS__EC2__VPC | @as("AWS::EC2::Volume") #AWS__EC2__Volume | @as("AWS::CloudTrail::Trail") #AWS__CloudTrail__Trail | @as("AWS::EC2::Subnet") #AWS__EC2__Subnet | @as("AWS::EC2::SecurityGroup") #AWS__EC2__SecurityGroup | @as("AWS::EC2::RouteTable") #AWS__EC2__RouteTable | @as("AWS::EC2::NetworkInterface") #AWS__EC2__NetworkInterface | @as("AWS::EC2::NetworkAcl") #AWS__EC2__NetworkAcl | @as("AWS::EC2::InternetGateway") #AWS__EC2__InternetGateway | @as("AWS::EC2::Instance") #AWS__EC2__Instance | @as("AWS::EC2::Host") #AWS__EC2__Host | @as("AWS::EC2::EIP") #AWS__EC2__EIP | @as("AWS::EC2::CustomerGateway") #AWS__EC2__CustomerGateway]
type resourceName = string
type resourceId = string
type resourceDeletionTime = Js.Date.t;
type resourceCreationTime = Js.Date.t;
type resourceCountGroupKey = [@as("AWS_REGION") #AWS_REGION | @as("ACCOUNT_ID") #ACCOUNT_ID | @as("RESOURCE_TYPE") #RESOURCE_TYPE]
type remediationTargetType = [@as("SSM_DOCUMENT") #SSM_DOCUMENT]
type remediationExecutionStepState = [@as("FAILED") #FAILED | @as("PENDING") #PENDING | @as("SUCCEEDED") #SUCCEEDED]
type remediationExecutionState = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS | @as("QUEUED") #QUEUED]
type relationshipName = string
type relatedEvent = string
type recorderStatus = [@as("Failure") #Failure | @as("Success") #Success | @as("Pending") #Pending]
type recorderName = string
type queryName = string
type queryId = string
type queryExpression = string
type queryDescription = string
type queryArn = string
type percentage = int;
type parameterValue = string
type parameterName = string
type pageSizeLimit = int;
type owner = [@as("AWS") #AWS | @as("CUSTOM_LAMBDA") #CUSTOM_LAMBDA]
type organizationRuleStatus = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL]
type organizationResourceStatus = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL]
type organizationResourceDetailedStatus = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL]
type organizationConformancePackName = string
type organizationConfigRuleTriggerType = [@as("ScheduledNotification") #ScheduledNotification | @as("OversizedConfigurationItemChangeNotification") #OversizedConfigurationItemChangeNotification | @as("ConfigurationItemChangeNotification") #ConfigurationItemChangeNotification]
type organizationConfigRuleName = string
type orderingTimestamp = Js.Date.t;
type nextToken = string
type name = string
type messageType = [@as("OversizedConfigurationItemChangeNotification") #OversizedConfigurationItemChangeNotification | @as("ScheduledNotification") #ScheduledNotification | @as("ConfigurationSnapshotDeliveryCompleted") #ConfigurationSnapshotDeliveryCompleted | @as("ConfigurationItemChangeNotification") #ConfigurationItemChangeNotification]
type memberAccountRuleStatus = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL]
type maximumExecutionFrequency = [@as("TwentyFour_Hours") #TwentyFour_Hours | @as("Twelve_Hours") #Twelve_Hours | @as("Six_Hours") #Six_Hours | @as("Three_Hours") #Three_Hours | @as("One_Hour") #One_Hour]
type amazonawsLong = float;
type limit = int;
type laterTime = Js.Date.t;
type amazonawsInteger = int;
type includeGlobalResourceTypes = bool;
type groupByAPILimit = int;
type getConformancePackComplianceDetailsLimit = int;
type fieldName = string
type expression = string
type eventSource = [@as("aws.config") #aws_config]
type errorMessage = string
type emptiableStringWithCharLimit256 = string
type earlierTime = Js.Date.t;
type describePendingAggregationRequestsLimit = int;
type describeConformancePackComplianceLimit = int;
type deliveryStatus = [@as("Not_Applicable") #Not_Applicable | @as("Failure") #Failure | @as("Success") #Success]
type deliveryS3KeyPrefix = string
type deliveryS3Bucket = string
type date = Js.Date.t;
type cosmosPageLimit = int;
type conformancePackStatusReason = string
type conformancePackState = [@as("DELETE_FAILED") #DELETE_FAILED | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_COMPLETE") #CREATE_COMPLETE | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type conformancePackName = string
type conformancePackId = string
type conformancePackComplianceType = [@as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA | @as("NON_COMPLIANT") #NON_COMPLIANT | @as("COMPLIANT") #COMPLIANT]
type conformancePackArn = string
type configurationStateId = string
type configurationItemStatus = [@as("ResourceDeletedNotRecorded") #ResourceDeletedNotRecorded | @as("ResourceDeleted") #ResourceDeleted | @as("ResourceNotRecorded") #ResourceNotRecorded | @as("ResourceDiscovered") #ResourceDiscovered | @as("OK") #OK]
type configurationItemMD5Hash = string
type configurationItemCaptureTime = Js.Date.t;
type configurationAggregatorName = string
type configurationAggregatorArn = string
type configuration = string
type configRuleState = [@as("EVALUATING") #EVALUATING | @as("DELETING_RESULTS") #DELETING_RESULTS | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type configRuleName = string
type configRuleComplianceSummaryGroupKey = [@as("AWS_REGION") #AWS_REGION | @as("ACCOUNT_ID") #ACCOUNT_ID]
type complianceType = [@as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA | @as("NOT_APPLICABLE") #NOT_APPLICABLE | @as("NON_COMPLIANT") #NON_COMPLIANT | @as("COMPLIANT") #COMPLIANT]
type chronologicalOrder = [@as("Forward") #Forward | @as("Reverse") #Reverse]
type channelName = string
type amazonawsBoolean = bool;
type baseResourceId = string
type awsRegion = string
type availabilityZone = string
type autoRemediationAttempts = int;
type autoRemediationAttemptSeconds = float;
type annotation = string
type amazonResourceName = string
type allSupported = bool;
type aggregatedSourceType = [@as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type aggregatedSourceStatusType = [@as("OUTDATED") #OUTDATED | @as("SUCCEEDED") #SUCCEEDED | @as("FAILED") #FAILED]
type aggregateConformancePackComplianceSummaryGroupKey = [@as("AWS_REGION") #AWS_REGION | @as("ACCOUNT_ID") #ACCOUNT_ID]
type accountId = string
type aRN = string
type tags = Js.Dict.t< value>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type supplementaryConfiguration = Js.Dict.t< supplementaryConfigurationValue>
type storedQueryMetadata = {
@as("Description") description: queryDescription,
@as("QueryName") queryName: option<queryName>,
@as("QueryArn") queryArn: option<queryArn>,
@as("QueryId") queryId: option<queryId>
}
type storedQuery = {
@as("Expression") expression: queryExpression,
@as("Description") description: queryDescription,
@as("QueryName") queryName: option<queryName>,
@as("QueryArn") queryArn: queryArn,
@as("QueryId") queryId: queryId
}
type statusDetailFilters = {
@as("MemberAccountRuleStatus") memberAccountRuleStatus: memberAccountRuleStatus,
@as("AccountId") accountId: accountId
}
type staticParameterValues = array<stringWithCharLimit256>
type ssmControls = {
@as("ErrorPercentage") errorPercentage: percentage,
@as("ConcurrentExecutionRatePercentage") concurrentExecutionRatePercentage: percentage
}
type sourceDetail = {
@as("MaximumExecutionFrequency") maximumExecutionFrequency: maximumExecutionFrequency,
@as("MessageType") messageType: messageType,
@as("EventSource") eventSource: eventSource
}
type retentionConfigurationNameList = array<retentionConfigurationName>
type retentionConfiguration = {
@as("RetentionPeriodInDays") retentionPeriodInDays: option<retentionPeriodInDays>,
@as("Name") name: option<retentionConfigurationName>
}
type results = array<amazonawsString>
type resourceValue = {
@as("Value") value: option<resourceValueType>
}
type resourceTypesScope = array<stringWithCharLimit256>
type resourceTypes = array<stringWithCharLimit256>
type resourceTypeList = array<resourceType>
type resourceKey = {
@as("resourceId") resourceId: option<resourceId>,
@as("resourceType") resourceType: option<resourceType>
}
type resourceIdentifier = {
@as("resourceDeletionTime") resourceDeletionTime: resourceDeletionTime,
@as("resourceName") resourceName: resourceName,
@as("resourceId") resourceId: resourceId,
@as("resourceType") resourceType: resourceType
}
type resourceIdList = array<resourceId>
type resourceFilters = {
@as("Region") region: awsRegion,
@as("ResourceName") resourceName: resourceName,
@as("ResourceId") resourceId: resourceId,
@as("AccountId") accountId: accountId
}
type resourceCountFilters = {
@as("Region") region: awsRegion,
@as("AccountId") accountId: accountId,
@as("ResourceType") resourceType: resourceType
}
type resourceCount = {
@as("count") count: amazonawsLong,
@as("resourceType") resourceType: resourceType
}
type remediationExecutionStep = {
@as("StopTime") stopTime: date,
@as("StartTime") startTime: date,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("State") state: remediationExecutionStepState,
@as("Name") name: amazonawsString
}
type remediationExceptionResourceKey = {
@as("ResourceId") resourceId: stringWithCharLimit1024,
@as("ResourceType") resourceType: stringWithCharLimit256
}
type remediationException = {
@as("ExpirationTime") expirationTime: date,
@as("Message") message: stringWithCharLimit1024,
@as("ResourceId") resourceId: option<stringWithCharLimit1024>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type relationship = {
@as("relationshipName") relationshipName: relationshipName,
@as("resourceName") resourceName: resourceName,
@as("resourceId") resourceId: resourceId,
@as("resourceType") resourceType: resourceType
}
type relatedEventList = array<relatedEvent>
type reevaluateConfigRuleNames = array<configRuleName>
type pendingAggregationRequest = {
@as("RequesterAwsRegion") requesterAwsRegion: awsRegion,
@as("RequesterAccountId") requesterAccountId: accountId
}
type organizationResourceDetailedStatusFilters = {
@as("Status") status: organizationResourceDetailedStatus,
@as("AccountId") accountId: accountId
}
type organizationConformancePackStatus = {
@as("LastUpdateTime") lastUpdateTime: date,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("Status") status: option<organizationResourceStatus>,
@as("OrganizationConformancePackName") organizationConformancePackName: option<organizationConformancePackName>
}
type organizationConformancePackNames = array<organizationConformancePackName>
type organizationConformancePackDetailedStatus = {
@as("LastUpdateTime") lastUpdateTime: date,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("Status") status: option<organizationResourceDetailedStatus>,
@as("ConformancePackName") conformancePackName: option<stringWithCharLimit256>,
@as("AccountId") accountId: option<accountId>
}
type organizationConfigRuleTriggerTypes = array<organizationConfigRuleTriggerType>
type organizationConfigRuleStatus = {
@as("LastUpdateTime") lastUpdateTime: date,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("OrganizationRuleStatus") organizationRuleStatus: option<organizationRuleStatus>,
@as("OrganizationConfigRuleName") organizationConfigRuleName: option<organizationConfigRuleName>
}
type organizationConfigRuleNames = array<stringWithCharLimit64>
type memberAccountStatus = {
@as("LastUpdateTime") lastUpdateTime: date,
@as("ErrorMessage") errorMessage: amazonawsString,
@as("ErrorCode") errorCode: amazonawsString,
@as("MemberAccountRuleStatus") memberAccountRuleStatus: option<memberAccountRuleStatus>,
@as("ConfigRuleName") configRuleName: option<stringWithCharLimit64>,
@as("AccountId") accountId: option<accountId>
}
type groupedResourceCount = {
@as("ResourceCount") resourceCount: option<amazonawsLong>,
@as("GroupName") groupName: option<stringWithCharLimit256>
}
type fieldInfo = {
@as("Name") name: fieldName
}
type externalEvaluation = {
@as("OrderingTimestamp") orderingTimestamp: option<orderingTimestamp>,
@as("Annotation") annotation: stringWithCharLimit256,
@as("ComplianceType") complianceType: option<complianceType>,
@as("ComplianceResourceId") complianceResourceId: option<baseResourceId>,
@as("ComplianceResourceType") complianceResourceType: option<stringWithCharLimit256>
}
type excludedAccounts = array<accountId>
type evaluationResultQualifier = {
@as("ResourceId") resourceId: baseResourceId,
@as("ResourceType") resourceType: stringWithCharLimit256,
@as("ConfigRuleName") configRuleName: configRuleName
}
type evaluation = {
@as("OrderingTimestamp") orderingTimestamp: option<orderingTimestamp>,
@as("Annotation") annotation: stringWithCharLimit256,
@as("ComplianceType") complianceType: option<complianceType>,
@as("ComplianceResourceId") complianceResourceId: option<baseResourceId>,
@as("ComplianceResourceType") complianceResourceType: option<stringWithCharLimit256>
}
type deliveryChannelNameList = array<channelName>
type controlsList = array<stringWithCharLimit128>
type conformancePackStatusDetail = {
@as("LastUpdateCompletedTime") lastUpdateCompletedTime: date,
@as("LastUpdateRequestedTime") lastUpdateRequestedTime: option<date>,
@as("ConformancePackStatusReason") conformancePackStatusReason: conformancePackStatusReason,
@as("StackArn") stackArn: option<stackArn>,
@as("ConformancePackState") conformancePackState: option<conformancePackState>,
@as("ConformancePackArn") conformancePackArn: option<conformancePackArn>,
@as("ConformancePackId") conformancePackId: option<conformancePackId>,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
type conformancePackNamesToSummarizeList = array<conformancePackName>
type conformancePackNamesList = array<conformancePackName>
type conformancePackInputParameter = {
@as("ParameterValue") parameterValue: option<parameterValue>,
@as("ParameterName") parameterName: option<parameterName>
}
type conformancePackConfigRuleNames = array<stringWithCharLimit64>
type conformancePackComplianceSummary = {
@as("ConformancePackComplianceStatus") conformancePackComplianceStatus: option<conformancePackComplianceType>,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
type conformancePackComplianceResourceIds = array<stringWithCharLimit256>
type configurationRecorderStatus = {
@as("lastStatusChangeTime") lastStatusChangeTime: date,
@as("lastErrorMessage") lastErrorMessage: amazonawsString,
@as("lastErrorCode") lastErrorCode: amazonawsString,
@as("lastStatus") lastStatus: recorderStatus,
@as("recording") recording: amazonawsBoolean,
@as("lastStopTime") lastStopTime: date,
@as("lastStartTime") lastStartTime: date,
@as("name") name: amazonawsString
}
type configurationRecorderNameList = array<recorderName>
type configurationAggregatorNameList = array<configurationAggregatorName>
type configStreamDeliveryInfo = {
@as("lastStatusChangeTime") lastStatusChangeTime: date,
@as("lastErrorMessage") lastErrorMessage: amazonawsString,
@as("lastErrorCode") lastErrorCode: amazonawsString,
@as("lastStatus") lastStatus: deliveryStatus
}
type configSnapshotDeliveryProperties = {
@as("deliveryFrequency") deliveryFrequency: maximumExecutionFrequency
}
type configRuleNames = array<configRuleName>
type configRuleEvaluationStatus = {
@as("FirstEvaluationStarted") firstEvaluationStarted: amazonawsBoolean,
@as("LastErrorMessage") lastErrorMessage: amazonawsString,
@as("LastErrorCode") lastErrorCode: amazonawsString,
@as("LastDeactivatedTime") lastDeactivatedTime: date,
@as("FirstActivatedTime") firstActivatedTime: date,
@as("LastFailedEvaluationTime") lastFailedEvaluationTime: date,
@as("LastSuccessfulEvaluationTime") lastSuccessfulEvaluationTime: date,
@as("LastFailedInvocationTime") lastFailedInvocationTime: date,
@as("LastSuccessfulInvocationTime") lastSuccessfulInvocationTime: date,
@as("ConfigRuleId") configRuleId: amazonawsString,
@as("ConfigRuleArn") configRuleArn: amazonawsString,
@as("ConfigRuleName") configRuleName: configRuleName
}
type configRuleComplianceSummaryFilters = {
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId
}
type configRuleComplianceFilters = {
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId,
@as("ComplianceType") complianceType: complianceType,
@as("ConfigRuleName") configRuleName: configRuleName
}
type configExportDeliveryInfo = {
@as("nextDeliveryTime") nextDeliveryTime: date,
@as("lastSuccessfulTime") lastSuccessfulTime: date,
@as("lastAttemptTime") lastAttemptTime: date,
@as("lastErrorMessage") lastErrorMessage: amazonawsString,
@as("lastErrorCode") lastErrorCode: amazonawsString,
@as("lastStatus") lastStatus: deliveryStatus
}
type complianceTypes = array<complianceType>
type complianceResourceTypes = array<stringWithCharLimit256>
type complianceContributorCount = {
@as("CapExceeded") capExceeded: amazonawsBoolean,
@as("CappedCount") cappedCount: amazonawsInteger
}
type aggregatorRegionList = array<amazonawsString>
type aggregationAuthorization = {
@as("CreationTime") creationTime: date,
@as("AuthorizedAwsRegion") authorizedAwsRegion: awsRegion,
@as("AuthorizedAccountId") authorizedAccountId: accountId,
@as("AggregationAuthorizationArn") aggregationAuthorizationArn: amazonawsString
}
type aggregatedSourceStatusTypeList = array<aggregatedSourceStatusType>
type aggregatedSourceStatus = {
@as("LastErrorMessage") lastErrorMessage: amazonawsString,
@as("LastErrorCode") lastErrorCode: amazonawsString,
@as("LastUpdateTime") lastUpdateTime: date,
@as("LastUpdateStatus") lastUpdateStatus: aggregatedSourceStatusType,
@as("AwsRegion") awsRegion: awsRegion,
@as("SourceType") sourceType: aggregatedSourceType,
@as("SourceId") sourceId: amazonawsString
}
type aggregateResourceIdentifier = {
@as("ResourceName") resourceName: resourceName,
@as("ResourceType") resourceType: option<resourceType>,
@as("ResourceId") resourceId: option<resourceId>,
@as("SourceRegion") sourceRegion: option<awsRegion>,
@as("SourceAccountId") sourceAccountId: option<accountId>
}
type aggregateConformancePackComplianceSummaryFilters = {
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId
}
type aggregateConformancePackComplianceFilters = {
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId,
@as("ComplianceType") complianceType: conformancePackComplianceType,
@as("ConformancePackName") conformancePackName: conformancePackName
}
type aggregateConformancePackComplianceCount = {
@as("NonCompliantConformancePackCount") nonCompliantConformancePackCount: amazonawsInteger,
@as("CompliantConformancePackCount") compliantConformancePackCount: amazonawsInteger
}
type aggregateConformancePackCompliance = {
@as("TotalRuleCount") totalRuleCount: amazonawsInteger,
@as("NonCompliantRuleCount") nonCompliantRuleCount: amazonawsInteger,
@as("CompliantRuleCount") compliantRuleCount: amazonawsInteger,
@as("ComplianceType") complianceType: conformancePackComplianceType
}
type accountAggregationSourceAccountList = array<accountId>
type unprocessedResourceIdentifierList = array<aggregateResourceIdentifier>
type tagsList = array<tag>
type tagList = array<tag>
type storedQueryMetadataList = array<storedQueryMetadata>
type staticValue = {
@as("Values") values: option<staticParameterValues>
}
type sourceDetails = array<sourceDetail>
type scope = {
@as("ComplianceResourceId") complianceResourceId: baseResourceId,
@as("TagValue") tagValue: stringWithCharLimit256,
@as("TagKey") tagKey: stringWithCharLimit128,
@as("ComplianceResourceTypes") complianceResourceTypes: complianceResourceTypes
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
@as("resourceTypes") resourceTypes: resourceTypeList,
@as("includeGlobalResourceTypes") includeGlobalResourceTypes: includeGlobalResourceTypes,
@as("allSupported") allSupported: allSupported
}
type pendingAggregationRequestList = array<pendingAggregationRequest>
type organizationManagedRuleMetadata = {
@as("TagValueScope") tagValueScope: stringWithCharLimit256,
@as("TagKeyScope") tagKeyScope: stringWithCharLimit128,
@as("ResourceIdScope") resourceIdScope: stringWithCharLimit768,
@as("ResourceTypesScope") resourceTypesScope: resourceTypesScope,
@as("MaximumExecutionFrequency") maximumExecutionFrequency: maximumExecutionFrequency,
@as("InputParameters") inputParameters: stringWithCharLimit2048,
@as("RuleIdentifier") ruleIdentifier: option<stringWithCharLimit256>,
@as("Description") description: stringWithCharLimit256Min0
}
type organizationCustomRuleMetadata = {
@as("TagValueScope") tagValueScope: stringWithCharLimit256,
@as("TagKeyScope") tagKeyScope: stringWithCharLimit128,
@as("ResourceIdScope") resourceIdScope: stringWithCharLimit768,
@as("ResourceTypesScope") resourceTypesScope: resourceTypesScope,
@as("MaximumExecutionFrequency") maximumExecutionFrequency: maximumExecutionFrequency,
@as("InputParameters") inputParameters: stringWithCharLimit2048,
@as("OrganizationConfigRuleTriggerTypes") organizationConfigRuleTriggerTypes: option<organizationConfigRuleTriggerTypes>,
@as("LambdaFunctionArn") lambdaFunctionArn: option<stringWithCharLimit256>,
@as("Description") description: stringWithCharLimit256Min0
}
type organizationConformancePackStatuses = array<organizationConformancePackStatus>
type organizationConformancePackDetailedStatuses = array<organizationConformancePackDetailedStatus>
type organizationConfigRuleStatuses = array<organizationConfigRuleStatus>
type organizationConfigRuleDetailedStatus = array<memberAccountStatus>
type organizationAggregationSource = {
@as("AllAwsRegions") allAwsRegions: amazonawsBoolean,
@as("AwsRegions") awsRegions: aggregatorRegionList,
@as("RoleArn") roleArn: option<amazonawsString>
}
type groupedResourceCountList = array<groupedResourceCount>
type fieldInfoList = array<fieldInfo>
type executionControls = {
@as("SsmControls") ssmControls: ssmControls
}
type evaluations = array<evaluation>
type evaluationResultIdentifier = {
@as("OrderingTimestamp") orderingTimestamp: date,
@as("EvaluationResultQualifier") evaluationResultQualifier: evaluationResultQualifier
}
type discoveredResourceIdentifierList = array<aggregateResourceIdentifier>
type deliveryChannelStatus = {
@as("configStreamDeliveryInfo") configStreamDeliveryInfo: configStreamDeliveryInfo,
@as("configHistoryDeliveryInfo") configHistoryDeliveryInfo: configExportDeliveryInfo,
@as("configSnapshotDeliveryInfo") configSnapshotDeliveryInfo: configExportDeliveryInfo,
@as("name") name: amazonawsString
}
type deliveryChannel = {
@as("configSnapshotDeliveryProperties") configSnapshotDeliveryProperties: configSnapshotDeliveryProperties,
@as("snsTopicARN") snsTopicARN: amazonawsString,
@as("s3KmsKeyArn") s3KmsKeyArn: amazonawsString,
@as("s3KeyPrefix") s3KeyPrefix: amazonawsString,
@as("s3BucketName") s3BucketName: amazonawsString,
@as("name") name: channelName
}
type conformancePackStatusDetailsList = array<conformancePackStatusDetail>
type conformancePackRuleCompliance = {
@as("Controls") controls: controlsList,
@as("ComplianceType") complianceType: conformancePackComplianceType,
@as("ConfigRuleName") configRuleName: configRuleName
}
type conformancePackInputParameters = array<conformancePackInputParameter>
type conformancePackEvaluationFilters = {
@as("ResourceIds") resourceIds: conformancePackComplianceResourceIds,
@as("ResourceType") resourceType: stringWithCharLimit256,
@as("ComplianceType") complianceType: conformancePackComplianceType,
@as("ConfigRuleNames") configRuleNames: conformancePackConfigRuleNames
}
type conformancePackComplianceSummaryList = array<conformancePackComplianceSummary>
type conformancePackComplianceFilters = {
@as("ComplianceType") complianceType: conformancePackComplianceType,
@as("ConfigRuleNames") configRuleNames: conformancePackConfigRuleNames
}
type configurationRecorderStatusList = array<configurationRecorderStatus>
type configRuleEvaluationStatusList = array<configRuleEvaluationStatus>
type complianceSummary = {
@as("ComplianceSummaryTimestamp") complianceSummaryTimestamp: date,
@as("NonCompliantResourceCount") nonCompliantResourceCount: complianceContributorCount,
@as("CompliantResourceCount") compliantResourceCount: complianceContributorCount
}
type compliance = {
@as("ComplianceContributorCount") complianceContributorCount: complianceContributorCount,
@as("ComplianceType") complianceType: complianceType
}
type baseConfigurationItem = {
@as("supplementaryConfiguration") supplementaryConfiguration: supplementaryConfiguration,
@as("configuration") configuration: configuration,
@as("resourceCreationTime") resourceCreationTime: resourceCreationTime,
@as("availabilityZone") availabilityZone: availabilityZone,
@as("awsRegion") awsRegion: awsRegion,
@as("resourceName") resourceName: resourceName,
@as("resourceId") resourceId: resourceId,
@as("resourceType") resourceType: resourceType,
@as("arn") arn: aRN,
@as("configurationStateId") configurationStateId: configurationStateId,
@as("configurationItemStatus") configurationItemStatus: configurationItemStatus,
@as("configurationItemCaptureTime") configurationItemCaptureTime: configurationItemCaptureTime,
@as("accountId") accountId: accountId,
@as("version") version: version
}
type aggregationAuthorizationList = array<aggregationAuthorization>
type aggregatedSourceStatusList = array<aggregatedSourceStatus>
type aggregateConformancePackComplianceSummary = {
@as("GroupName") groupName: stringWithCharLimit256,
@as("ComplianceSummary") complianceSummary: aggregateConformancePackComplianceCount
}
type aggregateComplianceByConformancePack = {
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId,
@as("Compliance") compliance: aggregateConformancePackCompliance,
@as("ConformancePackName") conformancePackName: conformancePackName
}
type accountAggregationSource = {
@as("AwsRegions") awsRegions: aggregatorRegionList,
@as("AllAwsRegions") allAwsRegions: amazonawsBoolean,
@as("AccountIds") accountIds: option<accountAggregationSourceAccountList>
}
type source = {
@as("SourceDetails") sourceDetails: sourceDetails,
@as("SourceIdentifier") sourceIdentifier: option<stringWithCharLimit256>,
@as("Owner") owner: option<owner>
}
type remediationParameterValue = {
@as("StaticValue") staticValue: staticValue,
@as("ResourceValue") resourceValue: resourceValue
}
type remediationExecutionStatus = {
@as("LastUpdatedTime") lastUpdatedTime: date,
@as("InvocationTime") invocationTime: date,
@as("StepDetails") stepDetails: remediationExecutionSteps,
@as("State") state: remediationExecutionState,
@as("ResourceKey") resourceKey: resourceKey
}
type queryInfo = {
@as("SelectFields") selectFields: fieldInfoList
}
type organizationConformancePack = {
@as("LastUpdateTime") lastUpdateTime: option<date>,
@as("ExcludedAccounts") excludedAccounts: excludedAccounts,
@as("ConformancePackInputParameters") conformancePackInputParameters: conformancePackInputParameters,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: deliveryS3KeyPrefix,
@as("DeliveryS3Bucket") deliveryS3Bucket: deliveryS3Bucket,
@as("OrganizationConformancePackArn") organizationConformancePackArn: option<stringWithCharLimit256>,
@as("OrganizationConformancePackName") organizationConformancePackName: option<organizationConformancePackName>
}
type organizationConfigRule = {
@as("LastUpdateTime") lastUpdateTime: date,
@as("ExcludedAccounts") excludedAccounts: excludedAccounts,
@as("OrganizationCustomRuleMetadata") organizationCustomRuleMetadata: organizationCustomRuleMetadata,
@as("OrganizationManagedRuleMetadata") organizationManagedRuleMetadata: organizationManagedRuleMetadata,
@as("OrganizationConfigRuleArn") organizationConfigRuleArn: option<stringWithCharLimit256>,
@as("OrganizationConfigRuleName") organizationConfigRuleName: option<organizationConfigRuleName>
}
type failedRemediationExceptionBatch = {
@as("FailedItems") failedItems: remediationExceptions,
@as("FailureMessage") failureMessage: amazonawsString
}
type failedDeleteRemediationExceptionsBatch = {
@as("FailedItems") failedItems: remediationExceptionResourceKeys,
@as("FailureMessage") failureMessage: amazonawsString
}
type evaluationResult = {
@as("ResultToken") resultToken: amazonawsString,
@as("Annotation") annotation: stringWithCharLimit256,
@as("ConfigRuleInvokedTime") configRuleInvokedTime: date,
@as("ResultRecordedTime") resultRecordedTime: date,
@as("ComplianceType") complianceType: complianceType,
@as("EvaluationResultIdentifier") evaluationResultIdentifier: evaluationResultIdentifier
}
type deliveryChannelStatusList = array<deliveryChannelStatus>
type deliveryChannelList = array<deliveryChannel>
type conformancePackRuleComplianceList = array<conformancePackRuleCompliance>
type conformancePackEvaluationResult = {
@as("Annotation") annotation: annotation,
@as("ResultRecordedTime") resultRecordedTime: option<date>,
@as("ConfigRuleInvokedTime") configRuleInvokedTime: option<date>,
@as("EvaluationResultIdentifier") evaluationResultIdentifier: option<evaluationResultIdentifier>,
@as("ComplianceType") complianceType: option<conformancePackComplianceType>
}
type conformancePackDetail = {
@as("CreatedBy") createdBy: stringWithCharLimit256,
@as("LastUpdateRequestedTime") lastUpdateRequestedTime: date,
@as("ConformancePackInputParameters") conformancePackInputParameters: conformancePackInputParameters,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: deliveryS3KeyPrefix,
@as("DeliveryS3Bucket") deliveryS3Bucket: deliveryS3Bucket,
@as("ConformancePackId") conformancePackId: option<conformancePackId>,
@as("ConformancePackArn") conformancePackArn: option<conformancePackArn>,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
type configurationRecorder = {
@as("recordingGroup") recordingGroup: recordingGroup,
@as("roleARN") roleARN: amazonawsString,
@as("name") name: recorderName
}
type configurationItem = {
@as("supplementaryConfiguration") supplementaryConfiguration: supplementaryConfiguration,
@as("configuration") configuration: configuration,
@as("relationships") relationships: relationshipList,
@as("relatedEvents") relatedEvents: relatedEventList,
@as("tags") tags: tags,
@as("resourceCreationTime") resourceCreationTime: resourceCreationTime,
@as("availabilityZone") availabilityZone: availabilityZone,
@as("awsRegion") awsRegion: awsRegion,
@as("resourceName") resourceName: resourceName,
@as("resourceId") resourceId: resourceId,
@as("resourceType") resourceType: resourceType,
@as("arn") arn: aRN,
@as("configurationItemMD5Hash") configurationItemMD5Hash: configurationItemMD5Hash,
@as("configurationStateId") configurationStateId: configurationStateId,
@as("configurationItemStatus") configurationItemStatus: configurationItemStatus,
@as("configurationItemCaptureTime") configurationItemCaptureTime: configurationItemCaptureTime,
@as("accountId") accountId: accountId,
@as("version") version: version
}
type complianceSummaryByResourceType = {
@as("ComplianceSummary") complianceSummary: complianceSummary,
@as("ResourceType") resourceType: stringWithCharLimit256
}
type complianceByResource = {
@as("Compliance") compliance: compliance,
@as("ResourceId") resourceId: baseResourceId,
@as("ResourceType") resourceType: stringWithCharLimit256
}
type complianceByConfigRule = {
@as("Compliance") compliance: compliance,
@as("ConfigRuleName") configRuleName: stringWithCharLimit64
}
type baseConfigurationItems = array<baseConfigurationItem>
type aggregateEvaluationResult = {
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId,
@as("Annotation") annotation: stringWithCharLimit256,
@as("ConfigRuleInvokedTime") configRuleInvokedTime: date,
@as("ResultRecordedTime") resultRecordedTime: date,
@as("ComplianceType") complianceType: complianceType,
@as("EvaluationResultIdentifier") evaluationResultIdentifier: evaluationResultIdentifier
}
type aggregateConformancePackComplianceSummaryList = array<aggregateConformancePackComplianceSummary>
type aggregateComplianceCount = {
@as("ComplianceSummary") complianceSummary: complianceSummary,
@as("GroupName") groupName: stringWithCharLimit256
}
type aggregateComplianceByConformancePackList = array<aggregateComplianceByConformancePack>
type aggregateComplianceByConfigRule = {
@as("AwsRegion") awsRegion: awsRegion,
@as("AccountId") accountId: accountId,
@as("Compliance") compliance: compliance,
@as("ConfigRuleName") configRuleName: configRuleName
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
@as("CreatedBy") createdBy: stringWithCharLimit256,
@as("LastUpdatedTime") lastUpdatedTime: date,
@as("CreationTime") creationTime: date,
@as("OrganizationAggregationSource") organizationAggregationSource: organizationAggregationSource,
@as("AccountAggregationSources") accountAggregationSources: accountAggregationSourceList,
@as("ConfigurationAggregatorArn") configurationAggregatorArn: configurationAggregatorArn,
@as("ConfigurationAggregatorName") configurationAggregatorName: configurationAggregatorName
}
type configRule = {
@as("CreatedBy") createdBy: stringWithCharLimit256,
@as("ConfigRuleState") configRuleState: configRuleState,
@as("MaximumExecutionFrequency") maximumExecutionFrequency: maximumExecutionFrequency,
@as("InputParameters") inputParameters: stringWithCharLimit1024,
@as("Source") source: option<source>,
@as("Scope") scope: scope,
@as("Description") description: emptiableStringWithCharLimit256,
@as("ConfigRuleId") configRuleId: stringWithCharLimit64,
@as("ConfigRuleArn") configRuleArn: stringWithCharLimit256,
@as("ConfigRuleName") configRuleName: configRuleName
}
type complianceSummariesByResourceType = array<complianceSummaryByResourceType>
type complianceByResources = array<complianceByResource>
type complianceByConfigRules = array<complianceByConfigRule>
type aggregateEvaluationResultList = array<aggregateEvaluationResult>
type aggregateComplianceCountList = array<aggregateComplianceCount>
type aggregateComplianceByConfigRuleList = array<aggregateComplianceByConfigRule>
type remediationConfiguration = {
@as("CreatedByService") createdByService: stringWithCharLimit1024,
@as("Arn") arn: stringWithCharLimit1024,
@as("RetryAttemptSeconds") retryAttemptSeconds: autoRemediationAttemptSeconds,
@as("MaximumAutomaticAttempts") maximumAutomaticAttempts: autoRemediationAttempts,
@as("ExecutionControls") executionControls: executionControls,
@as("Automatic") automatic: amazonawsBoolean,
@as("ResourceType") resourceType: amazonawsString,
@as("Parameters") parameters: remediationParameters,
@as("TargetVersion") targetVersion: amazonawsString,
@as("TargetId") targetId: option<stringWithCharLimit256>,
@as("TargetType") targetType: option<remediationTargetType>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
type configurationAggregatorList = array<configurationAggregator>
type configRules = array<configRule>
type remediationConfigurations = array<remediationConfiguration>
type failedRemediationBatch = {
@as("FailedItems") failedItems: remediationConfigurations,
@as("FailureMessage") failureMessage: amazonawsString
}
type failedRemediationBatches = array<failedRemediationBatch>
type clientType;
@module("@aws-sdk/client-config") @new external createClient: unit => clientType = "ConfigClient";
module StopConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorderName") configurationRecorderName: option<recorderName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "StopConfigurationRecorderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorderName") configurationRecorderName: option<recorderName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "StartConfigurationRecorderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeliverConfigSnapshot = {
  type t;
  type request = {
@as("deliveryChannelName") deliveryChannelName: option<channelName>
}
  type response = {
@as("configSnapshotId") configSnapshotId: amazonawsString
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeliverConfigSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteStoredQuery = {
  type t;
  type request = {
@as("QueryName") queryName: option<queryName>
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteStoredQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRetentionConfiguration = {
  type t;
  type request = {
@as("RetentionConfigurationName") retentionConfigurationName: option<retentionConfigurationName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteRetentionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourceConfig = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceId>,
@as("ResourceType") resourceType: option<resourceTypeString>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteResourceConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRemediationConfiguration = {
  type t;
  type request = {
@as("ResourceType") resourceType: amazonawsString,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteRemediationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePendingAggregationRequest = {
  type t;
  type request = {
@as("RequesterAwsRegion") requesterAwsRegion: option<awsRegion>,
@as("RequesterAccountId") requesterAccountId: option<accountId>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeletePendingAggregationRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteOrganizationConformancePack = {
  type t;
  type request = {
@as("OrganizationConformancePackName") organizationConformancePackName: option<organizationConformancePackName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteOrganizationConformancePackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteOrganizationConfigRule = {
  type t;
  type request = {
@as("OrganizationConfigRuleName") organizationConfigRuleName: option<organizationConfigRuleName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteOrganizationConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteEvaluationResults = {
  type t;
  type request = {
@as("ConfigRuleName") configRuleName: option<stringWithCharLimit64>
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteEvaluationResultsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDeliveryChannel = {
  type t;
  type request = {
@as("DeliveryChannelName") deliveryChannelName: option<channelName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteDeliveryChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConformancePack = {
  type t;
  type request = {
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteConformancePackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorderName") configurationRecorderName: option<recorderName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationRecorderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigurationAggregator = {
  type t;
  type request = {
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigurationAggregatorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteConfigRule = {
  type t;
  type request = {
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteAggregationAuthorization = {
  type t;
  type request = {
@as("AuthorizedAwsRegion") authorizedAwsRegion: option<awsRegion>,
@as("AuthorizedAccountId") authorizedAccountId: option<accountId>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteAggregationAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartConfigRulesEvaluation = {
  type t;
  type request = {
@as("ConfigRuleNames") configRuleNames: reevaluateConfigRuleNames
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "StartConfigRulesEvaluationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRetentionConfiguration = {
  type t;
  type request = {
@as("RetentionPeriodInDays") retentionPeriodInDays: option<retentionPeriodInDays>
}
  type response = {
@as("RetentionConfiguration") retentionConfiguration: retentionConfiguration
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutRetentionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourceConfig = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("Configuration") configuration: option<configuration>,
@as("ResourceName") resourceName: resourceName,
@as("ResourceId") resourceId: option<resourceId>,
@as("SchemaVersionId") schemaVersionId: option<schemaVersionId>,
@as("ResourceType") resourceType: option<resourceTypeString>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutResourceConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutExternalEvaluation = {
  type t;
  type request = {
@as("ExternalEvaluation") externalEvaluation: option<externalEvaluation>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  type response = unit
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutExternalEvaluationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStoredQuery = {
  type t;
  type request = {
@as("QueryName") queryName: option<queryName>
}
  type response = {
@as("StoredQuery") storedQuery: storedQuery
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetStoredQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module StartRemediationExecution = {
  type t;
  type request = {
@as("ResourceKeys") resourceKeys: option<resourceKeys>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  type response = {
@as("FailedItems") failedItems: resourceKeys,
@as("FailureMessage") failureMessage: amazonawsString
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "StartRemediationExecutionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutStoredQuery = {
  type t;
  type request = {
@as("Tags") tags: tagsList,
@as("StoredQuery") storedQuery: option<storedQuery>
}
  type response = {
@as("QueryArn") queryArn: queryArn
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutStoredQueryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutOrganizationConformancePack = {
  type t;
  type request = {
@as("ExcludedAccounts") excludedAccounts: excludedAccounts,
@as("ConformancePackInputParameters") conformancePackInputParameters: conformancePackInputParameters,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: deliveryS3KeyPrefix,
@as("DeliveryS3Bucket") deliveryS3Bucket: deliveryS3Bucket,
@as("TemplateBody") templateBody: templateBody,
@as("TemplateS3Uri") templateS3Uri: templateS3Uri,
@as("OrganizationConformancePackName") organizationConformancePackName: option<organizationConformancePackName>
}
  type response = {
@as("OrganizationConformancePackArn") organizationConformancePackArn: stringWithCharLimit256
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutOrganizationConformancePackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutOrganizationConfigRule = {
  type t;
  type request = {
@as("ExcludedAccounts") excludedAccounts: excludedAccounts,
@as("OrganizationCustomRuleMetadata") organizationCustomRuleMetadata: organizationCustomRuleMetadata,
@as("OrganizationManagedRuleMetadata") organizationManagedRuleMetadata: organizationManagedRuleMetadata,
@as("OrganizationConfigRuleName") organizationConfigRuleName: option<organizationConfigRuleName>
}
  type response = {
@as("OrganizationConfigRuleArn") organizationConfigRuleArn: stringWithCharLimit256
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutOrganizationConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutEvaluations = {
  type t;
  type request = {
@as("TestMode") testMode: amazonawsBoolean,
@as("ResultToken") resultToken: option<amazonawsString>,
@as("Evaluations") evaluations: evaluations
}
  type response = {
@as("FailedEvaluations") failedEvaluations: evaluations
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutEvaluationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDeliveryChannel = {
  type t;
  type request = {
@as("DeliveryChannel") deliveryChannel: option<deliveryChannel>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutDeliveryChannelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutConformancePack = {
  type t;
  type request = {
@as("ConformancePackInputParameters") conformancePackInputParameters: conformancePackInputParameters,
@as("DeliveryS3KeyPrefix") deliveryS3KeyPrefix: deliveryS3KeyPrefix,
@as("DeliveryS3Bucket") deliveryS3Bucket: deliveryS3Bucket,
@as("TemplateBody") templateBody: templateBody,
@as("TemplateS3Uri") templateS3Uri: templateS3Uri,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
  type response = {
@as("ConformancePackArn") conformancePackArn: conformancePackArn
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutConformancePackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAggregationAuthorization = {
  type t;
  type request = {
@as("Tags") tags: tagsList,
@as("AuthorizedAwsRegion") authorizedAwsRegion: option<awsRegion>,
@as("AuthorizedAccountId") authorizedAccountId: option<accountId>
}
  type response = {
@as("AggregationAuthorization") aggregationAuthorization: aggregationAuthorization
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutAggregationAuthorizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("ResourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStoredQueries = {
  type t;
  type request = {
@as("MaxResults") maxResults: limit,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("StoredQueryMetadata") storedQueryMetadata: storedQueryMetadataList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "ListStoredQueriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDiscoveredResources = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("includeDeletedResources") includeDeletedResources: amazonawsBoolean,
@as("limit") limit: limit,
@as("resourceName") resourceName: resourceName,
@as("resourceIds") resourceIds: resourceIdList,
@as("resourceType") resourceType: option<resourceType>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("resourceIdentifiers") resourceIdentifiers: resourceIdentifierList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "ListDiscoveredResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAggregateDiscoveredResources = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("Filters") filters: resourceFilters,
@as("ResourceType") resourceType: option<resourceType>,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ResourceIdentifiers") resourceIdentifiers: discoveredResourceIdentifierList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "ListAggregateDiscoveredResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationConformancePackDetailedStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: cosmosPageLimit,
@as("Filters") filters: organizationResourceDetailedStatusFilters,
@as("OrganizationConformancePackName") organizationConformancePackName: option<organizationConformancePackName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("OrganizationConformancePackDetailedStatuses") organizationConformancePackDetailedStatuses: organizationConformancePackDetailedStatuses
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetOrganizationConformancePackDetailedStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationConfigRuleDetailedStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: cosmosPageLimit,
@as("Filters") filters: statusDetailFilters,
@as("OrganizationConfigRuleName") organizationConfigRuleName: option<organizationConfigRuleName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("OrganizationConfigRuleDetailedStatus") organizationConfigRuleDetailedStatus: organizationConfigRuleDetailedStatus
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetOrganizationConfigRuleDetailedStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDiscoveredResourceCounts = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("limit") limit: limit,
@as("resourceTypes") resourceTypes: resourceTypes
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("resourceCounts") resourceCounts: resourceCounts,
@as("totalDiscoveredResources") totalDiscoveredResources: amazonawsLong
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetDiscoveredResourceCountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConformancePackComplianceSummary = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: pageSizeLimit,
@as("ConformancePackNames") conformancePackNames: option<conformancePackNamesToSummarizeList>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConformancePackComplianceSummaryList") conformancePackComplianceSummaryList: conformancePackComplianceSummaryList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetConformancePackComplianceSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComplianceSummaryByConfigRule = {
  type t;
  
  type response = {
@as("ComplianceSummary") complianceSummary: complianceSummary
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<unit>) => t = "GetComplianceSummaryByConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAggregateDiscoveredResourceCounts = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: groupByAPILimit,
@as("GroupByKey") groupByKey: resourceCountGroupKey,
@as("Filters") filters: resourceCountFilters,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("GroupedResourceCounts") groupedResourceCounts: groupedResourceCountList,
@as("GroupByKey") groupByKey: stringWithCharLimit256,
@as("TotalDiscoveredResources") totalDiscoveredResources: option<amazonawsLong>
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetAggregateDiscoveredResourceCountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRetentionConfigurations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("RetentionConfigurationNames") retentionConfigurationNames: retentionConfigurationNameList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RetentionConfigurations") retentionConfigurations: retentionConfigurationList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeRetentionConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRemediationExceptions = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: limit,
@as("ResourceKeys") resourceKeys: remediationExceptionResourceKeys,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("RemediationExceptions") remediationExceptions: remediationExceptions
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeRemediationExceptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePendingAggregationRequests = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: describePendingAggregationRequestsLimit
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("PendingAggregationRequests") pendingAggregationRequests: pendingAggregationRequestList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribePendingAggregationRequestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConformancePackStatuses = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: cosmosPageLimit,
@as("OrganizationConformancePackNames") organizationConformancePackNames: organizationConformancePackNames
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("OrganizationConformancePackStatuses") organizationConformancePackStatuses: organizationConformancePackStatuses
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeOrganizationConformancePackStatusesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfigRuleStatuses = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: cosmosPageLimit,
@as("OrganizationConfigRuleNames") organizationConfigRuleNames: organizationConfigRuleNames
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("OrganizationConfigRuleStatuses") organizationConfigRuleStatuses: organizationConfigRuleStatuses
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeOrganizationConfigRuleStatusesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConformancePackStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: pageSizeLimit,
@as("ConformancePackNames") conformancePackNames: conformancePackNamesList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConformancePackStatusDetails") conformancePackStatusDetails: conformancePackStatusDetailsList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConformancePackStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRecorderStatus = {
  type t;
  type request = {
@as("ConfigurationRecorderNames") configurationRecorderNames: configurationRecorderNameList
}
  type response = {
@as("ConfigurationRecordersStatus") configurationRecordersStatus: configurationRecorderStatusList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationRecorderStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationAggregatorSourcesStatus = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: amazonawsString,
@as("UpdateStatus") updateStatus: aggregatedSourceStatusTypeList,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("AggregatedSourceStatusList") aggregatedSourceStatusList: aggregatedSourceStatusList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationAggregatorSourcesStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigRuleEvaluationStatus = {
  type t;
  type request = {
@as("Limit") limit: ruleLimit,
@as("NextToken") nextToken: amazonawsString,
@as("ConfigRuleNames") configRuleNames: configRuleNames
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ConfigRulesEvaluationStatus") configRulesEvaluationStatus: configRuleEvaluationStatusList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigRuleEvaluationStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAggregationAuthorizations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: limit
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("AggregationAuthorizations") aggregationAuthorizations: aggregationAuthorizationList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeAggregationAuthorizationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SelectResourceConfig = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("Expression") expression: option<expression>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("QueryInfo") queryInfo: queryInfo,
@as("Results") results: results
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "SelectResourceConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SelectAggregateResourceConfig = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: limit,
@as("Limit") limit: limit,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>,
@as("Expression") expression: option<expression>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("QueryInfo") queryInfo: queryInfo,
@as("Results") results: results
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "SelectAggregateResourceConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationRecorder = {
  type t;
  type request = {
@as("ConfigurationRecorder") configurationRecorder: option<configurationRecorder>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutConfigurationRecorderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetAggregateResourceConfig = {
  type t;
  type request = {
@as("ResourceIdentifier") resourceIdentifier: option<aggregateResourceIdentifier>,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("ConfigurationItem") configurationItem: configurationItem
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetAggregateResourceConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAggregateConformancePackComplianceSummary = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("GroupByKey") groupByKey: aggregateConformancePackComplianceSummaryGroupKey,
@as("Filters") filters: aggregateConformancePackComplianceSummaryFilters,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("GroupByKey") groupByKey: stringWithCharLimit256,
@as("AggregateConformancePackComplianceSummaries") aggregateConformancePackComplianceSummaries: aggregateConformancePackComplianceSummaryList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetAggregateConformancePackComplianceSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDeliveryChannels = {
  type t;
  type request = {
@as("DeliveryChannelNames") deliveryChannelNames: deliveryChannelNameList
}
  type response = {
@as("DeliveryChannels") deliveryChannels: deliveryChannelList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeDeliveryChannelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDeliveryChannelStatus = {
  type t;
  type request = {
@as("DeliveryChannelNames") deliveryChannelNames: deliveryChannelNameList
}
  type response = {
@as("DeliveryChannelsStatus") deliveryChannelsStatus: deliveryChannelStatusList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeDeliveryChannelStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConformancePackCompliance = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: describeConformancePackComplianceLimit,
@as("Filters") filters: conformancePackComplianceFilters,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConformancePackRuleComplianceList") conformancePackRuleComplianceList: option<conformancePackRuleComplianceList>,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConformancePackComplianceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAggregateComplianceByConformancePacks = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("Filters") filters: aggregateConformancePackComplianceFilters,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AggregateComplianceByConformancePacks") aggregateComplianceByConformancePacks: aggregateComplianceByConformancePackList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeAggregateComplianceByConformancePacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetResourceConfig = {
  type t;
  type request = {
@as("resourceKeys") resourceKeys: option<resourceKeys>
}
  type response = {
@as("unprocessedResourceKeys") unprocessedResourceKeys: resourceKeys,
@as("baseConfigurationItems") baseConfigurationItems: baseConfigurationItems
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "BatchGetResourceConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetAggregateResourceConfig = {
  type t;
  type request = {
@as("ResourceIdentifiers") resourceIdentifiers: option<resourceIdentifiersList>,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("UnprocessedResourceIdentifiers") unprocessedResourceIdentifiers: unprocessedResourceIdentifierList,
@as("BaseConfigurationItems") baseConfigurationItems: baseConfigurationItems
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "BatchGetAggregateResourceConfigCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRemediationExceptions = {
  type t;
  type request = {
@as("ExpirationTime") expirationTime: date,
@as("Message") message: stringWithCharLimit1024,
@as("ResourceKeys") resourceKeys: option<remediationExceptionResourceKeys>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  type response = {
@as("FailedBatches") failedBatches: failedRemediationExceptionBatches
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutRemediationExceptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigurationAggregator = {
  type t;
  type request = {
@as("Tags") tags: tagsList,
@as("OrganizationAggregationSource") organizationAggregationSource: organizationAggregationSource,
@as("AccountAggregationSources") accountAggregationSources: accountAggregationSourceList,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("ConfigurationAggregator") configurationAggregator: configurationAggregator
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutConfigurationAggregatorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutConfigRule = {
  type t;
  type request = {
@as("Tags") tags: tagsList,
@as("ConfigRule") configRule: option<configRule>
}
  
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetResourceConfigHistory = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("limit") limit: limit,
@as("chronologicalOrder") chronologicalOrder: chronologicalOrder,
@as("earlierTime") earlierTime: earlierTime,
@as("laterTime") laterTime: laterTime,
@as("resourceId") resourceId: option<resourceId>,
@as("resourceType") resourceType: option<resourceType>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("configurationItems") configurationItems: configurationItemList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetResourceConfigHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConformancePackComplianceDetails = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: getConformancePackComplianceDetailsLimit,
@as("Filters") filters: conformancePackEvaluationFilters,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConformancePackRuleEvaluationResults") conformancePackRuleEvaluationResults: conformancePackRuleEvaluationResultsList,
@as("ConformancePackName") conformancePackName: option<conformancePackName>
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetConformancePackComplianceDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComplianceSummaryByResourceType = {
  type t;
  type request = {
@as("ResourceTypes") resourceTypes: resourceTypes
}
  type response = {
@as("ComplianceSummariesByResourceType") complianceSummariesByResourceType: complianceSummariesByResourceType
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetComplianceSummaryByResourceTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComplianceDetailsByResource = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ComplianceTypes") complianceTypes: complianceTypes,
@as("ResourceId") resourceId: option<baseResourceId>,
@as("ResourceType") resourceType: option<stringWithCharLimit256>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("EvaluationResults") evaluationResults: evaluationResults
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetComplianceDetailsByResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComplianceDetailsByConfigRule = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("ComplianceTypes") complianceTypes: complianceTypes,
@as("ConfigRuleName") configRuleName: option<stringWithCharLimit64>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EvaluationResults") evaluationResults: evaluationResults
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetComplianceDetailsByConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAggregateConfigRuleComplianceSummary = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: groupByAPILimit,
@as("GroupByKey") groupByKey: configRuleComplianceSummaryGroupKey,
@as("Filters") filters: configRuleComplianceSummaryFilters,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AggregateComplianceCounts") aggregateComplianceCounts: aggregateComplianceCountList,
@as("GroupByKey") groupByKey: stringWithCharLimit256
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetAggregateConfigRuleComplianceSummaryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAggregateComplianceDetailsByConfigRule = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("ComplianceType") complianceType: complianceType,
@as("AwsRegion") awsRegion: option<awsRegion>,
@as("AccountId") accountId: option<accountId>,
@as("ConfigRuleName") configRuleName: option<configRuleName>,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AggregateEvaluationResults") aggregateEvaluationResults: aggregateEvaluationResultList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "GetAggregateComplianceDetailsByConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRemediationExecutionStatus = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: limit,
@as("ResourceKeys") resourceKeys: resourceKeys,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("RemediationExecutionStatuses") remediationExecutionStatuses: remediationExecutionStatuses
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeRemediationExecutionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConformancePacks = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: cosmosPageLimit,
@as("OrganizationConformancePackNames") organizationConformancePackNames: organizationConformancePackNames
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("OrganizationConformancePacks") organizationConformancePacks: organizationConformancePacks
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeOrganizationConformancePacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfigRules = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("Limit") limit: cosmosPageLimit,
@as("OrganizationConfigRuleNames") organizationConfigRuleNames: organizationConfigRuleNames
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("OrganizationConfigRules") organizationConfigRules: organizationConfigRules
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeOrganizationConfigRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConformancePacks = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: pageSizeLimit,
@as("ConformancePackNames") conformancePackNames: conformancePackNamesList
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ConformancePackDetails") conformancePackDetails: conformancePackDetailList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConformancePacksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationRecorders = {
  type t;
  type request = {
@as("ConfigurationRecorderNames") configurationRecorderNames: configurationRecorderNameList
}
  type response = {
@as("ConfigurationRecorders") configurationRecorders: configurationRecorderList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationRecordersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComplianceByResource = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: limit,
@as("ComplianceTypes") complianceTypes: complianceTypes,
@as("ResourceId") resourceId: baseResourceId,
@as("ResourceType") resourceType: stringWithCharLimit256
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ComplianceByResources") complianceByResources: complianceByResources
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeComplianceByResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComplianceByConfigRule = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ComplianceTypes") complianceTypes: complianceTypes,
@as("ConfigRuleNames") configRuleNames: configRuleNames
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ComplianceByConfigRules") complianceByConfigRules: complianceByConfigRules
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeComplianceByConfigRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAggregateComplianceByConfigRules = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("Limit") limit: groupByAPILimit,
@as("Filters") filters: configRuleComplianceFilters,
@as("ConfigurationAggregatorName") configurationAggregatorName: option<configurationAggregatorName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AggregateComplianceByConfigRules") aggregateComplianceByConfigRules: aggregateComplianceByConfigRuleList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeAggregateComplianceByConfigRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRemediationExceptions = {
  type t;
  type request = {
@as("ResourceKeys") resourceKeys: option<remediationExceptionResourceKeys>,
@as("ConfigRuleName") configRuleName: option<configRuleName>
}
  type response = {
@as("FailedBatches") failedBatches: failedDeleteRemediationExceptionsBatches
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DeleteRemediationExceptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigurationAggregators = {
  type t;
  type request = {
@as("Limit") limit: limit,
@as("NextToken") nextToken: amazonawsString,
@as("ConfigurationAggregatorNames") configurationAggregatorNames: configurationAggregatorNameList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ConfigurationAggregators") configurationAggregators: configurationAggregatorList
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigurationAggregatorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConfigRules = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("ConfigRuleNames") configRuleNames: configRuleNames
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ConfigRules") configRules: configRules
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeConfigRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRemediationConfigurations = {
  type t;
  type request = {
@as("ConfigRuleNames") configRuleNames: option<configRuleNames>
}
  type response = {
@as("RemediationConfigurations") remediationConfigurations: remediationConfigurations
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "DescribeRemediationConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRemediationConfigurations = {
  type t;
  type request = {
@as("RemediationConfigurations") remediationConfigurations: option<remediationConfigurations>
}
  type response = {
@as("FailedBatches") failedBatches: failedRemediationBatches
}
  @module("@aws-sdk/client-config") @new external new_: (Js.Promise.t<request>) => t = "PutRemediationConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
