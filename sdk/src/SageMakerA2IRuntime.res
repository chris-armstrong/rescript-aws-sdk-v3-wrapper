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
@ocaml.doc("<p>Summary information about the human loop.</p>")
type humanLoopSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the flow definition used to configure the human
      loop.</p>")
  @as("FlowDefinitionArn")
  flowDefinitionArn: option<flowDefinitionArn>,
  @ocaml.doc("<p>The reason why the human loop failed. A failure reason is returned when the status of the
      human loop is <code>Failed</code>.</p>")
  @as("FailureReason")
  failureReason: option<failureReason>,
  @ocaml.doc("<p>When Amazon Augmented AI created the human loop.</p>") @as("CreationTime")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The status of the human loop. </p>") @as("HumanLoopStatus")
  humanLoopStatus: option<humanLoopStatus>,
  @ocaml.doc("<p>The name of the human loop.</p>") @as("HumanLoopName")
  humanLoopName: option<humanLoopName>,
}
@ocaml.doc("<p>Information about where the human output will be stored.</p>")
type humanLoopOutput = {
  @ocaml.doc(
    "<p>The location of the Amazon S3 object where Amazon Augmented AI stores your human loop output.</p>"
  )
  @as("OutputS3Uri")
  outputS3Uri: string_,
}
@ocaml.doc("<p>An object containing the human loop input in JSON format.</p>")
type humanLoopInput = {
  @ocaml.doc(
    "<p>Serialized input from the human loop. The input must be a string representation of a file in JSON format.</p>"
  )
  @as("InputContent")
  inputContent: inputContent,
}
type contentClassifiers = array<contentClassifier>
type humanLoopSummaries = array<humanLoopSummary>
@ocaml.doc(
  "<p>Attributes of the data specified by the customer. Use these to describe the data to be labeled.</p>"
)
type humanLoopDataAttributes = {
  @ocaml.doc("<p>Declares that your content is free of personally identifiable information or adult content.</p>
         <p>Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can view your task based on this information.</p>")
  @as("ContentClassifiers")
  contentClassifiers: contentClassifiers,
}
@ocaml.doc("<p>Amazon Augmented AI (Amazon A2I) adds the benefit of human judgment to any machine learning
      application. When an AI application can't evaluate data with a high degree of confidence,
      human reviewers can take over. This human review is called a human review workflow. To create
      and start a human review workflow, you need three resources: a <i>worker task
        template</i>, a <i>flow definition</i>, and a <i>human
        loop</i>.</p>
         <p>For information about these resources and prerequisites for using Amazon A2I, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-getting-started.html\">Get Started with
        Amazon Augmented AI</a> in the Amazon SageMaker Developer Guide.</p>
         <p>This API reference includes information about API actions and data types that you can use
      to interact with Amazon A2I programmatically. Use this guide to:</p>
         <ul>
            <li>
               <p>Start a human loop with the <code>StartHumanLoop</code> operation when using
          Amazon A2I with a <i>custom task type</i>. To learn more about the
          difference between custom and built-in task types, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-task-types-general.html\">Use Task Types </a>. To learn
          how to start a human loop using this API, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-start-human-loop.html#a2i-instructions-starthumanloop\">Create and Start a Human Loop for a Custom Task Type </a> in the
          Amazon SageMaker Developer Guide.</p>
            </li>
            <li>
               <p>Manage your human loops. You can list all human loops that you have created, describe
          individual human loops, and stop and delete human loops. To learn more, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-monitor-humanloop-results.html\">Monitor and Manage Your Human Loop </a> in the Amazon SageMaker Developer Guide.</p>
            </li>
         </ul>
         <p>Amazon A2I integrates APIs from various AWS services to create and start human review
      workflows for those services. To learn how Amazon A2I uses these APIs, see <a href=\"https://docs.aws.amazon.com/sagemaker/latest/dg/a2i-api-references.html\">Use APIs in
        Amazon A2I</a> in the Amazon SageMaker Developer Guide.</p>")
module StopHumanLoop = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the human loop that you want to stop.</p>") @as("HumanLoopName")
    humanLoopName: humanLoopName,
  }
  type response = {.}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StopHumanLoopCommand"
  let make = (~humanLoopName, ()) => new({humanLoopName: humanLoopName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteHumanLoop = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the human loop that you want to delete.</p>") @as("HumanLoopName")
    humanLoopName: humanLoopName,
  }
  type response = {.}
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DeleteHumanLoopCommand"
  let make = (~humanLoopName, ()) => new({humanLoopName: humanLoopName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeHumanLoop = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the human loop that you want information about.</p>")
    @as("HumanLoopName")
    humanLoopName: humanLoopName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about the output of the human loop.</p>")
    @as("HumanLoopOutput")
    humanLoopOutput: option<humanLoopOutput>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the flow definition.</p>")
    @as("FlowDefinitionArn")
    flowDefinitionArn: flowDefinitionArn,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the human loop.</p>") @as("HumanLoopArn")
    humanLoopArn: humanLoopArn,
    @ocaml.doc("<p>The name of the human loop. The name must be lowercase, unique within the Region in your
      account, and can have up to 63 characters. Valid characters: a-z, 0-9, and - (hyphen).</p>")
    @as("HumanLoopName")
    humanLoopName: humanLoopName,
    @ocaml.doc("<p>The status of the human loop. </p>") @as("HumanLoopStatus")
    humanLoopStatus: humanLoopStatus,
    @ocaml.doc("<p>A failure code that identifies the type of failure.</p>
         <p>Possible values: <code>ValidationError</code>, <code>Expired</code>,
        <code>InternalError</code>
         </p>")
    @as("FailureCode")
    failureCode: option<string_>,
    @ocaml.doc("<p>The reason why a human loop failed. The failure reason is returned when the status of the
      human loop is <code>Failed</code>.</p>")
    @as("FailureReason")
    failureReason: option<string_>,
    @ocaml.doc("<p>The creation time when Amazon Augmented AI created the human loop.</p>")
    @as("CreationTime")
    creationTime: timestamp_,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "DescribeHumanLoopCommand"
  let make = (~humanLoopName, ()) => new({humanLoopName: humanLoopName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartHumanLoop = {
  type t
  type request = {
    @ocaml.doc("<p>Attributes of the specified data. Use <code>DataAttributes</code> to specify if your data
      is free of personally identifiable information and/or free of adult content.</p>")
    @as("DataAttributes")
    dataAttributes: option<humanLoopDataAttributes>,
    @ocaml.doc("<p>An object that contains information about the human loop.</p>")
    @as("HumanLoopInput")
    humanLoopInput: humanLoopInput,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the flow definition associated with this human
      loop.</p>")
    @as("FlowDefinitionArn")
    flowDefinitionArn: flowDefinitionArn,
    @ocaml.doc("<p>The name of the human loop.</p>") @as("HumanLoopName")
    humanLoopName: humanLoopName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the human loop.</p>") @as("HumanLoopArn")
    humanLoopArn: option<humanLoopArn>,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "StartHumanLoopCommand"
  let make = (~humanLoopInput, ~flowDefinitionArn, ~humanLoopName, ~dataAttributes=?, ()) =>
    new({dataAttributes, humanLoopInput, flowDefinitionArn, humanLoopName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListHumanLoops = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of items to return. If the total number of available items is more than
      the value specified in <code>MaxResults</code>, then a <code>NextToken</code> is returned in
      the output. You can use this token to display the next page of results. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A token to display the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Optional. The order for displaying results. Valid values: <code>Ascending</code> and
        <code>Descending</code>.</p>")
    @as("SortOrder")
    sortOrder: option<sortOrder>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of a flow definition.</p>")
    @as("FlowDefinitionArn")
    flowDefinitionArn: flowDefinitionArn,
    @ocaml.doc(
      "<p>(Optional) The timestamp of the date before which you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>"
    )
    @as("CreationTimeBefore")
    creationTimeBefore: option<timestamp_>,
    @ocaml.doc(
      "<p>(Optional) The timestamp of the date when you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>"
    )
    @as("CreationTimeAfter")
    creationTimeAfter: option<timestamp_>,
  }
  type response = {
    @ocaml.doc("<p>A token to display the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of objects that contain information about the human loops.</p>")
    @as("HumanLoopSummaries")
    humanLoopSummaries: humanLoopSummaries,
  }
  @module("@aws-sdk/client-sagemaker") @new external new: request => t = "ListHumanLoopsCommand"
  let make = (
    ~flowDefinitionArn,
    ~maxResults=?,
    ~nextToken=?,
    ~sortOrder=?,
    ~creationTimeBefore=?,
    ~creationTimeAfter=?,
    (),
  ) =>
    new({
      maxResults,
      nextToken,
      sortOrder,
      flowDefinitionArn,
      creationTimeBefore,
      creationTimeAfter,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
