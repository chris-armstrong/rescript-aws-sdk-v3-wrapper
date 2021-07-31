type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-fis") @new external createClient: unit => awsServiceClient = "FisClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type targetResourceType = string
type tagValue = string
type tagKey = string
type stopConditionValue = string
type stopConditionSource = string
type roleArn = string
type resourceType = string
type resourceArn = string
type nextToken = string
type listExperimentsMaxResults = int
type listExperimentTemplatesMaxResults = int
type listActionsMaxResults = int
type lastUpdateTime = Js.Date.t
type experimentTemplateTargetSelectionMode = string
type experimentTemplateTargetName = string
type experimentTemplateTargetFilterValue = string
type experimentTemplateTargetFilterPath = string
type experimentTemplateId = string
type experimentTemplateDescription = string
type experimentTemplateActionTargetName = string
type experimentTemplateActionStartAfter = string
type experimentTemplateActionParameterName = string
type experimentTemplateActionParameter = string
type experimentTemplateActionName = string
type experimentTemplateActionDescription = string
type experimentTargetSelectionMode = string
type experimentTargetName = string
type experimentTargetFilterValue = string
type experimentTargetFilterPath = string
type experimentStatusReason = string
type experimentStatus = [
  | @as("failed") #Failed
  | @as("stopped") #Stopped
  | @as("stopping") #Stopping
  | @as("completed") #Completed
  | @as("running") #Running
  | @as("initiating") #Initiating
  | @as("pending") #Pending
]
type experimentStartTime = Js.Date.t
type experimentId = string
type experimentEndTime = Js.Date.t
type experimentActionTargetName = string
type experimentActionStatusReason = string
type experimentActionStatus = [
  | @as("failed") #Failed
  | @as("stopped") #Stopped
  | @as("stopping") #Stopping
  | @as("cancelled") #Cancelled
  | @as("completed") #Completed
  | @as("running") #Running
  | @as("initiating") #Initiating
  | @as("pending") #Pending
]
type experimentActionStartAfter = string
type experimentActionParameterName = string
type experimentActionParameter = string
type experimentActionName = string
type experimentActionDescription = string
type exceptionMessage = string
type creationTime = Js.Date.t
type clientToken = string
type actionTargetName = string
type actionParameterRequired = bool
type actionParameterName = string
type actionParameterDescription = string
type actionId = string
type actionDescription = string
type updateExperimentTemplateStopConditionInput = {
  value: option<stopConditionValue>,
  source: stopConditionSource,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type resourceArnList = array<resourceArn>
type experimentTemplateTargetFilterValues = array<experimentTemplateTargetFilterValue>
type experimentTemplateStopCondition = {
  value: option<stopConditionValue>,
  source: option<stopConditionSource>,
}
type experimentTemplateActionTargetMap = Js.Dict.t<experimentTemplateTargetName>
type experimentTemplateActionStartAfterList = array<experimentTemplateActionStartAfter>
type experimentTemplateActionParameterMap = Js.Dict.t<experimentTemplateActionParameter>
type experimentTargetFilterValues = array<experimentTargetFilterValue>
type experimentStopCondition = {
  value: option<stopConditionValue>,
  source: option<stopConditionSource>,
}
type experimentState = {
  reason: option<experimentStatusReason>,
  status: option<experimentStatus>,
}
type experimentActionTargetMap = Js.Dict.t<experimentTargetName>
type experimentActionState = {
  reason: option<experimentActionStatusReason>,
  status: option<experimentActionStatus>,
}
type experimentActionStartAfterList = array<experimentActionStartAfter>
type experimentActionParameterMap = Js.Dict.t<experimentActionParameter>
type createExperimentTemplateStopConditionInput = {
  value: option<stopConditionValue>,
  source: stopConditionSource,
}
type actionTarget = {resourceType: option<targetResourceType>}
type actionParameter = {
  required: option<actionParameterRequired>,
  description: option<actionParameterDescription>,
}
type updateExperimentTemplateStopConditionInputList = array<
  updateExperimentTemplateStopConditionInput,
>
type updateExperimentTemplateActionInputItem = {
  startAfter: option<experimentTemplateActionStartAfterList>,
  targets: option<experimentTemplateActionTargetMap>,
  parameters: option<experimentTemplateActionParameterMap>,
  description: option<experimentTemplateActionDescription>,
  actionId: option<actionId>,
}
type experimentTemplateTargetInputFilter = {
  values: experimentTemplateTargetFilterValues,
  path: experimentTemplateTargetFilterPath,
}
type experimentTemplateTargetFilter = {
  values: option<experimentTemplateTargetFilterValues>,
  path: option<experimentTemplateTargetFilterPath>,
}
type experimentTemplateSummary = {
  tags: option<tagMap>,
  lastUpdateTime: option<lastUpdateTime>,
  creationTime: option<creationTime>,
  description: option<experimentTemplateDescription>,
  id: option<experimentTemplateId>,
}
type experimentTemplateStopConditionList = array<experimentTemplateStopCondition>
type experimentTemplateAction = {
  startAfter: option<experimentTemplateActionStartAfterList>,
  targets: option<experimentTemplateActionTargetMap>,
  parameters: option<experimentTemplateActionParameterMap>,
  description: option<experimentTemplateActionDescription>,
  actionId: option<actionId>,
}
type experimentTargetFilter = {
  values: option<experimentTargetFilterValues>,
  path: option<experimentTargetFilterPath>,
}
type experimentSummary = {
  tags: option<tagMap>,
  creationTime: option<creationTime>,
  state: option<experimentState>,
  experimentTemplateId: option<experimentTemplateId>,
  id: option<experimentId>,
}
type experimentStopConditionList = array<experimentStopCondition>
type experimentAction = {
  state: option<experimentActionState>,
  startAfter: option<experimentActionStartAfterList>,
  targets: option<experimentActionTargetMap>,
  parameters: option<experimentActionParameterMap>,
  description: option<experimentActionDescription>,
  actionId: option<actionId>,
}
type createExperimentTemplateStopConditionInputList = array<
  createExperimentTemplateStopConditionInput,
>
type createExperimentTemplateActionInput = {
  startAfter: option<experimentTemplateActionStartAfterList>,
  targets: option<experimentTemplateActionTargetMap>,
  parameters: option<experimentTemplateActionParameterMap>,
  description: option<experimentTemplateActionDescription>,
  actionId: actionId,
}
type actionTargetMap = Js.Dict.t<actionTarget>
type actionParameterMap = Js.Dict.t<actionParameter>
type updateExperimentTemplateActionInputMap = Js.Dict.t<updateExperimentTemplateActionInputItem>
type experimentTemplateTargetFilterList = array<experimentTemplateTargetFilter>
type experimentTemplateTargetFilterInputList = array<experimentTemplateTargetInputFilter>
type experimentTemplateSummaryList = array<experimentTemplateSummary>
type experimentTemplateActionMap = Js.Dict.t<experimentTemplateAction>
type experimentTargetFilterList = array<experimentTargetFilter>
type experimentSummaryList = array<experimentSummary>
type experimentActionMap = Js.Dict.t<experimentAction>
type createExperimentTemplateActionInputMap = Js.Dict.t<createExperimentTemplateActionInput>
type actionSummary = {
  tags: option<tagMap>,
  targets: option<actionTargetMap>,
  description: option<actionDescription>,
  id: option<actionId>,
}
type action = {
  tags: option<tagMap>,
  targets: option<actionTargetMap>,
  parameters: option<actionParameterMap>,
  description: option<actionDescription>,
  id: option<actionId>,
}
type updateExperimentTemplateTargetInput = {
  selectionMode: experimentTemplateTargetSelectionMode,
  filters: option<experimentTemplateTargetFilterInputList>,
  resourceTags: option<tagMap>,
  resourceArns: option<resourceArnList>,
  resourceType: resourceType,
}
type experimentTemplateTarget = {
  selectionMode: option<experimentTemplateTargetSelectionMode>,
  filters: option<experimentTemplateTargetFilterList>,
  resourceTags: option<tagMap>,
  resourceArns: option<resourceArnList>,
  resourceType: option<resourceType>,
}
type experimentTarget = {
  selectionMode: option<experimentTargetSelectionMode>,
  filters: option<experimentTargetFilterList>,
  resourceTags: option<tagMap>,
  resourceArns: option<resourceArnList>,
  resourceType: option<resourceType>,
}
type createExperimentTemplateTargetInput = {
  selectionMode: experimentTemplateTargetSelectionMode,
  filters: option<experimentTemplateTargetFilterInputList>,
  resourceTags: option<tagMap>,
  resourceArns: option<resourceArnList>,
  resourceType: resourceType,
}
type actionSummaryList = array<actionSummary>
type updateExperimentTemplateTargetInputMap = Js.Dict.t<updateExperimentTemplateTargetInput>
type experimentTemplateTargetMap = Js.Dict.t<experimentTemplateTarget>
type experimentTargetMap = Js.Dict.t<experimentTarget>
type createExperimentTemplateTargetInputMap = Js.Dict.t<createExperimentTemplateTargetInput>
type experimentTemplate = {
  tags: option<tagMap>,
  roleArn: option<roleArn>,
  lastUpdateTime: option<lastUpdateTime>,
  creationTime: option<creationTime>,
  stopConditions: option<experimentTemplateStopConditionList>,
  actions: option<experimentTemplateActionMap>,
  targets: option<experimentTemplateTargetMap>,
  description: option<experimentTemplateDescription>,
  id: option<experimentTemplateId>,
}
type experiment = {
  tags: option<tagMap>,
  endTime: option<experimentEndTime>,
  startTime: option<experimentStartTime>,
  creationTime: option<creationTime>,
  stopConditions: option<experimentStopConditionList>,
  actions: option<experimentActionMap>,
  targets: option<experimentTargetMap>,
  state: option<experimentState>,
  roleArn: option<roleArn>,
  experimentTemplateId: option<experimentTemplateId>,
  id: option<experimentId>,
}

module UntagResource = {
  type t
  type request = {
    tagKeys: option<tagKeyList>,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-fis") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    tags: tagMap,
    resourceArn: resourceArn,
  }
  type response = unit
  @module("@aws-sdk/client-fis") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {resourceArn: resourceArn}
  type response = {tags: option<tagMap>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExperiments = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<listExperimentsMaxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    experiments: option<experimentSummaryList>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListExperimentsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExperimentTemplates = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<listExperimentTemplatesMaxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    experimentTemplates: option<experimentTemplateSummaryList>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListExperimentTemplatesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAction = {
  type t
  type request = {id: actionId}
  type response = {action: option<action>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "GetActionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActions = {
  type t
  type request = {
    nextToken: option<nextToken>,
    maxResults: option<listActionsMaxResults>,
  }
  type response = {
    nextToken: option<nextToken>,
    actions: option<actionSummaryList>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateExperimentTemplate = {
  type t
  type request = {
    roleArn: option<roleArn>,
    actions: option<updateExperimentTemplateActionInputMap>,
    targets: option<updateExperimentTemplateTargetInputMap>,
    stopConditions: option<updateExperimentTemplateStopConditionInputList>,
    description: option<experimentTemplateDescription>,
    id: experimentTemplateId,
  }
  type response = {experimentTemplate: option<experimentTemplate>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "UpdateExperimentTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopExperiment = {
  type t
  type request = {id: experimentId}
  type response = {experiment: option<experiment>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "StopExperimentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartExperiment = {
  type t
  type request = {
    tags: option<tagMap>,
    experimentTemplateId: experimentTemplateId,
    clientToken: clientToken,
  }
  type response = {experiment: option<experiment>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "StartExperimentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExperimentTemplate = {
  type t
  type request = {id: experimentTemplateId}
  type response = {experimentTemplate: option<experimentTemplate>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "GetExperimentTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExperiment = {
  type t
  type request = {id: experimentId}
  type response = {experiment: option<experiment>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "GetExperimentCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteExperimentTemplate = {
  type t
  type request = {id: experimentTemplateId}
  type response = {experimentTemplate: option<experimentTemplate>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "DeleteExperimentTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateExperimentTemplate = {
  type t
  type request = {
    tags: option<tagMap>,
    roleArn: roleArn,
    actions: createExperimentTemplateActionInputMap,
    targets: option<createExperimentTemplateTargetInputMap>,
    stopConditions: createExperimentTemplateStopConditionInputList,
    description: experimentTemplateDescription,
    clientToken: clientToken,
  }
  type response = {experimentTemplate: option<experimentTemplate>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "CreateExperimentTemplateCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
