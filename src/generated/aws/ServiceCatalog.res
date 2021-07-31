type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type verbose = bool
type userArnSession = string
type userArn = string
type usePreviousValue = bool
type updatedTime = Js.Date.t;
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
type stackInstanceStatus = [@as("INOPERABLE") #INOPERABLE | @as("OUTDATED") #OUTDATED | @as("CURRENT") #CURRENT]
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortField = string
type shareStatus = [@as("ERROR") #ERROR | @as("COMPLETED_WITH_ERRORS") #COMPLETEDWITHERRORS | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #INPROGRESS | @as("NOT_STARTED") #NOTSTARTED]
type serviceActionName = string
type serviceActionDescription = string
type serviceActionDefinitionValue = string
type serviceActionDefinitionType = [@as("SSM_AUTOMATION") #SSMAUTOMATION]
type serviceActionDefinitionKey = [@as("Parameters") #Parameters | @as("AssumeRole") #AssumeRole | @as("Version") #Version | @as("Name") #Name]
type serviceActionAssociationErrorMessage = string
type serviceActionAssociationErrorCode = [@as("THROTTLING") #THROTTLING | @as("RESOURCE_NOT_FOUND") #RESOURCENOTFOUND | @as("LIMIT_EXCEEDED") #LIMITEXCEEDED | @as("INTERNAL_FAILURE") #INTERNALFAILURE | @as("DUPLICATE_RESOURCE") #DUPLICATERESOURCE]
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
type resourceDetailCreatedTime = Js.Date.t;
type resourceDetailARN = string
type resourceAttribute = [@as("TAGS") #TAGS | @as("DELETIONPOLICY") #DELETIONPOLICY | @as("UPDATEPOLICY") #UPDATEPOLICY | @as("CREATIONPOLICY") #CREATIONPOLICY | @as("METADATA") #METADATA | @as("PROPERTIES") #PROPERTIES]
type resourceARN = string
type requiresRecreation = [@as("ALWAYS") #ALWAYS | @as("CONDITIONALLY") #CONDITIONALLY | @as("NEVER") #NEVER]
type replacement = [@as("CONDITIONAL") #CONDITIONAL | @as("FALSE") #FALSE | @as("TRUE") #TRUE]
type region = string
type recordType = string
type recordTagValue = string
type recordTagKey = string
type recordStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS_IN_ERROR") #INPROGRESSINERROR | @as("IN_PROGRESS") #INPROGRESS | @as("CREATED") #CREATED]
type provisioningArtifactType = [@as("MARKETPLACE_CAR") #MARKETPLACECAR | @as("MARKETPLACE_AMI") #MARKETPLACEAMI | @as("CLOUD_FORMATION_TEMPLATE") #CLOUDFORMATIONTEMPLATE]
type provisioningArtifactPropertyValue = string
type provisioningArtifactPropertyName = [@as("Id") #Id]
type provisioningArtifactOutputKey = string
type provisioningArtifactName = string
type provisioningArtifactInfoValue = string
type provisioningArtifactInfoKey = string
type provisioningArtifactGuidance = [@as("DEPRECATED") #DEPRECATED | @as("DEFAULT") #DEFAULT]
type provisioningArtifactDescription = string
type provisioningArtifactCreatedTime = Js.Date.t;
type provisioningArtifactActive = bool
type provisionedProductViewFilterValue = string
type provisionedProductViewFilterBy = [@as("SearchQuery") #SearchQuery]
type provisionedProductType = string
type provisionedProductStatusMessage = string
type provisionedProductStatus = [@as("PLAN_IN_PROGRESS") #PLANINPROGRESS | @as("ERROR") #ERROR | @as("TAINTED") #TAINTED | @as("UNDER_CHANGE") #UNDERCHANGE | @as("AVAILABLE") #AVAILABLE]
type provisionedProductPlanType = [@as("CLOUDFORMATION") #CLOUDFORMATION]
type provisionedProductPlanStatus = [@as("EXECUTE_FAILED") #EXECUTEFAILED | @as("EXECUTE_SUCCESS") #EXECUTESUCCESS | @as("EXECUTE_IN_PROGRESS") #EXECUTEINPROGRESS | @as("CREATE_FAILED") #CREATEFAILED | @as("CREATE_SUCCESS") #CREATESUCCESS | @as("CREATE_IN_PROGRESS") #CREATEINPROGRESS]
type provisionedProductPlanName = string
type provisionedProductNameOrArn = string
type provisionedProductName = string
type provisionedProductId = string
type providerName = string
type propertyValue = string
type propertyName = string
type propertyKey = [@as("LAUNCH_ROLE") #LAUNCHROLE | @as("OWNER") #OWNER]
type productViewSortBy = [@as("CreationDate") #CreationDate | @as("VersionCount") #VersionCount | @as("Title") #Title]
type productViewShortDescription = string
type productViewOwner = string
type productViewName = string
type productViewFilterValue = string
type productViewFilterBy = [@as("SourceProductId") #SourceProductId | @as("ProductType") #ProductType | @as("Owner") #Owner | @as("FullTextSearch") #FullTextSearch]
type productViewDistributor = string
type productViewAggregationType = string
type productType = [@as("MARKETPLACE") #MARKETPLACE | @as("CLOUD_FORMATION_TEMPLATE") #CLOUDFORMATIONTEMPLATE]
type productSource = [@as("ACCOUNT") #ACCOUNT]
type productArn = string
type principalType = [@as("IAM") #IAM]
type principalARN = string
type portfolioShareType = [@as("AWS_ORGANIZATIONS") #AWSORGANIZATIONS | @as("AWS_SERVICECATALOG") #AWSSERVICECATALOG | @as("IMPORTED") #IMPORTED]
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
type organizationNodeType = [@as("ACCOUNT") #ACCOUNT | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONALUNIT | @as("ORGANIZATION") #ORGANIZATION]
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
type describePortfolioShareType = [@as("ORGANIZATION_MEMBER_ACCOUNT") #ORGANIZATIONMEMBERACCOUNT | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONALUNIT | @as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type defaultValue = string
type creationTime = Js.Date.t;
type createdTime = Js.Date.t;
type copyProductStatus = [@as("FAILED") #FAILED | @as("IN_PROGRESS") #INPROGRESS | @as("SUCCEEDED") #SUCCEEDED]
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
type accessStatus = [@as("DISABLED") #DISABLED | @as("UNDER_CHANGE") #UNDERCHANGE | @as("ENABLED") #ENABLED]
type accessLevelFilterValue = string
type accessLevelFilterKey = [@as("User") #User | @as("Role") #Role | @as("Account") #Account]
type acceptLanguage = string
type usageInstruction = {
@as("Value") value: option<instructionValue>,
@as("Type") type_: option<instructionType>
}
type updateProvisioningParameter = {
@as("UsePreviousValue") usePreviousValue: option<usePreviousValue>,
@as("Value") value: option<parameterValue>,
@as("Key") key: option<parameterKey>
}
type tagOptionValues = array<tagOptionValue>
type tagOptionDetail = {
@as("Owner") owner: option<owner>,
@as("Id") id: option<tagOptionId>,
@as("Active") active: option<tagOptionActive>,
@as("Value") value: option<tagOptionValue>,
@as("Key") key: option<tagOptionKey>
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type successfulShares = array<accountId>
type stackSetRegions = array<region>
type stackSetAccounts = array<accountId>
type stackInstance = {
@as("StackInstanceStatus") stackInstanceStatus: option<stackInstanceStatus>,
@as("Region") region: option<region>,
@as("Account") account: option<accountId>
}
type sourceProvisioningArtifactPropertiesMap = Js.Dict.t< provisioningArtifactPropertyValue>
type serviceActionSummary = {
@as("DefinitionType") definitionType: option<serviceActionDefinitionType>,
@as("Description") description: option<serviceActionDescription>,
@as("Name") name: option<serviceActionName>,
@as("Id") id: option<id>
}
type serviceActionDefinitionMap = Js.Dict.t< serviceActionDefinitionValue>
type serviceActionAssociation = {
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id,
@as("ServiceActionId") serviceActionId: id
}
type scope = array<resourceAttribute>
type resourceTargetDefinition = {
@as("RequiresRecreation") requiresRecreation: option<requiresRecreation>,
@as("Name") name: option<propertyName>,
@as("Attribute") attribute: option<resourceAttribute>
}
type resourceDetail = {
@as("CreatedTime") createdTime: option<resourceDetailCreatedTime>,
@as("Description") description: option<resourceDetailDescription>,
@as("Name") name: option<resourceDetailName>,
@as("ARN") arn: option<resourceDetailARN>,
@as("Id") id: option<resourceDetailId>
}
type recordTag = {
@as("Value") value: option<recordTagValue>,
@as("Key") key: option<recordTagKey>
}
type recordOutput = {
@as("Description") description: option<description>,
@as("OutputValue") outputValue: option<outputValue>,
@as("OutputKey") outputKey: option<outputKey>
}
type recordError = {
@as("Description") description: option<errorDescription>,
@as("Code") code: option<errorCode>
}
type provisioningParameter = {
@as("Value") value: option<parameterValue>,
@as("Key") key: option<parameterKey>
}
type provisioningArtifactOutput = {
@as("Description") description: option<outputDescription>,
@as("Key") key: option<provisioningArtifactOutputKey>
}
type provisioningArtifactInfo = Js.Dict.t< provisioningArtifactInfoValue>
type provisioningArtifactDetail = {
@as("Guidance") guidance: option<provisioningArtifactGuidance>,
@as("Active") active: option<provisioningArtifactActive>,
@as("CreatedTime") createdTime: option<creationTime>,
@as("Type") type_: option<provisioningArtifactType>,
@as("Description") description: option<provisioningArtifactName>,
@as("Name") name: option<provisioningArtifactName>,
@as("Id") id: option<id>
}
type provisioningArtifact = {
@as("Guidance") guidance: option<provisioningArtifactGuidance>,
@as("CreatedTime") createdTime: option<provisioningArtifactCreatedTime>,
@as("Description") description: option<provisioningArtifactDescription>,
@as("Name") name: option<provisioningArtifactName>,
@as("Id") id: option<id>
}
type provisionedProductViewFilterValues = array<provisionedProductViewFilterValue>
type provisionedProductProperties = Js.Dict.t< propertyValue>
type provisionedProductPlanSummary = {
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("PlanType") planType: option<provisionedProductPlanType>,
@as("ProvisionProductName") provisionProductName: option<provisionedProductName>,
@as("ProvisionProductId") provisionProductId: option<id>,
@as("PlanId") planId: option<id>,
@as("PlanName") planName: option<provisionedProductPlanName>
}
type provisionedProductDetail = {
@as("LaunchRoleArn") launchRoleArn: option<roleArn>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>,
@as("LastSuccessfulProvisioningRecordId") lastSuccessfulProvisioningRecordId: option<id>,
@as("LastProvisioningRecordId") lastProvisioningRecordId: option<id>,
@as("LastRecordId") lastRecordId: option<lastRequestId>,
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("CreatedTime") createdTime: option<createdTime>,
@as("StatusMessage") statusMessage: option<provisionedProductStatusMessage>,
@as("Status") status: option<provisionedProductStatus>,
@as("Id") id: option<provisionedProductId>,
@as("Type") type_: option<provisionedProductType>,
@as("Arn") arn: option<provisionedProductNameOrArn>,
@as("Name") name: option<provisionedProductNameOrArn>
}
type productViewSummary = {
@as("SupportUrl") supportUrl: option<supportUrl>,
@as("SupportDescription") supportDescription: option<supportDescription>,
@as("SupportEmail") supportEmail: option<supportEmail>,
@as("HasDefaultPath") hasDefaultPath: option<hasDefaultPath>,
@as("Distributor") distributor: option<productViewDistributor>,
@as("Type") type_: option<productType>,
@as("ShortDescription") shortDescription: option<productViewShortDescription>,
@as("Owner") owner: option<productViewOwner>,
@as("Name") name: option<productViewName>,
@as("ProductId") productId: option<id>,
@as("Id") id: option<id>
}
type productViewFilterValues = array<productViewFilterValue>
type productViewAggregationValue = {
@as("ApproximateCount") approximateCount: option<approximateCount>,
@as("Value") value: option<attributeValue>
}
type principal = {
@as("PrincipalType") principalType: option<principalType>,
@as("PrincipalARN") principalARN: option<principalARN>
}
type portfolioShareDetail = {
@as("ShareTagOptions") shareTagOptions: option<boolean_>,
@as("Accepted") accepted: option<boolean_>,
@as("Type") type_: option<describePortfolioShareType>,
@as("PrincipalId") principalId: option<id>
}
type portfolioDetail = {
@as("ProviderName") providerName: option<providerName>,
@as("CreatedTime") createdTime: option<creationTime>,
@as("Description") description: option<portfolioDescription>,
@as("DisplayName") displayName: option<portfolioDisplayName>,
@as("ARN") arn: option<resourceARN>,
@as("Id") id: option<id>
}
type outputKeys = array<outputKey>
type organizationNode = {
@as("Value") value: option<organizationNodeValue>,
@as("Type") type_: option<organizationNodeType>
}
type notificationArns = array<notificationArn>
type namespaces = array<accountId>
type listTagOptionsFilters = {
@as("Active") active: option<tagOptionActive>,
@as("Value") value: option<tagOptionValue>,
@as("Key") key: option<tagOptionKey>
}
type listRecordHistorySearchFilter = {
@as("Value") value: option<searchFilterValue>,
@as("Key") key: option<searchFilterKey>
}
type launchPath = {
@as("Name") name: option<portfolioName>,
@as("Id") id: option<id>
}
type failedServiceActionAssociation = {
@as("ErrorMessage") errorMessage: option<serviceActionAssociationErrorMessage>,
@as("ErrorCode") errorCode: option<serviceActionAssociationErrorCode>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>,
@as("ServiceActionId") serviceActionId: option<id>
}
type executionParameterValueList = array<executionParameterValue>
type copyOptions = array<copyOption>
type constraintSummary = {
@as("Description") description: option<constraintDescription>,
@as("Type") type_: option<constraintType>
}
type constraintDetail = {
@as("PortfolioId") portfolioId: option<id>,
@as("ProductId") productId: option<id>,
@as("Owner") owner: option<accountId>,
@as("Description") description: option<constraintDescription>,
@as("Type") type_: option<constraintType>,
@as("ConstraintId") constraintId: option<id>
}
type cloudWatchDashboard = {
@as("Name") name: option<cloudWatchDashboardName>
}
type budgetDetail = {
@as("BudgetName") budgetName: option<budgetName>
}
type allowedValues = array<string_>
type accountIds = array<accountId>
type accessLevelFilter = {
@as("Value") value: option<accessLevelFilterValue>,
@as("Key") key: option<accessLevelFilterKey>
}
type usageInstructions = array<usageInstruction>
type updateProvisioningPreferences = {
@as("StackSetOperationType") stackSetOperationType: option<stackSetOperationType>,
@as("StackSetMaxConcurrencyPercentage") stackSetMaxConcurrencyPercentage: option<stackSetMaxConcurrencyPercentage>,
@as("StackSetMaxConcurrencyCount") stackSetMaxConcurrencyCount: option<stackSetMaxConcurrencyCount>,
@as("StackSetFailureTolerancePercentage") stackSetFailureTolerancePercentage: option<stackSetFailureTolerancePercentage>,
@as("StackSetFailureToleranceCount") stackSetFailureToleranceCount: option<stackSetFailureToleranceCount>,
@as("StackSetRegions") stackSetRegions: option<stackSetRegions>,
@as("StackSetAccounts") stackSetAccounts: option<stackSetAccounts>
}
type updateProvisioningParameters = array<updateProvisioningParameter>
type tags = array<tag>
type tagOptionSummary = {
@as("Values") values: option<tagOptionValues>,
@as("Key") key: option<tagOptionKey>
}
type tagOptionDetails = array<tagOptionDetail>
type stackInstances = array<stackInstance>
type sourceProvisioningArtifactProperties = array<sourceProvisioningArtifactPropertiesMap>
type shareError = {
@as("Error") error: option<error>,
@as("Message") message: option<message>,
@as("Accounts") accounts: option<namespaces>
}
type serviceActionSummaries = array<serviceActionSummary>
type serviceActionDetail = {
@as("Definition") definition: option<serviceActionDefinitionMap>,
@as("ServiceActionSummary") serviceActionSummary: option<serviceActionSummary>
}
type serviceActionAssociations = array<serviceActionAssociation>
type resourceDetails = array<resourceDetail>
type resourceChangeDetail = {
@as("CausingEntity") causingEntity: option<causingEntity>,
@as("Evaluation") evaluation: option<evaluationType>,
@as("Target") target: option<resourceTargetDefinition>
}
type recordTags = array<recordTag>
type recordOutputs = array<recordOutput>
type recordErrors = array<recordError>
type provisioningPreferences = {
@as("StackSetMaxConcurrencyPercentage") stackSetMaxConcurrencyPercentage: option<stackSetMaxConcurrencyPercentage>,
@as("StackSetMaxConcurrencyCount") stackSetMaxConcurrencyCount: option<stackSetMaxConcurrencyCount>,
@as("StackSetFailureTolerancePercentage") stackSetFailureTolerancePercentage: option<stackSetFailureTolerancePercentage>,
@as("StackSetFailureToleranceCount") stackSetFailureToleranceCount: option<stackSetFailureToleranceCount>,
@as("StackSetRegions") stackSetRegions: option<stackSetRegions>,
@as("StackSetAccounts") stackSetAccounts: option<stackSetAccounts>
}
type provisioningParameters = array<provisioningParameter>
type provisioningArtifacts = array<provisioningArtifact>
type provisioningArtifactView = {
@as("ProvisioningArtifact") provisioningArtifact: option<provisioningArtifact>,
@as("ProductViewSummary") productViewSummary: option<productViewSummary>
}
type provisioningArtifactSummary = {
@as("ProvisioningArtifactMetadata") provisioningArtifactMetadata: option<provisioningArtifactInfo>,
@as("CreatedTime") createdTime: option<provisioningArtifactCreatedTime>,
@as("Description") description: option<provisioningArtifactDescription>,
@as("Name") name: option<provisioningArtifactName>,
@as("Id") id: option<id>
}
type provisioningArtifactProperties = {
@as("DisableTemplateValidation") disableTemplateValidation: option<disableTemplateValidation>,
@as("Type") type_: option<provisioningArtifactType>,
@as("Info") info: provisioningArtifactInfo,
@as("Description") description: option<provisioningArtifactDescription>,
@as("Name") name: option<provisioningArtifactName>
}
type provisioningArtifactPreferences = {
@as("StackSetRegions") stackSetRegions: option<stackSetRegions>,
@as("StackSetAccounts") stackSetAccounts: option<stackSetAccounts>
}
type provisioningArtifactOutputs = array<provisioningArtifactOutput>
type provisioningArtifactDetails = array<provisioningArtifactDetail>
type provisionedProductPlans = array<provisionedProductPlanSummary>
type provisionedProductFilters = Js.Dict.t< provisionedProductViewFilterValues>
type provisionedProductDetails = array<provisionedProductDetail>
type productViewSummaries = array<productViewSummary>
type productViewFilters = Js.Dict.t< productViewFilterValues>
type productViewDetail = {
@as("CreatedTime") createdTime: option<createdTime>,
@as("ProductARN") productARN: option<resourceARN>,
@as("Status") status: option<status>,
@as("ProductViewSummary") productViewSummary: option<productViewSummary>
}
type productViewAggregationValues = array<productViewAggregationValue>
type principals = array<principal>
type portfolioShareDetails = array<portfolioShareDetail>
type portfolioDetails = array<portfolioDetail>
type parameterConstraints = {
@as("MinValue") minValue: option<string_>,
@as("MaxValue") maxValue: option<string_>,
@as("MinLength") minLength: option<string_>,
@as("MaxLength") maxLength: option<string_>,
@as("ConstraintDescription") constraintDescription: option<string_>,
@as("AllowedPattern") allowedPattern: option<string_>,
@as("AllowedValues") allowedValues: option<allowedValues>
}
type organizationNodes = array<organizationNode>
type launchPaths = array<launchPath>
type failedServiceActionAssociations = array<failedServiceActionAssociation>
type executionParameterMap = Js.Dict.t< executionParameterValueList>
type executionParameter = {
@as("DefaultValues") defaultValues: option<executionParameterValueList>,
@as("Type") type_: option<executionParameterType>,
@as("Name") name: option<executionParameterKey>
}
type constraintSummaries = array<constraintSummary>
type constraintDetails = array<constraintDetail>
type cloudWatchDashboards = array<cloudWatchDashboard>
type budgets = array<budgetDetail>
type addTags = array<tag>
type tagOptionSummaries = array<tagOptionSummary>
type shareErrors = array<shareError>
type resourceChangeDetails = array<resourceChangeDetail>
type recordDetail = {
@as("LaunchRoleArn") launchRoleArn: option<roleArn>,
@as("RecordTags") recordTags: option<recordTags>,
@as("RecordErrors") recordErrors: option<recordErrors>,
@as("PathId") pathId: option<id>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>,
@as("ProvisionedProductId") provisionedProductId: option<id>,
@as("RecordType") recordType: option<recordType>,
@as("ProvisionedProductType") provisionedProductType: option<provisionedProductType>,
@as("UpdatedTime") updatedTime: option<updatedTime>,
@as("CreatedTime") createdTime: option<createdTime>,
@as("Status") status: option<recordStatus>,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductName>,
@as("RecordId") recordId: option<id>
}
type provisioningArtifactViews = array<provisioningArtifactView>
type provisioningArtifactSummaries = array<provisioningArtifactSummary>
type provisioningArtifactParameter = {
@as("ParameterConstraints") parameterConstraints: option<parameterConstraints>,
@as("Description") description: option<description>,
@as("IsNoEcho") isNoEcho: option<noEcho>,
@as("ParameterType") parameterType: option<parameterType>,
@as("DefaultValue") defaultValue: option<defaultValue>,
@as("ParameterKey") parameterKey: option<parameterKey>
}
type provisionedProductPlanDetails = {
@as("StatusMessage") statusMessage: option<statusMessage>,
@as("Tags") tags: option<tags>,
@as("ProvisioningParameters") provisioningParameters: option<updateProvisioningParameters>,
@as("NotificationArns") notificationArns: option<notificationArns>,
@as("UpdatedTime") updatedTime: option<updatedTime>,
@as("Status") status: option<provisionedProductPlanStatus>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("PlanType") planType: option<provisionedProductPlanType>,
@as("ProvisionProductName") provisionProductName: option<provisionedProductName>,
@as("ProvisionProductId") provisionProductId: option<id>,
@as("PlanId") planId: option<id>,
@as("PlanName") planName: option<provisionedProductPlanName>,
@as("ProductId") productId: option<id>,
@as("PathId") pathId: option<id>,
@as("CreatedTime") createdTime: option<createdTime>
}
type provisionedProductAttribute = {
@as("UserArnSession") userArnSession: option<userArnSession>,
@as("UserArn") userArn: option<userArn>,
@as("ProvisioningArtifactName") provisioningArtifactName: option<provisioningArtifactName>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductName") productName: option<productViewName>,
@as("ProductId") productId: option<id>,
@as("PhysicalId") physicalId: option<physicalId>,
@as("Tags") tags: option<tags>,
@as("LastSuccessfulProvisioningRecordId") lastSuccessfulProvisioningRecordId: option<id>,
@as("LastProvisioningRecordId") lastProvisioningRecordId: option<id>,
@as("LastRecordId") lastRecordId: option<id>,
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("CreatedTime") createdTime: option<createdTime>,
@as("StatusMessage") statusMessage: option<provisionedProductStatusMessage>,
@as("Status") status: option<provisionedProductStatus>,
@as("Id") id: option<id>,
@as("Type") type_: option<provisionedProductType>,
@as("Arn") arn: option<provisionedProductNameOrArn>,
@as("Name") name: option<provisionedProductNameOrArn>
}
type productViewDetails = array<productViewDetail>
type productViewAggregations = Js.Dict.t< productViewAggregationValues>
type launchPathSummary = {
@as("Name") name: option<portfolioName>,
@as("Tags") tags: option<tags>,
@as("ConstraintSummaries") constraintSummaries: option<constraintSummaries>,
@as("Id") id: option<id>
}
type executionParameters = array<executionParameter>
type shareDetails = {
@as("ShareErrors") shareErrors: option<shareErrors>,
@as("SuccessfulShares") successfulShares: option<successfulShares>
}
type resourceChange = {
@as("Details") details: option<resourceChangeDetails>,
@as("Scope") scope: option<scope>,
@as("Replacement") replacement: option<replacement>,
@as("ResourceType") resourceType: option<planResourceType>,
@as("PhysicalResourceId") physicalResourceId: option<physicalResourceId>,
@as("LogicalResourceId") logicalResourceId: option<logicalResourceId>,
@as("Action") action: option<changeAction>
}
type recordDetails = array<recordDetail>
type provisioningArtifactParameters = array<provisioningArtifactParameter>
type provisionedProductAttributes = array<provisionedProductAttribute>
type launchPathSummaries = array<launchPathSummary>
type resourceChanges = array<resourceChange>
type awsServiceClient;
@module("@aws-sdk/client-servicecatalog") @new external createClient: unit => awsServiceClient = "ServiceCatalogClient";
module RejectPortfolioShare = {
  type t;
  type request = {
@as("PortfolioShareType") portfolioShareType: option<portfolioShareType>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "RejectPortfolioShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAWSOrganizationsAccessStatus = {
  type t;
  type request = unit
  type response = {
@as("AccessStatus") accessStatus: option<accessStatus>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "GetAWSOrganizationsAccessStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableAWSOrganizationsAccess = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "EnableAWSOrganizationsAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateTagOptionFromResource = {
  type t;
  type request = {
@as("TagOptionId") tagOptionId: tagOptionId,
@as("ResourceId") resourceId: resourceId
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateTagOptionFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateServiceActionFromProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("ServiceActionId") serviceActionId: id,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateServiceActionFromProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateProductFromPortfolio = {
  type t;
  type request = {
@as("PortfolioId") portfolioId: id,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateProductFromPortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociatePrincipalFromPortfolio = {
  type t;
  type request = {
@as("PrincipalARN") principalARN: principalARN,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociatePrincipalFromPortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateBudgetFromResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: id,
@as("BudgetName") budgetName: budgetName
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateBudgetFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableAWSOrganizationsAccess = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisableAWSOrganizationsAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCopyProductStatus = {
  type t;
  type request = {
@as("CopyProductToken") copyProductToken: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("StatusDetail") statusDetail: option<statusDetail>,
@as("TargetProductId") targetProductId: option<id>,
@as("CopyProductStatus") copyProductStatus: option<copyProductStatus>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeCopyProductStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTagOption = {
  type t;
  type request = {
@as("Id") id: tagOptionId
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteTagOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("Id") id: id
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteServiceActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProvisioningArtifact = {
  type t;
  type request = {
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProvisionedProductPlan = {
  type t;
  type request = {
@as("IgnoreErrors") ignoreErrors: option<ignoreErrors>,
@as("PlanId") planId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteProvisionedProductPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProduct = {
  type t;
  type request = {
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePortfolio = {
  type t;
  type request = {
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeletePortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConstraint = {
  type t;
  type request = {
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteConstraintCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateTagOptionWithResource = {
  type t;
  type request = {
@as("TagOptionId") tagOptionId: tagOptionId,
@as("ResourceId") resourceId: resourceId
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateTagOptionWithResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateServiceActionWithProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("ServiceActionId") serviceActionId: id,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateServiceActionWithProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateProductWithPortfolio = {
  type t;
  type request = {
@as("SourcePortfolioId") sourcePortfolioId: option<id>,
@as("PortfolioId") portfolioId: id,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateProductWithPortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociatePrincipalWithPortfolio = {
  type t;
  type request = {
@as("PrincipalType") principalType: principalType,
@as("PrincipalARN") principalARN: principalARN,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociatePrincipalWithPortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateBudgetWithResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: id,
@as("BudgetName") budgetName: budgetName
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateBudgetWithResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptPortfolioShare = {
  type t;
  type request = {
@as("PortfolioShareType") portfolioShareType: option<portfolioShareType>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AcceptPortfolioShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTagOption = {
  type t;
  type request = {
@as("Active") active: option<tagOptionActive>,
@as("Value") value: option<tagOptionValue>,
@as("Id") id: tagOptionId
}
  type response = {
@as("TagOptionDetail") tagOptionDetail: option<tagOptionDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateTagOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProvisioningArtifact = {
  type t;
  type request = {
@as("Guidance") guidance: option<provisioningArtifactGuidance>,
@as("Active") active: option<provisioningArtifactActive>,
@as("Description") description: option<provisioningArtifactDescription>,
@as("Name") name: option<provisioningArtifactName>,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<status>,
@as("Info") info: option<provisioningArtifactInfo>,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: option<provisioningArtifactDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProvisionedProductProperties = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("ProvisionedProductProperties") provisionedProductProperties: provisionedProductProperties,
@as("ProvisionedProductId") provisionedProductId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<recordStatus>,
@as("RecordId") recordId: option<id>,
@as("ProvisionedProductProperties") provisionedProductProperties: option<provisionedProductProperties>,
@as("ProvisionedProductId") provisionedProductId: option<id>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProvisionedProductPropertiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePortfolioShare = {
  type t;
  type request = {
@as("ShareTagOptions") shareTagOptions: option<nullableBoolean>,
@as("OrganizationNode") organizationNode: option<organizationNode>,
@as("AccountId") accountId: option<accountId>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<shareStatus>,
@as("PortfolioShareToken") portfolioShareToken: option<id>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdatePortfolioShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConstraint = {
  type t;
  type request = {
@as("Parameters") parameters: option<constraintParameters>,
@as("Description") description: option<constraintDescription>,
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<status>,
@as("ConstraintParameters") constraintParameters: option<constraintParameters>,
@as("ConstraintDetail") constraintDetail: option<constraintDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateConstraintCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPortfolioAccess = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSizeMax100>,
@as("PageToken") pageToken: option<pageToken>,
@as("OrganizationParentId") organizationParentId: option<id>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("AccountIds") accountIds: option<accountIds>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPortfolioAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTagOption = {
  type t;
  type request = {
@as("Id") id: tagOptionId
}
  type response = {
@as("TagOptionDetail") tagOptionDetail: option<tagOptionDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeTagOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisioningArtifact = {
  type t;
  type request = {
@as("Verbose") verbose: option<verbose>,
@as("ProductName") productName: option<productViewName>,
@as("ProvisioningArtifactName") provisioningArtifactName: option<provisioningArtifactName>,
@as("ProductId") productId: option<id>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<status>,
@as("Info") info: option<provisioningArtifactInfo>,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: option<provisioningArtifactDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConstraint = {
  type t;
  type request = {
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<status>,
@as("ConstraintParameters") constraintParameters: option<constraintParameters>,
@as("ConstraintDetail") constraintDetail: option<constraintDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeConstraintCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePortfolioShare = {
  type t;
  type request = {
@as("OrganizationNode") organizationNode: option<organizationNode>,
@as("AccountId") accountId: option<accountId>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("PortfolioShareToken") portfolioShareToken: option<id>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeletePortfolioShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTagOption = {
  type t;
  type request = {
@as("Value") value: tagOptionValue,
@as("Key") key: tagOptionKey
}
  type response = {
@as("TagOptionDetail") tagOptionDetail: option<tagOptionDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateTagOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePortfolioShare = {
  type t;
  type request = {
@as("ShareTagOptions") shareTagOptions: option<boolean_>,
@as("OrganizationNode") organizationNode: option<organizationNode>,
@as("AccountId") accountId: option<accountId>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("PortfolioShareToken") portfolioShareToken: option<id>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreatePortfolioShareCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConstraint = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("Description") description: option<constraintDescription>,
@as("Type") type_: constraintType,
@as("Parameters") parameters: constraintParameters,
@as("ProductId") productId: id,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<status>,
@as("ConstraintParameters") constraintParameters: option<constraintParameters>,
@as("ConstraintDetail") constraintDetail: option<constraintDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateConstraintCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("Description") description: option<serviceActionDescription>,
@as("Definition") definition: option<serviceActionDefinitionMap>,
@as("Name") name: option<serviceActionName>,
@as("Id") id: id
}
  type response = {
@as("ServiceActionDetail") serviceActionDetail: option<serviceActionDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateServiceActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProduct = {
  type t;
  type request = {
@as("RemoveTags") removeTags: option<tagKeys>,
@as("AddTags") addTags: option<addTags>,
@as("SupportUrl") supportUrl: option<supportUrl>,
@as("SupportEmail") supportEmail: option<supportEmail>,
@as("SupportDescription") supportDescription: option<supportDescription>,
@as("Distributor") distributor: option<productViewOwner>,
@as("Description") description: option<productViewShortDescription>,
@as("Owner") owner: option<productViewOwner>,
@as("Name") name: option<productViewName>,
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("ProductViewDetail") productViewDetail: option<productViewDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePortfolio = {
  type t;
  type request = {
@as("RemoveTags") removeTags: option<tagKeys>,
@as("AddTags") addTags: option<addTags>,
@as("ProviderName") providerName: option<providerName>,
@as("Description") description: option<portfolioDescription>,
@as("DisplayName") displayName: option<portfolioDisplayName>,
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("PortfolioDetail") portfolioDetail: option<portfolioDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdatePortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ScanProvisionedProducts = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("AccessLevelFilter") accessLevelFilter: option<accessLevelFilter>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ProvisionedProducts") provisionedProducts: option<provisionedProductDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ScanProvisionedProductsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagOptions = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("Filters") filters: option<listTagOptionsFilters>
}
  type response = {
@as("PageToken") pageToken: option<pageToken>,
@as("TagOptionDetails") tagOptionDetails: option<tagOptionDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListTagOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListStackInstancesForProvisionedProduct = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("PageToken") pageToken: option<pageToken>,
@as("ProvisionedProductId") provisionedProductId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("StackInstances") stackInstances: option<stackInstances>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListStackInstancesForProvisionedProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServiceActionsForProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ServiceActionSummaries") serviceActionSummaries: option<serviceActionSummaries>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListServiceActionsForProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListServiceActions = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ServiceActionSummaries") serviceActionSummaries: option<serviceActionSummaries>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListServiceActionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResourcesForTagOption = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("ResourceType") resourceType: option<resourceType>,
@as("TagOptionId") tagOptionId: tagOptionId
}
  type response = {
@as("PageToken") pageToken: option<pageToken>,
@as("ResourceDetails") resourceDetails: option<resourceDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListResourcesForTagOptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProvisioningArtifacts = {
  type t;
  type request = {
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ProvisioningArtifactDetails") provisioningArtifactDetails: option<provisioningArtifactDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListProvisioningArtifactsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProvisionedProductPlans = {
  type t;
  type request = {
@as("AccessLevelFilter") accessLevelFilter: option<accessLevelFilter>,
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("ProvisionProductId") provisionProductId: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ProvisionedProductPlans") provisionedProductPlans: option<provisionedProductPlans>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListProvisionedProductPlansCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPrincipalsForPortfolio = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("Principals") principals: option<principals>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPrincipalsForPortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPortfoliosForProduct = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("PageToken") pageToken: option<pageToken>,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("PortfolioDetails") portfolioDetails: option<portfolioDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPortfoliosForProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPortfolios = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("PageToken") pageToken: option<pageToken>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("PortfolioDetails") portfolioDetails: option<portfolioDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPortfoliosCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationPortfolioAccess = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("PageToken") pageToken: option<pageToken>,
@as("OrganizationNodeType") organizationNodeType: organizationNodeType,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("OrganizationNodes") organizationNodes: option<organizationNodes>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListOrganizationPortfolioAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListConstraintsForPortfolio = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("ProductId") productId: option<id>,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ConstraintDetails") constraintDetails: option<constraintDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListConstraintsForPortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBudgetsForResource = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("ResourceId") resourceId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("Budgets") budgets: option<budgets>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListBudgetsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAcceptedPortfolioShares = {
  type t;
  type request = {
@as("PortfolioShareType") portfolioShareType: option<portfolioShareType>,
@as("PageSize") pageSize: option<pageSize>,
@as("PageToken") pageToken: option<pageToken>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("PortfolioDetails") portfolioDetails: option<portfolioDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListAcceptedPortfolioSharesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetProvisionedProductOutputs = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("OutputKeys") outputKeys: option<outputKeys>,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductName>,
@as("ProvisionedProductId") provisionedProductId: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("Outputs") outputs: option<recordOutputs>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "GetProvisionedProductOutputsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("Id") id: id
}
  type response = {
@as("ServiceActionDetail") serviceActionDetail: option<serviceActionDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeServiceActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisionedProduct = {
  type t;
  type request = {
@as("Name") name: option<provisionedProductName>,
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("CloudWatchDashboards") cloudWatchDashboards: option<cloudWatchDashboards>,
@as("ProvisionedProductDetail") provisionedProductDetail: option<provisionedProductDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisionedProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProductView = {
  type t;
  type request = {
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("ProvisioningArtifacts") provisioningArtifacts: option<provisioningArtifacts>,
@as("ProductViewSummary") productViewSummary: option<productViewSummary>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProductViewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProduct = {
  type t;
  type request = {
@as("Name") name: option<productViewName>,
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("LaunchPaths") launchPaths: option<launchPaths>,
@as("Budgets") budgets: option<budgets>,
@as("ProvisioningArtifacts") provisioningArtifacts: option<provisioningArtifacts>,
@as("ProductViewSummary") productViewSummary: option<productViewSummary>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePortfolioShares = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSizeMax100>,
@as("PageToken") pageToken: option<pageToken>,
@as("Type") type_: describePortfolioShareType,
@as("PortfolioId") portfolioId: id
}
  type response = {
@as("PortfolioShareDetails") portfolioShareDetails: option<portfolioShareDetails>,
@as("NextPageToken") nextPageToken: option<pageToken>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribePortfolioSharesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePortfolio = {
  type t;
  type request = {
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Budgets") budgets: option<budgets>,
@as("TagOptions") tagOptions: option<tagOptionDetails>,
@as("Tags") tags: option<tags>,
@as("PortfolioDetail") portfolioDetail: option<portfolioDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribePortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateServiceAction = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("Description") description: option<serviceActionDescription>,
@as("Definition") definition: serviceActionDefinitionMap,
@as("DefinitionType") definitionType: serviceActionDefinitionType,
@as("Name") name: serviceActionName
}
  type response = {
@as("ServiceActionDetail") serviceActionDetail: option<serviceActionDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateServiceActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProvisioningArtifact = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("Parameters") parameters: provisioningArtifactProperties,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Status") status: option<status>,
@as("Info") info: option<provisioningArtifactInfo>,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: option<provisioningArtifactDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProvisionedProductPlan = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("ProvisioningParameters") provisioningParameters: option<updateProvisioningParameters>,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProvisionedProductName") provisionedProductName: provisionedProductName,
@as("ProductId") productId: id,
@as("PathId") pathId: option<id>,
@as("NotificationArns") notificationArns: option<notificationArns>,
@as("PlanType") planType: provisionedProductPlanType,
@as("PlanName") planName: provisionedProductPlanName,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductName>,
@as("ProvisionProductId") provisionProductId: option<id>,
@as("PlanId") planId: option<id>,
@as("PlanName") planName: option<provisionedProductPlanName>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateProvisionedProductPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProduct = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("ProvisioningArtifactParameters") provisioningArtifactParameters: provisioningArtifactProperties,
@as("Tags") tags: option<addTags>,
@as("ProductType") productType: productType,
@as("SupportUrl") supportUrl: option<supportUrl>,
@as("SupportEmail") supportEmail: option<supportEmail>,
@as("SupportDescription") supportDescription: option<supportDescription>,
@as("Distributor") distributor: option<productViewOwner>,
@as("Description") description: option<productViewShortDescription>,
@as("Owner") owner: productViewOwner,
@as("Name") name: productViewName,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: option<provisioningArtifactDetail>,
@as("ProductViewDetail") productViewDetail: option<productViewDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePortfolio = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("Tags") tags: option<addTags>,
@as("ProviderName") providerName: providerName,
@as("Description") description: option<portfolioDescription>,
@as("DisplayName") displayName: portfolioDisplayName,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Tags") tags: option<tags>,
@as("PortfolioDetail") portfolioDetail: option<portfolioDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreatePortfolioCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CopyProduct = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("CopyOptions") copyOptions: option<copyOptions>,
@as("SourceProvisioningArtifactIdentifiers") sourceProvisioningArtifactIdentifiers: option<sourceProvisioningArtifactProperties>,
@as("TargetProductName") targetProductName: option<productViewName>,
@as("TargetProductId") targetProductId: option<id>,
@as("SourceProductArn") sourceProductArn: productArn,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("CopyProductToken") copyProductToken: option<id>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CopyProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateServiceActionFromProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("ServiceActionAssociations") serviceActionAssociations: serviceActionAssociations
}
  type response = {
@as("FailedServiceActionAssociations") failedServiceActionAssociations: option<failedServiceActionAssociations>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "BatchDisassociateServiceActionFromProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateServiceActionWithProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("ServiceActionAssociations") serviceActionAssociations: serviceActionAssociations
}
  type response = {
@as("FailedServiceActionAssociations") failedServiceActionAssociations: option<failedServiceActionAssociations>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "BatchAssociateServiceActionWithProvisioningArtifactCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProvisionedProduct = {
  type t;
  type request = {
@as("UpdateToken") updateToken: idempotencyToken,
@as("Tags") tags: option<tags>,
@as("ProvisioningPreferences") provisioningPreferences: option<updateProvisioningPreferences>,
@as("ProvisioningParameters") provisioningParameters: option<updateProvisioningParameters>,
@as("PathName") pathName: option<portfolioDisplayName>,
@as("PathId") pathId: option<id>,
@as("ProvisioningArtifactName") provisioningArtifactName: option<provisioningArtifactName>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductName") productName: option<productViewName>,
@as("ProductId") productId: option<id>,
@as("ProvisionedProductId") provisionedProductId: option<id>,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductNameOrArn>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("RecordDetail") recordDetail: option<recordDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProvisionedProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TerminateProvisionedProduct = {
  type t;
  type request = {
@as("RetainPhysicalResources") retainPhysicalResources: option<retainPhysicalResources>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("IgnoreErrors") ignoreErrors: option<ignoreErrors>,
@as("TerminateToken") terminateToken: idempotencyToken,
@as("ProvisionedProductId") provisionedProductId: option<id>,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductNameOrArn>
}
  type response = {
@as("RecordDetail") recordDetail: option<recordDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "TerminateProvisionedProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchProductsAsAdmin = {
  type t;
  type request = {
@as("ProductSource") productSource: option<productSource>,
@as("PageSize") pageSize: option<pageSize>,
@as("PageToken") pageToken: option<pageToken>,
@as("SortOrder") sortOrder: option<sortOrder>,
@as("SortBy") sortBy: option<productViewSortBy>,
@as("Filters") filters: option<productViewFilters>,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ProductViewDetails") productViewDetails: option<productViewDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "SearchProductsAsAdminCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchProducts = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("SortOrder") sortOrder: option<sortOrder>,
@as("SortBy") sortBy: option<productViewSortBy>,
@as("PageSize") pageSize: option<pageSize>,
@as("Filters") filters: option<productViewFilters>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ProductViewAggregations") productViewAggregations: option<productViewAggregations>,
@as("ProductViewSummaries") productViewSummaries: option<productViewSummaries>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "SearchProductsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ProvisionProduct = {
  type t;
  type request = {
@as("ProvisionToken") provisionToken: idempotencyToken,
@as("NotificationArns") notificationArns: option<notificationArns>,
@as("Tags") tags: option<tags>,
@as("ProvisioningPreferences") provisioningPreferences: option<provisioningPreferences>,
@as("ProvisioningParameters") provisioningParameters: option<provisioningParameters>,
@as("ProvisionedProductName") provisionedProductName: provisionedProductName,
@as("PathName") pathName: option<portfolioDisplayName>,
@as("PathId") pathId: option<id>,
@as("ProvisioningArtifactName") provisioningArtifactName: option<provisioningArtifactName>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductName") productName: option<productViewName>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("RecordDetail") recordDetail: option<recordDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ProvisionProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProvisioningArtifactsForServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("ServiceActionId") serviceActionId: id
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ProvisioningArtifactViews") provisioningArtifactViews: option<provisioningArtifactViews>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListProvisioningArtifactsForServiceActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportAsProvisionedProduct = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("PhysicalId") physicalId: physicalId,
@as("ProvisionedProductName") provisionedProductName: provisionedProductName,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("RecordDetail") recordDetail: option<recordDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ImportAsProvisionedProductCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExecuteProvisionedProductServiceAction = {
  type t;
  type request = {
@as("Parameters") parameters: option<executionParameterMap>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("ExecuteToken") executeToken: idempotencyToken,
@as("ServiceActionId") serviceActionId: id,
@as("ProvisionedProductId") provisionedProductId: id
}
  type response = {
@as("RecordDetail") recordDetail: option<recordDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ExecuteProvisionedProductServiceActionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExecuteProvisionedProductPlan = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("PlanId") planId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("RecordDetail") recordDetail: option<recordDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ExecuteProvisionedProductPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceActionExecutionParameters = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>,
@as("ServiceActionId") serviceActionId: id,
@as("ProvisionedProductId") provisionedProductId: id
}
  type response = {
@as("ServiceActionParameters") serviceActionParameters: option<executionParameters>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeServiceActionExecutionParametersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRecord = {
  type t;
  type request = {
@as("PageSize") pageSize: option<pageSize>,
@as("PageToken") pageToken: option<pageToken>,
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("RecordOutputs") recordOutputs: option<recordOutputs>,
@as("RecordDetail") recordDetail: option<recordDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeRecordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProductAsAdmin = {
  type t;
  type request = {
@as("SourcePortfolioId") sourcePortfolioId: option<id>,
@as("Name") name: option<productViewName>,
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("Budgets") budgets: option<budgets>,
@as("TagOptions") tagOptions: option<tagOptionDetails>,
@as("Tags") tags: option<tags>,
@as("ProvisioningArtifactSummaries") provisioningArtifactSummaries: option<provisioningArtifactSummaries>,
@as("ProductViewDetail") productViewDetail: option<productViewDetail>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProductAsAdminCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchProvisionedProducts = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<searchProvisionedProductsPageSize>,
@as("SortOrder") sortOrder: option<sortOrder>,
@as("SortBy") sortBy: option<sortField>,
@as("Filters") filters: option<provisionedProductFilters>,
@as("AccessLevelFilter") accessLevelFilter: option<accessLevelFilter>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("TotalResultsCount") totalResultsCount: option<totalResultsCount>,
@as("ProvisionedProducts") provisionedProducts: option<provisionedProductAttributes>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "SearchProvisionedProductsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRecordHistory = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("SearchFilter") searchFilter: option<listRecordHistorySearchFilter>,
@as("AccessLevelFilter") accessLevelFilter: option<accessLevelFilter>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("RecordDetails") recordDetails: option<recordDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListRecordHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLaunchPaths = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("LaunchPathSummaries") launchPathSummaries: option<launchPathSummaries>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListLaunchPathsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisioningParameters = {
  type t;
  type request = {
@as("PathName") pathName: option<portfolioDisplayName>,
@as("PathId") pathId: option<id>,
@as("ProvisioningArtifactName") provisioningArtifactName: option<provisioningArtifactName>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductName") productName: option<productViewName>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("ProvisioningArtifactOutputs") provisioningArtifactOutputs: option<provisioningArtifactOutputs>,
@as("ProvisioningArtifactPreferences") provisioningArtifactPreferences: option<provisioningArtifactPreferences>,
@as("TagOptions") tagOptions: option<tagOptionSummaries>,
@as("UsageInstructions") usageInstructions: option<usageInstructions>,
@as("ConstraintSummaries") constraintSummaries: option<constraintSummaries>,
@as("ProvisioningArtifactParameters") provisioningArtifactParameters: option<provisioningArtifactParameters>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisioningParametersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePortfolioShareStatus = {
  type t;
  type request = {
@as("PortfolioShareToken") portfolioShareToken: id
}
  type response = {
@as("ShareDetails") shareDetails: option<shareDetails>,
@as("Status") status: option<shareStatus>,
@as("OrganizationNodeValue") organizationNodeValue: option<organizationNodeValue>,
@as("PortfolioId") portfolioId: option<id>,
@as("PortfolioShareToken") portfolioShareToken: option<id>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribePortfolioShareStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisionedProductPlan = {
  type t;
  type request = {
@as("PageToken") pageToken: option<pageToken>,
@as("PageSize") pageSize: option<pageSize>,
@as("PlanId") planId: id,
@as("AcceptLanguage") acceptLanguage: option<acceptLanguage>
}
  type response = {
@as("NextPageToken") nextPageToken: option<pageToken>,
@as("ResourceChanges") resourceChanges: option<resourceChanges>,
@as("ProvisionedProductPlanDetails") provisionedProductPlanDetails: option<provisionedProductPlanDetails>
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisionedProductPlanCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
