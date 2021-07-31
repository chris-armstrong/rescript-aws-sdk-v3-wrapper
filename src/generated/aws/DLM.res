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
type tag = {
  @as("Value") value: string_,
  @as("Key") key: string_,
}
type snapshotOwnerList = array<awsAccountId>
type shareTargetAccountList = array<awsAccountId>
type retainRule = {
  @as("IntervalUnit") intervalUnit: option<retentionIntervalUnitValues>,
  @as("Interval") interval: option<interval>,
  @as("Count") count: option<count>,
}
type resourceTypeValuesList = array<resourceTypeValues>
type resourceLocationList = array<resourceLocationValues>
type policyIdList = array<policyId>
type parameters = {
  @as("NoReboot") noReboot: option<noReboot>,
  @as("ExcludeBootVolume") excludeBootVolume: option<excludeBootVolume>,
}
type parameterList = array<parameter>
type encryptionConfiguration = {
  @as("CmkArn") cmkArn: option<cmkArn>,
  @as("Encrypted") encrypted: encrypted,
}
type crossRegionCopyRetainRule = {
  @as("IntervalUnit") intervalUnit: option<retentionIntervalUnitValues>,
  @as("Interval") interval: option<interval>,
}
type availabilityZoneList = array<availabilityZone>
type variableTagsList = array<tag>
type targetTagList = array<tag>
type tagsToAddList = array<tag>
type shareRule = {
  @as("UnshareIntervalUnit") unshareIntervalUnit: option<retentionIntervalUnitValues>,
  @as("UnshareInterval") unshareInterval: option<interval>,
  @as("TargetAccounts") targetAccounts: shareTargetAccountList,
}
type lifecyclePolicySummary = {
  @as("PolicyType") policyType: option<policyTypeValues>,
  @as("Tags") tags: option<tagMap>,
  @as("State") state: option<gettablePolicyStateValues>,
  @as("Description") description: option<policyDescription>,
  @as("PolicyId") policyId: option<policyId>,
}
type fastRestoreRule = {
  @as("AvailabilityZones") availabilityZones: availabilityZoneList,
  @as("IntervalUnit") intervalUnit: option<retentionIntervalUnitValues>,
  @as("Interval") interval: option<interval>,
  @as("Count") count: option<count>,
}
type eventParameters = {
  @as("DescriptionRegex") descriptionRegex: descriptionRegex,
  @as("SnapshotOwner") snapshotOwner: snapshotOwnerList,
  @as("EventType") eventType: eventTypeValues,
}
type crossRegionCopyRule = {
  @as("RetainRule") retainRule: option<crossRegionCopyRetainRule>,
  @as("CopyTags") copyTags: option<copyTagsNullable>,
  @as("CmkArn") cmkArn: option<cmkArn>,
  @as("Encrypted") encrypted: encrypted,
  @as("Target") target: option<target>,
  @as("TargetRegion") targetRegion: option<targetRegion>,
}
type crossRegionCopyAction = {
  @as("RetainRule") retainRule: option<crossRegionCopyRetainRule>,
  @as("EncryptionConfiguration") encryptionConfiguration: encryptionConfiguration,
  @as("Target") target: target,
}
type createRule = {
  @as("CronExpression") cronExpression: option<cronExpression>,
  @as("Times") times: option<timesList>,
  @as("IntervalUnit") intervalUnit: option<intervalUnitValues>,
  @as("Interval") interval: option<interval>,
  @as("Location") location: option<locationValues>,
}
type shareRules = array<shareRule>
type lifecyclePolicySummaryList = array<lifecyclePolicySummary>
type eventSource = {
  @as("Parameters") parameters: option<eventParameters>,
  @as("Type") type_: eventSourceValues,
}
type crossRegionCopyRules = array<crossRegionCopyRule>
type crossRegionCopyActionList = array<crossRegionCopyAction>
type schedule = {
  @as("ShareRules") shareRules: option<shareRules>,
  @as("CrossRegionCopyRules") crossRegionCopyRules: option<crossRegionCopyRules>,
  @as("FastRestoreRule") fastRestoreRule: option<fastRestoreRule>,
  @as("RetainRule") retainRule: option<retainRule>,
  @as("CreateRule") createRule: option<createRule>,
  @as("VariableTags") variableTags: option<variableTagsList>,
  @as("TagsToAdd") tagsToAdd: option<tagsToAddList>,
  @as("CopyTags") copyTags: option<copyTags>,
  @as("Name") name: option<scheduleName>,
}
type action = {
  @as("CrossRegionCopy") crossRegionCopy: crossRegionCopyActionList,
  @as("Name") name: actionName,
}
type scheduleList = array<schedule>
type actionList = array<action>
type policyDetails = {
  @as("Actions") actions: option<actionList>,
  @as("EventSource") eventSource: option<eventSource>,
  @as("Parameters") parameters: option<parameters>,
  @as("Schedules") schedules: option<scheduleList>,
  @as("TargetTags") targetTags: option<targetTagList>,
  @as("ResourceLocations") resourceLocations: option<resourceLocationList>,
  @as("ResourceTypes") resourceTypes: option<resourceTypeValuesList>,
  @as("PolicyType") policyType: option<policyTypeValues>,
}
type lifecyclePolicy = {
  @as("PolicyArn") policyArn: option<policyArn>,
  @as("Tags") tags: option<tagMap>,
  @as("PolicyDetails") policyDetails: option<policyDetails>,
  @as("DateModified") dateModified: option<timestamp_>,
  @as("DateCreated") dateCreated: option<timestamp_>,
  @as("ExecutionRoleArn") executionRoleArn: option<executionRoleArn>,
  @as("StatusMessage") statusMessage: option<statusMessage>,
  @as("State") state: option<gettablePolicyStateValues>,
  @as("Description") description: option<policyDescription>,
  @as("PolicyId") policyId: option<policyId>,
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: policyArn,
  }
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("ResourceArn") resourceArn: policyArn,
  }
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: policyArn}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLifecyclePolicy = {
  type t
  type request = {@as("PolicyId") policyId: policyId}
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "DeleteLifecyclePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLifecyclePolicies = {
  type t
  type request = {
    @as("TagsToAdd") tagsToAdd: option<tagsToAddFilterList>,
    @as("TargetTags") targetTags: option<targetTagsFilterList>,
    @as("ResourceTypes") resourceTypes: option<resourceTypeValuesList>,
    @as("State") state: option<gettablePolicyStateValues>,
    @as("PolicyIds") policyIds: option<policyIdList>,
  }
  type response = {@as("Policies") policies: option<lifecyclePolicySummaryList>}
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "GetLifecyclePoliciesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLifecyclePolicy = {
  type t
  type request = {
    @as("PolicyDetails") policyDetails: option<policyDetails>,
    @as("Description") description: option<policyDescription>,
    @as("State") state: option<settablePolicyStateValues>,
    @as("ExecutionRoleArn") executionRoleArn: option<executionRoleArn>,
    @as("PolicyId") policyId: policyId,
  }
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "UpdateLifecyclePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLifecyclePolicy = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("PolicyDetails") policyDetails: policyDetails,
    @as("State") state: settablePolicyStateValues,
    @as("Description") description: policyDescription,
    @as("ExecutionRoleArn") executionRoleArn: executionRoleArn,
  }
  type response = {@as("PolicyId") policyId: option<policyId>}
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "CreateLifecyclePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLifecyclePolicy = {
  type t
  type request = {@as("PolicyId") policyId: policyId}
  type response = {@as("Policy") policy: option<lifecyclePolicy>}
  @module("@aws-sdk/client-dlm") @new external new_: request => t = "GetLifecyclePolicyCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
