type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-iotthingsgraph") @new
external createClient: unit => awsServiceClient = "IoTThingsGraphClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = float
type urn = string
type uploadStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type uploadId = string
type timestamp_ = Js.Date.t
type thingName = string
type thingArn = string
type tagValue = string
type tagKey = string
type systemTemplateFilterValue = string
type systemTemplateFilterName = [@as("FLOW_TEMPLATE_ID") #FLOW_TEMPLATE_ID]
type systemInstanceFilterValue = string
type systemInstanceFilterName = [
  | @as("GREENGRASS_GROUP_NAME") #GREENGRASS_GROUP_NAME
  | @as("STATUS") #STATUS
  | @as("SYSTEM_TEMPLATE_ID") #SYSTEM_TEMPLATE_ID
]
type systemInstanceDeploymentStatus = [
  | @as("DELETED_IN_TARGET") #DELETED_IN_TARGET
  | @as("PENDING_DELETE") #PENDING_DELETE
  | @as("FAILED") #FAILED
  | @as("UNDEPLOY_IN_PROGRESS") #UNDEPLOY_IN_PROGRESS
  | @as("DEPLOYED_IN_TARGET") #DEPLOYED_IN_TARGET
  | @as("DEPLOY_IN_PROGRESS") #DEPLOY_IN_PROGRESS
  | @as("BOOTSTRAP") #BOOTSTRAP
  | @as("NOT_DEPLOYED") #NOT_DEPLOYED
]
type syncWithPublicNamespace = bool
type string_ = string
type s3BucketName = string
type roleArn = string
type resourceArn = string
type nextToken = string
type namespaceName = string
type namespaceDeletionStatusErrorCodes = [@as("VALIDATION_FAILED") #VALIDATION_FAILED]
type namespaceDeletionStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type maxResults = int
type groupName = string
type greengrassGroupVersionId = string
type greengrassGroupId = string
type greengrassDeploymentId = string
type flowTemplateFilterValue = string
type flowTemplateFilterName = [@as("DEVICE_MODEL_ID") #DEVICE_MODEL_ID]
type flowExecutionStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("ABORTED") #ABORTED
  | @as("RUNNING") #RUNNING
]
type flowExecutionMessagePayload = string
type flowExecutionMessageId = string
type flowExecutionId = string
type flowExecutionEventType = [
  | @as("ACKNOWLEDGE_TASK_MESSAGE") #ACKNOWLEDGE_TASK_MESSAGE
  | @as("THING_ACTION_TASK_SUCCEEDED") #THING_ACTION_TASK_SUCCEEDED
  | @as("THING_ACTION_TASK_FAILED") #THING_ACTION_TASK_FAILED
  | @as("THING_ACTION_TASK") #THING_ACTION_TASK
  | @as("SCHEDULE_NEXT_READY_STEPS_TASK") #SCHEDULE_NEXT_READY_STEPS_TASK
  | @as("START_FLOW_EXECUTION_TASK") #START_FLOW_EXECUTION_TASK
  | @as("ACTIVITY_SUCCEEDED") #ACTIVITY_SUCCEEDED
  | @as("ACTIVITY_FAILED") #ACTIVITY_FAILED
  | @as("ACTIVITY_STARTED") #ACTIVITY_STARTED
  | @as("ACTIVITY_SCHEDULED") #ACTIVITY_SCHEDULED
  | @as("STEP_SUCCEEDED") #STEP_SUCCEEDED
  | @as("STEP_FAILED") #STEP_FAILED
  | @as("STEP_STARTED") #STEP_STARTED
  | @as("EXECUTION_SUCCEEDED") #EXECUTION_SUCCEEDED
  | @as("EXECUTION_ABORTED") #EXECUTION_ABORTED
  | @as("EXECUTION_FAILED") #EXECUTION_FAILED
  | @as("EXECUTION_STARTED") #EXECUTION_STARTED
]
type errorMessage = string
type entityType = [
  | @as("ENUM") #ENUM
  | @as("MAPPING") #MAPPING
  | @as("PROPERTY") #PROPERTY
  | @as("EVENT") #EVENT
  | @as("ACTION") #ACTION
  | @as("STATE") #STATE
  | @as("CAPABILITY") #CAPABILITY
  | @as("DEVICE_MODEL") #DEVICE_MODEL
  | @as("SERVICE") #SERVICE
  | @as("DEVICE") #DEVICE
]
type entityFilterValue = string
type entityFilterName = [
  | @as("REFERENCED_ENTITY_ID") #REFERENCED_ENTITY_ID
  | @as("SEMANTIC_TYPE_PATH") #SEMANTIC_TYPE_PATH
  | @as("NAMESPACE") #NAMESPACE
  | @as("NAME") #NAME
]
type enabled = bool
type deprecateExistingEntities = bool
type deploymentTarget = [@as("CLOUD") #CLOUD | @as("GREENGRASS") #GREENGRASS]
type definitionText = string
type definitionLanguage = [@as("GRAPHQL") #GRAPHQL]
type arn = string
type urns = array<urn>
type thing = {
  thingName: option<thingName>,
  thingArn: option<thingArn>,
}
type tagKeyList = array<tagKey>
type tag = {
  value: tagValue,
  key: tagKey,
}
type systemTemplateSummary = {
  createdAt: option<timestamp_>,
  revisionNumber: option<version>,
  arn: option<arn>,
  id: option<urn>,
}
type systemTemplateFilterValues = array<systemTemplateFilterValue>
type systemInstanceSummary = {
  greengrassGroupVersionId: option<greengrassGroupVersionId>,
  greengrassGroupId: option<greengrassGroupId>,
  updatedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  greengrassGroupName: option<groupName>,
  target: option<deploymentTarget>,
  status: option<systemInstanceDeploymentStatus>,
  arn: option<arn>,
  id: option<urn>,
}
type systemInstanceFilterValues = array<systemInstanceFilterValue>
type stringList = array<string_>
type metricsConfiguration = {
  metricRuleRoleArn: option<roleArn>,
  cloudMetricEnabled: option<enabled>,
}
type flowTemplateSummary = {
  createdAt: option<timestamp_>,
  revisionNumber: option<version>,
  arn: option<arn>,
  id: option<urn>,
}
type flowTemplateFilterValues = array<flowTemplateFilterValue>
type flowExecutionSummary = {
  updatedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  flowTemplateId: option<urn>,
  systemInstanceId: option<urn>,
  status: option<flowExecutionStatus>,
  flowExecutionId: option<flowExecutionId>,
}
type flowExecutionMessage = {
  payload: option<flowExecutionMessagePayload>,
  @as("timestamp") timestamp_: option<timestamp_>,
  eventType: option<flowExecutionEventType>,
  messageId: option<flowExecutionMessageId>,
}
type entityTypes = array<entityType>
type entityFilterValues = array<entityFilterValue>
type dependencyRevision = {
  revisionNumber: option<version>,
  id: option<urn>,
}
type definitionDocument = {
  text: definitionText,
  language: definitionLanguage,
}
type things = array<thing>
type tagList_ = array<tag>
type systemTemplateSummaries = array<systemTemplateSummary>
type systemTemplateFilter = {
  value: systemTemplateFilterValues,
  name: systemTemplateFilterName,
}
type systemTemplateDescription = {
  validatedNamespaceVersion: option<version>,
  definition: option<definitionDocument>,
  summary: option<systemTemplateSummary>,
}
type systemInstanceSummaries = array<systemInstanceSummary>
type systemInstanceFilter = {
  value: option<systemInstanceFilterValues>,
  name: option<systemInstanceFilterName>,
}
type flowTemplateSummaries = array<flowTemplateSummary>
type flowTemplateFilter = {
  value: flowTemplateFilterValues,
  name: flowTemplateFilterName,
}
type flowTemplateDescription = {
  validatedNamespaceVersion: option<version>,
  definition: option<definitionDocument>,
  summary: option<flowTemplateSummary>,
}
type flowExecutionSummaries = array<flowExecutionSummary>
type flowExecutionMessages = array<flowExecutionMessage>
type entityFilter = {
  value: option<entityFilterValues>,
  name: option<entityFilterName>,
}
type entityDescription = {
  definition: option<definitionDocument>,
  createdAt: option<timestamp_>,
  @as("type") type_: option<entityType>,
  arn: option<arn>,
  id: option<urn>,
}
type dependencyRevisions = array<dependencyRevision>
type systemTemplateFilters = array<systemTemplateFilter>
type systemInstanceFilters = array<systemInstanceFilter>
type systemInstanceDescription = {
  flowActionsRoleArn: option<roleArn>,
  validatedDependencyRevisions: option<dependencyRevisions>,
  validatedNamespaceVersion: option<version>,
  metricsConfiguration: option<metricsConfiguration>,
  s3BucketName: option<s3BucketName>,
  definition: option<definitionDocument>,
  summary: option<systemInstanceSummary>,
}
type flowTemplateFilters = array<flowTemplateFilter>
type entityFilters = array<entityFilter>
type entityDescriptions = array<entityDescription>

module GetNamespaceDeletionStatus = {
  type t
  type request = unit
  type response = {
    errorMessage: option<string_>,
    errorCode: option<namespaceDeletionStatusErrorCodes>,
    status: option<namespaceDeletionStatus>,
    namespaceName: option<namespaceName>,
    namespaceArn: option<arn>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "GetNamespaceDeletionStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DissociateEntityFromThing = {
  type t
  type request = {
    entityType: entityType,
    thingName: thingName,
  }
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DissociateEntityFromThingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNamespace = {
  type t
  type request = {namespaceName: option<namespaceName>}
  type response = {
    namespaceVersion: option<version>,
    trackingNamespaceVersion: option<version>,
    trackingNamespaceName: option<namespaceName>,
    namespaceName: option<namespaceName>,
    namespaceArn: option<arn>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DescribeNamespaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprecateSystemTemplate = {
  type t
  type request = {id: urn}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DeprecateSystemTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeprecateFlowTemplate = {
  type t
  type request = {id: urn}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DeprecateFlowTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSystemTemplate = {
  type t
  type request = {id: urn}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DeleteSystemTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSystemInstance = {
  type t
  type request = {id: option<urn>}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DeleteSystemInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNamespace = {
  type t
  type request = unit
  type response = {
    namespaceName: option<namespaceName>,
    namespaceArn: option<arn>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DeleteNamespaceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFlowTemplate = {
  type t
  type request = {id: urn}
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DeleteFlowTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateEntityToThing = {
  type t
  type request = {
    namespaceVersion: option<version>,
    entityId: urn,
    thingName: thingName,
  }
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "AssociateEntityToThingCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UploadEntityDefinitions = {
  type t
  type request = {
    deprecateExistingEntities: option<deprecateExistingEntities>,
    syncWithPublicNamespace: option<syncWithPublicNamespace>,
    document: option<definitionDocument>,
  }
  type response = {uploadId: uploadId}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "UploadEntityDefinitionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSystemTemplate = {
  type t
  type request = {
    compatibleNamespaceVersion: option<version>,
    definition: definitionDocument,
    id: urn,
  }
  type response = {summary: option<systemTemplateSummary>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "UpdateSystemTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFlowTemplate = {
  type t
  type request = {
    compatibleNamespaceVersion: option<version>,
    definition: definitionDocument,
    id: urn,
  }
  type response = {summary: option<flowTemplateSummary>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "UpdateFlowTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    tagKeys: tagKeyList,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UndeploySystemInstance = {
  type t
  type request = {id: option<urn>}
  type response = {summary: option<systemInstanceSummary>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "UndeploySystemInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUploadStatus = {
  type t
  type request = {uploadId: uploadId}
  type response = {
    createdDate: timestamp_,
    failureReason: option<stringList>,
    namespaceVersion: option<version>,
    namespaceName: option<namespaceName>,
    namespaceArn: option<arn>,
    uploadStatus: uploadStatus,
    uploadId: uploadId,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "GetUploadStatusCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeploySystemInstance = {
  type t
  type request = {id: option<urn>}
  type response = {
    greengrassDeploymentId: option<greengrassDeploymentId>,
    summary: systemInstanceSummary,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "DeploySystemInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSystemTemplate = {
  type t
  type request = {
    compatibleNamespaceVersion: option<version>,
    definition: definitionDocument,
  }
  type response = {summary: option<systemTemplateSummary>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "CreateSystemTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFlowTemplate = {
  type t
  type request = {
    compatibleNamespaceVersion: option<version>,
    definition: definitionDocument,
  }
  type response = {summary: option<flowTemplateSummary>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "CreateFlowTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagList_,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchThings = {
  type t
  type request = {
    namespaceVersion: option<version>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    entityId: urn,
  }
  type response = {
    nextToken: option<nextToken>,
    things: option<things>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: request => t = "SearchThingsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchFlowExecutions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    endTime: option<timestamp_>,
    startTime: option<timestamp_>,
    flowExecutionId: option<flowExecutionId>,
    systemInstanceId: urn,
  }
  type response = {
    nextToken: option<nextToken>,
    summaries: option<flowExecutionSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "SearchFlowExecutionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    nextToken: option<nextToken>,
    resourceArn: resourceArn,
    maxResults: option<maxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFlowExecutionMessages = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    flowExecutionId: flowExecutionId,
  }
  type response = {
    nextToken: option<nextToken>,
    messages: option<flowExecutionMessages>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "ListFlowExecutionMessagesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSystemTemplateRevisions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    id: urn,
  }
  type response = {
    nextToken: option<nextToken>,
    summaries: option<systemTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "GetSystemTemplateRevisionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSystemTemplate = {
  type t
  type request = {
    revisionNumber: option<version>,
    id: urn,
  }
  type response = {description: option<systemTemplateDescription>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "GetSystemTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFlowTemplateRevisions = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    id: urn,
  }
  type response = {
    nextToken: option<nextToken>,
    summaries: option<flowTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "GetFlowTemplateRevisionsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFlowTemplate = {
  type t
  type request = {
    revisionNumber: option<version>,
    id: urn,
  }
  type response = {description: option<flowTemplateDescription>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "GetFlowTemplateCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSystemInstance = {
  type t
  type request = {
    flowActionsRoleArn: option<roleArn>,
    metricsConfiguration: option<metricsConfiguration>,
    s3BucketName: option<s3BucketName>,
    greengrassGroupName: option<groupName>,
    target: deploymentTarget,
    definition: definitionDocument,
    tags: option<tagList_>,
  }
  type response = {summary: option<systemInstanceSummary>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "CreateSystemInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchSystemTemplates = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    filters: option<systemTemplateFilters>,
  }
  type response = {
    nextToken: option<nextToken>,
    summaries: option<systemTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "SearchSystemTemplatesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchSystemInstances = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    filters: option<systemInstanceFilters>,
  }
  type response = {
    nextToken: option<nextToken>,
    summaries: option<systemInstanceSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "SearchSystemInstancesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchFlowTemplates = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    filters: option<flowTemplateFilters>,
  }
  type response = {
    nextToken: option<nextToken>,
    summaries: option<flowTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "SearchFlowTemplatesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchEntities = {
  type t
  type request = {
    namespaceVersion: option<version>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    filters: option<entityFilters>,
    entityTypes: entityTypes,
  }
  type response = {
    nextToken: option<nextToken>,
    descriptions: option<entityDescriptions>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "SearchEntitiesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSystemInstance = {
  type t
  type request = {id: urn}
  type response = {description: option<systemInstanceDescription>}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new_: request => t = "GetSystemInstanceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEntities = {
  type t
  type request = {
    namespaceVersion: option<version>,
    ids: urns,
  }
  type response = {descriptions: option<entityDescriptions>}
  @module("@aws-sdk/client-iotthingsgraph") @new external new_: request => t = "GetEntitiesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
