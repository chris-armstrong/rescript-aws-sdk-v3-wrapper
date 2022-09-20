type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-cassandra") @new
external createClient: unit => awsServiceClient = "CassandraClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type kmsKeyARN = string
type timestamp_ = Js.Date.t
type timeToLiveStatus = [@as("ENABLED") #ENABLED]
type throughputMode = [@as("PROVISIONED") #PROVISIONED | @as("PAY_PER_REQUEST") #PAY_PER_REQUEST]
type tagValue = string
type tagKey = string
type tableStatus = [
  | @as("INACCESSIBLE_ENCRYPTION_CREDENTIALS") #INACCESSIBLE_ENCRYPTION_CREDENTIALS
  | @as("RESTORING") #RESTORING
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
  | @as("ACTIVE") #ACTIVE
]
type tableName = string
type sortOrder = [@as("DESC") #DESC | @as("ASC") #ASC]
type pointInTimeRecoveryStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type nextToken = string
type maxResults = int
type keyspaceName = string
type genericString = string
type encryptionType = [
  | @as("AWS_OWNED_KMS_KEY") #AWS_OWNED_KMS_KEY
  | @as("CUSTOMER_MANAGED_KMS_KEY") #CUSTOMER_MANAGED_KMS_KEY
]
type defaultTimeToLive = int
@ocaml.doc("<p>An optional comment that describes the table.</p>")
type comment = {@ocaml.doc("<p>An optional description of the table.</p>") message: baseString}
type capacityUnits = float
type arn = string
@ocaml.doc("<p>Enable custom Time to Live (TTL) settings for rows and columns without setting a TTL default for the specified table.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_enabling\">Enabling TTL on tables</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
type timeToLive = {
  @ocaml.doc(
    "<p>Shows how to enable custom Time to Live (TTL) settings for the specified table.</p>"
  )
  status: timeToLiveStatus,
}
@ocaml.doc("<p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single Amazon Keyspaces resource.</p>
         <p>Amazon Web Services-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. 
         Amazon Web Services-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the 
         prefix <code>user:</code> in the Cost Allocation Report. You cannot backdate the application of a tag.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html\">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag. Tag values are case-sensitive and can be null.</p>")
  value: tagValue,
  @ocaml.doc("<p>The key of the tag. Tag keys are case sensitive. Each Amazon Keyspaces resource can only have up to one tag with the same key. If you try to add an 
         existing tag (same key), the existing tag value will be updated to the new value.</p>")
  key: tagKey,
}
@ocaml.doc(
  "<p>Returns the name of the specified table, the keyspace it is stored in, and the unique identifier in the format of an Amazon Resource Name (ARN).</p>"
)
type tableSummary = {
  @ocaml.doc(
    "<p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>"
  )
  resourceArn: arn,
  @ocaml.doc("<p>The name of the table.</p>") tableName: tableName,
  @ocaml.doc("<p>The name of the keyspace that the table is stored in.</p>")
  keyspaceName: keyspaceName,
}
@ocaml.doc(
  "<p>The static columns of the table. Static columns store values that are shared by all rows in the same partition.</p>"
)
type staticColumn = {@ocaml.doc("<p>The name of the static column.</p>") name: genericString}
@ocaml.doc("<p>The point-in-time recovery status of the specified table.</p>")
type pointInTimeRecoverySummary = {
  @ocaml.doc(
    "<p>Specifies the earliest possible restore point of the table in ISO 8601 format.</p>"
  )
  earliestRestorableTimestamp: option<timestamp_>,
  @ocaml.doc(
    "<p>Shows if point-in-time recovery is enabled or disabled for the specified table.</p>"
  )
  status: pointInTimeRecoveryStatus,
}
@ocaml.doc("<p>Point-in-time recovery (PITR) helps protect your Amazon Keyspaces tables from accidental write or delete operations by providing you continuous backups of your table data.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html\">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
type pointInTimeRecovery = {
  @ocaml.doc("<p>The options are:</p>
         <p>• <code>ENABLED</code>
         </p>
         <p>• <code>DISABLED</code>
         </p>")
  status: pointInTimeRecoveryStatus,
}
@ocaml.doc("<p>The partition key portion of the primary key is required 
         and determines how Amazon Keyspaces stores the data. 
         The partition key can be a single column, or it can be a compound value composed of two or more columns.</p>")
type partitionKey = {
  @ocaml.doc("<p>The name(s) of the partition key column(s).</p>") name: genericString,
}
@ocaml.doc("<p>Represents the properties of a keyspace.</p>")
type keyspaceSummary = {
  @ocaml.doc(
    "<p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>"
  )
  resourceArn: arn,
  @ocaml.doc("<p>The name of the keyspace.</p>") keyspaceName: keyspaceName,
}
@ocaml.doc("<p>Amazon Keyspaces encrypts and decrypts the table data at rest transparently and integrates with Key Management Service for storing and managing the encryption key. 
         You can choose one of the following KMS keys (KMS keys):</p>
         <p>• Amazon Web Services owned key - This is the default encryption type. The key is owned by Amazon Keyspaces (no additional charge). </p>
         <p>• Customer managed key - This key is stored in your account and is created, owned, and managed by you. You have full control over the customer 
               managed key (KMS charges apply).</p>
         <p>For more information about encryption at rest in Amazon Keyspaces, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>
         <p>For more information about KMS, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">KMS management service concepts</a> in the <i>Key Management Service Developer Guide</i>.</p>")
type encryptionSpecification = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the customer managed KMS key, for example <code>kms_key_identifier:ARN</code>.</p>"
  )
  kmsKeyIdentifier: option<kmsKeyARN>,
  @ocaml.doc("<p>The encryption option specified for the table. You can choose one of the following KMS keys (KMS keys):</p>
         <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
         <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. 
               This option 
               requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
         <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
  @as("type")
  type_: encryptionType,
}
@ocaml.doc("<p>The names and data types of regular columns.</p>")
type columnDefinition = {
  @ocaml.doc("<p>The data type of the column. For a list of available data types, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types\">Data types</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
  @as("type")
  type_: genericString,
  @ocaml.doc("<p>The name of the column.</p>") name: genericString,
}
@ocaml.doc(
  "<p>The optional clustering column portion of your primary key determines how the data is clustered and sorted within each partition.</p>"
)
type clusteringKey = {
  @ocaml.doc(
    "<p>Sets the ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p>"
  )
  orderBy: sortOrder,
  @ocaml.doc("<p>The name(s) of the clustering column(s).</p>") name: genericString,
}
@ocaml.doc("<p>The read/write throughput capacity mode for a table. The options are:</p>
         <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
         <p>• <code>throughputMode:PROVISIONED</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
type capacitySpecificationSummary = {
  @ocaml.doc(
    "<p>The timestamp of the last operation that changed the provisioned throughput capacity of a table.</p>"
  )
  lastUpdateToPayPerRequestTimestamp: option<timestamp_>,
  @ocaml.doc("<p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code> 
            <code>(WCUs)</code>.</p>")
  writeCapacityUnits: option<capacityUnits>,
  @ocaml.doc("<p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code> 
            <code>(RCUs)</code>.</p>")
  readCapacityUnits: option<capacityUnits>,
  @ocaml.doc("<p>The read/write throughput capacity mode for a table. The options are:</p>
         <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
         <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
               <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input. </p>
         <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
  throughputMode: throughputMode,
}
@ocaml.doc("<p>Amazon Keyspaces has two read/write capacity modes for processing reads and writes on your tables: </p>
         <p>• On-demand (default)</p>
         <p>• Provisioned</p>
         <p> The read/write capacity mode that you choose controls how you are charged for read and
         write throughput and how table throughput capacity is managed.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
type capacitySpecification = {
  @ocaml.doc("<p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code> 
            <code>(WCUs)</code>.</p>")
  writeCapacityUnits: option<capacityUnits>,
  @ocaml.doc("<p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code> 
            <code>(RCUs)</code>.</p>")
  readCapacityUnits: option<capacityUnits>,
  @ocaml.doc("<p>The read/write throughput capacity mode for a table. The options are:</p>
         <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
         <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
               <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
         <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
  throughputMode: throughputMode,
}
type tagList_ = array<tag>
type tableSummaryList = array<tableSummary>
type staticColumnList = array<staticColumn>
type partitionKeyList = array<partitionKey>
type keyspaceSummaryList = array<keyspaceSummary>
type columnDefinitionList = array<columnDefinition>
type clusteringKeyList = array<clusteringKey>
@ocaml.doc("<p>Describes the schema of the table.</p>")
type schemaDefinition = {
  @ocaml.doc(
    "<p>The columns that have been defined as <code>STATIC</code>. Static columns store values that are shared by all rows in the same partition.</p>"
  )
  staticColumns: option<staticColumnList>,
  @ocaml.doc("<p>The columns that are part of the clustering key of the table.</p>")
  clusteringKeys: option<clusteringKeyList>,
  @ocaml.doc("<p>The columns that are part of the partition key of the table .</p>")
  partitionKeys: partitionKeyList,
  @ocaml.doc("<p>The regular columns of the table.</p>") allColumns: columnDefinitionList,
}
@ocaml.doc("<p>Amazon Keyspaces (for Apache Cassandra) is a scalable,
        highly available, and managed Apache Cassandra-compatible database service. Amazon Keyspaces makes it easy to migrate,
        run, and scale Cassandra workloads in the Amazon Web Services Cloud. With just a few clicks on the Amazon Web Services Management Console or a few lines of code, 
        you can create keyspaces and tables in Amazon Keyspaces, without deploying any infrastructure or installing software. </p>
         <p>In addition to supporting Cassandra Query Language (CQL) requests via open-source Cassandra drivers, 
        Amazon Keyspaces supports data definition language (DDL) operations to manage keyspaces and tables using the Amazon Web Services SDK and CLI. This API reference describes
        the supported DDL operations in detail.</p>
         <p>For the list of all supported CQL APIs, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html\">Supported Cassandra APIs, operations, and data types 
        in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer
              Guide</i>.</p>
         <p>To learn how Amazon Keyspaces API actions are recorded with CloudTrail, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail\">Amazon Keyspaces information in CloudTrail</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>
         <p>For more information about Amazon Web Services APIs, for example how to implement retry logic or how to sign Amazon Web Services API requests, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-apis.html\">Amazon Web Services APIs</a> in the <i>General Reference</i>.</p>")
module GetKeyspace = {
  type t
  type request = {@ocaml.doc("<p>The name of the keyspace.</p>") keyspaceName: keyspaceName}
  type response = {
    @ocaml.doc("<p>The ARN of the keyspace.</p>") resourceArn: arn,
    @ocaml.doc("<p>The name of the keyspace.</p>") keyspaceName: keyspaceName,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "GetKeyspaceCommand"
  let make = (~keyspaceName, ()) => new({keyspaceName: keyspaceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteTable = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the table to be deleted.</p>") tableName: tableName,
    @ocaml.doc("<p>The name of the keyspace of the to be deleted table.</p>")
    keyspaceName: keyspaceName,
  }
  type response = {.}
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "DeleteTableCommand"
  let make = (~tableName, ~keyspaceName, ()) => new({tableName, keyspaceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteKeyspace = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the keyspace to be deleted.</p>") keyspaceName: keyspaceName,
  }
  type response = {.}
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "DeleteKeyspaceCommand"
  let make = (~keyspaceName, ()) => new({keyspaceName: keyspaceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateTable = {
  type t
  type request = {
    @ocaml.doc("<p>The default Time to Live setting in seconds for the table.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl\">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    defaultTimeToLive: option<defaultTimeToLive>,
    @ocaml.doc("<p>Modifies Time to Live custom settings for the table. The options are:</p>
         <p>• <code>status:enabled</code> 
         </p>
         <p>• <code>status:disabled</code> 
         </p>
         <p>The default is <code>status:disabled</code>. After
         <code>ttl</code> is enabled, you can't disable it
         for the table.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html\">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    ttl: option<timeToLive>,
    @ocaml.doc("<p>Modifies the <code>pointInTimeRecovery</code> settings of the table. The options are:</p>
         <p>• <code>ENABLED</code> 
         </p>
         <p>• <code>DISABLED</code> 
         </p>
         <p>If it's not specified, the default is <code>DISABLED</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html\">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    pointInTimeRecovery: option<pointInTimeRecovery>,
    @ocaml.doc("<p>Modifies the encryption settings of the table. You can choose one of the following KMS key (KMS key):</p>
         <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
         <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. 
               This option 
               requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
         <p>The default is <code>AWS_OWNED_KMS_KEY</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    encryptionSpecification: option<encryptionSpecification>,
    @ocaml.doc("<p>Modifies the read/write throughput capacity mode for the table. The options are:</p>
         <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
         <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
               <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
         <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    capacitySpecification: option<capacitySpecification>,
    @ocaml.doc("<p>For each column to be added to the specified table:</p>
         <p>• <code>name</code>  -  The name
               of the column.</p>
         <p>• <code>type</code>  -  An Amazon Keyspaces
               data type. For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types\">Data types</a> in the <i>Amazon Keyspaces Developer
                     Guide</i>.</p>")
    addColumns: option<columnDefinitionList>,
    @ocaml.doc("<p>The name of the table.</p>") tableName: tableName,
    @ocaml.doc("<p>The name of the keyspace the specified table is stored in.</p>")
    keyspaceName: keyspaceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the modified table.</p>") resourceArn: arn,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "UpdateTableCommand"
  let make = (
    ~tableName,
    ~keyspaceName,
    ~defaultTimeToLive=?,
    ~ttl=?,
    ~pointInTimeRecovery=?,
    ~encryptionSpecification=?,
    ~capacitySpecification=?,
    ~addColumns=?,
    (),
  ) =>
    new({
      defaultTimeToLive,
      ttl,
      pointInTimeRecovery,
      encryptionSpecification,
      capacitySpecification,
      addColumns,
      tableName,
      keyspaceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of existing tags to be removed from the Amazon Keyspaces resource.</p>")
    tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Keyspaces resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>"
    )
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "UntagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be assigned to the Amazon Keyspaces resource.</p>") tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to which to add tags.</p>"
    )
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RestoreTable = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pair tags to be
         attached to the restored table. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html\">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    tagsOverride: option<tagList_>,
    @ocaml.doc("<p>Specifies the <code>pointInTimeRecovery</code> settings for the target
            table. The options are:</p>
         <p>• <code>ENABLED</code> 
         </p>
         <p>• <code>DISABLED</code>
         </p>
         <p>If it's not specified, the default is <code>DISABLED</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html\">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
               Guide</i>.</p>")
    pointInTimeRecoveryOverride: option<pointInTimeRecovery>,
    @ocaml.doc("<p>Specifies the encryption settings for the target table. You can choose one of the following KMS key (KMS key):</p>
         <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>
         <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. 
               This option 
               requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p>
         <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    encryptionSpecificationOverride: option<encryptionSpecification>,
    @ocaml.doc("<p>Specifies the read/write throughput capacity mode for the target table. The options are:</p>
         <p>• <code>throughputMode:PAY_PER_REQUEST</code>
         </p>
         <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
            <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
         <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    capacitySpecificationOverride: option<capacitySpecification>,
    @ocaml.doc("<p>The restore timestamp in ISO 8601 format.</p>")
    restoreTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The name of the target table.</p>") targetTableName: tableName,
    @ocaml.doc("<p>The name of the target keyspace.</p>") targetKeyspaceName: keyspaceName,
    @ocaml.doc("<p>The name of the source table.</p>") sourceTableName: tableName,
    @ocaml.doc("<p>The keyspace name of the source table.</p>") sourceKeyspaceName: keyspaceName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the restored table.</p>")
    restoredTableARN: arn,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "RestoreTableCommand"
  let make = (
    ~targetTableName,
    ~targetKeyspaceName,
    ~sourceTableName,
    ~sourceKeyspaceName,
    ~tagsOverride=?,
    ~pointInTimeRecoveryOverride=?,
    ~encryptionSpecificationOverride=?,
    ~capacitySpecificationOverride=?,
    ~restoreTimestamp=?,
    (),
  ) =>
    new({
      tagsOverride,
      pointInTimeRecoveryOverride,
      encryptionSpecificationOverride,
      capacitySpecificationOverride,
      restoreTimestamp,
      targetTableName,
      targetKeyspaceName,
      sourceTableName,
      sourceKeyspaceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of tags to return in the output. If the total number of tags available 
         is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, 
         provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.</p>")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A list of tags.</p>") tags: option<tagList_>,
    @ocaml.doc(
      "<p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-cassandra") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTables = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the keyspace.</p>") keyspaceName: keyspaceName,
    @ocaml.doc("<p>The total number of tables to return in the output. If the total number of tables available 
         is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, 
         provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>"
    )
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of tables.</p>") tables: option<tableSummaryList>,
    @ocaml.doc(
      "<p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "ListTablesCommand"
  let make = (~keyspaceName, ~maxResults=?, ~nextToken=?, ()) =>
    new({keyspaceName, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListKeyspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The total number of keyspaces to return in the output. If the total number of keyspaces available 
         is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, 
         provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>"
    )
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>A list of keyspaces.</p>") keyspaces: keyspaceSummaryList,
    @ocaml.doc(
      "<p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>"
    )
    nextToken: option<nextToken>,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "ListKeyspacesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateKeyspace = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pair tags to be attached to the keyspace.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html\">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name of the keyspace to be created.</p>") keyspaceName: keyspaceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>"
    )
    resourceArn: arn,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "CreateKeyspaceCommand"
  let make = (~keyspaceName, ~tags=?, ()) => new({tags, keyspaceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTable = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the table.</p>") tableName: tableName,
    @ocaml.doc("<p>The name of the keyspace that the table is stored in.</p>")
    keyspaceName: keyspaceName,
  }
  type response = {
    @ocaml.doc("<p>The the description of the specified table.</p>") comment: option<comment>,
    @ocaml.doc("<p>The default Time to Live settings of the specified table.</p>")
    defaultTimeToLive: option<defaultTimeToLive>,
    @ocaml.doc("<p>The custom Time to Live settings of the specified table.</p>")
    ttl: option<timeToLive>,
    @ocaml.doc("<p>The point-in-time recovery status of the specified table.</p>")
    pointInTimeRecovery: option<pointInTimeRecoverySummary>,
    @ocaml.doc("<p>The encryption settings of the specified table.</p>")
    encryptionSpecification: option<encryptionSpecification>,
    @ocaml.doc("<p>The read/write throughput capacity mode for a table. The options are:</p>
         <p>• <code>throughputMode:PAY_PER_REQUEST</code>
         </p>
         <p>• <code>throughputMode:PROVISIONED</code>
         </p>")
    capacitySpecification: option<capacitySpecificationSummary>,
    @ocaml.doc("<p>The schema definition of the specified table.</p>")
    schemaDefinition: option<schemaDefinition>,
    @ocaml.doc("<p>The current status of the specified table.</p>") status: option<tableStatus>,
    @ocaml.doc("<p>The creation timestamp of the specified table.</p>")
    creationTimestamp: option<timestamp_>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the specified table.</p>") resourceArn: arn,
    @ocaml.doc("<p>The name of the specified table.</p>") tableName: tableName,
    @ocaml.doc("<p>The name of the keyspace that the specified table is stored in.</p>")
    keyspaceName: keyspaceName,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "GetTableCommand"
  let make = (~tableName, ~keyspaceName, ()) => new({tableName, keyspaceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateTable = {
  type t
  type request = {
    @ocaml.doc("<p>A list of key-value pair tags to be
         attached to the resource. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html\">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The default Time to Live setting in seconds for the
         table.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl\">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    defaultTimeToLive: option<defaultTimeToLive>,
    @ocaml.doc("<p>Enables Time to Live custom settings for the
            table. The options are:</p>
         <p>• <code>status:enabled</code>
         </p>
         <p>• <code>status:disabled</code>
         </p>
         <p>The default is <code>status:disabled</code>. After
            <code>ttl</code> is enabled, you can't disable it
            for the table.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html\">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    ttl: option<timeToLive>,
    @ocaml.doc("<p>Specifies if <code>pointInTimeRecovery</code> is enabled or disabled for the
            table. The options are:</p>
         <p>• <code>ENABLED</code>
         </p>
         <p>• <code>DISABLED</code>
         </p>
         <p>If it's not specified, the 
               default is <code>DISABLED</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html\">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    pointInTimeRecovery: option<pointInTimeRecovery>,
    @ocaml.doc("<p>Specifies how the encryption key for encryption at rest is managed for the table.  
         You can choose one of the following KMS key (KMS key):</p>
         <p>• <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p>   
         <p>• <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. 
               This option 
               requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input.</p>
         <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>. </p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html\">Encryption at rest</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    encryptionSpecification: option<encryptionSpecification>,
    @ocaml.doc("<p>Specifies the read/write throughput capacity mode for the table. The options are:</p>
         <p>• <code>throughputMode:PAY_PER_REQUEST</code> and </p>
         <p>• <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires
                  <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p>
         <p>The default is
         <code>throughput_mode:PAY_PER_REQUEST</code>.</p>
         <p>For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html\">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer
            Guide</i>.</p>")
    capacitySpecification: option<capacitySpecification>,
    @ocaml.doc("<p>This parameter allows to enter a description of the table.</p>")
    comment: option<comment>,
    @ocaml.doc("<p>The <code>schemaDefinition</code> consists of the
         following parameters.</p>
         <p>For each column to be created:</p>
         <p>• <code>name</code>  -  The name
                           of the column.</p>
         <p>• <code>type</code>  -  An Amazon Keyspaces
                           data type. For more information, see <a href=\"https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types\">Data types</a> in the <i>Amazon Keyspaces Developer
                                 Guide</i>.</p>
         <p>The primary key of the table consists of the
                     following columns:</p>
         <p>• <code>partitionKeys</code> - The partition key can be a single column, or it can be a
                           compound value composed of two or more columns. The partition
                           key portion of the primary key is required and determines how
                           Amazon Keyspaces stores your data.</p>
         <p>• <code>name</code> - The name of each partition key column.</p>
         <p>• <code>clusteringKeys</code> - The optional clustering column portion of your primary key
                           determines how the data is clustered and sorted within each
                           partition.</p>
         <p>• <code>name</code> - The name of the clustering column. </p>
         <p>• <code>orderBy</code> - Sets the
                                 ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p>
         <p>To define a column as static use <code>staticColumns</code>  - 
         Static columns store values that are shared by all rows in the same partition:</p>
         <p>• <code>name</code>  -  The name
               of the column.</p>
         <p>• <code>type</code>  -  An Amazon Keyspaces
               data type.</p>")
    schemaDefinition: schemaDefinition,
    @ocaml.doc("<p>The name of the table.</p>") tableName: tableName,
    @ocaml.doc("<p>The name of the keyspace that the table is going to be created in.</p>")
    keyspaceName: keyspaceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>"
    )
    resourceArn: arn,
  }
  @module("@aws-sdk/client-cassandra") @new external new: request => t = "CreateTableCommand"
  let make = (
    ~schemaDefinition,
    ~tableName,
    ~keyspaceName,
    ~tags=?,
    ~defaultTimeToLive=?,
    ~ttl=?,
    ~pointInTimeRecovery=?,
    ~encryptionSpecification=?,
    ~capacitySpecification=?,
    ~comment=?,
    (),
  ) =>
    new({
      tags,
      defaultTimeToLive,
      ttl,
      pointInTimeRecovery,
      encryptionSpecification,
      capacitySpecification,
      comment,
      schemaDefinition,
      tableName,
      keyspaceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
