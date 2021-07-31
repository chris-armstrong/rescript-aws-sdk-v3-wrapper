type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type variableName = string
type url = string
type traversalType = [@as("PATH_TO_ROOT") #PATH_TO_ROOT]
type traversalDirection = [@as("CHILD") #CHILD | @as("PARENT") #PARENT]
type amazonawsTimestamp = Js.Date.t;
type timeOrdering = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type timeInSeconds = float;
type tagValue = string
type tagKey = string
type sSOApplicationId = string
type resourceType = [@as("PROJECT") #PROJECT | @as("PORTAL") #PORTAL]
type resourceId = string
type resourceArn = string
type resolution = string
type quality = [@as("UNCERTAIN") #UNCERTAIN | @as("BAD") #BAD | @as("GOOD") #GOOD]
type propertyValueStringValue = string
type propertyValueIntegerValue = int;
type propertyValueDoubleValue = float;
type propertyValueBooleanValue = bool;
type propertyUnit = string
type propertyNotificationTopic = string
type propertyNotificationState = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type propertyDataType = [@as("STRUCT") #STRUCT | @as("BOOLEAN") #BOOLEAN | @as("DOUBLE") #DOUBLE | @as("INTEGER") #INTEGER | @as("STRING") #STRING]
type propertyAlias = string
type portalState = [@as("FAILED") #FAILED | @as("ACTIVE") #ACTIVE | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("CREATING") #CREATING]
type portalClientId = string
type permission = [@as("VIEWER") #VIEWER | @as("ADMINISTRATOR") #ADMINISTRATOR]
type offsetInNanos = int;
type nextToken = string
type name = string
type monitorErrorMessage = string
type monitorErrorCode = [@as("LIMIT_EXCEEDED") #LIMIT_EXCEEDED | @as("VALIDATION_ERROR") #VALIDATION_ERROR | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE]
type measurement = unit
type maxResults = int;
type maxInterpolatedResults = int;
type macro = string
type loggingLevel = [@as("OFF") #OFF | @as("INFO") #INFO | @as("ERROR") #ERROR]
type listAssetsFilter = [@as("TOP_LEVEL") #TOP_LEVEL | @as("ALL") #ALL]
type kmsKeyId = string
type intervalInSeconds = float;
type interval = string
type interpolationType = string
type imageFileType = [@as("PNG") #PNG]
type imageFileData = NodeJs.Buffer.t;
type identityType = [@as("IAM") #IAM | @as("GROUP") #GROUP | @as("USER") #USER]
type identityId = string
type iD = string
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
type aggregatedDoubleValue = float;
type aggregateType = [@as("STANDARD_DEVIATION") #STANDARD_DEVIATION | @as("SUM") #SUM | @as("MINIMUM") #MINIMUM | @as("MAXIMUM") #MAXIMUM | @as("COUNT") #COUNT | @as("AVERAGE") #AVERAGE]
type aRN = string
type variant = {
@as("booleanValue") booleanValue: propertyValueBooleanValue,
@as("doubleValue") doubleValue: propertyValueDoubleValue,
@as("integerValue") integerValue: propertyValueIntegerValue,
@as("stringValue") stringValue: propertyValueStringValue
}
type variableValue = {
@as("hierarchyId") hierarchyId: macro,
@as("propertyId") propertyId: option<macro>
}
type userIdentity = {
@as("id") id: option<identityId>
}
type tumblingWindow = {
@as("interval") interval: option<interval>
}
type timeInNanos = {
@as("offsetInNanos") offsetInNanos: offsetInNanos,
@as("timeInSeconds") timeInSeconds: option<timeInSeconds>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type qualities = array<quality>
type propertyNotification = {
@as("state") state: option<propertyNotificationState>,
@as("topic") topic: option<propertyNotificationTopic>
}
type projectSummary = {
@as("lastUpdateDate") lastUpdateDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: option<name>,
@as("id") id: option<iD>
}
type projectResource = {
@as("id") id: option<iD>
}
type portalResource = {
@as("id") id: option<iD>
}
type monitorErrorDetails = {
@as("message") message: monitorErrorMessage,
@as("code") code: monitorErrorCode
}
type loggingOptions = {
@as("level") level: option<loggingLevel>
}
type imageLocation = {
@as("url") url: option<url>,
@as("id") id: option<iD>
}
type imageFile = {
@as("type") type_: option<imageFileType>,
@as("data") data: option<imageFileData>
}
type iDs = array<iD>
type iAMUserIdentity = {
@as("arn") arn: option<aRN>
}
type iAMRoleIdentity = {
@as("arn") arn: option<aRN>
}
type groupIdentity = {
@as("id") id: option<identityId>
}
type greengrass = {
@as("groupArn") groupArn: option<aRN>
}
type gatewayCapabilitySummary = {
@as("capabilitySyncStatus") capabilitySyncStatus: option<capabilitySyncStatus>,
@as("capabilityNamespace") capabilityNamespace: option<capabilityNamespace>
}
type errorDetails = {
@as("message") message: option<errorMessage>,
@as("code") code: option<errorCode>
}
type dashboardSummary = {
@as("lastUpdateDate") lastUpdateDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("description") description: description,
@as("name") name: option<name>,
@as("id") id: option<iD>
}
type configurationErrorDetails = {
@as("message") message: option<errorMessage>,
@as("code") code: option<errorCode>
}
type attribute = {
@as("defaultValue") defaultValue: defaultValue
}
type assetModelHierarchyDefinition = {
@as("childAssetModelId") childAssetModelId: option<iD>,
@as("name") name: option<name>
}
type assetModelHierarchy = {
@as("childAssetModelId") childAssetModelId: option<iD>,
@as("name") name: option<name>,
@as("id") id: iD
}
type assetIDs = array<iD>
type assetHierarchyInfo = {
@as("childAssetId") childAssetId: iD,
@as("parentAssetId") parentAssetId: iD
}
type assetHierarchy = {
@as("name") name: option<name>,
@as("id") id: iD
}
type assetErrorDetails = {
@as("message") message: option<assetErrorMessage>,
@as("code") code: option<assetErrorCode>,
@as("assetId") assetId: option<iD>
}
type alarms = {
@as("notificationLambdaArn") notificationLambdaArn: aRN,
@as("alarmRoleArn") alarmRoleArn: option<aRN>
}
type aggregates = {
@as("standardDeviation") standardDeviation: aggregatedDoubleValue,
@as("sum") sum: aggregatedDoubleValue,
@as("minimum") minimum: aggregatedDoubleValue,
@as("maximum") maximum: aggregatedDoubleValue,
@as("count") count: aggregatedDoubleValue,
@as("average") average: aggregatedDoubleValue
}
type aggregateTypes = array<aggregateType>
type timestamps = array<timeInNanos>
type resource = {
@as("project") project: projectResource,
@as("portal") portal: portalResource
}
type projectSummaries = array<projectSummary>
type portalStatus = {
@as("error") error: monitorErrorDetails,
@as("state") state: option<portalState>
}
type metricWindow = {
@as("tumbling") tumbling: tumblingWindow
}
type interpolatedAssetPropertyValue = {
@as("value") value: option<variant>,
@as("timestamp") timestamp: option<timeInNanos>
}
type image = {
@as("file") file: imageFile,
@as("id") id: iD
}
type identity = {
@as("iamRole") iamRole: iAMRoleIdentity,
@as("iamUser") iamUser: iAMUserIdentity,
@as("group") group: groupIdentity,
@as("user") user: userIdentity
}
type gatewayPlatform = {
@as("greengrass") greengrass: option<greengrass>
}
type gatewayCapabilitySummaries = array<gatewayCapabilitySummary>
type expressionVariable = {
@as("value") value: option<variableValue>,
@as("name") name: option<variableName>
}
type dashboardSummaries = array<dashboardSummary>
type configurationStatus = {
@as("error") error: configurationErrorDetails,
@as("state") state: option<configurationState>
}
type batchDisassociateProjectAssetsErrors = array<assetErrorDetails>
type batchAssociateProjectAssetsErrors = array<assetErrorDetails>
type assetStatus = {
@as("error") error: errorDetails,
@as("state") state: option<assetState>
}
type assetRelationshipSummary = {
@as("relationshipType") relationshipType: option<assetRelationshipType>,
@as("hierarchyInfo") hierarchyInfo: assetHierarchyInfo
}
type assetPropertyValue = {
@as("quality") quality: quality,
@as("timestamp") timestamp: option<timeInNanos>,
@as("value") value: option<variant>
}
type assetProperty = {
@as("unit") unit: propertyUnit,
@as("dataTypeSpec") dataTypeSpec: name,
@as("dataType") dataType: option<propertyDataType>,
@as("notification") notification: propertyNotification,
@as("alias") alias: propertyAlias,
@as("name") name: option<name>,
@as("id") id: option<iD>
}
type assetModelStatus = {
@as("error") error: errorDetails,
@as("state") state: option<assetModelState>
}
type assetModelHierarchyDefinitions = array<assetModelHierarchyDefinition>
type assetModelHierarchies = array<assetModelHierarchy>
type assetHierarchies = array<assetHierarchy>
type aggregatedValue = {
@as("value") value: option<aggregates>,
@as("quality") quality: quality,
@as("timestamp") timestamp: option<amazonawsTimestamp>
}
type portalSummary = {
@as("status") status: option<portalStatus>,
@as("roleArn") roleArn: aRN,
@as("lastUpdateDate") lastUpdateDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("startUrl") startUrl: option<url>,
@as("description") description: description,
@as("name") name: option<name>,
@as("id") id: option<iD>
}
type interpolatedAssetPropertyValues = array<interpolatedAssetPropertyValue>
type gatewaySummary = {
@as("lastUpdateDate") lastUpdateDate: option<amazonawsTimestamp>,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("gatewayCapabilitySummaries") gatewayCapabilitySummaries: gatewayCapabilitySummaries,
@as("gatewayName") gatewayName: option<name>,
@as("gatewayId") gatewayId: option<iD>
}
type expressionVariables = array<expressionVariable>
type batchPutAssetPropertyError = {
@as("timestamps") timestamps: option<timestamps>,
@as("errorMessage") errorMessage: option<errorMessage>,
@as("errorCode") errorCode: option<batchPutAssetPropertyValueErrorCode>
}
type associatedAssetsSummary = {
@as("hierarchies") hierarchies: option<assetHierarchies>,
@as("status") status: option<assetStatus>,
@as("lastUpdateDate") lastUpdateDate: option<amazonawsTimestamp>,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("assetModelId") assetModelId: option<iD>,
@as("name") name: option<name>,
@as("arn") arn: option<aRN>,
@as("id") id: option<iD>
}
type assetSummary = {
@as("hierarchies") hierarchies: option<assetHierarchies>,
@as("status") status: option<assetStatus>,
@as("lastUpdateDate") lastUpdateDate: option<amazonawsTimestamp>,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("assetModelId") assetModelId: option<iD>,
@as("name") name: option<name>,
@as("arn") arn: option<aRN>,
@as("id") id: option<iD>
}
type assetRelationshipSummaries = array<assetRelationshipSummary>
type assetPropertyValues = array<assetPropertyValue>
type assetPropertyValueHistory = array<assetPropertyValue>
type assetProperties = array<assetProperty>
type assetModelSummary = {
@as("status") status: option<assetModelStatus>,
@as("lastUpdateDate") lastUpdateDate: option<amazonawsTimestamp>,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("description") description: option<description>,
@as("name") name: option<name>,
@as("arn") arn: option<aRN>,
@as("id") id: option<iD>
}
type aggregatedValues = array<aggregatedValue>
type accessPolicySummary = {
@as("lastUpdateDate") lastUpdateDate: amazonawsTimestamp,
@as("creationDate") creationDate: amazonawsTimestamp,
@as("permission") permission: option<permission>,
@as("resource") resource: option<resource>,
@as("identity") identity: option<identity>,
@as("id") id: option<iD>
}
type transform = {
@as("variables") variables: option<expressionVariables>,
@as("expression") expression: option<expression>
}
type putAssetPropertyValueEntry = {
@as("propertyValues") propertyValues: option<assetPropertyValues>,
@as("propertyAlias") propertyAlias: assetPropertyAlias,
@as("propertyId") propertyId: iD,
@as("assetId") assetId: iD,
@as("entryId") entryId: option<entryId>
}
type portalSummaries = array<portalSummary>
type metric = {
@as("window") window: option<metricWindow>,
@as("variables") variables: option<expressionVariables>,
@as("expression") expression: option<expression>
}
type gatewaySummaries = array<gatewaySummary>
type batchPutAssetPropertyErrors = array<batchPutAssetPropertyError>
type associatedAssetsSummaries = array<associatedAssetsSummary>
type assetSummaries = array<assetSummary>
type assetModelSummaries = array<assetModelSummary>
type assetCompositeModel = {
@as("properties") properties: option<assetProperties>,
@as("type") type_: option<name>,
@as("description") description: description,
@as("name") name: option<name>
}
type accessPolicySummaries = array<accessPolicySummary>
type putAssetPropertyValueEntries = array<putAssetPropertyValueEntry>
type propertyType = {
@as("metric") metric: metric,
@as("transform") transform: transform,
@as("measurement") measurement: measurement,
@as("attribute") attribute: attribute
}
type batchPutAssetPropertyErrorEntry = {
@as("errors") errors: option<batchPutAssetPropertyErrors>,
@as("entryId") entryId: option<entryId>
}
type assetCompositeModels = array<assetCompositeModel>
type property = {
@as("type") type_: propertyType,
@as("unit") unit: propertyUnit,
@as("dataType") dataType: option<propertyDataType>,
@as("notification") notification: propertyNotification,
@as("alias") alias: propertyAlias,
@as("name") name: option<name>,
@as("id") id: option<iD>
}
type batchPutAssetPropertyErrorEntries = array<batchPutAssetPropertyErrorEntry>
type assetModelPropertyDefinition = {
@as("type") type_: option<propertyType>,
@as("unit") unit: propertyUnit,
@as("dataTypeSpec") dataTypeSpec: name,
@as("dataType") dataType: option<propertyDataType>,
@as("name") name: option<name>
}
type assetModelProperty = {
@as("type") type_: option<propertyType>,
@as("unit") unit: propertyUnit,
@as("dataTypeSpec") dataTypeSpec: name,
@as("dataType") dataType: option<propertyDataType>,
@as("name") name: option<name>,
@as("id") id: iD
}
type compositeModelProperty = {
@as("assetProperty") assetProperty: option<property>,
@as("type") type_: option<name>,
@as("name") name: option<name>
}
type assetModelPropertyDefinitions = array<assetModelPropertyDefinition>
type assetModelProperties = array<assetModelProperty>
type assetModelCompositeModelDefinition = {
@as("properties") properties: assetModelPropertyDefinitions,
@as("type") type_: option<name>,
@as("description") description: description,
@as("name") name: option<name>
}
type assetModelCompositeModel = {
@as("properties") properties: assetModelProperties,
@as("type") type_: option<name>,
@as("description") description: description,
@as("name") name: option<name>
}
type assetModelCompositeModels = array<assetModelCompositeModel>
type assetModelCompositeModelDefinitions = array<assetModelCompositeModelDefinition>
type clientType;
@module("@aws-sdk/client-iotsitewise") @new external createClient: unit => clientType = "IoTSiteWiseClient";
module UpdateProject = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("projectDescription") projectDescription: description,
@as("projectName") projectName: option<name>,
@as("projectId") projectId: option<iD>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGatewayCapabilityConfiguration = {
  type t;
  type request = {
@as("capabilityConfiguration") capabilityConfiguration: option<capabilityConfiguration>,
@as("capabilityNamespace") capabilityNamespace: option<capabilityNamespace>,
@as("gatewayId") gatewayId: option<iD>
}
  type response = {
@as("capabilitySyncStatus") capabilitySyncStatus: option<capabilitySyncStatus>,
@as("capabilityNamespace") capabilityNamespace: option<capabilityNamespace>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateGatewayCapabilityConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGateway = {
  type t;
  type request = {
@as("gatewayName") gatewayName: option<name>,
@as("gatewayId") gatewayId: option<iD>
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDashboard = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("dashboardDefinition") dashboardDefinition: option<dashboardDefinition>,
@as("dashboardDescription") dashboardDescription: description,
@as("dashboardName") dashboardName: option<name>,
@as("dashboardId") dashboardId: option<iD>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAssetProperty = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("propertyNotificationState") propertyNotificationState: propertyNotificationState,
@as("propertyAlias") propertyAlias: propertyAlias,
@as("propertyId") propertyId: option<iD>,
@as("assetId") assetId: option<iD>
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAssetPropertyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisassociateAssets = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("childAssetId") childAssetId: option<iD>,
@as("hierarchyId") hierarchyId: option<iD>,
@as("assetId") assetId: option<iD>
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DisassociateAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeProject = {
  type t;
  type request = {
@as("projectId") projectId: option<iD>
}
  type response = {
@as("projectLastUpdateDate") projectLastUpdateDate: option<amazonawsTimestamp>,
@as("projectCreationDate") projectCreationDate: option<amazonawsTimestamp>,
@as("projectDescription") projectDescription: description,
@as("portalId") portalId: option<iD>,
@as("projectName") projectName: option<name>,
@as("projectArn") projectArn: option<aRN>,
@as("projectId") projectId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGatewayCapabilityConfiguration = {
  type t;
  type request = {
@as("capabilityNamespace") capabilityNamespace: option<capabilityNamespace>,
@as("gatewayId") gatewayId: option<iD>
}
  type response = {
@as("capabilitySyncStatus") capabilitySyncStatus: option<capabilitySyncStatus>,
@as("capabilityConfiguration") capabilityConfiguration: option<capabilityConfiguration>,
@as("capabilityNamespace") capabilityNamespace: option<capabilityNamespace>,
@as("gatewayId") gatewayId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeGatewayCapabilityConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDashboard = {
  type t;
  type request = {
@as("dashboardId") dashboardId: option<iD>
}
  type response = {
@as("dashboardLastUpdateDate") dashboardLastUpdateDate: option<amazonawsTimestamp>,
@as("dashboardCreationDate") dashboardCreationDate: option<amazonawsTimestamp>,
@as("dashboardDefinition") dashboardDefinition: option<dashboardDefinition>,
@as("dashboardDescription") dashboardDescription: description,
@as("projectId") projectId: option<iD>,
@as("dashboardName") dashboardName: option<name>,
@as("dashboardArn") dashboardArn: option<aRN>,
@as("dashboardId") dashboardId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("projectId") projectId: option<iD>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGateway = {
  type t;
  type request = {
@as("gatewayId") gatewayId: option<iD>
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDashboard = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("dashboardId") dashboardId: option<iD>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAccessPolicy = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("accessPolicyId") accessPolicyId: option<iD>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteAccessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateAssets = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("childAssetId") childAssetId: option<iD>,
@as("hierarchyId") hierarchyId: option<iD>,
@as("assetId") assetId: option<iD>
}
  
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "AssociateAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutLoggingOptions = {
  type t;
  type request = {
@as("loggingOptions") loggingOptions: option<loggingOptions>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "PutLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<amazonResourceName>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjectAssets = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("projectId") projectId: option<iD>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("assetIds") assetIds: option<assetIDs>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListProjectAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLoggingOptions = {
  type t;
  type request = unit
  type response = {
@as("loggingOptions") loggingOptions: option<loggingOptions>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeLoggingOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientToken") clientToken: clientToken,
@as("projectDescription") projectDescription: description,
@as("projectName") projectName: option<name>,
@as("portalId") portalId: option<iD>
}
  type response = {
@as("projectArn") projectArn: option<aRN>,
@as("projectId") projectId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDashboard = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientToken") clientToken: clientToken,
@as("dashboardDefinition") dashboardDefinition: option<dashboardDefinition>,
@as("dashboardDescription") dashboardDescription: description,
@as("dashboardName") dashboardName: option<name>,
@as("projectId") projectId: option<iD>
}
  type response = {
@as("dashboardArn") dashboardArn: option<aRN>,
@as("dashboardId") dashboardId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateDashboardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePortal = {
  type t;
  type request = {
@as("alarms") alarms: alarms,
@as("notificationSenderEmail") notificationSenderEmail: email,
@as("clientToken") clientToken: clientToken,
@as("roleArn") roleArn: option<aRN>,
@as("portalLogoImage") portalLogoImage: image,
@as("portalContactEmail") portalContactEmail: option<email>,
@as("portalDescription") portalDescription: description,
@as("portalName") portalName: option<name>,
@as("portalId") portalId: option<iD>
}
  type response = {
@as("portalStatus") portalStatus: option<portalStatus>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdatePortalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAsset = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("assetName") assetName: option<name>,
@as("assetId") assetId: option<iD>
}
  type response = {
@as("assetStatus") assetStatus: option<assetStatus>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAccessPolicy = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("accessPolicyPermission") accessPolicyPermission: option<permission>,
@as("accessPolicyResource") accessPolicyResource: option<resource>,
@as("accessPolicyIdentity") accessPolicyIdentity: option<identity>,
@as("accessPolicyId") accessPolicyId: option<iD>
}
  type response = unit
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAccessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDefaultEncryptionConfiguration = {
  type t;
  type request = {
@as("kmsKeyId") kmsKeyId: kmsKeyId,
@as("encryptionType") encryptionType: option<encryptionType>
}
  type response = {
@as("configurationStatus") configurationStatus: option<configurationStatus>,
@as("kmsKeyArn") kmsKeyArn: aRN,
@as("encryptionType") encryptionType: option<encryptionType>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "PutDefaultEncryptionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("portalId") portalId: option<iD>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("projectSummaries") projectSummaries: option<projectSummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDashboards = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("projectId") projectId: option<iD>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("dashboardSummaries") dashboardSummaries: option<dashboardSummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListDashboardsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssetPropertyValue = {
  type t;
  type request = {
@as("propertyAlias") propertyAlias: assetPropertyAlias,
@as("propertyId") propertyId: iD,
@as("assetId") assetId: iD
}
  type response = {
@as("propertyValue") propertyValue: assetPropertyValue
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetAssetPropertyValueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePortal = {
  type t;
  type request = {
@as("portalId") portalId: option<iD>
}
  type response = {
@as("alarms") alarms: alarms,
@as("notificationSenderEmail") notificationSenderEmail: email,
@as("portalAuthMode") portalAuthMode: authMode,
@as("roleArn") roleArn: aRN,
@as("portalLogoImageLocation") portalLogoImageLocation: imageLocation,
@as("portalLastUpdateDate") portalLastUpdateDate: option<amazonawsTimestamp>,
@as("portalCreationDate") portalCreationDate: option<amazonawsTimestamp>,
@as("portalStatus") portalStatus: option<portalStatus>,
@as("portalContactEmail") portalContactEmail: option<email>,
@as("portalStartUrl") portalStartUrl: option<url>,
@as("portalClientId") portalClientId: option<portalClientId>,
@as("portalDescription") portalDescription: description,
@as("portalName") portalName: option<name>,
@as("portalArn") portalArn: option<aRN>,
@as("portalId") portalId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribePortalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGateway = {
  type t;
  type request = {
@as("gatewayId") gatewayId: option<iD>
}
  type response = {
@as("lastUpdateDate") lastUpdateDate: option<amazonawsTimestamp>,
@as("creationDate") creationDate: option<amazonawsTimestamp>,
@as("gatewayCapabilitySummaries") gatewayCapabilitySummaries: option<gatewayCapabilitySummaries>,
@as("gatewayPlatform") gatewayPlatform: gatewayPlatform,
@as("gatewayArn") gatewayArn: option<aRN>,
@as("gatewayName") gatewayName: option<name>,
@as("gatewayId") gatewayId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDefaultEncryptionConfiguration = {
  type t;
  type request = unit
  type response = {
@as("configurationStatus") configurationStatus: option<configurationStatus>,
@as("kmsKeyArn") kmsKeyArn: aRN,
@as("encryptionType") encryptionType: option<encryptionType>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeDefaultEncryptionConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAccessPolicy = {
  type t;
  type request = {
@as("accessPolicyId") accessPolicyId: option<iD>
}
  type response = {
@as("accessPolicyLastUpdateDate") accessPolicyLastUpdateDate: option<amazonawsTimestamp>,
@as("accessPolicyCreationDate") accessPolicyCreationDate: option<amazonawsTimestamp>,
@as("accessPolicyPermission") accessPolicyPermission: option<permission>,
@as("accessPolicyResource") accessPolicyResource: option<resource>,
@as("accessPolicyIdentity") accessPolicyIdentity: option<identity>,
@as("accessPolicyArn") accessPolicyArn: option<aRN>,
@as("accessPolicyId") accessPolicyId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAccessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePortal = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("portalId") portalId: option<iD>
}
  type response = {
@as("portalStatus") portalStatus: option<portalStatus>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeletePortalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAssetModel = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("assetModelId") assetModelId: option<iD>
}
  type response = {
@as("assetModelStatus") assetModelStatus: option<assetModelStatus>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteAssetModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAsset = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("assetId") assetId: option<iD>
}
  type response = {
@as("assetStatus") assetStatus: option<assetStatus>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DeleteAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePortal = {
  type t;
  type request = {
@as("alarms") alarms: alarms,
@as("notificationSenderEmail") notificationSenderEmail: email,
@as("portalAuthMode") portalAuthMode: authMode,
@as("tags") tags: tagMap,
@as("roleArn") roleArn: option<aRN>,
@as("portalLogoImageFile") portalLogoImageFile: imageFile,
@as("clientToken") clientToken: clientToken,
@as("portalContactEmail") portalContactEmail: option<email>,
@as("portalDescription") portalDescription: description,
@as("portalName") portalName: option<name>
}
  type response = {
@as("ssoApplicationId") ssoApplicationId: option<sSOApplicationId>,
@as("portalStatus") portalStatus: option<portalStatus>,
@as("portalStartUrl") portalStartUrl: option<url>,
@as("portalArn") portalArn: option<aRN>,
@as("portalId") portalId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreatePortalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGateway = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("gatewayPlatform") gatewayPlatform: option<gatewayPlatform>,
@as("gatewayName") gatewayName: option<name>
}
  type response = {
@as("gatewayArn") gatewayArn: option<aRN>,
@as("gatewayId") gatewayId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAsset = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientToken") clientToken: clientToken,
@as("assetModelId") assetModelId: option<iD>,
@as("assetName") assetName: option<name>
}
  type response = {
@as("assetStatus") assetStatus: option<assetStatus>,
@as("assetArn") assetArn: option<aRN>,
@as("assetId") assetId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAccessPolicy = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientToken") clientToken: clientToken,
@as("accessPolicyPermission") accessPolicyPermission: option<permission>,
@as("accessPolicyResource") accessPolicyResource: option<resource>,
@as("accessPolicyIdentity") accessPolicyIdentity: option<identity>
}
  type response = {
@as("accessPolicyArn") accessPolicyArn: option<aRN>,
@as("accessPolicyId") accessPolicyId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateAccessPolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateProjectAssets = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("assetIds") assetIds: option<iDs>,
@as("projectId") projectId: option<iD>
}
  type response = {
@as("errors") errors: batchDisassociateProjectAssetsErrors
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "BatchDisassociateProjectAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateProjectAssets = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("assetIds") assetIds: option<iDs>,
@as("projectId") projectId: option<iD>
}
  type response = {
@as("errors") errors: batchAssociateProjectAssetsErrors
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "BatchAssociateProjectAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssetRelationships = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("traversalType") traversalType: option<traversalType>,
@as("assetId") assetId: option<iD>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("assetRelationshipSummaries") assetRelationshipSummaries: option<assetRelationshipSummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssetRelationshipsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInterpolatedAssetPropertyValues = {
  type t;
  type request = {
@as("type") type_: option<interpolationType>,
@as("maxResults") maxResults: maxInterpolatedResults,
@as("nextToken") nextToken: nextToken,
@as("intervalInSeconds") intervalInSeconds: option<intervalInSeconds>,
@as("quality") quality: option<quality>,
@as("endTimeOffsetInNanos") endTimeOffsetInNanos: offsetInNanos,
@as("endTimeInSeconds") endTimeInSeconds: option<timeInSeconds>,
@as("startTimeOffsetInNanos") startTimeOffsetInNanos: offsetInNanos,
@as("startTimeInSeconds") startTimeInSeconds: option<timeInSeconds>,
@as("propertyAlias") propertyAlias: assetPropertyAlias,
@as("propertyId") propertyId: iD,
@as("assetId") assetId: iD
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("interpolatedAssetPropertyValues") interpolatedAssetPropertyValues: option<interpolatedAssetPropertyValues>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetInterpolatedAssetPropertyValuesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssetPropertyValueHistory = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("timeOrdering") timeOrdering: timeOrdering,
@as("qualities") qualities: qualities,
@as("endDate") endDate: amazonawsTimestamp,
@as("startDate") startDate: amazonawsTimestamp,
@as("propertyAlias") propertyAlias: assetPropertyAlias,
@as("propertyId") propertyId: iD,
@as("assetId") assetId: iD
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("assetPropertyValueHistory") assetPropertyValueHistory: option<assetPropertyValueHistory>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetAssetPropertyValueHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssetPropertyAggregates = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("timeOrdering") timeOrdering: timeOrdering,
@as("endDate") endDate: option<amazonawsTimestamp>,
@as("startDate") startDate: option<amazonawsTimestamp>,
@as("qualities") qualities: qualities,
@as("resolution") resolution: option<resolution>,
@as("aggregateTypes") aggregateTypes: option<aggregateTypes>,
@as("propertyAlias") propertyAlias: assetPropertyAlias,
@as("propertyId") propertyId: iD,
@as("assetId") assetId: iD
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("aggregatedValues") aggregatedValues: option<aggregatedValues>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "GetAssetPropertyAggregatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPortals = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("portalSummaries") portalSummaries: portalSummaries
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListPortalsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListGateways = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("gatewaySummaries") gatewaySummaries: option<gatewaySummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedAssets = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("traversalDirection") traversalDirection: traversalDirection,
@as("hierarchyId") hierarchyId: iD,
@as("assetId") assetId: option<iD>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("assetSummaries") assetSummaries: option<associatedAssetsSummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssociatedAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssets = {
  type t;
  type request = {
@as("filter") filter: listAssetsFilter,
@as("assetModelId") assetModelId: iD,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("assetSummaries") assetSummaries: option<assetSummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssetModels = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("assetModelSummaries") assetModelSummaries: option<assetModelSummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAssetModelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAccessPolicies = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("iamArn") iamArn: aRN,
@as("resourceId") resourceId: iD,
@as("resourceType") resourceType: resourceType,
@as("identityId") identityId: identityId,
@as("identityType") identityType: identityType
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("accessPolicySummaries") accessPolicySummaries: option<accessPolicySummaries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "ListAccessPoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAsset = {
  type t;
  type request = {
@as("assetId") assetId: option<iD>
}
  type response = {
@as("assetStatus") assetStatus: option<assetStatus>,
@as("assetLastUpdateDate") assetLastUpdateDate: option<amazonawsTimestamp>,
@as("assetCreationDate") assetCreationDate: option<amazonawsTimestamp>,
@as("assetCompositeModels") assetCompositeModels: assetCompositeModels,
@as("assetHierarchies") assetHierarchies: option<assetHierarchies>,
@as("assetProperties") assetProperties: option<assetProperties>,
@as("assetModelId") assetModelId: option<iD>,
@as("assetName") assetName: option<name>,
@as("assetArn") assetArn: option<aRN>,
@as("assetId") assetId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAssetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchPutAssetPropertyValue = {
  type t;
  type request = {
@as("entries") entries: option<putAssetPropertyValueEntries>
}
  type response = {
@as("errorEntries") errorEntries: option<batchPutAssetPropertyErrorEntries>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "BatchPutAssetPropertyValueCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAssetProperty = {
  type t;
  type request = {
@as("propertyId") propertyId: option<iD>,
@as("assetId") assetId: option<iD>
}
  type response = {
@as("compositeModel") compositeModel: compositeModelProperty,
@as("assetProperty") assetProperty: property,
@as("assetModelId") assetModelId: option<iD>,
@as("assetName") assetName: option<name>,
@as("assetId") assetId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAssetPropertyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAssetModel = {
  type t;
  type request = {
@as("clientToken") clientToken: clientToken,
@as("assetModelCompositeModels") assetModelCompositeModels: assetModelCompositeModels,
@as("assetModelHierarchies") assetModelHierarchies: assetModelHierarchies,
@as("assetModelProperties") assetModelProperties: assetModelProperties,
@as("assetModelDescription") assetModelDescription: description,
@as("assetModelName") assetModelName: option<name>,
@as("assetModelId") assetModelId: option<iD>
}
  type response = {
@as("assetModelStatus") assetModelStatus: option<assetModelStatus>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "UpdateAssetModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAssetModel = {
  type t;
  type request = {
@as("assetModelId") assetModelId: option<iD>
}
  type response = {
@as("assetModelStatus") assetModelStatus: option<assetModelStatus>,
@as("assetModelLastUpdateDate") assetModelLastUpdateDate: option<amazonawsTimestamp>,
@as("assetModelCreationDate") assetModelCreationDate: option<amazonawsTimestamp>,
@as("assetModelCompositeModels") assetModelCompositeModels: assetModelCompositeModels,
@as("assetModelHierarchies") assetModelHierarchies: option<assetModelHierarchies>,
@as("assetModelProperties") assetModelProperties: option<assetModelProperties>,
@as("assetModelDescription") assetModelDescription: option<description>,
@as("assetModelName") assetModelName: option<name>,
@as("assetModelArn") assetModelArn: option<aRN>,
@as("assetModelId") assetModelId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "DescribeAssetModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAssetModel = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("clientToken") clientToken: clientToken,
@as("assetModelCompositeModels") assetModelCompositeModels: assetModelCompositeModelDefinitions,
@as("assetModelHierarchies") assetModelHierarchies: assetModelHierarchyDefinitions,
@as("assetModelProperties") assetModelProperties: assetModelPropertyDefinitions,
@as("assetModelDescription") assetModelDescription: description,
@as("assetModelName") assetModelName: option<name>
}
  type response = {
@as("assetModelStatus") assetModelStatus: option<assetModelStatus>,
@as("assetModelArn") assetModelArn: option<aRN>,
@as("assetModelId") assetModelId: option<iD>
}
  @module("@aws-sdk/client-iotsitewise") @new external new_: (request) => t = "CreateAssetModelCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
