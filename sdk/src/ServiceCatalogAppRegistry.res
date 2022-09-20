type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-servicecatalog") @new
external createClient: unit => awsServiceClient = "ServiceCatalogAppRegistryClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type syncAction = [@as("NO_ACTION") #NO_ACTION | @as("START_SYNC") #START_SYNC]
type string_ = string
type stackArn = string
type resourceType = [@as("CFN_STACK") #CFN_STACK]
type resourceSpecifier = string
type resourceGroupState = [
  | @as("UPDATE_FAILED") #UPDATE_FAILED
  | @as("UPDATE_COMPLETE") #UPDATE_COMPLETE
  | @as("UPDATING") #UPDATING
  | @as("CREATE_FAILED") #CREATE_FAILED
  | @as("CREATE_COMPLETE") #CREATE_COMPLETE
  | @as("CREATING") #CREATING
]
type nextToken = string
type name = string
type maxResults = int
type description = string
type clientToken = string
type attributes = string
type attributeGroupSpecifier = string
type attributeGroupId = string
type attributeGroupArn = string
type associationCount = int
type arn = string
type applicationSpecifier = string
type applicationId = string
type applicationArn = string
type tags = Js.Dict.t<tagValue>
type tagKeys = array<tagKey>
@ocaml.doc("<p>The information about the resource.</p>")
type resourceInfo = {
  @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the resource across services.</p>")
  arn: option<stackArn>,
  @ocaml.doc("<p>The name of the resource.</p>") name: option<resourceSpecifier>,
}
@ocaml.doc("<p>The information about the resource group integration.</p>")
type resourceGroup = {
  @ocaml.doc(
    "<p>The error message that generates when the propagation process for the resource group fails.</p>"
  )
  errorMessage: option<string_>,
  @ocaml.doc("<p>The Amazon resource name (ARN) of the resource group.</p>") arn: option<arn>,
  @ocaml.doc("<p>The state of the propagation process for the resource group. The states includes:</p>
         <p>
            <code>CREATING </code>if the resource group is in the process of being created.</p>
         <p>
            <code>CREATE_COMPLETE</code> if the resource group was created successfully.</p>
         <p>
            <code>CREATE_FAILED</code> if the resource group failed to be created.</p>
         <p>
            <code>UPDATING</code> if the resource group is in the process of being updated.</p>
         <p>
            <code>UPDATE_COMPLETE</code> if the resource group updated successfully.</p>
         <p>
            <code>UPDATE_FAILED</code> if the resource group could not update successfully.</p>")
  state: option<resourceGroupState>,
}
@ocaml.doc("<p>Summary of a Amazon Web Services Service Catalog AppRegistry attribute group.</p>")
type attributeGroupSummary = {
  @ocaml.doc(
    "<p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>"
  )
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>"
  )
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The description of the attribute group that the user provides.</p>")
  description: option<description>,
  @ocaml.doc("<p>The name of the attribute group.</p>") name: option<name>,
  @ocaml.doc(
    "<p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>"
  )
  arn: option<attributeGroupArn>,
  @ocaml.doc("<p>The globally unique attribute group identifier of the attribute group.</p>")
  id: option<attributeGroupId>,
}
type attributeGroupIds = array<attributeGroupId>
@ocaml.doc("<p>Summary of a Amazon Web Services Service Catalog AppRegistry application.</p>")
type applicationSummary = {
  @ocaml.doc(
    "<p> The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>"
  )
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>"
  )
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The description of the application.</p>") description: option<description>,
  @ocaml.doc(
    "<p>The name of the application. The name must be unique in the region in which you are creating the application.</p>"
  )
  name: option<name>,
  @ocaml.doc(
    "<p>The Amazon resource name (ARN) that specifies the application across services.</p>"
  )
  arn: option<applicationArn>,
  @ocaml.doc("<p>The identifier of the application.</p>") id: option<applicationId>,
}
type resources = array<resourceInfo>
@ocaml.doc("<p>The service integration information about the resource.</p>")
type resourceIntegrations = {
  @ocaml.doc("<p>The information about the integration of Resource Groups.</p>")
  resourceGroup: option<resourceGroup>,
}
@ocaml.doc("<p> The information about the service integration.</p>")
type integrations = {
  @ocaml.doc("<p> The information about the resource group integration.</p>")
  resourceGroup: option<resourceGroup>,
}
type attributeGroupSummaries = array<attributeGroupSummary>
@ocaml.doc(
  "<p>Represents a Amazon Web Services Service Catalog AppRegistry attribute group that is rich metadata which describes an application and its components.</p>"
)
type attributeGroup = {
  @ocaml.doc("<p>Key-value pairs you can use to associate with the attribute group.</p>")
  tags: option<tags>,
  @ocaml.doc(
    "<p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>"
  )
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>"
  )
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The description of the attribute group that the user provides.</p>")
  description: option<description>,
  @ocaml.doc("<p>The name of the attribute group.</p>") name: option<name>,
  @ocaml.doc(
    "<p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>"
  )
  arn: option<attributeGroupArn>,
  @ocaml.doc("<p>The globally unique attribute group identifier of the attribute group.</p>")
  id: option<attributeGroupId>,
}
type applicationSummaries = array<applicationSummary>
@ocaml.doc("<p>Represents a Amazon Web Services Service Catalog AppRegistry application that is the top-level node in a hierarchy of related
       cloud resource abstractions.</p>")
type application = {
  @ocaml.doc("<p>Key-value pairs you can use to associate with the application.</p>")
  tags: option<tags>,
  @ocaml.doc(
    "<p> The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>"
  )
  lastUpdateTime: option<timestamp_>,
  @ocaml.doc(
    "<p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>"
  )
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>The description of the application.</p>") description: option<description>,
  @ocaml.doc(
    "<p>The name of the application. The name must be unique in the region in which you are creating the application.</p>"
  )
  name: option<name>,
  @ocaml.doc(
    "<p>The Amazon resource name (ARN) that specifies the application across services.</p>"
  )
  arn: option<applicationArn>,
  @ocaml.doc("<p>The identifier of the application.</p>") id: option<applicationId>,
}
@ocaml.doc("<p> The information about the resource.</p>")
type resource = {
  @ocaml.doc("<p>The service integration information about the resource.
     </p>")
  integrations: option<resourceIntegrations>,
  @ocaml.doc("<p>The time the resource was associated with the application.</p>")
  associationTime: option<timestamp_>,
  @ocaml.doc("<p>The Amazon resource name (ARN) of the resource.</p>") arn: option<stackArn>,
  @ocaml.doc("<p>The name of the resource.</p>") name: option<resourceSpecifier>,
}
@ocaml.doc(
  "<p> Amazon Web Services Service Catalog AppRegistry enables organizations to understand the application context of their Amazon Web Services resources. AppRegistry provides a repository of your applications, their resources, and the application metadata that you use within your enterprise.</p>"
)
module SyncResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An entity you can work with and specify with a name or ID. Examples include an Amazon EC2 instance, an Amazon Web Services CloudFormation stack, or an Amazon S3 bucket.</p>"
    )
    resource: resourceSpecifier,
    @ocaml.doc("<p>The type of resource of which the application will be associated.</p>")
    resourceType: resourceType,
  }
  type response = {
    @ocaml.doc(
      "<p>The results of the output if an application is associated with an ARN value, which could be <code>syncStarted</code> or None.</p>"
    )
    actionTaken: option<syncAction>,
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the resource.</p>")
    resourceArn: option<arn>,
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the application.</p>")
    applicationArn: option<applicationArn>,
  }
  @module("@aws-sdk/client-servicecatalog") @new external new: request => t = "SyncResourceCommand"
  let make = (~resource, ~resourceType, ()) => new({resource, resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateResource = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ID of the resource.</p>") resource: resourceSpecifier,
    @ocaml.doc("<p>The type of the resource that is being disassociated.</p>")
    resourceType: resourceType,
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the resource.</p>")
    resourceArn: option<arn>,
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the application.</p>")
    applicationArn: option<applicationArn>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DisassociateResourceCommand"
  let make = (~resource, ~resourceType, ~application, ()) =>
    new({resource, resourceType, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateAttributeGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name or ID of the attribute group that holds the attributes to describe the application.</p>"
    )
    attributeGroup: attributeGroupSpecifier,
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the attribute group.</p>")
    attributeGroupArn: option<attributeGroupArn>,
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the application.</p>")
    applicationArn: option<applicationArn>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DisassociateAttributeGroupCommand"
  let make = (~attributeGroup, ~application, ()) => new({attributeGroup, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateResource = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ID of the resource of which the application will be associated.</p>")
    resource: resourceSpecifier,
    @ocaml.doc("<p>The type of resource of which the application will be associated.</p>")
    resourceType: resourceType,
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the resource.</p>")
    resourceArn: option<arn>,
    @ocaml.doc(
      "<p>The Amazon resource name (ARN) of the application that was augmented with attributes.</p>"
    )
    applicationArn: option<applicationArn>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AssociateResourceCommand"
  let make = (~resource, ~resourceType, ~application, ()) =>
    new({resource, resourceType, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateAttributeGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name or ID of the attribute group that holds the attributes to describe the application.</p>"
    )
    attributeGroup: attributeGroupSpecifier,
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon resource name (ARN) of the attribute group that contains the application's new attributes.</p>"
    )
    attributeGroupArn: option<attributeGroupArn>,
    @ocaml.doc(
      "<p>The Amazon resource name (ARN) of the application that was augmented with attributes.</p>"
    )
    applicationArn: option<applicationArn>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "AssociateAttributeGroupCommand"
  let make = (~attributeGroup, ~application, ()) => new({attributeGroup, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of the tag keys to remove from the specified resource.</p>")
    tagKeys: tagKeys,
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the resource.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-servicecatalog") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The new or modified tags for the resource.</p>") tags: tags,
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the resource.</p>")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-servicecatalog") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon resource name (ARN) that specifies the resource.</p>")
    resourceArn: arn,
  }
  type response = {@ocaml.doc("<p>The tags on the resource.</p>") tags: option<tags>}
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssociatedAttributeGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of attribute group IDs.</p>") attributeGroups: option<attributeGroupIds>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListAssociatedAttributeGroupsCommand"
  let make = (~application, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAttributeGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name or ID of the attribute group that holds the attributes to describe the application.</p>"
    )
    attributeGroup: attributeGroupSpecifier,
  }
  type response = {
    @ocaml.doc("<p>Key-value pairs associated with the attribute group.</p>") tags: option<tags>,
    @ocaml.doc(
      "<p>The ISO-8601 formatted timestamp of the moment the attribute group was last updated. This time is the same as the creationTime for a newly created attribute group.</p>"
    )
    lastUpdateTime: option<timestamp_>,
    @ocaml.doc(
      "<p>The ISO-8601 formatted timestamp of the moment the attribute group was created.</p>"
    )
    creationTime: option<timestamp_>,
    @ocaml.doc(
      "<p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>"
    )
    attributes: option<attributes>,
    @ocaml.doc("<p>The description of the attribute group that the user provides.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the attribute group.</p>") name: option<name>,
    @ocaml.doc(
      "<p>The Amazon resource name (ARN) that specifies the attribute group across services.</p>"
    )
    arn: option<attributeGroupArn>,
    @ocaml.doc("<p>The identifier of the attribute group.</p>") id: option<attributeGroupId>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "GetAttributeGroupCommand"
  let make = (~attributeGroup, ()) => new({attributeGroup: attributeGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteAttributeGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name or ID of the attribute group that holds the attributes to describe the application.</p>"
    )
    attributeGroup: attributeGroupSpecifier,
  }
  type response = {
    @ocaml.doc("<p>Information about the deleted attribute group.</p>")
    attributeGroup: option<attributeGroupSummary>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeleteAttributeGroupCommand"
  let make = (~attributeGroup, ()) => new({attributeGroup: attributeGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc("<p>Information about the deleted application.</p>")
    application: option<applicationSummary>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "DeleteApplicationCommand"
  let make = (~application, ()) => new({application: application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAttributeGroup = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>"
    )
    attributes: option<attributes>,
    @ocaml.doc("<p>The description of the attribute group that the user provides.</p>")
    description: option<description>,
    @ocaml.doc("<p>The new name of the attribute group. The name must be unique in the region in which you are
       updating the attribute group.</p>")
    name: option<name>,
    @ocaml.doc(
      "<p>The name or ID of the attribute group that holds the attributes to describe the application.</p>"
    )
    attributeGroup: attributeGroupSpecifier,
  }
  type response = {
    @ocaml.doc("<p>The updated information of the attribute group.</p>")
    attributeGroup: option<attributeGroup>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateAttributeGroupCommand"
  let make = (~attributeGroup, ~attributes=?, ~description=?, ~name=?, ()) =>
    new({attributes, description, name, attributeGroup})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The new description of the application.</p>") description: option<description>,
    @ocaml.doc(
      "<p>The new name of the application. The name must be unique in the region in which you are updating the application.</p>"
    )
    name: option<name>,
    @ocaml.doc("<p>The name or ID of the application that will be updated.</p>")
    application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc("<p>The updated information of the application.</p>")
    application: option<application>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "UpdateApplicationCommand"
  let make = (~application, ~description=?, ~name=?, ()) => new({description, name, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAttributeGroups = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>This list of attribute groups.</p>")
    attributeGroups: option<attributeGroupSummaries>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListAttributeGroupsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssociatedResources = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the resources.</p>") resources: option<resources>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListAssociatedResourcesCommand"
  let make = (~application, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListApplications = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The upper bound of the number of results to return (cannot exceed 25). If this parameter is omitted, it defaults to 25. This value is optional.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to get the next page of results after a previous API call. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>This list of applications.</p>") applications: option<applicationSummaries>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "ListApplicationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetApplication = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc(
      "<p>The information about the integration of the application with other services, such as Resource Groups.</p>"
    )
    integrations: option<integrations>,
    @ocaml.doc("<p>Key-value pairs associated with the application.</p>") tags: option<tags>,
    @ocaml.doc(
      "<p>The number of top-level resources that were registered as part of this application.</p>"
    )
    associatedResourceCount: option<associationCount>,
    @ocaml.doc(
      "<p>The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>"
    )
    lastUpdateTime: option<timestamp_>,
    @ocaml.doc(
      "<p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>"
    )
    creationTime: option<timestamp_>,
    @ocaml.doc("<p>The description of the application.</p>") description: option<description>,
    @ocaml.doc(
      "<p>The name of the application. The name must be unique in the region in which you are creating the application.</p>"
    )
    name: option<name>,
    @ocaml.doc(
      "<p>The Amazon resource name (ARN) that specifies the application across services.</p>"
    )
    arn: option<applicationArn>,
    @ocaml.doc("<p>The identifier of the application.</p>") id: option<applicationId>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "GetApplicationCommand"
  let make = (~application, ()) => new({application: application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAttributeGroup = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If you retry a request that
      completed successfully using the same client token and the same parameters, the retry succeeds
      without performing any further actions. If you retry a successful request using the same
      client token, but one or more of the parameters are different, the retry fails.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>Key-value pairs you can use to associate with the attribute group.</p>")
    tags: option<tags>,
    @ocaml.doc(
      "<p>A JSON string in the form of nested key-value pairs that represent the attributes in the group and describes an application and its components.</p>"
    )
    attributes: attributes,
    @ocaml.doc("<p>The description of the attribute group that the user provides.</p>")
    description: option<description>,
    @ocaml.doc("<p>The name of the attribute group.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>Information about the attribute group.</p>")
    attributeGroup: option<attributeGroup>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreateAttributeGroupCommand"
  let make = (~clientToken, ~attributes, ~name, ~tags=?, ~description=?, ()) =>
    new({clientToken, tags, attributes, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateApplication = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier that you provide to ensure idempotency. If you retry a request that
      completed successfully using the same client token and the same parameters, the retry succeeds
      without performing any further actions. If you retry a successful request using the same
      client token, but one or more of the parameters are different, the retry fails.</p>")
    clientToken: clientToken,
    @ocaml.doc("<p>Key-value pairs you can use to associate with the application.</p>")
    tags: option<tags>,
    @ocaml.doc("<p>The description of the application.</p>") description: option<description>,
    @ocaml.doc(
      "<p>The name of the application. The name must be unique in the region in which you are creating the application.</p>"
    )
    name: name,
  }
  type response = {
    @ocaml.doc("<p>Information about the application.</p>") application: option<application>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "CreateApplicationCommand"
  let make = (~clientToken, ~name, ~tags=?, ~description=?, ()) =>
    new({clientToken, tags, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAssociatedResource = {
  type t
  type request = {
    @ocaml.doc("<p>The name or ID of the resource associated with the application.</p>")
    resource: resourceSpecifier,
    @ocaml.doc("<p>The type of resource associated with the application.</p>")
    resourceType: resourceType,
    @ocaml.doc("<p>The name or ID of the application.</p>") application: applicationSpecifier,
  }
  type response = {
    @ocaml.doc("<p>The resource associated with the application.</p>") resource: option<resource>,
  }
  @module("@aws-sdk/client-servicecatalog") @new
  external new: request => t = "GetAssociatedResourceCommand"
  let make = (~resource, ~resourceType, ~application, ()) =>
    new({resource, resourceType, application})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
