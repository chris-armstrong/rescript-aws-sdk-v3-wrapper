type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type token = string
type tableWildcard = unit
type stringValue = string
type resourceType = [@as("TABLE") #TABLE | @as("DATABASE") #DATABASE]
type resourceShareType = [@as("ALL") #ALL | @as("FOREIGN") #FOREIGN]
type resourceArnString = string
type rAMResourceShareArn = string
type permission = [@as("ASSOCIATE_TAG") #ASSOCIATE_TAG | @as("DESCRIBE_TAG") #DESCRIBE_TAG | @as("DELETE_TAG") #DELETE_TAG | @as("ALTER_TAG") #ALTER_TAG | @as("CREATE_TAG") #CREATE_TAG | @as("DATA_LOCATION_ACCESS") #DATA_LOCATION_ACCESS | @as("CREATE_TABLE") #CREATE_TABLE | @as("CREATE_DATABASE") #CREATE_DATABASE | @as("DESCRIBE") #DESCRIBE | @as("INSERT") #INSERT | @as("DELETE") #DELETE | @as("DROP") #DROP | @as("ALTER") #ALTER | @as("SELECT") #SELECT | @as("ALL") #ALL]
type pageSize = int;
type nullableBoolean = bool;
type nameString = string
type messageString = string
type lastModifiedTimestamp = Js.Date.t;
type lFTagValue = string
type lFTagKey = string
type identifier = string
type iAMRoleArn = string
type fieldNameString = [@as("LAST_MODIFIED") #LAST_MODIFIED | @as("ROLE_ARN") #ROLE_ARN | @as("RESOURCE_ARN") #RESOURCE_ARN]
type descriptionString = string
type dataLakeResourceType = [@as("LF_TAG_POLICY_TABLE") #LF_TAG_POLICY_TABLE | @as("LF_TAG_POLICY_DATABASE") #LF_TAG_POLICY_DATABASE | @as("LF_TAG_POLICY") #LF_TAG_POLICY | @as("LF_TAG") #LF_TAG | @as("DATA_LOCATION") #DATA_LOCATION | @as("TABLE") #TABLE | @as("DATABASE") #DATABASE | @as("CATALOG") #CATALOG]
type dataLakePrincipalString = string
type comparisonOperator = [@as("BETWEEN") #BETWEEN | @as("IN") #IN | @as("BEGINS_WITH") #BEGINS_WITH | @as("NOT_CONTAINS") #NOT_CONTAINS | @as("CONTAINS") #CONTAINS | @as("GT") #GT | @as("GE") #GE | @as("LT") #LT | @as("LE") #LE | @as("NE") #NE | @as("EQ") #EQ]
type catalogResource = unit
type catalogIdString = string
type booleanNullable = bool;
type trustedResourceOwners = array<catalogIdString>
type tagValueList = array<lFTagValue>
type tableResource = {
@as("TableWildcard") tableWildcard: tableWildcard,
@as("Name") name: nameString,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
type stringValueList = array<stringValue>
type resourceShareList = array<rAMResourceShareArn>
type resourceInfo = {
@as("LastModified") lastModified: lastModifiedTimestamp,
@as("RoleArn") roleArn: iAMRoleArn,
@as("ResourceArn") resourceArn: resourceArnString
}
type permissionList = array<permission>
type errorDetail = {
@as("ErrorMessage") errorMessage: descriptionString,
@as("ErrorCode") errorCode: nameString
}
type databaseResource = {
@as("Name") name: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
type dataLocationResource = {
@as("ResourceArn") resourceArn: option<resourceArnString>,
@as("CatalogId") catalogId: catalogIdString
}
type dataLakePrincipal = {
@as("DataLakePrincipalIdentifier") dataLakePrincipalIdentifier: dataLakePrincipalString
}
type columnNames = array<nameString>
type resourceInfoList = array<resourceInfo>
type principalPermissions = {
@as("Permissions") permissions: permissionList,
@as("Principal") principal: dataLakePrincipal
}
type lFTagPair = {
@as("TagValues") tagValues: option<tagValueList>,
@as("TagKey") tagKey: option<lFTagKey>,
@as("CatalogId") catalogId: catalogIdString
}
type lFTagKeyResource = {
@as("TagValues") tagValues: option<tagValueList>,
@as("TagKey") tagKey: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
type lFTag = {
@as("TagValues") tagValues: option<tagValueList>,
@as("TagKey") tagKey: option<lFTagKey>
}
type filterCondition = {
@as("StringValueList") stringValueList: stringValueList,
@as("ComparisonOperator") comparisonOperator: comparisonOperator,
@as("Field") field: fieldNameString
}
type detailsMap = {
@as("ResourceShare") resourceShare: resourceShareList
}
type dataLakePrincipalList = array<dataLakePrincipal>
type columnWildcard = {
@as("ExcludedColumnNames") excludedColumnNames: columnNames
}
type tableWithColumnsResource = {
@as("ColumnWildcard") columnWildcard: columnWildcard,
@as("ColumnNames") columnNames: columnNames,
@as("Name") name: option<nameString>,
@as("DatabaseName") databaseName: option<nameString>,
@as("CatalogId") catalogId: catalogIdString
}
type principalPermissionsList = array<principalPermissions>
type lFTagsList = array<lFTagPair>
type lFTagError = {
@as("Error") error: errorDetail,
@as("LFTag") lFTag: lFTagPair
}
type filterConditionList = array<filterCondition>
type expression = array<lFTag>
type taggedDatabase = {
@as("LFTags") lFTags: lFTagsList,
@as("Database") database: databaseResource
}
type lFTagPolicyResource = {
@as("Expression") expression: option<expression>,
@as("ResourceType") resourceType: option<resourceType>,
@as("CatalogId") catalogId: catalogIdString
}
type lFTagErrors = array<lFTagError>
type dataLakeSettings = {
@as("TrustedResourceOwners") trustedResourceOwners: trustedResourceOwners,
@as("CreateTableDefaultPermissions") createTableDefaultPermissions: principalPermissionsList,
@as("CreateDatabaseDefaultPermissions") createDatabaseDefaultPermissions: principalPermissionsList,
@as("DataLakeAdmins") dataLakeAdmins: dataLakePrincipalList
}
type columnLFTag = {
@as("LFTags") lFTags: lFTagsList,
@as("Name") name: nameString
}
type resource = {
@as("LFTagPolicy") lFTagPolicy: lFTagPolicyResource,
@as("LFTag") lFTag: lFTagKeyResource,
@as("DataLocation") dataLocation: dataLocationResource,
@as("TableWithColumns") tableWithColumns: tableWithColumnsResource,
@as("Table") table: tableResource,
@as("Database") database: databaseResource,
@as("Catalog") catalog: catalogResource
}
type databaseLFTagsList = array<taggedDatabase>
type columnLFTagsList = array<columnLFTag>
type taggedTable = {
@as("LFTagsOnColumns") lFTagsOnColumns: columnLFTagsList,
@as("LFTagsOnTable") lFTagsOnTable: lFTagsList,
@as("LFTagOnDatabase") lFTagOnDatabase: lFTagsList,
@as("Table") table: tableResource
}
type principalResourcePermissions = {
@as("AdditionalDetails") additionalDetails: detailsMap,
@as("PermissionsWithGrantOption") permissionsWithGrantOption: permissionList,
@as("Permissions") permissions: permissionList,
@as("Resource") resource: resource,
@as("Principal") principal: dataLakePrincipal
}
type batchPermissionsRequestEntry = {
@as("PermissionsWithGrantOption") permissionsWithGrantOption: permissionList,
@as("Permissions") permissions: permissionList,
@as("Resource") resource: resource,
@as("Principal") principal: dataLakePrincipal,
@as("Id") id: option<identifier>
}
type tableLFTagsList = array<taggedTable>
type principalResourcePermissionsList = array<principalResourcePermissions>
type batchPermissionsRequestEntryList = array<batchPermissionsRequestEntry>
type batchPermissionsFailureEntry = {
@as("Error") error: errorDetail,
@as("RequestEntry") requestEntry: batchPermissionsRequestEntry
}
type batchPermissionsFailureList = array<batchPermissionsFailureEntry>
type clientType;
@module("@aws-sdk/client-lakeformation") @new external createClient: unit => clientType = "LakeFormationClient";
module UpdateResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArnString>,
@as("RoleArn") roleArn: option<iAMRoleArn>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "UpdateResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterResource = {
  type t;
  type request = {
@as("RoleArn") roleArn: iAMRoleArn,
@as("UseServiceLinkedRole") useServiceLinkedRole: nullableBoolean,
@as("ResourceArn") resourceArn: option<resourceArnString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "RegisterResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArnString>
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "DeregisterResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLFTag = {
  type t;
  type request = {
@as("TagKey") tagKey: option<lFTagKey>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "DeleteLFTagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLFTag = {
  type t;
  type request = {
@as("TagValuesToAdd") tagValuesToAdd: tagValueList,
@as("TagValuesToDelete") tagValuesToDelete: tagValueList,
@as("TagKey") tagKey: option<lFTagKey>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "UpdateLFTagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLFTag = {
  type t;
  type request = {
@as("TagKey") tagKey: option<lFTagKey>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("TagValues") tagValues: tagValueList,
@as("TagKey") tagKey: lFTagKey,
@as("CatalogId") catalogId: catalogIdString
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "GetLFTagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceArnString>
}
  type response = {
@as("ResourceInfo") resourceInfo: resourceInfo
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "DescribeResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLFTag = {
  type t;
  type request = {
@as("TagValues") tagValues: option<tagValueList>,
@as("TagKey") tagKey: option<lFTagKey>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "CreateLFTagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListResources = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: pageSize,
@as("FilterConditionList") filterConditionList: filterConditionList
}
  type response = {
@as("NextToken") nextToken: token,
@as("ResourceInfoList") resourceInfoList: resourceInfoList
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "ListResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLFTags = {
  type t;
  type request = {
@as("NextToken") nextToken: token,
@as("MaxResults") maxResults: pageSize,
@as("ResourceShareType") resourceShareType: resourceShareType,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("LFTags") lFTags: lFTagsList
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "ListLFTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutDataLakeSettings = {
  type t;
  type request = {
@as("DataLakeSettings") dataLakeSettings: option<dataLakeSettings>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "PutDataLakeSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDataLakeSettings = {
  type t;
  type request = {
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("DataLakeSettings") dataLakeSettings: dataLakeSettings
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "GetDataLakeSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchDatabasesByLFTags = {
  type t;
  type request = {
@as("Expression") expression: option<expression>,
@as("CatalogId") catalogId: catalogIdString,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: token
}
  type response = {
@as("DatabaseList") databaseList: databaseLFTagsList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "SearchDatabasesByLFTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokePermissions = {
  type t;
  type request = {
@as("PermissionsWithGrantOption") permissionsWithGrantOption: permissionList,
@as("Permissions") permissions: option<permissionList>,
@as("Resource") resource: option<resource>,
@as("Principal") principal: option<dataLakePrincipal>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "RevokePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveLFTagsFromResource = {
  type t;
  type request = {
@as("LFTags") lFTags: option<lFTagsList>,
@as("Resource") resource: option<resource>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Failures") failures: lFTagErrors
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "RemoveLFTagsFromResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GrantPermissions = {
  type t;
  type request = {
@as("PermissionsWithGrantOption") permissionsWithGrantOption: permissionList,
@as("Permissions") permissions: option<permissionList>,
@as("Resource") resource: option<resource>,
@as("Principal") principal: option<dataLakePrincipal>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = unit
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "GrantPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourceLFTags = {
  type t;
  type request = {
@as("ShowAssignedLFTags") showAssignedLFTags: booleanNullable,
@as("Resource") resource: option<resource>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("LFTagsOnColumns") lFTagsOnColumns: columnLFTagsList,
@as("LFTagsOnTable") lFTagsOnTable: lFTagsList,
@as("LFTagOnDatabase") lFTagOnDatabase: lFTagsList
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "GetResourceLFTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddLFTagsToResource = {
  type t;
  type request = {
@as("LFTags") lFTags: option<lFTagsList>,
@as("Resource") resource: option<resource>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Failures") failures: lFTagErrors
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "AddLFTagsToResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchTablesByLFTags = {
  type t;
  type request = {
@as("Expression") expression: option<expression>,
@as("CatalogId") catalogId: catalogIdString,
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: token
}
  type response = {
@as("TableList") tableList: tableLFTagsList,
@as("NextToken") nextToken: token
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "SearchTablesByLFTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPermissions = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: token,
@as("Resource") resource: resource,
@as("ResourceType") resourceType: dataLakeResourceType,
@as("Principal") principal: dataLakePrincipal,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("PrincipalResourcePermissions") principalResourcePermissions: principalResourcePermissionsList
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "ListPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEffectivePermissionsForPath = {
  type t;
  type request = {
@as("MaxResults") maxResults: pageSize,
@as("NextToken") nextToken: token,
@as("ResourceArn") resourceArn: option<resourceArnString>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("NextToken") nextToken: token,
@as("Permissions") permissions: principalResourcePermissionsList
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "GetEffectivePermissionsForPathCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchRevokePermissions = {
  type t;
  type request = {
@as("Entries") entries: option<batchPermissionsRequestEntryList>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Failures") failures: batchPermissionsFailureList
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "BatchRevokePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGrantPermissions = {
  type t;
  type request = {
@as("Entries") entries: option<batchPermissionsRequestEntryList>,
@as("CatalogId") catalogId: catalogIdString
}
  type response = {
@as("Failures") failures: batchPermissionsFailureList
}
  @module("@aws-sdk/client-lakeformation") @new external new_: (Js.Promise.t<request>) => t = "BatchGrantPermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
