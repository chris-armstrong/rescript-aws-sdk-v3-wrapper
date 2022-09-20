type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-config") @new
external createClient: unit => awsServiceClient = "ConfigClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
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
type resourceValueType = [@as("RESOURCE_ID") #RESOURCE_ID]
type resourceTypeString = string
type resourceType = [
  | @as("AWS::GuardDuty::Detector") #AWS_GuardDuty_Detector
  | @as("AWS::ECR::PublicRepository") #AWS_ECR_PublicRepository
  | @as("AWS::EC2::LaunchTemplate") #AWS_EC2_LaunchTemplate
  | @as("AWS::CodeDeploy::DeploymentGroup") #AWS_CodeDeploy_DeploymentGroup
  | @as("AWS::CodeDeploy::DeploymentConfig") #AWS_CodeDeploy_DeploymentConfig
  | @as("AWS::CodeDeploy::Application") #AWS_CodeDeploy_Application
  | @as("AWS::Kinesis::StreamConsumer") #AWS_Kinesis_StreamConsumer
  | @as("AWS::Kinesis::Stream") #AWS_Kinesis_Stream
  | @as("AWS::EC2::TransitGateway") #AWS_EC2_TransitGateway
  | @as("AWS::OpenSearch::Domain") #AWS_OpenSearch_Domain
  | @as("AWS::EKS::Cluster") #AWS_EKS_Cluster
  | @as("AWS::EFS::FileSystem") #AWS_EFS_FileSystem
  | @as("AWS::EFS::AccessPoint") #AWS_EFS_AccessPoint
  | @as("AWS::ECS::TaskDefinition") #AWS_ECS_TaskDefinition
  | @as("AWS::ECS::Service") #AWS_ECS_Service
  | @as("AWS::ECS::Cluster") #AWS_ECS_Cluster
  | @as("AWS::ECR::Repository") #AWS_ECR_Repository
  | @as("AWS::Backup::RecoveryPoint") #AWS_Backup_RecoveryPoint
  | @as("AWS::Backup::BackupVault") #AWS_Backup_BackupVault
  | @as("AWS::Backup::BackupSelection") #AWS_Backup_BackupSelection
  | @as("AWS::Backup::BackupPlan") #AWS_Backup_BackupPlan
  | @as("AWS::SSM::FileData") #AWS_SSM_FileData
  | @as("AWS::SNS::Topic") #AWS_SNS_Topic
  | @as("AWS::SecretsManager::Secret") #AWS_SecretsManager_Secret
  | @as("AWS::QLDB::Ledger") #AWS_QLDB_Ledger
  | @as("AWS::KMS::Key") #AWS_KMS_Key
  | @as("AWS::SQS::Queue") #AWS_SQS_Queue
  | @as("AWS::ServiceCatalog::Portfolio") #AWS_ServiceCatalog_Portfolio
  | @as("AWS::ServiceCatalog::CloudFormationProduct") #AWS_ServiceCatalog_CloudFormationProduct
  | @as("AWS::ServiceCatalog::CloudFormationProvisionedProduct")
  #AWS_ServiceCatalog_CloudFormationProvisionedProduct
  | @as("AWS::CodePipeline::Pipeline") #AWS_CodePipeline_Pipeline
  | @as("AWS::ApiGatewayV2::Api") #AWS_ApiGatewayV2_Api
  | @as("AWS::ApiGatewayV2::Stage") #AWS_ApiGatewayV2_Stage
  | @as("AWS::ApiGateway::RestApi") #AWS_ApiGateway_RestApi
  | @as("AWS::ApiGateway::Stage") #AWS_ApiGateway_Stage
  | @as("AWS::Config::ResourceCompliance") #AWS_Config_ResourceCompliance
  | @as("AWS::Config::ConformancePackCompliance") #AWS_Config_ConformancePackCompliance
  | @as("AWS::ShieldRegional::Protection") #AWS_ShieldRegional_Protection
  | @as("AWS::Shield::Protection") #AWS_Shield_Protection
  | @as("AWS::SSM::PatchCompliance") #AWS_SSM_PatchCompliance
  | @as("AWS::SSM::AssociationCompliance") #AWS_SSM_AssociationCompliance
  | @as("AWS::XRay::EncryptionConfig") #AWS_XRay_EncryptionConfig
  | @as("AWS::WAFv2::ManagedRuleSet") #AWS_WAFv2_ManagedRuleSet
  | @as("AWS::WAFv2::RegexPatternSet") #AWS_WAFv2_RegexPatternSet
  | @as("AWS::WAFv2::IPSet") #AWS_WAFv2_IPSet
  | @as("AWS::WAFv2::RuleGroup") #AWS_WAFv2_RuleGroup
  | @as("AWS::WAFv2::WebACL") #AWS_WAFv2_WebACL
  | @as("AWS::ElasticBeanstalk::Environment") #AWS_ElasticBeanstalk_Environment
  | @as("AWS::ElasticBeanstalk::ApplicationVersion") #AWS_ElasticBeanstalk_ApplicationVersion
  | @as("AWS::ElasticBeanstalk::Application") #AWS_ElasticBeanstalk_Application
  | @as("AWS::NetworkFirewall::RuleGroup") #AWS_NetworkFirewall_RuleGroup
  | @as("AWS::NetworkFirewall::FirewallPolicy") #AWS_NetworkFirewall_FirewallPolicy
  | @as("AWS::NetworkFirewall::Firewall") #AWS_NetworkFirewall_Firewall
  | @as("AWS::Lambda::Function") #AWS_Lambda_Function
  | @as("AWS::CloudFront::StreamingDistribution") #AWS_CloudFront_StreamingDistribution
  | @as("AWS::CloudFront::Distribution") #AWS_CloudFront_Distribution
  | @as("AWS::WAFRegional::WebACL") #AWS_WAFRegional_WebACL
  | @as("AWS::WAFRegional::RuleGroup") #AWS_WAFRegional_RuleGroup
  | @as("AWS::WAFRegional::Rule") #AWS_WAFRegional_Rule
  | @as("AWS::WAFRegional::RateBasedRule") #AWS_WAFRegional_RateBasedRule
  | @as("AWS::WAF::WebACL") #AWS_WAF_WebACL
  | @as("AWS::WAF::RuleGroup") #AWS_WAF_RuleGroup
  | @as("AWS::WAF::Rule") #AWS_WAF_Rule
  | @as("AWS::WAF::RateBasedRule") #AWS_WAF_RateBasedRule
  | @as("AWS::CodeBuild::Project") #AWS_CodeBuild_Project
  | @as("AWS::DynamoDB::Table") #AWS_DynamoDB_Table
  | @as("AWS::AutoScaling::ScheduledAction") #AWS_AutoScaling_ScheduledAction
  | @as("AWS::AutoScaling::ScalingPolicy") #AWS_AutoScaling_ScalingPolicy
  | @as("AWS::AutoScaling::LaunchConfiguration") #AWS_AutoScaling_LaunchConfiguration
  | @as("AWS::AutoScaling::AutoScalingGroup") #AWS_AutoScaling_AutoScalingGroup
  | @as("AWS::ElasticLoadBalancing::LoadBalancer") #AWS_ElasticLoadBalancing_LoadBalancer
  | @as("AWS::CloudFormation::Stack") #AWS_CloudFormation_Stack
  | @as("AWS::CloudWatch::Alarm") #AWS_CloudWatch_Alarm
  | @as("AWS::SSM::ManagedInstanceInventory") #AWS_SSM_ManagedInstanceInventory
  | @as("AWS::Redshift::EventSubscription") #AWS_Redshift_EventSubscription
  | @as("AWS::Redshift::ClusterSubnetGroup") #AWS_Redshift_ClusterSubnetGroup
  | @as("AWS::Redshift::ClusterSecurityGroup") #AWS_Redshift_ClusterSecurityGroup
  | @as("AWS::Redshift::ClusterParameterGroup") #AWS_Redshift_ClusterParameterGroup
  | @as("AWS::Redshift::ClusterSnapshot") #AWS_Redshift_ClusterSnapshot
  | @as("AWS::Redshift::Cluster") #AWS_Redshift_Cluster
  | @as("AWS::S3::AccountPublicAccessBlock") #AWS_S3_AccountPublicAccessBlock
  | @as("AWS::S3::Bucket") #AWS_S3_Bucket
  | @as("AWS::RDS::EventSubscription") #AWS_RDS_EventSubscription
  | @as("AWS::RDS::DBClusterSnapshot") #AWS_RDS_DBClusterSnapshot
  | @as("AWS::RDS::DBCluster") #AWS_RDS_DBCluster
  | @as("AWS::RDS::DBSnapshot") #AWS_RDS_DBSnapshot
  | @as("AWS::RDS::DBSecurityGroup") #AWS_RDS_DBSecurityGroup
  | @as("AWS::RDS::DBSubnetGroup") #AWS_RDS_DBSubnetGroup
  | @as("AWS::RDS::DBInstance") #AWS_RDS_DBInstance
  | @as("AWS::ACM::Certificate") #AWS_ACM_Certificate
  | @as("AWS::ElasticLoadBalancingV2::LoadBalancer") #AWS_ElasticLoadBalancingV2_LoadBalancer
  | @as("AWS::IAM::User") #AWS_IAM_User
  | @as("AWS::IAM::Role") #AWS_IAM_Role
  | @as("AWS::IAM::Policy") #AWS_IAM_Policy
  | @as("AWS::IAM::Group") #AWS_IAM_Group
  | @as("AWS::Elasticsearch::Domain") #AWS_Elasticsearch_Domain
  | @as("AWS::EC2::VPCPeeringConnection") #AWS_EC2_VPCPeeringConnection
  | @as("AWS::EC2::FlowLog") #AWS_EC2_FlowLog
  | @as("AWS::EC2::VPCEndpointService") #AWS_EC2_VPCEndpointService
  | @as("AWS::EC2::VPCEndpoint") #AWS_EC2_VPCEndpoint
  | @as("AWS::EC2::EgressOnlyInternetGateway") #AWS_EC2_EgressOnlyInternetGateway
  | @as("AWS::EC2::NatGateway") #AWS_EC2_NatGateway
  | @as("AWS::EC2::RegisteredHAInstance") #AWS_EC2_RegisteredHAInstance
  | @as("AWS::EC2::VPNGateway") #AWS_EC2_VPNGateway
  | @as("AWS::EC2::VPNConnection") #AWS_EC2_VPNConnection
  | @as("AWS::EC2::VPC") #AWS_EC2_VPC
  | @as("AWS::EC2::Volume") #AWS_EC2_Volume
  | @as("AWS::CloudTrail::Trail") #AWS_CloudTrail_Trail
  | @as("AWS::EC2::Subnet") #AWS_EC2_Subnet
  | @as("AWS::EC2::SecurityGroup") #AWS_EC2_SecurityGroup
  | @as("AWS::EC2::RouteTable") #AWS_EC2_RouteTable
  | @as("AWS::EC2::NetworkInterface") #AWS_EC2_NetworkInterface
  | @as("AWS::EC2::NetworkAcl") #AWS_EC2_NetworkAcl
  | @as("AWS::EC2::InternetGateway") #AWS_EC2_InternetGateway
  | @as("AWS::EC2::Instance") #AWS_EC2_Instance
  | @as("AWS::EC2::Host") #AWS_EC2_Host
  | @as("AWS::EC2::EIP") #AWS_EC2_EIP
  | @as("AWS::EC2::CustomerGateway") #AWS_EC2_CustomerGateway
]
type resourceName = string
type resourceId = string
type resourceDeletionTime = Js.Date.t
type resourceCreationTime = Js.Date.t
type resourceCountGroupKey = [
  | @as("AWS_REGION") #AWS_REGION
  | @as("ACCOUNT_ID") #ACCOUNT_ID
  | @as("RESOURCE_TYPE") #RESOURCE_TYPE
]
type remediationTargetType = [@as("SSM_DOCUMENT") #SSM_DOCUMENT]
type remediationExecutionStepState = [
  | @as("FAILED") #FAILED
  | @as("PENDING") #PENDING
  | @as("SUCCEEDED") #SUCCEEDED
]
type remediationExecutionState = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("QUEUED") #QUEUED
]
type relationshipName = string
type relatedEvent = string
type recorderStatus = [@as("Failure") #Failure | @as("Success") #Success | @as("Pending") #Pending]
type recorderName = string
type queryName = string
type queryId = string
type queryExpression = string
type queryDescription = string
type queryArn = string
type policyText = string
type policyRuntime = string
type percentage = int
type parameterValue = string
type parameterName = string
type pageSizeLimit = int
type owner = [
  | @as("CUSTOM_POLICY") #CUSTOM_POLICY
  | @as("AWS") #AWS
  | @as("CUSTOM_LAMBDA") #CUSTOM_LAMBDA
]
type organizationRuleStatus = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
  | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL
]
type organizationResourceStatus = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
  | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL
]
type organizationResourceDetailedStatus = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
  | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL
]
type organizationConformancePackName = string
type organizationConfigRuleTriggerTypeNoSN = [
  | @as("OversizedConfigurationItemChangeNotification")
  #OversizedConfigurationItemChangeNotification
  | @as("ConfigurationItemChangeNotification") #ConfigurationItemChangeNotification
]
type organizationConfigRuleTriggerType = [
  | @as("ScheduledNotification") #ScheduledNotification
  | @as("OversizedConfigurationItemChangeNotification")
  #OversizedConfigurationItemChangeNotification
  | @as("ConfigurationItemChangeNotification") #ConfigurationItemChangeNotification
]
type organizationConfigRuleName = string
type orderingTimestamp = Js.Date.t
type nextToken = string
type name = string
type messageType = [
  | @as("OversizedConfigurationItemChangeNotification")
  #OversizedConfigurationItemChangeNotification
  | @as("ScheduledNotification") #ScheduledNotification
  | @as("ConfigurationSnapshotDeliveryCompleted") #ConfigurationSnapshotDeliveryCompleted
  | @as("ConfigurationItemChangeNotification") #ConfigurationItemChangeNotification
]
type memberAccountRuleStatus = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS
  | @as("UPDATE_SUCCESSFUL") #UPDATE_SUCCESSFUL
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_SUCCESSFUL") #DELETE_SUCCESSFUL
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
  | @as("CREATE_SUCCESSFUL") #CREATE_SUCCESSFUL
]
type maximumExecutionFrequency = [
  | @as("TwentyFour_Hours") #TwentyFour_Hours
  | @as("Twelve_Hours") #Twelve_Hours
  | @as("Six_Hours") #Six_Hours
  | @as("Three_Hours") #Three_Hours
  | @as("One_Hour") #One_Hour
]
type long = float
type limit = int
type laterTime = Js.Date.t
type integer_ = int
type includeGlobalResourceTypes = bool
type groupByAPILimit = int
type getConformancePackComplianceDetailsLimit = int
type fieldName = string
type expression = string
type eventSource = [@as("aws.config") #Aws_Config]
type errorMessage = string
type emptiableStringWithCharLimit256 = string
type earlierTime = Js.Date.t
type describePendingAggregationRequestsLimit = int
type describeConformancePackComplianceLimit = int
type deliveryStatus = [
  | @as("Not_Applicable") #Not_Applicable
  | @as("Failure") #Failure
  | @as("Success") #Success
]
type deliveryS3KeyPrefix = string
type deliveryS3Bucket = string
type date = Js.Date.t
type cosmosPageLimit = int
type conformancePackStatusReason = string
type conformancePackState = [
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type conformancePackName = string
type conformancePackId = string
type conformancePackComplianceType = [
  | @as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA
  | @as("NON_COMPLIANT") #NON_COMPLIANT
  | @as("COMPLIANT") #COMPLIANT
]
type conformancePackArn = string
type configurationStateId = string
type configurationItemStatus = [
  | @as("ResourceDeletedNotRecorded") #ResourceDeletedNotRecorded
  | @as("ResourceDeleted") #ResourceDeleted
  | @as("ResourceNotRecorded") #ResourceNotRecorded
  | @as("ResourceDiscovered") #ResourceDiscovered
  | @as("OK") #OK
]
type configurationItemMD5Hash = string
type configurationItemCaptureTime = Js.Date.t
type configurationAggregatorName = string
type configurationAggregatorArn = string
type configuration = string
type configRuleState = [
  | @as("EVALUATING") #EVALUATING
  | @as("DELETING_RESULTS") #DELETING_RESULTS
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
]
type configRuleName = string
type configRuleComplianceSummaryGroupKey = [
  | @as("AWS_REGION") #AWS_REGION
  | @as("ACCOUNT_ID") #ACCOUNT_ID
]
type complianceType = [
  | @as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
  | @as("NON_COMPLIANT") #NON_COMPLIANT
  | @as("COMPLIANT") #COMPLIANT
]
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
type aggregatedSourceStatusType = [
  | @as("OUTDATED") #OUTDATED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("FAILED") #FAILED
]
type aggregateConformancePackComplianceSummaryGroupKey = [
  | @as("AWS_REGION") #AWS_REGION
  | @as("ACCOUNT_ID") #ACCOUNT_ID
]
type accountId = string
type arn = string
type tags = Js.Dict.t<value>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The tags for the resource. The metadata that you apply to a resource to help you categorize and organize them. 
			Each tag consists of a key and an optional value, both of which you define. 
			Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>")
type tag = {
  @ocaml.doc(
    "<p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>"
  )
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc(
    "<p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
  )
  @as("Key")
  key: option<tagKey>,
}
type supplementaryConfiguration = Js.Dict.t<supplementaryConfigurationValue>
@ocaml.doc("<p>Returns details of a specific query. </p>")
type storedQueryMetadata = {
  @ocaml.doc("<p>A unique description for the query.</p>") @as("Description")
  description: option<queryDescription>,
  @ocaml.doc("<p>The name of the query.</p>") @as("QueryName") queryName: queryName,
  @ocaml.doc(
    "<p>Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>"
  )
  @as("QueryArn")
  queryArn: queryArn,
  @ocaml.doc("<p>The ID of the query. </p>") @as("QueryId") queryId: queryId,
}
@ocaml.doc("<p>Provides the details of a stored query.</p>")
type storedQuery = {
  @ocaml.doc("<p>The expression of the query. For example, <code>SELECT
			resourceId,
			resourceType,
			supplementaryConfiguration.BucketVersioningConfiguration.status
			WHERE
			resourceType = 'AWS::S3::Bucket'
			AND supplementaryConfiguration.BucketVersioningConfiguration.status = 'Off'.</code>
         </p>")
  @as("Expression")
  expression: option<queryExpression>,
  @ocaml.doc("<p>A unique description for the query.</p>") @as("Description")
  description: option<queryDescription>,
  @ocaml.doc("<p>The name of the query.</p>") @as("QueryName") queryName: queryName,
  @ocaml.doc(
    "<p>Amazon Resource Name (ARN) of the query. For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>"
  )
  @as("QueryArn")
  queryArn: option<queryArn>,
  @ocaml.doc("<p>The ID of the query.</p>") @as("QueryId") queryId: option<queryId>,
}
@ocaml.doc(
  "<p>Status filter object to filter results based on specific member account ID or status type for an organization Config rule. </p>"
)
type statusDetailFilters = {
  @ocaml.doc("<p>Indicates deployment status for Config rule in the member account.
			When master account calls <code>PutOrganizationConfigRule</code> action for the first time, Config rule status is created in the member account. 
			When master account calls <code>PutOrganizationConfigRule</code> action for the second time, Config rule status is updated in the member account.   
			Config rule status is deleted when the master account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
			</p>
		       <p>Config sets the state of the rule to:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATE_SUCCESSFUL</code> when Config rule has been created in the member account.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> when Config rule is being created in the member account.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> when Config rule creation has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> when Config rule deletion has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_IN_PROGRESS</code> when Config rule is being deleted in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_SUCCESSFUL</code> when Config rule has been deleted in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_SUCCESSFUL</code> when Config rule has been updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_IN_PROGRESS</code> when Config rule is being updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_FAILED</code> when Config rule deletion has failed in the member account.</p>
            </li>
         </ul>")
  @as("MemberAccountRuleStatus")
  memberAccountRuleStatus: option<memberAccountRuleStatus>,
  @ocaml.doc("<p>The 12-digit account ID of the member account within an organization.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
type staticParameterValues = array<stringWithCharLimit256>
@ocaml.doc("<p>Amazon Web Services Systems Manager (SSM) specific remediation controls.</p>")
type ssmControls = {
  @ocaml.doc("<p>The percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule.
			You can specify a percentage of errors, for example 10%. If you do not specifiy a percentage, the default is 50%. 
			For example, if you set the ErrorPercentage to 40% for 10 non-compliant resources, then SSM stops running the automations when the fifth error is received. </p>")
  @as("ErrorPercentage")
  errorPercentage: option<percentage>,
  @ocaml.doc(
    "<p>The maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. You can specify a percentage, such as 10%. The default value is 10. </p>"
  )
  @as("ConcurrentExecutionRatePercentage")
  concurrentExecutionRatePercentage: option<percentage>,
}
@ocaml.doc("<p>Provides the source and the message types that trigger Config to evaluate your Amazon Web Services resources against a rule. It also
			provides the frequency with which you want Config to run
			evaluations for the rule if the trigger type is periodic. You can
			specify the parameter values for <code>SourceDetail</code> only for
			custom rules. </p>")
type sourceDetail = {
  @ocaml.doc("<p>The frequency at which you want Config to run evaluations
			for a custom rule with a periodic trigger. If you specify a value
			for <code>MaximumExecutionFrequency</code>, then
				<code>MessageType</code> must use the
				<code>ScheduledNotification</code> value.</p>


		

		       <note>
			         <p>By default, rules with a periodic trigger are evaluated
				every 24 hours. To change the frequency, specify a valid value
				for the <code>MaximumExecutionFrequency</code>
				parameter.</p>
			         <p>Based on the valid value you choose, Config runs
				evaluations once for each valid value. For example, if you
				choose <code>Three_Hours</code>, Config runs evaluations
				once every three hours. In this case, <code>Three_Hours</code>
				is the frequency of this rule. </p>
		       </note>")
  @as("MaximumExecutionFrequency")
  maximumExecutionFrequency: option<maximumExecutionFrequency>,
  @ocaml.doc("<p>The type of notification that triggers Config to run an
			evaluation for a rule. You can specify the following notification
			types:</p>


		       <ul>
            <li>
				           <p>
					             <code>ConfigurationItemChangeNotification</code> - Triggers
					an evaluation when Config delivers a configuration item
					as a result of a resource change.</p>
			         </li>
            <li>
				           <p>
                  <code>OversizedConfigurationItemChangeNotification</code>
					- Triggers an evaluation when Config delivers an
					oversized configuration item. Config may generate this
					notification type when a resource changes and the
					notification exceeds the maximum size allowed by Amazon
					SNS.</p>
			         </li>
            <li>
				           <p>
                  <code>ScheduledNotification</code> - Triggers a
					periodic evaluation at the frequency specified for
						<code>MaximumExecutionFrequency</code>.</p>
			         </li>
            <li>
				           <p>
                  <code>ConfigurationSnapshotDeliveryCompleted</code> -
					Triggers a periodic evaluation when Config delivers a
					configuration snapshot.</p>
			         </li>
         </ul>

		       <p>If you want your custom rule to be triggered by configuration
			changes, specify two SourceDetail objects, one for
				<code>ConfigurationItemChangeNotification</code> and one for
				<code>OversizedConfigurationItemChangeNotification</code>.</p>")
  @as("MessageType")
  messageType: option<messageType>,
  @ocaml.doc("<p>The source of the event, such as an Amazon Web Services service, that triggers
			Config to evaluate your Amazon Web Services resources.</p>")
  @as("EventSource")
  eventSource: option<eventSource>,
}
type retentionConfigurationNameList = array<retentionConfigurationName>
@ocaml.doc(
  "<p>An object with the name of the retention configuration and the retention period in days. The object stores the configuration for data retention in Config.</p>"
)
type retentionConfiguration = {
  @ocaml.doc("<p>Number of days Config stores your historical information.</p>
		       <note>
            <p>Currently, only applicable to the configuration item history.</p>
         </note>")
  @as("RetentionPeriodInDays")
  retentionPeriodInDays: retentionPeriodInDays,
  @ocaml.doc("<p>The name of the retention configuration object.</p>") @as("Name")
  name: retentionConfigurationName,
}
type results = array<string_>
@ocaml.doc("<p>The dynamic value of the resource.</p>")
type resourceValue = {
  @ocaml.doc("<p>The value is a resource ID.</p>") @as("Value") value: resourceValueType,
}
type resourceTypesScope = array<stringWithCharLimit256>
type resourceTypes = array<stringWithCharLimit256>
type resourceTypeList = array<resourceType>
@ocaml.doc("<p>The details that identify a resource within Config, including
			the resource type and resource ID.</p>")
type resourceKey = {
  @ocaml.doc("<p>The ID of the resource (for example., sg-xxxxxx). </p>") resourceId: resourceId,
  @ocaml.doc("<p>The resource type.</p>") resourceType: resourceType,
}
@ocaml.doc("<p>The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the
			custom resource name.</p>")
type resourceIdentifier = {
  @ocaml.doc("<p>The time that the resource was deleted.</p>")
  resourceDeletionTime: option<resourceDeletionTime>,
  @ocaml.doc("<p>The custom name of the resource (if available).</p>")
  resourceName: option<resourceName>,
  @ocaml.doc("<p>The ID of the resource (for example,
			<code>sg-xxxxxx</code>).</p>")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The type of resource.</p>") resourceType: option<resourceType>,
}
type resourceIdList = array<resourceId>
@ocaml.doc(
  "<p>Filters the results by resource account ID, region, resource ID, and resource name.</p>"
)
type resourceFilters = {
  @ocaml.doc("<p>The source region.</p>") @as("Region") region: option<awsRegion>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("ResourceName")
  resourceName: option<resourceName>,
  @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: option<resourceId>,
  @ocaml.doc("<p>The 12-digit source account ID.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>Filters the resource count based on account ID, region, and resource type.</p>")
type resourceCountFilters = {
  @ocaml.doc("<p>The region where the account is located.</p>") @as("Region")
  region: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit ID of the account.</p>") @as("AccountId")
  accountId: option<accountId>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource.</p>") @as("ResourceType")
  resourceType: option<resourceType>,
}
@ocaml.doc("<p>An object that contains the resource type and the number of
			resources.</p>")
type resourceCount = {
  @ocaml.doc("<p>The number of resources.</p>") count: option<long>,
  @ocaml.doc("<p>The resource type (for example,
				<code>\"AWS::EC2::Instance\"</code>).</p>")
  resourceType: option<resourceType>,
}
@ocaml.doc("<p>Name of the step from the SSM document.</p>")
type remediationExecutionStep = {
  @ocaml.doc("<p>The time when the step stopped.</p>") @as("StopTime") stopTime: option<date>,
  @ocaml.doc("<p>The time when the step started.</p>") @as("StartTime") startTime: option<date>,
  @ocaml.doc("<p>An error message if the step was interrupted during execution.</p>")
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The valid status of the step.</p>") @as("State")
  state: option<remediationExecutionStepState>,
  @ocaml.doc("<p>The details of the step.</p>") @as("Name") name: option<string_>,
}
@ocaml.doc(
  "<p>The details that identify a resource within Config, including the resource type and resource ID. </p>"
)
type remediationExceptionResourceKey = {
  @ocaml.doc("<p>The ID of the resource (for example., sg-xxxxxx).</p>") @as("ResourceId")
  resourceId: option<stringWithCharLimit1024>,
  @ocaml.doc("<p>The type of a resource.</p>") @as("ResourceType")
  resourceType: option<stringWithCharLimit256>,
}
@ocaml.doc(
  "<p>An object that represents the details about the remediation exception. The details include the rule name, an explanation of an exception, the time when the exception will be deleted, the resource ID, and resource type. </p>"
)
type remediationException = {
  @ocaml.doc("<p>The time when the remediation exception will be deleted.</p>")
  @as("ExpirationTime")
  expirationTime: option<date>,
  @ocaml.doc("<p>An explanation of an remediation exception.</p>") @as("Message")
  message: option<stringWithCharLimit1024>,
  @ocaml.doc("<p>The ID of the resource (for example., sg-xxxxxx).</p>") @as("ResourceId")
  resourceId: stringWithCharLimit1024,
  @ocaml.doc("<p>The type of a resource.</p>") @as("ResourceType")
  resourceType: stringWithCharLimit256,
  @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
  configRuleName: configRuleName,
}
@ocaml.doc("<p>The relationship of the related resource to the main
			resource.</p>")
type relationship = {
  @ocaml.doc("<p>The type of relationship with the related resource.</p>")
  relationshipName: option<relationshipName>,
  @ocaml.doc("<p>The custom name of the related resource, if
			available.</p>")
  resourceName: option<resourceName>,
  @ocaml.doc("<p>The ID of the related resource (for example,
				<code>sg-xxxxxx</code>).</p>")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The resource type of the related resource.</p>")
  resourceType: option<resourceType>,
}
type relatedEventList = array<relatedEvent>
type reevaluateConfigRuleNames = array<configRuleName>
@ocaml.doc("<p>An object that represents the account ID and region of an
			aggregator account that is requesting authorization but is not yet
			authorized.</p>")
type pendingAggregationRequest = {
  @ocaml.doc("<p>The region requesting to aggregate data. </p>") @as("RequesterAwsRegion")
  requesterAwsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit account ID of the account requesting to aggregate
			data.</p>")
  @as("RequesterAccountId")
  requesterAccountId: option<accountId>,
}
@ocaml.doc(
  "<p>Status filter object to filter results based on specific member account ID or status type for an organization conformance pack.</p>"
)
type organizationResourceDetailedStatusFilters = {
  @ocaml.doc("<p>Indicates deployment status for conformance pack in a member account.
			When master account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account. 
			When master account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account.   
			Conformance pack status is deleted when the master account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
		</p>
		       <p> Config sets the state of the conformance pack to:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p>
            </li>
            <li>
               <p>
                  <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<organizationResourceDetailedStatus>,
  @ocaml.doc("<p>The 12-digit account ID of the member account within an organization.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>Returns the status for an organization conformance pack in an organization.</p>")
type organizationConformancePackStatus = {
  @ocaml.doc("<p>The timestamp of the last update.</p>") @as("LastUpdateTime")
  lastUpdateTime: option<date>,
  @ocaml.doc(
    "<p>An error message indicating that organization conformance pack creation or deletion failed due to an error. </p>"
  )
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc(
    "<p>An error code that is returned when organization conformance pack creation or deletion has failed in a member account. </p>"
  )
  @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>Indicates deployment status of an organization conformance pack. 
			When master account calls PutOrganizationConformancePack for the first time, 
			conformance pack status is created in all the member accounts. 
			When master account calls PutOrganizationConformancePack for the second time, 
			conformance pack status is updated in all the member accounts. 
			Additionally, conformance pack status is updated when one or more member accounts join or leave an 
			organization.   
			Conformance pack status is deleted when the master account deletes 
			OrganizationConformancePack in all the member accounts and disables service 
			access for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
		       <p>Config sets the state of the conformance pack to:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATE_SUCCESSFUL</code> when an organization conformance pack has been successfully created in all the member accounts. </p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> when an organization conformance pack creation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> when an organization conformance pack creation failed in one or more member accounts within that organization.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> when an organization conformance pack deletion failed in one or more member accounts within that organization.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_IN_PROGRESS</code> when an organization conformance pack deletion is in progress.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_SUCCESSFUL</code> when an organization conformance pack has been successfully deleted from all the member accounts.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_SUCCESSFUL</code> when an organization conformance pack has been successfully updated in all the member accounts.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_IN_PROGRESS</code> when an organization conformance pack update is in progress.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_FAILED</code> when an organization conformance pack update failed in one or more member accounts within that organization.</p>
            </li>
         </ul>")
  @as("Status")
  status: organizationResourceStatus,
  @ocaml.doc("<p>The name that you assign to organization conformance pack.</p>")
  @as("OrganizationConformancePackName")
  organizationConformancePackName: organizationConformancePackName,
}
type organizationConformancePackNames = array<organizationConformancePackName>
@ocaml.doc("<p>Organization conformance pack creation or deletion status in each member account. 
			This includes the name of the conformance pack, the status, error code and error message 
			when the conformance pack creation or deletion failed. </p>")
type organizationConformancePackDetailedStatus = {
  @ocaml.doc("<p>The timestamp of the last status update.</p>") @as("LastUpdateTime")
  lastUpdateTime: option<date>,
  @ocaml.doc("<p>An error message indicating that conformance pack account creation or deletion 
			has failed due to an error in the member account. </p>")
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc("<p>An error code that is returned when conformance pack creation or 
			deletion failed in the member account. </p>")
  @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>Indicates deployment status for conformance pack in a member account.
			When master account calls <code>PutOrganizationConformancePack</code> action for the first time, conformance pack status is created in the member account. 
			When master account calls <code>PutOrganizationConformancePack</code> action for the second time, conformance pack status is updated in the member account.   
			Conformance pack status is deleted when the master account deletes <code>OrganizationConformancePack</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
		</p>
		       <p> Config sets the state of the conformance pack to:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATE_SUCCESSFUL</code> when conformance pack has been created in the member account. </p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> when conformance pack is being created in the member account.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> when conformance pack creation has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_IN_PROGRESS</code> when conformance pack is being deleted in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_SUCCESSFUL</code> when conformance pack has been deleted in the member account. </p>
            </li>
            <li>
               <p>
                  <code>UPDATE_SUCCESSFUL</code> when conformance pack has been updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_IN_PROGRESS</code> when conformance pack is being updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_FAILED</code> when conformance pack deletion has failed in the member account.</p>
            </li>
         </ul>")
  @as("Status")
  status: organizationResourceDetailedStatus,
  @ocaml.doc("<p>The name of conformance pack deployed in the member account.</p>")
  @as("ConformancePackName")
  conformancePackName: stringWithCharLimit256,
  @ocaml.doc("<p>The 12-digit account ID of a member account.</p>") @as("AccountId")
  accountId: accountId,
}
type organizationConfigRuleTriggerTypes = array<organizationConfigRuleTriggerType>
type organizationConfigRuleTriggerTypeNoSNs = array<organizationConfigRuleTriggerTypeNoSN>
@ocaml.doc("<p>Returns the status for an organization Config rule in an organization.</p>")
type organizationConfigRuleStatus = {
  @ocaml.doc("<p>The timestamp of the last update.</p>") @as("LastUpdateTime")
  lastUpdateTime: option<date>,
  @ocaml.doc(
    "<p>An error message indicating that organization Config rule creation or deletion failed due to an error.</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc(
    "<p>An error code that is returned when organization Config rule creation or deletion has failed.</p>"
  )
  @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>Indicates deployment status of an organization Config rule. 
			When master account calls PutOrganizationConfigRule action for the first time, Config rule status is created in all the member accounts. 
			When master account calls PutOrganizationConfigRule action for the second time, Config rule status is updated in all the member accounts. Additionally, Config rule status is updated when one or more member accounts join or leave an organization.   
			Config rule status is deleted when the master account deletes OrganizationConfigRule in all the member accounts and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>.</p>
			      <p>Config sets the state of the rule to:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATE_SUCCESSFUL</code> when an organization Config rule has been successfully created in all the member accounts. </p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> when an organization Config rule creation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> when an organization Config rule creation failed in one or more member accounts within that organization.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> when an organization Config rule deletion failed in one or more member accounts within that organization.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_IN_PROGRESS</code> when an organization Config rule deletion is in progress.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_SUCCESSFUL</code> when an organization Config rule has been successfully deleted from all the member accounts.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_SUCCESSFUL</code> when an organization Config rule has been successfully updated in all the member accounts.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_IN_PROGRESS</code> when an organization Config rule update is in progress.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_FAILED</code> when an organization Config rule update failed in one or more member accounts within that organization.</p>
            </li>
         </ul>")
  @as("OrganizationRuleStatus")
  organizationRuleStatus: organizationRuleStatus,
  @ocaml.doc("<p>The name that you assign to organization Config rule.</p>")
  @as("OrganizationConfigRuleName")
  organizationConfigRuleName: organizationConfigRuleName,
}
type organizationConfigRuleNames = array<stringWithCharLimit64>
@ocaml.doc(
  "<p>Organization Config rule creation or deletion status in each member account. This includes the name of the rule, the status, error code and error message when the rule creation or deletion failed.</p>"
)
type memberAccountStatus = {
  @ocaml.doc("<p>The timestamp of the last status update.</p>") @as("LastUpdateTime")
  lastUpdateTime: option<date>,
  @ocaml.doc(
    "<p>An error message indicating that Config rule account creation or deletion has failed due to an error in the member account.</p>"
  )
  @as("ErrorMessage")
  errorMessage: option<string_>,
  @ocaml.doc(
    "<p>An error code that is returned when Config rule creation or deletion failed in the member account.</p>"
  )
  @as("ErrorCode")
  errorCode: option<string_>,
  @ocaml.doc("<p>Indicates deployment status for Config rule in the member account.
			When master account calls <code>PutOrganizationConfigRule</code> action for the first time, Config rule status is created in the member account. 
			When master account calls <code>PutOrganizationConfigRule</code> action for the second time, Config rule status is updated in the member account.   
			Config rule status is deleted when the master account deletes <code>OrganizationConfigRule</code> and disables service access for <code>config-multiaccountsetup.amazonaws.com</code>. 
		</p>
		       <p> Config sets the state of the rule to:</p>
		       <ul>
            <li>
               <p>
                  <code>CREATE_SUCCESSFUL</code> when Config rule has been created in the member account. </p>
            </li>
            <li>
               <p>
                  <code>CREATE_IN_PROGRESS</code> when Config rule is being created in the member account.</p>
            </li>
            <li>
               <p>
                  <code>CREATE_FAILED</code> when Config rule creation has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_FAILED</code> when Config rule deletion has failed in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_IN_PROGRESS</code> when Config rule is being deleted in the member account.</p>
            </li>
            <li>
               <p>
                  <code>DELETE_SUCCESSFUL</code> when Config rule has been deleted in the member account. </p>
            </li>
            <li>
               <p>
                  <code>UPDATE_SUCCESSFUL</code> when Config rule has been updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_IN_PROGRESS</code> when Config rule is being updated in the member account.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_FAILED</code> when Config rule deletion has failed in the member account.</p>
            </li>
         </ul>")
  @as("MemberAccountRuleStatus")
  memberAccountRuleStatus: memberAccountRuleStatus,
  @ocaml.doc("<p>The name of Config rule deployed in the member account.</p>") @as("ConfigRuleName")
  configRuleName: stringWithCharLimit64,
  @ocaml.doc("<p>The 12-digit account ID of a member account.</p>") @as("AccountId")
  accountId: accountId,
}
@ocaml.doc("<p>The count of resources that are grouped by the group name.</p>")
type groupedResourceCount = {
  @ocaml.doc("<p>The number of resources in the group.</p>") @as("ResourceCount")
  resourceCount: long,
  @ocaml.doc(
    "<p>The name of the group that can be region, account ID, or resource type. For example, region1, region2 if the region was chosen as <code>GroupByKey</code>.</p>"
  )
  @as("GroupName")
  groupName: stringWithCharLimit256,
}
@ocaml.doc("<p>Details about the fields such as name of the field.</p>")
type fieldInfo = {@ocaml.doc("<p>Name of the field.</p>") @as("Name") name: option<fieldName>}
@ocaml.doc(
  "<p>Identifies an Amazon Web Services resource and indicates whether it complies with the Config rule that it was evaluated against.</p>"
)
type externalEvaluation = {
  @ocaml.doc("<p>The time when the compliance was recorded. </p>") @as("OrderingTimestamp")
  orderingTimestamp: orderingTimestamp,
  @ocaml.doc(
    "<p>Supplementary information about the reason of compliance. For example, this task was completed on a specific date.</p>"
  )
  @as("Annotation")
  annotation: option<stringWithCharLimit256>,
  @ocaml.doc(
    "<p>The compliance of the Amazon Web Services resource. The valid values are <code>COMPLIANT, NON_COMPLIANT, </code> and <code>NOT_APPLICABLE</code>.</p>"
  )
  @as("ComplianceType")
  complianceType: complianceType,
  @ocaml.doc(
    "<p>The evaluated compliance resource ID. Config accepts only Amazon Web Services account ID.</p>"
  )
  @as("ComplianceResourceId")
  complianceResourceId: baseResourceId,
  @ocaml.doc(
    "<p>The evaluated compliance resource type. Config accepts <code>AWS::::Account</code> resource type.</p>"
  )
  @as("ComplianceResourceType")
  complianceResourceType: stringWithCharLimit256,
}
type excludedAccounts = array<accountId>
@ocaml.doc("<p>Identifies an Config rule that evaluated an Amazon Web Services resource,
			and provides the type and ID of the resource that the rule
			evaluated.</p>")
type evaluationResultQualifier = {
  @ocaml.doc("<p>The ID of the evaluated Amazon Web Services resource.</p>") @as("ResourceId")
  resourceId: option<baseResourceId>,
  @ocaml.doc("<p>The type of Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceType")
  resourceType: option<stringWithCharLimit256>,
  @ocaml.doc("<p>The name of the Config rule that was used in the
			evaluation.</p>")
  @as("ConfigRuleName")
  configRuleName: option<configRuleName>,
}
@ocaml.doc("<p>Identifies an Amazon Web Services resource and indicates whether it complies
			with the Config rule that it was evaluated against.</p>")
type evaluation = {
  @ocaml.doc("<p>The time of the event in Config that triggered the
			evaluation. For event-based evaluations, the time indicates when Config created the configuration item that triggered the evaluation.
			For periodic evaluations, the time indicates when Config
			triggered the evaluation at the frequency that you specified (for
			example, every 24 hours).</p>")
  @as("OrderingTimestamp")
  orderingTimestamp: orderingTimestamp,
  @ocaml.doc("<p>Supplementary information about how the evaluation determined
			the compliance.</p>")
  @as("Annotation")
  annotation: option<stringWithCharLimit256>,
  @ocaml.doc("<p>Indicates whether the Amazon Web Services resource complies with the Config
			rule that it was evaluated against.</p>
		       <p>For the <code>Evaluation</code> data type, Config supports
			only the <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and
				<code>NOT_APPLICABLE</code> values. Config does not support
			the <code>INSUFFICIENT_DATA</code> value for this data
			type.</p>
		       <p>Similarly, Config does not accept
				<code>INSUFFICIENT_DATA</code> as the value for
				<code>ComplianceType</code> from a <code>PutEvaluations</code>
			request. For example, an Lambda function for a custom Config
			rule cannot pass an <code>INSUFFICIENT_DATA</code> value to Config.</p>")
  @as("ComplianceType")
  complianceType: complianceType,
  @ocaml.doc("<p>The ID of the Amazon Web Services resource that was evaluated.</p>")
  @as("ComplianceResourceId")
  complianceResourceId: baseResourceId,
  @ocaml.doc("<p>The type of Amazon Web Services resource that was evaluated.</p>")
  @as("ComplianceResourceType")
  complianceResourceType: stringWithCharLimit256,
}
type deliveryChannelNameList = array<channelName>
type debugLogDeliveryAccounts = array<accountId>
@ocaml.doc("<p>Provides the runtime system, policy definition, and whether debug logging enabled. You can
			specify the following CustomPolicyDetails parameter values 
			only
			for Config Custom Policy rules.</p>")
type customPolicyDetails = {
  @ocaml.doc(
    "<p>The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is <code>false</code>.</p>"
  )
  @as("EnableDebugLogDelivery")
  enableDebugLogDelivery: option<boolean_>,
  @ocaml.doc(
    "<p>The policy definition containing the logic for your Config Custom Policy rule.</p>"
  )
  @as("PolicyText")
  policyText: policyText,
  @ocaml.doc("<p>The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href=\"https://github.com/aws-cloudformation/cloudformation-guard\">Guard GitHub
					Repository</a>.</p>")
  @as("PolicyRuntime")
  policyRuntime: policyRuntime,
}
type controlsList = array<stringWithCharLimit128>
@ocaml.doc("<p>Status details of a conformance pack.</p>")
type conformancePackStatusDetail = {
  @ocaml.doc("<p>Last time when conformation pack creation and update was successful.</p>")
  @as("LastUpdateCompletedTime")
  lastUpdateCompletedTime: option<date>,
  @ocaml.doc("<p>Last time when conformation pack creation and update was requested.</p>")
  @as("LastUpdateRequestedTime")
  lastUpdateRequestedTime: date,
  @ocaml.doc("<p>The reason of conformance pack creation failure.</p>")
  @as("ConformancePackStatusReason")
  conformancePackStatusReason: option<conformancePackStatusReason>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of CloudFormation stack. </p>") @as("StackArn")
  stackArn: stackArn,
  @ocaml.doc("<p>Indicates deployment status of conformance pack.</p>
		       <p>Config sets the state of the conformance pack to:</p>
		       <ul>
            <li>
               <p>CREATE_IN_PROGRESS when a conformance pack creation is in progress for an account.</p>
            </li>
            <li>
               <p>CREATE_COMPLETE when a conformance pack has been successfully created in your account.</p>
            </li>
            <li>
               <p>CREATE_FAILED when a conformance pack creation failed in your account.</p>
            </li>
            <li>
               <p>DELETE_IN_PROGRESS when a conformance pack deletion is in progress. </p>
            </li>
            <li>
               <p>DELETE_FAILED when a conformance pack deletion failed in your account.</p>
            </li>
         </ul>")
  @as("ConformancePackState")
  conformancePackState: conformancePackState,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of comformance pack.</p>") @as("ConformancePackArn")
  conformancePackArn: conformancePackArn,
  @ocaml.doc("<p>ID of the conformance pack.</p>") @as("ConformancePackId")
  conformancePackId: conformancePackId,
  @ocaml.doc("<p>Name of the conformance pack.</p>") @as("ConformancePackName")
  conformancePackName: conformancePackName,
}
type conformancePackNamesToSummarizeList = array<conformancePackName>
type conformancePackNamesList = array<conformancePackName>
@ocaml.doc("<p>Input parameters in the form of key-value pairs for the conformance pack, both of which you define. 
			Keys can have a maximum character length of 255 characters, and values can have a maximum length of 4096 characters.</p>")
type conformancePackInputParameter = {
  @ocaml.doc("<p>Another part of the key-value pair. </p>") @as("ParameterValue")
  parameterValue: parameterValue,
  @ocaml.doc("<p>One part of a key-value pair.</p>") @as("ParameterName")
  parameterName: parameterName,
}
type conformancePackConfigRuleNames = array<stringWithCharLimit64>
@ocaml.doc("<p>Summary includes the name and status of the conformance pack.</p>")
type conformancePackComplianceSummary = {
  @ocaml.doc(
    "<p>The status of the conformance pack. The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code> and <code>INSUFFICIENT_DATA</code>.</p>"
  )
  @as("ConformancePackComplianceStatus")
  conformancePackComplianceStatus: conformancePackComplianceType,
  @ocaml.doc("<p>The name of the conformance pack name.</p>") @as("ConformancePackName")
  conformancePackName: conformancePackName,
}
type conformancePackComplianceResourceIds = array<stringWithCharLimit256>
@ocaml.doc("<p>The current status of the configuration recorder.</p>")
type configurationRecorderStatus = {
  @ocaml.doc("<p>The time when the status was last changed.</p>")
  lastStatusChangeTime: option<date>,
  @ocaml.doc("<p>The message indicating that the recording failed due to an
			error.</p>")
  lastErrorMessage: option<string_>,
  @ocaml.doc("<p>The error code indicating that the recording failed.</p>")
  lastErrorCode: option<string_>,
  @ocaml.doc("<p>The last (previous) status of the recorder.</p>")
  lastStatus: option<recorderStatus>,
  @ocaml.doc("<p>Specifies whether or not the recorder is currently
			recording.</p>")
  recording: option<boolean_>,
  @ocaml.doc("<p>The time the recorder was last stopped.</p>") lastStopTime: option<date>,
  @ocaml.doc("<p>The time the recorder was last started.</p>") lastStartTime: option<date>,
  @ocaml.doc("<p>The name of the configuration recorder.</p>") name: option<string_>,
}
type configurationRecorderNameList = array<recorderName>
type configurationAggregatorNameList = array<configurationAggregatorName>
@ocaml.doc("<p>A list that contains the status of the delivery of the
			configuration stream notification to the Amazon SNS topic.</p>")
type configStreamDeliveryInfo = {
  @ocaml.doc("<p>The time from the last status change.</p>") lastStatusChangeTime: option<date>,
  @ocaml.doc("<p>The error message from the last attempted delivery.</p>")
  lastErrorMessage: option<string_>,
  @ocaml.doc("<p>The error code from the last attempted delivery.</p>")
  lastErrorCode: option<string_>,
  @ocaml.doc("<p>Status of the last attempted delivery.</p>
		       <p>
			         <b>Note</b> Providing an SNS topic on a
				<a href=\"https://docs.aws.amazon.com/config/latest/APIReference/API_DeliveryChannel.html\">DeliveryChannel</a> for Config is optional. If the SNS
			delivery is turned off, the last status will be <b>Not_Applicable</b>.</p>")
  lastStatus: option<deliveryStatus>,
}
@ocaml.doc("<p>Provides options for how often Config delivers
			configuration snapshots to the Amazon S3 bucket in your delivery
			channel.</p>

		
		

		       <p>The frequency for a rule that triggers evaluations for your
			resources when Config delivers the configuration snapshot is set
			by one of two values, depending on which is less frequent:</p>

		       <ul>
            <li>
				           <p>The value for the <code>deliveryFrequency</code>
					parameter within the delivery channel configuration, which
					sets how often Config delivers configuration snapshots.
					This value also sets how often Config invokes
					evaluations for Config rules.</p>
			         </li>
            <li>
				           <p>The value for the
						<code>MaximumExecutionFrequency</code> parameter, which
					sets the maximum frequency with which Config invokes
					evaluations for the rule. For more information, see <a>ConfigRule</a>.</p>
			         </li>
         </ul>

		       <p>If the <code>deliveryFrequency</code> value is less frequent
			than the <code>MaximumExecutionFrequency</code> value for a rule,
			Config invokes the rule only as often as the
				<code>deliveryFrequency</code> value.</p>

		       <ol>
            <li>
				           <p>For example, you want your rule to run evaluations when
					Config delivers the configuration snapshot.</p>
			         </li>
            <li>
				           <p>You specify the <code>MaximumExecutionFrequency</code>
					value for <code>Six_Hours</code>. </p>
			         </li>
            <li>
				           <p>You then specify the delivery channel
						<code>deliveryFrequency</code> value for
						<code>TwentyFour_Hours</code>.</p>
			         </li>
            <li>
				           <p>Because the value for <code>deliveryFrequency</code> is
					less frequent than <code>MaximumExecutionFrequency</code>,
					Config invokes evaluations for the rule every 24 hours.
				</p>
			         </li>
         </ol>


		       <p>You should set the <code>MaximumExecutionFrequency</code> value
			to be at least as frequent as the <code>deliveryFrequency</code>
			value. You can view the <code>deliveryFrequency</code> value by
			using the <code>DescribeDeliveryChannnels</code> action.</p>

		       <p>To update the <code>deliveryFrequency</code> with which Config delivers your configuration snapshots, use the
				<code>PutDeliveryChannel</code> action.</p>")
type configSnapshotDeliveryProperties = {
  @ocaml.doc("<p>The frequency with which Config delivers configuration
			snapshots.</p>")
  deliveryFrequency: option<maximumExecutionFrequency>,
}
type configRuleNames = array<configRuleName>
@ocaml.doc("<p>Status information for your Config Managed rules and Config Custom Policy rules. The
			status includes information such as the last time the rule ran, the
			last time it failed, and the related error for the last
			failure.</p>
		       <p>This action does not return status information about Config Custom Lambda rules.</p>")
type configRuleEvaluationStatus = {
  @ocaml.doc(
    "<p>The time Config last attempted to deliver a debug log for your Config Custom Policy rules.</p>"
  )
  @as("LastDebugLogDeliveryTime")
  lastDebugLogDeliveryTime: option<date>,
  @ocaml.doc("<p>The reason Config was not able to deliver a debug log. This is for the last
			failed attempt to retrieve a debug log for your Config Custom Policy rules.</p>")
  @as("LastDebugLogDeliveryStatusReason")
  lastDebugLogDeliveryStatusReason: option<string_>,
  @ocaml.doc(
    "<p>The status of the last attempted delivery of a debug log for your Config Custom Policy rules. Either <code>Successful</code> or <code>Failed</code>.</p>"
  )
  @as("LastDebugLogDeliveryStatus")
  lastDebugLogDeliveryStatus: option<string_>,
  @ocaml.doc("<p>Indicates whether Config has evaluated your resources
			against the rule at least once.</p>
		       <ul>
            <li>
				           <p>
					             <code>true</code> - Config has evaluated your Amazon Web Services
					resources against the rule at least once.</p>
			         </li>
            <li>
				           <p>
					             <code>false</code> - Config has not finished evaluating your Amazon Web Services resources against the
					rule
					at least once.</p>
			         </li>
         </ul>")
  @as("FirstEvaluationStarted")
  firstEvaluationStarted: option<boolean_>,
  @ocaml.doc("<p>The error message that Config returned when the rule last
			failed.</p>")
  @as("LastErrorMessage")
  lastErrorMessage: option<string_>,
  @ocaml.doc("<p>The error code that Config returned when the rule last
			failed.</p>")
  @as("LastErrorCode")
  lastErrorCode: option<string_>,
  @ocaml.doc("<p>The time that you last turned off the Config rule.</p>") @as("LastDeactivatedTime")
  lastDeactivatedTime: option<date>,
  @ocaml.doc("<p>The time that you first activated the Config
			rule.</p>")
  @as("FirstActivatedTime")
  firstActivatedTime: option<date>,
  @ocaml.doc("<p>The time that Config last failed to evaluate your Amazon Web Services
			resources against the rule.</p>")
  @as("LastFailedEvaluationTime")
  lastFailedEvaluationTime: option<date>,
  @ocaml.doc("<p>The time that Config last successfully evaluated your Amazon Web Services
			resources against the rule.</p>")
  @as("LastSuccessfulEvaluationTime")
  lastSuccessfulEvaluationTime: option<date>,
  @ocaml.doc("<p>The time that Config last failed to invoke the Config
			rule to evaluate your Amazon Web Services resources.</p>")
  @as("LastFailedInvocationTime")
  lastFailedInvocationTime: option<date>,
  @ocaml.doc(
    "<p>The time that Config last successfully invoked the Config rule to evaluate your Amazon Web Services resources.</p>"
  )
  @as("LastSuccessfulInvocationTime")
  lastSuccessfulInvocationTime: option<date>,
  @ocaml.doc("<p>The ID of the Config rule.</p>") @as("ConfigRuleId") configRuleId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Config
			rule.</p>")
  @as("ConfigRuleArn")
  configRuleArn: option<string_>,
  @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
  configRuleName: option<configRuleName>,
}
@ocaml.doc("<p>Filters the results based on the account IDs and
			regions.</p>")
type configRuleComplianceSummaryFilters = {
  @ocaml.doc("<p>The source region where the data is aggregated.</p>") @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit account ID of the source account.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>Filters the compliance results based on account ID, region,
			compliance type, and rule name.</p>")
type configRuleComplianceFilters = {
  @ocaml.doc("<p>The source region where the data is aggregated.
			</p>")
  @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit account ID of the source account.
			</p>")
  @as("AccountId")
  accountId: option<accountId>,
  @ocaml.doc("<p>The rule compliance status.</p>
		       <p>For the <code>ConfigRuleComplianceFilters</code> data type, Config supports only <code>COMPLIANT</code> and
				<code>NON_COMPLIANT</code>. Config does not support the
				<code>NOT_APPLICABLE</code> and the
				<code>INSUFFICIENT_DATA</code> values.</p>")
  @as("ComplianceType")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
  configRuleName: option<configRuleName>,
}
@ocaml.doc("<p>Provides status of the delivery of the snapshot or the
			configuration history to the specified Amazon S3 bucket. Also
			provides the status of notifications about the Amazon S3 delivery to
			the specified Amazon SNS topic.</p>")
type configExportDeliveryInfo = {
  @ocaml.doc("<p>The time that the next delivery occurs.</p>") nextDeliveryTime: option<date>,
  @ocaml.doc("<p>The time of the last successful delivery.</p>") lastSuccessfulTime: option<date>,
  @ocaml.doc("<p>The time of the last attempted delivery.</p>") lastAttemptTime: option<date>,
  @ocaml.doc("<p>The error message from the last attempted delivery.</p>")
  lastErrorMessage: option<string_>,
  @ocaml.doc("<p>The error code from the last attempted delivery.</p>")
  lastErrorCode: option<string_>,
  @ocaml.doc("<p>Status of the last attempted delivery.</p>") lastStatus: option<deliveryStatus>,
}
type complianceTypes = array<complianceType>
type complianceResourceTypes = array<stringWithCharLimit256>
@ocaml.doc("<p>The number of Amazon Web Services resources or Config rules responsible for
			the current compliance of the item, up to a maximum
			number.</p>")
type complianceContributorCount = {
  @ocaml.doc("<p>Indicates whether the maximum count is reached.</p>") @as("CapExceeded")
  capExceeded: option<boolean_>,
  @ocaml.doc("<p>The number of Amazon Web Services resources or Config rules responsible for
			the current compliance of the item.</p>")
  @as("CappedCount")
  cappedCount: option<integer_>,
}
type aggregatorRegionList = array<string_>
@ocaml.doc("<p>An object that represents the authorizations granted to
			aggregator accounts and regions.</p>")
type aggregationAuthorization = {
  @ocaml.doc("<p>The time stamp when the aggregation authorization was
			created.</p>")
  @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The region authorized to collect aggregated data.</p>") @as("AuthorizedAwsRegion")
  authorizedAwsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit account ID of the account authorized to aggregate
			data.</p>")
  @as("AuthorizedAccountId")
  authorizedAccountId: option<accountId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the aggregation
			object.</p>")
  @as("AggregationAuthorizationArn")
  aggregationAuthorizationArn: option<string_>,
}
type aggregatedSourceStatusTypeList = array<aggregatedSourceStatusType>
@ocaml.doc("<p>The current sync status between the source and the aggregator
			account.</p>")
type aggregatedSourceStatus = {
  @ocaml.doc("<p>The message indicating that the source account aggregation
			failed due to an error.</p>")
  @as("LastErrorMessage")
  lastErrorMessage: option<string_>,
  @ocaml.doc("<p>The error code that Config returned when the source account
			aggregation last failed.</p>")
  @as("LastErrorCode")
  lastErrorCode: option<string_>,
  @ocaml.doc("<p>The time of the last update.</p>") @as("LastUpdateTime")
  lastUpdateTime: option<date>,
  @ocaml.doc("<p>Filters the last updated status type.</p>
		       <ul>
            <li>
				           <p>Valid value FAILED indicates errors while moving
					data.</p>
			         </li>
            <li>
				           <p>Valid value SUCCEEDED indicates the data was
					successfully moved.</p>
			         </li>
            <li>
				           <p>Valid value OUTDATED indicates the data is not the most
					recent.</p>
			         </li>
         </ul>")
  @as("LastUpdateStatus")
  lastUpdateStatus: option<aggregatedSourceStatusType>,
  @ocaml.doc("<p>The region authorized to collect aggregated data.</p>") @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The source account or an organization.</p>") @as("SourceType")
  sourceType: option<aggregatedSourceType>,
  @ocaml.doc("<p>The source account ID or an organization.</p>") @as("SourceId")
  sourceId: option<string_>,
}
@ocaml.doc(
  "<p>The details that identify a resource that is collected by Config aggregator, including the resource type, ID, (if available) the custom resource name, the source account, and source region.</p>"
)
type aggregateResourceIdentifier = {
  @ocaml.doc("<p>The name of the Amazon Web Services resource.</p>") @as("ResourceName")
  resourceName: option<resourceName>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource.</p>") @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc("<p>The ID of the Amazon Web Services resource.</p>") @as("ResourceId")
  resourceId: resourceId,
  @ocaml.doc("<p>The source region where data is aggregated.</p>") @as("SourceRegion")
  sourceRegion: awsRegion,
  @ocaml.doc("<p>The 12-digit account ID of the source account.</p>") @as("SourceAccountId")
  sourceAccountId: accountId,
}
@ocaml.doc("<p>Filters the results based on account ID and region. </p>")
type aggregateConformancePackComplianceSummaryFilters = {
  @ocaml.doc("<p>The source Amazon Web Services Region from where the data is aggregated.</p>")
  @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit Amazon Web Services account ID of the source account.</p>")
  @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc(
  "<p>Filters the conformance packs based on an account ID, region, compliance type, and the name of the conformance pack.</p>"
)
type aggregateConformancePackComplianceFilters = {
  @ocaml.doc("<p>The source Amazon Web Services Region from where the data is aggregated.</p>")
  @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit Amazon Web Services account ID of the source account.</p>")
  @as("AccountId")
  accountId: option<accountId>,
  @ocaml.doc("<p>The compliance status of the conformance pack.</p>") @as("ComplianceType")
  complianceType: option<conformancePackComplianceType>,
  @ocaml.doc("<p>The name of the conformance pack.</p>") @as("ConformancePackName")
  conformancePackName: option<conformancePackName>,
}
@ocaml.doc("<p>The number of conformance packs that are compliant and noncompliant.</p>")
type aggregateConformancePackComplianceCount = {
  @ocaml.doc("<p>Number of noncompliant conformance packs.</p>")
  @as("NonCompliantConformancePackCount")
  nonCompliantConformancePackCount: option<integer_>,
  @ocaml.doc("<p>Number of compliant conformance packs.</p>") @as("CompliantConformancePackCount")
  compliantConformancePackCount: option<integer_>,
}
@ocaml.doc("<p>Provides the number of compliant and noncompliant rules within a conformance pack.
			Also provides the compliance status of the conformance pack and the total rule count which includes compliant rules, noncompliant rules, and rules that cannot be evaluated due to insufficient data.</p>
		
		       <p>A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant.
			The compliance status of a conformance pack is INSUFFICIENT_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data.
			If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT_DATA, the conformance pack shows compliant.</p>")
type aggregateConformancePackCompliance = {
  @ocaml.doc(
    "<p>Total number of compliant rules, noncompliant rules, and the rules that do not have any applicable resources to evaluate upon resulting in insufficient data.</p>"
  )
  @as("TotalRuleCount")
  totalRuleCount: option<integer_>,
  @ocaml.doc("<p>The number of noncompliant Config Rules.</p>") @as("NonCompliantRuleCount")
  nonCompliantRuleCount: option<integer_>,
  @ocaml.doc("<p>The number of compliant Config Rules.</p>") @as("CompliantRuleCount")
  compliantRuleCount: option<integer_>,
  @ocaml.doc("<p>The compliance status of the conformance pack.</p>") @as("ComplianceType")
  complianceType: option<conformancePackComplianceType>,
}
type accountAggregationSourceAccountList = array<accountId>
type unprocessedResourceIdentifierList = array<aggregateResourceIdentifier>
type tagsList = array<tag>
type tagList_ = array<tag>
type storedQueryMetadataList = array<storedQueryMetadata>
@ocaml.doc("<p>The static value of the resource.</p>")
type staticValue = {
  @ocaml.doc("<p>A list of values. For example, the ARN of the assumed role. </p>") @as("Values")
  values: staticParameterValues,
}
type sourceDetails = array<sourceDetail>
@ocaml.doc("<p>Defines which resources trigger an evaluation for an Config
			rule. The scope can include one or more resource types, a
			combination of a tag key and value, or a combination of one resource
			type and one resource ID. Specify a scope to constrain which
			resources trigger an evaluation for a rule. Otherwise, evaluations
			for the rule are triggered when any resource in your recording group
			changes in configuration.</p>")
type scope = {
  @ocaml.doc("<p>The ID of the only Amazon Web Services resource that you want to trigger an
			evaluation for the rule. If you specify a resource ID, you must
			specify one resource type for
			<code>ComplianceResourceTypes</code>.</p>")
  @as("ComplianceResourceId")
  complianceResourceId: option<baseResourceId>,
  @ocaml.doc("<p>The tag value applied to only those Amazon Web Services resources that you want
			to trigger an evaluation for the rule. If you specify a value for
				<code>TagValue</code>, you must also specify a value for
				<code>TagKey</code>.</p>")
  @as("TagValue")
  tagValue: option<stringWithCharLimit256>,
  @ocaml.doc("<p>The tag key that is applied to only those Amazon Web Services resources that
			you want to trigger an evaluation for the rule.</p>")
  @as("TagKey")
  tagKey: option<stringWithCharLimit128>,
  @ocaml.doc("<p>The resource types of only those Amazon Web Services resources that you want to
			trigger an evaluation for the rule. You can only specify one type if
			you also specify a resource ID for
			<code>ComplianceResourceId</code>.</p>")
  @as("ComplianceResourceTypes")
  complianceResourceTypes: option<complianceResourceTypes>,
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
@ocaml.doc("<p>Specifies the types of Amazon Web Services resource for which Config
			records configuration changes.</p>
		       <p>In the recording group, you specify whether all supported types
			or specific types of resources are recorded.</p>
		       <p>By default, Config records configuration changes for all
			supported types of regional resources that Config discovers in
			the region in which it is running. Regional resources are tied to a
			region and can be used only in that region. Examples of regional
			resources are EC2 instances and EBS volumes.</p>
		       <p>You can also have Config record configuration changes for
			supported types of global resources (for example, IAM resources).
			Global resources are not tied to an individual region and can be
			used in all regions.</p>
		       <important>
			         <p>The configuration details for any global resource are the
				same in all regions. If you customize Config in multiple
				regions to record global resources, it will create multiple
				configuration items each time a global resource changes: one
				configuration item for each region. These configuration items
				will contain identical data. To prevent duplicate configuration
				items, you should consider customizing Config in only one
				region to record global resources, unless you want the
				configuration items to be available in multiple
				regions.</p>
		       </important>
		       <p>If you don't want Config to record all resources, you can
			specify which types of resources it will record with the
				<code>resourceTypes</code> parameter.</p>
		       <p>For a list of supported resource types, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources\">Supported Resource Types</a>.</p>
		       <p>For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/select-resources.html\">Selecting Which Resources Config Records</a>.</p>")
type recordingGroup = {
  @ocaml.doc("<p>A comma-separated list that specifies the types of Amazon Web Services
			resources for which Config records configuration changes (for
			example, <code>AWS::EC2::Instance</code> or
				<code>AWS::CloudTrail::Trail</code>).</p>
		       <p>To record all configuration changes, you must
			set the <code>allSupported</code> option to
			<code>true</code>.</p>
		       <p>If you set this option to <code>false</code>, when Config
			adds support for a new type of resource, it will not record
			resources of that type unless you manually add that type to your
			recording group.</p>
		       <p>For a list of valid <code>resourceTypes</code> values, see the
				<b>resourceType Value</b> column in
				<a href=\"https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources\">Supported Amazon Web Services resource Types</a>.</p>")
  resourceTypes: option<resourceTypeList>,
  @ocaml.doc("<p>Specifies whether Config includes all supported types of
			global resources (for example, IAM resources) with the resources
			that it records.</p>
		       <p>Before you can set this option to <code>true</code>, you must
			set the <code>allSupported</code> option to
			<code>true</code>.</p>
		       <p>If you set this option to <code>true</code>, when Config
			adds support for a new type of global resource, it starts recording
			resources of that type automatically.</p>
		       <p>The configuration details for any global resource are the same
			in all regions. To prevent duplicate configuration items, you should
			consider customizing Config in only one region to record global
			resources.</p>")
  includeGlobalResourceTypes: option<includeGlobalResourceTypes>,
  @ocaml.doc("<p>Specifies whether Config records configuration changes for
			every supported type of regional resource.</p>
		       <p>If you set this option to <code>true</code>, when Config
			adds support for a new type of regional resource, it starts
			recording resources of that type automatically.</p>
		       <p>If you set this option to <code>true</code>, you cannot
			enumerate a list of <code>resourceTypes</code>.</p>")
  allSupported: option<allSupported>,
}
type pendingAggregationRequestList = array<pendingAggregationRequest>
@ocaml.doc("<p>An object that specifies organization managed rule metadata such as resource type and ID of Amazon Web Services resource along with the rule identifier. 
			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>")
type organizationManagedRuleMetadata = {
  @ocaml.doc("<p>The optional part of a key-value pair that make up a tag. 
			A value acts as a descriptor within a tag category (key).</p>")
  @as("TagValueScope")
  tagValueScope: option<stringWithCharLimit256>,
  @ocaml.doc("<p>One part of a key-value pair that make up a tag. 
			A key is a general label that acts like a category for more specific tag values. </p>")
  @as("TagKeyScope")
  tagKeyScope: option<stringWithCharLimit128>,
  @ocaml.doc("<p>The ID of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceIdScope")
  resourceIdScope: option<stringWithCharLimit768>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceTypesScope")
  resourceTypesScope: option<resourceTypesScope>,
  @ocaml.doc("<p>The maximum frequency with which Config runs evaluations for a rule. You are using an Config managed rule that is triggered at a periodic frequency.</p>
		       <note>
            <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid 
			value for the <code>MaximumExecutionFrequency</code> parameter.</p>
         </note>")
  @as("MaximumExecutionFrequency")
  maximumExecutionFrequency: option<maximumExecutionFrequency>,
  @ocaml.doc(
    "<p>A string, in JSON format, that is passed to your organization Config rule Lambda function.</p>"
  )
  @as("InputParameters")
  inputParameters: option<stringWithCharLimit2048>,
  @ocaml.doc("<p>For organization config managed rules, a predefined identifier from a
			list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed
			rule. To reference a managed rule, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html\">Using Config managed rules</a>.</p>")
  @as("RuleIdentifier")
  ruleIdentifier: stringWithCharLimit256,
  @ocaml.doc("<p>The description that you provide for your organization Config rule.</p>")
  @as("Description")
  description: option<stringWithCharLimit256Min0>,
}
@ocaml.doc("<p>An object that specifies organization custom rule metadata such as resource type, resource ID of Amazon Web Services resource, Lambda function ARN, 
			and organization trigger types that trigger Config to evaluate your Amazon Web Services resources against a rule. 
			It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>")
type organizationCustomRuleMetadata = {
  @ocaml.doc("<p>The optional part of a key-value pair that make up a tag. 
			A value acts as a descriptor within a tag category (key). </p>")
  @as("TagValueScope")
  tagValueScope: option<stringWithCharLimit256>,
  @ocaml.doc("<p>One part of a key-value pair that make up a tag. 
			A key is a general label that acts like a category for more specific tag values. </p>")
  @as("TagKeyScope")
  tagKeyScope: option<stringWithCharLimit128>,
  @ocaml.doc("<p>The ID of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceIdScope")
  resourceIdScope: option<stringWithCharLimit768>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceTypesScope")
  resourceTypesScope: option<resourceTypesScope>,
  @ocaml.doc("<p>The maximum frequency with which Config runs evaluations for a rule. 
			Your custom rule is triggered when Config delivers the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
		       <note>
            <p>By default, rules with a periodic trigger are evaluated every 24 hours. To change the frequency, specify a valid 
			value for the <code>MaximumExecutionFrequency</code> parameter.</p>
         </note>")
  @as("MaximumExecutionFrequency")
  maximumExecutionFrequency: option<maximumExecutionFrequency>,
  @ocaml.doc(
    "<p>A string, in JSON format, that is passed to your organization Config rule Lambda function.</p>"
  )
  @as("InputParameters")
  inputParameters: option<stringWithCharLimit2048>,
  @ocaml.doc("<p>The type of notification that triggers Config to run an evaluation for a rule. You can specify the following notification types:</p>
		
		       <ul>
            <li>
               <p>
                  <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers a configuration item as a result of a resource change.</p>
            </li>
            <li>
               <p>
                  <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers an oversized configuration item. 
			         	Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p>
            </li>
            <li>
               <p>
                  <code>ScheduledNotification</code> - Triggers a periodic evaluation at the frequency specified for <code>MaximumExecutionFrequency</code>.</p>
            </li>
         </ul>")
  @as("OrganizationConfigRuleTriggerTypes")
  organizationConfigRuleTriggerTypes: organizationConfigRuleTriggerTypes,
  @ocaml.doc("<p>The lambda function ARN.</p>") @as("LambdaFunctionArn")
  lambdaFunctionArn: stringWithCharLimit256,
  @ocaml.doc("<p>The description that you provide for your organization Config rule.</p>")
  @as("Description")
  description: option<stringWithCharLimit256Min0>,
}
@ocaml.doc("<p>An object that specifies metadata for your organization Config Custom Policy rule including the runtime system in use, which accounts have debug logging enabled, and
			other custom rule metadata such as resource type, resource ID of Amazon Web Services
			resource, and organization trigger types that trigger Config to evaluate
				Amazon Web Services resources against a rule.</p>")
type organizationCustomPolicyRuleMetadataNoPolicy = {
  @ocaml.doc(
    "<p>A list of accounts that you can enable debug logging for your organization Config Custom Policy rule. List is null when debug logging is enabled for all accounts.</p>"
  )
  @as("DebugLogDeliveryAccounts")
  debugLogDeliveryAccounts: option<debugLogDeliveryAccounts>,
  @ocaml.doc("<p>The runtime system for your organization Config Custom Policy rules. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href=\"https://github.com/aws-cloudformation/cloudformation-guard\">Guard GitHub
			Repository</a>.</p>")
  @as("PolicyRuntime")
  policyRuntime: option<policyRuntime>,
  @ocaml.doc(
    "<p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>"
  )
  @as("TagValueScope")
  tagValueScope: option<stringWithCharLimit256>,
  @ocaml.doc(
    "<p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
  )
  @as("TagKeyScope")
  tagKeyScope: option<stringWithCharLimit128>,
  @ocaml.doc("<p>The ID of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceIdScope")
  resourceIdScope: option<stringWithCharLimit768>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceTypesScope")
  resourceTypesScope: option<resourceTypesScope>,
  @ocaml.doc("<p>The maximum frequency with which Config runs evaluations for a rule. Your
			Config Custom Policy rule is triggered when Config delivers
			the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>")
  @as("MaximumExecutionFrequency")
  maximumExecutionFrequency: option<maximumExecutionFrequency>,
  @ocaml.doc(
    "<p>A string, in JSON format, that is passed to your organization Config Custom Policy rule.</p>"
  )
  @as("InputParameters")
  inputParameters: option<stringWithCharLimit2048>,
  @ocaml.doc("<p>The type of notification that triggers Config to run an evaluation for a rule.
			For Config Custom Policy rules, Config supports change
			triggered notification types:</p>
		
		       <ul>
            <li>
               <p>
                  <code>ConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers a configuration item as a result of a resource change.</p>
            </li>
            <li>
               <p>
                  <code>OversizedConfigurationItemChangeNotification</code> - Triggers an evaluation when Config delivers an oversized configuration item. 
				Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS.</p>
            </li>
         </ul>")
  @as("OrganizationConfigRuleTriggerTypes")
  organizationConfigRuleTriggerTypes: option<organizationConfigRuleTriggerTypeNoSNs>,
  @ocaml.doc(
    "<p>The description that you provide for your organization Config Custom Policy rule.</p>"
  )
  @as("Description")
  description: option<stringWithCharLimit256Min0>,
}
@ocaml.doc("<p>An
			object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have
			debug logging enabled, and other custom rule metadata, such as resource type, resource
			ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>")
type organizationCustomPolicyRuleMetadata = {
  @ocaml.doc(
    "<p>A list of accounts that you can enable debug logging for your organization Config Custom Policy rule. List is null when debug logging is enabled for all accounts.</p>"
  )
  @as("DebugLogDeliveryAccounts")
  debugLogDeliveryAccounts: option<debugLogDeliveryAccounts>,
  @ocaml.doc(
    "<p>The policy definition containing the logic for your organization Config Custom Policy rule.</p>"
  )
  @as("PolicyText")
  policyText: policyText,
  @ocaml.doc("<p>The runtime system for your organization Config Custom Policy rules. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the <a href=\"https://github.com/aws-cloudformation/cloudformation-guard\">Guard GitHub
			Repository</a>.</p>")
  @as("PolicyRuntime")
  policyRuntime: policyRuntime,
  @ocaml.doc(
    "<p>The optional part of a key-value pair that make up a tag. A value acts as a descriptor within a tag category (key).</p>"
  )
  @as("TagValueScope")
  tagValueScope: option<stringWithCharLimit256>,
  @ocaml.doc(
    "<p>One part of a key-value pair that make up a tag. A key is a general label that acts like a category for more specific tag values.</p>"
  )
  @as("TagKeyScope")
  tagKeyScope: option<stringWithCharLimit128>,
  @ocaml.doc("<p>The ID of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceIdScope")
  resourceIdScope: option<stringWithCharLimit768>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceTypesScope")
  resourceTypesScope: option<resourceTypesScope>,
  @ocaml.doc("<p>The maximum frequency with which Config runs evaluations for a rule. Your
			Config Custom Policy rule is triggered when Config delivers
			the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>")
  @as("MaximumExecutionFrequency")
  maximumExecutionFrequency: option<maximumExecutionFrequency>,
  @ocaml.doc(
    "<p>A string, in JSON format, that is passed to your organization Config Custom Policy rule.</p>"
  )
  @as("InputParameters")
  inputParameters: option<stringWithCharLimit2048>,
  @ocaml.doc("<p>The type of notification that initiates Config to run an evaluation for a rule.
			For Config Custom Policy rules, Config supports change-initiated notification types:</p>
		
		       <ul>
            <li>
               <p>
                  <code>ConfigurationItemChangeNotification</code> - Initiates an evaluation when Config delivers a configuration item as a result of a resource
					change.</p>
            </li>
            <li>
               <p>
                  <code>OversizedConfigurationItemChangeNotification</code> - Initiates an evaluation when
						Config delivers an oversized configuration item. Config may generate this notification type when a resource changes and the
					notification exceeds the maximum size allowed by Amazon SNS.</p>
            </li>
         </ul>")
  @as("OrganizationConfigRuleTriggerTypes")
  organizationConfigRuleTriggerTypes: option<organizationConfigRuleTriggerTypeNoSNs>,
  @ocaml.doc(
    "<p>The description that you provide for your organization Config Custom Policy rule.</p>"
  )
  @as("Description")
  description: option<stringWithCharLimit256Min0>,
}
type organizationConformancePackStatuses = array<organizationConformancePackStatus>
type organizationConformancePackDetailedStatuses = array<organizationConformancePackDetailedStatus>
type organizationConfigRuleStatuses = array<organizationConfigRuleStatus>
type organizationConfigRuleDetailedStatus = array<memberAccountStatus>
@ocaml.doc("<p>This object contains regions to set up the aggregator and an IAM
			role to retrieve organization details.</p>")
type organizationAggregationSource = {
  @ocaml.doc("<p>If true, aggregate existing Config regions and future
			regions.</p>")
  @as("AllAwsRegions")
  allAwsRegions: option<boolean_>,
  @ocaml.doc("<p>The source regions being aggregated.</p>") @as("AwsRegions")
  awsRegions: option<aggregatorRegionList>,
  @ocaml.doc("<p>ARN of the IAM role used to retrieve Amazon Web Services Organization details
			associated with the aggregator account.</p>")
  @as("RoleArn")
  roleArn: string_,
}
type groupedResourceCountList = array<groupedResourceCount>
type fieldInfoList = array<fieldInfo>
@ocaml.doc("<p>The controls that Config uses for executing remediations.</p>")
type executionControls = {
  @ocaml.doc("<p>A SsmControls object.</p>") @as("SsmControls") ssmControls: option<ssmControls>,
}
type evaluations = array<evaluation>
@ocaml.doc("<p>Uniquely identifies an evaluation result.</p>")
type evaluationResultIdentifier = {
  @ocaml.doc("<p>The time of the event that triggered the evaluation of your Amazon Web Services
			resources. The time can indicate when Config delivered a
			configuration item change notification, or it can indicate when Config delivered the configuration snapshot, depending on which
			event triggered the evaluation.</p>")
  @as("OrderingTimestamp")
  orderingTimestamp: option<date>,
  @ocaml.doc("<p>Identifies an Config rule used to evaluate an Amazon Web Services resource,
			and provides the type and ID of the evaluated resource.</p>")
  @as("EvaluationResultQualifier")
  evaluationResultQualifier: option<evaluationResultQualifier>,
}
type discoveredResourceIdentifierList = array<aggregateResourceIdentifier>
@ocaml.doc("<p>The status of a specified delivery channel.</p>
		       <p>Valid values: <code>Success</code> | <code>Failure</code>
		       </p>")
type deliveryChannelStatus = {
  @ocaml.doc("<p>A list containing the status of the delivery of the
			configuration stream notification to the specified Amazon SNS
			topic.</p>")
  configStreamDeliveryInfo: option<configStreamDeliveryInfo>,
  @ocaml.doc("<p>A list that contains the status of the delivery of the
			configuration history to the specified Amazon S3 bucket.</p>")
  configHistoryDeliveryInfo: option<configExportDeliveryInfo>,
  @ocaml.doc("<p>A list containing the status of the delivery of the snapshot to
			the specified Amazon S3 bucket.</p>")
  configSnapshotDeliveryInfo: option<configExportDeliveryInfo>,
  @ocaml.doc("<p>The name of the delivery channel.</p>") name: option<string_>,
}
@ocaml.doc("<p>The channel through which Config delivers notifications and
			updated configuration states.</p>")
type deliveryChannel = {
  @ocaml.doc("<p>The options for how often Config delivers configuration
			snapshots to the Amazon S3 bucket.</p>")
  configSnapshotDeliveryProperties: option<configSnapshotDeliveryProperties>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon SNS topic to which
			Config sends notifications about configuration
			changes.</p>
		       <p>If you choose a topic from another account, the topic must have
			policies that grant access permissions to Config. For more
			information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/sns-topic-policy.html\">Permissions for the Amazon SNS Topic</a> in the Config
			Developer Guide.</p>")
  snsTopicARN: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Key Management Service (KMS ) KMS key (KMS key) used to encrypt objects delivered by Config.
			Must belong to the same Region as the destination S3 bucket.</p>")
  s3KmsKeyArn: option<string_>,
  @ocaml.doc("<p>The prefix for the specified Amazon S3 bucket.</p>") s3KeyPrefix: option<string_>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket to which Config delivers
			configuration snapshots and configuration history files.</p>
		       <p>If you specify a bucket that belongs to another Amazon Web Services account,
			that bucket must have policies that grant access permissions to Config. For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/s3-bucket-policy.html\">Permissions for the Amazon S3 Bucket</a> in the Config
			Developer Guide.</p>")
  s3BucketName: option<string_>,
  @ocaml.doc("<p>The name of the delivery channel. By default, Config
			assigns the name \"default\" when creating the delivery channel. To
			change the delivery channel name, you must use the
			DeleteDeliveryChannel action to delete your current delivery
			channel, and then you must use the PutDeliveryChannel command to
			create a delivery channel that has the desired name.</p>")
  name: option<channelName>,
}
type conformancePackStatusDetailsList = array<conformancePackStatusDetail>
@ocaml.doc(
  "<p>Compliance information of one or more Config rules within a conformance pack. You can filter using Config rule names and compliance types.</p>"
)
type conformancePackRuleCompliance = {
  @ocaml.doc("<p>Controls for the conformance pack. A control is a process to prevent or detect problems while meeting objectives.
			A control can align with a specific compliance regime or map to internal controls defined by an organization.</p>")
  @as("Controls")
  controls: option<controlsList>,
  @ocaml.doc("<p>Compliance of the Config rule.</p>
		       <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>")
  @as("ComplianceType")
  complianceType: option<conformancePackComplianceType>,
  @ocaml.doc("<p>Name of the Config rule.</p>") @as("ConfigRuleName")
  configRuleName: option<configRuleName>,
}
type conformancePackInputParameters = array<conformancePackInputParameter>
@ocaml.doc(
  "<p>Filters a conformance pack by Config rule names, compliance types, Amazon Web Services resource types, and resource IDs.</p>"
)
type conformancePackEvaluationFilters = {
  @ocaml.doc("<p>Filters the results by resource IDs.</p>
		       <note>
            <p>This is valid only when you provide resource type. If there is no resource type, you will see an error.</p>
         </note>")
  @as("ResourceIds")
  resourceIds: option<conformancePackComplianceResourceIds>,
  @ocaml.doc(
    "<p>Filters the results by the resource type (for example, <code>\"AWS::EC2::Instance\"</code>). </p>"
  )
  @as("ResourceType")
  resourceType: option<stringWithCharLimit256>,
  @ocaml.doc("<p>Filters the results by compliance.</p>
		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>")
  @as("ComplianceType")
  complianceType: option<conformancePackComplianceType>,
  @ocaml.doc("<p>Filters the results by Config rule names.</p>") @as("ConfigRuleNames")
  configRuleNames: option<conformancePackConfigRuleNames>,
}
type conformancePackComplianceSummaryList = array<conformancePackComplianceSummary>
@ocaml.doc("<p>Filters the conformance pack by compliance types and Config rule names.</p>")
type conformancePackComplianceFilters = {
  @ocaml.doc("<p>Filters the results by compliance.</p>
		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>")
  @as("ComplianceType")
  complianceType: option<conformancePackComplianceType>,
  @ocaml.doc("<p>Filters the results by Config rule names.</p>") @as("ConfigRuleNames")
  configRuleNames: option<conformancePackConfigRuleNames>,
}
type configurationRecorderStatusList = array<configurationRecorderStatus>
type configRuleEvaluationStatusList = array<configRuleEvaluationStatus>
@ocaml.doc("<p>The number of Config rules or Amazon Web Services resources that are
			compliant and noncompliant.</p>")
type complianceSummary = {
  @ocaml.doc("<p>The time that Config created the compliance
			summary.</p>")
  @as("ComplianceSummaryTimestamp")
  complianceSummaryTimestamp: option<date>,
  @ocaml.doc("<p>The number of Config rules or Amazon Web Services resources that are
			noncompliant, up to a maximum of 25 for rules and 100 for
			resources.</p>")
  @as("NonCompliantResourceCount")
  nonCompliantResourceCount: option<complianceContributorCount>,
  @ocaml.doc("<p>The number of Config rules or Amazon Web Services resources that are
			compliant, up to a maximum of 25 for rules and 100 for
			resources.</p>")
  @as("CompliantResourceCount")
  compliantResourceCount: option<complianceContributorCount>,
}
@ocaml.doc("<p>Indicates whether an Amazon Web Services resource or Config rule is
			compliant and provides the number of contributors that affect the
			compliance.</p>")
type compliance = {
  @ocaml.doc("<p>The number of Amazon Web Services resources or Config rules that cause a
			result of <code>NON_COMPLIANT</code>, up to a maximum
			number.</p>")
  @as("ComplianceContributorCount")
  complianceContributorCount: option<complianceContributorCount>,
  @ocaml.doc("<p>Indicates whether an Amazon Web Services resource or Config rule is
			compliant.</p>
		       <p>A resource is compliant if it complies with all of the Config rules that evaluate it. A resource is noncompliant if it does
			not comply with one or more of these rules.</p>
		       <p>A rule is compliant if all of the resources that the rule
			evaluates comply with it. A rule is noncompliant if any of these
			resources do not comply.</p>
		       <p>Config returns the <code>INSUFFICIENT_DATA</code> value
			when no evaluation results are available for the Amazon Web Services resource or Config rule.</p>
		       <p>For the <code>Compliance</code> data type, Config supports
			only <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and
				<code>INSUFFICIENT_DATA</code> values. Config does not
			support the <code>NOT_APPLICABLE</code> value for the
				<code>Compliance</code> data type.</p>")
  @as("ComplianceType")
  complianceType: option<complianceType>,
}
@ocaml.doc("<p>The detailed configuration of a specified resource.</p>")
type baseConfigurationItem = {
  @ocaml.doc("<p>Configuration attributes that Config returns for certain
			resource types to supplement the information returned for the
			configuration parameter.</p>")
  supplementaryConfiguration: option<supplementaryConfiguration>,
  @ocaml.doc("<p>The description of the resource configuration.</p>")
  configuration: option<configuration>,
  @ocaml.doc("<p>The time stamp when the resource was created.</p>")
  resourceCreationTime: option<resourceCreationTime>,
  @ocaml.doc("<p>The Availability Zone associated with the resource.</p>")
  availabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The region where the resource resides.</p>") awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The custom name of the resource, if available.</p>")
  resourceName: option<resourceName>,
  @ocaml.doc("<p>The ID of the resource (for example., sg-xxxxxx).</p>")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The type of Amazon Web Services resource.</p>") resourceType: option<resourceType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") arn: option<arn>,
  @ocaml.doc("<p>An identifier that indicates the ordering of the configuration
			items of a resource.</p>")
  configurationStateId: option<configurationStateId>,
  @ocaml.doc("<p>The configuration item status. The valid values are:</p>
		
		       <ul>
            <li>
               <p>OK – The resource configuration has been updated</p>
            </li>
            <li>
               <p>ResourceDiscovered – The resource was newly discovered</p>
            </li>
            <li>
               <p>ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
            </li>
            <li>
               <p>ResourceDeleted – The resource was deleted</p>
            </li>
            <li>
               <p>ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
            </li>
         </ul>
		       <note>
            <p>The CIs do not incur any cost.</p>
         </note>")
  configurationItemStatus: option<configurationItemStatus>,
  @ocaml.doc("<p>The time when the configuration recording was initiated.</p>")
  configurationItemCaptureTime: option<configurationItemCaptureTime>,
  @ocaml.doc("<p>The 12-digit Amazon Web Services account ID associated with the resource.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The version number of the resource configuration.</p>") version: option<version>,
}
type aggregationAuthorizationList = array<aggregationAuthorization>
type aggregatedSourceStatusList = array<aggregatedSourceStatus>
@ocaml.doc("<p>Provides a summary of compliance based on either account ID or region. </p>")
type aggregateConformancePackComplianceSummary = {
  @ocaml.doc(
    "<p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>"
  )
  @as("GroupName")
  groupName: option<stringWithCharLimit256>,
  @ocaml.doc("<p>Returns an <code>AggregateConformancePackComplianceCount</code> object. </p>")
  @as("ComplianceSummary")
  complianceSummary: option<aggregateConformancePackComplianceCount>,
}
@ocaml.doc("<p>Provides aggregate compliance of the conformance pack. Indicates whether a conformance pack is compliant based on the name of the conformance pack, account ID, and region.</p>
		       <p>A conformance pack is compliant if all of the rules in a conformance packs are compliant. It is noncompliant if any of the rules are not compliant.
			The compliance status of a conformance pack is INSUFFICIENT_DATA only if all rules within a conformance pack cannot be evaluated due to insufficient data.
			If some of the rules in a conformance pack are compliant but the compliance status of other rules in that same conformance pack is INSUFFICIENT_DATA, the conformance pack shows compliant.</p>")
type aggregateComplianceByConformancePack = {
  @ocaml.doc("<p>The source Amazon Web Services Region from where the data is aggregated.</p>")
  @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit Amazon Web Services account ID of the source account.</p>")
  @as("AccountId")
  accountId: option<accountId>,
  @ocaml.doc("<p>The compliance status of the conformance pack.</p>") @as("Compliance")
  compliance: option<aggregateConformancePackCompliance>,
  @ocaml.doc("<p>The name of the conformance pack.</p>") @as("ConformancePackName")
  conformancePackName: option<conformancePackName>,
}
@ocaml.doc("<p>A collection of accounts and regions.</p>")
type accountAggregationSource = {
  @ocaml.doc("<p>The source regions being aggregated.</p>") @as("AwsRegions")
  awsRegions: option<aggregatorRegionList>,
  @ocaml.doc("<p>If true, aggregate existing Config regions and future
			regions.</p>")
  @as("AllAwsRegions")
  allAwsRegions: option<boolean_>,
  @ocaml.doc("<p>The 12-digit account ID of the account being aggregated.
		</p>")
  @as("AccountIds")
  accountIds: accountAggregationSourceAccountList,
}
@ocaml.doc("<p>Provides the CustomPolicyDetails, the rule owner (Amazon Web Services or customer), the rule
			identifier, and the events that cause the evaluation of your Amazon Web Services
			resources.</p>")
type source = {
  @ocaml.doc(
    "<p>Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to <code>CUSTOM_POLICY</code>.</p>"
  )
  @as("CustomPolicyDetails")
  customPolicyDetails: option<customPolicyDetails>,
  @ocaml.doc("<p>Provides the source and the message types that cause Config to evaluate your Amazon Web Services resources against a rule. It also provides the frequency with which you want Config to run evaluations for the rule if the trigger type is periodic.</p>
		
		       <p>If the owner is set to <code>CUSTOM_POLICY</code>, the only acceptable values for the Config rule trigger message type are <code>ConfigurationItemChangeNotification</code> and <code>OversizedConfigurationItemChangeNotification</code>.</p>")
  @as("SourceDetails")
  sourceDetails: option<sourceDetails>,
  @ocaml.doc("<p>For Config Managed rules, a predefined identifier from a
			list. For example, <code>IAM_PASSWORD_POLICY</code> is a managed
			rule. To reference a managed rule, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html\">List of Config Managed Rules</a>.</p>
		       <p>For Config Custom Lambda rules, the identifier is the Amazon Resource Name
			(ARN) of the rule's Lambda function, such as
			<code>arn:aws:lambda:us-east-2:123456789012:function:custom_rule_name</code>.</p>
		
		       <p>For Config Custom Policy rules, this field will be ignored.</p>")
  @as("SourceIdentifier")
  sourceIdentifier: option<stringWithCharLimit256>,
  @ocaml.doc("<p>Indicates whether Amazon Web Services or the customer owns and manages the Config rule.</p>
		
		       <p>Config Managed Rules are predefined rules owned by Amazon Web Services. For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html\">Config Managed Rules</a> in the Config developer guide.</p>
		
		       <p>Config Custom Rules are rules that you can develop either with Guard (<code>CUSTOM_POLICY</code>) or Lambda (<code>CUSTOM_LAMBDA</code>). For more information, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_develop-rules.html\">Config Custom Rules </a> in the Config developer guide.</p>")
  @as("Owner")
  owner: owner,
}
@ocaml.doc(
  "<p>The value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value.</p>"
)
type remediationParameterValue = {
  @ocaml.doc("<p>The value is static and does not change at run-time.</p>") @as("StaticValue")
  staticValue: option<staticValue>,
  @ocaml.doc("<p>The value is dynamic and changes at run-time.</p>") @as("ResourceValue")
  resourceValue: option<resourceValue>,
}
@ocaml.doc(
  "<p>Provides details of the current status of the invoked remediation action for that resource.</p>"
)
type remediationExecutionStatus = {
  @ocaml.doc("<p>The time when the remediation execution was last updated.</p>")
  @as("LastUpdatedTime")
  lastUpdatedTime: option<date>,
  @ocaml.doc("<p>Start time when the remediation was executed.</p>") @as("InvocationTime")
  invocationTime: option<date>,
  @ocaml.doc("<p>Details of every step.</p>") @as("StepDetails")
  stepDetails: option<remediationExecutionSteps>,
  @ocaml.doc("<p>ENUM of the values.</p>") @as("State") state: option<remediationExecutionState>,
  @as("ResourceKey") resourceKey: option<resourceKey>,
}
@ocaml.doc("<p>Details about the query.</p>")
type queryInfo = {
  @ocaml.doc("<p>Returns a <code>FieldInfo</code> object.</p>") @as("SelectFields")
  selectFields: option<fieldInfoList>,
}
@ocaml.doc(
  "<p>An organization conformance pack that has information about conformance packs that Config creates in member accounts. </p>"
)
type organizationConformancePack = {
  @ocaml.doc("<p>Last time when organization conformation pack was updated.</p>")
  @as("LastUpdateTime")
  lastUpdateTime: date,
  @ocaml.doc(
    "<p>A comma-separated list of accounts excluded from organization conformance pack.</p>"
  )
  @as("ExcludedAccounts")
  excludedAccounts: option<excludedAccounts>,
  @ocaml.doc("<p>A list of <code>ConformancePackInputParameter</code> objects.</p>")
  @as("ConformancePackInputParameters")
  conformancePackInputParameters: option<conformancePackInputParameters>,
  @ocaml.doc("<p>Any folder structure you want to add to an Amazon S3 bucket.</p>
		       <note>
            <p>This field is optional.</p>
         </note>")
  @as("DeliveryS3KeyPrefix")
  deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket where Config stores conformance pack templates.  </p>
		       <note>
            <p>This field is optional.</p>
         </note>")
  @as("DeliveryS3Bucket")
  deliveryS3Bucket: option<deliveryS3Bucket>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of organization conformance pack.</p>")
  @as("OrganizationConformancePackArn")
  organizationConformancePackArn: stringWithCharLimit256,
  @ocaml.doc("<p>The name you assign to an organization conformance pack.</p>")
  @as("OrganizationConformancePackName")
  organizationConformancePackName: organizationConformancePackName,
}
@ocaml.doc(
  "<p>An organization Config rule that has information about Config rules that Config creates in member accounts.</p>"
)
type organizationConfigRule = {
  @ocaml.doc("<p>An
			object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have
			debug logging enabled, and other custom rule metadata, such as resource type, resource
			ID of Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>")
  @as("OrganizationCustomPolicyRuleMetadata")
  organizationCustomPolicyRuleMetadata: option<organizationCustomPolicyRuleMetadataNoPolicy>,
  @ocaml.doc("<p>The timestamp of the last update.</p>") @as("LastUpdateTime")
  lastUpdateTime: option<date>,
  @ocaml.doc("<p>A comma-separated list of accounts excluded from organization Config rule.</p>")
  @as("ExcludedAccounts")
  excludedAccounts: option<excludedAccounts>,
  @ocaml.doc("<p>An <code>OrganizationCustomRuleMetadata</code> object.</p>")
  @as("OrganizationCustomRuleMetadata")
  organizationCustomRuleMetadata: option<organizationCustomRuleMetadata>,
  @ocaml.doc("<p>An <code>OrganizationManagedRuleMetadata</code> object.</p>")
  @as("OrganizationManagedRuleMetadata")
  organizationManagedRuleMetadata: option<organizationManagedRuleMetadata>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of organization Config rule.</p>")
  @as("OrganizationConfigRuleArn")
  organizationConfigRuleArn: stringWithCharLimit256,
  @ocaml.doc("<p>The name that you assign to organization Config rule.</p>")
  @as("OrganizationConfigRuleName")
  organizationConfigRuleName: organizationConfigRuleName,
}
@ocaml.doc("<p>List of each of the failed remediation exceptions with specific reasons.</p>")
type failedRemediationExceptionBatch = {
  @ocaml.doc("<p>Returns remediation exception resource key object of the failed items.</p>")
  @as("FailedItems")
  failedItems: option<remediationExceptions>,
  @ocaml.doc("<p>Returns a failure message. For example, the auto-remediation has failed.</p>")
  @as("FailureMessage")
  failureMessage: option<string_>,
}
@ocaml.doc("<p>List of each of the failed delete remediation exceptions with specific reasons.</p>")
type failedDeleteRemediationExceptionsBatch = {
  @ocaml.doc("<p>Returns remediation exception resource key object of the failed items.</p>")
  @as("FailedItems")
  failedItems: option<remediationExceptionResourceKeys>,
  @ocaml.doc(
    "<p>Returns a failure message for delete remediation exception. For example, Config creates an exception due to an internal error.</p>"
  )
  @as("FailureMessage")
  failureMessage: option<string_>,
}
@ocaml.doc("<p>The details of an Config evaluation. Provides the Amazon Web Services
			resource that was evaluated, the compliance of the resource, related
			time stamps, and supplementary information.</p>")
type evaluationResult = {
  @ocaml.doc("<p>An encrypted token that associates an evaluation with an Config rule. The token identifies the rule, the Amazon Web Services resource being
			evaluated, and the event that triggered the evaluation.</p>")
  @as("ResultToken")
  resultToken: option<string_>,
  @ocaml.doc("<p>Supplementary information about how the evaluation determined
			the compliance.</p>")
  @as("Annotation")
  annotation: option<stringWithCharLimit256>,
  @ocaml.doc("<p>The time when the Config rule evaluated the Amazon Web Services
			resource.</p>")
  @as("ConfigRuleInvokedTime")
  configRuleInvokedTime: option<date>,
  @ocaml.doc("<p>The time when Config recorded the evaluation
			result.</p>")
  @as("ResultRecordedTime")
  resultRecordedTime: option<date>,
  @ocaml.doc("<p>Indicates whether the Amazon Web Services resource complies with the Config
			rule that evaluated it.</p>
		       <p>For the <code>EvaluationResult</code> data type, Config
			supports only the <code>COMPLIANT</code>,
			<code>NON_COMPLIANT</code>, and <code>NOT_APPLICABLE</code> values.
			Config does not support the <code>INSUFFICIENT_DATA</code> value
			for the <code>EvaluationResult</code> data type.</p>")
  @as("ComplianceType")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>Uniquely identifies the evaluation result.</p>") @as("EvaluationResultIdentifier")
  evaluationResultIdentifier: option<evaluationResultIdentifier>,
}
type deliveryChannelStatusList = array<deliveryChannelStatus>
type deliveryChannelList = array<deliveryChannel>
type conformancePackRuleComplianceList = array<conformancePackRuleCompliance>
@ocaml.doc(
  "<p>The details of a conformance pack evaluation. Provides Config rule and Amazon Web Services resource type that was evaluated, the compliance of the conformance pack, related time stamps, and supplementary information. </p>"
)
type conformancePackEvaluationResult = {
  @ocaml.doc(
    "<p>Supplementary information about how the evaluation determined the compliance. </p>"
  )
  @as("Annotation")
  annotation: option<annotation>,
  @ocaml.doc("<p>The time when Config recorded the evaluation result. </p>")
  @as("ResultRecordedTime")
  resultRecordedTime: date,
  @ocaml.doc("<p>The time when Config rule evaluated Amazon Web Services resource.</p>")
  @as("ConfigRuleInvokedTime")
  configRuleInvokedTime: date,
  @as("EvaluationResultIdentifier") evaluationResultIdentifier: evaluationResultIdentifier,
  @ocaml.doc(
    "<p>The compliance type. The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>. <code>INSUFFICIENT_DATA</code> is not supported.</p>"
  )
  @as("ComplianceType")
  complianceType: conformancePackComplianceType,
}
@ocaml.doc(
  "<p>Returns details of a conformance pack. A conformance pack is a collection of Config rules and remediation actions that can be easily deployed in an account and a region.</p>"
)
type conformancePackDetail = {
  @ocaml.doc("<p>Amazon Web Services service that created the conformance pack.</p>")
  @as("CreatedBy")
  createdBy: option<stringWithCharLimit256>,
  @ocaml.doc("<p>Last time when conformation pack update was requested. </p>")
  @as("LastUpdateRequestedTime")
  lastUpdateRequestedTime: option<date>,
  @ocaml.doc("<p>A list of <code>ConformancePackInputParameter</code> objects.</p>")
  @as("ConformancePackInputParameters")
  conformancePackInputParameters: option<conformancePackInputParameters>,
  @ocaml.doc("<p>The prefix for the Amazon S3 bucket.</p>
		       <note>
            <p>This field is optional.</p>
         </note>")
  @as("DeliveryS3KeyPrefix")
  deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket where Config stores conformance pack templates. </p>
	        <note>
            <p>This field is optional.</p>
         </note>")
  @as("DeliveryS3Bucket")
  deliveryS3Bucket: option<deliveryS3Bucket>,
  @ocaml.doc("<p>ID of the conformance pack.</p>") @as("ConformancePackId")
  conformancePackId: conformancePackId,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the conformance pack.</p>") @as("ConformancePackArn")
  conformancePackArn: conformancePackArn,
  @ocaml.doc("<p>Name of the conformance pack.</p>") @as("ConformancePackName")
  conformancePackName: conformancePackName,
}
@ocaml.doc("<p>An object that represents the recording of configuration
			changes of an Amazon Web Services resource.</p>")
type configurationRecorder = {
  @ocaml.doc("<p>Specifies the types of Amazon Web Services resources for which Config
			records configuration changes.</p>")
  recordingGroup: option<recordingGroup>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of the IAM role used to describe the
			Amazon Web Services resources associated with the account.</p>")
  roleARN: option<string_>,
  @ocaml.doc("<p>The name of the recorder. By default, Config automatically
			assigns the name \"default\" when creating the configuration recorder.
			You cannot change the assigned name.</p>")
  name: option<recorderName>,
}
@ocaml.doc("<p>A list that contains detailed configurations of a specified
			resource.</p>")
type configurationItem = {
  @ocaml.doc("<p>Configuration attributes that Config returns for certain
			resource types to supplement the information returned for the
				<code>configuration</code> parameter.</p>")
  supplementaryConfiguration: option<supplementaryConfiguration>,
  @ocaml.doc("<p>The description of the resource configuration.</p>")
  configuration: option<configuration>,
  @ocaml.doc("<p>A list of related Amazon Web Services resources.</p>")
  relationships: option<relationshipList>,
  @ocaml.doc("<p>A list of CloudTrail event IDs.</p>
		       <p>A populated field indicates that the current configuration was
			initiated by the events recorded in the CloudTrail log. For more
			information about CloudTrail, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html\">What Is CloudTrail</a>.</p>
		       <p>An empty field indicates that the current configuration was not
			initiated by any event. As of Version 1.3, the relatedEvents field is empty. 
			You can access the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_LookupEvents.html\">LookupEvents API</a> in the <i>CloudTrail API Reference</i> to retrieve the events for the resource.</p>")
  relatedEvents: option<relatedEventList>,
  @ocaml.doc("<p>A mapping of key value tags associated with the
			resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The time stamp when the resource was created.</p>")
  resourceCreationTime: option<resourceCreationTime>,
  @ocaml.doc("<p>The Availability Zone associated with the resource.</p>")
  availabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The region where the resource resides.</p>") awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The custom name of the resource, if available.</p>")
  resourceName: option<resourceName>,
  @ocaml.doc("<p>The ID of the resource (for example,
			<code>sg-xxxxxx</code>).</p>")
  resourceId: option<resourceId>,
  @ocaml.doc("<p>The type of Amazon Web Services resource.</p>") resourceType: option<resourceType>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) associated with the resource.</p>") arn: option<arn>,
  @ocaml.doc("<p>Unique MD5 hash that represents the configuration item's
			state.</p>
		       <p>You can use MD5 hash to compare the states of two or more
			configuration items that are associated with the same
			resource.</p>")
  configurationItemMD5Hash: option<configurationItemMD5Hash>,
  @ocaml.doc("<p>An identifier that indicates the ordering of the configuration
			items of a resource.</p>")
  configurationStateId: option<configurationStateId>,
  @ocaml.doc("<p>The configuration item status. The valid values are:</p>
		
		       <ul>
            <li>
               <p>OK – The resource configuration has been updated</p>
            </li>
            <li>
               <p>ResourceDiscovered – The resource was newly discovered</p>
            </li>
            <li>
               <p>ResourceNotRecorded – The resource was discovered but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
            </li>
            <li>
               <p>ResourceDeleted – The resource was deleted</p>
            </li>
            <li>
               <p>ResourceDeletedNotRecorded – The resource was deleted but its configuration was not recorded since the recorder excludes the recording of resources of this type</p>
            </li>
         </ul>
		       <note>
            <p>The CIs do not incur any cost.</p>
         </note>")
  configurationItemStatus: option<configurationItemStatus>,
  @ocaml.doc("<p>The time when the configuration recording was
			initiated.</p>")
  configurationItemCaptureTime: option<configurationItemCaptureTime>,
  @ocaml.doc("<p>The 12-digit Amazon Web Services account ID associated with the
			resource.</p>")
  accountId: option<accountId>,
  @ocaml.doc("<p>The version number of the resource configuration.</p>") version: option<version>,
}
@ocaml.doc("<p>The number of Amazon Web Services resources of a specific type that are
			compliant or noncompliant, up to a maximum of 100 for
			each.</p>")
type complianceSummaryByResourceType = {
  @ocaml.doc("<p>The number of Amazon Web Services resources that are compliant or noncompliant,
			up to a maximum of 100 for each.</p>")
  @as("ComplianceSummary")
  complianceSummary: option<complianceSummary>,
  @ocaml.doc("<p>The type of Amazon Web Services resource.</p>") @as("ResourceType")
  resourceType: option<stringWithCharLimit256>,
}
@ocaml.doc("<p>Indicates whether an Amazon Web Services resource that is evaluated according
			to one or more Config rules is compliant. A resource is
			compliant if it complies with all of the rules that evaluate it. A
			resource is noncompliant if it does not comply with one or more of
			these rules.</p>")
type complianceByResource = {
  @ocaml.doc(
    "<p>Indicates whether the Amazon Web Services resource complies with all of the Config rules that evaluated it.</p>"
  )
  @as("Compliance")
  compliance: option<compliance>,
  @ocaml.doc("<p>The ID of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceId")
  resourceId: option<baseResourceId>,
  @ocaml.doc("<p>The type of the Amazon Web Services resource that was evaluated.</p>")
  @as("ResourceType")
  resourceType: option<stringWithCharLimit256>,
}
@ocaml.doc("<p>Indicates whether an Config rule is compliant. A rule is
			compliant if all of the resources that the rule evaluated comply
			with it. A rule is noncompliant if any of these resources do not
			comply.</p>")
type complianceByConfigRule = {
  @ocaml.doc("<p>Indicates whether the Config rule is compliant.</p>") @as("Compliance")
  compliance: option<compliance>,
  @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
  configRuleName: option<stringWithCharLimit64>,
}
type baseConfigurationItems = array<baseConfigurationItem>
@ocaml.doc("<p>The details of an Config evaluation for an account ID and
			region in an aggregator. Provides the Amazon Web Services resource that was
			evaluated, the compliance of the resource, related time stamps, and
			supplementary information. </p>")
type aggregateEvaluationResult = {
  @ocaml.doc("<p>The source region from where the data is aggregated.</p>") @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit account ID of the source account.</p>") @as("AccountId")
  accountId: option<accountId>,
  @ocaml.doc("<p>Supplementary information about how the agrregate evaluation
			determined the compliance.</p>")
  @as("Annotation")
  annotation: option<stringWithCharLimit256>,
  @ocaml.doc("<p>The time when the Config rule evaluated the Amazon Web Services
			resource.</p>")
  @as("ConfigRuleInvokedTime")
  configRuleInvokedTime: option<date>,
  @ocaml.doc("<p>The time when Config recorded the aggregate evaluation
			result.</p>")
  @as("ResultRecordedTime")
  resultRecordedTime: option<date>,
  @ocaml.doc("<p>The resource compliance status.</p>
		       <p>For the <code>AggregationEvaluationResult</code> data type, Config supports only the <code>COMPLIANT</code> and
				<code>NON_COMPLIANT</code>. Config does not support the
				<code>NOT_APPLICABLE</code> and <code>INSUFFICIENT_DATA</code>
			value.</p>")
  @as("ComplianceType")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>Uniquely identifies the evaluation result.</p>") @as("EvaluationResultIdentifier")
  evaluationResultIdentifier: option<evaluationResultIdentifier>,
}
type aggregateConformancePackComplianceSummaryList = array<
  aggregateConformancePackComplianceSummary,
>
@ocaml.doc("<p>Returns the number of compliant and noncompliant rules for one
			or more accounts and regions in an aggregator.</p>")
type aggregateComplianceCount = {
  @ocaml.doc("<p>The number of compliant and noncompliant Config
			rules.</p>")
  @as("ComplianceSummary")
  complianceSummary: option<complianceSummary>,
  @ocaml.doc("<p>The 12-digit account ID or region based on the GroupByKey
			value.</p>")
  @as("GroupName")
  groupName: option<stringWithCharLimit256>,
}
type aggregateComplianceByConformancePackList = array<aggregateComplianceByConformancePack>
@ocaml.doc("<p>Indicates whether an Config rule is compliant based on
			account ID, region, compliance, and rule name.</p>
		       <p>A rule is compliant if all of the resources that the rule
			evaluated comply with it. It is noncompliant if any of these
			resources do not comply.</p>")
type aggregateComplianceByConfigRule = {
  @ocaml.doc("<p>The source region from where the data is aggregated.</p>") @as("AwsRegion")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>The 12-digit account ID of the source account.</p>") @as("AccountId")
  accountId: option<accountId>,
  @ocaml.doc("<p>Indicates whether an Amazon Web Services resource or Config rule is
			compliant and provides the number of contributors that affect the
			compliance.</p>")
  @as("Compliance")
  compliance: option<compliance>,
  @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
  configRuleName: option<configRuleName>,
}
type accountAggregationSourceList = array<accountAggregationSource>
type remediationParameters = Js.Dict.t<remediationParameterValue>
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
@ocaml.doc("<p>The details about the configuration aggregator, including
			information about source accounts, regions, and metadata of the
			aggregator. </p>")
type configurationAggregator = {
  @ocaml.doc("<p>Amazon Web Services service that created the configuration aggregator.</p>")
  @as("CreatedBy")
  createdBy: option<stringWithCharLimit256>,
  @ocaml.doc("<p>The time of the last update.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<date>,
  @ocaml.doc("<p>The time stamp when the configuration aggregator was
			created.</p>")
  @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>Provides an organization and list of regions to be
			aggregated.</p>")
  @as("OrganizationAggregationSource")
  organizationAggregationSource: option<organizationAggregationSource>,
  @ocaml.doc("<p>Provides a list of source accounts and regions to be
			aggregated.</p>")
  @as("AccountAggregationSources")
  accountAggregationSources: option<accountAggregationSourceList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the aggregator.</p>")
  @as("ConfigurationAggregatorArn")
  configurationAggregatorArn: option<configurationAggregatorArn>,
  @ocaml.doc("<p>The name of the aggregator.</p>") @as("ConfigurationAggregatorName")
  configurationAggregatorName: option<configurationAggregatorName>,
}
@ocaml.doc("<p>An Config rule represents an Lambda function that you
			create for a custom rule or a predefined function for an Config managed
			rule. The function evaluates configuration items to assess whether
			your Amazon Web Services resources comply with your desired configurations. This
			function can run when Config detects a configuration change to
			an Amazon Web Services resource and at a periodic frequency that you choose (for
			example, every 24 hours).</p>

		       <note>
			         <p>You can use the Amazon Web Services CLI and Amazon Web Services SDKs if you want to create
				a rule that triggers evaluations for your resources when Config delivers the configuration snapshot. For more
				information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
		       </note>
		       <p>For more information about developing and using Config
			rules, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config.html\">Evaluating Amazon Web Services resource Configurations with Config</a>
			in the <i>Config Developer Guide</i>.</p>")
type configRule = {
  @ocaml.doc("<p>Service principal name of the service that created the
			rule.</p>
		       <note>
			         <p>The field is populated only if the service linked rule is
				created by a service. The field is empty if you create your own
				rule.</p>
		       </note>")
  @as("CreatedBy")
  createdBy: option<stringWithCharLimit256>,
  @ocaml.doc("<p>Indicates whether the Config rule is active or is currently
			being deleted by Config. It can also indicate the evaluation
			status for the Config rule.</p>

		       <p>Config sets the state of the rule to
				<code>EVALUATING</code> temporarily after you use the
				<code>StartConfigRulesEvaluation</code> request to evaluate your
			resources against the Config rule.</p>

		       <p>Config sets the state of the rule to
				<code>DELETING_RESULTS</code> temporarily after you use the
				<code>DeleteEvaluationResults</code> request to delete the
			current evaluation results for the Config rule.</p>

		       <p>Config temporarily sets the state of a rule to
				<code>DELETING</code> after you use the
				<code>DeleteConfigRule</code> request to delete the rule. After
			Config deletes the rule, the rule and all of its evaluations are
			erased and are no longer available.</p>")
  @as("ConfigRuleState")
  configRuleState: option<configRuleState>,
  @ocaml.doc("<p>The maximum frequency with which Config runs evaluations
			for a rule. You can specify a value for
				<code>MaximumExecutionFrequency</code> when:</p>
		       <ul>
            <li>
				           <p>You are using an Config managed rule that is triggered at
					a periodic frequency.</p>
			         </li>
            <li>
				           <p>Your custom rule is triggered when Config delivers
					the configuration snapshot. For more information, see <a>ConfigSnapshotDeliveryProperties</a>.</p>
			         </li>
         </ul>



		       <note>
			         <p>By default, rules with a periodic trigger are evaluated
				every 24 hours. To change the frequency, specify a valid value
				for the <code>MaximumExecutionFrequency</code>
				parameter.</p>
		       </note>")
  @as("MaximumExecutionFrequency")
  maximumExecutionFrequency: option<maximumExecutionFrequency>,
  @ocaml.doc("<p>A string, in JSON format, that is passed to the Config rule
			Lambda function.</p>")
  @as("InputParameters")
  inputParameters: option<stringWithCharLimit1024>,
  @ocaml.doc("<p>Provides the rule owner (Amazon Web Services or customer), the rule identifier,
			and the notifications that cause the function to evaluate your Amazon Web Services
			resources.</p>")
  @as("Source")
  source: source,
  @ocaml.doc("<p>Defines which resources can trigger an evaluation for the rule.
			The scope can include one or more resource types, a combination of
			one resource type and one resource ID, or a combination of a tag key
			and value. Specify a scope to constrain the resources that can
			trigger an evaluation for the rule. If you do not specify a scope,
			evaluations are triggered when any resource in the recording group
			changes.</p>
		       <note>
            <p>The scope can be empty. </p>
         </note>")
  @as("Scope")
  scope: option<scope>,
  @ocaml.doc("<p>The description that you provide for the Config
			rule.</p>")
  @as("Description")
  description: option<emptiableStringWithCharLimit256>,
  @ocaml.doc("<p>The ID of the Config rule.</p>") @as("ConfigRuleId")
  configRuleId: option<stringWithCharLimit64>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Config
			rule.</p>")
  @as("ConfigRuleArn")
  configRuleArn: option<stringWithCharLimit256>,
  @ocaml.doc("<p>The name that you assign to the Config rule. The name is
			required if you are adding a new rule.</p>")
  @as("ConfigRuleName")
  configRuleName: option<configRuleName>,
}
type complianceSummariesByResourceType = array<complianceSummaryByResourceType>
type complianceByResources = array<complianceByResource>
type complianceByConfigRules = array<complianceByConfigRule>
type aggregateEvaluationResultList = array<aggregateEvaluationResult>
type aggregateComplianceCountList = array<aggregateComplianceCount>
type aggregateComplianceByConfigRuleList = array<aggregateComplianceByConfigRule>
@ocaml.doc(
  "<p>An object that represents the details about the remediation configuration that includes the remediation action, parameters, and data to execute the action.</p>"
)
type remediationConfiguration = {
  @ocaml.doc("<p>Name of the service that owns the service linked rule, if applicable.</p>")
  @as("CreatedByService")
  createdByService: option<stringWithCharLimit1024>,
  @ocaml.doc("<p>Amazon Resource Name (ARN) of remediation configuration.</p>") @as("Arn")
  arn: option<stringWithCharLimit1024>,
  @ocaml.doc("<p>Maximum time in seconds that Config runs auto-remediation. If you do not select a number, the default is 60 seconds. </p>
		       <p>For example, if you specify RetryAttemptSeconds as 50 seconds and MaximumAutomaticAttempts as 5, 
		Config will run auto-remediations 5 times within 50 seconds before throwing an exception.</p>")
  @as("RetryAttemptSeconds")
  retryAttemptSeconds: option<autoRemediationAttemptSeconds>,
  @ocaml.doc("<p>The maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.</p>
		       <p>For example, if you specify MaximumAutomaticAttempts as 5 with RetryAttemptSeconds as 50 seconds, 
			
			Config will put a RemediationException on your behalf for the failing resource after the 5th failed attempt within 50 seconds.</p>")
  @as("MaximumAutomaticAttempts")
  maximumAutomaticAttempts: option<autoRemediationAttempts>,
  @ocaml.doc("<p>An ExecutionControls object.</p>") @as("ExecutionControls")
  executionControls: option<executionControls>,
  @ocaml.doc("<p>The remediation is triggered automatically.</p>") @as("Automatic")
  automatic: option<boolean_>,
  @ocaml.doc("<p>The type of a resource. </p>") @as("ResourceType") resourceType: option<string_>,
  @ocaml.doc("<p>An object of the RemediationParameterValue.</p>") @as("Parameters")
  parameters: option<remediationParameters>,
  @ocaml.doc("<p>Version of the target. For example, version of the SSM document.</p>
		       <note>
            <p>If you make backward incompatible changes to the SSM document, 
			you must call PutRemediationConfiguration API again to ensure the remediations can run.</p>
         </note>")
  @as("TargetVersion")
  targetVersion: option<string_>,
  @ocaml.doc("<p>Target ID is the name of the public document.</p>") @as("TargetId")
  targetId: stringWithCharLimit256,
  @ocaml.doc(
    "<p>The type of the target. Target executes remediation. For example, SSM document.</p>"
  )
  @as("TargetType")
  targetType: remediationTargetType,
  @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
  configRuleName: configRuleName,
}
type configurationAggregatorList = array<configurationAggregator>
type configRules = array<configRule>
type remediationConfigurations = array<remediationConfiguration>
@ocaml.doc("<p>List of each of the failed remediations with specific reasons.</p>")
type failedRemediationBatch = {
  @ocaml.doc("<p>Returns remediation configurations of the failed items.</p>") @as("FailedItems")
  failedItems: option<remediationConfigurations>,
  @ocaml.doc("<p>Returns a failure message. For example, the resource is already compliant.</p>")
  @as("FailureMessage")
  failureMessage: option<string_>,
}
type failedRemediationBatches = array<failedRemediationBatch>
@ocaml.doc("<fullname>Config</fullname>

		       <p>Config provides a way to keep track of the configurations
			of all the Amazon Web Services resources associated with your Amazon Web Services account. You can
			use Config to get the current and historical configurations of
			each Amazon Web Services resource and also to get information about the relationship
			between the resources. An Amazon Web Services resource can be an Amazon Compute
			Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an
			elastic network Interface (ENI), or a security group. For a complete
			list of resources currently supported by Config, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources\">Supported Amazon Web Services resources</a>.</p>

		       <p>You can access and manage Config through the Amazon Web Services Management
			Console, the Amazon Web Services Command Line Interface (Amazon Web Services CLI), the Config
			API, or the Amazon Web Services SDKs for Config. This reference guide contains
			documentation for the Config API and the Amazon Web Services CLI commands that
			you can use to manage Config. The Config API uses the
			Signature Version 4 protocol for signing requests. For more
			information about how to sign a request with this protocol, see
				<a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature
				Version 4 Signing Process</a>. For detailed information
			about Config features and their associated actions or commands,
			as well as how to work with Amazon Web Services Management Console, see <a href=\"https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html\">What Is Config</a> in the <i>Config Developer
				Guide</i>.</p>")
module StopConfigurationRecorder = {
  type t
  @ocaml.doc("<p>The input for the <a>StopConfigurationRecorder</a> action.</p>")
  type request = {
    @ocaml.doc(
      "<p>The name of the recorder object that records each configuration change made to the resources.</p>"
    )
    @as("ConfigurationRecorderName")
    configurationRecorderName: recorderName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "StopConfigurationRecorderCommand"
  let make = (~configurationRecorderName, ()) =>
    new({configurationRecorderName: configurationRecorderName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartConfigurationRecorder = {
  type t
  @ocaml.doc("<p>The input for the <a>StartConfigurationRecorder</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>The name of the recorder object that records each configuration
			change made to the resources.</p>")
    @as("ConfigurationRecorderName")
    configurationRecorderName: recorderName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "StartConfigurationRecorderCommand"
  let make = (~configurationRecorderName, ()) =>
    new({configurationRecorderName: configurationRecorderName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetOrganizationCustomRulePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of your organization Config Custom Policy rule. </p>")
    @as("OrganizationConfigRuleName")
    organizationConfigRuleName: organizationConfigRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>The policy definition containing the logic for your organization Config Custom Policy rule.</p>"
    )
    @as("PolicyText")
    policyText: option<policyText>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetOrganizationCustomRulePolicyCommand"
  let make = (~organizationConfigRuleName, ()) =>
    new({organizationConfigRuleName: organizationConfigRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCustomRulePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of your Config Custom Policy rule.</p>") @as("ConfigRuleName")
    configRuleName: option<configRuleName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The policy definition containing the logic for your Config Custom Policy rule.</p>"
    )
    @as("PolicyText")
    policyText: option<policyText>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "GetCustomRulePolicyCommand"
  let make = (~configRuleName=?, ()) => new({configRuleName: configRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeliverConfigSnapshot = {
  type t
  @ocaml.doc("<p>The input for the <a>DeliverConfigSnapshot</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>The name of the delivery channel through which the snapshot is
			delivered.</p>")
    deliveryChannelName: channelName,
  }
  @ocaml.doc("<p>The output for the <a>DeliverConfigSnapshot</a>
			action, in JSON format.</p>")
  type response = {
    @ocaml.doc("<p>The ID of the snapshot that is being created.</p>")
    configSnapshotId: option<string_>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "DeliverConfigSnapshotCommand"
  let make = (~deliveryChannelName, ()) => new({deliveryChannelName: deliveryChannelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteStoredQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the query that you want to delete.</p>") @as("QueryName")
    queryName: queryName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "DeleteStoredQueryCommand"
  let make = (~queryName, ()) => new({queryName: queryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRetentionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the retention configuration to delete.</p>")
    @as("RetentionConfigurationName")
    retentionConfigurationName: retentionConfigurationName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteRetentionConfigurationCommand"
  let make = (~retentionConfigurationName, ()) =>
    new({retentionConfigurationName: retentionConfigurationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourceConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Unique identifier of the resource.</p>") @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>The type of the resource.</p>") @as("ResourceType")
    resourceType: resourceTypeString,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "DeleteResourceConfigCommand"
  let make = (~resourceId, ~resourceType, ()) =>
    new({resourceId: resourceId, resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRemediationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The type of a resource.</p>") @as("ResourceType") resourceType: option<string_>,
    @ocaml.doc(
      "<p>The name of the Config rule for which you want to delete remediation configuration.</p>"
    )
    @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteRemediationConfigurationCommand"
  let make = (~configRuleName, ~resourceType=?, ()) =>
    new({resourceType: resourceType, configRuleName: configRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePendingAggregationRequest = {
  type t
  type request = {
    @ocaml.doc("<p>The region requesting to aggregate data.</p>") @as("RequesterAwsRegion")
    requesterAwsRegion: awsRegion,
    @ocaml.doc("<p>The 12-digit account ID of the account requesting to aggregate
			data.</p>")
    @as("RequesterAccountId")
    requesterAccountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeletePendingAggregationRequestCommand"
  let make = (~requesterAwsRegion, ~requesterAccountId, ()) =>
    new({requesterAwsRegion: requesterAwsRegion, requesterAccountId: requesterAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOrganizationConformancePack = {
  type t
  type request = {
    @ocaml.doc("<p>The name of organization conformance pack that you want to delete.</p>")
    @as("OrganizationConformancePackName")
    organizationConformancePackName: organizationConformancePackName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteOrganizationConformancePackCommand"
  let make = (~organizationConformancePackName, ()) =>
    new({organizationConformancePackName: organizationConformancePackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteOrganizationConfigRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of organization Config rule that you want to delete.</p>")
    @as("OrganizationConfigRuleName")
    organizationConfigRuleName: organizationConfigRuleName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteOrganizationConfigRuleCommand"
  let make = (~organizationConfigRuleName, ()) =>
    new({organizationConfigRuleName: organizationConfigRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEvaluationResults = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the Config rule for which you want to delete
			the evaluation results.</p>")
    @as("ConfigRuleName")
    configRuleName: stringWithCharLimit64,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteEvaluationResultsCommand"
  let make = (~configRuleName, ()) => new({configRuleName: configRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDeliveryChannel = {
  type t
  @ocaml.doc("<p>The input for the <a>DeleteDeliveryChannel</a>
			action. The action accepts the following data, in JSON format.
		</p>")
  type request = {
    @ocaml.doc("<p>The name of the delivery channel to delete.</p>") @as("DeliveryChannelName")
    deliveryChannelName: channelName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "DeleteDeliveryChannelCommand"
  let make = (~deliveryChannelName, ()) => new({deliveryChannelName: deliveryChannelName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConformancePack = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the conformance pack you want to delete.</p>") @as("ConformancePackName")
    conformancePackName: conformancePackName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "DeleteConformancePackCommand"
  let make = (~conformancePackName, ()) => new({conformancePackName: conformancePackName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConfigurationRecorder = {
  type t
  @ocaml.doc("<p>The request object for the
				<code>DeleteConfigurationRecorder</code> action.</p>")
  type request = {
    @ocaml.doc("<p>The name of the configuration recorder to be deleted. You can
			retrieve the name of your configuration recorder by using the
				<code>DescribeConfigurationRecorders</code> action.</p>")
    @as("ConfigurationRecorderName")
    configurationRecorderName: recorderName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteConfigurationRecorderCommand"
  let make = (~configurationRecorderName, ()) =>
    new({configurationRecorderName: configurationRecorderName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConfigurationAggregator = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteConfigurationAggregatorCommand"
  let make = (~configurationAggregatorName, ()) =>
    new({configurationAggregatorName: configurationAggregatorName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConfigRule = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The name of the Config rule that you want to
			delete.</p>")
    @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "DeleteConfigRuleCommand"
  let make = (~configRuleName, ()) => new({configRuleName: configRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAggregationAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>The region authorized to collect aggregated data.</p>")
    @as("AuthorizedAwsRegion")
    authorizedAwsRegion: awsRegion,
    @ocaml.doc("<p>The 12-digit account ID of the account authorized to aggregate
			data.</p>")
    @as("AuthorizedAccountId")
    authorizedAccountId: accountId,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteAggregationAuthorizationCommand"
  let make = (~authorizedAwsRegion, ~authorizedAccountId, ()) =>
    new({authorizedAwsRegion: authorizedAwsRegion, authorizedAccountId: authorizedAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>"
    )
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartConfigRulesEvaluation = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The list of names of Config rules that you want to run
			evaluations for.</p>")
    @as("ConfigRuleNames")
    configRuleNames: option<reevaluateConfigRuleNames>,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "StartConfigRulesEvaluationCommand"
  let make = (~configRuleNames=?, ()) => new({configRuleNames: configRuleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutRetentionConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Number of days Config stores your historical
			information.</p>
		       <note>
			         <p>Currently, only applicable to the configuration item
				history.</p>
		       </note>")
    @as("RetentionPeriodInDays")
    retentionPeriodInDays: retentionPeriodInDays,
  }
  type response = {
    @ocaml.doc("<p>Returns a retention configuration object.</p>") @as("RetentionConfiguration")
    retentionConfiguration: option<retentionConfiguration>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutRetentionConfigurationCommand"
  let make = (~retentionPeriodInDays, ()) => new({retentionPeriodInDays: retentionPeriodInDays})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourceConfig = {
  type t
  type request = {
    @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The configuration object of the resource in valid JSON format. It must match the schema registered with CloudFormation.</p>
		       <note>
            <p>The configuration JSON must not exceed 64 KB.</p>
         </note>")
    @as("Configuration")
    configuration: configuration,
    @ocaml.doc("<p>Name of the resource.</p>") @as("ResourceName")
    resourceName: option<resourceName>,
    @ocaml.doc("<p>Unique identifier of the resource.</p>") @as("ResourceId")
    resourceId: resourceId,
    @ocaml.doc("<p>Version of the schema registered for the ResourceType in CloudFormation.</p>")
    @as("SchemaVersionId")
    schemaVersionId: schemaVersionId,
    @ocaml.doc("<p>The type of the resource. The custom resource type must be registered with CloudFormation. </p>
		       <note>
            <p>You cannot use the organization names “amzn”, “amazon”, “alexa”, “custom” with custom resource types. It is the first part of the ResourceType up to the first ::.</p>
         </note>")
    @as("ResourceType")
    resourceType: resourceTypeString,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "PutResourceConfigCommand"
  let make = (
    ~configuration,
    ~resourceId,
    ~schemaVersionId,
    ~resourceType,
    ~tags=?,
    ~resourceName=?,
    (),
  ) =>
    new({
      tags: tags,
      configuration: configuration,
      resourceName: resourceName,
      resourceId: resourceId,
      schemaVersionId: schemaVersionId,
      resourceType: resourceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutExternalEvaluation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An <code>ExternalEvaluation</code> object that provides details about compliance.</p>"
    )
    @as("ExternalEvaluation")
    externalEvaluation: externalEvaluation,
    @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "PutExternalEvaluationCommand"
  let make = (~externalEvaluation, ~configRuleName, ()) =>
    new({externalEvaluation: externalEvaluation, configRuleName: configRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetStoredQuery = {
  type t
  type request = {@ocaml.doc("<p>The name of the query.</p>") @as("QueryName") queryName: queryName}
  type response = {
    @ocaml.doc("<p>Returns a <code>StoredQuery</code> object.</p>") @as("StoredQuery")
    storedQuery: option<storedQuery>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "GetStoredQueryCommand"
  let make = (~queryName, ()) => new({queryName: queryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>An array of tag object.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>"
    )
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartRemediationExecution = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>"
    )
    @as("ResourceKeys")
    resourceKeys: resourceKeys,
    @ocaml.doc(
      "<p>The list of names of Config rules that you want to run remediation execution for.</p>"
    )
    @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>For resources that have failed to start execution, the API returns a resource key object.</p>"
    )
    @as("FailedItems")
    failedItems: option<resourceKeys>,
    @ocaml.doc("<p>Returns a failure message. For example, the resource is already compliant.</p>")
    @as("FailureMessage")
    failureMessage: option<string_>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "StartRemediationExecutionCommand"
  let make = (~resourceKeys, ~configRuleName, ()) =>
    new({resourceKeys: resourceKeys, configRuleName: configRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutStoredQuery = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>Tags</code> object.</p>") @as("Tags") tags: option<tagsList>,
    @ocaml.doc("<p>A list of <code>StoredQuery</code> objects. 
			The mandatory fields are <code>QueryName</code> and <code>Expression</code>.</p>
		       <note>
            <p>When you are creating a query, you must provide a query name and an expression. 
			When you are updating a query, you must provide a query name but updating the description is optional.</p>
         </note>")
    @as("StoredQuery")
    storedQuery: storedQuery,
  }
  type response = {
    @ocaml.doc("<p>Amazon Resource Name (ARN) of the query. 
			For example, arn:partition:service:region:account-id:resource-type/resource-name/resource-id.</p>")
    @as("QueryArn")
    queryArn: option<queryArn>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "PutStoredQueryCommand"
  let make = (~storedQuery, ~tags=?, ()) => new({tags: tags, storedQuery: storedQuery})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutOrganizationConformancePack = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of Amazon Web Services accounts to be excluded from an organization conformance pack while deploying a conformance pack.</p>"
    )
    @as("ExcludedAccounts")
    excludedAccounts: option<excludedAccounts>,
    @ocaml.doc("<p>A list of <code>ConformancePackInputParameter</code> objects.</p>")
    @as("ConformancePackInputParameters")
    conformancePackInputParameters: option<conformancePackInputParameters>,
    @ocaml.doc("<p>The prefix for the Amazon S3 bucket.</p>
		       <note>
            <p>This field is optional.</p>
         </note>")
    @as("DeliveryS3KeyPrefix")
    deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
		       <note>
            <p>This field is optional. If used, it must be prefixed with <code>awsconfigconforms</code>.</p>
         </note>")
    @as("DeliveryS3Bucket")
    deliveryS3Bucket: option<deliveryS3Bucket>,
    @ocaml.doc("<p>A string containing full conformance pack template body. Structure containing the template body
			with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>Location of file containing the template body. The uri must point to the conformance pack template
			(max size: 300 KB).</p>
		       <note>
            <p>You must have access to read Amazon S3 bucket.</p>
         </note>")
    @as("TemplateS3Uri")
    templateS3Uri: option<templateS3Uri>,
    @ocaml.doc("<p>Name of the organization conformance pack you want to create.</p>")
    @as("OrganizationConformancePackName")
    organizationConformancePackName: organizationConformancePackName,
  }
  type response = {
    @ocaml.doc("<p>ARN of the organization conformance pack.</p>")
    @as("OrganizationConformancePackArn")
    organizationConformancePackArn: option<stringWithCharLimit256>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutOrganizationConformancePackCommand"
  let make = (
    ~organizationConformancePackName,
    ~excludedAccounts=?,
    ~conformancePackInputParameters=?,
    ~deliveryS3KeyPrefix=?,
    ~deliveryS3Bucket=?,
    ~templateBody=?,
    ~templateS3Uri=?,
    (),
  ) =>
    new({
      excludedAccounts: excludedAccounts,
      conformancePackInputParameters: conformancePackInputParameters,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      deliveryS3Bucket: deliveryS3Bucket,
      templateBody: templateBody,
      templateS3Uri: templateS3Uri,
      organizationConformancePackName: organizationConformancePackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutOrganizationConfigRule = {
  type t
  type request = {
    @ocaml.doc("<p>An object that specifies metadata for your organization's Config Custom Policy rule. The metadata includes the runtime system in use, which accounts have debug
			logging enabled, and other custom rule metadata, such as resource type, resource ID of
				Amazon Web Services resource, and organization trigger types that initiate Config to evaluate Amazon Web Services resources against a rule.</p>")
    @as("OrganizationCustomPolicyRuleMetadata")
    organizationCustomPolicyRuleMetadata: option<organizationCustomPolicyRuleMetadata>,
    @ocaml.doc(
      "<p>A comma-separated list of accounts that you want to exclude from an organization Config rule.</p>"
    )
    @as("ExcludedAccounts")
    excludedAccounts: option<excludedAccounts>,
    @ocaml.doc("<p>An <code>OrganizationCustomRuleMetadata</code> object.</p>")
    @as("OrganizationCustomRuleMetadata")
    organizationCustomRuleMetadata: option<organizationCustomRuleMetadata>,
    @ocaml.doc("<p>An <code>OrganizationManagedRuleMetadata</code> object. </p>")
    @as("OrganizationManagedRuleMetadata")
    organizationManagedRuleMetadata: option<organizationManagedRuleMetadata>,
    @ocaml.doc("<p>The name that you assign to an organization Config rule.</p>")
    @as("OrganizationConfigRuleName")
    organizationConfigRuleName: organizationConfigRuleName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an organization Config rule.</p>")
    @as("OrganizationConfigRuleArn")
    organizationConfigRuleArn: option<stringWithCharLimit256>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutOrganizationConfigRuleCommand"
  let make = (
    ~organizationConfigRuleName,
    ~organizationCustomPolicyRuleMetadata=?,
    ~excludedAccounts=?,
    ~organizationCustomRuleMetadata=?,
    ~organizationManagedRuleMetadata=?,
    (),
  ) =>
    new({
      organizationCustomPolicyRuleMetadata: organizationCustomPolicyRuleMetadata,
      excludedAccounts: excludedAccounts,
      organizationCustomRuleMetadata: organizationCustomRuleMetadata,
      organizationManagedRuleMetadata: organizationManagedRuleMetadata,
      organizationConfigRuleName: organizationConfigRuleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEvaluations = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Use this parameter to specify a test run for
			<code>PutEvaluations</code>. You can verify whether your Lambda function will deliver evaluation results to Config. No
			updates occur to your existing evaluations, and evaluation results
			are not sent to Config.</p>

		       <note>
			         <p>When <code>TestMode</code> is <code>true</code>,
					<code>PutEvaluations</code> doesn't require a valid value
				for the <code>ResultToken</code> parameter, but the value cannot
				be null.</p>
		       </note>")
    @as("TestMode")
    testMode: option<boolean_>,
    @ocaml.doc("<p>An encrypted token that associates an evaluation with an Config rule. Identifies the rule and the event that triggered the
			evaluation.</p>")
    @as("ResultToken")
    resultToken: string_,
    @ocaml.doc("<p>The assessments that the Lambda function performs. Each
			evaluation identifies an Amazon Web Services resource and indicates whether it
			complies with the Config rule that invokes the Lambda
			function.</p>")
    @as("Evaluations")
    evaluations: option<evaluations>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>Requests that failed because of a client or server
			error.</p>")
    @as("FailedEvaluations")
    failedEvaluations: option<evaluations>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "PutEvaluationsCommand"
  let make = (~resultToken, ~testMode=?, ~evaluations=?, ()) =>
    new({testMode: testMode, resultToken: resultToken, evaluations: evaluations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDeliveryChannel = {
  type t
  @ocaml.doc("<p>The input for the <a>PutDeliveryChannel</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>The configuration delivery channel object that delivers the
			configuration information to an Amazon S3 bucket and to an Amazon
			SNS topic.</p>")
    @as("DeliveryChannel")
    deliveryChannel: deliveryChannel,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "PutDeliveryChannelCommand"
  let make = (~deliveryChannel, ()) => new({deliveryChannel: deliveryChannel})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutConformancePack = {
  type t
  type request = {
    @ocaml.doc("<p>A list of <code>ConformancePackInputParameter</code> objects.</p>")
    @as("ConformancePackInputParameters")
    conformancePackInputParameters: option<conformancePackInputParameters>,
    @ocaml.doc("<p>The prefix for the Amazon S3 bucket. </p>
		       <note>
            <p>This field is optional.</p>
         </note>")
    @as("DeliveryS3KeyPrefix")
    deliveryS3KeyPrefix: option<deliveryS3KeyPrefix>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket where Config stores conformance pack templates.</p>
		       <note>
            <p>This field is optional.</p>
         </note>")
    @as("DeliveryS3Bucket")
    deliveryS3Bucket: option<deliveryS3Bucket>,
    @ocaml.doc("<p>A string containing full conformance pack template body. Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes.</p>
		       <note>
            <p>You can only use a YAML template with two resource types: Config rule (<code>AWS::Config::ConfigRule</code>) and a remediation action (<code>AWS::Config::RemediationConfiguration</code>).</p>
         </note>")
    @as("TemplateBody")
    templateBody: option<templateBody>,
    @ocaml.doc("<p>Location of file containing the template body (<code>s3://bucketname/prefix</code>). The uri must point to the conformance pack template (max size: 300 KB) that is located in an Amazon S3 bucket in the same region as the conformance pack. </p>
		       <note>
            <p>You must have access to read Amazon S3 bucket.</p>
         </note>")
    @as("TemplateS3Uri")
    templateS3Uri: option<templateS3Uri>,
    @ocaml.doc("<p>Name of the conformance pack you want to create.</p>") @as("ConformancePackName")
    conformancePackName: conformancePackName,
  }
  type response = {
    @ocaml.doc("<p>ARN of the conformance pack.</p>") @as("ConformancePackArn")
    conformancePackArn: option<conformancePackArn>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "PutConformancePackCommand"
  let make = (
    ~conformancePackName,
    ~conformancePackInputParameters=?,
    ~deliveryS3KeyPrefix=?,
    ~deliveryS3Bucket=?,
    ~templateBody=?,
    ~templateS3Uri=?,
    (),
  ) =>
    new({
      conformancePackInputParameters: conformancePackInputParameters,
      deliveryS3KeyPrefix: deliveryS3KeyPrefix,
      deliveryS3Bucket: deliveryS3Bucket,
      templateBody: templateBody,
      templateS3Uri: templateS3Uri,
      conformancePackName: conformancePackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAggregationAuthorization = {
  type t
  type request = {
    @ocaml.doc("<p>An array of tag object.</p>") @as("Tags") tags: option<tagsList>,
    @ocaml.doc("<p>The region authorized to collect aggregated data.</p>")
    @as("AuthorizedAwsRegion")
    authorizedAwsRegion: awsRegion,
    @ocaml.doc("<p>The 12-digit account ID of the account authorized to aggregate data.</p>")
    @as("AuthorizedAccountId")
    authorizedAccountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>Returns an AggregationAuthorization object.
			
		</p>")
    @as("AggregationAuthorization")
    aggregationAuthorization: option<aggregationAuthorization>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutAggregationAuthorizationCommand"
  let make = (~authorizedAwsRegion, ~authorizedAccountId, ~tags=?, ()) =>
    new({
      tags: tags,
      authorizedAwsRegion: authorizedAwsRegion,
      authorizedAccountId: authorizedAccountId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of tags returned on each page. The limit maximum is 50. You cannot specify a number greater than 50. If you specify 0, Config uses the default. </p>"
    )
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that identifies the resource for which to list the tags. Currently, the supported resources are <code>ConfigRule</code>, <code>ConfigurationAggregator</code> and <code>AggregatorAuthorization</code>.</p>"
    )
    @as("ResourceArn")
    resourceArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The tags for the resource.</p>") @as("Tags") tags: option<tagList_>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ~limit=?, ()) =>
    new({nextToken: nextToken, limit: limit, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStoredQueries = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be returned with a single call.</p>")
    @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc(
      "<p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. 
			To retrieve the next set of results, call this action again and assign that token to the request object's <code>NextToken</code> parameter. 
			If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>. </p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of <code>StoredQueryMetadata</code> objects.</p>")
    @as("StoredQueryMetadata")
    storedQueryMetadata: option<storedQueryMetadataList>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "ListStoredQueriesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDiscoveredResources = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies whether Config includes deleted resources in the
			results. By default, deleted resources are not included.</p>")
    includeDeletedResources: option<boolean_>,
    @ocaml.doc("<p>The maximum number of resource identifiers returned on each
			page. The default is 100. You cannot specify a number greater than
			100. If you specify 0, Config uses the default.</p>")
    limit: option<limit>,
    @ocaml.doc("<p>The custom name of only those resources that you want Config to list in the response. If you do not specify this
			parameter, Config lists all resources of the specified type that
			it has discovered.</p>")
    resourceName: option<resourceName>,
    @ocaml.doc("<p>The IDs of only those resources that you want Config to
			list in the response. If you do not specify this parameter, Config lists all resources of the specified type that it has
			discovered.</p>")
    resourceIds: option<resourceIdList>,
    @ocaml.doc("<p>The type of resources that you want Config to list in the
			response.</p>")
    resourceType: resourceType,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The details that identify a resource that is discovered by Config, including the resource type, ID, and (if available) the
			custom resource name.</p>")
    resourceIdentifiers: option<resourceIdentifierList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "ListDiscoveredResourcesCommand"
  let make = (
    ~resourceType,
    ~nextToken=?,
    ~includeDeletedResources=?,
    ~limit=?,
    ~resourceName=?,
    ~resourceIds=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      includeDeletedResources: includeDeletedResources,
      limit: limit,
      resourceName: resourceName,
      resourceIds: resourceIds,
      resourceType: resourceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAggregateDiscoveredResources = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of resource identifiers returned on each page. You cannot specify a number greater than 100. If you specify 0, Config uses the default.</p>"
    )
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>Filters the results based on the <code>ResourceFilters</code> object.</p>")
    @as("Filters")
    filters: option<resourceFilters>,
    @ocaml.doc("<p>The type of resources that you want Config to list in the response.</p>")
    @as("ResourceType")
    resourceType: resourceType,
    @ocaml.doc("<p>The name of the configuration aggregator. </p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of <code>ResourceIdentifiers</code> objects.</p>")
    @as("ResourceIdentifiers")
    resourceIdentifiers: option<discoveredResourceIdentifierList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "ListAggregateDiscoveredResourcesCommand"
  let make = (
    ~resourceType,
    ~configurationAggregatorName,
    ~nextToken=?,
    ~limit=?,
    ~filters=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      filters: filters,
      resourceType: resourceType,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOrganizationConformancePackDetailedStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of <code>OrganizationConformancePackDetailedStatuses</code> returned on each page. 
			If you do not specify a number, Config uses the default. The default is 100. </p>")
    @as("Limit")
    limit: option<cosmosPageLimit>,
    @ocaml.doc("<p>An <code>OrganizationResourceDetailedStatusFilters</code> object.</p>")
    @as("Filters")
    filters: option<organizationResourceDetailedStatusFilters>,
    @ocaml.doc(
      "<p>The name of organization conformance pack for which you want status details for member accounts.</p>"
    )
    @as("OrganizationConformancePackName")
    organizationConformancePackName: organizationConformancePackName,
  }
  type response = {
    @ocaml.doc(
      "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of <code>OrganizationConformancePackDetailedStatus</code> objects. </p>")
    @as("OrganizationConformancePackDetailedStatuses")
    organizationConformancePackDetailedStatuses: option<
      organizationConformancePackDetailedStatuses,
    >,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetOrganizationConformancePackDetailedStatusCommand"
  let make = (~organizationConformancePackName, ~nextToken=?, ~limit=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      filters: filters,
      organizationConformancePackName: organizationConformancePackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOrganizationConfigRuleDetailedStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of <code>OrganizationConfigRuleDetailedStatus</code> returned on each page. If you do not specify a number, Config uses the default. The default is 100.</p>"
    )
    @as("Limit")
    limit: option<cosmosPageLimit>,
    @ocaml.doc("<p>A <code>StatusDetailFilters</code> object.</p>") @as("Filters")
    filters: option<statusDetailFilters>,
    @ocaml.doc(
      "<p>The name of your organization Config rule for which you want status details for member accounts.</p>"
    )
    @as("OrganizationConfigRuleName")
    organizationConfigRuleName: organizationConfigRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of <code>MemberAccountStatus</code> objects.</p>")
    @as("OrganizationConfigRuleDetailedStatus")
    organizationConfigRuleDetailedStatus: option<organizationConfigRuleDetailedStatus>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetOrganizationConfigRuleDetailedStatusCommand"
  let make = (~organizationConfigRuleName, ~nextToken=?, ~limit=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      filters: filters,
      organizationConfigRuleName: organizationConfigRuleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDiscoveredResourceCounts = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of <a>ResourceCount</a> objects
			returned on each page. The default is 100. You cannot specify a
			number greater than 100. If you specify 0, Config uses the
			default.</p>")
    limit: option<limit>,
    @ocaml.doc("<p>The comma-separated list that specifies the resource types that
			you want Config to return (for example,
				<code>\"AWS::EC2::Instance\"</code>,
			<code>\"AWS::IAM::User\"</code>).</p>

		       <p>If a value for <code>resourceTypes</code> is not specified, Config returns all resource types that Config is recording in
			the region for your account.</p>
		       <note>
			         <p>If the configuration recorder is turned off, Config
				returns an empty list of <a>ResourceCount</a>
				objects. If the configuration recorder is not recording a
				specific resource type (for example, S3 buckets), that resource
				type is not returned in the list of <a>ResourceCount</a> objects.</p>
		       </note>")
    resourceTypes: option<resourceTypes>,
  }
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of <code>ResourceCount</code> objects. Each object is
			listed in descending order by the number of resources.</p>")
    resourceCounts: option<resourceCounts>,
    @ocaml.doc("<p>The total number of resources that Config is recording in
			the region for your account. If you specify resource types in the
			request, Config returns only the total number of resources for
			those resource types.</p>


		       <p class=\"title\">
            <b>Example</b>
         </p>
         <ol>
            <li>
				           <p>Config is recording three resource types in the US
					East (Ohio) Region for your account: 25 EC2 instances, 20
					IAM users, and 15 S3 buckets, for a total of 60
					resources.</p>
			         </li>
            <li>
				           <p>You make a call to the
						<code>GetDiscoveredResourceCounts</code> action and
					specify the resource type,
						<code>\"AWS::EC2::Instances\"</code>, in the
					request.</p>
			         </li>
            <li>
				           <p>Config returns 25 for
						<code>totalDiscoveredResources</code>.</p>
			         </li>
         </ol>")
    totalDiscoveredResources: option<long>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetDiscoveredResourceCountsCommand"
  let make = (~nextToken=?, ~limit=?, ~resourceTypes=?, ()) =>
    new({nextToken: nextToken, limit: limit, resourceTypes: resourceTypes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConformancePackComplianceSummary = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of conformance packs returned on each page.</p>") @as("Limit")
    limit: option<pageSizeLimit>,
    @ocaml.doc("<p>Names of conformance packs.</p>") @as("ConformancePackNames")
    conformancePackNames: conformancePackNamesToSummarizeList,
  }
  type response = {
    @ocaml.doc(
      "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>ConformancePackComplianceSummary</code> objects. </p>")
    @as("ConformancePackComplianceSummaryList")
    conformancePackComplianceSummaryList: option<conformancePackComplianceSummaryList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetConformancePackComplianceSummaryCommand"
  let make = (~conformancePackNames, ~nextToken=?, ~limit=?, ()) =>
    new({nextToken: nextToken, limit: limit, conformancePackNames: conformancePackNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComplianceSummaryByConfigRule = {
  type t
  type request = {.}
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The number of Config rules that are compliant and the
			number that are noncompliant, up to a maximum of 25 for
			each.</p>")
    @as("ComplianceSummary")
    complianceSummary: option<complianceSummary>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetComplianceSummaryByConfigRuleCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAggregateDiscoveredResourceCounts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of <a>GroupedResourceCount</a> objects returned on each page. The default is 1000. You cannot specify a number greater than 1000. If you specify 0, Config uses the default.</p>"
    )
    @as("Limit")
    limit: option<groupByAPILimit>,
    @ocaml.doc("<p>The key to group the resource counts.</p>") @as("GroupByKey")
    groupByKey: option<resourceCountGroupKey>,
    @ocaml.doc("<p>Filters the results based on the <code>ResourceCountFilters</code> object.</p>")
    @as("Filters")
    filters: option<resourceCountFilters>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of GroupedResourceCount objects.</p>")
    @as("GroupedResourceCounts")
    groupedResourceCounts: option<groupedResourceCountList>,
    @ocaml.doc(
      "<p>The key passed into the request object. If <code>GroupByKey</code> is not provided, the result will be empty.</p>"
    )
    @as("GroupByKey")
    groupByKey: option<stringWithCharLimit256>,
    @ocaml.doc(
      "<p>The total number of resources that are present in an aggregator with the filters that you provide.</p>"
    )
    @as("TotalDiscoveredResources")
    totalDiscoveredResources: long,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetAggregateDiscoveredResourceCountsCommand"
  let make = (
    ~configurationAggregatorName,
    ~nextToken=?,
    ~limit=?,
    ~groupByKey=?,
    ~filters=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      groupByKey: groupByKey,
      filters: filters,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRetentionConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of names of retention configurations for which you want
			details. If you do not specify a name, Config returns details
			for all the retention configurations for that account.</p>
		       <note>
			         <p>Currently, Config supports only one retention
				configuration per region in your account.</p>
		       </note>")
    @as("RetentionConfigurationNames")
    retentionConfigurationNames: option<retentionConfigurationNameList>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a retention configuration object.</p>") @as("RetentionConfigurations")
    retentionConfigurations: option<retentionConfigurationList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeRetentionConfigurationsCommand"
  let make = (~nextToken=?, ~retentionConfigurationNames=?, ()) =>
    new({nextToken: nextToken, retentionConfigurationNames: retentionConfigurationNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRemediationExceptions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of RemediationExceptionResourceKey returned on each page. The default is 25. If you specify 0, Config uses the default.</p>"
    )
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc(
      "<p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>"
    )
    @as("ResourceKeys")
    resourceKeys: option<remediationExceptionResourceKeys>,
    @ocaml.doc("<p>The name of the Config rule.</p>") @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns a list of remediation exception objects.</p>")
    @as("RemediationExceptions")
    remediationExceptions: option<remediationExceptions>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeRemediationExceptionsCommand"
  let make = (~configRuleName, ~nextToken=?, ~limit=?, ~resourceKeys=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      resourceKeys: resourceKeys,
      configRuleName: configRuleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePendingAggregationRequests = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of evaluation results returned on each page.
			The default is maximum. If you specify 0, Config uses the
			default.</p>")
    @as("Limit")
    limit: option<describePendingAggregationRequestsLimit>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns a PendingAggregationRequests object.</p>")
    @as("PendingAggregationRequests")
    pendingAggregationRequests: option<pendingAggregationRequestList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribePendingAggregationRequestsCommand"
  let make = (~nextToken=?, ~limit=?, ()) => new({nextToken: nextToken, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrganizationConformancePackStatuses = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of OrganizationConformancePackStatuses returned on each page. 
			If you do no specify a number, Config uses the default. The default is 100. </p>")
    @as("Limit")
    limit: option<cosmosPageLimit>,
    @ocaml.doc("<p>The names of organization conformance packs for which you want status details. 
			If you do not specify any names, Config returns details for all your organization conformance packs. </p>")
    @as("OrganizationConformancePackNames")
    organizationConformancePackNames: option<organizationConformancePackNames>,
  }
  type response = {
    @ocaml.doc(
      "<p>The nextToken string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of <code>OrganizationConformancePackStatus</code> objects. </p>")
    @as("OrganizationConformancePackStatuses")
    organizationConformancePackStatuses: option<organizationConformancePackStatuses>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeOrganizationConformancePackStatusesCommand"
  let make = (~nextToken=?, ~limit=?, ~organizationConformancePackNames=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      organizationConformancePackNames: organizationConformancePackNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrganizationConfigRuleStatuses = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of <code>OrganizationConfigRuleStatuses</code> returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>"
    )
    @as("Limit")
    limit: option<cosmosPageLimit>,
    @ocaml.doc(
      "<p>The names of organization Config rules for which you want status details. If you do not specify any names, Config returns details for all your organization Config rules.</p>"
    )
    @as("OrganizationConfigRuleNames")
    organizationConfigRuleNames: option<organizationConfigRuleNames>,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of <code>OrganizationConfigRuleStatus</code> objects.</p>")
    @as("OrganizationConfigRuleStatuses")
    organizationConfigRuleStatuses: option<organizationConfigRuleStatuses>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeOrganizationConfigRuleStatusesCommand"
  let make = (~nextToken=?, ~limit=?, ~organizationConfigRuleNames=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      organizationConfigRuleNames: organizationConfigRuleNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConformancePackStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of conformance packs status returned on each page.</p>")
    @as("Limit")
    limit: option<pageSizeLimit>,
    @ocaml.doc("<p>Comma-separated list of conformance pack names.</p>") @as("ConformancePackNames")
    conformancePackNames: option<conformancePackNamesList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>ConformancePackStatusDetail</code> objects.</p>")
    @as("ConformancePackStatusDetails")
    conformancePackStatusDetails: option<conformancePackStatusDetailsList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConformancePackStatusCommand"
  let make = (~nextToken=?, ~limit=?, ~conformancePackNames=?, ()) =>
    new({nextToken: nextToken, limit: limit, conformancePackNames: conformancePackNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationRecorderStatus = {
  type t
  @ocaml.doc("<p>The input for the <a>DescribeConfigurationRecorderStatus</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>The name(s) of the configuration recorder. If the name is not
			specified, the action returns the current status of all the
			configuration recorders associated with the account.</p>")
    @as("ConfigurationRecorderNames")
    configurationRecorderNames: option<configurationRecorderNameList>,
  }
  @ocaml.doc("<p>The output for the <a>DescribeConfigurationRecorderStatus</a> action, in JSON
			format.</p>")
  type response = {
    @ocaml.doc("<p>A list that contains status of the specified
			recorders.</p>")
    @as("ConfigurationRecordersStatus")
    configurationRecordersStatus: option<configurationRecorderStatusList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConfigurationRecorderStatusCommand"
  let make = (~configurationRecorderNames=?, ()) =>
    new({configurationRecorderNames: configurationRecorderNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationAggregatorSourcesStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of AggregatorSourceStatus returned on each
			page. The default is maximum. If you specify 0, Config uses the
			default.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the status type.</p>
		       <ul>
            <li>
				           <p>Valid value FAILED indicates errors while moving
					data.</p>
			         </li>
            <li>
				           <p>Valid value SUCCEEDED indicates the data was
					successfully moved.</p>
			         </li>
            <li>
				           <p>Valid value OUTDATED indicates the data is not the most
					recent.</p>
			         </li>
         </ul>")
    @as("UpdateStatus")
    updateStatus: option<aggregatedSourceStatusTypeList>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns an AggregatedSourceStatus object.
			</p>")
    @as("AggregatedSourceStatusList")
    aggregatedSourceStatusList: option<aggregatedSourceStatusList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConfigurationAggregatorSourcesStatusCommand"
  let make = (~configurationAggregatorName, ~limit=?, ~nextToken=?, ~updateStatus=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      updateStatus: updateStatus,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigRuleEvaluationStatus = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The number of rule evaluation results that you want
			returned.</p>
		
		       <p>This parameter is required if the rule limit for your account
			is more than the default of 150 rules.</p>
		       <p>For information about requesting a rule limit increase, see
				<a href=\"http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_config\">Config Limits</a> in the <i>Amazon Web Services General
				Reference Guide</i>.</p>")
    @as("Limit")
    limit: option<ruleLimit>,
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the Config managed rules for which you want
			status information. If you do not specify any names, Config
			returns status information for all Config managed rules that you
			use.</p>")
    @as("ConfigRuleNames")
    configRuleNames: option<configRuleNames>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Status information about your Config managed rules.</p>")
    @as("ConfigRulesEvaluationStatus")
    configRulesEvaluationStatus: option<configRuleEvaluationStatusList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConfigRuleEvaluationStatusCommand"
  let make = (~limit=?, ~nextToken=?, ~configRuleNames=?, ()) =>
    new({limit: limit, nextToken: nextToken, configRuleNames: configRuleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAggregationAuthorizations = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of AggregationAuthorizations returned on
			each page. The default is maximum. If you specify 0, Config uses
			the default.</p>")
    @as("Limit")
    limit: option<limit>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns a list of authorizations granted to various aggregator
			accounts and regions.</p>")
    @as("AggregationAuthorizations")
    aggregationAuthorizations: option<aggregationAuthorizationList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeAggregationAuthorizationsCommand"
  let make = (~nextToken=?, ~limit=?, ()) => new({nextToken: nextToken, limit: limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SelectResourceConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of query results returned on each page. </p>") @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The SQL query <code>SELECT</code> command.</p>") @as("Expression")
    expression: expression,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns the <code>QueryInfo</code> object.</p>") @as("QueryInfo")
    queryInfo: option<queryInfo>,
    @ocaml.doc("<p>Returns the results for the SQL query.</p>") @as("Results")
    results: option<results>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "SelectResourceConfigCommand"
  let make = (~expression, ~nextToken=?, ~limit=?, ()) =>
    new({nextToken: nextToken, limit: limit, expression: expression})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SelectAggregateResourceConfig = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of query results returned on each page. Config also allows the Limit request parameter.</p>"
    )
    @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc("<p>The maximum number of query results returned on each page. </p>") @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
    @ocaml.doc("<p>The SQL query SELECT command. </p>") @as("Expression") expression: expression,
  }
  type response = {
    @ocaml.doc(
      "<p>The nextToken string returned in a previous request that you use to request the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @as("QueryInfo") queryInfo: option<queryInfo>,
    @ocaml.doc("<p>Returns the results for the SQL query.</p>") @as("Results")
    results: option<results>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "SelectAggregateResourceConfigCommand"
  let make = (
    ~configurationAggregatorName,
    ~expression,
    ~nextToken=?,
    ~maxResults=?,
    ~limit=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      limit: limit,
      configurationAggregatorName: configurationAggregatorName,
      expression: expression,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConfigurationRecorder = {
  type t
  @ocaml.doc("<p>The input for the <a>PutConfigurationRecorder</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>The configuration recorder object that records each
			configuration change made to the resources.</p>")
    @as("ConfigurationRecorder")
    configurationRecorder: configurationRecorder,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutConfigurationRecorderCommand"
  let make = (~configurationRecorder, ()) => new({configurationRecorder: configurationRecorder})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetAggregateResourceConfig = {
  type t
  type request = {
    @ocaml.doc("<p>An object that identifies aggregate resource.</p>") @as("ResourceIdentifier")
    resourceIdentifier: aggregateResourceIdentifier,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc("<p>Returns a <code>ConfigurationItem</code> object.</p>") @as("ConfigurationItem")
    configurationItem: option<configurationItem>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetAggregateResourceConfigCommand"
  let make = (~resourceIdentifier, ~configurationAggregatorName, ()) =>
    new({
      resourceIdentifier: resourceIdentifier,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAggregateConformancePackComplianceSummary = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results returned on each page. The default is maximum. If you specify 0, Config uses the default.</p>"
    )
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc(
      "<p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>"
    )
    @as("GroupByKey")
    groupByKey: option<aggregateConformancePackComplianceSummaryGroupKey>,
    @ocaml.doc(
      "<p>Filters the results based on the <code>AggregateConformancePackComplianceSummaryFilters</code> object.</p>"
    )
    @as("Filters")
    filters: option<aggregateConformancePackComplianceSummaryFilters>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Groups the result based on Amazon Web Services account ID or Amazon Web Services Region.</p>"
    )
    @as("GroupByKey")
    groupByKey: option<stringWithCharLimit256>,
    @ocaml.doc(
      "<p>Returns a list of <code>AggregateConformancePackComplianceSummary</code> object.</p>"
    )
    @as("AggregateConformancePackComplianceSummaries")
    aggregateConformancePackComplianceSummaries: option<
      aggregateConformancePackComplianceSummaryList,
    >,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetAggregateConformancePackComplianceSummaryCommand"
  let make = (
    ~configurationAggregatorName,
    ~nextToken=?,
    ~limit=?,
    ~groupByKey=?,
    ~filters=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      groupByKey: groupByKey,
      filters: filters,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeliveryChannels = {
  type t
  @ocaml.doc("<p>The input for the <a>DescribeDeliveryChannels</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>A list of delivery channel names.</p>") @as("DeliveryChannelNames")
    deliveryChannelNames: option<deliveryChannelNameList>,
  }
  @ocaml.doc("<p>The output for the <a>DescribeDeliveryChannels</a>
			action.</p>")
  type response = {
    @ocaml.doc("<p>A list that contains the descriptions of the specified delivery
			channel.</p>")
    @as("DeliveryChannels")
    deliveryChannels: option<deliveryChannelList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeDeliveryChannelsCommand"
  let make = (~deliveryChannelNames=?, ()) => new({deliveryChannelNames: deliveryChannelNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDeliveryChannelStatus = {
  type t
  @ocaml.doc("<p>The input for the <a>DeliveryChannelStatus</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>A list of delivery channel names.</p>") @as("DeliveryChannelNames")
    deliveryChannelNames: option<deliveryChannelNameList>,
  }
  @ocaml.doc("<p>The output for the <a>DescribeDeliveryChannelStatus</a> action.</p>")
  type response = {
    @ocaml.doc("<p>A list that contains the status of a specified delivery
			channel.</p>")
    @as("DeliveryChannelsStatus")
    deliveryChannelsStatus: option<deliveryChannelStatusList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeDeliveryChannelStatusCommand"
  let make = (~deliveryChannelNames=?, ()) => new({deliveryChannelNames: deliveryChannelNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConformancePackCompliance = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of Config rules within a conformance pack are returned on each page.</p>"
    )
    @as("Limit")
    limit: option<describeConformancePackComplianceLimit>,
    @ocaml.doc("<p>A <code>ConformancePackComplianceFilters</code> object.</p>") @as("Filters")
    filters: option<conformancePackComplianceFilters>,
    @ocaml.doc("<p>Name of the conformance pack.</p>") @as("ConformancePackName")
    conformancePackName: conformancePackName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of <code>ConformancePackRuleCompliance</code> objects.</p>")
    @as("ConformancePackRuleComplianceList")
    conformancePackRuleComplianceList: conformancePackRuleComplianceList,
    @ocaml.doc("<p>Name of the conformance pack.</p>") @as("ConformancePackName")
    conformancePackName: conformancePackName,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConformancePackComplianceCommand"
  let make = (~conformancePackName, ~nextToken=?, ~limit=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      filters: filters,
      conformancePackName: conformancePackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAggregateComplianceByConformancePacks = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of conformance packs compliance details returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>"
    )
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc(
      "<p>Filters the result by <code>AggregateConformancePackComplianceFilters</code> object.</p>"
    )
    @as("Filters")
    filters: option<aggregateConformancePackComplianceFilters>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns the <code>AggregateComplianceByConformancePack</code> object.</p>")
    @as("AggregateComplianceByConformancePacks")
    aggregateComplianceByConformancePacks: option<aggregateComplianceByConformancePackList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeAggregateComplianceByConformancePacksCommand"
  let make = (~configurationAggregatorName, ~nextToken=?, ~limit=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      filters: filters,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetResourceConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A list of resource keys to be processed with the current
			request. Each element in the list consists of the resource type and
			resource ID.</p>")
    resourceKeys: resourceKeys,
  }
  type response = {
    @ocaml.doc("<p>A list of resource keys that were not processed with the
			current response. The unprocessesResourceKeys value is in the same
			form as ResourceKeys, so the value can be directly provided to a
			subsequent BatchGetResourceConfig operation.
			
			If there are no unprocessed resource keys, the response contains an
			empty unprocessedResourceKeys list. </p>")
    unprocessedResourceKeys: option<resourceKeys>,
    @ocaml.doc("<p>A list that contains the current configuration of one or more
			resources.</p>")
    baseConfigurationItems: option<baseConfigurationItems>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "BatchGetResourceConfigCommand"
  let make = (~resourceKeys, ()) => new({resourceKeys: resourceKeys})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetAggregateResourceConfig = {
  type t
  type request = {
    @ocaml.doc("<p>A list of aggregate ResourceIdentifiers objects. </p>")
    @as("ResourceIdentifiers")
    resourceIdentifiers: resourceIdentifiersList,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of resource identifiers that were not processed with current scope. The list is empty if all the resources are processed.</p>"
    )
    @as("UnprocessedResourceIdentifiers")
    unprocessedResourceIdentifiers: option<unprocessedResourceIdentifierList>,
    @ocaml.doc("<p>A list that contains the current configuration of one or more resources.</p>")
    @as("BaseConfigurationItems")
    baseConfigurationItems: option<baseConfigurationItems>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "BatchGetAggregateResourceConfigCommand"
  let make = (~resourceIdentifiers, ~configurationAggregatorName, ()) =>
    new({
      resourceIdentifiers: resourceIdentifiers,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRemediationExceptions = {
  type t
  type request = {
    @ocaml.doc("<p>The exception is automatically deleted after the expiration date.</p>")
    @as("ExpirationTime")
    expirationTime: option<date>,
    @ocaml.doc("<p>The message contains an explanation of the exception.</p>") @as("Message")
    message: option<stringWithCharLimit1024>,
    @ocaml.doc(
      "<p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>"
    )
    @as("ResourceKeys")
    resourceKeys: remediationExceptionResourceKeys,
    @ocaml.doc(
      "<p>The name of the Config rule for which you want to create remediation exception.</p>"
    )
    @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns a list of failed remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>"
    )
    @as("FailedBatches")
    failedBatches: option<failedRemediationExceptionBatches>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutRemediationExceptionsCommand"
  let make = (~resourceKeys, ~configRuleName, ~expirationTime=?, ~message=?, ()) =>
    new({
      expirationTime: expirationTime,
      message: message,
      resourceKeys: resourceKeys,
      configRuleName: configRuleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConfigurationAggregator = {
  type t
  type request = {
    @ocaml.doc("<p>An array of tag object.</p>") @as("Tags") tags: option<tagsList>,
    @ocaml.doc("<p>An OrganizationAggregationSource object.</p>")
    @as("OrganizationAggregationSource")
    organizationAggregationSource: option<organizationAggregationSource>,
    @ocaml.doc("<p>A list of AccountAggregationSource object.
			
		</p>")
    @as("AccountAggregationSources")
    accountAggregationSources: option<accountAggregationSourceList>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc("<p>Returns a ConfigurationAggregator object.</p>") @as("ConfigurationAggregator")
    configurationAggregator: option<configurationAggregator>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutConfigurationAggregatorCommand"
  let make = (
    ~configurationAggregatorName,
    ~tags=?,
    ~organizationAggregationSource=?,
    ~accountAggregationSources=?,
    (),
  ) =>
    new({
      tags: tags,
      organizationAggregationSource: organizationAggregationSource,
      accountAggregationSources: accountAggregationSources,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutConfigRule = {
  type t
  type request = {
    @ocaml.doc("<p>An array of tag object.</p>") @as("Tags") tags: option<tagsList>,
    @ocaml.doc("<p>The rule that you want to add to your account.</p>") @as("ConfigRule")
    configRule: configRule,
  }
  type response = {.}
  @module("@aws-sdk/client-config") @new external new: request => t = "PutConfigRuleCommand"
  let make = (~configRule, ~tags=?, ()) => new({tags: tags, configRule: configRule})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetResourceConfigHistory = {
  type t
  @ocaml.doc("<p>The input for the <a>GetResourceConfigHistory</a>
			action.</p>")
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of configuration items returned on each
			page. The default is 10. You cannot specify a number greater than
			100. If you specify 0, Config uses the default.</p>")
    limit: option<limit>,
    @ocaml.doc("<p>The chronological order for configuration items listed. By
			default, the results are listed in reverse chronological
			order.</p>")
    chronologicalOrder: option<chronologicalOrder>,
    @ocaml.doc("<p>The time stamp that indicates an earlier time. If not
			specified, the action returns paginated results that contain
			configuration items that start when the first configuration item was
			recorded.</p>")
    earlierTime: option<earlierTime>,
    @ocaml.doc("<p>The time stamp that indicates a later time. If not specified,
			current time is taken.</p>")
    laterTime: option<laterTime>,
    @ocaml.doc("<p>The ID of the resource (for example.,
			<code>sg-xxxxxx</code>).</p>")
    resourceId: resourceId,
    @ocaml.doc("<p>The resource type.</p>") resourceType: resourceType,
  }
  @ocaml.doc("<p>The output for the <a>GetResourceConfigHistory</a>
			action.</p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list that contains the configuration history of one or more
			resources.</p>")
    configurationItems: option<configurationItemList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetResourceConfigHistoryCommand"
  let make = (
    ~resourceId,
    ~resourceType,
    ~nextToken=?,
    ~limit=?,
    ~chronologicalOrder=?,
    ~earlierTime=?,
    ~laterTime=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      chronologicalOrder: chronologicalOrder,
      earlierTime: earlierTime,
      laterTime: laterTime,
      resourceId: resourceId,
      resourceType: resourceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConformancePackComplianceDetails = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of evaluation results returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>"
    )
    @as("Limit")
    limit: option<getConformancePackComplianceDetailsLimit>,
    @ocaml.doc("<p>A <code>ConformancePackEvaluationFilters</code> object.</p>") @as("Filters")
    filters: option<conformancePackEvaluationFilters>,
    @ocaml.doc("<p>Name of the conformance pack.</p>") @as("ConformancePackName")
    conformancePackName: conformancePackName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of <code>ConformancePackEvaluationResult</code> objects.</p>")
    @as("ConformancePackRuleEvaluationResults")
    conformancePackRuleEvaluationResults: option<conformancePackRuleEvaluationResultsList>,
    @ocaml.doc("<p>Name of the conformance pack.</p>") @as("ConformancePackName")
    conformancePackName: conformancePackName,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetConformancePackComplianceDetailsCommand"
  let make = (~conformancePackName, ~nextToken=?, ~limit=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      filters: filters,
      conformancePackName: conformancePackName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComplianceSummaryByResourceType = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Specify one or more resource types to get the number of
			resources that are compliant and the number that are noncompliant
			for each resource type.</p>
		       <p>For this request, you can specify an Amazon Web Services resource type such as
				<code>AWS::EC2::Instance</code>. You can specify that the
			resource type is an Amazon Web Services account by specifying
				<code>AWS::::Account</code>.</p>")
    @as("ResourceTypes")
    resourceTypes: option<resourceTypes>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The number of resources that are compliant and the number that
			are noncompliant. If one or more resource types were provided with
			the request, the numbers are returned for each resource type. The
			maximum number returned is 100.</p>")
    @as("ComplianceSummariesByResourceType")
    complianceSummariesByResourceType: option<complianceSummariesByResourceType>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetComplianceSummaryByResourceTypeCommand"
  let make = (~resourceTypes=?, ()) => new({resourceTypes: resourceTypes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComplianceDetailsByResource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the results by compliance.</p>
		       <p>The allowed values are <code>COMPLIANT</code>,
				<code>NON_COMPLIANT</code>, and
			<code>NOT_APPLICABLE</code>.</p>")
    @as("ComplianceTypes")
    complianceTypes: option<complianceTypes>,
    @ocaml.doc("<p>The ID of the Amazon Web Services resource for which you want compliance
			information.</p>")
    @as("ResourceId")
    resourceId: baseResourceId,
    @ocaml.doc("<p>The type of the Amazon Web Services resource for which you want compliance
			information.</p>")
    @as("ResourceType")
    resourceType: stringWithCharLimit256,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>Indicates whether the specified Amazon Web Services resource complies each Config rule.</p>"
    )
    @as("EvaluationResults")
    evaluationResults: option<evaluationResults>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetComplianceDetailsByResourceCommand"
  let make = (~resourceId, ~resourceType, ~nextToken=?, ~complianceTypes=?, ()) =>
    new({
      nextToken: nextToken,
      complianceTypes: complianceTypes,
      resourceId: resourceId,
      resourceType: resourceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComplianceDetailsByConfigRule = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of evaluation results returned on each page.
			The default is 10. You cannot specify a number greater than 100. If
			you specify 0, Config uses the default.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>Filters the results by compliance.</p>
		       <p>The allowed values are <code>COMPLIANT</code>,
				<code>NON_COMPLIANT</code>, and
			<code>NOT_APPLICABLE</code>.</p>")
    @as("ComplianceTypes")
    complianceTypes: option<complianceTypes>,
    @ocaml.doc("<p>The name of the Config rule for which you want compliance
			information.</p>")
    @as("ConfigRuleName")
    configRuleName: stringWithCharLimit64,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Indicates whether the Amazon Web Services resource complies with the specified
			Config rule.</p>")
    @as("EvaluationResults")
    evaluationResults: option<evaluationResults>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetComplianceDetailsByConfigRuleCommand"
  let make = (~configRuleName, ~nextToken=?, ~limit=?, ~complianceTypes=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      complianceTypes: complianceTypes,
      configRuleName: configRuleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAggregateConfigRuleComplianceSummary = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of evaluation results returned on each page.
			The default is 1000. You cannot specify a number greater than 1000.
			If you specify 0, Config uses the default.</p>")
    @as("Limit")
    limit: option<groupByAPILimit>,
    @ocaml.doc("<p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>") @as("GroupByKey")
    groupByKey: option<configRuleComplianceSummaryGroupKey>,
    @ocaml.doc("<p>Filters the results based on the
			ConfigRuleComplianceSummaryFilters object.</p>")
    @as("Filters")
    filters: option<configRuleComplianceSummaryFilters>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of AggregateComplianceCounts object.</p>")
    @as("AggregateComplianceCounts")
    aggregateComplianceCounts: option<aggregateComplianceCountList>,
    @ocaml.doc("<p>Groups the result based on ACCOUNT_ID or AWS_REGION.</p>") @as("GroupByKey")
    groupByKey: option<stringWithCharLimit256>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetAggregateConfigRuleComplianceSummaryCommand"
  let make = (
    ~configurationAggregatorName,
    ~nextToken=?,
    ~limit=?,
    ~groupByKey=?,
    ~filters=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      groupByKey: groupByKey,
      filters: filters,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAggregateComplianceDetailsByConfigRule = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of evaluation results returned on each page.
			The default is 50. You cannot specify a number greater than 100. If
			you specify 0, Config uses the default.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The resource compliance status.</p>
		       <note>
			         <p>For the
					<code>GetAggregateComplianceDetailsByConfigRuleRequest</code>
				data type, Config supports only the <code>COMPLIANT</code>
				and <code>NON_COMPLIANT</code>. Config does not support the
					<code>NOT_APPLICABLE</code> and
					<code>INSUFFICIENT_DATA</code> values.</p>
		       </note>")
    @as("ComplianceType")
    complianceType: option<complianceType>,
    @ocaml.doc("<p>The source region from where the data is aggregated.</p>") @as("AwsRegion")
    awsRegion: awsRegion,
    @ocaml.doc("<p>The 12-digit account ID of the source account.</p>") @as("AccountId")
    accountId: accountId,
    @ocaml.doc("<p>The name of the Config rule for which you want compliance
			information.</p>")
    @as("ConfigRuleName")
    configRuleName: configRuleName,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns an AggregateEvaluationResults object.</p>")
    @as("AggregateEvaluationResults")
    aggregateEvaluationResults: option<aggregateEvaluationResultList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "GetAggregateComplianceDetailsByConfigRuleCommand"
  let make = (
    ~awsRegion,
    ~accountId,
    ~configRuleName,
    ~configurationAggregatorName,
    ~nextToken=?,
    ~limit=?,
    ~complianceType=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      limit: limit,
      complianceType: complianceType,
      awsRegion: awsRegion,
      accountId: accountId,
      configRuleName: configRuleName,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRemediationExecutionStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of RemediationExecutionStatuses returned on each page. The default is maximum. If you specify 0, Config uses the default. </p>"
    )
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc(
      "<p>A list of resource keys to be processed with the current request. Each element in the list consists of the resource type and resource ID. </p>"
    )
    @as("ResourceKeys")
    resourceKeys: option<resourceKeys>,
    @ocaml.doc("<p>A list of Config rule names.</p>") @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns a list of remediation execution statuses objects.</p>")
    @as("RemediationExecutionStatuses")
    remediationExecutionStatuses: option<remediationExecutionStatuses>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeRemediationExecutionStatusCommand"
  let make = (~configRuleName, ~nextToken=?, ~limit=?, ~resourceKeys=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      resourceKeys: resourceKeys,
      configRuleName: configRuleName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrganizationConformancePacks = {
  type t
  type request = {
    @ocaml.doc("<p>The nextToken string returned on a previous page that you use to get the next page of results in a
			paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of organization config packs returned on each page. If you do no specify a
			number, Config uses the default. The default is 100.</p>")
    @as("Limit")
    limit: option<cosmosPageLimit>,
    @ocaml.doc("<p>The name that you assign to an organization conformance pack.</p>")
    @as("OrganizationConformancePackNames")
    organizationConformancePackNames: option<organizationConformancePackNames>,
  }
  type response = {
    @ocaml.doc("<p>The nextToken string returned on a previous page that you use to get the next page of results in a
			paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns a list of OrganizationConformancePacks objects.</p>")
    @as("OrganizationConformancePacks")
    organizationConformancePacks: option<organizationConformancePacks>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeOrganizationConformancePacksCommand"
  let make = (~nextToken=?, ~limit=?, ~organizationConformancePackNames=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      organizationConformancePackNames: organizationConformancePackNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrganizationConfigRules = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc(
      "<p>The maximum number of organization Config rules returned on each page. If you do no specify a number, Config uses the default. The default is 100.</p>"
    )
    @as("Limit")
    limit: option<cosmosPageLimit>,
    @ocaml.doc(
      "<p>The names of organization Config rules for which you want details. If you do not specify any names, Config returns details for all your organization Config rules.</p>"
    )
    @as("OrganizationConfigRuleNames")
    organizationConfigRuleNames: option<organizationConfigRuleNames>,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned on a previous page that you use to get the next page of results in a paginated response. </p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns a list of <code>OrganizationConfigRule</code> objects.</p>")
    @as("OrganizationConfigRules")
    organizationConfigRules: option<organizationConfigRules>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeOrganizationConfigRulesCommand"
  let make = (~nextToken=?, ~limit=?, ~organizationConfigRuleNames=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      organizationConfigRuleNames: organizationConfigRuleNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConformancePacks = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of conformance packs returned on each page.</p>") @as("Limit")
    limit: option<pageSizeLimit>,
    @ocaml.doc(
      "<p>Comma-separated list of conformance pack names for which you want details. If you do not specify any names, Config returns details for all your conformance packs. </p>"
    )
    @as("ConformancePackNames")
    conformancePackNames: option<conformancePackNamesList>,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of <code>ConformancePackDetail</code> objects.</p>")
    @as("ConformancePackDetails")
    conformancePackDetails: option<conformancePackDetailList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConformancePacksCommand"
  let make = (~nextToken=?, ~limit=?, ~conformancePackNames=?, ()) =>
    new({nextToken: nextToken, limit: limit, conformancePackNames: conformancePackNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationRecorders = {
  type t
  @ocaml.doc("<p>The input for the <a>DescribeConfigurationRecorders</a> action.</p>")
  type request = {
    @ocaml.doc("<p>A list of configuration recorder names.</p>") @as("ConfigurationRecorderNames")
    configurationRecorderNames: option<configurationRecorderNameList>,
  }
  @ocaml.doc("<p>The output for the <a>DescribeConfigurationRecorders</a> action.</p>")
  type response = {
    @ocaml.doc("<p>A list that contains the descriptions of the specified
			configuration recorders.</p>")
    @as("ConfigurationRecorders")
    configurationRecorders: option<configurationRecorderList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConfigurationRecordersCommand"
  let make = (~configurationRecorderNames=?, ()) =>
    new({configurationRecorderNames: configurationRecorderNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeComplianceByResource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of evaluation results returned on each page.
			The default is 10. You cannot specify a number greater than 100. If
			you specify 0, Config uses the default.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>Filters the results by compliance.</p>
		       <p>The allowed values are <code>COMPLIANT</code>, <code>NON_COMPLIANT</code>, and <code>INSUFFICIENT_DATA</code>.</p>")
    @as("ComplianceTypes")
    complianceTypes: option<complianceTypes>,
    @ocaml.doc("<p>The ID of the Amazon Web Services resource for which you want compliance
			information. You can specify only one resource ID. If you specify a
			resource ID, you must also specify a type for
				<code>ResourceType</code>.</p>")
    @as("ResourceId")
    resourceId: option<baseResourceId>,
    @ocaml.doc("<p>The types of Amazon Web Services resources for which you want compliance
			information (for example, <code>AWS::EC2::Instance</code>). For this
			action, you can specify that the resource type is an Amazon Web Services account by
			specifying <code>AWS::::Account</code>.</p>")
    @as("ResourceType")
    resourceType: option<stringWithCharLimit256>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Indicates whether the specified Amazon Web Services resource complies with all
			of the Config rules that evaluate it.</p>")
    @as("ComplianceByResources")
    complianceByResources: option<complianceByResources>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeComplianceByResourceCommand"
  let make = (~nextToken=?, ~limit=?, ~complianceTypes=?, ~resourceId=?, ~resourceType=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      complianceTypes: complianceTypes,
      resourceId: resourceId,
      resourceType: resourceType,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeComplianceByConfigRule = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Filters the results by compliance.</p>
		       <p>The allowed values are <code>COMPLIANT</code> and <code>NON_COMPLIANT</code>.</p>")
    @as("ComplianceTypes")
    complianceTypes: option<complianceTypes>,
    @ocaml.doc("<p>Specify one or more Config rule names to filter the results
			by rule.</p>")
    @as("ConfigRuleNames")
    configRuleNames: option<configRuleNames>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Indicates whether each of the specified Config rules is
			compliant.</p>")
    @as("ComplianceByConfigRules")
    complianceByConfigRules: option<complianceByConfigRules>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeComplianceByConfigRuleCommand"
  let make = (~nextToken=?, ~complianceTypes=?, ~configRuleNames=?, ()) =>
    new({nextToken: nextToken, complianceTypes: complianceTypes, configRuleNames: configRuleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAggregateComplianceByConfigRules = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of evaluation results returned on each page.
			The default is
			maximum.
			If you specify 0, Config uses the default.</p>")
    @as("Limit")
    limit: option<groupByAPILimit>,
    @ocaml.doc("<p>Filters the results by ConfigRuleComplianceFilters object.
		</p>")
    @as("Filters")
    filters: option<configRuleComplianceFilters>,
    @ocaml.doc("<p>The name of the configuration aggregator.</p>")
    @as("ConfigurationAggregatorName")
    configurationAggregatorName: configurationAggregatorName,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a list of AggregateComplianceByConfigRule
			object.</p>")
    @as("AggregateComplianceByConfigRules")
    aggregateComplianceByConfigRules: option<aggregateComplianceByConfigRuleList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeAggregateComplianceByConfigRulesCommand"
  let make = (~configurationAggregatorName, ~nextToken=?, ~limit=?, ~filters=?, ()) =>
    new({
      nextToken: nextToken,
      limit: limit,
      filters: filters,
      configurationAggregatorName: configurationAggregatorName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRemediationExceptions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An exception list of resource exception keys to be processed with the current request. Config adds exception for each resource key. For example, Config adds 3 exceptions for 3 resource keys. </p>"
    )
    @as("ResourceKeys")
    resourceKeys: remediationExceptionResourceKeys,
    @ocaml.doc(
      "<p>The name of the Config rule for which you want to delete remediation exception configuration.</p>"
    )
    @as("ConfigRuleName")
    configRuleName: configRuleName,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns a list of failed delete remediation exceptions batch objects. Each object in the batch consists of a list of failed items and failure messages.</p>"
    )
    @as("FailedBatches")
    failedBatches: option<failedDeleteRemediationExceptionsBatches>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DeleteRemediationExceptionsCommand"
  let make = (~resourceKeys, ~configRuleName, ()) =>
    new({resourceKeys: resourceKeys, configRuleName: configRuleName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigurationAggregators = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of configuration aggregators returned on
			each page. The default is maximum. If you specify 0, Config uses
			the default.</p>")
    @as("Limit")
    limit: option<limit>,
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the configuration aggregators.</p>")
    @as("ConfigurationAggregatorNames")
    configurationAggregatorNames: option<configurationAggregatorNameList>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page that you use
			to get the next page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns a ConfigurationAggregators object.</p>") @as("ConfigurationAggregators")
    configurationAggregators: option<configurationAggregatorList>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeConfigurationAggregatorsCommand"
  let make = (~limit=?, ~nextToken=?, ~configurationAggregatorNames=?, ()) =>
    new({
      limit: limit,
      nextToken: nextToken,
      configurationAggregatorNames: configurationAggregatorNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConfigRules = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> string returned on a previous page
			that you use to get the next page of results in a paginated
			response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The names of the Config rules for which you want details.
			If you do not specify any names, Config returns details for all
			your rules.</p>")
    @as("ConfigRuleNames")
    configRuleNames: option<configRuleNames>,
  }
  @ocaml.doc("<p></p>")
  type response = {
    @ocaml.doc("<p>The string that you use in a subsequent request to get the next
			page of results in a paginated response.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The details about your Config rules.</p>") @as("ConfigRules")
    configRules: option<configRules>,
  }
  @module("@aws-sdk/client-config") @new external new: request => t = "DescribeConfigRulesCommand"
  let make = (~nextToken=?, ~configRuleNames=?, ()) =>
    new({nextToken: nextToken, configRuleNames: configRuleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRemediationConfigurations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of Config rule names of remediation configurations for which you want details. </p>"
    )
    @as("ConfigRuleNames")
    configRuleNames: configRuleNames,
  }
  type response = {
    @ocaml.doc("<p>Returns a remediation configuration object.</p>")
    @as("RemediationConfigurations")
    remediationConfigurations: option<remediationConfigurations>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "DescribeRemediationConfigurationsCommand"
  let make = (~configRuleNames, ()) => new({configRuleNames: configRuleNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRemediationConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>A list of remediation configuration objects.</p>")
    @as("RemediationConfigurations")
    remediationConfigurations: remediationConfigurations,
  }
  type response = {
    @ocaml.doc("<p>Returns a list of failed remediation batch objects.</p>") @as("FailedBatches")
    failedBatches: option<failedRemediationBatches>,
  }
  @module("@aws-sdk/client-config") @new
  external new: request => t = "PutRemediationConfigurationsCommand"
  let make = (~remediationConfigurations, ()) =>
    new({remediationConfigurations: remediationConfigurations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
