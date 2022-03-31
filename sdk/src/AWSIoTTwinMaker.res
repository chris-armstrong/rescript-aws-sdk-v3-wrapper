type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-awsiottwinmaker") @new
external createClient: unit => awsServiceClient = "AWSIoTTwinMakerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type value = string
type type_ = [
  | @as("MAP") #MAP
  | @as("LIST") #LIST
  | @as("DOUBLE") #DOUBLE
  | @as("INTEGER") #INTEGER
  | @as("BOOLEAN") #BOOLEAN
  | @as("LONG") #LONG
  | @as("STRING") #STRING
  | @as("RELATIONSHIP") #RELATIONSHIP
]
type twinMakerArn = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type string_ = string
type state = [
  | @as("ERROR") #ERROR
  | @as("ACTIVE") #ACTIVE
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type scope = [@as("WORKSPACE") #WORKSPACE | @as("ENTITY") #ENTITY]
type sceneCapability = string
type s3Url = string
type s3Location = string
type roleArn = string
type propertyUpdateType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE]
type parentEntityUpdateType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE]
type parentEntityId = string
type orderByTime = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type nextToken = string
type name = string
type maxResults = int
type long = float
type lambdaArn = string
type intervalInSeconds = float
type interpolationType = [@as("LINEAR") #LINEAR]
type integer_ = int
type idOrArn = string
type id = string
type expression = string
type exceptionMessage = string
type errorMessage = string
type errorCode = [
  | @as("INTERNAL_FAILURE") #INTERNAL_FAILURE
  | @as("VALIDATION_ERROR") #VALIDATION_ERROR
]
type entityName = string
type entityId = string
type double = float
type description = string
type componentUpdateType = [@as("DELETE") #DELETE | @as("UPDATE") #UPDATE | @as("CREATE") #CREATE]
type componentTypeId = string
type boolean_ = bool
@ocaml.doc("<p>An object that contains information about a workspace.</p>")
type workspaceSummary = {
  @ocaml.doc("<p>The date and time when the workspace was last updated.</p>")
  updateDateTime: timestamp_,
  @ocaml.doc("<p>The date and time when the workspace was created.</p>")
  creationDateTime: timestamp_,
  @ocaml.doc("<p>The description of the workspace.</p>") description: option<description>,
  @ocaml.doc("<p>The ARN of the workspace.</p>") arn: twinMakerArn,
  @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type selectedPropertyList = array<string_>
@ocaml.doc("<p>An object that contains information about a scene.</p>")
type sceneSummary = {
  @ocaml.doc("<p>The scene description.</p>") description: option<description>,
  @ocaml.doc("<p>The date and time when the scene was last updated.</p>")
  updateDateTime: timestamp_,
  @ocaml.doc("<p>The date and time when the scene was created.</p>") creationDateTime: timestamp_,
  @ocaml.doc("<p>The ARN of the scene.</p>") arn: twinMakerArn,
  @ocaml.doc("<p>The relative path that specifies the location of the content definition file.</p>")
  contentLocation: s3Url,
  @ocaml.doc("<p>The ID of the scene.</p>") sceneId: id,
}
type sceneCapabilities = array<sceneCapability>
type requiredProperties = array<name>
@ocaml.doc("<p>A value that associates a component and an entity.</p>")
type relationshipValue = {
  @ocaml.doc("<p>The name of the target component associated with the relationship value.</p>")
  targetComponentName: option<name>,
  @ocaml.doc("<p>The ID of the target entity associated with this relationship value.</p>")
  targetEntityId: option<entityId>,
}
@ocaml.doc("<p>An object that specifies a relationship with another component type.</p>")
type relationship = {
  @ocaml.doc("<p>The type of the relationship.</p>") relationshipType: option<string_>,
  @ocaml.doc("<p>The ID of the target component type associated with this relationship.</p>")
  targetComponentTypeId: option<componentTypeId>,
}
@ocaml.doc("<p>The parent entity update request.</p>")
type parentEntityUpdateRequest = {
  @ocaml.doc("<p>The ID of the parent entity.</p>") parentEntityId: option<parentEntityId>,
  @ocaml.doc("<p>The type of the update.</p>") updateType: parentEntityUpdateType,
}
@ocaml.doc("<p>An object that filters items in a list of entities.</p>")
type listEntitiesFilter = {
  @ocaml.doc("<p>The ID of the component type in the entities in the list.</p>")
  componentTypeId: option<componentTypeId>,
  @ocaml.doc("<p>The parent of the entities in the list.</p>")
  parentEntityId: option<parentEntityId>,
}
module ListEntitiesFilter = {
  type t = ComponentTypeId(componentTypeId) | ParentEntityId(parentEntityId)
  exception ListEntitiesFilterUnspecified
  let classify = value =>
    switch value {
    | {componentTypeId: Some(x)} => ComponentTypeId(x)
    | {parentEntityId: Some(x)} => ParentEntityId(x)
    | _ => raise(ListEntitiesFilterUnspecified)
    }

  let make = value =>
    switch value {
    | ComponentTypeId(x) => {componentTypeId: Some(x), parentEntityId: None}
    | ParentEntityId(x) => {parentEntityId: Some(x), componentTypeId: None}
    }
}
@ocaml.doc("<p>An object that filters items in a list of component types.</p>")
type listComponentTypesFilter = {
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the component types in the list are abstract.</p>"
  )
  isAbstract: option<boolean_>,
  @ocaml.doc("<p>The namespace to which the component types in the list belong.</p>")
  namespace: option<string_>,
  @ocaml.doc("<p>The component type that the component types in the list extend.</p>")
  extendsFrom: option<componentTypeId>,
}
module ListComponentTypesFilter = {
  type t = IsAbstract(boolean_) | Namespace(string_) | ExtendsFrom(componentTypeId)
  exception ListComponentTypesFilterUnspecified
  let classify = value =>
    switch value {
    | {isAbstract: Some(x)} => IsAbstract(x)
    | {namespace: Some(x)} => Namespace(x)
    | {extendsFrom: Some(x)} => ExtendsFrom(x)
    | _ => raise(ListComponentTypesFilterUnspecified)
    }

  let make = value =>
    switch value {
    | IsAbstract(x) => {isAbstract: Some(x), namespace: None, extendsFrom: None}
    | Namespace(x) => {namespace: Some(x), isAbstract: None, extendsFrom: None}
    | ExtendsFrom(x) => {extendsFrom: Some(x), isAbstract: None, namespace: None}
    }
}
@ocaml.doc("<p>The Lambda function.</p>")
type lambdaFunction = {@ocaml.doc("<p>The ARN of the Lambda function.</p>") arn: lambdaArn}
@ocaml.doc("<p>An object that specifies how to interpolate data in a list.</p>")
type interpolationParameters = {
  @ocaml.doc("<p>The interpolation time interval in seconds.</p>")
  intervalInSeconds: option<intervalInSeconds>,
  @ocaml.doc("<p>The interpolation type.</p>") interpolationType: option<interpolationType>,
}
type externalIdProperty = Js.Dict.t<string_>
type extendsFrom = array<componentTypeId>
@ocaml.doc("<p>The error details.</p>")
type errorDetails = {
  @ocaml.doc("<p>The error message.</p>") message: option<errorMessage>,
  @ocaml.doc("<p>The error code.</p>") code: option<errorCode>,
}
type configuration = Js.Dict.t<value>
type workspaceSummaries = array<workspaceSummary>
@ocaml.doc(
  "<p>An object that represents the status of an entity, component, component type, or workspace.</p>"
)
type status = {
  @ocaml.doc("<p>The error message.</p>") error: option<errorDetails>,
  @ocaml.doc("<p>The current state of the entity, component, component type, or workspace.</p>")
  state: option<state>,
}
type sceneSummaries = array<sceneSummary>
type listEntitiesFilters = array<listEntitiesFilter>
type listComponentTypesFilters = array<listComponentTypesFilter>
@ocaml.doc("<p>An object that uniquely identifies an entity property.</p>")
type entityPropertyReference = {
  @ocaml.doc("<p>The name of the property.</p>") propertyName: name,
  @ocaml.doc("<p>The ID of the entity.</p>") entityId: option<entityId>,
  @ocaml.doc(
    "<p>A mapping of external IDs to property names. External IDs uniquely identify properties from external data stores.</p>"
  )
  externalIdProperty: option<externalIdProperty>,
  @ocaml.doc("<p>The name of the component.</p>") componentName: option<name>,
}
@ocaml.doc("<p>The data connector.</p>")
type dataConnector = {
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the data connector is native to TwinMaker.</p>"
  )
  isNative: option<boolean_>,
  @ocaml.doc("<p>The Lambda function associated with this data connector.</p>")
  lambda: option<lambdaFunction>,
}
@ocaml.doc("<p>The function response.</p>")
type functionResponse = {
  @ocaml.doc("<p>Indicates whether this function is inherited.</p>") isInherited: option<boolean_>,
  @ocaml.doc("<p>The data connector.</p>") implementedBy: option<dataConnector>,
  @ocaml.doc("<p>The scope of the function.</p>") scope: option<scope>,
  @ocaml.doc("<p>The required properties of the function.</p>")
  requiredProperties: option<requiredProperties>,
}
@ocaml.doc("<p>The function request body.</p>")
type functionRequest = {
  @ocaml.doc("<p>The data connector.</p>") implementedBy: option<dataConnector>,
  @ocaml.doc("<p>The scope of the function.</p>") scope: option<scope>,
  @ocaml.doc("<p>The required properties of the function.</p>")
  requiredProperties: option<requiredProperties>,
}
@ocaml.doc("<p>An object that contains information about an entity.</p>")
type entitySummary = {
  @ocaml.doc("<p>The last date and time when the entity was updated.</p>")
  updateDateTime: timestamp_,
  @ocaml.doc("<p>The date and time when the entity was created.</p>") creationDateTime: timestamp_,
  @ocaml.doc("<p>A Boolean value that specifies whether the entity has child entities or not.</p>")
  hasChildEntities: option<boolean_>,
  @ocaml.doc("<p>The description of the entity.</p>") description: option<description>,
  @ocaml.doc("<p>The current status of the entity.</p>") status: status,
  @ocaml.doc("<p>The ID of the parent entity.</p>") parentEntityId: option<parentEntityId>,
  @ocaml.doc("<p>The ARN of the entity.</p>") arn: twinMakerArn,
  @ocaml.doc("<p>The name of the entity.</p>") entityName: entityName,
  @ocaml.doc("<p>The ID of the entity.</p>") entityId: entityId,
}
@ocaml.doc("<p>An object that contains information about a component type.</p>")
type componentTypeSummary = {
  @ocaml.doc("<p>The current status of the component type.</p>") status: option<status>,
  @ocaml.doc("<p>The description of the component type.</p>") description: option<description>,
  @ocaml.doc("<p>The date and time when the component type was last updated.</p>")
  updateDateTime: timestamp_,
  @ocaml.doc("<p>The date and time when the component type was created.</p>")
  creationDateTime: timestamp_,
  @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: componentTypeId,
  @ocaml.doc("<p>The ARN of the component type.</p>") arn: twinMakerArn,
}
type functionsResponse = Js.Dict.t<functionResponse>
type functionsRequest = Js.Dict.t<functionRequest>
type entitySummaries = array<entitySummary>
type componentTypeSummaries = array<componentTypeSummary>
type rec dataValue = {
  @ocaml.doc("<p>An expression that produces the value.</p>") expression: option<expression>,
  @ocaml.doc("<p>A value that relates a component to another component.</p>")
  relationshipValue: option<relationshipValue>,
  @ocaml.doc("<p>An object that maps strings to multiple <code>DataValue</code> objects.</p>")
  mapValue: option<dataValueMap>,
  @ocaml.doc("<p>A list of multiple values.</p>") listValue: option<dataValueList>,
  @ocaml.doc("<p>A string value.</p>") stringValue: option<string_>,
  @ocaml.doc("<p>A long value.</p>") longValue: option<long>,
  @ocaml.doc("<p>An integer value.</p>") integerValue: option<integer_>,
  @ocaml.doc("<p>A double value.</p>") doubleValue: option<double>,
  @ocaml.doc("<p>A Boolean value.</p>") booleanValue: option<boolean_>,
}
and dataValueMap = Js.Dict.t<dataValue>
and dataValueList = array<dataValue>
and dataType = {
  @ocaml.doc("<p>A relationship that associates a component with another component.</p>")
  relationship: option<relationship>,
  @ocaml.doc("<p>The unit of measure used in this data type.</p>") unitOfMeasure: option<string_>,
  @ocaml.doc("<p>The allowed values for this data type.</p>") allowedValues: option<dataValueList>,
  @ocaml.doc("<p>The nested type in the data type.</p>") nestedType: option<dataType>,
  @ocaml.doc("<p>The underlying type of the data type.</p>") @as("type") type_: type_,
}
@ocaml.doc("<p>An object that contains information about a value for a time series property.</p>")
type propertyValue = {
  @ocaml.doc("<p>An object that specifies a value for a time series property.</p>")
  value: dataValue,
  @ocaml.doc("<p>The timestamp of a value for a time series property.</p>") @as("timestamp")
  timestamp_: timestamp_,
}
@ocaml.doc("<p>The latest value of the property.</p>")
type propertyLatestValue = {
  @ocaml.doc("<p>The value of the property.</p>") propertyValue: option<dataValue>,
  @ocaml.doc("<p>An object that specifies information about a property.&gt;</p>")
  propertyReference: entityPropertyReference,
}
@ocaml.doc("<p>An object that filters items returned by a property request.</p>")
type propertyFilter = {
  @ocaml.doc("<p>The value associated with this property filter.</p>") value: option<dataValue>,
  @ocaml.doc("<p>The operator associated with this property filter.</p>") operator: option<string_>,
  @ocaml.doc("<p>The property name associated with this property filter.</p>")
  propertyName: option<string_>,
}
@ocaml.doc("<p>An object that contains response data from a property definition request.</p>")
type propertyDefinitionResponse = {
  @ocaml.doc("<p>A mapping that specifies configuration information about the property.</p>")
  configuration: option<configuration>,
  @ocaml.doc("<p>An object that contains the default value.</p>") defaultValue: option<dataValue>,
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the property definition is inherited from a parent entity.</p>"
  )
  isInherited: boolean_,
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the property definition can be updated.</p>"
  )
  isFinal: boolean_,
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the property definition is imported from an external data store.</p>"
  )
  isImported: boolean_,
  @ocaml.doc("<p>A Boolean value that specifies whether the property is stored externally.</p>")
  isStoredExternally: boolean_,
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the property ID comes from an external data store.</p>"
  )
  isExternalId: boolean_,
  @ocaml.doc("<p>A Boolean value that specifies whether the property is required in an entity.</p>")
  isRequiredInEntity: boolean_,
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the property consists of time series data.</p>"
  )
  isTimeSeries: boolean_,
  @ocaml.doc("<p>An object that contains information about the data type.</p>") dataType: dataType,
}
@ocaml.doc("<p>An object that sets information about a property.</p>")
type propertyDefinitionRequest = {
  @ocaml.doc("<p>A mapping that specifies configuration information about the property. Use this field to
         specify information that you read from and write to an external source.</p>")
  configuration: option<configuration>,
  @ocaml.doc("<p>An object that contains the default value.</p>") defaultValue: option<dataValue>,
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the property consists of time series data.</p>"
  )
  isTimeSeries: option<boolean_>,
  @ocaml.doc("<p>A Boolean value that specifies whether the property is stored externally.</p>")
  isStoredExternally: option<boolean_>,
  @ocaml.doc(
    "<p>A Boolean value that specifies whether the property ID comes from an external data store.</p>"
  )
  isExternalId: option<boolean_>,
  @ocaml.doc("<p>A Boolean value that specifies whether the property is required.</p>")
  isRequiredInEntity: option<boolean_>,
  @ocaml.doc("<p>An object that contains information about the data type.</p>")
  dataType: option<dataType>,
}
type values = array<propertyValue>
type propertyValues = array<propertyValue>
@ocaml.doc("<p>An object that contains information about a property response.</p>")
type propertyResponse = {
  @ocaml.doc("<p>The value of the property.</p>") value: option<dataValue>,
  @ocaml.doc("<p>An object that specifies information about a property.</p>")
  definition: option<propertyDefinitionResponse>,
}
@ocaml.doc("<p>An object that sets information about a property.</p>")
type propertyRequest = {
  @ocaml.doc("<p>The update type of the update property request.</p>")
  updateType: option<propertyUpdateType>,
  @ocaml.doc("<p>The value of the property.</p>") value: option<dataValue>,
  @ocaml.doc("<p>An object that specifies information about a property.</p>")
  definition: option<propertyDefinitionRequest>,
}
type propertyLatestValueMap = Js.Dict.t<propertyLatestValue>
type propertyFilters = array<propertyFilter>
type propertyDefinitionsResponse = Js.Dict.t<propertyDefinitionResponse>
type propertyDefinitionsRequest = Js.Dict.t<propertyDefinitionRequest>
@ocaml.doc("<p>The history of values for a time series property.</p>")
type propertyValueHistory = {
  @ocaml.doc(
    "<p>A list of objects that contain information about the values in the history of a time series property.</p>"
  )
  values: option<values>,
  @ocaml.doc("<p>An object that uniquely identifies an entity property.</p>")
  entityPropertyReference: entityPropertyReference,
}
@ocaml.doc("<p>An object that specifies information about time series property values.</p>")
type propertyValueEntry = {
  @ocaml.doc("<p>A list of objects that specify time series property values.</p>")
  propertyValues: option<propertyValues>,
  @ocaml.doc("<p>An object that contains information about the entity that has the property.</p>")
  entityPropertyReference: entityPropertyReference,
}
type propertyResponses = Js.Dict.t<propertyResponse>
type propertyRequests = Js.Dict.t<propertyRequest>
type propertyValueList = array<propertyValueHistory>
type entries = array<propertyValueEntry>
@ocaml.doc("<p>The component update request.</p>")
type componentUpdateRequest = {
  @ocaml.doc("<p>An object that maps strings to the properties to set in the component type update. Each string 
       in the mapping must be unique to this object.</p>")
  propertyUpdates: option<propertyRequests>,
  @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: option<componentTypeId>,
  @ocaml.doc("<p>The description of the component type.</p>") description: option<description>,
  @ocaml.doc("<p>The update type of the component update request.</p>")
  updateType: option<componentUpdateType>,
}
@ocaml.doc(
  "<p>An object that returns information about a component type create or update request.</p>"
)
type componentResponse = {
  @ocaml.doc("<p>An object that maps strings to the properties to set in the component type. Each string 
       in the mapping must be unique to this object.</p>")
  properties: option<propertyResponses>,
  @ocaml.doc("<p>The name of the property definition set in the request.</p>")
  definedIn: option<string_>,
  @ocaml.doc("<p>The status of the component type.</p>") status: option<status>,
  @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: option<componentTypeId>,
  @ocaml.doc("<p>The description of the component type.</p>") description: option<description>,
  @ocaml.doc("<p>The name of the component.</p>") componentName: option<name>,
}
@ocaml.doc(
  "<p>An object that sets information about a component type create or update request.</p>"
)
type componentRequest = {
  @ocaml.doc("<p>An object that maps strings to the properties to set in the component type. Each string 
       in the mapping must be unique to this object.</p>")
  properties: option<propertyRequests>,
  @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: option<componentTypeId>,
  @ocaml.doc("<p>The description of the component request.</p>") description: option<description>,
}
@ocaml.doc("<p>An error returned by the <code>BatchPutProperty</code> action.</p>")
type batchPutPropertyError = {
  @ocaml.doc(
    "<p>An object that contains information about errors returned by the <code>BatchPutProperty</code> action.</p>"
  )
  entry: propertyValueEntry,
  @ocaml.doc("<p>The error message.</p>") errorMessage: string_,
  @ocaml.doc("<p>The error code.</p>") errorCode: string_,
}
type errors = array<batchPutPropertyError>
type componentsMapRequest = Js.Dict.t<componentRequest>
type componentsMap = Js.Dict.t<componentResponse>
type componentUpdatesMapRequest = Js.Dict.t<componentUpdateRequest>
@ocaml.doc(
  "<p>An object that contains information about errors returned by the <code>BatchPutProperty</code> action.</p>"
)
type batchPutPropertyErrorEntry = {
  @ocaml.doc("<p>A list of objects that contain information about errors returned by the
            <code>BatchPutProperty</code> action.</p>")
  errors: errors,
}
type errorEntries = array<batchPutPropertyErrorEntry>
@ocaml.doc("<important>
            <p>
        TwinMaker is in public preview and is subject to change.
      </p>
         </important>
         <p>IoT TwinMaker is a service that enables you to build operational digital twins of
         physical systems. IoT TwinMaker overlays measurements and analysis from real-world sensors,
         cameras, and enterprise applications so you can create data visualizations to monitor your
         physical factory, building, or industrial plant. You can use this real-world data to
         monitor operations and diagnose and repair errors.</p>")
module UpdateWorkspace = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the execution role associated with the workspace.</p>")
    role: option<roleArn>,
    @ocaml.doc("<p>The description of the workspace.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time of the current update.</p>") updateDateTime: timestamp_,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "UpdateWorkspaceCommand"
  let make = (~workspaceId, ~role=?, ~description=?, ()) =>
    new({role: role, description: description, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkspace = {
  type t
  type request = {@ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: idOrArn}
  type response = {
    @ocaml.doc("<p>The date and time when the workspace was last updated.</p>")
    updateDateTime: timestamp_,
    @ocaml.doc("<p>The date and time when the workspace was created.</p>")
    creationDateTime: timestamp_,
    @ocaml.doc("<p>The ARN of the execution role associated with the workspace.</p>") role: roleArn,
    @ocaml.doc(
      "<p>The ARN of the S3 bucket where resources associated with the workspace are stored.</p>"
    )
    s3Location: s3Location,
    @ocaml.doc("<p>The description of the workspace.</p>") description: option<description>,
    @ocaml.doc("<p>The ARN of the workspace.</p>") arn: twinMakerArn,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "GetWorkspaceCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteWorkspace = {
  type t
  type request = {@ocaml.doc("<p>The ID of the workspace to delete.</p>") workspaceId: id}
  type response = {.}
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "DeleteWorkspaceCommand"
  let make = (~workspaceId, ()) => new({workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteScene = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the scene to delete.</p>") sceneId: id,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  type response = {.}
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "DeleteSceneCommand"
  let make = (~sceneId, ~workspaceId, ()) => new({sceneId: sceneId, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteEntity = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A Boolean value that specifies whether the operation deletes child entities.</p>"
    )
    isRecursive: option<boolean_>,
    @ocaml.doc("<p>The ID of the entity to delete.</p>") entityId: entityId,
    @ocaml.doc("<p>The ID of the workspace that contains the entity to delete.</p>")
    workspaceId: id,
  }
  type response = {@ocaml.doc("<p>The current state of the deleted entity.</p>") state: state}
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "DeleteEntityCommand"
  let make = (~entityId, ~workspaceId, ~isRecursive=?, ()) =>
    new({isRecursive: isRecursive, entityId: entityId, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteComponentType = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the component type to delete.</p>") componentTypeId: componentTypeId,
    @ocaml.doc("<p>The ID of the workspace that contains the component type.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The current state of the component type to be deleted.</p>") state: state,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "DeleteComponentTypeCommand"
  let make = (~componentTypeId, ~workspaceId, ()) =>
    new({componentTypeId: componentTypeId, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateScene = {
  type t
  type request = {
    @ocaml.doc("<p>A list of capabilities that the scene uses to render.</p>")
    capabilities: option<sceneCapabilities>,
    @ocaml.doc("<p>The description of this scene.</p>") description: option<description>,
    @ocaml.doc(
      "<p>The relative path that specifies the location of the content definition file.</p>"
    )
    contentLocation: option<s3Url>,
    @ocaml.doc("<p>The ID of the scene.</p>") sceneId: id,
    @ocaml.doc("<p>The ID of the workspace that contains the scene.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the scene was last updated.</p>")
    updateDateTime: timestamp_,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "UpdateSceneCommand"
  let make = (~sceneId, ~workspaceId, ~capabilities=?, ~description=?, ~contentLocation=?, ()) =>
    new({
      capabilities: capabilities,
      description: description,
      contentLocation: contentLocation,
      sceneId: sceneId,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed.</p>"
    )
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceARN: twinMakerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata to add to this resource.</p>") tags: tagMap,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceARN: twinMakerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to display.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the resource.</p>") resourceARN: twinMakerArn,
  }
  type response = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Metadata that you can use to manage a resource.</p>") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetScene = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the scene.</p>") sceneId: id,
    @ocaml.doc("<p>The ID of the workspace that contains the scene.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>A list of capabilities that the scene uses to render.</p>")
    capabilities: option<sceneCapabilities>,
    @ocaml.doc("<p>The description of the scene.</p>") description: option<description>,
    @ocaml.doc("<p>The date and time when the scene was last updated.</p>")
    updateDateTime: timestamp_,
    @ocaml.doc("<p>The date and time when the scene was created.</p>") creationDateTime: timestamp_,
    @ocaml.doc("<p>The ARN of the scene.</p>") arn: twinMakerArn,
    @ocaml.doc(
      "<p>The relative path that specifies the location of the content definition file.</p>"
    )
    contentLocation: s3Url,
    @ocaml.doc("<p>The ID of the scene.</p>") sceneId: id,
    @ocaml.doc("<p>The ID of the workspace that contains the scene.</p>") workspaceId: id,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "GetSceneCommand"
  let make = (~sceneId, ~workspaceId, ()) => new({sceneId: sceneId, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkspace = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that you can use to manage the workspace</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The ARN of the execution role associated with the workspace.</p>") role: roleArn,
    @ocaml.doc(
      "<p>The ARN of the S3 bucket where resources associated with the workspace are stored.</p>"
    )
    s3Location: s3Location,
    @ocaml.doc("<p>The description of the workspace.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the workspace was created.</p>")
    creationDateTime: timestamp_,
    @ocaml.doc("<p>The ARN of the workspace.</p>") arn: twinMakerArn,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "CreateWorkspaceCommand"
  let make = (~role, ~s3Location, ~workspaceId, ~tags=?, ~description=?, ()) =>
    new({
      tags: tags,
      role: role,
      s3Location: s3Location,
      description: description,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateScene = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that you can use to manage the scene.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>A list of capabilities that the scene uses to render itself.</p>")
    capabilities: option<sceneCapabilities>,
    @ocaml.doc("<p>The description for this scene.</p>") description: option<description>,
    @ocaml.doc(
      "<p>The relative path that specifies the location of the content definition file.</p>"
    )
    contentLocation: s3Url,
    @ocaml.doc("<p>The ID of the scene.</p>") sceneId: id,
    @ocaml.doc("<p>The ID of the workspace that contains the scene.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the scene was created.</p>") creationDateTime: timestamp_,
    @ocaml.doc("<p>The ARN of the scene.</p>") arn: twinMakerArn,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "CreateSceneCommand"
  let make = (
    ~contentLocation,
    ~sceneId,
    ~workspaceId,
    ~tags=?,
    ~capabilities=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      capabilities: capabilities,
      description: description,
      contentLocation: contentLocation,
      sceneId: sceneId,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkspaces = {
  type t
  type request = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to display.</p>") maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects that contain information about the workspaces.</p>")
    workspaceSummaries: option<workspaceSummaries>,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "ListWorkspacesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListScenes = {
  type t
  type request = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies the maximum number of results to display.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the workspace that contains the scenes.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects that contain information about the scenes.</p>")
    sceneSummaries: option<sceneSummaries>,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "ListScenesCommand"
  let make = (~workspaceId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEntities = {
  type t
  type request = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to display.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>A list of objects that filter the request.</p>")
    filters: option<listEntitiesFilters>,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects that contain information about the entities.</p>")
    entitySummaries: option<entitySummaries>,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "ListEntitiesCommand"
  let make = (~workspaceId, ~nextToken=?, ~maxResults=?, ~filters=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, filters: filters, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListComponentTypes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to display.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects that filter the request.</p>")
    filters: option<listComponentTypesFilters>,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>Specifies the maximum number of results to display.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of objects that contain information about the component types.</p>")
    componentTypeSummaries: componentTypeSummaries,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "ListComponentTypesCommand"
  let make = (~workspaceId, ~maxResults=?, ~nextToken=?, ~filters=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, filters: filters, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateComponentType = {
  type t
  type request = {
    @ocaml.doc("<p>An object that maps strings to the functions in the component type. Each string 
       in the mapping must be unique to this object.</p>")
    functions: option<functionsRequest>,
    @ocaml.doc("<p>Specifies the component type that this component type extends.</p>")
    extendsFrom: option<extendsFrom>,
    @ocaml.doc("<p>An object that maps strings to the property definitions in the component type. Each string 
       in the mapping must be unique to this object.</p>")
    propertyDefinitions: option<propertyDefinitionsRequest>,
    @ocaml.doc("<p>The description of the component type.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: componentTypeId,
    @ocaml.doc("<p>A Boolean value that specifies whether an entity can have more than one component of this
         type.</p>")
    isSingleton: option<boolean_>,
    @ocaml.doc("<p>The ID of the workspace that contains the component type.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The current state of the component type.</p>") state: state,
    @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: componentTypeId,
    @ocaml.doc("<p>The ARN of the component type.</p>") arn: twinMakerArn,
    @ocaml.doc("<p>The ID of the workspace that contains the component type.</p>") workspaceId: id,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "UpdateComponentTypeCommand"
  let make = (
    ~componentTypeId,
    ~workspaceId,
    ~functions=?,
    ~extendsFrom=?,
    ~propertyDefinitions=?,
    ~description=?,
    ~isSingleton=?,
    (),
  ) =>
    new({
      functions: functions,
      extendsFrom: extendsFrom,
      propertyDefinitions: propertyDefinitions,
      description: description,
      componentTypeId: componentTypeId,
      isSingleton: isSingleton,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPropertyValue = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the workspace whose values the operation returns.</p>")
    workspaceId: id,
    @ocaml.doc("<p>The properties whose values the operation returns.</p>")
    selectedProperties: selectedPropertyList,
    @ocaml.doc("<p>The ID of the entity whose property values the operation returns.</p>")
    entityId: option<entityId>,
    @ocaml.doc("<p>The ID of the component type whose property values the operation returns.</p>")
    componentTypeId: option<componentTypeId>,
    @ocaml.doc("<p>The name of the component whose property values the operation returns.</p>")
    componentName: option<name>,
  }
  type response = {
    @ocaml.doc("<p>An object that maps strings to the properties and latest property values in the response. Each string 
       in the mapping must be unique to this object.</p>")
    propertyValues: propertyLatestValueMap,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "GetPropertyValueCommand"
  let make = (
    ~workspaceId,
    ~selectedProperties,
    ~entityId=?,
    ~componentTypeId=?,
    ~componentName=?,
    (),
  ) =>
    new({
      workspaceId: workspaceId,
      selectedProperties: selectedProperties,
      entityId: entityId,
      componentTypeId: componentTypeId,
      componentName: componentName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComponentType = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: componentTypeId,
    @ocaml.doc("<p>The ID of the workspace that contains the component type.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The current status of the component type.</p>") status: option<status>,
    @ocaml.doc("<p>A Boolean value that specifies whether the component type has a schema initializer and that the 
      schema initializer has run.</p>")
    isSchemaInitialized: option<boolean_>,
    @ocaml.doc("<p>A Boolean value that specifies whether the component type is abstract.</p>")
    isAbstract: option<boolean_>,
    @ocaml.doc("<p>The ARN of the component type.</p>") arn: twinMakerArn,
    @ocaml.doc("<p>The date and time when the component was last updated.</p>")
    updateDateTime: timestamp_,
    @ocaml.doc("<p>The date and time when the component type was created.</p>")
    creationDateTime: timestamp_,
    @ocaml.doc("<p>An object that maps strings to the functions in the component type. Each string 
       in the mapping must be unique to this object.</p>")
    functions: option<functionsResponse>,
    @ocaml.doc("<p>The name of the parent component type that this component type extends.</p>")
    extendsFrom: option<extendsFrom>,
    @ocaml.doc("<p>An object that maps strings to the property definitions in the component type. Each string 
       in the mapping must be unique to this object.</p>")
    propertyDefinitions: option<propertyDefinitionsResponse>,
    @ocaml.doc("<p>The description of the component type.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: componentTypeId,
    @ocaml.doc("<p>A Boolean value that specifies whether an entity can have more than one component of this
         type.</p>")
    isSingleton: option<boolean_>,
    @ocaml.doc("<p>The ID of the workspace that contains the component type.</p>") workspaceId: id,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "GetComponentTypeCommand"
  let make = (~componentTypeId, ~workspaceId, ()) =>
    new({componentTypeId: componentTypeId, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateComponentType = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that you can use to manage the component type.</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>An object that maps strings to the functions in the component type. Each string in the
         mapping must be unique to this object.</p>")
    functions: option<functionsRequest>,
    @ocaml.doc("<p>Specifies the parent component type to extend.</p>")
    extendsFrom: option<extendsFrom>,
    @ocaml.doc("<p>An object that maps strings to the property definitions in the component type. Each string 
      in the mapping must be unique to this object.</p>")
    propertyDefinitions: option<propertyDefinitionsRequest>,
    @ocaml.doc("<p>The description of the component type.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: componentTypeId,
    @ocaml.doc("<p>A Boolean value that specifies whether an entity can have more than one component of
         this type.</p>")
    isSingleton: option<boolean_>,
    @ocaml.doc("<p>The ID of the workspace that contains the component type.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The current state of the component type.</p>") state: state,
    @ocaml.doc("<p>The date and time when the entity was created.</p>")
    creationDateTime: timestamp_,
    @ocaml.doc("<p>The ARN of the component type.</p>") arn: twinMakerArn,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "CreateComponentTypeCommand"
  let make = (
    ~componentTypeId,
    ~workspaceId,
    ~tags=?,
    ~functions=?,
    ~extendsFrom=?,
    ~propertyDefinitions=?,
    ~description=?,
    ~isSingleton=?,
    (),
  ) =>
    new({
      tags: tags,
      functions: functions,
      extendsFrom: extendsFrom,
      propertyDefinitions: propertyDefinitions,
      description: description,
      componentTypeId: componentTypeId,
      isSingleton: isSingleton,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPropertyValueHistory = {
  type t
  type request = {
    @ocaml.doc("<p>The time direction to use in the result order.</p>")
    orderByTime: option<orderByTime>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") maxResults: option<maxResults>,
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>An object that specifies the interpolation type and the interval over which to interpolate data.</p>"
    )
    interpolation: option<interpolationParameters>,
    @ocaml.doc("<p>The date and time of the latest property value to return.</p>")
    endDateTime: timestamp_,
    @ocaml.doc("<p>The date and time of the earliest property value to return.</p>")
    startDateTime: timestamp_,
    @ocaml.doc("<p>A list of objects that filter the property value history request.</p>")
    propertyFilters: option<propertyFilters>,
    @ocaml.doc("<p>A list of properties whose value histories the request retrieves.</p>")
    selectedProperties: selectedPropertyList,
    @ocaml.doc("<p>The ID of the component type.</p>") componentTypeId: option<componentTypeId>,
    @ocaml.doc("<p>The name of the component.</p>") componentName: option<name>,
    @ocaml.doc("<p>The ID of the entity.</p>") entityId: option<entityId>,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The string that specifies the next page of results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An object that maps strings to the property definitions in the component type. Each string 
       in the mapping must be unique to this object.</p>")
    propertyValues: propertyValueList,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "GetPropertyValueHistoryCommand"
  let make = (
    ~endDateTime,
    ~startDateTime,
    ~selectedProperties,
    ~workspaceId,
    ~orderByTime=?,
    ~maxResults=?,
    ~nextToken=?,
    ~interpolation=?,
    ~propertyFilters=?,
    ~componentTypeId=?,
    ~componentName=?,
    ~entityId=?,
    (),
  ) =>
    new({
      orderByTime: orderByTime,
      maxResults: maxResults,
      nextToken: nextToken,
      interpolation: interpolation,
      endDateTime: endDateTime,
      startDateTime: startDateTime,
      propertyFilters: propertyFilters,
      selectedProperties: selectedProperties,
      componentTypeId: componentTypeId,
      componentName: componentName,
      entityId: entityId,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateEntity = {
  type t
  type request = {
    @ocaml.doc("<p>An object that describes the update request for a parent entity.</p>")
    parentEntityUpdate: option<parentEntityUpdateRequest>,
    @ocaml.doc("<p>An object that maps strings to the component updates in the request. Each string 
       in the mapping must be unique to this object.</p>")
    componentUpdates: option<componentUpdatesMapRequest>,
    @ocaml.doc("<p>The description of the entity.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the entity.</p>") entityName: option<entityName>,
    @ocaml.doc("<p>The ID of the entity.</p>") entityId: entityId,
    @ocaml.doc("<p>The ID of the workspace that contains the entity.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The current state of the entity update.</p>") state: state,
    @ocaml.doc("<p>The date and time when the entity was last updated.</p>")
    updateDateTime: timestamp_,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "UpdateEntityCommand"
  let make = (
    ~entityId,
    ~workspaceId,
    ~parentEntityUpdate=?,
    ~componentUpdates=?,
    ~description=?,
    ~entityName=?,
    (),
  ) =>
    new({
      parentEntityUpdate: parentEntityUpdate,
      componentUpdates: componentUpdates,
      description: description,
      entityName: entityName,
      entityId: entityId,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEntity = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the entity.</p>") entityId: entityId,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The date and time when the entity was last updated.</p>")
    updateDateTime: timestamp_,
    @ocaml.doc("<p>The date and time when the entity was created.</p>")
    creationDateTime: timestamp_,
    @ocaml.doc(
      "<p>A Boolean value that specifies whether the entity has associated child entities.</p>"
    )
    hasChildEntities: boolean_,
    @ocaml.doc("<p>The ID of the parent entity for this entity.</p>")
    parentEntityId: parentEntityId,
    @ocaml.doc("<p>An object that maps strings to the components in the entity. Each string 
       in the mapping must be unique to this object.</p>")
    components: option<componentsMap>,
    @ocaml.doc("<p>The description of the entity.</p>") description: option<description>,
    @ocaml.doc("<p>The ID of the workspace.</p>") workspaceId: id,
    @ocaml.doc("<p>The current status of the entity.</p>") status: status,
    @ocaml.doc("<p>The ARN of the entity.</p>") arn: twinMakerArn,
    @ocaml.doc("<p>The name of the entity.</p>") entityName: entityName,
    @ocaml.doc("<p>The ID of the entity.</p>") entityId: entityId,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "GetEntityCommand"
  let make = (~entityId, ~workspaceId, ()) => new({entityId: entityId, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateEntity = {
  type t
  type request = {
    @ocaml.doc("<p>Metadata that you can use to manage the entity.</p>") tags: option<tagMap>,
    @ocaml.doc("<p>The ID of the entity's parent entity.</p>")
    parentEntityId: option<parentEntityId>,
    @ocaml.doc("<p>An object that maps strings to the components in the entity. Each string 
       in the mapping must be unique to this object.</p>")
    components: option<componentsMapRequest>,
    @ocaml.doc("<p>The description of the entity.</p>") description: option<description>,
    @ocaml.doc("<p>The name of the entity.</p>") entityName: entityName,
    @ocaml.doc("<p>The ID of the entity.</p>") entityId: option<entityId>,
    @ocaml.doc("<p>The ID of the workspace that contains the entity.</p>") workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>The current state of the entity.</p>") state: state,
    @ocaml.doc("<p>The date and time when the entity was created.</p>")
    creationDateTime: timestamp_,
    @ocaml.doc("<p>The ARN of the entity.</p>") arn: twinMakerArn,
    @ocaml.doc("<p>The ID of the entity.</p>") entityId: entityId,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new external new: request => t = "CreateEntityCommand"
  let make = (
    ~entityName,
    ~workspaceId,
    ~tags=?,
    ~parentEntityId=?,
    ~components=?,
    ~description=?,
    ~entityId=?,
    (),
  ) =>
    new({
      tags: tags,
      parentEntityId: parentEntityId,
      components: components,
      description: description,
      entityName: entityName,
      entityId: entityId,
      workspaceId: workspaceId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchPutPropertyValues = {
  type t
  type request = {
    @ocaml.doc("<p>An object that maps strings to the property value entries to set. Each string 
       in the mapping must be unique to this object.</p>")
    entries: entries,
    @ocaml.doc("<p>The ID of the workspace that contains the properties to set.</p>")
    workspaceId: id,
  }
  type response = {
    @ocaml.doc("<p>Entries that caused errors in the batch put operation.</p>")
    errorEntries: errorEntries,
  }
  @module("@aws-sdk/client-awsiottwinmaker") @new
  external new: request => t = "BatchPutPropertyValuesCommand"
  let make = (~entries, ~workspaceId, ()) => new({entries: entries, workspaceId: workspaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
