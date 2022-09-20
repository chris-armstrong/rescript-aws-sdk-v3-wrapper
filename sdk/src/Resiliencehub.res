type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-resiliencehub") @new
external createClient: unit => awsServiceClient = "ResiliencehubClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uuid = string
type timeStamp = Js.Date.t
type testType = [
  | @as("Region") #Region
  | @as("AZ") #AZ
  | @as("Hardware") #Hardware
  | @as("Software") #Software
]
type testRisk = [@as("High") #High | @as("Medium") #Medium | @as("Small") #Small]
type templateFormat = [@as("CfnJson") #CfnJson | @as("CfnYaml") #CfnYaml]
type tagValue = string
type tagKey = string
type string500 = string
type string255 = string
type specReferenceId = string
type sopServiceType = [@as("SSM") #SSM]
type seconds = int
type retryAfterSeconds = int
type resourceType = string
type resourceResolutionStatusType = [
  | @as("Success") #Success
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type resourceMappingType = [
  | @as("ResourceGroup") #ResourceGroup
  | @as("AppRegistryApp") #AppRegistryApp
  | @as("Resource") #Resource
  | @as("CfnStack") #CfnStack
]
type resourceImportStatusType = [
  | @as("Success") #Success
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type resourceId = string
type resiliencyPolicyTier = [
  | @as("NonCritical") #NonCritical
  | @as("CoreServices") #CoreServices
  | @as("Important") #Important
  | @as("Critical") #Critical
  | @as("MissionCritical") #MissionCritical
]
type renderRecommendationType = [@as("Test") #Test | @as("Sop") #Sop | @as("Alarm") #Alarm]
type recommendationTemplateStatus = [
  | @as("Success") #Success
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type recommendationComplianceStatus = [
  | @as("MetCanImprove") #MetCanImprove
  | @as("BreachedCanMeet") #BreachedCanMeet
  | @as("BreachedUnattainable") #BreachedUnattainable
]
type physicalIdentifierType = [@as("Native") #Native | @as("Arn") #Arn]
type nextToken = string
type maxResults = int
type haArchitecture = [
  | @as("NoRecoveryPlan") #NoRecoveryPlan
  | @as("BackupAndRestore") #BackupAndRestore
  | @as("PilotLight") #PilotLight
  | @as("WarmStandby") #WarmStandby
  | @as("MultiSite") #MultiSite
]
type estimatedCostTier = [@as("L4") #L4 | @as("L3") #L3 | @as("L2") #L2 | @as("L1") #L1]
type entityVersion = string
type entityName = string
type entityId = string
type entityDescription = string
type double = float
type documentName = string
type disruptionType = [
  | @as("Region") #Region
  | @as("AZ") #AZ
  | @as("Hardware") #Hardware
  | @as("Software") #Software
]
type dataLocationConstraint = [
  | @as("SameCountry") #SameCountry
  | @as("SameContinent") #SameContinent
  | @as("AnyLocation") #AnyLocation
]
type customerId = string
type currencyCode = string
type costFrequency = [
  | @as("Yearly") #Yearly
  | @as("Monthly") #Monthly
  | @as("Daily") #Daily
  | @as("Hourly") #Hourly
]
type configRecommendationOptimizationType = [
  | @as("BestAttainable") #BestAttainable
  | @as("LeastErrors") #LeastErrors
  | @as("BestAZRecovery") #BestAZRecovery
  | @as("LeastChange") #LeastChange
  | @as("LeastCost") #LeastCost
]
type complianceStatus = [@as("PolicyMet") #PolicyMet | @as("PolicyBreached") #PolicyBreached]
type clientToken = string
type booleanOptional = bool
type awsRegion = string
type assessmentStatus = [
  | @as("Success") #Success
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
  | @as("Pending") #Pending
]
type assessmentInvoker = [@as("System") #System | @as("User") #User]
type arn = string
type appTemplateBody = string
type appStatusType = [@as("Deleting") #Deleting | @as("Active") #Active]
type appComplianceStatusType = [
  | @as("ChangesDetected") #ChangesDetected
  | @as("NotAssessed") #NotAssessed
  | @as("PolicyMet") #PolicyMet
  | @as("PolicyBreached") #PolicyBreached
]
type alarmType = [
  | @as("Event") #Event
  | @as("Logs") #Logs
  | @as("Canary") #Canary
  | @as("Composite") #Composite
  | @as("Metric") #Metric
]
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type suggestedChangesList = array<entityDescription>
type string255List = array<string255>
@ocaml.doc("<p>The location of the Amazon S3 bucket.</p>")
type s3Location = {
  @ocaml.doc("<p>The prefix for the Amazon S3 bucket.</p>") prefix: option<string500>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket.</p>") bucket: option<string500>,
}
type renderRecommendationTypeList = array<renderRecommendationType>
type recommendationTemplateStatusList = array<recommendationTemplateStatus>
@ocaml.doc("<p>Defines a recommendation.</p>")
type recommendationItem = {
  @ocaml.doc("<p>Specifies if the recommendation has already been implemented.</p>")
  alreadyImplemented: option<booleanOptional>,
  @ocaml.doc("<p>The target region.</p>") targetRegion: option<awsRegion>,
  @ocaml.doc("<p>The target account identifier.</p>") targetAccountId: option<customerId>,
  @ocaml.doc("<p>The resource identifier.</p>") resourceId: option<string500>,
}
type recommendationIdList = array<uuid>
@ocaml.doc("<p>Defines a disruption compliance recommendation.</p>")
type recommendationDisruptionCompliance = {
  @ocaml.doc("<p>The expected Recovery Point Objective (RPO) description after applying the recommended
      configuration change.</p>")
  expectedRpoDescription: option<string500>,
  @ocaml.doc("<p>The expected RPO after applying the recommended configuration change.</p>")
  expectedRpoInSecs: option<seconds>,
  @ocaml.doc("<p>The expected Recovery Time Objective (RTO) description after applying the recommended
      configuration change.</p>")
  expectedRtoDescription: option<string500>,
  @ocaml.doc("<p>The expected RTO after applying the recommended configuration change.</p>")
  expectedRtoInSecs: option<seconds>,
  @ocaml.doc(
    "<p>The expected compliance status after applying the recommended configuration change.</p>"
  )
  expectedComplianceStatus: complianceStatus,
}
@ocaml.doc("<p>Defines a physical resource identifier.</p>")
type physicalResourceId = {
  @ocaml.doc("<p>The Amazon Web Services account that owns the physical resource.</p>")
  awsAccountId: option<customerId>,
  @ocaml.doc("<p>The Amazon Web Services Region that the physical resource is located in.</p>")
  awsRegion: option<awsRegion>,
  @ocaml.doc("<p>Specifies the type of physical resource identifier.</p>
         <dl>
            <dt>Arn</dt>
            <dd>
               <p>The resource identifier is an Amazon Resource Name (ARN) .</p>
            </dd>
            <dt>Native</dt>
            <dd>
               <p>The resource identifier is a Resilience Hub-native identifier.</p>
            </dd>
         </dl>")
  @as("type")
  type_: physicalIdentifierType,
  @ocaml.doc("<p>The identifier of the physical resource.</p>") identifier: string255,
}
@ocaml.doc("<p>Defines a logical resource identifier.</p>")
type logicalResourceId = {
  @ocaml.doc("<p>The name of the resource group that this resource belongs to.</p>")
  resourceGroupName: option<entityName>,
  @ocaml.doc("<p>The name of the CloudFormation stack this resource belongs to.</p>")
  logicalStackName: option<string255>,
  @ocaml.doc("<p>The identifier of the resource.</p>") identifier: string255,
}
@ocaml.doc("<p>Defines a failure policy.</p>")
type failurePolicy = {
  @ocaml.doc("<p>The Recovery Point Objective (RPO), in seconds.</p>") rpoInSecs: seconds,
  @ocaml.doc("<p>The Recovery Time Objective (RTO), in seconds.</p>") rtoInSecs: seconds,
}
type entityNameList = array<entityName>
type disruptionResiliencyScore = Js.Dict.t<double>
@ocaml.doc("<p>Defines the compliance against the resiliency policy for a disruption.</p>")
type disruptionCompliance = {
  @ocaml.doc("<p>The disruption compliance message.</p>") message: option<string500>,
  @ocaml.doc("<p>The Recovery Point Objective (RPO) that is achievable, in seconds.</p>")
  achievableRpoInSecs: option<seconds>,
  @ocaml.doc("<p>The current status of compliance for the resiliency policy.</p>")
  complianceStatus: complianceStatus,
  @ocaml.doc("<p>The RPO description.</p>") rpoDescription: option<string500>,
  @ocaml.doc("<p>The RPO reference identifier.</p>") rpoReferenceId: option<string500>,
  @ocaml.doc("<p>The current RPO, in seconds.</p>") currentRpoInSecs: option<seconds>,
  @ocaml.doc("<p>The RTO description.</p>") rtoDescription: option<string500>,
  @ocaml.doc("<p>The RTO reference identifier.</p>") rtoReferenceId: option<string500>,
  @ocaml.doc("<p>The current RTO, in seconds.</p>") currentRtoInSecs: option<seconds>,
  @ocaml.doc("<p>The Recovery Time Objective (RTO) that is achievable, in seconds</p>")
  achievableRtoInSecs: option<seconds>,
}
@ocaml.doc("<p>Defines a cost object.</p>")
type cost = {
  @ocaml.doc("<p>The cost frequency.</p>") frequency: costFrequency,
  @ocaml.doc("<p>The cost currency, for example <code>USD</code>.</p>") currency: currencyCode,
  @ocaml.doc("<p>The cost amount.</p>") amount: double,
}
type assessmentStatusList = array<assessmentStatus>
type arnList = array<arn>
@ocaml.doc("<p>The version of the application.</p>")
type appVersionSummary = {
  @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
}
@ocaml.doc("<p>Defines an application summary.</p>")
type appSummary = {
  @ocaml.doc("<p>The current resiliency score for the application.</p>")
  resiliencyScore: option<double>,
  @ocaml.doc("<p>The current status of compliance for the resiliency policy.</p>")
  complianceStatus: option<appComplianceStatusType>,
  @ocaml.doc("<p>The timestamp for when the app was created.</p>") creationTime: timeStamp,
  @ocaml.doc("<p>The optional description for an app.</p>") description: option<entityDescription>,
  @ocaml.doc("<p>The name of the application.</p>") name: entityName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  appArn: arn,
}
@ocaml.doc("<p>Defines an application component.</p>")
type appComponent = {
  @ocaml.doc("<p>The type of application component.</p>") @as("type") type_: string255,
  @ocaml.doc("<p>The name of the application component.</p>") name: string255,
}
@ocaml.doc("<p>Defines a resource that is not supported by Resilience Hub.</p>")
type unsupportedResource = {
  @ocaml.doc("<p>The type of resource.</p>") resourceType: string255,
  @ocaml.doc("<p>The physical resource identifier for the unsupported resource.</p>")
  physicalResourceId: physicalResourceId,
  @ocaml.doc("<p>The logical resource identifier for the unsupported resource.</p>")
  logicalResourceId: logicalResourceId,
}
@ocaml.doc("<p>Defines a resource mapping.</p>")
type resourceMapping = {
  @ocaml.doc("<p>The identifier of this resource.</p>") physicalResourceId: physicalResourceId,
  @ocaml.doc("<p>Specifies the type of resource mapping.</p>
         <dl>
            <dt>AppRegistryApp</dt>
            <dd>
               <p>The resource is mapped to another application. The name of the application is
            contained in the <code>appRegistryAppName</code> property.</p>
            </dd>
            <dt>CfnStack</dt>
            <dd>
               <p>The resource is mapped to a CloudFormation stack. The name of the CloudFormation stack is contained in
            the <code>logicalStackName</code> property.</p>
            </dd>
            <dt>Resource</dt>
            <dd>
               <p>The resource is mapped to another resource. The name of the resource is contained in
            the <code>resourceName</code> property.</p>
            </dd>
            <dt>ResourceGroup</dt>
            <dd>
               <p>The resource is mapped to a resource group. The name of the resource group is
            contained in the <code>resourceGroupName</code> property.</p>
            </dd>
         </dl>")
  mappingType: resourceMappingType,
  @ocaml.doc("<p>The name of the resource group this resource is mapped to.</p>")
  resourceGroupName: option<entityName>,
  @ocaml.doc("<p>The name of the application this resource is mapped to.</p>")
  appRegistryAppName: option<entityName>,
  @ocaml.doc("<p>The name of the CloudFormation stack this resource is mapped to.</p>")
  logicalStackName: option<string255>,
  @ocaml.doc("<p>The name of the resource this resource is mapped to.</p>")
  resourceName: option<entityName>,
}
@ocaml.doc("<p>The overall resiliency score, returned as an object that includes the disruption score and
      outage score.</p>")
type resiliencyScore = {
  @ocaml.doc("<p>The disruption score for a valid key.</p>")
  disruptionScore: disruptionResiliencyScore,
  @ocaml.doc("<p>The outage score for a valid key.</p>") score: double,
}
@ocaml.doc(
  "<p>Defines a recommendation template created with the <a>CreateRecommendationTemplate</a> action.</p>"
)
type recommendationTemplate = {
  @ocaml.doc("<p>Indicates if replacements are needed.</p>")
  needsReplacements: option<booleanOptional>,
  @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The end time for the action.</p>") endTime: option<timeStamp>,
  @ocaml.doc("<p>The start time for the action.</p>") startTime: option<timeStamp>,
  @ocaml.doc("<p>The name for the recommendation template.</p>") name: entityName,
  @ocaml.doc("<p>The status of the action.</p>") status: recommendationTemplateStatus,
  @ocaml.doc("<p>The message for the recommendation template.</p>") message: option<string500>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the recommendation template.</p>")
  recommendationTemplateArn: arn,
  @ocaml.doc("<p>The format of the recommendation template.</p>
         <dl>
            <dt>CfnJson</dt>
            <dd>
               <p>The template is CloudFormation JSON.</p>
            </dd>
            <dt>CfnYaml</dt>
            <dd>
               <p>The template is CloudFormation YAML.</p>
            </dd>
         </dl>")
  format: templateFormat,
  @ocaml.doc("<p>An array of strings that specify the recommendation template type or types.</p>
         <dl>
            <dt>Alarm</dt>
            <dd>
               <p>The template is an <a>AlarmRecommendation</a> template.</p>
            </dd>
            <dt>Sop</dt>
            <dd>
               <p>The template is a <a>SopRecommendation</a> template.</p>
            </dd>
            <dt>Test</dt>
            <dd>
               <p>The template is a <a>TestRecommendation</a> template.</p>
            </dd>
         </dl>")
  recommendationTypes: renderRecommendationTypeList,
  @ocaml.doc("<p>Identifiers for the recommendations used in the recommendation template.</p>")
  recommendationIds: option<recommendationIdList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  appArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  assessmentArn: arn,
  @ocaml.doc("<p>The file location of the template.</p>") templatesLocation: option<s3Location>,
}
type recommendationItemList = array<recommendationItem>
type recommendationCompliance = Js.Dict.t<recommendationDisruptionCompliance>
type disruptionPolicy = Js.Dict.t<failurePolicy>
type assessmentCompliance = Js.Dict.t<disruptionCompliance>
type appVersionList = array<appVersionSummary>
type appSummaryList = array<appSummary>
type appComponentList = array<appComponent>
@ocaml.doc("<p>Defines an application assessment summary.</p>")
type appAssessmentSummary = {
  @ocaml.doc("<p>The current resiliency score for the application.</p>")
  resiliencyScore: option<double>,
  @ocaml.doc("<p>The cost for the application.</p>") cost: option<cost>,
  @ocaml.doc("<p>The current status of compliance for the resiliency policy.</p>")
  complianceStatus: option<complianceStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  assessmentArn: arn,
  @ocaml.doc("<p>The name of the assessment.</p>") assessmentName: option<entityName>,
  @ocaml.doc("<p>The message from the assessment run.</p>") message: option<string500>,
  @ocaml.doc("<p>The end time for the action.</p>") endTime: option<timeStamp>,
  @ocaml.doc("<p>The starting time for the action.</p>") startTime: option<timeStamp>,
  @ocaml.doc("<p>The entity that invoked the assessment.</p>") invoker: option<assessmentInvoker>,
  @ocaml.doc("<p>The current status of the assessment for the resiliency policy.</p>")
  assessmentStatus: assessmentStatus,
  @ocaml.doc("<p>The version of the application.</p>") appVersion: option<entityVersion>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  appArn: option<arn>,
}
@ocaml.doc("<p>Defines a Resilience Hub application.</p>")
type app = {
  @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The timestamp for the most recent resiliency score evaluation.</p>")
  lastResiliencyScoreEvaluationTime: option<timeStamp>,
  @ocaml.doc("<p>The current resiliency score for the application.</p>")
  resiliencyScore: option<double>,
  @ocaml.doc("<p>The timestamp for the most recent compliance evaluation.</p>")
  lastAppComplianceEvaluationTime: option<timeStamp>,
  @ocaml.doc("<p>The current status of compliance for the resiliency policy.</p>")
  complianceStatus: option<appComplianceStatusType>,
  @ocaml.doc("<p>The status of the action.</p>") status: option<appStatusType>,
  @ocaml.doc("<p>The timestamp for when the app was created.</p>") creationTime: timeStamp,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  policyArn: option<arn>,
  @ocaml.doc("<p>The optional description for an app.</p>") description: option<entityDescription>,
  @ocaml.doc("<p>The name for the application.</p>") name: entityName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  appArn: arn,
}
type unsupportedResourceList = array<unsupportedResource>
@ocaml.doc("<p>Defines a test recommendation.</p>")
type testRecommendation = {
  @ocaml.doc("<p>The prerequisite of the test recommendation.</p>") prerequisite: option<string500>,
  @ocaml.doc("<p>The test recommendation items.</p>") items: option<recommendationItemList>,
  @ocaml.doc("<p>The description for the test recommendation.</p>") description: option<string500>,
  @ocaml.doc("<p>The type of test recommendation.</p>") @as("type") type_: option<testType>,
  @ocaml.doc("<p>The level of risk for this test recommendation.</p>") risk: option<testRisk>,
  @ocaml.doc("<p>The intent of the test recommendation.</p>") intent: option<entityDescription>,
  @ocaml.doc("<p>The name of the test recommendation.</p>") name: option<documentName>,
  @ocaml.doc("<p>The name of the application component.</p>") appComponentName: option<entityId>,
  @ocaml.doc("<p>The reference identifier for the test recommendation.</p>")
  referenceId: specReferenceId,
  @ocaml.doc("<p>Identifier for the test recommendation.</p>") recommendationId: option<uuid>,
}
@ocaml.doc("<p>Defines a standard operating procedure (SOP) recommendation.</p>")
type sopRecommendation = {
  @ocaml.doc("<p>The prerequisite for the SOP recommendation.</p>") prerequisite: option<string500>,
  @ocaml.doc("<p>The reference identifier for the SOP recommendation.</p>")
  referenceId: specReferenceId,
  @ocaml.doc("<p>The recommendation items.</p>") items: option<recommendationItemList>,
  @ocaml.doc("<p>The name of the SOP recommendation.</p>") name: option<documentName>,
  @ocaml.doc("<p>Identifier for the SOP recommendation.</p>") recommendationId: uuid,
  @ocaml.doc("<p>The description of the SOP recommendation.</p>") description: option<string500>,
  @ocaml.doc("<p>The application component name.</p>") appComponentName: option<entityId>,
  @ocaml.doc("<p>The service type.</p>") serviceType: sopServiceType,
}
type resourceMappingList = array<resourceMapping>
@ocaml.doc("<p>Defines a resiliency policy.</p>")
type resiliencyPolicy = {
  @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The timestamp for when the resiliency policy was created.</p>")
  creationTime: option<timeStamp>,
  @ocaml.doc("<p>The resiliency policy.</p>") policy: option<disruptionPolicy>,
  @ocaml.doc("<p>Specifies the estimated cost tier of the resiliency policy.</p>")
  estimatedCostTier: option<estimatedCostTier>,
  @ocaml.doc("<p>The tier for this resiliency policy, ranging from the highest severity
        (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>")
  tier: option<resiliencyPolicyTier>,
  @ocaml.doc("<p>Specifies a high-level geographical location constraint for where your resilience policy
      data can be stored.</p>")
  dataLocationConstraint: option<dataLocationConstraint>,
  @ocaml.doc("<p>The description for the policy.</p>") policyDescription: option<entityDescription>,
  @ocaml.doc("<p>The name of the policy</p>") policyName: option<entityName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  policyArn: option<arn>,
}
type recommendationTemplateList = array<recommendationTemplate>
@ocaml.doc("<p>Defines a physical resource. A physical resource is a resource that exists in your
      account. It can be identified using an Amazon Resource Name (ARN) or a Resilience Hub-native
      identifier. </p>")
type physicalResource = {
  @ocaml.doc("<p>The application components that belong to this resource.</p>")
  appComponents: option<appComponentList>,
  @ocaml.doc("<p>The type of resource.</p>") resourceType: string255,
  @ocaml.doc("<p>The physical identifier of the resource.</p>")
  physicalResourceId: physicalResourceId,
  @ocaml.doc("<p>The logical identifier of the resource.</p>") logicalResourceId: logicalResourceId,
  @ocaml.doc("<p>The name of the resource.</p>") resourceName: option<entityName>,
}
@ocaml.doc("<p>Defines a configuration recommendation.</p>")
type configRecommendation = {
  @ocaml.doc("<p>The reference identifier for the recommendation configuration.</p>")
  referenceId: specReferenceId,
  @ocaml.doc("<p>The architecture type.</p>") haArchitecture: option<haArchitecture>,
  @ocaml.doc("<p>List of the suggested configuration changes.</p>")
  suggestedChanges: option<suggestedChangesList>,
  @ocaml.doc("<p>The optional description for an app.</p>") description: option<entityDescription>,
  @ocaml.doc("<p>The name of the recommendation configuration.</p>") name: entityName,
  @ocaml.doc("<p>The type of optimization.</p>")
  optimizationType: configRecommendationOptimizationType,
  @ocaml.doc("<p>The expected compliance against the resiliency policy after applying the configuration
      change.</p>")
  recommendationCompliance: option<recommendationCompliance>,
  @ocaml.doc("<p>The current compliance against the resiliency policy before applying the configuration
      change.</p>")
  compliance: option<assessmentCompliance>,
  @ocaml.doc("<p>The application component name.</p>") appComponentName: option<entityId>,
  @ocaml.doc("<p>The cost for the application.</p>") cost: option<cost>,
}
@ocaml.doc(
  "<p>Defines the compliance of an application component against the resiliency policy.</p>"
)
type appComponentCompliance = {
  @ocaml.doc("<p>The current resiliency score for the application.</p>")
  resiliencyScore: option<resiliencyScore>,
  @ocaml.doc("<p>The status of the action.</p>") status: option<complianceStatus>,
  @ocaml.doc("<p>The compliance message.</p>") message: option<string500>,
  @ocaml.doc("<p>The compliance of the application component against the resiliency policy.</p>")
  compliance: option<assessmentCompliance>,
  @ocaml.doc("<p>The name of the application component.</p>") appComponentName: option<entityId>,
  @ocaml.doc("<p>The cost for the application.</p>") cost: option<cost>,
}
type appAssessmentSummaryList = array<appAssessmentSummary>
@ocaml.doc("<p>Defines a recommendation for a CloudWatch alarm.</p>")
type alarmRecommendation = {
  @ocaml.doc("<p>The prerequisite for the alarm recommendation.</p>")
  prerequisite: option<string500>,
  @ocaml.doc("<p>The list of CloudWatch alarm recommendations.</p>")
  items: option<recommendationItemList>,
  @ocaml.doc("<p>The application component for the CloudWatch alarm recommendation.</p>")
  appComponentName: option<entityId>,
  @ocaml.doc("<p>The type of alarm recommendation.</p>") @as("type") type_: alarmType,
  @ocaml.doc("<p>The description of the recommendation.</p>")
  description: option<entityDescription>,
  @ocaml.doc("<p>The name of the alarm recommendation.</p>") name: string500,
  @ocaml.doc("<p>The reference identifier of the alarm recommendation.</p>")
  referenceId: specReferenceId,
  @ocaml.doc("<p>The identifier of the alarm recommendation.</p>") recommendationId: uuid,
}
type testRecommendationList = array<testRecommendation>
type sopRecommendationList = array<sopRecommendation>
type resiliencyPolicies = array<resiliencyPolicy>
type physicalResourceList = array<physicalResource>
type configRecommendationList = array<configRecommendation>
type componentCompliancesList = array<appComponentCompliance>
@ocaml.doc("<p>Defines an application assessment.</p>")
type appAssessment = {
  @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>The resiliency policy.</p>") policy: option<resiliencyPolicy>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  assessmentArn: arn,
  @ocaml.doc("<p>The name of the assessment.</p>") assessmentName: option<entityName>,
  @ocaml.doc("<p>Error or warning message from the assessment execution</p>")
  message: option<string500>,
  @ocaml.doc("<p>The end time for the action.</p>") endTime: option<timeStamp>,
  @ocaml.doc("<p>The starting time for the action.</p>") startTime: option<timeStamp>,
  @ocaml.doc("<p>The current status of the assessment for the resiliency policy.</p>")
  assessmentStatus: assessmentStatus,
  @ocaml.doc("<p>The current status of the compliance for the resiliency policy.</p>")
  complianceStatus: option<complianceStatus>,
  @ocaml.doc("<p>The application compliance against the resiliency policy.</p>")
  compliance: option<assessmentCompliance>,
  @ocaml.doc("<p>The current resiliency score for the application.</p>")
  resiliencyScore: option<resiliencyScore>,
  @ocaml.doc("<p>The cost for the application.</p>") cost: option<cost>,
  @ocaml.doc("<p>The entity that invoked the assessment.</p>") invoker: assessmentInvoker,
  @ocaml.doc("<p>The version of the application.</p>") appVersion: option<entityVersion>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
  appArn: option<arn>,
}
type alarmRecommendationList = array<alarmRecommendation>
@ocaml.doc("<p>Defines recommendations for a Resilience Hub application component, returned as an object. This
      object contains component names, configuration recommendations, and recommendation
      statuses.</p>")
type componentRecommendation = {
  @ocaml.doc("<p>The list of recommendations.</p>") configRecommendations: configRecommendationList,
  @ocaml.doc("<p>The recommendation status.</p>")
  recommendationStatus: recommendationComplianceStatus,
  @ocaml.doc("<p>The name of the application component.</p>") appComponentName: entityId,
}
type componentRecommendationList = array<componentRecommendation>
@ocaml.doc("<p>AWS Resilience Hub helps you proactively prepare and protect your Amazon Web Services applications from
      disruptions. Resilience Hub offers continuous resiliency assessment and validation that integrates
      into your software development lifecycle. This enables you to uncover resiliency weaknesses,
      ensure recovery time objective (RTO) and recovery point objective (RPO) targets for your
      applications are met, and resolve issues before they are released into production. </p>")
module ResolveAppVersionResources = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The status of the action.</p>") status: resourceResolutionStatusType,
    @ocaml.doc("<p>The identifier for a specific resolution.</p>") resolutionId: string255,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ResolveAppVersionResourcesCommand"
  let make = (~appVersion, ~appArn, ()) => new({appVersion, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutDraftAppVersionTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>A JSON string that contains the body of the app template.</p>")
    appTemplateBody: appTemplateBody,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The version of the application.</p>") appVersion: option<entityVersion>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: option<arn>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "PutDraftAppVersionTemplateCommand"
  let make = (~appTemplateBody, ~appArn, ()) => new({appTemplateBody, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PublishAppVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The version of the application.</p>") appVersion: option<entityVersion>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "PublishAppVersionCommand"
  let make = (~appArn, ()) => new({appArn: appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDraftAppVersionResourcesImportStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The returned error message for the request.</p>")
    errorMessage: option<string500>,
    @ocaml.doc("<p>The timestamp for when the status last changed.</p>")
    statusChangeTime: timeStamp,
    @ocaml.doc("<p>The status of the action.</p>") status: resourceImportStatusType,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DescribeDraftAppVersionResourcesImportStatusCommand"
  let make = (~appArn, ()) => new({appArn: appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppVersionTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The body of the template.</p>") appTemplateBody: appTemplateBody,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DescribeAppVersionTemplateCommand"
  let make = (~appVersion, ~appArn, ()) => new({appVersion, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppVersionResourcesResolutionStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for a specific resolution.</p>") resolutionId: option<string255>,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The returned error message for the request.</p>")
    errorMessage: option<string500>,
    @ocaml.doc("<p>The status of the action.</p>") status: resourceResolutionStatusType,
    @ocaml.doc("<p>The identifier for a specific resolution.</p>") resolutionId: string255,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DescribeAppVersionResourcesResolutionStatusCommand"
  let make = (~appVersion, ~appArn, ~resolutionId=?, ()) => new({resolutionId, appVersion, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteResiliencyPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    policyArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    policyArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DeleteResiliencyPolicyCommand"
  let make = (~policyArn, ~clientToken=?, ()) => new({clientToken, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteRecommendationTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for a recommendation template.</p>")
    recommendationTemplateArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The status of the action.</p>") status: recommendationTemplateStatus,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for a recommendation template.</p>")
    recommendationTemplateArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DeleteRecommendationTemplateCommand"
  let make = (~recommendationTemplateArn, ~clientToken=?, ()) =>
    new({clientToken, recommendationTemplateArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteAppAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The current status of the assessment for the resiliency policy.</p>")
    assessmentStatus: assessmentStatus,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DeleteAppAssessmentCommand"
  let make = (~assessmentArn, ~clientToken=?, ()) => new({clientToken, assessmentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteApp = {
  type t
  type request = {
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>A boolean option to force the deletion of a Resilience Hub application. </p>")
    forceDelete: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new external new: request => t = "DeleteAppCommand"
  let make = (~appArn, ~clientToken=?, ~forceDelete=?, ()) =>
    new({clientToken, forceDelete, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to remove.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. </p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-resiliencehub") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to assign to the resource. Each tag consists of a key/value pair.</p>")
    tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. </p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-resiliencehub") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveDraftAppVersionResourceMappings = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the resource groups to remove from the resource mappings.</p>")
    resourceGroupNames: option<entityNameList>,
    @ocaml.doc(
      "<p>The names of the registered applications to remove from the resource mappings.</p>"
    )
    appRegistryAppNames: option<entityNameList>,
    @ocaml.doc(
      "<p>The names of the CloudFormation stacks to remove from the resource mappings.</p>"
    )
    logicalStackNames: option<string255List>,
    @ocaml.doc("<p>The names of the resources to remove from the resource mappings.</p>")
    resourceNames: option<entityNameList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The version of the application.</p>") appVersion: option<entityVersion>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: option<arn>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "RemoveDraftAppVersionResourceMappingsCommand"
  let make = (
    ~appArn,
    ~resourceGroupNames=?,
    ~appRegistryAppNames=?,
    ~logicalStackNames=?,
    ~resourceNames=?,
    (),
  ) => new({resourceGroupNames, appRegistryAppNames, logicalStackNames, resourceNames, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for a specific resource in your Resilience Hub
      application.</p>")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportResourcesToDraftAppVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) for the resources that you want to import.</p>")
    sourceArns: arnList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The status of the action.</p>") status: resourceImportStatusType,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) for the resources that you imported.</p>")
    sourceArns: arnList,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ImportResourcesToDraftAppVersionCommand"
  let make = (~sourceArns, ~appArn, ()) => new({sourceArns, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateApp = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies if the resiliency policy ARN should be cleared.</p>")
    clearResiliencyPolicyArn: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    policyArn: option<arn>,
    @ocaml.doc("<p>The optional description for an app.</p>")
    description: option<entityDescription>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The specified application, returned as an object with details including compliance status,
      creation time, description, resiliency score, and more.</p>")
    app: app,
  }
  @module("@aws-sdk/client-resiliencehub") @new external new: request => t = "UpdateAppCommand"
  let make = (~appArn, ~clearResiliencyPolicyArn=?, ~policyArn=?, ~description=?, ()) =>
    new({clearResiliencyPolicyArn, policyArn, description, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListApps = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: option<arn>,
    @ocaml.doc("<p>The name for the one of the listed applications.</p>") name: option<entityName>,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summaries for the Resilience Hub application.</p>") appSummaries: appSummaryList,
  }
  @module("@aws-sdk/client-resiliencehub") @new external new: request => t = "ListAppsCommand"
  let make = (~appArn=?, ~name=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({appArn, name, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The version of the application.</p>") appVersions: appVersionList,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListAppVersionsCommand"
  let make = (~appArn, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeApp = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The specified application, returned as an object with details including compliance status,
      creation time, description, resiliency score, and more.</p>")
    app: app,
  }
  @module("@aws-sdk/client-resiliencehub") @new external new: request => t = "DescribeAppCommand"
  let make = (~appArn, ()) => new({appArn: appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRecommendationTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the Amazon S3 bucket that will contain the recommendation template.</p>"
    )
    bucketName: option<entityName>,
    @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The name for the recommendation template.</p>") name: entityName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
    @ocaml.doc("<p>An array of strings that specify the recommendation template type or types.</p>
         <dl>
            <dt>Alarm</dt>
            <dd>
               <p>The template is an <a>AlarmRecommendation</a> template.</p>
            </dd>
            <dt>Sop</dt>
            <dd>
               <p>The template is a <a>SopRecommendation</a> template.</p>
            </dd>
            <dt>Test</dt>
            <dd>
               <p>The template is a <a>TestRecommendation</a> template.</p>
            </dd>
         </dl>")
    recommendationTypes: option<renderRecommendationTypeList>,
    @ocaml.doc("<p>The format for the recommendation template.</p>
         <dl>
            <dt>CfnJson</dt>
            <dd>
               <p>The template is CloudFormation JSON.</p>
            </dd>
            <dt>CfnYaml</dt>
            <dd>
               <p>The template is CloudFormation YAML.</p>
            </dd>
         </dl>")
    format: option<templateFormat>,
    @ocaml.doc(
      "<p>Identifiers for the recommendations used to create a recommendation template.</p>"
    )
    recommendationIds: option<recommendationIdList>,
  }
  type response = {
    @ocaml.doc("<p>The newly created recommendation template, returned as an object. This object includes the
      template's name, format, status, tags, Amazon S3 bucket location, and more.</p>")
    recommendationTemplate: option<recommendationTemplate>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "CreateRecommendationTemplateCommand"
  let make = (
    ~name,
    ~assessmentArn,
    ~bucketName=?,
    ~tags=?,
    ~clientToken=?,
    ~recommendationTypes=?,
    ~format=?,
    ~recommendationIds=?,
    (),
  ) =>
    new({
      bucketName,
      tags,
      clientToken,
      name,
      assessmentArn,
      recommendationTypes,
      format,
      recommendationIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateApp = {
  type t
  type request = {
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    policyArn: option<arn>,
    @ocaml.doc("<p>The optional description for an app.</p>")
    description: option<entityDescription>,
    @ocaml.doc("<p>The name for the application.</p>") name: entityName,
  }
  type response = {
    @ocaml.doc("<p>The created application returned as an object with details including compliance status,
      creation time, description, resiliency score, and more.</p>")
    app: app,
  }
  @module("@aws-sdk/client-resiliencehub") @new external new: request => t = "CreateAppCommand"
  let make = (~name, ~clientToken=?, ~tags=?, ~policyArn=?, ~description=?, ()) =>
    new({clientToken, tags, policyArn, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateResiliencyPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The type of resiliency policy to be created, including the recovery time objective (RTO)
      and recovery point objective (RPO) in seconds.</p>")
    policy: option<disruptionPolicy>,
    @ocaml.doc("<p>The tier for this resiliency policy, ranging from the highest severity
        (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>")
    tier: option<resiliencyPolicyTier>,
    @ocaml.doc("<p>Specifies a high-level geographical location constraint for where your resilience policy
      data can be stored.</p>")
    dataLocationConstraint: option<dataLocationConstraint>,
    @ocaml.doc("<p>The description for the policy.</p>")
    policyDescription: option<entityDescription>,
    @ocaml.doc("<p>The name of the policy</p>") policyName: option<entityName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    policyArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The type of resiliency policy that was updated, including the recovery time objective
      (RTO) and recovery point objective (RPO) in seconds.</p>")
    policy: resiliencyPolicy,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "UpdateResiliencyPolicyCommand"
  let make = (
    ~policyArn,
    ~policy=?,
    ~tier=?,
    ~dataLocationConstraint=?,
    ~policyDescription=?,
    ~policyName=?,
    (),
  ) => new({policy, tier, dataLocationConstraint, policyDescription, policyName, policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListUnsupportedAppVersionResources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for a specific resolution.</p>") resolutionId: option<string255>,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for a specific resolution.</p>") resolutionId: string255,
    @ocaml.doc("<p>The unsupported resources for the application.</p>")
    unsupportedResources: unsupportedResourceList,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListUnsupportedAppVersionResourcesCommand"
  let make = (~appVersion, ~appArn, ~maxResults=?, ~nextToken=?, ~resolutionId=?, ()) =>
    new({maxResults, nextToken, resolutionId, appVersion, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRecommendationTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name for one of the listed recommendation templates.</p>")
    name: option<entityName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for a recommendation template.</p>")
    recommendationTemplateArn: option<arn>,
    @ocaml.doc("<p>The status of the action.</p>") status: option<recommendationTemplateStatusList>,
    @ocaml.doc("<p>The default is to sort by ascending <b>startTime</b>.
To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>")
    reverseOrder: option<booleanOptional>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The recommendation templates for the Resilience Hub applications.</p>")
    recommendationTemplates: option<recommendationTemplateList>,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListRecommendationTemplatesCommand"
  let make = (
    ~assessmentArn,
    ~maxResults=?,
    ~nextToken=?,
    ~name=?,
    ~recommendationTemplateArn=?,
    ~status=?,
    ~reverseOrder=?,
    (),
  ) =>
    new({
      maxResults,
      nextToken,
      name,
      recommendationTemplateArn,
      status,
      reverseOrder,
      assessmentArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppVersionResourceMappings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Mappings used to map logical resources from the template to physical resources. You can
      use the mapping type <code>CFN_STACK</code> if the application template uses
      a logical stack name. Or you can map individual resources by using the mapping type
      <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
      application is backed by a CloudFormation stack.</p>")
    resourceMappings: resourceMappingList,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListAppVersionResourceMappingsCommand"
  let make = (~appVersion, ~appArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, appVersion, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppAssessments = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The default is to sort by ascending <b>startTime</b>.
To sort by descending <b>startTime</b>, set reverseOrder to <code>true</code>.</p>")
    reverseOrder: option<booleanOptional>,
    @ocaml.doc("<p>Specifies the entity that invoked a specific assessment, either a <code>User</code> or the
        <code>System</code>.</p>")
    invoker: option<assessmentInvoker>,
    @ocaml.doc("<p>The current status of compliance for the resiliency policy.</p>")
    complianceStatus: option<complianceStatus>,
    @ocaml.doc("<p>The current status of the assessment for the resiliency policy.</p>")
    assessmentStatus: option<assessmentStatusList>,
    @ocaml.doc("<p>The name for the assessment.</p>") assessmentName: option<entityName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The summaries for the specified assessments, returned as an object. This object includes
      application versions, associated Amazon Resource Numbers (ARNs), cost, messages, resiliency
      scores, and more.</p>")
    assessmentSummaries: appAssessmentSummaryList,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListAppAssessmentsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~reverseOrder=?,
    ~invoker=?,
    ~complianceStatus=?,
    ~assessmentStatus=?,
    ~assessmentName=?,
    ~appArn=?,
    (),
  ) =>
    new({
      maxResults,
      nextToken,
      reverseOrder,
      invoker,
      complianceStatus,
      assessmentStatus,
      assessmentName,
      appArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeResiliencyPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resiliency policy. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:resiliency-policy/<code>policy-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    policyArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Information about the specific resiliency policy, returned as an object. This object
      includes creation time, data location constraints, its name, description, tags, the recovery
      time objective (RTO) and recovery point objective (RPO) in seconds, and more.</p>")
    policy: resiliencyPolicy,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DescribeResiliencyPolicyCommand"
  let make = (~policyArn, ()) => new({policyArn: policyArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateResiliencyPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The type of resiliency policy to be created, including the recovery time objective (RTO)
      and recovery point objective (RPO) in seconds.</p>")
    policy: disruptionPolicy,
    @ocaml.doc("<p>The tier for this resiliency policy, ranging from the highest severity
        (<code>MissionCritical</code>) to lowest (<code>NonCritical</code>).</p>")
    tier: resiliencyPolicyTier,
    @ocaml.doc("<p>Specifies a high-level geographical location constraint for where your resilience policy
      data can be stored.</p>")
    dataLocationConstraint: option<dataLocationConstraint>,
    @ocaml.doc("<p>The description for the policy.</p>")
    policyDescription: option<entityDescription>,
    @ocaml.doc("<p>The name of the policy</p>") policyName: entityName,
  }
  type response = {
    @ocaml.doc("<p>The type of resiliency policy that was created, including the recovery time objective
      (RTO) and recovery point objective (RPO) in seconds.</p>")
    policy: resiliencyPolicy,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "CreateResiliencyPolicyCommand"
  let make = (
    ~policy,
    ~tier,
    ~policyName,
    ~tags=?,
    ~clientToken=?,
    ~dataLocationConstraint=?,
    ~policyDescription=?,
    (),
  ) => new({tags, clientToken, policy, tier, dataLocationConstraint, policyDescription, policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddDraftAppVersionResourceMappings = {
  type t
  type request = {
    @ocaml.doc("<p> Mappings used to map logical resources from the template to physical resources. You can
      use the mapping type <code>CFN_STACK</code> if the application template uses
      a logical stack name. Or you can map individual resources by using the mapping type
      <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
      application is backed by a CloudFormation stack.</p>")
    resourceMappings: resourceMappingList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Mappings used to map logical resources from the template to physical resources. You can
      use the mapping type <code>CFN_STACK</code> if the application template uses
      a logical stack name. Or you can map individual resources by using the mapping type
      <code>RESOURCE</code>. We recommend using the mapping type <code>CFN_STACK</code> if the
      application is backed by a CloudFormation stack.</p>")
    resourceMappings: resourceMappingList,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "AddDraftAppVersionResourceMappingsCommand"
  let make = (~resourceMappings, ~appArn, ()) => new({resourceMappings, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartAppAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>The tags assigned to the resource. A tag is a label that you assign to an Amazon Web Services resource. 
Each tag consists of a key/value pair.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>Used for an idempotency token. A client token is a unique, case-sensitive string of up to 64 ASCII characters. 
You should not reuse the same client token for other API requests.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The name for the assessment.</p>") assessmentName: entityName,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {@ocaml.doc("<p>The assessment created.</p>") assessment: appAssessment}
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "StartAppAssessmentCommand"
  let make = (~assessmentName, ~appVersion, ~appArn, ~tags=?, ~clientToken=?, ()) =>
    new({tags, clientToken, assessmentName, appVersion, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTestRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The test recommendations for the Resilience Hub application.</p>")
    testRecommendations: testRecommendationList,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListTestRecommendationsCommand"
  let make = (~assessmentArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({assessmentArn, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSuggestedResiliencyPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The suggested resiliency policies for the Resilience Hub applications.</p>")
    resiliencyPolicies: resiliencyPolicies,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListSuggestedResiliencyPoliciesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSopRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The standard operating procedure (SOP) recommendations for the Resilience Hub
      applications.</p>")
    sopRecommendations: sopRecommendationList,
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListSopRecommendationsCommand"
  let make = (~assessmentArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({assessmentArn, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListResiliencyPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the policy</p>") policyName: option<entityName>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The resiliency policies for the Resilience Hub applications.</p>")
    resiliencyPolicies: resiliencyPolicies,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListResiliencyPoliciesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~policyName=?, ()) =>
    new({maxResults, nextToken, policyName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppVersionResources = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for a specific resolution.</p>") resolutionId: option<string255>,
    @ocaml.doc("<p>The version of the application.</p>") appVersion: entityVersion,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the application. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    appArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The identifier for a specific resolution.</p>") resolutionId: string255,
    @ocaml.doc("<p>The physical resources in the application version.</p>")
    physicalResources: physicalResourceList,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListAppVersionResourcesCommand"
  let make = (~appVersion, ~appArn, ~maxResults=?, ~nextToken=?, ~resolutionId=?, ()) =>
    new({maxResults, nextToken, resolutionId, appVersion, appArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppComponentCompliances = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The compliances for an AWS Resilience Hub application component, returned as an object. This
      object contains component names, compliances, costs, resiliency scores, outage scores, and
      more.</p>")
    componentCompliances: componentCompliancesList,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListAppComponentCompliancesCommand"
  let make = (~assessmentArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({assessmentArn, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAlarmRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The alarm recommendations for an AWS Resilience Hub application, returned as an object. This
      object includes application component names, descriptions, information about whether a
      recommendation has already been implemented or not, prerequisites, and more.</p>")
    alarmRecommendations: alarmRecommendationList,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListAlarmRecommendationsCommand"
  let make = (~assessmentArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, assessmentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAppAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The assessment for an AWS Resilience Hub application, returned as an object. This object
      includes Amazon Resource Names (ARNs), compliance information, compliance status, cost,
      messages, resiliency scores, and more.</p>")
    assessment: appAssessment,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "DescribeAppAssessmentCommand"
  let make = (~assessmentArn, ()) => new({assessmentArn: assessmentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAppComponentRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to include in the response. If more results exist than the specified 
<code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Null, or the token from a previous call to get the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assessment. The format for this ARN is: 
arn:<code>partition</code>:dcps:<code>region</code>:<code>account</code>:app-assessment/<code>app-id</code>. For more information about ARNs, 
see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">
                    Amazon Resource Names (ARNs)</a> in the 
                    <i>AWS General Reference</i>.</p>")
    assessmentArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token for the next set of results, or null if there are no more results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The recommendations for an Resilience Hub application component, returned as an object. This
      object contains component names, configuration recommendations, and recommendation
      statuses.</p>")
    componentRecommendations: componentRecommendationList,
  }
  @module("@aws-sdk/client-resiliencehub") @new
  external new: request => t = "ListAppComponentRecommendationsCommand"
  let make = (~assessmentArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, assessmentArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
