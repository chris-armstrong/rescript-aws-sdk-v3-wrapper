type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lakeformation") @new
external createClient: unit => awsServiceClient = "LakeFormationClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type token = string
@ocaml.doc("<p>A wildcard object representing every table under a database.</p>")
type tableWildcard = unit
type stringValue = string
type resourceType = [@as("TABLE") #TABLE | @as("DATABASE") #DATABASE]
type resourceShareType = [@as("ALL") #ALL | @as("FOREIGN") #FOREIGN]
type resourceArnString = string
type ramresourceShareArn = string
type permission = [
  | @as("ASSOCIATE_TAG") #ASSOCIATE_TAG
  | @as("DESCRIBE_TAG") #DESCRIBE_TAG
  | @as("DELETE_TAG") #DELETE_TAG
  | @as("ALTER_TAG") #ALTER_TAG
  | @as("CREATE_TAG") #CREATE_TAG
  | @as("DATA_LOCATION_ACCESS") #DATA_LOCATION_ACCESS
  | @as("CREATE_TABLE") #CREATE_TABLE
  | @as("CREATE_DATABASE") #CREATE_DATABASE
  | @as("DESCRIBE") #DESCRIBE
  | @as("INSERT") #INSERT
  | @as("DELETE") #DELETE
  | @as("DROP") #DROP
  | @as("ALTER") #ALTER
  | @as("SELECT") #SELECT
  | @as("ALL") #ALL
]
type pageSize = int
type nullableBoolean = bool
type nameString = string
type messageString = string
type lastModifiedTimestamp = Js.Date.t
type lftagValue = string
type lftagKey = string
type identifier = string
type iamroleArn = string
type fieldNameString = [
  | @as("LAST_MODIFIED") #LAST_MODIFIED
  | @as("ROLE_ARN") #ROLE_ARN
  | @as("RESOURCE_ARN") #RESOURCE_ARN
]
type descriptionString = string
type dataLakeResourceType = [
  | @as("LF_TAG_POLICY_TABLE") #LF_TAG_POLICY_TABLE
  | @as("LF_TAG_POLICY_DATABASE") #LF_TAG_POLICY_DATABASE
  | @as("LF_TAG_POLICY") #LF_TAG_POLICY
  | @as("LF_TAG") #LF_TAG
  | @as("DATA_LOCATION") #DATA_LOCATION
  | @as("TABLE") #TABLE
  | @as("DATABASE") #DATABASE
  | @as("CATALOG") #CATALOG
]
type dataLakePrincipalString = string
type comparisonOperator = [
  | @as("BETWEEN") #BETWEEN
  | @as("IN") #IN
  | @as("BEGINS_WITH") #BEGINS_WITH
  | @as("NOT_CONTAINS") #NOT_CONTAINS
  | @as("CONTAINS") #CONTAINS
  | @as("GT") #GT
  | @as("GE") #GE
  | @as("LT") #LT
  | @as("LE") #LE
  | @as("NE") #NE
  | @as("EQ") #EQ
]
@ocaml.doc("<p>A structure for the catalog object.</p>") type catalogResource = unit
type catalogIdString = string
type booleanNullable = bool
type trustedResourceOwners = array<catalogIdString>
type tagValueList = array<lftagValue>
@ocaml.doc(
  "<p>A structure for the table object. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
)
type tableResource = {
  @ocaml.doc("<p>A wildcard object representing every table under a database.</p>

         <p>At least one of <code>TableResource$Name</code> or <code>TableResource$TableWildcard</code> is required.</p>")
  @as("TableWildcard")
  tableWildcard: option<tableWildcard>,
  @ocaml.doc("<p>The name of the table.</p>") @as("Name") name: option<nameString>,
  @ocaml.doc(
    "<p>The name of the database for the table. Unique to a Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>"
  )
  @as("DatabaseName")
  databaseName: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
type stringValueList = array<stringValue>
type resourceShareList = array<ramresourceShareArn>
@ocaml.doc("<p>A structure containing information about an AWS Lake Formation resource.</p>")
type resourceInfo = {
  @ocaml.doc("<p>The date and time the resource was last modified.</p>") @as("LastModified")
  lastModified: option<lastModifiedTimestamp>,
  @ocaml.doc("<p>The IAM role that registered a resource.</p>") @as("RoleArn")
  roleArn: option<iamroleArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
  resourceArn: option<resourceArnString>,
}
type permissionList = array<permission>
@ocaml.doc("<p>Contains details about an error.</p>")
type errorDetail = {
  @ocaml.doc("<p>A message describing the error.</p>") @as("ErrorMessage")
  errorMessage: option<descriptionString>,
  @ocaml.doc("<p>The code associated with this error.</p>") @as("ErrorCode")
  errorCode: option<nameString>,
}
@ocaml.doc("<p>A structure for the database object.</p>")
type databaseResource = {
  @ocaml.doc("<p>The name of the database resource. Unique to the Data Catalog.</p>") @as("Name")
  name: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc(
  "<p>A structure for a data location object where permissions are granted or revoked. </p>"
)
type dataLocationResource = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) that uniquely identifies the data location resource.</p>"
  )
  @as("ResourceArn")
  resourceArn: resourceArnString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog where the location is registered with AWS Lake Formation. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc(
  "<p>The AWS Lake Formation principal. Supported principals are IAM users or IAM roles.</p>"
)
type dataLakePrincipal = {
  @ocaml.doc("<p>An identifier for the AWS Lake Formation principal.</p>")
  @as("DataLakePrincipalIdentifier")
  dataLakePrincipalIdentifier: option<dataLakePrincipalString>,
}
type columnNames = array<nameString>
type resourceInfoList = array<resourceInfo>
@ocaml.doc("<p>Permissions granted to a principal.</p>")
type principalPermissions = {
  @ocaml.doc("<p>The permissions that are granted to the principal.</p>") @as("Permissions")
  permissions: option<permissionList>,
  @ocaml.doc("<p>The principal who is granted permissions.</p>") @as("Principal")
  principal: option<dataLakePrincipal>,
}
@ocaml.doc("<p>A structure containing a tag key-value pair.</p>")
type lftagPair = {
  @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
  tagValues: tagValueList,
  @ocaml.doc("<p>The key-name for the tag.</p>") @as("TagKey") tagKey: lftagKey,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc("<p>A structure containing a tag key and values for a resource.</p>")
type lftagKeyResource = {
  @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
  tagValues: tagValueList,
  @ocaml.doc("<p>The key-name for the tag.</p>") @as("TagKey") tagKey: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
@ocaml.doc(
  "<p>A structure that allows an admin to grant user permissions on certain conditions. For example, granting a role access to all columns not tagged 'PII' of tables tagged 'Prod'.</p>"
)
type lftag = {
  @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
  tagValues: tagValueList,
  @ocaml.doc("<p>The key-name for the tag.</p>") @as("TagKey") tagKey: lftagKey,
}
@ocaml.doc(
  "<p>This structure describes the filtering of columns in a table based on a filter condition.</p>"
)
type filterCondition = {
  @ocaml.doc("<p>A string with values used in evaluating the filter condition.</p>")
  @as("StringValueList")
  stringValueList: option<stringValueList>,
  @ocaml.doc("<p>The comparison operator used in the filter condition.</p>")
  @as("ComparisonOperator")
  comparisonOperator: option<comparisonOperator>,
  @ocaml.doc("<p>The field to filter in the filter condition.</p>") @as("Field")
  field: option<fieldNameString>,
}
@ocaml.doc("<p>A structure containing the additional details to be returned in the <code>AdditionalDetails</code> attribute of <code>PrincipalResourcePermissions</code>.</p>
  
         <p>If a catalog resource is shared through AWS Resource Access Manager (AWS RAM), then there will exist a corresponding RAM resource share ARN.</p>")
type detailsMap = {
  @ocaml.doc(
    "<p>A resource share ARN for a catalog resource shared through AWS Resource Access Manager (AWS RAM).</p>"
  )
  @as("ResourceShare")
  resourceShare: option<resourceShareList>,
}
type dataLakePrincipalList = array<dataLakePrincipal>
@ocaml.doc(
  "<p>A wildcard object, consisting of an optional list of excluded column names or indexes.</p>"
)
type columnWildcard = {
  @ocaml.doc("<p>Excludes column names. Any column with this name will be excluded.</p>")
  @as("ExcludedColumnNames")
  excludedColumnNames: option<columnNames>,
}
@ocaml.doc("<p>A structure for a table with columns object. This object is only used when granting a SELECT permission.</p>
	        <p>This object must take a value for at least one of <code>ColumnsNames</code>, <code>ColumnsIndexes</code>, or <code>ColumnsWildcard</code>.</p>")
type tableWithColumnsResource = {
  @ocaml.doc(
    "<p>A wildcard specified by a <code>ColumnWildcard</code> object. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"
  )
  @as("ColumnWildcard")
  columnWildcard: option<columnWildcard>,
  @ocaml.doc(
    "<p>The list of column names for the table. At least one of <code>ColumnNames</code> or <code>ColumnWildcard</code> is required.</p>"
  )
  @as("ColumnNames")
  columnNames: option<columnNames>,
  @ocaml.doc(
    "<p>The name of the table resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
  )
  @as("Name")
  name: nameString,
  @ocaml.doc(
    "<p>The name of the database for the table with columns resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database privileges to a principal. </p>"
  )
  @as("DatabaseName")
  databaseName: nameString,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, it is the account ID of the caller.</p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
type principalPermissionsList = array<principalPermissions>
type lftagsList = array<lftagPair>
@ocaml.doc(
  "<p>A structure containing an error related to a <code>TagResource</code> or <code>UnTagResource</code> operation.</p>"
)
type lftagError = {
  @ocaml.doc("<p>An error that occurred with the attachment or detachment of the tag.</p>")
  @as("Error")
  error: option<errorDetail>,
  @ocaml.doc("<p>The key-name of the tag.</p>") @as("LFTag") lftag: option<lftagPair>,
}
type filterConditionList = array<filterCondition>
type expression = array<lftag>
@ocaml.doc("<p>A structure describing a database resource with tags.</p>")
type taggedDatabase = {
  @ocaml.doc("<p>A list of tags attached to the database.</p>") @as("LFTags")
  lftags: option<lftagsList>,
  @ocaml.doc("<p>A database that has tags attached to it.</p>") @as("Database")
  database: option<databaseResource>,
}
@ocaml.doc(
  "<p>A structure containing a list of tag conditions that apply to a resource's tag policy.</p>"
)
type lftagPolicyResource = {
  @ocaml.doc("<p>A list of tag conditions that apply to the resource's tag policy.</p>")
  @as("Expression")
  expression: expression,
  @ocaml.doc("<p>The resource type for which the tag policy applies.</p>") @as("ResourceType")
  resourceType: resourceType,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
  )
  @as("CatalogId")
  catalogId: option<catalogIdString>,
}
type lftagErrors = array<lftagError>
@ocaml.doc(
  "<p>A structure representing a list of AWS Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.</p>"
)
type dataLakeSettings = {
  @ocaml.doc("<p>A list of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs). The user ARNs can be logged in the resource owner's AWS CloudTrail log.</p>
	
	        <p>You may want to specify this property when you are in a high-trust boundary, such as the same team or company. </p>")
  @as("TrustedResourceOwners")
  trustedResourceOwners: option<trustedResourceOwners>,
  @ocaml.doc(
    "<p>A structure representing a list of up to three principal permissions entries for default create table permissions.</p>"
  )
  @as("CreateTableDefaultPermissions")
  createTableDefaultPermissions: option<principalPermissionsList>,
  @ocaml.doc(
    "<p>A structure representing a list of up to three principal permissions entries for default create database permissions.</p>"
  )
  @as("CreateDatabaseDefaultPermissions")
  createDatabaseDefaultPermissions: option<principalPermissionsList>,
  @ocaml.doc(
    "<p>A list of AWS Lake Formation principals. Supported principals are IAM users or IAM roles.</p>"
  )
  @as("DataLakeAdmins")
  dataLakeAdmins: option<dataLakePrincipalList>,
}
@ocaml.doc(
  "<p>A structure containing the name of a column resource and the tags attached to it.</p>"
)
type columnLFTag = {
  @ocaml.doc("<p>The tags attached to a column resource.</p>") @as("LFTags")
  lftags: option<lftagsList>,
  @ocaml.doc("<p>The name of a column resource.</p>") @as("Name") name: option<nameString>,
}
@ocaml.doc("<p>A structure for the resource.</p>")
type resource = {
  @ocaml.doc("<p>A list of tag conditions that define a resource's tag policy.</p>")
  @as("LFTagPolicy")
  lftagPolicy: option<lftagPolicyResource>,
  @ocaml.doc("<p>The tag key and values attached to a resource.</p>") @as("LFTag")
  lftag: option<lftagKeyResource>,
  @ocaml.doc("<p>The location of an Amazon S3 path where permissions are granted or revoked. </p>")
  @as("DataLocation")
  dataLocation: option<dataLocationResource>,
  @ocaml.doc(
    "<p>The table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3.</p>"
  )
  @as("TableWithColumns")
  tableWithColumns: option<tableWithColumnsResource>,
  @ocaml.doc(
    "<p>The table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. </p>"
  )
  @as("Table")
  table: option<tableResource>,
  @ocaml.doc(
    "<p>The database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. </p>"
  )
  @as("Database")
  database: option<databaseResource>,
  @ocaml.doc(
    "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
  )
  @as("Catalog")
  catalog: option<catalogResource>,
}
type databaseLFTagsList = array<taggedDatabase>
type columnLFTagsList = array<columnLFTag>
@ocaml.doc("<p>A structure describing a table resource with tags.</p>")
type taggedTable = {
  @ocaml.doc("<p>A list of tags attached to columns in the table.</p>") @as("LFTagsOnColumns")
  lftagsOnColumns: option<columnLFTagsList>,
  @ocaml.doc("<p>A list of tags attached to the table.</p>") @as("LFTagsOnTable")
  lftagsOnTable: option<lftagsList>,
  @ocaml.doc("<p>A list of tags attached to the database where the table resides.</p>")
  @as("LFTagOnDatabase")
  lftagOnDatabase: option<lftagsList>,
  @ocaml.doc("<p>A table that has tags attached to it.</p>") @as("Table")
  table: option<tableResource>,
}
@ocaml.doc("<p>The permissions granted or revoked on a resource.</p>")
type principalResourcePermissions = {
  @ocaml.doc(
    "<p>This attribute can be used to return any additional details of <code>PrincipalResourcePermissions</code>. Currently returns only as a RAM resource share ARN.</p>"
  )
  @as("AdditionalDetails")
  additionalDetails: option<detailsMap>,
  @ocaml.doc(
    "<p>Indicates whether to grant the ability to grant permissions (as a subset of permissions granted).</p>"
  )
  @as("PermissionsWithGrantOption")
  permissionsWithGrantOption: option<permissionList>,
  @ocaml.doc("<p>The permissions to be granted or revoked on the resource.</p>") @as("Permissions")
  permissions: option<permissionList>,
  @ocaml.doc("<p>The resource where permissions are to be granted or revoked.</p>") @as("Resource")
  resource: option<resource>,
  @ocaml.doc("<p>The Data Lake principal to be granted or revoked permissions.</p>")
  @as("Principal")
  principal: option<dataLakePrincipal>,
}
@ocaml.doc("<p>A permission to a resource granted by batch operation to the principal.</p>")
type batchPermissionsRequestEntry = {
  @ocaml.doc("<p>Indicates if the option to pass permissions is granted.</p>")
  @as("PermissionsWithGrantOption")
  permissionsWithGrantOption: option<permissionList>,
  @ocaml.doc("<p>The permissions to be granted.</p>") @as("Permissions")
  permissions: option<permissionList>,
  @ocaml.doc("<p>The resource to which the principal is to be granted a permission.</p>")
  @as("Resource")
  resource: option<resource>,
  @ocaml.doc("<p>The principal to be granted a permission.</p>") @as("Principal")
  principal: option<dataLakePrincipal>,
  @ocaml.doc("<p>A unique identifier for the batch permissions request entry.</p>") @as("Id")
  id: identifier,
}
type tableLFTagsList = array<taggedTable>
type principalResourcePermissionsList = array<principalResourcePermissions>
type batchPermissionsRequestEntryList = array<batchPermissionsRequestEntry>
@ocaml.doc("<p>A list of failures when performing a batch grant or batch revoke operation.</p>")
type batchPermissionsFailureEntry = {
  @ocaml.doc("<p>An error message that applies to the failure of the entry.</p>") @as("Error")
  error: option<errorDetail>,
  @ocaml.doc("<p>An identifier for an entry of the batch request.</p>") @as("RequestEntry")
  requestEntry: option<batchPermissionsRequestEntry>,
}
type batchPermissionsFailureList = array<batchPermissionsFailureEntry>
@ocaml.doc("<fullname>AWS Lake Formation</fullname>
         <p>Defines the public endpoint for the AWS Lake Formation service.</p>")
module UpdateResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceArn") resourceArn: resourceArnString,
    @ocaml.doc(
      "<p>The new role to use for the given resource registered in AWS Lake Formation.</p>"
    )
    @as("RoleArn")
    roleArn: iamroleArn,
  }

  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "UpdateResourceCommand"
  let make = (~resourceArn, ~roleArn, ()) => new({resourceArn: resourceArn, roleArn: roleArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterResource = {
  type t
  type request = {
    @ocaml.doc("<p>The identifier for the role that registers the resource.</p>") @as("RoleArn")
    roleArn: option<iamroleArn>,
    @ocaml.doc("<p>Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog. A service-linked role is a unique type of IAM role that is linked directly to Lake Formation.</p>
 
         <p>For more information, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/service-linked-roles.html\">Using Service-Linked Roles for Lake Formation</a>.</p>")
    @as("UseServiceLinkedRole")
    useServiceLinkedRole: option<nullableBoolean>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to register.</p>")
    @as("ResourceArn")
    resourceArn: resourceArnString,
  }

  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "RegisterResourceCommand"
  let make = (~resourceArn, ~roleArn=?, ~useServiceLinkedRole=?, ()) =>
    new({roleArn: roleArn, useServiceLinkedRole: useServiceLinkedRole, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource that you want to deregister.</p>")
    @as("ResourceArn")
    resourceArn: resourceArnString,
  }

  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "DeregisterResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>The key-name for the tag to delete.</p>") @as("TagKey") tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }

  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "DeleteLFTagCommand"
  let make = (~tagKey, ~catalogId=?, ()) => new({tagKey: tagKey, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag values to add from the tag.</p>") @as("TagValuesToAdd")
    tagValuesToAdd: option<tagValueList>,
    @ocaml.doc("<p>A list of tag values to delete from the tag.</p>") @as("TagValuesToDelete")
    tagValuesToDelete: option<tagValueList>,
    @ocaml.doc("<p>The key-name for the tag for which to add or delete values.</p>") @as("TagKey")
    tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }

  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "UpdateLFTagCommand"
  let make = (~tagKey, ~tagValuesToAdd=?, ~tagValuesToDelete=?, ~catalogId=?, ()) =>
    new({
      tagValuesToAdd: tagValuesToAdd,
      tagValuesToDelete: tagValuesToDelete,
      tagKey: tagKey,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>The key-name for the tag.</p>") @as("TagKey") tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
    tagValues: option<tagValueList>,
    @ocaml.doc("<p>The key-name for the tag.</p>") @as("TagKey") tagKey: option<lftagKey>,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "GetLFTagCommand"
  let make = (~tagKey, ~catalogId=?, ()) => new({tagKey: tagKey, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeResource = {
  type t
  type request = {
    @ocaml.doc("<p>The resource ARN.</p>") @as("ResourceArn") resourceArn: resourceArnString,
  }
  type response = {
    @ocaml.doc("<p>A structure containing information about an AWS Lake Formation resource.</p>")
    @as("ResourceInfo")
    resourceInfo: option<resourceInfo>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "DescribeResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLFTag = {
  type t
  type request = {
    @ocaml.doc("<p>A list of possible values an attribute can take.</p>") @as("TagValues")
    tagValues: tagValueList,
    @ocaml.doc("<p>The key-name for the tag.</p>") @as("TagKey") tagKey: lftagKey,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }

  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "CreateLFTagCommand"
  let make = (~tagValues, ~tagKey, ~catalogId=?, ()) =>
    new({tagValues: tagValues, tagKey: tagKey, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListResources = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of resource results.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>Any applicable row-level and/or column-level filtering conditions for the resources.</p>"
    )
    @as("FilterConditionList")
    filterConditionList: option<filterConditionList>,
  }
  type response = {
    @ocaml.doc(
      "<p>A continuation token, if this is not the first call to retrieve these resources.</p>"
    )
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A summary of the data lake resources.</p>") @as("ResourceInfoList")
    resourceInfoList: option<resourceInfoList>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "ListResourcesCommand"
  let make = (~nextToken=?, ~maxResults=?, ~filterConditionList=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filterConditionList: filterConditionList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLFTags = {
  type t
  type request = {
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc(
      "<p>If resource share type is <code>ALL</code>, returns both in-account tags and shared tags that the requester has permission to view. If resource share type is <code>FOREIGN</code>, returns all share tags that the requester can view. If no resource share type is passed, lists tags in the given catalog ID that the requester has permission to view.</p>"
    )
    @as("ResourceShareType")
    resourceShareType: option<resourceShareType>,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A list of tags that the requested has permission to view.</p>") @as("LFTags")
    lftags: option<lftagsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new external new: request => t = "ListLFTagsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~resourceShareType=?, ~catalogId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      resourceShareType: resourceShareType,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutDataLakeSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A structure representing a list of AWS Lake Formation principals designated as data lake administrators.</p>"
    )
    @as("DataLakeSettings")
    dataLakeSettings: dataLakeSettings,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }

  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "PutDataLakeSettingsCommand"
  let make = (~dataLakeSettings, ~catalogId=?, ()) =>
    new({dataLakeSettings: dataLakeSettings, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetDataLakeSettings = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc(
      "<p>A structure representing a list of AWS Lake Formation principals designated as data lake administrators.</p>"
    )
    @as("DataLakeSettings")
    dataLakeSettings: option<dataLakeSettings>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetDataLakeSettingsCommand"
  let make = (~catalogId=?, ()) => new({catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchDatabasesByLFTags = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of conditions (<code>LFTag</code> structures) to search for in database resources.</p>"
    )
    @as("Expression")
    expression: expression,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A list of databases that meet the tag conditions.</p>") @as("DatabaseList")
    databaseList: option<databaseLFTagsList>,
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "SearchDatabasesByLFTagsCommand"
  let make = (~expression, ~catalogId=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      expression: expression,
      catalogId: catalogId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RevokePermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates a list of permissions for which to revoke the grant option allowing the principal to pass permissions to other principals.</p>"
    )
    @as("PermissionsWithGrantOption")
    permissionsWithGrantOption: option<permissionList>,
    @ocaml.doc("<p>The permissions revoked to the principal on the resource. For information about permissions, see <a href=\"https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html\">Security
      and Access Control to Metadata and Data</a>.</p>")
    @as("Permissions")
    permissions: permissionList,
    @ocaml.doc("<p>The resource to which permissions are to be revoked.</p>") @as("Resource")
    resource: resource,
    @ocaml.doc("<p>The principal to be revoked permissions on the resource.</p>") @as("Principal")
    principal: dataLakePrincipal,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }

  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "RevokePermissionsCommand"
  let make = (
    ~permissions,
    ~resource,
    ~principal,
    ~permissionsWithGrantOption=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      permissionsWithGrantOption: permissionsWithGrantOption,
      permissions: permissions,
      resource: resource,
      principal: principal,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveLFTagsFromResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to be removed from the resource.</p>") @as("LFTags") lftags: lftagsList,
    @ocaml.doc("<p>The resource where you want to remove a tag.</p>") @as("Resource")
    resource: resource,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to untag a resource.</p>") @as("Failures")
    failures: option<lftagErrors>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "RemoveLFTagsFromResourceCommand"
  let make = (~lftags, ~resource, ~catalogId=?, ()) =>
    new({lftags: lftags, resource: resource, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GrantPermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Indicates a list of the granted permissions that the principal may pass to other users. These permissions may only be a subset of the permissions granted in the <code>Privileges</code>.</p>"
    )
    @as("PermissionsWithGrantOption")
    permissionsWithGrantOption: option<permissionList>,
    @ocaml.doc(
      "<p>The permissions granted to the principal on the resource. AWS Lake Formation defines privileges to grant and revoke access to metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. AWS Lake Formation requires that each principal be authorized to perform a specific task on AWS Lake Formation resources. </p>"
    )
    @as("Permissions")
    permissions: permissionList,
    @ocaml.doc(
      "<p>The resource to which permissions are to be granted. Resources in AWS Lake Formation are the Data Catalog, databases, and tables.</p>"
    )
    @as("Resource")
    resource: resource,
    @ocaml.doc("<p>The principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles, and they are defined by their principal type and their ARN.</p>
	        <p>Note that if you define a resource with a particular ARN, then later delete, and recreate a resource with that same ARN, the resource maintains the permissions already granted. </p>")
    @as("Principal")
    principal: dataLakePrincipal,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }

  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GrantPermissionsCommand"
  let make = (
    ~permissions,
    ~resource,
    ~principal,
    ~permissionsWithGrantOption=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      permissionsWithGrantOption: permissionsWithGrantOption,
      permissions: permissions,
      resource: resource,
      principal: principal,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetResourceLFTags = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to show the assigned tags.</p>") @as("ShowAssignedLFTags")
    showAssignedLFTags: option<booleanNullable>,
    @ocaml.doc("<p>The resource for which you want to return tags.</p>") @as("Resource")
    resource: resource,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of tags applied to a column resource.</p>") @as("LFTagsOnColumns")
    lftagsOnColumns: option<columnLFTagsList>,
    @ocaml.doc("<p>A list of tags applied to a table resource.</p>") @as("LFTagsOnTable")
    lftagsOnTable: option<lftagsList>,
    @ocaml.doc("<p>A list of tags applied to a database resource.</p>") @as("LFTagOnDatabase")
    lftagOnDatabase: option<lftagsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetResourceLFTagsCommand"
  let make = (~resource, ~showAssignedLFTags=?, ~catalogId=?, ()) =>
    new({showAssignedLFTags: showAssignedLFTags, resource: resource, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddLFTagsToResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to attach to the resource.</p>") @as("LFTags") lftags: lftagsList,
    @ocaml.doc("<p>The resource to which to attach a tag.</p>") @as("Resource") resource: resource,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to tag the resource.</p>") @as("Failures")
    failures: option<lftagErrors>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "AddLFTagsToResourceCommand"
  let make = (~lftags, ~resource, ~catalogId=?, ()) =>
    new({lftags: lftags, resource: resource, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchTablesByLFTags = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of conditions (<code>LFTag</code> structures) to search for in table resources.</p>"
    )
    @as("Expression")
    expression: expression,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>A list of tables that meet the tag conditions.</p>") @as("TableList")
    tableList: option<tableLFTagsList>,
    @ocaml.doc("<p>A continuation token, present if the current list segment is not the last.</p>")
    @as("NextToken")
    nextToken: option<token>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "SearchTablesByLFTagsCommand"
  let make = (~expression, ~catalogId=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      expression: expression,
      catalogId: catalogId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc("<p>A resource where you will get a list of the principal permissions.</p>
         <p>This operation does not support getting privileges on a table with columns. Instead, call this operation on the table, and the operation returns the table and the table w columns.</p>")
    @as("Resource")
    resource: option<resource>,
    @ocaml.doc("<p>Specifies a resource type to filter the permissions returned.</p>")
    @as("ResourceType")
    resourceType: option<dataLakeResourceType>,
    @ocaml.doc("<p>Specifies a principal to filter the permissions returned.</p>") @as("Principal")
    principal: option<dataLakePrincipal>,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>A list of principals and their permissions on the resource for the specified principal and resource types.</p>"
    )
    @as("PrincipalResourcePermissions")
    principalResourcePermissions: option<principalResourcePermissionsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "ListPermissionsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~resource=?,
    ~resourceType=?,
    ~principal=?,
    ~catalogId=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resource: resource,
      resourceType: resourceType,
      principal: principal,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEffectivePermissionsForPath = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<pageSize>,
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource for which you want to get permissions.</p>"
    )
    @as("ResourceArn")
    resourceArn: resourceArnString,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A continuation token, if this is not the first call to retrieve this list.</p>")
    @as("NextToken")
    nextToken: option<token>,
    @ocaml.doc(
      "<p>A list of the permissions for the specified table or database resource located at the path in Amazon S3.</p>"
    )
    @as("Permissions")
    permissions: option<principalResourcePermissionsList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "GetEffectivePermissionsForPathCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ~catalogId=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      resourceArn: resourceArn,
      catalogId: catalogId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchRevokePermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of up to 20 entries for resource permissions to be revoked by batch operation to the principal.</p>"
    )
    @as("Entries")
    entries: batchPermissionsRequestEntryList,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to revoke permissions to the resources.</p>") @as("Failures")
    failures: option<batchPermissionsFailureList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "BatchRevokePermissionsCommand"
  let make = (~entries, ~catalogId=?, ()) => new({entries: entries, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGrantPermissions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of up to 20 entries for resource permissions to be granted by batch operation to the principal.</p>"
    )
    @as("Entries")
    entries: batchPermissionsRequestEntryList,
    @ocaml.doc(
      "<p>The identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your AWS Lake Formation environment. </p>"
    )
    @as("CatalogId")
    catalogId: option<catalogIdString>,
  }
  type response = {
    @ocaml.doc("<p>A list of failures to grant permissions to the resources.</p>") @as("Failures")
    failures: option<batchPermissionsFailureList>,
  }
  @module("@aws-sdk/client-lakeformation") @new
  external new: request => t = "BatchGrantPermissionsCommand"
  let make = (~entries, ~catalogId=?, ()) => new({entries: entries, catalogId: catalogId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
