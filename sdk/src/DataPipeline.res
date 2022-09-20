type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-datapipeline") @new
external createClient: unit => awsServiceClient = "DataPipelineClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationMessage = string
type timestamp_ = Js.Date.t
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
type operatorType = [
  | @as("BETWEEN") #BETWEEN
  | @as("GE") #GE
  | @as("LE") #LE
  | @as("REF_EQ") #REF_EQ
  | @as("EQ") #EQ
]
type validationMessages = array<validationMessage>
type stringList = array<string_>
type idList = array<id>
@ocaml.doc("<p>Tags are key/value pairs defined by a user and associated with a pipeline to control access. AWS Data Pipeline allows you to associate ten tags per pipeline.  
            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>")
type tag = {
  @ocaml.doc("<p>The optional value portion of a tag defined by a user.    
            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>")
  value: tagValue,
  @ocaml.doc("<p>The key name of a tag defined by a user.  
            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>")
  key: tagKey,
}
@ocaml.doc("<p>Contains the name and identifier of a pipeline.</p>")
type pipelineIdName = {
  @ocaml.doc("<p>The name of the pipeline.</p>") name: option<id>,
  @ocaml.doc(
    "<p>The ID of the pipeline that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>"
  )
  id: option<id>,
}
@ocaml.doc("<p>A value or list of parameter values. </p>")
type parameterValue = {
  @ocaml.doc("<p>The field value, expressed as a String.</p>") stringValue: fieldStringValue,
  @ocaml.doc("<p>The ID of the parameter value.</p>") id: fieldNameString,
}
@ocaml.doc("<p>The attributes allowed or specified with a parameter object.</p>")
type parameterAttribute = {
  @ocaml.doc("<p>The field value, expressed as a String.</p>") stringValue: attributeValueString,
  @ocaml.doc("<p>The field identifier.</p>") key: attributeNameString,
}
@ocaml.doc("<p><p>Identity information for the EC2 instance that is hosting the task runner. You can get this value by calling a metadata URI from the EC2 instance. 
            For more information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html\">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> 
            Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p></p>")
type instanceIdentity = {
  @ocaml.doc(
    "<p>A signature which can be used to verify the accuracy and authenticity of the information provided in the instance identity document.</p>"
  )
  signature: option<string_>,
  @ocaml.doc(
    "<p>A description of an EC2 instance that is generated when the instance is launched and exposed to the instance via the instance metadata service in the form of a JSON representation of an object.</p>"
  )
  document: option<string_>,
}
@ocaml.doc(
  "<p>A key-value pair that describes a property of a pipeline object. The value is specified as either a string value (<code>StringValue</code>) or a reference to another object (<code>RefValue</code>) but not as both.</p>"
)
type field = {
  @ocaml.doc("<p>The field value, expressed as the identifier of another object.</p>")
  refValue: option<fieldNameString>,
  @ocaml.doc("<p>The field value, expressed as a String.</p>")
  stringValue: option<fieldStringValue>,
  @ocaml.doc("<p>The field identifier.</p>") key: fieldNameString,
}
type tagList_ = array<tag>
type pipelineList = array<pipelineIdName>
type fieldList = array<field>
@ocaml.doc(
  "<p>Defines a validation warning. Validation warnings do not prevent pipeline activation. The set of validation warnings that can be returned are defined by AWS Data Pipeline.</p>"
)
type validationWarning = {
  @ocaml.doc("<p>A description of the validation warning.</p>")
  warnings: option<validationMessages>,
  @ocaml.doc("<p>The identifier of the object that contains the validation warning.</p>")
  id: option<id>,
}
@ocaml.doc(
  "<p>Defines a validation error. Validation errors prevent pipeline activation. The set of validation errors that can be returned are defined by AWS Data Pipeline.</p>"
)
type validationError = {
  @ocaml.doc("<p>A description of the validation error.</p>") errors: option<validationMessages>,
  @ocaml.doc("<p>The identifier of the object that contains the validation error.</p>")
  id: option<id>,
}
type parameterValueList = array<parameterValue>
type parameterAttributeList = array<parameterAttribute>
@ocaml.doc(
  "<p>Contains a logical operation for comparing the value of a field with a specified value.</p>"
)
type operator = {
  @ocaml.doc("<p>The value that the actual field value will be compared with.</p>")
  values: option<stringList>,
  @ocaml.doc("<p>
            The logical operation to be performed: equal (<code>EQ</code>), equal reference (<code>REF_EQ</code>), less than or equal (<code>LE</code>), greater than or equal (<code>GE</code>), or between (<code>BETWEEN</code>). Equal reference (<code>REF_EQ</code>) can be used only with reference fields. The other comparison types can be used only with String fields. The comparison types you can use apply only to certain object fields, as detailed below.  
        </p>
        <p>
          The comparison operators EQ and REF_EQ act on the following fields:
        </p>
        <ul>
            <li>name</li>
            <li>@sphere</li>
            <li>parent</li>
            <li>@componentParent</li>
            <li>@instanceParent</li>
            <li>@status</li>
            <li>@scheduledStartTime</li>
            <li>@scheduledEndTime</li>
            <li>@actualStartTime</li>
            <li>@actualEndTime</li>
        </ul>
        
        <p>
            The comparison operators <code>GE</code>, <code>LE</code>, and <code>BETWEEN</code> act on the following fields:
        </p>
        <ul>
            <li>@scheduledStartTime</li>
            <li>@scheduledEndTime</li>
            <li>@actualStartTime</li>
            <li>@actualEndTime</li>
        </ul>
        <p>Note that fields beginning with the at sign (@) are read-only and set by the web service. When you name fields, you should choose names containing only alpha-numeric values, as symbols may be reserved by AWS Data Pipeline. User-defined fields that you add to a pipeline should prefix their name with the string \"my\".</p>")
  @as("type")
  type_: option<operatorType>,
}
type validationWarnings = array<validationWarning>
type validationErrors = array<validationError>
@ocaml.doc(
  "<p>A comparision that is used to determine whether a query should return this object.</p>"
)
type selector = {
  operator: option<operator>,
  @ocaml.doc(
    "<p>The name of the field that the operator will be applied to. The field name is the \"key\" portion of the field definition in the pipeline definition syntax that is used by the AWS Data Pipeline API. If the field is not set on the object, the condition fails.</p>"
  )
  fieldName: option<string_>,
}
@ocaml.doc(
  "<p>Contains information about a pipeline object. This can be a logical, physical, or physical attempt pipeline object. The complete set of components of a pipeline defines the pipeline.</p>"
)
type pipelineObject = {
  @ocaml.doc("<p>Key-value pairs that define the properties of the object.</p>") fields: fieldList,
  @ocaml.doc("<p>The name of the object.</p>") name: id,
  @ocaml.doc("<p>The ID of the object.</p>") id: id,
}
@ocaml.doc("<p>Contains pipeline metadata.</p>")
type pipelineDescription = {
  @ocaml.doc("<p>A list of tags to associated with a pipeline. Tags let you control access to pipelines. 
            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> in the <i>AWS Data Pipeline Developer Guide</i>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>Description of the pipeline.</p>") description: option<string_>,
  @ocaml.doc(
    "<p>A list of read-only fields that contain metadata about the pipeline: @userId, @accountId, and @pipelineState.</p>"
  )
  fields: fieldList,
  @ocaml.doc("<p>The name of the pipeline.</p>") name: id,
  @ocaml.doc(
    "<p>The pipeline identifier that was assigned by AWS Data Pipeline. This is a string of the form <code>df-297EG78HU43EEXAMPLE</code>.</p>"
  )
  pipelineId: id,
}
@ocaml.doc("<p>Contains information about a parameter object.</p>")
type parameterObject = {
  @ocaml.doc("<p>The attributes of the parameter object.</p>") attributes: parameterAttributeList,
  @ocaml.doc("<p>The ID of the parameter object. </p>") id: fieldNameString,
}
@ocaml.doc("<p>The list of Selectors that define queries on individual fields.</p>")
type selectorList = array<selector>
type pipelineObjectMap = Js.Dict.t<pipelineObject>
type pipelineObjectList = array<pipelineObject>
type pipelineDescriptionList = array<pipelineDescription>
type parameterObjectList = array<parameterObject>
@ocaml.doc("<p>Contains information about a pipeline task that is assigned to a task runner.</p>")
type taskObject = {
  @ocaml.doc(
    "<p>Connection information for the location where the task runner will publish the output of the task.</p>"
  )
  objects: option<pipelineObjectMap>,
  @ocaml.doc(
    "<p>The ID of the pipeline task attempt object. AWS Data Pipeline uses this value to track how many times a task is attempted.</p>"
  )
  attemptId: option<id>,
  @ocaml.doc("<p>The ID of the pipeline that provided the task.</p>") pipelineId: option<id>,
  @ocaml.doc(
    "<p>An internal identifier for the task. This ID is passed to the <a>SetTaskStatus</a> and <a>ReportTaskProgress</a> actions.</p>"
  )
  taskId: option<taskId>,
}
@ocaml.doc("<p>Defines the query to run against an object.</p>")
type query = {
  @ocaml.doc(
    "<p>List of selectors that define the query. An object must satisfy all of the selectors to match the query.</p>"
  )
  selectors: option<selectorList>,
}
@ocaml.doc("<p>AWS Data Pipeline configures and manages a data-driven workflow called a pipeline. AWS Data Pipeline 
            handles the details of scheduling and ensuring that data dependencies are met so that your application 
            can focus on processing the data.</p>

        <p>AWS Data Pipeline provides a JAR implementation of a task runner called AWS Data Pipeline Task Runner. 
            AWS Data Pipeline Task Runner provides logic for common data management scenarios, such as performing 
            database queries and running data analysis using Amazon Elastic MapReduce (Amazon EMR). You can use 
            AWS Data Pipeline Task Runner as your task runner, or you can write your own task runner to provide 
            custom data management.</p>
        
        <p>AWS Data Pipeline implements two main sets of functionality. Use the first set to create a pipeline 
           and define data sources, schedules, dependencies, and the transforms to be performed on the data. 
           Use the second set in your task runner application to receive the next task ready for processing. 
           The logic for performing the task, such as querying the data, running data analysis, or converting 
           the data from one format to another, is contained within the task runner. The task runner performs 
           the task assigned to it by the web service, reporting progress to the web service as it does so. 
           When the task is done, the task runner reports the final success or failure of the task to the web service.</p>")
module SetTaskStatus = {
  type t
  @ocaml.doc("<p>Contains the parameters for SetTaskStatus.</p>")
  type request = {
    @ocaml.doc("<p>If an error occurred during the task, this value specifies the stack trace associated with the error. This value is set on the physical attempt object. 
            It is used to display error information to the user. The web service does not parse this value.</p>")
    errorStackTrace: option<string_>,
    @ocaml.doc("<p>If an error occurred during the task, this value specifies a text description of the error. This value is set on the physical attempt object. 
            It is used to display error information to the user. The web service does not parse this value.</p>")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>If an error occurred during the task, this value specifies the error code. This value is set on the physical attempt object. 
            It is used to display error information to the user. It should not start with string \"Service_\" which is reserved by the system.</p>")
    errorId: option<string_>,
    @ocaml.doc(
      "<p>If <code>FINISHED</code>, the task successfully completed. If <code>FAILED</code>, the task ended unsuccessfully. Preconditions use false.</p>"
    )
    taskStatus: taskStatus,
    @ocaml.doc(
      "<p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>"
    )
    taskId: taskId,
  }
  type response = {.}
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "SetTaskStatusCommand"
  let make = (~taskStatus, ~taskId, ~errorStackTrace=?, ~errorMessage=?, ~errorId=?, ()) =>
    new({errorStackTrace, errorMessage, errorId, taskStatus, taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ReportTaskRunnerHeartbeat = {
  type t
  @ocaml.doc("<p>Contains the parameters for ReportTaskRunnerHeartbeat.</p>")
  type request = {
    @ocaml.doc("<p>The public DNS name of the task runner.</p>") hostname: option<id>,
    @ocaml.doc("<p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. 
            You can only specify a single value for <code>workerGroup</code>. There are no wildcard values permitted in <code>workerGroup</code>; the string 
            must be an exact, case-sensitive, match.</p>")
    workerGroup: option<string_>,
    @ocaml.doc("<p>The ID of the task runner. This value should be unique across your AWS account. In the case of AWS Data Pipeline Task Runner 
            launched on a resource managed by AWS Data Pipeline, the web service provides a unique identifier when it launches the application. 
            If you have written a custom task runner, you should assign a unique identifier for the task runner.</p>")
    taskrunnerId: id,
  }
  @ocaml.doc("<p>Contains the output of ReportTaskRunnerHeartbeat.</p>")
  type response = {
    @ocaml.doc("<p>Indicates whether the calling task runner should terminate.</p>")
    terminate: boolean_,
  }
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "ReportTaskRunnerHeartbeatCommand"
  let make = (~taskrunnerId, ~hostname=?, ~workerGroup=?, ()) =>
    new({hostname, workerGroup, taskrunnerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module EvaluateExpression = {
  type t
  @ocaml.doc("<p>Contains the parameters for EvaluateExpression.</p>")
  type request = {
    @ocaml.doc("<p>The expression to evaluate.</p>") expression: longString,
    @ocaml.doc("<p>The ID of the object.</p>") objectId: id,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  @ocaml.doc("<p>Contains the output of EvaluateExpression.</p>")
  type response = {@ocaml.doc("<p>The evaluated expression.</p>") evaluatedExpression: longString}
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "EvaluateExpressionCommand"
  let make = (~expression, ~objectId, ~pipelineId, ()) => new({expression, objectId, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeletePipeline = {
  type t
  @ocaml.doc("<p>Contains the parameters for DeletePipeline.</p>")
  type request = {@ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id}
  type response = {.}
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "DeletePipelineCommand"
  let make = (~pipelineId, ()) => new({pipelineId: pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeactivatePipeline = {
  type t
  @ocaml.doc("<p>Contains the parameters for DeactivatePipeline.</p>")
  type request = {
    @ocaml.doc("<p>Indicates whether to cancel any running objects. The default is true, 
          which sets the state of any running objects to <code>CANCELED</code>.
          If this value is false, the pipeline is deactivated after all 
          running objects finish.</p>")
    cancelActive: option<cancelActive>,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  type response = {.}
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "DeactivatePipelineCommand"
  let make = (~pipelineId, ~cancelActive=?, ()) => new({cancelActive, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SetStatus = {
  type t
  @ocaml.doc("<p>Contains the parameters for SetStatus.</p>")
  type request = {
    @ocaml.doc("<p>The status to be set on all the objects specified in <code>objectIds</code>. For components, use <code>PAUSE</code> or <code>RESUME</code>. 
            For instances, use <code>TRY_CANCEL</code>, <code>RERUN</code>, or <code>MARK_FINISHED</code>.</p>")
    status: string_,
    @ocaml.doc(
      "<p>The IDs of the objects. The corresponding objects can be either physical or components, but not a mix of both types.</p>"
    )
    objectIds: idList,
    @ocaml.doc("<p>The ID of the pipeline that contains the objects.</p>") pipelineId: id,
  }
  type response = {.}
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "SetStatusCommand"
  let make = (~status, ~objectIds, ~pipelineId, ()) => new({status, objectIds, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveTags = {
  type t
  @ocaml.doc("<p>Contains the parameters for RemoveTags.</p>")
  type request = {
    @ocaml.doc("<p>The keys of the tags to remove.</p>") tagKeys: stringList,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  type response = {.}
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "RemoveTagsCommand"
  let make = (~tagKeys, ~pipelineId, ()) => new({tagKeys, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ReportTaskProgress = {
  type t
  @ocaml.doc("<p>Contains the parameters for ReportTaskProgress.</p>")
  type request = {
    @ocaml.doc(
      "<p>Key-value pairs that define the properties of the ReportTaskProgressInput object.</p>"
    )
    fields: option<fieldList>,
    @ocaml.doc(
      "<p>The ID of the task assigned to the task runner. This value is provided in the response for <a>PollForTask</a>.</p>"
    )
    taskId: taskId,
  }
  @ocaml.doc("<p>Contains the output of ReportTaskProgress.</p>")
  type response = {
    @ocaml.doc(
      "<p>If true, the calling task runner should cancel processing of the task. The task runner does not need to call <a>SetTaskStatus</a> for canceled tasks.</p>"
    )
    canceled: boolean_,
  }
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "ReportTaskProgressCommand"
  let make = (~taskId, ~fields=?, ()) => new({fields, taskId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListPipelines = {
  type t
  @ocaml.doc("<p>Contains the parameters for ListPipelines.</p>")
  type request = {
    @ocaml.doc("<p>The starting point for the results to be returned. For the first call, this value should be empty. 
           As long as there are more results, continue to call <code>ListPipelines</code> with
           the marker value from the previous call to retrieve the next set of results.</p>")
    marker: option<string_>,
  }
  @ocaml.doc("<p>Contains the output of ListPipelines.</p>")
  type response = {
    @ocaml.doc(
      "<p>Indicates whether there are more results that can be obtained by a subsequent call.</p>"
    )
    hasMoreResults: option<boolean_>,
    @ocaml.doc("<p>The starting point for the next page of results. To view the next page of results, call <code>ListPipelinesOutput</code> 
           again with this marker value. If the value is null, there are no more results.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>The pipeline identifiers. If you require additional information about the pipelines, you can use these identifiers to call 
            <a>DescribePipelines</a> and <a>GetPipelineDefinition</a>.</p>")
    pipelineIdList: pipelineList,
  }
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "ListPipelinesCommand"
  let make = (~marker=?, ()) => new({marker: marker})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePipeline = {
  type t
  @ocaml.doc("<p>Contains the parameters for CreatePipeline.</p>")
  type request = {
    @ocaml.doc("<p>A list of tags to associate with the pipeline at creation. Tags let you control access to pipelines. 
            For more information, see <a href=\"http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html\">Controlling User Access to Pipelines</a> 
            in the <i>AWS Data Pipeline Developer Guide</i>.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description for the pipeline.</p>") description: option<string_>,
    @ocaml.doc("<p>A unique identifier. This identifier is not the same as the pipeline identifier assigned by AWS Data Pipeline. 
            You are responsible for defining the format and ensuring the uniqueness of this identifier. You use this 
            parameter to ensure idempotency during repeated calls to <code>CreatePipeline</code>. For example, if the 
            first call to <code>CreatePipeline</code> does not succeed, you can pass in the same unique identifier and 
            pipeline name combination on a subsequent call to <code>CreatePipeline</code>. <code>CreatePipeline</code> 
            ensures that if a pipeline already exists with the same name and unique identifier, a new pipeline is not 
            created. Instead, you'll receive the pipeline identifier from the previous attempt. The uniqueness of the 
            name and unique identifier combination is scoped to the AWS account or IAM user credentials.</p>")
    uniqueId: id,
    @ocaml.doc("<p>The name for the pipeline. You can use the same name for multiple pipelines associated with your AWS account, 
            because AWS Data Pipeline assigns each pipeline a unique pipeline identifier.</p>")
    name: id,
  }
  @ocaml.doc("<p>Contains the output of CreatePipeline.</p>")
  type response = {
    @ocaml.doc(
      "<p>The ID that AWS Data Pipeline assigns the newly created pipeline. For example, <code>df-06372391ZG65EXAMPLE</code>.</p>"
    )
    pipelineId: id,
  }
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "CreatePipelineCommand"
  let make = (~uniqueId, ~name, ~tags=?, ~description=?, ()) =>
    new({tags, description, uniqueId, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddTags = {
  type t
  @ocaml.doc("<p>Contains the parameters for AddTags.</p>")
  type request = {
    @ocaml.doc("<p>The tags to add, as key/value pairs.</p>") tags: tagList_,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  type response = {.}
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "AddTagsCommand"
  let make = (~tags, ~pipelineId, ()) => new({tags, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ActivatePipeline = {
  type t
  @ocaml.doc("<p>Contains the parameters for ActivatePipeline.</p>")
  type request = {
    @ocaml.doc(
      "<p>The date and time to resume the pipeline. By default, the pipeline resumes from the last completed execution.</p>"
    )
    startTimestamp: option<timestamp_>,
    @ocaml.doc("<p>A list of parameter values to pass to the pipeline at activation.</p>")
    parameterValues: option<parameterValueList>,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  type response = {.}
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "ActivatePipelineCommand"
  let make = (~pipelineId, ~startTimestamp=?, ~parameterValues=?, ()) =>
    new({startTimestamp, parameterValues, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ValidatePipelineDefinition = {
  type t
  @ocaml.doc("<p>Contains the parameters for ValidatePipelineDefinition.</p>")
  type request = {
    @ocaml.doc("<p>The parameter values used with the pipeline.</p>")
    parameterValues: option<parameterValueList>,
    @ocaml.doc("<p>The parameter objects used with the pipeline.</p>")
    parameterObjects: option<parameterObjectList>,
    @ocaml.doc(
      "<p>The objects that define the pipeline changes to validate against the pipeline.</p>"
    )
    pipelineObjects: pipelineObjectList,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  @ocaml.doc("<p>Contains the output of ValidatePipelineDefinition.</p>")
  type response = {
    @ocaml.doc("<p>Indicates whether there were validation errors.</p>") errored: boolean_,
    @ocaml.doc("<p>Any validation warnings that were found.</p>")
    validationWarnings: option<validationWarnings>,
    @ocaml.doc("<p>Any validation errors that were found.</p>")
    validationErrors: option<validationErrors>,
  }
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "ValidatePipelineDefinitionCommand"
  let make = (~pipelineObjects, ~pipelineId, ~parameterValues=?, ~parameterObjects=?, ()) =>
    new({parameterValues, parameterObjects, pipelineObjects, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutPipelineDefinition = {
  type t
  @ocaml.doc("<p>Contains the parameters for PutPipelineDefinition.</p>")
  type request = {
    @ocaml.doc("<p>The parameter values used with the pipeline.</p>")
    parameterValues: option<parameterValueList>,
    @ocaml.doc("<p>The parameter objects used with the pipeline.</p>")
    parameterObjects: option<parameterObjectList>,
    @ocaml.doc(
      "<p>The objects that define the pipeline. These objects overwrite the existing pipeline definition.</p>"
    )
    pipelineObjects: pipelineObjectList,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  @ocaml.doc("<p>Contains the output of PutPipelineDefinition.</p>")
  type response = {
    @ocaml.doc("<p>Indicates whether there were validation errors, and the pipeline definition is stored but cannot be 
            activated until you correct the pipeline and call <code>PutPipelineDefinition</code> to commit the corrected pipeline.</p>")
    errored: boolean_,
    @ocaml.doc(
      "<p>The validation warnings that are associated with the objects defined in <code>pipelineObjects</code>.</p>"
    )
    validationWarnings: option<validationWarnings>,
    @ocaml.doc(
      "<p>The validation errors that are associated with the objects defined in <code>pipelineObjects</code>.</p>"
    )
    validationErrors: option<validationErrors>,
  }
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "PutPipelineDefinitionCommand"
  let make = (~pipelineObjects, ~pipelineId, ~parameterValues=?, ~parameterObjects=?, ()) =>
    new({parameterValues, parameterObjects, pipelineObjects, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetPipelineDefinition = {
  type t
  @ocaml.doc("<p>Contains the parameters for GetPipelineDefinition.</p>")
  type request = {
    @ocaml.doc("<p>The version of the pipeline definition to retrieve. Set this parameter to <code>latest</code> (default) 
            to use the last definition saved to the pipeline or <code>active</code> to use the last definition  
            that was activated.</p>")
    version: option<string_>,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  @ocaml.doc("<p>Contains the output of GetPipelineDefinition.</p>")
  type response = {
    @ocaml.doc("<p>The parameter values used in the pipeline definition.</p>")
    parameterValues: option<parameterValueList>,
    @ocaml.doc("<p>The parameter objects used in the pipeline definition.</p>")
    parameterObjects: option<parameterObjectList>,
    @ocaml.doc("<p>The objects defined in the pipeline.</p>")
    pipelineObjects: option<pipelineObjectList>,
  }
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "GetPipelineDefinitionCommand"
  let make = (~pipelineId, ~version=?, ()) => new({version, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribePipelines = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribePipelines.</p>")
  type request = {
    @ocaml.doc("<p>The IDs of the pipelines to describe. You can pass as many as 25 identifiers in a single call. 
            To obtain pipeline IDs, call <a>ListPipelines</a>.</p>")
    pipelineIds: idList,
  }
  @ocaml.doc("<p>Contains the output of DescribePipelines.</p>")
  type response = {
    @ocaml.doc("<p>An array of descriptions for the specified pipelines.</p>")
    pipelineDescriptionList: pipelineDescriptionList,
  }
  @module("@aws-sdk/client-datapipeline") @new
  external new: request => t = "DescribePipelinesCommand"
  let make = (~pipelineIds, ()) => new({pipelineIds: pipelineIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeObjects = {
  type t
  @ocaml.doc("<p>Contains the parameters for DescribeObjects.</p>")
  type request = {
    @ocaml.doc("<p>The starting point for the results to be returned. For the first call, this value should be empty. 
           As long as there are more results, continue to call <code>DescribeObjects</code> with
           the marker value from the previous call to retrieve the next set of results.</p>")
    marker: option<string_>,
    @ocaml.doc(
      "<p>Indicates whether any expressions in the object should be evaluated when the object descriptions are returned.</p>"
    )
    evaluateExpressions: option<boolean_>,
    @ocaml.doc(
      "<p>The IDs of the pipeline objects that contain the definitions to be described. You can pass as many as 25 identifiers in a single call to <code>DescribeObjects</code>.</p>"
    )
    objectIds: idList,
    @ocaml.doc("<p>The ID of the pipeline that contains the object definitions.</p>")
    pipelineId: id,
  }
  @ocaml.doc("<p>Contains the output of DescribeObjects.</p>")
  type response = {
    @ocaml.doc("<p>Indicates whether there are more results to return.</p>")
    hasMoreResults: option<boolean_>,
    @ocaml.doc("<p>The starting point for the next page of results. To view the next page of results, call <code>DescribeObjects</code> 
           again with this marker value. If the value is null, there are no more results.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>An array of object definitions.</p>") pipelineObjects: pipelineObjectList,
  }
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "DescribeObjectsCommand"
  let make = (~objectIds, ~pipelineId, ~marker=?, ~evaluateExpressions=?, ()) =>
    new({marker, evaluateExpressions, objectIds, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module QueryObjects = {
  type t
  @ocaml.doc("<p>Contains the parameters for QueryObjects.</p>")
  type request = {
    @ocaml.doc(
      "<p>The maximum number of object names that <code>QueryObjects</code> will return in a single call. The default value is 100. </p>"
    )
    limit: option<int_>,
    @ocaml.doc("<p>The starting point for the results to be returned. For the first call, this value should be empty. 
           As long as there are more results, continue to call <code>QueryObjects</code> with
           the marker value from the previous call to retrieve the next set of results.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>Indicates whether the query applies to components or instances. The possible values are:	
            <code>COMPONENT</code>, <code>INSTANCE</code>, and <code>ATTEMPT</code>.</p>")
    sphere: string_,
    @ocaml.doc("<p>The query that defines the objects to be returned. The <code>Query</code> object can contain a maximum of ten selectors. 
            The conditions in the query are limited to top-level String fields in the object. 
            These filters can be applied to components, instances, and attempts.</p>")
    query: option<query>,
    @ocaml.doc("<p>The ID of the pipeline.</p>") pipelineId: id,
  }
  @ocaml.doc("<p>Contains the output of QueryObjects.</p>")
  type response = {
    @ocaml.doc(
      "<p>Indicates whether there are more results that can be obtained by a subsequent call.</p>"
    )
    hasMoreResults: option<boolean_>,
    @ocaml.doc("<p>The starting point for the next page of results. To view the next page of results, call <code>QueryObjects</code> 
           again with this marker value. If the value is null, there are no more results.</p>")
    marker: option<string_>,
    @ocaml.doc("<p>The identifiers that match the query selectors.</p>") ids: option<idList>,
  }
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "QueryObjectsCommand"
  let make = (~sphere, ~pipelineId, ~limit=?, ~marker=?, ~query=?, ()) =>
    new({limit, marker, sphere, query, pipelineId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PollForTask = {
  type t
  @ocaml.doc("<p>Contains the parameters for PollForTask.</p>")
  type request = {
    @ocaml.doc(
      "<p>Identity information for the EC2 instance that is hosting the task runner. You can get this value from the instance using <code>http://169.254.169.254/latest/meta-data/instance-id</code>. For more information, see <a href=\"http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AESDG-chapter-instancedata.html\">Instance Metadata</a> in the <i>Amazon Elastic Compute Cloud User Guide.</i> Passing in this value proves that your task runner is running on an EC2 instance, and ensures the proper AWS Data Pipeline service charges are applied to your pipeline.</p>"
    )
    instanceIdentity: option<instanceIdentity>,
    @ocaml.doc("<p>The public DNS name of the calling task runner.</p>") hostname: option<id>,
    @ocaml.doc("<p>The type of task the task runner is configured to accept and process. The worker group is set as a field on objects in the pipeline when they are created. 
            You can only specify a single value for <code>workerGroup</code> in the call to <code>PollForTask</code>. There are no wildcard values permitted in 
            <code>workerGroup</code>; the string must be an exact, case-sensitive, match.</p>")
    workerGroup: string_,
  }
  @ocaml.doc("<p>Contains the output of PollForTask.</p>")
  type response = {
    @ocaml.doc("<p>The information needed to complete the task that is being assigned to the task runner. One of the fields returned in this object is <code>taskId</code>, 
            which contains an identifier for the task being assigned. The calling task runner uses <code>taskId</code> in subsequent calls to <a>ReportTaskProgress</a> 
            and <a>SetTaskStatus</a>.</p>")
    taskObject: option<taskObject>,
  }
  @module("@aws-sdk/client-datapipeline") @new external new: request => t = "PollForTaskCommand"
  let make = (~workerGroup, ~instanceIdentity=?, ~hostname=?, ()) =>
    new({instanceIdentity, hostname, workerGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
