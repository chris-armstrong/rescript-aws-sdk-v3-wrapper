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
@ocaml.doc("<p>An AWS IoT thing.</p>")
type thing = {
  @ocaml.doc("<p>The name of the thing.</p>") thingName: option<thingName>,
  @ocaml.doc("<p>The ARN of the thing.</p>") thingArn: option<thingArn>,
}
type tagKeyList = array<tagKey>
@ocaml.doc(
  "<p>Metadata assigned to an AWS IoT Things Graph resource consisting of a key-value pair.</p>"
)
type tag = {
  @ocaml.doc(
    "<p>The optional value of the tag. The string value can be from 1 to 256 Unicode characters in length.</p>"
  )
  value: tagValue,
  @ocaml.doc(
    "<p>The required name of the tag. The string value can be from 1 to 128 Unicode characters in length.</p>"
  )
  key: tagKey,
}
@ocaml.doc("<p>An object that contains information about a system.</p>")
type systemTemplateSummary = {
  @ocaml.doc("<p>The date when the system was created.</p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p>The revision number of the system.</p>") revisionNumber: option<version>,
  @ocaml.doc("<p>The ARN of the system.</p>") arn: option<arn>,
  @ocaml.doc("<p>The ID of the system.</p>") id: option<urn>,
}
type systemTemplateFilterValues = array<systemTemplateFilterValue>
@ocaml.doc("<p>An object that contains summary information about a system instance.</p>")
type systemInstanceSummary = {
  @ocaml.doc("<p>The version of the Greengrass group where the system instance is deployed.</p>")
  greengrassGroupVersionId: option<greengrassGroupVersionId>,
  @ocaml.doc("<p>The ID of the Greengrass group where the system instance is deployed.</p>")
  greengrassGroupId: option<greengrassGroupId>,
  @ocaml.doc("<p>
         
         The date and time when the system instance was last updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The date when the system instance was created.</p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p>The ID of the Greengrass group where the system instance is deployed.</p>")
  greengrassGroupName: option<groupName>,
  @ocaml.doc("<p>The target of the system instance.</p>") target: option<deploymentTarget>,
  @ocaml.doc("<p>The status of the system instance.</p>")
  status: option<systemInstanceDeploymentStatus>,
  @ocaml.doc("<p>The ARN of the system instance.</p>") arn: option<arn>,
  @ocaml.doc("<p>The ID of the system instance.</p>") id: option<urn>,
}
type systemInstanceFilterValues = array<systemInstanceFilterValue>
type stringList = array<string_>
@ocaml.doc(
  "<p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>"
)
type metricsConfiguration = {
  @ocaml.doc("<p>The ARN of the role that is used to collect cloud metrics.</p>")
  metricRuleRoleArn: option<roleArn>,
  @ocaml.doc("<p>A Boolean that specifies whether cloud metrics are collected.</p>")
  cloudMetricEnabled: option<enabled>,
}
@ocaml.doc("<p>An object that contains summary information about a workflow.</p>")
type flowTemplateSummary = {
  @ocaml.doc("<p>The date when the workflow was created.</p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p>The revision number of the workflow.</p>") revisionNumber: option<version>,
  @ocaml.doc("<p>The ARN of the workflow.</p>") arn: option<arn>,
  @ocaml.doc("<p>The ID of the workflow.</p>") id: option<urn>,
}
type flowTemplateFilterValues = array<flowTemplateFilterValue>
@ocaml.doc("<p>An object that contains summary information about a flow execution.</p>")
type flowExecutionSummary = {
  @ocaml.doc("<p>The date and time when the flow execution summary was last updated.</p>")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The date and time when the flow execution summary was created.</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>The ID of the flow.</p>") flowTemplateId: option<urn>,
  @ocaml.doc("<p>The ID of the system instance that contains the flow.</p>")
  systemInstanceId: option<urn>,
  @ocaml.doc("<p>The current status of the flow execution.</p>")
  status: option<flowExecutionStatus>,
  @ocaml.doc("<p>The ID of the flow execution.</p>") flowExecutionId: option<flowExecutionId>,
}
@ocaml.doc("<p>An object that contains information about a flow event.</p>")
type flowExecutionMessage = {
  @ocaml.doc("<p>A string containing information about the flow event.</p>")
  payload: option<flowExecutionMessagePayload>,
  @ocaml.doc("<p>The date and time when the message was last updated.</p>") @as("timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The type of flow event .</p>") eventType: option<flowExecutionEventType>,
  @ocaml.doc("<p>The unique identifier of the message.</p>")
  messageId: option<flowExecutionMessageId>,
}
type entityTypes = array<entityType>
type entityFilterValues = array<entityFilterValue>
@ocaml.doc(
  "<p>An object that contains the ID and revision number of a workflow or system that is part of a deployment.</p>"
)
type dependencyRevision = {
  @ocaml.doc("<p>The revision number of the workflow or system.</p>")
  revisionNumber: option<version>,
  @ocaml.doc("<p>The ID of the workflow or system.</p>") id: option<urn>,
}
@ocaml.doc("<p>A document that defines an entity. </p>")
type definitionDocument = {
  @ocaml.doc("<p>The GraphQL text that defines the entity.</p>") text: definitionText,
  @ocaml.doc(
    "<p>The language used to define the entity. <code>GRAPHQL</code> is the only valid value.</p>"
  )
  language: definitionLanguage,
}
type things = array<thing>
type tagList_ = array<tag>
type systemTemplateSummaries = array<systemTemplateSummary>
@ocaml.doc("<p>An object that filters a system search.</p>")
type systemTemplateFilter = {
  @ocaml.doc(
    "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>"
  )
  value: systemTemplateFilterValues,
  @ocaml.doc("<p>The name of the system search filter field.</p>") name: systemTemplateFilterName,
}
@ocaml.doc("<p>An object that contains a system's definition document and summary information.</p>")
type systemTemplateDescription = {
  @ocaml.doc(
    "<p>The namespace version against which the system was validated. Use this value in your system instance.</p>"
  )
  validatedNamespaceVersion: option<version>,
  @ocaml.doc("<p>The definition document of a system.</p>") definition: option<definitionDocument>,
  @ocaml.doc("<p>An object that contains summary information about a system.</p>")
  summary: option<systemTemplateSummary>,
}
type systemInstanceSummaries = array<systemInstanceSummary>
@ocaml.doc("<p>An object that filters a system instance search. 
         Multiple filters function as OR criteria in the search. For example a search that includes a GREENGRASS_GROUP_NAME and a 
         STATUS filter searches for system instances in the specified Greengrass group that have the specified status.</p>")
type systemInstanceFilter = {
  @ocaml.doc(
    "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search. </p>"
  )
  value: option<systemInstanceFilterValues>,
  @ocaml.doc("<p>The name of the search filter field.</p>") name: option<systemInstanceFilterName>,
}
type flowTemplateSummaries = array<flowTemplateSummary>
@ocaml.doc("<p>An object that filters a workflow search.</p>")
type flowTemplateFilter = {
  @ocaml.doc(
    "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>"
  )
  value: flowTemplateFilterValues,
  @ocaml.doc("<p>The name of the search filter field.</p>") name: flowTemplateFilterName,
}
@ocaml.doc("<p>An object that contains a workflow's definition and summary information.</p>")
type flowTemplateDescription = {
  @ocaml.doc(
    "<p>The version of the user's namespace against which the workflow was validated. Use this value in your system instance.</p>"
  )
  validatedNamespaceVersion: option<version>,
  @ocaml.doc("<p>A workflow's definition document.</p>") definition: option<definitionDocument>,
  @ocaml.doc("<p>An object that contains summary information about a workflow.</p>")
  summary: option<flowTemplateSummary>,
}
type flowExecutionSummaries = array<flowExecutionSummary>
type flowExecutionMessages = array<flowExecutionMessage>
@ocaml.doc("<p>An object that filters an entity search. Multiple filters function as OR criteria in the search. For example a search that includes 
      a <code>NAMESPACE</code> and a <code>REFERENCED_ENTITY_ID</code> filter searches for entities in the specified namespace that use the entity specified by 
      the value of <code>REFERENCED_ENTITY_ID</code>.</p>")
type entityFilter = {
  @ocaml.doc(
    "<p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>"
  )
  value: option<entityFilterValues>,
  @ocaml.doc("<p>The name of the entity search filter field. <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example, 
         you can filter on the ID of a property that is used in a state.</p>")
  name: option<entityFilterName>,
}
@ocaml.doc("<p>Describes the properties of an entity.</p>")
type entityDescription = {
  @ocaml.doc("<p>The definition document of the entity.</p>")
  definition: option<definitionDocument>,
  @ocaml.doc("<p>The time at which the entity was created.</p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p>The entity type.</p>") @as("type") type_: option<entityType>,
  @ocaml.doc("<p>The entity ARN.</p>") arn: option<arn>,
  @ocaml.doc("<p>The entity ID.</p>") id: option<urn>,
}
type dependencyRevisions = array<dependencyRevision>
type systemTemplateFilters = array<systemTemplateFilter>
type systemInstanceFilters = array<systemInstanceFilter>
@ocaml.doc("<p>An object that contains a system instance definition and summary information.</p>")
type systemInstanceDescription = {
  @ocaml.doc("<p>The AWS Identity and Access Management (IAM) role that AWS IoT Things Graph assumes during flow execution in a 
      cloud deployment. This role must have read and write permissionss to AWS Lambda and AWS IoT and to any other 
      AWS services that the flow uses.</p>")
  flowActionsRoleArn: option<roleArn>,
  @ocaml.doc(
    "<p>A list of objects that contain all of the IDs and revision numbers of workflows and systems that are used in a system instance.</p>"
  )
  validatedDependencyRevisions: option<dependencyRevisions>,
  @ocaml.doc(
    "<p>The version of the user's namespace against which the system instance was validated.</p>"
  )
  validatedNamespaceVersion: option<version>,
  metricsConfiguration: option<metricsConfiguration>,
  @ocaml.doc(
    "<p>The Amazon Simple Storage Service bucket where information about a system instance is stored.</p>"
  )
  s3BucketName: option<s3BucketName>,
  definition: option<definitionDocument>,
  @ocaml.doc("<p>An object that contains summary information about a system instance.</p>")
  summary: option<systemInstanceSummary>,
}
type flowTemplateFilters = array<flowTemplateFilter>
type entityFilters = array<entityFilter>
type entityDescriptions = array<entityDescription>
@ocaml.doc("<fullname>AWS IoT Things Graph</fullname>
         <p>AWS IoT Things Graph provides an integrated set of tools that enable developers to connect devices and services that use different standards, 
       such as units of measure and communication protocols. AWS IoT Things Graph makes it possible to build IoT applications with little to no code by connecting devices and services 
       and defining how they interact at an abstract level.</p>
         <p>For more information about how AWS IoT Things Graph works, see the <a href=\"https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html\">User Guide</a>.</p>")
module GetNamespaceDeletionStatus = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>An error code returned by the namespace deletion task.</p>")
    errorMessage: option<string_>,
    @ocaml.doc("<p>An error code returned by the namespace deletion task.</p>")
    errorCode: option<namespaceDeletionStatusErrorCodes>,
    @ocaml.doc("<p>The status of the deletion request.</p>")
    status: option<namespaceDeletionStatus>,
    @ocaml.doc("<p>The name of the namespace that is being deleted.</p>")
    namespaceName: option<namespaceName>,
    @ocaml.doc("<p>The ARN of the namespace that is being deleted.</p>") namespaceArn: option<arn>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "GetNamespaceDeletionStatusCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DissociateEntityFromThing = {
  type t
  type request = {
    @ocaml.doc("<p>The entity type from which to disassociate the thing.</p>")
    entityType: entityType,
    @ocaml.doc("<p>The name of the thing to disassociate.</p>") thingName: thingName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DissociateEntityFromThingCommand"
  let make = (~entityType, ~thingName, ()) => new({entityType, thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeNamespace = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the user's namespace. Set this to <code>aws</code> to get the public namespace.</p>"
    )
    namespaceName: option<namespaceName>,
  }
  type response = {
    @ocaml.doc("<p>The version of the user's namespace to describe.</p>")
    namespaceVersion: option<version>,
    @ocaml.doc("<p>The version of the public namespace that the latest version is tracking.</p>")
    trackingNamespaceVersion: option<version>,
    @ocaml.doc(
      "<p>The name of the public namespace that the latest namespace version is tracking.</p>"
    )
    trackingNamespaceName: option<namespaceName>,
    @ocaml.doc("<p>The name of the namespace.</p>") namespaceName: option<namespaceName>,
    @ocaml.doc("<p>The ARN of the namespace.</p>") namespaceArn: option<arn>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DescribeNamespaceCommand"
  let make = (~namespaceName=?, ()) => new({namespaceName: namespaceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeprecateSystemTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the system to delete.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
         </p>")
    id: urn,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DeprecateSystemTemplateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeprecateFlowTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workflow to be deleted.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
         </p>")
    id: urn,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DeprecateFlowTemplateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSystemTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the system to be deleted.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
         </p>")
    id: urn,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DeleteSystemTemplateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSystemInstance = {
  type t
  type request = {@ocaml.doc("<p>The ID of the system instance to be deleted.</p>") id: option<urn>}
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DeleteSystemInstanceCommand"
  let make = (~id=?, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteNamespace = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The name of the namespace to be deleted.</p>")
    namespaceName: option<namespaceName>,
    @ocaml.doc("<p>The ARN of the namespace to be deleted.</p>") namespaceArn: option<arn>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DeleteNamespaceCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteFlowTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workflow to be deleted.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
         </p>")
    id: urn,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DeleteFlowTemplateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateEntityToThing = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
    )
    namespaceVersion: option<version>,
    @ocaml.doc("<p>The ID of the device to be associated with the thing.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
         </p>")
    entityId: urn,
    @ocaml.doc("<p>The name of the thing to which the entity is to be associated.</p>")
    thingName: thingName,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "AssociateEntityToThingCommand"
  let make = (~entityId, ~thingName, ~namespaceVersion=?, ()) =>
    new({namespaceVersion, entityId, thingName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UploadEntityDefinitions = {
  type t
  type request = {
    @ocaml.doc("<p>A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new <code>DefinitionDocument</code>. 
         If set to <code>true</code>, the upload will create a new namespace version.</p>")
    deprecateExistingEntities: option<deprecateExistingEntities>,
    @ocaml.doc(
      "<p>A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to <code>true</code>, the upload will create a new namespace version.</p>"
    )
    syncWithPublicNamespace: option<syncWithPublicNamespace>,
    @ocaml.doc("<p>The <code>DefinitionDocument</code> that defines the updated entities.</p>")
    document: option<definitionDocument>,
  }
  type response = {
    @ocaml.doc(
      "<p>The ID that specifies the upload action. You can use this to track the status of the upload.</p>"
    )
    uploadId: uploadId,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "UploadEntityDefinitionsCommand"
  let make = (~deprecateExistingEntities=?, ~syncWithPublicNamespace=?, ~document=?, ()) =>
    new({deprecateExistingEntities, syncWithPublicNamespace, document})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateSystemTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
         <p>If no value is specified, the latest version is used by default.</p>")
    compatibleNamespaceVersion: option<version>,
    @ocaml.doc(
      "<p>The <code>DefinitionDocument</code> that contains the updated system definition.</p>"
    )
    definition: definitionDocument,
    @ocaml.doc("<p>The ID of the system to be updated.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
         </p>")
    id: urn,
  }
  type response = {
    @ocaml.doc("<p>An object containing summary information about the updated system.</p>")
    summary: option<systemTemplateSummary>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "UpdateSystemTemplateCommand"
  let make = (~definition, ~id, ~compatibleNamespaceVersion=?, ()) =>
    new({compatibleNamespaceVersion, definition, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateFlowTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The version of the user's namespace.</p>
         <p>If no value is specified, the latest version is used by default. Use the <code>GetFlowTemplateRevisions</code> if you want to find earlier revisions of the flow 
      to update.</p>")
    compatibleNamespaceVersion: option<version>,
    @ocaml.doc(
      "<p>The <code>DefinitionDocument</code> that contains the updated workflow definition.</p>"
    )
    definition: definitionDocument,
    @ocaml.doc("<p>The ID of the workflow to be updated.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
         </p>")
    id: urn,
  }
  type response = {
    @ocaml.doc("<p>An object containing summary information about the updated workflow.</p>")
    summary: option<flowTemplateSummary>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "UpdateFlowTemplateCommand"
  let make = (~definition, ~id, ~compatibleNamespaceVersion=?, ()) =>
    new({compatibleNamespaceVersion, definition, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed. </p>
         <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html#cli-using-param-json\">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. </p>")
    tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource whose tags are to be removed.</p>"
    )
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UndeploySystemInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the system instance to remove from its target.</p>") id: option<urn>,
  }
  type response = {
    @ocaml.doc(
      "<p>An object that contains summary information about the system instance that was removed from its target.</p>"
    )
    summary: option<systemInstanceSummary>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "UndeploySystemInstanceCommand"
  let make = (~id=?, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetUploadStatus = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the upload. This value is returned by the <code>UploadEntityDefinitions</code> action.</p>"
    )
    uploadId: uploadId,
  }
  type response = {
    @ocaml.doc("<p>The date at which the upload was created.</p>") createdDate: timestamp_,
    @ocaml.doc("<p>The reason for an upload failure.</p>") failureReason: option<stringList>,
    @ocaml.doc(
      "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
    )
    namespaceVersion: option<version>,
    @ocaml.doc("<p>The name of the upload's namespace.</p>") namespaceName: option<namespaceName>,
    @ocaml.doc("<p>The ARN of the upload.</p>") namespaceArn: option<arn>,
    @ocaml.doc(
      "<p>The status of the upload. The initial status is <code>IN_PROGRESS</code>. The response show all validation failures if the upload fails.</p>"
    )
    uploadStatus: uploadStatus,
    @ocaml.doc("<p>The ID of the upload.</p>") uploadId: uploadId,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "GetUploadStatusCommand"
  let make = (~uploadId, ()) => new({uploadId: uploadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeploySystemInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the system instance. This value is returned by the <code>CreateSystemInstance</code> action.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
         </p>")
    id: option<urn>,
  }
  type response = {
    @ocaml.doc("<p>The ID of the Greengrass deployment used to deploy the system instance.</p>")
    greengrassDeploymentId: option<greengrassDeploymentId>,
    @ocaml.doc(
      "<p>An object that contains summary information about a system instance that was deployed. </p>"
    )
    summary: systemInstanceSummary,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "DeploySystemInstanceCommand"
  let make = (~id=?, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSystemTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace version in which the system is to be created.</p>
         <p>If no value is specified, the latest version is used by default.</p>")
    compatibleNamespaceVersion: option<version>,
    @ocaml.doc("<p>The <code>DefinitionDocument</code> used to create the system.</p>")
    definition: definitionDocument,
  }
  type response = {
    @ocaml.doc("<p>The summary object that describes the created system.</p>")
    summary: option<systemTemplateSummary>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "CreateSystemTemplateCommand"
  let make = (~definition, ~compatibleNamespaceVersion=?, ()) =>
    new({compatibleNamespaceVersion, definition})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFlowTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The namespace version in which the workflow is to be created.</p>
         <p>If no value is specified, the latest version is used by default.</p>")
    compatibleNamespaceVersion: option<version>,
    @ocaml.doc("<p>The workflow <code>DefinitionDocument</code>.</p>")
    definition: definitionDocument,
  }
  type response = {
    @ocaml.doc("<p>The summary object that describes the created workflow.</p>")
    summary: option<flowTemplateSummary>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "CreateFlowTemplateCommand"
  let make = (~definition, ~compatibleNamespaceVersion=?, ()) =>
    new({compatibleNamespaceVersion, definition})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tags to add to the resource.></p>") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource whose tags are returned.</p>")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-iotthingsgraph") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SearchThings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
    )
    namespaceVersion: option<version>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the entity to which the things are associated.</p>
         <p>The IDs should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
         </p>")
    entityId: urn,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of things in the result set.</p>") things: option<things>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new external new: request => t = "SearchThingsCommand"
  let make = (~entityId, ~namespaceVersion=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({namespaceVersion, maxResults, nextToken, entityId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchFlowExecutions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The date and time of the latest flow execution to return.</p>")
    endTime: option<timestamp_>,
    @ocaml.doc("<p>The date and time of the earliest flow execution to return.</p>")
    startTime: option<timestamp_>,
    @ocaml.doc("<p>The ID of a flow execution.</p>") flowExecutionId: option<flowExecutionId>,
    @ocaml.doc("<p>The ID of the system instance that contains the flow.</p>")
    systemInstanceId: urn,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of objects that contain summary information about each workflow execution in the result set.</p>"
    )
    summaries: option<flowExecutionSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "SearchFlowExecutionsCommand"
  let make = (
    ~systemInstanceId,
    ~maxResults=?,
    ~nextToken=?,
    ~endTime=?,
    ~startTime=?,
    ~flowExecutionId=?,
    (),
  ) => new({maxResults, nextToken, endTime, startTime, flowExecutionId, systemInstanceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The token that specifies the next page of results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource whose tags are to be returned.</p>"
    )
    resourceArn: resourceArn,
    @ocaml.doc("<p>The maximum number of tags to return.</p>") maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token that specifies the next page of results to return.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>List of tags returned by the <code>ListTagsForResource</code> operation.</p>")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, resourceArn, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFlowExecutionMessages = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the flow execution.</p>") flowExecutionId: flowExecutionId,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of objects that contain information about events in the specified flow execution.</p>"
    )
    messages: option<flowExecutionMessages>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "ListFlowExecutionMessagesCommand"
  let make = (~flowExecutionId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, flowExecutionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSystemTemplateRevisions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the system template.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
         </p>")
    id: urn,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of objects that contain summary data about the system template revisions.</p>"
    )
    summaries: option<systemTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "GetSystemTemplateRevisionsCommand"
  let make = (~id, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSystemTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The number that specifies the revision of the system to get.</p>")
    revisionNumber: option<version>,
    @ocaml.doc("<p>The ID of the system to get. This ID must be in the user's namespace.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
         </p>")
    id: urn,
  }
  type response = {
    @ocaml.doc("<p>An object that contains summary data about the system.</p>")
    description: option<systemTemplateDescription>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "GetSystemTemplateCommand"
  let make = (~id, ~revisionNumber=?, ()) => new({revisionNumber, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFlowTemplateRevisions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ID of the workflow.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
         </p>")
    id: urn,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that provide summary data about each revision.</p>")
    summaries: option<flowTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "GetFlowTemplateRevisionsCommand"
  let make = (~id, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFlowTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The number of the workflow revision to retrieve.</p>")
    revisionNumber: option<version>,
    @ocaml.doc("<p>The ID of the workflow.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
         </p>")
    id: urn,
  }
  type response = {
    @ocaml.doc("<p>The object that describes the specified workflow.</p>")
    description: option<flowTemplateDescription>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "GetFlowTemplateCommand"
  let make = (~id, ~revisionNumber=?, ()) => new({revisionNumber, id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSystemInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have 
      read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes.  This 
      value is required if the value of the <code>target</code> parameter is <code>CLOUD</code>.</p>")
    flowActionsRoleArn: option<roleArn>,
    metricsConfiguration: option<metricsConfiguration>,
    @ocaml.doc("<p>The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if 
         the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>")
    s3BucketName: option<s3BucketName>,
    @ocaml.doc("<p>The name of the Greengrass group where the system instance will be deployed. This value is required if 
      the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>")
    greengrassGroupName: option<groupName>,
    @ocaml.doc(
      "<p>The target type of the deployment. Valid values are <code>GREENGRASS</code> and <code>CLOUD</code>.</p>"
    )
    target: deploymentTarget,
    definition: definitionDocument,
    @ocaml.doc(
      "<p>Metadata, consisting of key-value pairs, that can be used to categorize your system instances.</p>"
    )
    tags: option<tagList_>,
  }
  type response = {
    @ocaml.doc("<p>The summary object that describes the new system instance.</p>")
    summary: option<systemInstanceSummary>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "CreateSystemInstanceCommand"
  let make = (
    ~target,
    ~definition,
    ~flowActionsRoleArn=?,
    ~metricsConfiguration=?,
    ~s3BucketName=?,
    ~greengrassGroupName=?,
    ~tags=?,
    (),
  ) =>
    new({
      flowActionsRoleArn,
      metricsConfiguration,
      s3BucketName,
      greengrassGroupName,
      target,
      definition,
      tags,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchSystemTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of filters that limit the result set. The only valid filter is <code>FLOW_TEMPLATE_ID</code>.</p>"
    )
    filters: option<systemTemplateFilters>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of objects that contain summary information about each system deployment in the result set.</p>"
    )
    summaries: option<systemTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "SearchSystemTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) => new({maxResults, nextToken, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchSystemInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Optional filter to apply to the search. Valid filters are <code>SYSTEM_TEMPLATE_ID</code>, <code>STATUS</code>, and 
         <code>GREENGRASS_GROUP_NAME</code>.</p>
         <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>")
    filters: option<systemInstanceFilters>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of objects that contain summary data abour the system instances in the result set.</p>"
    )
    summaries: option<systemInstanceSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "SearchSystemInstancesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) => new({maxResults, nextToken, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchFlowTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of objects that limit the result set. The only valid filter is <code>DEVICE_MODEL_ID</code>.</p>"
    )
    filters: option<flowTemplateFilters>,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An array of objects that contain summary information about each workflow in the result set.</p>"
    )
    summaries: option<flowTemplateSummaries>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "SearchFlowTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) => new({maxResults, nextToken, filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchEntities = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
    )
    namespaceVersion: option<version>,
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The string that specifies the next page of results. Use this when you're paginating results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Optional filter to apply to the search. Valid filters are <code>NAME</code> 
            <code>NAMESPACE</code>, <code>SEMANTIC_TYPE_PATH</code> and <code>REFERENCED_ENTITY_ID</code>. 
         <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example, 
      you can filter on the ID of a property that is used in a state.</p>
         <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>")
    filters: option<entityFilters>,
    @ocaml.doc("<p>The entity types for which to search.</p>") entityTypes: entityTypes,
  }
  type response = {
    @ocaml.doc(
      "<p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of descriptions for each entity returned in the search result.</p>")
    descriptions: option<entityDescriptions>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "SearchEntitiesCommand"
  let make = (~entityTypes, ~namespaceVersion=?, ~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({namespaceVersion, maxResults, nextToken, filters, entityTypes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSystemInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the system deployment instance. This value is returned by <code>CreateSystemInstance</code>.</p>
         <p>The ID should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
         </p>")
    id: urn,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the system instance.</p>")
    description: option<systemInstanceDescription>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new
  external new: request => t = "GetSystemInstanceCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEntities = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>"
    )
    namespaceVersion: option<version>,
    @ocaml.doc("<p>An array of entity IDs.</p>
         <p>The IDs should be in the following format.</p>
         <p>
            <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
         </p>")
    ids: urns,
  }
  type response = {
    @ocaml.doc("<p>An array of descriptions for the specified entities.</p>")
    descriptions: option<entityDescriptions>,
  }
  @module("@aws-sdk/client-iotthingsgraph") @new external new: request => t = "GetEntitiesCommand"
  let make = (~ids, ~namespaceVersion=?, ()) => new({namespaceVersion, ids})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
