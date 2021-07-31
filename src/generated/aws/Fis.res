type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type targetResourceType = string
type tagValue = string
type tagKey = string
type stopConditionValue = string
type stopConditionSource = string
type roleArn = string
type resourceType = string
type resourceArn = string
type nextToken = string
type listExperimentsMaxResults = int;
type listExperimentTemplatesMaxResults = int;
type listActionsMaxResults = int;
type lastUpdateTime = Js.Date.t;
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
type experimentStatus = [@as("failed") #failed | @as("stopped") #stopped | @as("stopping") #stopping | @as("completed") #completed | @as("running") #running | @as("initiating") #initiating | @as("pending") #pending]
type experimentStartTime = Js.Date.t;
type experimentId = string
type experimentEndTime = Js.Date.t;
type experimentActionTargetName = string
type experimentActionStatusReason = string
type experimentActionStatus = [@as("failed") #failed | @as("stopped") #stopped | @as("stopping") #stopping | @as("cancelled") #cancelled | @as("completed") #completed | @as("running") #running | @as("initiating") #initiating | @as("pending") #pending]
type experimentActionStartAfter = string
type experimentActionParameterName = string
type experimentActionParameter = string
type experimentActionName = string
type experimentActionDescription = string
type exceptionMessage = string
type creationTime = Js.Date.t;
type clientToken = string
type actionTargetName = string
type actionParameterRequired = bool;
type actionParameterName = string
type actionParameterDescription = string
type actionId = string
type actionDescription = string
type updateExperimentTemplateStopConditionInput = {
@as("value") value: stopConditionValue,
@as("source") source: option<stopConditionSource>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type resourceArnList = array<resourceArn>
type experimentTemplateTargetFilterValues = array<experimentTemplateTargetFilterValue>
type experimentTemplateStopCondition = {
@as("value") value: stopConditionValue,
@as("source") source: stopConditionSource
}
type experimentTemplateActionTargetMap = Js.Dict.t< experimentTemplateTargetName>
type experimentTemplateActionStartAfterList = array<experimentTemplateActionStartAfter>
type experimentTemplateActionParameterMap = Js.Dict.t< experimentTemplateActionParameter>
type experimentTargetFilterValues = array<experimentTargetFilterValue>
type experimentStopCondition = {
@as("value") value: stopConditionValue,
@as("source") source: stopConditionSource
}
type experimentState = {
@as("reason") reason: experimentStatusReason,
@as("status") status: experimentStatus
}
type experimentActionTargetMap = Js.Dict.t< experimentTargetName>
type experimentActionState = {
@as("reason") reason: experimentActionStatusReason,
@as("status") status: experimentActionStatus
}
type experimentActionStartAfterList = array<experimentActionStartAfter>
type experimentActionParameterMap = Js.Dict.t< experimentActionParameter>
type createExperimentTemplateStopConditionInput = {
@as("value") value: stopConditionValue,
@as("source") source: option<stopConditionSource>
}
type actionTarget = {
@as("resourceType") resourceType: targetResourceType
}
type actionParameter = {
@as("required") required: actionParameterRequired,
@as("description") description: actionParameterDescription
}
type updateExperimentTemplateStopConditionInputList = array<updateExperimentTemplateStopConditionInput>
type updateExperimentTemplateActionInputItem = {
@as("startAfter") startAfter: experimentTemplateActionStartAfterList,
@as("targets") targets: experimentTemplateActionTargetMap,
@as("parameters") parameters: experimentTemplateActionParameterMap,
@as("description") description: experimentTemplateActionDescription,
@as("actionId") actionId: actionId
}
type experimentTemplateTargetInputFilter = {
@as("values") values: option<experimentTemplateTargetFilterValues>,
@as("path") path: option<experimentTemplateTargetFilterPath>
}
type experimentTemplateTargetFilter = {
@as("values") values: experimentTemplateTargetFilterValues,
@as("path") path: experimentTemplateTargetFilterPath
}
type experimentTemplateSummary = {
@as("tags") tags: tagMap,
@as("lastUpdateTime") lastUpdateTime: lastUpdateTime,
@as("creationTime") creationTime: creationTime,
@as("description") description: experimentTemplateDescription,
@as("id") id: experimentTemplateId
}
type experimentTemplateStopConditionList = array<experimentTemplateStopCondition>
type experimentTemplateAction = {
@as("startAfter") startAfter: experimentTemplateActionStartAfterList,
@as("targets") targets: experimentTemplateActionTargetMap,
@as("parameters") parameters: experimentTemplateActionParameterMap,
@as("description") description: experimentTemplateActionDescription,
@as("actionId") actionId: actionId
}
type experimentTargetFilter = {
@as("values") values: experimentTargetFilterValues,
@as("path") path: experimentTargetFilterPath
}
type experimentSummary = {
@as("tags") tags: tagMap,
@as("creationTime") creationTime: creationTime,
@as("state") state: experimentState,
@as("experimentTemplateId") experimentTemplateId: experimentTemplateId,
@as("id") id: experimentId
}
type experimentStopConditionList = array<experimentStopCondition>
type experimentAction = {
@as("state") state: experimentActionState,
@as("startAfter") startAfter: experimentActionStartAfterList,
@as("targets") targets: experimentActionTargetMap,
@as("parameters") parameters: experimentActionParameterMap,
@as("description") description: experimentActionDescription,
@as("actionId") actionId: actionId
}
type createExperimentTemplateStopConditionInputList = array<createExperimentTemplateStopConditionInput>
type createExperimentTemplateActionInput = {
@as("startAfter") startAfter: experimentTemplateActionStartAfterList,
@as("targets") targets: experimentTemplateActionTargetMap,
@as("parameters") parameters: experimentTemplateActionParameterMap,
@as("description") description: experimentTemplateActionDescription,
@as("actionId") actionId: option<actionId>
}
type actionTargetMap = Js.Dict.t< actionTarget>
type actionParameterMap = Js.Dict.t< actionParameter>
type updateExperimentTemplateActionInputMap = Js.Dict.t< updateExperimentTemplateActionInputItem>
type experimentTemplateTargetFilterList = array<experimentTemplateTargetFilter>
type experimentTemplateTargetFilterInputList = array<experimentTemplateTargetInputFilter>
type experimentTemplateSummaryList = array<experimentTemplateSummary>
type experimentTemplateActionMap = Js.Dict.t< experimentTemplateAction>
type experimentTargetFilterList = array<experimentTargetFilter>
type experimentSummaryList = array<experimentSummary>
type experimentActionMap = Js.Dict.t< experimentAction>
type createExperimentTemplateActionInputMap = Js.Dict.t< createExperimentTemplateActionInput>
type actionSummary = {
@as("tags") tags: tagMap,
@as("targets") targets: actionTargetMap,
@as("description") description: actionDescription,
@as("id") id: actionId
}
type action = {
@as("tags") tags: tagMap,
@as("targets") targets: actionTargetMap,
@as("parameters") parameters: actionParameterMap,
@as("description") description: actionDescription,
@as("id") id: actionId
}
type updateExperimentTemplateTargetInput = {
@as("selectionMode") selectionMode: option<experimentTemplateTargetSelectionMode>,
@as("filters") filters: experimentTemplateTargetFilterInputList,
@as("resourceTags") resourceTags: tagMap,
@as("resourceArns") resourceArns: resourceArnList,
@as("resourceType") resourceType: option<resourceType>
}
type experimentTemplateTarget = {
@as("selectionMode") selectionMode: experimentTemplateTargetSelectionMode,
@as("filters") filters: experimentTemplateTargetFilterList,
@as("resourceTags") resourceTags: tagMap,
@as("resourceArns") resourceArns: resourceArnList,
@as("resourceType") resourceType: resourceType
}
type experimentTarget = {
@as("selectionMode") selectionMode: experimentTargetSelectionMode,
@as("filters") filters: experimentTargetFilterList,
@as("resourceTags") resourceTags: tagMap,
@as("resourceArns") resourceArns: resourceArnList,
@as("resourceType") resourceType: resourceType
}
type createExperimentTemplateTargetInput = {
@as("selectionMode") selectionMode: option<experimentTemplateTargetSelectionMode>,
@as("filters") filters: experimentTemplateTargetFilterInputList,
@as("resourceTags") resourceTags: tagMap,
@as("resourceArns") resourceArns: resourceArnList,
@as("resourceType") resourceType: option<resourceType>
}
type actionSummaryList = array<actionSummary>
type updateExperimentTemplateTargetInputMap = Js.Dict.t< updateExperimentTemplateTargetInput>
type experimentTemplateTargetMap = Js.Dict.t< experimentTemplateTarget>
type experimentTargetMap = Js.Dict.t< experimentTarget>
type createExperimentTemplateTargetInputMap = Js.Dict.t< createExperimentTemplateTargetInput>
type experimentTemplate = {
@as("tags") tags: tagMap,
@as("roleArn") roleArn: roleArn,
@as("lastUpdateTime") lastUpdateTime: lastUpdateTime,
@as("creationTime") creationTime: creationTime,
@as("stopConditions") stopConditions: experimentTemplateStopConditionList,
@as("actions") actions: experimentTemplateActionMap,
@as("targets") targets: experimentTemplateTargetMap,
@as("description") description: experimentTemplateDescription,
@as("id") id: experimentTemplateId
}
type experiment = {
@as("tags") tags: tagMap,
@as("endTime") endTime: experimentEndTime,
@as("startTime") startTime: experimentStartTime,
@as("creationTime") creationTime: creationTime,
@as("stopConditions") stopConditions: experimentStopConditionList,
@as("actions") actions: experimentActionMap,
@as("targets") targets: experimentTargetMap,
@as("state") state: experimentState,
@as("roleArn") roleArn: roleArn,
@as("experimentTemplateId") experimentTemplateId: experimentTemplateId,
@as("id") id: experimentId
}
type clientType;
@module("@aws-sdk/client-fis") @new external createClient: unit => clientType = "FisClient";
module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: tagKeyList,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListExperiments = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: listExperimentsMaxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("experiments") experiments: experimentSummaryList
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "ListExperimentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListExperimentTemplates = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: listExperimentTemplatesMaxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("experimentTemplates") experimentTemplates: experimentTemplateSummaryList
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "ListExperimentTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAction = {
  type t;
  type request = {
@as("id") id: option<actionId>
}
  type response = {
@as("action") action: action
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "GetActionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListActions = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: listActionsMaxResults
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("actions") actions: actionSummaryList
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "ListActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateExperimentTemplate = {
  type t;
  type request = {
@as("roleArn") roleArn: roleArn,
@as("actions") actions: updateExperimentTemplateActionInputMap,
@as("targets") targets: updateExperimentTemplateTargetInputMap,
@as("stopConditions") stopConditions: updateExperimentTemplateStopConditionInputList,
@as("description") description: experimentTemplateDescription,
@as("id") id: option<experimentTemplateId>
}
  type response = {
@as("experimentTemplate") experimentTemplate: experimentTemplate
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "UpdateExperimentTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopExperiment = {
  type t;
  type request = {
@as("id") id: option<experimentId>
}
  type response = {
@as("experiment") experiment: experiment
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "StopExperimentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartExperiment = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("experimentTemplateId") experimentTemplateId: option<experimentTemplateId>,
@as("clientToken") clientToken: option<clientToken>
}
  type response = {
@as("experiment") experiment: experiment
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "StartExperimentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExperimentTemplate = {
  type t;
  type request = {
@as("id") id: option<experimentTemplateId>
}
  type response = {
@as("experimentTemplate") experimentTemplate: experimentTemplate
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "GetExperimentTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExperiment = {
  type t;
  type request = {
@as("id") id: option<experimentId>
}
  type response = {
@as("experiment") experiment: experiment
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "GetExperimentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteExperimentTemplate = {
  type t;
  type request = {
@as("id") id: option<experimentTemplateId>
}
  type response = {
@as("experimentTemplate") experimentTemplate: experimentTemplate
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "DeleteExperimentTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateExperimentTemplate = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("roleArn") roleArn: option<roleArn>,
@as("actions") actions: option<createExperimentTemplateActionInputMap>,
@as("targets") targets: createExperimentTemplateTargetInputMap,
@as("stopConditions") stopConditions: option<createExperimentTemplateStopConditionInputList>,
@as("description") description: option<experimentTemplateDescription>,
@as("clientToken") clientToken: option<clientToken>
}
  type response = {
@as("experimentTemplate") experimentTemplate: experimentTemplate
}
  @module("@aws-sdk/client-fis") @new external new_: (Js.Promise.t<request>) => t = "CreateExperimentTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
