type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type integer_ = int
type long = float
type validationMessage = string
type timestamp_ = Js.Date.t;
type taskId = string
type tagValue = string
type tagKey = string
type string_ = string
type longString = string
type int_ = int
type id = string
type fieldStringValue = string
type fieldNameString = string
type errorMessage = string
type cancelActive = bool
type boolean_ = bool
type attributeValueString = string
type attributeNameString = string
type taskStatus = [@as("FALSE") #FALSE | @as("FAILED") #FAILED | @as("FINISHED") #FINISHED]
type operatorType = [@as("BETWEEN") #BETWEEN | @as("GE") #GE | @as("LE") #LE | @as("REF_EQ") #REFEQ | @as("EQ") #EQ]
type validationMessages = array<validationMessage>
type stringList = array<string_>
type idList = array<id>
type tag = {
value: tagValue,
key: tagKey
}
type pipelineIdName = {
name: option<id>,
id: option<id>
}
type parameterValue = {
stringValue: fieldStringValue,
id: fieldNameString
}
type parameterAttribute = {
stringValue: attributeValueString,
key: attributeNameString
}
type instanceIdentity = {
signature: option<string_>,
document: option<string_>
}
type field = {
refValue: option<fieldNameString>,
stringValue: option<fieldStringValue>,
key: fieldNameString
}
type tagList_ = array<tag>
type pipelineList = array<pipelineIdName>
type fieldList = array<field>
type validationWarning = {
warnings: option<validationMessages>,
id: option<id>
}
type validationError = {
errors: option<validationMessages>,
id: option<id>
}
type parameterValueList = array<parameterValue>
type parameterAttributeList = array<parameterAttribute>
type operator = {
values: option<stringList>,
@as("type") type_: option<operatorType>
}
type validationWarnings = array<validationWarning>
type validationErrors = array<validationError>
type selector = {
operator: option<operator>,
fieldName: option<string_>
}
type pipelineObject = {
fields: fieldList,
name: id,
id: id
}
type pipelineDescription = {
tags: option<tagList_>,
description: option<string_>,
fields: fieldList,
name: id,
pipelineId: id
}
type parameterObject = {
attributes: parameterAttributeList,
id: fieldNameString
}
type selectorList = array<selector>
type pipelineObjectMap = Js.Dict.t< pipelineObject>
type pipelineObjectList = array<pipelineObject>
type pipelineDescriptionList = array<pipelineDescription>
type parameterObjectList = array<parameterObject>
type taskObject = {
objects: option<pipelineObjectMap>,
attemptId: option<id>,
pipelineId: option<id>,
taskId: option<taskId>
}
type query = {
selectors: option<selectorList>
}
type awsServiceClient;
@module("@aws-sdk/client-datapipeline") @new external createClient: unit => awsServiceClient = "DataPipelineClient";
module SetTaskStatus = {
  type t;
  type request = {
errorStackTrace: option<string_>,
errorMessage: option<errorMessage>,
errorId: option<string_>,
taskStatus: taskStatus,
taskId: taskId
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "SetTaskStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReportTaskRunnerHeartbeat = {
  type t;
  type request = {
hostname: option<id>,
workerGroup: option<string_>,
taskrunnerId: id
}
  type response = {
terminate: boolean_
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ReportTaskRunnerHeartbeatCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EvaluateExpression = {
  type t;
  type request = {
expression: longString,
objectId: id,
pipelineId: id
}
  type response = {
evaluatedExpression: longString
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "EvaluateExpressionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePipeline = {
  type t;
  type request = {
pipelineId: id
}
  
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DeletePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeactivatePipeline = {
  type t;
  type request = {
cancelActive: option<cancelActive>,
pipelineId: id
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DeactivatePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetStatus = {
  type t;
  type request = {
status: string_,
objectIds: idList,
pipelineId: id
}
  
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "SetStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveTags = {
  type t;
  type request = {
tagKeys: stringList,
pipelineId: id
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "RemoveTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReportTaskProgress = {
  type t;
  type request = {
fields: option<fieldList>,
taskId: taskId
}
  type response = {
canceled: boolean_
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ReportTaskProgressCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPipelines = {
  type t;
  type request = {
marker: option<string_>
}
  type response = {
hasMoreResults: option<boolean_>,
marker: option<string_>,
pipelineIdList: pipelineList
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ListPipelinesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePipeline = {
  type t;
  type request = {
tags: option<tagList_>,
description: option<string_>,
uniqueId: id,
name: id
}
  type response = {
pipelineId: id
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "CreatePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddTags = {
  type t;
  type request = {
tags: tagList_,
pipelineId: id
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "AddTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ActivatePipeline = {
  type t;
  type request = {
startTimestamp: option<timestamp_>,
parameterValues: option<parameterValueList>,
pipelineId: id
}
  type response = unit
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ActivatePipelineCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ValidatePipelineDefinition = {
  type t;
  type request = {
parameterValues: option<parameterValueList>,
parameterObjects: option<parameterObjectList>,
pipelineObjects: pipelineObjectList,
pipelineId: id
}
  type response = {
errored: boolean_,
validationWarnings: option<validationWarnings>,
validationErrors: option<validationErrors>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "ValidatePipelineDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutPipelineDefinition = {
  type t;
  type request = {
parameterValues: option<parameterValueList>,
parameterObjects: option<parameterObjectList>,
pipelineObjects: pipelineObjectList,
pipelineId: id
}
  type response = {
errored: boolean_,
validationWarnings: option<validationWarnings>,
validationErrors: option<validationErrors>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "PutPipelineDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPipelineDefinition = {
  type t;
  type request = {
version: option<string_>,
pipelineId: id
}
  type response = {
parameterValues: option<parameterValueList>,
parameterObjects: option<parameterObjectList>,
pipelineObjects: option<pipelineObjectList>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "GetPipelineDefinitionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePipelines = {
  type t;
  type request = {
pipelineIds: idList
}
  type response = {
pipelineDescriptionList: pipelineDescriptionList
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DescribePipelinesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeObjects = {
  type t;
  type request = {
marker: option<string_>,
evaluateExpressions: option<boolean_>,
objectIds: idList,
pipelineId: id
}
  type response = {
hasMoreResults: option<boolean_>,
marker: option<string_>,
pipelineObjects: pipelineObjectList
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "DescribeObjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module QueryObjects = {
  type t;
  type request = {
limit: option<int_>,
marker: option<string_>,
sphere: string_,
query: option<query>,
pipelineId: id
}
  type response = {
hasMoreResults: option<boolean_>,
marker: option<string_>,
ids: option<idList>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "QueryObjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PollForTask = {
  type t;
  type request = {
instanceIdentity: option<instanceIdentity>,
hostname: option<id>,
workerGroup: string_
}
  type response = {
taskObject: option<taskObject>
}
  @module("@aws-sdk/client-datapipeline") @new external new_: (request) => t = "PollForTaskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
