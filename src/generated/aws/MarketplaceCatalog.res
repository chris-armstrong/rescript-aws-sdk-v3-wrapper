type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type visibilityValue = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortBy = string
type resourceId = string
type nextToken = string
type maxResultInteger = int;
type json = string
type identifier = string
type filterValueContent = string
type filterName = string
type failureCode = [@as("SERVER_FAULT") #SERVER_FAULT | @as("CLIENT_ERROR") #CLIENT_ERROR]
type exceptionMessageContent = string
type errorCodeString = string
type entityType = string
type entityNameString = string
type dateTimeISO8601 = string
type clientRequestToken = string
type changeType = string
type changeStatus = [@as("FAILED") #FAILED | @as("CANCELLED") #CANCELLED | @as("SUCCEEDED") #SUCCEEDED | @as("APPLYING") #APPLYING | @as("PREPARING") #PREPARING]
type changeSetName = string
type changeName = string
type catalog = string
type aRN = string
type valueList = array<filterValueContent>
type sort = {
@as("SortOrder") sortOrder: sortOrder,
@as("SortBy") sortBy: sortBy
}
type resourceIdList = array<resourceId>
type errorDetail = {
@as("ErrorMessage") errorMessage: exceptionMessageContent,
@as("ErrorCode") errorCode: errorCodeString
}
type entitySummary = {
@as("Visibility") visibility: visibilityValue,
@as("LastModifiedDate") lastModifiedDate: dateTimeISO8601,
@as("EntityArn") entityArn: aRN,
@as("EntityId") entityId: resourceId,
@as("EntityType") entityType: entityType,
@as("Name") name: entityNameString
}
type entity = {
@as("Identifier") identifier: identifier,
@as("Type") type_: option<entityType>
}
type filter = {
@as("ValueList") valueList: valueList,
@as("Name") name: filterName
}
type errorDetailList = array<errorDetail>
type entitySummaryList = array<entitySummary>
type changeSetSummaryListItem = {
@as("FailureCode") failureCode: failureCode,
@as("EntityIdList") entityIdList: resourceIdList,
@as("Status") status: changeStatus,
@as("EndTime") endTime: dateTimeISO8601,
@as("StartTime") startTime: dateTimeISO8601,
@as("ChangeSetName") changeSetName: changeSetName,
@as("ChangeSetArn") changeSetArn: aRN,
@as("ChangeSetId") changeSetId: resourceId
}
type change = {
@as("ChangeName") changeName: changeName,
@as("Details") details: option<json>,
@as("Entity") entity: option<entity>,
@as("ChangeType") changeType: option<changeType>
}
type requestedChangeList = array<change>
type filterList = array<filter>
type changeSummary = {
@as("ChangeName") changeName: changeName,
@as("ErrorDetailList") errorDetailList: errorDetailList,
@as("Details") details: json,
@as("Entity") entity: entity,
@as("ChangeType") changeType: changeType
}
type changeSetSummaryList = array<changeSetSummaryListItem>
type changeSetDescription = array<changeSummary>
type clientType;
@module("@aws-sdk/client-aws-marketplace") @new external createClient: unit => clientType = "MarketplaceCatalogClient";
module DescribeEntity = {
  type t;
  type request = {
@as("EntityId") entityId: option<resourceId>,
@as("Catalog") catalog: option<catalog>
}
  type response = {
@as("Details") details: json,
@as("LastModifiedDate") lastModifiedDate: dateTimeISO8601,
@as("EntityArn") entityArn: aRN,
@as("EntityIdentifier") entityIdentifier: identifier,
@as("EntityType") entityType: entityType
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "DescribeEntityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CancelChangeSet = {
  type t;
  type request = {
@as("ChangeSetId") changeSetId: option<resourceId>,
@as("Catalog") catalog: option<catalog>
}
  type response = {
@as("ChangeSetArn") changeSetArn: aRN,
@as("ChangeSetId") changeSetId: resourceId
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "CancelChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartChangeSet = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("ChangeSetName") changeSetName: changeSetName,
@as("ChangeSet") changeSet: option<requestedChangeList>,
@as("Catalog") catalog: option<catalog>
}
  type response = {
@as("ChangeSetArn") changeSetArn: aRN,
@as("ChangeSetId") changeSetId: resourceId
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "StartChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListEntities = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResultInteger,
@as("NextToken") nextToken: nextToken,
@as("Sort") sort: sort,
@as("FilterList") filterList: filterList,
@as("EntityType") entityType: option<entityType>,
@as("Catalog") catalog: option<catalog>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("EntitySummaryList") entitySummaryList: entitySummaryList
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "ListEntitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListChangeSets = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResultInteger,
@as("Sort") sort: sort,
@as("FilterList") filterList: filterList,
@as("Catalog") catalog: option<catalog>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ChangeSetSummaryList") changeSetSummaryList: changeSetSummaryList
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "ListChangeSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeChangeSet = {
  type t;
  type request = {
@as("ChangeSetId") changeSetId: option<resourceId>,
@as("Catalog") catalog: option<catalog>
}
  type response = {
@as("ChangeSet") changeSet: changeSetDescription,
@as("FailureDescription") failureDescription: exceptionMessageContent,
@as("FailureCode") failureCode: failureCode,
@as("Status") status: changeStatus,
@as("EndTime") endTime: dateTimeISO8601,
@as("StartTime") startTime: dateTimeISO8601,
@as("ChangeSetName") changeSetName: changeSetName,
@as("ChangeSetArn") changeSetArn: aRN,
@as("ChangeSetId") changeSetId: resourceId
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "DescribeChangeSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
