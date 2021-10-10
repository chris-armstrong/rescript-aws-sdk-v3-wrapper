type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-timestream") @new
external createClient: unit => awsServiceClient = "TimestreamWriteClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timeUnit = [
  | @as("NANOSECONDS") #NANOSECONDS
  | @as("MICROSECONDS") #MICROSECONDS
  | @as("SECONDS") #SECONDS
  | @as("MILLISECONDS") #MILLISECONDS
]
type tagValue = string
type tagKey = string
type tableStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type stringValue256 = string
type stringValue2048 = string
type string_ = string
type resourceName = string
type recordVersion = float
type recordIndex = int
type paginationLimit = int
type memoryStoreRetentionPeriodInHours = float
type measureValueType = [
  | @as("BOOLEAN") #BOOLEAN
  | @as("VARCHAR") #VARCHAR
  | @as("BIGINT") #BIGINT
  | @as("DOUBLE") #DOUBLE
]
type magneticStoreRetentionPeriodInDays = float
type long = float
type errorMessage = string
type dimensionValueType = [@as("VARCHAR") #VARCHAR]
type date = Js.Date.t
type amazonResourceName = string
type tagKeyList = array<tagKey>
@ocaml.doc("<p>
A tag is a label that you assign to a Timestream database and/or table. Each tag consists 
of a key and an optional value, both of which you define. Tags enable you to 
categorize databases and/or tables, for example, by purpose, owner, or environment.
</p>")
type tag = {
  @ocaml.doc("<p>
The value of the tag. Tag values are case-sensitive and can be null.
</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>
The key of the tag. Tag keys are case sensitive.  
</p>")
  @as("Key")
  key: tagKey,
}
@ocaml.doc("<p>Retention properties contain the duration for which your time series data must be stored in the magnetic store and the memory store.
      </p>")
type retentionProperties = {
  @ocaml.doc("<p>The duration for which data must be stored in the magnetic store. </p>")
  @as("MagneticStoreRetentionPeriodInDays")
  magneticStoreRetentionPeriodInDays: magneticStoreRetentionPeriodInDays,
  @ocaml.doc("<p>The duration for which data must be stored in the memory store. </p>")
  @as("MemoryStoreRetentionPeriodInHours")
  memoryStoreRetentionPeriodInHours: memoryStoreRetentionPeriodInHours,
}
@ocaml.doc("<p>
Records that were not successfully inserted into Timestream due to data validation issues
that must be resolved prior to reinserting time series data into the system.
</p>")
type rejectedRecord = {
  @ocaml.doc("<p>The existing version of the record. 
         This value is populated in scenarios where an identical record exists with a higher version than the version in the write request.</p>")
  @as("ExistingVersion")
  existingVersion: option<recordVersion>,
  @ocaml.doc("<p>
         The reason why a record was not successfully inserted into Timestream. Possible causes of failure include:
      </p>
         <ul>
            <li>
               <p>
                 Records with duplicate data where there are multiple records with the same dimensions,
         timestamps, and measure names but different measure values.
               </p>
            </li>
            <li>
               <p>
                 Records with timestamps that lie outside the retention duration of the memory store
               </p>
               <note>
                  <p>When the retention window is updated, you will receive a <code>RejectedRecords</code> exception 
                  if you immediately try to ingest data within the new window. 
                  To avoid a <code>RejectedRecords</code> exception, 
                  wait until the duration of the new window to ingest new data.
                  For further information, 
                  see 
                  <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/best-practices.html#configuration\">
                     Best Practices for Configuring Timestream</a>
                  and 
                  <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html\">the explanation of how storage works in Timestream</a>.</p>
               </note>
            </li>
            <li>
               <p>
                 Records with dimensions or measures that exceed the Timestream defined limits.
               </p>
            </li>
         </ul>
         <p>
            For more information, see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html\">Access Management</a> in the Timestream Developer Guide.
         </p>")
  @as("Reason")
  reason: option<errorMessage>,
  @ocaml.doc("<p>
The index of the record in the input request for WriteRecords. Indexes begin with 0. 
</p>")
  @as("RecordIndex")
  recordIndex: option<recordIndex>,
}
@ocaml.doc(
  "<p>Represents an available endpoint against which to make API calls agaisnt, as well as the TTL for that endpoint.</p>"
)
type endpoint = {
  @ocaml.doc("<p>The TTL for the endpoint, in minutes.</p>") @as("CachePeriodInMinutes")
  cachePeriodInMinutes: long,
  @ocaml.doc("<p>An endpoint address.</p>") @as("Address") address: string_,
}
@ocaml.doc(
  "<p>Dimension represents the meta data attributes of the time series. For example, the name and availability zone of an EC2 instance or the name of the manufacturer of a wind turbine are dimensions. </p>"
)
type dimension = {
  @ocaml.doc("<p>The data type of the dimension for the time series data point.</p>")
  @as("DimensionValueType")
  dimensionValueType: option<dimensionValueType>,
  @ocaml.doc("<p>The value of the dimension.</p>") @as("Value") value: stringValue2048,
  @ocaml.doc("<p>
         Dimension represents the meta data attributes of the time series. 
         For example, the name and availability zone of an EC2 instance or 
         the name of the manufacturer of a wind turbine are dimensions.
         
      </p>
         <p>For constraints on Dimension names, 
         see <a href=\"https://docs.aws.amazon.com/timestream/latest/developerguide/ts-limits.html#limits.naming\">Naming Constraints</a>.</p>")
  @as("Name")
  name: stringValue256,
}
@ocaml.doc("<p>A top level container for a table. Databases and tables are the
      fundamental management concepts in Amazon Timestream. All tables in a 
      database are encrypted with the same KMS key.</p>")
type database = {
  @ocaml.doc("<p>
   The last time that this database was updated.
   </p>")
  @as("LastUpdatedTime")
  lastUpdatedTime: option<date>,
  @ocaml.doc("<p>The time when the database was created, calculated from the Unix epoch time.</p>")
  @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc(
    "<p>The identifier of the KMS key used to encrypt the data stored in the database.</p>"
  )
  @as("KmsKeyId")
  kmsKeyId: option<stringValue2048>,
  @ocaml.doc("<p>The total number of tables found within a Timestream database. </p>")
  @as("TableCount")
  tableCount: option<long>,
  @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
  databaseName: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name that uniquely identifies this database.</p>") @as("Arn")
  arn: option<string_>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Table represents a database table in Timestream. Tables contain one or more related time series. You can modify the retention duration of the memory store and the magnetic store for a table.
      </p>")
type table = {
  @ocaml.doc("<p>The time when the Timestream table was last updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<date>,
  @ocaml.doc("<p>The time when the Timestream table was created. </p>") @as("CreationTime")
  creationTime: option<date>,
  @ocaml.doc("<p>The retention duration for the memory store and magnetic store.</p>")
  @as("RetentionProperties")
  retentionProperties: option<retentionProperties>,
  @ocaml.doc("<p>The current state of the table:</p> 
         <ul>
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
  @ocaml.doc("<p>The name of the Timestream database that contains this table.</p>")
  @as("DatabaseName")
  databaseName: option<resourceName>,
  @ocaml.doc("<p>The name of the Timestream table.</p>") @as("TableName")
  tableName: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name that uniquely identifies this table.</p>") @as("Arn")
  arn: option<string_>,
}
type rejectedRecords = array<rejectedRecord>
type endpoints = array<endpoint>
type dimensions = array<dimension>
type databaseList = array<database>
type tableList = array<table>
@ocaml.doc("<p>Record represents a time series data point being written into 
       Timestream. Each record contains an array of dimensions. Dimensions 
       represent the meta data attributes of a time series data point such as
       the instance name or availability zone of an EC2 instance. A record also 
       contains the measure name which is the name of the measure being collected 
       for example the CPU utilization of an EC2 instance. A record also contains 
       the measure value and the value type which is the data type of the measure value.
       In addition, the record contains the timestamp when the measure was collected that 
       the timestamp unit which represents the granularity of the timestamp.
       </p>")
type record = {
  @ocaml.doc("<p>64-bit attribute used for record updates. 
         Write requests for duplicate data with a higher version number will update the existing measure value and version. 
         In cases where the measure value is the same, <code>Version</code> will still be updated . Default value is to 1.</p>")
  @as("Version")
  version: option<recordVersion>,
  @ocaml.doc("<p>
The granularity of the timestamp unit. It indicates if the time value is in seconds, milliseconds, nanoseconds or other supported values.
</p>")
  @as("TimeUnit")
  timeUnit: option<timeUnit>,
  @ocaml.doc("<p>
Contains the time at which the measure value for the data point was collected.
The time value plus the unit provides the time elapsed since the epoch.
For example, if the time value is <code>12345</code> and the unit is <code>ms</code>,
   then <code>12345 ms</code> have elapsed since the epoch.
</p>")
  @as("Time")
  time: option<stringValue256>,
  @ocaml.doc("<p>
Contains the data type of the measure value for the time series data point.
</p>")
  @as("MeasureValueType")
  measureValueType: option<measureValueType>,
  @ocaml.doc("<p>
Contains the measure value for the time series data point. 
</p>")
  @as("MeasureValue")
  measureValue: option<stringValue2048>,
  @ocaml.doc(
    "<p>Measure represents the data attribute of the time series. For example, the CPU utilization of an EC2 instance or the RPM of a wind turbine are measures. </p>"
  )
  @as("MeasureName")
  measureName: option<stringValue256>,
  @ocaml.doc("<p>Contains the list of dimensions for time series data points.</p>")
  @as("Dimensions")
  dimensions: option<dimensions>,
}
type records = array<record>
@ocaml.doc(
  "<p>Amazon Timestream is a fast, scalable, fully managed time series database service that makes it easy to store and analyze trillions of time series data points per day. With Timestream, you can easily store and analyze IoT sensor data to derive insights from your IoT applications. You can analyze industrial telemetry to streamline equipment management and maintenance. You can also store and analyze log data and metrics to improve the performance and availability of your applications. Timestream is built from the ground up to effectively ingest, process, and store time series data. It organizes data to optimize query processing. It automatically scales based on the volume of data ingested and on the query volume to ensure you receive optimal performance while inserting and querying data. As your data grows over time, Timestream’s adaptive query processing engine spans across storage tiers to provide fast analysis while reducing costs.</p>"
)
module DeleteTable = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Timestream table to be deleted.</p>") @as("TableName")
    tableName: resourceName,
    @ocaml.doc("<p>The name of the database where the Timestream database is to be deleted.</p>")
    @as("DatabaseName")
    databaseName: resourceName,
  }

  @module("@aws-sdk/client-timestream") @new external new: request => t = "DeleteTableCommand"
  let make = (~tableName, ~databaseName, ()) =>
    new({tableName: tableName, databaseName: databaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Timestream database to be deleted.</p>") @as("DatabaseName")
    databaseName: resourceName,
  }

  @module("@aws-sdk/client-timestream") @new external new: request => t = "DeleteDatabaseCommand"
  let make = (~databaseName, ()) => new({databaseName: databaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>
      The identifier of the new KMS key (<code>KmsKeyId</code>) to be used to encrypt the data stored in the database.
      If the <code>KmsKeyId</code> currently registered with the database is the same as the <code>KmsKeyId</code> in the 
      request, there will not be any update. 
   </p>
         <p>You can specify the <code>KmsKeyId</code> using any of the following:</p>
         <ul>
            <li>
               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Key ARN: <code>arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
               </p>
            </li>
            <li>
               <p>Alias name: <code>alias/ExampleAlias</code>
               </p>
            </li>
            <li>
               <p>Alias ARN: <code>arn:aws:kms:us-east-1:111122223333:alias/ExampleAlias</code>
               </p>
            </li>
         </ul>")
    @as("KmsKeyId")
    kmsKeyId: stringValue2048,
    @ocaml.doc("<p>
     The name of the database.
   </p>")
    @as("DatabaseName")
    databaseName: resourceName,
  }
  type response = {@as("Database") database: option<database>}
  @module("@aws-sdk/client-timestream") @new external new: request => t = "UpdateDatabaseCommand"
  let make = (~kmsKeyId, ~databaseName, ()) => new({kmsKeyId: kmsKeyId, databaseName: databaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
    A list of tags keys. Existing tags of the resource whose keys are members of this
    list will be removed from the Timestream resource.
</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>
    The Timestream resource that the tags will be removed from. This value
    is an Amazon Resource Name (ARN).
</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-timestream") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
    databaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The name of the Timestream table.</p>") @as("Database")
    database: option<database>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "DescribeDatabaseCommand"
  let make = (~databaseName, ()) => new({databaseName: databaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTable = {
  type t
  type request = {
    @ocaml.doc("<p>The retention duration of the memory store and the magnetic store.</p>")
    @as("RetentionProperties")
    retentionProperties: retentionProperties,
    @ocaml.doc("<p>The name of the Timesream table.</p>") @as("TableName") tableName: resourceName,
    @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
    databaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The updated Timestream table.</p>") @as("Table") table: option<table>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "UpdateTableCommand"
  let make = (~retentionProperties, ~tableName, ~databaseName, ()) =>
    new({
      retentionProperties: retentionProperties,
      tableName: tableName,
      databaseName: databaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
The tags to be assigned to the Timestream resource.
</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>
    Identifies the Timestream resource to which tags should be added. This value is an
    Amazon Resource Name (ARN).
</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }

  @module("@aws-sdk/client-timestream") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
The Timestream resource with tags to be listed. This value is an Amazon Resource Name (ARN).
</p>")
    @as("ResourceARN")
    resourceARN: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>
The tags currently associated with the Timestream resource.
</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-timestream") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatabases = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>"
    )
    @as("MaxResults")
    maxResults: option<paginationLimit>,
    @ocaml.doc(
      "<p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token. This parameter is returned when the response is truncated.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of database names.</p>") @as("Databases") databases: option<databaseList>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "ListDatabasesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTable = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Timestream table.</p>") @as("TableName") tableName: resourceName,
    @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
    databaseName: resourceName,
  }
  type response = {@ocaml.doc("<p>The Timestream table.</p>") @as("Table") table: option<table>}
  @module("@aws-sdk/client-timestream") @new external new: request => t = "DescribeTableCommand"
  let make = (~tableName, ~databaseName, ()) =>
    new({tableName: tableName, databaseName: databaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t

  type response = {
    @ocaml.doc(
      "<p>An <code>Endpoints</code> object is returned when a <code>DescribeEndpoints</code> request is made.</p>"
    )
    @as("Endpoints")
    endpoints: endpoints,
  }
  @module("@aws-sdk/client-timestream") @new external new: unit => t = "DescribeEndpointsCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTable = {
  type t
  type request = {
    @ocaml.doc("<p>
      A list of key-value pairs to label the table. 
   </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc(
      "<p>The duration for which your time series data must be stored in the memory store and the magnetic store.</p>"
    )
    @as("RetentionProperties")
    retentionProperties: option<retentionProperties>,
    @ocaml.doc("<p>The name of the Timestream table.</p>") @as("TableName") tableName: resourceName,
    @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
    databaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The newly created Timestream table.</p>") @as("Table") table: option<table>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "CreateTableCommand"
  let make = (~tableName, ~databaseName, ~tags=?, ~retentionProperties=?, ()) =>
    new({
      tags: tags,
      retentionProperties: retentionProperties,
      tableName: tableName,
      databaseName: databaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>
      A list of key-value pairs to label the table. 
   </p>")
    @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The KMS key for the database. If the KMS key is not specified, the database will be encrypted with a Timestream
         managed KMS key located in your account. Refer to <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#aws-managed-cmk\">AWS managed KMS keys</a> for more info.</p>")
    @as("KmsKeyId")
    kmsKeyId: option<stringValue2048>,
    @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
    databaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The newly created Timestream database.</p>") @as("Database")
    database: option<database>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "CreateDatabaseCommand"
  let make = (~databaseName, ~tags=?, ~kmsKeyId=?, ()) =>
    new({tags: tags, kmsKeyId: kmsKeyId, databaseName: databaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTables = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The total number of items to return in the output. If the total number of items available is more than the value specified, a NextToken is provided in the output. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>"
    )
    @as("MaxResults")
    maxResults: option<paginationLimit>,
    @ocaml.doc(
      "<p>The pagination token. To resume pagination, provide the NextToken value as argument of a subsequent API invocation.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
    databaseName: option<resourceName>,
  }
  type response = {
    @ocaml.doc(
      "<p>A token to specify where to start paginating. This is the NextToken from a previously truncated response.</p>"
    )
    @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>A list of tables.</p>") @as("Tables") tables: option<tableList>,
  }
  @module("@aws-sdk/client-timestream") @new external new: request => t = "ListTablesCommand"
  let make = (~maxResults=?, ~nextToken=?, ~databaseName=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, databaseName: databaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module WriteRecords = {
  type t
  type request = {
    @ocaml.doc("<p>An array of records containing the unique dimension and measure 
       attributes for each time series data point.
       </p>")
    @as("Records")
    records: records,
    @ocaml.doc("<p>A record containing the common measure and dimension attributes 
       shared across all the records in the request. The measure and dimension 
       attributes specified in here will be merged with the measure and dimension
       attributes in the records object when the data is written into Timestream.
       </p>")
    @as("CommonAttributes")
    commonAttributes: option<record>,
    @ocaml.doc("<p>The name of the Timesream table.</p>") @as("TableName") tableName: resourceName,
    @ocaml.doc("<p>The name of the Timestream database.</p>") @as("DatabaseName")
    databaseName: resourceName,
  }

  @module("@aws-sdk/client-timestream") @new external new: request => t = "WriteRecordsCommand"
  let make = (~records, ~tableName, ~databaseName, ~commonAttributes=?, ()) =>
    new({
      records: records,
      commonAttributes: commonAttributes,
      tableName: tableName,
      databaseName: databaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
