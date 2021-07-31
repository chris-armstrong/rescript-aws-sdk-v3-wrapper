type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationMessage = string
type timestamp = Js.Date.t;
type taskId = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type longString = string
type int = int;
type id = string
type fieldStringValue = string
type fieldNameString = string
type errorMessage = string
type cancelActive = bool;
type boolean = bool;
type attributeValueString = string
type attributeNameString = string
type taskStatus = [@as("FALSE") #FALSE | @as("FAILED") #FAILED | @as("FINISHED") #FINISHED]
type operatorType = [@as("BETWEEN") #BETWEEN | @as("GE") #GE | @as("LE") #LE | @as("REF_EQ") #REF_EQ | @as("EQ") #EQ]
type validationMessages = array<validationMessage>
type stringList = array<amazonawsString>
type idList = array<id>
type tag = {
@as("value") value: option<tagValue>,
@as("key") key: option<tagKey>
}
type pipelineIdName = {
@as("name") name: id,
@as("id") id: id
}
type parameterValue = {
@as("stringValue") stringValue: option<fieldStringValue>,
@as("id") id: option<fieldNameString>
}
type parameterAttribute = {
@as("stringValue") stringValue: option<attributeValueString>,
@as("key") key: option<attributeNameString>
}
type instanceIdentity = {
@as("signature") signature: amazonawsString,
@as("document") document: amazonawsString
}
type field = {
@as("refValue") refValue: fieldNameString,
@as("stringValue") stringValue: fieldStringValue,
@as("key") key: option<fieldNameString>
}
type tagList = array<tag>
type pipelineList = array<pipelineIdName>
type fieldList = array<field>
type validationWarning = {
@as("warnings") warnings: validationMessages,
@as("id") id: id
}
type validationError = {
@as("errors") errors: validationMessages,
@as("id") id: id
}
type parameterValueList = array<parameterValue>
type parameterAttributeList = array<parameterAttribute>
type operator = {
@as("values") values: stringList,
@as("type") type_: operatorType
}
type validationWarnings = array<validationWarning>
type validationErrors = array<validationError>
type selector = {
@as("operator") operator: operator,
@as("fieldName") fieldName: amazonawsString
}
type pipelineObject = {
@as("fields") fields: option<fieldList>,
@as("name") name: option<id>,
@as("id") id: option<id>
}
type pipelineDescription = {
@as("tags") tags: tagList,
@as("description") description: amazonawsString,
@as("fields") fields: option<fieldList>,
@as("name") name: option<id>,
@as("pipelineId") pipelineId: option<id>
}
type parameterObject = {
@as("attributes") attributes: option<parameterAttributeList>,
@as("id") id: option<fieldNameString>
}
type selectorList = array<selector>
type pipelineObjectMap = Js.Dict.t< pipelineObject>
type pipelineObjectList = array<pipelineObject>
type pipelineDescriptionList = array<pipelineDescription>
type parameterObjectList = array<parameterObject>
type taskObject = {
@as("objects") objects: pipelineObjectMap,
@as("attemptId") attemptId: id,
@as("pipelineId") pipelineId: id,
@as("taskId") taskId: taskId
}
type query = {
@as("selectors") selectors: selectorList
}
type clientType;
@module("@aws-sdk/client-datapipeline") @new external createClient: unit => clientType = "DataPipelineClient";
module SetTaskStatus = {
  type t;
  type request = {
@as("errorStackTrace") errorStackTrace: amazonawsString,
@as("errorMessage") errorMessage: errorMessage,
@as("errorId") errorId: amazonawsString,
@as("taskStatus") taskStatus: option<taskStatus>,
@as("taskId") taskId: option<taskId>
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "SetTaskStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReportTaskRunnerHeartbeat = {
  type t;
  type request = {
@as("hostname") hostname: id,
@as("workerGroup") workerGroup: amazonawsString,
@as("taskrunnerId") taskrunnerId: option<id>
}
  type response = {
@as("terminate") terminate: option<boolean>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ReportTaskRunnerHeartbeatCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EvaluateExpression = {
  type t;
  type request = {
@as("expression") expression: option<longString>,
@as("objectId") objectId: option<id>,
@as("pipelineId") pipelineId: option<id>
}
  type response = {
@as("evaluatedExpression") evaluatedExpression: option<longString>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "EvaluateExpressionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePipeline = {
  type t;
  type request = {
@as("pipelineId") pipelineId: option<id>
}
  
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DeletePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeactivatePipeline = {
  type t;
  type request = {
@as("cancelActive") cancelActive: cancelActive,
@as("pipelineId") pipelineId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DeactivatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetStatus = {
  type t;
  type request = {
@as("status") status: option<amazonawsString>,
@as("objectIds") objectIds: option<idList>,
@as("pipelineId") pipelineId: option<id>
}
  
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "SetStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveTags = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<stringList>,
@as("pipelineId") pipelineId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "RemoveTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReportTaskProgress = {
  type t;
  type request = {
@as("fields") fields: fieldList,
@as("taskId") taskId: option<taskId>
}
  type response = {
@as("canceled") canceled: option<boolean>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ReportTaskProgressCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPipelines = {
  type t;
  type request = {
@as("marker") marker: amazonawsString
}
  type response = {
@as("hasMoreResults") hasMoreResults: boolean,
@as("marker") marker: amazonawsString,
@as("pipelineIdList") pipelineIdList: option<pipelineList>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ListPipelinesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePipeline = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("description") description: amazonawsString,
@as("uniqueId") uniqueId: option<id>,
@as("name") name: option<id>
}
  type response = {
@as("pipelineId") pipelineId: option<id>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "CreatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("pipelineId") pipelineId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "AddTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ActivatePipeline = {
  type t;
  type request = {
@as("startTimestamp") startTimestamp: timestamp,
@as("parameterValues") parameterValues: parameterValueList,
@as("pipelineId") pipelineId: option<id>
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ActivatePipelineCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ValidatePipelineDefinition = {
  type t;
  type request = {
@as("parameterValues") parameterValues: parameterValueList,
@as("parameterObjects") parameterObjects: parameterObjectList,
@as("pipelineObjects") pipelineObjects: option<pipelineObjectList>,
@as("pipelineId") pipelineId: option<id>
}
  type response = {
@as("errored") errored: option<boolean>,
@as("validationWarnings") validationWarnings: validationWarnings,
@as("validationErrors") validationErrors: validationErrors
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ValidatePipelineDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutPipelineDefinition = {
  type t;
  type request = {
@as("parameterValues") parameterValues: parameterValueList,
@as("parameterObjects") parameterObjects: parameterObjectList,
@as("pipelineObjects") pipelineObjects: option<pipelineObjectList>,
@as("pipelineId") pipelineId: option<id>
}
  type response = {
@as("errored") errored: option<boolean>,
@as("validationWarnings") validationWarnings: validationWarnings,
@as("validationErrors") validationErrors: validationErrors
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "PutPipelineDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPipelineDefinition = {
  type t;
  type request = {
@as("version") version: amazonawsString,
@as("pipelineId") pipelineId: option<id>
}
  type response = {
@as("parameterValues") parameterValues: parameterValueList,
@as("parameterObjects") parameterObjects: parameterObjectList,
@as("pipelineObjects") pipelineObjects: pipelineObjectList
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "GetPipelineDefinitionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePipelines = {
  type t;
  type request = {
@as("pipelineIds") pipelineIds: option<idList>
}
  type response = {
@as("pipelineDescriptionList") pipelineDescriptionList: option<pipelineDescriptionList>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DescribePipelinesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeObjects = {
  type t;
  type request = {
@as("marker") marker: amazonawsString,
@as("evaluateExpressions") evaluateExpressions: boolean,
@as("objectIds") objectIds: option<idList>,
@as("pipelineId") pipelineId: option<id>
}
  type response = {
@as("hasMoreResults") hasMoreResults: boolean,
@as("marker") marker: amazonawsString,
@as("pipelineObjects") pipelineObjects: option<pipelineObjectList>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DescribeObjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module QueryObjects = {
  type t;
  type request = {
@as("limit") limit: int,
@as("marker") marker: amazonawsString,
@as("sphere") sphere: option<amazonawsString>,
@as("query") query: query,
@as("pipelineId") pipelineId: option<id>
}
  type response = {
@as("hasMoreResults") hasMoreResults: boolean,
@as("marker") marker: amazonawsString,
@as("ids") ids: idList
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "QueryObjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PollForTask = {
  type t;
  type request = {
@as("instanceIdentity") instanceIdentity: instanceIdentity,
@as("hostname") hostname: id,
@as("workerGroup") workerGroup: option<amazonawsString>
}
  type response = {
@as("taskObject") taskObject: taskObject
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "PollForTaskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
