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
type targetResourceTypeParameterRequired = bool
type targetResourceTypeParameterName = string
type targetResourceTypeParameterDescription = string
type targetResourceTypeId = string
type targetResourceTypeDescription = string
type tagValue = string
type tagKey = string
type stopConditionValue = string
type stopConditionSource = string
type s3ObjectKey = string
type s3BucketName = string
type roleArn = string
type resourceArn = string
type nextToken = string
type logSchemaVersion = int
type listTargetResourceTypesMaxResults = int
type listExperimentsMaxResults = int
type listExperimentTemplatesMaxResults = int
type listActionsMaxResults = int
type lastUpdateTime = Js.Date.t
type experimentTemplateTargetSelectionMode = string
type experimentTemplateTargetParameterValue = string
type experimentTemplateTargetParameterName = string
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
type experimentTargetParameterValue = string
type experimentTargetParameterName = string
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
type experimentActionStartTime = Js.Date.t
type experimentActionStartAfter = string
type experimentActionParameterName = string
type experimentActionParameter = string
type experimentActionName = string
type experimentActionEndTime = Js.Date.t
type experimentActionDescription = string
type exceptionMessage = string
type creationTime = Js.Date.t
type cloudWatchLogGroupArn = string
type clientToken = string
type actionTargetName = string
type actionParameterRequired = bool
type actionParameterName = string
type actionParameterDescription = string
type actionId = string
type actionDescription = string
@ocaml.doc(
  "<p>Specifies a stop condition for an experiment. You can define a stop condition as a CloudWatch alarm.</p>"
)
type updateExperimentTemplateStopConditionInput = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch alarm.</p>")
  value: option<stopConditionValue>,
  @ocaml.doc("<p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop
         condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop
         condition.</p>")
  source: stopConditionSource,
}
@ocaml.doc("<p>Describes a resource type.</p>")
type targetResourceTypeSummary = {
  @ocaml.doc("<p>A description of the resource type.</p>")
  description: option<targetResourceTypeDescription>,
  @ocaml.doc("<p>The resource type.</p>") resourceType: option<targetResourceTypeId>,
}
@ocaml.doc("<p>Describes the parameters for a resource type. Use parameters to determine which tasks are
          identified during target resolution.</p>")
type targetResourceTypeParameter = {
  @ocaml.doc("<p>Indicates whether the parameter is required.</p>")
  required: option<targetResourceTypeParameterRequired>,
  @ocaml.doc("<p>A description of the parameter.</p>")
  description: option<targetResourceTypeParameterDescription>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type resourceArnList = array<resourceArn>
type experimentTemplateTargetParameterMap = Js.Dict.t<experimentTemplateTargetParameterValue>
type experimentTemplateTargetFilterValues = array<experimentTemplateTargetFilterValue>
@ocaml.doc("<p>Describes a stop condition for an experiment template.</p>")
type experimentTemplateStopCondition = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>")
  value: option<stopConditionValue>,
  @ocaml.doc("<p>The source for the stop condition.</p>") source: option<stopConditionSource>,
}
@ocaml.doc("<p>Specifies the configuration for experiment logging to Amazon S3.</p>")
type experimentTemplateS3LogConfigurationInput = {
  @ocaml.doc("<p>The bucket prefix.</p>") prefix: option<s3ObjectKey>,
  @ocaml.doc("<p>The name of the destination bucket.</p>") bucketName: s3BucketName,
}
@ocaml.doc("<p>Describes the configuration for experiment logging to Amazon S3.</p>")
type experimentTemplateS3LogConfiguration = {
  @ocaml.doc("<p>The bucket prefix.</p>") prefix: option<s3ObjectKey>,
  @ocaml.doc("<p>The name of the destination bucket.</p>") bucketName: option<s3BucketName>,
}
@ocaml.doc("<p>Specifies the configuration for experiment logging to Amazon CloudWatch Logs.</p>")
type experimentTemplateCloudWatchLogsLogConfigurationInput = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>"
  )
  logGroupArn: cloudWatchLogGroupArn,
}
@ocaml.doc("<p>Describes the configuration for experiment logging to Amazon CloudWatch Logs.</p>")
type experimentTemplateCloudWatchLogsLogConfiguration = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>"
  )
  logGroupArn: option<cloudWatchLogGroupArn>,
}
type experimentTemplateActionTargetMap = Js.Dict.t<experimentTemplateTargetName>
type experimentTemplateActionStartAfterList = array<experimentTemplateActionStartAfter>
type experimentTemplateActionParameterMap = Js.Dict.t<experimentTemplateActionParameter>
type experimentTargetParameterMap = Js.Dict.t<experimentTargetParameterValue>
type experimentTargetFilterValues = array<experimentTargetFilterValue>
@ocaml.doc("<p>Describes the stop condition for an experiment.</p>")
type experimentStopCondition = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>")
  value: option<stopConditionValue>,
  @ocaml.doc("<p>The source for the stop condition.</p>") source: option<stopConditionSource>,
}
@ocaml.doc("<p>Describes the state of an experiment.</p>")
type experimentState = {
  @ocaml.doc("<p>The reason for the state.</p>") reason: option<experimentStatusReason>,
  @ocaml.doc("<p>The state of the experiment.</p>") status: option<experimentStatus>,
}
@ocaml.doc("<p>Describes the configuration for experiment logging to Amazon S3.</p>")
type experimentS3LogConfiguration = {
  @ocaml.doc("<p>The bucket prefix.</p>") prefix: option<s3ObjectKey>,
  @ocaml.doc("<p>The name of the destination bucket.</p>") bucketName: option<s3BucketName>,
}
@ocaml.doc("<p>Describes the configuration for experiment logging to Amazon CloudWatch Logs.</p>")
type experimentCloudWatchLogsLogConfiguration = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>"
  )
  logGroupArn: option<cloudWatchLogGroupArn>,
}
type experimentActionTargetMap = Js.Dict.t<experimentTargetName>
@ocaml.doc("<p>Describes the state of an action.</p>")
type experimentActionState = {
  @ocaml.doc("<p>The reason for the state.</p>") reason: option<experimentActionStatusReason>,
  @ocaml.doc("<p>The state of the action.</p>") status: option<experimentActionStatus>,
}
type experimentActionStartAfterList = array<experimentActionStartAfter>
type experimentActionParameterMap = Js.Dict.t<experimentActionParameter>
@ocaml.doc("<p>Specifies a stop condition for an experiment template.</p>")
type createExperimentTemplateStopConditionInput = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudWatch alarm. This is required if the source is
         a CloudWatch alarm.</p>")
  value: option<stopConditionValue>,
  @ocaml.doc("<p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop
         condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop
         condition.</p>")
  source: stopConditionSource,
}
@ocaml.doc("<p>Describes a target for an action.</p>")
type actionTarget = {
  @ocaml.doc("<p>The resource type of the target.</p>") resourceType: option<targetResourceTypeId>,
}
@ocaml.doc("<p>Describes a parameter for an action.</p>")
type actionParameter = {
  @ocaml.doc("<p>Indicates whether the parameter is required.</p>")
  required: option<actionParameterRequired>,
  @ocaml.doc("<p>The parameter description.</p>") description: option<actionParameterDescription>,
}
type updateExperimentTemplateStopConditionInputList = array<
  updateExperimentTemplateStopConditionInput,
