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
type uuid = string
type terminationProtectionEnabled = bool
type tagValue = string
type tagKey = string
type string_ = string
type selectorName = string
type selectorField = string
type retentionPeriod = int
type readWriteType = [@as("All") #All | @as("WriteOnly") #WriteOnly | @as("ReadOnly") #ReadOnly]
type queryStatus = [
  | @as("TIMED_OUT") #TIMED_OUT
  | @as("CANCELLED") #CANCELLED
  | @as("FAILED") #FAILED
  | @as("FINISHED") #FINISHED
  | @as("RUNNING") #RUNNING
  | @as("QUEUED") #QUEUED
]
type queryStatement = string
type queryResultValue = string
type queryResultKey = string
type paginationToken = string
type operatorValue = string
type nextToken = string
type maxResults = int
type maxQueryResults = int
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
type long = float
type listQueriesMaxResultsCount = int
type listEventDataStoresMaxResultsCount = int
type integer_ = int
type insightType = [
  | @as("ApiErrorRateInsight") #ApiErrorRateInsight
  | @as("ApiCallRateInsight") #ApiCallRateInsight
]
type eventDataStoreStatus = [
  | @as("PENDING_DELETION") #PENDING_DELETION
  | @as("ENABLED") #ENABLED
  | @as("CREATED") #CREATED
]
type eventDataStoreName = string
type eventDataStoreArn = string
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
  @ocaml.doc("<p>The Amazon Web Services Region in which a trail was created.</p>")
  @as("HomeRegion")
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
  @ocaml.doc("<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. 
         The value is a fully specified ARN to a KMS key in the following format.</p>
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
  @ocaml.doc("<p>Specifies the ARN of the trail. The following is the format of a trail ARN.</p>
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
  @ocaml.doc("<p>Set to <b>True</b> to include Amazon Web Services API calls from Amazon Web Services global services such as IAM.
         Otherwise, <b>False</b>.</p>")
  @as("IncludeGlobalServiceEvents")
  includeGlobalServiceEvents: option<boolean_>,
  @ocaml.doc("<p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications
         when log files are delivered. The following is the format of a topic ARN.</p> 
         <p>
            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
         </p>")
  @as("SnsTopicARN")
  snsTopicARN: option<string_>,
  @ocaml.doc("<p>This field is no longer in use. Use SnsTopicARN.</p>") @as("SnsTopicName")
  snsTopicName: option<string_>,
  @ocaml.doc("<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
         for log file delivery. For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your CloudTrail Log Files</a>. 
         The maximum length is 200 characters.</p>")
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
  value: option<tagValue>,
  @ocaml.doc("<p>The key in a key-value pair. The key must be must be no longer than 128 Unicode characters. 
         The key must be unique for the resource to which it applies.</p>")
  @as("Key")
  key: tagKey,
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
         <b>Trail</b> for CloudTrail, <b>DBInstance</b> for Amazon RDS, and <b>AccessKey</b> for IAM.
         To learn more about how to look up and filter events by the resource types supported for a service, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/view-cloudtrail-events-console.html#filtering-cloudtrail-events\">Filtering CloudTrail Events</a>.</p>")
  @as("ResourceType")
  resourceType: option<string_>,
}
@ocaml.doc("<p>Gets metadata about a query, including the number of events that were matched, the total number of events scanned, the query run time 
         in milliseconds, and the query's creation time.</p>")
type queryStatisticsForDescribeQuery = {
  @ocaml.doc("<p>The creation time of the query.</p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The query's run time, in milliseconds.</p>") @as("ExecutionTimeInMillis")
  executionTimeInMillis: option<integer_>,
  @ocaml.doc("<p>The total bytes that the query scanned in the event data store. This value matches the number of 
      bytes for which your account is billed for the query, unless the query is still running.</p>")
  @as("BytesScanned")
  bytesScanned: option<long>,
  @ocaml.doc("<p>The number of events that the query scanned in the event data store.</p>")
  @as("EventsScanned")
  eventsScanned: option<long>,
  @ocaml.doc("<p>The number of events that matched a query.</p>") @as("EventsMatched")
  eventsMatched: option<long>,
}
@ocaml.doc("<p>Metadata about a query, such as the number of results.</p>")
type queryStatistics = {
  @ocaml.doc("<p>The total bytes that the query scanned in the event data store. This value matches the number of
         bytes for which your account is billed for the query, unless the query is still running.</p>")
  @as("BytesScanned")
  bytesScanned: option<long>,
  @ocaml.doc("<p>The total number of results returned by a query.</p>") @as("TotalResultsCount")
  totalResultsCount: option<integer_>,
  @ocaml.doc("<p>The number of results returned.</p>") @as("ResultsCount")
  resultsCount: option<integer_>,
}
type queryResultColumn = Js.Dict.t<queryResultValue>
@ocaml.doc(
  "<p>A SQL string of criteria about events that you want to collect in an event data store.</p>"
)
type query = {
  @ocaml.doc("<p>The creation time of a query.</p>") @as("CreationTime") creationTime: option<date>,
  @ocaml.doc("<p>The status of the query. This can be <code>QUEUED</code>, <code>RUNNING</code>, <code>FINISHED</code>, <code>FAILED</code>, 
         <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>")
  @as("QueryStatus")
  queryStatus: option<queryStatus>,
  @ocaml.doc("<p>The ID of a query.</p>") @as("QueryId") queryId: option<uuid>,
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
    "<p>The type of insights to log on a trail. <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid insight types.</p>"
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
type queryResultRow = array<queryResultColumn>
type queries = array<query>
type publicKeyList = array<publicKey>
type lookupAttributesList = array<lookupAttribute>
type insightSelectors = array<insightSelector>
@ocaml.doc("<p>The Amazon S3 buckets, Lambda functions, or Amazon DynamoDB tables that you specify
         in your event selectors for your trail to log data events. Data events provide information
         about the resource operations performed on or within a resource itself. These are also
         known as data plane operations. You can specify up to 250 data resources for a
         trail.</p>
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
         <p>The following example demonstrates how logging works when you configure logging of Lambda data events for a 
         Lambda function named <i>MyLambdaFunction</i>, but not for all Lambda functions.</p>
         <ol>
            <li>
               <p>A user runs a script that includes a call to the <i>MyLambdaFunction</i> function and the
               <i>MyOtherLambdaFunction</i> function.</p>
            </li>
            <li>
               <p>The <code>Invoke</code> API operation on <i>MyLambdaFunction</i> is an Lambda API. 
               It is recorded as a data event in CloudTrail. Because the CloudTrail user specified logging data events for
               <i>MyLambdaFunction</i>, any invocations of that function are logged. The trail processes and logs the event.</p>
            </li>
            <li>
               <p>The <code>Invoke</code> API operation on <i>MyOtherLambdaFunction</i> is an Lambda API. 
               Because the CloudTrail user did not specify logging data events for all Lambda functions,
               the <code>Invoke</code> operation for <i>MyOtherLambdaFunction</i> does not match the function specified for the trail. 
               The trail doesn’t log the event. </p>
            </li>
         </ol>")
type dataResource = {
  @ocaml.doc("<p>An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.</p>
         <ul>
            <li>
               <p>To log data events for all objects in all S3 buckets in your Amazon Web Services account, specify the 
         prefix as <code>arn:aws:s3:::</code>.</p>
               <note>
                  <p>This also enables logging of data event activity performed by any user or role in your Amazon Web Services account, 
         even if that activity is performed on a bucket that belongs to another Amazon Web Services account.</p>
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
               <p>To log data events for all Lambda functions in your Amazon Web Services account, specify the prefix as
                  <code>arn:aws:lambda</code>.</p>
               <note>
                  <p>This also enables logging of <code>Invoke</code> activity performed by any user or role in your Amazon Web Services account, 
         even if that activity is performed on a function that belongs to another Amazon Web Services account. </p>
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
            <li>
               <p>To log data events for all DynamoDB tables in your Amazon Web Services account, specify the prefix
               as <code>arn:aws:dynamodb</code>.</p>
            </li>
         </ul>")
  @as("Values")
  values: option<dataResourceValues>,
  @ocaml.doc("<p>The resource type in which you want to log data events. You can specify
         the following <i>basic</i> event selector resource types:</p>
         <ul>
            <li>
               <p>
                  <code>AWS::S3::Object</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::Lambda::Function</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::DynamoDB::Table</code>
               </p>
            </li>
         </ul>

         <p>The following resource types are also availble through <i>advanced</i> event selectors.
         Basic event selector resource types are valid in advanced event selectors, but
         advanced event selector resource types are not valid in basic event selectors.
         For more information, see <a>AdvancedFieldSelector$Field</a>.</p>
         <ul>
            <li>
               <p>
                  <code>AWS::S3Outposts::Object</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::ManagedBlockchain::Node</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::S3ObjectLambda::AccessPoint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::EC2::Snapshot</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::S3::AccessPoint</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::DynamoDB::Stream</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS::Glue::Table</code>
               </p>
            </li>
         </ul>")
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
  @ocaml.doc("<p>An operator that includes events that match the last few characters of the event record
         field specified as the value of <code>Field</code>.</p>")
  @as("EndsWith")
  endsWith: option<operator>,
  @ocaml.doc("<p>An operator that includes events that match the first few characters of the event record
         field specified as the value of <code>Field</code>.</p>")
  @as("StartsWith")
  startsWith: option<operator>,
  @ocaml.doc("<p> An operator that includes events that match the exact value of the event record field
         specified as the value of <code>Field</code>. This is the only valid operator that you can
         use with the <code>readOnly</code>, <code>eventCategory</code>, and
            <code>resources.type</code> fields.</p>")
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
            or <code>false</code>. If you do not add this field, CloudTrail logs both both <code>read</code> and
            <code>write</code> events. A value of <code>true</code> logs only <code>read</code> events. A value of <code>false</code> 
            logs only <code>write</code> events.</p>
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
            or ﬁlter out any data event logged to CloudTrail, such as <code>PutBucket</code> or <code>GetSnapshotBlock</code>. You can have multiple values
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
                  </b> - This ﬁeld is required.
                  <code>resources.type</code> can only use the <code>Equals</code> operator, and the
            value can be one of the following:</p>
               <ul>
                  <li>
                     <p>
                        <code>AWS::S3::Object</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::Lambda::Function</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::DynamoDB::Table</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::S3Outposts::Object</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::ManagedBlockchain::Node</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::S3ObjectLambda::AccessPoint</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::EC2::Snapshot</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::S3::AccessPoint</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::DynamoDB::Stream</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>AWS::Glue::Table</code>
                     </p>
                  </li>
               </ul>
               <p>
               You can have only one <code>resources.type</code> ﬁeld per selector. To log data
               events on more than one resource type, add another selector.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>resources.ARN</code>
                  </b> - You can use any operator with
               <code>resources.ARN</code>, but if you use <code>Equals</code> or <code>NotEquals</code>, the
               value must exactly match the ARN of a valid resource of the type you've speciﬁed in
               the template as the value of resources.type. For example, if resources.type equals
                  <code>AWS::S3::Object</code>, the ARN must be in one of the following formats. To
               log all data events for all objects in a specific S3 bucket, use the
                  <code>StartsWith</code> operator, and include only the bucket ARN as the matching value.</p>
               <p>The trailing slash is intentional; do not exclude it. Replace the text between
               less than and greater than symbols (<>) with resource-specific information. </p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:s3:::<bucket_name>/</code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>arn:<partition>:s3:::<bucket_name>/<object_path>/</code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals <code>AWS::S3::AccessPoint</code>, and the
               operator is set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in
               one of the following formats. To log events on all objects in an S3 access point, we
               recommend that you use only the access point ARN, don’t include the object path, and
               use the <code>StartsWith</code> or <code>NotStartsWith</code> operators.</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:s3:<region>:<account_ID>:accesspoint/<access_point_name></code>
                     </p>
                  </li>
                  <li>
                     <p>
                        <code>arn:<partition>:s3:<region>:<account_ID>:accesspoint/<access_point_name>/object/<object_path></code>
                     </p>
                  </li>
               </ul>
               <p>When resources.type equals <code>AWS::Lambda::Function</code>, and the operator is set
            to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:lambda:<region>:<account_ID>:function:<function_name></code>
                     </p>
                  </li>
               </ul>
               <p>When resources.type equals <code>AWS::DynamoDB::Table</code>, and the operator is
               set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the
               following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:dynamodb:<region>:<account_ID>:table/<table_name></code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals <code>AWS::S3Outposts::Object</code>, and the operator 
               is set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:s3-outposts:<region>:<account_ID>:<object_path></code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals <code>AWS::ManagedBlockchain::Node</code>,
               and the operator is set to <code>Equals</code> or <code>NotEquals</code>, the ARN
               must be in the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:managedblockchain:<region>:<account_ID>:nodes/<node_ID></code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals
                  <code>AWS::S3ObjectLambda::AccessPoint</code>, and the operator is set to
                  <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following
               format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:s3-object-lambda:<region>:<account_ID>:accesspoint/<access_point_name></code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals <code>AWS::EC2::Snapshot</code>, and the
               operator is set to <code>Equals</code> or <code>NotEquals</code>, the ARN must be in
               the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:ec2:<region>::snapshot/<snapshot_ID></code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals <code>AWS::DynamoDB::Stream</code>, and the operator is set to
               <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:dynamodb:<region>:<account_ID>:table/<table_name>/stream/<date_time></code>
                     </p>
                  </li>
               </ul>
               <p>When <code>resources.type</code> equals <code>AWS::Glue::Table</code>, and the operator is set to
               <code>Equals</code> or <code>NotEquals</code>, the ARN must be in the following format:</p>
               <ul>
                  <li>
                     <p>
                        <code>arn:<partition>:glue:<region>:<account_ID>:table/<database_name>/<table_name></code>
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
type queryResultRows = array<queryResultRow>
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
  @ocaml.doc("<p>The Amazon Web Services service to which the request was made.</p>")
  @as("EventSource")
  eventSource: option<string_>,
  @ocaml.doc("<p>The date and time of the event returned.</p>") @as("EventTime")
  eventTime: option<date>,
  @ocaml.doc("<p>The Amazon Web Services access key ID that was used to sign the request. If the request was made 
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
  @ocaml.doc("<p>An optional list of service event sources from which you do not want management events to be logged on your trail. In this release, the list can be empty (disables the filter), 
         or it can filter out Key Management Service or Amazon RDS Data API events by 
         containing <code>kms.amazonaws.com</code> or <code>rdsdata.amazonaws.com</code>. By default, <code>ExcludeManagementEventSources</code> is empty, and KMS and 
         Amazon RDS Data API events are logged to your trail. You can exclude management event sources only in regions that support the event source.</p>")
  @as("ExcludeManagementEventSources")
  excludeManagementEventSources: option<excludeManagementEventSources>,
  @ocaml.doc("<p>CloudTrail supports data event logging for Amazon S3 objects, Lambda functions, 
         and Amazon DynamoDB tables 
         with basic event selectors. You can specify up to 250 resources for an individual event
         selector, but the total number of data resources cannot exceed 250 across all event
         selectors in a trail. This limit does not apply if you configure resource logging for all
         data events.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events\">Data Events</a> and <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html\">Limits in CloudTrail</a> 
         in the <i>CloudTrail User Guide</i>.</p>")
  @as("DataResources")
  dataResources: option<dataResources>,
  @ocaml.doc("<p>Specify if you want your event selector to include management events for your trail.</p>
         <p>
         For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events\">Management Events</a> in the <i>CloudTrail User Guide</i>.</p> 
      
         <p>By default, the value is <code>true</code>.</p>
         <p>The first copy of management events is free. You are charged for additional copies of management 
         events that you are logging on any subsequent trail in the same region. For more information about 
         CloudTrail pricing, see <a href=\"http://aws.amazon.com/cloudtrail/pricing/\">CloudTrail Pricing</a>.</p>")
  @as("IncludeManagementEvents")
  includeManagementEvents: option<boolean_>,
  @ocaml.doc("<p>Specify if you want your trail to log read-only events, write-only events, or all. For example,
         the EC2 <code>GetConsoleOutput</code> is a read-only API operation and
            <code>RunInstances</code> is a write-only API operation.</p>
         <p> By default, the value is <code>All</code>.</p>")
  @as("ReadWriteType")
  readWriteType: option<readWriteType>,
}
@ocaml.doc("<p>Advanced event selectors let you create fine-grained selectors for the following CloudTrail 
         event record ﬁelds. They help you control costs by logging only those events
         that are important to you. For more information about advanced event selectors, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html\">Logging data events for trails</a> in the <i>CloudTrail User Guide</i>.</p>
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
@ocaml.doc("<p>A storage lake of event data against which you can run complex SQL-based queries. An event data store can include events 
         that you have logged on your account from the last 90 to 2555 days 
         (about three months to up to seven years). To select events for an event data store, 
         use <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced\">advanced event selectors</a>.</p>")
type eventDataStore = {
  @ocaml.doc(
    "<p>The timestamp showing when an event data store was updated, if applicable. <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>"
  )
  @as("UpdatedTimestamp")
  updatedTimestamp: option<date>,
  @ocaml.doc("<p>The timestamp of the event data store's creation.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<date>,
  @ocaml.doc("<p>The retention period, in days.</p>") @as("RetentionPeriod")
  retentionPeriod: option<retentionPeriod>,
  @ocaml.doc(
    "<p>Indicates that an event data store is collecting logged events for an organization.</p>"
  )
  @as("OrganizationEnabled")
  organizationEnabled: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates whether the event data store includes events from all regions, or only from the region in which it was created.</p>"
  )
  @as("MultiRegionEnabled")
  multiRegionEnabled: option<boolean_>,
  @ocaml.doc(
    "<p>The advanced event selectors that were used to select events for the data store.</p>"
  )
  @as("AdvancedEventSelectors")
  advancedEventSelectors: option<advancedEventSelectors>,
  @ocaml.doc(
    "<p>The status of an event data store. Values are <code>ENABLED</code> and <code>PENDING_DELETION</code>.</p>"
  )
  @as("Status")
  status: option<eventDataStoreStatus>,
  @ocaml.doc("<p>Indicates whether the event data store is protected from termination.</p>")
  @as("TerminationProtectionEnabled")
  terminationProtectionEnabled: option<terminationProtectionEnabled>,
  @ocaml.doc("<p>The name of the event data store.</p>") @as("Name")
  name: option<eventDataStoreName>,
  @ocaml.doc("<p>The ARN of the event data store.</p>") @as("EventDataStoreArn")
  eventDataStoreArn: option<eventDataStoreArn>,
}
type eventDataStores = array<eventDataStore>
@ocaml.doc("<fullname>CloudTrail</fullname>
         <p>This is the CloudTrail API Reference. It provides descriptions of actions, data types, common parameters, and common errors for CloudTrail.</p>
         <p>CloudTrail is a web service that records Amazon Web Services API calls for your Amazon Web Services account and delivers log files to an Amazon S3 bucket. 
         The recorded information includes the identity of the user, the start time of the Amazon Web Services API call, the source IP address, the request parameters, and the response elements returned by the service.</p> 
      
         <note>
            <p>As an alternative to the API,
            you can use one of the Amazon Web Services SDKs, which consist of libraries and sample code for various
         programming languages and platforms (Java, Ruby, .NET, iOS, Android, etc.). The SDKs
         provide programmatic access to CloudTrail. For example, the SDKs
         handle cryptographically signing requests, managing errors, and retrying requests
         automatically. For more information about the Amazon Web Services SDKs, including how to download and install
            them, see <a href=\"http://aws.amazon.com/tools/\">Tools to Build on Amazon Web Services</a>.</p> 
         </note> 
         <p>See the <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html\">CloudTrail User 
         Guide</a> for information about the data that is included with each Amazon Web Services API call listed in the log files.</p>")
module UpdateTrail = {
  type t
  @ocaml.doc("<p>Specifies settings to update for the trail.</p>")
  type request = {
    @ocaml.doc("<p>Specifies whether the trail is applied to all accounts in an organization in Organizations, or only for the current Amazon Web Services account. 
         The default is false, and cannot be true unless the call is made on behalf of an Amazon Web Services account that is the management account for an organization in 
         Organizations. If the trail is not an organization trail and this is set to <code>true</code>, the trail will be created in all Amazon Web Services accounts that belong
         to the organization. If the trail is an organization trail and this is set to <code>false</code>, the trail will remain in the current Amazon Web Services account but be 
         deleted from all member accounts in the organization.</p>")
    @as("IsOrganizationTrail")
    isOrganizationTrail: option<boolean_>,
    @ocaml.doc("<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
         value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully
         specified ARN to a key, or a globally unique identifier.</p>
         <p>CloudTrail also supports KMS multi-Region keys. For more information about multi-Region keys,
         see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html\">Using multi-Region keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
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
      "<p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs are delivered. Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>"
    )
    @as("CloudWatchLogsLogGroupArn")
    cloudWatchLogsLogGroupArn: option<string_>,
    @ocaml.doc("<p>Specifies whether log file validation is enabled. The default is false.</p>
         <note>
            <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail 
            does not create digest files for log files that were delivered during a period in which log file integrity validation 
            was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on 
            January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon 
            on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
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
            and <code>my--namespace</code> are not valid.</p>
            </li>
            <li>
               <p>Not be in IP address format (for example, 192.168.5.4)</p>
            </li>
         </ul>
         <p>If <code>Name</code> is a trail ARN, it must be in the following format.</p>
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
    @ocaml.doc("<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the following format.</p>
      
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
      "<p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs are delivered.</p>"
    )
    @as("CloudWatchLogsLogGroupArn")
    cloudWatchLogsLogGroupArn: option<string_>,
    @ocaml.doc("<p>Specifies whether log file integrity validation is enabled.</p>")
    @as("LogFileValidationEnabled")
    logFileValidationEnabled: option<boolean_>,
    @ocaml.doc("<p>Specifies the ARN of the trail that was updated. The following is the format of a trail ARN.</p>
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
         when log files are delivered. The following is the format of a topic ARN.</p>
         <p>
            <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code>
         </p>")
    @as("SnsTopicARN")
    snsTopicARN: option<string_>,
    @ocaml.doc("<p>This field is no longer in use. Use <a>UpdateTrailResponse$SnsTopicARN</a>.</p>")
    @as("SnsTopicName")
    snsTopicName: option<string_>,
    @ocaml.doc("<p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated
         for log file delivery. 
         For more information, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html\">Finding Your IAM Log Files</a>.</p>")
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
    "<p>Passes the request to CloudTrail to stop logging Amazon Web Services API calls for the specified account.</p>"
  )
  type request = {
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging Amazon Web Services 
         API calls. The following is the format of a trail ARN.</p>
            <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "StopLoggingCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The SQL code of your query.</p>") @as("QueryStatement")
    queryStatement: queryStatement,
  }
  type response = {
    @ocaml.doc("<p>The ID of the started query.</p>") @as("QueryId") queryId: option<uuid>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "StartQueryCommand"
  let make = (~queryStatement, ()) => new({queryStatement: queryStatement})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartLogging = {
  type t
  @ocaml.doc(
    "<p>The request to CloudTrail to start logging Amazon Web Services API calls for an account.</p>"
  )
  type request = {
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs Amazon Web Services API calls. 
         The following is the format of a trail ARN.</p>
            <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "StartLoggingCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetTrailStatus = {
  type t
  @ocaml.doc("<p>The name of a trail about which you want the current status.</p>")
  type request = {
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a 
         shadow trail (a replication of the trail in another region), you must specify its ARN. The following is the format of a trail ARN.</p>
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
         file to the designated bucket. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error
            Responses</a> in the Amazon S3 API Reference. </p>
         <note>
            <p>This error occurs only when there is a problem with the destination S3 bucket, and does
         not occur for requests that time out. To resolve the issue, create a new bucket, and then call
            <code>UpdateTrail</code> to specify the new bucket; or fix the existing objects so that
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
      "<p>Specifies the most recent date and time when CloudTrail stopped recording API calls for an Amazon Web Services account.</p>"
    )
    @as("StopLoggingTime")
    stopLoggingTime: option<date>,
    @ocaml.doc(
      "<p>Specifies the most recent date and time when CloudTrail started recording API calls for an Amazon Web Services account.</p>"
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
         to the designated bucket. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html\">Error
            Responses</a> in the Amazon S3 API Reference. </p>
         <note>
            <p>This error occurs only when there is a problem with the destination S3 bucket, and does
         not occur for requests that time out. To resolve the issue, create a new bucket, and then call
            <code>UpdateTrail</code> to specify the new bucket; or fix the existing objects so that
         CloudTrail can again write to the bucket.</p>
         </note>")
    @as("LatestDeliveryError")
    latestDeliveryError: option<string_>,
    @ocaml.doc(
      "<p>Whether the CloudTrail trail is currently logging Amazon Web Services API calls.</p>"
    )
    @as("IsLogging")
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
    @ocaml.doc("<p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The following is the format of a
         trail ARN.
         <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("Name")
    name: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "DeleteTrailCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventDataStore = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN (or the ID suffix of the ARN) of the event data store to delete.</p>")
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudtrail") @new
  external new: request => t = "DeleteEventDataStoreCommand"
  let make = (~eventDataStore, ()) => new({eventDataStore: eventDataStore})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CancelQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the query that you want to cancel. The <code>QueryId</code> comes from the response of a <code>StartQuery</code> 
      operation.</p>")
    @as("QueryId")
    queryId: uuid,
    @ocaml.doc(
      "<p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified query is running.</p>"
    )
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {
    @ocaml.doc("<p>Shows the status of a query after a <code>CancelQuery</code> request. Typically, the values shown are either 
         <code>RUNNING</code> or <code>CANCELLED</code>.</p>")
    @as("QueryStatus")
    queryStatus: queryStatus,
    @ocaml.doc("<p>The ID of the canceled query.</p>") @as("QueryId") queryId: uuid,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "CancelQueryCommand"
  let make = (~queryId, ~eventDataStore, ()) =>
    new({queryId: queryId, eventDataStore: eventDataStore})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
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

module DescribeQuery = {
  type t
  type request = {
    @ocaml.doc("<p>The query ID.</p>") @as("QueryId") queryId: uuid,
    @ocaml.doc(
      "<p>The ARN (or the ID suffix of the ARN) of an event data store on which the specified query was run.</p>"
    )
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {
    @ocaml.doc("<p>The error message returned if a query failed.</p>") @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>Metadata about a query, including the number of events that were matched, the total number of events scanned, the query run time 
         in milliseconds, and the query's creation time.</p>")
    @as("QueryStatistics")
    queryStatistics: option<queryStatisticsForDescribeQuery>,
    @ocaml.doc("<p>The status of a query. Values for <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>, 
         <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code>
         </p>")
    @as("QueryStatus")
    queryStatus: option<queryStatus>,
    @ocaml.doc("<p>The SQL code of a query.</p>") @as("QueryString")
    queryString: option<queryStatement>,
    @ocaml.doc("<p>The ID of the query.</p>") @as("QueryId") queryId: option<uuid>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "DescribeQueryCommand"
  let make = (~queryId, ~eventDataStore, ()) =>
    new({queryId: queryId, eventDataStore: eventDataStore})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RemoveTags = {
  type t
  @ocaml.doc("<p>Specifies the tags to remove from a trail.</p>")
  type request = {
    @ocaml.doc("<p>Specifies a list of tags to be removed.</p>") @as("TagsList") tagsList: tagsList,
    @ocaml.doc("<p>Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("ResourceId")
    resourceId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "RemoveTagsCommand"
  let make = (~tagsList, ~resourceId, ()) => new({tagsList: tagsList, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutInsightSelectors = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A JSON string that contains the insight types you want to log on a trail. <code>ApiCallRateInsight</code> and <code>ApiErrorRateInsight</code> are valid insight types.</p>"
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
    @ocaml.doc("<p>A JSON string that contains the Insights event types that you want to log on a trail. The valid Insights types in this release are 
         <code>ApiErrorRateInsight</code> and <code>ApiCallRateInsight</code>.</p>")
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

module ListQueries = {
  type t
  type request = {
    @ocaml.doc("<p>The status of queries that you want to return in results. Valid values for <code>QueryStatus</code> include <code>QUEUED</code>, <code>RUNNING</code>, 
         <code>FINISHED</code>, <code>FAILED</code>, <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>")
    @as("QueryStatus")
    queryStatus: option<queryStatus>,
    @ocaml.doc("<p>Use with <code>StartTime</code> to bound a <code>ListQueries</code> request, and limit its results to only those queries run 
      within a specified time period.</p>")
    @as("EndTime")
    endTime: option<date>,
    @ocaml.doc("<p>Use with <code>EndTime</code> to bound a <code>ListQueries</code> request, and limit its results to only those queries run 
         within a specified time period.</p>")
    @as("StartTime")
    startTime: option<date>,
    @ocaml.doc("<p>The maximum number of queries to show on a page.</p>") @as("MaxResults")
    maxResults: option<listQueriesMaxResultsCount>,
    @ocaml.doc("<p>A token you can use to get the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The ARN (or the ID suffix of the ARN) of an event data store on which queries were run.</p>"
    )
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {
    @ocaml.doc("<p>A token you can use to get the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Lists matching query results, and shows query ID, status, and creation time of each query.</p>"
    )
    @as("Queries")
    queries: option<queries>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "ListQueriesCommand"
  let make = (
    ~eventDataStore,
    ~queryStatus=?,
    ~endTime=?,
    ~startTime=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      queryStatus: queryStatus,
      endTime: endTime,
      startTime: startTime,
      maxResults: maxResults,
      nextToken: nextToken,
      eventDataStore: eventDataStore,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPublicKeys = {
  type t
  @ocaml.doc("<p>Requests the public keys for a specified time range.</p>")
  type request = {
    @ocaml.doc("<p>Reserved for future use.</p>") @as("NextToken") nextToken: option<string_>,
    @ocaml.doc("<p>Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not 
         specified, the current time is used.</p>")
    @as("EndTime")
    endTime: option<date>,
    @ocaml.doc("<p>Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. 
         If not specified, the current time is used, and the current public key is returned.</p>")
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
    @ocaml.doc("<p>A JSON string that contains the insight types you want to log on a trail. In this release, <code>ApiErrorRateInsight</code> and 
         <code>ApiCallRateInsight</code> are supported as insight types.</p>")
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
         <code>KMSKeyId</code> only appears in results if a trail's log files are encrypted with KMS customer managed keys.</p>")
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
    @ocaml.doc("<p>Specifies whether the trail is created for all accounts in an organization in Organizations, or only for the current Amazon Web Services account. 
         The default is false, and cannot be true unless the call is made on behalf of an Amazon Web Services account that is the management account for an organization in 
         Organizations.</p>")
    @as("IsOrganizationTrail")
    isOrganizationTrail: option<boolean_>,
    @ocaml.doc("<p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The
         value can be an alias name prefixed by \"alias/\", a fully specified ARN to an alias, a fully
         specified ARN to a key, or a globally unique identifier.</p>
         <p>CloudTrail also supports KMS multi-Region keys. For more information about multi-Region keys,
         see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html\">Using multi-Region keys</a> in the <i>Key Management Service Developer Guide</i>.</p>
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
         to which CloudTrail logs will be delivered. Not required unless you specify <code>CloudWatchLogsRoleArn</code>.</p>")
    @as("CloudWatchLogsLogGroupArn")
    cloudWatchLogsLogGroupArn: option<string_>,
    @ocaml.doc("<p>Specifies whether log file integrity validation is enabled. The default is false.</p>
         <note>
            <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail does 
            not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. 
            For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable 
            it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on 
            January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p>
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
            and <code>my--namespace</code> are not valid.</p>
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
    @ocaml.doc("<p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. 
         The value is a fully specified ARN to a KMS key in the following format.</p>
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
    @ocaml.doc("<p>Contains a list of tags, up to a limit of 50</p>") @as("TagsList")
    tagsList: tagsList,
    @ocaml.doc("<p>Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:</p>
         <p>
            <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code>
         </p>")
    @as("ResourceId")
    resourceId: string_,
  }
  type response = {.}
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "AddTagsCommand"
  let make = (~tagsList, ~resourceId, ()) => new({tagsList: tagsList, resourceId: resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetQueryResults = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of query results to display on a single page.</p>")
    @as("MaxQueryResults")
    maxQueryResults: option<maxQueryResults>,
    @ocaml.doc("<p>A token you can use to get the next page of query results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the query for which you want to get results.</p>") @as("QueryId")
    queryId: uuid,
    @ocaml.doc(
      "<p>The ARN (or ID suffix of the ARN) of the event data store against which the query was run.</p>"
    )
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {
    @ocaml.doc("<p>The error message returned if a query failed.</p>") @as("ErrorMessage")
    errorMessage: option<errorMessage>,
    @ocaml.doc("<p>A token you can use to get the next page of query results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Contains the individual event results of the query.</p>") @as("QueryResultRows")
    queryResultRows: option<queryResultRows>,
    @ocaml.doc("<p>Shows the count of query results.</p>") @as("QueryStatistics")
    queryStatistics: option<queryStatistics>,
    @ocaml.doc("<p>The status of the query. Values include <code>QUEUED</code>, <code>RUNNING</code>, <code>FINISHED</code>, <code>FAILED</code>, 
         <code>TIMED_OUT</code>, or <code>CANCELLED</code>.</p>")
    @as("QueryStatus")
    queryStatus: option<queryStatus>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "GetQueryResultsCommand"
  let make = (~queryId, ~eventDataStore, ~maxQueryResults=?, ~nextToken=?, ()) =>
    new({
      maxQueryResults: maxQueryResults,
      nextToken: nextToken,
      queryId: queryId,
      eventDataStore: eventDataStore,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
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
    @ocaml.doc("<p>Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The following is the format of 
         a trail ARN.</p>
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

module UpdateEventDataStore = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates that termination protection is enabled and the event data store cannot be automatically deleted.</p>"
    )
    @as("TerminationProtectionEnabled")
    terminationProtectionEnabled: option<terminationProtectionEnabled>,
    @ocaml.doc("<p>The retention period, in days.</p>") @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc(
      "<p>Specifies whether an event data store collects events logged for an organization in Organizations.</p>"
    )
    @as("OrganizationEnabled")
    organizationEnabled: option<boolean_>,
    @ocaml.doc(
      "<p>Specifies whether an event data store collects events from all regions, or only from the region in which it was created.</p>"
    )
    @as("MultiRegionEnabled")
    multiRegionEnabled: option<boolean_>,
    @ocaml.doc(
      "<p>The advanced event selectors used to select events for the event data store.</p>"
    )
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc("<p>The event data store name.</p>") @as("Name") name: option<eventDataStoreName>,
    @ocaml.doc(
      "<p>The ARN (or the ID suffix of the ARN) of the event data store that you want to update.</p>"
    )
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The timestamp that shows when the event data store was last updated. <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>"
    )
    @as("UpdatedTimestamp")
    updatedTimestamp: option<date>,
    @ocaml.doc("<p>The timestamp that shows when an event data store was first created.</p>")
    @as("CreatedTimestamp")
    createdTimestamp: option<date>,
    @ocaml.doc(
      "<p>Indicates whether termination protection is enabled for the event data store.</p>"
    )
    @as("TerminationProtectionEnabled")
    terminationProtectionEnabled: option<terminationProtectionEnabled>,
    @ocaml.doc("<p>The retention period, in days.</p>") @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc(
      "<p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>"
    )
    @as("OrganizationEnabled")
    organizationEnabled: option<boolean_>,
    @ocaml.doc(
      "<p>Indicates whether the event data store includes events from all regions, or only from the region in which it was created.</p>"
    )
    @as("MultiRegionEnabled")
    multiRegionEnabled: option<boolean_>,
    @ocaml.doc("<p>The advanced event selectors that are applied to the event data store.</p>")
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc(
      "<p>The status of an event data store. Values can be <code>ENABLED</code> and <code>PENDING_DELETION</code>.</p>"
    )
    @as("Status")
    status: option<eventDataStoreStatus>,
    @ocaml.doc("<p>The name of the event data store.</p>") @as("Name")
    name: option<eventDataStoreName>,
    @ocaml.doc("<p>The ARN of the event data store.</p>") @as("EventDataStoreArn")
    eventDataStoreArn: option<eventDataStoreArn>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new: request => t = "UpdateEventDataStoreCommand"
  let make = (
    ~eventDataStore,
    ~terminationProtectionEnabled=?,
    ~retentionPeriod=?,
    ~organizationEnabled=?,
    ~multiRegionEnabled=?,
    ~advancedEventSelectors=?,
    ~name=?,
    (),
  ) =>
    new({
      terminationProtectionEnabled: terminationProtectionEnabled,
      retentionPeriod: retentionPeriod,
      organizationEnabled: organizationEnabled,
      multiRegionEnabled: multiRegionEnabled,
      advancedEventSelectors: advancedEventSelectors,
      name: name,
      eventDataStore: eventDataStore,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreEventDataStore = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN (or the ID suffix of the ARN) of the event data store that you want to restore.</p>"
    )
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {
    @ocaml.doc("<p>The timestamp that shows when an event data store was updated, if applicable. 
         <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>")
    @as("UpdatedTimestamp")
    updatedTimestamp: option<date>,
    @ocaml.doc("<p>The timestamp of an event data store's creation.</p>") @as("CreatedTimestamp")
    createdTimestamp: option<date>,
    @ocaml.doc(
      "<p>Indicates that termination protection is enabled and the event data store cannot be automatically deleted.</p>"
    )
    @as("TerminationProtectionEnabled")
    terminationProtectionEnabled: option<terminationProtectionEnabled>,
    @ocaml.doc("<p>The retention period, in days.</p>") @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc(
      "<p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>"
    )
    @as("OrganizationEnabled")
    organizationEnabled: option<boolean_>,
    @ocaml.doc("<p>Indicates whether the event data store is collecting events from all regions, or only from the region in which the event data 
      store was created.</p>")
    @as("MultiRegionEnabled")
    multiRegionEnabled: option<boolean_>,
    @ocaml.doc("<p>The advanced event selectors that were used to select events.</p>")
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc("<p>The status of the event data store.</p>") @as("Status")
    status: option<eventDataStoreStatus>,
    @ocaml.doc("<p>The name of the event data store.</p>") @as("Name")
    name: option<eventDataStoreName>,
    @ocaml.doc("<p>The event data store ARN.</p>") @as("EventDataStoreArn")
    eventDataStoreArn: option<eventDataStoreArn>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new: request => t = "RestoreEventDataStoreCommand"
  let make = (~eventDataStore, ()) => new({eventDataStore: eventDataStore})
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
            data events for trails</a> in the <i>CloudTrail User Guide</i>.
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
               and <code>my--namespace</code> are not valid.</p>
            </li>
            <li>
               <p>Not be in IP address format (for example, 192.168.5.4)</p>
            </li>
         </ul>
         <p>If you specify a trail ARN, it must be in the following format.</p>
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
    @ocaml.doc("<p>Specifies the ARN of the trail that was updated with event selectors. The following is the format of a trail ARN.</p>
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

module GetEventDataStore = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN (or ID suffix of the ARN) of the event data store about which you want information.</p>"
    )
    @as("EventDataStore")
    eventDataStore: eventDataStoreArn,
  }
  type response = {
    @ocaml.doc(
      "<p>Shows the time that an event data store was updated, if applicable. <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>"
    )
    @as("UpdatedTimestamp")
    updatedTimestamp: option<date>,
    @ocaml.doc("<p>The timestamp of the event data store's creation.</p>") @as("CreatedTimestamp")
    createdTimestamp: option<date>,
    @ocaml.doc("<p>Indicates that termination protection is enabled.</p>")
    @as("TerminationProtectionEnabled")
    terminationProtectionEnabled: option<terminationProtectionEnabled>,
    @ocaml.doc("<p>The retention period of the event data store, in days.</p>")
    @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc(
      "<p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>"
    )
    @as("OrganizationEnabled")
    organizationEnabled: option<boolean_>,
    @ocaml.doc(
      "<p>Indicates whether the event data store includes events from all regions, or only from the region in which it was created.</p>"
    )
    @as("MultiRegionEnabled")
    multiRegionEnabled: option<boolean_>,
    @ocaml.doc("<p>The advanced event selectors used to select events for the data store.</p>")
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc(
      "<p>The status of an event data store. Values can be <code>ENABLED</code> and <code>PENDING_DELETION</code>.</p>"
    )
    @as("Status")
    status: option<eventDataStoreStatus>,
    @ocaml.doc("<p>The name of the event data store.</p>") @as("Name")
    name: option<eventDataStoreName>,
    @ocaml.doc("<p>The event data store Amazon Resource Number (ARN).</p>") @as("EventDataStoreArn")
    eventDataStoreArn: option<eventDataStoreArn>,
  }
  @module("@aws-sdk/client-cloudtrail") @new external new: request => t = "GetEventDataStoreCommand"
  let make = (~eventDataStore, ()) => new({eventDataStore: eventDataStore})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventDataStore = {
  type t
  type request = {
    @as("TagsList") tagsList: option<tagsList>,
    @ocaml.doc("<p>Specifies whether termination protection is enabled for the event data store. If termination protection is enabled, you 
      cannot delete the event data store until termination protection is disabled.</p>")
    @as("TerminationProtectionEnabled")
    terminationProtectionEnabled: option<terminationProtectionEnabled>,
    @ocaml.doc("<p>The retention period of the event data store, in days. You can set a retention period of up to 2555 days, 
      the equivalent of seven years.</p>")
    @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc(
      "<p>Specifies whether an event data store collects events logged for an organization in Organizations.</p>"
    )
    @as("OrganizationEnabled")
    organizationEnabled: option<boolean_>,
    @ocaml.doc("<p>Specifies whether the event data store includes events from all regions, or only from the region in which the event data store 
         is created.</p>")
    @as("MultiRegionEnabled")
    multiRegionEnabled: option<boolean_>,
    @ocaml.doc("<p>The advanced event selectors to use to select the events for the data store. For more information about how to use advanced event 
         selectors, see <a href=\"https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html#creating-data-event-selectors-advanced\">Log events by using advanced event selectors</a> in the CloudTrail 
         User Guide.</p>")
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc("<p>The name of the event data store.</p>") @as("Name") name: eventDataStoreName,
  }
  type response = {
    @ocaml.doc("<p>The timestamp that shows when an event data store was updated, if applicable. 
         <code>UpdatedTimestamp</code> is always either the same or newer than the time shown in <code>CreatedTimestamp</code>.</p>")
    @as("UpdatedTimestamp")
    updatedTimestamp: option<date>,
    @ocaml.doc("<p>The timestamp that shows when the event data store was created.</p>")
    @as("CreatedTimestamp")
    createdTimestamp: option<date>,
    @as("TagsList") tagsList: option<tagsList>,
    @ocaml.doc(
      "<p>Indicates whether termination protection is enabled for the event data store.</p>"
    )
    @as("TerminationProtectionEnabled")
    terminationProtectionEnabled: option<terminationProtectionEnabled>,
    @ocaml.doc("<p>The retention period of an event data store, in days.</p>")
    @as("RetentionPeriod")
    retentionPeriod: option<retentionPeriod>,
    @ocaml.doc(
      "<p>Indicates whether an event data store is collecting logged events for an organization in Organizations.</p>"
    )
    @as("OrganizationEnabled")
    organizationEnabled: option<boolean_>,
    @ocaml.doc(
      "<p>Indicates whether the event data store collects events from all regions, or only from the region in which it was created.</p>"
    )
    @as("MultiRegionEnabled")
    multiRegionEnabled: option<boolean_>,
    @ocaml.doc(
      "<p>The advanced event selectors that were used to select the events for the data store.</p>"
    )
    @as("AdvancedEventSelectors")
    advancedEventSelectors: option<advancedEventSelectors>,
    @ocaml.doc("<p>The status of event data store creation.</p>") @as("Status")
    status: option<eventDataStoreStatus>,
    @ocaml.doc("<p>The name of the event data store.</p>") @as("Name")
    name: option<eventDataStoreName>,
    @ocaml.doc("<p>The ARN of the event data store.</p>") @as("EventDataStoreArn")
    eventDataStoreArn: option<eventDataStoreArn>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new: request => t = "CreateEventDataStoreCommand"
  let make = (
    ~name,
    ~tagsList=?,
    ~terminationProtectionEnabled=?,
    ~retentionPeriod=?,
    ~organizationEnabled=?,
    ~multiRegionEnabled=?,
    ~advancedEventSelectors=?,
    (),
  ) =>
    new({
      tagsList: tagsList,
      terminationProtectionEnabled: terminationProtectionEnabled,
      retentionPeriod: retentionPeriod,
      organizationEnabled: organizationEnabled,
      multiRegionEnabled: multiRegionEnabled,
      advancedEventSelectors: advancedEventSelectors,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventDataStores = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of event data stores to display on a single page.</p>")
    @as("MaxResults")
    maxResults: option<listEventDataStoresMaxResultsCount>,
    @ocaml.doc("<p>A token you can use to get the next page of event data store results.</p>")
    @as("NextToken")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>A token you can use to get the next page of results.</p>") @as("NextToken")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>Contains information about event data stores in the account, in the current region.</p>"
    )
    @as("EventDataStores")
    eventDataStores: option<eventDataStores>,
  }
  @module("@aws-sdk/client-cloudtrail") @new
  external new: request => t = "ListEventDataStoresCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
