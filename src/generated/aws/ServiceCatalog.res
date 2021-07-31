type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type verbose = bool;
type userArnSession = string
type userArn = string
type usePreviousValue = bool;
type updatedTime = Js.Date.t;
type totalResultsCount = int;
type tagValue = string
type tagOptionValue = string
type tagOptionKey = string
type tagOptionId = string
type tagOptionActive = bool;
type tagKey = string
type supportUrl = string
type supportEmail = string
type supportDescription = string
type amazonawsString = string
type statusMessage = string
type statusDetail = string
type status = [@as("FAILED") #FAILED | @as("CREATING") #CREATING | @as("AVAILABLE") #AVAILABLE]
type stackSetOperationType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type stackSetMaxConcurrencyPercentage = int;
type stackSetMaxConcurrencyCount = int;
type stackSetFailureTolerancePercentage = int;
type stackSetFailureToleranceCount = int;
type stackInstanceStatus = [@as("INOPERABLE") #INOPERABLE | @as("OUTDATED") #OUTDATED | @as("CURRENT") #CURRENT]
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortField = string
type shareStatus = [@as("ERROR") #ERROR | @as("COMPLETED_WITH_ERRORS") #COMPLETED_WITH_ERRORS | @as("COMPLETED") #COMPLETED | @as("IN_PROGRESS") #IN_PROGRESS | @as("NOT_STARTED") #NOT_STARTED]
type serviceActionName = string
type serviceActionDescription = string
type serviceActionDefinitionValue = string
type serviceActionDefinitionType = [@as("SSM_AUTOMATION") #SSM_AUTOMATION]
type serviceActionDefinitionKey = [@as("Parameters") #Parameters | @as("AssumeRole") #AssumeRole | @as("Version") #Version | @as("Name") #Name]
type serviceActionAssociationErrorMessage = string
type serviceActionAssociationErrorCode = [@as("THROTTLING") #THROTTLING | @as("RESOURCE_NOT_FOUND") #RESOURCE_NOT_FOUND | @as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE | @as("DUPLICATE_RESOURCE") #DUPLICATE_RESOURCE]
type searchProvisionedProductsPageSize = int;
type searchFilterValue = string
type searchFilterKey = string
type roleArn = string
type retainPhysicalResources = bool;
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
type recordStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS_IN_ERROR") #IN_PROGRESS_IN_ERROR | @as("IN_PROGRESS") #IN_PROGRESS | @as("CREATED") #CREATED]
type provisioningArtifactType = [@as("MARKETPLACE_CAR") #MARKETPLACE_CAR | @as("MARKETPLACE_AMI") #MARKETPLACE_AMI | @as("CLOUD_FORMATION_TEMPLATE") #CLOUD_FORMATION_TEMPLATE]
type provisioningArtifactPropertyValue = string
type provisioningArtifactPropertyName = [@as("Id") #Id]
type provisioningArtifactOutputKey = string
type provisioningArtifactName = string
type provisioningArtifactInfoValue = string
type provisioningArtifactInfoKey = string
type provisioningArtifactGuidance = [@as("DEPRECATED") #DEPRECATED | @as("DEFAULT") #DEFAULT]
type provisioningArtifactDescription = string
type provisioningArtifactCreatedTime = Js.Date.t;
type provisioningArtifactActive = bool;
type provisionedProductViewFilterValue = string
type provisionedProductViewFilterBy = [@as("SearchQuery") #SearchQuery]
type provisionedProductType = string
type provisionedProductStatusMessage = string
type provisionedProductStatus = [@as("PLAN_IN_PROGRESS") #PLAN_IN_PROGRESS | @as("ERROR") #ERROR | @as("TAINTED") #TAINTED | @as("UNDER_CHANGE") #UNDER_CHANGE | @as("AVAILABLE") #AVAILABLE]
type provisionedProductPlanType = [@as("CLOUDFORMATION") #CLOUDFORMATION]
type provisionedProductPlanStatus = [@as("EXECUTE_FAILED") #EXECUTE_FAILED | @as("EXECUTE_SUCCESS") #EXECUTE_SUCCESS | @as("EXECUTE_IN_PROGRESS") #EXECUTE_IN_PROGRESS | @as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_SUCCESS") #CREATE_SUCCESS | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type provisionedProductPlanName = string
type provisionedProductNameOrArn = string
type provisionedProductName = string
type provisionedProductId = string
type providerName = string
type propertyValue = string
type propertyName = string
type propertyKey = [@as("LAUNCH_ROLE") #LAUNCH_ROLE | @as("OWNER") #OWNER]
type productViewSortBy = [@as("CreationDate") #CreationDate | @as("VersionCount") #VersionCount | @as("Title") #Title]
type productViewShortDescription = string
type productViewOwner = string
type productViewName = string
type productViewFilterValue = string
type productViewFilterBy = [@as("SourceProductId") #SourceProductId | @as("ProductType") #ProductType | @as("Owner") #Owner | @as("FullTextSearch") #FullTextSearch]
type productViewDistributor = string
type productViewAggregationType = string
type productType = [@as("MARKETPLACE") #MARKETPLACE | @as("CLOUD_FORMATION_TEMPLATE") #CLOUD_FORMATION_TEMPLATE]
type productSource = [@as("ACCOUNT") #ACCOUNT]
type productArn = string
type principalType = [@as("IAM") #IAM]
type principalARN = string
type portfolioShareType = [@as("AWS_ORGANIZATIONS") #AWS_ORGANIZATIONS | @as("AWS_SERVICECATALOG") #AWS_SERVICECATALOG | @as("IMPORTED") #IMPORTED]
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
type pageSizeMax100 = int;
type pageSize = int;
type owner = string
type outputValue = string
type outputKey = string
type outputDescription = string
type organizationNodeValue = string
type organizationNodeType = [@as("ACCOUNT") #ACCOUNT | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT | @as("ORGANIZATION") #ORGANIZATION]
type nullableBoolean = bool;
type notificationArn = string
type noEcho = bool;
type message = string
type logicalResourceId = string
type lastRequestId = string
type instructionValue = string
type instructionType = string
type ignoreErrors = bool;
type idempotencyToken = string
type id = string
type hasDefaultPath = bool;
type executionParameterValue = string
type executionParameterType = string
type executionParameterKey = string
type evaluationType = [@as("DYNAMIC") #DYNAMIC | @as("STATIC") #STATIC]
type errorMessage = string
type errorDescription = string
type errorCode = string
type error = string
type disableTemplateValidation = bool;
type description = string
type describePortfolioShareType = [@as("ORGANIZATION_MEMBER_ACCOUNT") #ORGANIZATION_MEMBER_ACCOUNT | @as("ORGANIZATIONAL_UNIT") #ORGANIZATIONAL_UNIT | @as("ORGANIZATION") #ORGANIZATION | @as("ACCOUNT") #ACCOUNT]
type defaultValue = string
type creationTime = Js.Date.t;
type createdTime = Js.Date.t;
type copyProductStatus = [@as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("SUCCEEDED") #SUCCEEDED]
type copyOption = [@as("CopyTags") #CopyTags]
type constraintType = string
type constraintParameters = string
type constraintDescription = string
type cloudWatchDashboardName = string
type changeAction = [@as("REMOVE") #REMOVE | @as("MODIFY") #MODIFY | @as("ADD") #ADD]
type causingEntity = string
type budgetName = string
type amazonawsBoolean = bool;
type attributeValue = string
type approximateCount = int;
type accountId = string
type accessStatus = [@as("DISABLED") #DISABLED | @as("UNDER_CHANGE") #UNDER_CHANGE | @as("ENABLED") #ENABLED]
type accessLevelFilterValue = string
type accessLevelFilterKey = [@as("User") #User | @as("Role") #Role | @as("Account") #Account]
type acceptLanguage = string
type usageInstruction = {
@as("Value") value: instructionValue,
@as("Type") type_: instructionType
}
type updateProvisioningParameter = {
@as("UsePreviousValue") usePreviousValue: usePreviousValue,
@as("Value") value: parameterValue,
@as("Key") key: parameterKey
}
type tagOptionValues = array<tagOptionValue>
type tagOptionDetail = {
@as("Owner") owner: owner,
@as("Id") id: tagOptionId,
@as("Active") active: tagOptionActive,
@as("Value") value: tagOptionValue,
@as("Key") key: tagOptionKey
}
type tagKeys = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type successfulShares = array<accountId>
type stackSetRegions = array<region>
type stackSetAccounts = array<accountId>
type stackInstance = {
@as("StackInstanceStatus") stackInstanceStatus: stackInstanceStatus,
@as("Region") region: region,
@as("Account") account: accountId
}
type sourceProvisioningArtifactPropertiesMap = Js.Dict.t< provisioningArtifactPropertyValue>
type serviceActionSummary = {
@as("DefinitionType") definitionType: serviceActionDefinitionType,
@as("Description") description: serviceActionDescription,
@as("Name") name: serviceActionName,
@as("Id") id: id
}
type serviceActionDefinitionMap = Js.Dict.t< serviceActionDefinitionValue>
type serviceActionAssociation = {
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>,
@as("ServiceActionId") serviceActionId: option<id>
}
type scope = array<resourceAttribute>
type resourceTargetDefinition = {
@as("RequiresRecreation") requiresRecreation: requiresRecreation,
@as("Name") name: propertyName,
@as("Attribute") attribute: resourceAttribute
}
type resourceDetail = {
@as("CreatedTime") createdTime: resourceDetailCreatedTime,
@as("Description") description: resourceDetailDescription,
@as("Name") name: resourceDetailName,
@as("ARN") aRN: resourceDetailARN,
@as("Id") id: resourceDetailId
}
type recordTag = {
@as("Value") value: recordTagValue,
@as("Key") key: recordTagKey
}
type recordOutput = {
@as("Description") description: description,
@as("OutputValue") outputValue: outputValue,
@as("OutputKey") outputKey: outputKey
}
type recordError = {
@as("Description") description: errorDescription,
@as("Code") code: errorCode
}
type provisioningParameter = {
@as("Value") value: parameterValue,
@as("Key") key: parameterKey
}
type provisioningArtifactOutput = {
@as("Description") description: outputDescription,
@as("Key") key: provisioningArtifactOutputKey
}
type provisioningArtifactInfo = Js.Dict.t< provisioningArtifactInfoValue>
type provisioningArtifactDetail = {
@as("Guidance") guidance: provisioningArtifactGuidance,
@as("Active") active: provisioningArtifactActive,
@as("CreatedTime") createdTime: creationTime,
@as("Type") type_: provisioningArtifactType,
@as("Description") description: provisioningArtifactName,
@as("Name") name: provisioningArtifactName,
@as("Id") id: id
}
type provisioningArtifact = {
@as("Guidance") guidance: provisioningArtifactGuidance,
@as("CreatedTime") createdTime: provisioningArtifactCreatedTime,
@as("Description") description: provisioningArtifactDescription,
@as("Name") name: provisioningArtifactName,
@as("Id") id: id
}
type provisionedProductViewFilterValues = array<provisionedProductViewFilterValue>
type provisionedProductProperties = Js.Dict.t< propertyValue>
type provisionedProductPlanSummary = {
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("PlanType") planType: provisionedProductPlanType,
@as("ProvisionProductName") provisionProductName: provisionedProductName,
@as("ProvisionProductId") provisionProductId: id,
@as("PlanId") planId: id,
@as("PlanName") planName: provisionedProductPlanName
}
type provisionedProductDetail = {
@as("LaunchRoleArn") launchRoleArn: roleArn,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id,
@as("LastSuccessfulProvisioningRecordId") lastSuccessfulProvisioningRecordId: id,
@as("LastProvisioningRecordId") lastProvisioningRecordId: id,
@as("LastRecordId") lastRecordId: lastRequestId,
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("CreatedTime") createdTime: createdTime,
@as("StatusMessage") statusMessage: provisionedProductStatusMessage,
@as("Status") status: provisionedProductStatus,
@as("Id") id: provisionedProductId,
@as("Type") type_: provisionedProductType,
@as("Arn") arn: provisionedProductNameOrArn,
@as("Name") name: provisionedProductNameOrArn
}
type productViewSummary = {
@as("SupportUrl") supportUrl: supportUrl,
@as("SupportDescription") supportDescription: supportDescription,
@as("SupportEmail") supportEmail: supportEmail,
@as("HasDefaultPath") hasDefaultPath: hasDefaultPath,
@as("Distributor") distributor: productViewDistributor,
@as("Type") type_: productType,
@as("ShortDescription") shortDescription: productViewShortDescription,
@as("Owner") owner: productViewOwner,
@as("Name") name: productViewName,
@as("ProductId") productId: id,
@as("Id") id: id
}
type productViewFilterValues = array<productViewFilterValue>
type productViewAggregationValue = {
@as("ApproximateCount") approximateCount: approximateCount,
@as("Value") value: attributeValue
}
type principal = {
@as("PrincipalType") principalType: principalType,
@as("PrincipalARN") principalARN: principalARN
}
type portfolioShareDetail = {
@as("ShareTagOptions") shareTagOptions: amazonawsBoolean,
@as("Accepted") accepted: amazonawsBoolean,
@as("Type") type_: describePortfolioShareType,
@as("PrincipalId") principalId: id
}
type portfolioDetail = {
@as("ProviderName") providerName: providerName,
@as("CreatedTime") createdTime: creationTime,
@as("Description") description: portfolioDescription,
@as("DisplayName") displayName: portfolioDisplayName,
@as("ARN") aRN: resourceARN,
@as("Id") id: id
}
type outputKeys = array<outputKey>
type organizationNode = {
@as("Value") value: organizationNodeValue,
@as("Type") type_: organizationNodeType
}
type notificationArns = array<notificationArn>
type namespaces = array<accountId>
type listTagOptionsFilters = {
@as("Active") active: tagOptionActive,
@as("Value") value: tagOptionValue,
@as("Key") key: tagOptionKey
}
type listRecordHistorySearchFilter = {
@as("Value") value: searchFilterValue,
@as("Key") key: searchFilterKey
}
type launchPath = {
@as("Name") name: portfolioName,
@as("Id") id: id
}
type failedServiceActionAssociation = {
@as("ErrorMessage") errorMessage: serviceActionAssociationErrorMessage,
@as("ErrorCode") errorCode: serviceActionAssociationErrorCode,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id,
@as("ServiceActionId") serviceActionId: id
}
type executionParameterValueList = array<executionParameterValue>
type copyOptions = array<copyOption>
type constraintSummary = {
@as("Description") description: constraintDescription,
@as("Type") type_: constraintType
}
type constraintDetail = {
@as("PortfolioId") portfolioId: id,
@as("ProductId") productId: id,
@as("Owner") owner: accountId,
@as("Description") description: constraintDescription,
@as("Type") type_: constraintType,
@as("ConstraintId") constraintId: id
}
type cloudWatchDashboard = {
@as("Name") name: cloudWatchDashboardName
}
type budgetDetail = {
@as("BudgetName") budgetName: budgetName
}
type allowedValues = array<amazonawsString>
type accountIds = array<accountId>
type accessLevelFilter = {
@as("Value") value: accessLevelFilterValue,
@as("Key") key: accessLevelFilterKey
}
type usageInstructions = array<usageInstruction>
type updateProvisioningPreferences = {
@as("StackSetOperationType") stackSetOperationType: stackSetOperationType,
@as("StackSetMaxConcurrencyPercentage") stackSetMaxConcurrencyPercentage: stackSetMaxConcurrencyPercentage,
@as("StackSetMaxConcurrencyCount") stackSetMaxConcurrencyCount: stackSetMaxConcurrencyCount,
@as("StackSetFailureTolerancePercentage") stackSetFailureTolerancePercentage: stackSetFailureTolerancePercentage,
@as("StackSetFailureToleranceCount") stackSetFailureToleranceCount: stackSetFailureToleranceCount,
@as("StackSetRegions") stackSetRegions: stackSetRegions,
@as("StackSetAccounts") stackSetAccounts: stackSetAccounts
}
type updateProvisioningParameters = array<updateProvisioningParameter>
type tags = array<tag>
type tagOptionSummary = {
@as("Values") values: tagOptionValues,
@as("Key") key: tagOptionKey
}
type tagOptionDetails = array<tagOptionDetail>
type stackInstances = array<stackInstance>
type sourceProvisioningArtifactProperties = array<sourceProvisioningArtifactPropertiesMap>
type shareError = {
@as("Error") error: error,
@as("Message") message: message,
@as("Accounts") accounts: namespaces
}
type serviceActionSummaries = array<serviceActionSummary>
type serviceActionDetail = {
@as("Definition") definition: serviceActionDefinitionMap,
@as("ServiceActionSummary") serviceActionSummary: serviceActionSummary
}
type serviceActionAssociations = array<serviceActionAssociation>
type resourceDetails = array<resourceDetail>
type resourceChangeDetail = {
@as("CausingEntity") causingEntity: causingEntity,
@as("Evaluation") evaluation: evaluationType,
@as("Target") target: resourceTargetDefinition
}
type recordTags = array<recordTag>
type recordOutputs = array<recordOutput>
type recordErrors = array<recordError>
type provisioningPreferences = {
@as("StackSetMaxConcurrencyPercentage") stackSetMaxConcurrencyPercentage: stackSetMaxConcurrencyPercentage,
@as("StackSetMaxConcurrencyCount") stackSetMaxConcurrencyCount: stackSetMaxConcurrencyCount,
@as("StackSetFailureTolerancePercentage") stackSetFailureTolerancePercentage: stackSetFailureTolerancePercentage,
@as("StackSetFailureToleranceCount") stackSetFailureToleranceCount: stackSetFailureToleranceCount,
@as("StackSetRegions") stackSetRegions: stackSetRegions,
@as("StackSetAccounts") stackSetAccounts: stackSetAccounts
}
type provisioningParameters = array<provisioningParameter>
type provisioningArtifacts = array<provisioningArtifact>
type provisioningArtifactView = {
@as("ProvisioningArtifact") provisioningArtifact: provisioningArtifact,
@as("ProductViewSummary") productViewSummary: productViewSummary
}
type provisioningArtifactSummary = {
@as("ProvisioningArtifactMetadata") provisioningArtifactMetadata: provisioningArtifactInfo,
@as("CreatedTime") createdTime: provisioningArtifactCreatedTime,
@as("Description") description: provisioningArtifactDescription,
@as("Name") name: provisioningArtifactName,
@as("Id") id: id
}
type provisioningArtifactProperties = {
@as("DisableTemplateValidation") disableTemplateValidation: disableTemplateValidation,
@as("Type") type_: provisioningArtifactType,
@as("Info") info: option<provisioningArtifactInfo>,
@as("Description") description: provisioningArtifactDescription,
@as("Name") name: provisioningArtifactName
}
type provisioningArtifactPreferences = {
@as("StackSetRegions") stackSetRegions: stackSetRegions,
@as("StackSetAccounts") stackSetAccounts: stackSetAccounts
}
type provisioningArtifactOutputs = array<provisioningArtifactOutput>
type provisioningArtifactDetails = array<provisioningArtifactDetail>
type provisionedProductPlans = array<provisionedProductPlanSummary>
type provisionedProductFilters = Js.Dict.t< provisionedProductViewFilterValues>
type provisionedProductDetails = array<provisionedProductDetail>
type productViewSummaries = array<productViewSummary>
type productViewFilters = Js.Dict.t< productViewFilterValues>
type productViewDetail = {
@as("CreatedTime") createdTime: createdTime,
@as("ProductARN") productARN: resourceARN,
@as("Status") status: status,
@as("ProductViewSummary") productViewSummary: productViewSummary
}
type productViewAggregationValues = array<productViewAggregationValue>
type principals = array<principal>
type portfolioShareDetails = array<portfolioShareDetail>
type portfolioDetails = array<portfolioDetail>
type parameterConstraints = {
@as("MinValue") minValue: amazonawsString,
@as("MaxValue") maxValue: amazonawsString,
@as("MinLength") minLength: amazonawsString,
@as("MaxLength") maxLength: amazonawsString,
@as("ConstraintDescription") constraintDescription: amazonawsString,
@as("AllowedPattern") allowedPattern: amazonawsString,
@as("AllowedValues") allowedValues: allowedValues
}
type organizationNodes = array<organizationNode>
type launchPaths = array<launchPath>
type failedServiceActionAssociations = array<failedServiceActionAssociation>
type executionParameterMap = Js.Dict.t< executionParameterValueList>
type executionParameter = {
@as("DefaultValues") defaultValues: executionParameterValueList,
@as("Type") type_: executionParameterType,
@as("Name") name: executionParameterKey
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
@as("LaunchRoleArn") launchRoleArn: roleArn,
@as("RecordTags") recordTags: recordTags,
@as("RecordErrors") recordErrors: recordErrors,
@as("PathId") pathId: id,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductId") productId: id,
@as("ProvisionedProductId") provisionedProductId: id,
@as("RecordType") recordType: recordType,
@as("ProvisionedProductType") provisionedProductType: provisionedProductType,
@as("UpdatedTime") updatedTime: updatedTime,
@as("CreatedTime") createdTime: createdTime,
@as("Status") status: recordStatus,
@as("ProvisionedProductName") provisionedProductName: provisionedProductName,
@as("RecordId") recordId: id
}
type provisioningArtifactViews = array<provisioningArtifactView>
type provisioningArtifactSummaries = array<provisioningArtifactSummary>
type provisioningArtifactParameter = {
@as("ParameterConstraints") parameterConstraints: parameterConstraints,
@as("Description") description: description,
@as("IsNoEcho") isNoEcho: noEcho,
@as("ParameterType") parameterType: parameterType,
@as("DefaultValue") defaultValue: defaultValue,
@as("ParameterKey") parameterKey: parameterKey
}
type provisionedProductPlanDetails = {
@as("StatusMessage") statusMessage: statusMessage,
@as("Tags") tags: tags,
@as("ProvisioningParameters") provisioningParameters: updateProvisioningParameters,
@as("NotificationArns") notificationArns: notificationArns,
@as("UpdatedTime") updatedTime: updatedTime,
@as("Status") status: provisionedProductPlanStatus,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("PlanType") planType: provisionedProductPlanType,
@as("ProvisionProductName") provisionProductName: provisionedProductName,
@as("ProvisionProductId") provisionProductId: id,
@as("PlanId") planId: id,
@as("PlanName") planName: provisionedProductPlanName,
@as("ProductId") productId: id,
@as("PathId") pathId: id,
@as("CreatedTime") createdTime: createdTime
}
type provisionedProductAttribute = {
@as("UserArnSession") userArnSession: userArnSession,
@as("UserArn") userArn: userArn,
@as("ProvisioningArtifactName") provisioningArtifactName: provisioningArtifactName,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductName") productName: productViewName,
@as("ProductId") productId: id,
@as("PhysicalId") physicalId: physicalId,
@as("Tags") tags: tags,
@as("LastSuccessfulProvisioningRecordId") lastSuccessfulProvisioningRecordId: id,
@as("LastProvisioningRecordId") lastProvisioningRecordId: id,
@as("LastRecordId") lastRecordId: id,
@as("IdempotencyToken") idempotencyToken: idempotencyToken,
@as("CreatedTime") createdTime: createdTime,
@as("StatusMessage") statusMessage: provisionedProductStatusMessage,
@as("Status") status: provisionedProductStatus,
@as("Id") id: id,
@as("Type") type_: provisionedProductType,
@as("Arn") arn: provisionedProductNameOrArn,
@as("Name") name: provisionedProductNameOrArn
}
type productViewDetails = array<productViewDetail>
type productViewAggregations = Js.Dict.t< productViewAggregationValues>
type launchPathSummary = {
@as("Name") name: portfolioName,
@as("Tags") tags: tags,
@as("ConstraintSummaries") constraintSummaries: constraintSummaries,
@as("Id") id: id
}
type executionParameters = array<executionParameter>
type shareDetails = {
@as("ShareErrors") shareErrors: shareErrors,
@as("SuccessfulShares") successfulShares: successfulShares
}
type resourceChange = {
@as("Details") details: resourceChangeDetails,
@as("Scope") scope: scope,
@as("Replacement") replacement: replacement,
@as("ResourceType") resourceType: planResourceType,
@as("PhysicalResourceId") physicalResourceId: physicalResourceId,
@as("LogicalResourceId") logicalResourceId: logicalResourceId,
@as("Action") action: changeAction
}
type recordDetails = array<recordDetail>
type provisioningArtifactParameters = array<provisioningArtifactParameter>
type provisionedProductAttributes = array<provisionedProductAttribute>
type launchPathSummaries = array<launchPathSummary>
type resourceChanges = array<resourceChange>
type clientType;
@module("@aws-sdk/client-servicecatalog") @new external createClient: unit => clientType = "ServiceCatalogClient";
module RejectPortfolioShare = {
  type t;
  type request = {
@as("PortfolioShareType") portfolioShareType: portfolioShareType,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "RejectPortfolioShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAWSOrganizationsAccessStatus = {
  type t;
  type request = unit
  type response = {
@as("AccessStatus") accessStatus: accessStatus
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "GetAWSOrganizationsAccessStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableAWSOrganizationsAccess = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "EnableAWSOrganizationsAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateTagOptionFromResource = {
  type t;
  type request = {
@as("TagOptionId") tagOptionId: option<tagOptionId>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateTagOptionFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateServiceActionFromProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("ServiceActionId") serviceActionId: option<id>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateServiceActionFromProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateProductFromPortfolio = {
  type t;
  type request = {
@as("PortfolioId") portfolioId: option<id>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateProductFromPortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociatePrincipalFromPortfolio = {
  type t;
  type request = {
@as("PrincipalARN") principalARN: option<principalARN>,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociatePrincipalFromPortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateBudgetFromResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<id>,
@as("BudgetName") budgetName: option<budgetName>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisassociateBudgetFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableAWSOrganizationsAccess = {
  type t;
  type request = unit
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DisableAWSOrganizationsAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCopyProductStatus = {
  type t;
  type request = {
@as("CopyProductToken") copyProductToken: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("StatusDetail") statusDetail: statusDetail,
@as("TargetProductId") targetProductId: id,
@as("CopyProductStatus") copyProductStatus: copyProductStatus
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeCopyProductStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTagOption = {
  type t;
  type request = {
@as("Id") id: option<tagOptionId>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteTagOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("Id") id: option<id>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteServiceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProvisioningArtifact = {
  type t;
  type request = {
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProvisionedProductPlan = {
  type t;
  type request = {
@as("IgnoreErrors") ignoreErrors: ignoreErrors,
@as("PlanId") planId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteProvisionedProductPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProduct = {
  type t;
  type request = {
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePortfolio = {
  type t;
  type request = {
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeletePortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConstraint = {
  type t;
  type request = {
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeleteConstraintCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateTagOptionWithResource = {
  type t;
  type request = {
@as("TagOptionId") tagOptionId: option<tagOptionId>,
@as("ResourceId") resourceId: option<resourceId>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateTagOptionWithResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateServiceActionWithProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("ServiceActionId") serviceActionId: option<id>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateServiceActionWithProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateProductWithPortfolio = {
  type t;
  type request = {
@as("SourcePortfolioId") sourcePortfolioId: id,
@as("PortfolioId") portfolioId: option<id>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateProductWithPortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociatePrincipalWithPortfolio = {
  type t;
  type request = {
@as("PrincipalType") principalType: option<principalType>,
@as("PrincipalARN") principalARN: option<principalARN>,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociatePrincipalWithPortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateBudgetWithResource = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<id>,
@as("BudgetName") budgetName: option<budgetName>
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AssociateBudgetWithResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptPortfolioShare = {
  type t;
  type request = {
@as("PortfolioShareType") portfolioShareType: portfolioShareType,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = unit
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "AcceptPortfolioShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTagOption = {
  type t;
  type request = {
@as("Active") active: tagOptionActive,
@as("Value") value: tagOptionValue,
@as("Id") id: option<tagOptionId>
}
  type response = {
@as("TagOptionDetail") tagOptionDetail: tagOptionDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateTagOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProvisioningArtifact = {
  type t;
  type request = {
@as("Guidance") guidance: provisioningArtifactGuidance,
@as("Active") active: provisioningArtifactActive,
@as("Description") description: provisioningArtifactDescription,
@as("Name") name: provisioningArtifactName,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: status,
@as("Info") info: provisioningArtifactInfo,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: provisioningArtifactDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProvisionedProductProperties = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("ProvisionedProductProperties") provisionedProductProperties: option<provisionedProductProperties>,
@as("ProvisionedProductId") provisionedProductId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: recordStatus,
@as("RecordId") recordId: id,
@as("ProvisionedProductProperties") provisionedProductProperties: provisionedProductProperties,
@as("ProvisionedProductId") provisionedProductId: id
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProvisionedProductPropertiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePortfolioShare = {
  type t;
  type request = {
@as("ShareTagOptions") shareTagOptions: nullableBoolean,
@as("OrganizationNode") organizationNode: organizationNode,
@as("AccountId") accountId: accountId,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: shareStatus,
@as("PortfolioShareToken") portfolioShareToken: id
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdatePortfolioShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConstraint = {
  type t;
  type request = {
@as("Parameters") parameters: constraintParameters,
@as("Description") description: constraintDescription,
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: status,
@as("ConstraintParameters") constraintParameters: constraintParameters,
@as("ConstraintDetail") constraintDetail: constraintDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateConstraintCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPortfolioAccess = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSizeMax100,
@as("PageToken") pageToken: pageToken,
@as("OrganizationParentId") organizationParentId: id,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("AccountIds") accountIds: accountIds
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPortfolioAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTagOption = {
  type t;
  type request = {
@as("Id") id: option<tagOptionId>
}
  type response = {
@as("TagOptionDetail") tagOptionDetail: tagOptionDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeTagOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisioningArtifact = {
  type t;
  type request = {
@as("Verbose") verbose: verbose,
@as("ProductName") productName: productViewName,
@as("ProvisioningArtifactName") provisioningArtifactName: provisioningArtifactName,
@as("ProductId") productId: id,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: status,
@as("Info") info: provisioningArtifactInfo,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: provisioningArtifactDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConstraint = {
  type t;
  type request = {
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: status,
@as("ConstraintParameters") constraintParameters: constraintParameters,
@as("ConstraintDetail") constraintDetail: constraintDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeConstraintCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePortfolioShare = {
  type t;
  type request = {
@as("OrganizationNode") organizationNode: organizationNode,
@as("AccountId") accountId: accountId,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("PortfolioShareToken") portfolioShareToken: id
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DeletePortfolioShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTagOption = {
  type t;
  type request = {
@as("Value") value: option<tagOptionValue>,
@as("Key") key: option<tagOptionKey>
}
  type response = {
@as("TagOptionDetail") tagOptionDetail: tagOptionDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateTagOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePortfolioShare = {
  type t;
  type request = {
@as("ShareTagOptions") shareTagOptions: amazonawsBoolean,
@as("OrganizationNode") organizationNode: organizationNode,
@as("AccountId") accountId: accountId,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("PortfolioShareToken") portfolioShareToken: id
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreatePortfolioShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConstraint = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("Description") description: constraintDescription,
@as("Type") type_: option<constraintType>,
@as("Parameters") parameters: option<constraintParameters>,
@as("ProductId") productId: option<id>,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: status,
@as("ConstraintParameters") constraintParameters: constraintParameters,
@as("ConstraintDetail") constraintDetail: constraintDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateConstraintCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("Description") description: serviceActionDescription,
@as("Definition") definition: serviceActionDefinitionMap,
@as("Name") name: serviceActionName,
@as("Id") id: option<id>
}
  type response = {
@as("ServiceActionDetail") serviceActionDetail: serviceActionDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateServiceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProduct = {
  type t;
  type request = {
@as("RemoveTags") removeTags: tagKeys,
@as("AddTags") addTags: addTags,
@as("SupportUrl") supportUrl: supportUrl,
@as("SupportEmail") supportEmail: supportEmail,
@as("SupportDescription") supportDescription: supportDescription,
@as("Distributor") distributor: productViewOwner,
@as("Description") description: productViewShortDescription,
@as("Owner") owner: productViewOwner,
@as("Name") name: productViewName,
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Tags") tags: tags,
@as("ProductViewDetail") productViewDetail: productViewDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePortfolio = {
  type t;
  type request = {
@as("RemoveTags") removeTags: tagKeys,
@as("AddTags") addTags: addTags,
@as("ProviderName") providerName: providerName,
@as("Description") description: portfolioDescription,
@as("DisplayName") displayName: portfolioDisplayName,
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Tags") tags: tags,
@as("PortfolioDetail") portfolioDetail: portfolioDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdatePortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ScanProvisionedProducts = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("AccessLevelFilter") accessLevelFilter: accessLevelFilter,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ProvisionedProducts") provisionedProducts: provisionedProductDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ScanProvisionedProductsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagOptions = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("Filters") filters: listTagOptionsFilters
}
  type response = {
@as("PageToken") pageToken: pageToken,
@as("TagOptionDetails") tagOptionDetails: tagOptionDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListTagOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListStackInstancesForProvisionedProduct = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("PageToken") pageToken: pageToken,
@as("ProvisionedProductId") provisionedProductId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("StackInstances") stackInstances: stackInstances
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListStackInstancesForProvisionedProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServiceActionsForProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ServiceActionSummaries") serviceActionSummaries: serviceActionSummaries
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListServiceActionsForProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListServiceActions = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ServiceActionSummaries") serviceActionSummaries: serviceActionSummaries
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListServiceActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResourcesForTagOption = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("ResourceType") resourceType: resourceType,
@as("TagOptionId") tagOptionId: option<tagOptionId>
}
  type response = {
@as("PageToken") pageToken: pageToken,
@as("ResourceDetails") resourceDetails: resourceDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListResourcesForTagOptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProvisioningArtifacts = {
  type t;
  type request = {
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ProvisioningArtifactDetails") provisioningArtifactDetails: provisioningArtifactDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListProvisioningArtifactsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProvisionedProductPlans = {
  type t;
  type request = {
@as("AccessLevelFilter") accessLevelFilter: accessLevelFilter,
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("ProvisionProductId") provisionProductId: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ProvisionedProductPlans") provisionedProductPlans: provisionedProductPlans
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListProvisionedProductPlansCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPrincipalsForPortfolio = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("Principals") principals: principals
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPrincipalsForPortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPortfoliosForProduct = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("PageToken") pageToken: pageToken,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("PortfolioDetails") portfolioDetails: portfolioDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPortfoliosForProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPortfolios = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("PageToken") pageToken: pageToken,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("PortfolioDetails") portfolioDetails: portfolioDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListPortfoliosCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationPortfolioAccess = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("PageToken") pageToken: pageToken,
@as("OrganizationNodeType") organizationNodeType: option<organizationNodeType>,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("OrganizationNodes") organizationNodes: organizationNodes
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListOrganizationPortfolioAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListConstraintsForPortfolio = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("ProductId") productId: id,
@as("PortfolioId") portfolioId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ConstraintDetails") constraintDetails: constraintDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListConstraintsForPortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBudgetsForResource = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("ResourceId") resourceId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("Budgets") budgets: budgets
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListBudgetsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAcceptedPortfolioShares = {
  type t;
  type request = {
@as("PortfolioShareType") portfolioShareType: portfolioShareType,
@as("PageSize") pageSize: pageSize,
@as("PageToken") pageToken: pageToken,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("PortfolioDetails") portfolioDetails: portfolioDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListAcceptedPortfolioSharesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProvisionedProductOutputs = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("OutputKeys") outputKeys: outputKeys,
@as("ProvisionedProductName") provisionedProductName: provisionedProductName,
@as("ProvisionedProductId") provisionedProductId: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("Outputs") outputs: recordOutputs
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "GetProvisionedProductOutputsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("Id") id: option<id>
}
  type response = {
@as("ServiceActionDetail") serviceActionDetail: serviceActionDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeServiceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisionedProduct = {
  type t;
  type request = {
@as("Name") name: provisionedProductName,
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("CloudWatchDashboards") cloudWatchDashboards: cloudWatchDashboards,
@as("ProvisionedProductDetail") provisionedProductDetail: provisionedProductDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisionedProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProductView = {
  type t;
  type request = {
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("ProvisioningArtifacts") provisioningArtifacts: provisioningArtifacts,
@as("ProductViewSummary") productViewSummary: productViewSummary
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProductViewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProduct = {
  type t;
  type request = {
@as("Name") name: productViewName,
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("LaunchPaths") launchPaths: launchPaths,
@as("Budgets") budgets: budgets,
@as("ProvisioningArtifacts") provisioningArtifacts: provisioningArtifacts,
@as("ProductViewSummary") productViewSummary: productViewSummary
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePortfolioShares = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSizeMax100,
@as("PageToken") pageToken: pageToken,
@as("Type") type_: option<describePortfolioShareType>,
@as("PortfolioId") portfolioId: option<id>
}
  type response = {
@as("PortfolioShareDetails") portfolioShareDetails: portfolioShareDetails,
@as("NextPageToken") nextPageToken: pageToken
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribePortfolioSharesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePortfolio = {
  type t;
  type request = {
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Budgets") budgets: budgets,
@as("TagOptions") tagOptions: tagOptionDetails,
@as("Tags") tags: tags,
@as("PortfolioDetail") portfolioDetail: portfolioDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribePortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateServiceAction = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("Description") description: serviceActionDescription,
@as("Definition") definition: option<serviceActionDefinitionMap>,
@as("DefinitionType") definitionType: option<serviceActionDefinitionType>,
@as("Name") name: option<serviceActionName>
}
  type response = {
@as("ServiceActionDetail") serviceActionDetail: serviceActionDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateServiceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProvisioningArtifact = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("Parameters") parameters: option<provisioningArtifactProperties>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Status") status: status,
@as("Info") info: provisioningArtifactInfo,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: provisioningArtifactDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProvisionedProductPlan = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("ProvisioningParameters") provisioningParameters: updateProvisioningParameters,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductName>,
@as("ProductId") productId: option<id>,
@as("PathId") pathId: id,
@as("NotificationArns") notificationArns: notificationArns,
@as("PlanType") planType: option<provisionedProductPlanType>,
@as("PlanName") planName: option<provisionedProductPlanName>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProvisionedProductName") provisionedProductName: provisionedProductName,
@as("ProvisionProductId") provisionProductId: id,
@as("PlanId") planId: id,
@as("PlanName") planName: provisionedProductPlanName
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateProvisionedProductPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProduct = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("ProvisioningArtifactParameters") provisioningArtifactParameters: option<provisioningArtifactProperties>,
@as("Tags") tags: addTags,
@as("ProductType") productType: option<productType>,
@as("SupportUrl") supportUrl: supportUrl,
@as("SupportEmail") supportEmail: supportEmail,
@as("SupportDescription") supportDescription: supportDescription,
@as("Distributor") distributor: productViewOwner,
@as("Description") description: productViewShortDescription,
@as("Owner") owner: option<productViewOwner>,
@as("Name") name: option<productViewName>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Tags") tags: tags,
@as("ProvisioningArtifactDetail") provisioningArtifactDetail: provisioningArtifactDetail,
@as("ProductViewDetail") productViewDetail: productViewDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreateProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePortfolio = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("Tags") tags: addTags,
@as("ProviderName") providerName: option<providerName>,
@as("Description") description: portfolioDescription,
@as("DisplayName") displayName: option<portfolioDisplayName>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Tags") tags: tags,
@as("PortfolioDetail") portfolioDetail: portfolioDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CreatePortfolioCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopyProduct = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("CopyOptions") copyOptions: copyOptions,
@as("SourceProvisioningArtifactIdentifiers") sourceProvisioningArtifactIdentifiers: sourceProvisioningArtifactProperties,
@as("TargetProductName") targetProductName: productViewName,
@as("TargetProductId") targetProductId: id,
@as("SourceProductArn") sourceProductArn: option<productArn>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("CopyProductToken") copyProductToken: id
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "CopyProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateServiceActionFromProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("ServiceActionAssociations") serviceActionAssociations: option<serviceActionAssociations>
}
  type response = {
@as("FailedServiceActionAssociations") failedServiceActionAssociations: failedServiceActionAssociations
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "BatchDisassociateServiceActionFromProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateServiceActionWithProvisioningArtifact = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("ServiceActionAssociations") serviceActionAssociations: option<serviceActionAssociations>
}
  type response = {
@as("FailedServiceActionAssociations") failedServiceActionAssociations: failedServiceActionAssociations
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "BatchAssociateServiceActionWithProvisioningArtifactCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProvisionedProduct = {
  type t;
  type request = {
@as("UpdateToken") updateToken: option<idempotencyToken>,
@as("Tags") tags: tags,
@as("ProvisioningPreferences") provisioningPreferences: updateProvisioningPreferences,
@as("ProvisioningParameters") provisioningParameters: updateProvisioningParameters,
@as("PathName") pathName: portfolioDisplayName,
@as("PathId") pathId: id,
@as("ProvisioningArtifactName") provisioningArtifactName: provisioningArtifactName,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductName") productName: productViewName,
@as("ProductId") productId: id,
@as("ProvisionedProductId") provisionedProductId: id,
@as("ProvisionedProductName") provisionedProductName: provisionedProductNameOrArn,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("RecordDetail") recordDetail: recordDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "UpdateProvisionedProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TerminateProvisionedProduct = {
  type t;
  type request = {
@as("RetainPhysicalResources") retainPhysicalResources: retainPhysicalResources,
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("IgnoreErrors") ignoreErrors: ignoreErrors,
@as("TerminateToken") terminateToken: option<idempotencyToken>,
@as("ProvisionedProductId") provisionedProductId: id,
@as("ProvisionedProductName") provisionedProductName: provisionedProductNameOrArn
}
  type response = {
@as("RecordDetail") recordDetail: recordDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "TerminateProvisionedProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchProductsAsAdmin = {
  type t;
  type request = {
@as("ProductSource") productSource: productSource,
@as("PageSize") pageSize: pageSize,
@as("PageToken") pageToken: pageToken,
@as("SortOrder") sortOrder: sortOrder,
@as("SortBy") sortBy: productViewSortBy,
@as("Filters") filters: productViewFilters,
@as("PortfolioId") portfolioId: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ProductViewDetails") productViewDetails: productViewDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "SearchProductsAsAdminCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchProducts = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("SortOrder") sortOrder: sortOrder,
@as("SortBy") sortBy: productViewSortBy,
@as("PageSize") pageSize: pageSize,
@as("Filters") filters: productViewFilters,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ProductViewAggregations") productViewAggregations: productViewAggregations,
@as("ProductViewSummaries") productViewSummaries: productViewSummaries
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "SearchProductsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ProvisionProduct = {
  type t;
  type request = {
@as("ProvisionToken") provisionToken: option<idempotencyToken>,
@as("NotificationArns") notificationArns: notificationArns,
@as("Tags") tags: tags,
@as("ProvisioningPreferences") provisioningPreferences: provisioningPreferences,
@as("ProvisioningParameters") provisioningParameters: provisioningParameters,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductName>,
@as("PathName") pathName: portfolioDisplayName,
@as("PathId") pathId: id,
@as("ProvisioningArtifactName") provisioningArtifactName: provisioningArtifactName,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductName") productName: productViewName,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("RecordDetail") recordDetail: recordDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ProvisionProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProvisioningArtifactsForServiceAction = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("ServiceActionId") serviceActionId: option<id>
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ProvisioningArtifactViews") provisioningArtifactViews: provisioningArtifactViews
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListProvisioningArtifactsForServiceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportAsProvisionedProduct = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("PhysicalId") physicalId: option<physicalId>,
@as("ProvisionedProductName") provisionedProductName: option<provisionedProductName>,
@as("ProvisioningArtifactId") provisioningArtifactId: option<id>,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("RecordDetail") recordDetail: recordDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ImportAsProvisionedProductCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExecuteProvisionedProductServiceAction = {
  type t;
  type request = {
@as("Parameters") parameters: executionParameterMap,
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("ExecuteToken") executeToken: option<idempotencyToken>,
@as("ServiceActionId") serviceActionId: option<id>,
@as("ProvisionedProductId") provisionedProductId: option<id>
}
  type response = {
@as("RecordDetail") recordDetail: recordDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ExecuteProvisionedProductServiceActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExecuteProvisionedProductPlan = {
  type t;
  type request = {
@as("IdempotencyToken") idempotencyToken: option<idempotencyToken>,
@as("PlanId") planId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("RecordDetail") recordDetail: recordDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ExecuteProvisionedProductPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServiceActionExecutionParameters = {
  type t;
  type request = {
@as("AcceptLanguage") acceptLanguage: acceptLanguage,
@as("ServiceActionId") serviceActionId: option<id>,
@as("ProvisionedProductId") provisionedProductId: option<id>
}
  type response = {
@as("ServiceActionParameters") serviceActionParameters: executionParameters
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeServiceActionExecutionParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRecord = {
  type t;
  type request = {
@as("PageSize") pageSize: pageSize,
@as("PageToken") pageToken: pageToken,
@as("Id") id: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("RecordOutputs") recordOutputs: recordOutputs,
@as("RecordDetail") recordDetail: recordDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeRecordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProductAsAdmin = {
  type t;
  type request = {
@as("SourcePortfolioId") sourcePortfolioId: id,
@as("Name") name: productViewName,
@as("Id") id: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("Budgets") budgets: budgets,
@as("TagOptions") tagOptions: tagOptionDetails,
@as("Tags") tags: tags,
@as("ProvisioningArtifactSummaries") provisioningArtifactSummaries: provisioningArtifactSummaries,
@as("ProductViewDetail") productViewDetail: productViewDetail
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProductAsAdminCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchProvisionedProducts = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: searchProvisionedProductsPageSize,
@as("SortOrder") sortOrder: sortOrder,
@as("SortBy") sortBy: sortField,
@as("Filters") filters: provisionedProductFilters,
@as("AccessLevelFilter") accessLevelFilter: accessLevelFilter,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("TotalResultsCount") totalResultsCount: totalResultsCount,
@as("ProvisionedProducts") provisionedProducts: provisionedProductAttributes
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "SearchProvisionedProductsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecordHistory = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("SearchFilter") searchFilter: listRecordHistorySearchFilter,
@as("AccessLevelFilter") accessLevelFilter: accessLevelFilter,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("RecordDetails") recordDetails: recordDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListRecordHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLaunchPaths = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("ProductId") productId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("LaunchPathSummaries") launchPathSummaries: launchPathSummaries
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "ListLaunchPathsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisioningParameters = {
  type t;
  type request = {
@as("PathName") pathName: portfolioDisplayName,
@as("PathId") pathId: id,
@as("ProvisioningArtifactName") provisioningArtifactName: provisioningArtifactName,
@as("ProvisioningArtifactId") provisioningArtifactId: id,
@as("ProductName") productName: productViewName,
@as("ProductId") productId: id,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("ProvisioningArtifactOutputs") provisioningArtifactOutputs: provisioningArtifactOutputs,
@as("ProvisioningArtifactPreferences") provisioningArtifactPreferences: provisioningArtifactPreferences,
@as("TagOptions") tagOptions: tagOptionSummaries,
@as("UsageInstructions") usageInstructions: usageInstructions,
@as("ConstraintSummaries") constraintSummaries: constraintSummaries,
@as("ProvisioningArtifactParameters") provisioningArtifactParameters: provisioningArtifactParameters
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisioningParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePortfolioShareStatus = {
  type t;
  type request = {
@as("PortfolioShareToken") portfolioShareToken: option<id>
}
  type response = {
@as("ShareDetails") shareDetails: shareDetails,
@as("Status") status: shareStatus,
@as("OrganizationNodeValue") organizationNodeValue: organizationNodeValue,
@as("PortfolioId") portfolioId: id,
@as("PortfolioShareToken") portfolioShareToken: id
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribePortfolioShareStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeProvisionedProductPlan = {
  type t;
  type request = {
@as("PageToken") pageToken: pageToken,
@as("PageSize") pageSize: pageSize,
@as("PlanId") planId: option<id>,
@as("AcceptLanguage") acceptLanguage: acceptLanguage
}
  type response = {
@as("NextPageToken") nextPageToken: pageToken,
@as("ResourceChanges") resourceChanges: resourceChanges,
@as("ProvisionedProductPlanDetails") provisionedProductPlanDetails: provisionedProductPlanDetails
}
  @module("@aws-sdk/client-servicecatalog") @new external new_: (request) => t = "DescribeProvisionedProductPlanCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
