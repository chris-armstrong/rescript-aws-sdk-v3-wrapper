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
type __boolean = bool
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
@ocaml.doc("<p>Key-value pairs associated with a resource.</p>") type tags = Js.Dict.t<__string>
type searchSchemaVersionSummary = {
  @ocaml.doc("<p>The type of schema.</p>") @as("Type") type_: option<type_>,
  @ocaml.doc("<p>The version number of the schema</p>") @as("SchemaVersion")
  schemaVersion: option<__string>,
  @ocaml.doc("<p>The date the schema version was created.</p>") @as("CreatedDate")
  createdDate: option<__timestampIso8601>,
}
type schemaVersionSummary = {
  @ocaml.doc("<p>The type of schema.</p>") @as("Type") type_: option<type_>,
  @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersion")
  schemaVersion: option<__string>,
  @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: option<__string>,
  @ocaml.doc("<p>The ARN of the schema version.</p>") @as("SchemaArn") schemaArn: option<__string>,
}
type __listOfSearchSchemaVersionSummary = array<searchSchemaVersionSummary>
type __listOfSchemaVersionSummary = array<schemaVersionSummary>
@ocaml.doc("<p>A summary of schema details.</p>")
type schemaSummary = {
  @ocaml.doc("<p>The number of versions available for the schema.</p>") @as("VersionCount")
  versionCount: option<__long>,
  @ocaml.doc("<p>Tags associated with the schema.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: option<__string>,
  @ocaml.doc("<p>The ARN of the schema.</p>") @as("SchemaArn") schemaArn: option<__string>,
  @ocaml.doc("<p>The date and time that schema was modified.</p>") @as("LastModified")
  lastModified: option<__timestampIso8601>,
}
type registrySummary = {
  @ocaml.doc("<p>Tags associated with the registry.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: option<__string>,
  @ocaml.doc("<p>The ARN of the registry.</p>") @as("RegistryArn") registryArn: option<__string>,
}
type discovererSummary = {
  @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: option<tags>,
  @ocaml.doc(
    "<p>The Status if the discoverer will discover schemas from events sent from another account.</p>"
  )
  @as("CrossAccount")
  crossAccount: option<__boolean>,
  @ocaml.doc("<p>The state of the discoverer.</p>") @as("State") state: option<discovererState>,
  @ocaml.doc("<p>The ARN of the event bus.</p>") @as("SourceArn") sourceArn: option<__string>,
  @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId") discovererId: option<__string>,
  @ocaml.doc("<p>The ARN of the discoverer.</p>") @as("DiscovererArn")
  discovererArn: option<__string>,
}
type __listOfSchemaSummary = array<schemaSummary>
type __listOfRegistrySummary = array<registrySummary>
type __listOfDiscovererSummary = array<discovererSummary>
type searchSchemaSummary = {
  @ocaml.doc("<p>An array of schema version summaries.</p>") @as("SchemaVersions")
  schemaVersions: option<__listOfSearchSchemaVersionSummary>,
  @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: option<__string>,
  @ocaml.doc("<p>The ARN of the schema.</p>") @as("SchemaArn") schemaArn: option<__string>,
  @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: option<__string>,
}
type __listOfSearchSchemaSummary = array<searchSchemaSummary>
@ocaml.doc("<p>Amazon EventBridge Schema Registry</p>")
module StopDiscoverer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId") discovererId: __string,
  }
  type response = {
    @ocaml.doc("<p>The state of the discoverer.</p>") @as("State") state: option<discovererState>,
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId")
    discovererId: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "StopDiscovererCommand"
  let make = (~discovererId, ()) => new({discovererId: discovererId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartDiscoverer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId") discovererId: __string,
  }
  type response = {
    @ocaml.doc("<p>The state of the discoverer.</p>") @as("State") state: option<discovererState>,
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId")
    discovererId: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "StartDiscovererCommand"
  let make = (~discovererId, ()) => new({discovererId: discovererId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutResourcePolicy = {
  type t
  @ocaml.doc("<p>The name of the policy.</p>")
  type request = {
    @ocaml.doc("<p>The revision ID of the policy.</p>") @as("RevisionId")
    revisionId: option<__string>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<__string>,
    @ocaml.doc("<p>The resource-based policy.</p>") @as("Policy") policy: synthesizedJson__string,
  }
  type response = {
    @ocaml.doc("<p>The revision ID of the policy.</p>") @as("RevisionId")
    revisionId: option<__string>,
    @ocaml.doc("<p>The resource-based policy.</p>") @as("Policy")
    policy: option<synthesizedJson__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "PutResourcePolicyCommand"
  let make = (~policy, ~revisionId=?, ~registryName=?, ()) =>
    new({revisionId, registryName, policy})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutCodeBinding = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this limits the results to only this schema version.</p>")
    @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc("<p>The language of the code binding.</p>") @as("Language") language: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of code binding generation.</p>") @as("Status")
    status: option<codeGenerationStatus>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The date and time that code bindings were modified.</p>") @as("LastModified")
    lastModified: option<__timestampIso8601>,
    @ocaml.doc("<p>The time and date that the code binding was created.</p>") @as("CreationDate")
    creationDate: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "PutCodeBindingCommand"
  let make = (~schemaName, ~registryName, ~language, ~schemaVersion=?, ()) =>
    new({schemaVersion, schemaName, registryName, language})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<__string>,
  }
  type response = {
    @ocaml.doc("<p>The revision ID.</p>") @as("RevisionId") revisionId: option<__string>,
    @ocaml.doc("<p>The resource-based policy.</p>") @as("Policy")
    policy: option<synthesizedJson__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "GetResourcePolicyCommand"
  let make = (~registryName=?, ()) => new({registryName: registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCodeBindingSource = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this limits the results to only this schema version.</p>")
    @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc("<p>The language of the code binding.</p>") @as("Language") language: __string,
  }
  type response = {@as("Body") body: option<body>}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "GetCodeBindingSourceCommand"
  let make = (~schemaName, ~registryName, ~language, ~schemaVersion=?, ()) =>
    new({schemaVersion, schemaName, registryName, language})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportSchema = {
  type t
  type request = {
    @as("Type") type_: __string,
    @ocaml.doc("<p>Specifying this limits the results to only this schema version.</p>")
    @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
  }
  type response = {
    @as("Type") type_: option<__string>,
    @as("SchemaVersion") schemaVersion: option<__string>,
    @as("SchemaName") schemaName: option<__string>,
    @as("SchemaArn") schemaArn: option<__string>,
    @as("Content") content: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ExportSchemaCommand"
  let make = (~type_, ~schemaName, ~registryName, ~schemaVersion=?, ()) =>
    new({type_, schemaVersion, schemaName, registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCodeBinding = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this limits the results to only this schema version.</p>")
    @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc("<p>The language of the code binding.</p>") @as("Language") language: __string,
  }
  type response = {
    @ocaml.doc("<p>The current status of code binding generation.</p>") @as("Status")
    status: option<codeGenerationStatus>,
    @ocaml.doc("<p>The version number of the schema.</p>") @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The date and time that code bindings were modified.</p>") @as("LastModified")
    lastModified: option<__timestampIso8601>,
    @ocaml.doc("<p>The time and date that the code binding was created.</p>") @as("CreationDate")
    creationDate: option<__timestampIso8601>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeCodeBindingCommand"
  let make = (~schemaName, ~registryName, ~language, ~schemaVersion=?, ()) =>
    new({schemaVersion, schemaName, registryName, language})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSchemaVersion = {
  type t
  type request = {
    @ocaml.doc("The version number of the schema") @as("SchemaVersion") schemaVersion: __string,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteSchemaVersionCommand"
  let make = (~schemaVersion, ~schemaName, ~registryName, ()) =>
    new({schemaVersion, schemaName, registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteSchemaCommand"
  let make = (~schemaName, ~registryName, ()) => new({schemaName, registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<__string>,
  }
  type response = {.}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~registryName=?, ()) => new({registryName: registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteRegistry = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteRegistryCommand"
  let make = (~registryName, ()) => new({registryName: registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDiscoverer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId") discovererId: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DeleteDiscovererCommand"
  let make = (~discovererId, ()) => new({discovererId: discovererId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The schema type for the events schema.</p>") @as("Type") type_: option<type_>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc("<p>The description of the schema.</p>") @as("Description")
    description: option<__stringMin0Max256>,
    @ocaml.doc("<p>The source of the schema definition.</p>") @as("Content")
    content: option<__stringMin1Max100000>,
    @ocaml.doc("<p>The ID of the client token.</p>") @as("ClientTokenId")
    clientTokenId: option<__stringMin0Max36>,
  }
  type response = {
    @ocaml.doc("<p>The date the schema version was created.</p>") @as("VersionCreatedDate")
    versionCreatedDate: option<__timestampIso8601>,
    @ocaml.doc("<p>The type of the schema.</p>") @as("Type") type_: option<__string>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The version number of the schema</p>") @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: option<__string>,
    @ocaml.doc("<p>The ARN of the schema.</p>") @as("SchemaArn") schemaArn: option<__string>,
    @ocaml.doc("<p>The date and time that schema was modified.</p>") @as("LastModified")
    lastModified: option<__timestampIso8601>,
    @ocaml.doc("<p>The description of the schema.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "UpdateSchemaCommand"
  let make = (
    ~schemaName,
    ~registryName,
    ~type_=?,
    ~description=?,
    ~content=?,
    ~clientTokenId=?,
    (),
  ) => new({type_, schemaName, registryName, description, content, clientTokenId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateRegistry = {
  type t
  @ocaml.doc("<p>Updates the registry.</p>")
  type request = {
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc("<p>The description of the registry to update.</p>") @as("Description")
    description: option<__stringMin0Max256>,
  }
  type response = {
    @ocaml.doc("<p>Tags associated with the registry.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<__string>,
    @ocaml.doc("<p>The ARN of the registry.</p>") @as("RegistryArn") registryArn: option<__string>,
    @ocaml.doc("<p>The description of the registry.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "UpdateRegistryCommand"
  let make = (~registryName, ~description=?, ()) => new({registryName, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDiscoverer = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Support discovery of schemas in events sent to the bus from another account. (default: true)</p>"
    )
    @as("CrossAccount")
    crossAccount: option<__boolean>,
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId") discovererId: __string,
    @ocaml.doc("<p>The description of the discoverer to update.</p>") @as("Description")
    description: option<__stringMin0Max256>,
  }
  type response = {
    @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>The Status if the discoverer will discover schemas from events sent from another account.</p>"
    )
    @as("CrossAccount")
    crossAccount: option<__boolean>,
    @ocaml.doc("<p>The state of the discoverer.</p>") @as("State") state: option<discovererState>,
    @ocaml.doc("<p>The ARN of the event bus.</p>") @as("SourceArn") sourceArn: option<__string>,
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId")
    discovererId: option<__string>,
    @ocaml.doc("<p>The ARN of the discoverer.</p>") @as("DiscovererArn")
    discovererArn: option<__string>,
    @ocaml.doc("<p>The description of the discoverer.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "UpdateDiscovererCommand"
  let make = (~discovererId, ~crossAccount=?, ~description=?, ()) =>
    new({crossAccount, discovererId, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Keys of key-value pairs.</p>") @as("TagKeys") tagKeys: __listOf__string,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: tags,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: __string,
  }
  type response = {.}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: __string,
  }
  type response = {@as("Tags") tags: option<tags>}
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDiscoveredSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The type of event.</p>") @as("Type") type_: type_,
    @ocaml.doc(
      "<p>An array of strings where each string is a JSON event. These are the events that were used to generate the schema. The array includes a single type of event and has a maximum size of 10 events.</p>"
    )
    @as("Events")
    events: __listOfGetDiscoveredSchemaVersionItemInput,
  }
  type response = {
    @ocaml.doc("<p>The source of the schema definition.</p>") @as("Content")
    content: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "GetDiscoveredSchemaCommand"
  let make = (~type_, ~events, ()) => new({type_, events})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeSchema = {
  type t
  type request = {
    @ocaml.doc("<p>Specifying this limits the results to only this schema version.</p>")
    @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
  }
  type response = {
    @ocaml.doc("<p>The date the schema version was created.</p>") @as("VersionCreatedDate")
    versionCreatedDate: option<__timestampIso8601>,
    @ocaml.doc("<p>The type of the schema.</p>") @as("Type") type_: option<__string>,
    @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The version number of the schema</p>") @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: option<__string>,
    @ocaml.doc("<p>The ARN of the schema.</p>") @as("SchemaArn") schemaArn: option<__string>,
    @ocaml.doc("<p>The date and time that schema was modified.</p>") @as("LastModified")
    lastModified: option<__timestampIso8601>,
    @ocaml.doc("<p>The description of the schema.</p>") @as("Description")
    description: option<__string>,
    @ocaml.doc("<p>The source of the schema definition.</p>") @as("Content")
    content: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeSchemaCommand"
  let make = (~schemaName, ~registryName, ~schemaVersion=?, ()) =>
    new({schemaVersion, schemaName, registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRegistry = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
  }
  type response = {
    @ocaml.doc("<p>Tags associated with the registry.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<__string>,
    @ocaml.doc("<p>The ARN of the registry.</p>") @as("RegistryArn") registryArn: option<__string>,
    @ocaml.doc("<p>The description of the registry.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeRegistryCommand"
  let make = (~registryName, ()) => new({registryName: registryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDiscoverer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId") discovererId: __string,
  }
  type response = {
    @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>The Status if the discoverer will discover schemas from events sent from another account.</p>"
    )
    @as("CrossAccount")
    crossAccount: option<__boolean>,
    @ocaml.doc("<p>The state of the discoverer.</p>") @as("State") state: option<discovererState>,
    @ocaml.doc("<p>The ARN of the event bus.</p>") @as("SourceArn") sourceArn: option<__string>,
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId")
    discovererId: option<__string>,
    @ocaml.doc("<p>The ARN of the discoverer.</p>") @as("DiscovererArn")
    discovererArn: option<__string>,
    @ocaml.doc("<p>The description of the discoverer.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "DescribeDiscovererCommand"
  let make = (~discovererId, ()) => new({discovererId: discovererId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The type of schema.</p>") @as("Type") type_: type_,
    @ocaml.doc("<p>Tags associated with the schema.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc("<p>A description of the schema.</p>") @as("Description")
    description: option<__stringMin0Max256>,
    @ocaml.doc("<p>The source of the schema definition.</p>") @as("Content")
    content: __stringMin1Max100000,
  }
  type response = {
    @ocaml.doc("<p>The date the schema version was created.</p>") @as("VersionCreatedDate")
    versionCreatedDate: option<__timestampIso8601>,
    @ocaml.doc("<p>The type of the schema.</p>") @as("Type") type_: option<__string>,
    @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The version number of the schema</p>") @as("SchemaVersion")
    schemaVersion: option<__string>,
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: option<__string>,
    @ocaml.doc("<p>The ARN of the schema.</p>") @as("SchemaArn") schemaArn: option<__string>,
    @ocaml.doc("<p>The date and time that schema was modified.</p>") @as("LastModified")
    lastModified: option<__timestampIso8601>,
    @ocaml.doc("<p>The description of the schema.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "CreateSchemaCommand"
  let make = (~type_, ~schemaName, ~registryName, ~content, ~tags=?, ~description=?, ()) =>
    new({type_, tags, schemaName, registryName, description, content})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateRegistry = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to associate with the registry.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc("<p>A description of the registry to be created.</p>") @as("Description")
    description: option<__stringMin0Max256>,
  }
  type response = {
    @ocaml.doc("<p>Tags associated with the registry.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName")
    registryName: option<__string>,
    @ocaml.doc("<p>The ARN of the registry.</p>") @as("RegistryArn") registryArn: option<__string>,
    @ocaml.doc("<p>The description of the registry.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "CreateRegistryCommand"
  let make = (~registryName, ~tags=?, ~description=?, ()) => new({tags, registryName, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDiscoverer = {
  type t
  type request = {
    @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>Support discovery of schemas in events sent to the bus from another account. (default: true).</p>"
    )
    @as("CrossAccount")
    crossAccount: option<__boolean>,
    @ocaml.doc("<p>The ARN of the event bus.</p>") @as("SourceArn") sourceArn: __stringMin20Max1600,
    @ocaml.doc("<p>A description for the discoverer.</p>") @as("Description")
    description: option<__stringMin0Max256>,
  }
  type response = {
    @ocaml.doc("<p>Tags associated with the resource.</p>") @as("Tags") tags: option<tags>,
    @ocaml.doc(
      "<p>The Status if the discoverer will discover schemas from events sent from another account.</p>"
    )
    @as("CrossAccount")
    crossAccount: option<__boolean>,
    @ocaml.doc("<p>The state of the discoverer.</p>") @as("State") state: option<discovererState>,
    @ocaml.doc("<p>The ARN of the event bus.</p>") @as("SourceArn") sourceArn: option<__string>,
    @ocaml.doc("<p>The ID of the discoverer.</p>") @as("DiscovererId")
    discovererId: option<__string>,
    @ocaml.doc("<p>The ARN of the discoverer.</p>") @as("DiscovererArn")
    discovererArn: option<__string>,
    @ocaml.doc("<p>The description of the discoverer.</p>") @as("Description")
    description: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "CreateDiscovererCommand"
  let make = (~sourceArn, ~tags=?, ~crossAccount=?, ~description=?, ()) =>
    new({tags, crossAccount, sourceArn, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSchemaVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the schema.</p>") @as("SchemaName") schemaName: __string,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
  }
  type response = {
    @ocaml.doc("<p>An array of schema version summaries.</p>") @as("SchemaVersions")
    schemaVersions: option<__listOfSchemaVersionSummary>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListSchemaVersionsCommand"
  let make = (~schemaName, ~registryName, ~nextToken=?, ~limit=?, ()) =>
    new({schemaName, registryName, nextToken, limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListSchemas = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifying this limits the results to only those schema names that start with the specified prefix.</p>"
    )
    @as("SchemaNamePrefix")
    schemaNamePrefix: option<__string>,
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
  }
  type response = {
    @ocaml.doc("<p>An array of schema summaries.</p>") @as("Schemas")
    schemas: option<__listOfSchemaSummary>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListSchemasCommand"
  let make = (~registryName, ~schemaNamePrefix=?, ~nextToken=?, ~limit=?, ()) =>
    new({schemaNamePrefix, registryName, nextToken, limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRegistries = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Can be set to Local or AWS to limit responses to your custom registries, or the ones provided by AWS.</p>"
    )
    @as("Scope")
    scope: option<__string>,
    @ocaml.doc(
      "<p>Specifying this limits the results to only those registry names that start with the specified prefix.</p>"
    )
    @as("RegistryNamePrefix")
    registryNamePrefix: option<__string>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
  }
  type response = {
    @ocaml.doc("<p>An array of registry summaries.</p>") @as("Registries")
    registries: option<__listOfRegistrySummary>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListRegistriesCommand"
  let make = (~scope=?, ~registryNamePrefix=?, ~nextToken=?, ~limit=?, ()) =>
    new({scope, registryNamePrefix, nextToken, limit})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDiscoverers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifying this limits the results to only those ARNs that start with the specified prefix.</p>"
    )
    @as("SourceArnPrefix")
    sourceArnPrefix: option<__string>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
    @ocaml.doc(
      "<p>Specifying this limits the results to only those discoverer IDs that start with the specified prefix.</p>"
    )
    @as("DiscovererIdPrefix")
    discovererIdPrefix: option<__string>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @ocaml.doc("<p>An array of DiscovererSummary information.</p>") @as("Discoverers")
    discoverers: option<__listOfDiscovererSummary>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "ListDiscoverersCommand"
  let make = (~sourceArnPrefix=?, ~nextToken=?, ~limit=?, ~discovererIdPrefix=?, ()) =>
    new({sourceArnPrefix, nextToken, limit, discovererIdPrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module SearchSchemas = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the registry.</p>") @as("RegistryName") registryName: __string,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
    @as("Limit") limit: option<__integer>,
    @ocaml.doc(
      "<p>Specifying this limits the results to only schemas that include the provided keywords.</p>"
    )
    @as("Keywords")
    keywords: __string,
  }
  type response = {
    @ocaml.doc("<p>An array of SearchSchemaSummary information.</p>") @as("Schemas")
    schemas: option<__listOfSearchSchemaSummary>,
    @ocaml.doc(
      "<p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>"
    )
    @as("NextToken")
    nextToken: option<__string>,
  }
  @module("@aws-sdk/client-schemas") @new external new: request => t = "SearchSchemasCommand"
  let make = (~registryName, ~keywords, ~nextToken=?, ~limit=?, ()) =>
    new({registryName, nextToken, limit, keywords})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
