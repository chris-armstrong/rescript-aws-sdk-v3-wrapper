type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type token = string
type tableWildcard = unit
type stringValue = string
type resourceType = [@as("TABLE") #TABLE | @as("DATABASE") #DATABASE]
type resourceShareType = [@as("ALL") #ALL | @as("FOREIGN") #FOREIGN]
type resourceArnString = string
type ramresourceShareArn = string
type permission = [@as("ASSOCIATE_TAG") #ASSOCIATETAG | @as("DESCRIBE_TAG") #DESCRIBETAG | @as("DELETE_TAG") #DELETETAG | @as("ALTER_TAG") #ALTERTAG | @as("CREATE_TAG") #CREATETAG | @as("DATA_LOCATION_ACCESS") #DATALOCATIONACCESS | @as("CREATE_TABLE") #CREATETABLE | @as("CREATE_DATABASE") #CREATEDATABASE | @as("DESCRIBE") #DESCRIBE | @as("INSERT") #INSERT | @as("DELETE") #DELETE | @as("DROP") #DROP | @as("ALTER") #ALTER | @as("SELECT") #SELECT | @as("ALL") #ALL]
type pageSize = int
type nullableBoolean = bool
type nameString = string
type messageString = string
type lastModifiedTimestamp = Js.Date.t;
type lftagValue = string
type lftagKey = string
type identifier = string
type iamroleArn = string
type fieldNameString = [@as("LAST_MODIFIED") #LASTMODIFIED | @as("ROLE_ARN") #ROLEARN | @as("RESOURCE_ARN") #RESOURCEARN]
type descriptionString = string
type dataLakeResourceType = [@as("LF_TAG_POLICY_TABLE") #LFTAGPOLICYTABLE | @as("LF_TAG_POLICY_DATABASE") #LFTAGPOLICYDATABASE | @as("LF_TAG_POLICY") #LFTAGPOLICY | @as("LF_TAG") #LFTAG | @as("DATA_LOCATION") #DATALOCATION | @as("TABLE") #TABLE | @as("DATABASE") #DATABASE | @as("CATALOG") #CATALOG]
type dataLakePrincipalString = string
type comparisonOperator = [@as("BETWEEN") #BETWEEN | @as("IN") #IN | @as("BEGINS_WITH") #BEGINSWITH | @as("NOT_CONTAINS") #NOTCONTAINS | @as("CONTAINS") #CONTAINS | @as("GT") #GT | @as("GE") #GE | @as("LT") #LT | @as("LE") #LE | @as("NE") #NE | @as("EQ") #EQ]
type catalogResource = unit
type catalogIdString = string
type booleanNullable = bool
type trustedResourceOwners = array<catalogIdString>
type tagValueList = array<lftagValue>
type tableResource = {
@as("TableWildcard") tableWildcard: option<tableWildcard>,
@as("Name") name: option<nameString>,
@as("DatabaseName") databaseName: nameString,
@as("CatalogId") catalogId: option<catalogIdString>
}
type stringValueList = array<stringValue>
type resourceShareList = array<ramresourceShareArn>
type resourceInfo = {
@as("LastModified") lastModified: option<lastModifiedTimestamp>,
@as("RoleArn") roleArn: option<iamroleArn>,
@as("ResourceArn") resourceArn: option<resourceArnString>
}
type permissionList = array<permission>
type errorDetail = {
@as("ErrorMessage") errorMessage: option<descriptionString>,
@as("ErrorCode") errorCode: option<nameString>
}
type databaseResource = {
@as("Name") name: nameString,
@as("CatalogId") catalogId: option<catalogIdString>
}
type dataLocationResource = {
@as("ResourceArn") resourceArn: resourceArnString,
@as("CatalogId") catalogId: option<catalogIdString>
}
type dataLakePrincipal = {
@as("DataLakePrincipalIdentifier") dataLakePrincipalIdentifier: option<dataLakePrincipalString>
}
type columnNames = array<nameString>
type resourceInfoList = array<resourceInfo>
type principalPermissions = {
@as("Permissions") permissions: option<permissionList>,
@as("Principal") principal: option<dataLakePrincipal>
}
type lftagPair = {
@as("TagValues") tagValues: tagValueList,
@as("TagKey") tagKey: lftagKey,
@as("CatalogId") catalogId: option<catalogIdString>
}
type lftagKeyResource = {
@as("TagValues") tagValues: tagValueList,
@as("TagKey") tagKey: nameString,
@as("CatalogId") catalogId: option<catalogIdString>
}
type lftag = {
@as("TagValues") tagValues: tagValueList,
@as("TagKey") tagKey: lftagKey
}
type filterCondition = {
@as("StringValueList") stringValueList: option<stringValueList>,
@as("ComparisonOperator") comparisonOperator: option<comparisonOperator>,
@as("Field") field: option<fieldNameString>
}
type detailsMap = {
@as("ResourceShare") resourceShare: option<resourceShareList>
}
type dataLakePrincipalList = array<dataLakePrincipal>
type columnWildcard = {
@as("ExcludedColumnNames") excludedColumnNames: option<columnNames>
}
type tableWithColumnsResource = {
@as("ColumnWildcard") columnWildcard: option<columnWildcard>,
@as("ColumnNames") columnNames: option<columnNames>,
@as("Name") name: nameString,
@as("DatabaseName") databaseName: nameString,
@as("CatalogId") catalogId: option<catalogIdString>
}
type principalPermissionsList = array<principalPermissions>
type lftagsList = array<lftagPair>
type lftagError = {
@as("Error") error: option<errorDetail>,
@as("LFTag") lftag: option<lftagPair>
}
type filterConditionList = array<filterCondition>
type expression = array<lftag>
type taggedDatabase = {
@as("LFTags") lftags: option<lftagsList>,
@as("Database") database: option<databaseResource>
}
type lftagPolicyResource = {
@as("Expression") expression: expression,
@as("ResourceType") resourceType: resourceType,
@as("CatalogId") catalogId: option<catalogIdString>
}
type lftagErrors = array<lftagError>
type dataLakeSettings = {
@as("TrustedResourceOwners") trustedResourceOwners: option<trustedResourceOwners>,
@as("CreateTableDefaultPermissions") createTableDefaultPermissions: option<principalPermissionsList>,
@as("CreateDatabaseDefaultPermissions") createDatabaseDefaultPermissions: option<principalPermissionsList>,
@as("DataLakeAdmins") dataLakeAdmins: option<dataLakePrincipalList>
}
type columnLFTag = {
@as("LFTags") lftags: option<lftagsList>,
@as("Name") name: option<nameString>
}
type resource = {
@as("LFTagPolicy") lftagPolicy: option<lftagPolicyResource>,
@as("LFTag") lftag: option<lftagKeyResource>,
@as("DataLocation") dataLocation: option<dataLocationResource>,
@as("TableWithColumns") tableWithColumns: option<tableWithColumnsResource>,
@as("Table") table: option<tableResource>,
@as("Database") database: option<databaseResource>,
@as("Catalog") catalog: option<catalogResource>
}
type databaseLFTagsList = array<taggedDatabase>
type columnLFTagsList = array<columnLFTag>
type taggedTable = {
@as("LFTagsOnColumns") lftagsOnColumns: option<columnLFTagsList>,
@as("LFTagsOnTable") lftagsOnTable: option<lftagsList>,
@as("LFTagOnDatabase") lftagOnDatabase: option<lftagsList>,
@as("Table") table: option<tableResource>
}
type principalResourcePermissions = {
@as("AdditionalDetails") additionalDetails: option<detailsMap>,
@as("PermissionsWithGrantOption") permissionsWithGrantOption: option<permissionList>,
@as("Permissions") permissions: option<permissionList>,
@as("Resource") resource: option<resource>,
@as("Principal") principal: option<dataLakePrincipal>
}
type batchPermissionsRequestEntry = {
@as("PermissionsWithGrantOption") permissionsWithGrantOption: option<permissionList>,
@as("Permissions") permissions: option<permissionList>,
@as("Resource") resource: option<resource>,
@as("Principal") principal: option<dataLakePrincipal>,
@as("Id") id: identifier
}
type tableLFTagsList = array<taggedTable>
type principalResourcePermissionsList = array<principalResourcePermissions>
type batchPermissionsRequestEntryList = array<batchPermissionsRequestEntry>
type batchPermissionsFailureEntry = {
@as("Error") error: option<errorDetail>,
@as("RequestEntry") requestEntry: option<batchPermissionsRequestEntry>
}
type batchPermissionsFailureList = array<batchPermissionsFailureEntry>
type awsServiceClient;
@module("@aws-sdk/client-lakeformation") @new external createClient: unit => awsServiceClient = "LakeFormationClient";
module UpdateResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArnString,
@as("RoleArn") roleArn: iamroleArn
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "UpdateResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterResource = {
  type t;
  type request = {
@as("RoleArn") roleArn: option<iamroleArn>,
@as("UseServiceLinkedRole") useServiceLinkedRole: option<nullableBoolean>,
@as("ResourceArn") resourceArn: resourceArnString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "RegisterResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArnString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "DeregisterResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLFTag = {
  type t;
  type request = {
@as("TagKey") tagKey: lftagKey,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "DeleteLFTagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLFTag = {
  type t;
  type request = {
@as("TagValuesToAdd") tagValuesToAdd: option<tagValueList>,
@as("TagValuesToDelete") tagValuesToDelete: option<tagValueList>,
@as("TagKey") tagKey: lftagKey,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "UpdateLFTagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLFTag = {
  type t;
  type request = {
@as("TagKey") tagKey: lftagKey,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("TagValues") tagValues: option<tagValueList>,
@as("TagKey") tagKey: option<lftagKey>,
@as("CatalogId") catalogId: option<catalogIdString>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "GetLFTagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: resourceArnString
}
  type response = {
@as("ResourceInfo") resourceInfo: option<resourceInfo>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "DescribeResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLFTag = {
  type t;
  type request = {
@as("TagValues") tagValues: tagValueList,
@as("TagKey") tagKey: lftagKey,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "CreateLFTagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListResources = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<pageSize>,
@as("FilterConditionList") filterConditionList: option<filterConditionList>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("ResourceInfoList") resourceInfoList: option<resourceInfoList>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "ListResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListLFTags = {
  type t;
  type request = {
@as("NextToken") nextToken: option<token>,
@as("MaxResults") maxResults: option<pageSize>,
@as("ResourceShareType") resourceShareType: option<resourceShareType>,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("LFTags") lftags: option<lftagsList>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "ListLFTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutDataLakeSettings = {
  type t;
  type request = {
@as("DataLakeSettings") dataLakeSettings: dataLakeSettings,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "PutDataLakeSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDataLakeSettings = {
  type t;
  type request = {
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("DataLakeSettings") dataLakeSettings: option<dataLakeSettings>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "GetDataLakeSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchDatabasesByLFTags = {
  type t;
  type request = {
@as("Expression") expression: expression,
@as("CatalogId") catalogId: option<catalogIdString>,
@as("MaxResults") maxResults: option<pageSize>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("DatabaseList") databaseList: option<databaseLFTagsList>,
@as("NextToken") nextToken: option<token>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "SearchDatabasesByLFTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RevokePermissions = {
  type t;
  type request = {
@as("PermissionsWithGrantOption") permissionsWithGrantOption: option<permissionList>,
@as("Permissions") permissions: permissionList,
@as("Resource") resource: resource,
@as("Principal") principal: dataLakePrincipal,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "RevokePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveLFTagsFromResource = {
  type t;
  type request = {
@as("LFTags") lftags: lftagsList,
@as("Resource") resource: resource,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("Failures") failures: option<lftagErrors>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "RemoveLFTagsFromResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GrantPermissions = {
  type t;
  type request = {
@as("PermissionsWithGrantOption") permissionsWithGrantOption: option<permissionList>,
@as("Permissions") permissions: permissionList,
@as("Resource") resource: resource,
@as("Principal") principal: dataLakePrincipal,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "GrantPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResourceLFTags = {
  type t;
  type request = {
@as("ShowAssignedLFTags") showAssignedLFTags: option<booleanNullable>,
@as("Resource") resource: resource,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("LFTagsOnColumns") lftagsOnColumns: option<columnLFTagsList>,
@as("LFTagsOnTable") lftagsOnTable: option<lftagsList>,
@as("LFTagOnDatabase") lftagOnDatabase: option<lftagsList>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "GetResourceLFTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddLFTagsToResource = {
  type t;
  type request = {
@as("LFTags") lftags: lftagsList,
@as("Resource") resource: resource,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("Failures") failures: option<lftagErrors>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "AddLFTagsToResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SearchTablesByLFTags = {
  type t;
  type request = {
@as("Expression") expression: expression,
@as("CatalogId") catalogId: option<catalogIdString>,
@as("MaxResults") maxResults: option<pageSize>,
@as("NextToken") nextToken: option<token>
}
  type response = {
@as("TableList") tableList: option<tableLFTagsList>,
@as("NextToken") nextToken: option<token>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "SearchTablesByLFTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<pageSize>,
@as("NextToken") nextToken: option<token>,
@as("Resource") resource: option<resource>,
@as("ResourceType") resourceType: option<dataLakeResourceType>,
@as("Principal") principal: option<dataLakePrincipal>,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("PrincipalResourcePermissions") principalResourcePermissions: option<principalResourcePermissionsList>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "ListPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEffectivePermissionsForPath = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<pageSize>,
@as("NextToken") nextToken: option<token>,
@as("ResourceArn") resourceArn: resourceArnString,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("NextToken") nextToken: option<token>,
@as("Permissions") permissions: option<principalResourcePermissionsList>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "GetEffectivePermissionsForPathCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchRevokePermissions = {
  type t;
  type request = {
@as("Entries") entries: batchPermissionsRequestEntryList,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("Failures") failures: option<batchPermissionsFailureList>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "BatchRevokePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGrantPermissions = {
  type t;
  type request = {
@as("Entries") entries: batchPermissionsRequestEntryList,
@as("CatalogId") catalogId: option<catalogIdString>
}
  type response = {
@as("Failures") failures: option<batchPermissionsFailureList>
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (request) => t = "BatchGrantPermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
