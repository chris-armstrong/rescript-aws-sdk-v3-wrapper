type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-dynamodb") @new
external createClient: unit => awsServiceClient = "DynamoDBClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type updateExpression = string
type timeToLiveStatus = [
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLING") #ENABLING
]
type timeToLiveEnabled = bool
type timeToLiveAttributeName = string
type timeRangeUpperBound = Js.Date.t
type timeRangeLowerBound = Js.Date.t
type tagValueString = string
type tagKeyString = string
type tableStatus = [
  | @as("ARCHIVED") #ARCHIVED
  | @as("ARCHIVING") #ARCHIVING
  | @as("INACCESSIBLE_ENCRYPTION_CREDENTIALS") #INACCESSIBLE_ENCRYPTION_CREDENTIALS
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type tableName = string
type tableId = string
type tableCreationDateTime = Js.Date.t
type tableClass = [
  | @as("STANDARD_INFREQUENT_ACCESS") #STANDARD_INFREQUENT_ACCESS
  | @as("STANDARD") #STANDARD
]
type tableArn = string
type stringAttributeValue = string
type string_ = string
type streamViewType = [
  | @as("KEYS_ONLY") #KEYS_ONLY
  | @as("NEW_AND_OLD_IMAGES") #NEW_AND_OLD_IMAGES
  | @as("OLD_IMAGE") #OLD_IMAGE
  | @as("NEW_IMAGE") #NEW_IMAGE
]
type streamEnabled = bool
type streamArn = string
type select = [
  | @as("COUNT") #COUNT
  | @as("SPECIFIC_ATTRIBUTES") #SPECIFIC_ATTRIBUTES
  | @as("ALL_PROJECTED_ATTRIBUTES") #ALL_PROJECTED_ATTRIBUTES
  | @as("ALL_ATTRIBUTES") #ALL_ATTRIBUTES
]
type scanTotalSegments = int
type scanSegment = int
type scalarAttributeType = [@as("B") #B | @as("N") #N | @as("S") #S]
type ssetype = [@as("KMS") #KMS | @as("AES256") #AES256]
type ssestatus = [
  | @as("UPDATING") #UPDATING
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type sseenabled = bool
type s3SseKmsKeyId = string
type s3SseAlgorithm = [@as("KMS") #KMS | @as("AES256") #AES256]
type s3Prefix = string
type s3BucketOwner = string
type s3Bucket = string
type returnValuesOnConditionCheckFailure = [@as("NONE") #NONE | @as("ALL_OLD") #ALL_OLD]
type returnValue = [
  | @as("UPDATED_NEW") #UPDATED_NEW
  | @as("ALL_NEW") #ALL_NEW
  | @as("UPDATED_OLD") #UPDATED_OLD
  | @as("ALL_OLD") #ALL_OLD
  | @as("NONE") #NONE
]
type returnItemCollectionMetrics = [@as("NONE") #NONE | @as("SIZE") #SIZE]
@ocaml.doc("<p>Determines the level of detail about either provisioned or on-demand throughput
            consumption that is returned in the response:</p>
        <ul>
            <li>
                <p>
                    <code>INDEXES</code> - The response includes the aggregate
                        <code>ConsumedCapacity</code> for the operation, together with
                        <code>ConsumedCapacity</code> for each table and secondary index that was
                    accessed.</p>
                <p>Note that some operations, such as <code>GetItem</code> and
                        <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
                    specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
                    information for table(s).</p>
            </li>
            <li>
                <p>
                    <code>TOTAL</code> - The response includes only the aggregate
                        <code>ConsumedCapacity</code> for the operation.</p>
            </li>
            <li>
                <p>
                    <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
                    response.</p>
            </li>
         </ul>")
type returnConsumedCapacity = [@as("NONE") #NONE | @as("TOTAL") #TOTAL | @as("INDEXES") #INDEXES]
type restoreInProgress = bool
type resourceArnString = string
type replicaStatusPercentProgress = string
type replicaStatusDescription = string
type replicaStatus = [
  | @as("INACCESSIBLE_ENCRYPTION_CREDENTIALS") #INACCESSIBLE_ENCRYPTION_CREDENTIALS
  | @as("REGION_DISABLED") #REGION_DISABLED
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATION_FAILED") #CREATION_FAILED
  | @as("CREATING") #CREATING
]
type regionName = string
type projectionType = [@as("INCLUDE") #INCLUDE | @as("KEYS_ONLY") #KEYS_ONLY | @as("ALL") #ALL]
type projectionExpression = string
type positiveLongObject = float
type positiveIntegerObject = int
type pointInTimeRecoveryStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type partiQLStatement = string
type partiQLNextToken = string
type numberAttributeValue = string
type nullAttributeValue = bool
type nonNegativeLongObject = float
type nonKeyAttributeName = string
type nextTokenString = string
type long = float
type listTablesInputLimit = int
type listExportsMaxLimit = int
type listContributorInsightsLimit = int
type lastUpdateDateTime = Js.Date.t
type keyType = [@as("RANGE") #RANGE | @as("HASH") #HASH]
type keySchemaAttributeName = string
type keyExpression = string
type kmsmasterKeyId = string
type kmsmasterKeyArn = string
type itemCount = float
type itemCollectionSizeEstimateBound = float
type integerObject = int
type integer_ = int
type indexStatus = [
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type indexName = string
type globalTableStatus = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type globalTableArnString = string
type failureMessage = string
type failureCode = string
type expressionAttributeValueVariable = string
type expressionAttributeNameVariable = string
type exportTime = Js.Date.t
type exportStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type exportStartTime = Js.Date.t
type exportNextToken = string
type exportManifest = string
type exportFormat = [@as("ION") #ION | @as("DYNAMODB_JSON") #DYNAMODB_JSON]
type exportEndTime = Js.Date.t
type exportArn = string
type exceptionName = string
type exceptionDescription = string
type errorMessage = string
type double = float
type destinationStatus = [
  | @as("ENABLE_FAILED") #ENABLE_FAILED
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ACTIVE") #ACTIVE
  | @as("ENABLING") #ENABLING
]
type date = Js.Date.t
type contributorInsightsStatus = [
  | @as("FAILED") #FAILED
  | @as("DISABLED") #DISABLED
  | @as("DISABLING") #DISABLING
  | @as("ENABLED") #ENABLED
  | @as("ENABLING") #ENABLING
]
type contributorInsightsRule = string
type contributorInsightsAction = [@as("DISABLE") #DISABLE | @as("ENABLE") #ENABLE]
type continuousBackupsStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type consumedCapacityUnits = float
type consistentRead = bool
type conditionalOperator = [@as("OR") #OR | @as("AND") #AND]
type conditionExpression = string
type comparisonOperator = [
  | @as("BEGINS_WITH") #BEGINS_WITH
  | @as("NOT_CONTAINS") #NOT_CONTAINS
  | @as("CONTAINS") #CONTAINS
  | @as("NULL") #NULL
  | @as("NOT_NULL") #NOT_NULL
  | @as("BETWEEN") #BETWEEN
  | @as("GT") #GT
  | @as("GE") #GE
  | @as("LT") #LT
  | @as("LE") #LE
  | @as("IN") #IN
  | @as("NE") #NE
  | @as("EQ") #EQ
]
type code = string
type clientToken = string
type clientRequestToken = string
type booleanObject = bool
type booleanAttributeValue = bool
type binaryAttributeValue = NodeJs.Buffer.t
type billingMode = [@as("PAY_PER_REQUEST") #PAY_PER_REQUEST | @as("PROVISIONED") #PROVISIONED]
type billedSizeBytes = float
type batchStatementErrorCodeEnum = [
  | @as("DuplicateItem") #DuplicateItem
  | @as("AccessDenied") #AccessDenied
  | @as("ResourceNotFound") #ResourceNotFound
  | @as("InternalServerError") #InternalServerError
  | @as("ThrottlingError") #ThrottlingError
  | @as("TransactionConflict") #TransactionConflict
  | @as("ProvisionedThroughputExceeded") #ProvisionedThroughputExceeded
  | @as("ValidationError") #ValidationError
  | @as("RequestLimitExceeded") #RequestLimitExceeded
  | @as("ItemCollectionSizeLimitExceeded") #ItemCollectionSizeLimitExceeded
  | @as("ConditionalCheckFailed") #ConditionalCheckFailed
]
type backupsInputLimit = int
type backupTypeFilter = [
  | @as("ALL") #ALL
  | @as("AWS_BACKUP") #AWS_BACKUP
  | @as("SYSTEM") #SYSTEM
  | @as("USER") #USER
]
type backupType = [@as("AWS_BACKUP") #AWS_BACKUP | @as("SYSTEM") #SYSTEM | @as("USER") #USER]
type backupStatus = [
  | @as("AVAILABLE") #AVAILABLE
  | @as("DELETED") #DELETED
  | @as("CREATING") #CREATING
]
type backupSizeBytes = float
type backupName = string
type backupCreationDateTime = Js.Date.t
type backupArn = string
type backfilling = bool
type autoScalingRoleArn = string
type autoScalingPolicyName = string
type attributeName = string
type attributeAction = [@as("DELETE") #DELETE | @as("PUT") #PUT | @as("ADD") #ADD]
type archivalReason = string
@ocaml.doc("<p>Represents the settings used to enable or disable Time to Live (TTL) for the specified
            table.</p>")
type timeToLiveSpecification = {
  @ocaml.doc("<p>The name of the TTL attribute used to store the expiration time for items in the
            table.</p>")
  @as("AttributeName")
  attributeName: timeToLiveAttributeName,
  @ocaml.doc(
    "<p>Indicates whether TTL is to be enabled (true) or disabled (false) on the table.</p>"
  )
  @as("Enabled")
  enabled: timeToLiveEnabled,
}
@ocaml.doc("<p>The description of the Time to Live (TTL) status on the specified table. </p>")
type timeToLiveDescription = {
  @ocaml.doc("<p> The name of the TTL attribute for items in the table.</p>") @as("AttributeName")
  attributeName: option<timeToLiveAttributeName>,
  @ocaml.doc("<p> The TTL status for the table.</p>") @as("TimeToLiveStatus")
  timeToLiveStatus: option<timeToLiveStatus>,
}
type tagKeyList = array<tagKeyString>
@ocaml.doc("<p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single
            DynamoDB table. </p>
        <p>Amazon Web Services-assigned tag names and values are automatically assigned the
                <code>aws:</code> prefix, which the user cannot assign. Amazon Web Services-assigned
            tag names do not count towards the tag limit of 50. User-assigned tag names have the
            prefix <code>user:</code> in the Cost Allocation Report. You cannot backdate the
            application of a tag.</p>
        <p>For an overview on tagging DynamoDB resources, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html\">Tagging
                for DynamoDB</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag. Tag values are case-sensitive and can be null.</p>")
  @as("Value")
  value: tagValueString,
  @ocaml.doc("<p>The key of the tag. Tag keys are case sensitive. Each DynamoDB table can
            only have up to one tag with the same key. If you try to add an existing tag (same key),
            the existing tag value will be updated to the new value.</p>")
  @as("Key")
  key: tagKeyString,
}
type tableNameList = array<tableName>
@ocaml.doc("<p>Contains details of the table class.</p>")
type tableClassSummary = {
  @ocaml.doc("<p>The date and time at which the table class was last updated.</p>")
  @as("LastUpdateDateTime")
  lastUpdateDateTime: option<date>,
  @ocaml.doc("<p>The table class of the specified table. Valid values are <code>STANDARD</code> and
                <code>STANDARD_INFREQUENT_ACCESS</code>.</p>")
  @as("TableClass")
  tableClass: option<tableClass>,
}
type stringSetAttributeValue = array<stringAttributeValue>
@ocaml.doc("<p>Represents the DynamoDB Streams configuration for a table in DynamoDB.</p>")
type streamSpecification = {
  @ocaml.doc("<p> When an item in the table is modified, <code>StreamViewType</code> determines what
            information is written to the stream for this table. Valid values for
                <code>StreamViewType</code> are:</p>
        <ul>
            <li>
                <p>
                    <code>KEYS_ONLY</code> - Only the key attributes of the modified item are
                    written to the stream.</p>
            </li>
            <li>
                <p>
                    <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified,
                    is written to the stream.</p>
            </li>
            <li>
                <p>
                    <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified,
                    is written to the stream.</p>
            </li>
            <li>
                <p>
                    <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the
                    item are written to the stream.</p>
            </li>
         </ul>")
  @as("StreamViewType")
  streamViewType: option<streamViewType>,
  @ocaml.doc("<p>Indicates whether DynamoDB Streams is enabled (true) or disabled (false) on the
            table.</p>")
  @as("StreamEnabled")
  streamEnabled: streamEnabled,
}
@ocaml.doc("<p>Represents the settings used to enable server-side encryption.</p>")
type ssespecification = {
  @ocaml.doc("<p>The KMS key that should be used for the KMS encryption.
            To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN.
            Note that you should only provide this parameter if the key is different from the
            default DynamoDB key <code>alias/aws/dynamodb</code>.</p>")
  @as("KMSMasterKeyId")
  kmsmasterKeyId: option<kmsmasterKeyId>,
  @ocaml.doc("<p>Server-side encryption type. The only supported value is:</p>
        <ul>
            <li>
                <p>
                    <code>KMS</code> - Server-side encryption that uses Key Management Service. The
                    key is stored in your account and is managed by KMS (KMS charges apply).</p>
            </li>
         </ul>")
  @as("SSEType")
  ssetype: option<ssetype>,
  @ocaml.doc("<p>Indicates whether server-side encryption is done using an Amazon Web Services managed
            key or an Amazon Web Services owned key. If enabled (true), server-side encryption type
            is set to <code>KMS</code> and an Amazon Web Services managed key is used (KMS charges apply). If disabled (false) or not specified, server-side
            encryption is set to Amazon Web Services owned key.</p>")
  @as("Enabled")
  enabled: option<sseenabled>,
}
@ocaml.doc("<p>The description of the server-side encryption status on the specified table.</p>")
type ssedescription = {
  @ocaml.doc("<p>Indicates the time, in UNIX epoch date format, when DynamoDB detected that
            the table's KMS key was inaccessible. This attribute will automatically
            be cleared when DynamoDB detects that the table's KMS key is accessible
            again. DynamoDB will initiate the table archival process when table's KMS key remains inaccessible for more than seven days from this date.</p>")
  @as("InaccessibleEncryptionDateTime")
  inaccessibleEncryptionDateTime: option<date>,
  @ocaml.doc("<p>The KMS key ARN used for the KMS
            encryption.</p>")
  @as("KMSMasterKeyArn")
  kmsmasterKeyArn: option<kmsmasterKeyArn>,
  @ocaml.doc("<p>Server-side encryption type. The only supported value is:</p>
        <ul>
            <li>
                <p>
                    <code>KMS</code> - Server-side encryption that uses Key Management Service. The
                    key is stored in your account and is managed by KMS (KMS charges apply).</p>
            </li>
         </ul>")
  @as("SSEType")
  ssetype: option<ssetype>,
  @ocaml.doc("<p>Represents the current state of server-side encryption. The only supported values
            are:</p>
        <ul>
            <li>
                <p>
                    <code>ENABLED</code> - Server-side encryption is enabled.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - Server-side encryption is being updated.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<ssestatus>,
}
@ocaml.doc("<p>Contains details for the restore.</p>")
type restoreSummary = {
  @ocaml.doc("<p>Indicates if a restore is in progress or not.</p>") @as("RestoreInProgress")
  restoreInProgress: restoreInProgress,
  @ocaml.doc("<p>Point in time or source backup time.</p>") @as("RestoreDateTime")
  restoreDateTime: date,
  @ocaml.doc("<p>The ARN of the source table of the backup that is being restored.</p>")
  @as("SourceTableArn")
  sourceTableArn: option<tableArn>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the backup from which the table was restored.</p>"
  )
  @as("SourceBackupArn")
  sourceBackupArn: option<backupArn>,
}
@ocaml.doc("<p>Represents the properties of a replica.</p>")
type replica = {
  @ocaml.doc("<p>The Region where the replica needs to be created.</p>") @as("RegionName")
  regionName: option<regionName>,
}
@ocaml.doc("<p>Replica-specific provisioned throughput settings. If not specified, uses the source
            table's provisioned throughput settings.</p>")
type provisionedThroughputOverride = {
  @ocaml.doc("<p>Replica-specific read capacity units. If not specified, uses the source table's read
            capacity settings.</p>")
  @as("ReadCapacityUnits")
  readCapacityUnits: option<positiveLongObject>,
}
@ocaml.doc("<p>Represents the provisioned throughput settings for the table, consisting of read and
            write capacity units, along with data about increases and decreases.</p>")
type provisionedThroughputDescription = {
  @ocaml.doc("<p>The maximum number of writes consumed per second before DynamoDB returns a
                <code>ThrottlingException</code>.</p>")
  @as("WriteCapacityUnits")
  writeCapacityUnits: option<nonNegativeLongObject>,
  @ocaml.doc("<p>The maximum number of strongly consistent reads consumed per second before DynamoDB
            returns a <code>ThrottlingException</code>. Eventually consistent reads require less
            effort than strongly consistent reads, so a setting of 50 <code>ReadCapacityUnits</code>
            per second provides 100 eventually consistent <code>ReadCapacityUnits</code> per
            second.</p>")
  @as("ReadCapacityUnits")
  readCapacityUnits: option<nonNegativeLongObject>,
  @ocaml.doc("<p>The number of provisioned throughput decreases for this table during this UTC calendar
            day. For current maximums on provisioned throughput decreases, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html\">Service,
                Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("NumberOfDecreasesToday")
  numberOfDecreasesToday: option<positiveLongObject>,
  @ocaml.doc("<p>The date and time of the last provisioned throughput decrease for this table.</p>")
  @as("LastDecreaseDateTime")
  lastDecreaseDateTime: option<date>,
  @ocaml.doc("<p>The date and time of the last provisioned throughput increase for this table.</p>")
  @as("LastIncreaseDateTime")
  lastIncreaseDateTime: option<date>,
}
@ocaml.doc("<p>Represents the provisioned throughput settings for a specified table or index. The
            settings can be modified using the <code>UpdateTable</code> operation.</p>
        <p>For current minimum and maximum provisioned throughput values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html\">Service,
                Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
type provisionedThroughput = {
  @ocaml.doc("<p>The maximum number of writes consumed per second before DynamoDB returns a
                <code>ThrottlingException</code>. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput\">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
                Developer Guide</i>.</p>
        <p>If read/write capacity mode is <code>PAY_PER_REQUEST</code> the value is set to
            0.</p>")
  @as("WriteCapacityUnits")
  writeCapacityUnits: positiveLongObject,
  @ocaml.doc("<p>The maximum number of strongly consistent reads consumed per second before DynamoDB
            returns a <code>ThrottlingException</code>. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput\">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
                Developer Guide</i>.</p>
        <p>If read/write capacity mode is <code>PAY_PER_REQUEST</code> the value is set to
            0.</p>")
  @as("ReadCapacityUnits")
  readCapacityUnits: positiveLongObject,
}
@ocaml.doc("<p>Represents the settings used to enable point in time recovery.</p>")
type pointInTimeRecoverySpecification = {
  @ocaml.doc("<p>Indicates whether point in time recovery is enabled (true) or disabled (false) on the
            table.</p>")
  @as("PointInTimeRecoveryEnabled")
  pointInTimeRecoveryEnabled: booleanObject,
}
@ocaml.doc("<p>The description of the point in time settings applied to the table.</p>")
type pointInTimeRecoveryDescription = {
  @ocaml.doc("<p>
            <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
        </p>")
  @as("LatestRestorableDateTime")
  latestRestorableDateTime: option<date>,
  @ocaml.doc("<p>Specifies the earliest point in time you can restore your table to. You can restore
            your table to any point in time during the last 35 days. </p>")
  @as("EarliestRestorableDateTime")
  earliestRestorableDateTime: option<date>,
  @ocaml.doc("<p>The current state of point in time recovery:</p>
        <ul>
            <li>
                <p>
                    <code>ENABLED</code> - Point in time recovery is enabled.</p>
            </li>
            <li>
                <p>
                    <code>DISABLED</code> - Point in time recovery is disabled.</p>
            </li>
         </ul>")
  @as("PointInTimeRecoveryStatus")
  pointInTimeRecoveryStatus: option<pointInTimeRecoveryStatus>,
}
type numberSetAttributeValue = array<numberAttributeValue>
type nonKeyAttributeNameList = array<nonKeyAttributeName>
@ocaml.doc("<p>Describes a Kinesis data stream destination.</p>")
type kinesisDataStreamDestination = {
  @ocaml.doc("<p>The human-readable string that corresponds to the replica status.</p>")
  @as("DestinationStatusDescription")
  destinationStatusDescription: option<string_>,
  @ocaml.doc("<p>The current status of replication.</p>") @as("DestinationStatus")
  destinationStatus: option<destinationStatus>,
  @ocaml.doc("<p>The ARN for a specific Kinesis data stream.</p>") @as("StreamArn")
  streamArn: option<streamArn>,
}
@ocaml.doc("<p>Represents <i>a single element</i> of a key schema. A key schema
            specifies the attributes that make up the primary key of a table, or the key attributes
            of an index.</p>
        <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key.
            For example, a simple primary key would be represented by one
                <code>KeySchemaElement</code> (for the partition key). A composite primary key would
            require one <code>KeySchemaElement</code> for the partition key, and another
                <code>KeySchemaElement</code> for the sort key.</p>
        <p>A <code>KeySchemaElement</code> must be a scalar, top-level attribute (not a nested
            attribute). The data type must be one of String, Number, or Binary. The attribute cannot
            be nested within a List or a Map.</p>")
type keySchemaElement = {
  @ocaml.doc("<p>The role that this key attribute will assume:</p>
        <ul>
            <li>
                <p>
                    <code>HASH</code> - partition key</p>
            </li>
            <li>
                <p>
                    <code>RANGE</code> - sort key</p>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
                partitions, based on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with
                the same partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>")
  @as("KeyType")
  keyType: keyType,
  @ocaml.doc("<p>The name of a key attribute.</p>") @as("AttributeName")
  attributeName: keySchemaAttributeName,
}
type itemCollectionSizeEstimateRange = array<itemCollectionSizeEstimateBound>
@ocaml.doc("<p>Represents a failure a contributor insights operation.</p>")
type failureException = {
  @ocaml.doc("<p>Description of the failure.</p>") @as("ExceptionDescription")
  exceptionDescription: option<exceptionDescription>,
  @ocaml.doc("<p>Exception name.</p>") @as("ExceptionName") exceptionName: option<exceptionName>,
}
type expressionAttributeNameMap = Js.Dict.t<attributeName>
@ocaml.doc("<p>Summary information about an export task.</p>")
type exportSummary = {
  @ocaml.doc("<p>Export can be in one of the following states: IN_PROGRESS, COMPLETED, or
            FAILED.</p>")
  @as("ExportStatus")
  exportStatus: option<exportStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the export.</p>") @as("ExportArn")
  exportArn: option<exportArn>,
}
@ocaml.doc("<p>Represents the properties of the exported table.</p>")
type exportDescription = {
  @ocaml.doc("<p>The number of items exported.</p>") @as("ItemCount") itemCount: option<itemCount>,
  @ocaml.doc("<p>The billable size of the table export.</p>") @as("BilledSizeBytes")
  billedSizeBytes: option<billedSizeBytes>,
  @ocaml.doc("<p>The format of the exported data. Valid values for <code>ExportFormat</code> are
                <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>")
  @as("ExportFormat")
  exportFormat: option<exportFormat>,
  @ocaml.doc("<p>Export failure reason description.</p>") @as("FailureMessage")
  failureMessage: option<failureMessage>,
  @ocaml.doc("<p>Status code for the result of the failed export.</p>") @as("FailureCode")
  failureCode: option<failureCode>,
  @ocaml.doc("<p>The ID of the KMS managed key used to encrypt the S3 bucket where
            export data is stored (if applicable).</p>")
  @as("S3SseKmsKeyId")
  s3SseKmsKeyId: option<s3SseKmsKeyId>,
  @ocaml.doc("<p>Type of encryption used on the bucket where export data is stored. Valid values for
                <code>S3SseAlgorithm</code> are:</p>
        <ul>
            <li>
                <p>
                  <code>AES256</code> - server-side encryption with Amazon S3 managed
                    keys</p>
            </li>
            <li>
                <p>
                  <code>KMS</code> - server-side encryption with KMS managed
                    keys</p>
            </li>
         </ul>")
  @as("S3SseAlgorithm")
  s3SseAlgorithm: option<s3SseAlgorithm>,
  @ocaml.doc("<p>The Amazon S3 bucket prefix used as the file name and path of the exported
            snapshot.</p>")
  @as("S3Prefix")
  s3Prefix: option<s3Prefix>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the bucket containing the
            export.</p>")
  @as("S3BucketOwner")
  s3BucketOwner: option<s3BucketOwner>,
  @ocaml.doc("<p>The name of the Amazon S3 bucket containing the export.</p>") @as("S3Bucket")
  s3Bucket: option<s3Bucket>,
  @ocaml.doc("<p>The client token that was provided for the export task. A client token makes calls to
                <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
            identical calls have the same effect as one single call.</p>")
  @as("ClientToken")
  clientToken: option<clientToken>,
  @ocaml.doc("<p>Point in time from which table data was exported.</p>") @as("ExportTime")
  exportTime: option<exportTime>,
  @ocaml.doc("<p>Unique ID of the table that was exported.</p>") @as("TableId")
  tableId: option<tableId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the table that was exported.</p>")
  @as("TableArn")
  tableArn: option<tableArn>,
  @ocaml.doc("<p>The name of the manifest file for the export task.</p>") @as("ExportManifest")
  exportManifest: option<exportManifest>,
  @ocaml.doc("<p>The time at which the export task completed.</p>") @as("EndTime")
  endTime: option<exportEndTime>,
  @ocaml.doc("<p>The time at which the export task began.</p>") @as("StartTime")
  startTime: option<exportStartTime>,
  @ocaml.doc("<p>Export can be in one of the following states: IN_PROGRESS, COMPLETED, or
            FAILED.</p>")
  @as("ExportStatus")
  exportStatus: option<exportStatus>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the table export.</p>") @as("ExportArn")
  exportArn: option<exportArn>,
}
@ocaml.doc("<p>An endpoint information details.</p>")
type endpoint = {
  @ocaml.doc("<p>Endpoint cache time to live (TTL) value.</p>") @as("CachePeriodInMinutes")
  cachePeriodInMinutes: long,
  @ocaml.doc("<p>IP address of the endpoint.</p>") @as("Address") address: string_,
}
@ocaml.doc("<p>Represents a replica to be deleted.</p>")
type deleteReplicationGroupMemberAction = {
  @ocaml.doc("<p>The Region where the replica exists.</p>") @as("RegionName")
  regionName: regionName,
}
@ocaml.doc("<p>Represents a replica to be removed.</p>")
type deleteReplicaAction = {
  @ocaml.doc("<p>The Region of the replica to be removed.</p>") @as("RegionName")
  regionName: regionName,
}
@ocaml.doc("<p>Represents a global secondary index to be deleted from an existing table.</p>")
type deleteGlobalSecondaryIndexAction = {
  @ocaml.doc("<p>The name of the global secondary index to be deleted.</p>") @as("IndexName")
  indexName: indexName,
}
@ocaml.doc("<p>Represents a replica to be added.</p>")
type createReplicaAction = {
  @ocaml.doc("<p>The Region of the replica to be added.</p>") @as("RegionName")
  regionName: regionName,
}
@ocaml.doc("<p>Represents a Contributor Insights summary entry.</p>")
type contributorInsightsSummary = {
  @ocaml.doc("<p>Describes the current status for contributor insights for the given table and index,
            if applicable.</p>")
  @as("ContributorInsightsStatus")
  contributorInsightsStatus: option<contributorInsightsStatus>,
  @ocaml.doc("<p>Name of the index associated with the summary, if any.</p>") @as("IndexName")
  indexName: option<indexName>,
  @ocaml.doc("<p>Name of the table associated with the summary.</p>") @as("TableName")
  tableName: option<tableName>,
}
type contributorInsightsRuleList = array<contributorInsightsRule>
@ocaml.doc("<p>Represents the amount of provisioned throughput capacity consumed on a table or an
            index.</p>")
type capacity = {
  @ocaml.doc("<p>The total number of capacity units consumed on a table or an index.</p>")
  @as("CapacityUnits")
  capacityUnits: option<consumedCapacityUnits>,
  @ocaml.doc("<p>The total number of write capacity units consumed on a table or an index.</p>")
  @as("WriteCapacityUnits")
  writeCapacityUnits: option<consumedCapacityUnits>,
  @ocaml.doc("<p>The total number of read capacity units consumed on a table or an index.</p>")
  @as("ReadCapacityUnits")
  readCapacityUnits: option<consumedCapacityUnits>,
}
type binarySetAttributeValue = array<binaryAttributeValue>
@ocaml.doc("<p>Contains the details for the read/write capacity mode.</p>")
type billingModeSummary = {
  @ocaml.doc("<p>Represents the time when <code>PAY_PER_REQUEST</code> was last set as the read/write
            capacity mode.</p>")
  @as("LastUpdateToPayPerRequestDateTime")
  lastUpdateToPayPerRequestDateTime: option<date>,
  @ocaml.doc("<p>Controls how you are charged for read and write throughput and how you manage
            capacity. This setting can be changed later.</p>
        <ul>
            <li>
                <p>
                    <code>PROVISIONED</code> - Sets the read/write capacity mode to
                        <code>PROVISIONED</code>. We recommend using <code>PROVISIONED</code> for
                    predictable workloads.</p>
            </li>
            <li>
                <p>
                    <code>PAY_PER_REQUEST</code> - Sets the read/write capacity mode to
                        <code>PAY_PER_REQUEST</code>. We recommend using
                        <code>PAY_PER_REQUEST</code> for unpredictable workloads. </p>
            </li>
         </ul>")
  @as("BillingMode")
  billingMode: option<billingMode>,
}
@ocaml.doc("<p> An error associated with a statement in a PartiQL batch that was run. </p>")
type batchStatementError = {
  @ocaml.doc("<p> The error message associated with the PartiQL batch resposne. </p>")
  @as("Message")
  message: option<string_>,
  @ocaml.doc("<p> The error code associated with the failed PartiQL batch statement. </p>")
  @as("Code")
  code: option<batchStatementErrorCodeEnum>,
}
@ocaml.doc("<p>Contains details for the backup.</p>")
type backupSummary = {
  @ocaml.doc("<p>Size of the backup in bytes.</p>") @as("BackupSizeBytes")
  backupSizeBytes: option<backupSizeBytes>,
  @ocaml.doc("<p>BackupType:</p>
        <ul>
            <li>
                <p>
                    <code>USER</code> - You create and manage these using the on-demand backup
                    feature.</p>
            </li>
            <li>
                <p>
                    <code>SYSTEM</code> - If you delete a table with point-in-time recovery enabled,
                    a <code>SYSTEM</code> backup is automatically created and is retained for 35
                    days (at no additional cost). System backups allow you to restore the deleted
                    table to the state it was in just before the point of deletion. </p>
            </li>
            <li>
                <p>
                    <code>AWS_BACKUP</code> - On-demand backup created by you from Backup service.</p>
            </li>
         </ul>")
  @as("BackupType")
  backupType: option<backupType>,
  @ocaml.doc("<p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED.</p>")
  @as("BackupStatus")
  backupStatus: option<backupStatus>,
  @ocaml.doc("<p>Time at which the automatic on-demand backup created by DynamoDB will
            expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after
            its creation.</p>")
  @as("BackupExpiryDateTime")
  backupExpiryDateTime: option<date>,
  @ocaml.doc("<p>Time at which the backup was created.</p>") @as("BackupCreationDateTime")
  backupCreationDateTime: option<backupCreationDateTime>,
  @ocaml.doc("<p>Name of the specified backup.</p>") @as("BackupName")
  backupName: option<backupName>,
  @ocaml.doc("<p>ARN associated with the backup.</p>") @as("BackupArn")
  backupArn: option<backupArn>,
  @ocaml.doc("<p>ARN associated with the table.</p>") @as("TableArn") tableArn: option<tableArn>,
  @ocaml.doc("<p>Unique identifier for the table.</p>") @as("TableId") tableId: option<tableId>,
  @ocaml.doc("<p>Name of the table.</p>") @as("TableName") tableName: option<tableName>,
}
@ocaml.doc("<p>Contains the details of the backup created for the table.</p>")
type backupDetails = {
  @ocaml.doc("<p>Time at which the automatic on-demand backup created by DynamoDB will
            expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after
            its creation.</p>")
  @as("BackupExpiryDateTime")
  backupExpiryDateTime: option<date>,
  @ocaml.doc(
    "<p>Time at which the backup was created. This is the request time of the backup. </p>"
  )
  @as("BackupCreationDateTime")
  backupCreationDateTime: backupCreationDateTime,
  @ocaml.doc("<p>BackupType:</p>
        <ul>
            <li>
                <p>
                    <code>USER</code> - You create and manage these using the on-demand backup
                    feature.</p>
            </li>
            <li>
                <p>
                    <code>SYSTEM</code> - If you delete a table with point-in-time recovery enabled,
                    a <code>SYSTEM</code> backup is automatically created and is retained for 35
                    days (at no additional cost). System backups allow you to restore the deleted
                    table to the state it was in just before the point of deletion. </p>
            </li>
            <li>
                <p>
                    <code>AWS_BACKUP</code> - On-demand backup created by you from Backup service.</p>
            </li>
         </ul>")
  @as("BackupType")
  backupType: backupType,
  @ocaml.doc("<p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED. </p>")
  @as("BackupStatus")
  backupStatus: backupStatus,
  @ocaml.doc("<p>Size of the backup in bytes.</p>") @as("BackupSizeBytes")
  backupSizeBytes: option<backupSizeBytes>,
  @ocaml.doc("<p>Name of the requested backup.</p>") @as("BackupName") backupName: backupName,
  @ocaml.doc("<p>ARN associated with the backup.</p>") @as("BackupArn") backupArn: backupArn,
}
@ocaml.doc("<p>Represents the settings of a target tracking scaling policy that will be
            modified.</p>")
type autoScalingTargetTrackingScalingPolicyConfigurationUpdate = {
  @ocaml.doc("<p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10)
            or 2e-360 to 2e360 (Base 2).</p>")
  @as("TargetValue")
  targetValue: double,
  @ocaml.doc("<p>The amount of time, in seconds, after a scale out activity completes before another
            scale out activity can start. While the cooldown period is in effect, the capacity that
            has been added by the previous scale out event that initiated the cooldown is calculated
            as part of the desired capacity for the next scale out. You should continuously (but not
            excessively) scale out.</p>")
  @as("ScaleOutCooldown")
  scaleOutCooldown: option<integerObject>,
  @ocaml.doc("<p>The amount of time, in seconds, after a scale in activity completes before another
            scale in activity can start. The cooldown period is used to block subsequent scale in
            requests until it has expired. You should scale in conservatively to protect your
            application's availability. However, if another alarm triggers a scale out policy during
            the cooldown period after a scale-in, application auto scaling scales out your scalable
            target immediately. </p>")
  @as("ScaleInCooldown")
  scaleInCooldown: option<integerObject>,
  @ocaml.doc("<p>Indicates whether scale in by the target tracking policy is disabled. If the value is
            true, scale in is disabled and the target tracking policy won't remove capacity from the
            scalable resource. Otherwise, scale in is enabled and the target tracking policy can
            remove capacity from the scalable resource. The default value is false.</p>")
  @as("DisableScaleIn")
  disableScaleIn: option<booleanObject>,
}
@ocaml.doc("<p>Represents the properties of a target tracking scaling policy.</p>")
type autoScalingTargetTrackingScalingPolicyConfigurationDescription = {
  @ocaml.doc("<p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10)
            or 2e-360 to 2e360 (Base 2).</p>")
  @as("TargetValue")
  targetValue: double,
  @ocaml.doc("<p>The amount of time, in seconds, after a scale out activity completes before another
            scale out activity can start. While the cooldown period is in effect, the capacity that
            has been added by the previous scale out event that initiated the cooldown is calculated
            as part of the desired capacity for the next scale out. You should continuously (but not
            excessively) scale out.</p>")
  @as("ScaleOutCooldown")
  scaleOutCooldown: option<integerObject>,
  @ocaml.doc("<p>The amount of time, in seconds, after a scale in activity completes before another
            scale in activity can start. The cooldown period is used to block subsequent scale in
            requests until it has expired. You should scale in conservatively to protect your
            application's availability. However, if another alarm triggers a scale out policy during
            the cooldown period after a scale-in, application auto scaling scales out your scalable
            target immediately. </p>")
  @as("ScaleInCooldown")
  scaleInCooldown: option<integerObject>,
  @ocaml.doc("<p>Indicates whether scale in by the target tracking policy is disabled. If the value is
            true, scale in is disabled and the target tracking policy won't remove capacity from the
            scalable resource. Otherwise, scale in is enabled and the target tracking policy can
            remove capacity from the scalable resource. The default value is false.</p>")
  @as("DisableScaleIn")
  disableScaleIn: option<booleanObject>,
}
type attributeNameList = array<attributeName>
@ocaml.doc("<p>Represents an attribute for describing the key schema for the table and
            indexes.</p>")
type attributeDefinition = {
  @ocaml.doc("<p>The data type for the attribute, where:</p>
        <ul>
            <li>
                <p>
                    <code>S</code> - the attribute is of type String</p>
            </li>
            <li>
                <p>
                    <code>N</code> - the attribute is of type Number</p>
            </li>
            <li>
                <p>
                    <code>B</code> - the attribute is of type Binary</p>
            </li>
         </ul>")
  @as("AttributeType")
  attributeType: scalarAttributeType,
  @ocaml.doc("<p>A name for the attribute.</p>") @as("AttributeName")
  attributeName: keySchemaAttributeName,
}
@ocaml.doc("<p>Contains details of a table archival operation.</p>")
type archivalSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the backup the table was archived to, when
            applicable in the archival reason. If you wish to restore this backup to the same table
            name, you will need to delete the original table.</p>")
  @as("ArchivalBackupArn")
  archivalBackupArn: option<backupArn>,
  @ocaml.doc("<p>The reason DynamoDB archived the table. Currently, the only possible value is:</p>

        <ul>
            <li>
                <p>
                  <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS</code> - The table was archived due
                    to the table's KMS key being inaccessible for more than seven
                    days. An On-Demand backup was created at the archival time.</p>
            </li>
         </ul>")
  @as("ArchivalReason")
  archivalReason: option<archivalReason>,
  @ocaml.doc("<p>The date and time when table archival was initiated by DynamoDB, in UNIX epoch time
            format.</p>")
  @as("ArchivalDateTime")
  archivalDateTime: option<date>,
}
@ocaml.doc("<p>Represents the new provisioned throughput settings to be applied to a global secondary
            index.</p>")
type updateGlobalSecondaryIndexAction = {
  @ocaml.doc("<p>Represents the provisioned throughput settings for the specified global secondary
            index.</p>
        <p>For current minimum and maximum provisioned throughput values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html\">Service,
                Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: provisionedThroughput,
  @ocaml.doc("<p>The name of the global secondary index to be updated.</p>") @as("IndexName")
  indexName: indexName,
}
type tagList_ = array<tag>
type secondaryIndexesCapacityMap = Js.Dict.t<capacity>
@ocaml.doc("<p>Represents one of the following:</p>
        <ul>
            <li>
                <p>A new replica to be added to an existing global table.</p>
            </li>
            <li>
                <p>New parameters for an existing replica.</p>
            </li>
            <li>
                <p>An existing replica to be removed from an existing global table.</p>
            </li>
         </ul>")
type replicaUpdate = {
  @ocaml.doc("<p>The name of the existing replica to be removed.</p>") @as("Delete")
  delete: option<deleteReplicaAction>,
  @ocaml.doc("<p>The parameters required for creating a replica on an existing global table.</p>")
  @as("Create")
  create: option<createReplicaAction>,
}
type replicaList = array<replica>
@ocaml.doc("<p>Represents the properties of a replica global secondary index.</p>")
type replicaGlobalSecondaryIndexDescription = {
  @ocaml.doc("<p>If not described, uses the source table GSI's read capacity settings.</p>")
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @ocaml.doc("<p>The name of the global secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
@ocaml.doc("<p>Represents the properties of a replica global secondary index.</p>")
type replicaGlobalSecondaryIndex = {
  @ocaml.doc("<p>Replica table GSI-specific provisioned throughput. If not specified, uses the source
            table GSI's read capacity settings.</p>")
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @ocaml.doc("<p>The name of the global secondary index.</p>") @as("IndexName")
  indexName: indexName,
}
@ocaml.doc("<p>Represents attributes that are copied (projected) from the table into an index. These
            are in addition to the primary key attributes and index key attributes, which are
            automatically projected.</p>")
type projection = {
  @ocaml.doc("<p>Represents the non-key attribute names which will be projected into the index.</p>
        <p>For local secondary indexes, the total count of <code>NonKeyAttributes</code> summed
            across all of the local secondary indexes, must not exceed 20. If you project the same
            attribute into two different indexes, this counts as two distinct attributes when
            determining the total.</p>")
  @as("NonKeyAttributes")
  nonKeyAttributes: option<nonKeyAttributeNameList>,
  @ocaml.doc("<p>The set of attributes that are projected into the index:</p>
        <ul>
            <li>
                <p>
                    <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the
                    index.</p>
            </li>
            <li>
                <p>
                    <code>INCLUDE</code> - In addition to the attributes described in
                        <code>KEYS_ONLY</code>, the secondary index will include other non-key
                    attributes that you specify.</p>
            </li>
            <li>
                <p>
                    <code>ALL</code> - All of the table attributes are projected into the
                    index.</p>
            </li>
         </ul>")
  @as("ProjectionType")
  projectionType: option<projectionType>,
}
type kinesisDataStreamDestinations = array<kinesisDataStreamDestination>
type keySchema = array<keySchemaElement>
type exportSummaries = array<exportSummary>
type endpoints = array<endpoint>
type contributorInsightsSummaries = array<contributorInsightsSummary>
@ocaml.doc("<p>Represents the continuous backups and point in time recovery settings on the
            table.</p>")
type continuousBackupsDescription = {
  @ocaml.doc("<p>The description of the point in time recovery settings applied to the table.</p>")
  @as("PointInTimeRecoveryDescription")
  pointInTimeRecoveryDescription: option<pointInTimeRecoveryDescription>,
  @ocaml.doc("<p>
            <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED,
            DISABLED</p>")
  @as("ContinuousBackupsStatus")
  continuousBackupsStatus: continuousBackupsStatus,
}
type backupSummaries = array<backupSummary>
@ocaml.doc("<p>Represents the auto scaling policy to be modified.</p>")
type autoScalingPolicyUpdate = {
  @ocaml.doc("<p>Represents a target tracking scaling policy configuration.</p>")
  @as("TargetTrackingScalingPolicyConfiguration")
  targetTrackingScalingPolicyConfiguration: autoScalingTargetTrackingScalingPolicyConfigurationUpdate,
  @ocaml.doc("<p>The name of the scaling policy.</p>") @as("PolicyName")
  policyName: option<autoScalingPolicyName>,
}
@ocaml.doc("<p>Represents the properties of the scaling policy.</p>")
type autoScalingPolicyDescription = {
  @ocaml.doc("<p>Represents a target tracking scaling policy configuration.</p>")
  @as("TargetTrackingScalingPolicyConfiguration")
  targetTrackingScalingPolicyConfiguration: option<
    autoScalingTargetTrackingScalingPolicyConfigurationDescription,
  >,
  @ocaml.doc("<p>The name of the scaling policy.</p>") @as("PolicyName")
  policyName: option<autoScalingPolicyName>,
}
type attributeDefinitions = array<attributeDefinition>
@ocaml.doc("<p>Contains the details of the table when the backup was created. </p>")
type sourceTableDetails = {
  @ocaml.doc("<p>Controls how you are charged for read and write throughput and how you manage
            capacity. This setting can be changed later.</p>
        <ul>
            <li>
                <p>
                    <code>PROVISIONED</code> - Sets the read/write capacity mode to
                        <code>PROVISIONED</code>. We recommend using <code>PROVISIONED</code> for
                    predictable workloads.</p>
            </li>
            <li>
                <p>
                    <code>PAY_PER_REQUEST</code> - Sets the read/write capacity mode to
                        <code>PAY_PER_REQUEST</code>. We recommend using
                        <code>PAY_PER_REQUEST</code> for unpredictable workloads. </p>
            </li>
         </ul>")
  @as("BillingMode")
  billingMode: option<billingMode>,
  @ocaml.doc("<p>Number of items in the table. Note that this is an approximate value. </p>")
  @as("ItemCount")
  itemCount: option<itemCount>,
  @ocaml.doc("<p>Read IOPs and Write IOPS on the table when the backup was created.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: provisionedThroughput,
  @ocaml.doc("<p>Time when the source table was created. </p>") @as("TableCreationDateTime")
  tableCreationDateTime: tableCreationDateTime,
  @ocaml.doc("<p>Schema of the table. </p>") @as("KeySchema") keySchema: keySchema,
  @ocaml.doc("<p>Size of the table in bytes. Note that this is an approximate value.</p>")
  @as("TableSizeBytes")
  tableSizeBytes: option<long>,
  @ocaml.doc("<p>ARN of the table for which backup was created. </p>") @as("TableArn")
  tableArn: option<tableArn>,
  @ocaml.doc("<p>Unique identifier for the table for which the backup was created. </p>")
  @as("TableId")
  tableId: tableId,
  @ocaml.doc("<p>The name of the table for which the backup was created. </p>") @as("TableName")
  tableName: tableName,
}
type replicaUpdateList = array<replicaUpdate>
type replicaGlobalSecondaryIndexList = array<replicaGlobalSecondaryIndex>
type replicaGlobalSecondaryIndexDescriptionList = array<replicaGlobalSecondaryIndexDescription>
@ocaml.doc("<p>Represents the properties of a local secondary index for the table when the backup was
            created.</p>")
type localSecondaryIndexInfo = {
  @ocaml.doc("<p>Represents attributes that are copied (projected) from the table into the global
            secondary index. These are in addition to the primary key attributes and index key
            attributes, which are automatically projected. </p>")
  @as("Projection")
  projection: option<projection>,
  @ocaml.doc("<p>The complete key schema for a local secondary index, which consists of one or more
            pairs of attribute names and key types:</p>
        <ul>
            <li>
                <p>
                    <code>HASH</code> - partition key</p>
            </li>
            <li>
                <p>
                    <code>RANGE</code> - sort key</p>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of
                an internal hash function to evenly distribute data items across partitions, based
                on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with the same
                partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>")
  @as("KeySchema")
  keySchema: option<keySchema>,
  @ocaml.doc("<p>Represents the name of the local secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
@ocaml.doc("<p>Represents the properties of a local secondary index.</p>")
type localSecondaryIndexDescription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>")
  @as("IndexArn")
  indexArn: option<string_>,
  @ocaml.doc("<p>The number of items in the specified index. DynamoDB updates this value
            approximately every six hours. Recent changes might not be reflected in this
            value.</p>")
  @as("ItemCount")
  itemCount: option<long>,
  @ocaml.doc("<p>The total size of the specified index, in bytes. DynamoDB updates this value
            approximately every six hours. Recent changes might not be reflected in this
            value.</p>")
  @as("IndexSizeBytes")
  indexSizeBytes: option<long>,
  @ocaml.doc("<p>Represents attributes that are copied (projected) from the table into the global
            secondary index. These are in addition to the primary key attributes and index key
            attributes, which are automatically projected. </p>")
  @as("Projection")
  projection: option<projection>,
  @ocaml.doc("<p>The complete key schema for the local secondary index, consisting of one or more pairs
            of attribute names and key types:</p>
        <ul>
            <li>
                <p>
                    <code>HASH</code> - partition key</p>
            </li>
            <li>
                <p>
                    <code>RANGE</code> - sort key</p>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of
                an internal hash function to evenly distribute data items across partitions, based
                on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with the same
                partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>")
  @as("KeySchema")
  keySchema: option<keySchema>,
  @ocaml.doc("<p>Represents the name of the local secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
@ocaml.doc("<p>Represents the properties of a local secondary index.</p>")
type localSecondaryIndex = {
  @ocaml.doc("<p>Represents attributes that are copied (projected) from the table into the local
            secondary index. These are in addition to the primary key attributes and index key
            attributes, which are automatically projected. </p>")
  @as("Projection")
  projection: projection,
  @ocaml.doc("<p>The complete key schema for the local secondary index, consisting of one or more pairs
            of attribute names and key types:</p>
        <ul>
            <li>
                <p>
                    <code>HASH</code> - partition key</p>
            </li>
            <li>
                <p>
                    <code>RANGE</code> - sort key</p>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of
                an internal hash function to evenly distribute data items across partitions, based
                on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with the same
                partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>")
  @as("KeySchema")
  keySchema: keySchema,
  @ocaml.doc("<p>The name of the local secondary index. The name must be unique among all other indexes
            on this table.</p>")
  @as("IndexName")
  indexName: indexName,
}
@ocaml.doc("<p>Represents the properties of a global table.</p>")
type globalTable = {
  @ocaml.doc("<p>The Regions where the global table has replicas.</p>") @as("ReplicationGroup")
  replicationGroup: option<replicaList>,
  @ocaml.doc("<p>The global table name.</p>") @as("GlobalTableName")
  globalTableName: option<tableName>,
}
@ocaml.doc("<p>Represents the properties of a global secondary index for the table when the backup
            was created.</p>")
type globalSecondaryIndexInfo = {
  @ocaml.doc("<p>Represents the provisioned throughput settings for the specified global secondary
            index. </p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: option<provisionedThroughput>,
  @ocaml.doc("<p>Represents attributes that are copied (projected) from the table into the global
            secondary index. These are in addition to the primary key attributes and index key
            attributes, which are automatically projected. </p>")
  @as("Projection")
  projection: option<projection>,
  @ocaml.doc("<p>The complete key schema for a global secondary index, which consists of one or more
            pairs of attribute names and key types:</p>
        <ul>
            <li>
                <p>
                    <code>HASH</code> - partition key</p>
            </li>
            <li>
                <p>
                    <code>RANGE</code> - sort key</p>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
                partitions, based on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with
                the same partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>")
  @as("KeySchema")
  keySchema: option<keySchema>,
  @ocaml.doc("<p>The name of the global secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
@ocaml.doc("<p>Represents the properties of a global secondary index.</p>")
type globalSecondaryIndexDescription = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>")
  @as("IndexArn")
  indexArn: option<string_>,
  @ocaml.doc("<p>The number of items in the specified index. DynamoDB updates this value approximately
            every six hours. Recent changes might not be reflected in this value.</p>")
  @as("ItemCount")
  itemCount: option<long>,
  @ocaml.doc("<p>The total size of the specified index, in bytes. DynamoDB updates this value
            approximately every six hours. Recent changes might not be reflected in this
            value.</p>")
  @as("IndexSizeBytes")
  indexSizeBytes: option<long>,
  @ocaml.doc("<p>Represents the provisioned throughput settings for the specified global secondary
            index.</p>
        <p>For current minimum and maximum provisioned throughput values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html\">Service,
                Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: option<provisionedThroughputDescription>,
  @ocaml.doc("<p>Indicates whether the index is currently backfilling. <i>Backfilling</i>
            is the process of reading items from the table and determining whether they can be added
            to the index. (Not all items will qualify: For example, a partition key cannot have any
            duplicate values.) If an item can be added to the index, DynamoDB will do so. After all
            items have been processed, the backfilling operation is complete and
                <code>Backfilling</code> is false.</p>
        <p>You can delete an index that is being created during the <code>Backfilling</code>
            phase when <code>IndexStatus</code> is set to CREATING and <code>Backfilling</code> is
            true. You can't delete the index that is being created when <code>IndexStatus</code> is
            set to CREATING and <code>Backfilling</code> is false. </p>
        <note>
            <p>For indexes that were created during a <code>CreateTable</code> operation, the
                    <code>Backfilling</code> attribute does not appear in the
                    <code>DescribeTable</code> output.</p>
        </note>")
  @as("Backfilling")
  backfilling: option<backfilling>,
  @ocaml.doc("<p>The current state of the global secondary index:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The index is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The index is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The index is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The index is ready for use.</p>
            </li>
         </ul>")
  @as("IndexStatus")
  indexStatus: option<indexStatus>,
  @ocaml.doc("<p>Represents attributes that are copied (projected) from the table into the global
            secondary index. These are in addition to the primary key attributes and index key
            attributes, which are automatically projected. </p>")
  @as("Projection")
  projection: option<projection>,
  @ocaml.doc("<p>The complete key schema for a global secondary index, which consists of one or more
            pairs of attribute names and key types:</p>
        <ul>
            <li>
                <p>
                    <code>HASH</code> - partition key</p>
            </li>
            <li>
                <p>
                    <code>RANGE</code> - sort key</p>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
                partitions, based on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with
                the same partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>")
  @as("KeySchema")
  keySchema: option<keySchema>,
  @ocaml.doc("<p>The name of the global secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
@ocaml.doc("<p>Represents the properties of a global secondary index.</p>")
type globalSecondaryIndex = {
  @ocaml.doc("<p>Represents the provisioned throughput settings for the specified global secondary
            index.</p>
        <p>For current minimum and maximum provisioned throughput values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html\">Service,
                Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: option<provisionedThroughput>,
  @ocaml.doc("<p>Represents attributes that are copied (projected) from the table into the global
            secondary index. These are in addition to the primary key attributes and index key
            attributes, which are automatically projected. </p>")
  @as("Projection")
  projection: projection,
  @ocaml.doc("<p>The complete key schema for a global secondary index, which consists of one or more
            pairs of attribute names and key types:</p>
        <ul>
            <li>
                <p>
                    <code>HASH</code> - partition key</p>
            </li>
            <li>
                <p>
                    <code>RANGE</code> - sort key</p>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from DynamoDB's usage of
                an internal hash function to evenly distribute data items across partitions, based
                on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with the same
                partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>")
  @as("KeySchema")
  keySchema: keySchema,
  @ocaml.doc("<p>The name of the global secondary index. The name must be unique among all other
            indexes on this table.</p>")
  @as("IndexName")
  indexName: indexName,
}
@ocaml.doc("<p>Represents a new global secondary index to be added to an existing table.</p>")
type createGlobalSecondaryIndexAction = {
  @ocaml.doc("<p>Represents the provisioned throughput settings for the specified global secondary
            index.</p>
        <p>For current minimum and maximum provisioned throughput values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html\">Service,
                Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: option<provisionedThroughput>,
  @ocaml.doc("<p>Represents attributes that are copied (projected) from the table into an index. These
            are in addition to the primary key attributes and index key attributes, which are
            automatically projected.</p>")
  @as("Projection")
  projection: projection,
  @ocaml.doc("<p>The key schema for the global secondary index.</p>") @as("KeySchema")
  keySchema: keySchema,
  @ocaml.doc("<p>The name of the global secondary index to be created.</p>") @as("IndexName")
  indexName: indexName,
}
@ocaml.doc("<p>The capacity units consumed by an operation. The data returned includes the total
            provisioned throughput consumed, along with statistics for the table and any indexes
            involved in the operation. <code>ConsumedCapacity</code> is only returned if the request
            asked for it. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html\">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
type consumedCapacity = {
  @ocaml.doc("<p>The amount of throughput consumed on each global index affected by the
            operation.</p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<secondaryIndexesCapacityMap>,
  @ocaml.doc("<p>The amount of throughput consumed on each local index affected by the
            operation.</p>")
  @as("LocalSecondaryIndexes")
  localSecondaryIndexes: option<secondaryIndexesCapacityMap>,
  @ocaml.doc("<p>The amount of throughput consumed on the table affected by the operation.</p>")
  @as("Table")
  table: option<capacity>,
  @ocaml.doc("<p>The total number of write capacity units consumed by the operation.</p>")
  @as("WriteCapacityUnits")
  writeCapacityUnits: option<consumedCapacityUnits>,
  @ocaml.doc("<p>The total number of read capacity units consumed by the operation.</p>")
  @as("ReadCapacityUnits")
  readCapacityUnits: option<consumedCapacityUnits>,
  @ocaml.doc("<p>The total number of capacity units consumed by the operation.</p>")
  @as("CapacityUnits")
  capacityUnits: option<consumedCapacityUnits>,
  @ocaml.doc("<p>The name of the table that was affected by the operation.</p>") @as("TableName")
  tableName: option<tableName>,
}
@ocaml.doc("<p>Represents the auto scaling settings to be modified for a global table or global
            secondary index.</p>")
type autoScalingSettingsUpdate = {
  @ocaml.doc("<p>The scaling policy to apply for scaling target global table or global secondary index
            capacity units.</p>")
  @as("ScalingPolicyUpdate")
  scalingPolicyUpdate: option<autoScalingPolicyUpdate>,
  @ocaml.doc("<p>Role ARN used for configuring auto scaling policy.</p>") @as("AutoScalingRoleArn")
  autoScalingRoleArn: option<autoScalingRoleArn>,
  @ocaml.doc("<p>Disabled auto scaling for this global table or global secondary index.</p>")
  @as("AutoScalingDisabled")
  autoScalingDisabled: option<booleanObject>,
  @ocaml.doc("<p>The maximum capacity units that a global table or global secondary index should be
            scaled up to.</p>")
  @as("MaximumUnits")
  maximumUnits: option<positiveLongObject>,
  @ocaml.doc("<p>The minimum capacity units that a global table or global secondary index should be
            scaled down to.</p>")
  @as("MinimumUnits")
  minimumUnits: option<positiveLongObject>,
}
type autoScalingPolicyDescriptionList = array<autoScalingPolicyDescription>
@ocaml.doc("<p>Represents a replica to be modified.</p>")
type updateReplicationGroupMemberAction = {
  @ocaml.doc("<p>Replica-specific table class. If not specified, uses the source table's
            table class.</p>")
  @as("TableClassOverride")
  tableClassOverride: option<tableClass>,
  @ocaml.doc("<p>Replica-specific global secondary index settings.</p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<replicaGlobalSecondaryIndexList>,
  @ocaml.doc("<p>Replica-specific provisioned throughput. If not specified, uses the source table's
            provisioned throughput settings.</p>")
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @ocaml.doc("<p>The KMS key of the replica that should be used
            for KMS encryption. To specify a key, use its key ID, Amazon Resource
            Name (ARN), alias name, or alias ARN. Note that you should only provide this parameter
            if the key is different from the default DynamoDB KMS key
                <code>alias/aws/dynamodb</code>.</p>")
  @as("KMSMasterKeyId")
  kmsmasterKeyId: option<kmsmasterKeyId>,
  @ocaml.doc("<p>The Region where the replica exists.</p>") @as("RegionName")
  regionName: regionName,
}
@ocaml.doc("<p>Represents the settings of a global secondary index for a global table that will be
            modified.</p>")
type replicaGlobalSecondaryIndexSettingsUpdate = {
  @ocaml.doc("<p>Auto scaling settings for managing a global secondary index replica's read capacity
            units.</p>")
  @as("ProvisionedReadCapacityAutoScalingSettingsUpdate")
  provisionedReadCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
  @ocaml.doc("<p>The maximum number of strongly consistent reads consumed per second before DynamoDB
            returns a <code>ThrottlingException</code>.</p>")
  @as("ProvisionedReadCapacityUnits")
  provisionedReadCapacityUnits: option<positiveLongObject>,
  @ocaml.doc("<p>The name of the global secondary index. The name must be unique among all other
            indexes on this table.</p>")
  @as("IndexName")
  indexName: indexName,
}
@ocaml.doc("<p>Represents the auto scaling settings of a global secondary index for a replica that
            will be modified.</p>")
type replicaGlobalSecondaryIndexAutoScalingUpdate = {
  @as("ProvisionedReadCapacityAutoScalingUpdate")
  provisionedReadCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
  @ocaml.doc("<p>The name of the global secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
@ocaml.doc("<p>Contains the details of the replica.</p>")
type replicaDescription = {
  @as("ReplicaTableClassSummary") replicaTableClassSummary: option<tableClassSummary>,
  @ocaml.doc("<p>The time at which the replica was first detected as inaccessible. To determine cause
            of inaccessibility check the <code>ReplicaStatus</code> property.</p>")
  @as("ReplicaInaccessibleDateTime")
  replicaInaccessibleDateTime: option<date>,
  @ocaml.doc("<p>Replica-specific global secondary index settings.</p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<replicaGlobalSecondaryIndexDescriptionList>,
  @ocaml.doc("<p>Replica-specific provisioned throughput. If not described, uses the source table's
            provisioned throughput settings.</p>")
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @ocaml.doc("<p>The KMS key of the replica that will be used for
                KMS encryption.</p>")
  @as("KMSMasterKeyId")
  kmsmasterKeyId: option<kmsmasterKeyId>,
  @ocaml.doc("<p>Specifies the progress of a Create, Update, or Delete action on the replica as a
            percentage.</p>")
  @as("ReplicaStatusPercentProgress")
  replicaStatusPercentProgress: option<replicaStatusPercentProgress>,
  @ocaml.doc("<p>Detailed information about the replica status.</p>")
  @as("ReplicaStatusDescription")
  replicaStatusDescription: option<replicaStatusDescription>,
  @ocaml.doc("<p>The current state of the replica:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The replica is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The replica is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The replica is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The replica is ready for use.</p>
            </li>
            <li>
                <p>
                    <code>REGION_DISABLED</code> - The replica is inaccessible because the Amazon Web Services Region has been disabled.</p>
                <note>
                    <p>If the Amazon Web Services Region remains inaccessible for more than 20
                        hours, DynamoDB will remove this replica from the replication
                        group. The replica will not be deleted and replication will stop from and to
                        this region.</p>
                </note>
            </li>
            <li>
                <p>
                  <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS </code> - The KMS key
                    used to encrypt the table is inaccessible.</p>
                <note>
                    <p>If the KMS key remains inaccessible for more than 20 hours,
                            DynamoDB will remove this replica from the replication group.
                        The replica will not be deleted and replication will stop from and to this
                        region.</p>
                </note>
            </li>
         </ul>")
  @as("ReplicaStatus")
  replicaStatus: option<replicaStatus>,
  @ocaml.doc("<p>The name of the Region.</p>") @as("RegionName") regionName: option<regionName>,
}
type localSecondaryIndexes = array<localSecondaryIndexInfo>
type localSecondaryIndexList = array<localSecondaryIndex>
type localSecondaryIndexDescriptionList = array<localSecondaryIndexDescription>
type globalTableList = array<globalTable>
@ocaml.doc("<p>Represents the settings of a global secondary index for a global table that will be
            modified.</p>")
type globalTableGlobalSecondaryIndexSettingsUpdate = {
  @ocaml.doc("<p>Auto scaling settings for managing a global secondary index's write capacity
            units.</p>")
  @as("ProvisionedWriteCapacityAutoScalingSettingsUpdate")
  provisionedWriteCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
  @ocaml.doc("<p>The maximum number of writes consumed per second before DynamoDB returns a
                <code>ThrottlingException.</code>
         </p>")
  @as("ProvisionedWriteCapacityUnits")
  provisionedWriteCapacityUnits: option<positiveLongObject>,
  @ocaml.doc("<p>The name of the global secondary index. The name must be unique among all other
            indexes on this table.</p>")
  @as("IndexName")
  indexName: indexName,
}
type globalSecondaryIndexes = array<globalSecondaryIndexInfo>
@ocaml.doc("<p>Represents one of the following:</p>
        <ul>
            <li>
                <p>A new global secondary index to be added to an existing table.</p>
            </li>
            <li>
                <p>New provisioned throughput parameters for an existing global secondary
                    index.</p>
            </li>
            <li>
                <p>An existing global secondary index to be removed from an existing
                    table.</p>
            </li>
         </ul>")
type globalSecondaryIndexUpdate = {
  @ocaml.doc("<p>The name of an existing global secondary index to be removed.</p>") @as("Delete")
  delete: option<deleteGlobalSecondaryIndexAction>,
  @ocaml.doc("<p>The parameters required for creating a global secondary index on an existing
            table:</p>
        <ul>
            <li>
                <p>
                    <code>IndexName </code>
                </p>
            </li>
            <li>
                <p>
                    <code>KeySchema </code>
                </p>
            </li>
            <li>
                <p>
                    <code>AttributeDefinitions </code>
                </p>
            </li>
            <li>
                <p>
                    <code>Projection </code>
                </p>
            </li>
            <li>
                <p>
                    <code>ProvisionedThroughput </code>
                </p>
            </li>
         </ul>")
  @as("Create")
  create: option<createGlobalSecondaryIndexAction>,
  @ocaml.doc("<p>The name of an existing global secondary index, along with new provisioned throughput
            settings to be applied to that index.</p>")
  @as("Update")
  update: option<updateGlobalSecondaryIndexAction>,
}
type globalSecondaryIndexList = array<globalSecondaryIndex>
type globalSecondaryIndexDescriptionList = array<globalSecondaryIndexDescription>
@ocaml.doc("<p>Represents the auto scaling settings of a global secondary index for a global table
            that will be modified.</p>")
type globalSecondaryIndexAutoScalingUpdate = {
  @as("ProvisionedWriteCapacityAutoScalingUpdate")
  provisionedWriteCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
  @ocaml.doc("<p>The name of the global secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
@ocaml.doc("<p>Represents a replica to be created.</p>")
type createReplicationGroupMemberAction = {
  @ocaml.doc("<p>Replica-specific table class. If not specified, uses the source table's
            table class.</p>")
  @as("TableClassOverride")
  tableClassOverride: option<tableClass>,
  @ocaml.doc("<p>Replica-specific global secondary index settings.</p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<replicaGlobalSecondaryIndexList>,
  @ocaml.doc("<p>Replica-specific provisioned throughput. If not specified, uses the source table's
            provisioned throughput settings.</p>")
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<provisionedThroughputOverride>,
  @ocaml.doc("<p>The KMS key that should be used for KMS encryption in
            the new replica. To specify a key, use its key ID, Amazon Resource Name (ARN), alias
            name, or alias ARN. Note that you should only provide this parameter if the key is
            different from the default DynamoDB KMS key
            <code>alias/aws/dynamodb</code>.</p>")
  @as("KMSMasterKeyId")
  kmsmasterKeyId: option<kmsmasterKeyId>,
  @ocaml.doc("<p>The Region where the new replica will be created.</p>") @as("RegionName")
  regionName: regionName,
}
type consumedCapacityMultiple = array<consumedCapacity>
@ocaml.doc("<p>Represents the auto scaling settings for a global table or global secondary
            index.</p>")
type autoScalingSettingsDescription = {
  @ocaml.doc("<p>Information about the scaling policies.</p>") @as("ScalingPolicies")
  scalingPolicies: option<autoScalingPolicyDescriptionList>,
  @ocaml.doc("<p>Role ARN used for configuring the auto scaling policy.</p>")
  @as("AutoScalingRoleArn")
  autoScalingRoleArn: option<string_>,
  @ocaml.doc("<p>Disabled auto scaling for this global table or global secondary index.</p>")
  @as("AutoScalingDisabled")
  autoScalingDisabled: option<booleanObject>,
  @ocaml.doc("<p>The maximum capacity units that a global table or global secondary index should be
            scaled up to.</p>")
  @as("MaximumUnits")
  maximumUnits: option<positiveLongObject>,
  @ocaml.doc("<p>The minimum capacity units that a global table or global secondary index should be
            scaled down to.</p>")
  @as("MinimumUnits")
  minimumUnits: option<positiveLongObject>,
}
@ocaml.doc("<p>Contains the details of the features enabled on the table when the backup was created.
            For example, LSIs, GSIs, streams, TTL. </p>")
type sourceTableFeatureDetails = {
  @ocaml.doc("<p>The description of the server-side encryption status on the table when the backup was
            created.</p>")
  @as("SSEDescription")
  ssedescription: option<ssedescription>,
  @ocaml.doc("<p>Time to Live settings on the table when the backup was created.</p>")
  @as("TimeToLiveDescription")
  timeToLiveDescription: option<timeToLiveDescription>,
  @ocaml.doc("<p>Stream settings on the table when the backup was created.</p>")
  @as("StreamDescription")
  streamDescription: option<streamSpecification>,
  @ocaml.doc("<p>Represents the GSI properties for the table when the backup was created. It includes
            the IndexName, KeySchema, Projection, and ProvisionedThroughput for the GSIs on the
            table at the time of backup. </p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<globalSecondaryIndexes>,
  @ocaml.doc("<p>Represents the LSI properties for the table when the backup was created. It includes
            the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup.
        </p>")
  @as("LocalSecondaryIndexes")
  localSecondaryIndexes: option<localSecondaryIndexes>,
}
@ocaml.doc("<p>Represents one of the following:</p>
        <ul>
            <li>
                <p>A new replica to be added to an existing regional table or global table. This
                    request invokes the <code>CreateTableReplica</code> action in the destination
                    Region.</p>
            </li>
            <li>
                <p>New parameters for an existing replica. This request invokes the
                        <code>UpdateTable</code> action in the destination Region.</p>
            </li>
            <li>
                <p>An existing replica to be deleted. The request invokes the
                        <code>DeleteTableReplica</code> action in the destination Region, deleting
                    the replica and all if its items in the destination Region.</p>
            </li>
         </ul>")
type replicationGroupUpdate = {
  @ocaml.doc("<p>The parameters required for deleting a replica for the table.</p>") @as("Delete")
  delete: option<deleteReplicationGroupMemberAction>,
  @ocaml.doc("<p>The parameters required for updating a replica for the table.</p>") @as("Update")
  update: option<updateReplicationGroupMemberAction>,
  @ocaml.doc("<p>The parameters required for creating a replica for the table.</p>") @as("Create")
  create: option<createReplicationGroupMemberAction>,
}
type replicaGlobalSecondaryIndexSettingsUpdateList = array<
  replicaGlobalSecondaryIndexSettingsUpdate,
>
@ocaml.doc("<p>Represents the properties of a global secondary index.</p>")
type replicaGlobalSecondaryIndexSettingsDescription = {
  @ocaml.doc("<p>Auto scaling settings for a global secondary index replica's write capacity
            units.</p>")
  @as("ProvisionedWriteCapacityAutoScalingSettings")
  provisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @ocaml.doc("<p>The maximum number of writes consumed per second before DynamoDB returns a
                <code>ThrottlingException</code>.</p>")
  @as("ProvisionedWriteCapacityUnits")
  provisionedWriteCapacityUnits: option<positiveLongObject>,
  @ocaml.doc("<p>Auto scaling settings for a global secondary index replica's read capacity
            units.</p>")
  @as("ProvisionedReadCapacityAutoScalingSettings")
  provisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @ocaml.doc("<p>The maximum number of strongly consistent reads consumed per second before DynamoDB
            returns a <code>ThrottlingException</code>.</p>")
  @as("ProvisionedReadCapacityUnits")
  provisionedReadCapacityUnits: option<positiveLongObject>,
  @ocaml.doc("<p> The current status of the global secondary index:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The global secondary index is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The global secondary index is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The global secondary index is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The global secondary index is ready for use.</p>
            </li>
         </ul>")
  @as("IndexStatus")
  indexStatus: option<indexStatus>,
  @ocaml.doc("<p>The name of the global secondary index. The name must be unique among all other
            indexes on this table.</p>")
  @as("IndexName")
  indexName: indexName,
}
type replicaGlobalSecondaryIndexAutoScalingUpdateList = array<
  replicaGlobalSecondaryIndexAutoScalingUpdate,
>
@ocaml.doc("<p>Represents the auto scaling configuration for a replica global secondary index.</p>")
type replicaGlobalSecondaryIndexAutoScalingDescription = {
  @as("ProvisionedWriteCapacityAutoScalingSettings")
  provisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ProvisionedReadCapacityAutoScalingSettings")
  provisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @ocaml.doc("<p>The current state of the replica global secondary index:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The index is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The index is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The index is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The index is ready for use.</p>
            </li>
         </ul>")
  @as("IndexStatus")
  indexStatus: option<indexStatus>,
  @ocaml.doc("<p>The name of the global secondary index.</p>") @as("IndexName")
  indexName: option<indexName>,
}
type replicaDescriptionList = array<replicaDescription>
type globalTableGlobalSecondaryIndexSettingsUpdateList = array<
  globalTableGlobalSecondaryIndexSettingsUpdate,
>
type globalSecondaryIndexUpdateList = array<globalSecondaryIndexUpdate>
type globalSecondaryIndexAutoScalingUpdateList = array<globalSecondaryIndexAutoScalingUpdate>
@ocaml.doc("<p>Represents the properties of a table.</p>")
type tableDescription = {
  @ocaml.doc("<p>Contains details of the table class.</p>") @as("TableClassSummary")
  tableClassSummary: option<tableClassSummary>,
  @ocaml.doc("<p>Contains information about the table archive.</p>") @as("ArchivalSummary")
  archivalSummary: option<archivalSummary>,
  @ocaml.doc("<p>The description of the server-side encryption status on the specified table.</p>")
  @as("SSEDescription")
  ssedescription: option<ssedescription>,
  @ocaml.doc("<p>Contains details for the restore.</p>") @as("RestoreSummary")
  restoreSummary: option<restoreSummary>,
  @ocaml.doc("<p>Represents replicas of the table.</p>") @as("Replicas")
  replicas: option<replicaDescriptionList>,
  @ocaml.doc("<p>Represents the version of <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html\">global tables</a>
            in use, if the table is replicated across Amazon Web Services Regions.</p>")
  @as("GlobalTableVersion")
  globalTableVersion: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this
            table.</p>")
  @as("LatestStreamArn")
  latestStreamArn: option<streamArn>,
  @ocaml.doc("<p>A timestamp, in ISO 8601 format, for this stream.</p>

        <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream,
            because it is possible that a stream from another table might have the same timestamp.
            However, the combination of the following three elements is guaranteed to be
            unique:</p>
        <ul>
            <li>
                <p>Amazon Web Services customer ID</p>
            </li>
            <li>
                <p>Table name</p>
            </li>
            <li>
                <p>
                  <code>StreamLabel</code>
               </p>
            </li>
         </ul>")
  @as("LatestStreamLabel")
  latestStreamLabel: option<string_>,
  @ocaml.doc("<p>The current DynamoDB Streams configuration for the table.</p>")
  @as("StreamSpecification")
  streamSpecification: option<streamSpecification>,
  @ocaml.doc("<p>The global secondary indexes, if any, on the table. Each index is scoped to a given
            partition key value. Each element is composed of:</p>
        <ul>
            <li>
                <p>
                    <code>Backfilling</code> - If true, then the index is currently in the
                    backfilling phase. Backfilling occurs only when a new global secondary index is
                    added to the table. It is the process by which DynamoDB populates the new index
                    with data from the table. (This attribute does not appear for indexes that were
                    created during a <code>CreateTable</code> operation.) </p>
                <p> You can delete an index that is being created during the
                        <code>Backfilling</code> phase when <code>IndexStatus</code> is set to
                    CREATING and <code>Backfilling</code> is true. You can't delete the index that
                    is being created when <code>IndexStatus</code> is set to CREATING and
                        <code>Backfilling</code> is false. (This attribute does not appear for
                    indexes that were created during a <code>CreateTable</code> operation.)</p>
            </li>
            <li>
                <p>
                    <code>IndexName</code> - The name of the global secondary index.</p>
            </li>
            <li>
                <p>
                    <code>IndexSizeBytes</code> - The total size of the global secondary index, in
                    bytes. DynamoDB updates this value approximately every six hours. Recent changes
                    might not be reflected in this value. </p>
            </li>
            <li>
                <p>
                    <code>IndexStatus</code> - The current status of the global secondary
                    index:</p>
                <ul>
                  <li>
                        <p>
                            <code>CREATING</code> - The index is being created.</p>
                    </li>
                  <li>
                        <p>
                            <code>UPDATING</code> - The index is being updated.</p>
                    </li>
                  <li>
                        <p>
                            <code>DELETING</code> - The index is being deleted.</p>
                    </li>
                  <li>
                        <p>
                            <code>ACTIVE</code> - The index is ready for use.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <code>ItemCount</code> - The number of items in the global secondary index.
                    DynamoDB updates this value approximately every six hours. Recent changes might
                    not be reflected in this value. </p>
            </li>
            <li>
                <p>
                    <code>KeySchema</code> - Specifies the complete index key schema. The attribute
                    names in the key schema must be between 1 and 255 characters (inclusive). The
                    key schema must begin with the same partition key as the table.</p>
            </li>
            <li>
                <p>
                    <code>Projection</code> - Specifies attributes that are copied (projected) from
                    the table into the index. These are in addition to the primary key attributes
                    and index key attributes, which are automatically projected. Each attribute
                    specification is composed of:</p>
                <ul>
                  <li>
                        <p>
                            <code>ProjectionType</code> - One of the following:</p>
                        <ul>
                        <li>
                                <p>
                                    <code>KEYS_ONLY</code> - Only the index and primary keys are
                                    projected into the index.</p>
                            </li>
                        <li>
                                <p>
                                    <code>INCLUDE</code> - In addition to the attributes described
                                    in <code>KEYS_ONLY</code>, the secondary index will include
                                    other non-key attributes that you specify.</p>
                            </li>
                        <li>
                                <p>
                                    <code>ALL</code> - All of the table attributes are projected
                                    into the index.</p>
                            </li>
                     </ul>
                    </li>
                  <li>
                        <p>
                            <code>NonKeyAttributes</code> - A list of one or more non-key attribute
                            names that are projected into the secondary index. The total count of
                            attributes provided in <code>NonKeyAttributes</code>, summed across all
                            of the secondary indexes, must not exceed 20. If you project the same
                            attribute into two different indexes, this counts as two distinct
                            attributes when determining the total.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
                    global secondary index, consisting of read and write capacity units, along with
                    data about increases and decreases. </p>
            </li>
         </ul>
        <p>If the table is in the <code>DELETING</code> state, no information about indexes will
            be returned.</p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<globalSecondaryIndexDescriptionList>,
  @ocaml.doc("<p>Represents one or more local secondary indexes on the table. Each index is scoped to a
            given partition key value. Tables with one or more local secondary indexes are subject
            to an item collection size limit, where the amount of data within a given item
            collection cannot exceed 10 GB. Each element is composed of:</p>
        <ul>
            <li>
                <p>
                    <code>IndexName</code> - The name of the local secondary index.</p>
            </li>
            <li>
                <p>
                    <code>KeySchema</code> - Specifies the complete index key schema. The attribute
                    names in the key schema must be between 1 and 255 characters (inclusive). The
                    key schema must begin with the same partition key as the table.</p>
            </li>
            <li>
                <p>
                    <code>Projection</code> - Specifies attributes that are copied (projected) from
                    the table into the index. These are in addition to the primary key attributes
                    and index key attributes, which are automatically projected. Each attribute
                    specification is composed of:</p>
                <ul>
                  <li>
                        <p>
                            <code>ProjectionType</code> - One of the following:</p>
                        <ul>
                        <li>
                                <p>
                                    <code>KEYS_ONLY</code> - Only the index and primary keys are
                                    projected into the index.</p>
                            </li>
                        <li>
                                <p>
                                    <code>INCLUDE</code> - Only the specified table attributes are
                                    projected into the index. The list of projected attributes is in
                                        <code>NonKeyAttributes</code>.</p>
                            </li>
                        <li>
                                <p>
                                    <code>ALL</code> - All of the table attributes are projected
                                    into the index.</p>
                            </li>
                     </ul>
                    </li>
                  <li>
                        <p>
                            <code>NonKeyAttributes</code> - A list of one or more non-key attribute
                            names that are projected into the secondary index. The total count of
                            attributes provided in <code>NonKeyAttributes</code>, summed across all
                            of the secondary indexes, must not exceed 20. If you project the same
                            attribute into two different indexes, this counts as two distinct
                            attributes when determining the total.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <code>IndexSizeBytes</code> - Represents the total size of the index, in bytes.
                    DynamoDB updates this value approximately every six hours. Recent changes might
                    not be reflected in this value.</p>
            </li>
            <li>
                <p>
                    <code>ItemCount</code> - Represents the number of items in the index. DynamoDB
                    updates this value approximately every six hours. Recent changes might not be
                    reflected in this value.</p>
            </li>
         </ul>
        <p>If the table is in the <code>DELETING</code> state, no information about indexes will
            be returned.</p>")
  @as("LocalSecondaryIndexes")
  localSecondaryIndexes: option<localSecondaryIndexDescriptionList>,
  @ocaml.doc("<p>Contains the details for the read/write capacity mode.</p>")
  @as("BillingModeSummary")
  billingModeSummary: option<billingModeSummary>,
  @ocaml.doc("<p>Unique identifier for the table for which the backup was created. </p>")
  @as("TableId")
  tableId: option<tableId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that uniquely identifies the table.</p>")
  @as("TableArn")
  tableArn: option<string_>,
  @ocaml.doc("<p>The number of items in the specified table. DynamoDB updates this value approximately
            every six hours. Recent changes might not be reflected in this value.</p>")
  @as("ItemCount")
  itemCount: option<long>,
  @ocaml.doc("<p>The total size of the specified table, in bytes. DynamoDB updates this value
            approximately every six hours. Recent changes might not be reflected in this
            value.</p>")
  @as("TableSizeBytes")
  tableSizeBytes: option<long>,
  @ocaml.doc("<p>The provisioned throughput settings for the table, consisting of read and write
            capacity units, along with data about increases and decreases.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: option<provisionedThroughputDescription>,
  @ocaml.doc(
    "<p>The date and time when the table was created, in <a href=\"http://www.epochconverter.com/\">UNIX epoch time</a> format.</p>"
  )
  @as("CreationDateTime")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The current state of the table:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The table is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The table is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The table is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The table is ready for use.</p>
            </li>
            <li>
                <p>
                    <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS</code> - The KMS key
                    used to encrypt the table in inaccessible. Table operations may fail due to
                    failure to use the KMS key. DynamoDB will initiate the
                    table archival process when a table's KMS key remains
                    inaccessible for more than seven days. </p>
            </li>
            <li>
                <p>
                    <code>ARCHIVING</code> - The table is being archived. Operations are not allowed
                    until archival is complete. </p>
            </li>
            <li>
                <p>
                    <code>ARCHIVED</code> - The table has been archived. See the ArchivalReason for
                    more information. </p>
            </li>
         </ul>")
  @as("TableStatus")
  tableStatus: option<tableStatus>,
  @ocaml.doc("<p>The primary key structure for the table. Each <code>KeySchemaElement</code> consists
            of:</p>
        <ul>
            <li>
                <p>
                    <code>AttributeName</code> - The name of the attribute.</p>
            </li>
            <li>
                <p>
                    <code>KeyType</code> - The role of the attribute:</p>
                <ul>
                  <li>
                        <p>
                            <code>HASH</code> - partition key</p>
                    </li>
                  <li>
                        <p>
                            <code>RANGE</code> - sort key</p>
                    </li>
               </ul>
                <note>
                    <p>The partition key of an item is also known as its <i>hash
                            attribute</i>. The term \"hash attribute\" derives from DynamoDB's
                        usage of an internal hash function to evenly distribute data items across
                        partitions, based on their partition key values.</p>
                    <p>The sort key of an item is also known as its <i>range
                            attribute</i>. The term \"range attribute\" derives from the way
                        DynamoDB stores items with the same partition key physically close together,
                        in sorted order by the sort key value.</p>
                </note>

            </li>
         </ul>
        <p>For more information about primary keys, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey\">Primary Key</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
  @as("KeySchema")
  keySchema: option<keySchema>,
  @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: option<tableName>,
  @ocaml.doc("<p>An array of <code>AttributeDefinition</code> objects. Each of these objects describes
            one attribute in the table and index key schema.</p>
        <p>Each <code>AttributeDefinition</code> object in this array is composed of:</p>
        <ul>
            <li>
                <p>
                    <code>AttributeName</code> - The name of the attribute.</p>
            </li>
            <li>
                <p>
                    <code>AttributeType</code> - The data type for the attribute.</p>
            </li>
         </ul>")
  @as("AttributeDefinitions")
  attributeDefinitions: option<attributeDefinitions>,
}
type replicationGroupUpdateList = array<replicationGroupUpdate>
@ocaml.doc("<p>Represents the settings for a global table in a Region that will be modified.</p>")
type replicaSettingsUpdate = {
  @ocaml.doc("<p>Replica-specific table class. If not specified, uses the source table's
            table class.</p>")
  @as("ReplicaTableClass")
  replicaTableClass: option<tableClass>,
  @ocaml.doc("<p>Represents the settings of a global secondary index for a global table that will be
            modified.</p>")
  @as("ReplicaGlobalSecondaryIndexSettingsUpdate")
  replicaGlobalSecondaryIndexSettingsUpdate: option<replicaGlobalSecondaryIndexSettingsUpdateList>,
  @ocaml.doc("<p>Auto scaling settings for managing a global table replica's read capacity
            units.</p>")
  @as("ReplicaProvisionedReadCapacityAutoScalingSettingsUpdate")
  replicaProvisionedReadCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
  @ocaml.doc("<p>The maximum number of strongly consistent reads consumed per second before DynamoDB
            returns a <code>ThrottlingException</code>. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput\">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
                Developer Guide</i>. </p>")
  @as("ReplicaProvisionedReadCapacityUnits")
  replicaProvisionedReadCapacityUnits: option<positiveLongObject>,
  @ocaml.doc("<p>The Region of the replica to be added.</p>") @as("RegionName")
  regionName: regionName,
}
type replicaGlobalSecondaryIndexSettingsDescriptionList = array<
  replicaGlobalSecondaryIndexSettingsDescription,
>
type replicaGlobalSecondaryIndexAutoScalingDescriptionList = array<
  replicaGlobalSecondaryIndexAutoScalingDescription,
>
@ocaml.doc("<p>Represents the auto scaling settings of a replica that will be modified.</p>")
type replicaAutoScalingUpdate = {
  @as("ReplicaProvisionedReadCapacityAutoScalingUpdate")
  replicaProvisionedReadCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
  @ocaml.doc("<p>Represents the auto scaling settings of global secondary indexes that will be
            modified.</p>")
  @as("ReplicaGlobalSecondaryIndexUpdates")
  replicaGlobalSecondaryIndexUpdates: option<replicaGlobalSecondaryIndexAutoScalingUpdateList>,
  @ocaml.doc("<p>The Region where the replica exists.</p>") @as("RegionName")
  regionName: regionName,
}
@ocaml.doc("<p>Contains details about the global table.</p>")
type globalTableDescription = {
  @ocaml.doc("<p>The global table name.</p>") @as("GlobalTableName")
  globalTableName: option<tableName>,
  @ocaml.doc("<p>The current state of the global table:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The global table is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The global table is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The global table is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The global table is ready for use.</p>
            </li>
         </ul>")
  @as("GlobalTableStatus")
  globalTableStatus: option<globalTableStatus>,
  @ocaml.doc("<p>The creation time of the global table.</p>") @as("CreationDateTime")
  creationDateTime: option<date>,
  @ocaml.doc("<p>The unique identifier of the global table.</p>") @as("GlobalTableArn")
  globalTableArn: option<globalTableArnString>,
  @ocaml.doc("<p>The Regions where the global table has replicas.</p>") @as("ReplicationGroup")
  replicationGroup: option<replicaDescriptionList>,
}
@ocaml.doc("<p>Contains the description of the backup created for the table.</p>")
type backupDescription = {
  @ocaml.doc("<p>Contains the details of the features enabled on the table when the backup was created.
            For example, LSIs, GSIs, streams, TTL.</p>")
  @as("SourceTableFeatureDetails")
  sourceTableFeatureDetails: option<sourceTableFeatureDetails>,
  @ocaml.doc("<p>Contains the details of the table when the backup was created. </p>")
  @as("SourceTableDetails")
  sourceTableDetails: option<sourceTableDetails>,
  @ocaml.doc("<p>Contains the details of the backup created for the table. </p>")
  @as("BackupDetails")
  backupDetails: option<backupDetails>,
}
type replicaSettingsUpdateList = array<replicaSettingsUpdate>
@ocaml.doc("<p>Represents the properties of a replica.</p>")
type replicaSettingsDescription = {
  @as("ReplicaTableClassSummary") replicaTableClassSummary: option<tableClassSummary>,
  @ocaml.doc("<p>Replica global secondary index settings for the global table.</p>")
  @as("ReplicaGlobalSecondaryIndexSettings")
  replicaGlobalSecondaryIndexSettings: option<replicaGlobalSecondaryIndexSettingsDescriptionList>,
  @ocaml.doc("<p>Auto scaling settings for a global table replica's write capacity units.</p>")
  @as("ReplicaProvisionedWriteCapacityAutoScalingSettings")
  replicaProvisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @ocaml.doc("<p>The maximum number of writes consumed per second before DynamoDB returns a
                <code>ThrottlingException</code>. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput\">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
                Developer Guide</i>.</p>")
  @as("ReplicaProvisionedWriteCapacityUnits")
  replicaProvisionedWriteCapacityUnits: option<nonNegativeLongObject>,
  @ocaml.doc("<p>Auto scaling settings for a global table replica's read capacity units.</p>")
  @as("ReplicaProvisionedReadCapacityAutoScalingSettings")
  replicaProvisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @ocaml.doc("<p>The maximum number of strongly consistent reads consumed per second before DynamoDB
            returns a <code>ThrottlingException</code>. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput\">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
                Developer Guide</i>. </p>")
  @as("ReplicaProvisionedReadCapacityUnits")
  replicaProvisionedReadCapacityUnits: option<nonNegativeLongObject>,
  @ocaml.doc("<p>The read/write capacity mode of the replica.</p>") @as("ReplicaBillingModeSummary")
  replicaBillingModeSummary: option<billingModeSummary>,
  @ocaml.doc("<p>The current state of the Region:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The Region is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The Region is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The Region is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The Region is ready for use.</p>
            </li>
         </ul>")
  @as("ReplicaStatus")
  replicaStatus: option<replicaStatus>,
  @ocaml.doc("<p>The Region name of the replica.</p>") @as("RegionName") regionName: regionName,
}
type replicaAutoScalingUpdateList = array<replicaAutoScalingUpdate>
@ocaml.doc("<p>Represents the auto scaling settings of the replica.</p>")
type replicaAutoScalingDescription = {
  @ocaml.doc("<p>The current state of the replica:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The replica is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The replica is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The replica is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The replica is ready for use.</p>
            </li>
         </ul>")
  @as("ReplicaStatus")
  replicaStatus: option<replicaStatus>,
  @as("ReplicaProvisionedWriteCapacityAutoScalingSettings")
  replicaProvisionedWriteCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @as("ReplicaProvisionedReadCapacityAutoScalingSettings")
  replicaProvisionedReadCapacityAutoScalingSettings: option<autoScalingSettingsDescription>,
  @ocaml.doc("<p>Replica-specific global secondary index auto scaling settings.</p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<replicaGlobalSecondaryIndexAutoScalingDescriptionList>,
  @ocaml.doc("<p>The Region where the replica exists.</p>") @as("RegionName")
  regionName: option<regionName>,
}
type replicaSettingsDescriptionList = array<replicaSettingsDescription>
type replicaAutoScalingDescriptionList = array<replicaAutoScalingDescription>
@ocaml.doc("<p>Represents the auto scaling configuration for a global table.</p>")
type tableAutoScalingDescription = {
  @ocaml.doc("<p>Represents replicas of the global table.</p>") @as("Replicas")
  replicas: option<replicaAutoScalingDescriptionList>,
  @ocaml.doc("<p>The current state of the table:</p>
        <ul>
            <li>
                <p>
                    <code>CREATING</code> - The table is being created.</p>
            </li>
            <li>
                <p>
                    <code>UPDATING</code> - The table is being updated.</p>
            </li>
            <li>
                <p>
                    <code>DELETING</code> - The table is being deleted.</p>
            </li>
            <li>
                <p>
                    <code>ACTIVE</code> - The table is ready for use.</p>
            </li>
         </ul>")
  @as("TableStatus")
  tableStatus: option<tableStatus>,
  @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: option<tableName>,
}
type rec attributeValue = {
  @ocaml.doc("<p>An attribute of type Boolean. For example:</p>
        <p>
            <code>\"BOOL\": true</code>
         </p>")
  @as("BOOL")
  bool_: option<booleanAttributeValue>,
  @ocaml.doc("<p>An attribute of type Null. For example:</p>
        <p>
            <code>\"NULL\": true</code>
         </p>")
  @as("NULL")
  null: option<nullAttributeValue>,
  @ocaml.doc("<p>An attribute of type List. For example:</p>
        <p>
            <code>\"L\": [ {\"S\": \"Cookies\"} , {\"S\": \"Coffee\"}, {\"N\", \"3.14159\"}]</code>
         </p>")
  @as("L")
  l: option<listAttributeValue>,
  @ocaml.doc("<p>An attribute of type Map. For example:</p>
        <p>
            <code>\"M\": {\"Name\": {\"S\": \"Joe\"}, \"Age\": {\"N\": \"35\"}}</code>
         </p>")
  @as("M")
  m: option<mapAttributeValue>,
  @ocaml.doc("<p>An attribute of type Binary Set. For example:</p>
        <p>
            <code>\"BS\": [\"U3Vubnk=\", \"UmFpbnk=\", \"U25vd3k=\"]</code>
         </p>")
  @as("BS")
  bs: option<binarySetAttributeValue>,
  @ocaml.doc("<p>An attribute of type Number Set. For example:</p>
        <p>
            <code>\"NS\": [\"42.2\", \"-19\", \"7.5\", \"3.14\"]</code>
         </p>
        <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility
            across languages and libraries. However, DynamoDB treats them as number type attributes
            for mathematical operations.</p>")
  @as("NS")
  ns: option<numberSetAttributeValue>,
  @ocaml.doc("<p>An attribute of type String Set. For example:</p>
        <p>
            <code>\"SS\": [\"Giraffe\", \"Hippo\" ,\"Zebra\"]</code>
         </p>")
  @as("SS")
  ss: option<stringSetAttributeValue>,
  @ocaml.doc("<p>An attribute of type Binary. For example:</p>
        <p>
            <code>\"B\": \"dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk\"</code>
         </p>")
  @as("B")
  b: option<binaryAttributeValue>,
  @ocaml.doc("<p>An attribute of type Number. For example:</p>
        <p>
            <code>\"N\": \"123.45\"</code>
         </p>
        <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility
            across languages and libraries. However, DynamoDB treats them as number type attributes
            for mathematical operations.</p>")
  @as("N")
  n: option<numberAttributeValue>,
  @ocaml.doc("<p>An attribute of type String. For example:</p>
        <p>
            <code>\"S\": \"Hello\"</code>
         </p>")
  @as("S")
  s: option<stringAttributeValue>,
}
and mapAttributeValue = Js.Dict.t<attributeValue>
and listAttributeValue = array<attributeValue>
type putItemInputAttributeMap = Js.Dict.t<attributeValue>
type preparedStatementParameters = array<attributeValue>
type key = Js.Dict.t<attributeValue>
type itemCollectionKeyAttributeMap = Js.Dict.t<attributeValue>
type expressionAttributeValueMap = Js.Dict.t<attributeValue>
@ocaml.doc("<p>For the <code>UpdateItem</code> operation, represents the attributes to be modified,
            the action to perform on each, and the new value for each.</p>
        <note>
            <p>You cannot use <code>UpdateItem</code> to update any primary key attributes.
                Instead, you will need to delete the item, and then use <code>PutItem</code> to
                create a new item with new attributes.</p>
        </note>
        <p>Attribute values cannot be null; string and binary type attributes must have lengths
            greater than zero; and set type attributes must not be empty. Requests with empty values
            will be rejected with a <code>ValidationException</code> exception.</p>")
type attributeValueUpdate = {
  @ocaml.doc("<p>Specifies how to perform the update. Valid values are <code>PUT</code> (default),
                <code>DELETE</code>, and <code>ADD</code>. The behavior depends on whether the
            specified primary key already exists in the table.</p>

        <p>
            <b>If an item with the specified <i>Key</i> is found in
                the table:</b>
        </p>

        <ul>
            <li>
                <p>
                    <code>PUT</code> - Adds the specified attribute to the item. If the attribute
                    already exists, it is replaced by the new value. </p>
            </li>
            <li>
                <p>
                    <code>DELETE</code> - If no value is specified, the attribute and its value are
                    removed from the item. The data type of the specified value must match the
                    existing value's data type.</p>
                <p>If a <i>set</i> of values is specified, then those values are
                    subtracted from the old set. For example, if the attribute value was the set
                        <code>[a,b,c]</code> and the <code>DELETE</code> action specified
                        <code>[a,c]</code>, then the final attribute value would be
                    <code>[b]</code>. Specifying an empty set is an error.</p>
            </li>
            <li>
                <p>
                    <code>ADD</code> - If the attribute does not already exist, then the attribute
                    and its values are added to the item. If the attribute does exist, then the
                    behavior of <code>ADD</code> depends on the data type of the attribute:</p>
                <ul>
                  <li>
                        <p>If the existing attribute is a number, and if <code>Value</code> is
                            also a number, then the <code>Value</code> is mathematically added to
                            the existing attribute. If <code>Value</code> is a negative number, then
                            it is subtracted from the existing attribute.</p>
                        <note>
                            <p> If you use <code>ADD</code> to increment or decrement a number
                                value for an item that doesn't exist before the update, DynamoDB
                                uses 0 as the initial value.</p>
                            <p>In addition, if you use <code>ADD</code> to update an existing
                                item, and intend to increment or decrement an attribute value which
                                does not yet exist, DynamoDB uses <code>0</code> as the initial
                                value. For example, suppose that the item you want to update does
                                not yet have an attribute named <i>itemcount</i>, but
                                you decide to <code>ADD</code> the number <code>3</code> to this
                                attribute anyway, even though it currently does not exist. DynamoDB
                                will create the <i>itemcount</i> attribute, set its
                                initial value to <code>0</code>, and finally add <code>3</code> to
                                it. The result will be a new <i>itemcount</i>
                                attribute in the item, with a value of <code>3</code>.</p>
                        </note>
                    </li>
                  <li>
                        <p>If the existing data type is a set, and if the <code>Value</code> is
                            also a set, then the <code>Value</code> is added to the existing set.
                            (This is a <i>set</i> operation, not mathematical
                            addition.) For example, if the attribute value was the set
                                <code>[1,2]</code>, and the <code>ADD</code> action specified
                                <code>[3]</code>, then the final attribute value would be
                                <code>[1,2,3]</code>. An error occurs if an Add action is specified
                            for a set attribute and the attribute type specified does not match the
                            existing set type. </p>
                        <p>Both sets must have the same primitive data type. For example, if the
                            existing data type is a set of strings, the <code>Value</code> must also
                            be a set of strings. The same holds true for number sets and binary
                            sets.</p>
                    </li>
               </ul>
                <p>This action is only valid for an existing attribute whose data type is number
                    or is a set. Do not use <code>ADD</code> for any other data types.</p>
            </li>
         </ul>

        <p>
            <b>If no item with the specified <i>Key</i> is
                found:</b>
        </p>

        <ul>
            <li>
                <p>
                    <code>PUT</code> - DynamoDB creates a new item with the specified primary key,
                    and then adds the attribute. </p>
            </li>
            <li>
                <p>
                    <code>DELETE</code> - Nothing happens; there is no attribute to delete.</p>
            </li>
            <li>
                <p>
                    <code>ADD</code> - DynamoDB creates an item with the supplied primary key and
                    number (or set of numbers) for the attribute value. The only data types allowed
                    are number and number set; no other data types can be specified.</p>
            </li>
         </ul>")
  @as("Action")
  action: option<attributeAction>,
  @ocaml.doc("<p>Represents the data for an attribute.</p>
        <p>Each attribute value is described as a name-value pair. The name is the data type, and
            the value is the data itself.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes\">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.
        </p>")
  @as("Value")
  value: option<attributeValue>,
}
type attributeValueList = array<attributeValue>
type attributeMap = Js.Dict.t<attributeValue>
@ocaml.doc("<p>Represents a request to perform an <code>UpdateItem</code> operation.</p>")
type update = {
  @ocaml.doc("<p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
                <code>Update</code> condition fails. For
                <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE,
            ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW.</p>")
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>")
  @as("ExpressionAttributeValues")
  expressionAttributeValues: option<expressionAttributeValueMap>,
  @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression.</p>")
  @as("ExpressionAttributeNames")
  expressionAttributeNames: option<expressionAttributeNameMap>,
  @ocaml.doc("<p>A condition that must be satisfied in order for a conditional update to
            succeed.</p>")
  @as("ConditionExpression")
  conditionExpression: option<conditionExpression>,
  @ocaml.doc("<p>Name of the table for the <code>UpdateItem</code> request.</p>") @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>An expression that defines one or more attributes to be updated, the action to be
            performed on them, and new value(s) for them.</p>")
  @as("UpdateExpression")
  updateExpression: updateExpression,
  @ocaml.doc("<p>The primary key of the item to be updated. Each element consists of an attribute name
            and a value for that attribute.</p>")
  @as("Key")
  key: key,
}
@ocaml.doc("<p>Represents a request to perform a <code>PutItem</code> operation on an item.</p>")
type putRequest = {
  @ocaml.doc("<p>A map of attribute name to attribute values, representing the primary key of an item
            to be processed by <code>PutItem</code>. All of the table's primary key attributes must
            be specified, and their data types must match those of the table's key schema. If any
            attributes are present in the item that are part of an index key schema for the table,
            their types must match the index key schema.</p>")
  @as("Item")
  item: putItemInputAttributeMap,
}
@ocaml.doc("<p>Represents a request to perform a <code>PutItem</code> operation.</p>")
type put = {
  @ocaml.doc("<p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
                <code>Put</code> condition fails. For
                <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
            ALL_OLD.</p>")
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>")
  @as("ExpressionAttributeValues")
  expressionAttributeValues: option<expressionAttributeValueMap>,
  @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression.</p>")
  @as("ExpressionAttributeNames")
  expressionAttributeNames: option<expressionAttributeNameMap>,
  @ocaml.doc("<p>A condition that must be satisfied in order for a conditional update to
            succeed.</p>")
  @as("ConditionExpression")
  conditionExpression: option<conditionExpression>,
  @ocaml.doc("<p>Name of the table in which to write the item.</p>") @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>A map of attribute name to attribute values, representing the primary key of the item
            to be written by <code>PutItem</code>. All of the table's primary key attributes must be
            specified, and their data types must match those of the table's key schema. If any
            attributes are present in the item that are part of an index key schema for the table,
            their types must match the index key schema. </p>")
  @as("Item")
  item: putItemInputAttributeMap,
}
@ocaml.doc("<p> Represents a PartiQL statment that uses parameters. </p>")
type parameterizedStatement = {
  @ocaml.doc("<p> The parameter values. </p>") @as("Parameters")
  parameters: option<preparedStatementParameters>,
  @ocaml.doc("<p> A PartiQL statment that uses parameters. </p>") @as("Statement")
  statement: partiQLStatement,
}
type keyList = array<key>
@ocaml.doc("<p>Details for the requested item.</p>")
type itemResponse = {
  @ocaml.doc("<p>Map of attribute data consisting of the data type and attribute value.</p>")
  @as("Item")
  item: option<attributeMap>,
}
type itemList = array<attributeMap>
@ocaml.doc("<p>Information about item collections, if any, that were affected by the operation.
                <code>ItemCollectionMetrics</code> is only returned if the request asked for it. If
            the table does not have any local secondary indexes, this information is not returned in
            the response.</p>")
type itemCollectionMetrics = {
  @ocaml.doc("<p>An estimate of item collection size, in gigabytes. This value is a two-element array
            containing a lower bound and an upper bound for the estimate. The estimate includes the
            size of all the items in the table, plus the size of all attributes projected into all
            of the local secondary indexes on that table. Use this estimate to measure whether a
            local secondary index is approaching its size limit.</p>
        <p>The estimate is subject to change over time; therefore, do not rely on the precision
            or accuracy of the estimate.</p>")
  @as("SizeEstimateRangeGB")
  sizeEstimateRangeGB: option<itemCollectionSizeEstimateRange>,
  @ocaml.doc("<p>The partition key value of the item collection. This value is the same as the
            partition key value of the item.</p>")
  @as("ItemCollectionKey")
  itemCollectionKey: option<itemCollectionKeyAttributeMap>,
}
@ocaml.doc("<p>Specifies an item and related attribute values to retrieve in a
                <code>TransactGetItem</code> object.</p>")
type get = {
  @ocaml.doc("<p>One or more substitution tokens for attribute names in the ProjectionExpression
            parameter.</p>")
  @as("ExpressionAttributeNames")
  expressionAttributeNames: option<expressionAttributeNameMap>,
  @ocaml.doc("<p>A string that identifies one or more attributes of the specified item to retrieve from
            the table. The attributes in the expression must be separated by commas. If no attribute
            names are specified, then all attributes of the specified item are returned. If any of
            the requested attributes are not found, they do not appear in the result.</p>")
  @as("ProjectionExpression")
  projectionExpression: option<projectionExpression>,
  @ocaml.doc("<p>The name of the table from which to retrieve the specified item.</p>")
  @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>A map of attribute names to <code>AttributeValue</code> objects that specifies the
            primary key of the item to retrieve.</p>")
  @as("Key")
  key: key,
}
@ocaml.doc("<p>Represents a condition to be compared with an attribute value. This condition can be
            used with <code>DeleteItem</code>, <code>PutItem</code>, or <code>UpdateItem</code>
            operations; if the comparison evaluates to true, the operation succeeds; if not, the
            operation fails. You can use <code>ExpectedAttributeValue</code> in one of two different
            ways:</p>
        <ul>
            <li>
                <p>Use <code>AttributeValueList</code> to specify one or more values to compare
                    against an attribute. Use <code>ComparisonOperator</code> to specify how you
                    want to perform the comparison. If the comparison evaluates to true, then the
                    conditional operation succeeds.</p>
            </li>
            <li>
                <p>Use <code>Value</code> to specify a value that DynamoDB will compare against
                    an attribute. If the values match, then <code>ExpectedAttributeValue</code>
                    evaluates to true and the conditional operation succeeds. Optionally, you can
                    also set <code>Exists</code> to false, indicating that you <i>do
                        not</i> expect to find the attribute value in the table. In this
                    case, the conditional operation succeeds only if the comparison evaluates to
                    false.</p>
            </li>
         </ul>
        <p>
            <code>Value</code> and <code>Exists</code> are incompatible with
                <code>AttributeValueList</code> and <code>ComparisonOperator</code>. Note that if
            you use both sets of parameters at once, DynamoDB will return a
                <code>ValidationException</code> exception.</p>")
type expectedAttributeValue = {
  @ocaml.doc("<p>One or more values to evaluate against the supplied attribute. The number of values in
            the list depends on the <code>ComparisonOperator</code> being used.</p>
        <p>For type Number, value comparisons are numeric.</p>
        <p>String value comparisons for greater than, equals, or less than are based on ASCII
            character code values. For example, <code>a</code> is greater than <code>A</code>, and
                <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href=\"http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters\">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
        <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it
            compares binary values.</p>
        <p>For information on specifying data types in JSON, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html\">JSON Data Format</a>
            in the <i>Amazon DynamoDB Developer Guide</i>.</p>")
  @as("AttributeValueList")
  attributeValueList: option<attributeValueList>,
  @ocaml.doc("<p>A comparator for evaluating attributes in the <code>AttributeValueList</code>. For
            example, equals, greater than, less than, etc.</p>
        <p>The following comparison operators are available:</p>
        <p>
            <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS |
                BEGINS_WITH | IN | BETWEEN</code>
        </p>
        <p>The following are descriptions of each comparison operator.</p>
        <ul>
            <li>
                <p>
                    <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types,
                    including lists and maps.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, Binary, String Set, Number Set, or Binary Set.
                    If an item contains an <code>AttributeValue</code> element of a different type
                    than the one provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not equal <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not equal <code>{\"NS\":[\"6\", \"2\",
                    \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>NE</code> : Not equal. <code>NE</code> is supported for all data types,
                    including lists and maps.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    of type String, Number, Binary, String Set, Number Set, or Binary Set. If an
                    item contains an <code>AttributeValue</code> of a different type than the one
                    provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not equal <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not equal <code>{\"NS\":[\"6\", \"2\",
                    \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>LE</code> : Less than or equal. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If an item contains
                    an <code>AttributeValue</code> element of a different type than the one provided
                    in the request, the value does not match. For example, <code>{\"S\":\"6\"}</code>
                    does not equal <code>{\"N\":\"6\"}</code>. Also, <code>{\"N\":\"6\"}</code> does not
                    compare to <code>{\"NS\":[\"6\", \"2\", \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>LT</code> : Less than. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    of type String, Number, or Binary (not a set type). If an item contains an
                        <code>AttributeValue</code> element of a different type than the one
                    provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not equal <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not compare to <code>{\"NS\":[\"6\", \"2\",
                        \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>GE</code> : Greater than or equal. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If an item contains
                    an <code>AttributeValue</code> element of a different type than the one provided
                    in the request, the value does not match. For example, <code>{\"S\":\"6\"}</code>
                    does not equal <code>{\"N\":\"6\"}</code>. Also, <code>{\"N\":\"6\"}</code> does not
                    compare to <code>{\"NS\":[\"6\", \"2\", \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>GT</code> : Greater than. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If an item contains
                    an <code>AttributeValue</code> element of a different type than the one provided
                    in the request, the value does not match. For example, <code>{\"S\":\"6\"}</code>
                    does not equal <code>{\"N\":\"6\"}</code>. Also, <code>{\"N\":\"6\"}</code> does not
                    compare to <code>{\"NS\":[\"6\", \"2\", \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported
                    for all data types, including lists and maps.</p>
                <note>
                    <p>This operator tests for the existence of an attribute, not its data type.
                        If the data type of attribute \"<code>a</code>\" is null, and you evaluate it
                        using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This
                        result is because the attribute \"<code>a</code>\" exists; its data type is
                        not relevant to the <code>NOT_NULL</code> comparison operator.</p>
                </note>
            </li>
            <li>
                <p>
                    <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported
                    for all data types, including lists and maps.</p>
                <note>
                    <p>This operator tests for the nonexistence of an attribute, not its data
                        type. If the data type of attribute \"<code>a</code>\" is null, and you
                        evaluate it using <code>NULL</code>, the result is a Boolean
                            <code>false</code>. This is because the attribute \"<code>a</code>\"
                        exists; its data type is not relevant to the <code>NULL</code> comparison
                        operator.</p>
                </note>
            </li>
            <li>
                <p>
                    <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If the target
                    attribute of the comparison is of type String, then the operator checks for a
                    substring match. If the target attribute of the comparison is of type Binary,
                    then the operator looks for a subsequence of the target that matches the input.
                    If the target attribute of the comparison is a set (\"<code>SS</code>\",
                        \"<code>NS</code>\", or \"<code>BS</code>\"), then the operator evaluates to
                    true if it finds an exact match with any member of the set.</p>
                <p>CONTAINS is supported for lists: When evaluating \"<code>a CONTAINS b</code>\",
                        \"<code>a</code>\" can be a list; however, \"<code>b</code>\" cannot be a set, a
                    map, or a list.</p>
            </li>
            <li>
                <p>
                    <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a
                    value in a set.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If the target
                    attribute of the comparison is a String, then the operator checks for the
                    absence of a substring match. If the target attribute of the comparison is
                    Binary, then the operator checks for the absence of a subsequence of the target
                    that matches the input. If the target attribute of the comparison is a set
                        (\"<code>SS</code>\", \"<code>NS</code>\", or \"<code>BS</code>\"), then the
                    operator evaluates to true if it <i>does not</i> find an exact
                    match with any member of the set.</p>
                <p>NOT_CONTAINS is supported for lists: When evaluating \"<code>a NOT CONTAINS
                        b</code>\", \"<code>a</code>\" can be a list; however, \"<code>b</code>\" cannot
                    be a set, a map, or a list.</p>
            </li>
            <li>
                <p>
                    <code>BEGINS_WITH</code> : Checks for a prefix. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    of type String or Binary (not a Number or a set type). The target attribute of
                    the comparison must be of type String or Binary (not a Number or a set
                    type).</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>IN</code> : Checks for matching elements in a list.</p>
                <p>
                    <code>AttributeValueList</code> can contain one or more
                        <code>AttributeValue</code> elements of type String, Number, or Binary.
                    These attributes are compared against an existing attribute of an item. If any
                    elements of the input are equal to the item attribute, the expression evaluates
                    to true.</p>
            </li>
            <li>
                <p>
                    <code>BETWEEN</code> : Greater than or equal to the first value, and less than
                    or equal to the second value. </p>
                <p>
                    <code>AttributeValueList</code> must contain two <code>AttributeValue</code>
                    elements of the same type, either String, Number, or Binary (not a set type). A
                    target attribute matches if the target value is greater than, or equal to, the
                    first element and less than, or equal to, the second element. If an item
                    contains an <code>AttributeValue</code> element of a different type than the one
                    provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not compare to <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not compare to <code>{\"NS\":[\"6\", \"2\",
                        \"1\"]}</code>
                </p>
            </li>
         </ul>")
  @as("ComparisonOperator")
  comparisonOperator: option<comparisonOperator>,
  @ocaml.doc("<p>Causes DynamoDB to evaluate the value before attempting a conditional
            operation:</p>
        <ul>
            <li>
                <p>If <code>Exists</code> is <code>true</code>, DynamoDB will check to
                    see if that attribute value already exists in the table. If it is found, then
                    the operation succeeds. If it is not found, the operation fails with a
                        <code>ConditionCheckFailedException</code>.</p>
            </li>
            <li>
                <p>If <code>Exists</code> is <code>false</code>, DynamoDB assumes that
                    the attribute value does not exist in the table. If in fact the value does not
                    exist, then the assumption is valid and the operation succeeds. If the value is
                    found, despite the assumption that it does not exist, the operation fails with a
                        <code>ConditionCheckFailedException</code>.</p>
            </li>
         </ul>
        <p>The default setting for <code>Exists</code> is <code>true</code>. If you supply a
                <code>Value</code> all by itself, DynamoDB assumes the attribute exists:
            You don't have to set <code>Exists</code> to <code>true</code>, because it is
            implied.</p>
        <p>DynamoDB returns a <code>ValidationException</code> if:</p>
        <ul>
            <li>
                <p>
                    <code>Exists</code> is <code>true</code> but there is no <code>Value</code> to
                    check. (You expect a value to exist, but don't specify what that value
                    is.)</p>
            </li>
            <li>
                <p>
                    <code>Exists</code> is <code>false</code> but you also provide a
                        <code>Value</code>. (You cannot expect an attribute to have a value, while
                    also expecting it not to exist.)</p>
            </li>
         </ul>")
  @as("Exists")
  exists: option<booleanObject>,
  @ocaml.doc("<p>Represents the data for the expected attribute.</p>
        <p>Each attribute value is described as a name-value pair. The name is the data type, and
            the value is the data itself.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes\">Data Types</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("Value")
  value: option<attributeValue>,
}
@ocaml.doc("<p>Represents a request to perform a <code>DeleteItem</code> operation on an item.</p>")
type deleteRequest = {
  @ocaml.doc("<p>A map of attribute name to attribute values, representing the primary key of the item
            to delete. All of the table's primary key attributes must be specified, and their data
            types must match those of the table's key schema.</p>")
  @as("Key")
  key: key,
}
@ocaml.doc("<p>Represents a request to perform a <code>DeleteItem</code> operation.</p>")
type delete = {
  @ocaml.doc("<p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
                <code>Delete</code> condition fails. For
                <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
            ALL_OLD.</p>")
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>")
  @as("ExpressionAttributeValues")
  expressionAttributeValues: option<expressionAttributeValueMap>,
  @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression.</p>")
  @as("ExpressionAttributeNames")
  expressionAttributeNames: option<expressionAttributeNameMap>,
  @ocaml.doc("<p>A condition that must be satisfied in order for a conditional delete to
            succeed.</p>")
  @as("ConditionExpression")
  conditionExpression: option<conditionExpression>,
  @ocaml.doc("<p>Name of the table in which the item to be deleted resides.</p>") @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>The primary key of the item to be deleted. Each element consists of an attribute name
            and a value for that attribute.</p>")
  @as("Key")
  key: key,
}
@ocaml.doc("<p>Represents a request to perform a check that an item exists or to check the condition
            of specific attributes of the item.</p>")
type conditionCheck = {
  @ocaml.doc("<p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
                <code>ConditionCheck</code> condition fails. For
                <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
            ALL_OLD.</p>")
  @as("ReturnValuesOnConditionCheckFailure")
  returnValuesOnConditionCheckFailure: option<returnValuesOnConditionCheckFailure>,
  @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>")
  @as("ExpressionAttributeValues")
  expressionAttributeValues: option<expressionAttributeValueMap>,
  @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression.</p>")
  @as("ExpressionAttributeNames")
  expressionAttributeNames: option<expressionAttributeNameMap>,
  @ocaml.doc("<p>A condition that must be satisfied in order for a conditional update to
            succeed.</p>")
  @as("ConditionExpression")
  conditionExpression: conditionExpression,
  @ocaml.doc("<p>Name of the table for the check item request.</p>") @as("TableName")
  tableName: tableName,
  @ocaml.doc("<p>The primary key of the item to be checked. Each element consists of an attribute name
            and a value for that attribute.</p>")
  @as("Key")
  key: key,
}
@ocaml.doc("<p>Represents the selection criteria for a <code>Query</code> or <code>Scan</code>
            operation:</p>
        <ul>
            <li>
                <p>For a <code>Query</code> operation, <code>Condition</code> is used for
                    specifying the <code>KeyConditions</code> to use when querying a table or an
                    index. For <code>KeyConditions</code>, only the following comparison operators
                    are supported:</p>
                <p>
                    <code>EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN</code>
                </p>
                <p>
                    <code>Condition</code> is also used in a <code>QueryFilter</code>, which
                    evaluates the query results and returns only the desired values.</p>
            </li>
            <li>
                <p>For a <code>Scan</code> operation, <code>Condition</code> is used in a
                        <code>ScanFilter</code>, which evaluates the scan results and returns only
                    the desired values.</p>
            </li>
         </ul>")
type condition = {
  @ocaml.doc("<p>A comparator for evaluating attributes. For example, equals, greater than, less than,
            etc.</p>
        <p>The following comparison operators are available:</p>
        <p>
            <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS |
                BEGINS_WITH | IN | BETWEEN</code>
        </p>
        <p>The following are descriptions of each comparison operator.</p>
        <ul>
            <li>
                <p>
                    <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types,
                    including lists and maps.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, Binary, String Set, Number Set, or Binary Set.
                    If an item contains an <code>AttributeValue</code> element of a different type
                    than the one provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not equal <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not equal <code>{\"NS\":[\"6\", \"2\",
                    \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>NE</code> : Not equal. <code>NE</code> is supported for all data types,
                    including lists and maps.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    of type String, Number, Binary, String Set, Number Set, or Binary Set. If an
                    item contains an <code>AttributeValue</code> of a different type than the one
                    provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not equal <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not equal <code>{\"NS\":[\"6\", \"2\",
                    \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>LE</code> : Less than or equal. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If an item contains
                    an <code>AttributeValue</code> element of a different type than the one provided
                    in the request, the value does not match. For example, <code>{\"S\":\"6\"}</code>
                    does not equal <code>{\"N\":\"6\"}</code>. Also, <code>{\"N\":\"6\"}</code> does not
                    compare to <code>{\"NS\":[\"6\", \"2\", \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>LT</code> : Less than. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    of type String, Number, or Binary (not a set type). If an item contains an
                        <code>AttributeValue</code> element of a different type than the one
                    provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not equal <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not compare to <code>{\"NS\":[\"6\", \"2\",
                        \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>GE</code> : Greater than or equal. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If an item contains
                    an <code>AttributeValue</code> element of a different type than the one provided
                    in the request, the value does not match. For example, <code>{\"S\":\"6\"}</code>
                    does not equal <code>{\"N\":\"6\"}</code>. Also, <code>{\"N\":\"6\"}</code> does not
                    compare to <code>{\"NS\":[\"6\", \"2\", \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>GT</code> : Greater than. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If an item contains
                    an <code>AttributeValue</code> element of a different type than the one provided
                    in the request, the value does not match. For example, <code>{\"S\":\"6\"}</code>
                    does not equal <code>{\"N\":\"6\"}</code>. Also, <code>{\"N\":\"6\"}</code> does not
                    compare to <code>{\"NS\":[\"6\", \"2\", \"1\"]}</code>.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported
                    for all data types, including lists and maps.</p>
                <note>
                    <p>This operator tests for the existence of an attribute, not its data type.
                        If the data type of attribute \"<code>a</code>\" is null, and you evaluate it
                        using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This
                        result is because the attribute \"<code>a</code>\" exists; its data type is
                        not relevant to the <code>NOT_NULL</code> comparison operator.</p>
                </note>
            </li>
            <li>
                <p>
                    <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported
                    for all data types, including lists and maps.</p>
                <note>
                    <p>This operator tests for the nonexistence of an attribute, not its data
                        type. If the data type of attribute \"<code>a</code>\" is null, and you
                        evaluate it using <code>NULL</code>, the result is a Boolean
                            <code>false</code>. This is because the attribute \"<code>a</code>\"
                        exists; its data type is not relevant to the <code>NULL</code> comparison
                        operator.</p>
                </note>
            </li>
            <li>
                <p>
                    <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If the target
                    attribute of the comparison is of type String, then the operator checks for a
                    substring match. If the target attribute of the comparison is of type Binary,
                    then the operator looks for a subsequence of the target that matches the input.
                    If the target attribute of the comparison is a set (\"<code>SS</code>\",
                        \"<code>NS</code>\", or \"<code>BS</code>\"), then the operator evaluates to
                    true if it finds an exact match with any member of the set.</p>
                <p>CONTAINS is supported for lists: When evaluating \"<code>a CONTAINS b</code>\",
                        \"<code>a</code>\" can be a list; however, \"<code>b</code>\" cannot be a set, a
                    map, or a list.</p>
            </li>
            <li>
                <p>
                    <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a
                    value in a set.</p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    element of type String, Number, or Binary (not a set type). If the target
                    attribute of the comparison is a String, then the operator checks for the
                    absence of a substring match. If the target attribute of the comparison is
                    Binary, then the operator checks for the absence of a subsequence of the target
                    that matches the input. If the target attribute of the comparison is a set
                        (\"<code>SS</code>\", \"<code>NS</code>\", or \"<code>BS</code>\"), then the
                    operator evaluates to true if it <i>does not</i> find an exact
                    match with any member of the set.</p>
                <p>NOT_CONTAINS is supported for lists: When evaluating \"<code>a NOT CONTAINS
                        b</code>\", \"<code>a</code>\" can be a list; however, \"<code>b</code>\" cannot
                    be a set, a map, or a list.</p>
            </li>
            <li>
                <p>
                    <code>BEGINS_WITH</code> : Checks for a prefix. </p>
                <p>
                    <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
                    of type String or Binary (not a Number or a set type). The target attribute of
                    the comparison must be of type String or Binary (not a Number or a set
                    type).</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>IN</code> : Checks for matching elements in a list.</p>
                <p>
                    <code>AttributeValueList</code> can contain one or more
                        <code>AttributeValue</code> elements of type String, Number, or Binary.
                    These attributes are compared against an existing attribute of an item. If any
                    elements of the input are equal to the item attribute, the expression evaluates
                    to true.</p>
            </li>
            <li>
                <p>
                    <code>BETWEEN</code> : Greater than or equal to the first value, and less than
                    or equal to the second value. </p>
                <p>
                    <code>AttributeValueList</code> must contain two <code>AttributeValue</code>
                    elements of the same type, either String, Number, or Binary (not a set type). A
                    target attribute matches if the target value is greater than, or equal to, the
                    first element and less than, or equal to, the second element. If an item
                    contains an <code>AttributeValue</code> element of a different type than the one
                    provided in the request, the value does not match. For example,
                        <code>{\"S\":\"6\"}</code> does not compare to <code>{\"N\":\"6\"}</code>. Also,
                        <code>{\"N\":\"6\"}</code> does not compare to <code>{\"NS\":[\"6\", \"2\",
                        \"1\"]}</code>
                </p>
            </li>
         </ul>
        <p>For usage examples of <code>AttributeValueList</code> and
                <code>ComparisonOperator</code>, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html\">Legacy
                Conditional Parameters</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("ComparisonOperator")
  comparisonOperator: comparisonOperator,
  @ocaml.doc("<p>One or more values to evaluate against the supplied attribute. The number of values in
            the list depends on the <code>ComparisonOperator</code> being used.</p>
        <p>For type Number, value comparisons are numeric.</p>
        <p>String value comparisons for greater than, equals, or less than are based on ASCII
            character code values. For example, <code>a</code> is greater than <code>A</code>, and
                <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href=\"http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters\">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
        <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it
            compares binary values.</p>")
  @as("AttributeValueList")
  attributeValueList: option<attributeValueList>,
}
@ocaml.doc("<p>An ordered list of errors for each item in the request which caused the transaction to
            get cancelled. The values of the list are ordered according to the ordering of the
                <code>TransactWriteItems</code> request parameter. If no error occurred for the
            associated item an error with a Null code and Null message will be present. </p>")
type cancellationReason = {
  @ocaml.doc("<p>Cancellation reason message description.</p>") @as("Message")
  message: option<errorMessage>,
  @ocaml.doc("<p>Status code for the result of the cancelled transaction.</p>") @as("Code")
  code: option<code>,
  @ocaml.doc("<p>Item in the request which caused the transaction to get cancelled.</p>")
  @as("Item")
  item: option<attributeMap>,
}
@ocaml.doc("<p> A PartiQL batch statement response.. </p>")
type batchStatementResponse = {
  @ocaml.doc("<p> A DynamoDB item associated with a BatchStatementResponse </p>") @as("Item")
  item: option<attributeMap>,
  @ocaml.doc("<p> The table name associated with a failed PartiQL batch statement. </p>")
  @as("TableName")
  tableName: option<tableName>,
  @ocaml.doc("<p> The error associated with a failed PartiQL batch statement. </p>") @as("Error")
  error: option<batchStatementError>,
}
@ocaml.doc("<p> A PartiQL batch statement request. </p>")
type batchStatementRequest = {
  @ocaml.doc("<p> The read consistency of the PartiQL batch request. </p>") @as("ConsistentRead")
  consistentRead: option<consistentRead>,
  @ocaml.doc("<p> The parameters associated with a PartiQL statement in the batch request. </p>")
  @as("Parameters")
  parameters: option<preparedStatementParameters>,
  @ocaml.doc("<p> A valid PartiQL statement. </p>") @as("Statement") statement: partiQLStatement,
}
type attributeUpdates = Js.Dict.t<attributeValueUpdate>
@ocaml.doc("<p>Represents an operation to perform - either <code>DeleteItem</code> or
                <code>PutItem</code>. You can only request one of these operations, not both, in a
            single <code>WriteRequest</code>. If you do need to perform both of these operations,
            you need to provide two separate <code>WriteRequest</code> objects.</p>")
type writeRequest = {
  @ocaml.doc("<p>A request to perform a <code>DeleteItem</code> operation.</p>")
  @as("DeleteRequest")
  deleteRequest: option<deleteRequest>,
  @ocaml.doc("<p>A request to perform a <code>PutItem</code> operation.</p>") @as("PutRequest")
  putRequest: option<putRequest>,
}
@ocaml.doc("<p>A list of requests that can perform update, put, delete, or check operations on
            multiple items in one or more tables atomically.</p>")
type transactWriteItem = {
  @ocaml.doc("<p>A request to perform an <code>UpdateItem</code> operation.</p>") @as("Update")
  update: option<update>,
  @ocaml.doc("<p>A request to perform a <code>DeleteItem</code> operation.</p>") @as("Delete")
  delete: option<delete>,
  @ocaml.doc("<p>A request to perform a <code>PutItem</code> operation.</p>") @as("Put")
  put: option<put>,
  @ocaml.doc("<p>A request to perform a check item operation.</p>") @as("ConditionCheck")
  conditionCheck: option<conditionCheck>,
}
@ocaml.doc("<p>Specifies an item to be retrieved as part of the transaction.</p>")
type transactGetItem = {
  @ocaml.doc("<p>Contains the primary key that identifies the item to get, together with the name of
            the table that contains the item, and optionally the specific attributes of the item to
            retrieve.</p>")
  @as("Get")
  get: get,
}
type partiQLBatchResponse = array<batchStatementResponse>
type partiQLBatchRequest = array<batchStatementRequest>
type parameterizedStatements = array<parameterizedStatement>
@ocaml.doc("<p>Represents a set of primary keys and, for each key, the attributes to retrieve from
            the table.</p>
        <p>For each primary key, you must provide <i>all</i> of the key attributes.
            For example, with a simple primary key, you only need to provide the partition key. For
            a composite primary key, you must provide <i>both</i> the partition key
            and the sort key.</p>")
type keysAndAttributes = {
  @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression. The following
            are some use cases for using <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>To access an attribute whose name conflicts with a DynamoDB reserved
                    word.</p>
            </li>
            <li>
                <p>To create a placeholder for repeating occurrences of an attribute name in an
                    expression.</p>
            </li>
            <li>
                <p>To prevent special characters in an attribute name from being misinterpreted
                    in an expression.</p>
            </li>
         </ul>
        <p>Use the <b>#</b> character in an expression to dereference
            an attribute name. For example, consider the following attribute name:</p>
        <ul>
            <li>
                <p>
                    <code>Percentile</code>
                </p>
            </li>
         </ul>
        <p>The name of this attribute conflicts with a reserved word, so it cannot be used
            directly in an expression. (For the complete list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a> in the <i>Amazon DynamoDB Developer
                Guide</i>). To work around this, you could specify the following for
                <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>
                    <code>{\"#P\":\"Percentile\"}</code>
                </p>
            </li>
         </ul>
        <p>You could then use this substitution in an expression, as in this example:</p>
        <ul>
            <li>
                <p>
                    <code>#P = :val</code>
                </p>
            </li>
         </ul>
        <note>
            <p>Tokens that begin with the <b>:</b> character are
                    <i>expression attribute values</i>, which are placeholders for the
                actual value at runtime.</p>
        </note>
        <p>For more information on expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("ExpressionAttributeNames")
  expressionAttributeNames: option<expressionAttributeNameMap>,
  @ocaml.doc("<p>A string that identifies one or more attributes to retrieve from the table. These
            attributes can include scalars, sets, or elements of a JSON document. The attributes in
            the <code>ProjectionExpression</code> must be separated by commas.</p>
        <p>If no attribute names are specified, then all attributes will be returned. If any of
            the requested attributes are not found, they will not appear in the result.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("ProjectionExpression")
  projectionExpression: option<projectionExpression>,
  @ocaml.doc("<p>The consistency of a read operation. If set to <code>true</code>, then a strongly
            consistent read is used; otherwise, an eventually consistent read is used.</p>")
  @as("ConsistentRead")
  consistentRead: option<consistentRead>,
  @ocaml.doc("<p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html\">Legacy
                Conditional Parameters</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
  @as("AttributesToGet")
  attributesToGet: option<attributeNameList>,
  @ocaml.doc("<p>The primary key attribute values that define the items and the attributes associated
            with the items.</p>")
  @as("Keys")
  keys: keyList,
}
type keyConditions = Js.Dict.t<condition>
type itemResponseList = array<itemResponse>
type itemCollectionMetricsMultiple = array<itemCollectionMetrics>
type filterConditionMap = Js.Dict.t<condition>
type expectedAttributeMap = Js.Dict.t<expectedAttributeValue>
type cancellationReasonList = array<cancellationReason>
type batchGetResponseMap = Js.Dict.t<itemList>
type writeRequests = array<writeRequest>
type transactWriteItemList = array<transactWriteItem>
type transactGetItemList = array<transactGetItem>
type itemCollectionMetricsPerTable = Js.Dict.t<itemCollectionMetricsMultiple>
type batchGetRequestMap = Js.Dict.t<keysAndAttributes>
type batchWriteItemRequestMap = Js.Dict.t<writeRequests>
@ocaml.doc("<fullname>Amazon DynamoDB</fullname>

        <p>Amazon DynamoDB is a fully managed NoSQL database service that provides fast
            and predictable performance with seamless scalability. DynamoDB lets you
            offload the administrative burdens of operating and scaling a distributed database, so
            that you don't have to worry about hardware provisioning, setup and configuration,
            replication, software patching, or cluster scaling.</p>

        <p>With DynamoDB, you can create database tables that can store and retrieve
            any amount of data, and serve any level of request traffic. You can scale up or scale
            down your tables' throughput capacity without downtime or performance degradation, and
            use the Amazon Web Services Management Console to monitor resource utilization and performance
            metrics.</p>

        <p>DynamoDB automatically spreads the data and traffic for your tables over
            a sufficient number of servers to handle your throughput and storage requirements, while
            maintaining consistent and fast performance. All of your data is stored on solid state
            disks (SSDs) and automatically replicated across multiple Availability Zones in an
                Amazon Web Services Region, providing built-in high availability and data
            durability.</p>")
module UpdateContributorInsights = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the contributor insights action.</p>")
    @as("ContributorInsightsAction")
    contributorInsightsAction: contributorInsightsAction,
    @ocaml.doc("<p>The global secondary index name, if applicable.</p>") @as("IndexName")
    indexName: option<indexName>,
    @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>The status of contributor insights</p>") @as("ContributorInsightsStatus")
    contributorInsightsStatus: option<contributorInsightsStatus>,
    @ocaml.doc("<p>The name of the global secondary index, if applicable.</p>") @as("IndexName")
    indexName: option<indexName>,
    @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateContributorInsightsCommand"
  let make = (~contributorInsightsAction, ~tableName, ~indexName=?, ()) =>
    new({
      contributorInsightsAction: contributorInsightsAction,
      indexName: indexName,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableKinesisStreamingDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN for a Kinesis data stream.</p>") @as("StreamArn") streamArn: streamArn,
    @ocaml.doc("<p>The name of the DynamoDB table.</p>") @as("TableName") tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>The current status of the replication.</p>") @as("DestinationStatus")
    destinationStatus: option<destinationStatus>,
    @ocaml.doc("<p>The ARN for the specific Kinesis data stream.</p>") @as("StreamArn")
    streamArn: option<streamArn>,
    @ocaml.doc("<p>The name of the table being modified.</p>") @as("TableName")
    tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "EnableKinesisStreamingDestinationCommand"
  let make = (~streamArn, ~tableName, ()) => new({streamArn: streamArn, tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableKinesisStreamingDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN for a Kinesis data stream.</p>") @as("StreamArn") streamArn: streamArn,
    @ocaml.doc("<p>The name of the DynamoDB table.</p>") @as("TableName") tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>The current status of the replication.</p>") @as("DestinationStatus")
    destinationStatus: option<destinationStatus>,
    @ocaml.doc("<p>The ARN for the specific Kinesis data stream.</p>") @as("StreamArn")
    streamArn: option<streamArn>,
    @ocaml.doc("<p>The name of the table being modified.</p>") @as("TableName")
    tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DisableKinesisStreamingDestinationCommand"
  let make = (~streamArn, ~tableName, ()) => new({streamArn: streamArn, tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeLimits = {
  type t
  type request = {.}
  @ocaml.doc("<p>Represents the output of a <code>DescribeLimits</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The maximum write capacity units that your account allows you to provision for a new
            table that you are creating in this Region, including the write capacity units
            provisioned for its global secondary indexes (GSIs).</p>")
    @as("TableMaxWriteCapacityUnits")
    tableMaxWriteCapacityUnits: option<positiveLongObject>,
    @ocaml.doc("<p>The maximum read capacity units that your account allows you to provision for a new
            table that you are creating in this Region, including the read capacity units
            provisioned for its global secondary indexes (GSIs).</p>")
    @as("TableMaxReadCapacityUnits")
    tableMaxReadCapacityUnits: option<positiveLongObject>,
    @ocaml.doc("<p>The maximum total write capacity units that your account allows you to provision
            across all of your tables in this Region.</p>")
    @as("AccountMaxWriteCapacityUnits")
    accountMaxWriteCapacityUnits: option<positiveLongObject>,
    @ocaml.doc("<p>The maximum total read capacity units that your account allows you to provision across
            all of your tables in this Region.</p>")
    @as("AccountMaxReadCapacityUnits")
    accountMaxReadCapacityUnits: option<positiveLongObject>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeLimitsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTimeToLive = {
  type t
  @ocaml.doc("<p>Represents the input of an <code>UpdateTimeToLive</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Represents the settings used to enable or disable Time to Live for the specified
            table.</p>")
    @as("TimeToLiveSpecification")
    timeToLiveSpecification: timeToLiveSpecification,
    @ocaml.doc("<p>The name of the table to be configured.</p>") @as("TableName")
    tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Represents the output of an <code>UpdateTimeToLive</code> operation.</p>")
    @as("TimeToLiveSpecification")
    timeToLiveSpecification: option<timeToLiveSpecification>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateTimeToLiveCommand"
  let make = (~timeToLiveSpecification, ~tableName, ()) =>
    new({timeToLiveSpecification: timeToLiveSpecification, tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys. Existing tags of the resource whose keys are members of this list
            will be removed from the DynamoDB resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The DynamoDB resource that the tags will be removed from. This value is an Amazon
            Resource Name (ARN).</p>")
    @as("ResourceArn")
    resourceArn: resourceArnString,
  }
  type response = {.}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTables = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>ListTables</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>A maximum number of table names to return. If this parameter is not specified, the
            limit is 100.</p>")
    @as("Limit")
    limit: option<listTablesInputLimit>,
    @ocaml.doc("<p>The first table name that this operation will evaluate. Use the value that was
            returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you
            can obtain the next page of results.</p>")
    @as("ExclusiveStartTableName")
    exclusiveStartTableName: option<tableName>,
  }
  @ocaml.doc("<p>Represents the output of a <code>ListTables</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The name of the last table in the current page of results. Use this value as the
                <code>ExclusiveStartTableName</code> in a new request to obtain the next page of
            results, until all the table names are returned.</p>
        <p>If you do not receive a <code>LastEvaluatedTableName</code> value in the response,
            this means that there are no more table names to be retrieved.</p>")
    @as("LastEvaluatedTableName")
    lastEvaluatedTableName: option<tableName>,
    @ocaml.doc("<p>The names of the tables associated with the current account at the current endpoint.
            The maximum size of this array is 100.</p>
        <p>If <code>LastEvaluatedTableName</code> also appears in the output, you can use this
            value as the <code>ExclusiveStartTableName</code> parameter in a subsequent
                <code>ListTables</code> request and obtain the next page of results.</p>")
    @as("TableNames")
    tableNames: option<tableNameList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListTablesCommand"
  let make = (~limit=?, ~exclusiveStartTableName=?, ()) =>
    new({limit: limit, exclusiveStartTableName: exclusiveStartTableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportTableToPointInTime = {
  type t
  type request = {
    @ocaml.doc("<p>The format for the exported data. Valid values for <code>ExportFormat</code> are
                <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>")
    @as("ExportFormat")
    exportFormat: option<exportFormat>,
    @ocaml.doc("<p>The ID of the KMS managed key used to encrypt the S3 bucket where
            export data will be stored (if applicable).</p>")
    @as("S3SseKmsKeyId")
    s3SseKmsKeyId: option<s3SseKmsKeyId>,
    @ocaml.doc("<p>Type of encryption used on the bucket where export data will be stored. Valid values
            for <code>S3SseAlgorithm</code> are:</p>
        <ul>
            <li>
                <p>
                  <code>AES256</code> - server-side encryption with Amazon S3 managed
                    keys</p>
            </li>
            <li>
                <p>
                  <code>KMS</code> - server-side encryption with KMS managed
                    keys</p>
            </li>
         </ul>")
    @as("S3SseAlgorithm")
    s3SseAlgorithm: option<s3SseAlgorithm>,
    @ocaml.doc("<p>The Amazon S3 bucket prefix to use as the file name and path of the exported
            snapshot.</p>")
    @as("S3Prefix")
    s3Prefix: option<s3Prefix>,
    @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the bucket the export will be
            stored in.</p>")
    @as("S3BucketOwner")
    s3BucketOwner: option<s3BucketOwner>,
    @ocaml.doc("<p>The name of the Amazon S3 bucket to export the snapshot to.</p>") @as("S3Bucket")
    s3Bucket: s3Bucket,
    @ocaml.doc("<p>Providing a <code>ClientToken</code> makes the call to
                <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
            identical calls have the same effect as one single call.</p>
        <p>A client token is valid for 8 hours after the first request that uses it is completed.
            After 8 hours, any request with the same client token is treated as a new request. Do
            not resubmit the same request with the same client token for more than 8 hours, or the
            result might not be idempotent.</p>
        <p>If you submit a request with the same client token but a change in other parameters
            within the 8-hour idempotency window, DynamoDB returns an
                <code>IdempotentParameterMismatch</code> exception.</p>")
    @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>Time in the past from which to export table data. The table export will be a snapshot
            of the table's state at this point in time.</p>")
    @as("ExportTime")
    exportTime: option<exportTime>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with the table to export.</p>")
    @as("TableArn")
    tableArn: tableArn,
  }
  type response = {
    @ocaml.doc("<p>Contains a description of the table export.</p>") @as("ExportDescription")
    exportDescription: option<exportDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "ExportTableToPointInTimeCommand"
  let make = (
    ~s3Bucket,
    ~tableArn,
    ~exportFormat=?,
    ~s3SseKmsKeyId=?,
    ~s3SseAlgorithm=?,
    ~s3Prefix=?,
    ~s3BucketOwner=?,
    ~clientToken=?,
    ~exportTime=?,
    (),
  ) =>
    new({
      exportFormat: exportFormat,
      s3SseKmsKeyId: s3SseKmsKeyId,
      s3SseAlgorithm: s3SseAlgorithm,
      s3Prefix: s3Prefix,
      s3BucketOwner: s3BucketOwner,
      s3Bucket: s3Bucket,
      clientToken: clientToken,
      exportTime: exportTime,
      tableArn: tableArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTimeToLive = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the table to be described.</p>") @as("TableName")
    tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p></p>") @as("TimeToLiveDescription")
    timeToLiveDescription: option<timeToLiveDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeTimeToLiveCommand"
  let make = (~tableName, ()) => new({tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeExport = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with the export.</p>") @as("ExportArn")
    exportArn: exportArn,
  }
  type response = {
    @ocaml.doc("<p>Represents the properties of the export.</p>") @as("ExportDescription")
    exportDescription: option<exportDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeExportCommand"
  let make = (~exportArn, ()) => new({exportArn: exportArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeContributorInsights = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the global secondary index to describe, if applicable.</p>")
    @as("IndexName")
    indexName: option<indexName>,
    @ocaml.doc("<p>The name of the table to describe.</p>") @as("TableName") tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Returns information about the last failure that was encountered.</p>
        <p>The most common exceptions for a FAILED status are:</p>
        <ul>
            <li>
                <p>LimitExceededException - Per-account Amazon CloudWatch Contributor Insights
                    rule limit reached. Please disable Contributor Insights for other tables/indexes
                    OR disable Contributor Insights rules before retrying.</p>
            </li>
            <li>
                <p>AccessDeniedException - Amazon CloudWatch Contributor Insights rules cannot be
                    modified due to insufficient permissions.</p>
            </li>
            <li>
                <p>AccessDeniedException - Failed to create service-linked role for Contributor
                    Insights due to insufficient permissions.</p>
            </li>
            <li>
                <p>InternalServerError - Failed to create Amazon CloudWatch Contributor Insights
                    rules. Please retry request.</p>
            </li>
         </ul>")
    @as("FailureException")
    failureException: option<failureException>,
    @ocaml.doc("<p>Timestamp of the last time the status was changed.</p>")
    @as("LastUpdateDateTime")
    lastUpdateDateTime: option<lastUpdateDateTime>,
    @ocaml.doc("<p>Current status of contributor insights.</p>") @as("ContributorInsightsStatus")
    contributorInsightsStatus: option<contributorInsightsStatus>,
    @ocaml.doc("<p>List of names of the associated contributor insights rules.</p>")
    @as("ContributorInsightsRuleList")
    contributorInsightsRuleList: option<contributorInsightsRuleList>,
    @ocaml.doc("<p>The name of the global secondary index being described.</p>") @as("IndexName")
    indexName: option<indexName>,
    @ocaml.doc("<p>The name of the table being described.</p>") @as("TableName")
    tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeContributorInsightsCommand"
  let make = (~tableName, ~indexName=?, ()) => new({indexName: indexName, tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBackup = {
  type t
  type request = {
    @ocaml.doc("<p>Specified name for the backup.</p>") @as("BackupName") backupName: backupName,
    @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Contains the details of the backup created for the table.</p>")
    @as("BackupDetails")
    backupDetails: option<backupDetails>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "CreateBackupCommand"
  let make = (~backupName, ~tableName, ()) => new({backupName: backupName, tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateContinuousBackups = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the settings used to enable point in time recovery.</p>")
    @as("PointInTimeRecoverySpecification")
    pointInTimeRecoverySpecification: pointInTimeRecoverySpecification,
    @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Represents the continuous backups and point in time recovery settings on the
            table.</p>")
    @as("ContinuousBackupsDescription")
    continuousBackupsDescription: option<continuousBackupsDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateContinuousBackupsCommand"
  let make = (~pointInTimeRecoverySpecification, ~tableName, ()) =>
    new({pointInTimeRecoverySpecification: pointInTimeRecoverySpecification, tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Amazon DynamoDB resource.</p>") @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is
            an Amazon Resource Name (ARN).</p>")
    @as("ResourceArn")
    resourceArn: resourceArnString,
  }
  type response = {.}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsOfResource = {
  type t
  type request = {
    @ocaml.doc("<p>An optional string that, if supplied, must be copied from the output of a previous
            call to ListTagOfResource. When provided in this manner, this API fetches the next page
            of results.</p>")
    @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource
            Name (ARN).</p>")
    @as("ResourceArn")
    resourceArn: resourceArnString,
  }
  type response = {
    @ocaml.doc("<p>If this value is returned, there are additional results to be displayed. To retrieve
            them, call ListTagsOfResource again, with NextToken set to this value.</p>")
    @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The tags currently associated with the Amazon DynamoDB resource.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListTagsOfResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListExports = {
  type t
  type request = {
    @ocaml.doc("<p>An optional string that, if supplied, must be copied from the output of a previous
            call to <code>ListExports</code>. When provided in this manner, the API fetches the next
            page of results.</p>")
    @as("NextToken")
    nextToken: option<exportNextToken>,
    @ocaml.doc("<p>Maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<listExportsMaxLimit>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with the exported table.</p>")
    @as("TableArn")
    tableArn: option<tableArn>,
  }
  type response = {
    @ocaml.doc("<p>If this value is returned, there are additional results to be displayed. To retrieve
            them, call <code>ListExports</code> again, with <code>NextToken</code> set to this
            value.</p>")
    @as("NextToken")
    nextToken: option<exportNextToken>,
    @ocaml.doc("<p>A list of <code>ExportSummary</code> objects.</p>") @as("ExportSummaries")
    exportSummaries: option<exportSummaries>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListExportsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~tableArn=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, tableArn: tableArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContributorInsights = {
  type t
  type request = {
    @ocaml.doc("<p>Maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<listContributorInsightsLimit>,
    @ocaml.doc("<p>A token to for the desired page, if there is one.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: option<tableName>,
  }
  type response = {
    @ocaml.doc("<p>A token to go to the next page if there is one.</p>") @as("NextToken")
    nextToken: option<nextTokenString>,
    @ocaml.doc("<p>A list of ContributorInsightsSummary.</p>") @as("ContributorInsightsSummaries")
    contributorInsightsSummaries: option<contributorInsightsSummaries>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "ListContributorInsightsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~tableName=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBackups = {
  type t
  type request = {
    @ocaml.doc("<p>The backups from the table specified by <code>BackupType</code> are listed.</p>
        <p>Where <code>BackupType</code> can be:</p>
        <ul>
            <li>
                <p>
                    <code>USER</code> - On-demand backup created by you.</p>
            </li>
            <li>
                <p>
                    <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p>
            </li>
            <li>
                <p>
                    <code>ALL</code> - All types of on-demand backups (USER and SYSTEM).</p>
            </li>
         </ul>")
    @as("BackupType")
    backupType: option<backupTypeFilter>,
    @ocaml.doc("<p>
            <code>LastEvaluatedBackupArn</code> is the Amazon Resource Name (ARN) of the backup last
            evaluated when the current page of results was returned, inclusive of the current page
            of results. This value may be specified as the <code>ExclusiveStartBackupArn</code> of a
            new <code>ListBackups</code> operation in order to fetch the next page of results.
        </p>")
    @as("ExclusiveStartBackupArn")
    exclusiveStartBackupArn: option<backupArn>,
    @ocaml.doc("<p>Only backups created before this time are listed. <code>TimeRangeUpperBound</code> is
            exclusive. </p>")
    @as("TimeRangeUpperBound")
    timeRangeUpperBound: option<timeRangeUpperBound>,
    @ocaml.doc("<p>Only backups created after this time are listed. <code>TimeRangeLowerBound</code> is
            inclusive.</p>")
    @as("TimeRangeLowerBound")
    timeRangeLowerBound: option<timeRangeLowerBound>,
    @ocaml.doc("<p>Maximum number of backups to return at once.</p>") @as("Limit")
    limit: option<backupsInputLimit>,
    @ocaml.doc("<p>The backups from the table specified by <code>TableName</code> are listed. </p>")
    @as("TableName")
    tableName: option<tableName>,
  }
  type response = {
    @ocaml.doc("<p> The ARN of the backup last evaluated when the current page of results was returned,
            inclusive of the current page of results. This value may be specified as the
                <code>ExclusiveStartBackupArn</code> of a new <code>ListBackups</code> operation in
            order to fetch the next page of results. </p>
        <p> If <code>LastEvaluatedBackupArn</code> is empty, then the last page of results has
            been processed and there are no more results to be retrieved. </p>
        <p> If <code>LastEvaluatedBackupArn</code> is not empty, this may or may not indicate
            that there is more data to be returned. All results are guaranteed to have been returned
            if and only if no value for <code>LastEvaluatedBackupArn</code> is returned. </p>")
    @as("LastEvaluatedBackupArn")
    lastEvaluatedBackupArn: option<backupArn>,
    @ocaml.doc("<p>List of <code>BackupSummary</code> objects.</p>") @as("BackupSummaries")
    backupSummaries: option<backupSummaries>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListBackupsCommand"
  let make = (
    ~backupType=?,
    ~exclusiveStartBackupArn=?,
    ~timeRangeUpperBound=?,
    ~timeRangeLowerBound=?,
    ~limit=?,
    ~tableName=?,
    (),
  ) =>
    new({
      backupType: backupType,
      exclusiveStartBackupArn: exclusiveStartBackupArn,
      timeRangeUpperBound: timeRangeUpperBound,
      timeRangeLowerBound: timeRangeLowerBound,
      limit: limit,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeKinesisStreamingDestination = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the table being described.</p>") @as("TableName")
    tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>The list of replica structures for the table being described.</p>")
    @as("KinesisDataStreamDestinations")
    kinesisDataStreamDestinations: option<kinesisDataStreamDestinations>,
    @ocaml.doc("<p>The name of the table being described.</p>") @as("TableName")
    tableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeKinesisStreamingDestinationCommand"
  let make = (~tableName, ()) => new({tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t
  type request = {.}
  type response = {@ocaml.doc("<p>List of endpoints.</p>") @as("Endpoints") endpoints: endpoints}
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeEndpointsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeContinuousBackups = {
  type t
  type request = {
    @ocaml.doc("<p>Name of the table for which the customer wants to check the continuous backups and
            point in time recovery settings.</p>")
    @as("TableName")
    tableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Represents the continuous backups and point in time recovery settings on the
            table.</p>")
    @as("ContinuousBackupsDescription")
    continuousBackupsDescription: option<continuousBackupsDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeContinuousBackupsCommand"
  let make = (~tableName, ()) => new({tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListGlobalTables = {
  type t
  type request = {
    @ocaml.doc("<p>Lists the global tables in a specific Region.</p>") @as("RegionName")
    regionName: option<regionName>,
    @ocaml.doc("<p>The maximum number of table names to return, if the parameter is not specified
            DynamoDB defaults to 100.</p>
        <p>If the number of global tables DynamoDB finds reaches this limit, it stops the
            operation and returns the table names collected up to that point, with a table name in
            the <code>LastEvaluatedGlobalTableName</code> to apply in a subsequent operation to the
                <code>ExclusiveStartGlobalTableName</code> parameter.</p>")
    @as("Limit")
    limit: option<positiveIntegerObject>,
    @ocaml.doc("<p>The first global table name that this operation will evaluate.</p>")
    @as("ExclusiveStartGlobalTableName")
    exclusiveStartGlobalTableName: option<tableName>,
  }
  type response = {
    @ocaml.doc("<p>Last evaluated global table name.</p>") @as("LastEvaluatedGlobalTableName")
    lastEvaluatedGlobalTableName: option<tableName>,
    @ocaml.doc("<p>List of global table names.</p>") @as("GlobalTables")
    globalTables: option<globalTableList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ListGlobalTablesCommand"
  let make = (~regionName=?, ~limit=?, ~exclusiveStartGlobalTableName=?, ()) =>
    new({
      regionName: regionName,
      limit: limit,
      exclusiveStartGlobalTableName: exclusiveStartGlobalTableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTable = {
  type t
  @ocaml.doc("<p>Represents the input of an <code>UpdateTable</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The table class of the table to be updated. Valid values are <code>STANDARD</code> and
                <code>STANDARD_INFREQUENT_ACCESS</code>.</p>")
    @as("TableClass")
    tableClass: option<tableClass>,
    @ocaml.doc("<p>A list of replica update actions (create, delete, or update) for the table.</p>
        <note>
            <p>This property only applies to <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html\">Version
                    2019.11.21</a> of global tables.</p>
        </note>")
    @as("ReplicaUpdates")
    replicaUpdates: option<replicationGroupUpdateList>,
    @ocaml.doc("<p>The new server-side encryption settings for the specified table.</p>")
    @as("SSESpecification")
    ssespecification: option<ssespecification>,
    @ocaml.doc("<p>Represents the DynamoDB Streams configuration for the table.</p>
        <note>
            <p>You receive a <code>ResourceInUseException</code> if you try to enable a stream on
                a table that already has a stream, or if you try to disable a stream on a table that
                doesn't have a stream.</p>
        </note>")
    @as("StreamSpecification")
    streamSpecification: option<streamSpecification>,
    @ocaml.doc("<p>An array of one or more global secondary indexes for the table. For each index in the
            array, you can request one action:</p>
        <ul>
            <li>
                <p>
                    <code>Create</code> - add a new global secondary index to the table.</p>
            </li>
            <li>
                <p>
                    <code>Update</code> - modify the provisioned throughput settings of an existing
                    global secondary index.</p>
            </li>
            <li>
                <p>
                    <code>Delete</code> - remove a global secondary index from the table.</p>
            </li>
         </ul>
        <p>You can create or delete only one global secondary index per <code>UpdateTable</code>
            operation.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html\">Managing Global
                Secondary Indexes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>. </p>")
    @as("GlobalSecondaryIndexUpdates")
    globalSecondaryIndexUpdates: option<globalSecondaryIndexUpdateList>,
    @ocaml.doc("<p>The new provisioned throughput settings for the specified table or index.</p>")
    @as("ProvisionedThroughput")
    provisionedThroughput: option<provisionedThroughput>,
    @ocaml.doc("<p>Controls how you are charged for read and write throughput and how you manage
            capacity. When switching from pay-per-request to provisioned capacity, initial
            provisioned capacity values must be set. The initial provisioned capacity values are
            estimated based on the consumed read and write capacity of your table and global
            secondary indexes over the past 30 minutes.</p>
        <ul>
            <li>
                <p>
                    <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
                    predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual\">Provisioned Mode</a>.</p>
            </li>
            <li>
                <p>
                    <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
                    for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
                    to <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand\">On-Demand Mode</a>. </p>
            </li>
         </ul>")
    @as("BillingMode")
    billingMode: option<billingMode>,
    @ocaml.doc("<p>The name of the table to be updated.</p>") @as("TableName") tableName: tableName,
    @ocaml.doc("<p>An array of attributes that describe the key schema for the table and indexes. If you
            are adding a new global secondary index to the table, <code>AttributeDefinitions</code>
            must include the key element(s) of the new index.</p>")
    @as("AttributeDefinitions")
    attributeDefinitions: option<attributeDefinitions>,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdateTable</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Represents the properties of the table.</p>") @as("TableDescription")
    tableDescription: option<tableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateTableCommand"
  let make = (
    ~tableName,
    ~tableClass=?,
    ~replicaUpdates=?,
    ~ssespecification=?,
    ~streamSpecification=?,
    ~globalSecondaryIndexUpdates=?,
    ~provisionedThroughput=?,
    ~billingMode=?,
    ~attributeDefinitions=?,
    (),
  ) =>
    new({
      tableClass: tableClass,
      replicaUpdates: replicaUpdates,
      ssespecification: ssespecification,
      streamSpecification: streamSpecification,
      globalSecondaryIndexUpdates: globalSecondaryIndexUpdates,
      provisionedThroughput: provisionedThroughput,
      billingMode: billingMode,
      tableName: tableName,
      attributeDefinitions: attributeDefinitions,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalTable = {
  type t
  type request = {
    @ocaml.doc("<p>A list of Regions that should be added or removed from the global table.</p>")
    @as("ReplicaUpdates")
    replicaUpdates: replicaUpdateList,
    @ocaml.doc("<p>The global table name.</p>") @as("GlobalTableName") globalTableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Contains the details of the global table.</p>") @as("GlobalTableDescription")
    globalTableDescription: option<globalTableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateGlobalTableCommand"
  let make = (~replicaUpdates, ~globalTableName, ()) =>
    new({replicaUpdates: replicaUpdates, globalTableName: globalTableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreTableToPointInTime = {
  type t
  type request = {
    @ocaml.doc("<p>The new server-side encryption settings for the restored table.</p>")
    @as("SSESpecificationOverride")
    ssespecificationOverride: option<ssespecification>,
    @ocaml.doc("<p>Provisioned throughput settings for the restored table.</p>")
    @as("ProvisionedThroughputOverride")
    provisionedThroughputOverride: option<provisionedThroughput>,
    @ocaml.doc("<p>List of local secondary indexes for the restored table. The indexes provided should
            match existing secondary indexes. You can choose to exclude some or all of the indexes
            at the time of restore.</p>")
    @as("LocalSecondaryIndexOverride")
    localSecondaryIndexOverride: option<localSecondaryIndexList>,
    @ocaml.doc("<p>List of global secondary indexes for the restored table. The indexes provided should
            match existing secondary indexes. You can choose to exclude some or all of the indexes
            at the time of restore.</p>")
    @as("GlobalSecondaryIndexOverride")
    globalSecondaryIndexOverride: option<globalSecondaryIndexList>,
    @ocaml.doc("<p>The billing mode of the restored table.</p>") @as("BillingModeOverride")
    billingModeOverride: option<billingMode>,
    @ocaml.doc("<p>Time in the past to restore the table to.</p>") @as("RestoreDateTime")
    restoreDateTime: option<date>,
    @ocaml.doc("<p>Restore the table to the latest possible time. <code>LatestRestorableDateTime</code>
            is typically 5 minutes before the current time. </p>")
    @as("UseLatestRestorableTime")
    useLatestRestorableTime: option<booleanObject>,
    @ocaml.doc("<p>The name of the new table to which it must be restored to.</p>")
    @as("TargetTableName")
    targetTableName: tableName,
    @ocaml.doc("<p>Name of the source table that is being restored.</p>") @as("SourceTableName")
    sourceTableName: option<tableName>,
    @ocaml.doc("<p>The DynamoDB table that will be restored. This value is an Amazon Resource Name
            (ARN).</p>")
    @as("SourceTableArn")
    sourceTableArn: option<tableArn>,
  }
  type response = {
    @ocaml.doc("<p>Represents the properties of a table.</p>") @as("TableDescription")
    tableDescription: option<tableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "RestoreTableToPointInTimeCommand"
  let make = (
    ~targetTableName,
    ~ssespecificationOverride=?,
    ~provisionedThroughputOverride=?,
    ~localSecondaryIndexOverride=?,
    ~globalSecondaryIndexOverride=?,
    ~billingModeOverride=?,
    ~restoreDateTime=?,
    ~useLatestRestorableTime=?,
    ~sourceTableName=?,
    ~sourceTableArn=?,
    (),
  ) =>
    new({
      ssespecificationOverride: ssespecificationOverride,
      provisionedThroughputOverride: provisionedThroughputOverride,
      localSecondaryIndexOverride: localSecondaryIndexOverride,
      globalSecondaryIndexOverride: globalSecondaryIndexOverride,
      billingModeOverride: billingModeOverride,
      restoreDateTime: restoreDateTime,
      useLatestRestorableTime: useLatestRestorableTime,
      targetTableName: targetTableName,
      sourceTableName: sourceTableName,
      sourceTableArn: sourceTableArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RestoreTableFromBackup = {
  type t
  type request = {
    @ocaml.doc("<p>The new server-side encryption settings for the restored table.</p>")
    @as("SSESpecificationOverride")
    ssespecificationOverride: option<ssespecification>,
    @ocaml.doc("<p>Provisioned throughput settings for the restored table.</p>")
    @as("ProvisionedThroughputOverride")
    provisionedThroughputOverride: option<provisionedThroughput>,
    @ocaml.doc("<p>List of local secondary indexes for the restored table. The indexes provided should
            match existing secondary indexes. You can choose to exclude some or all of the indexes
            at the time of restore.</p>")
    @as("LocalSecondaryIndexOverride")
    localSecondaryIndexOverride: option<localSecondaryIndexList>,
    @ocaml.doc("<p>List of global secondary indexes for the restored table. The indexes provided should
            match existing secondary indexes. You can choose to exclude some or all of the indexes
            at the time of restore.</p>")
    @as("GlobalSecondaryIndexOverride")
    globalSecondaryIndexOverride: option<globalSecondaryIndexList>,
    @ocaml.doc("<p>The billing mode of the restored table.</p>") @as("BillingModeOverride")
    billingModeOverride: option<billingMode>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with the backup.</p>") @as("BackupArn")
    backupArn: backupArn,
    @ocaml.doc("<p>The name of the new table to which the backup must be restored.</p>")
    @as("TargetTableName")
    targetTableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>The description of the table created from an existing backup.</p>")
    @as("TableDescription")
    tableDescription: option<tableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "RestoreTableFromBackupCommand"
  let make = (
    ~backupArn,
    ~targetTableName,
    ~ssespecificationOverride=?,
    ~provisionedThroughputOverride=?,
    ~localSecondaryIndexOverride=?,
    ~globalSecondaryIndexOverride=?,
    ~billingModeOverride=?,
    (),
  ) =>
    new({
      ssespecificationOverride: ssespecificationOverride,
      provisionedThroughputOverride: provisionedThroughputOverride,
      localSecondaryIndexOverride: localSecondaryIndexOverride,
      globalSecondaryIndexOverride: globalSecondaryIndexOverride,
      billingModeOverride: billingModeOverride,
      backupArn: backupArn,
      targetTableName: targetTableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTable = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DescribeTable</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the table to describe.</p>") @as("TableName") tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of a <code>DescribeTable</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The properties of the table.</p>") @as("Table") table: option<tableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeTableCommand"
  let make = (~tableName, ()) => new({tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalTable = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the global table.</p>") @as("GlobalTableName")
    globalTableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Contains the details of the global table.</p>") @as("GlobalTableDescription")
    globalTableDescription: option<globalTableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeGlobalTableCommand"
  let make = (~globalTableName, ()) => new({globalTableName: globalTableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeBackup = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) associated with the backup.</p>") @as("BackupArn")
    backupArn: backupArn,
  }
  type response = {
    @ocaml.doc("<p>Contains the description of the backup created for the table.</p>")
    @as("BackupDescription")
    backupDescription: option<backupDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DescribeBackupCommand"
  let make = (~backupArn, ()) => new({backupArn: backupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTable = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteTable</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the table to delete.</p>") @as("TableName") tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of a <code>DeleteTable</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Represents the properties of a table.</p>") @as("TableDescription")
    tableDescription: option<tableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DeleteTableCommand"
  let make = (~tableName, ()) => new({tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBackup = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN associated with the backup.</p>") @as("BackupArn") backupArn: backupArn,
  }
  type response = {
    @ocaml.doc("<p>Contains the description of the backup created for the table.</p>")
    @as("BackupDescription")
    backupDescription: option<backupDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DeleteBackupCommand"
  let make = (~backupArn, ()) => new({backupArn: backupArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTable = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>CreateTable</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>The table class of the new table. Valid values are <code>STANDARD</code> and
                <code>STANDARD_INFREQUENT_ACCESS</code>.</p>")
    @as("TableClass")
    tableClass: option<tableClass>,
    @ocaml.doc("<p>A list of key-value pairs to label the table. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html\">Tagging
                for DynamoDB</a>.</p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Represents the settings used to enable server-side encryption.</p>")
    @as("SSESpecification")
    ssespecification: option<ssespecification>,
    @ocaml.doc("<p>The settings for DynamoDB Streams on the table. These settings consist of:</p>
        <ul>
            <li>
                <p>
                    <code>StreamEnabled</code> - Indicates whether DynamoDB Streams is to be enabled
                    (true) or disabled (false).</p>
            </li>
            <li>
                <p>
                    <code>StreamViewType</code> - When an item in the table is modified,
                        <code>StreamViewType</code> determines what information is written to the
                    table's stream. Valid values for <code>StreamViewType</code> are:</p>
                <ul>
                  <li>
                        <p>
                            <code>KEYS_ONLY</code> - Only the key attributes of the modified item
                            are written to the stream.</p>
                    </li>
                  <li>
                        <p>
                            <code>NEW_IMAGE</code> - The entire item, as it appears after it was
                            modified, is written to the stream.</p>
                    </li>
                  <li>
                        <p>
                            <code>OLD_IMAGE</code> - The entire item, as it appeared before it was
                            modified, is written to the stream.</p>
                    </li>
                  <li>
                        <p>
                            <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images
                            of the item are written to the stream.</p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("StreamSpecification")
    streamSpecification: option<streamSpecification>,
    @ocaml.doc("<p>Represents the provisioned throughput settings for a specified table or index. The
            settings can be modified using the <code>UpdateTable</code> operation.</p>
        <p> If you set BillingMode as <code>PROVISIONED</code>, you must specify this property.
            If you set BillingMode as <code>PAY_PER_REQUEST</code>, you cannot specify this
            property.</p>
        <p>For current minimum and maximum provisioned throughput values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html\">Service,
                Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ProvisionedThroughput")
    provisionedThroughput: option<provisionedThroughput>,
    @ocaml.doc("<p>Controls how you are charged for read and write throughput and how you manage
            capacity. This setting can be changed later.</p>
        <ul>
            <li>
                <p>
                    <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
                    predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual\">Provisioned Mode</a>.</p>
            </li>
            <li>
                <p>
                    <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
                    for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
                    to <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand\">On-Demand Mode</a>. </p>
            </li>
         </ul>")
    @as("BillingMode")
    billingMode: option<billingMode>,
    @ocaml.doc("<p>One or more global secondary indexes (the maximum is 20) to be created on the table.
            Each global secondary index in the array includes the following:</p>
        <ul>
            <li>
                <p>
                    <code>IndexName</code> - The name of the global secondary index. Must be unique
                    only for this table.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>KeySchema</code> - Specifies the key schema for the global secondary
                    index.</p>
            </li>
            <li>
                <p>
                    <code>Projection</code> - Specifies attributes that are copied (projected) from
                    the table into the index. These are in addition to the primary key attributes
                    and index key attributes, which are automatically projected. Each attribute
                    specification is composed of:</p>
                <ul>
                  <li>
                        <p>
                            <code>ProjectionType</code> - One of the following:</p>
                        <ul>
                        <li>
                                <p>
                                    <code>KEYS_ONLY</code> - Only the index and primary keys are
                                    projected into the index.</p>
                            </li>
                        <li>
                                <p>
                                    <code>INCLUDE</code> - Only the specified table attributes are
                                    projected into the index. The list of projected attributes is in
                                        <code>NonKeyAttributes</code>.</p>
                            </li>
                        <li>
                                <p>
                                    <code>ALL</code> - All of the table attributes are projected
                                    into the index.</p>
                            </li>
                     </ul>
                    </li>
                  <li>
                        <p>
                            <code>NonKeyAttributes</code> - A list of one or more non-key attribute
                            names that are projected into the secondary index. The total count of
                            attributes provided in <code>NonKeyAttributes</code>, summed across all
                            of the secondary indexes, must not exceed 100. If you project the same
                            attribute into two different indexes, this counts as two distinct
                            attributes when determining the total.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
                    global secondary index, consisting of read and write capacity units.</p>
            </li>
         </ul>")
    @as("GlobalSecondaryIndexes")
    globalSecondaryIndexes: option<globalSecondaryIndexList>,
    @ocaml.doc("<p>One or more local secondary indexes (the maximum is 5) to be created on the table.
            Each index is scoped to a given partition key value. There is a 10 GB size limit per
            partition key value; otherwise, the size of a local secondary index is
            unconstrained.</p>
        <p>Each local secondary index in the array includes the following:</p>
        <ul>
            <li>
                <p>
                    <code>IndexName</code> - The name of the local secondary index. Must be unique
                    only for this table.</p>
                <p></p>
            </li>
            <li>
                <p>
                    <code>KeySchema</code> - Specifies the key schema for the local secondary index.
                    The key schema must begin with the same partition key as the table.</p>
            </li>
            <li>
                <p>
                    <code>Projection</code> - Specifies attributes that are copied (projected) from
                    the table into the index. These are in addition to the primary key attributes
                    and index key attributes, which are automatically projected. Each attribute
                    specification is composed of:</p>
                <ul>
                  <li>
                        <p>
                            <code>ProjectionType</code> - One of the following:</p>
                        <ul>
                        <li>
                                <p>
                                    <code>KEYS_ONLY</code> - Only the index and primary keys are
                                    projected into the index.</p>
                            </li>
                        <li>
                                <p>
                                    <code>INCLUDE</code> - Only the specified table attributes are
                                    projected into the index. The list of projected attributes is in
                                        <code>NonKeyAttributes</code>.</p>
                            </li>
                        <li>
                                <p>
                                    <code>ALL</code> - All of the table attributes are projected
                                    into the index.</p>
                            </li>
                     </ul>
                    </li>
                  <li>
                        <p>
                            <code>NonKeyAttributes</code> - A list of one or more non-key attribute
                            names that are projected into the secondary index. The total count of
                            attributes provided in <code>NonKeyAttributes</code>, summed across all
                            of the secondary indexes, must not exceed 100. If you project the same
                            attribute into two different indexes, this counts as two distinct
                            attributes when determining the total.</p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("LocalSecondaryIndexes")
    localSecondaryIndexes: option<localSecondaryIndexList>,
    @ocaml.doc("<p>Specifies the attributes that make up the primary key for a table or an index. The
            attributes in <code>KeySchema</code> must also be defined in the
                <code>AttributeDefinitions</code> array. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html\">Data
                Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
        <p>Each <code>KeySchemaElement</code> in the array is composed of:</p>
        <ul>
            <li>
                <p>
                    <code>AttributeName</code> - The name of this key attribute.</p>
            </li>
            <li>
                <p>
                    <code>KeyType</code> - The role that the key attribute will assume:</p>
                <ul>
                  <li>
                        <p>
                            <code>HASH</code> - partition key</p>
                    </li>
                  <li>
                        <p>
                            <code>RANGE</code> - sort key</p>
                    </li>
               </ul>
            </li>
         </ul>
        <note>
            <p>The partition key of an item is also known as its <i>hash
                    attribute</i>. The term \"hash attribute\" derives from the DynamoDB usage
                of an internal hash function to evenly distribute data items across partitions,
                based on their partition key values.</p>
            <p>The sort key of an item is also known as its <i>range attribute</i>.
                The term \"range attribute\" derives from the way DynamoDB stores items with the same
                partition key physically close together, in sorted order by the sort key
                value.</p>
        </note>

        <p>For a simple primary key (partition key), you must provide exactly one element with a
                <code>KeyType</code> of <code>HASH</code>.</p>
        <p>For a composite primary key (partition key and sort key), you must provide exactly two
            elements, in this order: The first element must have a <code>KeyType</code> of
                <code>HASH</code>, and the second element must have a <code>KeyType</code> of
                <code>RANGE</code>.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key\">Working with Tables</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("KeySchema")
    keySchema: keySchema,
    @ocaml.doc("<p>The name of the table to create.</p>") @as("TableName") tableName: tableName,
    @ocaml.doc(
      "<p>An array of attributes that describe the key schema for the table and indexes.</p>"
    )
    @as("AttributeDefinitions")
    attributeDefinitions: attributeDefinitions,
  }
  @ocaml.doc("<p>Represents the output of a <code>CreateTable</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Represents the properties of the table.</p>") @as("TableDescription")
    tableDescription: option<tableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "CreateTableCommand"
  let make = (
    ~keySchema,
    ~tableName,
    ~attributeDefinitions,
    ~tableClass=?,
    ~tags=?,
    ~ssespecification=?,
    ~streamSpecification=?,
    ~provisionedThroughput=?,
    ~billingMode=?,
    ~globalSecondaryIndexes=?,
    ~localSecondaryIndexes=?,
    (),
  ) =>
    new({
      tableClass: tableClass,
      tags: tags,
      ssespecification: ssespecification,
      streamSpecification: streamSpecification,
      provisionedThroughput: provisionedThroughput,
      billingMode: billingMode,
      globalSecondaryIndexes: globalSecondaryIndexes,
      localSecondaryIndexes: localSecondaryIndexes,
      keySchema: keySchema,
      tableName: tableName,
      attributeDefinitions: attributeDefinitions,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGlobalTable = {
  type t
  type request = {
    @ocaml.doc("<p>The Regions where the global table needs to be created.</p>")
    @as("ReplicationGroup")
    replicationGroup: replicaList,
    @ocaml.doc("<p>The global table name.</p>") @as("GlobalTableName") globalTableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>Contains the details of the global table.</p>") @as("GlobalTableDescription")
    globalTableDescription: option<globalTableDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "CreateGlobalTableCommand"
  let make = (~replicationGroup, ~globalTableName, ()) =>
    new({replicationGroup: replicationGroup, globalTableName: globalTableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalTableSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Represents the settings for a global table in a Region that will be modified.</p>"
    )
    @as("ReplicaSettingsUpdate")
    replicaSettingsUpdate: option<replicaSettingsUpdateList>,
    @ocaml.doc("<p>Represents the settings of a global secondary index for a global table that will be
            modified.</p>")
    @as("GlobalTableGlobalSecondaryIndexSettingsUpdate")
    globalTableGlobalSecondaryIndexSettingsUpdate: option<
      globalTableGlobalSecondaryIndexSettingsUpdateList,
    >,
    @ocaml.doc("<p>Auto scaling settings for managing provisioned write capacity for the global
            table.</p>")
    @as("GlobalTableProvisionedWriteCapacityAutoScalingSettingsUpdate")
    globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate: option<autoScalingSettingsUpdate>,
    @ocaml.doc("<p>The maximum number of writes consumed per second before DynamoDB returns a
                <code>ThrottlingException.</code>
         </p>")
    @as("GlobalTableProvisionedWriteCapacityUnits")
    globalTableProvisionedWriteCapacityUnits: option<positiveLongObject>,
    @ocaml.doc("<p>The billing mode of the global table. If <code>GlobalTableBillingMode</code> is not
            specified, the global table defaults to <code>PROVISIONED</code> capacity billing
            mode.</p>
        <ul>
            <li>
                <p>
                    <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
                    predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual\">Provisioned Mode</a>.</p>
            </li>
            <li>
                <p>
                    <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
                    for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
                    to <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand\">On-Demand Mode</a>. </p>
            </li>
         </ul>")
    @as("GlobalTableBillingMode")
    globalTableBillingMode: option<billingMode>,
    @ocaml.doc("<p>The name of the global table</p>") @as("GlobalTableName")
    globalTableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>The Region-specific settings for the global table.</p>") @as("ReplicaSettings")
    replicaSettings: option<replicaSettingsDescriptionList>,
    @ocaml.doc("<p>The name of the global table.</p>") @as("GlobalTableName")
    globalTableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateGlobalTableSettingsCommand"
  let make = (
    ~globalTableName,
    ~replicaSettingsUpdate=?,
    ~globalTableGlobalSecondaryIndexSettingsUpdate=?,
    ~globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate=?,
    ~globalTableProvisionedWriteCapacityUnits=?,
    ~globalTableBillingMode=?,
    (),
  ) =>
    new({
      replicaSettingsUpdate: replicaSettingsUpdate,
      globalTableGlobalSecondaryIndexSettingsUpdate: globalTableGlobalSecondaryIndexSettingsUpdate,
      globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate: globalTableProvisionedWriteCapacityAutoScalingSettingsUpdate,
      globalTableProvisionedWriteCapacityUnits: globalTableProvisionedWriteCapacityUnits,
      globalTableBillingMode: globalTableBillingMode,
      globalTableName: globalTableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalTableSettings = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the global table to describe.</p>") @as("GlobalTableName")
    globalTableName: tableName,
  }
  type response = {
    @ocaml.doc("<p>The Region-specific settings for the global table.</p>") @as("ReplicaSettings")
    replicaSettings: option<replicaSettingsDescriptionList>,
    @ocaml.doc("<p>The name of the global table.</p>") @as("GlobalTableName")
    globalTableName: option<tableName>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeGlobalTableSettingsCommand"
  let make = (~globalTableName, ()) => new({globalTableName: globalTableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTableReplicaAutoScaling = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the auto scaling settings of replicas of the table that will be
            modified.</p>")
    @as("ReplicaUpdates")
    replicaUpdates: option<replicaAutoScalingUpdateList>,
    @as("ProvisionedWriteCapacityAutoScalingUpdate")
    provisionedWriteCapacityAutoScalingUpdate: option<autoScalingSettingsUpdate>,
    @ocaml.doc("<p>The name of the global table to be updated.</p>") @as("TableName")
    tableName: tableName,
    @ocaml.doc("<p>Represents the auto scaling settings of the global secondary indexes of the replica to
            be updated.</p>")
    @as("GlobalSecondaryIndexUpdates")
    globalSecondaryIndexUpdates: option<globalSecondaryIndexAutoScalingUpdateList>,
  }
  type response = {
    @ocaml.doc(
      "<p>Returns information about the auto scaling settings of a table with replicas.</p>"
    )
    @as("TableAutoScalingDescription")
    tableAutoScalingDescription: option<tableAutoScalingDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "UpdateTableReplicaAutoScalingCommand"
  let make = (
    ~tableName,
    ~replicaUpdates=?,
    ~provisionedWriteCapacityAutoScalingUpdate=?,
    ~globalSecondaryIndexUpdates=?,
    (),
  ) =>
    new({
      replicaUpdates: replicaUpdates,
      provisionedWriteCapacityAutoScalingUpdate: provisionedWriteCapacityAutoScalingUpdate,
      tableName: tableName,
      globalSecondaryIndexUpdates: globalSecondaryIndexUpdates,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTableReplicaAutoScaling = {
  type t
  type request = {@ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: tableName}
  type response = {
    @ocaml.doc("<p>Represents the auto scaling properties of the table.</p>")
    @as("TableAutoScalingDescription")
    tableAutoScalingDescription: option<tableAutoScalingDescription>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "DescribeTableReplicaAutoScalingCommand"
  let make = (~tableName, ()) => new({tableName: tableName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetItem = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>GetItem</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression. The following
            are some use cases for using <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>To access an attribute whose name conflicts with a DynamoDB reserved
                    word.</p>
            </li>
            <li>
                <p>To create a placeholder for repeating occurrences of an attribute name in an
                    expression.</p>
            </li>
            <li>
                <p>To prevent special characters in an attribute name from being misinterpreted
                    in an expression.</p>
            </li>
         </ul>
        <p>Use the <b>#</b> character in an expression to dereference
            an attribute name. For example, consider the following attribute name:</p>
        <ul>
            <li>
                <p>
                    <code>Percentile</code>
                </p>
            </li>
         </ul>
        <p>The name of this attribute conflicts with a reserved word, so it cannot be used
            directly in an expression. (For the complete list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a> in the <i>Amazon DynamoDB Developer
            Guide</i>). To work around this, you could specify the following for
                <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>
                    <code>{\"#P\":\"Percentile\"}</code>
                </p>
            </li>
         </ul>
        <p>You could then use this substitution in an expression, as in this example:</p>
        <ul>
            <li>
                <p>
                    <code>#P = :val</code>
                </p>
            </li>
         </ul>
        <note>
            <p>Tokens that begin with the <b>:</b> character are
                    <i>expression attribute values</i>, which are placeholders for the
                actual value at runtime.</p>
        </note>
        <p>For more information on expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeNames")
    expressionAttributeNames: option<expressionAttributeNameMap>,
    @ocaml.doc("<p>A string that identifies one or more attributes to retrieve from the table. These
            attributes can include scalars, sets, or elements of a JSON document. The attributes in
            the expression must be separated by commas.</p>
        <p>If no attribute names are specified, then all attributes are returned. If any of the
            requested attributes are not found, they do not appear in the result.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ProjectionExpression")
    projectionExpression: option<projectionExpression>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>Determines the read consistency model: If set to <code>true</code>, then the operation
            uses strongly consistent reads; otherwise, the operation uses eventually consistent
            reads.</p>")
    @as("ConsistentRead")
    consistentRead: option<consistentRead>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html\">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("AttributesToGet")
    attributesToGet: option<attributeNameList>,
    @ocaml.doc("<p>A map of attribute names to <code>AttributeValue</code> objects, representing the
            primary key of the item to retrieve.</p>
        <p>For the primary key, you must provide all of the attributes. For example, with a
            simple primary key, you only need to provide a value for the partition key. For a
            composite primary key, you must provide values for both the partition key and the sort
            key.</p>")
    @as("Key")
    key: key,
    @ocaml.doc("<p>The name of the table containing the requested item.</p>") @as("TableName")
    tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of a <code>GetItem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The capacity units consumed by the <code>GetItem</code> operation. The data returned
            includes the total provisioned throughput consumed, along with statistics for the table
            and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
            returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html\">Read/Write Capacity Mode</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacity>,
    @ocaml.doc("<p>A map of attribute names to <code>AttributeValue</code> objects, as specified by
                <code>ProjectionExpression</code>.</p>")
    @as("Item")
    item: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "GetItemCommand"
  let make = (
    ~key,
    ~tableName,
    ~expressionAttributeNames=?,
    ~projectionExpression=?,
    ~returnConsumedCapacity=?,
    ~consistentRead=?,
    ~attributesToGet=?,
    (),
  ) =>
    new({
      expressionAttributeNames: expressionAttributeNames,
      projectionExpression: projectionExpression,
      returnConsumedCapacity: returnConsumedCapacity,
      consistentRead: consistentRead,
      attributesToGet: attributesToGet,
      key: key,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteStatement = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to evaluate (not necessarily the number of matching
            items). If DynamoDB processes the number of items up to the limit while processing the
            results, it stops the operation and returns the matching values up to that point, along
            with a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation so you
            can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
            DynamoDB reaches this limit, it stops the operation and returns the matching values up
            to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
            operation to continue the operation. </p>")
    @as("Limit")
    limit: option<positiveIntegerObject>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
            statement response.</p>")
    @as("NextToken")
    nextToken: option<partiQLNextToken>,
    @ocaml.doc("<p>The consistency of a read operation. If set to <code>true</code>, then a strongly
            consistent read is used; otherwise, an eventually consistent read is used.</p>")
    @as("ConsistentRead")
    consistentRead: option<consistentRead>,
    @ocaml.doc("<p>The parameters for the PartiQL statement, if any.</p>") @as("Parameters")
    parameters: option<preparedStatementParameters>,
    @ocaml.doc("<p>The PartiQL statement representing the operation to run.</p>") @as("Statement")
    statement: partiQLStatement,
  }
  type response = {
    @ocaml.doc("<p>The primary key of the item where the operation stopped, inclusive of the previous
            result set. Use this value to start a new operation, excluding this value in the new
            request. If <code>LastEvaluatedKey</code> is empty, then the \"last page\" of results has
            been processed and there is no more data to be retrieved. If
                <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
            is more data in the result set. The only way to know when you have reached the end of
            the result set is when <code>LastEvaluatedKey</code> is empty. </p>")
    @as("LastEvaluatedKey")
    lastEvaluatedKey: option<key>,
    @as("ConsumedCapacity") consumedCapacity: option<consumedCapacity>,
    @ocaml.doc("<p>If the response of a read request exceeds the response payload limit DynamoDB will set
            this value in the response. If set, you can use that this value in the subsequent
            request to get the remaining results.</p>")
    @as("NextToken")
    nextToken: option<partiQLNextToken>,
    @ocaml.doc("<p>If a read operation was used, this property will contain the result of the read
            operation; a map of attribute names and their values. For the write operations this
            value will be empty.</p>")
    @as("Items")
    items: option<itemList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ExecuteStatementCommand"
  let make = (
    ~statement,
    ~limit=?,
    ~returnConsumedCapacity=?,
    ~nextToken=?,
    ~consistentRead=?,
    ~parameters=?,
    (),
  ) =>
    new({
      limit: limit,
      returnConsumedCapacity: returnConsumedCapacity,
      nextToken: nextToken,
      consistentRead: consistentRead,
      parameters: parameters,
      statement: statement,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateItem = {
  type t
  @ocaml.doc("<p>Represents the input of an <code>UpdateItem</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>
        <p>Use the <b>:</b> (colon) character in an expression to
            dereference an attribute value. For example, suppose that you wanted to check whether
            the value of the <code>ProductStatus</code> attribute was one of the following: </p>
        <p>
            <code>Available | Backordered | Discontinued</code>
        </p>
        <p>You would first need to specify <code>ExpressionAttributeValues</code> as
            follows:</p>
        <p>
            <code>{ \":avail\":{\"S\":\"Available\"}, \":back\":{\"S\":\"Backordered\"},
                \":disc\":{\"S\":\"Discontinued\"} }</code>
        </p>
        <p>You could then use these values in an expression, such as this:</p>
        <p>
            <code>ProductStatus IN (:avail, :back, :disc)</code>
        </p>
        <p>For more information on expression attribute values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeValues")
    expressionAttributeValues: option<expressionAttributeValueMap>,
    @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression. The following
            are some use cases for using <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>To access an attribute whose name conflicts with a DynamoDB reserved
                    word.</p>
            </li>
            <li>
                <p>To create a placeholder for repeating occurrences of an attribute name in an
                    expression.</p>
            </li>
            <li>
                <p>To prevent special characters in an attribute name from being misinterpreted
                    in an expression.</p>
            </li>
         </ul>
        <p>Use the <b>#</b> character in an expression to dereference
            an attribute name. For example, consider the following attribute name:</p>
        <ul>
            <li>
                <p>
                    <code>Percentile</code>
                </p>
            </li>
         </ul>
        <p>The name of this attribute conflicts with a reserved word, so it cannot be used
            directly in an expression. (For the complete list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.) To work around this, you could specify the following for
                <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>
                    <code>{\"#P\":\"Percentile\"}</code>
                </p>
            </li>
         </ul>
        <p>You could then use this substitution in an expression, as in this example:</p>
        <ul>
            <li>
                <p>
                    <code>#P = :val</code>
                </p>
            </li>
         </ul>
        <note>
            <p>Tokens that begin with the <b>:</b> character are
                    <i>expression attribute values</i>, which are placeholders for the
                actual value at runtime.</p>
        </note>
        <p>For more information about expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeNames")
    expressionAttributeNames: option<expressionAttributeNameMap>,
    @ocaml.doc("<p>A condition that must be satisfied in order for a conditional update to
            succeed.</p>
        <p>An expression can contain any of the following:</p>
        <ul>
            <li>
                <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
                        contains | begins_with | size</code>
                </p>
                <p>These function names are case-sensitive.</p>
            </li>
            <li>
                <p>Comparison operators: <code>= | <> |
            < | > | <= | >= |
            BETWEEN | IN </code>
                </p>
            </li>
            <li>
                <p> Logical operators: <code>AND | OR | NOT</code>
                </p>
            </li>
         </ul>
        <p>For more information about condition expressions, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionExpression")
    conditionExpression: option<conditionExpression>,
    @ocaml.doc("<p>An expression that defines one or more attributes to be updated, the action to be
            performed on them, and new values for them.</p>
        <p>The following action values are available for <code>UpdateExpression</code>.</p>
        <ul>
            <li>
                <p>
                    <code>SET</code> - Adds one or more attributes and values to an item. If any of
                    these attributes already exist, they are replaced by the new values. You can
                    also use <code>SET</code> to add or subtract from an attribute that is of type
                    Number. For example: <code>SET myNum = myNum + :val</code>
                </p>
                <p>
                    <code>SET</code> supports the following functions:</p>
                <ul>
                  <li>
                        <p>
                            <code>if_not_exists (path, operand)</code> - if the item does not
                            contain an attribute at the specified path, then
                                <code>if_not_exists</code> evaluates to operand; otherwise, it
                            evaluates to path. You can use this function to avoid overwriting an
                            attribute that may already be present in the item.</p>
                    </li>
                  <li>
                        <p>
                            <code>list_append (operand, operand)</code> - evaluates to a list with a
                            new element added to it. You can append the new element to the start or
                            the end of the list by reversing the order of the operands.</p>
                    </li>
               </ul>
                <p>These function names are case-sensitive.</p>
            </li>
            <li>
                <p>
                    <code>REMOVE</code> - Removes one or more attributes from an item.</p>
            </li>
            <li>
                <p>
                    <code>ADD</code> - Adds the specified value to the item, if the attribute does
                    not already exist. If the attribute does exist, then the behavior of
                        <code>ADD</code> depends on the data type of the attribute:</p>
                <ul>
                  <li>
                        <p>If the existing attribute is a number, and if <code>Value</code> is
                            also a number, then <code>Value</code> is mathematically added to the
                            existing attribute. If <code>Value</code> is a negative number, then it
                            is subtracted from the existing attribute.</p>
                        <note>
                            <p>If you use <code>ADD</code> to increment or decrement a number
                                value for an item that doesn't exist before the update, DynamoDB
                                uses <code>0</code> as the initial value.</p>
                            <p>Similarly, if you use <code>ADD</code> for an existing item to
                                increment or decrement an attribute value that doesn't exist before
                                the update, DynamoDB uses <code>0</code> as the initial value. For
                                example, suppose that the item you want to update doesn't have an
                                attribute named <code>itemcount</code>, but you decide to
                                    <code>ADD</code> the number <code>3</code> to this attribute
                                anyway. DynamoDB will create the <code>itemcount</code> attribute,
                                set its initial value to <code>0</code>, and finally add
                                    <code>3</code> to it. The result will be a new
                                    <code>itemcount</code> attribute in the item, with a value of
                                    <code>3</code>.</p>
                        </note>
                    </li>
                  <li>
                        <p>If the existing data type is a set and if <code>Value</code> is also a
                            set, then <code>Value</code> is added to the existing set. For example,
                            if the attribute value is the set <code>[1,2]</code>, and the
                                <code>ADD</code> action specified <code>[3]</code>, then the final
                            attribute value is <code>[1,2,3]</code>. An error occurs if an
                                <code>ADD</code> action is specified for a set attribute and the
                            attribute type specified does not match the existing set type. </p>
                        <p>Both sets must have the same primitive data type. For example, if the
                            existing data type is a set of strings, the <code>Value</code> must also
                            be a set of strings.</p>
                    </li>
               </ul>
                <important>
                    <p>The <code>ADD</code> action only supports Number and set data types. In
                        addition, <code>ADD</code> can only be used on top-level attributes, not
                        nested attributes.</p>
                </important>
            </li>
            <li>
                <p>
                    <code>DELETE</code> - Deletes an element from a set.</p>
                <p>If a set of values is specified, then those values are subtracted from the old
                    set. For example, if the attribute value was the set <code>[a,b,c]</code> and
                    the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final
                    attribute value is <code>[b]</code>. Specifying an empty set is an error.</p>
                <important>
                    <p>The <code>DELETE</code> action only supports set data types. In addition,
                            <code>DELETE</code> can only be used on top-level attributes, not nested
                        attributes.</p>
                </important>

            </li>
         </ul>
        <p>You can have many actions in a single expression, such as the following: <code>SET
                a=:value1, b=:value2 DELETE :value3, :value4, :value5</code>
        </p>
        <p>For more information on update expressions, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html\">Modifying
                Items and Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("UpdateExpression")
    updateExpression: option<updateExpression>,
    @ocaml.doc("<p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
            the response includes statistics about item collections, if any, that were modified
            during the operation are returned in the response. If set to <code>NONE</code> (the
            default), no statistics are returned.</p>")
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>Use <code>ReturnValues</code> if you want to get the item attributes as they appear
            before or after they are updated. For <code>UpdateItem</code>, the valid values
            are:</p>
        <ul>
            <li>
                <p>
                    <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
                    value is <code>NONE</code>, then nothing is returned. (This setting is the
                    default for <code>ReturnValues</code>.)</p>
            </li>
            <li>
                <p>
                    <code>ALL_OLD</code> - Returns all of the attributes of the item, as they
                    appeared before the UpdateItem operation.</p>
            </li>
            <li>
                <p>
                    <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared
                    before the UpdateItem operation.</p>
            </li>
            <li>
                <p>
                    <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear
                    after the UpdateItem operation.</p>
            </li>
            <li>
                <p>
                    <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear
                    after the UpdateItem operation.</p>
            </li>
         </ul>
        <p>There is no additional cost associated with requesting a return value aside from the
            small network and processing overhead of receiving a larger response. No read capacity
            units are consumed.</p>
        <p>The values returned are strongly consistent.</p>")
    @as("ReturnValues")
    returnValues: option<returnValue>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html\">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionalOperator")
    conditionalOperator: option<conditionalOperator>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html\">Expected</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("Expected")
    expected: option<expectedAttributeMap>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html\">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("AttributeUpdates")
    attributeUpdates: option<attributeUpdates>,
    @ocaml.doc("<p>The primary key of the item to be updated. Each element consists of an attribute name
            and a value for that attribute.</p>
        <p>For the primary key, you must provide all of the attributes. For example, with a
            simple primary key, you only need to provide a value for the partition key. For a
            composite primary key, you must provide values for both the partition key and the sort
            key.</p>")
    @as("Key")
    key: key,
    @ocaml.doc("<p>The name of the table containing the item to update.</p>") @as("TableName")
    tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of an <code>UpdateItem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about item collections, if any, that were affected by the
                <code>UpdateItem</code> operation. <code>ItemCollectionMetrics</code> is only
            returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the
            table does not have any local secondary indexes, this information is not returned in the
            response.</p>
        <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
        <ul>
            <li>
                <p>
                    <code>ItemCollectionKey</code> - The partition key value of the item collection.
                    This is the same as the partition key value of the item itself.</p>
            </li>
            <li>
                <p>
                    <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
                    gigabytes. This value is a two-element array containing a lower bound and an
                    upper bound for the estimate. The estimate includes the size of all the items in
                    the table, plus the size of all attributes projected into all of the local
                    secondary indexes on that table. Use this estimate to measure whether a local
                    secondary index is approaching its size limit.</p>
                <p>The estimate is subject to change over time; therefore, do not rely on the
                    precision or accuracy of the estimate.</p>
            </li>
         </ul>")
    @as("ItemCollectionMetrics")
    itemCollectionMetrics: option<itemCollectionMetrics>,
    @ocaml.doc("<p>The capacity units consumed by the <code>UpdateItem</code> operation. The data
            returned includes the total provisioned throughput consumed, along with statistics for
            the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is
            only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For
            more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html\">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacity>,
    @ocaml.doc("<p>A map of attribute values as they appear before or after the <code>UpdateItem</code>
            operation, as determined by the <code>ReturnValues</code> parameter.</p>
        <p>The <code>Attributes</code> map is only present if <code>ReturnValues</code> was
            specified as something other than <code>NONE</code> in the request. Each element
            represents one attribute.</p>")
    @as("Attributes")
    attributes: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "UpdateItemCommand"
  let make = (
    ~key,
    ~tableName,
    ~expressionAttributeValues=?,
    ~expressionAttributeNames=?,
    ~conditionExpression=?,
    ~updateExpression=?,
    ~returnItemCollectionMetrics=?,
    ~returnConsumedCapacity=?,
    ~returnValues=?,
    ~conditionalOperator=?,
    ~expected=?,
    ~attributeUpdates=?,
    (),
  ) =>
    new({
      expressionAttributeValues: expressionAttributeValues,
      expressionAttributeNames: expressionAttributeNames,
      conditionExpression: conditionExpression,
      updateExpression: updateExpression,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      returnConsumedCapacity: returnConsumedCapacity,
      returnValues: returnValues,
      conditionalOperator: conditionalOperator,
      expected: expected,
      attributeUpdates: attributeUpdates,
      key: key,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Scan = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>Scan</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>A Boolean value that determines the read consistency model during the scan:</p>
        <ul>
            <li>
                <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned
                    from <code>Scan</code> might not contain the results from other recently
                    completed write operations (<code>PutItem</code>, <code>UpdateItem</code>, or
                        <code>DeleteItem</code>).</p>
            </li>
            <li>
                <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write
                    operations that completed before the <code>Scan</code> began are guaranteed to
                    be contained in the <code>Scan</code> response.</p>
            </li>
         </ul>
        <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p>
        <p>The <code>ConsistentRead</code> parameter is not supported on global secondary
            indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to
            true, you will receive a <code>ValidationException</code>.</p>")
    @as("ConsistentRead")
    consistentRead: option<consistentRead>,
    @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>
        <p>Use the <b>:</b> (colon) character in an expression to
            dereference an attribute value. For example, suppose that you wanted to check whether
            the value of the <code>ProductStatus</code> attribute was one of the following: </p>
        <p>
            <code>Available | Backordered | Discontinued</code>
        </p>
        <p>You would first need to specify <code>ExpressionAttributeValues</code> as
            follows:</p>
        <p>
            <code>{ \":avail\":{\"S\":\"Available\"}, \":back\":{\"S\":\"Backordered\"},
                \":disc\":{\"S\":\"Discontinued\"} }</code>
        </p>
        <p>You could then use these values in an expression, such as this:</p>
        <p>
            <code>ProductStatus IN (:avail, :back, :disc)</code>
        </p>
        <p>For more information on expression attribute values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeValues")
    expressionAttributeValues: option<expressionAttributeValueMap>,
    @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression. The following
            are some use cases for using <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>To access an attribute whose name conflicts with a DynamoDB reserved
                    word.</p>
            </li>
            <li>
                <p>To create a placeholder for repeating occurrences of an attribute name in an
                    expression.</p>
            </li>
            <li>
                <p>To prevent special characters in an attribute name from being misinterpreted
                    in an expression.</p>
            </li>
         </ul>
        <p>Use the <b>#</b> character in an expression to dereference
            an attribute name. For example, consider the following attribute name:</p>
        <ul>
            <li>
                <p>
                    <code>Percentile</code>
                </p>
            </li>
         </ul>
        <p>The name of this attribute conflicts with a reserved word, so it cannot be used
            directly in an expression. (For the complete list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a> in the <i>Amazon DynamoDB Developer
            Guide</i>). To work around this, you could specify the following for
                <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>
                    <code>{\"#P\":\"Percentile\"}</code>
                </p>
            </li>
         </ul>
        <p>You could then use this substitution in an expression, as in this example:</p>
        <ul>
            <li>
                <p>
                    <code>#P = :val</code>
                </p>
            </li>
         </ul>
        <note>
            <p>Tokens that begin with the <b>:</b> character are
                    <i>expression attribute values</i>, which are placeholders for the
                actual value at runtime.</p>
        </note>
        <p>For more information on expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeNames")
    expressionAttributeNames: option<expressionAttributeNameMap>,
    @ocaml.doc("<p>A string that contains conditions that DynamoDB applies after the <code>Scan</code>
            operation, but before the data is returned to you. Items that do not satisfy the
                <code>FilterExpression</code> criteria are not returned.</p>
        <note>
            <p>A <code>FilterExpression</code> is applied after the items have already been read;
                the process of filtering does not consume any additional read capacity units.</p>
        </note>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults\">Filter
                Expressions</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("FilterExpression")
    filterExpression: option<conditionExpression>,
    @ocaml.doc("<p>A string that identifies one or more attributes to retrieve from the specified table
            or index. These attributes can include scalars, sets, or elements of a JSON document.
            The attributes in the expression must be separated by commas.</p>
        <p>If no attribute names are specified, then all attributes will be returned. If any of
            the requested attributes are not found, they will not appear in the result.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ProjectionExpression")
    projectionExpression: option<projectionExpression>,
    @ocaml.doc("<p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an
            individual segment to be scanned by an application worker.</p>
        <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want
            to use four application threads to scan a table or an index, then the first thread
            specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so
            on.</p>
        <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code>
            request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a
            subsequent <code>Scan</code> operation.</p>
        <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than
            the value provided for <code>TotalSegments</code>.</p>
        <p>If you provide <code>Segment</code>, you must also provide
            <code>TotalSegments</code>.</p>")
    @as("Segment")
    segment: option<scanSegment>,
    @ocaml.doc("<p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the
            total number of segments into which the <code>Scan</code> operation will be divided. The
            value of <code>TotalSegments</code> corresponds to the number of application workers
            that will perform the parallel scan. For example, if you want to use four application
            threads to scan a table or an index, specify a <code>TotalSegments</code> value of
            4.</p>
        <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less
            than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the
                <code>Scan</code> operation will be sequential rather than parallel.</p>
        <p>If you specify <code>TotalSegments</code>, you must also specify
            <code>Segment</code>.</p>")
    @as("TotalSegments")
    totalSegments: option<scanTotalSegments>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>The primary key of the first item that this operation will evaluate. Use the value
            that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
        <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No
            set data types are allowed.</p>
        <p>In a parallel scan, a <code>Scan</code> request that includes
                <code>ExclusiveStartKey</code> must specify the same segment whose previous
                <code>Scan</code> returned the corresponding value of
            <code>LastEvaluatedKey</code>.</p>")
    @as("ExclusiveStartKey")
    exclusiveStartKey: option<key>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html\">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionalOperator")
    conditionalOperator: option<conditionalOperator>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html\">ScanFilter</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("ScanFilter")
    scanFilter: option<filterConditionMap>,
    @ocaml.doc("<p>The attributes to be returned in the result. You can retrieve all item attributes,
            specific item attributes, the count of matching items, or in the case of an index, some
            or all of the attributes projected into the index.</p>
        <ul>
            <li>
                <p>
                    <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
                    specified table or index. If you query a local secondary index, then for each
                    matching item in the index, DynamoDB fetches the entire item from the parent
                    table. If the index is configured to project all item attributes, then all of
                    the data can be obtained from the local secondary index, and no fetching is
                    required.</p>
            </li>
            <li>
                <p>
                    <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
                    Retrieves all attributes that have been projected into the index. If the index
                    is configured to project all attributes, this return value is equivalent to
                    specifying <code>ALL_ATTRIBUTES</code>.</p>
            </li>
            <li>
                <p>
                    <code>COUNT</code> - Returns the number of matching items, rather than the
                    matching items themselves.</p>
            </li>
            <li>
                <p>
                    <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
                        <code>AttributesToGet</code>. This return value is equivalent to specifying
                        <code>AttributesToGet</code> without specifying any value for
                        <code>Select</code>.</p>
                <p>If you query or scan a local secondary index and request only attributes that
                    are projected into that index, the operation reads only the index and not the
                    table. If any of the requested attributes are not projected into the local
                    secondary index, DynamoDB fetches each of these attributes from the parent
                    table. This extra fetching incurs additional throughput cost and latency.</p>
                <p>If you query or scan a global secondary index, you can only request attributes
                    that are projected into the index. Global secondary index queries cannot fetch
                    attributes from the parent table.</p>
            </li>
         </ul>
        <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified,
            DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
                <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
                <code>Select</code> and <code>AttributesToGet</code> together in a single request,
            unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This
            usage is equivalent to specifying <code>AttributesToGet</code> without any value for
                <code>Select</code>.)</p>
        <note>
            <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
                    <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
                value for <code>Select</code> will return an error.</p>
        </note>")
    @as("Select")
    select: option<select>,
    @ocaml.doc("<p>The maximum number of items to evaluate (not necessarily the number of matching
            items). If DynamoDB processes the number of items up to the limit while processing the
            results, it stops the operation and returns the matching values up to that point, and a
            key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
            pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
            DynamoDB reaches this limit, it stops the operation and returns the matching values up
            to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
            operation to continue the operation. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html\">Working with Queries</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("Limit")
    limit: option<positiveIntegerObject>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html\">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("AttributesToGet")
    attributesToGet: option<attributeNameList>,
    @ocaml.doc("<p>The name of a secondary index to scan. This index can be any local secondary index or
            global secondary index. Note that if you use the <code>IndexName</code> parameter, you
            must also provide <code>TableName</code>.</p>")
    @as("IndexName")
    indexName: option<indexName>,
    @ocaml.doc("<p>The name of the table containing the requested items; or, if you provide
                <code>IndexName</code>, the name of the table to which that index belongs.</p>")
    @as("TableName")
    tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of a <code>Scan</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The capacity units consumed by the <code>Scan</code> operation. The data returned
            includes the total provisioned throughput consumed, along with statistics for the table
            and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
            returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html\">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacity>,
    @ocaml.doc("<p>The primary key of the item where the operation stopped, inclusive of the previous
            result set. Use this value to start a new operation, excluding this value in the new
            request.</p>
        <p>If <code>LastEvaluatedKey</code> is empty, then the \"last page\" of results has been
            processed and there is no more data to be retrieved.</p>
        <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
            is more data in the result set. The only way to know when you have reached the end of
            the result set is when <code>LastEvaluatedKey</code> is empty.</p>")
    @as("LastEvaluatedKey")
    lastEvaluatedKey: option<key>,
    @ocaml.doc("<p>The number of items evaluated, before any <code>ScanFilter</code> is applied. A high
                <code>ScannedCount</code> value with few, or no, <code>Count</code> results
            indicates an inefficient <code>Scan</code> operation. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count\">Count and
                ScannedCount</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>
        <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same
            as <code>Count</code>.</p>")
    @as("ScannedCount")
    scannedCount: option<integer_>,
    @ocaml.doc("<p>The number of items in the response.</p>
        <p>If you set <code>ScanFilter</code> in the request, then <code>Count</code> is the
            number of items returned after the filter was applied, and <code>ScannedCount</code> is
            the number of matching items before the filter was applied.</p>
        <p>If you did not use a filter in the request, then <code>Count</code> is the same as
                <code>ScannedCount</code>.</p>")
    @as("Count")
    count: option<integer_>,
    @ocaml.doc("<p>An array of item attributes that match the scan criteria. Each element in this array
            consists of an attribute name and the value for that attribute.</p>")
    @as("Items")
    items: option<itemList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ScanCommand"
  let make = (
    ~tableName,
    ~consistentRead=?,
    ~expressionAttributeValues=?,
    ~expressionAttributeNames=?,
    ~filterExpression=?,
    ~projectionExpression=?,
    ~segment=?,
    ~totalSegments=?,
    ~returnConsumedCapacity=?,
    ~exclusiveStartKey=?,
    ~conditionalOperator=?,
    ~scanFilter=?,
    ~select=?,
    ~limit=?,
    ~attributesToGet=?,
    ~indexName=?,
    (),
  ) =>
    new({
      consistentRead: consistentRead,
      expressionAttributeValues: expressionAttributeValues,
      expressionAttributeNames: expressionAttributeNames,
      filterExpression: filterExpression,
      projectionExpression: projectionExpression,
      segment: segment,
      totalSegments: totalSegments,
      returnConsumedCapacity: returnConsumedCapacity,
      exclusiveStartKey: exclusiveStartKey,
      conditionalOperator: conditionalOperator,
      scanFilter: scanFilter,
      select: select,
      limit: limit,
      attributesToGet: attributesToGet,
      indexName: indexName,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module Query = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>Query</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>
        <p>Use the <b>:</b> (colon) character in an expression to
            dereference an attribute value. For example, suppose that you wanted to check whether
            the value of the <i>ProductStatus</i> attribute was one of the following: </p>
        <p>
            <code>Available | Backordered | Discontinued</code>
        </p>
        <p>You would first need to specify <code>ExpressionAttributeValues</code> as
            follows:</p>
        <p>
            <code>{ \":avail\":{\"S\":\"Available\"}, \":back\":{\"S\":\"Backordered\"},
                \":disc\":{\"S\":\"Discontinued\"} }</code>
        </p>
        <p>You could then use these values in an expression, such as this:</p>
        <p>
            <code>ProductStatus IN (:avail, :back, :disc)</code>
        </p>
        <p>For more information on expression attribute values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeValues")
    expressionAttributeValues: option<expressionAttributeValueMap>,
    @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression. The following
            are some use cases for using <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>To access an attribute whose name conflicts with a DynamoDB reserved
                    word.</p>
            </li>
            <li>
                <p>To create a placeholder for repeating occurrences of an attribute name in an
                    expression.</p>
            </li>
            <li>
                <p>To prevent special characters in an attribute name from being misinterpreted
                    in an expression.</p>
            </li>
         </ul>
        <p>Use the <b>#</b> character in an expression to dereference
            an attribute name. For example, consider the following attribute name:</p>
        <ul>
            <li>
                <p>
                    <code>Percentile</code>
                </p>
            </li>
         </ul>
        <p>The name of this attribute conflicts with a reserved word, so it cannot be used
            directly in an expression. (For the complete list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a> in the <i>Amazon DynamoDB Developer
            Guide</i>). To work around this, you could specify the following for
                <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>
                    <code>{\"#P\":\"Percentile\"}</code>
                </p>
            </li>
         </ul>
        <p>You could then use this substitution in an expression, as in this example:</p>
        <ul>
            <li>
                <p>
                    <code>#P = :val</code>
                </p>
            </li>
         </ul>
        <note>
            <p>Tokens that begin with the <b>:</b> character are
                    <i>expression attribute values</i>, which are placeholders for the
                actual value at runtime.</p>
        </note>
        <p>For more information on expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeNames")
    expressionAttributeNames: option<expressionAttributeNameMap>,
    @ocaml.doc("<p>The condition that specifies the key values for items to be retrieved by the
                <code>Query</code> action.</p>

        <p>The condition must perform an equality test on a single partition key value.</p>
        <p>The condition can optionally perform one of several comparison tests on a single sort
            key value. This allows <code>Query</code> to retrieve one item with a given partition
            key value and sort key value, or several items that have the same partition key value
            but different sort key values.</p>

        <p>The partition key equality test is required, and must be specified in the following
            format:</p>

        <p>
            <code>partitionKeyName</code>
            <i>=</i>
            <code>:partitionkeyval</code>
        </p>

        <p>If you also want to provide a condition for the sort key, it must be combined using
                <code>AND</code> with the condition for the sort key. Following is an example, using
            the <b>=</b> comparison operator for the sort key:</p>

        <p>
            <code>partitionKeyName</code>
            <code>=</code>
            <code>:partitionkeyval</code>
            <code>AND</code>
            <code>sortKeyName</code>
            <code>=</code>
            <code>:sortkeyval</code>
        </p>
        <p>Valid comparisons for the sort key condition are as follows:</p>
        <ul>
            <li>
                <p>
                    <code>sortKeyName</code>
                    <code>=</code>
                    <code>:sortkeyval</code> - true if the sort key value is equal to
                        <code>:sortkeyval</code>.</p>
            </li>
            <li>
                <p>
                    <code>sortKeyName</code>
                    <code><</code>
                    <code>:sortkeyval</code> - true if the sort key value is less than
                        <code>:sortkeyval</code>.</p>
            </li>
            <li>
                <p>
                    <code>sortKeyName</code>
                    <code><=</code>
                    <code>:sortkeyval</code> - true if the sort key value is less than or equal to
                        <code>:sortkeyval</code>.</p>
            </li>
            <li>
                <p>
                    <code>sortKeyName</code>
                    <code>></code>
                    <code>:sortkeyval</code> - true if the sort key value is greater than
                        <code>:sortkeyval</code>.</p>
            </li>
            <li>
                <p>
                    <code>sortKeyName</code>
                    <code>>= </code>
                    <code>:sortkeyval</code> - true if the sort key value is greater than or equal
                    to <code>:sortkeyval</code>.</p>
            </li>
            <li>
                <p>
                    <code>sortKeyName</code>
                    <code>BETWEEN</code>
                    <code>:sortkeyval1</code>
                    <code>AND</code>
                    <code>:sortkeyval2</code> - true if the sort key value is greater than or equal
                    to <code>:sortkeyval1</code>, and less than or equal to
                        <code>:sortkeyval2</code>.</p>
            </li>
            <li>
                <p>
                    <code>begins_with (</code>
                    <code>sortKeyName</code>, <code>:sortkeyval</code>
                    <code>)</code> - true if the sort key value begins with a particular operand.
                    (You cannot use this function with a sort key that is of type Number.) Note that
                    the function name <code>begins_with</code> is case-sensitive.</p>

            </li>
         </ul>

        <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as
                <code>:partitionval</code> and <code>:sortval</code> with actual values at
            runtime.</p>

        <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace
            the names of the partition key and sort key with placeholder tokens. This option might
            be necessary if an attribute name conflicts with a DynamoDB reserved word. For example,
            the following <code>KeyConditionExpression</code> parameter causes an error because
                <i>Size</i> is a reserved word:</p>
        <ul>
            <li>
                <p>
                    <code>Size = :myval</code>
                </p>
            </li>
         </ul>
        <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the
            attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as
            follows:</p>
        <ul>
            <li>
                <p>
                    <code>#S = :myval</code>
                </p>
            </li>
         </ul>
        <p>For a list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a>
            in the <i>Amazon DynamoDB Developer Guide</i>.</p>

        <p>For more information on <code>ExpressionAttributeNames</code> and
                <code>ExpressionAttributeValues</code>, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html\">Using
                Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB
                Developer Guide</i>.</p>")
    @as("KeyConditionExpression")
    keyConditionExpression: option<keyExpression>,
    @ocaml.doc("<p>A string that contains conditions that DynamoDB applies after the <code>Query</code>
            operation, but before the data is returned to you. Items that do not satisfy the
                <code>FilterExpression</code> criteria are not returned.</p>
        <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a
            filter expression based on a partition key or a sort key.</p>
        <note>
            <p>A <code>FilterExpression</code> is applied after the items have already been read;
                the process of filtering does not consume any additional read capacity units.</p>
        </note>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#FilteringResults\">Filter
                Expressions</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("FilterExpression")
    filterExpression: option<conditionExpression>,
    @ocaml.doc("<p>A string that identifies one or more attributes to retrieve from the table. These
            attributes can include scalars, sets, or elements of a JSON document. The attributes in
            the expression must be separated by commas.</p>
        <p>If no attribute names are specified, then all attributes will be returned. If any of
            the requested attributes are not found, they will not appear in the result.</p>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ProjectionExpression")
    projectionExpression: option<projectionExpression>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>The primary key of the first item that this operation will evaluate. Use the value
            that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
        <p>The data type for <code>ExclusiveStartKey</code> must be String, Number, or Binary. No
            set data types are allowed.</p>")
    @as("ExclusiveStartKey")
    exclusiveStartKey: option<key>,
    @ocaml.doc("<p>Specifies the order for index traversal: If <code>true</code> (default), the traversal
            is performed in ascending order; if <code>false</code>, the traversal is performed in
            descending order. </p>
        <p>Items with the same partition key value are stored in sorted order by sort key. If the
            sort key data type is Number, the results are stored in numeric order. For type String,
            the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each
            byte of the binary data as unsigned.</p>
        <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in
            the order in which they are stored (by sort key value). This is the default behavior. If
                <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in
            reverse order by sort key value, and then returns the results to the client.</p>")
    @as("ScanIndexForward")
    scanIndexForward: option<booleanObject>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html\">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionalOperator")
    conditionalOperator: option<conditionalOperator>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html\">QueryFilter</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("QueryFilter")
    queryFilter: option<filterConditionMap>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html\">KeyConditions</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("KeyConditions")
    keyConditions: option<keyConditions>,
    @ocaml.doc("<p>Determines the read consistency model: If set to <code>true</code>, then the operation
            uses strongly consistent reads; otherwise, the operation uses eventually consistent
            reads.</p>
        <p>Strongly consistent reads are not supported on global secondary indexes. If you query
            a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you
            will receive a <code>ValidationException</code>.</p>")
    @as("ConsistentRead")
    consistentRead: option<consistentRead>,
    @ocaml.doc("<p>The maximum number of items to evaluate (not necessarily the number of matching
            items). If DynamoDB processes the number of items up to the limit while processing the
            results, it stops the operation and returns the matching values up to that point, and a
            key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
            pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
            DynamoDB reaches this limit, it stops the operation and returns the matching values up
            to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
            operation to continue the operation. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html\">Query and Scan</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("Limit")
    limit: option<positiveIntegerObject>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html\">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("AttributesToGet")
    attributesToGet: option<attributeNameList>,
    @ocaml.doc("<p>The attributes to be returned in the result. You can retrieve all item attributes,
            specific item attributes, the count of matching items, or in the case of an index, some
            or all of the attributes projected into the index.</p>
        <ul>
            <li>
                <p>
                    <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
                    specified table or index. If you query a local secondary index, then for each
                    matching item in the index, DynamoDB fetches the entire item from the parent
                    table. If the index is configured to project all item attributes, then all of
                    the data can be obtained from the local secondary index, and no fetching is
                    required.</p>
            </li>
            <li>
                <p>
                    <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
                    Retrieves all attributes that have been projected into the index. If the index
                    is configured to project all attributes, this return value is equivalent to
                    specifying <code>ALL_ATTRIBUTES</code>.</p>
            </li>
            <li>
                <p>
                    <code>COUNT</code> - Returns the number of matching items, rather than the
                    matching items themselves.</p>
            </li>
            <li>
                <p>
                    <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
                        <code>AttributesToGet</code>. This return value is equivalent to specifying
                        <code>AttributesToGet</code> without specifying any value for
                        <code>Select</code>.</p>
                <p>If you query or scan a local secondary index and request only attributes that
                    are projected into that index, the operation will read only the index and not
                    the table. If any of the requested attributes are not projected into the local
                    secondary index, DynamoDB fetches each of these attributes from the parent
                    table. This extra fetching incurs additional throughput cost and latency.</p>
                <p>If you query or scan a global secondary index, you can only request attributes
                    that are projected into the index. Global secondary index queries cannot fetch
                    attributes from the parent table.</p>
            </li>
         </ul>
        <p>If neither <code>Select</code> nor <code>AttributesToGet</code> are specified,
            DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
                <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
                <code>Select</code> and <code>AttributesToGet</code> together in a single request,
            unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>. (This
            usage is equivalent to specifying <code>AttributesToGet</code> without any value for
                <code>Select</code>.)</p>
        <note>
            <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
                    <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
                value for <code>Select</code> will return an error.</p>
        </note>")
    @as("Select")
    select: option<select>,
    @ocaml.doc("<p>The name of an index to query. This index can be any local secondary index or global
            secondary index on the table. Note that if you use the <code>IndexName</code> parameter,
            you must also provide <code>TableName.</code>
        </p>")
    @as("IndexName")
    indexName: option<indexName>,
    @ocaml.doc("<p>The name of the table containing the requested items.</p>") @as("TableName")
    tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of a <code>Query</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The capacity units consumed by the <code>Query</code> operation. The data returned
            includes the total provisioned throughput consumed, along with statistics for the table
            and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
            returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html\">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacity>,
    @ocaml.doc("<p>The primary key of the item where the operation stopped, inclusive of the previous
            result set. Use this value to start a new operation, excluding this value in the new
            request.</p>
        <p>If <code>LastEvaluatedKey</code> is empty, then the \"last page\" of results has been
            processed and there is no more data to be retrieved.</p>
        <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
            is more data in the result set. The only way to know when you have reached the end of
            the result set is when <code>LastEvaluatedKey</code> is empty.</p>")
    @as("LastEvaluatedKey")
    lastEvaluatedKey: option<key>,
    @ocaml.doc("<p>The number of items evaluated, before any <code>QueryFilter</code> is applied. A high
                <code>ScannedCount</code> value with few, or no, <code>Count</code> results
            indicates an inefficient <code>Query</code> operation. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count\">Count and
                ScannedCount</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>
        <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same
            as <code>Count</code>.</p>")
    @as("ScannedCount")
    scannedCount: option<integer_>,
    @ocaml.doc("<p>The number of items in the response.</p>
        <p>If you used a <code>QueryFilter</code> in the request, then <code>Count</code> is the
            number of items returned after the filter was applied, and <code>ScannedCount</code> is
            the number of matching items before the filter was applied.</p>
        <p>If you did not use a filter in the request, then <code>Count</code> and
                <code>ScannedCount</code> are the same.</p>")
    @as("Count")
    count: option<integer_>,
    @ocaml.doc("<p>An array of item attributes that match the query criteria. Each element in this array
            consists of an attribute name and the value for that attribute.</p>")
    @as("Items")
    items: option<itemList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "QueryCommand"
  let make = (
    ~tableName,
    ~expressionAttributeValues=?,
    ~expressionAttributeNames=?,
    ~keyConditionExpression=?,
    ~filterExpression=?,
    ~projectionExpression=?,
    ~returnConsumedCapacity=?,
    ~exclusiveStartKey=?,
    ~scanIndexForward=?,
    ~conditionalOperator=?,
    ~queryFilter=?,
    ~keyConditions=?,
    ~consistentRead=?,
    ~limit=?,
    ~attributesToGet=?,
    ~select=?,
    ~indexName=?,
    (),
  ) =>
    new({
      expressionAttributeValues: expressionAttributeValues,
      expressionAttributeNames: expressionAttributeNames,
      keyConditionExpression: keyConditionExpression,
      filterExpression: filterExpression,
      projectionExpression: projectionExpression,
      returnConsumedCapacity: returnConsumedCapacity,
      exclusiveStartKey: exclusiveStartKey,
      scanIndexForward: scanIndexForward,
      conditionalOperator: conditionalOperator,
      queryFilter: queryFilter,
      keyConditions: keyConditions,
      consistentRead: consistentRead,
      limit: limit,
      attributesToGet: attributesToGet,
      select: select,
      indexName: indexName,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutItem = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>PutItem</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>
        <p>Use the <b>:</b> (colon) character in an expression to
            dereference an attribute value. For example, suppose that you wanted to check whether
            the value of the <i>ProductStatus</i> attribute was one of the following: </p>
        <p>
            <code>Available | Backordered | Discontinued</code>
        </p>
        <p>You would first need to specify <code>ExpressionAttributeValues</code> as
            follows:</p>
        <p>
            <code>{ \":avail\":{\"S\":\"Available\"}, \":back\":{\"S\":\"Backordered\"},
                \":disc\":{\"S\":\"Discontinued\"} }</code>
        </p>
        <p>You could then use these values in an expression, such as this:</p>
        <p>
            <code>ProductStatus IN (:avail, :back, :disc)</code>
        </p>
        <p>For more information on expression attribute values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeValues")
    expressionAttributeValues: option<expressionAttributeValueMap>,
    @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression. The following
            are some use cases for using <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>To access an attribute whose name conflicts with a DynamoDB reserved
                    word.</p>
            </li>
            <li>
                <p>To create a placeholder for repeating occurrences of an attribute name in an
                    expression.</p>
            </li>
            <li>
                <p>To prevent special characters in an attribute name from being misinterpreted
                    in an expression.</p>
            </li>
         </ul>
        <p>Use the <b>#</b> character in an expression to dereference
            an attribute name. For example, consider the following attribute name:</p>
        <ul>
            <li>
                <p>
                    <code>Percentile</code>
                </p>
            </li>
         </ul>
        <p>The name of this attribute conflicts with a reserved word, so it cannot be used
            directly in an expression. (For the complete list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a> in the <i>Amazon DynamoDB Developer
            Guide</i>). To work around this, you could specify the following for
                <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>
                    <code>{\"#P\":\"Percentile\"}</code>
                </p>
            </li>
         </ul>
        <p>You could then use this substitution in an expression, as in this example:</p>
        <ul>
            <li>
                <p>
                    <code>#P = :val</code>
                </p>
            </li>
         </ul>
        <note>
            <p>Tokens that begin with the <b>:</b> character are
                    <i>expression attribute values</i>, which are placeholders for the
                actual value at runtime.</p>
        </note>
        <p>For more information on expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeNames")
    expressionAttributeNames: option<expressionAttributeNameMap>,
    @ocaml.doc("<p>A condition that must be satisfied in order for a conditional <code>PutItem</code>
            operation to succeed.</p>
        <p>An expression can contain any of the following:</p>
        <ul>
            <li>
                <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
                        contains | begins_with | size</code>
                </p>
                <p>These function names are case-sensitive.</p>
            </li>
            <li>
                <p>Comparison operators: <code>= | <> |
            < | > | <= | >= |
            BETWEEN | IN </code>
                </p>
            </li>
            <li>
                <p> Logical operators: <code>AND | OR | NOT</code>
                </p>
            </li>
         </ul>
        <p>For more information on condition expressions, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionExpression")
    conditionExpression: option<conditionExpression>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html\">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionalOperator")
    conditionalOperator: option<conditionalOperator>,
    @ocaml.doc("<p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
            the response includes statistics about item collections, if any, that were modified
            during the operation are returned in the response. If set to <code>NONE</code> (the
            default), no statistics are returned.</p>")
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
            before they were updated with the <code>PutItem</code> request. For
            <code>PutItem</code>, the valid values are:</p>
        <ul>
            <li>
                <p>
                    <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
                    value is <code>NONE</code>, then nothing is returned. (This setting is the
                    default for <code>ReturnValues</code>.)</p>
            </li>
            <li>
                <p>
                    <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value
                    pair, then the content of the old item is returned.</p>
            </li>
         </ul>
        <p>The values returned are strongly consistent.</p>
        <note>
            <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
                however, <code>PutItem</code> does not recognize any values other than
                    <code>NONE</code> or <code>ALL_OLD</code>.</p>
        </note>")
    @as("ReturnValues")
    returnValues: option<returnValue>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html\">Expected</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("Expected")
    expected: option<expectedAttributeMap>,
    @ocaml.doc("<p>A map of attribute name/value pairs, one for each attribute. Only the primary key
            attributes are required; you can optionally provide other attribute name-value pairs for
            the item.</p>
        <p>You must provide all of the attributes for the primary key. For example, with a simple
            primary key, you only need to provide a value for the partition key. For a composite
            primary key, you must provide both values for both the partition key and the sort
            key.</p>
        <p>If you specify any attributes that are part of an index key, then the data types for
            those attributes must match those of the schema in the table's attribute
            definition.</p>
        <p>Empty String and Binary attribute values are allowed. Attribute values of type String
            and Binary must have a length greater than zero if the attribute is used as a key
            attribute for a table or index.</p>

        <p>For more information about primary keys, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey\">Primary Key</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>
        <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code>
            object.</p>")
    @as("Item")
    item: putItemInputAttributeMap,
    @ocaml.doc("<p>The name of the table to contain the item.</p>") @as("TableName")
    tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of a <code>PutItem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about item collections, if any, that were affected by the
                <code>PutItem</code> operation. <code>ItemCollectionMetrics</code> is only returned
            if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table
            does not have any local secondary indexes, this information is not returned in the
            response.</p>
        <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
        <ul>
            <li>
                <p>
                    <code>ItemCollectionKey</code> - The partition key value of the item collection.
                    This is the same as the partition key value of the item itself.</p>
            </li>
            <li>
                <p>
                    <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
                    gigabytes. This value is a two-element array containing a lower bound and an
                    upper bound for the estimate. The estimate includes the size of all the items in
                    the table, plus the size of all attributes projected into all of the local
                    secondary indexes on that table. Use this estimate to measure whether a local
                    secondary index is approaching its size limit.</p>
                <p>The estimate is subject to change over time; therefore, do not rely on the
                    precision or accuracy of the estimate.</p>
            </li>
         </ul>")
    @as("ItemCollectionMetrics")
    itemCollectionMetrics: option<itemCollectionMetrics>,
    @ocaml.doc("<p>The capacity units consumed by the <code>PutItem</code> operation. The data returned
            includes the total provisioned throughput consumed, along with statistics for the table
            and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
            returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html\">Read/Write Capacity Mode</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacity>,
    @ocaml.doc("<p>The attribute values as they appeared before the <code>PutItem</code> operation, but
            only if <code>ReturnValues</code> is specified as <code>ALL_OLD</code> in the request.
            Each element consists of an attribute name and an attribute value.</p>")
    @as("Attributes")
    attributes: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "PutItemCommand"
  let make = (
    ~item,
    ~tableName,
    ~expressionAttributeValues=?,
    ~expressionAttributeNames=?,
    ~conditionExpression=?,
    ~conditionalOperator=?,
    ~returnItemCollectionMetrics=?,
    ~returnConsumedCapacity=?,
    ~returnValues=?,
    ~expected=?,
    (),
  ) =>
    new({
      expressionAttributeValues: expressionAttributeValues,
      expressionAttributeNames: expressionAttributeNames,
      conditionExpression: conditionExpression,
      conditionalOperator: conditionalOperator,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      returnConsumedCapacity: returnConsumedCapacity,
      returnValues: returnValues,
      expected: expected,
      item: item,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExecuteTransaction = {
  type t
  type request = {
    @ocaml.doc("<p>Determines the level of detail about either provisioned or on-demand throughput consumption that is
            returned in the response. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html\">TransactGetItems</a> and <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html\">TransactWriteItems</a>.</p>")
    @as("ReturnConsumedCapacity")
    returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
            statement response.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The list of PartiQL statements representing the transaction to run.</p>")
    @as("TransactStatements")
    transactStatements: parameterizedStatements,
  }
  type response = {
    @ocaml.doc("<p>The capacity units consumed by the entire operation. The values of the list are
            ordered according to the ordering of the statements.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacityMultiple>,
    @ocaml.doc("<p>The response to a PartiQL transaction.</p>") @as("Responses")
    responses: option<itemResponseList>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "ExecuteTransactionCommand"
  let make = (~transactStatements, ~returnConsumedCapacity=?, ~clientRequestToken=?, ()) =>
    new({
      returnConsumedCapacity: returnConsumedCapacity,
      clientRequestToken: clientRequestToken,
      transactStatements: transactStatements,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteItem = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>DeleteItem</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>One or more values that can be substituted in an expression.</p>
        <p>Use the <b>:</b> (colon) character in an expression to
            dereference an attribute value. For example, suppose that you wanted to check whether
            the value of the <i>ProductStatus</i> attribute was one of the following: </p>
        <p>
            <code>Available | Backordered | Discontinued</code>
        </p>
        <p>You would first need to specify <code>ExpressionAttributeValues</code> as
            follows:</p>
        <p>
            <code>{ \":avail\":{\"S\":\"Available\"}, \":back\":{\"S\":\"Backordered\"},
                \":disc\":{\"S\":\"Discontinued\"} }</code>
        </p>
        <p>You could then use these values in an expression, such as this:</p>
        <p>
            <code>ProductStatus IN (:avail, :back, :disc)</code>
        </p>
        <p>For more information on expression attribute values, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeValues")
    expressionAttributeValues: option<expressionAttributeValueMap>,
    @ocaml.doc("<p>One or more substitution tokens for attribute names in an expression. The following
            are some use cases for using <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>To access an attribute whose name conflicts with a DynamoDB reserved
                    word.</p>
            </li>
            <li>
                <p>To create a placeholder for repeating occurrences of an attribute name in an
                    expression.</p>
            </li>
            <li>
                <p>To prevent special characters in an attribute name from being misinterpreted
                    in an expression.</p>
            </li>
         </ul>
        <p>Use the <b>#</b> character in an expression to dereference
            an attribute name. For example, consider the following attribute name:</p>
        <ul>
            <li>
                <p>
                    <code>Percentile</code>
                </p>
            </li>
         </ul>
        <p>The name of this attribute conflicts with a reserved word, so it cannot be used
            directly in an expression. (For the complete list of reserved words, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved Words</a> in the <i>Amazon DynamoDB Developer
            Guide</i>). To work around this, you could specify the following for
                <code>ExpressionAttributeNames</code>:</p>
        <ul>
            <li>
                <p>
                    <code>{\"#P\":\"Percentile\"}</code>
                </p>
            </li>
         </ul>
        <p>You could then use this substitution in an expression, as in this example:</p>
        <ul>
            <li>
                <p>
                    <code>#P = :val</code>
                </p>
            </li>
         </ul>
        <note>
            <p>Tokens that begin with the <b>:</b> character are
                    <i>expression attribute values</i>, which are placeholders for the
                actual value at runtime.</p>
        </note>
        <p>For more information on expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ExpressionAttributeNames")
    expressionAttributeNames: option<expressionAttributeNameMap>,
    @ocaml.doc("<p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code>
            to succeed.</p>
        <p>An expression can contain any of the following:</p>
        <ul>
            <li>
                <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
                        contains | begins_with | size</code>
                </p>
                <p>These function names are case-sensitive.</p>
            </li>
            <li>
                <p>Comparison operators: <code>= | <> |
            < | > | <= | >= |
            BETWEEN | IN </code>
                </p>
            </li>
            <li>
                <p> Logical operators: <code>AND | OR | NOT</code>
                </p>
            </li>
         </ul>
        <p>For more information about condition expressions, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html\">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionExpression")
    conditionExpression: option<conditionExpression>,
    @ocaml.doc("<p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
            the response includes statistics about item collections, if any, that were modified
            during the operation are returned in the response. If set to <code>NONE</code> (the
            default), no statistics are returned.</p>")
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
            before they were deleted. For <code>DeleteItem</code>, the valid values are:</p>
        <ul>
            <li>
                <p>
                    <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
                    value is <code>NONE</code>, then nothing is returned. (This setting is the
                    default for <code>ReturnValues</code>.)</p>
            </li>
            <li>
                <p>
                    <code>ALL_OLD</code> - The content of the old item is returned.</p>
            </li>
         </ul>
        <note>
            <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
                however, <code>DeleteItem</code> does not recognize any values other than
                    <code>NONE</code> or <code>ALL_OLD</code>.</p>
        </note>")
    @as("ReturnValues")
    returnValues: option<returnValue>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html\">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConditionalOperator")
    conditionalOperator: option<conditionalOperator>,
    @ocaml.doc("<p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
            information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html\">Expected</a> in the <i>Amazon DynamoDB Developer
            Guide</i>.</p>")
    @as("Expected")
    expected: option<expectedAttributeMap>,
    @ocaml.doc("<p>A map of attribute names to <code>AttributeValue</code> objects, representing the
            primary key of the item to delete.</p>
        <p>For the primary key, you must provide all of the attributes. For example, with a
            simple primary key, you only need to provide a value for the partition key. For a
            composite primary key, you must provide values for both the partition key and the sort
            key.</p>")
    @as("Key")
    key: key,
    @ocaml.doc("<p>The name of the table from which to delete the item.</p>") @as("TableName")
    tableName: tableName,
  }
  @ocaml.doc("<p>Represents the output of a <code>DeleteItem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about item collections, if any, that were affected by the
                <code>DeleteItem</code> operation. <code>ItemCollectionMetrics</code> is only
            returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the
            table does not have any local secondary indexes, this information is not returned in the
            response.</p>
        <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
        <ul>
            <li>
                <p>
                    <code>ItemCollectionKey</code> - The partition key value of the item collection.
                    This is the same as the partition key value of the item itself.</p>
            </li>
            <li>
                <p>
                    <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
                    gigabytes. This value is a two-element array containing a lower bound and an
                    upper bound for the estimate. The estimate includes the size of all the items in
                    the table, plus the size of all attributes projected into all of the local
                    secondary indexes on that table. Use this estimate to measure whether a local
                    secondary index is approaching its size limit.</p>
                <p>The estimate is subject to change over time; therefore, do not rely on the
                    precision or accuracy of the estimate.</p>
            </li>
         </ul>")
    @as("ItemCollectionMetrics")
    itemCollectionMetrics: option<itemCollectionMetrics>,
    @ocaml.doc("<p>The capacity units consumed by the <code>DeleteItem</code> operation. The data
            returned includes the total provisioned throughput consumed, along with statistics for
            the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is
            only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For
            more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html\">Provisioned Mode</a> in the <i>Amazon DynamoDB Developer
                Guide</i>.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacity>,
    @ocaml.doc("<p>A map of attribute names to <code>AttributeValue</code> objects, representing the item
            as it appeared before the <code>DeleteItem</code> operation. This map appears in the
            response only if <code>ReturnValues</code> was specified as <code>ALL_OLD</code> in the
            request.</p>")
    @as("Attributes")
    attributes: option<attributeMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "DeleteItemCommand"
  let make = (
    ~key,
    ~tableName,
    ~expressionAttributeValues=?,
    ~expressionAttributeNames=?,
    ~conditionExpression=?,
    ~returnItemCollectionMetrics=?,
    ~returnConsumedCapacity=?,
    ~returnValues=?,
    ~conditionalOperator=?,
    ~expected=?,
    (),
  ) =>
    new({
      expressionAttributeValues: expressionAttributeValues,
      expressionAttributeNames: expressionAttributeNames,
      conditionExpression: conditionExpression,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      returnConsumedCapacity: returnConsumedCapacity,
      returnValues: returnValues,
      conditionalOperator: conditionalOperator,
      expected: expected,
      key: key,
      tableName: tableName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchExecuteStatement = {
  type t
  type request = {
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>The list of PartiQL statements representing the batch to run.</p>")
    @as("Statements")
    statements: partiQLBatchRequest,
  }
  type response = {
    @ocaml.doc("<p>The capacity units consumed by the entire operation. The values of the list are
            ordered according to the ordering of the statements.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacityMultiple>,
    @ocaml.doc("<p>The response to each PartiQL statement in the batch.</p>") @as("Responses")
    responses: option<partiQLBatchResponse>,
  }
  @module("@aws-sdk/client-dynamodb") @new
  external new: request => t = "BatchExecuteStatementCommand"
  let make = (~statements, ~returnConsumedCapacity=?, ()) =>
    new({returnConsumedCapacity: returnConsumedCapacity, statements: statements})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransactWriteItems = {
  type t
  type request = {
    @ocaml.doc("<p>Providing a <code>ClientRequestToken</code> makes the call to
                <code>TransactWriteItems</code> idempotent, meaning that multiple identical calls
            have the same effect as one single call.</p>
        <p>Although multiple identical calls using the same client request token produce the same
            result on the server (no side effects), the responses to the calls might not be the
            same. If the <code>ReturnConsumedCapacity></code> parameter is set, then the initial
                <code>TransactWriteItems</code> call returns the amount of write capacity units
            consumed in making the changes. Subsequent <code>TransactWriteItems</code> calls with
            the same client token return the number of read capacity units consumed in reading the
            item.</p>
        <p>A client request token is valid for 10 minutes after the first request that uses it is
            completed. After 10 minutes, any request with the same client token is treated as a new
            request. Do not resubmit the same request with the same client token for more than 10
            minutes, or the result might not be idempotent.</p>
        <p>If you submit a request with the same client token but a change in other parameters
            within the 10-minute idempotency window, DynamoDB returns an
                <code>IdempotentParameterMismatch</code> exception.</p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
            the response includes statistics about item collections (if any), that were modified
            during the operation and are returned in the response. If set to <code>NONE</code> (the
            default), no statistics are returned. </p>")
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>An ordered array of up to 25 <code>TransactWriteItem</code> objects, each of which
            contains a <code>ConditionCheck</code>, <code>Put</code>, <code>Update</code>, or
                <code>Delete</code> object. These can operate on items in different tables, but the
            tables must reside in the same Amazon Web Services account and Region, and no two of them
            can operate on the same item. </p>")
    @as("TransactItems")
    transactItems: transactWriteItemList,
  }
  type response = {
    @ocaml.doc("<p>A list of tables that were processed by <code>TransactWriteItems</code> and, for each
            table, information about any item collections that were affected by individual
                <code>UpdateItem</code>, <code>PutItem</code>, or <code>DeleteItem</code>
            operations. </p>")
    @as("ItemCollectionMetrics")
    itemCollectionMetrics: option<itemCollectionMetricsPerTable>,
    @ocaml.doc("<p>The capacity units consumed by the entire <code>TransactWriteItems</code> operation.
            The values of the list are ordered according to the ordering of the
                <code>TransactItems</code> request parameter. </p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacityMultiple>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "TransactWriteItemsCommand"
  let make = (
    ~transactItems,
    ~clientRequestToken=?,
    ~returnItemCollectionMetrics=?,
    ~returnConsumedCapacity=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      returnConsumedCapacity: returnConsumedCapacity,
      transactItems: transactItems,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TransactGetItems = {
  type t
  type request = {
    @ocaml.doc("<p>A value of <code>TOTAL</code> causes consumed capacity information to be returned, and
            a value of <code>NONE</code> prevents that information from being returned. No other
            value is valid.</p>")
    @as("ReturnConsumedCapacity")
    returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>An ordered array of up to 25 <code>TransactGetItem</code> objects, each of which
            contains a <code>Get</code> structure.</p>")
    @as("TransactItems")
    transactItems: transactGetItemList,
  }
  type response = {
    @ocaml.doc("<p>An ordered array of up to 25 <code>ItemResponse</code> objects, each of which
            corresponds to the <code>TransactGetItem</code> object in the same position in the
                <i>TransactItems</i> array. Each <code>ItemResponse</code> object
            contains a Map of the name-value pairs that are the projected attributes of the
            requested item.</p>
        <p>If a requested item could not be retrieved, the corresponding
                <code>ItemResponse</code> object is Null, or if the requested item has no projected
            attributes, the corresponding <code>ItemResponse</code> object is an empty Map. </p>")
    @as("Responses")
    responses: option<itemResponseList>,
    @ocaml.doc("<p>If the <i>ReturnConsumedCapacity</i> value was <code>TOTAL</code>, this
            is an array of <code>ConsumedCapacity</code> objects, one for each table addressed by
                <code>TransactGetItem</code> objects in the <i>TransactItems</i>
            parameter. These <code>ConsumedCapacity</code> objects report the read-capacity units
            consumed by the <code>TransactGetItems</code> call in that table.</p>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacityMultiple>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "TransactGetItemsCommand"
  let make = (~transactItems, ~returnConsumedCapacity=?, ()) =>
    new({returnConsumedCapacity: returnConsumedCapacity, transactItems: transactItems})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetItem = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>BatchGetItem</code> operation.</p>")
  type request = {
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>A map of one or more table names and, for each table, a map that describes one or more
            items to retrieve from that table. Each table name can be used only once per
                <code>BatchGetItem</code> request.</p>
        <p>Each element in the map of items to retrieve consists of the following:</p>
        <ul>
            <li>
                <p>
                    <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read
                    is used; if <code>false</code> (the default), an eventually consistent read is
                    used.</p>
            </li>
            <li>
                <p>
                    <code>ExpressionAttributeNames</code> - One or more substitution tokens for
                    attribute names in the <code>ProjectionExpression</code> parameter. The
                    following are some use cases for using
                    <code>ExpressionAttributeNames</code>:</p>
                <ul>
                  <li>
                        <p>To access an attribute whose name conflicts with a DynamoDB reserved
                            word.</p>
                    </li>
                  <li>
                        <p>To create a placeholder for repeating occurrences of an attribute name
                            in an expression.</p>
                    </li>
                  <li>
                        <p>To prevent special characters in an attribute name from being
                            misinterpreted in an expression.</p>
                    </li>
               </ul>
                <p>Use the <b>#</b> character in an expression to
                    dereference an attribute name. For example, consider the following attribute
                    name:</p>
                <ul>
                  <li>
                        <p>
                            <code>Percentile</code>
                        </p>
                    </li>
               </ul>
                <p>The name of this attribute conflicts with a reserved word, so it cannot be
                    used directly in an expression. (For the complete list of reserved words, see
                        <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html\">Reserved
                        Words</a> in the <i>Amazon DynamoDB Developer Guide</i>).
                    To work around this, you could specify the following for
                        <code>ExpressionAttributeNames</code>:</p>
                <ul>
                  <li>
                        <p>
                            <code>{\"#P\":\"Percentile\"}</code>
                        </p>
                    </li>
               </ul>
                <p>You could then use this substitution in an expression, as in this
                    example:</p>
                <ul>
                  <li>
                        <p>
                            <code>#P = :val</code>
                        </p>
                    </li>
               </ul>
                <note>
                    <p>Tokens that begin with the <b>:</b> character
                        are <i>expression attribute values</i>, which are placeholders
                        for the actual value at runtime.</p>
                </note>
                <p>For more information about expression attribute names, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
                        Developer Guide</i>.</p>
            </li>
            <li>
                <p>
                    <code>Keys</code> - An array of primary key attribute values that define
                    specific items in the table. For each primary key, you must provide
                        <i>all</i> of the key attributes. For example, with a simple
                    primary key, you only need to provide the partition key value. For a composite
                    key, you must provide <i>both</i> the partition key value and the
                    sort key value.</p>
            </li>
            <li>
                <p>
                    <code>ProjectionExpression</code> - A string that identifies one or more
                    attributes to retrieve from the table. These attributes can include scalars,
                    sets, or elements of a JSON document. The attributes in the expression must be
                    separated by commas.</p>
                <p>If no attribute names are specified, then all attributes are returned. If any
                    of the requested attributes are not found, they do not appear in the
                    result.</p>
                <p>For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html\">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
                        Developer Guide</i>.</p>
            </li>
            <li>
                <p>
                    <code>AttributesToGet</code> - This is a legacy parameter. Use
                        <code>ProjectionExpression</code> instead. For more information, see <a href=\"https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html\">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
                        Guide</i>. </p>

            </li>
         </ul>")
    @as("RequestItems")
    requestItems: batchGetRequestMap,
  }
  @ocaml.doc("<p>Represents the output of a <code>BatchGetItem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The read capacity units consumed by the entire <code>BatchGetItem</code>
            operation.</p>
        <p>Each element consists of:</p>
        <ul>
            <li>
                <p>
                    <code>TableName</code> - The table that consumed the provisioned
                    throughput.</p>
            </li>
            <li>
                <p>
                    <code>CapacityUnits</code> - The total number of capacity units consumed.</p>
            </li>
         </ul>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacityMultiple>,
    @ocaml.doc("<p>A map of tables and their respective keys that were not processed with the current
            response. The <code>UnprocessedKeys</code> value is in the same form as
                <code>RequestItems</code>, so the value can be provided directly to a subsequent
                <code>BatchGetItem</code> operation. For more information, see
                <code>RequestItems</code> in the Request Parameters section.</p>
        <p>Each element consists of:</p>
        <ul>
            <li>
                <p>
                    <code>Keys</code> - An array of primary key attribute values that define
                    specific items in the table.</p>
            </li>
            <li>
                <p>
                    <code>ProjectionExpression</code> - One or more attributes to be retrieved from
                    the table or index. By default, all attributes are returned. If a requested
                    attribute is not found, it does not appear in the result.</p>
            </li>
            <li>
                <p>
                    <code>ConsistentRead</code> - The consistency of a read operation. If set to
                        <code>true</code>, then a strongly consistent read is used; otherwise, an
                    eventually consistent read is used.</p>
            </li>
         </ul>
        <p>If there are no unprocessed keys remaining, the response contains an empty
                <code>UnprocessedKeys</code> map.</p>")
    @as("UnprocessedKeys")
    unprocessedKeys: option<batchGetRequestMap>,
    @ocaml.doc("<p>A map of table name to a list of items. Each object in <code>Responses</code> consists
            of a table name, along with a map of attribute data consisting of the data type and
            attribute value.</p>")
    @as("Responses")
    responses: option<batchGetResponseMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "BatchGetItemCommand"
  let make = (~requestItems, ~returnConsumedCapacity=?, ()) =>
    new({returnConsumedCapacity: returnConsumedCapacity, requestItems: requestItems})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchWriteItem = {
  type t
  @ocaml.doc("<p>Represents the input of a <code>BatchWriteItem</code> operation.</p>")
  type request = {
    @ocaml.doc("<p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
            the response includes statistics about item collections, if any, that were modified
            during the operation are returned in the response. If set to <code>NONE</code> (the
            default), no statistics are returned.</p>")
    @as("ReturnItemCollectionMetrics")
    returnItemCollectionMetrics: option<returnItemCollectionMetrics>,
    @as("ReturnConsumedCapacity") returnConsumedCapacity: option<returnConsumedCapacity>,
    @ocaml.doc("<p>A map of one or more table names and, for each table, a list of operations to be
            performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each element in the
            map consists of the following:</p>
        <ul>
            <li>
                <p>
                    <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
                    specified item. The item to be deleted is identified by a <code>Key</code>
                    subelement:</p>
                <ul>
                  <li>
                        <p>
                            <code>Key</code> - A map of primary key attribute values that uniquely
                            identify the item. Each entry in this map consists of an attribute name
                            and an attribute value. For each primary key, you must provide
                                <i>all</i> of the key attributes. For example, with a
                            simple primary key, you only need to provide a value for the partition
                            key. For a composite primary key, you must provide values for
                                <i>both</i> the partition key and the sort key.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
                    specified item. The item to be put is identified by an <code>Item</code>
                    subelement:</p>
                <ul>
                  <li>
                        <p>
                            <code>Item</code> - A map of attributes and their values. Each entry in
                            this map consists of an attribute name and an attribute value. Attribute
                            values must not be null; string and binary type attributes must have
                            lengths greater than zero; and set type attributes must not be empty.
                            Requests that contain empty values are rejected with a
                                <code>ValidationException</code> exception.</p>
                        <p>If you specify any attributes that are part of an index key, then the
                            data types for those attributes must match those of the schema in the
                            table's attribute definition.</p>
                    </li>
               </ul>
            </li>
         </ul>")
    @as("RequestItems")
    requestItems: batchWriteItemRequestMap,
  }
  @ocaml.doc("<p>Represents the output of a <code>BatchWriteItem</code> operation.</p>")
  type response = {
    @ocaml.doc("<p>The capacity units consumed by the entire <code>BatchWriteItem</code>
            operation.</p>
        <p>Each element consists of:</p>
        <ul>
            <li>
                <p>
                    <code>TableName</code> - The table that consumed the provisioned
                    throughput.</p>
            </li>
            <li>
                <p>
                    <code>CapacityUnits</code> - The total number of capacity units consumed.</p>
            </li>
         </ul>")
    @as("ConsumedCapacity")
    consumedCapacity: option<consumedCapacityMultiple>,
    @ocaml.doc("<p>A list of tables that were processed by <code>BatchWriteItem</code> and, for each
            table, information about any item collections that were affected by individual
                <code>DeleteItem</code> or <code>PutItem</code> operations.</p>
        <p>Each entry consists of the following subelements:</p>
        <ul>
            <li>
                <p>
                    <code>ItemCollectionKey</code> - The partition key value of the item collection.
                    This is the same as the partition key value of the item.</p>
            </li>
            <li>
                <p>
                    <code>SizeEstimateRangeGB</code> - An estimate of item collection size,
                    expressed in GB. This is a two-element array containing a lower bound and an
                    upper bound for the estimate. The estimate includes the size of all the items in
                    the table, plus the size of all attributes projected into all of the local
                    secondary indexes on the table. Use this estimate to measure whether a local
                    secondary index is approaching its size limit.</p>
                <p>The estimate is subject to change over time; therefore, do not rely on the
                    precision or accuracy of the estimate.</p>
            </li>
         </ul>")
    @as("ItemCollectionMetrics")
    itemCollectionMetrics: option<itemCollectionMetricsPerTable>,
    @ocaml.doc("<p>A map of tables and requests against those tables that were not processed. The
                <code>UnprocessedItems</code> value is in the same form as
            <code>RequestItems</code>, so you can provide this value directly to a subsequent
                <code>BatchGetItem</code> operation. For more information, see
                <code>RequestItems</code> in the Request Parameters section.</p>
        <p>Each <code>UnprocessedItems</code> entry consists of a table name and, for that table,
            a list of operations to perform (<code>DeleteRequest</code> or
            <code>PutRequest</code>).</p>
        <ul>
            <li>
                <p>
                    <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
                    specified item. The item to be deleted is identified by a <code>Key</code>
                    subelement:</p>
                <ul>
                  <li>
                        <p>
                            <code>Key</code> - A map of primary key attribute values that uniquely
                            identify the item. Each entry in this map consists of an attribute name
                            and an attribute value.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
                    specified item. The item to be put is identified by an <code>Item</code>
                    subelement:</p>
                <ul>
                  <li>
                        <p>
                            <code>Item</code> - A map of attributes and their values. Each entry in
                            this map consists of an attribute name and an attribute value. Attribute
                            values must not be null; string and binary type attributes must have
                            lengths greater than zero; and set type attributes must not be empty.
                            Requests that contain empty values will be rejected with a
                                <code>ValidationException</code> exception.</p>
                        <p>If you specify any attributes that are part of an index key, then the
                            data types for those attributes must match those of the schema in the
                            table's attribute definition.</p>
                    </li>
               </ul>
            </li>
         </ul>
        <p>If there are no unprocessed items remaining, the response contains an empty
                <code>UnprocessedItems</code> map.</p>")
    @as("UnprocessedItems")
    unprocessedItems: option<batchWriteItemRequestMap>,
  }
  @module("@aws-sdk/client-dynamodb") @new external new: request => t = "BatchWriteItemCommand"
  let make = (~requestItems, ~returnItemCollectionMetrics=?, ~returnConsumedCapacity=?, ()) =>
    new({
      returnItemCollectionMetrics: returnItemCollectionMetrics,
      returnConsumedCapacity: returnConsumedCapacity,
      requestItems: requestItems,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
