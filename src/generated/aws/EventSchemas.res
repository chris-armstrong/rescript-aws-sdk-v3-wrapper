type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-schemas") @new
external createClient: unit => awsServiceClient = "EventSchemasClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type __timestampIso8601 = Js.Date.t
type __stringMin20Max1600 = string
type __stringMin1Max100000 = string
type __stringMin0Max36 = string
type __stringMin0Max256 = string
type __string = string
type __long = float
type __integer = int
type type_ = [@as("JSONSchemaDraft4") #JSONSchemaDraft4 | @as("OpenApi3") #OpenApi3]
type synthesizedJson__string = string
type getDiscoveredSchemaVersionItemInput = string
type discovererState = [@as("STOPPED") #STOPPED | @as("STARTED") #STARTED]
type codeGenerationStatus = [
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]
type body = NodeJs.Buffer.t
type __listOf__string = array<__string>
type __listOfGetDiscoveredSchemaVersionItemInput = array<getDiscoveredSchemaVersionItemInput>
type tags = Js.Dict.t<__string>
type searchSchemaVersionSummary = {
  @as("Type") type_: option<type_>,
  @as("SchemaVersion") schemaVersion: option<__string>,
  @as("CreatedDate") createdDate: option<__timestampIso8601>,
}
type schemaVersionSummary = {
  @as("Type") type_: option<type_>,
  @as("SchemaVersion") schemaVersion: option<__string>,
  @as("SchemaName") schemaName: option<__string>,
  @as("SchemaArn") schemaArn: option<__string>,
}
type __listOfSearchSchemaVersionSummary = array<searchSchemaVersionSummary>
type __listOfSchemaVersionSummary = array<schemaVersionSummary>
type schemaSummary = {
  @as("VersionCount") versionCount: option<__long>,
  @as("Tags") tags: option<tags>,
  @as("SchemaName") schemaName: option<__string>,
  @as("SchemaArn") schemaArn: option<__string>,
  @as("LastModified") lastModified: option<__timestampIso8601>,
}
type registrySummary = {
  @as("Tags") tags: option<tags>,
  @as("RegistryName") registryName: option<__string>,
  @as("RegistryArn") registryArn: option<__string>,
}
type discovererSummary = {
  @as("Tags") tags: option<tags>,
  @as("State") state: option<discovererState>,
  @as("SourceArn") sourceArn: option<__string>,
  @as("DiscovererId") discovererId: option<__string>,
  @as("DiscovererArn") discovererArn: option<__string>,
}
type __listOfSchemaSummary = array<schemaSummary>
type __listOfRegistrySummary = array<registrySummary>
type __listOfDiscovererSummary = array<discovererSummary>
type searchSchemaSummary = {
  @as("SchemaVersions") schemaVersions: option<__listOfSearchSchemaVersionSummary>,
  @as("SchemaName") schemaName: option<__string>,
  @as("SchemaArn") schemaArn: option<__string>,
  @as("RegistryName") registryName: option<__string>,
}
type __listOfSearchSchemaSummary = array<searchSchemaSummary>

module StopDiscoverer = {
  type t
  type request = {@as("DiscovererId") discovererId: __string}
  type response = {
    @as("State") state: option<discovererState>,
    @as("DiscovererId") discovererId: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "StopDiscovererCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartDiscoverer = {
  type t
  type request = {@as("DiscovererId") discovererId: __string}
  type response = {
    @as("State") state: option<discovererState>,
    @as("DiscovererId") discovererId: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "StartDiscovererCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutResourcePolicy = {
  type t
  type request = {
    @as("RevisionId") revisionId: option<__string>,
    @as("RegistryName") registryName: option<__string>,
    @as("Policy") policy: synthesizedJson__string,
  }
  type response = {
    @as("RevisionId") revisionId: option<__string>,
    @as("Policy") policy: option<synthesizedJson__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "PutResourcePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutCodeBinding = {
  type t
  type request = {
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
    @as("Language") language: __string,
  }
  type response = {
    @as("Status") status: option<codeGenerationStatus>,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("LastModified") lastModified: option<__timestampIso8601>,
    @as("CreationDate") creationDate: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "PutCodeBindingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetResourcePolicy = {
  type t
  type request = {@as("RegistryName") registryName: option<__string>}
  type response = {
    @as("RevisionId") revisionId: option<__string>,
    @as("Policy") policy: option<synthesizedJson__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "GetResourcePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCodeBindingSource = {
  type t
  type request = {
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
    @as("Language") language: __string,
  }
  type response = {@as("Body") body: option<body>}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "GetCodeBindingSourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportSchema = {
  type t
  type request = {
    @as("Type") type_: __string,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
  }
  type response = {
    @as("Type") type_: option<__string>,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: option<__string>,
    @as("SchemaArn") schemaArn: option<__string>,
    @as("Content") content: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ExportSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCodeBinding = {
  type t
  type request = {
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
    @as("Language") language: __string,
  }
  type response = {
    @as("Status") status: option<codeGenerationStatus>,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("LastModified") lastModified: option<__timestampIso8601>,
    @as("CreationDate") creationDate: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeCodeBindingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSchemaVersion = {
  type t
  type request = {
    @as("SchemaVersion") schemaVersion: __string,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
  }

  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteSchemaVersionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSchema = {
  type t
  type request = {
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
  }

  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteResourcePolicy = {
  type t
  type request = {@as("RegistryName") registryName: option<__string>}

  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteResourcePolicyCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRegistry = {
  type t
  type request = {@as("RegistryName") registryName: __string}

  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteRegistryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDiscoverer = {
  type t
  type request = {@as("DiscovererId") discovererId: __string}

  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteDiscovererCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateSchema = {
  type t
  type request = {
    @as("Type") type_: option<type_>,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
    @as("Description") description: option<__stringMin0Max256>,
    @as("Content") content: option<__stringMin1Max100000>,
    @as("ClientTokenId") clientTokenId: option<__stringMin0Max36>,
  }
  type response = {
    @as("VersionCreatedDate") versionCreatedDate: option<__timestampIso8601>,
    @as("Type") type_: option<__string>,
    @as("Tags") tags: option<tags>,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: option<__string>,
    @as("SchemaArn") schemaArn: option<__string>,
    @as("LastModified") lastModified: option<__timestampIso8601>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "UpdateSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRegistry = {
  type t
  type request = {
    @as("RegistryName") registryName: __string,
    @as("Description") description: option<__stringMin0Max256>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("RegistryName") registryName: option<__string>,
    @as("RegistryArn") registryArn: option<__string>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "UpdateRegistryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDiscoverer = {
  type t
  type request = {
    @as("DiscovererId") discovererId: __string,
    @as("Description") description: option<__stringMin0Max256>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("State") state: option<discovererState>,
    @as("SourceArn") sourceArn: option<__string>,
    @as("DiscovererId") discovererId: option<__string>,
    @as("DiscovererArn") discovererArn: option<__string>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "UpdateDiscovererCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: __listOf__string,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-schemas") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tags,
    @as("ResourceArn") resourceArn: __string,
  }

  @module("@aws-sdk/client-schemas") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: __string}
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDiscoveredSchema = {
  type t
  type request = {
    @as("Type") type_: type_,
    @as("Events") events: __listOfGetDiscoveredSchemaVersionItemInput,
  }
  type response = {@as("Content") content: option<__string>}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "GetDiscoveredSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSchema = {
  type t
  type request = {
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
  }
  type response = {
    @as("VersionCreatedDate") versionCreatedDate: option<__timestampIso8601>,
    @as("Type") type_: option<__string>,
    @as("Tags") tags: option<tags>,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: option<__string>,
    @as("SchemaArn") schemaArn: option<__string>,
    @as("LastModified") lastModified: option<__timestampIso8601>,
    @as("Description") description: option<__string>,
    @as("Content") content: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeRegistry = {
  type t
  type request = {@as("RegistryName") registryName: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("RegistryName") registryName: option<__string>,
    @as("RegistryArn") registryArn: option<__string>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeRegistryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeDiscoverer = {
  type t
  type request = {@as("DiscovererId") discovererId: __string}
  type response = {
    @as("Tags") tags: option<tags>,
    @as("State") state: option<discovererState>,
    @as("SourceArn") sourceArn: option<__string>,
    @as("DiscovererId") discovererId: option<__string>,
    @as("DiscovererArn") discovererArn: option<__string>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeDiscovererCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSchema = {
  type t
  type request = {
    @as("Type") type_: type_,
    @as("Tags") tags: option<tags>,
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
    @as("Description") description: option<__stringMin0Max256>,
    @as("Content") content: __stringMin1Max100000,
  }
  type response = {
    @as("VersionCreatedDate") versionCreatedDate: option<__timestampIso8601>,
    @as("Type") type_: option<__string>,
    @as("Tags") tags: option<tags>,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: option<__string>,
    @as("SchemaArn") schemaArn: option<__string>,
    @as("LastModified") lastModified: option<__timestampIso8601>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "CreateSchemaCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRegistry = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("RegistryName") registryName: __string,
    @as("Description") description: option<__stringMin0Max256>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("RegistryName") registryName: option<__string>,
    @as("RegistryArn") registryArn: option<__string>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "CreateRegistryCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDiscoverer = {
  type t
  type request = {
    @as("Tags") tags: option<tags>,
    @as("SourceArn") sourceArn: __stringMin20Max1600,
    @as("Description") description: option<__stringMin0Max256>,
  }
  type response = {
    @as("Tags") tags: option<tags>,
    @as("State") state: option<discovererState>,
    @as("SourceArn") sourceArn: option<__string>,
    @as("DiscovererId") discovererId: option<__string>,
    @as("DiscovererArn") discovererArn: option<__string>,
    @as("Description") description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "CreateDiscovererCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemaVersions = {
  type t
  type request = {
    @as("SchemaName") schemaName: __string,
    @as("RegistryName") registryName: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
  }
  type response = {
    @as("SchemaVersions") schemaVersions: option<__listOfSchemaVersionSummary>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListSchemaVersionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSchemas = {
  type t
  type request = {
    @as("SchemaNamePrefix") schemaNamePrefix: option<__string>,
    @as("RegistryName") registryName: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
  }
  type response = {
    @as("Schemas") schemas: option<__listOfSchemaSummary>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListSchemasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRegistries = {
  type t
  type request = {
    @as("Scope") scope: option<__string>,
    @as("RegistryNamePrefix") registryNamePrefix: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
  }
  type response = {
    @as("Registries") registries: option<__listOfRegistrySummary>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListRegistriesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDiscoverers = {
  type t
  type request = {
    @as("SourceArnPrefix") sourceArnPrefix: option<__string>,
    @as("NextToken") nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
    @as("DiscovererIdPrefix") discovererIdPrefix: option<__string>,
  }
  type response = {
    @as("NextToken") nextToken: option<__string>,
    @as("Discoverers") discoverers: option<__listOfDiscovererSummary>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListDiscoverersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchSchemas = {
  type t
  type request = {
    @as("RegistryName") registryName: __string,
    @as("NextToken") nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
    @as("Keywords") keywords: __string,
  }
  type response = {
    @as("Schemas") schemas: option<__listOfSearchSchemaSummary>,
    @as("NextToken") nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "SearchSchemasCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
