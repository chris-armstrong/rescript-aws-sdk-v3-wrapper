type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type targetType = string
type targetStatus = [@as("DEACTIVATED") #DEACTIVATED | @as("INACTIVE") #INACTIVE | @as("UNREACHABLE") #UNREACHABLE | @as("ACTIVE") #ACTIVE | @as("PENDING") #PENDING]
type targetAddress = string
type tagValue = string
type tagKey = string
type serviceName = string
type resourceType = string
type notificationRuleStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type notificationRuleResource = string
type notificationRuleName = string
type notificationRuleId = string
type notificationRuleCreatedBy = string
type notificationRuleArn = string
type nextToken = string
type message = string
type maxResults = int;
type listTargetsFilterValue = string
type listTargetsFilterName = [@as("TARGET_STATUS") #TARGET_STATUS | @as("TARGET_ADDRESS") #TARGET_ADDRESS | @as("TARGET_TYPE") #TARGET_TYPE]
type listNotificationRulesFilterValue = string
type listNotificationRulesFilterName = [@as("TARGET_ADDRESS") #TARGET_ADDRESS | @as("RESOURCE") #RESOURCE | @as("CREATED_BY") #CREATED_BY | @as("EVENT_TYPE_ID") #EVENT_TYPE_ID]
type listEventTypesFilterValue = string
type listEventTypesFilterName = [@as("SERVICE_NAME") #SERVICE_NAME | @as("RESOURCE_TYPE") #RESOURCE_TYPE]
type lastModifiedTimestamp = Js.Date.t;
type forceUnsubscribeAll = bool;
type eventTypeName = string
type eventTypeId = string
type detailType = [@as("FULL") #FULL | @as("BASIC") #BASIC]
type createdTimestamp = Js.Date.t;
type clientRequestToken = string
type targetSummary = {
@as("TargetStatus") targetStatus: targetStatus,
@as("TargetType") targetType: targetType,
@as("TargetAddress") targetAddress: targetAddress
}
type target = {
@as("TargetAddress") targetAddress: targetAddress,
@as("TargetType") targetType: targetType
}
type tags = Js.Dict.t< tagValue>
type tagKeys = array<tagKey>
type notificationRuleSummary = {
@as("Arn") arn: notificationRuleArn,
@as("Id") id: notificationRuleId
}
type listTargetsFilter = {
@as("Value") value: option<listTargetsFilterValue>,
@as("Name") name: option<listTargetsFilterName>
}
type listNotificationRulesFilter = {
@as("Value") value: option<listNotificationRulesFilterValue>,
@as("Name") name: option<listNotificationRulesFilterName>
}
type listEventTypesFilter = {
@as("Value") value: option<listEventTypesFilterValue>,
@as("Name") name: option<listEventTypesFilterName>
}
type eventTypeSummary = {
@as("ResourceType") resourceType: resourceType,
@as("EventTypeName") eventTypeName: eventTypeName,
@as("ServiceName") serviceName: serviceName,
@as("EventTypeId") eventTypeId: eventTypeId
}
type eventTypeIds = array<eventTypeId>
type targetsBatch = array<targetSummary>
type targets = array<target>
type notificationRuleBatch = array<notificationRuleSummary>
type listTargetsFilters = array<listTargetsFilter>
type listNotificationRulesFilters = array<listNotificationRulesFilter>
type listEventTypesFilters = array<listEventTypesFilter>
type eventTypeBatch = array<eventTypeSummary>
type clientType;
@module("@aws-sdk/client-codestar-notifications") @new external createClient: unit => clientType = "CodeStarNotificationsClient";
module Unsubscribe = {
  type t;
  type request = {
@as("TargetAddress") targetAddress: option<targetAddress>,
@as("Arn") arn: option<notificationRuleArn>
}
  type response = {
@as("Arn") arn: option<notificationRuleArn>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "UnsubscribeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTarget = {
  type t;
  type request = {
@as("ForceUnsubscribeAll") forceUnsubscribeAll: forceUnsubscribeAll,
@as("TargetAddress") targetAddress: option<targetAddress>
}
  type response = unit
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "DeleteTargetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNotificationRule = {
  type t;
  type request = {
@as("Arn") arn: option<notificationRuleArn>
}
  type response = {
@as("Arn") arn: notificationRuleArn
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "DeleteNotificationRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeys>,
@as("Arn") arn: option<notificationRuleArn>
}
  type response = unit
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("Arn") arn: option<notificationRuleArn>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module Subscribe = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Target") target: option<target>,
@as("Arn") arn: option<notificationRuleArn>
}
  type response = {
@as("Arn") arn: notificationRuleArn
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "SubscribeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Arn") arn: option<notificationRuleArn>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNotificationRule = {
  type t;
  type request = {
@as("DetailType") detailType: detailType,
@as("Targets") targets: targets,
@as("EventTypeIds") eventTypeIds: eventTypeIds,
@as("Status") status: notificationRuleStatus,
@as("Name") name: notificationRuleName,
@as("Arn") arn: option<notificationRuleArn>
}
  type response = unit
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "UpdateNotificationRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTargets = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("Filters") filters: listTargetsFilters
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Targets") targets: targetsBatch
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "ListTargetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNotificationRules = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("Filters") filters: listNotificationRulesFilters
}
  type response = {
@as("NotificationRules") notificationRules: notificationRuleBatch,
@as("NextToken") nextToken: nextToken
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "ListNotificationRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEventTypes = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("Filters") filters: listEventTypesFilters
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EventTypes") eventTypes: eventTypeBatch
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "ListEventTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationRule = {
  type t;
  type request = {
@as("Arn") arn: option<notificationRuleArn>
}
  type response = {
@as("Tags") tags: tags,
@as("LastModifiedTimestamp") lastModifiedTimestamp: lastModifiedTimestamp,
@as("CreatedTimestamp") createdTimestamp: createdTimestamp,
@as("Status") status: notificationRuleStatus,
@as("CreatedBy") createdBy: notificationRuleCreatedBy,
@as("DetailType") detailType: detailType,
@as("Targets") targets: targetsBatch,
@as("Resource") resource: notificationRuleResource,
@as("EventTypes") eventTypes: eventTypeBatch,
@as("Name") name: notificationRuleName,
@as("Arn") arn: option<notificationRuleArn>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "DescribeNotificationRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNotificationRule = {
  type t;
  type request = {
@as("Status") status: notificationRuleStatus,
@as("Tags") tags: tags,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("DetailType") detailType: option<detailType>,
@as("Targets") targets: option<targets>,
@as("Resource") resource: option<notificationRuleResource>,
@as("EventTypeIds") eventTypeIds: option<eventTypeIds>,
@as("Name") name: option<notificationRuleName>
}
  type response = {
@as("Arn") arn: notificationRuleArn
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (Js.Promise.t<request>) => t = "CreateNotificationRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
