type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-codestar-notifications") @new external createClient: unit => awsServiceClient = "CodeStarNotificationsClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
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
type maxResults = int
type listTargetsFilterValue = string
type listTargetsFilterName = [@as("TARGET_STATUS") #TARGET_STATUS | @as("TARGET_ADDRESS") #TARGET_ADDRESS | @as("TARGET_TYPE") #TARGET_TYPE]
type listNotificationRulesFilterValue = string
type listNotificationRulesFilterName = [@as("TARGET_ADDRESS") #TARGET_ADDRESS | @as("RESOURCE") #RESOURCE | @as("CREATED_BY") #CREATED_BY | @as("EVENT_TYPE_ID") #EVENT_TYPE_ID]
type listEventTypesFilterValue = string
type listEventTypesFilterName = [@as("SERVICE_NAME") #SERVICE_NAME | @as("RESOURCE_TYPE") #RESOURCE_TYPE]
type lastModifiedTimestamp = Js.Date.t;
type forceUnsubscribeAll = bool
type eventTypeName = string
type eventTypeId = string
type detailType = [@as("FULL") #FULL | @as("BASIC") #BASIC]
type createdTimestamp = Js.Date.t;
type clientRequestToken = string
type targetSummary = {
@as("TargetStatus") targetStatus: option<targetStatus>,
  @as("TargetType") targetType: option<targetType>,
  @as("TargetAddress") targetAddress: option<targetAddress>
}
type target = {
@as("TargetAddress") targetAddress: option<targetAddress>,
  @as("TargetType") targetType: option<targetType>
}
type tags = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
type notificationRuleSummary = {
@as("Arn") arn: option<notificationRuleArn>,
  @as("Id") id: option<notificationRuleId>
}
type listTargetsFilter = {
@as("Value") value: listTargetsFilterValue,
  @as("Name") name: listTargetsFilterName
}
type listNotificationRulesFilter = {
@as("Value") value: listNotificationRulesFilterValue,
  @as("Name") name: listNotificationRulesFilterName
}
type listEventTypesFilter = {
@as("Value") value: listEventTypesFilterValue,
  @as("Name") name: listEventTypesFilterName
}
type eventTypeSummary = {
@as("ResourceType") resourceType: option<resourceType>,
  @as("EventTypeName") eventTypeName: option<eventTypeName>,
  @as("ServiceName") serviceName: option<serviceName>,
  @as("EventTypeId") eventTypeId: option<eventTypeId>
}
type eventTypeIds = array<eventTypeId>
type targetsBatch = array<targetSummary>
type targets = array<target>
type notificationRuleBatch = array<notificationRuleSummary>
type listTargetsFilters = array<listTargetsFilter>
type listNotificationRulesFilters = array<listNotificationRulesFilter>
type listEventTypesFilters = array<listEventTypesFilter>
type eventTypeBatch = array<eventTypeSummary>

module Unsubscribe = {
  type t;
  type request = {
@as("TargetAddress") targetAddress: targetAddress,
  @as("Arn") arn: notificationRuleArn
}
  type response = {
@as("Arn") arn: notificationRuleArn
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "UnsubscribeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTarget = {
  type t;
  type request = {
@as("ForceUnsubscribeAll") forceUnsubscribeAll: option<forceUnsubscribeAll>,
  @as("TargetAddress") targetAddress: targetAddress
}
  type response = unit
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "DeleteTargetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteNotificationRule = {
  type t;
  type request = {
@as("Arn") arn: notificationRuleArn
}
  type response = {
@as("Arn") arn: option<notificationRuleArn>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "DeleteNotificationRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeys,
  @as("Arn") arn: notificationRuleArn
}
  type response = unit
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tags,
  @as("Arn") arn: notificationRuleArn
}
  type response = {
@as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module Subscribe = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("Target") target: target,
  @as("Arn") arn: notificationRuleArn
}
  type response = {
@as("Arn") arn: option<notificationRuleArn>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "SubscribeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("Arn") arn: notificationRuleArn
}
  type response = {
@as("Tags") tags: option<tags>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateNotificationRule = {
  type t;
  type request = {
@as("DetailType") detailType: option<detailType>,
  @as("Targets") targets: option<targets>,
  @as("EventTypeIds") eventTypeIds: option<eventTypeIds>,
  @as("Status") status: option<notificationRuleStatus>,
  @as("Name") name: option<notificationRuleName>,
  @as("Arn") arn: notificationRuleArn
}
  type response = unit
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "UpdateNotificationRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTargets = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filters") filters: option<listTargetsFilters>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Targets") targets: option<targetsBatch>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "ListTargetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListNotificationRules = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filters") filters: option<listNotificationRulesFilters>
}
  type response = {
@as("NotificationRules") notificationRules: option<notificationRuleBatch>,
  @as("NextToken") nextToken: option<nextToken>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "ListNotificationRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEventTypes = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Filters") filters: option<listEventTypesFilters>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("EventTypes") eventTypes: option<eventTypeBatch>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "ListEventTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationRule = {
  type t;
  type request = {
@as("Arn") arn: notificationRuleArn
}
  type response = {
@as("Tags") tags: option<tags>,
  @as("LastModifiedTimestamp") lastModifiedTimestamp: option<lastModifiedTimestamp>,
  @as("CreatedTimestamp") createdTimestamp: option<createdTimestamp>,
  @as("Status") status: option<notificationRuleStatus>,
  @as("CreatedBy") createdBy: option<notificationRuleCreatedBy>,
  @as("DetailType") detailType: option<detailType>,
  @as("Targets") targets: option<targetsBatch>,
  @as("Resource") resource: option<notificationRuleResource>,
  @as("EventTypes") eventTypes: option<eventTypeBatch>,
  @as("Name") name: option<notificationRuleName>,
  @as("Arn") arn: notificationRuleArn
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "DescribeNotificationRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateNotificationRule = {
  type t;
  type request = {
@as("Status") status: option<notificationRuleStatus>,
  @as("Tags") tags: option<tags>,
  @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
  @as("DetailType") detailType: detailType,
  @as("Targets") targets: targets,
  @as("Resource") resource: notificationRuleResource,
  @as("EventTypeIds") eventTypeIds: eventTypeIds,
  @as("Name") name: notificationRuleName
}
  type response = {
@as("Arn") arn: option<notificationRuleArn>
}
  @module("@aws-sdk/client-codestar-notifications") @new external new_: (request) => t = "CreateNotificationRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
