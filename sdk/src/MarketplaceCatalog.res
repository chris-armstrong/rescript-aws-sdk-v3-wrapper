type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-aws-marketplace") @new
external createClient: unit => awsServiceClient = "MarketplaceCatalogClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
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
type failureCode = [@as("SERVER_FAULT") #SERVER_FAULT | @as("CLIENT_ERROR") #CLIENT_ERROR]
type exceptionMessageContent = string
type errorCodeString = string
type entityType = string
type entityNameString = string
type dateTimeISO8601 = string
type clientRequestToken = string
type changeType = string
type changeStatus = [
  | @as("FAILED") #FAILED
  | @as("CANCELLED") #CANCELLED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("APPLYING") #APPLYING
  | @as("PREPARING") #PREPARING
]
type changeSetName = string
type changeName = string
type catalog = string
type arn = string
type valueList = array<filterValueContent>
@ocaml.doc("<p>An object that contains two attributes, <code>SortBy</code> and
            <code>SortOrder</code>.</p>")
type sort = {
  @ocaml.doc("<p>The sorting order. Can be <code>ASCENDING</code> or <code>DESCENDING</code>. The
            default value is <code>DESCENDING</code>.</p>")
  @as("SortOrder")
  sortOrder: option<sortOrder>,
  @ocaml.doc("<p>For <code>ListEntities</code>, supported attributes include
                <code>LastModifiedDate</code> (default), <code>Visibility</code>,
                <code>EntityId</code>, and <code>Name</code>.</p>

        <p>For <code>ListChangeSets</code>, supported attributes include <code>StartTime</code>
            and <code>EndTime</code>.</p>")
  @as("SortBy")
  sortBy: option<sortBy>,
}
type resourceIdList = array<resourceId>
@ocaml.doc("<p>Details about the error.</p>")
type errorDetail = {
  @ocaml.doc("<p>The message for the error.</p>") @as("ErrorMessage")
  errorMessage: option<exceptionMessageContent>,
  @ocaml.doc("<p>The error code that identifies the type of error.</p>") @as("ErrorCode")
  errorCode: option<errorCodeString>,
}
@ocaml.doc("<p>This object is a container for common summary information about the entity. The
            summary doesn't contain the whole entity structure, but it does contain information
            common across all entities.</p>")
type entitySummary = {
  @ocaml.doc("<p>The visibility status of the entity to
            buyers.
            This value can be <code>Public</code> (everyone can view the entity),
                <code>Limited</code> (the entity is visible to limited accounts only), or
                <code>Restricted</code> (the entity was published and then unpublished and only
            existing
            buyers
            can view it). </p>")
  @as("Visibility")
  visibility: option<visibilityValue>,
  @ocaml.doc("<p>The last time the entity was published, using ISO 8601 format
            (2018-02-27T13:45:22Z).</p>")
  @as("LastModifiedDate")
  lastModifiedDate: option<dateTimeISO8601>,
  @ocaml.doc("<p>The ARN associated with the unique identifier for the entity.</p>")
  @as("EntityArn")
  entityArn: option<arn>,
  @ocaml.doc("<p>The unique identifier for the entity.</p>") @as("EntityId")
  entityId: option<resourceId>,
  @ocaml.doc("<p>The type of the entity.</p>") @as("EntityType") entityType: option<entityType>,
  @ocaml.doc("<p>The name for the entity. This value is not unique. It is defined by the
            seller.</p>")
  @as("Name")
  name: option<entityNameString>,
}
@ocaml.doc("<p>An entity contains data that describes your product, its supported features,
            and how it can be used or launched by your customer. </p>")
type entity = {
  @ocaml.doc("<p>The identifier for the entity.</p>") @as("Identifier")
  identifier: option<identifier>,
  @ocaml.doc("<p>The type of entity.</p>") @as("Type") type_: entityType,
}
@ocaml.doc("<p>A filter object, used to optionally filter results from calls to the
                <code>ListEntities</code> and <code>ListChangeSets</code> actions.</p>")
type filter = {
  @ocaml.doc("<p>
            <code>ListEntities</code> - This is a list of unique <code>EntityId</code>s.</p>

        <p>
            <code>ListChangeSets</code> - The supported filter names and associated
                <code>ValueList</code>s is as follows:</p>
        <ul>
            <li>
                <p>
                  <code>ChangeSetName</code> - The supported <code>ValueList</code> is a list of
                    non-unique <code>ChangeSetName</code>s. These are defined when you call the
                        <code>StartChangeSet</code> action.</p>
            </li>
            <li>
                <p>
                  <code>Status</code> - The supported <code>ValueList</code> is a list of
                    statuses for all change set requests.</p>
            </li>
            <li>
                <p>
                  <code>EntityId</code> - The supported <code>ValueList</code> is a list of
                    unique <code>EntityId</code>s.</p>
            </li>
            <li>
                <p>
                  <code>BeforeStartTime</code> - The supported <code>ValueList</code> is a list
                    of all change sets that started before the filter value.</p>
            </li>
            <li>
                <p>
                  <code>AfterStartTime</code> - The supported <code>ValueList</code> is a list
                    of all change sets that started after the filter value.</p>
            </li>
            <li>
                <p>
                  <code>BeforeEndTime</code> - The supported <code>ValueList</code> is a list of
                    all change sets that ended before the filter value.</p>
            </li>
            <li>
                <p>
                  <code>AfterEndTime</code> - The supported <code>ValueList</code> is a list of
                    all change sets that ended after the filter value.</p>
            </li>
         </ul>")
  @as("ValueList")
  valueList: option<valueList>,
  @ocaml.doc("<p>For <code>ListEntities</code>, the supported value for this is an
                <code>EntityId</code>.</p>
        <p>For <code>ListChangeSets</code>, the supported values are as follows:</p>")
  @as("Name")
  name: option<filterName>,
}
type errorDetailList = array<errorDetail>
type entitySummaryList = array<entitySummary>
@ocaml.doc("<p>A summary of a change set returned in a list of change sets when the
                <code>ListChangeSets</code> action is called.</p>")
type changeSetSummaryListItem = {
  @ocaml.doc("<p>Returned if the change set is in <code>FAILED</code> status. Can be either 
            <code>CLIENT_ERROR</code>, which means that there are issues with the request (see the 
            <code>ErrorDetailList</code> of <code>DescribeChangeSet</code>), or <code>SERVER_FAULT</code>,
        which means that there is a problem in the system, and you should retry your request.</p>")
  @as("FailureCode")
  failureCode: option<failureCode>,
  @ocaml.doc("<p>This object is a list of entity IDs (string) that are a part of a change set. The
            entity ID list is a maximum of 20 entities. It must contain at least one entity.</p>")
  @as("EntityIdList")
  entityIdList: option<resourceIdList>,
  @ocaml.doc("<p>The current status of the change set.</p>") @as("Status")
  status: option<changeStatus>,
  @ocaml.doc("<p>The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was
            finished.</p>")
  @as("EndTime")
  endTime: option<dateTimeISO8601>,
  @ocaml.doc("<p>The time, in ISO 8601 format (2018-02-27T13:45:22Z), when the change set was
            started.</p>")
  @as("StartTime")
  startTime: option<dateTimeISO8601>,
  @ocaml.doc("<p>The non-unique name for the change set.</p>") @as("ChangeSetName")
  changeSetName: option<changeSetName>,
  @ocaml.doc("<p>The ARN associated with the unique identifier for the change set referenced in this
            request.</p>")
  @as("ChangeSetArn")
  changeSetArn: option<arn>,
  @ocaml.doc("<p>The unique identifier for a change set.</p>") @as("ChangeSetId")
  changeSetId: option<resourceId>,
}
@ocaml.doc("<p>An object that contains the <code>ChangeType</code>, <code>Details</code>, and
                <code>Entity</code>.</p>")
type change = {
  @ocaml.doc("<p>Optional name for the change.</p>") @as("ChangeName")
  changeName: option<changeName>,
  @ocaml.doc("<p>This object contains details specific to the change type of the requested
            change.</p>")
  @as("Details")
  details: json,
  @ocaml.doc("<p>The entity to be changed.</p>") @as("Entity") entity: entity,
  @ocaml.doc("<p>Change types are single string values that describe your intention for the change.
            Each change type is unique for each <code>EntityType</code> provided in the change's
            scope.</p>")
  @as("ChangeType")
  changeType: changeType,
}
type requestedChangeList = array<change>
type filterList = array<filter>
@ocaml.doc("<p>This object is a container for common summary information about the change. The
            summary doesn't contain the whole change structure.</p>")
type changeSummary = {
  @ocaml.doc("<p>Optional name for the change.</p>") @as("ChangeName")
  changeName: option<changeName>,
  @ocaml.doc("<p>An array of <code>ErrorDetail</code> objects associated with the change.</p>")
  @as("ErrorDetailList")
  errorDetailList: option<errorDetailList>,
  @ocaml.doc("<p>This object contains details specific to the change type of the requested
            change.</p>")
  @as("Details")
  details: option<json>,
  @ocaml.doc("<p>The entity to be changed.</p>") @as("Entity") entity: option<entity>,
  @ocaml.doc("<p>The type of the change.</p>") @as("ChangeType") changeType: option<changeType>,
}
type changeSetSummaryList = array<changeSetSummaryListItem>
type changeSetDescription = array<changeSummary>
@ocaml.doc("<p>Catalog API actions allow you to manage your entities through list, describe, and update
            capabilities. An entity can be a product or an offer on AWS Marketplace. </p>

        <p>You can automate your entity update process by integrating the AWS Marketplace Catalog
            API with your AWS Marketplace product build or deployment pipelines. You can also create
            your own applications on top of the Catalog API to manage your products on AWS
            Marketplace.</p>")
module DescribeEntity = {
  type t
  type request = {
    @ocaml.doc("<p>Required. The unique ID of the entity to describe.</p>") @as("EntityId")
    entityId: resourceId,
    @ocaml.doc("<p>Required. The catalog related to the request. Fixed value:
            <code>AWSMarketplace</code>
         </p>")
    @as("Catalog")
    catalog: catalog,
  }
  type response = {
    @ocaml.doc("<p>This stringified JSON object includes the details of the entity.</p>")
    @as("Details")
    details: option<json>,
    @ocaml.doc("<p>The last modified date of the entity, in ISO 8601 format
            (2018-02-27T13:45:22Z).</p>")
    @as("LastModifiedDate")
    lastModifiedDate: option<dateTimeISO8601>,
    @ocaml.doc("<p>The ARN associated to the unique identifier for the change set referenced in this
            request.</p>")
    @as("EntityArn")
    entityArn: option<arn>,
    @ocaml.doc("<p>The identifier of the entity, in the format of
            <code>EntityId@RevisionId</code>.</p>")
    @as("EntityIdentifier")
    entityIdentifier: option<identifier>,
    @ocaml.doc(
      "<p>The named type of the entity, in the format of <code>EntityType@Version</code>.</p>"
    )
    @as("EntityType")
    entityType: option<entityType>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "DescribeEntityCommand"
  let make = (~entityId, ~catalog, ()) => new({entityId, catalog})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CancelChangeSet = {
  type t
  type request = {
    @ocaml.doc("<p>Required. The unique identifier of the <code>StartChangeSet</code> request that you
            want to cancel.</p>")
    @as("ChangeSetId")
    changeSetId: resourceId,
    @ocaml.doc("<p>Required. The catalog related to the request. Fixed value:
            <code>AWSMarketplace</code>.</p>")
    @as("Catalog")
    catalog: catalog,
  }
  type response = {
    @ocaml.doc("<p>The ARN associated with the change set referenced in this request.</p>")
    @as("ChangeSetArn")
    changeSetArn: option<arn>,
    @ocaml.doc("<p>The unique identifier for the change set referenced in this request.</p>")
    @as("ChangeSetId")
    changeSetId: option<resourceId>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "CancelChangeSetCommand"
  let make = (~changeSetId, ~catalog, ()) => new({changeSetId, catalog})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartChangeSet = {
  type t
  type request = {
    @ocaml.doc("<p>A unique token to identify the request to ensure idempotency.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Optional case sensitive string of up to 100 ASCII characters. The change set name can
            be used to filter the list of change sets. </p>")
    @as("ChangeSetName")
    changeSetName: option<changeSetName>,
    @ocaml.doc("<p>Array of <code>change</code> object.</p>") @as("ChangeSet")
    changeSet: requestedChangeList,
    @ocaml.doc("<p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
         </p>")
    @as("Catalog")
    catalog: catalog,
  }
  type response = {
    @ocaml.doc("<p>The ARN associated to the unique identifier generated for the request.</p>")
    @as("ChangeSetArn")
    changeSetArn: option<arn>,
    @ocaml.doc("<p>Unique identifier generated for the request.</p>") @as("ChangeSetId")
    changeSetId: option<resourceId>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "StartChangeSetCommand"
  let make = (~changeSet, ~catalog, ~clientRequestToken=?, ~changeSetName=?, ()) =>
    new({clientRequestToken, changeSetName, changeSet, catalog})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListEntities = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the upper limit of the elements on a single page. If a value isn't provided,
            the default value is 20.</p>")
    @as("MaxResults")
    maxResults: option<maxResultInteger>,
    @ocaml.doc(
      "<p>The value of the next token, if it exists. Null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An object that contains two attributes, <code>SortBy</code> and
            <code>SortOrder</code>.</p>")
    @as("Sort")
    sort: option<sort>,
    @ocaml.doc("<p>An array of filter objects. Each filter object contains two attributes,
                <code>filterName</code> and <code>filterValues</code>.</p>")
    @as("FilterList")
    filterList: option<filterList>,
    @ocaml.doc("<p>The type of entities to retrieve.</p>") @as("EntityType") entityType: entityType,
    @ocaml.doc("<p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
         </p>")
    @as("Catalog")
    catalog: catalog,
  }
  type response = {
    @ocaml.doc("<p>The value of the next token if it exists. Null if there is no more result.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> Array of <code>EntitySummary</code> object.</p>") @as("EntitySummaryList")
    entitySummaryList: option<entitySummaryList>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new external new: request => t = "ListEntitiesCommand"
  let make = (~entityType, ~catalog, ~maxResults=?, ~nextToken=?, ~sort=?, ~filterList=?, ()) =>
    new({maxResults, nextToken, sort, filterList, entityType, catalog})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListChangeSets = {
  type t
  type request = {
    @ocaml.doc("<p>The token value retrieved from a previous call to access the next page of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results returned by a single call. This value must be provided
            in the next call to retrieve the next set of results. By default, this value is
            20.</p>")
    @as("MaxResults")
    maxResults: option<maxResultInteger>,
    @ocaml.doc("<p>An object that contains two attributes, <code>SortBy</code> and
            <code>SortOrder</code>.</p>")
    @as("Sort")
    sort: option<sort>,
    @ocaml.doc("<p>An array of filter objects.</p>") @as("FilterList")
    filterList: option<filterList>,
    @ocaml.doc("<p>The catalog related to the request. Fixed value: <code>AWSMarketplace</code>
         </p>")
    @as("Catalog")
    catalog: catalog,
  }
  type response = {
    @ocaml.doc(
      "<p>The value of the next token, if it exists. Null if there are no more results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> Array of <code>ChangeSetSummaryListItem</code> objects.</p>")
    @as("ChangeSetSummaryList")
    changeSetSummaryList: option<changeSetSummaryList>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "ListChangeSetsCommand"
  let make = (~catalog, ~nextToken=?, ~maxResults=?, ~sort=?, ~filterList=?, ()) =>
    new({nextToken, maxResults, sort, filterList, catalog})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeChangeSet = {
  type t
  type request = {
    @ocaml.doc("<p>Required. The unique identifier for the <code>StartChangeSet</code> request that you
            want to describe the details for.</p>")
    @as("ChangeSetId")
    changeSetId: resourceId,
    @ocaml.doc("<p>Required. The catalog related to the request. Fixed value:
            <code>AWSMarketplace</code>
         </p>")
    @as("Catalog")
    catalog: catalog,
  }
  type response = {
    @ocaml.doc("<p>An array of <code>ChangeSummary</code> objects.</p>") @as("ChangeSet")
    changeSet: option<changeSetDescription>,
    @ocaml.doc("<p>Returned if there is a failure on the change set, but that failure is not related to
            any of the changes in the request.</p>")
    @as("FailureDescription")
    failureDescription: option<exceptionMessageContent>,
    @ocaml.doc("<p>Returned if the change set is in <code>FAILED</code> status. Can be either 
            <code>CLIENT_ERROR</code>, which means that there are issues with the request (see the 
            <code>ErrorDetailList</code>), or <code>SERVER_FAULT</code>, which means that there is a 
            problem in the system, and you should retry your request.</p>")
    @as("FailureCode")
    failureCode: option<failureCode>,
    @ocaml.doc("<p>The status of the change request.</p>") @as("Status")
    status: option<changeStatus>,
    @ocaml.doc("<p>The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request transitioned
            to a terminal state. The change cannot transition to a different state. Null if the
            request is not in a terminal state. </p>")
    @as("EndTime")
    endTime: option<dateTimeISO8601>,
    @ocaml.doc("<p>The date and time, in ISO 8601 format (2018-02-27T13:45:22Z), the request started.
        </p>")
    @as("StartTime")
    startTime: option<dateTimeISO8601>,
    @ocaml.doc("<p>The optional name provided in the <code>StartChangeSet</code> request. If you do not
            provide a name, one is set by default.</p>")
    @as("ChangeSetName")
    changeSetName: option<changeSetName>,
    @ocaml.doc("<p>The ARN associated with the unique identifier for the change set referenced in this
            request.</p>")
    @as("ChangeSetArn")
    changeSetArn: option<arn>,
    @ocaml.doc(
      "<p>Required. The unique identifier for the change set referenced in this request.</p>"
    )
    @as("ChangeSetId")
    changeSetId: option<resourceId>,
  }
  @module("@aws-sdk/client-aws-marketplace") @new
  external new: request => t = "DescribeChangeSetCommand"
  let make = (~changeSetId, ~catalog, ()) => new({changeSetId, catalog})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
