type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type visibilityValue = string
type sortOrder = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type sortBy = string
type resourceId = string
type nextToken = string
type maxResultInteger = int
type json = string
type identifier = string
type filterValueContent = string
type filterName = string
type failureCode = [@as("SERVER_FAULT") #SERVERFAULT | @as("CLIENT_ERROR") #CLIENTERROR]
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
type arn = string
type valueList = array<filterValueContent>
type sort = {
@as("SortOrder") sortOrder: option<sortOrder>,
@as("SortBy") sortBy: option<sortBy>
}
type resourceIdList = array<resourceId>
type errorDetail = {
@as("ErrorMessage") errorMessage: option<exceptionMessageContent>,
@as("ErrorCode") errorCode: option<errorCodeString>
}
type entitySummary = {
@as("Visibility") visibility: option<visibilityValue>,
@as("LastModifiedDate") lastModifiedDate: option<dateTimeISO8601>,
@as("EntityArn") entityArn: option<arn>,
@as("EntityId") entityId: option<resourceId>,
@as("EntityType") entityType: option<entityType>,
@as("Name") name: option<entityNameString>
}
type entity = {
@as("Identifier") identifier: option<identifier>,
@as("Type") type_: entityType
}
type filter = {
@as("ValueList") valueList: option<valueList>,
@as("Name") name: option<filterName>
}
type errorDetailList = array<errorDetail>
type entitySummaryList = array<entitySummary>
type changeSetSummaryListItem = {
@as("FailureCode") failureCode: option<failureCode>,
@as("EntityIdList") entityIdList: option<resourceIdList>,
@as("Status") status: option<changeStatus>,
@as("EndTime") endTime: option<dateTimeISO8601>,
@as("StartTime") startTime: option<dateTimeISO8601>,
@as("ChangeSetName") changeSetName: option<changeSetName>,
@as("ChangeSetArn") changeSetArn: option<arn>,
@as("ChangeSetId") changeSetId: option<resourceId>
}
type change = {
@as("ChangeName") changeName: option<changeName>,
@as("Details") details: json,
@as("Entity") entity: entity,
@as("ChangeType") changeType: changeType
}
type requestedChangeList = array<change>
type filterList = array<filter>
type changeSummary = {
@as("ChangeName") changeName: option<changeName>,
@as("ErrorDetailList") errorDetailList: option<errorDetailList>,
@as("Details") details: option<json>,
@as("Entity") entity: option<entity>,
@as("ChangeType") changeType: option<changeType>
}
type changeSetSummaryList = array<changeSetSummaryListItem>
type changeSetDescription = array<changeSummary>
type awsServiceClient;
@module("@aws-sdk/client-aws-marketplace") @new external createClient: unit => awsServiceClient = "MarketplaceCatalogClient";
module DescribeEntity = {
  type t;
  type request = {
@as("EntityId") entityId: resourceId,
@as("Catalog") catalog: catalog
}
  type response = {
@as("Details") details: option<json>,
@as("LastModifiedDate") lastModifiedDate: option<dateTimeISO8601>,
@as("EntityArn") entityArn: option<arn>,
@as("EntityIdentifier") entityIdentifier: option<identifier>,
@as("EntityType") entityType: option<entityType>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "DescribeEntityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CancelChangeSet = {
  type t;
  type request = {
@as("ChangeSetId") changeSetId: resourceId,
@as("Catalog") catalog: catalog
}
  type response = {
@as("ChangeSetArn") changeSetArn: option<arn>,
@as("ChangeSetId") changeSetId: option<resourceId>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "CancelChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartChangeSet = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("ChangeSetName") changeSetName: option<changeSetName>,
@as("ChangeSet") changeSet: requestedChangeList,
@as("Catalog") catalog: catalog
}
  type response = {
@as("ChangeSetArn") changeSetArn: option<arn>,
@as("ChangeSetId") changeSetId: option<resourceId>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "StartChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListEntities = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResultInteger>,
@as("NextToken") nextToken: option<nextToken>,
@as("Sort") sort: option<sort>,
@as("FilterList") filterList: option<filterList>,
@as("EntityType") entityType: entityType,
@as("Catalog") catalog: catalog
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("EntitySummaryList") entitySummaryList: option<entitySummaryList>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "ListEntitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListChangeSets = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResultInteger>,
@as("Sort") sort: option<sort>,
@as("FilterList") filterList: option<filterList>,
@as("Catalog") catalog: catalog
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("ChangeSetSummaryList") changeSetSummaryList: option<changeSetSummaryList>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "ListChangeSetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeChangeSet = {
  type t;
  type request = {
@as("ChangeSetId") changeSetId: resourceId,
@as("Catalog") catalog: catalog
}
  type response = {
@as("ChangeSet") changeSet: option<changeSetDescription>,
@as("FailureDescription") failureDescription: option<exceptionMessageContent>,
@as("FailureCode") failureCode: option<failureCode>,
@as("Status") status: option<changeStatus>,
@as("EndTime") endTime: option<dateTimeISO8601>,
@as("StartTime") startTime: option<dateTimeISO8601>,
@as("ChangeSetName") changeSetName: option<changeSetName>,
@as("ChangeSetArn") changeSetArn: option<arn>,
@as("ChangeSetId") changeSetId: option<resourceId>
}
  @module("@aws-sdk/client-aws-marketplace") @new external new_: (request) => t = "DescribeChangeSetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
