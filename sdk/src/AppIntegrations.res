type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-app-integrations") @new
external createClient: unit => awsServiceClient = "AppIntegrationsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type uuid = string
type tagValue = string
type tagKey = string
type source = string
type schedule = string
type object_ = string
type nonBlankString = string
type nextToken = string
type name = string
type message = string
type maxResults = int
type identifier = string
type idempotencyToken = string
type eventBridgeRuleName = string
type eventBridgeBus = string
type description = string
type clientId = string
type arn = string
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The name of the data and how often it should be pulled from the source.</p>")
type scheduleConfiguration = {
  @ocaml.doc("<p>How often the data should be pulled from data source.</p>")
  @as("ScheduleExpression")
  scheduleExpression: option<schedule>,
  @ocaml.doc("<p>The name of the object to pull from the data source.</p>") @as("Object")
  object_: option<object_>,
  @ocaml.doc("<p>The start date for objects to import in the first flow run.</p>")
  @as("FirstExecutionFrom")
  firstExecutionFrom: option<nonBlankString>,
}
@ocaml.doc("<p>The event filter.</p>")
type eventFilter = {@ocaml.doc("<p>The source of the events.</p>") @as("Source") source: source}
@ocaml.doc("<p>Summary information about the DataIntegration.</p>")
type dataIntegrationSummary = {
  @ocaml.doc("<p>The URI of the data source.</p>") @as("SourceURI")
  sourceURI: option<nonBlankString>,
  @ocaml.doc("<p>The name of the DataIntegration.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the DataIntegration.</p>") @as("Arn")
  arn: option<arn>,
}
@ocaml.doc("<p>Summary information about the DataIntegration association.</p>")
type dataIntegrationAssociationSummary = {
  @ocaml.doc("<p>The identifier for teh client that is associated with the DataIntegration
      association.</p>")
  @as("ClientId")
  clientId: option<clientId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN)of the DataIntegration.</p>")
  @as("DataIntegrationArn")
  dataIntegrationArn: option<arn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the DataIntegration association.</p>")
  @as("DataIntegrationAssociationArn")
  dataIntegrationAssociationArn: option<arn>,
}
type clientAssociationMetadata = Js.Dict.t<nonBlankString>
@ocaml.doc("<p>The event integration association.</p>")
type eventIntegrationAssociation = {
  @ocaml.doc("<p>The metadata associated with the client.</p>") @as("ClientAssociationMetadata")
  clientAssociationMetadata: option<clientAssociationMetadata>,
  @ocaml.doc("<p>The name of the EventBridge rule.</p>") @as("EventBridgeRuleName")
  eventBridgeRuleName: option<eventBridgeRuleName>,
  @ocaml.doc("<p>The identifier for the client that is associated with the event integration.</p>")
  @as("ClientId")
  clientId: option<clientId>,
  @ocaml.doc("<p>The name of the event integration.</p>") @as("EventIntegrationName")
  eventIntegrationName: option<name>,
  @ocaml.doc("<p>The identifier for the event integration association.</p>")
  @as("EventIntegrationAssociationId")
  eventIntegrationAssociationId: option<uuid>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event integration association.</p>")
  @as("EventIntegrationAssociationArn")
  eventIntegrationAssociationArn: option<arn>,
}
@ocaml.doc("<p>The event integration.</p>")
type eventIntegration = {
  @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The Amazon EventBridge bus for the event integration.</p>") @as("EventBridgeBus")
  eventBridgeBus: option<eventBridgeBus>,
  @ocaml.doc("<p>The event integration filter.</p>") @as("EventFilter")
  eventFilter: option<eventFilter>,
  @ocaml.doc("<p>The event integration description.</p>") @as("Description")
  description: option<description>,
  @ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event integration.</p>")
  @as("EventIntegrationArn")
  eventIntegrationArn: option<arn>,
}
type dataIntegrationsList = array<dataIntegrationSummary>
type dataIntegrationAssociationsList = array<dataIntegrationAssociationSummary>
type eventIntegrationsList = array<eventIntegration>
type eventIntegrationAssociationsList = array<eventIntegrationAssociation>
@ocaml.doc("<p>The Amazon AppIntegrations service enables you to configure and reuse connections to external
      applications.</p>
         <p>For information about how you can use external applications with Amazon Connect, see <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/crm.html\">Set up pre-built
      integrations</a> and <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-wisdom.html\">Deliver information to agents using Amazon Connect Wisdom</a>
       in the <i>Amazon Connect Administrator Guide</i>.</p>")
module UpdateEventIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the event inegration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: name,
  }
  type response = {.}
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "UpdateEventIntegrationCommand"
  let make = (~name, ~description=?, ()) => new({description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDataIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the DataIntegration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the DataIntegration.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>A unique identifier for the DataIntegration.</p>") @as("Identifier")
    identifier: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "UpdateDataIntegrationCommand"
  let make = (~identifier, ~description=?, ~name=?, ()) =>
    new({description: description, name: name, identifier: identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEventIntegration = {
  type t
  type request = {@ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: name}
  type response = {.}
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "DeleteEventIntegrationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDataIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the DataIntegration.</p>")
    @as("DataIntegrationIdentifier")
    dataIntegrationIdentifier: identifier,
  }
  type response = {.}
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "DeleteDataIntegrationCommand"
  let make = (~dataIntegrationIdentifier, ()) =>
    new({dataIntegrationIdentifier: dataIntegrationIdentifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags. </p>") tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-app-integrations") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. </p>") resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>Information about the tags.</p>") tags: option<tagMap>}
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEventIntegration = {
  type t
  type request = {@ocaml.doc("<p>The name of the event integration. </p>") @as("Name") name: name}
  type response = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The event filter.</p>") @as("EventFilter") eventFilter: option<eventFilter>,
    @ocaml.doc("<p>The EventBridge bus.</p>") @as("EventBridgeBus")
    eventBridgeBus: option<eventBridgeBus>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the event integration.</p>")
    @as("EventIntegrationArn")
    eventIntegrationArn: option<arn>,
    @ocaml.doc("<p>The description of the event integration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the event integration. </p>") @as("Name") name: option<name>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "GetEventIntegrationCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDataIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier.</p>") @as("Identifier") identifier: identifier,
  }
  type response = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The name of the data and how often it should be pulled from the source.</p>")
    @as("ScheduleConfiguration")
    scheduleConfiguration: option<scheduleConfiguration>,
    @ocaml.doc("<p>The URI of the data source.</p>") @as("SourceURI")
    sourceURI: option<nonBlankString>,
    @ocaml.doc("<p>The KMS key for the DataIntegration.</p>") @as("KmsKey")
    kmsKey: option<nonBlankString>,
    @ocaml.doc("<p>The KMS key for the DataIntegration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the DataIntegration.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>A unique identifier.</p>") @as("Id") id: option<uuid>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the DataIntegration.</p>") @as("Arn")
    arn: option<arn>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "GetDataIntegrationCommand"
  let make = (~identifier, ()) => new({identifier: identifier})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEventIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
      request.</p>")
    @as("ClientToken")
    clientToken: option<idempotencyToken>,
    @ocaml.doc("<p>The EventBridge bus.</p>") @as("EventBridgeBus") eventBridgeBus: eventBridgeBus,
    @ocaml.doc("<p>The event filter.</p>") @as("EventFilter") eventFilter: eventFilter,
    @ocaml.doc("<p>The description of the event integration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the event integration.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the event integration. </p>")
    @as("EventIntegrationArn")
    eventIntegrationArn: option<arn>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "CreateEventIntegrationCommand"
  let make = (~eventBridgeBus, ~eventFilter, ~name, ~tags=?, ~clientToken=?, ~description=?, ()) =>
    new({
      tags: tags,
      clientToken: clientToken,
      eventBridgeBus: eventBridgeBus,
      eventFilter: eventFilter,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDataIntegration = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    @as("ClientToken")
    clientToken: option<idempotencyToken>,
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The name of the data and how often it should be pulled from the source.</p>")
    @as("ScheduleConfig")
    scheduleConfig: option<scheduleConfiguration>,
    @ocaml.doc("<p>The URI of the data source.</p>") @as("SourceURI")
    sourceURI: option<nonBlankString>,
    @ocaml.doc("<p>The KMS key for the DataIntegration.</p>") @as("KmsKey")
    kmsKey: option<nonBlankString>,
    @ocaml.doc("<p>A description of the DataIntegration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the DataIntegration.</p>") @as("Name") name: name,
  }
  type response = {
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
            request.</p>")
    @as("ClientToken")
    clientToken: option<idempotencyToken>,
    @ocaml.doc("<p>One or more tags.</p>") @as("Tags") tags: option<tagMap>,
    @ocaml.doc("<p>The name of the data and how often it should be pulled from the source.</p>")
    @as("ScheduleConfiguration")
    scheduleConfiguration: option<scheduleConfiguration>,
    @ocaml.doc("<p>The URI of the data source.</p>") @as("SourceURI")
    sourceURI: option<nonBlankString>,
    @ocaml.doc("<p>The KMS key for the DataIntegration.</p>") @as("KmsKey")
    kmsKey: option<nonBlankString>,
    @ocaml.doc("<p>A description of the DataIntegration.</p>") @as("Description")
    description: option<description>,
    @ocaml.doc("<p>The name of the DataIntegration.</p>") @as("Name") name: option<name>,
    @ocaml.doc("<p>A unique identifier.</p>") @as("Id") id: option<uuid>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN)</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "CreateDataIntegrationCommand"
  let make = (
    ~name,
    ~clientToken=?,
    ~tags=?,
    ~scheduleConfig=?,
    ~sourceURI=?,
    ~kmsKey=?,
    ~description=?,
    (),
  ) =>
    new({
      clientToken: clientToken,
      tags: tags,
      scheduleConfig: scheduleConfig,
      sourceURI: sourceURI,
      kmsKey: kmsKey,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataIntegrations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The DataIntegrations associated with this account.</p>") @as("DataIntegrations")
    dataIntegrations: option<dataIntegrationsList>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListDataIntegrationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDataIntegrationAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A unique identifier for the DataIntegration.</p>")
    @as("DataIntegrationIdentifier")
    dataIntegrationIdentifier: identifier,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) and unique ID of the DataIntegration association.</p>"
    )
    @as("DataIntegrationAssociations")
    dataIntegrationAssociations: option<dataIntegrationAssociationsList>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListDataIntegrationAssociationsCommand"
  let make = (~dataIntegrationIdentifier, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      dataIntegrationIdentifier: dataIntegrationIdentifier,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventIntegrations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The event integrations.</p>") @as("EventIntegrations")
    eventIntegrations: option<eventIntegrationsList>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListEventIntegrationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEventIntegrationAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the event integration. </p>") @as("EventIntegrationName")
    eventIntegrationName: name,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The event integration associations.</p>") @as("EventIntegrationAssociations")
    eventIntegrationAssociations: option<eventIntegrationAssociationsList>,
  }
  @module("@aws-sdk/client-app-integrations") @new
  external new: request => t = "ListEventIntegrationAssociationsCommand"
  let make = (~eventIntegrationName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, eventIntegrationName: eventIntegrationName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
