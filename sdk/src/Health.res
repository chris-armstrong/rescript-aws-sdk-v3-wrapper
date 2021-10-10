type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-health") @new
external createClient: unit => awsServiceClient = "HealthClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
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
type eventTypeCategory = [
  | @as("investigation") #Investigation
  | @as("scheduledChange") #ScheduledChange
  | @as("accountNotification") #AccountNotification
  | @as("issue") #Issue
]
type eventStatusCode = [@as("upcoming") #Upcoming | @as("closed") #Closed | @as("open") #Open]
type eventScopeCode = [
  | @as("NONE") #NONE
  | @as("ACCOUNT_SPECIFIC") #ACCOUNT_SPECIFIC
  | @as("PUBLIC") #PUBLIC
]
type eventArn = string
type eventAggregateField = [@as("eventTypeCategory") #EventTypeCategory]
type entityValue = string
type entityUrl = string
type entityStatusCode = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("UNIMPAIRED") #UNIMPAIRED
  | @as("IMPAIRED") #IMPAIRED
]
type entityArn = string
type count = int
type availabilityZone = string
type aggregateValue = string
type accountId = string
type eventType2 = string
type eventDescription2 = string
type tagSet = Js.Dict.t<tagValue>
type serviceList = array<service>
type regionList = array<region>
type eventTypeList2 = array<eventType2>
type eventTypeCategoryList2 = array<eventTypeCategory>
type eventStatusCodeList = array<eventStatusCode>
type eventMetadata = Js.Dict.t<metadataValue>
type eventArnList = array<eventArn>
type entityValueList = array<entityValue>
type entityStatusCodeList = array<entityStatusCode>
type entityArnList = array<entityArn>
type awsAccountIdsList = array<accountId>
type availabilityZones = array<availabilityZone>
type affectedAccountsList = array<accountId>
@ocaml.doc("<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> operation can't find a specified
         event.</p>")
type organizationEventDetailsErrorItem = {
  @ocaml.doc("<p>A message that describes the error.</p>
         <p>If you call the <code>DescribeEventDetailsForOrganization</code>
operation and receive one of the following errors, follow the recommendations in the message:</p> 
         <ul>
            <li>
               <p>We couldn't find a public event that matches your request. To find an event that is account specific, you must enter an AWS account ID in the request.</p>
            </li>
            <li>
               <p>We couldn't find an account specific event for the specified AWS account. To find an event that is public, you must enter a null value for the AWS account ID in the request.</p>
            </li>
            <li>
               <p>Your AWS account doesn't include the AWS Support plan required to use the AWS Health API. You must have either a Business or Enterprise Support plan.</p>
            </li>
         </ul>")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The name of the error.</p>") errorName: option<string_>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  eventArn: option<eventArn>,
  @ocaml.doc("<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> operation can't find a specified
         event.</p>")
  awsAccountId: option<accountId>,
}
@ocaml.doc(
  "<p>Summary information about an event, returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html\">DescribeEventsForOrganization</a> operation.</p>"
)
type organizationEvent = {
  @ocaml.doc("<p>The most recent status of the event. Possible values are <code>open</code>,
            <code>closed</code>, and <code>upcoming</code>.</p>")
  statusCode: option<eventStatusCode>,
  @ocaml.doc("<p>The most recent date and time that the event was updated.</p>")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the event ended.</p>") endTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the event began.</p>") startTime: option<timestamp_>,
  @ocaml.doc("<p>The AWS Region name of the event.</p>") region: option<region>,
  @ocaml.doc("<p>This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.</p>
         <ul>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the
                  <code>affectedAccounts</code> value is always empty.</p>
            </li>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then
               the <code>affectedAccounts</code> value lists the affected AWS accounts in your
               organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you
               have AWS accounts that use that service, those account IDs appear in the
               response.</p>
            </li>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the
                  <code>eventArn</code> that you specified in the request is invalid or doesn't
               exist.</p>
            </li>
         </ul>")
  eventScopeCode: option<eventScopeCode>,
  @ocaml.doc("<p>The category of the event type.</p>") eventTypeCategory: option<eventTypeCategory>,
  @ocaml.doc("<p>The unique identifier for the event type. The format is
            <code>AWS_SERVICE_DESCRIPTION</code>. For example,
            <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>")
  eventTypeCode: option<eventTypeCode>,
  @ocaml.doc("<p>The AWS service that is affected by the event, such as EC2 and RDS.</p>")
  service: option<service>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  arn: option<eventArn>,
}
@ocaml.doc("<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html\">DescribeAffectedEntitiesForOrganization</a> operation can't find or process a
         specific entity.</p>")
type organizationAffectedEntitiesErrorItem = {
  @ocaml.doc("<p>The unique identifier for the event type. The format is
            <code>AWS_SERVICE_DESCRIPTION</code>. For example,
            <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>")
  errorMessage: option<string_>,
  @ocaml.doc("<p>The name of the error.</p>") errorName: option<string_>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  eventArn: option<eventArn>,
  @ocaml.doc("<p>The 12-digit AWS account numbers that contains the affected entities.</p>")
  awsAccountId: option<accountId>,
}
type eventTypeCodeList = array<eventTypeCode>
type eventTypeCategoryList = array<eventTypeCategory>
@ocaml.doc("<p>Contains the metadata about a type of event that is reported by AWS Health. The
            <code>EventType</code> shows the category, service, and the event type code of the
         event. For example, an <code>issue</code> might be the category, <code>EC2</code> the
         service, and <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code> the event type code.</p>
         <p>You can use the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html\">DescribeEventTypes</a> API operation to return this information
         about an event.</p>
         <p>You can also use the Amazon CloudWatch Events console to create a rule so that you can get notified or
         take action when AWS Health delivers a specific event to your AWS account. For more
         information, see <a href=\"https://docs.aws.amazon.com/health/latest/ug/cloudwatch-events-health.html\">Monitor for AWS Health events with Amazon CloudWatch Events</a> in the
            <i>AWS Health User Guide</i>.</p>")
type eventType = {
  @ocaml.doc("<p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>,
         or <code>accountNotification</code>).</p>")
  category: option<eventTypeCategory>,
  @ocaml.doc("<p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i>
            </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>")
  code: option<eventTypeCode>,
  @ocaml.doc(
    "<p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
  )
  service: option<service>,
}
@ocaml.doc(
  "<p>Error information returned when a <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html\">DescribeEventDetails</a> operation can't find a specified event.</p>"
)
type eventDetailsErrorItem = {
  @ocaml.doc("<p>A message that describes the error.</p>") errorMessage: option<string_>,
  @ocaml.doc("<p>The name of the error.</p>") errorName: option<string_>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  eventArn: option<eventArn>,
}
@ocaml.doc("<p>The detailed description of the event. Included in the information returned by the
            <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html\">DescribeEventDetails</a> operation.</p>")
type eventDescription = {
  @ocaml.doc("<p>The most recent description of the event.</p>")
  latestDescription: option<eventDescription2>,
}
type eventArnsList = array<eventArn>
@ocaml.doc(
  "<p>The number of events of each issue type. Returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html\">DescribeEventAggregates</a> operation.</p>"
)
type eventAggregate = {
  @ocaml.doc("<p>The number of events of the associated issue type.</p>") count: option<count>,
  @ocaml.doc("<p>The issue type for the associated count.</p>")
  aggregateValue: option<aggregateValue>,
}
@ocaml.doc(
  "<p>The values used to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> and <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html\">DescribeAffectedEntitiesForOrganization</a> operations.</p>"
)
type eventAccountFilter = {
  @ocaml.doc("<p>The 12-digit AWS account numbers that contains the affected entities.</p>")
  awsAccountId: option<accountId>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  eventArn: eventArn,
}
@ocaml.doc("<p>Summary information about an AWS Health event.</p>
         <p>AWS Health events can be public or account-specific:</p>
         <ul>
            <li>
               <p>
                  <i>Public events</i> might be service events that are not specific
               to an AWS account. For example, if there is an issue with an AWS Region,
               AWS Health provides information about the event, even if you don't use services or
               resources in that Region.</p>
            </li>
            <li>
               <p>
                  <i>Account-specific</i> events are specific to either your AWS
               account or an account in your organization. For example, if there's an issue with
               Amazon Elastic Compute Cloud in a Region that you use, AWS Health provides information about the event
               and the affected resources in the account.</p>
            </li>
         </ul>
         <p>You can determine if an event is public or account-specific by using the
            <code>eventScopeCode</code> parameter. For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode\">eventScopeCode</a>.</p>")
type event = {
  @ocaml.doc("<p>This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.</p>
         <ul>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the
                  <code>affectedAccounts</code> value is always empty.</p>
            </li>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then
               the <code>affectedAccounts</code> value lists the affected AWS accounts in your
               organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you
               have AWS accounts that use that service, those account IDs appear in the
               response.</p>
            </li>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the
                  <code>eventArn</code> that you specified in the request is invalid or doesn't
               exist.</p>
            </li>
         </ul>")
  eventScopeCode: option<eventScopeCode>,
  @ocaml.doc("<p>The most recent status of the event. Possible values are <code>open</code>,
            <code>closed</code>, and <code>upcoming</code>.</p>")
  statusCode: option<eventStatusCode>,
  @ocaml.doc("<p>The most recent date and time that the event was updated.</p>")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the event ended.</p>") endTime: option<timestamp_>,
  @ocaml.doc("<p>The date and time that the event began.</p>") startTime: option<timestamp_>,
  @ocaml.doc("<p>The AWS Availability Zone of the event. For example, us-east-1a.</p>")
  availabilityZone: option<availabilityZone>,
  @ocaml.doc("<p>The AWS Region name of the event.</p>") region: option<region>,
  @ocaml.doc("<p>The category of the event. Possible values are <code>issue</code>,
            <code>scheduledChange</code>, and <code>accountNotification</code>.</p>")
  eventTypeCategory: option<eventTypeCategory>,
  @ocaml.doc("<p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i>
            </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>")
  eventTypeCode: option<eventTypeCode>,
  @ocaml.doc(
    "<p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
  )
  service: option<service>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  arn: option<eventArn>,
}
@ocaml.doc(
  "<p>The number of entities that are affected by one or more events. Returned by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEntityAggregates.html\">DescribeEntityAggregates</a> operation.</p>"
)
type entityAggregate = {
  @ocaml.doc("<p>The number of entities that match the criteria for the specified events.</p>")
  count: option<count>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  eventArn: option<eventArn>,
}
@ocaml.doc("<p>A range of dates and times that is used by the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EventFilter.html\">EventFilter</a> and <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html\">EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set:
         match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or
            <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code>
         inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where
         the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set
         and <code>to</code> is set: match items where the timestamp value is equal to or before
            <code>to</code>.</p>")
type dateTimeRange = {
  @ocaml.doc("<p>The ending date and time of a time range.</p>") to: option<timestamp_>,
  @ocaml.doc("<p>The starting date and time of a time range.</p>") from: option<timestamp_>,
}
type tagFilter = array<tagSet>
type dateTimeRangeList = array<dateTimeRange>
type organizationEventList = array<organizationEvent>
@ocaml.doc(
  "<p>The values to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventsForOrganization.html\">DescribeEventsForOrganization</a> operation.</p>"
)
type organizationEventFilter = {
  @ocaml.doc("<p>A list of event status codes.</p>") eventStatusCodes: option<eventStatusCodeList>,
  @ocaml.doc(
    "<p>A list of event type category codes (issue, scheduledChange, or accountNotification).</p>"
  )
  eventTypeCategories: option<eventTypeCategoryList2>,
  @ocaml.doc(
    "<p>A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or EBS volumes (vol-426ab23e).</p>"
  )
  entityValues: option<entityValueList>,
  @ocaml.doc("<p>A list of entity ARNs (unique identifiers).</p>")
  entityArns: option<entityArnList>,
  lastUpdatedTime: option<dateTimeRange>,
  endTime: option<dateTimeRange>,
  startTime: option<dateTimeRange>,
  @ocaml.doc("<p>A list of AWS Regions.</p>") regions: option<regionList>,
  @ocaml.doc(
    "<p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
  )
  services: option<serviceList>,
  @ocaml.doc("<p>A list of 12-digit AWS account numbers that contains the affected entities.</p>")
  awsAccountIds: option<awsAccountIdsList>,
  @ocaml.doc("<p>A list of unique identifiers for event types. For example, <code>\"AWS_EC2_SYSTEM_MAINTENANCE_EVENT\",\"AWS_RDS_MAINTENANCE_SCHEDULED\".</code>
         </p>")
  eventTypeCodes: option<eventTypeList2>,
}
@ocaml.doc("<p>Detailed information about an event. A combination of an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a> object, an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html\">EventDescription</a> object, and additional metadata about the event. Returned by
         the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html\">DescribeEventDetailsForOrganization</a> operation.</p>")
type organizationEventDetails = {
  @ocaml.doc("<p>Additional metadata about the event.</p>") eventMetadata: option<eventMetadata>,
  eventDescription: option<eventDescription>,
  event: option<event>,
  @ocaml.doc("<p>The 12-digit AWS account numbers that contains the affected entities.</p>")
  awsAccountId: option<accountId>,
}
type organizationEventDetailFiltersList = array<eventAccountFilter>
type organizationEntityFiltersList = array<eventAccountFilter>
type eventTypeList = array<eventType>
@ocaml.doc("<p>The values to use to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventTypes.html\">DescribeEventTypes</a>
         operation.</p>")
type eventTypeFilter = {
  @ocaml.doc("<p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>,
         or <code>accountNotification</code>).</p>")
  eventTypeCategories: option<eventTypeCategoryList>,
  @ocaml.doc(
    "<p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
  )
  services: option<serviceList>,
  @ocaml.doc("<p>A list of event type codes.</p>") eventTypeCodes: option<eventTypeCodeList>,
}
type eventList = array<event>
@ocaml.doc("<p>Detailed information about an event. A combination of an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html\">Event</a> object, an <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EventDescription.html\">EventDescription</a> object, and additional metadata about the event. Returned by
         the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetails.html\">DescribeEventDetails</a> operation.</p>")
type eventDetails = {
  @ocaml.doc("<p>Additional metadata about the event.</p>") eventMetadata: option<eventMetadata>,
  @ocaml.doc("<p>The most recent description of the event.</p>")
  eventDescription: option<eventDescription>,
  @ocaml.doc("<p>Summary information about the event.</p>") event: option<event>,
}
type eventAggregateList = array<eventAggregate>
type entityAggregateList = array<entityAggregate>
type describeEventDetailsForOrganizationFailedSet = array<organizationEventDetailsErrorItem>
type describeEventDetailsFailedSet = array<eventDetailsErrorItem>
type describeAffectedEntitiesForOrganizationFailedSet = array<organizationAffectedEntitiesErrorItem>
@ocaml.doc("<p>Information about an entity that is affected by a Health event.</p>")
type affectedEntity = {
  @ocaml.doc("<p>A map of entity tags attached to the affected entity.</p>
         <note>
            <p>Currently, the <code>tags</code> property isn't supported.</p>
         </note>")
  tags: option<tagSet>,
  @ocaml.doc("<p>The most recent status of the entity affected by the event. The possible values are
            <code>IMPAIRED</code>, <code>UNIMPAIRED</code>, and <code>UNKNOWN</code>.</p>")
  statusCode: option<entityStatusCode>,
  @ocaml.doc("<p>The most recent time that the entity was updated.</p>")
  lastUpdatedTime: option<timestamp_>,
  @ocaml.doc("<p>The 12-digit AWS account number that contains the affected entity.</p>")
  awsAccountId: option<accountId>,
  @ocaml.doc("<p>The URL of the affected entity.</p>") entityUrl: option<entityUrl>,
  @ocaml.doc("<p>The ID of the affected entity.</p>") entityValue: option<entityValue>,
  @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
  eventArn: option<eventArn>,
  @ocaml.doc("<p>The unique identifier for the entity. Format: <code>arn:aws:health:<i>entity-region</i>:<i>aws-account</i>:entity/<i>entity-id</i>
            </code>. Example: <code>arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K</code>
         </p>")
  entityArn: option<entityArn>,
}
@ocaml.doc("<p>The values to use to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEvents.html\">DescribeEvents</a> and
            <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventAggregates.html\">DescribeEventAggregates</a> operations.</p>")
type eventFilter = {
  @ocaml.doc("<p>A list of event status codes.</p>") eventStatusCodes: option<eventStatusCodeList>,
  @ocaml.doc("<p>A map of entity tags attached to the affected entity.</p>
         <note>
            <p>Currently, the <code>tags</code> property isn't supported.</p>
         </note>")
  tags: option<tagFilter>,
  @ocaml.doc("<p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>,
         or <code>accountNotification</code>).</p>")
  eventTypeCategories: option<eventTypeCategoryList2>,
  @ocaml.doc("<p>A list of entity identifiers, such as EC2 instance IDs (<code>i-34ab692e</code>) or EBS
         volumes (<code>vol-426ab23e</code>).</p>")
  entityValues: option<entityValueList>,
  @ocaml.doc("<p>A list of entity ARNs (unique identifiers).</p>")
  entityArns: option<entityArnList>,
  @ocaml.doc("<p>A list of dates and times that the event was last updated.</p>")
  lastUpdatedTimes: option<dateTimeRangeList>,
  @ocaml.doc("<p>A list of dates and times that the event ended.</p>")
  endTimes: option<dateTimeRangeList>,
  @ocaml.doc("<p>A list of dates and times that the event began.</p>")
  startTimes: option<dateTimeRangeList>,
  @ocaml.doc("<p>A list of AWS Availability Zones.</p>")
  availabilityZones: option<availabilityZones>,
  @ocaml.doc("<p>A list of AWS Regions.</p>") regions: option<regionList>,
  @ocaml.doc(
    "<p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>"
  )
  services: option<serviceList>,
  @ocaml.doc("<p>A list of unique identifiers for event types. For example, <code>\"AWS_EC2_SYSTEM_MAINTENANCE_EVENT\",\"AWS_RDS_MAINTENANCE_SCHEDULED\".</code>
         </p>")
  eventTypeCodes: option<eventTypeList2>,
  @ocaml.doc("<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code>
         </p>")
  eventArns: option<eventArnList>,
}
type entityList = array<affectedEntity>
@ocaml.doc("<p>The values to use to filter results from the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html\">EntityFilter</a>
         operation.</p>")
type entityFilter = {
  @ocaml.doc("<p>A list of entity status codes (<code>IMPAIRED</code>, <code>UNIMPAIRED</code>, or
            <code>UNKNOWN</code>).</p>")
  statusCodes: option<entityStatusCodeList>,
  @ocaml.doc("<p>A map of entity tags attached to the affected entity.</p>
         <note>
            <p>Currently, the <code>tags</code> property isn't supported.</p>
         </note>")
  tags: option<tagFilter>,
  @ocaml.doc("<p>A list of the most recent dates and times that the entity was updated.</p>")
  lastUpdatedTimes: option<dateTimeRangeList>,
  @ocaml.doc("<p>A list of IDs for affected entities.</p>") entityValues: option<entityValueList>,
  @ocaml.doc("<p>A list of entity ARNs (unique identifiers).</p>")
  entityArns: option<entityArnList>,
  @ocaml.doc("<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code>
         </p>")
  eventArns: eventArnList,
}
type describeEventDetailsSuccessfulSet = array<eventDetails>
type describeEventDetailsForOrganizationSuccessfulSet = array<organizationEventDetails>
@ocaml.doc("<fullname>AWS Health</fullname>
      
         <p>The AWS Health API provides programmatic access to the AWS Health information that
         appears in the <a href=\"https://phd.aws.amazon.com/phd/home#/\">AWS Personal Health Dashboard</a>. You
         can use the API operations to get information about AWS Health events that affect your
         AWS services and resources.</p>
         <note>
            <ul>
               <li>
                  <p>You must have a Business or Enterprise Support plan from <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a> to use the
                  AWS Health API. If you call the AWS Health API from an AWS account that
                  doesn't have a Business or Enterprise Support plan, you receive a
                     <code>SubscriptionRequiredException</code> error.</p>
               </li>
               <li>
                  <p>You can use the AWS Health endpoint health.us-east-1.amazonaws.com (HTTPS) to
                  call the AWS Health API operations. AWS Health supports a multi-Region
                  application architecture and has two regional endpoints in an active-passive
                  configuration. You can use the high availability endpoint example to determine
                  which AWS Region is active, so that you can get the latest information from the
                  API. For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/ug/health-api.html\">Accessing the AWS Health API</a> in the
                     <i>AWS Health User Guide</i>.</p>
               </li>
            </ul>
         </note>
         <p>For authentication of requests, AWS Health uses the <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing
            Process</a>.</p>
         <p>If your AWS account is part of AWS Organizations, you can use the AWS Health organizational
         view feature. This feature provides a centralized view of AWS Health events across all
         accounts in your organization. You can aggregate AWS Health events in real time to
         identify accounts in your organization that are affected by an operational event or get
         notified of security vulnerabilities. Use the organizational view API operations to enable
         this feature and return event information. For more information, see <a href=\"https://docs.aws.amazon.com/health/latest/ug/aggregate-events.html\">Aggregating
            AWS Health events</a> in the <i>AWS Health User Guide</i>.</p>
         <note>
            <p>When you use the AWS Health API operations to return AWS Health events, see the
            following recommendations:</p>
            <ul>
               <li>
                  <p>Use the <a href=\"https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html#AWSHealth-Type-Event-eventScopeCode\">eventScopeCode</a> parameter to specify whether to return AWS Health
                  events that are public or account-specific.</p>
               </li>
               <li>
                  <p>Use pagination to view all events from the response. For example, if you call
                  the <code>DescribeEventsForOrganization</code> operation to get all events in your
                  organization, you might receive several page results. Specify the
                     <code>nextToken</code> in the next request to return more results.</p>
               </li>
            </ul>
         </note>")
module EnableHealthServiceAccessForOrganization = {
  type t

  @module("@aws-sdk/client-health") @new
  external new: unit => t = "EnableHealthServiceAccessForOrganizationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableHealthServiceAccessForOrganization = {
  type t

  @module("@aws-sdk/client-health") @new
  external new: unit => t = "DisableHealthServiceAccessForOrganizationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeHealthServiceStatusForOrganization = {
  type t

  type response = {
    @ocaml.doc("<p>Information about the status of enabling or disabling AWS Health Organizational View in
         your organization.</p>
         <p>Valid values are <code>ENABLED | DISABLED | PENDING</code>. </p>")
    healthServiceAccessStatusForOrganization: option<healthServiceAccessStatusForOrganization>,
  }
  @module("@aws-sdk/client-health") @new
  external new: unit => t = "DescribeHealthServiceStatusForOrganizationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAffectedAccountsForOrganization = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The unique identifier for the event. The event ARN has the
<code>arn:aws:health:<i>event-region</i>::event/<i>SERVICE</i>/<i>EVENT_TYPE_CODE</i>/<i>EVENT_TYPE_PLUS_ID</i>
            </code>
format.</p>
         <p>For example, an event ARN might look like the following:</p>
         <p>
            <code>arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-DEF456</code>
         </p>")
    eventArn: eventArn,
  }
  type response = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>This parameter specifies if the AWS Health event is a public AWS service event or an account-specific event.</p>
         <ul>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>PUBLIC</code>, then the
                  <code>affectedAccounts</code> value is always empty.</p>
            </li>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>ACCOUNT_SPECIFIC</code>, then
               the <code>affectedAccounts</code> value lists the affected AWS accounts in your
               organization. For example, if an event affects a service such as Amazon Elastic Compute Cloud and you
               have AWS accounts that use that service, those account IDs appear in the
               response.</p>
            </li>
            <li>
               <p>If the <code>eventScopeCode</code> value is <code>NONE</code>, then the
                  <code>eventArn</code> that you specified in the request is invalid or doesn't
               exist.</p>
            </li>
         </ul>")
    eventScopeCode: option<eventScopeCode>,
    @ocaml.doc("<p>A JSON set of elements of the affected accounts.</p>")
    affectedAccounts: option<affectedAccountsList>,
  }
  @module("@aws-sdk/client-health") @new
  external new: request => t = "DescribeAffectedAccountsForOrganizationCommand"
  let make = (~eventArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, eventArn: eventArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventsForOrganization = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
    )
    locale: option<locale>,
    @ocaml.doc(
      "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Values to narrow the results returned.</p>")
    filter: option<organizationEventFilter>,
  }
  type response = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The events that match the specified filter criteria.</p>")
    events: option<organizationEventList>,
  }
  @module("@aws-sdk/client-health") @new
  external new: request => t = "DescribeEventsForOrganizationCommand"
  let make = (~locale=?, ~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({locale: locale, maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventTypes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
    )
    locale: option<locale>,
    @ocaml.doc("<p>Values to narrow the results returned.</p>") filter: option<eventTypeFilter>,
  }
  type response = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of event types that match the filter criteria. Event types have a category
            (<code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>),
         a service (for example, <code>EC2</code>, <code>RDS</code>, <code>DATAPIPELINE</code>,
            <code>BILLING</code>), and a code (in the format
               <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i>
            </code>; for
         example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>")
    eventTypes: option<eventTypeList>,
  }
  @module("@aws-sdk/client-health") @new external new: request => t = "DescribeEventTypesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~locale=?, ~filter=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, locale: locale, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEntityAggregates = {
  type t
  type request = {
    @ocaml.doc("<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code>
         </p>")
    eventArns: option<eventArnsList>,
  }
  type response = {
    @ocaml.doc("<p>The number of entities that are affected by each of the specified events.</p>")
    entityAggregates: option<entityAggregateList>,
  }
  @module("@aws-sdk/client-health") @new
  external new: request => t = "DescribeEntityAggregatesCommand"
  let make = (~eventArns=?, ()) => new({eventArns: eventArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEvents = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
    )
    locale: option<locale>,
    @ocaml.doc(
      "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Values to narrow the results returned.</p>") filter: option<eventFilter>,
  }
  type response = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The events that match the specified filter criteria.</p>")
    events: option<eventList>,
  }
  @module("@aws-sdk/client-health") @new external new: request => t = "DescribeEventsCommand"
  let make = (~locale=?, ~maxResults=?, ~nextToken=?, ~filter=?, ()) =>
    new({locale: locale, maxResults: maxResults, nextToken: nextToken, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventDetailsForOrganization = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
    )
    locale: option<locale>,
    @ocaml.doc("<p>A set of JSON elements that includes the <code>awsAccountId</code> and the
            <code>eventArn</code>.</p>")
    organizationEventDetailFilters: organizationEventDetailFiltersList,
  }
  type response = {
    @ocaml.doc("<p>Error messages for any events that could not be retrieved.</p>")
    failedSet: option<describeEventDetailsForOrganizationFailedSet>,
    @ocaml.doc("<p>Information about the events that could be retrieved.</p>")
    successfulSet: option<describeEventDetailsForOrganizationSuccessfulSet>,
  }
  @module("@aws-sdk/client-health") @new
  external new: request => t = "DescribeEventDetailsForOrganizationCommand"
  let make = (~organizationEventDetailFilters, ~locale=?, ()) =>
    new({locale: locale, organizationEventDetailFilters: organizationEventDetailFilters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventDetails = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
    )
    locale: option<locale>,
    @ocaml.doc("<p>A list of event ARNs (unique identifiers). For example: <code>\"arn:aws:health:us-east-1::event/EC2/EC2_INSTANCE_RETIREMENT_SCHEDULED/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event/EBS/AWS_EBS_LOST_VOLUME/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"</code>
         </p>")
    eventArns: eventArnList,
  }
  type response = {
    @ocaml.doc("<p>Error messages for any events that could not be retrieved.</p>")
    failedSet: option<describeEventDetailsFailedSet>,
    @ocaml.doc("<p>Information about the events that could be retrieved.</p>")
    successfulSet: option<describeEventDetailsSuccessfulSet>,
  }
  @module("@aws-sdk/client-health") @new external new: request => t = "DescribeEventDetailsCommand"
  let make = (~eventArns, ~locale=?, ()) => new({locale: locale, eventArns: eventArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEventAggregates = {
  type t
  type request = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The only currently supported value is <code>eventTypeCategory</code>.</p>")
    aggregateField: eventAggregateField,
    @ocaml.doc("<p>Values to narrow the results returned.</p>") filter: option<eventFilter>,
  }
  type response = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The number of events in each category that meet the optional filter criteria.</p>"
    )
    eventAggregates: option<eventAggregateList>,
  }
  @module("@aws-sdk/client-health") @new
  external new: request => t = "DescribeEventAggregatesCommand"
  let make = (~aggregateField, ~nextToken=?, ~maxResults=?, ~filter=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      aggregateField: aggregateField,
      filter: filter,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAffectedEntitiesForOrganization = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
    )
    locale: option<locale>,
    @ocaml.doc("<p>A JSON set of elements including the <code>awsAccountId</code> and the
            <code>eventArn</code>.</p>")
    organizationEntityFilters: organizationEntityFiltersList,
  }
  type response = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A JSON set of elements of the failed response, including the <code>awsAccountId</code>,
            <code>errorMessage</code>, <code>errorName</code>, and <code>eventArn</code>.</p>")
    failedSet: option<describeAffectedEntitiesForOrganizationFailedSet>,
    @ocaml.doc("<p>A JSON set of elements including the <code>awsAccountId</code> and its
            <code>entityArn</code>, <code>entityValue</code> and its <code>entityArn</code>,
            <code>lastUpdatedTime</code>, and <code>statusCode</code>.</p>")
    entities: option<entityList>,
  }
  @module("@aws-sdk/client-health") @new
  external new: request => t = "DescribeAffectedEntitiesForOrganizationCommand"
  let make = (~organizationEntityFilters, ~maxResults=?, ~nextToken=?, ~locale=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      locale: locale,
      organizationEntityFilters: organizationEntityFilters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAffectedEntities = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>"
    )
    locale: option<locale>,
    @ocaml.doc("<p>Values to narrow the results returned. At least one event ARN is required.</p>")
    filter: entityFilter,
  }
  type response = {
    @ocaml.doc("<p>If the results of a search are large, only a portion of the
results are returned, and a <code>nextToken</code> pagination token is returned in the response. To
retrieve the next batch of results, reissue the search request and include the returned token.
When all results have been returned, the response does not contain a pagination token value.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The entities that match the filter criteria.</p>") entities: option<entityList>,
  }
  @module("@aws-sdk/client-health") @new
  external new: request => t = "DescribeAffectedEntitiesCommand"
  let make = (~filter, ~maxResults=?, ~nextToken=?, ~locale=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, locale: locale, filter: filter})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
