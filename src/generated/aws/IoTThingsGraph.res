type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type version = float;
type urn = string
type uploadStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type uploadId = string
type amazonawsTimestamp = Js.Date.t;
type thingName = string
type thingArn = string
type tagValue = string
type tagKey = string
type systemTemplateFilterValue = string
type systemTemplateFilterName = [@as("FLOW_TEMPLATE_ID") #FLOW_TEMPLATE_ID]
type systemInstanceFilterValue = string
type systemInstanceFilterName = [@as("GREENGRASS_GROUP_NAME") #GREENGRASS_GROUP_NAME | @as("STATUS") #STATUS | @as("SYSTEM_TEMPLATE_ID") #SYSTEM_TEMPLATE_ID]
type systemInstanceDeploymentStatus = [@as("DELETED_IN_TARGET") #DELETED_IN_TARGET | @as("PENDING_DELETE") #PENDING_DELETE | @as("FAILED") #FAILED | @as("UNDEPLOY_IN_PROGRESS") #UNDEPLOY_IN_PROGRESS | @as("DEPLOYED_IN_TARGET") #DEPLOYED_IN_TARGET | @as("DEPLOY_IN_PROGRESS") #DEPLOY_IN_PROGRESS | @as("BOOTSTRAP") #BOOTSTRAP | @as("NOT_DEPLOYED") #NOT_DEPLOYED]
type syncWithPublicNamespace = bool;
type amazonawsString = string
type s3BucketName = string
type roleArn = string
type resourceArn = string
type nextToken = string
type namespaceName = string
type namespaceDeletionStatusErrorCodes = [@as("VALIDATION_FAILED") #VALIDATION_FAILED]
type namespaceDeletionStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("IN_PROGRESS") #IN_PROGRESS]
type maxResults = int;
type groupName = string
type greengrassGroupVersionId = string
type greengrassGroupId = string
type greengrassDeploymentId = string
type flowTemplateFilterValue = string
type flowTemplateFilterName = [@as("DEVICE_MODEL_ID") #DEVICE_MODEL_ID]
type flowExecutionStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("ABORTED") #ABORTED | @as("RUNNING") #RUNNING]
type flowExecutionMessagePayload = string
type flowExecutionMessageId = string
type flowExecutionId = string
type flowExecutionEventType = [@as("ACKNOWLEDGE_TASK_MESSAGE") #ACKNOWLEDGE_TASK_MESSAGE | @as("THING_ACTION_TASK_SUCCEEDED") #THING_ACTION_TASK_SUCCEEDED | @as("THING_ACTION_TASK_FAILED") #THING_ACTION_TASK_FAILED | @as("THING_ACTION_TASK") #THING_ACTION_TASK | @as("SCHEDULE_NEXT_READY_STEPS_TASK") #SCHEDULE_NEXT_READY_STEPS_TASK | @as("START_FLOW_EXECUTION_TASK") #START_FLOW_EXECUTION_TASK | @as("ACTIVITY_SUCCEEDED") #ACTIVITY_SUCCEEDED | @as("ACTIVITY_FAILED") #ACTIVITY_FAILED | @as("ACTIVITY_STARTED") #ACTIVITY_STARTED | @as("ACTIVITY_SCHEDULED") #ACTIVITY_SCHEDULED | @as("STEP_SUCCEEDED") #STEP_SUCCEEDED | @as("STEP_FAILED") #STEP_FAILED | @as("STEP_STARTED") #STEP_STARTED | @as("EXECUTION_SUCCEEDED") #EXECUTION_SUCCEEDED | @as("EXECUTION_ABORTED") #EXECUTION_ABORTED | @as("EXECUTION_FAILED") #EXECUTION_FAILED | @as("EXECUTION_STARTED") #EXECUTION_STARTED]
type errorMessage = string
type entityType = [@as("ENUM") #ENUM | @as("MAPPING") #MAPPING | @as("PROPERTY") #PROPERTY | @as("EVENT") #EVENT | @as("ACTION") #ACTION | @as("STATE") #STATE | @as("CAPABILITY") #CAPABILITY | @as("DEVICE_MODEL") #DEVICE_MODEL | @as("SERVICE") #SERVICE | @as("DEVICE") #DEVICE]
type entityFilterValue = string
type entityFilterName = [@as("REFERENCED_ENTITY_ID") #REFERENCED_ENTITY_ID | @as("SEMANTIC_TYPE_PATH") #SEMANTIC_TYPE_PATH | @as("NAMESPACE") #NAMESPACE | @as("NAME") #NAME]
type enabled = bool;
type deprecateExistingEntities = bool;
type deploymentTarget = [@as("CLOUD") #CLOUD | @as("GREENGRASS") #GREENGRASS]
type definitionText = string
type definitionLanguage = [@as("GRAPHQL") #GRAPHQL]
type arn = string
type urns = array<urn>
type thing = {
@as("thingName") thingName: thingName,
@as("thingArn") thingArn: thingArn
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type systemTemplateSummary = {
@as("createdAt") createdAt: amazonawsTimestamp,
@as("revisionNumber") revisionNumber: version,
@as("arn") arn: arn,
@as("id") id: urn
}
type systemTemplateFilterValues = array<systemTemplateFilterValue>
type systemInstanceSummary = {
@as("greengrassGroupVersionId") greengrassGroupVersionId: greengrassGroupVersionId,
@as("greengrassGroupId") greengrassGroupId: greengrassGroupId,
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("greengrassGroupName") greengrassGroupName: groupName,
@as("target") target: deploymentTarget,
@as("status") status: systemInstanceDeploymentStatus,
@as("arn") arn: arn,
@as("id") id: urn
}
type systemInstanceFilterValues = array<systemInstanceFilterValue>
type stringList = array<amazonawsString>
type metricsConfiguration = {
@as("metricRuleRoleArn") metricRuleRoleArn: roleArn,
@as("cloudMetricEnabled") cloudMetricEnabled: enabled
}
type flowTemplateSummary = {
@as("createdAt") createdAt: amazonawsTimestamp,
@as("revisionNumber") revisionNumber: version,
@as("arn") arn: arn,
@as("id") id: urn
}
type flowTemplateFilterValues = array<flowTemplateFilterValue>
type flowExecutionSummary = {
@as("updatedAt") updatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("flowTemplateId") flowTemplateId: urn,
@as("systemInstanceId") systemInstanceId: urn,
@as("status") status: flowExecutionStatus,
@as("flowExecutionId") flowExecutionId: flowExecutionId
}
type flowExecutionMessage = {
@as("payload") payload: flowExecutionMessagePayload,
@as("timestamp") timestamp: amazonawsTimestamp,
@as("eventType") eventType: flowExecutionEventType,
@as("messageId") messageId: flowExecutionMessageId
}
type entityTypes = array<entityType>
type entityFilterValues = array<entityFilterValue>
type dependencyRevision = {
@as("revisionNumber") revisionNumber: version,
@as("id") id: urn
}
type definitionDocument = {
@as("text") text: option<definitionText>,
@as("language") language: option<definitionLanguage>
}
type things = array<thing>
type tagList = array<tag>
type systemTemplateSummaries = array<systemTemplateSummary>
type systemTemplateFilter = {
@as("value") value: option<systemTemplateFilterValues>,
@as("name") name: option<systemTemplateFilterName>
}
type systemTemplateDescription = {
@as("validatedNamespaceVersion") validatedNamespaceVersion: version,
@as("definition") definition: definitionDocument,
@as("summary") summary: systemTemplateSummary
}
type systemInstanceSummaries = array<systemInstanceSummary>
type systemInstanceFilter = {
@as("value") value: systemInstanceFilterValues,
@as("name") name: systemInstanceFilterName
}
type flowTemplateSummaries = array<flowTemplateSummary>
type flowTemplateFilter = {
@as("value") value: option<flowTemplateFilterValues>,
@as("name") name: option<flowTemplateFilterName>
}
type flowTemplateDescription = {
@as("validatedNamespaceVersion") validatedNamespaceVersion: version,
@as("definition") definition: definitionDocument,
@as("summary") summary: flowTemplateSummary
}
type flowExecutionSummaries = array<flowExecutionSummary>
type flowExecutionMessages = array<flowExecutionMessage>
type entityFilter = {
@as("value") value: entityFilterValues,
@as("name") name: entityFilterName
}
type entityDescription = {
@as("definition") definition: definitionDocument,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("type") type_: entityType,
@as("arn") arn: arn,
@as("id") id: urn
}
type dependencyRevisions = array<dependencyRevision>
type systemTemplateFilters = array<systemTemplateFilter>
type systemInstanceFilters = array<systemInstanceFilter>
type systemInstanceDescription = {
@as("flowActionsRoleArn") flowActionsRoleArn: roleArn,
@as("validatedDependencyRevisions") validatedDependencyRevisions: dependencyRevisions,
@as("validatedNamespaceVersion") validatedNamespaceVersion: version,
@as("metricsConfiguration") metricsConfiguration: metricsConfiguration,
@as("s3BucketName") s3BucketName: s3BucketName,
@as("definition") definition: definitionDocument,
@as("summary") summary: systemInstanceSummary
}
type flowTemplateFilters = array<flowTemplateFilter>
type entityFilters = array<entityFilter>
type entityDescriptions = array<entityDescription>
type clientType;
@module("@aws-sdk/client-iotthingsgraph") @new external createClient: unit => clientType = "IoTThingsGraphClient";
module GetNamespaceDeletionStatus = {
  type t;
  type request = unit
  type response = {
@as("errorMessage") errorMessage: amazonawsString,
@as("errorCode") errorCode: namespaceDeletionStatusErrorCodes,
@as("status") status: namespaceDeletionStatus,
@as("namespaceName") namespaceName: namespaceName,
@as("namespaceArn") namespaceArn: arn
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetNamespaceDeletionStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DissociateEntityFromThing = {
  type t;
  type request = {
@as("entityType") entityType: option<entityType>,
@as("thingName") thingName: option<thingName>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DissociateEntityFromThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNamespace = {
  type t;
  type request = {
@as("namespaceName") namespaceName: namespaceName
}
  type response = {
@as("namespaceVersion") namespaceVersion: version,
@as("trackingNamespaceVersion") trackingNamespaceVersion: version,
@as("trackingNamespaceName") trackingNamespaceName: namespaceName,
@as("namespaceName") namespaceName: namespaceName,
@as("namespaceArn") namespaceArn: arn
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DescribeNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeprecateSystemTemplate = {
  type t;
  type request = {
@as("id") id: option<urn>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DeprecateSystemTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeprecateFlowTemplate = {
  type t;
  type request = {
@as("id") id: option<urn>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DeprecateFlowTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSystemTemplate = {
  type t;
  type request = {
@as("id") id: option<urn>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DeleteSystemTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSystemInstance = {
  type t;
  type request = {
@as("id") id: urn
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DeleteSystemInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNamespace = {
  type t;
  type request = unit
  type response = {
@as("namespaceName") namespaceName: namespaceName,
@as("namespaceArn") namespaceArn: arn
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DeleteNamespaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFlowTemplate = {
  type t;
  type request = {
@as("id") id: option<urn>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DeleteFlowTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateEntityToThing = {
  type t;
  type request = {
@as("namespaceVersion") namespaceVersion: version,
@as("entityId") entityId: option<urn>,
@as("thingName") thingName: option<thingName>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "AssociateEntityToThingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UploadEntityDefinitions = {
  type t;
  type request = {
@as("deprecateExistingEntities") deprecateExistingEntities: deprecateExistingEntities,
@as("syncWithPublicNamespace") syncWithPublicNamespace: syncWithPublicNamespace,
@as("document") document: definitionDocument
}
  type response = {
@as("uploadId") uploadId: option<uploadId>
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "UploadEntityDefinitionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSystemTemplate = {
  type t;
  type request = {
@as("compatibleNamespaceVersion") compatibleNamespaceVersion: version,
@as("definition") definition: option<definitionDocument>,
@as("id") id: option<urn>
}
  type response = {
@as("summary") summary: systemTemplateSummary
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "UpdateSystemTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFlowTemplate = {
  type t;
  type request = {
@as("compatibleNamespaceVersion") compatibleNamespaceVersion: version,
@as("definition") definition: option<definitionDocument>,
@as("id") id: option<urn>
}
  type response = {
@as("summary") summary: flowTemplateSummary
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "UpdateFlowTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UndeploySystemInstance = {
  type t;
  type request = {
@as("id") id: urn
}
  type response = {
@as("summary") summary: systemInstanceSummary
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "UndeploySystemInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUploadStatus = {
  type t;
  type request = {
@as("uploadId") uploadId: option<uploadId>
}
  type response = {
@as("createdDate") createdDate: option<amazonawsTimestamp>,
@as("failureReason") failureReason: stringList,
@as("namespaceVersion") namespaceVersion: version,
@as("namespaceName") namespaceName: namespaceName,
@as("namespaceArn") namespaceArn: arn,
@as("uploadStatus") uploadStatus: option<uploadStatus>,
@as("uploadId") uploadId: option<uploadId>
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetUploadStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeploySystemInstance = {
  type t;
  type request = {
@as("id") id: urn
}
  type response = {
@as("greengrassDeploymentId") greengrassDeploymentId: greengrassDeploymentId,
@as("summary") summary: option<systemInstanceSummary>
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "DeploySystemInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSystemTemplate = {
  type t;
  type request = {
@as("compatibleNamespaceVersion") compatibleNamespaceVersion: version,
@as("definition") definition: option<definitionDocument>
}
  type response = {
@as("summary") summary: systemTemplateSummary
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "CreateSystemTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFlowTemplate = {
  type t;
  type request = {
@as("compatibleNamespaceVersion") compatibleNamespaceVersion: version,
@as("definition") definition: option<definitionDocument>
}
  type response = {
@as("summary") summary: flowTemplateSummary
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "CreateFlowTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchThings = {
  type t;
  type request = {
@as("namespaceVersion") namespaceVersion: version,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("entityId") entityId: option<urn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("things") things: things
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "SearchThingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchFlowExecutions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("endTime") endTime: amazonawsTimestamp,
@as("startTime") startTime: amazonawsTimestamp,
@as("flowExecutionId") flowExecutionId: flowExecutionId,
@as("systemInstanceId") systemInstanceId: option<urn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("summaries") summaries: flowExecutionSummaries
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "SearchFlowExecutionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("resourceArn") resourceArn: option<resourceArn>,
@as("maxResults") maxResults: maxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tags") tags: tagList
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFlowExecutionMessages = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("flowExecutionId") flowExecutionId: option<flowExecutionId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("messages") messages: flowExecutionMessages
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "ListFlowExecutionMessagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSystemTemplateRevisions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("id") id: option<urn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("summaries") summaries: systemTemplateSummaries
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetSystemTemplateRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSystemTemplate = {
  type t;
  type request = {
@as("revisionNumber") revisionNumber: version,
@as("id") id: option<urn>
}
  type response = {
@as("description") description: systemTemplateDescription
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetSystemTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFlowTemplateRevisions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("id") id: option<urn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("summaries") summaries: flowTemplateSummaries
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetFlowTemplateRevisionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFlowTemplate = {
  type t;
  type request = {
@as("revisionNumber") revisionNumber: version,
@as("id") id: option<urn>
}
  type response = {
@as("description") description: flowTemplateDescription
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetFlowTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSystemInstance = {
  type t;
  type request = {
@as("flowActionsRoleArn") flowActionsRoleArn: roleArn,
@as("metricsConfiguration") metricsConfiguration: metricsConfiguration,
@as("s3BucketName") s3BucketName: s3BucketName,
@as("greengrassGroupName") greengrassGroupName: groupName,
@as("target") target: option<deploymentTarget>,
@as("definition") definition: option<definitionDocument>,
@as("tags") tags: tagList
}
  type response = {
@as("summary") summary: systemInstanceSummary
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "CreateSystemInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchSystemTemplates = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filters") filters: systemTemplateFilters
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("summaries") summaries: systemTemplateSummaries
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "SearchSystemTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchSystemInstances = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filters") filters: systemInstanceFilters
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("summaries") summaries: systemInstanceSummaries
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "SearchSystemInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchFlowTemplates = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filters") filters: flowTemplateFilters
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("summaries") summaries: flowTemplateSummaries
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "SearchFlowTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchEntities = {
  type t;
  type request = {
@as("namespaceVersion") namespaceVersion: version,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filters") filters: entityFilters,
@as("entityTypes") entityTypes: option<entityTypes>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("descriptions") descriptions: entityDescriptions
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "SearchEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSystemInstance = {
  type t;
  type request = {
@as("id") id: option<urn>
}
  type response = {
@as("description") description: systemInstanceDescription
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetSystemInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEntities = {
  type t;
  type request = {
@as("namespaceVersion") namespaceVersion: version,
@as("ids") ids: option<urns>
}
  type response = {
@as("descriptions") descriptions: entityDescriptions
}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: (request) => t = "GetEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
