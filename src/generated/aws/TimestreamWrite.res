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
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type retentionProperties = {
  @as("MagneticStoreRetentionPeriodInDays")
  magneticStoreRetentionPeriodInDays: magneticStoreRetentionPeriodInDays,
  @as("MemoryStoreRetentionPeriodInHours")
  memoryStoreRetentionPeriodInHours: memoryStoreRetentionPeriodInHours,
}
type rejectedRecord = {
  @as("ExistingVersion") existingVersion: option<recordVersion>,
  @as("Reason") reason: option<errorMessage>,
  @as("RecordIndex") recordIndex: option<recordIndex>,
}
type endpoint = {
  @as("CachePeriodInMinutes") cachePeriodInMinutes: long,
  @as("Address") address: string_,
}
type dimension = {
  @as("DimensionValueType") dimensionValueType: option<dimensionValueType>,
  @as("Value") value: stringValue2048,
  @as("Name") name: stringValue256,
}
type database = {
  @as("LastUpdatedTime") lastUpdatedTime: option<date>,
  @as("CreationTime") creationTime: option<date>,
  @as("KmsKeyId") kmsKeyId: option<stringValue2048>,
  @as("TableCount") tableCount: option<long>,
  @as("DatabaseName") databaseName: option<resourceName>,
  @as("Arn") arn: option<string_>,
}
type tagList_ = array<tag>
type table = {
  @as("LastUpdatedTime") lastUpdatedTime: option<date>,
  @as("CreationTime") creationTime: option<date>,
  @as("RetentionProperties") retentionProperties: option<retentionProperties>,
  @as("TableStatus") tableStatus: option<tableStatus>,
  @as("DatabaseName") databaseName: option<resourceName>,
  @as("TableName") tableName: option<resourceName>,
  @as("Arn") arn: option<string_>,
}
type rejectedRecords = array<rejectedRecord>
type endpoints = array<endpoint>
type dimensions = array<dimension>
type databaseList = array<database>
type tableList = array<table>
type record = {
  @as("Version") version: option<recordVersion>,
  @as("TimeUnit") timeUnit: option<timeUnit>,
  @as("Time") time: option<stringValue256>,
  @as("MeasureValueType") measureValueType: option<measureValueType>,
  @as("MeasureValue") measureValue: option<stringValue2048>,
  @as("MeasureName") measureName: option<stringValue256>,
  @as("Dimensions") dimensions: option<dimensions>,
}
type records = array<record>

module DeleteTable = {
  type t
  type request = {
    @as("TableName") tableName: resourceName,
    @as("DatabaseName") databaseName: resourceName,
  }

  @module("@aws-sdk/client-timestream") @new external new_: request => t = "DeleteTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDatabase = {
  type t
  type request = {@as("DatabaseName") databaseName: resourceName}

  @module("@aws-sdk/client-timestream") @new external new_: request => t = "DeleteDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDatabase = {
  type t
  type request = {
    @as("KmsKeyId") kmsKeyId: stringValue2048,
    @as("DatabaseName") databaseName: resourceName,
  }
  type response = {@as("Database") database: option<database>}
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "UpdateDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDatabase = {
  type t
  type request = {@as("DatabaseName") databaseName: resourceName}
  type response = {@as("Database") database: option<database>}
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "DescribeDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTable = {
  type t
  type request = {
    @as("RetentionProperties") retentionProperties: retentionProperties,
    @as("TableName") tableName: resourceName,
    @as("DatabaseName") databaseName: resourceName,
  }
  type response = {@as("Table") table: option<table>}
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "UpdateTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: amazonResourceName,
  }
  type response = unit
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: amazonResourceName}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-timestream") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDatabases = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationLimit>,
    @as("NextToken") nextToken: option<string_>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Databases") databases: option<databaseList>,
  }
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "ListDatabasesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTable = {
  type t
  type request = {
    @as("TableName") tableName: resourceName,
    @as("DatabaseName") databaseName: resourceName,
  }
  type response = {@as("Table") table: option<table>}
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "DescribeTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeEndpoints = {
  type t
  type request = unit
  type response = {@as("Endpoints") endpoints: endpoints}
  @module("@aws-sdk/client-timestream") @new
  external new_: request => t = "DescribeEndpointsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTable = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("RetentionProperties") retentionProperties: option<retentionProperties>,
    @as("TableName") tableName: resourceName,
    @as("DatabaseName") databaseName: resourceName,
  }
  type response = {@as("Table") table: option<table>}
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "CreateTableCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDatabase = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("KmsKeyId") kmsKeyId: option<stringValue2048>,
    @as("DatabaseName") databaseName: resourceName,
  }
  type response = {@as("Database") database: option<database>}
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "CreateDatabaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTables = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<paginationLimit>,
    @as("NextToken") nextToken: option<string_>,
    @as("DatabaseName") databaseName: option<resourceName>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Tables") tables: option<tableList>,
  }
  @module("@aws-sdk/client-timestream") @new external new_: request => t = "ListTablesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module WriteRecords = {
  type t
  type request = {
    @as("Records") records: records,
    @as("CommonAttributes") commonAttributes: option<record>,
    @as("TableName") tableName: resourceName,
    @as("DatabaseName") databaseName: resourceName,
  }

  @module("@aws-sdk/client-timestream") @new external new_: request => t = "WriteRecordsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