>
@ocaml.doc("<p>Specifies the configuration for experiment logging.</p>")
type updateExperimentTemplateLogConfigurationInput = {
  @ocaml.doc("<p>The schema version.</p>") logSchemaVersion: option<logSchemaVersion>,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon S3.</p>")
  s3Configuration: option<experimentTemplateS3LogConfigurationInput>,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>")
  cloudWatchLogsConfiguration: option<experimentTemplateCloudWatchLogsLogConfigurationInput>,
}
@ocaml.doc("<p>Specifies an action for an experiment template.</p>")
type updateExperimentTemplateActionInputItem = {
  @ocaml.doc(
    "<p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>"
  )
  startAfter: option<experimentTemplateActionStartAfterList>,
  @ocaml.doc("<p>The targets for the action.</p>")
  targets: option<experimentTemplateActionTargetMap>,
  @ocaml.doc("<p>The parameters for the action, if applicable.</p>")
  parameters: option<experimentTemplateActionParameterMap>,
  @ocaml.doc("<p>A description for the action.</p>")
  description: option<experimentTemplateActionDescription>,
  @ocaml.doc("<p>The ID of the action.</p>") actionId: option<actionId>,
}
type targetResourceTypeSummaryList = array<targetResourceTypeSummary>
type targetResourceTypeParameterMap = Js.Dict.t<targetResourceTypeParameter>
@ocaml.doc("<p>Specifies a filter used for the target resource input in an experiment template.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters\">Resource filters</a>
         in the <i>Fault Injection Simulator User Guide</i>.</p>")
type experimentTemplateTargetInputFilter = {
  @ocaml.doc("<p>The attribute values for the filter.</p>")
  values: experimentTemplateTargetFilterValues,
  @ocaml.doc("<p>The attribute path for the filter.</p>") path: experimentTemplateTargetFilterPath,
}
@ocaml.doc("<p>Describes a filter used for the target resources in an experiment template.</p>")
type experimentTemplateTargetFilter = {
  @ocaml.doc("<p>The attribute values for the filter.</p>")
  values: option<experimentTemplateTargetFilterValues>,
  @ocaml.doc("<p>The attribute path for the filter.</p>")
  path: option<experimentTemplateTargetFilterPath>,
}
@ocaml.doc("<p>Provides a summary of an experiment template.</p>")
type experimentTemplateSummary = {
  @ocaml.doc("<p>The tags for the experiment template.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The time that the experiment template was last updated.</p>")
  lastUpdateTime: option<lastUpdateTime>,
  @ocaml.doc("<p>The time that the experiment template was created.</p>")
  creationTime: option<creationTime>,
  @ocaml.doc("<p>The description of the experiment template.</p>")
  description: option<experimentTemplateDescription>,
  @ocaml.doc("<p>The ID of the experiment template.</p>") id: option<experimentTemplateId>,
}
type experimentTemplateStopConditionList = array<experimentTemplateStopCondition>
@ocaml.doc("<p>Describes the configuration for experiment logging.</p>")
type experimentTemplateLogConfiguration = {
  @ocaml.doc("<p>The schema version.</p>") logSchemaVersion: option<logSchemaVersion>,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon S3.</p>")
  s3Configuration: option<experimentTemplateS3LogConfiguration>,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>")
  cloudWatchLogsConfiguration: option<experimentTemplateCloudWatchLogsLogConfiguration>,
}
@ocaml.doc("<p>Describes an action for an experiment template.</p>")
type experimentTemplateAction = {
  @ocaml.doc(
    "<p>The name of the action that must be completed before the current action starts.</p>"
  )
  startAfter: option<experimentTemplateActionStartAfterList>,
  @ocaml.doc("<p>The targets for the action.</p>")
  targets: option<experimentTemplateActionTargetMap>,
  @ocaml.doc("<p>The parameters for the action.</p>")
  parameters: option<experimentTemplateActionParameterMap>,
  @ocaml.doc("<p>A description for the action.</p>")
  description: option<experimentTemplateActionDescription>,
  @ocaml.doc("<p>The ID of the action.</p>") actionId: option<actionId>,
}
@ocaml.doc("<p>Describes a filter used for the target resources in an experiment.</p>")
type experimentTargetFilter = {
  @ocaml.doc("<p>The attribute values for the filter.</p>")
  values: option<experimentTargetFilterValues>,
  @ocaml.doc("<p>The attribute path for the filter.</p>") path: option<experimentTargetFilterPath>,
}
@ocaml.doc("<p>Provides a summary of an experiment.</p>")
type experimentSummary = {
  @ocaml.doc("<p>The tags for the experiment.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The time that the experiment was created.</p>") creationTime: option<creationTime>,
  @ocaml.doc("<p>The state of the experiment.</p>") state: option<experimentState>,
  @ocaml.doc("<p>The ID of the experiment template.</p>")
  experimentTemplateId: option<experimentTemplateId>,
  @ocaml.doc("<p>The ID of the experiment.</p>") id: option<experimentId>,
}
type experimentStopConditionList = array<experimentStopCondition>
@ocaml.doc("<p>Describes the configuration for experiment logging.</p>")
type experimentLogConfiguration = {
  @ocaml.doc("<p>The schema version.</p>") logSchemaVersion: option<logSchemaVersion>,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon S3.</p>")
  s3Configuration: option<experimentS3LogConfiguration>,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>")
  cloudWatchLogsConfiguration: option<experimentCloudWatchLogsLogConfiguration>,
}
@ocaml.doc("<p>Describes the action for an experiment.</p>")
type experimentAction = {
  @ocaml.doc("<p>The time that the action ended.</p>") endTime: option<experimentActionEndTime>,
  @ocaml.doc("<p>The time that the action started.</p>")
  startTime: option<experimentActionStartTime>,
  @ocaml.doc("<p>The state of the action.</p>") state: option<experimentActionState>,
  @ocaml.doc("<p>The name of the action that must be completed before this action starts.</p>")
  startAfter: option<experimentActionStartAfterList>,
  @ocaml.doc("<p>The targets for the action.</p>") targets: option<experimentActionTargetMap>,
  @ocaml.doc("<p>The parameters for the action.</p>")
  parameters: option<experimentActionParameterMap>,
  @ocaml.doc("<p>The description for the action.</p>")
  description: option<experimentActionDescription>,
  @ocaml.doc("<p>The ID of the action.</p>") actionId: option<actionId>,
}
type createExperimentTemplateStopConditionInputList = array<
  createExperimentTemplateStopConditionInput,
>
@ocaml.doc("<p>Specifies the configuration for experiment logging.</p>")
type createExperimentTemplateLogConfigurationInput = {
  @ocaml.doc("<p>The schema version.</p>") logSchemaVersion: logSchemaVersion,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon S3.</p>")
  s3Configuration: option<experimentTemplateS3LogConfigurationInput>,
  @ocaml.doc("<p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>")
  cloudWatchLogsConfiguration: option<experimentTemplateCloudWatchLogsLogConfigurationInput>,
}
@ocaml.doc("<p>Specifies an action for an experiment template.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/fis/latest/userguide/actions.html\">Actions</a>
         in the <i>Fault Injection Simulator User Guide</i>.</p>")
type createExperimentTemplateActionInput = {
  @ocaml.doc(
    "<p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>"
  )
  startAfter: option<experimentTemplateActionStartAfterList>,
  @ocaml.doc("<p>The targets for the action.</p>")
  targets: option<experimentTemplateActionTargetMap>,
  @ocaml.doc("<p>The parameters for the action, if applicable.</p>")
  parameters: option<experimentTemplateActionParameterMap>,
  @ocaml.doc("<p>A description for the action.</p>")
  description: option<experimentTemplateActionDescription>,
  @ocaml.doc(
    "<p>The ID of the action. The format of the action ID is: aws:<i>service-name</i>:<i>action-type</i>.</p>"
  )
  actionId: actionId,
}
type actionTargetMap = Js.Dict.t<actionTarget>
type actionParameterMap = Js.Dict.t<actionParameter>
type updateExperimentTemplateActionInputMap = Js.Dict.t<updateExperimentTemplateActionInputItem>
@ocaml.doc("<p>Describes a resource type.</p>")
type targetResourceType = {
  @ocaml.doc("<p>The parameters for the resource type.</p>")
  parameters: option<targetResourceTypeParameterMap>,
  @ocaml.doc("<p>A description of the resource type.</p>")
  description: option<targetResourceTypeDescription>,
  @ocaml.doc("<p>The resource type.</p>") resourceType: option<targetResourceTypeId>,
}
type experimentTemplateTargetFilterList = array<experimentTemplateTargetFilter>
type experimentTemplateTargetFilterInputList = array<experimentTemplateTargetInputFilter>
type experimentTemplateSummaryList = array<experimentTemplateSummary>
type experimentTemplateActionMap = Js.Dict.t<experimentTemplateAction>
type experimentTargetFilterList = array<experimentTargetFilter>
type experimentSummaryList = array<experimentSummary>
type experimentActionMap = Js.Dict.t<experimentAction>
type createExperimentTemplateActionInputMap = Js.Dict.t<createExperimentTemplateActionInput>
@ocaml.doc("<p>Provides a summary of an action.</p>")
type actionSummary = {
  @ocaml.doc("<p>The tags for the action.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The targets for the action.</p>") targets: option<actionTargetMap>,
  @ocaml.doc("<p>The description for the action.</p>") description: option<actionDescription>,
  @ocaml.doc("<p>The ID of the action.</p>") id: option<actionId>,
}
@ocaml.doc("<p>Describes an action. For more information, see <a href=\"https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html\">FIS actions</a> 
         in the <i>Fault Injection Simulator User Guide</i>.</p>")
type action = {
  @ocaml.doc("<p>The tags for the action.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The supported targets for the action.</p>") targets: option<actionTargetMap>,
  @ocaml.doc("<p>The action parameters, if applicable.</p>") parameters: option<actionParameterMap>,
  @ocaml.doc("<p>The description for the action.</p>") description: option<actionDescription>,
  @ocaml.doc("<p>The ID of the action.</p>") id: option<actionId>,
}
@ocaml.doc(
  "<p>Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN) or at least one resource tag. You cannot specify both.</p>"
)
type updateExperimentTemplateTargetInput = {
  @ocaml.doc("<p>The resource type parameters.</p>")
  parameters: option<experimentTemplateTargetParameterMap>,
  @ocaml.doc("<p>Scopes the identified resources to a specific count or percentage.</p>")
  selectionMode: experimentTemplateTargetSelectionMode,
  @ocaml.doc("<p>The filters to apply to identify target resources using specific attributes.</p>")
  filters: option<experimentTemplateTargetFilterInputList>,
  @ocaml.doc("<p>The tags for the target resources.</p>") resourceTags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the targets.</p>")
  resourceArns: option<resourceArnList>,
  @ocaml.doc(
    "<p>The resource type. The resource type must be supported for the specified action.</p>"
  )
  resourceType: targetResourceTypeId,
}
@ocaml.doc("<p>Describes a target for an experiment template.</p>")
type experimentTemplateTarget = {
  @ocaml.doc("<p>The resource type parameters.</p>")
  parameters: option<experimentTemplateTargetParameterMap>,
  @ocaml.doc("<p>Scopes the identified resources to a specific count or percentage.</p>")
  selectionMode: option<experimentTemplateTargetSelectionMode>,
  @ocaml.doc("<p>The filters to apply to identify target resources using specific attributes.</p>")
  filters: option<experimentTemplateTargetFilterList>,
  @ocaml.doc("<p>The tags for the target resources.</p>") resourceTags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the targets.</p>")
  resourceArns: option<resourceArnList>,
  @ocaml.doc("<p>The resource type.</p>") resourceType: option<targetResourceTypeId>,
}
@ocaml.doc("<p>Describes a target for an experiment.</p>")
type experimentTarget = {
  @ocaml.doc("<p>The resource type parameters.</p>")
  parameters: option<experimentTargetParameterMap>,
  @ocaml.doc("<p>Scopes the identified resources to a specific count or percentage.</p>")
  selectionMode: option<experimentTargetSelectionMode>,
  @ocaml.doc("<p>The filters to apply to identify target resources using specific attributes.</p>")
  filters: option<experimentTargetFilterList>,
  @ocaml.doc("<p>The tags for the target resources.</p>") resourceTags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the resources.</p>")
  resourceArns: option<resourceArnList>,
  @ocaml.doc("<p>The resource type.</p>") resourceType: option<targetResourceTypeId>,
}
@ocaml.doc("<p>Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN) or 
         at least one resource tag. You cannot specify both ARNs and tags.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/fis/latest/userguide/targets.html\">Targets</a>
         in the <i>Fault Injection Simulator User Guide</i>.</p>")
type createExperimentTemplateTargetInput = {
  @ocaml.doc("<p>The resource type parameters.</p>")
  parameters: option<experimentTemplateTargetParameterMap>,
  @ocaml.doc("<p>Scopes the identified resources to a specific count of the resources at random, or a percentage of the resources. All identified resources are included in the target.</p>
         <ul>
            <li>
               <p>ALL - Run the action on all identified targets. This is the default.</p>
            </li>
            <li>
               <p>COUNT(n) - Run the action on the specified number of targets, chosen from the identified targets at random.
                For example, COUNT(1) selects one of the targets.</p>
            </li>
            <li>
               <p>PERCENT(n) - Run the action on the specified percentage of targets, chosen from the identified targets 
               at random. For example, PERCENT(25) selects 25% of the targets.</p>
            </li>
         </ul>")
  selectionMode: experimentTemplateTargetSelectionMode,
  @ocaml.doc("<p>The filters to apply to identify target resources using specific attributes.</p>")
  filters: option<experimentTemplateTargetFilterInputList>,
  @ocaml.doc("<p>The tags for the target resources.</p>") resourceTags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the resources.</p>")
  resourceArns: option<resourceArnList>,
  @ocaml.doc(
    "<p>The resource type. The resource type must be supported for the specified action.</p>"
  )
  resourceType: targetResourceTypeId,
}
type actionSummaryList = array<actionSummary>
type updateExperimentTemplateTargetInputMap = Js.Dict.t<updateExperimentTemplateTargetInput>
type experimentTemplateTargetMap = Js.Dict.t<experimentTemplateTarget>
type experimentTargetMap = Js.Dict.t<experimentTarget>
type createExperimentTemplateTargetInputMap = Js.Dict.t<createExperimentTemplateTargetInput>
@ocaml.doc("<p>Describes an experiment template.</p>")
type experimentTemplate = {
  @ocaml.doc("<p>The configuration for experiment logging.</p>")
  logConfiguration: option<experimentTemplateLogConfiguration>,
  @ocaml.doc("<p>The tags for the experiment template.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an IAM role.</p>") roleArn: option<roleArn>,
  @ocaml.doc("<p>The time the experiment template was last updated.</p>")
  lastUpdateTime: option<lastUpdateTime>,
  @ocaml.doc("<p>The time the experiment template was created.</p>")
  creationTime: option<creationTime>,
  @ocaml.doc("<p>The stop conditions for the experiment.</p>")
  stopConditions: option<experimentTemplateStopConditionList>,
  @ocaml.doc("<p>The actions for the experiment.</p>") actions: option<experimentTemplateActionMap>,
  @ocaml.doc("<p>The targets for the experiment.</p>") targets: option<experimentTemplateTargetMap>,
  @ocaml.doc("<p>The description for the experiment template.</p>")
  description: option<experimentTemplateDescription>,
  @ocaml.doc("<p>The ID of the experiment template.</p>") id: option<experimentTemplateId>,
}
@ocaml.doc("<p>Describes an experiment.</p>")
type experiment = {
  @ocaml.doc("<p>The configuration for experiment logging.</p>")
  logConfiguration: option<experimentLogConfiguration>,
  @ocaml.doc("<p>The tags for the experiment.</p>") tags: option<tagMap>,
  @ocaml.doc("<p>The time that the experiment ended.</p>") endTime: option<experimentEndTime>,
  @ocaml.doc("<p>The time that the experiment started.</p>") startTime: option<experimentStartTime>,
  @ocaml.doc("<p>The time that the experiment was created.</p>") creationTime: option<creationTime>,
  @ocaml.doc("<p>The stop conditions for the experiment.</p>")
  stopConditions: option<experimentStopConditionList>,
  @ocaml.doc("<p>The actions for the experiment.</p>") actions: option<experimentActionMap>,
  @ocaml.doc("<p>The targets for the experiment.</p>") targets: option<experimentTargetMap>,
  @ocaml.doc("<p>The state of the experiment.</p>") state: option<experimentState>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>"
  )
  roleArn: option<roleArn>,
  @ocaml.doc("<p>The ID of the experiment template.</p>")
  experimentTemplateId: option<experimentTemplateId>,
  @ocaml.doc("<p>The ID of the experiment.</p>") id: option<experimentId>,
}
@ocaml.doc("<p>Fault Injection Simulator is a managed service that enables you to perform fault injection 
           experiments on your Amazon Web Services workloads. For more information, see the <a href=\"https://docs.aws.amazon.com/fis/latest/userguide/\">Fault Injection Simulator User Guide</a>.</p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys to remove.</p>") tagKeys: option<tagKeyList>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-fis") @new external new: request => t = "UntagResourceCommand"
  let make = (~resourceArn, ~tagKeys=?, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the resource.</p>") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-fis") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: resourceArn,
  }
  type response = {@ocaml.doc("<p>The tags for the resource.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTargetResourceTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"
    )
    maxResults: option<listTargetResourceTypesMaxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The target resource types.</p>")
    targetResourceTypes: option<targetResourceTypeSummaryList>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListTargetResourceTypesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExperiments = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"
    )
    maxResults: option<listExperimentsMaxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The experiments.</p>") experiments: option<experimentSummaryList>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListExperimentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExperimentTemplates = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"
    )
    maxResults: option<listExperimentTemplatesMaxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The experiment templates.</p>")
    experimentTemplates: option<experimentTemplateSummaryList>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListExperimentTemplatesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTargetResourceType = {
  type t
  type request = {@ocaml.doc("<p>The resource type.</p>") resourceType: targetResourceTypeId}
  type response = {
    @ocaml.doc("<p>Information about the resource type.</p>")
    targetResourceType: option<targetResourceType>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "GetTargetResourceTypeCommand"
  let make = (~resourceType, ()) => new({resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAction = {
  type t
  type request = {@ocaml.doc("<p>The ID of the action.</p>") id: actionId}
  type response = {@ocaml.doc("<p>Information about the action.</p>") action: option<action>}
  @module("@aws-sdk/client-fis") @new external new: request => t = "GetActionCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListActions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>"
    )
    maxResults: option<listActionsMaxResults>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The actions.</p>") actions: option<actionSummaryList>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "ListActionsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateExperimentTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration for experiment logging.</p>")
    logConfiguration: option<updateExperimentTemplateLogConfigurationInput>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>"
    )
    roleArn: option<roleArn>,
    @ocaml.doc("<p>The actions for the experiment.</p>")
    actions: option<updateExperimentTemplateActionInputMap>,
    @ocaml.doc("<p>The targets for the experiment.</p>")
    targets: option<updateExperimentTemplateTargetInputMap>,
    @ocaml.doc("<p>The stop conditions for the experiment.</p>")
    stopConditions: option<updateExperimentTemplateStopConditionInputList>,
    @ocaml.doc("<p>A description for the template.</p>")
    description: option<experimentTemplateDescription>,
    @ocaml.doc("<p>The ID of the experiment template.</p>") id: experimentTemplateId,
  }
  type response = {
    @ocaml.doc("<p>Information about the experiment template.</p>")
    experimentTemplate: option<experimentTemplate>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "UpdateExperimentTemplateCommand"
  let make = (
    ~id,
    ~logConfiguration=?,
    ~roleArn=?,
    ~actions=?,
    ~targets=?,
    ~stopConditions=?,
    ~description=?,
    (),
  ) =>
    new({
      logConfiguration: logConfiguration,
      roleArn: roleArn,
      actions: actions,
      targets: targets,
      stopConditions: stopConditions,
      description: description,
      id: id,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopExperiment = {
  type t
  type request = {@ocaml.doc("<p>The ID of the experiment.</p>") id: experimentId}
  type response = {
    @ocaml.doc("<p>Information about the experiment.</p>") experiment: option<experiment>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "StopExperimentCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartExperiment = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the experiment.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The ID of the experiment template.</p>")
    experimentTemplateId: experimentTemplateId,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: clientToken,
  }
  type response = {
    @ocaml.doc("<p>Information about the experiment.</p>") experiment: option<experiment>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "StartExperimentCommand"
  let make = (~experimentTemplateId, ~clientToken, ~tags=?, ()) =>
    new({tags: tags, experimentTemplateId: experimentTemplateId, clientToken: clientToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExperimentTemplate = {
  type t
  type request = {@ocaml.doc("<p>The ID of the experiment template.</p>") id: experimentTemplateId}
  type response = {
    @ocaml.doc("<p>Information about the experiment template.</p>")
    experimentTemplate: option<experimentTemplate>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "GetExperimentTemplateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExperiment = {
  type t
  type request = {@ocaml.doc("<p>The ID of the experiment.</p>") id: experimentId}
  type response = {
    @ocaml.doc("<p>Information about the experiment.</p>") experiment: option<experiment>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "GetExperimentCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteExperimentTemplate = {
  type t
  type request = {@ocaml.doc("<p>The ID of the experiment template.</p>") id: experimentTemplateId}
  type response = {
    @ocaml.doc("<p>Information about the experiment template.</p>")
    experimentTemplate: option<experimentTemplate>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "DeleteExperimentTemplateCommand"
  let make = (~id, ()) => new({id: id})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateExperimentTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration for experiment logging.</p>")
    logConfiguration: option<createExperimentTemplateLogConfigurationInput>,
    @ocaml.doc("<p>The tags to apply to the experiment template.</p>") tags: option<tagMap>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>"
    )
    roleArn: roleArn,
    @ocaml.doc("<p>The actions for the experiment.</p>")
    actions: createExperimentTemplateActionInputMap,
    @ocaml.doc("<p>The targets for the experiment.</p>")
    targets: option<createExperimentTemplateTargetInputMap>,
    @ocaml.doc("<p>The stop conditions.</p>")
    stopConditions: createExperimentTemplateStopConditionInputList,
    @ocaml.doc("<p>A description for the experiment template.</p>")
    description: experimentTemplateDescription,
    @ocaml.doc(
      "<p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>"
    )
    clientToken: clientToken,
  }
  type response = {
    @ocaml.doc("<p>Information about the experiment template.</p>")
    experimentTemplate: option<experimentTemplate>,
  }
  @module("@aws-sdk/client-fis") @new external new: request => t = "CreateExperimentTemplateCommand"
  let make = (
    ~roleArn,
    ~actions,
    ~stopConditions,
    ~description,
    ~clientToken,
    ~logConfiguration=?,
    ~tags=?,
    ~targets=?,
    (),
  ) =>
    new({
      logConfiguration: logConfiguration,
      tags: tags,
      roleArn: roleArn,
      actions: actions,
      targets: targets,
      stopConditions: stopConditions,
      description: description,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
