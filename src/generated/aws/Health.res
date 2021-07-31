type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type boolean_ = bool
type integer_ = int
type long = float
type timestamp_ = Js.Date.t;
type tagValue = string
type tagKey = string
type string_ = string
type service = string
type region = string
type nextToken = string
type metadataValue = string
type metadataKey = string
type maxResults = int
type locale = string
type healthServiceAccessStatusForOrganization = string
type eventTypeCode = string
type eventTypeCategory = [@as("investigation") #Investigation | @as("scheduledChange") #ScheduledChange | @as("accountNotification") #AccountNotification | @as("issue") #Issue]
type eventStatusCode = [@as("upcoming") #Upcoming | @as("closed") #Closed | @as("open") #Open]
type eventScopeCode = [@as("NONE") #NONE | @as("ACCOUNT_SPECIFIC") #ACCOUNTSPECIFIC | @as("PUBLIC") #PUBLIC]
type eventArn = string
type eventAggregateField = [@as("eventTypeCategory") #EventTypeCategory]
type entityValue = string
type entityUrl = string
type entityStatusCode = [@as("UNKNOWN") #UNKNOWN | @as("UNIMPAIRED") #UNIMPAIRED | @as("IMPAIRED") #IMPAIRED]
type entityArn = string
type count = int
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
errorMessage: option<string_>,
errorName: option<string_>,
eventArn: option<eventArn>,
awsAccountId: option<accountId>
}
type organizationEvent = {
statusCode: option<eventStatusCode>,
lastUpdatedTime: option<timestamp_>,
endTime: option<timestamp_>,
startTime: option<timestamp_>,
region: option<region>,
eventScopeCode: option<eventScopeCode>,
eventTypeCategory: option<eventTypeCategory>,
eventTypeCode: option<eventTypeCode>,
service: option<service>,
arn: option<eventArn>
}
type organizationAffectedEntitiesErrorItem = {
errorMessage: option<string_>,
errorName: option<string_>,
eventArn: option<eventArn>,
awsAccountId: option<accountId>
}
type eventTypeCodeList = array<eventTypeCode>
type eventTypeCategoryList = array<eventTypeCategory>
type eventType = {
category: option<eventTypeCategory>,
code: option<eventTypeCode>,
service: option<service>
}
type eventDetailsErrorItem = {
errorMessage: option<string_>,
errorName: option<string_>,
eventArn: option<eventArn>
}
type eventDescription = {
latestDescription: option<eventDescription2>
}
type eventArnsList = array<eventArn>
type eventAggregate = {
count: option<count>,
aggregateValue: option<aggregateValue>
}
type eventAccountFilter = {
awsAccountId: option<accountId>,
eventArn: eventArn
}
type event = {
eventScopeCode: option<eventScopeCode>,
statusCode: option<eventStatusCode>,
lastUpdatedTime: option<timestamp_>,
endTime: option<timestamp_>,
startTime: option<timestamp_>,
availabilityZone: option<availabilityZone>,
region: option<region>,
eventTypeCategory: option<eventTypeCategory>,
eventTypeCode: option<eventTypeCode>,
service: option<service>,
arn: option<eventArn>
}
type entityAggregate = {
count: option<count>,
eventArn: option<eventArn>
}
type dateTimeRange = {
to: option<timestamp_>,
from: option<timestamp_>
}
type tagFilter = array<tagSet>
type dateTimeRangeList = array<dateTimeRange>
type organizationEventList = array<organizationEvent>
type organizationEventFilter = {
eventStatusCodes: option<eventStatusCodeList>,
eventTypeCategories: option<eventTypeCategoryList2>,
entityValues: option<entityValueList>,
entityArns: option<entityArnList>,
lastUpdatedTime: option<dateTimeRange>,
endTime: option<dateTimeRange>,
startTime: option<dateTimeRange>,
regions: option<regionList>,
services: option<serviceList>,
awsAccountIds: option<awsAccountIdsList>,
eventTypeCodes: option<eventTypeList2>
}
type organizationEventDetails = {
eventMetadata: option<eventMetadata>,
eventDescription: option<eventDescription>,
event: option<event>,
awsAccountId: option<accountId>
}
type organizationEventDetailFiltersList = array<eventAccountFilter>
type organizationEntityFiltersList = array<eventAccountFilter>
type eventTypeList = array<eventType>
type eventTypeFilter = {
eventTypeCategories: option<eventTypeCategoryList>,
services: option<serviceList>,
eventTypeCodes: option<eventTypeCodeList>
}
type eventList = array<event>
type eventDetails = {
eventMetadata: option<eventMetadata>,
eventDescription: option<eventDescription>,
event: option<event>
}
type eventAggregateList = array<eventAggregate>
type entityAggregateList = array<entityAggregate>
type describeEventDetailsForOrganizationFailedSet = array<organizationEventDetailsErrorItem>
type describeEventDetailsFailedSet = array<eventDetailsErrorItem>
type describeAffectedEntitiesForOrganizationFailedSet = array<organizationAffectedEntitiesErrorItem>
type affectedEntity = {
tags: option<tagSet>,
statusCode: option<entityStatusCode>,
lastUpdatedTime: option<timestamp_>,
awsAccountId: option<accountId>,
entityUrl: option<entityUrl>,
entityValue: option<entityValue>,
eventArn: option<eventArn>,
entityArn: option<entityArn>
}
type eventFilter = {
eventStatusCodes: option<eventStatusCodeList>,
tags: option<tagFilter>,
eventTypeCategories: option<eventTypeCategoryList2>,
entityValues: option<entityValueList>,
entityArns: option<entityArnList>,
lastUpdatedTimes: option<dateTimeRangeList>,
endTimes: option<dateTimeRangeList>,
startTimes: option<dateTimeRangeList>,
availabilityZones: option<availabilityZones>,
regions: option<regionList>,
services: option<serviceList>,
eventTypeCodes: option<eventTypeList2>,
eventArns: option<eventArnList>
}
type entityList = array<affectedEntity>
type entityFilter = {
statusCodes: option<entityStatusCodeList>,
tags: option<tagFilter>,
lastUpdatedTimes: option<dateTimeRangeList>,
entityValues: option<entityValueList>,
entityArns: option<entityArnList>,
eventArns: eventArnList
}
type describeEventDetailsSuccessfulSet = array<eventDetails>
type describeEventDetailsForOrganizationSuccessfulSet = array<organizationEventDetails>
type awsServiceClient;
@module("@aws-sdk/client-health") @new external createClient: unit => awsServiceClient = "HealthClient";
module EnableHealthServiceAccessForOrganization = {
  type t;
  
  
  @module("@aws-sdk/client-health") @new external new_: (unit) => t = "EnableHealthServiceAccessForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DisableHealthServiceAccessForOrganization = {
  type t;
  
  
  @module("@aws-sdk/client-health") @new external new_: (unit) => t = "DisableHealthServiceAccessForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DescribeHealthServiceStatusForOrganization = {
  type t;
  
  type response = {
healthServiceAccessStatusForOrganization: option<healthServiceAccessStatusForOrganization>
}
  @module("@aws-sdk/client-health") @new external new_: (unit) => t = "DescribeHealthServiceStatusForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAffectedAccountsForOrganization = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
eventArn: eventArn
}
  type response = {
nextToken: option<nextToken>,
eventScopeCode: option<eventScopeCode>,
affectedAccounts: option<affectedAccountsList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeAffectedAccountsForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventsForOrganization = {
  type t;
  type request = {
locale: option<locale>,
maxResults: option<maxResults>,
nextToken: option<nextToken>,
filter: option<organizationEventFilter>
}
  type response = {
nextToken: option<nextToken>,
events: option<organizationEventList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventsForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventTypes = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
locale: option<locale>,
filter: option<eventTypeFilter>
}
  type response = {
nextToken: option<nextToken>,
eventTypes: option<eventTypeList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventTypesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEntityAggregates = {
  type t;
  type request = {
eventArns: option<eventArnsList>
}
  type response = {
entityAggregates: option<entityAggregateList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEntityAggregatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEvents = {
  type t;
  type request = {
locale: option<locale>,
maxResults: option<maxResults>,
nextToken: option<nextToken>,
filter: option<eventFilter>
}
  type response = {
nextToken: option<nextToken>,
events: option<eventList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventDetailsForOrganization = {
  type t;
  type request = {
locale: option<locale>,
organizationEventDetailFilters: organizationEventDetailFiltersList
}
  type response = {
failedSet: option<describeEventDetailsForOrganizationFailedSet>,
successfulSet: option<describeEventDetailsForOrganizationSuccessfulSet>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventDetailsForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventDetails = {
  type t;
  type request = {
locale: option<locale>,
eventArns: eventArnList
}
  type response = {
failedSet: option<describeEventDetailsFailedSet>,
successfulSet: option<describeEventDetailsSuccessfulSet>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeEventAggregates = {
  type t;
  type request = {
nextToken: option<nextToken>,
maxResults: option<maxResults>,
aggregateField: eventAggregateField,
filter: option<eventFilter>
}
  type response = {
nextToken: option<nextToken>,
eventAggregates: option<eventAggregateList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeEventAggregatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAffectedEntitiesForOrganization = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
locale: option<locale>,
organizationEntityFilters: organizationEntityFiltersList
}
  type response = {
nextToken: option<nextToken>,
failedSet: option<describeAffectedEntitiesForOrganizationFailedSet>,
entities: option<entityList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeAffectedEntitiesForOrganizationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAffectedEntities = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
locale: option<locale>,
filter: entityFilter
}
  type response = {
nextToken: option<nextToken>,
entities: option<entityList>
}
  @module("@aws-sdk/client-health") @new external new_: (request) => t = "DescribeAffectedEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
