type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type __timestampIso8601 = Js.Date.t;
type __stringMin20Max1600 = string
type __stringMin1Max100000 = string
type __stringMin0Max36 = string
type __stringMin0Max256 = string
type __string = string
type __long = float;
type __integer = int;
type type_ = [@as("JSONSchemaDraft4") #JSONSchemaDraft4 | @as("OpenApi3") #OpenApi3]
type synthesizedJson__string = string
type getDiscoveredSchemaVersionItemInput = string
type discovererState = [@as("STOPPED") #STOPPED | @as("STARTED") #STARTED]
type codeGenerationStatus = [@as("CREATE_FAILED") #CREATE_FAILED | @as("CREATE_COMPLETE") #CREATE_COMPLETE | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS]
type body = NodeJs.Buffer.t;
type __listOf__string = array<__string>
type __listOfGetDiscoveredSchemaVersionItemInput = array<getDiscoveredSchemaVersionItemInput>
type tags = Js.Dict.t< __string>
type searchSchemaVersionSummary = {
@as("Type") type_: type_,
@as("SchemaVersion") schemaVersion: __string,
@as("CreatedDate") createdDate: __timestampIso8601
}
type schemaVersionSummary = {
@as("Type") type_: type_,
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: __string,
@as("SchemaArn") schemaArn: __string
}
type __listOfSearchSchemaVersionSummary = array<searchSchemaVersionSummary>
type __listOfSchemaVersionSummary = array<schemaVersionSummary>
type schemaSummary = {
@as("VersionCount") versionCount: __long,
@as("Tags") tags: tags,
@as("SchemaName") schemaName: __string,
@as("SchemaArn") schemaArn: __string,
@as("LastModified") lastModified: __timestampIso8601
}
type registrySummary = {
@as("Tags") tags: tags,
@as("RegistryName") registryName: __string,
@as("RegistryArn") registryArn: __string
}
type discovererSummary = {
@as("Tags") tags: tags,
@as("State") state: discovererState,
@as("SourceArn") sourceArn: __string,
@as("DiscovererId") discovererId: __string,
@as("DiscovererArn") discovererArn: __string
}
type __listOfSchemaSummary = array<schemaSummary>
type __listOfRegistrySummary = array<registrySummary>
type __listOfDiscovererSummary = array<discovererSummary>
type searchSchemaSummary = {
@as("SchemaVersions") schemaVersions: __listOfSearchSchemaVersionSummary,
@as("SchemaName") schemaName: __string,
@as("SchemaArn") schemaArn: __string,
@as("RegistryName") registryName: __string
}
type __listOfSearchSchemaSummary = array<searchSchemaSummary>
type clientType;
@module("@aws-sdk/client-schemas") @new external createClient: unit => clientType = "EventSchemasClient";
module StopDiscoverer = {
  type t;
  type request = {
@as("DiscovererId") discovererId: option<__string>
}
  type response = {
@as("State") state: discovererState,
@as("DiscovererId") discovererId: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "StopDiscovererCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartDiscoverer = {
  type t;
  type request = {
@as("DiscovererId") discovererId: option<__string>
}
  type response = {
@as("State") state: discovererState,
@as("DiscovererId") discovererId: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "StartDiscovererCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutResourcePolicy = {
  type t;
  type request = {
@as("RevisionId") revisionId: __string,
@as("RegistryName") registryName: __string,
@as("Policy") policy: option<synthesizedJson__string>
}
  type response = {
@as("RevisionId") revisionId: __string,
@as("Policy") policy: synthesizedJson__string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "PutResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutCodeBinding = {
  type t;
  type request = {
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>,
@as("Language") language: option<__string>
}
  type response = {
@as("Status") status: codeGenerationStatus,
@as("SchemaVersion") schemaVersion: __string,
@as("LastModified") lastModified: __timestampIso8601,
@as("CreationDate") creationDate: __timestampIso8601
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "PutCodeBindingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResourcePolicy = {
  type t;
  type request = {
@as("RegistryName") registryName: __string
}
  type response = {
@as("RevisionId") revisionId: __string,
@as("Policy") policy: synthesizedJson__string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "GetResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCodeBindingSource = {
  type t;
  type request = {
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>,
@as("Language") language: option<__string>
}
  type response = {
@as("Body") body: body
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "GetCodeBindingSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportSchema = {
  type t;
  type request = {
@as("Type") type_: option<__string>,
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>
}
  type response = {
@as("Type") type_: __string,
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: __string,
@as("SchemaArn") schemaArn: __string,
@as("Content") content: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "ExportSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCodeBinding = {
  type t;
  type request = {
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>,
@as("Language") language: option<__string>
}
  type response = {
@as("Status") status: codeGenerationStatus,
@as("SchemaVersion") schemaVersion: __string,
@as("LastModified") lastModified: __timestampIso8601,
@as("CreationDate") creationDate: __timestampIso8601
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DescribeCodeBindingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSchemaVersion = {
  type t;
  type request = {
@as("SchemaVersion") schemaVersion: option<__string>,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>
}
  
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DeleteSchemaVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteSchema = {
  type t;
  type request = {
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>
}
  
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DeleteSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteResourcePolicy = {
  type t;
  type request = {
@as("RegistryName") registryName: __string
}
  
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DeleteResourcePolicyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRegistry = {
  type t;
  type request = {
@as("RegistryName") registryName: option<__string>
}
  
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DeleteRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDiscoverer = {
  type t;
  type request = {
@as("DiscovererId") discovererId: option<__string>
}
  
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DeleteDiscovererCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateSchema = {
  type t;
  type request = {
@as("Type") type_: type_,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>,
@as("Description") description: __stringMin0Max256,
@as("Content") content: __stringMin1Max100000,
@as("ClientTokenId") clientTokenId: __stringMin0Max36
}
  type response = {
@as("VersionCreatedDate") versionCreatedDate: __timestampIso8601,
@as("Type") type_: __string,
@as("Tags") tags: tags,
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: __string,
@as("SchemaArn") schemaArn: __string,
@as("LastModified") lastModified: __timestampIso8601,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "UpdateSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRegistry = {
  type t;
  type request = {
@as("RegistryName") registryName: option<__string>,
@as("Description") description: __stringMin0Max256
}
  type response = {
@as("Tags") tags: tags,
@as("RegistryName") registryName: __string,
@as("RegistryArn") registryArn: __string,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "UpdateRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDiscoverer = {
  type t;
  type request = {
@as("DiscovererId") discovererId: option<__string>,
@as("Description") description: __stringMin0Max256
}
  type response = {
@as("Tags") tags: tags,
@as("State") state: discovererState,
@as("SourceArn") sourceArn: __string,
@as("DiscovererId") discovererId: __string,
@as("DiscovererArn") discovererArn: __string,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "UpdateDiscovererCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<__listOf__string>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tags>,
@as("ResourceArn") resourceArn: option<__string>
}
  
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<__string>
}
  type response = {
@as("Tags") tags: tags
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDiscoveredSchema = {
  type t;
  type request = {
@as("Type") type_: option<type_>,
@as("Events") events: option<__listOfGetDiscoveredSchemaVersionItemInput>
}
  type response = {
@as("Content") content: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "GetDiscoveredSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSchema = {
  type t;
  type request = {
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>
}
  type response = {
@as("VersionCreatedDate") versionCreatedDate: __timestampIso8601,
@as("Type") type_: __string,
@as("Tags") tags: tags,
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: __string,
@as("SchemaArn") schemaArn: __string,
@as("LastModified") lastModified: __timestampIso8601,
@as("Description") description: __string,
@as("Content") content: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DescribeSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRegistry = {
  type t;
  type request = {
@as("RegistryName") registryName: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("RegistryName") registryName: __string,
@as("RegistryArn") registryArn: __string,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DescribeRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDiscoverer = {
  type t;
  type request = {
@as("DiscovererId") discovererId: option<__string>
}
  type response = {
@as("Tags") tags: tags,
@as("State") state: discovererState,
@as("SourceArn") sourceArn: __string,
@as("DiscovererId") discovererId: __string,
@as("DiscovererArn") discovererArn: __string,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "DescribeDiscovererCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSchema = {
  type t;
  type request = {
@as("Type") type_: option<type_>,
@as("Tags") tags: tags,
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>,
@as("Description") description: __stringMin0Max256,
@as("Content") content: option<__stringMin1Max100000>
}
  type response = {
@as("VersionCreatedDate") versionCreatedDate: __timestampIso8601,
@as("Type") type_: __string,
@as("Tags") tags: tags,
@as("SchemaVersion") schemaVersion: __string,
@as("SchemaName") schemaName: __string,
@as("SchemaArn") schemaArn: __string,
@as("LastModified") lastModified: __timestampIso8601,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "CreateSchemaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRegistry = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("RegistryName") registryName: option<__string>,
@as("Description") description: __stringMin0Max256
}
  type response = {
@as("Tags") tags: tags,
@as("RegistryName") registryName: __string,
@as("RegistryArn") registryArn: __string,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "CreateRegistryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDiscoverer = {
  type t;
  type request = {
@as("Tags") tags: tags,
@as("SourceArn") sourceArn: option<__stringMin20Max1600>,
@as("Description") description: __stringMin0Max256
}
  type response = {
@as("Tags") tags: tags,
@as("State") state: discovererState,
@as("SourceArn") sourceArn: __string,
@as("DiscovererId") discovererId: __string,
@as("DiscovererArn") discovererArn: __string,
@as("Description") description: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "CreateDiscovererCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchemaVersions = {
  type t;
  type request = {
@as("SchemaName") schemaName: option<__string>,
@as("RegistryName") registryName: option<__string>,
@as("NextToken") nextToken: __string,
@as("Limit") limit: __integer
}
  type response = {
@as("SchemaVersions") schemaVersions: __listOfSchemaVersionSummary,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "ListSchemaVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSchemas = {
  type t;
  type request = {
@as("SchemaNamePrefix") schemaNamePrefix: __string,
@as("RegistryName") registryName: option<__string>,
@as("NextToken") nextToken: __string,
@as("Limit") limit: __integer
}
  type response = {
@as("Schemas") schemas: __listOfSchemaSummary,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "ListSchemasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRegistries = {
  type t;
  type request = {
@as("Scope") scope: __string,
@as("RegistryNamePrefix") registryNamePrefix: __string,
@as("NextToken") nextToken: __string,
@as("Limit") limit: __integer
}
  type response = {
@as("Registries") registries: __listOfRegistrySummary,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "ListRegistriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDiscoverers = {
  type t;
  type request = {
@as("SourceArnPrefix") sourceArnPrefix: __string,
@as("NextToken") nextToken: __string,
@as("Limit") limit: __integer,
@as("DiscovererIdPrefix") discovererIdPrefix: __string
}
  type response = {
@as("NextToken") nextToken: __string,
@as("Discoverers") discoverers: __listOfDiscovererSummary
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "ListDiscoverersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SearchSchemas = {
  type t;
  type request = {
@as("RegistryName") registryName: option<__string>,
@as("NextToken") nextToken: __string,
@as("Limit") limit: __integer,
@as("Keywords") keywords: option<__string>
}
  type response = {
@as("Schemas") schemas: __listOfSearchSchemaSummary,
@as("NextToken") nextToken: __string
}
  @module("@aws-sdk/client-schemas") @new external new_: (request) => t = "SearchSchemasCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
