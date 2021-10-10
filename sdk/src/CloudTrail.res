type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cloudtrail") @new
external createClient: unit => awsServiceClient = "CloudTrailClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type string_ = string
type selectorName = string
type selectorField = string
type readWriteType = [@as("All") #All | @as("WriteOnly") #WriteOnly | @as("ReadOnly") #ReadOnly]
type operatorValue = string
type nextToken = string
type maxResults = int
type lookupAttributeKey = [
  | @as("AccessKeyId") #AccessKeyId
  | @as("EventSource") #EventSource
  | @as("ResourceName") #ResourceName
  | @as("ResourceType") #ResourceType
  | @as("Username") #Username
  | @as("ReadOnly") #ReadOnly
  | @as("EventName") #EventName
  | @as("EventId") #EventId
]
type insightType = [@as("ApiCallRateInsight") #ApiCallRateInsight]
type eventCategory = [@as("insight") #Insight]
type errorMessage = string
type date = Js.Date.t
type byteBuffer = NodeJs.Buffer.t
type boolean_ = bool
type trailNameList = array<string_>
@ocaml.doc(
  "<p>Information about a CloudTrail trail, including the trail's name, home region, and Amazon Resource Name (ARN).</p>"
)
type trailInfo = {
  @ocaml.doc("<p>The AWS region in which a trail was created.</p>") @as("HomeRegion")
  homeRegion: option<string_>,
  @ocaml.doc("<p>The name of a trail.</p>") @as("Name") name: option<string_>,
  @ocaml.doc("<p>The ARN of a trail.</p>") @as("TrailARN") trailARN: option<string_>,
}
@ocaml.doc("<p>The settings for a trail.</p>")
type trail = {
  @ocaml.doc("<p>Specifies whether the trail is an organization trail.</p>")
  @as("IsOrganizationTrail")
  isOrganizationTrail: option<boolean_>,
  @ocaml.doc(
    "<p>Specifies whether a trail has insight types specified in an <code>InsightSelector</code> list.</p>"
  )
  @as("HasInsightSelectors")
  hasInsightSelectors: option<boolean_>,
  @ocaml.doc("<p>Specifies if the trail has custom event selectors.</p>")
  @as("HasCustomEventSelectors")
  hasCustomEventSelectors: option<boolean_>,
  @ocaml.doc("<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p>
         <p>
            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
         </p>")
  @as("KmsKeyId")
  kmsKeyId: option<string_>,
  @ocaml.doc(
    "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
  )
  @as("CloudWatchLogsRoleArn")
  cloudWatchLogsRoleArn: option<string_>,
  @ocaml.doc(
    "<p>Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.</p>"
  )
  @as("CloudWatchLogsLogGroupArn")
  cloudWatchLogsLogGroupArn: option<string_>,
  @ocaml.doc("<p>Specifies whether log file validation is enabled.</p>")
  @as("LogFileValidationEnabled")
  logFileValidationEnabled: option<boolean_>,
  @ocaml.doc("<p>Specifies the ARN of the trail. The format of a trail ARN is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
  @as("TrailARN")
  trailARN: option<string_>,
  @ocaml.doc("<p>The region in which the trail was created.</p>") @as("HomeRegion")
  homeRegion: option<string_>,
  @ocaml.doc(
    "<p>Specifies whether the trail exists only in one region or exists in all regions.</p>"
  )
  @as("IsMultiRegionTrail")
  isMultiRegionTrail: option<boolean_>,
  @ocaml.doc("<p>Set to <b>True</b> to include AWS API calls from AWS global services such as IAM.
         Otherwise, <b>False</b>.</p>")
  @as("IncludeGlobalServiceEvents")
  includeGlobalServiceEvents: option<boolean_>,
  @ocaml.doc("<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications
         when log files are delivered. The format of a topic ARN is:</p> 
         <p>
            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
         </p>")
  @as("SnsTopicARN")
  snsTopicARN: option<string_>,
  @ocaml.doc("<p>This field is no longer in use. Use SnsTopicARN.</p>") @as("SnsTopicName")
  snsTopicName: option<string_>,
  @ocaml.doc("<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
         for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>.The maximum length is 200 characters.</p>")
  @as("S3KeyPrefix")
  s3KeyPrefix: option<string_>,
  @ocaml.doc(
    "<p>Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html\">Amazon S3 Bucket Naming Requirements</a>.</p>"
  )
  @as("S3BucketName")
  s3BucketName: option<string_>,
  @ocaml.doc("<p>Name of the trail set by calling <a>CreateTrail</a>. The maximum length is 128
         characters.</p>")
  @as("Name")
  name: option<string_>,
}
@ocaml.doc("<p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>")
type tag = {
  @ocaml.doc(
    "<p>The value in a key-value pair of a tag. The value must be no longer than 256 Unicode characters.</p>"
  )
  @as("Value")
  value: option<string_>,
  @ocaml.doc(
    "<p>The key in a key-value pair. The key must be must be no longer than 128 Unicode characters. The key must be unique for the resource to which it applies.</p>"
  )
  @as("Key")
  key: string_,
}
type resourceIdList = array<string_>
@ocaml.doc("<p>Specifies the type and name of a resource referenced by an event.</p>")
type resource = {
  @ocaml.doc(
    "<p>The name of the resource referenced by the event returned. These are user-created names whose values will depend on the environment. For example, the resource name might be \"auto-scaling-test-group\" for an Auto Scaling Group or \"i-1234567\" for an EC2 Instance.</p>"
  )
  @as("ResourceName")
  resourceName: option<string_>,
  @ocaml.doc("<p>The type of a resource referenced by the event returned. When the resource type cannot be
         determined, null is returned. Some examples of resource types are: <b>Instance</b> for EC2,
            <b>Trail</b> for CloudTrail, <b>DBInstance</b> for RDS, and <b>AccessKey</b> for IAM.
         To learn more about how to look up and filter events by the resource types supported for a service, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html#filtering-cloudtrail-events\">Filtering CloudTrail Events</a>.</p>")
  @as("ResourceType")
  resourceType: option<string_>,
}
@ocaml.doc("<p>Contains information about a returned public key.</p>")
type publicKey = {
  @ocaml.doc("<p>The fingerprint of the public key.</p>") @as("Fingerprint")
  fingerprint: option<string_>,
  @ocaml.doc("<p>The ending time of validity of the public key.</p>") @as("ValidityEndTime")
  validityEndTime: option<date>,
  @ocaml.doc("<p>The starting time of validity of the public key.</p>") @as("ValidityStartTime")
  validityStartTime: option<date>,
  @ocaml.doc("<p>The DER encoded public key value in PKCS#1 format.</p>") @as("Value")
  value: option<byteBuffer>,
}
type operator = array<operatorValue>
@ocaml.doc("<p>Specifies an attribute and value that filter the events returned.</p>")
type lookupAttribute = {
  @ocaml.doc("<p>Specifies a value for the specified AttributeKey.</p>") @as("AttributeValue")
  attributeValue: string_,
  @ocaml.doc("<p>Specifies an attribute on which to filter the events returned.</p>")
  @as("AttributeKey")
  attributeKey: lookupAttributeKey,
}
@ocaml.doc("<p>A JSON string that contains a list of insight types that are logged on a trail.</p>")
type insightSelector = {
  @ocaml.doc(
    "<p>The type of insights to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
  )
  @as("InsightType")
  insightType: option<insightType>,
}
type excludeManagementEventSources = array<string_>
type dataResourceValues = array<string_>
type trails = array<trailInfo>
type trailList = array<trail>
@ocaml.doc("<p>A list of tags.</p>") type tagsList = array<tag>
@ocaml.doc("<p>A list of resources referenced by the event returned.</p>")
type resourceList = array<resource>
type publicKeyList = array<publicKey>
type lookupAttributesList = array<lookupAttribute>
type insightSelectors = array<insightSelector>
@ocaml.doc("<p>The Amazon S3 buckets or AWS Lambda functions that you specify in your event selectors for your trail to
         log data events. Data events provide information about the resource operations performed on or within a resource itself.
         These are also known as data plane operations. You can specify up to 250 data resources for a trail.</p>
         <note>
            <p>The total number of allowed data resources is 250. This number can be distributed between 1 and 5 event selectors, 
      but the total cannot exceed 250 across all selectors.</p>
            <p>If you are using advanced event selectors, the maximum total number of values for
            all conditions, across all advanced event selectors for the trail, is 500.</p>
         </note>
         <p>The following example demonstrates how logging works when you configure logging of all data events
      for an S3 bucket named <code>bucket-1</code>. In this example, the CloudTrail user specified an empty prefix, 
      and the option to log both <code>Read</code> and <code>Write</code> data events.</p>
         <ol>
            <li>
               <p>A user uploads an image file to <code>bucket-1</code>.</p>
            </li>
            <li>
               <p>The <code>PutObject</code> API operation is an Amazon S3 object-level API. 
            It is recorded as a data event in CloudTrail. Because the CloudTrail user specified an S3 bucket
            with an empty prefix, events that occur on any object in that bucket are logged. The trail processes and logs the
               event.</p>
            </li>
            <li>
               <p>A user uploads an object to an Amazon S3 bucket named
                  <code>arn:aws:s3:::bucket-2</code>.</p>
            </li>
            <li>
               <p>The <code>PutObject</code> API operation occurred for an object in an S3 bucket that the CloudTrail
            user didn't specify for the trail. The trail doesn’t log the event.</p>
            </li>
         </ol>
         <p>The following example demonstrates how logging works when you configure logging of AWS Lambda data events for a 
         Lambda function named <i>MyLambdaFunction</i>, but not for all AWS Lambda functions.</p>
         <ol>
            <li>
               <p>A user runs a script that includes a call to the <i>MyLambdaFunction</i> function and the
               <i>MyOtherLambdaFunction</i> function.</p>
            </li>
            <li>
               <p>The <code>Invoke</code> API operation on <i>MyLambdaFunction</i> is an AWS Lambda API. 
               It is recorded as a data event in CloudTrail. Because the CloudTrail user specified logging data events for
               <i>MyLambdaFunction</i>, any invocations of that function are logged. The trail processes and logs the event. </p>
            </li>
            <li>
               <p>The <code>Invoke</code> API operation on <i>MyOtherLambdaFunction</i> is an AWS Lambda API. 
               Because the CloudTrail user did not specify logging data events for all Lambda functions,
               the <code>Invoke</code> operation for <i>MyOtherLambdaFunction</i> does not match the function specified for the trail. 
               The trail doesn’t log the event. </p>
            </li>
         </ol>")
type dataResource = {
  @ocaml.doc("<p>An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.</p>
         <ul>
            <li>
               <p>To log data events for all objects in all S3 buckets in your AWS account, specify the 
         prefix as <code>arn:aws:s3:::</code>. </p>
               <note>
                  <p>This will also enable logging of data event activity performed by any user or role in your AWS account, 
         even if that activity is performed on a bucket that belongs to another AWS account. </p>
               </note>
            </li>
            <li>
               <p>To log data events for all objects in an S3 bucket, specify the bucket and an empty
         object prefix such as <code>arn:aws:s3:::bucket-1/</code>. The trail logs data events for
         all objects in this S3 bucket.</p>
            </li>
            <li>
               <p>To log data events for specific objects, specify the S3 bucket and object prefix such
         as <code>arn:aws:s3:::bucket-1/example-images</code>. The trail logs data events for
         objects in this S3 bucket that match the prefix.</p>
            </li>
            <li>
               <p>To log data events for all functions in your AWS account, specify the prefix as
      <code>arn:aws:lambda</code>.</p>
               <note>
                  <p>This will also enable logging of <code>Invoke</code> activity performed by any user or role in your AWS account, 
            even if that activity is performed on a function that belongs to another AWS account. </p>
               </note>
            </li>
            <li>
               <p>To log data events for a specific Lambda function, specify the function ARN.</p>
               <note>
                  <p>Lambda function ARNs are exact. For example, if you specify a 
            function ARN <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>, data events will
            only be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>. They will
            not be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld2</i>.</p>
               </note> 
            </li>
         </ul>")
  @as("Values")
  values: option<dataResourceValues>,
  @ocaml.doc("<p>The resource type in which you want to log data events. You can specify <code>AWS::S3::Object</code> or
         <code>AWS::Lambda::Function</code> resources.</p>
         <p>The <code>AWS::S3Outposts::Object</code> resource type is not valid in basic event selectors. To log data events on this resource type, 
         use advanced event selectors.</p>")
  @as("Type")
  type_: option<string_>,
}
@ocaml.doc("<p>A single selector statement in an advanced event selector.</p>")
type advancedFieldSelector = {
  @ocaml.doc("<p>
         An operator that excludes events that match the last few characters of the event record field specified as the value of <code>Field</code>.
      </p>")
  @as("NotEndsWith")
  notEndsWith: option<operator>,
  @ocaml.doc("<p>
         An operator that excludes events that match the first few characters of the event record field specified as the value of <code>Field</code>.
      </p>")
  @as("NotStartsWith")
  notStartsWith: option<operator>,
  @ocaml.doc("<p>
         An operator that excludes events that match the exact value of the event record field specified as the value of <code>Field</code>.
      </p>")
  @as("NotEquals")
  notEquals: option<operator>,
  @ocaml.doc("<p>
         An operator that includes events that match the last few characters of the event record field specified as the value of <code>Field</code>.
      </p>")
  @as("EndsWith")
  endsWith: option<operator>,
  @ocaml.doc("<p>
         An operator that includes events that match the first few characters of the event record field specified as the value of <code>Field</code>.
      </p>")
  @as("StartsWith")
  startsWith: option<operator>,
  @ocaml.doc("<p>
         An operator that includes events that match the exact value of the event record field specified as the value of <code>Field</code>. This is the only valid operator 
         that you can use with the <code>readOnly</code>, <code>eventCategory</code>, and <code>resources.type</code> fields.
      </p>")
  @as("Equals")
  equals: option<operator>,
  @ocaml.doc("<p>
         A field in an event record on which to filter events to be logged. Supported fields include <code>readOnly</code>, <code>eventCategory</code>, 
         <code>eventSource</code> (for management events), <code>eventName</code>, <code>resources.type</code>, and <code>resources.ARN</code>.
      </p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>readOnly</code>
                  </b> - Optional. Can be set to <code>Equals</code> a value of <code>true</code>
            or <code>false</code>. A value of <code>false</code> logs both <code>read</code> and
            <code>write</code> events.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>eventSource</code>
                  </b> - For filtering management events only. 
            This can be set only to <code>NotEquals</code> 
                  <code>kms.amazonaws.com</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>eventName</code>
                  </b> - Can use any operator. You can use it to ﬁlter in
            or ﬁlter out any data event logged to CloudTrail, such as <code>PutBucket</code>. You can have multiple values
            for this ﬁeld, separated by commas.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>eventCategory</code>
                  </b> - This is required. It must be set to <code>Equals</code>, and 
            the value must be <code>Management</code> or <code>Data</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>resources.type</code>
                  </b> - This ﬁeld is required. <code>resources.type</code> 
            can only use the <code>Equals</code> operator, and the value can be one of the following: <code>AWS::S3::Object</code>, 
            <code>AWS::Lambda::Function</code>, or <code>AWS::S3Outposts::Object</code>. You can have only one <code>resources.type</code> ﬁeld per selector. To log 
            data events on more than one resource type, add another selector.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>resources.ARN</code>
                  </b> - You can use any operator with resources.ARN, but
            if you use <code>Equals</code> or <code>NotEquals</code>, the value must exactly match the ARN of a valid resource 
            of the type you've speciﬁed in the template as the value of resources.type. For example, if resources.type equals 
            <code>AWS::S3::Object</code>, the ARN must be in one of the following formats. The trailing slash is intentional; do not exclude it.</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:partition:s3:::bucket_name/</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>arn:partition:s3:::bucket_name/object_or_file_name/</code>
                     </p>
                  </li>
               </ul>
               <p>When resources.type equals <code>AWS::Lambda::Function</code>, and the operator is set
            to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:partition:lambda:region:account_ID:function:function_name</code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals <code>AWS::S3Outposts::Object</code>, and the operator 
               is set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:partition:s3-outposts:region:>account_ID:object_path</code>
                     </p>
                  </li>
               </ul>
            </li>
         </ul>")
  @as("Field")
  field: selectorField,
}
@ocaml.doc("<p>A resource tag.</p>")
type resourceTag = {
  @ocaml.doc("<p>A list of tags.</p>") @as("TagsList") tagsList: option<tagsList>,
  @ocaml.doc("<p>Specifies the ARN of the resource.</p>") @as("ResourceId")
  resourceId: option<string_>,
}
@ocaml.doc(
  "<p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>"
)
type event = {
  @ocaml.doc("<p>A JSON string that contains a representation of the event returned.</p>")
  @as("CloudTrailEvent")
  cloudTrailEvent: option<string_>,
  @ocaml.doc("<p>A list of resources referenced by the event returned.</p>") @as("Resources")
  resources: option<resourceList>,
  @ocaml.doc(
    "<p>A user name or role name of the requester that called the API in the event returned.</p>"
  )
  @as("Username")
  username: option<string_>,
  @ocaml.doc("<p>The AWS service that the request was made to.</p>") @as("EventSource")
  eventSource: option<string_>,
  @ocaml.doc("<p>The date and time of the event returned.</p>") @as("EventTime")
  eventTime: option<date>,
  @ocaml.doc("<p>The AWS access key ID that was used to sign the request. If the request was made 
         with temporary security credentials, this is the access key ID of the temporary credentials.</p>")
  @as("AccessKeyId")
  accessKeyId: option<string_>,
  @ocaml.doc("<p>Information about whether the event is a write event or a read event. </p>")
  @as("ReadOnly")
  readOnly: option<string_>,
  @ocaml.doc("<p>The name of the event returned.</p>") @as("EventName") eventName: option<string_>,
  @ocaml.doc("<p>The CloudTrail ID of the event returned.</p>") @as("EventId")
  eventId: option<string_>,
}
type dataResources = array<dataResource>
type advancedFieldSelectors = array<advancedFieldSelector>
type resourceTagList = array<resourceTag>
type eventsList = array<event>
@ocaml.doc("<p>Use event selectors to further specify the management and data event settings for your trail. By
         default, trails created without specific event selectors will be configured to log all read and 
         write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selector
         for all trails. For each trail, if the event matches any event selector, the trail
         processes and logs the event. If the event doesn't match any event selector, the trail
         doesn't log the event.</p>
         <p>You can configure up to five event selectors for a trail.</p>
         <p>You cannot apply both event selectors and advanced event selectors to a trail.</p>")
type eventSelector = {
  @ocaml.doc("<p>An optional list of service event sources from which you do not want management events to be logged on your trail. In this release, the list can be empty (disables the filter), or it can filter out AWS Key Management Service events by 
         containing <code>\"kms.amazonaws.com\"</code>. By default, <code>ExcludeManagementEventSources</code> is empty, and AWS KMS events are included in events that are logged to your trail. </p>")
  @as("ExcludeManagementEventSources")
  excludeManagementEventSources: option<excludeManagementEventSources>,
  @ocaml.doc("<p>CloudTrail supports data event logging for Amazon S3 objects and AWS Lambda functions. You can specify 
         up to 250 resources for an individual event selector, but the total number of data resources cannot exceed 
         250 across all event selectors in a trail. This limit does not apply if you configure resource logging for all data events. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events\">Data Events</a> and <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html\">Limits in AWS CloudTrail</a> 
         in the <i>AWS CloudTrail User Guide</i>.</p>")
  @as("DataResources")
  dataResources: option<dataResources>,
  @ocaml.doc("<p>Specify if you want your event selector to include management events for your trail.</p>
         <p>
         For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events\">Management Events</a> in the <i>AWS CloudTrail User Guide</i>.</p> 
      
         <p>By default, the value is <code>true</code>.</p>
         <p>The first copy of management events is free. You are charged for additional copies of management 
         events that you are logging on any subsequent trail in the same region. For more information about 
         CloudTrail pricing, see <a href=\"http://aws.amazon.com/cloudtrail/pricing/\">AWS CloudTrail Pricing</a>.</p>")
  @as("IncludeManagementEvents")
  includeManagementEvents: option<boolean_>,
  @ocaml.doc("<p>Specify if you want your trail to log read-only events, write-only events, or all. For example,
         the EC2 <code>GetConsoleOutput</code> is a read-only API operation and
            <code>RunInstances</code> is a write-only API operation.</p>
         <p> By default, the value is <code>All</code>.</p>")
  @as("ReadWriteType")
  readWriteType: option<readWriteType>,
}
@ocaml.doc("<p>Advanced event selectors let you create fine-grained selectors for the following AWS
         CloudTrail event record ﬁelds. They help you control costs by logging only those events
         that are important to you. For more information about advanced event selectors, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html\">Logging data events for trails</a> in the <i>AWS
            CloudTrail User Guide</i>.</p>
         <ul>
            <li>
               <p>
                  <code>readOnly</code>
               </p>
            </li>
            <li>
               <p>
                  <code>eventSource</code>
               </p>
            </li>
            <li>
               <p>
                  <code>eventName</code>
               </p>
            </li>
            <li>
               <p>
                  <code>eventCategory</code>
               </p>
            </li>
            <li>
               <p>
                  <code>resources.type</code>
               </p>
            </li>
            <li>
               <p>
                  <code>resources.ARN</code>
               </p>
            </li>
         </ul>
         <p>You cannot apply both event selectors and advanced event selectors to a trail.</p>")
type advancedEventSelector = {
  @ocaml.doc("<p>Contains all selector statements in an advanced event selector.</p>")
  @as("FieldSelectors")
  fieldSelectors: advancedFieldSelectors,
  @ocaml.doc("<p>An optional, descriptive name for an advanced event selector, such as \"Log data events
         for only two S3 buckets\".</p>")
  @as("Name")
  name: option<selectorName>,
}
type eventSelectors = array<eventSelector>
type advancedEventSelectors = array<advancedEventSelector>
@ocaml.doc("<fullname>AWS CloudTrail</fullname>
         <p>This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.</p>
         <p>CloudTrail is a web service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. The recorded information includes the identity of the user, the start time of the AWS API call, the source IP address, the request parameters, and the response elements returned by the service.</p> 
      
         <note>
            <p>As an alternative to the API,
         you can use one of the AWS SDKs, which consist of libraries and sample code for various
         programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
         provide a convenient way to create programmatic access to AWSCloudTrail. For example, the SDKs
         take care of cryptographically signing requests, managing errors, and retrying requests
         automatically. For information about the AWS SDKs, including how to download and install
         them, see the <a href=\"http://aws.amazon.com/tools/\">Tools for Amazon Web Services
            page</a>.</p> 
         </note> 
         <p>See the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html\">AWS CloudTrail User Guide</a> for information about the data that is included with each AWS API call listed in the log files.</p>")
module UpdateTrail = {
  type t
  @ocaml.doc("<p>Specifies settings to update for the trail.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether the trail is applied to all accounts in an organization in AWS Organizations, or only for the current AWS account. 
         The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in 
         AWS Organizations. If the trail is not an organization trail and this is set to true, the trail will be created in all AWS accounts that belong
         to the organization. If the trail is an organization trail and this is set to false, the trail will remain in the current AWS account but be 
         deleted from all member accounts in the organization.</p>")
    @as("IsOrganizationTrail")
    isOrganizationTrail: option<boolean_>,
    @ocaml.doc("<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
         value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully
         specified ARN to a key, or a globally unique identifier.</p>
         <p>Examples:</p>
         <ul>
            <li>
               <p>alias/MyAliasName</p>
            </li>
            <li>
               <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
            </li>
            <li>
               <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
            </li>
            <li>
               <p>12345678-1234-1234-1234-123456789012</p>
            </li>
         </ul>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc(
      "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
    )
    @as("CloudWatchLogsRoleArn")
    cloudWatchLogsRoleArn: option<string_>,
    @ocaml.doc(
      "<p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>"
    )
    @as("CloudWatchLogsLogGroupArn")
    cloudWatchLogsLogGroupArn: option<string_>,
    @ocaml.doc("<p>Specifies whether log file validation is enabled. The default is false.</p>
         <note>
            <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
         </note>")
    @as("EnableLogFileValidation")
    enableLogFileValidation: option<boolean_>,
    @ocaml.doc("<p>Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, 
         shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region 
         where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider
         using trails that log events in all regions.</p>")
    @as("IsMultiRegionTrail")
    isMultiRegionTrail: option<boolean_>,
    @ocaml.doc(
      "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
    )
    @as("IncludeGlobalServiceEvents")
    includeGlobalServiceEvents: option<boolean_>,
    @ocaml.doc(
      "<p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>"
    )
    @as("SnsTopicName")
    snsTopicName: option<string_>,
    @ocaml.doc("<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
         for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>")
    @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc(
      "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html\">Amazon S3 Bucket Naming Requirements</a>.</p>"
    )
    @as("S3BucketName")
    s3BucketName: option<string_>,
    @ocaml.doc("<p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the
         string must meet the following requirements:</p>
         <ul>
            <li>
               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
            </li>
            <li>
               <p>Start with a letter or number, and end with a letter or number</p>
            </li>
            <li>
               <p>Be between 3 and 128 characters</p>
            </li>
            <li>
               <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
            and <code>my--namespace</code> are invalid.</p>
            </li>
            <li>
               <p>Not be in IP address format (for example, 192.168.5.4)</p>
            </li>
         </ul>
         <p>If <code>Name</code> is a trail ARN, it must be in the format:</p>
            <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }
  @ocaml.doc(
    "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
  )
  type response = {
    @ocaml.doc("<p>Specifies whether the trail is an organization trail.</p>")
    @as("IsOrganizationTrail")
    isOrganizationTrail: option<boolean_>,
    @ocaml.doc("<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p>
      
         <p>
            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
         </p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc(
      "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
    )
    @as("CloudWatchLogsRoleArn")
    cloudWatchLogsRoleArn: option<string_>,
    @ocaml.doc(
      "<p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>"
    )
    @as("CloudWatchLogsLogGroupArn")
    cloudWatchLogsLogGroupArn: option<string_>,
    @ocaml.doc("<p>Specifies whether log file integrity validation is enabled.</p>")
    @as("LogFileValidationEnabled")
    logFileValidationEnabled: option<boolean_>,
    @ocaml.doc("<p>Specifies the ARN of the trail that was updated. The format of a trail ARN
         is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("TrailARN")
    trailARN: option<string_>,
    @ocaml.doc("<p>Specifies whether the trail exists in one region or in all regions.</p>")
    @as("IsMultiRegionTrail")
    isMultiRegionTrail: option<boolean_>,
    @ocaml.doc(
      "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
    )
    @as("IncludeGlobalServiceEvents")
    includeGlobalServiceEvents: option<boolean_>,
    @ocaml.doc("<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications
         when log files are delivered. The format of a topic ARN is:</p>
         <p>
            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
         </p>")
    @as("SnsTopicARN")
    snsTopicARN: option<string_>,
    @ocaml.doc("<p>This field is no longer in use. Use SnsTopicARN.</p>") @as("SnsTopicName")
    snsTopicName: option<string_>,
    @ocaml.doc("<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
         for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>.</p>")
    @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc(
      "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>"
    )
    @as("S3BucketName")
    s3BucketName: option<string_>,
    @ocaml.doc("<p>Specifies the name of the trail.</p>") @as("Name") name: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "UpdateTrailCommand"
  let make = (
    ~name,
    ~isOrganizationTrail=?,
    ~kmsKeyId=?,
    ~cloudWatchLogsRoleArn=?,
    ~cloudWatchLogsLogGroupArn=?,
    ~enableLogFileValidation=?,
    ~isMultiRegionTrail=?,
    ~includeGlobalServiceEvents=?,
    ~snsTopicName=?,
    ~s3KeyPrefix=?,
    ~s3BucketName=?,
    (),
  ) =>
    new({
      isOrganizationTrail: isOrganizationTrail,
      kmsKeyId: kmsKeyId,
      cloudWatchLogsRoleArn: cloudWatchLogsRoleArn,
      cloudWatchLogsLogGroupArn: cloudWatchLogsLogGroupArn,
      enableLogFileValidation: enableLogFileValidation,
      isMultiRegionTrail: isMultiRegionTrail,
      includeGlobalServiceEvents: includeGlobalServiceEvents,
      snsTopicName: snsTopicName,
      s3KeyPrefix: s3KeyPrefix,
      s3BucketName: s3BucketName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopLogging = {
  type t
  @ocaml.doc(
    "<p>Passes the request to CloudTrail to stop logging AWS API calls for the specified account.</p>"
  )
  type request = {
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:</p>
            <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }

  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "StopLoggingCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartLogging = {
  type t
  @ocaml.doc("<p>The request to CloudTrail to start logging AWS API calls for an account.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs AWS API calls. The format of a trail ARN is:</p>
            <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }

  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "StartLoggingCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetTrailStatus = {
  type t
  @ocaml.doc("<p>The name of a trail about which you want the current status.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:</p>
          <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }
  @ocaml.doc(
    "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
  )
  type response = {
    @ocaml.doc("<p>This field is no longer in use.</p>") @as("TimeLoggingStopped")
    timeLoggingStopped: option<string_>,
    @ocaml.doc("<p>This field is no longer in use.</p>") @as("TimeLoggingStarted")
    timeLoggingStarted: option<string_>,
    @ocaml.doc("<p>This field is no longer in use.</p>") @as("LatestDeliveryAttemptSucceeded")
    latestDeliveryAttemptSucceeded: option<string_>,
    @ocaml.doc("<p>This field is no longer in use.</p>") @as("LatestNotificationAttemptSucceeded")
    latestNotificationAttemptSucceeded: option<string_>,
    @ocaml.doc("<p>This field is no longer in use.</p>") @as("LatestNotificationAttemptTime")
    latestNotificationAttemptTime: option<string_>,
    @ocaml.doc("<p>This field is no longer in use.</p>") @as("LatestDeliveryAttemptTime")
    latestDeliveryAttemptTime: option<string_>,
    @ocaml.doc("<p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest
         file to the designated bucket. For more information see the topic <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error
            Responses</a> in the Amazon S3 API Reference. </p>
         <note>
            <p>This error occurs only when there is a problem with the destination S3 bucket and will
         not occur for timeouts. To resolve the issue, create a new bucket and call
            <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that
         CloudTrail can again write to the bucket.</p>
         </note>")
    @as("LatestDigestDeliveryError")
    latestDigestDeliveryError: option<string_>,
    @ocaml.doc(
      "<p>Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.</p>"
    )
    @as("LatestDigestDeliveryTime")
    latestDigestDeliveryTime: option<date>,
    @ocaml.doc(
      "<p>Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.</p>"
    )
    @as("LatestCloudWatchLogsDeliveryTime")
    latestCloudWatchLogsDeliveryTime: option<date>,
    @ocaml.doc(
      "<p>Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.</p>"
    )
    @as("LatestCloudWatchLogsDeliveryError")
    latestCloudWatchLogsDeliveryError: option<string_>,
    @ocaml.doc(
      "<p>Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.</p>"
    )
    @as("StopLoggingTime")
    stopLoggingTime: option<date>,
    @ocaml.doc(
      "<p>Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.</p>"
    )
    @as("StartLoggingTime")
    startLoggingTime: option<date>,
    @ocaml.doc(
      "<p>Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.</p>"
    )
    @as("LatestNotificationTime")
    latestNotificationTime: option<date>,
    @ocaml.doc(
      "<p>Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.</p>"
    )
    @as("LatestDeliveryTime")
    latestDeliveryTime: option<date>,
    @ocaml.doc("<p>Displays any Amazon SNS error that CloudTrail encountered when attempting to send a
         notification. For more information about Amazon SNS errors, see the <a href=\"https://docs.aws.amazon.com/sns/latest/dg/welcome.html\">Amazon SNS Developer Guide</a>.
      </p>")
    @as("LatestNotificationError")
    latestNotificationError: option<string_>,
    @ocaml.doc("<p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files
         to the designated bucket. For more information see the topic <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error
            Responses</a> in the Amazon S3 API Reference. </p>
         <note>
            <p>This error occurs only when there is a problem with the destination S3 bucket and will
         not occur for timeouts. To resolve the issue, create a new bucket and call
            <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that
         CloudTrail can again write to the bucket.</p>
         </note>")
    @as("LatestDeliveryError")
    latestDeliveryError: option<string_>,
    @ocaml.doc("<p>Whether the CloudTrail is currently logging AWS API calls.</p>") @as("IsLogging")
    isLogging: option<boolean_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "GetTrailStatusCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTrail = {
  type t
  @ocaml.doc("<p>The request that specifies the name of a trail to delete.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The format of a
         trail ARN is:
         <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }

  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "DeleteTrailCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetTrail = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name or the Amazon Resource Name (ARN) of the trail for which you want to retrieve settings information.</p>"
    )
    @as("Name")
    name: string_,
  }
  type response = {@as("Trail") trail: option<trail>}
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "GetTrailCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTags = {
  type t
  @ocaml.doc("<p>Specifies the tags to remove from a trail.</p>")
  type request = {
    @ocaml.doc("<p>Specifies a list of tags to be removed.</p>") @as("TagsList")
    tagsList: option<tagsList>,
    @ocaml.doc("<p>Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("ResourceId")
    resourceId: string_,
  }

  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "RemoveTagsCommand"
  let make = (~resourceId, ~tagsList=?, ()) => new({tagsList: tagsList, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutInsightSelectors = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A JSON string that contains the insight types you want to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
    )
    @as("InsightSelectors")
    insightSelectors: insightSelectors,
    @ocaml.doc(
      "<p>The name of the CloudTrail trail for which you want to change or add Insights selectors.</p>"
    )
    @as("TrailName")
    trailName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A JSON string that contains the insight types you want to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
    )
    @as("InsightSelectors")
    insightSelectors: option<insightSelectors>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of a trail for which you want to change or add Insights selectors.</p>"
    )
    @as("TrailARN")
    trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new: request => t = "PutInsightSelectorsCommand"
  let make = (~insightSelectors, ~trailName, ()) =>
    new({insightSelectors: insightSelectors, trailName: trailName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTrails = {
  type t
  type request = {
    @ocaml.doc("<p>The token to use to get the next page of results after a previous API call. This token must be passed 
         in with the same parameters that were specified in the the original call. For example, if the original 
         call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should 
         include those same parameters.</p>")
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to use to get the next page of results after a previous API call. If the token does not appear, 
         there are no more results to return. The token must be passed in with the same parameters as the previous call. 
         For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with 
         NextToken should include those same parameters.</p>")
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Returns the name, ARN, and home region of trails in the current account.</p>")
    @as("Trails")
    trails: option<trails>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "ListTrailsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPublicKeys = {
  type t
  @ocaml.doc("<p>Requests the public keys for a specified time range.</p>")
  type request = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc(
      "<p>Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.</p>"
    )
    @as("EndTime")
    endTime: option<date>,
    @ocaml.doc(
      "<p>Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.</p>"
    )
    @as("StartTime")
    startTime: option<date>,
  }
  @ocaml.doc(
    "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
  )
  type response = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Contains an array of PublicKey objects.</p>
         <note>
            <p>The returned public keys may have validity time ranges that overlap.</p>
         </note>")
    @as("PublicKeyList")
    publicKeyList: option<publicKeyList>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "ListPublicKeysCommand"
  let make = (~nextToken=?, ~endTime=?, ~startTime=?, ()) =>
    new({nextToken: nextToken, endTime: endTime, startTime: startTime})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightSelectors = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
         string must meet the following requirements:</p>
         <ul>
            <li>
               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
            </li>
            <li>
               <p>Start with a letter or number, and end with a letter or number</p>
            </li>
            <li>
               <p>Be between 3 and 128 characters</p>
            </li>
            <li>
               <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
               and <code>my--namespace</code> are not valid.</p>
            </li>
            <li>
               <p>Not be in IP address format (for example, 192.168.5.4)</p>
            </li>
         </ul>
         <p>If you specify a trail ARN, it must be in the format:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("TrailName")
    trailName: string_,
  }
  type response = {
    @ocaml.doc(
      "<p>A JSON string that contains the insight types you want to log on a trail. In this release, only <code>ApiCallRateInsight</code> is supported as an insight type.</p>"
    )
    @as("InsightSelectors")
    insightSelectors: option<insightSelectors>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of a trail for which you want to get Insights selectors.</p>"
    )
    @as("TrailARN")
    trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new: request => t = "GetInsightSelectorsCommand"
  let make = (~trailName, ()) => new({trailName: trailName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrails = {
  type t
  @ocaml.doc("<p>Returns information about the trail.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region,
         or in the case of an organization trail, the replication of an organization trail in member accounts. If you do not include shadow trails, organization trails in a member account
         and region replication trails will not be returned. The default is true.</p>")
    includeShadowTrails: option<boolean_>,
    @ocaml.doc("<p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p> 
      
         <p>If an empty list is specified, information for the trail in the current region is returned.</p>
         <ul>
            <li>
               <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then
            information for all trails in the current region is returned.</p>
            </li>
            <li>
               <p>If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.</p>
            </li>
         </ul>
         <note>
            <p>If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.</p>
         </note>")
    trailNameList: option<trailNameList>,
  }
  @ocaml.doc(
    "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
  )
  type response = {
    @ocaml.doc("<p>The list of trail objects. Trail objects with string values are only returned if values for the objects exist in a trail's configuration. 
         For example, <code>SNSTopicName</code> and <code>SNSTopicARN</code> are only returned in results if a trail is configured to send SNS notifications. Similarly, 
      <code>KMSKeyId</code> only appears in results if a trail's log files are encrypted with AWS KMS-managed keys.</p>")
    trailList: option<trailList>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "DescribeTrailsCommand"
  let make = (~includeShadowTrails=?, ~trailNameList=?, ()) =>
    new({includeShadowTrails: includeShadowTrails, trailNameList: trailNameList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTrail = {
  type t
  @ocaml.doc("<p>Specifies the settings for each trail.</p>")
  type request = {
    @as("TagsList") tagsList: option<tagsList>,
    @ocaml.doc("<p>Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account. 
      The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in 
      AWS Organizations.</p>")
    @as("IsOrganizationTrail")
    isOrganizationTrail: option<boolean_>,
    @ocaml.doc("<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
         value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully
         specified ARN to a key, or a globally unique identifier.</p>
         <p>Examples:</p>
         <ul>
            <li>
               <p>alias/MyAliasName</p>
            </li>
            <li>
               <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p>
            </li>
            <li>
               <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p>
            </li>
            <li>
               <p>12345678-1234-1234-1234-123456789012</p>
            </li>
         </ul>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc(
      "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
    )
    @as("CloudWatchLogsRoleArn")
    cloudWatchLogsRoleArn: option<string_>,
    @ocaml.doc("<p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group 
         to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>")
    @as("CloudWatchLogsLogGroupArn")
    cloudWatchLogsLogGroupArn: option<string_>,
    @ocaml.doc("<p>Specifies whether log file integrity validation is enabled. The default is false.</p>
         <note>
            <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
         </note>")
    @as("EnableLogFileValidation")
    enableLogFileValidation: option<boolean_>,
    @ocaml.doc("<p>Specifies whether the trail is created in the current region or in all regions. The default is false, which creates a trail only in the region where you are signed in. As a best practice, consider
      creating trails that log events in all regions.</p>")
    @as("IsMultiRegionTrail")
    isMultiRegionTrail: option<boolean_>,
    @ocaml.doc(
      "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
    )
    @as("IncludeGlobalServiceEvents")
    includeGlobalServiceEvents: option<boolean_>,
    @ocaml.doc(
      "<p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>"
    )
    @as("SnsTopicName")
    snsTopicName: option<string_>,
    @ocaml.doc("<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
         for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>")
    @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc(
      "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html\">Amazon S3 Bucket Naming Requirements</a>.</p>"
    )
    @as("S3BucketName")
    s3BucketName: string_,
    @ocaml.doc("<p>Specifies the name of the trail. The name must meet the following requirements:</p>
         <ul>
            <li>
               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
            </li>
            <li>
               <p>Start with a letter or number, and end with a letter or number</p>
            </li>
            <li>
               <p>Be between 3 and 128 characters</p>
            </li>
            <li>
               <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
            and <code>my--namespace</code> are invalid.</p>
            </li>
            <li>
               <p>Not be in IP address format (for example, 192.168.5.4)</p>
            </li>
         </ul>")
    @as("Name")
    name: string_,
  }
  @ocaml.doc(
    "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
  )
  type response = {
    @ocaml.doc("<p>Specifies whether the trail is an organization trail.</p>")
    @as("IsOrganizationTrail")
    isOrganizationTrail: option<boolean_>,
    @ocaml.doc("<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p>
         <p>
            <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code>
         </p>")
    @as("KmsKeyId")
    kmsKeyId: option<string_>,
    @ocaml.doc(
      "<p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>"
    )
    @as("CloudWatchLogsRoleArn")
    cloudWatchLogsRoleArn: option<string_>,
    @ocaml.doc(
      "<p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>"
    )
    @as("CloudWatchLogsLogGroupArn")
    cloudWatchLogsLogGroupArn: option<string_>,
    @ocaml.doc("<p>Specifies whether log file integrity validation is enabled.</p>")
    @as("LogFileValidationEnabled")
    logFileValidationEnabled: option<boolean_>,
    @ocaml.doc("<p>Specifies the ARN of the trail that was created. The format of a trail ARN
         is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("TrailARN")
    trailARN: option<string_>,
    @ocaml.doc("<p>Specifies whether the trail exists in one region or in all regions.</p>")
    @as("IsMultiRegionTrail")
    isMultiRegionTrail: option<boolean_>,
    @ocaml.doc(
      "<p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>"
    )
    @as("IncludeGlobalServiceEvents")
    includeGlobalServiceEvents: option<boolean_>,
    @ocaml.doc("<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p>
         <p>
            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
         </p>")
    @as("SnsTopicARN")
    snsTopicARN: option<string_>,
    @ocaml.doc("<p>This field is no longer in use. Use SnsTopicARN.</p>") @as("SnsTopicName")
    snsTopicName: option<string_>,
    @ocaml.doc("<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
         for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>.</p>")
    @as("S3KeyPrefix")
    s3KeyPrefix: option<string_>,
    @ocaml.doc(
      "<p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>"
    )
    @as("S3BucketName")
    s3BucketName: option<string_>,
    @ocaml.doc("<p>Specifies the name of the trail.</p>") @as("Name") name: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "CreateTrailCommand"
  let make = (
    ~s3BucketName,
    ~name,
    ~tagsList=?,
    ~isOrganizationTrail=?,
    ~kmsKeyId=?,
    ~cloudWatchLogsRoleArn=?,
    ~cloudWatchLogsLogGroupArn=?,
    ~enableLogFileValidation=?,
    ~isMultiRegionTrail=?,
    ~includeGlobalServiceEvents=?,
    ~snsTopicName=?,
    ~s3KeyPrefix=?,
    (),
  ) =>
    new({
      tagsList: tagsList,
      isOrganizationTrail: isOrganizationTrail,
      kmsKeyId: kmsKeyId,
      cloudWatchLogsRoleArn: cloudWatchLogsRoleArn,
      cloudWatchLogsLogGroupArn: cloudWatchLogsLogGroupArn,
      enableLogFileValidation: enableLogFileValidation,
      isMultiRegionTrail: isMultiRegionTrail,
      includeGlobalServiceEvents: includeGlobalServiceEvents,
      snsTopicName: snsTopicName,
      s3KeyPrefix: s3KeyPrefix,
      s3BucketName: s3BucketName,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddTags = {
  type t
  @ocaml.doc("<p>Specifies the tags to add to a trail.</p>")
  type request = {
    @ocaml.doc("<p>Contains a list of CloudTrail tags, up to a limit of 50</p>") @as("TagsList")
    tagsList: option<tagsList>,
    @ocaml.doc("<p>Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("ResourceId")
    resourceId: string_,
  }

  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "AddTagsCommand"
  let make = (~resourceId, ~tagsList=?, ()) => new({tagsList: tagsList, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module LookupEvents = {
  type t
  @ocaml.doc("<p>Contains a request for LookupEvents.</p>")
  type request = {
    @ocaml.doc("<p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. 
         For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The number of events to return. Possible values are 1 through 50. The default is 50.</p>"
    )
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example, 
         if you do not specify <code>insight</code> as the value of <code>EventCategory</code>, no Insights events are returned.</p>")
    @as("EventCategory")
    eventCategory: option<eventCategory>,
    @ocaml.doc(
      "<p>Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.</p>"
    )
    @as("EndTime")
    endTime: option<date>,
    @ocaml.doc(
      "<p>Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.</p>"
    )
    @as("StartTime")
    startTime: option<date>,
    @ocaml.doc(
      "<p>Contains a list of lookup attributes. Currently the list can contain only one item.</p>"
    )
    @as("LookupAttributes")
    lookupAttributes: option<lookupAttributesList>,
  }
  @ocaml.doc("<p>Contains a response to a LookupEvents action.</p>")
  type response = {
    @ocaml.doc("<p>The token to use to get the next page of results after a previous API call. If the token does not appear, 
         there are no more results to return. The token must be passed in with the same parameters as the previous call. 
         For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with 
         NextToken should include those same parameters.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.</p>"
    )
    @as("Events")
    events: option<eventsList>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "LookupEventsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~eventCategory=?,
    ~endTime=?,
    ~startTime=?,
    ~lookupAttributes=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      eventCategory: eventCategory,
      endTime: endTime,
      startTime: startTime,
      lookupAttributes: lookupAttributes,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTags = {
  type t
  @ocaml.doc("<p>Specifies a list of trail tags to return.</p>")
  type request = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The format of a trail ARN is:</p>
            <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("ResourceIdList")
    resourceIdList: resourceIdList,
  }
  @ocaml.doc(
    "<p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>"
  )
  type response = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>A list of resource tags.</p>") @as("ResourceTagList")
    resourceTagList: option<resourceTagList>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "ListTagsCommand"
  let make = (~resourceIdList, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceIdList: resourceIdList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutEventSelectors = {
  type t
  type request = {
    @ocaml.doc("<p>
         Specifies the settings for advanced event selectors. You can add advanced event selectors, and conditions for your advanced 
         event selectors, up to a maximum of 500 values for all conditions and selectors on a trail. 
         You can use either <code>AdvancedEventSelectors</code> or <code>EventSelectors</code>, but not both. If you apply <code>AdvancedEventSelectors</code> 
         to a trail, any existing <code>EventSelectors</code> are overwritten. For more information about 
         advanced event selectors, see 
         <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html\">Logging 
            data events for trails</a> in the <i>AWS CloudTrail User Guide</i>.
      </p>")
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc("<p>Specifies the settings for your event selectors. You can configure up to five event selectors for a trail. 
         You can use either <code>EventSelectors</code> or <code>AdvancedEventSelectors</code> in a <code>PutEventSelectors</code> request, but not both. 
         If you apply <code>EventSelectors</code> to a trail, any existing <code>AdvancedEventSelectors</code> are overwritten.</p>")
    @as("EventSelectors")
    eventSelectors: option<eventSelectors>,
    @ocaml.doc("<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
         string must meet the following requirements:</p>
         <ul>
            <li>
               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
            </li>
            <li>
               <p>Start with a letter or number, and end with a letter or number</p>
            </li>
            <li>
               <p>Be between 3 and 128 characters</p>
            </li>
            <li>
               <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
               and <code>my--namespace</code> are invalid.</p>
            </li>
            <li>
               <p>Not be in IP address format (for example, 192.168.5.4)</p>
            </li>
         </ul>
         <p>If you specify a trail ARN, it must be in the format:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("TrailName")
    trailName: string_,
  }
  type response = {
    @ocaml.doc("<p>Specifies the advanced event selectors configured for your trail.</p>")
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc("<p>Specifies the event selectors configured for your trail.</p>")
    @as("EventSelectors")
    eventSelectors: option<eventSelectors>,
    @ocaml.doc("<p>Specifies the ARN of the trail that was updated with event selectors. The format of a trail ARN
         is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("TrailARN")
    trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "PutEventSelectorsCommand"
  let make = (~trailName, ~advancedEventSelectors=?, ~eventSelectors=?, ()) =>
    new({
      advancedEventSelectors: advancedEventSelectors,
      eventSelectors: eventSelectors,
      trailName: trailName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventSelectors = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the name of the trail or trail ARN. If you specify a trail name, the
         string must meet the following requirements:</p>
         <ul>
            <li>
               <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p>
            </li>
            <li>
               <p>Start with a letter or number, and end with a letter or number</p>
            </li>
            <li>
               <p>Be between 3 and 128 characters</p>
            </li>
            <li>
               <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code>
                  and <code>my--namespace</code> are not valid.</p>
            </li>
            <li>
               <p>Not be in IP address format (for example, 192.168.5.4)</p>
            </li>
         </ul>
         <p>If you specify a trail ARN, it must be in the format:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("TrailName")
    trailName: string_,
  }
  type response = {
    @ocaml.doc("<p>
         The advanced event selectors that are configured for the trail.
      </p>")
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc("<p>The event selectors that are configured for the trail.</p>")
    @as("EventSelectors")
    eventSelectors: option<eventSelectors>,
    @ocaml.doc("<p>The specified trail ARN that has the event selectors.</p>") @as("TrailARN")
    trailARN: option<string_>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "GetEventSelectorsCommand"
  let make = (~trailName, ()) => new({trailName: trailName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
