type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type amazonawsString = string
type sortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type nextToken = string
type maxResults = int;
type inputContent = string
type humanLoopStatus = [@as("Stopping") #Stopping | @as("Stopped") #Stopped | @as("Completed") #Completed | @as("Failed") #Failed | @as("InProgress") #InProgress]
type humanLoopName = string
type humanLoopArn = string
type flowDefinitionArn = string
type failureReason = string
type contentClassifier = [@as("FreeOfAdultContent") #FreeOfAdultContent | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation]
type humanLoopSummary = {
@as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
@as("FailureReason") failureReason: failureReason,
@as("CreationTime") creationTime: amazonawsTimestamp,
@as("HumanLoopStatus") humanLoopStatus: humanLoopStatus,
@as("HumanLoopName") humanLoopName: humanLoopName
}
type humanLoopOutput = {
@as("OutputS3Uri") outputS3Uri: option<amazonawsString>
}
type humanLoopInput = {
@as("InputContent") inputContent: option<inputContent>
}
type contentClassifiers = array<contentClassifier>
type humanLoopSummaries = array<humanLoopSummary>
type humanLoopDataAttributes = {
@as("ContentClassifiers") contentClassifiers: option<contentClassifiers>
}
type clientType;
@module("@aws-sdk/client-sagemaker") @new external createClient: unit => clientType = "SageMakerA2IRuntimeClient";
module StopHumanLoop = {
  type t;
  type request = {
@as("HumanLoopName") humanLoopName: option<humanLoopName>
}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "StopHumanLoopCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteHumanLoop = {
  type t;
  type request = {
@as("HumanLoopName") humanLoopName: option<humanLoopName>
}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "DeleteHumanLoopCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHumanLoop = {
  type t;
  type request = {
@as("HumanLoopName") humanLoopName: option<humanLoopName>
}
  type response = {
@as("HumanLoopOutput") humanLoopOutput: humanLoopOutput,
@as("FlowDefinitionArn") flowDefinitionArn: option<flowDefinitionArn>,
@as("HumanLoopArn") humanLoopArn: option<humanLoopArn>,
@as("HumanLoopName") humanLoopName: option<humanLoopName>,
@as("HumanLoopStatus") humanLoopStatus: option<humanLoopStatus>,
@as("FailureCode") failureCode: amazonawsString,
@as("FailureReason") failureReason: amazonawsString,
@as("CreationTime") creationTime: option<amazonawsTimestamp>
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "DescribeHumanLoopCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartHumanLoop = {
  type t;
  type request = {
@as("DataAttributes") dataAttributes: humanLoopDataAttributes,
@as("HumanLoopInput") humanLoopInput: option<humanLoopInput>,
@as("FlowDefinitionArn") flowDefinitionArn: option<flowDefinitionArn>,
@as("HumanLoopName") humanLoopName: option<humanLoopName>
}
  type response = {
@as("HumanLoopArn") humanLoopArn: humanLoopArn
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "StartHumanLoopCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListHumanLoops = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("SortOrder") sortOrder: sortOrder,
@as("FlowDefinitionArn") flowDefinitionArn: option<flowDefinitionArn>,
@as("CreationTimeBefore") creationTimeBefore: amazonawsTimestamp,
@as("CreationTimeAfter") creationTimeAfter: amazonawsTimestamp
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("HumanLoopSummaries") humanLoopSummaries: option<humanLoopSummaries>
}
  @module("@aws-sdk/client-sagemaker") @new external new_: (Js.Promise.t<request>) => t = "ListHumanLoopsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
