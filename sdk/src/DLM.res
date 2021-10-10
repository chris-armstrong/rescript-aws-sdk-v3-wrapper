type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-dlm") @new external createClient: unit => awsServiceClient = "DLMClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type time = string
type targetRegion = string
type target = string
type tagValue = string
type tagKey = string
type tagFilter = string
type string_ = string
type statusMessage = string
type settablePolicyStateValues = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type scheduleName = string
type retentionIntervalUnitValues = [
  | @as("YEARS") #YEARS
  | @as("MONTHS") #MONTHS
  | @as("WEEKS") #WEEKS
  | @as("DAYS") #DAYS
]
type resourceTypeValues = [@as("INSTANCE") #INSTANCE | @as("VOLUME") #VOLUME]
type resourceLocationValues = [@as("OUTPOST") #OUTPOST | @as("CLOUD") #CLOUD]
type policyTypeValues = [
  | @as("EVENT_BASED_POLICY") #EVENT_BASED_POLICY
  | @as("IMAGE_MANAGEMENT") #IMAGE_MANAGEMENT
  | @as("EBS_SNAPSHOT_MANAGEMENT") #EBS_SNAPSHOT_MANAGEMENT
]
type policyId = string
type policyDescription = string
type policyArn = string
type parameter = string
type noReboot = bool
type locationValues = [@as("OUTPOST_LOCAL") #OUTPOST_LOCAL | @as("CLOUD") #CLOUD]
type intervalUnitValues = [@as("HOURS") #HOURS]
type interval = int
type gettablePolicyStateValues = [
  | @as("ERROR") #ERROR
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type executionRoleArn = string
type excludeBootVolume = bool
type eventTypeValues = [@as("shareSnapshot") #ShareSnapshot]
type eventSourceValues = [@as("MANAGED_CWE") #MANAGED_CWE]
type errorMessage = string
type errorCode = string
type encrypted = bool
type descriptionRegex = string
type cronExpression = string
type count = int
type copyTagsNullable = bool
type copyTags = bool
type cmkArn = string
type awsAccountId = string
type availabilityZone = string
type actionName = string
type timesList = array<time>
type targetTagsFilterList = array<tagFilter>
type tagsToAddFilterList = array<tagFilter>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Specifies a tag for a resource.</p>")
type tag = {
  @ocaml.doc("<p>The tag value.</p>") @as("Value") value: string_,
  @ocaml.doc("<p>The tag key.</p>") @as("Key") key: string_,
}
type snapshotOwnerList = array<awsAccountId>
type shareTargetAccountList = array<awsAccountId>
@ocaml.doc("<p>Specifies the retention rule for a lifecycle policy. You can retain snapshots based on
			either a count or a time interval.</p>")
type retainRule = {
  @ocaml.doc("<p>The unit of time for time-based retention.</p>") @as("IntervalUnit")
  intervalUnit: option<retentionIntervalUnitValues>,
  @ocaml.doc("<p>The amount of time to retain each snapshot. The maximum is 100 years. This is
			equivalent to 1200 months, 5200 weeks, or 36500 days.</p>")
  @as("Interval")
  interval: option<interval>,
  @ocaml.doc("<p>The number of snapshots to retain for each volume, up to a maximum of 1000.</p>")
  @as("Count")
  count: option<count>,
}
type resourceTypeValuesList = array<resourceTypeValues>
type resourceLocationList = array<resourceLocationValues>
type policyIdList = array<policyId>
@ocaml.doc("<p>Specifies optional parameters to add to a policy. The set of valid parameters depends
			on the combination of policy type and resource type.</p>")
type parameters = {
  @ocaml.doc("<p>Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle 
			policy runs. <code>true</code> indicates that targeted instances are not rebooted when the policy 
			runs. <code>false</code> indicates that target instances are rebooted when the policy runs. The 
			default is <code>true</code> (instances are not rebooted).</p>")
  @as("NoReboot")
  noReboot: option<noReboot>,
  @ocaml.doc("<p>[EBS Snapshot Management – Instance policies only] Indicates whether to exclude the
			root volume from snapshots created using <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSnapshots.html\">CreateSnapshots</a>.
			The default is false.</p>")
  @as("ExcludeBootVolume")
  excludeBootVolume: option<excludeBootVolume>,
}
type parameterList = array<parameter>
@ocaml.doc(
  "<p>Specifies the encryption settings for shared snapshots that are copied across Regions.</p>"
)
type encryptionConfiguration = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS KMS customer master key (CMK) to use for EBS 
			encryption. If this parameter is not specified, your AWS managed CMK for EBS is used.</p>")
  @as("CmkArn")
  cmkArn: option<cmkArn>,
  @ocaml.doc("<p>To encrypt a copy of an unencrypted snapshot when encryption by default is not enabled, enable 
			encryption using this parameter. Copies of encrypted snapshots are encrypted, even if this 
			parameter is false or when encryption by default is not enabled.</p>")
  @as("Encrypted")
  encrypted: encrypted,
}
@ocaml.doc("<p>Specifies the retention rule for cross-Region snapshot copies.</p>")
type crossRegionCopyRetainRule = {
  @ocaml.doc("<p>The unit of time for time-based retention.</p>") @as("IntervalUnit")
  intervalUnit: option<retentionIntervalUnitValues>,
  @ocaml.doc("<p>The amount of time to retain each snapshot. The maximum is 100 years. This is
			equivalent to 1200 months, 5200 weeks, or 36500 days.</p>")
  @as("Interval")
  interval: option<interval>,
}
type availabilityZoneList = array<availabilityZone>
type variableTagsList = array<tag>
type targetTagList = array<tag>
type tagsToAddList = array<tag>
@ocaml.doc("<p>Specifies a rule for sharing snapshots across AWS accounts.</p>")
type shareRule = {
  @ocaml.doc("<p>The unit of time for the automatic unsharing interval.</p>")
  @as("UnshareIntervalUnit")
  unshareIntervalUnit: option<retentionIntervalUnitValues>,
  @ocaml.doc(
    "<p>The period after which snapshots that are shared with other AWS accounts are automatically unshared.</p>"
  )
  @as("UnshareInterval")
  unshareInterval: option<interval>,
  @ocaml.doc("<p>The IDs of the AWS accounts with which to share the snapshots.</p>")
  @as("TargetAccounts")
  targetAccounts: shareTargetAccountList,
}
@ocaml.doc("<p>Summary information about a lifecycle policy.</p>")
type lifecyclePolicySummary = {
  @ocaml.doc("<p>The type of policy. <code>EBS_SNAPSHOT_MANAGEMENT</code> indicates that the policy 
			manages the lifecycle of Amazon EBS snapshots. <code>IMAGE_MANAGEMENT</code> 
			indicates that the policy manages the lifecycle of EBS-backed AMIs.</p>")
  @as("PolicyType")
  policyType: option<policyTypeValues>,
  @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The activation state of the lifecycle policy.</p>") @as("State")
  state: option<gettablePolicyStateValues>,
  @ocaml.doc("<p>The description of the lifecycle policy.</p>") @as("Description")
  description: option<policyDescription>,
  @ocaml.doc("<p>The identifier of the lifecycle policy.</p>") @as("PolicyId")
  policyId: option<policyId>,
}
@ocaml.doc("<p>Specifies a rule for enabling fast snapshot restore. You can enable fast snapshot
			restore based on either a count or a time interval.</p>")
type fastRestoreRule = {
  @ocaml.doc("<p>The Availability Zones in which to enable fast snapshot restore.</p>")
  @as("AvailabilityZones")
  availabilityZones: availabilityZoneList,
  @ocaml.doc("<p>The unit of time for enabling fast snapshot restore.</p>") @as("IntervalUnit")
  intervalUnit: option<retentionIntervalUnitValues>,
  @ocaml.doc("<p>The amount of time to enable fast snapshot restore. The maximum is 100 years. This is
			equivalent to 1200 months, 5200 weeks, or 36500 days.</p>")
  @as("Interval")
  interval: option<interval>,
  @ocaml.doc("<p>The number of snapshots to be enabled with fast snapshot restore.</p>")
  @as("Count")
  count: option<count>,
}
@ocaml.doc("<p>Specifies an event that triggers an event-based policy.</p>")
type eventParameters = {
  @ocaml.doc("<p>The snapshot description that can trigger the policy. The description pattern is specified using 
			a regular expression. The policy runs only if a snapshot with a description that matches the 
			specified pattern is shared with your account.</p>
		       <p>For example, specifying <code>^.*Created for policy: policy-1234567890abcdef0.*$</code>  
			configures the policy to run only if snapshots created by policy <code>policy-1234567890abcdef0</code> 
			are shared with your account.</p>")
  @as("DescriptionRegex")
  descriptionRegex: descriptionRegex,
  @ocaml.doc("<p>The IDs of the AWS accounts that can trigger policy by sharing snapshots with your account. The 
			policy only runs if one of the specified AWS accounts shares a snapshot with your account.</p>")
  @as("SnapshotOwner")
  snapshotOwner: snapshotOwnerList,
  @ocaml.doc("<p>The type of event. Currently, only snapshot sharing events are supported.</p>")
  @as("EventType")
  eventType: eventTypeValues,
}
@ocaml.doc("<p>Specifies a rule for cross-Region snapshot copies.</p>")
type crossRegionCopyRule = {
  @ocaml.doc("<p>The retention rule.</p>") @as("RetainRule")
  retainRule: option<crossRegionCopyRetainRule>,
  @ocaml.doc("<p>Copy all user-defined tags from the source snapshot to the copied snapshot.</p>")
  @as("CopyTags")
  copyTags: option<copyTagsNullable>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the AWS KMS customer master key (CMK) to use for EBS
			encryption. If this parameter is not specified, your AWS managed CMK for EBS is
			used.</p>")
  @as("CmkArn")
  cmkArn: option<cmkArn>,
  @ocaml.doc("<p>To encrypt a copy of an unencrypted snapshot if encryption by default is not enabled,
			enable encryption using this parameter. Copies of encrypted snapshots are encrypted,
			even if this parameter is false or if encryption by default is not enabled.</p>")
  @as("Encrypted")
  encrypted: encrypted,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the target AWS Outpost for the snapshot copies.</p>
		       <p>If you specify an ARN, you must omit <b>TargetRegion</b>. You cannot 
			specify a target Region and a target Outpost in the same rule.</p>")
  @as("Target")
  target: option<target>,
  @ocaml.doc("<p>The target Region for the snapshot copies.</p>
		       <p>If you specify a target Region, you must omit <b>Target</b>. You cannot 
			specify a target Region and a target Outpost in the same rule.</p>")
  @as("TargetRegion")
  targetRegion: option<targetRegion>,
}
@ocaml.doc("<p>Specifies a rule for copying shared snapshots across Regions.</p>")
type crossRegionCopyAction = {
  @as("RetainRule") retainRule: option<crossRegionCopyRetainRule>,
  @ocaml.doc("<p>The encryption settings for the copied snapshot.</p>")
  @as("EncryptionConfiguration")
  encryptionConfiguration: encryptionConfiguration,
  @ocaml.doc("<p>The target Region.</p>") @as("Target") target: target,
}
@ocaml.doc("<p>Specifies when to create snapshots of EBS volumes.</p>
		       <p>You must specify either a Cron expression or an interval, interval unit, and start
			time. You cannot specify both.</p>")
type createRule = {
  @ocaml.doc("<p>The schedule, as a Cron expression. The schedule interval must be between 1 hour and 1
			year. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html#CronExpressions\">Cron
				expressions</a> in the <i>Amazon CloudWatch User Guide</i>.</p>")
  @as("CronExpression")
  cronExpression: option<cronExpression>,
  @ocaml.doc("<p>The time, in UTC, to start the operation. The supported format is hh:mm.</p>
		       <p>The operation occurs within a one-hour window following the specified time. If you do
			not specify a time, Amazon DLM selects a time within the next 24 hours.</p>")
  @as("Times")
  times: option<timesList>,
  @ocaml.doc("<p>The interval unit.</p>") @as("IntervalUnit")
  intervalUnit: option<intervalUnitValues>,
  @ocaml.doc("<p>The interval between snapshots. The supported values are 1, 2, 3, 4, 6, 8, 12, and
			24.</p>")
  @as("Interval")
  interval: option<interval>,
  @ocaml.doc("<p>Specifies the destination for snapshots created by the policy. To create snapshots in the same 
			Region as the source resource, specify <code>CLOUD</code>. To create snapshots on the same 
			Outpost as the source resource, specify <code>OUTPOST_LOCAL</code>. If you omit this 
			parameter, <code>CLOUD</code> is used by default.</p>
		       <p>If the policy targets resources in an AWS Region, then you must create snapshots in the same 
			Region as the source resource. </p>
		       <p>If the policy targets resources on an Outpost, then you can create snapshots on the same Outpost 
			as the source resource, or in the Region of that Outpost.</p>")
  @as("Location")
  location: option<locationValues>,
}
type shareRules = array<shareRule>
type lifecyclePolicySummaryList = array<lifecyclePolicySummary>
@ocaml.doc("<p>Specifies an event that triggers an event-based policy.</p>")
type eventSource = {
  @ocaml.doc("<p>Information about the event.</p>") @as("Parameters")
  parameters: option<eventParameters>,
  @ocaml.doc(
    "<p>The source of the event. Currently only managed AWS CloudWatch Events rules are supported.</p>"
  )
  @as("Type")
  type_: eventSourceValues,
}
type crossRegionCopyRules = array<crossRegionCopyRule>
type crossRegionCopyActionList = array<crossRegionCopyAction>
@ocaml.doc("<p>Specifies a backup schedule for a snapshot or AMI lifecycle policy.</p>")
type schedule = {
  @ocaml.doc("<p>The rule for sharing snapshots with other AWS accounts.</p>") @as("ShareRules")
  shareRules: option<shareRules>,
  @ocaml.doc("<p>The rule for cross-Region snapshot copies.</p>
		       <p>You can only specify cross-Region copy rules for policies that create snapshots in a Region. 
			If the policy creates snapshots on an Outpost, then you cannot copy the snapshots to a Region or 
			to an Outpost. If the policy creates snapshots in a Region, then snapshots can be copied to up to three 
			Regions or Outposts.</p>")
  @as("CrossRegionCopyRules")
  crossRegionCopyRules: option<crossRegionCopyRules>,
  @ocaml.doc("<p>The rule for enabling fast snapshot restore.</p>") @as("FastRestoreRule")
  fastRestoreRule: option<fastRestoreRule>,
  @ocaml.doc("<p>The retention rule.</p>") @as("RetainRule") retainRule: option<retainRule>,
  @ocaml.doc("<p>The creation rule.</p>") @as("CreateRule") createRule: option<createRule>,
  @ocaml.doc("<p>A collection of key/value pairs with values determined dynamically when the policy is
			executed. Keys may be any valid Amazon EC2 tag key. Values must be in one of the two
			following formats: <code>$(instance-id)</code> or <code>$(timestamp)</code>. Variable
			tags are only valid for EBS Snapshot Management – Instance policies.</p>")
  @as("VariableTags")
  variableTags: option<variableTagsList>,
  @ocaml.doc("<p>The tags to apply to policy-created resources. These user-defined tags are in addition
			to the AWS-added lifecycle tags.</p>")
  @as("TagsToAdd")
  tagsToAdd: option<tagsToAddList>,
  @ocaml.doc("<p>Copy all user-defined tags on a source volume to snapshots of the volume created by
			this policy.</p>")
  @as("CopyTags")
  copyTags: option<copyTags>,
  @ocaml.doc("<p>The name of the schedule.</p>") @as("Name") name: option<scheduleName>,
}
@ocaml.doc("<p>Specifies an action for an event-based policy.</p>")
type action = {
  @ocaml.doc("<p>The rule for copying shared snapshots across Regions.</p>") @as("CrossRegionCopy")
  crossRegionCopy: crossRegionCopyActionList,
  @ocaml.doc("<p>A descriptive name for the action.</p>") @as("Name") name: actionName,
}
type scheduleList = array<schedule>
type actionList = array<action>
@ocaml.doc("<p>Specifies the configuration of a lifecycle policy.</p>")
type policyDetails = {
  @ocaml.doc("<p>The actions to be performed when the event-based policy is triggered. You can specify 
		only one action per policy.</p>
		       <p>This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter.</p>")
  @as("Actions")
  actions: option<actionList>,
  @ocaml.doc("<p>The event that triggers the event-based policy. </p>
		       <p>This parameter is required for event-based policies only. If you are creating a snapshot or AMI policy, omit this parameter.</p>")
  @as("EventSource")
  eventSource: option<eventSource>,
  @ocaml.doc("<p>A set of optional parameters for snapshot and AMI lifecycle policies. </p>
		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>")
  @as("Parameters")
  parameters: option<parameters>,
  @ocaml.doc("<p>The schedules of policy-defined actions for snapshot and AMI lifecycle policies. A policy 
			can have up to four schedules—one mandatory schedule and up to three optional schedules.</p> 
		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>")
  @as("Schedules")
  schedules: option<scheduleList>,
  @ocaml.doc("<p>The single tag that identifies targeted resources for this policy.</p>
		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>")
  @as("TargetTags")
  targetTags: option<targetTagList>,
  @ocaml.doc("<p>The location of the resources to backup. If the source resources are located in an AWS Region, specify 
			<code>CLOUD</code>. If the source resources are located on an AWS Outpost 
			in your account, specify <code>OUTPOST</code>. </p>
			      <p>If you specify <code>OUTPOST</code>, Amazon Data Lifecycle Manager backs up all resources 
				of the specified type with matching target tags across all of the Outposts in your account.</p>")
  @as("ResourceLocations")
  resourceLocations: option<resourceLocationList>,
  @ocaml.doc("<p>The target resource type for snapshot and AMI lifecycle policies. Use <code>VOLUME </code>to 
			create snapshots of individual volumes or use <code>INSTANCE</code> to create multi-volume 
			snapshots from the volumes for an instance.</p>
		       <p>This parameter is required for snapshot and AMI policies only. If you are creating an event-based policy, omit this parameter.</p>")
  @as("ResourceTypes")
  resourceTypes: option<resourceTypeValuesList>,
  @ocaml.doc("<p>The valid target resource types and actions a policy can manage. Specify <code>EBS_SNAPSHOT_MANAGEMENT</code> 
			to create a lifecycle policy that manages the lifecycle of Amazon EBS snapshots. Specify <code>IMAGE_MANAGEMENT</code> 
			to create a lifecycle policy that manages the lifecycle of EBS-backed AMIs. Specify <code>EVENT_BASED_POLICY </code> 
			to create an event-based policy that performs specific actions when a defined event occurs in your AWS account.</p>
		       <p>The default is <code>EBS_SNAPSHOT_MANAGEMENT</code>.</p>")
  @as("PolicyType")
  policyType: option<policyTypeValues>,
}
@ocaml.doc("<p>Detailed information about a lifecycle policy.</p>")
type lifecyclePolicy = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the policy.</p>") @as("PolicyArn")
  policyArn: option<policyArn>,
  @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The configuration of the lifecycle policy</p>") @as("PolicyDetails")
  policyDetails: option<policyDetails>,
  @ocaml.doc("<p>The local date and time when the lifecycle policy was last modified.</p>")
  @as("DateModified")
  dateModified: option<timestamp_>,
  @ocaml.doc("<p>The local date and time when the lifecycle policy was created.</p>")
  @as("DateCreated")
  dateCreated: option<timestamp_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
			the lifecycle policy.</p>")
  @as("ExecutionRoleArn")
  executionRoleArn: option<executionRoleArn>,
  @ocaml.doc("<p>The description of the status.</p>") @as("StatusMessage")
  statusMessage: option<statusMessage>,
  @ocaml.doc("<p>The activation state of the lifecycle policy.</p>") @as("State")
  state: option<gettablePolicyStateValues>,
  @ocaml.doc("<p>The description of the lifecycle policy.</p>") @as("Description")
  description: option<policyDescription>,
  @ocaml.doc("<p>The identifier of the lifecycle policy.</p>") @as("PolicyId")
  policyId: option<policyId>,
}
@ocaml.doc("<fullname>Amazon Data Lifecycle Manager</fullname>
		       <p>With Amazon Data Lifecycle Manager, you can manage the lifecycle of your AWS resources. You create
			lifecycle policies, which are used to automate operations on the specified
			resources.</p>
		       <p>Amazon DLM supports Amazon EBS volumes and snapshots. For information about using Amazon DLM
			with Amazon EBS, see <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html\">Automating the Amazon EBS
				Snapshot Lifecycle</a> in the <i>Amazon EC2 User Guide</i>.</p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: policyArn,
  }

  @module("@aws-sdk/client-dlm") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: policyArn,
  }

  @module("@aws-sdk/client-dlm") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: policyArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags.</p>") @as("Tags") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-dlm") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the lifecycle policy.</p>") @as("PolicyId") policyId: policyId,
  }

  @module("@aws-sdk/client-dlm") @new external new: request => t = "DeleteLifecyclePolicyCommand"
  let make = (~policyId, ()) => new({policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetLifecyclePolicies = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to objects created by the policy.</p>
		       <p>Tags are strings in the format <code>key=value</code>.</p>
		       <p>These user-defined tags are added in addition to the AWS-added lifecycle tags.</p>")
    @as("TagsToAdd")
    tagsToAdd: option<tagsToAddFilterList>,
    @ocaml.doc("<p>The target tag for a policy.</p>
		       <p>Tags are strings in the format <code>key=value</code>.</p>")
    @as("TargetTags")
    targetTags: option<targetTagsFilterList>,
    @ocaml.doc("<p>The resource type.</p>") @as("ResourceTypes")
    resourceTypes: option<resourceTypeValuesList>,
    @ocaml.doc("<p>The activation state.</p>") @as("State")
    state: option<gettablePolicyStateValues>,
    @ocaml.doc("<p>The identifiers of the data lifecycle policies.</p>") @as("PolicyIds")
    policyIds: option<policyIdList>,
  }
  type response = {
    @ocaml.doc("<p>Summary information about the lifecycle policies.</p>") @as("Policies")
    policies: option<lifecyclePolicySummaryList>,
  }
  @module("@aws-sdk/client-dlm") @new external new: request => t = "GetLifecyclePoliciesCommand"
  let make = (~tagsToAdd=?, ~targetTags=?, ~resourceTypes=?, ~state=?, ~policyIds=?, ()) =>
    new({
      tagsToAdd: tagsToAdd,
      targetTags: targetTags,
      resourceTypes: resourceTypes,
      state: state,
      policyIds: policyIds,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The configuration of the lifecycle policy. You cannot update the policy type or the
			resource type.</p>")
    @as("PolicyDetails")
    policyDetails: option<policyDetails>,
    @ocaml.doc("<p>A description of the lifecycle policy.</p>") @as("Description")
    description: option<policyDescription>,
    @ocaml.doc("<p>The desired activation state of the lifecycle policy after creation.</p>")
    @as("State")
    state: option<settablePolicyStateValues>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
			the lifecycle policy.</p>")
    @as("ExecutionRoleArn")
    executionRoleArn: option<executionRoleArn>,
    @ocaml.doc("<p>The identifier of the lifecycle policy.</p>") @as("PolicyId") policyId: policyId,
  }

  @module("@aws-sdk/client-dlm") @new external new: request => t = "UpdateLifecyclePolicyCommand"
  let make = (~policyId, ~policyDetails=?, ~description=?, ~state=?, ~executionRoleArn=?, ()) =>
    new({
      policyDetails: policyDetails,
      description: description,
      state: state,
      executionRoleArn: executionRoleArn,
      policyId: policyId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the lifecycle policy during creation.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The configuration details of the lifecycle policy.</p>") @as("PolicyDetails")
    policyDetails: policyDetails,
    @ocaml.doc("<p>The desired activation state of the lifecycle policy after creation.</p>")
    @as("State")
    state: settablePolicyStateValues,
    @ocaml.doc("<p>A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$ are
			supported.</p>")
    @as("Description")
    description: policyDescription,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
			the lifecycle policy.</p>")
    @as("ExecutionRoleArn")
    executionRoleArn: executionRoleArn,
  }
  type response = {
    @ocaml.doc("<p>The identifier of the lifecycle policy.</p>") @as("PolicyId")
    policyId: option<policyId>,
  }
  @module("@aws-sdk/client-dlm") @new external new: request => t = "CreateLifecyclePolicyCommand"
  let make = (~policyDetails, ~state, ~description, ~executionRoleArn, ~tags=?, ()) =>
    new({
      tags: tags,
      policyDetails: policyDetails,
      state: state,
      description: description,
      executionRoleArn: executionRoleArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLifecyclePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier of the lifecycle policy.</p>") @as("PolicyId") policyId: policyId,
  }
  type response = {
    @ocaml.doc("<p>Detailed information about the lifecycle policy.</p>") @as("Policy")
    policy: option<lifecyclePolicy>,
  }
  @module("@aws-sdk/client-dlm") @new external new: request => t = "GetLifecyclePolicyCommand"
  let make = (~policyId, ()) => new({policyId: policyId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
