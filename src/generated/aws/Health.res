type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type amazonawsString = string
type service = string
type region = string
type nextToken = string
type metadataValue = string
type metadataKey = string
type maxResults = int;
type locale = string
type healthServiceAccessStatusForOrganization = string
type eventTypeCode = string
type eventTypeCategory = [@as("investigation") #investigation | @as("scheduledChange") #scheduledChange | @as("accountNotification") #accountNotification | @as("issue") #issue]
type eventStatusCode = [@as("upcoming") #upcoming | @as("closed") #closed | @as("open") #open]
type eventScopeCode = [@as("NONE") #NONE | @as("ACCOUNT_SPECIFIC") #ACCOUNT_SPECIFIC | @as("PUBLIC") #PUBLIC]
type eventArn = string
type eventAggregateField = [@as("eventTypeCategory") #eventTypeCategory]
type entityValue = string
type entityUrl = string
type entityStatusCode = [@as("UNKNOWN") #UNKNOWN | @as("UNIMPAIRED") #UNIMPAIRED | @as("IMPAIRED") #IMPAIRED]
type entityArn = string
type count = int;
type availabilityZone = string
type aggregateValue = string
type accountId = string
type eventType2 = string
type eventDescription2 = string
type tagSet = Js.Dict.t< tagValue>
type serviceList = array<service>
type regionList = array<region>
type eventTypeList2 = array<eventType2>
type eventTypeCategoryList2 = array<eventTypeCategory>
type eventStatusCodeList = array<eventStatusCode>
type eventMetadata = Js.Dict.t< metadataValue>
type eventArnList = array<eventArn>
type entityValueList = array<entityValue>
type entityStatusCodeList = array<entityStatusCode>
type entityArnList = array<entityArn>
type awsAccountIdsList = array<accountId>
type availabilityZones = array<availabilityZone>
type affectedAccountsList = array<accountId>
type organizationEventDetailsErrorItem = {
@as("errorMessage") errorMessage: amazonawsString,
@as("errorName") errorName: amazonawsString,
@as("eventArn") eventArn: eventArn,
@as("awsAccountId") awsAccountId: accountId
}
type organizationEvent = {
@as("statusCode") statusCode: eventStatusCode,
@as("lastUpdatedTime") lastUpdatedTime: timestamp,
@as("endTime") endTime: timestamp,
@as("startTime") startTime: timestamp,
@as("region") region: region,
@as("eventScopeCode") eventScopeCode: eventScopeCode,
@as("eventTypeCategory") eventTypeCategory: eventTypeCategory,
@as("eventTypeCode") eventTypeCode: eventTypeCode,
@as("service") service: service,
@as("arn") arn: eventArn
}
type organizationAffectedEntitiesErrorItem = {
@as("errorMessage") errorMessage: amazonawsString,
@as("errorName") errorName: amazonawsString,
@as("eventArn") eventArn: eventArn,
@as("awsAccountId") awsAccountId: accountId
}
type eventTypeCodeList = array<eventTypeCode>
type eventTypeCategoryList = array<eventTypeCategory>
type eventType = {
@as("category") category: eventTypeCategory,
@as("code") code: eventTypeCode,
@as("service") service: service
}
type eventDetailsErrorItem = {
@as("errorMessage") errorMessage: amazonawsString,
@as("errorName") errorName: amazonawsString,
@as("eventArn") eventArn: eventArn
}
type eventDescription = {
@as("latestDescription") latestDescription: eventDescription2
}
type eventArnsList = array<eventArn>
type eventAggregate = {
@as("count") count: count,
@as("aggregateValue") aggregateValue: aggregateValue
}
type eventAccountFilter = {
@as("awsAccountId") awsAccountId: accountId,
@as("eventArn") eventArn: option<eventArn>
}
type event = {
@as("eventScopeCode") eventScopeCode: eventScopeCode,
@as("statusCode") statusCode: eventStatusCode,
@as("lastUpdatedTime") lastUpdatedTime: timestamp,
@as("endTime") endTime: timestamp,
@as("startTime") startTime: timestamp,
@as("availabilityZone") availabilityZone: availabilityZone,
@as("region") region: region,
@as("eventTypeCategory") eventTypeCategory: eventTypeCategory,
@as("eventTypeCode") eventTypeCode: eventTypeCode,
@as("service") service: service,
@as("arn") arn: eventArn
}
type entityAggregate = {
@as("count") count: count,
@as("eventArn") eventArn: eventArn
}
type dateTimeRange = {
@as("to") to: timestamp,
@as("from") from: timestamp
}
type tagFilter = array<tagSet>
type dateTimeRangeList = array<dateTimeRange>
type organizationEventList = array<organizationEvent>
type organizationEventFilter = {
@as("eventStatusCodes") eventStatusCodes: eventStatusCodeList,
@as("eventTypeCategories") eventTypeCategories: eventTypeCategoryList2,
@as("entityValues") entityValues: entityValueList,
@as("entityArns") entityArns: entityArnList,
@as("lastUpdatedTime") lastUpdatedTime: dateTimeRange,
@as("endTime") endTime: dateTimeRange,
@as("startTime") startTime: dateTimeRange,
@as("regions") regions: regionList,
@as("services") services: serviceList,
@as("awsAccountIds") awsAccountIds: awsAccountIdsList,
@as("eventTypeCodes") eventTypeCodes: eventTypeList2
}
type organizationEventDetails = {
@as("eventMetadata") eventMetadata: eventMetadata,
@as("eventDescription") eventDescription: eventDescription,
@as("event") event: event,
@as("awsAccountId") awsAccountId: accountId
}
type organizationEventDetailFiltersList = array<eventAccountFilter>
type organizationEntityFiltersList = array<eventAccountFilter>
type eventTypeList = array<eventType>
type eventTypeFilter = {
@as("eventTypeCategories") eventTypeCategories: eventTypeCategoryList,
@as("services") services: serviceList,
@as("eventTypeCodes") eventTypeCodes: eventTypeCodeList
}
type eventList = array<event>
type eventDetails = {
@as("eventMetadata") eventMetadata: eventMetadata,
@as("eventDescription") eventDescription: eventDescription,
@as("event") event: event
}
type eventAggregateList = array<eventAggregate>
type entityAggregateList = array<entityAggregate>
type describeEventDetailsForOrganizationFailedSet = array<organizationEventDetailsErrorItem>
type describeEventDetailsFailedSet = array<eventDetailsErrorItem>
type describeAffectedEntitiesForOrganizationFailedSet = array<organizationAffectedEntitiesErrorItem>
type affectedEntity = {
@as("tags") tags: tagSet,
@as("statusCode") statusCode: entityStatusCode,
@as("lastUpdatedTime") lastUpdatedTime: timestamp,
@as("awsAccountId") awsAccountId: accountId,
@as("entityUrl") entityUrl: entityUrl,
@as("entityValue") entityValue: entityValue,
@as("eventArn") eventArn: eventArn,
@as("entityArn") entityArn: entityArn
}
type eventFilter = {
@as("eventStatusCodes") eventStatusCodes: eventStatusCodeList,
@as("tags") tags: tagFilter,
@as("eventTypeCategories") eventTypeCategories: eventTypeCategoryList2,
@as("entityValues") entityValues: entityValueList,
@as("entityArns") entityArns: entityArnList,
@as("lastUpdatedTimes") lastUpdatedTimes: dateTimeRangeList,
@as("endTimes") endTimes: dateTimeRangeList,
@as("startTimes") startTimes: dateTimeRangeList,
@as("availabilityZones") availabilityZones: availabilityZones,
@as("regions") regions: regionList,
@as("services") services: serviceList,
@as("eventTypeCodes") eventTypeCodes: eventTypeList2,
@as("eventArns") eventArns: eventArnList
}
type entityList = array<affectedEntity>
type entityFilter = {
@as("statusCodes") statusCodes: entityStatusCodeList,
@as("tags") tags: tagFilter,
@as("lastUpdatedTimes") lastUpdatedTimes: dateTimeRangeList,
@as("entityValues") entityValues: entityValueList,
@as("entityArns") entityArns: entityArnList,
@as("eventArns") eventArns: option<eventArnList>
}
type describeEventDetailsSuccessfulSet = array<eventDetails>
type describeEventDetailsForOrganizationSuccessfulSet = array<organizationEventDetails>
type clientType;
@module("@aws-sdk/client-health") @new external createClient: unit => clientType = "HealthClient";
module EnableHealthServiceAccessForOrganization = {
  type t;
  
  
  @module("@aws-sdk/client-health") @new external new_: (unit) => t = "EnableHealthServiceAccessForOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DisableHealthServiceAccessForOrganization = {
  type t;
  
  
  @module("@aws-sdk/client-health") @new external new_: (unit) => t = "DisableHealthServiceAccessForOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DescribeHealthServiceStatusForOrganization = {
  type t;
  
  type response = {
@as("healthServiceAccessStatusForOrganization") healthServiceAccessStatusForOrganization: healthServiceAccessStatusForOrganization
}
  @module("@aws-sdk/client-health") @new external new_: (unit) => t = "DescribeHealthServiceStatusForOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAffectedAccountsForOrganization = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("eventArn") eventArn: option<eventArn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("eventScopeCode") eventScopeCode: eventScopeCode,
@as("affectedAccounts") affectedAccounts: affectedAccountsList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeAffectedAccountsForOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventsForOrganization = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filter") filter: organizationEventFilter
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("events") events: organizationEventList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventsForOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventTypes = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("locale") locale: locale,
@as("filter") filter: eventTypeFilter
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("eventTypes") eventTypes: eventTypeList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventTypesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEntityAggregates = {
  type t;
  type request = {
@as("eventArns") eventArns: eventArnsList
}
  type response = {
@as("entityAggregates") entityAggregates: entityAggregateList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEntityAggregatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("filter") filter: eventFilter
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("events") events: eventList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventDetailsForOrganization = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("organizationEventDetailFilters") organizationEventDetailFilters: option<organizationEventDetailFiltersList>
}
  type response = {
@as("failedSet") failedSet: describeEventDetailsForOrganizationFailedSet,
@as("successfulSet") successfulSet: describeEventDetailsForOrganizationSuccessfulSet
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventDetailsForOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventDetails = {
  type t;
  type request = {
@as("locale") locale: locale,
@as("eventArns") eventArns: option<eventArnList>
}
  type response = {
@as("failedSet") failedSet: describeEventDetailsFailedSet,
@as("successfulSet") successfulSet: describeEventDetailsSuccessfulSet
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEventAggregates = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("maxResults") maxResults: maxResults,
@as("aggregateField") aggregateField: option<eventAggregateField>,
@as("filter") filter: eventFilter
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("eventAggregates") eventAggregates: eventAggregateList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventAggregatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAffectedEntitiesForOrganization = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("locale") locale: locale,
@as("organizationEntityFilters") organizationEntityFilters: option<organizationEntityFiltersList>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("failedSet") failedSet: describeAffectedEntitiesForOrganizationFailedSet,
@as("entities") entities: entityList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeAffectedEntitiesForOrganizationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAffectedEntities = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("locale") locale: locale,
@as("filter") filter: option<entityFilter>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("entities") entities: entityList
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeAffectedEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
