type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-iotsitewise") @new external createClient: unit => awsServiceClient = "IoTSiteWiseClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type variableName = string
type url = string
type traversalType = [@as("PATH_TO_ROOT") #PATH_TO_ROOT]
type traversalDirection = [@as("CHILD") #CHILD | @as("PARENT") #PARENT]
type timestamp_ = Js.Date.t;
type timeOrdering = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type timeInSeconds = float
type tagValue = string
type tagKey = string
type ssoapplicationId = string
type resourceType = [@as("PROJECT") #PROJECT | @as("PORTAL") #PORTAL]
type resourceId = string
type resourceArn = string
type resolution = string
type quality = [@as("UNCERTAIN") #UNCERTAIN | @as("BAD") #BAD | @as("GOOD") #GOOD]
type propertyValueStringValue = string
type propertyValueIntegerValue = int
type propertyValueDoubleValue = float
type propertyValueBooleanValue = bool
type propertyUnit = string
type propertyNotificationTopic = string
type propertyNotificationState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type propertyDataType = [@as("STRUCT") #STRUCT | @as("BOOLEAN") #BOOLEAN | @as("DOUBLE") #DOUBLE | @as("INTEGER") #INTEGER | @as("STRING") #STRING]
type propertyAlias = string
type portalState = [@as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type portalClientId = string
type permission = [@as("VIEWER") #VIEWER | @as("ADMINISTRATOR") #ADMINISTRATOR]
type offsetInNanos = int
type nextToken = string
type name = string
type monitorErrorMessage = string
type monitorErrorCode = [@as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED | @as("VALIDATION_ERROR") #VALIDATION_ERROR | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE]
type measurement = unit
type maxResults = int
type maxInterpolatedResults = int
type macro = string
type loggingLevel = [@as("OFF") #OFF | @as("INFO") #INFO | @as("ERROR") #ERROR]
type listAssetsFilter = [@as("TOP_LEVEL") #TOP_LEVEL | @as("ALL") #ALL]
type kmsKeyId = string
type intervalInSeconds = float
type interval = string
type interpolationType = string
type imageFileType = [@as("PNG") #PNG]
type imageFileData = NodeJs.Buffer.t
type identityType = [@as("IAM") #IAM | @as("GROUP") #GROUP | @as("USER") #USER]
type identityId = string
type id = string
type expression = string
type exceptionMessage = string
type errorMessage = string
type errorCode = [@as("INTERNAL_FAILURE") #INTERNAL_FAILURE | @as("VALIDATION_ERROR") #VALIDATION_ERROR]
type entryId = string
type encryptionType = [@as("KMS_BASED_ENCRYPTION") #KMS_BASED_ENCRYPTION | @as("SITEWISE_DEFAULT_ENCRYPTION") #SITEWISE_DEFAULT_ENCRYPTION]
type email = string
type description = string
type defaultValue = string
type dashboardDefinition = string
type configurationState = [@as("UPDATE_FAILED") #UPDATE_FAILED | @as("UPDATE_IN_PROGRESS") #UPDATE_IN_PROGRESS | @as("ACTIVE") #ACTIVE]
type clientToken = string
type capabilitySyncStatus = [@as("SYNC_FAILED") #SYNC_FAILED | @as("OUT_OF_SYNC") #OUT_OF_SYNC | @as("IN_SYNC") #IN_SYNC]
type capabilityNamespace = string
type capabilityConfiguration = string
type batchPutAssetPropertyValueErrorCode = [@as("AccessDeniedException") #AccessDeniedException | @as("TimestampOutOfRangeException") #TimestampOutOfRangeException | @as("ConflictingOperationException") #ConflictingOperationException | @as("LimitExceededException") #LimitExceededException | @as("ThrottlingException") #ThrottlingException | @as("ServiceUnavailableException") #ServiceUnavailableException | @as("InternalFailureException") #InternalFailureException | @as("InvalidRequestException") #InvalidRequestException | @as("ResourceNotFoundException") #ResourceNotFoundException]
type authMode = [@as("SSO") #SSO | @as("IAM") #IAM]
type assetState = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type assetRelationshipType = [@as("HIERARCHY") #HIERARCHY]
type assetPropertyAlias = string
type assetModelState = [@as("FAILED") #FAILED | @as("DELETING") #DELETING | @as("PROPAGATING") #PROPAGATING | @as("UPDATING") #UPDATING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type assetErrorMessage = string
type assetErrorCode = [@as("INTERNAL_FAILURE") #INTERNAL_FAILURE]
type amazonResourceName = string
type aggregatedDoubleValue = float
type aggregateType = [@as("STANDARD_DEVIATION") #STANDARD_DEVIATION | @as("SUM") #SUM | @as("MINIMUM") #MINIMUM | @as("MAXIMUM") #MAXIMUM | @as("COUNT") #COUNT | @as("AVERAGE") #AVERAGE]
type arn = string
type variant = {
booleanValue: option<propertyValueBooleanValue>,
  doubleValue: option<propertyValueDoubleValue>,
  integerValue: option<propertyValueIntegerValue>,
  stringValue: option<propertyValueStringValue>
}
type variableValue = {
hierarchyId: option<macro>,
  propertyId: macro
}
type userIdentity = {
id: identityId
}
type tumblingWindow = {
interval: interval
}
type timeInNanos = {
offsetInNanos: option<offsetInNanos>,
  timeInSeconds: timeInSeconds
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type qualities = array<quality>
type propertyNotification = {
state: propertyNotificationState,
  topic: propertyNotificationTopic
}
type projectSummary = {
lastUpdateDate: option<timestamp_>,
  creationDate: option<timestamp_>,
  description: option<description>,
  name: name,
  id: id
}
type projectResource = {
id: id
}
type portalResource = {
id: id
}
type monitorErrorDetails = {
message: option<monitorErrorMessage>,
  code: option<monitorErrorCode>
}
type loggingOptions = {
level: loggingLevel
}
type imageLocation = {
url: url,
  id: id
}
type imageFile = {
@as("type") type_: imageFileType,
  data: imageFileData
}
type ids = array<id>
type iamuserIdentity = {
arn: arn
}
type iamroleIdentity = {
arn: arn
}
type groupIdentity = {
id: identityId
}
type greengrass = {
groupArn: arn
}
type gatewayCapabilitySummary = {
capabilitySyncStatus: capabilitySyncStatus,
  capabilityNamespace: capabilityNamespace
}
type errorDetails = {
message: errorMessage,
  code: errorCode
}
type dashboardSummary = {
lastUpdateDate: option<timestamp_>,
  creationDate: option<timestamp_>,
  description: option<description>,
  name: name,
  id: id
}
type configurationErrorDetails = {
message: errorMessage,
  code: errorCode
}
type attribute = {
defaultValue: option<defaultValue>
}
type assetModelHierarchyDefinition = {
childAssetModelId: id,
  name: name
}
type assetModelHierarchy = {
childAssetModelId: id,
  name: name,
  id: option<id>
}
type assetIDs = array<id>
type assetHierarchyInfo = {
childAssetId: option<id>,
  parentAssetId: option<id>
}
type assetHierarchy = {
name: name,
  id: option<id>
}
type assetErrorDetails = {
message: assetErrorMessage,
  code: assetErrorCode,
  assetId: id
}
type alarms = {
notificationLambdaArn: option<arn>,
  alarmRoleArn: arn
}
type aggregates = {
standardDeviation: option<aggregatedDoubleValue>,
  sum: option<aggregatedDoubleValue>,
  minimum: option<aggregatedDoubleValue>,
  maximum: option<aggregatedDoubleValue>,
  count: option<aggregatedDoubleValue>,
  average: option<aggregatedDoubleValue>
}
type aggregateTypes = array<aggregateType>
type timestamps = array<timeInNanos>
type resource = {
project: option<projectResource>,
  portal: option<portalResource>
}
type projectSummaries = array<projectSummary>
type portalStatus = {
error: option<monitorErrorDetails>,
  state: portalState
}
type metricWindow = {
tumbling: option<tumblingWindow>
}
type interpolatedAssetPropertyValue = {
value: variant,
  @as("timestamp") timestamp_: timeInNanos
}
type image = {
file: option<imageFile>,
  id: option<id>
}
type identity = {
iamRole: option<iamroleIdentity>,
  iamUser: option<iamuserIdentity>,
  group: option<groupIdentity>,
  user: option<userIdentity>
}
type gatewayPlatform = {
greengrass: greengrass
}
type gatewayCapabilitySummaries = array<gatewayCapabilitySummary>
type expressionVariable = {
value: variableValue,
  name: variableName
}
type dashboardSummaries = array<dashboardSummary>
type configurationStatus = {
error: option<configurationErrorDetails>,
  state: configurationState
}
type batchDisassociateProjectAssetsErrors = array<assetErrorDetails>
type batchAssociateProjectAssetsErrors = array<assetErrorDetails>
type assetStatus = {
error: option<errorDetails>,
  state: assetState
}
type assetRelationshipSummary = {
relationshipType: assetRelationshipType,
  hierarchyInfo: option<assetHierarchyInfo>
}
type assetPropertyValue = {
quality: option<quality>,
  @as("timestamp") timestamp_: timeInNanos,
  value: variant
}
type assetProperty = {
@as("unit") unit_: option<propertyUnit>,
  dataTypeSpec: option<name>,
  dataType: propertyDataType,
  notification: option<propertyNotification>,
  alias: option<propertyAlias>,
  name: name,
  id: id
}
type assetModelStatus = {
error: option<errorDetails>,
  state: assetModelState
}
type assetModelHierarchyDefinitions = array<assetModelHierarchyDefinition>
type assetModelHierarchies = array<assetModelHierarchy>
type assetHierarchies = array<assetHierarchy>
type aggregatedValue = {
value: aggregates,
  quality: option<quality>,
  @as("timestamp") timestamp_: timestamp_
}
type portalSummary = {
status: portalStatus,
  roleArn: option<arn>,
  lastUpdateDate: option<timestamp_>,
  creationDate: option<timestamp_>,
  startUrl: url,
  description: option<description>,
  name: name,
  id: id
}
type interpolatedAssetPropertyValues = array<interpolatedAssetPropertyValue>
type gatewaySummary = {
lastUpdateDate: timestamp_,
  creationDate: timestamp_,
  gatewayCapabilitySummaries: option<gatewayCapabilitySummaries>,
  gatewayName: name,
  gatewayId: id
}
type expressionVariables = array<expressionVariable>
type batchPutAssetPropertyError = {
timestamps: timestamps,
  errorMessage: errorMessage,
  errorCode: batchPutAssetPropertyValueErrorCode
}
type associatedAssetsSummary = {
hierarchies: assetHierarchies,
  status: assetStatus,
  lastUpdateDate: timestamp_,
  creationDate: timestamp_,
  assetModelId: id,
  name: name,
  arn: arn,
  id: id
}
type assetSummary = {
hierarchies: assetHierarchies,
  status: assetStatus,
  lastUpdateDate: timestamp_,
  creationDate: timestamp_,
  assetModelId: id,
  name: name,
  arn: arn,
  id: id
}
type assetRelationshipSummaries = array<assetRelationshipSummary>
type assetPropertyValues = array<assetPropertyValue>
type assetPropertyValueHistory = array<assetPropertyValue>
type assetProperties = array<assetProperty>
type assetModelSummary = {
status: assetModelStatus,
  lastUpdateDate: timestamp_,
  creationDate: timestamp_,
  description: description,
  name: name,
  arn: arn,
  id: id
}
type aggregatedValues = array<aggregatedValue>
type accessPolicySummary = {
lastUpdateDate: option<timestamp_>,
  creationDate: option<timestamp_>,
  permission: permission,
  resource: resource,
  identity: identity,
  id: id
}
type transform = {
variables: expressionVariables,
  expression: expression
}
type putAssetPropertyValueEntry = {
propertyValues: assetPropertyValues,
  propertyAlias: option<assetPropertyAlias>,
  propertyId: option<id>,
  assetId: option<id>,
  entryId: entryId
}
type portalSummaries = array<portalSummary>
type metric = {
window: metricWindow,
  variables: expressionVariables,
  expression: expression
}
type gatewaySummaries = array<gatewaySummary>
type batchPutAssetPropertyErrors = array<batchPutAssetPropertyError>
type associatedAssetsSummaries = array<associatedAssetsSummary>
type assetSummaries = array<assetSummary>
type assetModelSummaries = array<assetModelSummary>
type assetCompositeModel = {
properties: assetProperties,
  @as("type") type_: name,
  description: option<description>,
  name: name
}
type accessPolicySummaries = array<accessPolicySummary>
type putAssetPropertyValueEntries = array<putAssetPropertyValueEntry>
type propertyType = {
metric: option<metric>,
  transform: option<transform>,
  measurement: option<measurement>,
  attribute: option<attribute>
}
type batchPutAssetPropertyErrorEntry = {
errors: batchPutAssetPropertyErrors,
  entryId: entryId
}
type assetCompositeModels = array<assetCompositeModel>
type property = {
@as("type") type_: option<propertyType>,
  @as("unit") unit_: option<propertyUnit>,
  dataType: propertyDataType,
  notification: option<propertyNotification>,
  alias: option<propertyAlias>,
  name: name,
  id: id
}
type batchPutAssetPropertyErrorEntries = array<batchPutAssetPropertyErrorEntry>
type assetModelPropertyDefinition = {
@as("type") type_: propertyType,
  @as("unit") unit_: option<propertyUnit>,
  dataTypeSpec: option<name>,
  dataType: propertyDataType,
  name: name
}
type assetModelProperty = {
@as("type") type_: propertyType,
  @as("unit") unit_: option<propertyUnit>,
  dataTypeSpec: option<name>,
  dataType: propertyDataType,
  name: name,
  id: option<id>
}
type compositeModelProperty = {
assetProperty: property,
  @as("type") type_: name,
  name: name
}
type assetModelPropertyDefinitions = array<assetModelPropertyDefinition>
type assetModelProperties = array<assetModelProperty>
type assetModelCompositeModelDefinition = {
properties: option<assetModelPropertyDefinitions>,
  @as("type") type_: name,
  description: option<description>,
  name: name
}
type assetModelCompositeModel = {
properties: option<assetModelProperties>,
  @as("type") type_: name,
  description: option<description>,
  name: name
}
type assetModelCompositeModels = array<assetModelCompositeModel>
type assetModelCompositeModelDefinitions = array<assetModelCompositeModelDefinition>

module UpdateProject = {
  type t;
  type request = {
clientToken: option<clientToken>,
  projectDescription: option<description>,
  projectName: name,
  projectId: id
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewayCapabilityConfiguration = {
  type t;
  type request = {
capabilityConfiguration: capabilityConfiguration,
  capabilityNamespace: capabilityNamespace,
  gatewayId: id
}
  type response = {
capabilitySyncStatus: capabilitySyncStatus,
  capabilityNamespace: capabilityNamespace
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateGatewayCapabilityConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateGateway = {
  type t;
  type request = {
gatewayName: name,
  gatewayId: id
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateDashboard = {
  type t;
  type request = {
clientToken: option<clientToken>,
  dashboardDefinition: dashboardDefinition,
  dashboardDescription: option<description>,
  dashboardName: name,
  dashboardId: id
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAssetProperty = {
  type t;
  type request = {
clientToken: option<clientToken>,
  propertyNotificationState: option<propertyNotificationState>,
  propertyAlias: option<propertyAlias>,
  propertyId: id,
  assetId: id
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAssetPropertyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisassociateAssets = {
  type t;
  type request = {
clientToken: option<clientToken>,
  childAssetId: id,
  hierarchyId: id,
  assetId: id
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DisassociateAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeProject = {
  type t;
  type request = {
projectId: id
}
  type response = {
projectLastUpdateDate: timestamp_,
  projectCreationDate: timestamp_,
  projectDescription: option<description>,
  portalId: id,
  projectName: name,
  projectArn: arn,
  projectId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGatewayCapabilityConfiguration = {
  type t;
  type request = {
capabilityNamespace: capabilityNamespace,
  gatewayId: id
}
  type response = {
capabilitySyncStatus: capabilitySyncStatus,
  capabilityConfiguration: capabilityConfiguration,
  capabilityNamespace: capabilityNamespace,
  gatewayId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeGatewayCapabilityConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDashboard = {
  type t;
  type request = {
dashboardId: id
}
  type response = {
dashboardLastUpdateDate: timestamp_,
  dashboardCreationDate: timestamp_,
  dashboardDefinition: dashboardDefinition,
  dashboardDescription: option<description>,
  projectId: id,
  dashboardName: name,
  dashboardArn: arn,
  dashboardId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
clientToken: option<clientToken>,
  projectId: id
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteGateway = {
  type t;
  type request = {
gatewayId: id
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDashboard = {
  type t;
  type request = {
clientToken: option<clientToken>,
  dashboardId: id
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAccessPolicy = {
  type t;
  type request = {
clientToken: option<clientToken>,
  accessPolicyId: id
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateAssets = {
  type t;
  type request = {
clientToken: option<clientToken>,
  childAssetId: id,
  hierarchyId: id,
  assetId: id
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "AssociateAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutLoggingOptions = {
  type t;
  type request = {
loggingOptions: loggingOptions
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "PutLoggingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: amazonResourceName
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProjectAssets = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  projectId: id
}
  type response = {
nextToken: option<nextToken>,
  assetIds: assetIDs
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListProjectAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLoggingOptions = {
  type t;
  type request = unit
  type response = {
loggingOptions: loggingOptions
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeLoggingOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
tags: option<tagMap>,
  clientToken: option<clientToken>,
  projectDescription: option<description>,
  projectName: name,
  portalId: id
}
  type response = {
projectArn: arn,
  projectId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDashboard = {
  type t;
  type request = {
tags: option<tagMap>,
  clientToken: option<clientToken>,
  dashboardDefinition: dashboardDefinition,
  dashboardDescription: option<description>,
  dashboardName: name,
  projectId: id
}
  type response = {
dashboardArn: arn,
  dashboardId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateDashboardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePortal = {
  type t;
  type request = {
alarms: option<alarms>,
  notificationSenderEmail: option<email>,
  clientToken: option<clientToken>,
  roleArn: arn,
  portalLogoImage: option<image>,
  portalContactEmail: email,
  portalDescription: option<description>,
  portalName: name,
  portalId: id
}
  type response = {
portalStatus: portalStatus
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdatePortalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAsset = {
  type t;
  type request = {
clientToken: option<clientToken>,
  assetName: name,
  assetId: id
}
  type response = {
assetStatus: assetStatus
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAccessPolicy = {
  type t;
  type request = {
clientToken: option<clientToken>,
  accessPolicyPermission: permission,
  accessPolicyResource: resource,
  accessPolicyIdentity: identity,
  accessPolicyId: id
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutDefaultEncryptionConfiguration = {
  type t;
  type request = {
kmsKeyId: option<kmsKeyId>,
  encryptionType: encryptionType
}
  type response = {
configurationStatus: configurationStatus,
  kmsKeyArn: option<arn>,
  encryptionType: encryptionType
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "PutDefaultEncryptionConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  portalId: id
}
  type response = {
nextToken: option<nextToken>,
  projectSummaries: projectSummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDashboards = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  projectId: id
}
  type response = {
nextToken: option<nextToken>,
  dashboardSummaries: dashboardSummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListDashboardsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAssetPropertyValue = {
  type t;
  type request = {
propertyAlias: option<assetPropertyAlias>,
  propertyId: option<id>,
  assetId: option<id>
}
  type response = {
propertyValue: option<assetPropertyValue>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetAssetPropertyValueCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePortal = {
  type t;
  type request = {
portalId: id
}
  type response = {
alarms: option<alarms>,
  notificationSenderEmail: option<email>,
  portalAuthMode: option<authMode>,
  roleArn: option<arn>,
  portalLogoImageLocation: option<imageLocation>,
  portalLastUpdateDate: timestamp_,
  portalCreationDate: timestamp_,
  portalStatus: portalStatus,
  portalContactEmail: email,
  portalStartUrl: url,
  portalClientId: portalClientId,
  portalDescription: option<description>,
  portalName: name,
  portalArn: arn,
  portalId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribePortalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGateway = {
  type t;
  type request = {
gatewayId: id
}
  type response = {
lastUpdateDate: timestamp_,
  creationDate: timestamp_,
  gatewayCapabilitySummaries: gatewayCapabilitySummaries,
  gatewayPlatform: option<gatewayPlatform>,
  gatewayArn: arn,
  gatewayName: name,
  gatewayId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDefaultEncryptionConfiguration = {
  type t;
  type request = unit
  type response = {
configurationStatus: configurationStatus,
  kmsKeyArn: option<arn>,
  encryptionType: encryptionType
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeDefaultEncryptionConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAccessPolicy = {
  type t;
  type request = {
accessPolicyId: id
}
  type response = {
accessPolicyLastUpdateDate: timestamp_,
  accessPolicyCreationDate: timestamp_,
  accessPolicyPermission: permission,
  accessPolicyResource: resource,
  accessPolicyIdentity: identity,
  accessPolicyArn: arn,
  accessPolicyId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePortal = {
  type t;
  type request = {
clientToken: option<clientToken>,
  portalId: id
}
  type response = {
portalStatus: portalStatus
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeletePortalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAssetModel = {
  type t;
  type request = {
clientToken: option<clientToken>,
  assetModelId: id
}
  type response = {
assetModelStatus: assetModelStatus
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteAssetModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAsset = {
  type t;
  type request = {
clientToken: option<clientToken>,
  assetId: id
}
  type response = {
assetStatus: assetStatus
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePortal = {
  type t;
  type request = {
alarms: option<alarms>,
  notificationSenderEmail: option<email>,
  portalAuthMode: option<authMode>,
  tags: option<tagMap>,
  roleArn: arn,
  portalLogoImageFile: option<imageFile>,
  clientToken: option<clientToken>,
  portalContactEmail: email,
  portalDescription: option<description>,
  portalName: name
}
  type response = {
ssoApplicationId: ssoapplicationId,
  portalStatus: portalStatus,
  portalStartUrl: url,
  portalArn: arn,
  portalId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreatePortalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateGateway = {
  type t;
  type request = {
tags: option<tagMap>,
  gatewayPlatform: gatewayPlatform,
  gatewayName: name
}
  type response = {
gatewayArn: arn,
  gatewayId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAsset = {
  type t;
  type request = {
tags: option<tagMap>,
  clientToken: option<clientToken>,
  assetModelId: id,
  assetName: name
}
  type response = {
assetStatus: assetStatus,
  assetArn: arn,
  assetId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAccessPolicy = {
  type t;
  type request = {
tags: option<tagMap>,
  clientToken: option<clientToken>,
  accessPolicyPermission: permission,
  accessPolicyResource: resource,
  accessPolicyIdentity: identity
}
  type response = {
accessPolicyArn: arn,
  accessPolicyId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateAccessPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateProjectAssets = {
  type t;
  type request = {
clientToken: option<clientToken>,
  assetIds: ids,
  projectId: id
}
  type response = {
errors: option<batchDisassociateProjectAssetsErrors>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "BatchDisassociateProjectAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateProjectAssets = {
  type t;
  type request = {
clientToken: option<clientToken>,
  assetIds: ids,
  projectId: id
}
  type response = {
errors: option<batchAssociateProjectAssetsErrors>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "BatchAssociateProjectAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssetRelationships = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  traversalType: traversalType,
  assetId: id
}
  type response = {
nextToken: option<nextToken>,
  assetRelationshipSummaries: assetRelationshipSummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssetRelationshipsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInterpolatedAssetPropertyValues = {
  type t;
  type request = {
@as("type") type_: interpolationType,
  maxResults: option<maxInterpolatedResults>,
  nextToken: option<nextToken>,
  intervalInSeconds: intervalInSeconds,
  quality: quality,
  endTimeOffsetInNanos: option<offsetInNanos>,
  endTimeInSeconds: timeInSeconds,
  startTimeOffsetInNanos: option<offsetInNanos>,
  startTimeInSeconds: timeInSeconds,
  propertyAlias: option<assetPropertyAlias>,
  propertyId: option<id>,
  assetId: option<id>
}
  type response = {
nextToken: option<nextToken>,
  interpolatedAssetPropertyValues: interpolatedAssetPropertyValues
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetInterpolatedAssetPropertyValuesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAssetPropertyValueHistory = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  timeOrdering: option<timeOrdering>,
  qualities: option<qualities>,
  endDate: option<timestamp_>,
  startDate: option<timestamp_>,
  propertyAlias: option<assetPropertyAlias>,
  propertyId: option<id>,
  assetId: option<id>
}
  type response = {
nextToken: option<nextToken>,
  assetPropertyValueHistory: assetPropertyValueHistory
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetAssetPropertyValueHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAssetPropertyAggregates = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  timeOrdering: option<timeOrdering>,
  endDate: timestamp_,
  startDate: timestamp_,
  qualities: option<qualities>,
  resolution: resolution,
  aggregateTypes: aggregateTypes,
  propertyAlias: option<assetPropertyAlias>,
  propertyId: option<id>,
  assetId: option<id>
}
  type response = {
nextToken: option<nextToken>,
  aggregatedValues: aggregatedValues
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetAssetPropertyAggregatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPortals = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
  portalSummaries: option<portalSummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListPortalsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListGateways = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
  gatewaySummaries: gatewaySummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListGatewaysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedAssets = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  traversalDirection: option<traversalDirection>,
  hierarchyId: option<id>,
  assetId: id
}
  type response = {
nextToken: option<nextToken>,
  assetSummaries: associatedAssetsSummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssociatedAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssets = {
  type t;
  type request = {
filter: option<listAssetsFilter>,
  assetModelId: option<id>,
  maxResults: option<maxResults>,
  nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
  assetSummaries: assetSummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssetModels = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
  assetModelSummaries: assetModelSummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssetModelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAccessPolicies = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<nextToken>,
  iamArn: option<arn>,
  resourceId: option<id>,
  resourceType: option<resourceType>,
  identityId: option<identityId>,
  identityType: option<identityType>
}
  type response = {
nextToken: option<nextToken>,
  accessPolicySummaries: accessPolicySummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAccessPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAsset = {
  type t;
  type request = {
assetId: id
}
  type response = {
assetStatus: assetStatus,
  assetLastUpdateDate: timestamp_,
  assetCreationDate: timestamp_,
  assetCompositeModels: option<assetCompositeModels>,
  assetHierarchies: assetHierarchies,
  assetProperties: assetProperties,
  assetModelId: id,
  assetName: name,
  assetArn: arn,
  assetId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAssetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchPutAssetPropertyValue = {
  type t;
  type request = {
entries: putAssetPropertyValueEntries
}
  type response = {
errorEntries: batchPutAssetPropertyErrorEntries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "BatchPutAssetPropertyValueCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAssetProperty = {
  type t;
  type request = {
propertyId: id,
  assetId: id
}
  type response = {
compositeModel: option<compositeModelProperty>,
  assetProperty: option<property>,
  assetModelId: id,
  assetName: name,
  assetId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAssetPropertyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAssetModel = {
  type t;
  type request = {
clientToken: option<clientToken>,
  assetModelCompositeModels: option<assetModelCompositeModels>,
  assetModelHierarchies: option<assetModelHierarchies>,
  assetModelProperties: option<assetModelProperties>,
  assetModelDescription: option<description>,
  assetModelName: name,
  assetModelId: id
}
  type response = {
assetModelStatus: assetModelStatus
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAssetModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAssetModel = {
  type t;
  type request = {
assetModelId: id
}
  type response = {
assetModelStatus: assetModelStatus,
  assetModelLastUpdateDate: timestamp_,
  assetModelCreationDate: timestamp_,
  assetModelCompositeModels: option<assetModelCompositeModels>,
  assetModelHierarchies: assetModelHierarchies,
  assetModelProperties: assetModelProperties,
  assetModelDescription: description,
  assetModelName: name,
  assetModelArn: arn,
  assetModelId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAssetModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAssetModel = {
  type t;
  type request = {
tags: option<tagMap>,
  clientToken: option<clientToken>,
  assetModelCompositeModels: option<assetModelCompositeModelDefinitions>,
  assetModelHierarchies: option<assetModelHierarchyDefinitions>,
  assetModelProperties: option<assetModelPropertyDefinitions>,
  assetModelDescription: option<description>,
  assetModelName: name
}
  type response = {
assetModelStatus: assetModelStatus,
  assetModelArn: arn,
  assetModelId: id
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateAssetModelCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
