type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-servicecatalog") @new
external createClient: unit => awsServiceClient = "ServiceCatalogClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type verbose = bool
type userArnSession = string
type userArn = string
type usePreviousValue = bool
type updatedTime = Js.Date.t
type totalResultsCount = int
type tagValue = string
type tagOptionValue = string
type tagOptionKey = string
type tagOptionId = string
type tagOptionActive = bool
type tagKey = string
type supportUrl = string
type supportEmail = string
type supportDescription = string
type string_ = string
type statusMessage = string
type statusDetail = string
type status = [@as("FAILED") #FAILED | @as("CREATING") #CREATING | @as("AVAILABLE") #AVAILABLE]
type stackSetOperationType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type stackSetMaxConcurrencyPercentage = int
type stackSetMaxConcurrencyCount = int
type stackSetFailureTolerancePercentage = int
type stackSetFailureToleranceCount = int
type stackInstanceStatus = [
  | @as("INOPERABLE") #INOPERABLE
  | @as("OUTDATED") #OUTDATED
  | @as("CURRENT") #CURRENT
]
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortField = string
type shareStatus = [
  | @as("ERROR") #ERROR
  | @as("COMPLETED_WITH_ERRORS") #COMPLETED_WITH_ERRORS
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
]
type serviceActionName = string
type serviceActionDescription = string
type serviceActionDefinitionValue = string
type serviceActionDefinitionType = [@as("SSM_AUTOMATION") #SSM_AUTOMATION]
type serviceActionDefinitionKey = [
  | @as("Parameters") #Parameters
  | @as("AssumeRole") #AssumeRole
  | @as("Version") #Version
  | @as("Name") #Name
]
type serviceActionAssociationErrorMessage = string
type serviceActionAssociationErrorCode = [
  | @as("THROTTLING") #THROTTLING
  | @as("RESOURCE_NOT_FOUND") #RESOURCE_NOT_FOUND
  | @as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("DUPLICATE_RESOURCE") #DUPLICATE_RESOURCE
]
type searchProvisionedProductsPageSize = int
type searchFilterValue = string
type searchFilterKey = string
type roleArn = string
type retainPhysicalResources = bool
type resourceType = string
type resourceId = string
type resourceDetailName = string
type resourceDetailId = string
type resourceDetailDescription = string
type resourceDetailCreatedTime = Js.Date.t
type resourceDetailARN = string
type resourceAttribute = [
  | @as("TAGS") #TAGS
  | @as("DELETIONPOLICY") #DELETIONPOLICY
  | @as("UPDATEPOLICY") #UPDATEPOLICY
  | @as("CREATIONPOLICY") #CREATIONPOLICY
  | @as("METADATA") #METADATA
  | @as("PROPERTIES") #PROPERTIES
]
type resourceARN = string
type requiresRecreation = [
  | @as("ALWAYS") #ALWAYS
  | @as("CONDITIONALLY") #CONDITIONALLY
  | @as("NEVER") #NEVER
]
type replacement = [@as("CONDITIONAL") #CONDITIONAL | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type region = string
type recordType = string
type recordTagValue = string
type recordTagKey = string
type recordStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS_IN_ERROR") #IN_PROGRESS_IN_ERROR
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("CREATED") #CREATED
]
type provisioningArtifactType = [
  | @as("MARKETPLACE_CAR") #MARKETPLACE_CAR
  | @as("MARKETPLACE_AMI") #MARKETPLACE_AMI
  | @as("CLOUD_FORMATION_TEMPLATE") #CLOUD_FORMATION_TEMPLATE
]
type provisioningArtifactPropertyValue = string
type provisioningArtifactPropertyName = [@as("Id") #Id]
type provisioningArtifactOutputKey = string
type provisioningArtifactName = string
type provisioningArtifactInfoValue = string
type provisioningArtifactInfoKey = string
type provisioningArtifactGuidance = [@as("DEPRECATED") #DEPRECATED | @as("DEFAULT") #DEFAULT]
type provisioningArtifactDescription = string
type provisioningArtifactCreatedTime = Js.Date.t
type provisioningArtifactActive = bool
type provisionedProductViewFilterValue = string
type provisionedProductViewFilterBy = [@as("SearchQuery") #SearchQuery]
type provisionedProductType = string
type provisionedProductStatusMessage = string
type provisionedProductStatus = [
  | @as("PLAN_IN_PROGRESS") #PLAN_IN_PROGRESS
  | @as("ERROR") #ERROR
  | @as("TAINTED") #TAINTED
  | @as("UNDER_CHANGE") #UNDER_CHANGE
  | @as("AVAILABLE") #AVAILABLE
]
type provisionedProductPlanType = [@as("CLOUDFORMATION") #CLOUDFORMATION]
type provisionedProductPlanStatus = [
  | @as("EXECUTE_FAILED") #EXECUTE_FAILED
  | @as("EXECUTE_SUCCESS") #EXECUTE_SUCCESS
  | @as("EXECUTE_IN_PROGRESS") #EXECUTE_IN_PROGRESS
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_SUCCESS") #CREATE_SUCCESS
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type provisionedProductPlanName = string
type provisionedProductNameOrArn = string
type provisionedProductName = string
type provisionedProductId = string
type providerName = string
type propertyValue = string
type propertyName = string
type propertyKey = [@as("LAUNCH_ROLE") #LAUNCH_ROLE | @as("OWNER") #OWNER]
type productViewSortBy = [
  | @as("CreationDate") #CreationDate
  | @as("VersionCount") #VersionCount
  | @as("Title") #Title
]
type productViewShortDescription = string
type productViewOwner = string
type productViewName = string
type productViewFilterValue = string
type productViewFilterBy = [
  | @as("SourceProductId") #SourceProductId
  | @as("ProductType") #ProductType
  | @as("Owner") #Owner
  | @as("FullTextSearch") #FullTextSearch
]
type productViewDistributor = string
type productViewAggregationType = string
type productType = [
  | @as("MARKETPLACE") #MARKETPLACE
  | @as("CLOUD_FORMATION_TEMPLATE") #CLOUD_FORMATION_TEMPLATE
]
type productSource = [@as("ACCOUNT") #ACCOUNT]
type productArn = string
type principalType = [@as("IAM") #IAM]
type principalARN = string
type portfolioShareType = [
  | @as("AWS_ORGANIZATIONS") #AWS_ORGANIZATIONS
  | @as("AWS_SERVICECATALOG") #AWS_SERVICECATALOG
  | @as("IMPORTED") #IMPORTED
]
type portfolioName = string
type portfolioDisplayName = string
type portfolioDescription = string
type planResourceType = string
type physicalResourceId = string
type physicalId = string
type parameterValue = string
type parameterType = string
type parameterKey = string
type pageToken = string
type pageSizeMax100 = int
type pageSize = int
type owner = string
type outputValue = string
type outputKey = string
type outputDescription = string
type organizationNodeValue = string
type organizationNodeType = [
  | @as("ACCOUNT") #ACCOUNT
  | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT
  | @as("ORGANIZATION") #ORGANIZATION
]
type nullableBoolean = bool
type notificationArn = string
type noEcho = bool
type message = string
type logicalResourceId = string
type lastRequestId = string
type instructionValue = string
type instructionType = string
type ignoreErrors = bool
type idempotencyToken = string
type id = string
type hasDefaultPath = bool
type executionParameterValue = string
type executionParameterType = string
type executionParameterKey = string
type evaluationType = [@as("DYNAMIC") #DYNAMIC | @as("STATIC") #STATIC]
type errorMessage = string
type errorDescription = string
type errorCode = string
type error = string
type disableTemplateValidation = bool
type description = string
type describePortfolioShareType = [
  | @as("ORGANIZATION_MEMBER_ACCOUNT") #ORGANIZATION_MEMBER_ACCOUNT
  | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT
  | @as("ORGANIZATION") #ORGANIZATION
  | @as("ACCOUNT") #ACCOUNT
]
type defaultValue = string
type creationTime = Js.Date.t
type createdTime = Js.Date.t
type copyProductStatus = [
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("SUCCEEDED") #SUCCEEDED
]
type copyOption = [@as("CopyTags") #CopyTags]
type constraintType = string
type constraintParameters = string
type constraintDescription = string
type cloudWatchDashboardName = string
type changeAction = [@as("REMOVE") #REMOVE | @as("MODIFY") #MODIFY | @as("ADD") #ADD]
type causingEntity = string
type budgetName = string
type boolean_ = bool
type attributeValue = string
type approximateCount = int
type accountId = string
type accessStatus = [
  | @as("DISABLED") #DISABLED
  | @as("UNDER_CHANGE") #UNDER_CHANGE
  | @as("ENABLED") #ENABLED
]
type accessLevelFilterValue = string
type accessLevelFilterKey = [@as("User") #User | @as("Role") #Role | @as("Account") #Account]
type acceptLanguage = string
@ocaml.doc("<p>Additional information provided by the administrator.</p>")
type usageInstruction = {
  @ocaml.doc("<p>The usage instruction value for this type.</p>") @as("Value")
  value: option<instructionValue>,
  @ocaml.doc("<p>The usage instruction type for the value.</p>") @as("Type")
  type_: option<instructionType>,
}
@ocaml.doc("<p>The parameter key-value pair used to update a provisioned product.</p>")
type updateProvisioningParameter = {
  @ocaml.doc(
    "<p>If set to true, <code>Value</code> is ignored and the previous parameter value is kept.</p>"
  )
  @as("UsePreviousValue")
  usePreviousValue: option<usePreviousValue>,
  @ocaml.doc("<p>The parameter value.</p>") @as("Value") value: option<parameterValue>,
  @ocaml.doc("<p>The parameter key.</p>") @as("Key") key: option<parameterKey>,
}
type tagOptionValues = array<tagOptionValue>
@ocaml.doc("<p>Information about a TagOption.</p>")
type tagOptionDetail = {
  @ocaml.doc("<p>The AWS account Id of the owner account that created the TagOption.</p>")
  @as("Owner")
  owner: option<owner>,
  @ocaml.doc("<p>The TagOption identifier.</p>") @as("Id") id: option<tagOptionId>,
  @ocaml.doc("<p>The TagOption active state.</p>") @as("Active") active: option<tagOptionActive>,
  @ocaml.doc("<p>The TagOption value.</p>") @as("Value") value: option<tagOptionValue>,
  @ocaml.doc("<p>The TagOption key.</p>") @as("Key") key: option<tagOptionKey>,
}
type tagKeys = array<tagKey>
@ocaml.doc("<p>Information about a tag. A tag is a key-value pair. Tags are propagated
         to the resources created when provisioning a product.</p>")
type tag = {
  @ocaml.doc("<p>The value for this key.</p>") @as("Value") value: tagValue,
  @ocaml.doc("<p>The tag key.</p>") @as("Key") key: tagKey,
}
type successfulShares = array<accountId>
type stackSetRegions = array<region>
type stackSetAccounts = array<accountId>
@ocaml.doc(
  "<p>An AWS CloudFormation stack, in a specific account and region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, as well as the ID of the actual stack and the stack status. </p>"
)
type stackInstance = {
  @ocaml.doc("<p>The status of the stack instance, in terms of its synchronization with its associated stack set. </p>
         <ul>
            <li>
               <p>
                  <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to true, to delete the stack instance, and then delete the stack manually. </p>
            </li>
            <li>
               <p>
                  <code>OUTDATED</code>: The stack isn't currently up to date with the stack set because either            
            the associated stack failed during a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation,           
            or the stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation that failed or was stopped before the stack was created or updated.</p>
            </li>
            <li>
               <p>
                  <code>CURRENT</code>: The stack is currently up to date with the stack set.</p>
            </li>
         </ul>")
  @as("StackInstanceStatus")
  stackInstanceStatus: option<stackInstanceStatus>,
  @ocaml.doc("<p>The name of the AWS region that the stack instance is associated with.</p>")
  @as("Region")
  region: option<region>,
  @ocaml.doc("<p>The name of the AWS account that the stack instance is associated with.</p>")
  @as("Account")
  account: option<accountId>,
}
type sourceProvisioningArtifactPropertiesMap = Js.Dict.t<provisioningArtifactPropertyValue>
@ocaml.doc("<p>Detailed information about the self-service action.</p>")
type serviceActionSummary = {
  @ocaml.doc(
    "<p>The self-service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>"
  )
  @as("DefinitionType")
  definitionType: option<serviceActionDefinitionType>,
  @ocaml.doc("<p>The self-service action description.</p>") @as("Description")
  description: option<serviceActionDescription>,
  @ocaml.doc("<p>The self-service action name.</p>") @as("Name") name: option<serviceActionName>,
  @ocaml.doc("<p>The self-service action identifier.</p>") @as("Id") id: option<id>,
}
type serviceActionDefinitionMap = Js.Dict.t<serviceActionDefinitionValue>
@ocaml.doc(
  "<p>A self-service action association consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>"
)
type serviceActionAssociation = {
  @ocaml.doc(
    "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
  )
  @as("ProvisioningArtifactId")
  provisioningArtifactId: id,
  @ocaml.doc("<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>")
  @as("ProductId")
  productId: id,
  @ocaml.doc(
    "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
  )
  @as("ServiceActionId")
  serviceActionId: id,
}
type scope = array<resourceAttribute>
@ocaml.doc("<p>Information about a change to a resource attribute.</p>")
type resourceTargetDefinition = {
  @ocaml.doc("<p>If the attribute is <code>Properties</code>, indicates whether a change to this property
         causes the resource to be re-created.</p>")
  @as("RequiresRecreation")
  requiresRecreation: option<requiresRecreation>,
  @ocaml.doc("<p>If the attribute is <code>Properties</code>, the value is the name of the property. 
         Otherwise, the value is null.</p>")
  @as("Name")
  name: option<propertyName>,
  @ocaml.doc("<p>The attribute to be changed.</p>") @as("Attribute")
  attribute: option<resourceAttribute>,
}
@ocaml.doc("<p>Information about a resource.</p>")
type resourceDetail = {
  @ocaml.doc("<p>The creation time of the resource.</p>") @as("CreatedTime")
  createdTime: option<resourceDetailCreatedTime>,
  @ocaml.doc("<p>The description of the resource.</p>") @as("Description")
  description: option<resourceDetailDescription>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<resourceDetailName>,
  @ocaml.doc("<p>The ARN of the resource.</p>") @as("ARN") arn: option<resourceDetailARN>,
  @ocaml.doc("<p>The identifier of the resource.</p>") @as("Id") id: option<resourceDetailId>,
}
@ocaml.doc("<p>Information about a tag, which is a key-value pair.</p>")
type recordTag = {
  @ocaml.doc("<p>The value for this tag.</p>") @as("Value") value: option<recordTagValue>,
  @ocaml.doc("<p>The key for this tag.</p>") @as("Key") key: option<recordTagKey>,
}
@ocaml.doc("<p>The output for the product created as the result of a request. For example, the output for
         a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>")
type recordOutput = {
  @ocaml.doc("<p>The description of the output.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The output value.</p>") @as("OutputValue") outputValue: option<outputValue>,
  @ocaml.doc("<p>The output key.</p>") @as("OutputKey") outputKey: option<outputKey>,
}
@ocaml.doc("<p>The error code and description resulting from an operation.</p>")
type recordError = {
  @ocaml.doc("<p>The description of the error.</p>") @as("Description")
  description: option<errorDescription>,
  @ocaml.doc("<p>The numeric value of the error.</p>") @as("Code") code: option<errorCode>,
}
@ocaml.doc("<p>Information about a parameter used to provision a product.</p>")
type provisioningParameter = {
  @ocaml.doc("<p>The parameter value.</p>") @as("Value") value: option<parameterValue>,
  @ocaml.doc("<p>The parameter key.</p>") @as("Key") key: option<parameterKey>,
}
@ocaml.doc("<p>Provisioning artifact output.</p>")
type provisioningArtifactOutput = {
  @ocaml.doc("<p>Description of the provisioning artifact output key.</p>") @as("Description")
  description: option<outputDescription>,
  @ocaml.doc("<p>The provisioning artifact output key.</p>") @as("Key")
  key: option<provisioningArtifactOutputKey>,
}
type provisioningArtifactInfo = Js.Dict.t<provisioningArtifactInfoValue>
@ocaml.doc(
  "<p>Information about a provisioning artifact (also known as a version) for a product.</p>"
)
type provisioningArtifactDetail = {
  @ocaml.doc(
    "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>"
  )
  @as("Guidance")
  guidance: option<provisioningArtifactGuidance>,
  @ocaml.doc("<p>Indicates whether the product version is active.</p>") @as("Active")
  active: option<provisioningArtifactActive>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<creationTime>,
  @ocaml.doc("<p>The type of provisioning artifact.</p>
         <ul>
            <li>
               <p>
                  <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p>
            </li>
            <li>
               <p>
                  <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p>
            </li>
            <li>
               <p>
                  <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<provisioningArtifactType>,
  @ocaml.doc("<p>The description of the provisioning artifact.</p>") @as("Description")
  description: option<provisioningArtifactName>,
  @ocaml.doc("<p>The name of the provisioning artifact.</p>") @as("Name")
  name: option<provisioningArtifactName>,
  @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("Id") id: option<id>,
}
@ocaml.doc(
  "<p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>"
)
type provisioningArtifact = {
  @ocaml.doc(
    "<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>"
  )
  @as("Guidance")
  guidance: option<provisioningArtifactGuidance>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<provisioningArtifactCreatedTime>,
  @ocaml.doc("<p>The description of the provisioning artifact.</p>") @as("Description")
  description: option<provisioningArtifactDescription>,
  @ocaml.doc("<p>The name of the provisioning artifact.</p>") @as("Name")
  name: option<provisioningArtifactName>,
  @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("Id") id: option<id>,
}
type provisionedProductViewFilterValues = array<provisionedProductViewFilterValue>
type provisionedProductProperties = Js.Dict.t<propertyValue>
@ocaml.doc("<p>Summary information about a plan.</p>")
type provisionedProductPlanSummary = {
  @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
  provisioningArtifactId: option<id>,
  @ocaml.doc("<p>The plan type.</p>") @as("PlanType") planType: option<provisionedProductPlanType>,
  @ocaml.doc("<p>The user-friendly name of the provisioned product.</p>")
  @as("ProvisionProductName")
  provisionProductName: option<provisionedProductName>,
  @ocaml.doc("<p>The product identifier.</p>") @as("ProvisionProductId")
  provisionProductId: option<id>,
  @ocaml.doc("<p>The plan identifier.</p>") @as("PlanId") planId: option<id>,
  @ocaml.doc("<p>The name of the plan.</p>") @as("PlanName")
  planName: option<provisionedProductPlanName>,
}
@ocaml.doc("<p>Information about a provisioned product.</p>")
type provisionedProductDetail = {
  @ocaml.doc("<p>The ARN of the launch role associated with the provisioned product.</p>")
  @as("LaunchRoleArn")
  launchRoleArn: option<roleArn>,
  @ocaml.doc(
    "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
  )
  @as("ProvisioningArtifactId")
  provisioningArtifactId: option<id>,
  @ocaml.doc("<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>")
  @as("ProductId")
  productId: option<id>,
  @ocaml.doc("<p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>
         <ul>
            <li>
               <p>
               ProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               UpdateProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               ExecuteProvisionedProductPlan
            </p>
            </li>
            <li>
               <p>
               TerminateProvisionedProduct
            </p>
            </li>
         </ul>")
  @as("LastSuccessfulProvisioningRecordId")
  lastSuccessfulProvisioningRecordId: option<id>,
  @ocaml.doc("<p>The record identifier of the last request performed on this provisioned product of the following types:</p>
         <ul>
            <li>
               <p>
               ProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               UpdateProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               ExecuteProvisionedProductPlan
            </p>
            </li>
            <li>
               <p>
               TerminateProvisionedProduct
            </p>
            </li>
         </ul>")
  @as("LastProvisioningRecordId")
  lastProvisioningRecordId: option<id>,
  @ocaml.doc(
    "<p>The record identifier of the last request performed on this provisioned product.</p>"
  )
  @as("LastRecordId")
  lastRecordId: option<lastRequestId>,
  @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
  @as("IdempotencyToken")
  idempotencyToken: option<idempotencyToken>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The current status message of the provisioned product.</p>") @as("StatusMessage")
  statusMessage: option<provisionedProductStatusMessage>,
  @ocaml.doc("<p>The current status of the provisioned product.</p>
         <ul>
            <li>
               <p>
                  <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most
               recent operation succeeded and completed.</p>
            </li>
            <li>
               <p>
                  <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.
               Wait for an <code>AVAILABLE</code> status before performing operations.</p>
            </li>
            <li>
               <p>
                  <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has
               completed the requested operation but is not exactly what was requested. For example, a
               request to update to a new version failed and the stack rolled back to the current version.</p>
            </li>
            <li>
               <p>
                  <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. 
               For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>
            </li>
            <li>
               <p>
                  <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,
               but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<provisionedProductStatus>,
  @ocaml.doc("<p>The identifier of the provisioned product.</p>") @as("Id")
  id: option<provisionedProductId>,
  @ocaml.doc(
    "<p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>"
  )
  @as("Type")
  type_: option<provisionedProductType>,
  @ocaml.doc("<p>The ARN of the provisioned product.</p>") @as("Arn")
  arn: option<provisionedProductNameOrArn>,
  @ocaml.doc("<p>The user-friendly name of the provisioned product.</p>") @as("Name")
  name: option<provisionedProductNameOrArn>,
}
@ocaml.doc("<p>Summary information about a product view.</p>")
type productViewSummary = {
  @ocaml.doc("<p>The URL information to obtain support for this Product.</p>") @as("SupportUrl")
  supportUrl: option<supportUrl>,
  @ocaml.doc("<p>The description of the support for this Product.</p>") @as("SupportDescription")
  supportDescription: option<supportDescription>,
  @ocaml.doc("<p>The email contact information to obtain support for this Product.</p>")
  @as("SupportEmail")
  supportEmail: option<supportEmail>,
  @ocaml.doc("<p>Indicates whether the product has a default path.
         If the product does not have a default path, call <a>ListLaunchPaths</a> 
         to disambiguate between paths. Otherwise, <a>ListLaunchPaths</a> is not 
         required, and the output of <a>ProductViewSummary</a> can be used directly with 
         <a>DescribeProvisioningParameters</a>.</p>")
  @as("HasDefaultPath")
  hasDefaultPath: option<hasDefaultPath>,
  @ocaml.doc("<p>The distributor of the product. Contact the product administrator for the
         significance of this value.</p>")
  @as("Distributor")
  distributor: option<productViewDistributor>,
  @ocaml.doc("<p>The product type. Contact the product administrator for the significance of this
         value. If this value is <code>MARKETPLACE</code>, the product was created by AWS
         Marketplace.</p>")
  @as("Type")
  type_: option<productType>,
  @ocaml.doc("<p>Short description of the product.</p>") @as("ShortDescription")
  shortDescription: option<productViewShortDescription>,
  @ocaml.doc("<p>The owner of the product. Contact the product administrator for the significance of
         this value.</p>")
  @as("Owner")
  owner: option<productViewOwner>,
  @ocaml.doc("<p>The name of the product.</p>") @as("Name") name: option<productViewName>,
  @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: option<id>,
  @ocaml.doc("<p>The product view identifier.</p>") @as("Id") id: option<id>,
}
type productViewFilterValues = array<productViewFilterValue>
@ocaml.doc("<p>A single product view aggregation value/count pair, containing metadata about each
         product to which the calling user has access.</p>")
type productViewAggregationValue = {
  @ocaml.doc("<p>An approximate count of the products that match the value.</p>")
  @as("ApproximateCount")
  approximateCount: option<approximateCount>,
  @ocaml.doc("<p>The value of the product view aggregation.</p>") @as("Value")
  value: option<attributeValue>,
}
@ocaml.doc("<p>Information about a principal.</p>")
type principal = {
  @ocaml.doc("<p>The principal type. The supported value is <code>IAM</code>.</p>")
  @as("PrincipalType")
  principalType: option<principalType>,
  @ocaml.doc("<p>The ARN of the principal (IAM user, role, or group).</p>") @as("PrincipalARN")
  principalARN: option<principalARN>,
}
@ocaml.doc("<p>Information about the portfolio share.</p>")
type portfolioShareDetail = {
  @ocaml.doc(
    "<p>Indicates whether TagOptions sharing is enabled or disabled for the portfolio share.</p>"
  )
  @as("ShareTagOptions")
  shareTagOptions: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates whether the shared portfolio is imported by the recipient account. If the recipient is in an organization node, the share is automatically imported, and the field is always set to true.</p>"
  )
  @as("Accepted")
  accepted: option<boolean_>,
  @ocaml.doc("<p>The type of the portfolio share.</p>") @as("Type")
  type_: option<describePortfolioShareType>,
  @ocaml.doc("<p>The identifier of the recipient entity that received the portfolio share. 
         The recipient entities can be one of the following:
      </p>
         <p>1. An external account.</p>
         <p>2. An organziation member account.</p>
         <p>3. An organzational unit (OU).</p>
         <p>4. The organization itself. (This shares with every account in the organization).</p>")
  @as("PrincipalId")
  principalId: option<id>,
}
@ocaml.doc("<p>Information about a portfolio.</p>")
type portfolioDetail = {
  @ocaml.doc("<p>The name of the portfolio provider.</p>") @as("ProviderName")
  providerName: option<providerName>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<creationTime>,
  @ocaml.doc("<p>The description of the portfolio.</p>") @as("Description")
  description: option<portfolioDescription>,
  @ocaml.doc("<p>The name to use for display purposes.</p>") @as("DisplayName")
  displayName: option<portfolioDisplayName>,
  @ocaml.doc("<p>The ARN assigned to the portfolio.</p>") @as("ARN") arn: option<resourceARN>,
  @ocaml.doc("<p>The portfolio identifier.</p>") @as("Id") id: option<id>,
}
type outputKeys = array<outputKey>
@ocaml.doc("<p>Information about the organization node.</p>")
type organizationNode = {
  @ocaml.doc("<p>The identifier of the organization node.</p>") @as("Value")
  value: option<organizationNodeValue>,
  @ocaml.doc("<p>The organization node type.</p>") @as("Type") type_: option<organizationNodeType>,
}
type notificationArns = array<notificationArn>
type namespaces = array<accountId>
@ocaml.doc("<p>Filters to use when listing TagOptions.</p>")
type listTagOptionsFilters = {
  @ocaml.doc("<p>The active state.</p>") @as("Active") active: option<tagOptionActive>,
  @ocaml.doc("<p>The TagOption value.</p>") @as("Value") value: option<tagOptionValue>,
  @ocaml.doc("<p>The TagOption key.</p>") @as("Key") key: option<tagOptionKey>,
}
@ocaml.doc("<p>The search filter to use when listing history records.</p>")
type listRecordHistorySearchFilter = {
  @ocaml.doc("<p>The filter value.</p>") @as("Value") value: option<searchFilterValue>,
  @ocaml.doc("<p>The filter key.</p>
         <ul>
            <li>
               <p>
                  <code>product</code> - Filter results based on the specified product identifier.</p>
            </li>
            <li>
               <p>
                  <code>provisionedproduct</code> - Filter results based on the provisioned product identifier.</p>
            </li>
         </ul>")
  @as("Key")
  key: option<searchFilterKey>,
}
@ocaml.doc("<p>A launch path object.</p>")
type launchPath = {
  @ocaml.doc("<p>The name of the launch path.</p>") @as("Name") name: option<portfolioName>,
  @ocaml.doc("<p>The identifier of the launch path.</p>") @as("Id") id: option<id>,
}
@ocaml.doc(
  "<p>An object containing information about the error, along with identifying information about the self-service action and its associations.</p>"
)
type failedServiceActionAssociation = {
  @ocaml.doc("<p>A text description of the error.</p>") @as("ErrorMessage")
  errorMessage: option<serviceActionAssociationErrorMessage>,
  @ocaml.doc("<p>The error code. Valid values are listed below.</p>") @as("ErrorCode")
  errorCode: option<serviceActionAssociationErrorCode>,
  @ocaml.doc(
    "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
  )
  @as("ProvisioningArtifactId")
  provisioningArtifactId: option<id>,
  @ocaml.doc("<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>")
  @as("ProductId")
  productId: option<id>,
  @ocaml.doc(
    "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
  )
  @as("ServiceActionId")
  serviceActionId: option<id>,
}
type executionParameterValueList = array<executionParameterValue>
type copyOptions = array<copyOption>
@ocaml.doc("<p>Summary information about a constraint.</p>")
type constraintSummary = {
  @ocaml.doc("<p>The description of the constraint.</p>") @as("Description")
  description: option<constraintDescription>,
  @ocaml.doc("<p>The type of constraint.</p>
         <ul>
            <li>
               <p>
                  <code>LAUNCH</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOTIFICATION</code>
               </p>
            </li>
            <li>
               <p>STACKSET</p>
            </li>
            <li>
               <p>
                  <code>TEMPLATE</code>
               </p>
            </li>
         </ul>")
  @as("Type")
  type_: option<constraintType>,
}
@ocaml.doc("<p>Information about a constraint.</p>")
type constraintDetail = {
  @ocaml.doc(
    "<p>The identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio.</p>"
  )
  @as("PortfolioId")
  portfolioId: option<id>,
  @ocaml.doc(
    "<p>The identifier of the product the constraint applies to. Note that a constraint applies to a specific instance of a product within a certain portfolio.</p>"
  )
  @as("ProductId")
  productId: option<id>,
  @ocaml.doc("<p>The owner of the constraint.</p>") @as("Owner") owner: option<accountId>,
  @ocaml.doc("<p>The description of the constraint.</p>") @as("Description")
  description: option<constraintDescription>,
  @ocaml.doc("<p>The type of constraint.</p>
         <ul>
            <li>
               <p>
                  <code>LAUNCH</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOTIFICATION</code>
               </p>
            </li>
            <li>
               <p>STACKSET</p>
            </li>
            <li>
               <p>
                  <code>TEMPLATE</code>
               </p>
            </li>
         </ul>")
  @as("Type")
  type_: option<constraintType>,
  @ocaml.doc("<p>The identifier of the constraint.</p>") @as("ConstraintId")
  constraintId: option<id>,
}
@ocaml.doc("<p>Information about a CloudWatch dashboard.</p>")
type cloudWatchDashboard = {
  @ocaml.doc("<p>The name of the CloudWatch dashboard.</p>") @as("Name")
  name: option<cloudWatchDashboardName>,
}
@ocaml.doc("<p>Information about a budget.</p>")
type budgetDetail = {
  @ocaml.doc("<p>Name of the associated budget.</p>") @as("BudgetName")
  budgetName: option<budgetName>,
}
type allowedValues = array<string_>
type accountIds = array<accountId>
@ocaml.doc("<p>The access level to use to filter results.</p>")
type accessLevelFilter = {
  @ocaml.doc(
    "<p>The user to which the access level applies. The only supported value is <code>Self</code>.</p>"
  )
  @as("Value")
  value: option<accessLevelFilterValue>,
  @ocaml.doc("<p>The access level.</p>
         <ul>
            <li>
               <p>
                  <code>Account</code> - Filter results based on the account.</p>
            </li>
            <li>
               <p>
                  <code>Role</code> - Filter results based on the federated role of the specified user.</p>
            </li>
            <li>
               <p>
                  <code>User</code> - Filter results based on the specified user.</p>
            </li>
         </ul>")
  @as("Key")
  key: option<accessLevelFilterKey>,
}
type usageInstructions = array<usageInstruction>
@ocaml.doc(
  "<p>The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product types.</p>"
)
type updateProvisioningPreferences = {
  @ocaml.doc("<p>Determines what action AWS Service Catalog performs to a stack set or a stack instance represented by the provisioned product. The default value is <code>UPDATE</code> if nothing is specified.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <dl>
            <dt>CREATE</dt>
            <dd>
               <p>Creates a new stack instance in the stack set represented by the provisioned product. In this case, only new stack instances are created based on accounts and regions; if new ProductId or ProvisioningArtifactID are passed, they will be ignored.</p>
            </dd>
            <dt>UPDATE</dt>
            <dd>
               <p>Updates the stack set represented by the provisioned product and also its stack instances.</p>
            </dd>
            <dt>DELETE</dt>
            <dd>
               <p>Deletes a stack instance in the stack set represented by the provisioned product.</p>
            </dd>
         </dl>")
  @as("StackSetOperationType")
  stackSetOperationType: option<stackSetOperationType>,
  @ocaml.doc("<p>The maximum percentage of accounts in which to perform this operation at one time.</p>
         <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as <code>1</code> instead.</p>
         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>")
  @as("StackSetMaxConcurrencyPercentage")
  stackSetMaxConcurrencyPercentage: option<stackSetMaxConcurrencyPercentage>,
  @ocaml.doc("<p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>
         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>")
  @as("StackSetMaxConcurrencyCount")
  stackSetMaxConcurrencyCount: option<stackSetMaxConcurrencyCount>,
  @ocaml.doc("<p>The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
         <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>")
  @as("StackSetFailureTolerancePercentage")
  stackSetFailureTolerancePercentage: option<stackSetFailureTolerancePercentage>,
  @ocaml.doc("<p>The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
         <p>The default value is <code>0</code> if no value is specified.</p>")
  @as("StackSetFailureToleranceCount")
  stackSetFailureToleranceCount: option<stackSetFailureToleranceCount>,
  @ocaml.doc("<p>One or more AWS Regions where the provisioned product will be available.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>The specified regions should be within the list of regions from the <code>STACKSET</code> constraint. To get the list of regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
         <p>If no values are specified, the default value is all regions from the <code>STACKSET</code> constraint.</p>")
  @as("StackSetRegions")
  stackSetRegions: option<stackSetRegions>,
  @ocaml.doc("<p>One or more AWS accounts that will have access to the provisioned product.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>The AWS accounts specified should be within the list of accounts in the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
         <p>If no values are specified, the default value is all accounts from the <code>STACKSET</code> constraint.</p>")
  @as("StackSetAccounts")
  stackSetAccounts: option<stackSetAccounts>,
}
type updateProvisioningParameters = array<updateProvisioningParameter>
type tags = array<tag>
@ocaml.doc("<p>Summary information about a TagOption.</p>")
type tagOptionSummary = {
  @ocaml.doc("<p>The TagOption value.</p>") @as("Values") values: option<tagOptionValues>,
  @ocaml.doc("<p>The TagOption key.</p>") @as("Key") key: option<tagOptionKey>,
}
type tagOptionDetails = array<tagOptionDetail>
type stackInstances = array<stackInstance>
type sourceProvisioningArtifactProperties = array<sourceProvisioningArtifactPropertiesMap>
@ocaml.doc("<p>Errors that occurred during the portfolio share operation.</p>")
type shareError = {
  @ocaml.doc("<p>Error type that happened when processing the operation.</p>") @as("Error")
  error: option<error>,
  @ocaml.doc("<p>Information about the error.</p>") @as("Message") message: option<message>,
  @ocaml.doc("<p>List of accounts impacted by the error.</p>") @as("Accounts")
  accounts: option<namespaces>,
}
type serviceActionSummaries = array<serviceActionSummary>
@ocaml.doc("<p>An object containing detailed information about the self-service action.</p>")
type serviceActionDetail = {
  @ocaml.doc("<p>A map that defines the self-service action.</p>") @as("Definition")
  definition: option<serviceActionDefinitionMap>,
  @ocaml.doc("<p>Summary information about the self-service action.</p>")
  @as("ServiceActionSummary")
  serviceActionSummary: option<serviceActionSummary>,
}
type serviceActionAssociations = array<serviceActionAssociation>
type resourceDetails = array<resourceDetail>
@ocaml.doc("<p>Information about a change to a resource attribute.</p>")
type resourceChangeDetail = {
  @ocaml.doc("<p>The ID of the entity that caused the change.</p>") @as("CausingEntity")
  causingEntity: option<causingEntity>,
  @ocaml.doc("<p>For static evaluations, the value of the resource attribute will change and the new value is known.
         For dynamic evaluations, the value might change, and any new value will be determined when the plan is updated.</p>")
  @as("Evaluation")
  evaluation: option<evaluationType>,
  @ocaml.doc("<p>Information about the resource attribute to be modified.</p>") @as("Target")
  target: option<resourceTargetDefinition>,
}
type recordTags = array<recordTag>
type recordOutputs = array<recordOutput>
type recordErrors = array<recordError>
@ocaml.doc("<p>The user-defined preferences that will be applied when updating a provisioned
         product. Not all preferences are applicable to all provisioned product type</p>
         <p>One or more AWS accounts that will have access to the provisioned product.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>The AWS accounts specified should be within the list of accounts in the
            <code>STACKSET</code> constraint. To get the list of accounts in the
            <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code>
         operation.</p>
         <p>If no values are specified, the default value is all accounts from the
            <code>STACKSET</code> constraint.</p>")
type provisioningPreferences = {
  @ocaml.doc("<p>The maximum percentage of accounts in which to perform this operation at one time.</p>
         <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as <code>1</code> instead.</p>
         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>")
  @as("StackSetMaxConcurrencyPercentage")
  stackSetMaxConcurrencyPercentage: option<stackSetMaxConcurrencyPercentage>,
  @ocaml.doc("<p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>
         <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>")
  @as("StackSetMaxConcurrencyCount")
  stackSetMaxConcurrencyCount: option<stackSetMaxConcurrencyCount>,
  @ocaml.doc("<p>The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
         <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>")
  @as("StackSetFailureTolerancePercentage")
  stackSetFailureTolerancePercentage: option<stackSetFailureTolerancePercentage>,
  @ocaml.doc("<p>The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
         <p>The default value is <code>0</code> if no value is specified.</p>")
  @as("StackSetFailureToleranceCount")
  stackSetFailureToleranceCount: option<stackSetFailureToleranceCount>,
  @ocaml.doc("<p>One or more AWS Regions where the provisioned product will be available.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>The specified regions should be within the list of regions from the <code>STACKSET</code> constraint. To get the list of regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
         <p>If no values are specified, the default value is all regions from the <code>STACKSET</code> constraint.</p>")
  @as("StackSetRegions")
  stackSetRegions: option<stackSetRegions>,
  @ocaml.doc("<p>One or more AWS accounts where the provisioned product will be available.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
         <p>The specified accounts should be within the list of accounts from the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
         <p>If no values are specified, the default value is all acounts from the <code>STACKSET</code> constraint.</p>")
  @as("StackSetAccounts")
  stackSetAccounts: option<stackSetAccounts>,
}
type provisioningParameters = array<provisioningParameter>
type provisioningArtifacts = array<provisioningArtifact>
@ocaml.doc(
  "<p>An object that contains summary information about a product view and a provisioning artifact.</p>"
)
type provisioningArtifactView = {
  @ocaml.doc(
    "<p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>"
  )
  @as("ProvisioningArtifact")
  provisioningArtifact: option<provisioningArtifact>,
  @ocaml.doc("<p>Summary information about a product view.</p>") @as("ProductViewSummary")
  productViewSummary: option<productViewSummary>,
}
@ocaml.doc(
  "<p>Summary information about a provisioning artifact (also known as a version) for a product.</p>"
)
type provisioningArtifactSummary = {
  @ocaml.doc(
    "<p>The metadata for the provisioning artifact. This is used with AWS Marketplace products.</p>"
  )
  @as("ProvisioningArtifactMetadata")
  provisioningArtifactMetadata: option<provisioningArtifactInfo>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<provisioningArtifactCreatedTime>,
  @ocaml.doc("<p>The description of the provisioning artifact.</p>") @as("Description")
  description: option<provisioningArtifactDescription>,
  @ocaml.doc("<p>The name of the provisioning artifact.</p>") @as("Name")
  name: option<provisioningArtifactName>,
  @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("Id") id: option<id>,
}
@ocaml.doc(
  "<p>Information about a provisioning artifact (also known as a version) for a product.</p>"
)
type provisioningArtifactProperties = {
  @ocaml.doc(
    "<p>If set to true, AWS Service Catalog stops validating the specified provisioning artifact even if it is invalid.</p>"
  )
  @as("DisableTemplateValidation")
  disableTemplateValidation: option<disableTemplateValidation>,
  @ocaml.doc("<p>The type of provisioning artifact.</p>
         <ul>
            <li>
               <p>
                  <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p>
            </li>
            <li>
               <p>
                  <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p>
            </li>
            <li>
               <p>
                  <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<provisioningArtifactType>,
  @ocaml.doc("<p>Specify the template source with one of the following options, but not both.
         Keys accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ]</p>
         <p>The URL of the CloudFormation template in Amazon S3. Specify the URL in JSON format as follows:</p>
         <p>
            <code>\"LoadTemplateFromURL\": \"https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/...\"</code>
         </p> 
         <p>
            <code>ImportFromPhysicalId</code>: The physical id of the resource that contains the
         template. Currently only supports CloudFormation stack arn. Specify the physical id in JSON
         format as follows: <code>ImportFromPhysicalId: “arn:aws:cloudformation:[us-east-1]:[accountId]:stack/[StackName]/[resourceId]</code>
         </p>")
  @as("Info")
  info: provisioningArtifactInfo,
  @ocaml.doc(
    "<p>The description of the provisioning artifact, including how it differs from the previous provisioning artifact.</p>"
  )
  @as("Description")
  description: option<provisioningArtifactDescription>,
  @ocaml.doc(
    "<p>The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.</p>"
  )
  @as("Name")
  name: option<provisioningArtifactName>,
}
@ocaml.doc("<p>The user-defined preferences that will be applied during product provisioning, unless overridden by <code>ProvisioningPreferences</code> or <code>UpdateProvisioningPreferences</code>.</p>
         <p>For more information on maximum concurrent accounts and failure tolerance, see <a href=\"https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options\">Stack set operation options</a> in the <i>AWS CloudFormation User Guide</i>.</p>")
type provisioningArtifactPreferences = {
  @ocaml.doc("<p>One or more AWS Regions where stack instances are deployed from the stack set. These regions can be scoped in <code>ProvisioningPreferences$StackSetRegions</code> and <code>UpdateProvisioningPreferences$StackSetRegions</code>.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>")
  @as("StackSetRegions")
  stackSetRegions: option<stackSetRegions>,
  @ocaml.doc("<p>One or more AWS accounts where stack instances are deployed from the stack set. These accounts can be scoped in <code>ProvisioningPreferences$StackSetAccounts</code> and <code>UpdateProvisioningPreferences$StackSetAccounts</code>.</p>
         <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>")
  @as("StackSetAccounts")
  stackSetAccounts: option<stackSetAccounts>,
}
type provisioningArtifactOutputs = array<provisioningArtifactOutput>
type provisioningArtifactDetails = array<provisioningArtifactDetail>
type provisionedProductPlans = array<provisionedProductPlanSummary>
type provisionedProductFilters = Js.Dict.t<provisionedProductViewFilterValues>
type provisionedProductDetails = array<provisionedProductDetail>
type productViewSummaries = array<productViewSummary>
type productViewFilters = Js.Dict.t<productViewFilterValues>
@ocaml.doc("<p>Information about a product view.</p>")
type productViewDetail = {
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The ARN of the product.</p>") @as("ProductARN") productARN: option<resourceARN>,
  @ocaml.doc("<p>The status of the product.</p>
         <ul>
            <li>
               <p>
                  <code>AVAILABLE</code> - The product is ready for use.</p>
            </li>
            <li>
               <p>
                  <code>CREATING</code> - Product creation has started; the product is not ready for use.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - An action failed.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<status>,
  @ocaml.doc("<p>Summary information about the product view.</p>") @as("ProductViewSummary")
  productViewSummary: option<productViewSummary>,
}
type productViewAggregationValues = array<productViewAggregationValue>
type principals = array<principal>
type portfolioShareDetails = array<portfolioShareDetail>
type portfolioDetails = array<portfolioDetail>
@ocaml.doc("<p>The constraints that the administrator has put on the parameter.</p>")
type parameterConstraints = {
  @ocaml.doc(
    "<p>A numeric value that determines the smallest numeric value you want to allow for <code>Number</code> types. </p>"
  )
  @as("MinValue")
  minValue: option<string_>,
  @ocaml.doc(
    "<p>A numeric value that determines the largest numeric value you want to allow for <code>Number</code> types.</p>"
  )
  @as("MaxValue")
  maxValue: option<string_>,
  @ocaml.doc(
    "<p>An integer value that determines the smallest number of characters you want to allow for <code>String</code> types.</p>"
  )
  @as("MinLength")
  minLength: option<string_>,
  @ocaml.doc(
    "<p>An integer value that determines the largest number of characters you want to allow for <code>String</code> types. </p>"
  )
  @as("MaxLength")
  maxLength: option<string_>,
  @ocaml.doc("<p>A string that explains a constraint when the constraint is violated. For example, without a constraint description, a parameter that has an allowed pattern of <code>[A-Za-z0-9]+</code> displays the following error message when the user specifies an invalid value:</p>
      
         <p>
            <code>Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+</code>
         </p>
      
         <p>By adding a constraint description, such as must only contain letters (uppercase and lowercase) and numbers, you can display the following customized error message:</p>
      
         <p>
            <code>Malformed input-Parameter MyParameter must only contain uppercase and lowercase letters and numbers.</code>
         </p>")
  @as("ConstraintDescription")
  constraintDescription: option<string_>,
  @ocaml.doc(
    "<p>A regular expression that represents the patterns that allow for <code>String</code> types. The pattern must match the entire parameter value provided.</p>"
  )
  @as("AllowedPattern")
  allowedPattern: option<string_>,
  @ocaml.doc("<p>The values that the administrator has allowed for the parameter.</p>")
  @as("AllowedValues")
  allowedValues: option<allowedValues>,
}
type organizationNodes = array<organizationNode>
type launchPaths = array<launchPath>
type failedServiceActionAssociations = array<failedServiceActionAssociation>
type executionParameterMap = Js.Dict.t<executionParameterValueList>
@ocaml.doc(
  "<p>Details of an execution parameter value that is passed to a self-service action when executed on a provisioned product.</p>"
)
type executionParameter = {
  @ocaml.doc("<p>The default values for the execution parameter.</p>") @as("DefaultValues")
  defaultValues: option<executionParameterValueList>,
  @ocaml.doc("<p>The execution parameter type.</p>") @as("Type")
  type_: option<executionParameterType>,
  @ocaml.doc("<p>The name of the execution parameter.</p>") @as("Name")
  name: option<executionParameterKey>,
}
type constraintSummaries = array<constraintSummary>
type constraintDetails = array<constraintDetail>
type cloudWatchDashboards = array<cloudWatchDashboard>
type budgets = array<budgetDetail>
type addTags = array<tag>
type tagOptionSummaries = array<tagOptionSummary>
type shareErrors = array<shareError>
type resourceChangeDetails = array<resourceChangeDetail>
@ocaml.doc("<p>Information about a request operation.</p>")
type recordDetail = {
  @ocaml.doc("<p>The ARN of the launch role associated with the provisioned product.</p>")
  @as("LaunchRoleArn")
  launchRoleArn: option<roleArn>,
  @ocaml.doc("<p>One or more tags.</p>") @as("RecordTags") recordTags: option<recordTags>,
  @ocaml.doc("<p>The errors that occurred.</p>") @as("RecordErrors")
  recordErrors: option<recordErrors>,
  @ocaml.doc("<p>The path identifier.</p>") @as("PathId") pathId: option<id>,
  @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
  provisioningArtifactId: option<id>,
  @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: option<id>,
  @ocaml.doc("<p>The identifier of the provisioned product.</p>") @as("ProvisionedProductId")
  provisionedProductId: option<id>,
  @ocaml.doc("<p>The record type.</p>
         <ul>
            <li>
               <p>
                  <code>PROVISION_PRODUCT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UPDATE_PROVISIONED_PRODUCT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TERMINATE_PROVISIONED_PRODUCT</code>
               </p>
            </li>
         </ul>")
  @as("RecordType")
  recordType: option<recordType>,
  @ocaml.doc(
    "<p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>"
  )
  @as("ProvisionedProductType")
  provisionedProductType: option<provisionedProductType>,
  @ocaml.doc("<p>The time when the record was last updated.</p>") @as("UpdatedTime")
  updatedTime: option<updatedTime>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The status of the provisioned product.</p>
         <ul>
            <li>
               <p>
                  <code>CREATED</code> - The request was created but the operation has not started.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS</code> - The requested operation is in progress.</p>
            </li>
            <li>
               <p>
                  <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the
            requested operation failed and some remediation is occurring. For example, a rollback.</p>
            </li>
            <li>
               <p>
                  <code>SUCCEEDED</code> - The requested operation has successfully completed.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - The requested operation has unsuccessfully completed.
            Investigate using the error messages returned.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<recordStatus>,
  @ocaml.doc("<p>The user-friendly name of the provisioned product.</p>")
  @as("ProvisionedProductName")
  provisionedProductName: option<provisionedProductName>,
  @ocaml.doc("<p>The identifier of the record.</p>") @as("RecordId") recordId: option<id>,
}
type provisioningArtifactViews = array<provisioningArtifactView>
type provisioningArtifactSummaries = array<provisioningArtifactSummary>
@ocaml.doc("<p>Information about a parameter used to provision a product.</p>")
type provisioningArtifactParameter = {
  @ocaml.doc("<p>Constraints that the administrator has put on a parameter.</p>")
  @as("ParameterConstraints")
  parameterConstraints: option<parameterConstraints>,
  @ocaml.doc("<p>The description of the parameter.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>If this value is true, the value for this parameter is obfuscated from view when the
         parameter is retrieved. This parameter is used to hide sensitive information.</p>")
  @as("IsNoEcho")
  isNoEcho: option<noEcho>,
  @ocaml.doc("<p>The parameter type.</p>") @as("ParameterType")
  parameterType: option<parameterType>,
  @ocaml.doc("<p>The default value.</p>") @as("DefaultValue") defaultValue: option<defaultValue>,
  @ocaml.doc("<p>The parameter key.</p>") @as("ParameterKey") parameterKey: option<parameterKey>,
}
@ocaml.doc("<p>Information about a plan.</p>")
type provisionedProductPlanDetails = {
  @ocaml.doc("<p>The status message.</p>") @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>Parameters specified by the administrator that are required for provisioning the
         product.</p>")
  @as("ProvisioningParameters")
  provisioningParameters: option<updateProvisioningParameters>,
  @ocaml.doc("<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
         events.</p>")
  @as("NotificationArns")
  notificationArns: option<notificationArns>,
  @ocaml.doc("<p>The time when the plan was last updated.</p>") @as("UpdatedTime")
  updatedTime: option<updatedTime>,
  @ocaml.doc("<p>The status.</p>") @as("Status") status: option<provisionedProductPlanStatus>,
  @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
  provisioningArtifactId: option<id>,
  @ocaml.doc("<p>The plan type.</p>") @as("PlanType") planType: option<provisionedProductPlanType>,
  @ocaml.doc("<p>The user-friendly name of the provisioned product.</p>")
  @as("ProvisionProductName")
  provisionProductName: option<provisionedProductName>,
  @ocaml.doc("<p>The product identifier.</p>") @as("ProvisionProductId")
  provisionProductId: option<id>,
  @ocaml.doc("<p>The plan identifier.</p>") @as("PlanId") planId: option<id>,
  @ocaml.doc("<p>The name of the plan.</p>") @as("PlanName")
  planName: option<provisionedProductPlanName>,
  @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: option<id>,
  @ocaml.doc("<p>The path identifier of the product. This value is optional if the product 
         has a default path, and required if the product has more than one path.
         To list the paths for a product, use <a>ListLaunchPaths</a>.</p>")
  @as("PathId")
  pathId: option<id>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
}
@ocaml.doc("<p>Information about a provisioned product.</p>")
type provisionedProductAttribute = {
  @ocaml.doc("<p>The ARN of the IAM user in the session. This ARN might contain a session ID.</p>")
  @as("UserArnSession")
  userArnSession: option<userArnSession>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM user.</p>") @as("UserArn")
  userArn: option<userArn>,
  @ocaml.doc("<p>The name of the provisioning artifact.</p>") @as("ProvisioningArtifactName")
  provisioningArtifactName: option<provisioningArtifactName>,
  @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
  provisioningArtifactId: option<id>,
  @ocaml.doc("<p>The name of the product.</p>") @as("ProductName")
  productName: option<productViewName>,
  @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: option<id>,
  @ocaml.doc(
    "<p>The assigned identifier for the resource, such as an EC2 instance ID or an S3 bucket name.</p>"
  )
  @as("PhysicalId")
  physicalId: option<physicalId>,
  @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>
         <ul>
            <li>
               <p>
               ProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               UpdateProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               ExecuteProvisionedProductPlan
            </p>
            </li>
            <li>
               <p>
               TerminateProvisionedProduct
            </p>
            </li>
         </ul>")
  @as("LastSuccessfulProvisioningRecordId")
  lastSuccessfulProvisioningRecordId: option<id>,
  @ocaml.doc("<p>The record identifier of the last request performed on this provisioned product of the following types:</p>
         <ul>
            <li>
               <p>
               ProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               UpdateProvisionedProduct
            </p>
            </li>
            <li>
               <p>
               ExecuteProvisionedProductPlan
            </p>
            </li>
            <li>
               <p>
               TerminateProvisionedProduct
            </p>
            </li>
         </ul>")
  @as("LastProvisioningRecordId")
  lastProvisioningRecordId: option<id>,
  @ocaml.doc(
    "<p>The record identifier of the last request performed on this provisioned product.</p>"
  )
  @as("LastRecordId")
  lastRecordId: option<id>,
  @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
  @as("IdempotencyToken")
  idempotencyToken: option<idempotencyToken>,
  @ocaml.doc("<p>The UTC time stamp of the creation time.</p>") @as("CreatedTime")
  createdTime: option<createdTime>,
  @ocaml.doc("<p>The current status message of the provisioned product.</p>") @as("StatusMessage")
  statusMessage: option<provisionedProductStatusMessage>,
  @ocaml.doc("<p>The current status of the provisioned product.</p>
         <ul>
            <li>
               <p>
                  <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most
               recent operation succeeded and completed.</p>
            </li>
            <li>
               <p>
                  <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.
               Wait for an <code>AVAILABLE</code> status before performing operations.</p>
            </li>
            <li>
               <p>
                  <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has
               completed the requested operation but is not exactly what was requested. For example, a
               request to update to a new version failed and the stack rolled back to the current version.</p>
            </li>
            <li>
               <p>
                  <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running. 
               For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>
            </li>
            <li>
               <p>
                  <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,
                but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<provisionedProductStatus>,
  @ocaml.doc("<p>The identifier of the provisioned product.</p>") @as("Id") id: option<id>,
  @ocaml.doc(
    "<p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>"
  )
  @as("Type")
  type_: option<provisionedProductType>,
  @ocaml.doc("<p>The ARN of the provisioned product.</p>") @as("Arn")
  arn: option<provisionedProductNameOrArn>,
  @ocaml.doc("<p>The user-friendly name of the provisioned product.</p>") @as("Name")
  name: option<provisionedProductNameOrArn>,
}
type productViewDetails = array<productViewDetail>
type productViewAggregations = Js.Dict.t<productViewAggregationValues>
@ocaml.doc("<p>Summary information about a product path for a user.</p>")
type launchPathSummary = {
  @ocaml.doc("<p>The name of the portfolio to which the user was assigned.</p>") @as("Name")
  name: option<portfolioName>,
  @ocaml.doc("<p>The tags associated with this product path.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The constraints on the portfolio-product relationship.</p>")
  @as("ConstraintSummaries")
  constraintSummaries: option<constraintSummaries>,
  @ocaml.doc("<p>The identifier of the product path.</p>") @as("Id") id: option<id>,
}
type executionParameters = array<executionParameter>
@ocaml.doc("<p>Information about the portfolio share operation.</p>")
type shareDetails = {
  @ocaml.doc("<p>List of errors.</p>") @as("ShareErrors") shareErrors: option<shareErrors>,
  @ocaml.doc("<p>List of accounts for whom the operation succeeded.</p>") @as("SuccessfulShares")
  successfulShares: option<successfulShares>,
}
@ocaml.doc("<p>Information about a resource change that will occur when a plan is executed.</p>")
type resourceChange = {
  @ocaml.doc("<p>Information about the resource changes.</p>") @as("Details")
  details: option<resourceChangeDetails>,
  @ocaml.doc("<p>The change scope.</p>") @as("Scope") scope: option<scope>,
  @ocaml.doc("<p>If the change type is <code>Modify</code>, indicates whether the existing resource
         is deleted and replaced with a new one.</p>")
  @as("Replacement")
  replacement: option<replacement>,
  @ocaml.doc("<p>The type of resource.</p>") @as("ResourceType")
  resourceType: option<planResourceType>,
  @ocaml.doc("<p>The ID of the resource, if it was already created.</p>") @as("PhysicalResourceId")
  physicalResourceId: option<physicalResourceId>,
  @ocaml.doc("<p>The ID of the resource, as defined in the CloudFormation template.</p>")
  @as("LogicalResourceId")
  logicalResourceId: option<logicalResourceId>,
  @ocaml.doc("<p>The change action.</p>") @as("Action") action: option<changeAction>,
}
type recordDetails = array<recordDetail>
type provisioningArtifactParameters = array<provisioningArtifactParameter>
type provisionedProductAttributes = array<provisionedProductAttribute>
type launchPathSummaries = array<launchPathSummary>
type resourceChanges = array<resourceChange>
@ocaml.doc("<fullname>AWS Service Catalog</fullname>
         <p>
            <a href=\"https://aws.amazon.com/servicecatalog/\">AWS Service Catalog</a> enables
         organizations to create and manage catalogs of IT services that are approved for AWS. To
         get the most out of this documentation, you should be familiar with the terminology
         discussed in <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/what-is_concepts.html\">AWS Service Catalog
         Concepts</a>.</p>")
module RejectPortfolioShare = {
  type t
  type request = {
    @ocaml.doc("<p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p>
         <ul>
            <li>
               <p>
                  <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the management account of your
               organization.</p>
            </li>
            <li>
               <p>
                  <code>IMPORTED</code> - Reject imported portfolios.</p>
            </li>
            <li>
               <p>
                  <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
            </li>
         </ul>
         <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS</code>
         </p>")
    @as("PortfolioShareType")
    portfolioShareType: option<portfolioShareType>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "RejectPortfolioShareCommand"
  let make = (~portfolioId, ~portfolioShareType=?, ~acceptLanguage=?, ()) =>
    new({
      portfolioShareType: portfolioShareType,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetAWSOrganizationsAccessStatus = {
  type t

  type response = {
    @ocaml.doc("<p>The status of the portfolio share feature.</p>") @as("AccessStatus")
    accessStatus: option<accessStatus>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: unit => t = "GetAWSOrganizationsAccessStatusCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableAWSOrganizationsAccess = {
  type t

  @module("@aws-sdk/client-servicecatalog") @new
  external new: unit => t = "EnableAWSOrganizationsAccessCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateTagOptionFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>The TagOption identifier.</p>") @as("TagOptionId") tagOptionId: tagOptionId,
    @ocaml.doc("<p>The resource identifier.</p>") @as("ResourceId") resourceId: resourceId,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DisassociateTagOptionFromResourceCommand"
  let make = (~tagOptionId, ~resourceId, ()) =>
    new({tagOptionId: tagOptionId, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateServiceActionFromProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc(
      "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
    )
    @as("ServiceActionId")
    serviceActionId: id,
    @ocaml.doc(
      "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
    )
    @as("ProvisioningArtifactId")
    provisioningArtifactId: id,
    @ocaml.doc("<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>")
    @as("ProductId")
    productId: id,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DisassociateServiceActionFromProvisioningArtifactCommand"
  let make = (~serviceActionId, ~provisioningArtifactId, ~productId, ~acceptLanguage=?, ()) =>
    new({
      acceptLanguage: acceptLanguage,
      serviceActionId: serviceActionId,
      provisioningArtifactId: provisioningArtifactId,
      productId: productId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateProductFromPortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DisassociateProductFromPortfolioCommand"
  let make = (~portfolioId, ~productId, ~acceptLanguage=?, ()) =>
    new({portfolioId: portfolioId, productId: productId, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociatePrincipalFromPortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the principal (IAM user, role, or group).</p>") @as("PrincipalARN")
    principalARN: principalARN,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DisassociatePrincipalFromPortfolioCommand"
  let make = (~principalARN, ~portfolioId, ~acceptLanguage=?, ()) =>
    new({principalARN: principalARN, portfolioId: portfolioId, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateBudgetFromResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.</p>"
    )
    @as("ResourceId")
    resourceId: id,
    @ocaml.doc("<p>The name of the budget you want to disassociate.</p>") @as("BudgetName")
    budgetName: budgetName,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DisassociateBudgetFromResourceCommand"
  let make = (~resourceId, ~budgetName, ()) => new({resourceId: resourceId, budgetName: budgetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableAWSOrganizationsAccess = {
  type t

  @module("@aws-sdk/client-servicecatalog") @new
  external new: unit => t = "DisableAWSOrganizationsAccessCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeCopyProductStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>"
    )
    @as("CopyProductToken")
    copyProductToken: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status message.</p>") @as("StatusDetail") statusDetail: option<statusDetail>,
    @ocaml.doc("<p>The identifier of the copied product.</p>") @as("TargetProductId")
    targetProductId: option<id>,
    @ocaml.doc("<p>The status of the copy product operation.</p>") @as("CopyProductStatus")
    copyProductStatus: option<copyProductStatus>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeCopyProductStatusCommand"
  let make = (~copyProductToken, ~acceptLanguage=?, ()) =>
    new({copyProductToken: copyProductToken, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTagOption = {
  type t
  type request = {@ocaml.doc("<p>The TagOption identifier.</p>") @as("Id") id: tagOptionId}

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeleteTagOptionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteServiceAction = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc(
      "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
    )
    @as("Id")
    id: id,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeleteServiceActionCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({acceptLanguage: acceptLanguage, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
    provisioningArtifactId: id,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeleteProvisioningArtifactCommand"
  let make = (~provisioningArtifactId, ~productId, ~acceptLanguage=?, ()) =>
    new({
      provisioningArtifactId: provisioningArtifactId,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProvisionedProductPlan = {
  type t
  type request = {
    @ocaml.doc("<p>If set to true, AWS Service Catalog stops managing the specified provisioned product even
         if it cannot delete the underlying resources.</p>")
    @as("IgnoreErrors")
    ignoreErrors: option<ignoreErrors>,
    @ocaml.doc("<p>The plan identifier.</p>") @as("PlanId") planId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeleteProvisionedProductPlanCommand"
  let make = (~planId, ~ignoreErrors=?, ~acceptLanguage=?, ()) =>
    new({ignoreErrors: ignoreErrors, planId: planId, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProduct = {
  type t
  type request = {
    @ocaml.doc("<p>The product identifier.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new external new: request => t = "DeleteProductCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeletePortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeletePortfolioCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteConstraint = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the constraint.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeleteConstraintCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateTagOptionWithResource = {
  type t
  type request = {
    @ocaml.doc("<p>The TagOption identifier.</p>") @as("TagOptionId") tagOptionId: tagOptionId,
    @ocaml.doc("<p>The resource identifier.</p>") @as("ResourceId") resourceId: resourceId,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AssociateTagOptionWithResourceCommand"
  let make = (~tagOptionId, ~resourceId, ()) =>
    new({tagOptionId: tagOptionId, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateServiceActionWithProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc(
      "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
    )
    @as("ServiceActionId")
    serviceActionId: id,
    @ocaml.doc(
      "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
    )
    @as("ProvisioningArtifactId")
    provisioningArtifactId: id,
    @ocaml.doc("<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>")
    @as("ProductId")
    productId: id,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AssociateServiceActionWithProvisioningArtifactCommand"
  let make = (~serviceActionId, ~provisioningArtifactId, ~productId, ~acceptLanguage=?, ()) =>
    new({
      acceptLanguage: acceptLanguage,
      serviceActionId: serviceActionId,
      provisioningArtifactId: provisioningArtifactId,
      productId: productId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateProductWithPortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the source portfolio.</p>") @as("SourcePortfolioId")
    sourcePortfolioId: option<id>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AssociateProductWithPortfolioCommand"
  let make = (~portfolioId, ~productId, ~sourcePortfolioId=?, ~acceptLanguage=?, ()) =>
    new({
      sourcePortfolioId: sourcePortfolioId,
      portfolioId: portfolioId,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociatePrincipalWithPortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>The principal type. The supported value is <code>IAM</code>.</p>")
    @as("PrincipalType")
    principalType: principalType,
    @ocaml.doc("<p>The ARN of the principal (IAM user, role, or group).</p>") @as("PrincipalARN")
    principalARN: principalARN,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AssociatePrincipalWithPortfolioCommand"
  let make = (~principalType, ~principalARN, ~portfolioId, ~acceptLanguage=?, ()) =>
    new({
      principalType: principalType,
      principalARN: principalARN,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateBudgetWithResource = {
  type t
  type request = {
    @ocaml.doc("<p> The resource identifier. Either a portfolio-id or a product-id.</p>")
    @as("ResourceId")
    resourceId: id,
    @ocaml.doc("<p>The name of the budget you want to associate.</p>") @as("BudgetName")
    budgetName: budgetName,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AssociateBudgetWithResourceCommand"
  let make = (~resourceId, ~budgetName, ()) => new({resourceId: resourceId, budgetName: budgetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptPortfolioShare = {
  type t
  type request = {
    @ocaml.doc("<p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p>
         <ul>
            <li>
               <p>
                  <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the management account of your
               organization.</p>
            </li>
            <li>
               <p>
                  <code>IMPORTED</code> - Accept imported portfolios.</p>
            </li>
            <li>
               <p>
                  <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
            </li>
         </ul>
         <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id \"port-2qwzkwxt3y5fk\" --portfolio-share-type AWS_ORGANIZATIONS</code>
         </p>")
    @as("PortfolioShareType")
    portfolioShareType: option<portfolioShareType>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }

  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AcceptPortfolioShareCommand"
  let make = (~portfolioId, ~portfolioShareType=?, ~acceptLanguage=?, ()) =>
    new({
      portfolioShareType: portfolioShareType,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateTagOption = {
  type t
  type request = {
    @ocaml.doc("<p>The updated active state.</p>") @as("Active") active: option<tagOptionActive>,
    @ocaml.doc("<p>The updated value.</p>") @as("Value") value: option<tagOptionValue>,
    @ocaml.doc("<p>The TagOption identifier.</p>") @as("Id") id: tagOptionId,
  }
  type response = {
    @ocaml.doc("<p>Information about the TagOption.</p>") @as("TagOptionDetail")
    tagOptionDetail: option<tagOptionDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateTagOptionCommand"
  let make = (~id, ~active=?, ~value=?, ()) => new({active: active, value: value, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
         <p>The <code>DEFAULT</code> value indicates that the product version is active.</p>
         <p>The administrator can set the guidance to <code>DEPRECATED</code> to inform
          users that the product version is deprecated. Users are able to make updates to a provisioned product 
          of a deprecated version but cannot launch new provisioned products using a deprecated version.</p>")
    @as("Guidance")
    guidance: option<provisioningArtifactGuidance>,
    @ocaml.doc("<p>Indicates whether the product version is active.</p>
         <p>Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.</p>")
    @as("Active")
    active: option<provisioningArtifactActive>,
    @ocaml.doc("<p>The updated description of the provisioning artifact.</p>") @as("Description")
    description: option<provisioningArtifactDescription>,
    @ocaml.doc("<p>The updated name of the provisioning artifact.</p>") @as("Name")
    name: option<provisioningArtifactName>,
    @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
    provisioningArtifactId: id,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of the current request.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The URL of the CloudFormation template in Amazon S3.</p>") @as("Info")
    info: option<provisioningArtifactInfo>,
    @ocaml.doc("<p>Information about the provisioning artifact.</p>")
    @as("ProvisioningArtifactDetail")
    provisioningArtifactDetail: option<provisioningArtifactDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateProvisioningArtifactCommand"
  let make = (
    ~provisioningArtifactId,
    ~productId,
    ~guidance=?,
    ~active=?,
    ~description=?,
    ~name=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      guidance: guidance,
      active: active,
      description: description,
      name: name,
      provisioningArtifactId: provisioningArtifactId,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProvisionedProductProperties = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The idempotency token that uniquely identifies the provisioning product update request.</p>"
    )
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>A map that contains the provisioned product properties to be updated.</p>
         <p>The <code>LAUNCH_ROLE</code> key accepts role ARNs. This key allows an
         administrator to call <code>UpdateProvisionedProductProperties</code> to update the launch
         role that is associated with a provisioned product. This role is used when an end user
         calls a provisioning operation such as <code>UpdateProvisionedProduct</code>,
            <code>TerminateProvisionedProduct</code>, or
            <code>ExecuteProvisionedProductServiceAction</code>. Only a role ARN is valid. A user ARN is invalid. </p>

         <p>The <code>OWNER</code> key accepts user ARNs and role ARNs. The owner is the user
         that has permission to see, update, terminate, and execute service actions in the
         provisioned product.</p>
         <p>The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and 
         administrators can see ownership history of the provisioned product using the <code>ListRecordHistory</code> API. The new owner can 
      describe all past records for the provisioned product using the <code>DescribeRecord</code> API. The previous owner can no longer use <code>DescribeRecord</code>, 
      but can still see the product's history from when he was an owner using <code>ListRecordHistory</code>.</p>
         <p>If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or 
         Service Catalog console such as update, terminate, and execute service actions. 
         If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through 
         API or the Service Catalog console on that provisioned product.</p>")
    @as("ProvisionedProductProperties")
    provisionedProductProperties: provisionedProductProperties,
    @ocaml.doc("<p>The identifier of the provisioned product.</p>") @as("ProvisionedProductId")
    provisionedProductId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of the request.</p>") @as("Status") status: option<recordStatus>,
    @ocaml.doc("<p>The identifier of the record.</p>") @as("RecordId") recordId: option<id>,
    @ocaml.doc("<p>A map that contains the properties updated.</p>")
    @as("ProvisionedProductProperties")
    provisionedProductProperties: option<provisionedProductProperties>,
    @ocaml.doc("<p>The provisioned product identifier.</p>") @as("ProvisionedProductId")
    provisionedProductId: option<id>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateProvisionedProductPropertiesCommand"
  let make = (
    ~idempotencyToken,
    ~provisionedProductProperties,
    ~provisionedProductId,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      provisionedProductProperties: provisionedProductProperties,
      provisionedProductId: provisionedProductId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePortfolioShare = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A flag to enable or disable TagOptions sharing for the portfolio share. If this field is not provided, the current state of TagOptions sharing on the portfolio share will not be modified.</p>"
    )
    @as("ShareTagOptions")
    shareTagOptions: option<nullableBoolean>,
    @as("OrganizationNode") organizationNode: option<organizationNode>,
    @ocaml.doc(
      "<p>The AWS Account Id of the recipient account. This field is required when updating an external account to account type share.</p>"
    )
    @as("AccountId")
    accountId: option<accountId>,
    @ocaml.doc("<p>The unique identifier of the portfolio for which the share will be updated.</p>")
    @as("PortfolioId")
    portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of <code>UpdatePortfolioShare</code> operation.
         You can also obtain the operation status using <code>DescribePortfolioShareStatus</code> API. 
      </p>")
    @as("Status")
    status: option<shareStatus>,
    @ocaml.doc(
      "<p>The token that tracks the status of the <code>UpdatePortfolioShare</code> operation for external account to account or  organizational type sharing.</p>"
    )
    @as("PortfolioShareToken")
    portfolioShareToken: option<id>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdatePortfolioShareCommand"
  let make = (
    ~portfolioId,
    ~shareTagOptions=?,
    ~organizationNode=?,
    ~accountId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      shareTagOptions: shareTagOptions,
      organizationNode: organizationNode,
      accountId: accountId,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConstraint = {
  type t
  type request = {
    @ocaml.doc("<p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
         <dl>
            <dt>LAUNCH</dt>
            <dd>
               <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
               <p>Specify the <code>RoleArn</code> property as follows:</p>
               <p>
                  <code>{\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}</code>
               </p>
               <p>Specify the <code>LocalRoleName</code> property as follows:</p>
               <p>
                  <code>{\"LocalRoleName\": \"SCBasicLaunchRole\"}</code>
               </p>
               <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be 
                  account-agnostic so the administrator can create fewer resources per shared account.</p>
               <note>
                  <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
               </note>
               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
               <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
            </dd>
            <dt>NOTIFICATION</dt>
            <dd>
               <p>Specify the <code>NotificationArns</code> property as follows:</p>
               <p>
                  <code>{\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}</code>
               </p>
            </dd>
            <dt>RESOURCE_UPDATE</dt>
            <dd>
               <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
               <p>
                  <code>{\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}</code>
               </p>
               <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
            </dd>
            <dt>STACKSET</dt>
            <dd>
               <p>Specify the <code>Parameters</code> property as follows:</p>
               <p>
                  <code>{\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}</code>
               </p>
               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
               <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
               <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p>
            </dd>
            <dt>TEMPLATE</dt>
            <dd>
               <p>Specify the <code>Rules</code> property. For more information, see
                  <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html\">Template Constraint Rules</a>.</p>
            </dd>
         </dl>")
    @as("Parameters")
    parameters: option<constraintParameters>,
    @ocaml.doc("<p>The updated description of the constraint.</p>") @as("Description")
    description: option<constraintDescription>,
    @ocaml.doc("<p>The identifier of the constraint.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of the current request.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The constraint parameters.</p>") @as("ConstraintParameters")
    constraintParameters: option<constraintParameters>,
    @ocaml.doc("<p>Information about the constraint.</p>") @as("ConstraintDetail")
    constraintDetail: option<constraintDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateConstraintCommand"
  let make = (~id, ~parameters=?, ~description=?, ~acceptLanguage=?, ()) =>
    new({parameters: parameters, description: description, id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPortfolioAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSizeMax100>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc(
      "<p>The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.</p>"
    )
    @as("OrganizationParentId")
    organizationParentId: option<id>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the AWS accounts with access to the portfolio.</p>")
    @as("AccountIds")
    accountIds: option<accountIds>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListPortfolioAccessCommand"
  let make = (
    ~portfolioId,
    ~pageSize=?,
    ~pageToken=?,
    ~organizationParentId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      pageSize: pageSize,
      pageToken: pageToken,
      organizationParentId: organizationParentId,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTagOption = {
  type t
  type request = {@ocaml.doc("<p>The TagOption identifier.</p>") @as("Id") id: tagOptionId}
  type response = {
    @ocaml.doc("<p>Information about the TagOption.</p>") @as("TagOptionDetail")
    tagOptionDetail: option<tagOptionDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeTagOptionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether a verbose level of detail is enabled.</p>") @as("Verbose")
    verbose: option<verbose>,
    @ocaml.doc("<p>The product name.</p>") @as("ProductName") productName: option<productViewName>,
    @ocaml.doc("<p>The provisioning artifact name.</p>") @as("ProvisioningArtifactName")
    provisioningArtifactName: option<provisioningArtifactName>,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: option<id>,
    @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
    provisioningArtifactId: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of the current request.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The URL of the CloudFormation template in Amazon S3.</p>") @as("Info")
    info: option<provisioningArtifactInfo>,
    @ocaml.doc("<p>Information about the provisioning artifact.</p>")
    @as("ProvisioningArtifactDetail")
    provisioningArtifactDetail: option<provisioningArtifactDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeProvisioningArtifactCommand"
  let make = (
    ~verbose=?,
    ~productName=?,
    ~provisioningArtifactName=?,
    ~productId=?,
    ~provisioningArtifactId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      verbose: verbose,
      productName: productName,
      provisioningArtifactName: provisioningArtifactName,
      productId: productId,
      provisioningArtifactId: provisioningArtifactId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeConstraint = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the constraint.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of the current request.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The constraint parameters.</p>") @as("ConstraintParameters")
    constraintParameters: option<constraintParameters>,
    @ocaml.doc("<p>Information about the constraint.</p>") @as("ConstraintDetail")
    constraintDetail: option<constraintDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeConstraintCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePortfolioShare = {
  type t
  type request = {
    @ocaml.doc("<p>The organization node to whom you are going to stop sharing.</p>")
    @as("OrganizationNode")
    organizationNode: option<organizationNode>,
    @ocaml.doc("<p>The AWS account ID.</p>") @as("AccountId") accountId: option<accountId>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The portfolio share unique identifier. This will only be returned if delete is made to an organization node.</p>"
    )
    @as("PortfolioShareToken")
    portfolioShareToken: option<id>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeletePortfolioShareCommand"
  let make = (~portfolioId, ~organizationNode=?, ~accountId=?, ~acceptLanguage=?, ()) =>
    new({
      organizationNode: organizationNode,
      accountId: accountId,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTagOption = {
  type t
  type request = {
    @ocaml.doc("<p>The TagOption value.</p>") @as("Value") value: tagOptionValue,
    @ocaml.doc("<p>The TagOption key.</p>") @as("Key") key: tagOptionKey,
  }
  type response = {
    @ocaml.doc("<p>Information about the TagOption.</p>") @as("TagOptionDetail")
    tagOptionDetail: option<tagOptionDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreateTagOptionCommand"
  let make = (~value, ~key, ()) => new({value: value, key: key})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePortfolioShare = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Enables or disables <code>TagOptions </code> sharing when creating the portfolio share. If this flag is not provided, TagOptions sharing is disabled.</p>"
    )
    @as("ShareTagOptions")
    shareTagOptions: option<boolean_>,
    @ocaml.doc("<p>The organization node to whom you are going to share. If <code>OrganizationNode</code>
         is passed in, <code>PortfolioShare</code> will be created for the node an
         ListOrganizationPortfolioAccessd its children (when applies), and a
            <code>PortfolioShareToken</code> will be returned in the output in order for the
         administrator to monitor the status of the <code>PortfolioShare</code> creation
         process.</p>")
    @as("OrganizationNode")
    organizationNode: option<organizationNode>,
    @ocaml.doc("<p>The AWS account ID. For example, <code>123456789012</code>.</p>")
    @as("AccountId")
    accountId: option<accountId>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The portfolio shares a unique identifier that only returns if the portfolio is shared to an organization node.</p>"
    )
    @as("PortfolioShareToken")
    portfolioShareToken: option<id>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreatePortfolioShareCommand"
  let make = (
    ~portfolioId,
    ~shareTagOptions=?,
    ~organizationNode=?,
    ~accountId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      shareTagOptions: shareTagOptions,
      organizationNode: organizationNode,
      accountId: accountId,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConstraint = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The description of the constraint.</p>") @as("Description")
    description: option<constraintDescription>,
    @ocaml.doc("<p>The type of constraint.</p>
         <ul>
            <li>
               <p>
                  <code>LAUNCH</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NOTIFICATION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>RESOURCE_UPDATE</code>
               </p>
            </li>
            <li>
               <p>
                  <code>STACKSET</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TEMPLATE</code>
               </p>
            </li>
         </ul>")
    @as("Type")
    type_: constraintType,
    @ocaml.doc("<p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
         <dl>
            <dt>LAUNCH</dt>
            <dd>
               <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
               <p>Specify the <code>RoleArn</code> property as follows:</p>
               <p>
                  <code>{\"RoleArn\" : \"arn:aws:iam::123456789012:role/LaunchRole\"}</code>
               </p>
               <p>Specify the <code>LocalRoleName</code> property as follows:</p>
               <p>
                  <code>{\"LocalRoleName\": \"SCBasicLaunchRole\"}</code>
               </p>
               <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be 
               account-agnostic so the administrator can create fewer resources per shared account.</p>
               <note>
                  <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
               </note>
               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
               <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
            </dd>
            <dt>NOTIFICATION</dt>
            <dd>
               <p>Specify the <code>NotificationArns</code> property as follows:</p>
               <p>
                  <code>{\"NotificationArns\" : [\"arn:aws:sns:us-east-1:123456789012:Topic\"]}</code>
               </p>
            </dd>
            <dt>RESOURCE_UPDATE</dt>
            <dd>
               <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
               <p>
                  <code>{\"Version\":\"2.0\",\"Properties\":{\"TagUpdateOnProvisionedProduct\":\"String\"}}</code>
               </p>
               <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
            </dd>
            <dt>STACKSET</dt>
            <dd>
               <p>Specify the <code>Parameters</code> property as follows:</p>
               <p>
                  <code>{\"Version\": \"String\", \"Properties\": {\"AccountList\": [ \"String\" ], \"RegionList\": [ \"String\" ], \"AdminRole\": \"String\", \"ExecutionRole\": \"String\"}}</code>
               </p>
               <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
               <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
               <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p>
            </dd>
            <dt>TEMPLATE</dt>
            <dd>
               <p>Specify the <code>Rules</code> property. For more information, see
                  <a href=\"http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html\">Template Constraint Rules</a>.</p>
            </dd>
         </dl>")
    @as("Parameters")
    parameters: constraintParameters,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of the current request.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>The constraint parameters.</p>") @as("ConstraintParameters")
    constraintParameters: option<constraintParameters>,
    @ocaml.doc("<p>Information about the constraint.</p>") @as("ConstraintDetail")
    constraintDetail: option<constraintDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreateConstraintCommand"
  let make = (
    ~idempotencyToken,
    ~type_,
    ~parameters,
    ~productId,
    ~portfolioId,
    ~description=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      description: description,
      type_: type_,
      parameters: parameters,
      productId: productId,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateServiceAction = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc("<p>The self-service action description.</p>") @as("Description")
    description: option<serviceActionDescription>,
    @ocaml.doc("<p>A map that defines the self-service action.</p>") @as("Definition")
    definition: option<serviceActionDefinitionMap>,
    @ocaml.doc("<p>The self-service action name.</p>") @as("Name") name: option<serviceActionName>,
    @ocaml.doc("<p>The self-service action identifier.</p>") @as("Id") id: id,
  }
  type response = {
    @ocaml.doc("<p>Detailed information about the self-service action.</p>")
    @as("ServiceActionDetail")
    serviceActionDetail: option<serviceActionDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateServiceActionCommand"
  let make = (~id, ~acceptLanguage=?, ~description=?, ~definition=?, ~name=?, ()) =>
    new({
      acceptLanguage: acceptLanguage,
      description: description,
      definition: definition,
      name: name,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProduct = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to remove from the product.</p>") @as("RemoveTags")
    removeTags: option<tagKeys>,
    @ocaml.doc("<p>The tags to add to the product.</p>") @as("AddTags") addTags: option<addTags>,
    @ocaml.doc("<p>The updated support URL for the product.</p>") @as("SupportUrl")
    supportUrl: option<supportUrl>,
    @ocaml.doc("<p>The updated support email for the product.</p>") @as("SupportEmail")
    supportEmail: option<supportEmail>,
    @ocaml.doc("<p>The updated support description for the product.</p>") @as("SupportDescription")
    supportDescription: option<supportDescription>,
    @ocaml.doc("<p>The updated distributor of the product.</p>") @as("Distributor")
    distributor: option<productViewOwner>,
    @ocaml.doc("<p>The updated description of the product.</p>") @as("Description")
    description: option<productViewShortDescription>,
    @ocaml.doc("<p>The updated owner of the product.</p>") @as("Owner")
    owner: option<productViewOwner>,
    @ocaml.doc("<p>The updated product name.</p>") @as("Name") name: option<productViewName>,
    @ocaml.doc("<p>The product identifier.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags associated with the product.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Information about the product view.</p>") @as("ProductViewDetail")
    productViewDetail: option<productViewDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new external new: request => t = "UpdateProductCommand"
  let make = (
    ~id,
    ~removeTags=?,
    ~addTags=?,
    ~supportUrl=?,
    ~supportEmail=?,
    ~supportDescription=?,
    ~distributor=?,
    ~description=?,
    ~owner=?,
    ~name=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      removeTags: removeTags,
      addTags: addTags,
      supportUrl: supportUrl,
      supportEmail: supportEmail,
      supportDescription: supportDescription,
      distributor: distributor,
      description: description,
      owner: owner,
      name: name,
      id: id,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to remove.</p>") @as("RemoveTags") removeTags: option<tagKeys>,
    @ocaml.doc("<p>The tags to add.</p>") @as("AddTags") addTags: option<addTags>,
    @ocaml.doc("<p>The updated name of the portfolio provider.</p>") @as("ProviderName")
    providerName: option<providerName>,
    @ocaml.doc("<p>The updated description of the portfolio.</p>") @as("Description")
    description: option<portfolioDescription>,
    @ocaml.doc("<p>The name to use for display purposes.</p>") @as("DisplayName")
    displayName: option<portfolioDisplayName>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags associated with the portfolio.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Information about the portfolio.</p>") @as("PortfolioDetail")
    portfolioDetail: option<portfolioDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdatePortfolioCommand"
  let make = (
    ~id,
    ~removeTags=?,
    ~addTags=?,
    ~providerName=?,
    ~description=?,
    ~displayName=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      removeTags: removeTags,
      addTags: addTags,
      providerName: providerName,
      description: description,
      displayName: displayName,
      id: id,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ScanProvisionedProducts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
    )
    @as("AccessLevelFilter")
    accessLevelFilter: option<accessLevelFilter>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the provisioned products.</p>") @as("ProvisionedProducts")
    provisionedProducts: option<provisionedProductDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ScanProvisionedProductsCommand"
  let make = (~pageToken=?, ~pageSize=?, ~accessLevelFilter=?, ~acceptLanguage=?, ()) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      accessLevelFilter: accessLevelFilter,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagOptions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>"
    )
    @as("Filters")
    filters: option<listTagOptionsFilters>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the TagOptions.</p>") @as("TagOptionDetails")
    tagOptionDetails: option<tagOptionDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListTagOptionsCommand"
  let make = (~pageToken=?, ~pageSize=?, ~filters=?, ()) =>
    new({pageToken: pageToken, pageSize: pageSize, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListStackInstancesForProvisionedProduct = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The identifier of the provisioned product.</p>") @as("ProvisionedProductId")
    provisionedProductId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>List of stack instances.</p>") @as("StackInstances")
    stackInstances: option<stackInstances>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListStackInstancesForProvisionedProductCommand"
  let make = (~provisionedProductId, ~pageSize=?, ~pageToken=?, ~acceptLanguage=?, ()) =>
    new({
      pageSize: pageSize,
      pageToken: pageToken,
      provisionedProductId: provisionedProductId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServiceActionsForProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>"
    )
    @as("ProvisioningArtifactId")
    provisioningArtifactId: id,
    @ocaml.doc("<p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>")
    @as("ProductId")
    productId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc(
      "<p>An object containing information about the self-service actions associated with the provisioning artifact.</p>"
    )
    @as("ServiceActionSummaries")
    serviceActionSummaries: option<serviceActionSummaries>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListServiceActionsForProvisioningArtifactCommand"
  let make = (
    ~provisioningArtifactId,
    ~productId,
    ~acceptLanguage=?,
    ~pageToken=?,
    ~pageSize=?,
    (),
  ) =>
    new({
      acceptLanguage: acceptLanguage,
      pageToken: pageToken,
      pageSize: pageSize,
      provisioningArtifactId: provisioningArtifactId,
      productId: productId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListServiceActions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc(
      "<p>An object containing information about the service actions associated with the provisioning artifact.</p>"
    )
    @as("ServiceActionSummaries")
    serviceActionSummaries: option<serviceActionSummaries>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListServiceActionsCommand"
  let make = (~pageToken=?, ~pageSize=?, ~acceptLanguage=?, ()) =>
    new({pageToken: pageToken, pageSize: pageSize, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListResourcesForTagOption = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The resource type.</p>
         <ul>
            <li>
               <p>
                  <code>Portfolio</code>
               </p>
            </li>
            <li>
               <p>
                  <code>Product</code>
               </p>
            </li>
         </ul>")
    @as("ResourceType")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>The TagOption identifier.</p>") @as("TagOptionId") tagOptionId: tagOptionId,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the resources.</p>") @as("ResourceDetails")
    resourceDetails: option<resourceDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListResourcesForTagOptionCommand"
  let make = (~tagOptionId, ~pageToken=?, ~pageSize=?, ~resourceType=?, ()) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      resourceType: resourceType,
      tagOptionId: tagOptionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisioningArtifacts = {
  type t
  type request = {
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the provisioning artifacts.</p>")
    @as("ProvisioningArtifactDetails")
    provisioningArtifactDetails: option<provisioningArtifactDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListProvisioningArtifactsCommand"
  let make = (~productId, ~acceptLanguage=?, ()) =>
    new({productId: productId, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisionedProductPlans = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
    )
    @as("AccessLevelFilter")
    accessLevelFilter: option<accessLevelFilter>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProvisionProductId")
    provisionProductId: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the plans.</p>") @as("ProvisionedProductPlans")
    provisionedProductPlans: option<provisionedProductPlans>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListProvisionedProductPlansCommand"
  let make = (
    ~accessLevelFilter=?,
    ~pageToken=?,
    ~pageSize=?,
    ~provisionProductId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      accessLevelFilter: accessLevelFilter,
      pageToken: pageToken,
      pageSize: pageSize,
      provisionProductId: provisionProductId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPrincipalsForPortfolio = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The IAM principals (users or roles) associated with the portfolio.</p>")
    @as("Principals")
    principals: option<principals>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListPrincipalsForPortfolioCommand"
  let make = (~portfolioId, ~pageToken=?, ~pageSize=?, ~acceptLanguage=?, ()) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPortfoliosForProduct = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the portfolios.</p>") @as("PortfolioDetails")
    portfolioDetails: option<portfolioDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListPortfoliosForProductCommand"
  let make = (~productId, ~pageSize=?, ~pageToken=?, ~acceptLanguage=?, ()) =>
    new({
      pageSize: pageSize,
      pageToken: pageToken,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPortfolios = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the portfolios.</p>") @as("PortfolioDetails")
    portfolioDetails: option<portfolioDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListPortfoliosCommand"
  let make = (~pageSize=?, ~pageToken=?, ~acceptLanguage=?, ()) =>
    new({pageSize: pageSize, pageToken: pageToken, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOrganizationPortfolioAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The organization node type that will be returned in the output.</p>
         <ul>
            <li>
               <p>
                  <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p>
            </li>
            <li>
               <p>
                  <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p>
            </li>
            <li>
               <p>
                  <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p>
            </li>
         </ul>")
    @as("OrganizationNodeType")
    organizationNodeType: organizationNodeType,
    @ocaml.doc("<p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>")
    @as("PortfolioId")
    portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Displays information about the organization nodes.</p>") @as("OrganizationNodes")
    organizationNodes: option<organizationNodes>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListOrganizationPortfolioAccessCommand"
  let make = (
    ~organizationNodeType,
    ~portfolioId,
    ~pageSize=?,
    ~pageToken=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      pageSize: pageSize,
      pageToken: pageToken,
      organizationNodeType: organizationNodeType,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListConstraintsForPortfolio = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: option<id>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the constraints.</p>") @as("ConstraintDetails")
    constraintDetails: option<constraintDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListConstraintsForPortfolioCommand"
  let make = (~portfolioId, ~pageToken=?, ~pageSize=?, ~productId=?, ~acceptLanguage=?, ()) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      productId: productId,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBudgetsForResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The resource identifier.</p>") @as("ResourceId") resourceId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the associated budgets.</p>") @as("Budgets")
    budgets: option<budgets>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListBudgetsForResourceCommand"
  let make = (~resourceId, ~pageToken=?, ~pageSize=?, ~acceptLanguage=?, ()) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      resourceId: resourceId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAcceptedPortfolioShares = {
  type t
  type request = {
    @ocaml.doc("<p>The type of shared portfolios to list. The default is to list imported portfolios.</p>
         <ul>
            <li>
               <p>
                  <code>AWS_ORGANIZATIONS</code> - List portfolios shared by the management
               account of your organization</p>
            </li>
            <li>
               <p>
                  <code>AWS_SERVICECATALOG</code> - List default portfolios</p>
            </li>
            <li>
               <p>
                  <code>IMPORTED</code> - List imported portfolios</p>
            </li>
         </ul>")
    @as("PortfolioShareType")
    portfolioShareType: option<portfolioShareType>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the portfolios.</p>") @as("PortfolioDetails")
    portfolioDetails: option<portfolioDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListAcceptedPortfolioSharesCommand"
  let make = (~portfolioShareType=?, ~pageSize=?, ~pageToken=?, ~acceptLanguage=?, ()) =>
    new({
      portfolioShareType: portfolioShareType,
      pageSize: pageSize,
      pageToken: pageToken,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProvisionedProductOutputs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.</p>"
    )
    @as("OutputKeys")
    outputKeys: option<outputKeys>,
    @ocaml.doc("<p>The name of the provisioned product that you want the outputs from.</p>")
    @as("ProvisionedProductName")
    provisionedProductName: option<provisionedProductName>,
    @ocaml.doc("<p>The identifier of the provisioned product that you want the outputs from.</p>")
    @as("ProvisionedProductId")
    provisionedProductId: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
      </p>")
    @as("Outputs")
    outputs: option<recordOutputs>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "GetProvisionedProductOutputsCommand"
  let make = (
    ~pageToken=?,
    ~pageSize=?,
    ~outputKeys=?,
    ~provisionedProductName=?,
    ~provisionedProductId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      outputKeys: outputKeys,
      provisionedProductName: provisionedProductName,
      provisionedProductId: provisionedProductId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServiceAction = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc("<p>The self-service action identifier.</p>") @as("Id") id: id,
  }
  type response = {
    @ocaml.doc("<p>Detailed information about the self-service action.</p>")
    @as("ServiceActionDetail")
    serviceActionDetail: option<serviceActionDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeServiceActionCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({acceptLanguage: acceptLanguage, id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisionedProduct = {
  type t
  @ocaml.doc("DescribeProvisionedProductAPI input structure.

        AcceptLanguage - [Optional]
        The language code for localization.

        Id - [Optional]
        The provisioned product identifier.

        Name - [Optional]
        Another provisioned product identifier. Customers must provide either Id or Name.")
  type request = {
    @ocaml.doc("<p>The name of the provisioned product. You must provide the name or ID, but not both.</p>
         <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>")
    @as("Name")
    name: option<provisionedProductName>,
    @ocaml.doc("<p>The provisioned product identifier. You must provide the name or ID, but not both.</p>
         <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>")
    @as("Id")
    id: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Any CloudWatch dashboards that were created when provisioning the product.</p>")
    @as("CloudWatchDashboards")
    cloudWatchDashboards: option<cloudWatchDashboards>,
    @ocaml.doc("<p>Information about the provisioned product.</p>") @as("ProvisionedProductDetail")
    provisionedProductDetail: option<provisionedProductDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeProvisionedProductCommand"
  let make = (~name=?, ~id=?, ~acceptLanguage=?, ()) =>
    new({name: name, id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProductView = {
  type t
  type request = {
    @ocaml.doc("<p>The product view identifier.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the provisioning artifacts for the product.</p>")
    @as("ProvisioningArtifacts")
    provisioningArtifacts: option<provisioningArtifacts>,
    @ocaml.doc("<p>Summary information about the product.</p>") @as("ProductViewSummary")
    productViewSummary: option<productViewSummary>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeProductViewCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProduct = {
  type t
  type request = {
    @ocaml.doc("<p>The product name.</p>") @as("Name") name: option<productViewName>,
    @ocaml.doc("<p>The product identifier.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the associated launch paths.</p>") @as("LaunchPaths")
    launchPaths: option<launchPaths>,
    @ocaml.doc("<p>Information about the associated budgets.</p>") @as("Budgets")
    budgets: option<budgets>,
    @ocaml.doc("<p>Information about the provisioning artifacts for the specified product.</p>")
    @as("ProvisioningArtifacts")
    provisioningArtifacts: option<provisioningArtifacts>,
    @ocaml.doc("<p>Summary information about the product view.</p>") @as("ProductViewSummary")
    productViewSummary: option<productViewSummary>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeProductCommand"
  let make = (~name=?, ~id=?, ~acceptLanguage=?, ()) =>
    new({name: name, id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePortfolioShares = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSizeMax100>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following:</p>
         <p>1. <code>ACCOUNT</code> - Represents an external account to account share.</p>
         <p>2. <code>ORGANIZATION</code> - Represents a share to an organization. This share is available to every account in the organization.</p>
         <p>3. <code>ORGANIZATIONAL_UNIT</code> - Represents a share to an organizational unit.</p>
         <p>4. <code>ORGANIZATION_MEMBER_ACCOUNT</code> - Represents a share to an account in the organization.</p>")
    @as("Type")
    type_: describePortfolioShareType,
    @ocaml.doc("<p>The unique identifier of the portfolio for which shares will be retrieved.</p>")
    @as("PortfolioId")
    portfolioId: id,
  }
  type response = {
    @ocaml.doc("<p>Summaries about each of the portfolio shares.</p>") @as("PortfolioShareDetails")
    portfolioShareDetails: option<portfolioShareDetails>,
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribePortfolioSharesCommand"
  let make = (~type_, ~portfolioId, ~pageSize=?, ~pageToken=?, ()) =>
    new({pageSize: pageSize, pageToken: pageToken, type_: type_, portfolioId: portfolioId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("Id") id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the associated budgets.</p>") @as("Budgets")
    budgets: option<budgets>,
    @ocaml.doc("<p>Information about the TagOptions associated with the portfolio.</p>")
    @as("TagOptions")
    tagOptions: option<tagOptionDetails>,
    @ocaml.doc("<p>Information about the tags associated with the portfolio.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Information about the portfolio.</p>") @as("PortfolioDetail")
    portfolioDetail: option<portfolioDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribePortfolioCommand"
  let make = (~id, ~acceptLanguage=?, ()) => new({id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateServiceAction = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc("<p>The self-service action description.</p>") @as("Description")
    description: option<serviceActionDescription>,
    @ocaml.doc("<p>The self-service action definition. Can be one of the following:</p>
         <dl>
            <dt>Name</dt>
            <dd>
               <p>The name of the AWS Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p>
               <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p>
            </dd>
            <dt>Version</dt>
            <dd>
               <p>The AWS Systems Manager automation document version. For example, <code>\"Version\": \"1\"</code>
               </p>
            </dd>
            <dt>AssumeRole</dt>
            <dd>
               <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>\"AssumeRole\": \"arn:aws:iam::12345678910:role/ActionRole\"</code>.</p>
               <p>To reuse the provisioned product launch role, set to <code>\"AssumeRole\": \"LAUNCH_ROLE\"</code>.</p>
            </dd>
            <dt>Parameters</dt>
            <dd>
               <p>The list of parameters in JSON format.</p>
               <p>For example: <code>[{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TARGET\\\"}]</code> or <code>[{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TEXT_VALUE\\\"}]</code>.</p>
            </dd>
         </dl>")
    @as("Definition")
    definition: serviceActionDefinitionMap,
    @ocaml.doc(
      "<p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>"
    )
    @as("DefinitionType")
    definitionType: serviceActionDefinitionType,
    @ocaml.doc("<p>The self-service action name.</p>") @as("Name") name: serviceActionName,
  }
  type response = {
    @ocaml.doc("<p>An object containing information about the self-service action.</p>")
    @as("ServiceActionDetail")
    serviceActionDetail: option<serviceActionDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreateServiceActionCommand"
  let make = (
    ~idempotencyToken,
    ~definition,
    ~definitionType,
    ~name,
    ~acceptLanguage=?,
    ~description=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      acceptLanguage: acceptLanguage,
      description: description,
      definition: definition,
      definitionType: definitionType,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The configuration for the provisioning artifact.</p>") @as("Parameters")
    parameters: provisioningArtifactProperties,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The status of the current request.</p>") @as("Status") status: option<status>,
    @ocaml.doc("<p>Specify the template source with one of the following options, but not both. Keys
         accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ].</p>
         <p>The URL of the CloudFormation template in Amazon S3, in JSON format. </p>
         <p>
            <code>LoadTemplateFromURL</code>
         </p>
         <p>Use the URL of the CloudFormation template in Amazon S3 in JSON format.</p>
         <p>
            <code>ImportFromPhysicalId</code>
         </p>
         <p>Use the physical id of the resource that contains the template; currently supports
         CloudFormation stack ARN.</p>")
    @as("Info")
    info: option<provisioningArtifactInfo>,
    @ocaml.doc("<p>Information about the provisioning artifact.</p>")
    @as("ProvisioningArtifactDetail")
    provisioningArtifactDetail: option<provisioningArtifactDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreateProvisioningArtifactCommand"
  let make = (~idempotencyToken, ~parameters, ~productId, ~acceptLanguage=?, ()) =>
    new({
      idempotencyToken: idempotencyToken,
      parameters: parameters,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProvisionedProductPlan = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>
         <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>")
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>Parameters specified by the administrator that are required for provisioning the
         product.</p>")
    @as("ProvisioningParameters")
    provisioningParameters: option<updateProvisioningParameters>,
    @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
    provisioningArtifactId: id,
    @ocaml.doc("<p>A user-friendly name for the provisioned product. This value must be
         unique for the AWS account and cannot be updated after the product is provisioned.</p>")
    @as("ProvisionedProductName")
    provisionedProductName: provisionedProductName,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The path identifier of the product. This value is optional if the product 
         has a default path, and required if the product has more than one path.
         To list the paths for a product, use <a>ListLaunchPaths</a>.</p>")
    @as("PathId")
    pathId: option<id>,
    @ocaml.doc("<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
         events.</p>")
    @as("NotificationArns")
    notificationArns: option<notificationArns>,
    @ocaml.doc("<p>The plan type.</p>") @as("PlanType") planType: provisionedProductPlanType,
    @ocaml.doc("<p>The name of the plan.</p>") @as("PlanName") planName: provisionedProductPlanName,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
    provisioningArtifactId: option<id>,
    @ocaml.doc("<p>The user-friendly name of the provisioned product.</p>")
    @as("ProvisionedProductName")
    provisionedProductName: option<provisionedProductName>,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProvisionProductId")
    provisionProductId: option<id>,
    @ocaml.doc("<p>The plan identifier.</p>") @as("PlanId") planId: option<id>,
    @ocaml.doc("<p>The name of the plan.</p>") @as("PlanName")
    planName: option<provisionedProductPlanName>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreateProvisionedProductPlanCommand"
  let make = (
    ~idempotencyToken,
    ~provisioningArtifactId,
    ~provisionedProductName,
    ~productId,
    ~planType,
    ~planName,
    ~tags=?,
    ~provisioningParameters=?,
    ~pathId=?,
    ~notificationArns=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      tags: tags,
      idempotencyToken: idempotencyToken,
      provisioningParameters: provisioningParameters,
      provisioningArtifactId: provisioningArtifactId,
      provisionedProductName: provisionedProductName,
      productId: productId,
      pathId: pathId,
      notificationArns: notificationArns,
      planType: planType,
      planName: planName,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProduct = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The configuration of the provisioning artifact. </p>")
    @as("ProvisioningArtifactParameters")
    provisioningArtifactParameters: provisioningArtifactProperties,
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<addTags>,
    @ocaml.doc("<p>The type of product.</p>") @as("ProductType") productType: productType,
    @ocaml.doc("<p>The contact URL for product support.</p>
         <p>
            <code>^https?:\\/\\// </code>/ is the pattern used to validate SupportUrl.</p>")
    @as("SupportUrl")
    supportUrl: option<supportUrl>,
    @ocaml.doc("<p>The contact email for product support.</p>") @as("SupportEmail")
    supportEmail: option<supportEmail>,
    @ocaml.doc("<p>The support information about the product.</p>") @as("SupportDescription")
    supportDescription: option<supportDescription>,
    @ocaml.doc("<p>The distributor of the product.</p>") @as("Distributor")
    distributor: option<productViewOwner>,
    @ocaml.doc("<p>The description of the product.</p>") @as("Description")
    description: option<productViewShortDescription>,
    @ocaml.doc("<p>The owner of the product.</p>") @as("Owner") owner: productViewOwner,
    @ocaml.doc("<p>The name of the product.</p>") @as("Name") name: productViewName,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags associated with the product.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Information about the provisioning artifact. </p>")
    @as("ProvisioningArtifactDetail")
    provisioningArtifactDetail: option<provisioningArtifactDetail>,
    @ocaml.doc("<p>Information about the product view.</p>") @as("ProductViewDetail")
    productViewDetail: option<productViewDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new external new: request => t = "CreateProductCommand"
  let make = (
    ~idempotencyToken,
    ~provisioningArtifactParameters,
    ~productType,
    ~owner,
    ~name,
    ~tags=?,
    ~supportUrl=?,
    ~supportEmail=?,
    ~supportDescription=?,
    ~distributor=?,
    ~description=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      provisioningArtifactParameters: provisioningArtifactParameters,
      tags: tags,
      productType: productType,
      supportUrl: supportUrl,
      supportEmail: supportEmail,
      supportDescription: supportDescription,
      distributor: distributor,
      description: description,
      owner: owner,
      name: name,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePortfolio = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<addTags>,
    @ocaml.doc("<p>The name of the portfolio provider.</p>") @as("ProviderName")
    providerName: providerName,
    @ocaml.doc("<p>The description of the portfolio.</p>") @as("Description")
    description: option<portfolioDescription>,
    @ocaml.doc("<p>The name to use for display purposes.</p>") @as("DisplayName")
    displayName: portfolioDisplayName,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags associated with the portfolio.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>Information about the portfolio.</p>") @as("PortfolioDetail")
    portfolioDetail: option<portfolioDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreatePortfolioCommand"
  let make = (
    ~idempotencyToken,
    ~providerName,
    ~displayName,
    ~tags=?,
    ~description=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      tags: tags,
      providerName: providerName,
      description: description,
      displayName: displayName,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopyProduct = {
  type t
  type request = {
    @ocaml.doc("<p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request. </p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The copy options. If the value is <code>CopyTags</code>, the tags from the source
         product are copied to the target product.</p>")
    @as("CopyOptions")
    copyOptions: option<copyOptions>,
    @ocaml.doc("<p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy. 
         By default, all provisioning artifacts are copied.</p>")
    @as("SourceProvisioningArtifactIdentifiers")
    sourceProvisioningArtifactIdentifiers: option<sourceProvisioningArtifactProperties>,
    @ocaml.doc(
      "<p>A name for the target product. The default is the name of the source product.</p>"
    )
    @as("TargetProductName")
    targetProductName: option<productViewName>,
    @ocaml.doc("<p>The identifier of the target product. By default, a new product is created.</p>")
    @as("TargetProductId")
    targetProductId: option<id>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source product.</p>")
    @as("SourceProductArn")
    sourceProductArn: productArn,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to track the progress of the operation.</p>")
    @as("CopyProductToken")
    copyProductToken: option<id>,
  }
  @module("@aws-sdk/client-servicecatalog") @new external new: request => t = "CopyProductCommand"
  let make = (
    ~idempotencyToken,
    ~sourceProductArn,
    ~copyOptions=?,
    ~sourceProvisioningArtifactIdentifiers=?,
    ~targetProductName=?,
    ~targetProductId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      copyOptions: copyOptions,
      sourceProvisioningArtifactIdentifiers: sourceProvisioningArtifactIdentifiers,
      targetProductName: targetProductName,
      targetProductId: targetProductId,
      sourceProductArn: sourceProductArn,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisassociateServiceActionFromProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc(
      "<p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>"
    )
    @as("ServiceActionAssociations")
    serviceActionAssociations: serviceActionAssociations,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>"
    )
    @as("FailedServiceActionAssociations")
    failedServiceActionAssociations: option<failedServiceActionAssociations>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "BatchDisassociateServiceActionFromProvisioningArtifactCommand"
  let make = (~serviceActionAssociations, ~acceptLanguage=?, ()) =>
    new({acceptLanguage: acceptLanguage, serviceActionAssociations: serviceActionAssociations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAssociateServiceActionWithProvisioningArtifact = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc(
      "<p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>"
    )
    @as("ServiceActionAssociations")
    serviceActionAssociations: serviceActionAssociations,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>"
    )
    @as("FailedServiceActionAssociations")
    failedServiceActionAssociations: option<failedServiceActionAssociations>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "BatchAssociateServiceActionWithProvisioningArtifactCommand"
  let make = (~serviceActionAssociations, ~acceptLanguage=?, ()) =>
    new({acceptLanguage: acceptLanguage, serviceActionAssociations: serviceActionAssociations})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProvisionedProduct = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The idempotency token that uniquely identifies the provisioning update request.</p>"
    )
    @as("UpdateToken")
    updateToken: idempotencyToken,
    @ocaml.doc(
      "<p>One or more tags. Requires the product to have <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>An object that contains information about the provisioning preferences for a stack set.</p>"
    )
    @as("ProvisioningPreferences")
    provisioningPreferences: option<updateProvisioningPreferences>,
    @ocaml.doc("<p>The new parameters.</p>") @as("ProvisioningParameters")
    provisioningParameters: option<updateProvisioningParameters>,
    @ocaml.doc("<p>The name of the path. You must provide the name or ID, but not both.</p>")
    @as("PathName")
    pathName: option<portfolioDisplayName>,
    @ocaml.doc("<p>The path identifier. This value is optional if the product 
         has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.</p>")
    @as("PathId")
    pathId: option<id>,
    @ocaml.doc(
      "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"
    )
    @as("ProvisioningArtifactName")
    provisioningArtifactName: option<provisioningArtifactName>,
    @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
    provisioningArtifactId: option<id>,
    @ocaml.doc("<p>The name of the product. You must provide the name or ID, but not both.</p>")
    @as("ProductName")
    productName: option<productViewName>,
    @ocaml.doc(
      "<p>The identifier of the product. You must provide the name or ID, but not both.</p>"
    )
    @as("ProductId")
    productId: option<id>,
    @ocaml.doc(
      "<p>The identifier of the provisioned product. You must provide the name or ID, but not both.</p>"
    )
    @as("ProvisionedProductId")
    provisionedProductId: option<id>,
    @ocaml.doc("<p>The name of the provisioned product. You cannot specify both
         <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>")
    @as("ProvisionedProductName")
    provisionedProductName: option<provisionedProductNameOrArn>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the result of the request.</p>") @as("RecordDetail")
    recordDetail: option<recordDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateProvisionedProductCommand"
  let make = (
    ~updateToken,
    ~tags=?,
    ~provisioningPreferences=?,
    ~provisioningParameters=?,
    ~pathName=?,
    ~pathId=?,
    ~provisioningArtifactName=?,
    ~provisioningArtifactId=?,
    ~productName=?,
    ~productId=?,
    ~provisionedProductId=?,
    ~provisionedProductName=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      updateToken: updateToken,
      tags: tags,
      provisioningPreferences: provisioningPreferences,
      provisioningParameters: provisioningParameters,
      pathName: pathName,
      pathId: pathId,
      provisioningArtifactName: provisioningArtifactName,
      provisioningArtifactId: provisioningArtifactId,
      productName: productName,
      productId: productId,
      provisionedProductId: provisionedProductId,
      provisionedProductName: provisionedProductName,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TerminateProvisionedProduct = {
  type t
  type request = {
    @ocaml.doc("<p>When this boolean parameter is set to true, the <code>TerminateProvisionedProduct</code> API deletes
         the Service Catalog provisioned product. However, it does not remove the CloudFormation
         stack, stack set, or the underlying resources of the deleted provisioned product. The
         default value is false.</p>")
    @as("RetainPhysicalResources")
    retainPhysicalResources: option<retainPhysicalResources>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc("<p>If set to true, AWS Service Catalog stops managing the specified provisioned product even
         if it cannot delete the underlying resources.</p>")
    @as("IgnoreErrors")
    ignoreErrors: option<ignoreErrors>,
    @ocaml.doc("<p>An idempotency token that uniquely identifies the termination request. This token is
         only valid during the termination process. After the provisioned product is terminated,
         subsequent requests to terminate the same provisioned product always return
         <b>ResourceNotFound</b>.</p>")
    @as("TerminateToken")
    terminateToken: idempotencyToken,
    @ocaml.doc("<p>The identifier of the provisioned product. You cannot specify both
         <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>")
    @as("ProvisionedProductId")
    provisionedProductId: option<id>,
    @ocaml.doc("<p>The name of the provisioned product. You cannot specify both
         <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>")
    @as("ProvisionedProductName")
    provisionedProductName: option<provisionedProductNameOrArn>,
  }
  type response = {
    @ocaml.doc("<p>Information about the result of this request.</p>") @as("RecordDetail")
    recordDetail: option<recordDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "TerminateProvisionedProductCommand"
  let make = (
    ~terminateToken,
    ~retainPhysicalResources=?,
    ~acceptLanguage=?,
    ~ignoreErrors=?,
    ~provisionedProductId=?,
    ~provisionedProductName=?,
    (),
  ) =>
    new({
      retainPhysicalResources: retainPhysicalResources,
      acceptLanguage: acceptLanguage,
      ignoreErrors: ignoreErrors,
      terminateToken: terminateToken,
      provisionedProductId: provisionedProductId,
      provisionedProductName: provisionedProductName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchProductsAsAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>Access level of the source of the product.</p>") @as("ProductSource")
    productSource: option<productSource>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The sort order. If no value is specified, the results are not sorted.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The sort field. If no value is specified, the results are not sorted.</p>")
    @as("SortBy")
    sortBy: option<productViewSortBy>,
    @ocaml.doc("<p>The search filters. If no search filters are specified, the output includes all products 
         to which the administrator has access.</p>")
    @as("Filters")
    filters: option<productViewFilters>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the product views.</p>") @as("ProductViewDetails")
    productViewDetails: option<productViewDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "SearchProductsAsAdminCommand"
  let make = (
    ~productSource=?,
    ~pageSize=?,
    ~pageToken=?,
    ~sortOrder=?,
    ~sortBy=?,
    ~filters=?,
    ~portfolioId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      productSource: productSource,
      pageSize: pageSize,
      pageToken: pageToken,
      sortOrder: sortOrder,
      sortBy: sortBy,
      filters: filters,
      portfolioId: portfolioId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchProducts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The sort order. If no value is specified, the results are not sorted.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The sort field. If no value is specified, the results are not sorted.</p>")
    @as("SortBy")
    sortBy: option<productViewSortBy>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The search filters. If no search filters are specified, the output includes
         all products to which the caller has access.</p>")
    @as("Filters")
    filters: option<productViewFilters>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The product view aggregations.</p>") @as("ProductViewAggregations")
    productViewAggregations: option<productViewAggregations>,
    @ocaml.doc("<p>Information about the product views.</p>") @as("ProductViewSummaries")
    productViewSummaries: option<productViewSummaries>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "SearchProductsCommand"
  let make = (
    ~pageToken=?,
    ~sortOrder=?,
    ~sortBy=?,
    ~pageSize=?,
    ~filters=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      pageToken: pageToken,
      sortOrder: sortOrder,
      sortBy: sortBy,
      pageSize: pageSize,
      filters: filters,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ProvisionProduct = {
  type t
  type request = {
    @ocaml.doc("<p>An idempotency token that uniquely identifies the provisioning request.</p>")
    @as("ProvisionToken")
    provisionToken: idempotencyToken,
    @ocaml.doc("<p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
         events.</p>")
    @as("NotificationArns")
    notificationArns: option<notificationArns>,
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>An object that contains information about the provisioning preferences for a stack set.</p>"
    )
    @as("ProvisioningPreferences")
    provisioningPreferences: option<provisioningPreferences>,
    @ocaml.doc("<p>Parameters specified by the administrator that are required for provisioning the
         product.</p>")
    @as("ProvisioningParameters")
    provisioningParameters: option<provisioningParameters>,
    @ocaml.doc("<p>A user-friendly name for the provisioned product. This value must be
         unique for the AWS account and cannot be updated after the product is provisioned.</p>")
    @as("ProvisionedProductName")
    provisionedProductName: provisionedProductName,
    @ocaml.doc("<p>The name of the path. You must provide the name or ID, but not both.</p>")
    @as("PathName")
    pathName: option<portfolioDisplayName>,
    @ocaml.doc("<p>The path identifier of the product. This value is optional if the product 
         has a default path, and required if the product has more than one path.
         To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>")
    @as("PathId")
    pathId: option<id>,
    @ocaml.doc(
      "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"
    )
    @as("ProvisioningArtifactName")
    provisioningArtifactName: option<provisioningArtifactName>,
    @ocaml.doc(
      "<p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>"
    )
    @as("ProvisioningArtifactId")
    provisioningArtifactId: option<id>,
    @ocaml.doc("<p>The name of the product. You must provide the name or ID, but not both.</p>")
    @as("ProductName")
    productName: option<productViewName>,
    @ocaml.doc("<p>The product identifier. You must provide the name or ID, but not both.</p>")
    @as("ProductId")
    productId: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the result of provisioning the product.</p>")
    @as("RecordDetail")
    recordDetail: option<recordDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ProvisionProductCommand"
  let make = (
    ~provisionToken,
    ~provisionedProductName,
    ~notificationArns=?,
    ~tags=?,
    ~provisioningPreferences=?,
    ~provisioningParameters=?,
    ~pathName=?,
    ~pathId=?,
    ~provisioningArtifactName=?,
    ~provisioningArtifactId=?,
    ~productName=?,
    ~productId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      provisionToken: provisionToken,
      notificationArns: notificationArns,
      tags: tags,
      provisioningPreferences: provisioningPreferences,
      provisioningParameters: provisioningParameters,
      provisionedProductName: provisionedProductName,
      pathName: pathName,
      pathId: pathId,
      provisioningArtifactName: provisioningArtifactName,
      provisioningArtifactId: provisioningArtifactId,
      productName: productName,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProvisioningArtifactsForServiceAction = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
    )
    @as("ServiceActionId")
    serviceActionId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc(
      "<p>An array of objects with information about product views and provisioning artifacts.</p>"
    )
    @as("ProvisioningArtifactViews")
    provisioningArtifactViews: option<provisioningArtifactViews>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListProvisioningArtifactsForServiceActionCommand"
  let make = (~serviceActionId, ~acceptLanguage=?, ~pageToken=?, ~pageSize=?, ()) =>
    new({
      acceptLanguage: acceptLanguage,
      pageToken: pageToken,
      pageSize: pageSize,
      serviceActionId: serviceActionId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportAsProvisionedProduct = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The unique identifier of the resource to be imported. It only currently supports
         CloudFormation stack IDs.</p>")
    @as("PhysicalId")
    physicalId: physicalId,
    @ocaml.doc("<p>The user-friendly name of the provisioned product. The value must be unique for the AWS
         account. The name cannot be updated after the product is provisioned. </p>")
    @as("ProvisionedProductName")
    provisionedProductName: provisionedProductName,
    @ocaml.doc("<p>The identifier of the provisioning artifact.</p>") @as("ProvisioningArtifactId")
    provisioningArtifactId: id,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {@as("RecordDetail") recordDetail: option<recordDetail>}
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ImportAsProvisionedProductCommand"
  let make = (
    ~idempotencyToken,
    ~physicalId,
    ~provisionedProductName,
    ~provisioningArtifactId,
    ~productId,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      idempotencyToken: idempotencyToken,
      physicalId: physicalId,
      provisionedProductName: provisionedProductName,
      provisioningArtifactId: provisioningArtifactId,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteProvisionedProductServiceAction = {
  type t
  type request = {
    @ocaml.doc("<p>A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as <code>TARGET</code>, the provided value will 
            override the default value generated by AWS Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for 
            any special parameters such as <code>TARGET</code>.</p>")
    @as("Parameters")
    parameters: option<executionParameterMap>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc("<p>An idempotency token that uniquely identifies the execute request.</p>")
    @as("ExecuteToken")
    executeToken: idempotencyToken,
    @ocaml.doc(
      "<p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>"
    )
    @as("ServiceActionId")
    serviceActionId: id,
    @ocaml.doc("<p>The identifier of the provisioned product.</p>") @as("ProvisionedProductId")
    provisionedProductId: id,
  }
  type response = {
    @ocaml.doc(
      "<p>An object containing detailed information about the result of provisioning the product.</p>"
    )
    @as("RecordDetail")
    recordDetail: option<recordDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ExecuteProvisionedProductServiceActionCommand"
  let make = (
    ~executeToken,
    ~serviceActionId,
    ~provisionedProductId,
    ~parameters=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      parameters: parameters,
      acceptLanguage: acceptLanguage,
      executeToken: executeToken,
      serviceActionId: serviceActionId,
      provisionedProductId: provisionedProductId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteProvisionedProductPlan = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
  the same response is returned for each repeated request.</p>")
    @as("IdempotencyToken")
    idempotencyToken: idempotencyToken,
    @ocaml.doc("<p>The plan identifier.</p>") @as("PlanId") planId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the result of provisioning the product.</p>")
    @as("RecordDetail")
    recordDetail: option<recordDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ExecuteProvisionedProductPlanCommand"
  let make = (~idempotencyToken, ~planId, ~acceptLanguage=?, ()) =>
    new({idempotencyToken: idempotencyToken, planId: planId, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServiceActionExecutionParameters = {
  type t
  type request = {
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
    @ocaml.doc("<p>The self-service action identifier.</p>") @as("ServiceActionId")
    serviceActionId: id,
    @ocaml.doc("<p>The identifier of the provisioned product.</p>") @as("ProvisionedProductId")
    provisionedProductId: id,
  }
  type response = {
    @ocaml.doc("<p>The parameters of the self-service action.</p>") @as("ServiceActionParameters")
    serviceActionParameters: option<executionParameters>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeServiceActionExecutionParametersCommand"
  let make = (~serviceActionId, ~provisionedProductId, ~acceptLanguage=?, ()) =>
    new({
      acceptLanguage: acceptLanguage,
      serviceActionId: serviceActionId,
      provisionedProductId: provisionedProductId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRecord = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The record identifier of the provisioned product. This identifier is returned by the
         request operation.</p>")
    @as("Id")
    id: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the product created as the result of a request. For example, the output for  
         a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>")
    @as("RecordOutputs")
    recordOutputs: option<recordOutputs>,
    @ocaml.doc("<p>Information about the product.</p>") @as("RecordDetail")
    recordDetail: option<recordDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeRecordCommand"
  let make = (~id, ~pageSize=?, ~pageToken=?, ~acceptLanguage=?, ()) =>
    new({pageSize: pageSize, pageToken: pageToken, id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProductAsAdmin = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier of the shared portfolio that the specified product is associated
         with.</p>
         <p>You can provide this parameter to retrieve the shared TagOptions associated with the
         product. If this parameter is provided and if TagOptions sharing is enabled in the
         portfolio share, the API returns both local and shared TagOptions associated with the
         product. Otherwise only local TagOptions will be returned. </p>")
    @as("SourcePortfolioId")
    sourcePortfolioId: option<id>,
    @ocaml.doc("<p>The product name.</p>") @as("Name") name: option<productViewName>,
    @ocaml.doc("<p>The product identifier.</p>") @as("Id") id: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>Information about the associated budgets.</p>") @as("Budgets")
    budgets: option<budgets>,
    @ocaml.doc("<p>Information about the TagOptions associated with the product.</p>")
    @as("TagOptions")
    tagOptions: option<tagOptionDetails>,
    @ocaml.doc("<p>Information about the tags associated with the product.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc(
      "<p>Information about the provisioning artifacts (also known as versions) for the specified product.</p>"
    )
    @as("ProvisioningArtifactSummaries")
    provisioningArtifactSummaries: option<provisioningArtifactSummaries>,
    @ocaml.doc("<p>Information about the product view.</p>") @as("ProductViewDetail")
    productViewDetail: option<productViewDetail>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeProductAsAdminCommand"
  let make = (~sourcePortfolioId=?, ~name=?, ~id=?, ~acceptLanguage=?, ()) =>
    new({sourcePortfolioId: sourcePortfolioId, name: name, id: id, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchProvisionedProducts = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<searchProvisionedProductsPageSize>,
    @ocaml.doc("<p>The sort order. If no value is specified, the results are not sorted.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>, 
         and <code>lastRecordId</code>.</p>")
    @as("SortBy")
    sortBy: option<sortField>,
    @ocaml.doc("<p>The search filters.</p> 
         <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>, 
         <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>,
         <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>, 
         <code>provisioningArtifact</code>, <code>type</code>, <code>status</code>,
         <code>tags</code>, <code>userArn</code>, <code>userArnSession</code>, <code>lastProvisioningRecordId</code>, <code>lastSuccessfulProvisioningRecordId</code>, 
         <code>productName</code>, and <code>provisioningArtifactName</code>.</p>
         <p>Example: <code>\"SearchQuery\":[\"status:AVAILABLE\"]</code>
         </p>")
    @as("Filters")
    filters: option<provisionedProductFilters>,
    @ocaml.doc(
      "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
    )
    @as("AccessLevelFilter")
    accessLevelFilter: option<accessLevelFilter>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The number of provisioned products found.</p>") @as("TotalResultsCount")
    totalResultsCount: option<totalResultsCount>,
    @ocaml.doc("<p>Information about the provisioned products.</p>") @as("ProvisionedProducts")
    provisionedProducts: option<provisionedProductAttributes>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "SearchProvisionedProductsCommand"
  let make = (
    ~pageToken=?,
    ~pageSize=?,
    ~sortOrder=?,
    ~sortBy=?,
    ~filters=?,
    ~accessLevelFilter=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      sortOrder: sortOrder,
      sortBy: sortBy,
      filters: filters,
      accessLevelFilter: accessLevelFilter,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRecordHistory = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The search filter to scope the results.</p>") @as("SearchFilter")
    searchFilter: option<listRecordHistorySearchFilter>,
    @ocaml.doc(
      "<p>The access level to use to obtain results. The default is <code>User</code>.</p>"
    )
    @as("AccessLevelFilter")
    accessLevelFilter: option<accessLevelFilter>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>The records, in reverse chronological order.</p>") @as("RecordDetails")
    recordDetails: option<recordDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListRecordHistoryCommand"
  let make = (
    ~pageToken=?,
    ~pageSize=?,
    ~searchFilter=?,
    ~accessLevelFilter=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      searchFilter: searchFilter,
      accessLevelFilter: accessLevelFilter,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLaunchPaths = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The product identifier.</p>") @as("ProductId") productId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc("<p>Information about the launch path.</p>") @as("LaunchPathSummaries")
    launchPathSummaries: option<launchPathSummaries>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListLaunchPathsCommand"
  let make = (~productId, ~pageToken=?, ~pageSize=?, ~acceptLanguage=?, ()) =>
    new({
      pageToken: pageToken,
      pageSize: pageSize,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisioningParameters = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the path. You must provide the name or ID, but not both.</p>")
    @as("PathName")
    pathName: option<portfolioDisplayName>,
    @ocaml.doc("<p>The path identifier of the product. This value is optional if the product 
         has a default path, and required if the product has more than one path.
         To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>")
    @as("PathId")
    pathId: option<id>,
    @ocaml.doc(
      "<p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>"
    )
    @as("ProvisioningArtifactName")
    provisioningArtifactName: option<provisioningArtifactName>,
    @ocaml.doc(
      "<p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>"
    )
    @as("ProvisioningArtifactId")
    provisioningArtifactId: option<id>,
    @ocaml.doc("<p>The name of the product. You must provide the name or ID, but not both.</p>")
    @as("ProductName")
    productName: option<productViewName>,
    @ocaml.doc(
      "<p>The product identifier. You must provide the product name or ID, but not both.</p>"
    )
    @as("ProductId")
    productId: option<id>,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc("<p>The output of the provisioning artifact.</p>") @as("ProvisioningArtifactOutputs")
    provisioningArtifactOutputs: option<provisioningArtifactOutputs>,
    @ocaml.doc(
      "<p>An object that contains information about preferences, such as regions and accounts, for the provisioning artifact.</p>"
    )
    @as("ProvisioningArtifactPreferences")
    provisioningArtifactPreferences: option<provisioningArtifactPreferences>,
    @ocaml.doc("<p>Information about the TagOptions associated with the resource.</p>")
    @as("TagOptions")
    tagOptions: option<tagOptionSummaries>,
    @ocaml.doc("<p>Any additional metadata specifically related to the provisioning of the product. For
         example, see the <code>Version</code> field of the CloudFormation template.</p>")
    @as("UsageInstructions")
    usageInstructions: option<usageInstructions>,
    @ocaml.doc("<p>Information about the constraints used to provision the product.</p>")
    @as("ConstraintSummaries")
    constraintSummaries: option<constraintSummaries>,
    @ocaml.doc("<p>Information about the parameters used to provision the product.</p>")
    @as("ProvisioningArtifactParameters")
    provisioningArtifactParameters: option<provisioningArtifactParameters>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeProvisioningParametersCommand"
  let make = (
    ~pathName=?,
    ~pathId=?,
    ~provisioningArtifactName=?,
    ~provisioningArtifactId=?,
    ~productName=?,
    ~productId=?,
    ~acceptLanguage=?,
    (),
  ) =>
    new({
      pathName: pathName,
      pathId: pathId,
      provisioningArtifactName: provisioningArtifactName,
      provisioningArtifactId: provisioningArtifactId,
      productName: productName,
      productId: productId,
      acceptLanguage: acceptLanguage,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePortfolioShareStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>"
    )
    @as("PortfolioShareToken")
    portfolioShareToken: id,
  }
  type response = {
    @ocaml.doc("<p>Information about the portfolio share operation.</p>") @as("ShareDetails")
    shareDetails: option<shareDetails>,
    @ocaml.doc("<p>Status of the portfolio share operation.</p>") @as("Status")
    status: option<shareStatus>,
    @ocaml.doc(
      "<p>Organization node identifier. It can be either account id, organizational unit id or organization id.</p>"
    )
    @as("OrganizationNodeValue")
    organizationNodeValue: option<organizationNodeValue>,
    @ocaml.doc("<p>The portfolio identifier.</p>") @as("PortfolioId") portfolioId: option<id>,
    @ocaml.doc(
      "<p>The token for the portfolio share operation. For example, <code>share-6v24abcdefghi</code>.</p>"
    )
    @as("PortfolioShareToken")
    portfolioShareToken: option<id>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribePortfolioShareStatusCommand"
  let make = (~portfolioShareToken, ()) => new({portfolioShareToken: portfolioShareToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProvisionedProductPlan = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The page token for the next set of results. To retrieve the first set of results, use null.</p>"
    )
    @as("PageToken")
    pageToken: option<pageToken>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("PageSize")
    pageSize: option<pageSize>,
    @ocaml.doc("<p>The plan identifier.</p>") @as("PlanId") planId: id,
    @ocaml.doc("<p>The language code.</p>
         <ul>
            <li>
               <p>
                  <code>en</code> - English (default)</p>
            </li>
            <li>
               <p>
                  <code>jp</code> - Japanese</p>
            </li>
            <li>
               <p>
                  <code>zh</code> - Chinese</p>
            </li>
         </ul>")
    @as("AcceptLanguage")
    acceptLanguage: option<acceptLanguage>,
  }
  type response = {
    @ocaml.doc(
      "<p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>"
    )
    @as("NextPageToken")
    nextPageToken: option<pageToken>,
    @ocaml.doc(
      "<p>Information about the resource changes that will occur when the plan is executed.</p>"
    )
    @as("ResourceChanges")
    resourceChanges: option<resourceChanges>,
    @ocaml.doc("<p>Information about the plan.</p>") @as("ProvisionedProductPlanDetails")
    provisionedProductPlanDetails: option<provisionedProductPlanDetails>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DescribeProvisionedProductPlanCommand"
  let make = (~planId, ~pageToken=?, ~pageSize=?, ~acceptLanguage=?, ()) =>
    new({pageToken: pageToken, pageSize: pageSize, planId: planId, acceptLanguage: acceptLanguage})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
