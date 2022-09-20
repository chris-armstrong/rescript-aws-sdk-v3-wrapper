type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-wisdom") @new
external createClient: unit => awsServiceClient = "WisdomClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type waitTimeSeconds = int
type uuidOrArn = string
type uuid = string
type url = string
type uri = string
type tagValue = string
type tagKey = string

type relevanceScore = float
type relevanceLevel = [@as("LOW") #LOW | @as("MEDIUM") #MEDIUM | @as("HIGH") #HIGH]
type recommendationIdList = array<baseString>
type queryText = string
type notifyRecommendationsReceivedErrorMessage = string
type nonEmptyString = string
type nextToken = string
type name = string
type maxResults = int
type knowledgeBaseType = [@as("CUSTOM") #CUSTOM | @as("EXTERNAL") #EXTERNAL]
type knowledgeBaseStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]

type highlightOffset = int
type genericArn = string
type filterOperator = [@as("EQUALS") #EQUALS]
type filterField = [@as("NAME") #NAME]
type description = string
type contentType = string
type contentTitle = string
type contentStatus = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("DELETED") #DELETED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]

type clientToken = string
type associationType = [@as("KNOWLEDGE_BASE") #KNOWLEDGE_BASE]
type assistantType = [@as("AGENT") #AGENT]
type assistantStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETE_FAILED") #DELETE_FAILED
  | @as("DELETE_IN_PROGRESS") #DELETE_IN_PROGRESS
  | @as("ACTIVE") #ACTIVE
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_IN_PROGRESS") #CREATE_IN_PROGRESS
]

type arn = string
type tags = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Summary information about the session.</p>")
type sessionSummary = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Wisdom assistant</p>") assistantArn: arn,
  @ocaml.doc("<p>The identifier of the Wisdom assistant.</p>") assistantId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the session.</p>") sessionArn: arn,
  @ocaml.doc("<p>The identifier of the session.</p>") sessionId: uuid,
}
@ocaml.doc("<p>The KMS key used for encryption.</p>")
type serverSideEncryptionConfiguration = {
  @ocaml.doc("<p>The KMS key. For information about valid ID values, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id\">Key identifiers (KeyId)</a> in the
        <i>AWS Key Management Service Developer Guide</i>. </p>")
  kmsKeyId: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about how to render the content.</p>")
type renderingConfiguration = {
  @ocaml.doc("<p>A URI template containing exactly one variable in <code>${variableName} </code>format.
      This can only be set for <code>EXTERNAL</code> knowledge bases. For Salesforce and ServiceNow,
      the variable must be one of the following:</p>
         <ul>
            <li>
               <p>Salesforce: <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>,
            <code>Title</code>, <code>PublishStatus</code>, or <code>IsDeleted</code>
               </p>
            </li>
            <li>
               <p>ServiceNow: <code>number</code>, <code>short_description</code>,
            <code>sys_mod_count</code>, <code>workflow_state</code>, or <code>active</code>
               </p>
            </li>
         </ul>

         <p>The variable is replaced with the actual value for a piece of content when calling <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetContent.html\">GetContent</a>. </p>")
  templateUri: option<uri>,
}
type objectFieldsList = array<nonEmptyString>
@ocaml.doc("<p>An error occurred when creating a recommendation.</p>")
type notifyRecommendationsReceivedError = {
  @ocaml.doc("<p>A recommendation is causing an error.</p>")
  message: option<notifyRecommendationsReceivedErrorMessage>,
  @ocaml.doc("<p>The identifier of the recommendation that is in error.</p>")
  recommendationId: option<baseString>,
}
@ocaml.doc("<p>Association information about the knowledge base.</p>")
type knowledgeBaseAssociationData = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the knowledge base.</p>")
  knowledgeBaseArn: option<arn>,
  @ocaml.doc("<p>The the identifier of the knowledge base.</p>") knowledgeBaseId: option<uuid>,
}
@ocaml.doc("<p>Offset specification to describe highlighting of document excerpts for rendering search
      results and recommendations.</p>")
type highlight = {
  @ocaml.doc("<p>The offset for the end of the highlight.</p>")
  endOffsetExclusive: option<highlightOffset>,
  @ocaml.doc("<p>The offset for the start of the highlight.</p>")
  beginOffsetInclusive: option<highlightOffset>,
}
type headers = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>A search filter.</p>")
type filter = {
  @ocaml.doc("<p>The desired field value on which to filter.</p>") value: nonEmptyString,
  @ocaml.doc(
    "<p>The operator to use for comparing the field’s value with the provided value.</p>"
  )
  operator: filterOperator,
  @ocaml.doc("<p>The field on which to filter.</p>") field: filterField,
}
@ocaml.doc("<p>Reference information about the content.</p>")
type contentReference = {
  @ocaml.doc("<p>The identifier of the content.</p>") contentId: option<uuid>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the content.</p>") contentArn: option<arn>,
  @ocaml.doc("<p>The the identifier of the knowledge base.</p>") knowledgeBaseId: option<uuid>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the knowledge base.</p>")
  knowledgeBaseArn: option<arn>,
}
type contentMetadata = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>The data that is input into Wisdom as a result of the assistant association.</p>")
type assistantAssociationInputData = {
  @ocaml.doc("<p>The the identifier of the knowledge base.</p>") knowledgeBaseId: option<uuid>,
}
module AssistantAssociationInputData = {
  type t = KnowledgeBaseId(uuid)
  exception AssistantAssociationInputDataUnspecified
  let classify = value =>
    switch value {
    | {knowledgeBaseId: Some(x)} => KnowledgeBaseId(x)
    | _ => raise(AssistantAssociationInputDataUnspecified)
    }

  let make = value =>
    switch value {
    | KnowledgeBaseId(x) => {knowledgeBaseId: Some(x)}
    }
}
type sessionSummaries = array<sessionSummary>
@ocaml.doc("<p>Information about the session.</p>")
type sessionData = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The description of the session.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the session.</p>") name: name,
  @ocaml.doc("<p>The identifier of the session.</p>") sessionId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the session.</p>") sessionArn: arn,
}
type notifyRecommendationsReceivedErrorList = array<notifyRecommendationsReceivedError>
type highlights = array<highlight>
type filterList = array<filter>
@ocaml.doc("<p>Summary information about the content.</p>")
type contentSummary = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>A key/value map to store attributes without affecting tagging or recommendations. 
For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>")
  metadata: contentMetadata,
  @ocaml.doc("<p>The status of the content.</p>") status: contentStatus,
  @ocaml.doc("<p>The media type of the content.</p>") contentType: contentType,
  @ocaml.doc("<p>The title of the content.</p>") title: contentTitle,
  @ocaml.doc("<p>The identifier of the revision of the content.</p>") revisionId: nonEmptyString,
  @ocaml.doc("<p>The name of the content.</p>") name: name,
  @ocaml.doc("<p>The the identifier of the knowledge base.</p>") knowledgeBaseId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the knowledge base.</p>") knowledgeBaseArn: arn,
  @ocaml.doc("<p>The identifier of the content.</p>") contentId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the content.</p>") contentArn: arn,
}
@ocaml.doc("<p>Information about the content.</p>")
type contentData = {
  @ocaml.doc("<p>The expiration time of the URL as an epoch timestamp.</p>")
  urlExpiry: baseTimestamp,
  @ocaml.doc("<p>The URL of the content.</p>") url: url,
  @ocaml.doc("<p>The URI of the content.</p>") linkOutUri: option<uri>,
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>A key/value map to store attributes without affecting tagging or recommendations. 
For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>")
  metadata: contentMetadata,
  @ocaml.doc("<p>The status of the content.</p>") status: contentStatus,
  @ocaml.doc("<p>The media type of the content.</p>") contentType: contentType,
  @ocaml.doc("<p>The title of the content.</p>") title: contentTitle,
  @ocaml.doc("<p>The identifier of the content revision.</p>") revisionId: nonEmptyString,
  @ocaml.doc("<p>The name of the content.</p>") name: name,
  @ocaml.doc("<p>The the identifier of the knowledge base.</p>") knowledgeBaseId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the knowledge base.</p>") knowledgeBaseArn: arn,
  @ocaml.doc("<p>The identifier of the content.</p>") contentId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the content.</p>") contentArn: arn,
}
@ocaml.doc("<p>Summary information about the assistant.</p>")
type assistantSummary = {
  @ocaml.doc("<p>The KMS key used for encryption.</p>")
  serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The description of the assistant.</p>") description: option<description>,
  @ocaml.doc("<p>The status of the assistant.</p>") status: assistantStatus,
  @ocaml.doc("<p>The type of the assistant.</p>") @as("type") type_: assistantType,
  @ocaml.doc("<p>The name of the assistant.</p>") name: name,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Wisdom assistant</p>") assistantArn: arn,
  @ocaml.doc("<p>The identifier of the Wisdom assistant.</p>") assistantId: uuid,
}
@ocaml.doc("<p>The assistant data.</p>")
type assistantData = {
  @ocaml.doc("<p>The KMS key used for encryption.</p>")
  serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The description.</p>") description: option<description>,
  @ocaml.doc("<p>The status of the assistant.</p>") status: assistantStatus,
  @ocaml.doc("<p>The type of assistant.</p>") @as("type") type_: assistantType,
  @ocaml.doc("<p>The name.</p>") name: name,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Wisdom assistant</p>") assistantArn: arn,
  @ocaml.doc("<p>The identifier of the Wisdom assistant.</p>") assistantId: uuid,
}
@ocaml.doc("<p>The data that is output as a result of the assistant association.</p>")
type assistantAssociationOutputData = {
  @ocaml.doc("<p>The knowledge base where output data is sent.</p>")
  knowledgeBaseAssociation: option<knowledgeBaseAssociationData>,
}
module AssistantAssociationOutputData = {
  type t = KnowledgeBaseAssociation(knowledgeBaseAssociationData)
  exception AssistantAssociationOutputDataUnspecified
  let classify = value =>
    switch value {
    | {knowledgeBaseAssociation: Some(x)} => KnowledgeBaseAssociation(x)
    | _ => raise(AssistantAssociationOutputDataUnspecified)
    }

  let make = value =>
    switch value {
    | KnowledgeBaseAssociation(x) => {knowledgeBaseAssociation: Some(x)}
    }
}
@ocaml.doc(
  "<p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>"
)
type appIntegrationsConfiguration = {
  @ocaml.doc("<p>The fields from the source that are made available to your agents in Wisdom. </p>
         <ul>
            <li>
               <p> For <a href=\"https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm\"> Salesforce</a>, you must include at least <code>Id</code>,
            <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>,
            <code>PublishStatus</code>, and <code>IsDeleted</code>. </p>
            </li>
            <li>
               <p>For <a href=\"https://developer.servicenow.com/dev.do#!/reference/api/rome/rest/knowledge-management-api\"> ServiceNow</a>, you must include at least <code>number</code>,
            <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>,
          and <code>active</code>. </p>
            </li>
         </ul>
         <p>Make sure to include additional field(s); these are indexed and used to source
      recommendations. </p>")
  objectFields: objectFieldsList,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the AppIntegrations DataIntegration to use for ingesting content.</p>"
  )
  appIntegrationArn: genericArn,
}
@ocaml.doc("<p>Configuration information about the external data source.</p>")
type sourceConfiguration = {
  @ocaml.doc(
    "<p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>"
  )
  appIntegrations: option<appIntegrationsConfiguration>,
}
module SourceConfiguration = {
  type t = AppIntegrations(appIntegrationsConfiguration)
  exception SourceConfigurationUnspecified
  let classify = value =>
    switch value {
    | {appIntegrations: Some(x)} => AppIntegrations(x)
    | _ => raise(SourceConfigurationUnspecified)
    }

  let make = value =>
    switch value {
    | AppIntegrations(x) => {appIntegrations: Some(x)}
    }
}
@ocaml.doc("<p>The search expression.</p>")
type searchExpression = {@ocaml.doc("<p>The search expression filters.</p>") filters: filterList}
@ocaml.doc("<p>The text of the document.</p>")
type documentText = {
  @ocaml.doc("<p>Highlights in the document text.</p>") highlights: option<highlights>,
  @ocaml.doc("<p>Text in the document.</p>") text: option<baseString>,
}
type contentSummaryList = array<contentSummary>
type assistantList = array<assistantSummary>
@ocaml.doc("<p>Summary information about the assistant association.</p>")
type assistantAssociationSummary = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The association data.</p>") associationData: assistantAssociationOutputData,
  @ocaml.doc("<p>The type of association.</p>") associationType: associationType,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Wisdom assistant</p>") assistantArn: arn,
  @ocaml.doc("<p>The identifier of the Wisdom assistant.</p>") assistantId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assistant association.</p>")
  assistantAssociationArn: arn,
  @ocaml.doc("<p>The identifier of the assistant association.</p>") assistantAssociationId: uuid,
}
@ocaml.doc("<p>Information about the assistant association.</p>")
type assistantAssociationData = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>A union type that currently has a single argument, the knowledge base ID.</p>")
  associationData: assistantAssociationOutputData,
  @ocaml.doc("<p>The type of association.</p>") associationType: associationType,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Wisdom assistant</p>") assistantArn: arn,
  @ocaml.doc("<p>The identifier of the Wisdom assistant.</p>") assistantId: uuid,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the assistant association.</p>")
  assistantAssociationArn: arn,
  @ocaml.doc("<p>The identifier of the assistant association.</p>") assistantAssociationId: uuid,
}
@ocaml.doc("<p>All Amazon Connect Wisdom functionality is accessible using the API. For example, you can create an
      assistant and a knowledge base.</p>

         <p>Some more advanced features are only accessible using the Wisdom API. For example, you
      can manually manage content by uploading custom files and control their lifecycle. </p>")
@ocaml.doc("<p>Summary information about the knowledge base.</p>")
type knowledgeBaseSummary = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The description of the knowledge base.</p>") description: option<description>,
  @ocaml.doc("<p>The KMS key used for encryption.</p>")
  serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  @ocaml.doc("<p>Information about how to render the content.</p>")
  renderingConfiguration: option<renderingConfiguration>,
  @ocaml.doc("<p>[KEVIN]</p>") sourceConfiguration: option<sourceConfiguration>,
  @ocaml.doc("<p>The status of the knowledge base summary.</p>") status: knowledgeBaseStatus,
  @ocaml.doc("<p>The type of knowledge base.</p>") knowledgeBaseType: knowledgeBaseType,
  @ocaml.doc("<p>The name of the knowledge base.</p>") name: name,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the knowledge base.</p>") knowledgeBaseArn: arn,
  @ocaml.doc("<p>The the identifier of the knowledge base.</p>") knowledgeBaseId: uuid,
}
@ocaml.doc("<p>Information about the knowledge base.</p>")
type knowledgeBaseData = {
  @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
  tags: option<tags>,
  @ocaml.doc("<p>The description.</p>") description: option<description>,
  @ocaml.doc("<p>The KMS key used for encryption.</p>")
  serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
  @ocaml.doc("<p>Information about how to render the content.</p>")
  renderingConfiguration: option<renderingConfiguration>,
  @ocaml.doc("<p>Source configuration information about the knowledge base.</p>")
  sourceConfiguration: option<sourceConfiguration>,
  @ocaml.doc("<p>An epoch timestamp indicating the most recent content modification inside the knowledge
      base. If no content exists in a knowledge base, this value is unset.</p>")
  lastContentModificationTime: option<baseTimestamp>,
  @ocaml.doc("<p>The status of the knowledge base.</p>") status: knowledgeBaseStatus,
  @ocaml.doc("<p>The type of knowledge base.</p>") knowledgeBaseType: knowledgeBaseType,
  @ocaml.doc("<p>The name of the knowledge base.</p>") name: name,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the knowledge base.</p>") knowledgeBaseArn: arn,
  @ocaml.doc("<p>The the identifier of the knowledge base.</p>") knowledgeBaseId: uuid,
}
@ocaml.doc("<p>The document.</p>")
type document = {
  @ocaml.doc("<p>The excerpt from the document.</p>") excerpt: option<documentText>,
  @ocaml.doc("<p>The title of the document.</p>") title: option<documentText>,
  @ocaml.doc("<p>A reference to the content resource.</p>") contentReference: contentReference,
}
type assistantAssociationSummaryList = array<assistantAssociationSummary>
@ocaml.doc("<p>Information about the result.</p>")
type resultData = {
  @ocaml.doc("<p>The relevance score of the results.</p>") relevanceScore: option<relevanceScore>,
  @ocaml.doc("<p>The document.</p>") document: document,
  @ocaml.doc("<p>The identifier of the result data.</p>") resultId: uuid,
}
@ocaml.doc("<p>Information about the recommendation.</p>")
type recommendationData = {
  @ocaml.doc("<p>The relevance level of the recommendation.</p>")
  relevanceLevel: option<relevanceLevel>,
  @ocaml.doc("<p>The relevance score of the recommendation.</p>")
  relevanceScore: option<relevanceScore>,
  @ocaml.doc("<p>The recommended document.</p>") document: document,
  @ocaml.doc("<p>The identifier of the recommendation.</p>") recommendationId: baseString,
}
type knowledgeBaseList = array<knowledgeBaseSummary>
type recommendationList = array<recommendationData>
type queryResultsList = array<resultData>
module RemoveKnowledgeBaseTemplateUri = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
  }
  type response = {.}
  @module("@aws-sdk/client-wisdom") @new
  external new: request => t = "RemoveKnowledgeBaseTemplateUriCommand"
  let make = (~knowledgeBaseId, ()) => new({knowledgeBaseId: knowledgeBaseId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteKnowledgeBase = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
  }
  type response = {.}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "DeleteKnowledgeBaseCommand"
  let make = (~knowledgeBaseId, ()) => new({knowledgeBaseId: knowledgeBaseId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteContent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    contentId: uuidOrArn,
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
  }
  type response = {.}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "DeleteContentCommand"
  let make = (~contentId, ~knowledgeBaseId, ()) =>
    new({contentId: contentId, knowledgeBaseId: knowledgeBaseId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssistantAssociation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
    @ocaml.doc(
      "<p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantAssociationId: uuidOrArn,
  }
  type response = {.}
  @module("@aws-sdk/client-wisdom") @new
  external new: request => t = "DeleteAssistantAssociationCommand"
  let make = (~assistantId, ~assistantAssociationId, ()) =>
    new({assistantId: assistantId, assistantAssociationId: assistantAssociationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssistant = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
  }
  type response = {.}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "DeleteAssistantCommand"
  let make = (~assistantId, ()) => new({assistantId: assistantId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: tags,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module StartContentUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The type of content to upload.</p>") contentType: contentType,
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
  }
  type response = {
    @ocaml.doc("<p>The headers to include in the upload.</p>") headersToInclude: headers,
    @ocaml.doc("<p>The expiration time of the URL as an epoch timestamp.</p>")
    urlExpiry: baseTimestamp,
    @ocaml.doc("<p>The URL of the upload.</p>") url: url,
    @ocaml.doc("<p>The identifier of the upload.</p>") uploadId: nonEmptyString,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "StartContentUploadCommand"
  let make = (~contentType, ~knowledgeBaseId, ()) =>
    new({contentType: contentType, knowledgeBaseId: knowledgeBaseId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: option<tags>,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateContent = {
  type t
  type request = {
    @ocaml.doc("<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.
    </p>")
    uploadId: option<nonEmptyString>,
    @ocaml.doc("<p>A key/value map to store attributes without affecting tagging or recommendations. For
      example, when synchronizing data between an external system and Wisdom, you can store an
      external version identifier as metadata to utilize for determining drift.</p>")
    metadata: option<contentMetadata>,
    @ocaml.doc("<p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>")
    removeOverrideLinkOutUri: option<baseBoolean>,
    @ocaml.doc("<p>The URI for the article. If the knowledge base has a templateUri, setting this argument
      overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>,
      exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>")
    overrideLinkOutUri: option<uri>,
    @ocaml.doc("<p>The title of the content.</p>") title: option<contentTitle>,
    @ocaml.doc("<p>The <code>revisionId</code> of the content resource to update, taken from an earlier call
      to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or
        <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure
      content was not modified since it was last read. If it has been modified, this API throws a
        <code>PreconditionFailedException</code>.</p>")
    revisionId: option<nonEmptyString>,
    @ocaml.doc(
      "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    contentId: uuidOrArn,
    @ocaml.doc("<p>The the identifier of the knowledge base. Can be either the ID or the ARN</p>")
    knowledgeBaseId: uuidOrArn,
  }
  type response = {@ocaml.doc("<p>The content.</p>") content: option<contentData>}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "UpdateContentCommand"
  let make = (
    ~contentId,
    ~knowledgeBaseId,
    ~uploadId=?,
    ~metadata=?,
    ~removeOverrideLinkOutUri=?,
    ~overrideLinkOutUri=?,
    ~title=?,
    ~revisionId=?,
    (),
  ) =>
    new({
      uploadId: uploadId,
      metadata: metadata,
      removeOverrideLinkOutUri: removeOverrideLinkOutUri,
      overrideLinkOutUri: overrideLinkOutUri,
      title: title,
      revisionId: revisionId,
      contentId: contentId,
      knowledgeBaseId: knowledgeBaseId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module NotifyRecommendationsReceived = {
  type t
  type request = {
    @ocaml.doc("<p>The identifiers of the recommendations.</p>")
    recommendationIds: recommendationIdList,
    @ocaml.doc(
      "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    sessionId: uuidOrArn,
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
  }
  type response = {
    @ocaml.doc("<p>The identifiers of recommendations that are causing errors.</p>")
    errors: option<notifyRecommendationsReceivedErrorList>,
    @ocaml.doc("<p>The identifiers of the recommendations.</p>")
    recommendationIds: option<recommendationIdList>,
  }
  @module("@aws-sdk/client-wisdom") @new
  external new: request => t = "NotifyRecommendationsReceivedCommand"
  let make = (~recommendationIds, ~sessionId, ~assistantId, ()) =>
    new({recommendationIds: recommendationIds, sessionId: sessionId, assistantId: assistantId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSession = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    sessionId: uuidOrArn,
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
  }
  type response = {@ocaml.doc("<p>The session.</p>") session: option<sessionData>}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "GetSessionCommand"
  let make = (~sessionId, ~assistantId, ()) => new({sessionId: sessionId, assistantId: assistantId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContentSummary = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
    @ocaml.doc(
      "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    contentId: uuidOrArn,
  }
  type response = {@ocaml.doc("<p>The content summary.</p>") contentSummary: option<contentSummary>}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "GetContentSummaryCommand"
  let make = (~knowledgeBaseId, ~contentId, ()) =>
    new({knowledgeBaseId: knowledgeBaseId, contentId: contentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContent = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
    @ocaml.doc(
      "<p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    contentId: uuidOrArn,
  }
  type response = {@ocaml.doc("<p>The content.</p>") content: option<contentData>}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "GetContentCommand"
  let make = (~knowledgeBaseId, ~contentId, ()) =>
    new({knowledgeBaseId: knowledgeBaseId, contentId: contentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssistant = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
  }
  type response = {
    @ocaml.doc("<p>Information about the assistant.</p>") assistant: option<assistantData>,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "GetAssistantCommand"
  let make = (~assistantId, ()) => new({assistantId: assistantId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSession = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>The description.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the session.</p>") name: name,
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request.</p>")
    clientToken: option<clientToken>,
  }
  type response = {@ocaml.doc("<p>The session.</p>") session: option<sessionData>}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "CreateSessionCommand"
  let make = (~name, ~assistantId, ~tags=?, ~description=?, ~clientToken=?, ()) =>
    new({
      tags: tags,
      description: description,
      name: name,
      assistantId: assistantId,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContent = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request.</p>")
    clientToken: option<nonEmptyString>,
    @ocaml.doc(
      "<p>A pointer to the uploaded asset. This value is returned by <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html\">StartContentUpload</a>.</p>"
    )
    uploadId: nonEmptyString,
    @ocaml.doc("<p>A key/value map to store attributes without affecting tagging or recommendations. 
For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>")
    metadata: option<contentMetadata>,
    @ocaml.doc("<p>The URI you want to use for the article. If the knowledge base has a templateUri, setting
      this argument overrides it for this piece of content.</p>")
    overrideLinkOutUri: option<uri>,
    @ocaml.doc("<p>The title of the content. If not set, the title is equal to the name.</p>")
    title: option<contentTitle>,
    @ocaml.doc("<p>The name of the content. Each piece of content in a knowledge base must have a unique
      name. You can retrieve a piece of content using only its knowledge base and its name with the
        <a href=\"https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html\">SearchContent</a> API.</p>")
    name: name,
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
  }
  type response = {@ocaml.doc("<p>The content.</p>") content: option<contentData>}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "CreateContentCommand"
  let make = (
    ~uploadId,
    ~name,
    ~knowledgeBaseId,
    ~tags=?,
    ~clientToken=?,
    ~metadata=?,
    ~overrideLinkOutUri=?,
    ~title=?,
    (),
  ) =>
    new({
      tags: tags,
      clientToken: clientToken,
      uploadId: uploadId,
      metadata: metadata,
      overrideLinkOutUri: overrideLinkOutUri,
      title: title,
      name: name,
      knowledgeBaseId: knowledgeBaseId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssistant = {
  type t
  type request = {
    @ocaml.doc("<p>The KMS key used for encryption.</p>")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>The description of the assistant.</p>") description: option<description>,
    @ocaml.doc("<p>The type of assistant.</p>") @as("type") type_: assistantType,
    @ocaml.doc("<p>The name of the assistant.</p>") name: name,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request.</p>")
    clientToken: option<clientToken>,
  }
  type response = {
    @ocaml.doc("<p>Information about the assistant.</p>") assistant: option<assistantData>,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "CreateAssistantCommand"
  let make = (
    ~type_,
    ~name,
    ~serverSideEncryptionConfiguration=?,
    ~tags=?,
    ~description=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
      tags: tags,
      description: description,
      type_: type_,
      name: name,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchSessions = {
  type t
  type request = {
    @ocaml.doc("<p>The search expression to filter results.</p>")
    searchExpression: searchExpression,
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about the sessions.</p>") sessionSummaries: sessionSummaries,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "SearchSessionsCommand"
  let make = (~searchExpression, ~assistantId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      searchExpression: searchExpression,
      assistantId: assistantId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SearchContent = {
  type t
  type request = {
    @ocaml.doc("<p>The search expression to filter results.</p>")
    searchExpression: searchExpression,
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about the content.</p>")
    contentSummaries: contentSummaryList,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "SearchContentCommand"
  let make = (~searchExpression, ~knowledgeBaseId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      searchExpression: searchExpression,
      knowledgeBaseId: knowledgeBaseId,
      maxResults: maxResults,
      nextToken: nextToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListContents = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the content.</p>") contentSummaries: contentSummaryList,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "ListContentsCommand"
  let make = (~knowledgeBaseId, ~maxResults=?, ~nextToken=?, ()) =>
    new({knowledgeBaseId: knowledgeBaseId, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssistants = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the assistants.</p>") assistantSummaries: assistantList,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "ListAssistantsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssistantAssociation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
    @ocaml.doc(
      "<p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantAssociationId: uuidOrArn,
  }
  type response = {
    @ocaml.doc("<p>The assistant association.</p>")
    assistantAssociation: option<assistantAssociationData>,
  }
  @module("@aws-sdk/client-wisdom") @new
  external new: request => t = "GetAssistantAssociationCommand"
  let make = (~assistantId, ~assistantAssociationId, ()) =>
    new({assistantId: assistantId, assistantAssociationId: assistantAssociationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssistantAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request.</p>")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The identifier of the associated resource.</p>")
    association: assistantAssociationInputData,
    @ocaml.doc("<p>The type of association.</p>") associationType: associationType,
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
  }
  type response = {
    @ocaml.doc("<p>The assistant association.</p>")
    assistantAssociation: option<assistantAssociationData>,
  }
  @module("@aws-sdk/client-wisdom") @new
  external new: request => t = "CreateAssistantAssociationCommand"
  let make = (~association, ~associationType, ~assistantId, ~tags=?, ~clientToken=?, ()) =>
    new({
      tags: tags,
      clientToken: clientToken,
      association: association,
      associationType: associationType,
      assistantId: assistantId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateKnowledgeBaseTemplateUri = {
  type t
  type request = {
    @ocaml.doc("<p>The template URI to update.</p>") templateUri: uri,
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
  }
  type response = {
    @ocaml.doc("<p>The knowledge base to update.</p>") knowledgeBase: option<knowledgeBaseData>,
  }
  @module("@aws-sdk/client-wisdom") @new
  external new: request => t = "UpdateKnowledgeBaseTemplateUriCommand"
  let make = (~templateUri, ~knowledgeBaseId, ()) =>
    new({templateUri: templateUri, knowledgeBaseId: knowledgeBaseId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssistantAssociations = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Summary information about assistant associations.</p>")
    assistantAssociationSummaries: assistantAssociationSummaryList,
  }
  @module("@aws-sdk/client-wisdom") @new
  external new: request => t = "ListAssistantAssociationsCommand"
  let make = (~assistantId, ~maxResults=?, ~nextToken=?, ()) =>
    new({assistantId: assistantId, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKnowledgeBase = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The the identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    knowledgeBaseId: uuidOrArn,
  }
  type response = {
    @ocaml.doc("<p>The knowledge base.</p>") knowledgeBase: option<knowledgeBaseData>,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "GetKnowledgeBaseCommand"
  let make = (~knowledgeBaseId, ()) => new({knowledgeBaseId: knowledgeBaseId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKnowledgeBase = {
  type t
  type request = {
    @ocaml.doc("<p>The tags used to organize, track, or control access for this resource.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>The description.</p>") description: option<description>,
    @ocaml.doc("<p>The KMS key used for encryption.</p>")
    serverSideEncryptionConfiguration: option<serverSideEncryptionConfiguration>,
    @ocaml.doc("<p>Information about how to render the content.</p>")
    renderingConfiguration: option<renderingConfiguration>,
    @ocaml.doc("<p>The source of the knowledge base content. Only set this argument for EXTERNAL knowledge
      bases.</p>")
    sourceConfiguration: option<sourceConfiguration>,
    @ocaml.doc("<p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content.
      EXTERNAL knowledge bases support integrations with third-party systems whose content is
      synchronized automatically. </p>")
    knowledgeBaseType: knowledgeBaseType,
    @ocaml.doc("<p>The name of the knowledge base.</p>") name: name,
    @ocaml.doc("<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
   request.</p>")
    clientToken: option<nonEmptyString>,
  }
  type response = {
    @ocaml.doc("<p>The knowledge base.</p>") knowledgeBase: option<knowledgeBaseData>,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "CreateKnowledgeBaseCommand"
  let make = (
    ~knowledgeBaseType,
    ~name,
    ~tags=?,
    ~description=?,
    ~serverSideEncryptionConfiguration=?,
    ~renderingConfiguration=?,
    ~sourceConfiguration=?,
    ~clientToken=?,
    (),
  ) =>
    new({
      tags: tags,
      description: description,
      serverSideEncryptionConfiguration: serverSideEncryptionConfiguration,
      renderingConfiguration: renderingConfiguration,
      sourceConfiguration: sourceConfiguration,
      knowledgeBaseType: knowledgeBaseType,
      name: name,
      clientToken: clientToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKnowledgeBases = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    nextToken: option<nonEmptyString>,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>Information about the knowledge bases.</p>")
    knowledgeBaseSummaries: knowledgeBaseList,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "ListKnowledgeBasesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module QueryAssistant = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token for the next set of results. Use the value returned in the previous 
response in the next request to retrieve the next set of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The text to search for.</p>") queryText: queryText,
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
  }
  type response = {
    @ocaml.doc(
      "<p>If there are additional results, this is the token for the next set of results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The results of the query.</p>") results: queryResultsList,
  }
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "QueryAssistantCommand"
  let make = (~queryText, ~assistantId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      queryText: queryText,
      assistantId: assistantId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The duration (in seconds) for which the call waits for a recommendation to be made
      available before returning. If a recommendation is available, the call returns sooner than
        <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the
      call returns successfully with an empty list.</p>")
    waitTimeSeconds: option<waitTimeSeconds>,
    @ocaml.doc("<p>The maximum number of results to return per page.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    sessionId: uuidOrArn,
    @ocaml.doc(
      "<p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>"
    )
    assistantId: uuidOrArn,
  }
  type response = {@ocaml.doc("<p>The recommendations.</p>") recommendations: recommendationList}
  @module("@aws-sdk/client-wisdom") @new external new: request => t = "GetRecommendationsCommand"
  let make = (~sessionId, ~assistantId, ~waitTimeSeconds=?, ~maxResults=?, ()) =>
    new({
      waitTimeSeconds: waitTimeSeconds,
      maxResults: maxResults,
      sessionId: sessionId,
      assistantId: assistantId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
