type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codestar-notifications") @new
external createClient: unit => awsServiceClient = "CodeStarNotificationsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type targetType = string
type targetStatus = [
  | @as("DEACTIVATED") #DEACTIVATED
  | @as("INACTIVE") #INACTIVE
  | @as("UNREACHABLE") #UNREACHABLE
  | @as("ACTIVE") #ACTIVE
  | @as("PENDING") #PENDING
]
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
type listTargetsFilterName = [
  | @as("TARGET_STATUS") #TARGET_STATUS
  | @as("TARGET_ADDRESS") #TARGET_ADDRESS
  | @as("TARGET_TYPE") #TARGET_TYPE
]
type listNotificationRulesFilterValue = string
type listNotificationRulesFilterName = [
  | @as("TARGET_ADDRESS") #TARGET_ADDRESS
  | @as("RESOURCE") #RESOURCE
  | @as("CREATED_BY") #CREATED_BY
  | @as("EVENT_TYPE_ID") #EVENT_TYPE_ID
]
type listEventTypesFilterValue = string
type listEventTypesFilterName = [
  | @as("SERVICE_NAME") #SERVICE_NAME
  | @as("RESOURCE_TYPE") #RESOURCE_TYPE
]
type lastModifiedTimestamp = Js.Date.t
type forceUnsubscribeAll = bool
type eventTypeName = string
type eventTypeId = string
type detailType = [@as("FULL") #FULL | @as("BASIC") #BASIC]
type createdTimestamp = Js.Date.t
type clientRequestToken = string
@ocaml.doc("<p>Information about the targets specified for a notification rule.</p>")
type targetSummary = {
  @ocaml.doc("<p>The status of the target.</p>") @as("TargetStatus")
  targetStatus: option<targetStatus>,
  @ocaml.doc("<p>The type of the target (for example, SNS).</p>") @as("TargetType")
  targetType: option<targetType>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic.</p>") @as("TargetAddress")
  targetAddress: option<targetAddress>,
}
@ocaml.doc("<p>Information about the SNS topics associated with a  notification rule.</p>")
type target = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic.</p>") @as("TargetAddress")
  targetAddress: option<targetAddress>,
  @ocaml.doc("<p>The target type. Can be an Amazon SNS topic.</p>") @as("TargetType")
  targetType: option<targetType>,
}
type tags = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
@ocaml.doc("<p>Information about a specified notification rule.</p>")
type notificationRuleSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule.</p>") @as("Arn")
  arn: option<notificationRuleArn>,
  @ocaml.doc("<p>The unique ID of the notification rule.</p>") @as("Id")
  id: option<notificationRuleId>,
}
@ocaml.doc("<p>Information about a filter to apply to the list of returned targets. You can filter by
            target type, address, or status. For example, to filter results to notification rules
            that have active Amazon SNS topics as targets, you could specify a ListTargetsFilter
            Name as TargetType and a Value of SNS, and a Name of TARGET_STATUS and a Value of
            ACTIVE.</p>")
type listTargetsFilter = {
  @ocaml.doc("<p>The value of the attribute you want to use to filter the returned targets. For example,
            if you specify <i>SNS</i> for the Target type, you could specify an Amazon
            Resource Name (ARN) for a topic as the value.</p>")
  @as("Value")
  value: listTargetsFilterValue,
  @ocaml.doc("<p>The name of the attribute you want to use to filter the returned targets.</p>")
  @as("Name")
  name: listTargetsFilterName,
}
@ocaml.doc("<p>Information about a filter to apply to the list of returned notification rules. You can
      filter by event type, owner, resource, or target.</p>")
type listNotificationRulesFilter = {
  @ocaml.doc("<p>The value of the attribute you want to use to filter the returned notification rules. For example, if you specify filtering by <i>RESOURCE</i> 
          in Name, you might specify the ARN of a pipeline in AWS CodePipeline for the value.</p>")
  @as("Value")
  value: listNotificationRulesFilterValue,
  @ocaml.doc(
    "<p>The name of the attribute you want to use to filter the returned notification rules.</p>"
  )
  @as("Name")
  name: listNotificationRulesFilterName,
}
@ocaml.doc("<p>Information about a filter to apply to the list of returned event types. You can filter
      by resource type or service name.</p>")
type listEventTypesFilter = {
  @ocaml.doc("<p>The name of the resource type (for example, pipeline) or service name (for example,
      CodePipeline) that you want to filter by.</p>")
  @as("Value")
  value: listEventTypesFilterValue,
  @ocaml.doc("<p>The system-generated name of the filter type you want to filter by.</p>")
  @as("Name")
  name: listEventTypesFilterName,
}
@ocaml.doc("<p>Returns information about an event that has triggered a notification rule.</p>")
type eventTypeSummary = {
  @ocaml.doc("<p>The resource type of the event.</p>") @as("ResourceType")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The name of the event.</p>") @as("EventTypeName")
  eventTypeName: option<eventTypeName>,
  @ocaml.doc("<p>The name of the service for which the event applies.</p>") @as("ServiceName")
  serviceName: option<serviceName>,
  @ocaml.doc("<p>The system-generated ID of the event.</p>") @as("EventTypeId")
  eventTypeId: option<eventTypeId>,
}
type eventTypeIds = array<eventTypeId>
type targetsBatch = array<targetSummary>
type targets = array<target>
type notificationRuleBatch = array<notificationRuleSummary>
type listTargetsFilters = array<listTargetsFilter>
type listNotificationRulesFilters = array<listNotificationRulesFilter>
type listEventTypesFilters = array<listEventTypesFilter>
type eventTypeBatch = array<eventTypeSummary>
@ocaml.doc("<p>This AWS CodeStar Notifications API Reference provides descriptions and usage examples of the
      operations and data types for the AWS CodeStar Notifications API. You can use the AWS CodeStar Notifications API
      to work with the following objects:</p>
      
         <p>Notification rules, by calling the following: </p>
         <ul>
            <li>
               <p>
                  <a>CreateNotificationRule</a>, which creates a notification rule for a
                    resource in your account. </p>
            </li>
            <li>
               <p>
                  <a>DeleteNotificationRule</a>, which deletes a notification rule. </p>
            </li>
            <li>
               <p>
                  <a>DescribeNotificationRule</a>, which provides information about a notification rule. </p>
            </li>
            <li>
               <p>
                  <a>ListNotificationRules</a>, which lists the notification rules associated with
          your account. </p>
            </li>
            <li>
               <p>
                  <a>UpdateNotificationRule</a>, which changes the name, events, or targets associated with a
          notification rule. </p>
            </li>
            <li>
               <p>
                  <a>Subscribe</a>, which subscribes a target to a notification rule. </p>
            </li>
            <li>
               <p>
                  <a>Unsubscribe</a>, which removes a target from a notification rule. </p>
            </li>
         </ul>
      
         <p>Targets, by calling the following: </p>
         <ul>
            <li>
               <p>
                  <a>DeleteTarget</a>, which removes a notification rule target (SNS topic) from a
          notification rule. </p>
            </li>
            <li>
               <p>
                  <a>ListTargets</a>, which lists the targets associated with a
                    notification rule. </p>
            </li>
         </ul>
      
         <p>Events, by calling the following: </p>
         <ul>
            <li>
               <p>
                  <a>ListEventTypes</a>, which lists the event types you can include in
                    a notification rule. </p>
            </li>
         </ul>
         <p>Tags, by calling the following: </p>
         <ul>
            <li>
               <p>
                  <a>ListTagsForResource</a>, which lists the tags already associated
                    with a notification rule in your account. </p>
            </li>
            <li>
               <p>
                  <a>TagResource</a>, which associates a tag you provide with a
                    notification rule in your account. </p>
            </li>
            <li>
               <p>
                  <a>UntagResource</a>, which removes a tag from a notification rule in
                    your account. </p>
            </li>
         </ul>
      

      
         <p> For information about how to use AWS CodeStar Notifications, see link in the CodeStarNotifications User Guide.
    </p>")
module Unsubscribe = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the SNS topic to unsubscribe from the notification rule.</p>")
    @as("TargetAddress")
    targetAddress: targetAddress,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule.</p>") @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the the notification rule from which you have removed a subscription.</p>"
    )
    @as("Arn")
    arn: notificationRuleArn,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "UnsubscribeCommand"
  let make = (~targetAddress, ~arn, ()) => new({targetAddress: targetAddress, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTarget = {
  type t
  type request = {
    @ocaml.doc("<p>A Boolean value that can be used to delete all associations with this SNS topic. The
            default value is FALSE. If set to TRUE, all associations between that target and every
            notification rule in your AWS account are deleted.</p>")
    @as("ForceUnsubscribeAll")
    forceUnsubscribeAll: option<forceUnsubscribeAll>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SNS topic to delete.</p>")
    @as("TargetAddress")
    targetAddress: targetAddress,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "DeleteTargetCommand"
  let make = (~targetAddress, ~forceUnsubscribeAll=?, ()) =>
    new({forceUnsubscribeAll: forceUnsubscribeAll, targetAddress: targetAddress})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNotificationRule = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule you want to delete.</p>")
    @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the deleted notification rule.</p>") @as("Arn")
    arn: option<notificationRuleArn>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "DeleteNotificationRuleCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key names of the tags to remove.</p>") @as("TagKeys") tagKeys: tagKeys,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule from which to remove the
      tags.</p>")
    @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~arn, ()) => new({tagKeys: tagKeys, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of tags to associate with the resource. Tag key names cannot start with \"aws\".</p>"
    )
    @as("Tags")
    tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule to tag.</p>") @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {
    @ocaml.doc("<p>The list of tags associated with the resource.</p>") @as("Tags")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~arn, ()) => new({tags: tags, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Subscribe = {
  type t
  type request = {
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @as("Target") target: target,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the notification rule for which you want to create the association.</p>"
    )
    @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the notification rule for which you have created assocations.</p>"
    )
    @as("Arn")
    arn: option<notificationRuleArn>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "SubscribeCommand"
  let make = (~target, ~arn, ~clientRequestToken=?, ()) =>
    new({clientRequestToken: clientRequestToken, target: target, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the notification rule.</p>") @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the notification rule.</p>") @as("Tags")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNotificationRule = {
  type t
  type request = {
    @ocaml.doc("<p>The level of detail to include in the notifications for this resource. BASIC will include only the 
            contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
            provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>")
    @as("DetailType")
    detailType: option<detailType>,
    @ocaml.doc("<p>The address and type of the targets to receive notifications from this notification
      rule.</p>")
    @as("Targets")
    targets: option<targets>,
    @ocaml.doc("<p>A list of event types associated with this notification rule.</p>")
    @as("EventTypeIds")
    eventTypeIds: option<eventTypeIds>,
    @ocaml.doc("<p>The status of the notification rule. Valid statuses include enabled (sending notifications) or
      disabled (not sending notifications).</p>")
    @as("Status")
    status: option<notificationRuleStatus>,
    @ocaml.doc("<p>The name of the notification rule.</p>") @as("Name")
    name: option<notificationRuleName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule.</p>") @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "UpdateNotificationRuleCommand"
  let make = (~arn, ~detailType=?, ~targets=?, ~eventTypeIds=?, ~status=?, ~name=?, ()) =>
    new({
      detailType: detailType,
      targets: targets,
      eventTypeIds: eventTypeIds,
      status: status,
      name: name,
      arn: arn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTargets = {
  type t
  type request = {
    @ocaml.doc("<p>A non-negative integer used to limit the number of returned results. The maximum number of
      results that can be returned is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The filters to use to return information by service or resource type. Valid filters
            include target type, target address, and target status.</p>
         <note>
            <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
         </note>")
    @as("Filters")
    filters: option<listTargetsFilters>,
  }
  type response = {
    @ocaml.doc("<p>An enumeration token that can be used in a request to return the next batch of
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of notification rule targets. </p>") @as("Targets")
    targets: option<targetsBatch>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "ListTargetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNotificationRules = {
  type t
  type request = {
    @ocaml.doc("<p>A non-negative integer used to limit the number of returned results. The maximum number of
      results that can be returned is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The filters to use to return information by service or resource type. For valid values,
            see <a>ListNotificationRulesFilter</a>.</p>
         <note>
            <p>A filter with the same name can appear more than once when used with OR statements. Filters with different names should be applied with AND statements.</p>
         </note>")
    @as("Filters")
    filters: option<listNotificationRulesFilters>,
  }
  type response = {
    @ocaml.doc(
      "<p>The list of notification rules for the AWS account, by Amazon Resource Name (ARN) and ID. </p>"
    )
    @as("NotificationRules")
    notificationRules: option<notificationRuleBatch>,
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "ListNotificationRulesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventTypes = {
  type t
  type request = {
    @ocaml.doc("<p>A non-negative integer used to limit the number of returned results. The default number is 50. The maximum number of
      results that can be returned is 100.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The filters to use to return information by service or resource type.</p>")
    @as("Filters")
    filters: option<listEventTypesFilters>,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about each event, including service name, resource type, event ID, and event
      name.</p>")
    @as("EventTypes")
    eventTypes: option<eventTypeBatch>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "ListEventTypesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeNotificationRule = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule.</p>") @as("Arn")
    arn: notificationRuleArn,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with the notification rule.</p>") @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>The date and time the notification rule was most recently updated, in timestamp
            format.</p>")
    @as("LastModifiedTimestamp")
    lastModifiedTimestamp: option<lastModifiedTimestamp>,
    @ocaml.doc("<p>The date and time the notification rule was created, in timestamp format.</p>")
    @as("CreatedTimestamp")
    createdTimestamp: option<createdTimestamp>,
    @ocaml.doc("<p>The status of the notification rule. Valid statuses are on (sending notifications) or off
      (not sending notifications).</p>")
    @as("Status")
    status: option<notificationRuleStatus>,
    @ocaml.doc("<p>The name or email alias of the person who created the notification rule.</p>")
    @as("CreatedBy")
    createdBy: option<notificationRuleCreatedBy>,
    @ocaml.doc("<p>The level of detail included in the notifications for this resource. BASIC will include only the 
            contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
            provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>")
    @as("DetailType")
    detailType: option<detailType>,
    @ocaml.doc("<p>A list of the SNS topics associated with the notification rule.</p>")
    @as("Targets")
    targets: option<targetsBatch>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource associated with the notification
      rule.</p>")
    @as("Resource")
    resource: option<notificationRuleResource>,
    @ocaml.doc("<p>A list of the event types associated with the notification rule.</p>")
    @as("EventTypes")
    eventTypes: option<eventTypeBatch>,
    @ocaml.doc("<p>The name of the notification rule.</p>") @as("Name")
    name: option<notificationRuleName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule.</p>") @as("Arn")
    arn: notificationRuleArn,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "DescribeNotificationRuleCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNotificationRule = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the notification rule. The default value is ENABLED. If the status is
            set to DISABLED, notifications aren't sent for the notification rule.</p>")
    @as("Status")
    status: option<notificationRuleStatus>,
    @ocaml.doc(
      "<p>A list of tags to apply to this notification rule. Key names cannot start with \"aws\". </p>"
    )
    @as("Tags")
    tags: option<tags>,
    @ocaml.doc("<p>A unique, client-generated idempotency token that, when provided in a request, ensures
            the request cannot be repeated with a changed parameter. If a request with the same
            parameters is received and a token is included, the request returns information about
            the initial request that used that token.</p>
        <note>
            <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an
                idempotency token is created for you.</p>
        </note>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The level of detail to include in the notifications for this resource. BASIC will include only the 
        contents of the event as it would appear in AWS CloudWatch. FULL will include any supplemental information
        provided by AWS CodeStar Notifications and/or the service for the resource for which the notification is created.</p>")
    @as("DetailType")
    detailType: detailType,
    @ocaml.doc("<p>A list of Amazon Resource Names (ARNs) of SNS topics to associate with the
      notification rule.</p>")
    @as("Targets")
    targets: targets,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource to associate with the notification rule. Supported resources include pipelines in AWS CodePipeline,
      repositories in AWS CodeCommit, and build projects in AWS CodeBuild.</p>")
    @as("Resource")
    resource: notificationRuleResource,
    @ocaml.doc("<p>A list of event types associated with this notification rule. For a list of allowed
            events, see <a>EventTypeSummary</a>.</p>")
    @as("EventTypeIds")
    eventTypeIds: eventTypeIds,
    @ocaml.doc("<p>The name for the notification rule. Notifictaion rule names must be unique in your AWS
            account.</p>")
    @as("Name")
    name: notificationRuleName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the notification rule.</p>") @as("Arn")
    arn: option<notificationRuleArn>,
  }
  @module("@aws-sdk/client-codestar-notifications") @new
  external new: request => t = "CreateNotificationRuleCommand"
  let make = (
    ~detailType,
    ~targets,
    ~resource,
    ~eventTypeIds,
    ~name,
    ~status=?,
    ~tags=?,
    ~clientRequestToken=?,
    (),
  ) =>
    new({
      status: status,
      tags: tags,
      clientRequestToken: clientRequestToken,
      detailType: detailType,
      targets: targets,
      resource: resource,
      eventTypeIds: eventTypeIds,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
