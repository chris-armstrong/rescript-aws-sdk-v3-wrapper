type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-sagemaker") @new
external createClient: unit => awsServiceClient = "SageMakerA2IRuntimeClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type string_ = string
type sortOrder = [@as("Descending") #Descending | @as("Ascending") #Ascending]
type nextToken = string
type maxResults = int
type inputContent = string
type humanLoopStatus = [
  | @as("Stopping") #Stopping
  | @as("Stopped") #Stopped
  | @as("Completed") #Completed
  | @as("Failed") #Failed
  | @as("InProgress") #InProgress
]
type humanLoopName = string
type humanLoopArn = string
type flowDefinitionArn = string
type failureReason = string
type contentClassifier = [
  | @as("FreeOfAdultContent") #FreeOfAdultContent
  | @as("FreeOfPersonallyIdentifiableInformation") #FreeOfPersonallyIdentifiableInformation
]
type humanLoopSummary = {
  @as("FlowDefinitionArn") flowDefinitionArn: option<flowDefinitionArn>,
  @as("FailureReason") failureReason: option<failureReason>,
  @as("CreationTime") creationTime: option<timestamp_>,
  @as("HumanLoopStatus") humanLoopStatus: option<humanLoopStatus>,
  @as("HumanLoopName") humanLoopName: option<humanLoopName>,
}
type humanLoopOutput = {@as("OutputS3Uri") outputS3Uri: string_}
type humanLoopInput = {@as("InputContent") inputContent: inputContent}
type contentClassifiers = array<contentClassifier>
type humanLoopSummaries = array<humanLoopSummary>
type humanLoopDataAttributes = {@as("ContentClassifiers") contentClassifiers: contentClassifiers}

module StopHumanLoop = {
  type t
  type request = {@as("HumanLoopName") humanLoopName: humanLoopName}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new_: request => t = "StopHumanLoopCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteHumanLoop = {
  type t
  type request = {@as("HumanLoopName") humanLoopName: humanLoopName}
  type response = unit
  @module("@aws-sdk/client-sagemaker") @new external new_: request => t = "DeleteHumanLoopCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHumanLoop = {
  type t
  type request = {@as("HumanLoopName") humanLoopName: humanLoopName}
  type response = {
    @as("HumanLoopOutput") humanLoopOutput: option<humanLoopOutput>,
    @as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
    @as("HumanLoopArn") humanLoopArn: humanLoopArn,
    @as("HumanLoopName") humanLoopName: humanLoopName,
    @as("HumanLoopStatus") humanLoopStatus: humanLoopStatus,
    @as("FailureCode") failureCode: option<string_>,
    @as("FailureReason") failureReason: option<string_>,
    @as("CreationTime") creationTime: timestamp_,
  }
  @module("@aws-sdk/client-sagemaker") @new external new_: request => t = "DescribeHumanLoopCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartHumanLoop = {
  type t
  type request = {
    @as("DataAttributes") dataAttributes: option<humanLoopDataAttributes>,
    @as("HumanLoopInput") humanLoopInput: humanLoopInput,
    @as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
    @as("HumanLoopName") humanLoopName: humanLoopName,
  }
  type response = {@as("HumanLoopArn") humanLoopArn: option<humanLoopArn>}
  @module("@aws-sdk/client-sagemaker") @new external new_: request => t = "StartHumanLoopCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListHumanLoops = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SortOrder") sortOrder: option<sortOrder>,
    @as("FlowDefinitionArn") flowDefinitionArn: flowDefinitionArn,
    @as("CreationTimeBefore") creationTimeBefore: option<timestamp_>,
    @as("CreationTimeAfter") creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("HumanLoopSummaries") humanLoopSummaries: humanLoopSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new_: request => t = "ListHumanLoopsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
