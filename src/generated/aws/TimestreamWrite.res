type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timeUnit = [@as("NANOSECONDS") #NANOSECONDS | @as("MICROSECONDS") #MICROSECONDS | @as("SECONDS") #SECONDS | @as("MILLISECONDS") #MILLISECONDS]
type tagValue = string
type tagKey = string
type tableStatus = [@as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE]
type stringValue256 = string
type stringValue2048 = string
type amazonawsString = string
type resourceName = string
type recordVersion = float;
type recordIndex = int;
type paginationLimit = int;
type memoryStoreRetentionPeriodInHours = float;
type measureValueType = [@as("BOOLEAN") #BOOLEAN | @as("VARCHAR") #VARCHAR | @as("BIGINT") #BIGINT | @as("DOUBLE") #DOUBLE]
type magneticStoreRetentionPeriodInDays = float;
type amazonawsLong = float;
type errorMessage = string
type dimensionValueType = [@as("VARCHAR") #VARCHAR]
type date = Js.Date.t;
type amazonResourceName = string
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type retentionProperties = {
@as("MagneticStoreRetentionPeriodInDays") magneticStoreRetentionPeriodInDays: option<magneticStoreRetentionPeriodInDays>,
@as("MemoryStoreRetentionPeriodInHours") memoryStoreRetentionPeriodInHours: option<memoryStoreRetentionPeriodInHours>
}
type rejectedRecord = {
@as("ExistingVersion") existingVersion: recordVersion,
@as("Reason") reason: errorMessage,
@as("RecordIndex") recordIndex: recordIndex
}
type endpoint = {
@as("CachePeriodInMinutes") cachePeriodInMinutes: option<amazonawsLong>,
@as("Address") address: option<amazonawsString>
}
type dimension = {
@as("DimensionValueType") dimensionValueType: dimensionValueType,
@as("Value") value: option<stringValue2048>,
@as("Name") name: option<stringValue256>
}
type database = {
@as("LastUpdatedTime") lastUpdatedTime: date,
@as("CreationTime") creationTime: date,
@as("KmsKeyId") kmsKeyId: stringValue2048,
@as("TableCount") tableCount: amazonawsLong,
@as("DatabaseName") databaseName: resourceName,
@as("Arn") arn: amazonawsString
}
type tagList = array<tag>
type table = {
@as("LastUpdatedTime") lastUpdatedTime: date,
@as("CreationTime") creationTime: date,
@as("RetentionProperties") retentionProperties: retentionProperties,
@as("TableStatus") tableStatus: tableStatus,
@as("DatabaseName") databaseName: resourceName,
@as("TableName") tableName: resourceName,
@as("Arn") arn: amazonawsString
}
type rejectedRecords = array<rejectedRecord>
type endpoints = array<endpoint>
type dimensions = array<dimension>
type databaseList = array<database>
type tableList = array<table>
type record = {
@as("Version") version: recordVersion,
@as("TimeUnit") timeUnit: timeUnit,
@as("Time") time: stringValue256,
@as("MeasureValueType") measureValueType: measureValueType,
@as("MeasureValue") measureValue: stringValue2048,
@as("MeasureName") measureName: stringValue256,
@as("Dimensions") dimensions: dimensions
}
type records = array<record>
type clientType;
@module("@aws-sdk/client-timestream") @new external createClient: unit => clientType = "TimestreamWriteClient";
module DeleteTable = {
  type t;
  type request = {
@as("TableName") tableName: option<resourceName>,
@as("DatabaseName") databaseName: option<resourceName>
}
  
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "DeleteTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDatabase = {
  type t;
  type request = {
@as("DatabaseName") databaseName: option<resourceName>
}
  
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "DeleteDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDatabase = {
  type t;
  type request = {
@as("KmsKeyId") kmsKeyId: option<stringValue2048>,
@as("DatabaseName") databaseName: option<resourceName>
}
  type response = {
@as("Database") database: database
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "UpdateDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDatabase = {
  type t;
  type request = {
@as("DatabaseName") databaseName: option<resourceName>
}
  type response = {
@as("Database") database: database
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "DescribeDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTable = {
  type t;
  type request = {
@as("RetentionProperties") retentionProperties: option<retentionProperties>,
@as("TableName") tableName: option<resourceName>,
@as("DatabaseName") databaseName: option<resourceName>
}
  type response = {
@as("Table") table: table
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "UpdateTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<amazonResourceName>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDatabases = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationLimit,
@as("NextToken") nextToken: amazonawsString
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Databases") databases: databaseList
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "ListDatabasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTable = {
  type t;
  type request = {
@as("TableName") tableName: option<resourceName>,
@as("DatabaseName") databaseName: option<resourceName>
}
  type response = {
@as("Table") table: table
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "DescribeTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeEndpoints = {
  type t;
  type request = unit
  type response = {
@as("Endpoints") endpoints: option<endpoints>
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "DescribeEndpointsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTable = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("RetentionProperties") retentionProperties: retentionProperties,
@as("TableName") tableName: option<resourceName>,
@as("DatabaseName") databaseName: option<resourceName>
}
  type response = {
@as("Table") table: table
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "CreateTableCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDatabase = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("KmsKeyId") kmsKeyId: stringValue2048,
@as("DatabaseName") databaseName: option<resourceName>
}
  type response = {
@as("Database") database: database
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "CreateDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTables = {
  type t;
  type request = {
@as("MaxResults") maxResults: paginationLimit,
@as("NextToken") nextToken: amazonawsString,
@as("DatabaseName") databaseName: resourceName
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Tables") tables: tableList
}
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "ListTablesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module WriteRecords = {
  type t;
  type request = {
@as("Records") records: option<records>,
@as("CommonAttributes") commonAttributes: record,
@as("TableName") tableName: option<resourceName>,
@as("DatabaseName") databaseName: option<resourceName>
}
  
  @module("@aws-sdk/client-timestream") @new external new_: (Js.Promise.t<request>) => t = "WriteRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}
