type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type amazonawsTimestamp = Js.Date.t;
type time = string
type targetRegion = string
type target = string
type tagValue = string
type tagKey = string
type tagFilter = string
type amazonawsString = string
type statusMessage = string
type settablePolicyStateValues = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type scheduleName = string
type retentionIntervalUnitValues = [@as("YEARS") #YEARS | @as("MONTHS") #MONTHS | @as("WEEKS") #WEEKS | @as("DAYS") #DAYS]
type resourceTypeValues = [@as("INSTANCE") #INSTANCE | @as("VOLUME") #VOLUME]
type resourceLocationValues = [@as("OUTPOST") #OUTPOST | @as("CLOUD") #CLOUD]
type policyTypeValues = [@as("EVENT_BASED_POLICY") #EVENT_BASED_POLICY | @as("IMAGE_MANAGEMENT") #IMAGE_MANAGEMENT | @as("EBS_SNAPSHOT_MANAGEMENT") #EBS_SNAPSHOT_MANAGEMENT]
type policyId = string
type policyDescription = string
type policyArn = string
type parameter = string
type noReboot = bool;
type locationValues = [@as("OUTPOST_LOCAL") #OUTPOST_LOCAL | @as("CLOUD") #CLOUD]
type intervalUnitValues = [@as("HOURS") #HOURS]
type interval = int;
type gettablePolicyStateValues = [@as("ERROR") #ERROR | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type executionRoleArn = string
type excludeBootVolume = bool;
type eventTypeValues = [@as("shareSnapshot") #shareSnapshot]
type eventSourceValues = [@as("MANAGED_CWE") #MANAGED_CWE]
type errorMessage = string
type errorCode = string
type encrypted = bool;
type descriptionRegex = string
type cronExpression = string
type count = int;
type copyTagsNullable = bool;
type copyTags = bool;
type cmkArn = string
type awsAccountId = string
type availabilityZone = string
type actionName = string
type timesList = array<time>
type targetTagsFilterList = array<tagFilter>
type tagsToAddFilterList = array<tagFilter>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<amazonawsString>,
@as("Key") key: option<amazonawsString>
}
type snapshotOwnerList = array<awsAccountId>
type shareTargetAccountList = array<awsAccountId>
type retainRule = {
@as("IntervalUnit") intervalUnit: retentionIntervalUnitValues,
@as("Interval") interval: interval,
@as("Count") count: count
}
type resourceTypeValuesList = array<resourceTypeValues>
type resourceLocationList = array<resourceLocationValues>
type policyIdList = array<policyId>
type parameters = {
@as("NoReboot") noReboot: noReboot,
@as("ExcludeBootVolume") excludeBootVolume: excludeBootVolume
}
type parameterList = array<parameter>
type encryptionConfiguration = {
@as("CmkArn") cmkArn: cmkArn,
@as("Encrypted") encrypted: option<encrypted>
}
type crossRegionCopyRetainRule = {
@as("IntervalUnit") intervalUnit: retentionIntervalUnitValues,
@as("Interval") interval: interval
}
type availabilityZoneList = array<availabilityZone>
type variableTagsList = array<tag>
type targetTagList = array<tag>
type tagsToAddList = array<tag>
type shareRule = {
@as("UnshareIntervalUnit") unshareIntervalUnit: retentionIntervalUnitValues,
@as("UnshareInterval") unshareInterval: interval,
@as("TargetAccounts") targetAccounts: option<shareTargetAccountList>
}
type lifecyclePolicySummary = {
@as("PolicyType") policyType: policyTypeValues,
@as("Tags") tags: tagMap,
@as("State") state: gettablePolicyStateValues,
@as("Description") description: policyDescription,
@as("PolicyId") policyId: policyId
}
type fastRestoreRule = {
@as("AvailabilityZones") availabilityZones: option<availabilityZoneList>,
@as("IntervalUnit") intervalUnit: retentionIntervalUnitValues,
@as("Interval") interval: interval,
@as("Count") count: count
}
type eventParameters = {
@as("DescriptionRegex") descriptionRegex: option<descriptionRegex>,
@as("SnapshotOwner") snapshotOwner: option<snapshotOwnerList>,
@as("EventType") eventType: option<eventTypeValues>
}
type crossRegionCopyRule = {
@as("RetainRule") retainRule: crossRegionCopyRetainRule,
@as("CopyTags") copyTags: copyTagsNullable,
@as("CmkArn") cmkArn: cmkArn,
@as("Encrypted") encrypted: option<encrypted>,
@as("Target") target: target,
@as("TargetRegion") targetRegion: targetRegion
}
type crossRegionCopyAction = {
@as("RetainRule") retainRule: crossRegionCopyRetainRule,
@as("EncryptionConfiguration") encryptionConfiguration: option<encryptionConfiguration>,
@as("Target") target: option<target>
}
type createRule = {
@as("CronExpression") cronExpression: cronExpression,
@as("Times") times: timesList,
@as("IntervalUnit") intervalUnit: intervalUnitValues,
@as("Interval") interval: interval,
@as("Location") location: locationValues
}
type shareRules = array<shareRule>
type lifecyclePolicySummaryList = array<lifecyclePolicySummary>
type eventSource = {
@as("Parameters") parameters: eventParameters,
@as("Type") type_: option<eventSourceValues>
}
type crossRegionCopyRules = array<crossRegionCopyRule>
type crossRegionCopyActionList = array<crossRegionCopyAction>
type schedule = {
@as("ShareRules") shareRules: shareRules,
@as("CrossRegionCopyRules") crossRegionCopyRules: crossRegionCopyRules,
@as("FastRestoreRule") fastRestoreRule: fastRestoreRule,
@as("RetainRule") retainRule: retainRule,
@as("CreateRule") createRule: createRule,
@as("VariableTags") variableTags: variableTagsList,
@as("TagsToAdd") tagsToAdd: tagsToAddList,
@as("CopyTags") copyTags: copyTags,
@as("Name") name: scheduleName
}
type action = {
@as("CrossRegionCopy") crossRegionCopy: option<crossRegionCopyActionList>,
@as("Name") name: option<actionName>
}
type scheduleList = array<schedule>
type actionList = array<action>
type policyDetails = {
@as("Actions") actions: actionList,
@as("EventSource") eventSource: eventSource,
@as("Parameters") parameters: parameters,
@as("Schedules") schedules: scheduleList,
@as("TargetTags") targetTags: targetTagList,
@as("ResourceLocations") resourceLocations: resourceLocationList,
@as("ResourceTypes") resourceTypes: resourceTypeValuesList,
@as("PolicyType") policyType: policyTypeValues
}
type lifecyclePolicy = {
@as("PolicyArn") policyArn: policyArn,
@as("Tags") tags: tagMap,
@as("PolicyDetails") policyDetails: policyDetails,
@as("DateModified") dateModified: amazonawsTimestamp,
@as("DateCreated") dateCreated: amazonawsTimestamp,
@as("ExecutionRoleArn") executionRoleArn: executionRoleArn,
@as("StatusMessage") statusMessage: statusMessage,
@as("State") state: gettablePolicyStateValues,
@as("Description") description: policyDescription,
@as("PolicyId") policyId: policyId
}
type clientType;
@module("@aws-sdk/client-dlm") @new external createClient: unit => clientType = "DLMClient";
module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<policyArn>
}
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<policyArn>
}
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<policyArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLifecyclePolicy = {
  type t;
  type request = {
@as("PolicyId") policyId: option<policyId>
}
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "DeleteLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLifecyclePolicies = {
  type t;
  type request = {
@as("TagsToAdd") tagsToAdd: tagsToAddFilterList,
@as("TargetTags") targetTags: targetTagsFilterList,
@as("ResourceTypes") resourceTypes: resourceTypeValuesList,
@as("State") state: gettablePolicyStateValues,
@as("PolicyIds") policyIds: policyIdList
}
  type response = {
@as("Policies") policies: lifecyclePolicySummaryList
}
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "GetLifecyclePoliciesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLifecyclePolicy = {
  type t;
  type request = {
@as("PolicyDetails") policyDetails: policyDetails,
@as("Description") description: policyDescription,
@as("State") state: settablePolicyStateValues,
@as("ExecutionRoleArn") executionRoleArn: executionRoleArn,
@as("PolicyId") policyId: option<policyId>
}
  type response = unit
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "UpdateLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLifecyclePolicy = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("PolicyDetails") policyDetails: option<policyDetails>,
@as("State") state: option<settablePolicyStateValues>,
@as("Description") description: option<policyDescription>,
@as("ExecutionRoleArn") executionRoleArn: option<executionRoleArn>
}
  type response = {
@as("PolicyId") policyId: policyId
}
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "CreateLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLifecyclePolicy = {
  type t;
  type request = {
@as("PolicyId") policyId: option<policyId>
}
  type response = {
@as("Policy") policy: lifecyclePolicy
}
  @module("@aws-sdk/client-dlm") @new external new_: (request) => t = "GetLifecyclePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
