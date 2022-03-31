type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-clouddirectory") @new
external createClient: unit => awsServiceClient = "CloudDirectoryClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type version = string
type updateActionType = [@as("DELETE") #DELETE | @as("CREATE_OR_UPDATE") #CREATE_OR_UPDATE]
type typedLinkName = string
type tagsNumberResults = int
type tagValue = string
type tagKey = string
type stringAttributeValue = string
type selectorObjectReference = string
type schemaName = string
type schemaJsonDocument = string
type ruleType = [
  | @as("STRING_LENGTH") #STRING_LENGTH
  | @as("STRING_FROM_SET") #STRING_FROM_SET
  | @as("NUMBER_COMPARISON") #NUMBER_COMPARISON
  | @as("BINARY_LENGTH") #BINARY_LENGTH
]
type ruleParameterValue = string
type ruleParameterKey = string
type ruleKey = string
type requiredAttributeBehavior = [
  | @as("NOT_REQUIRED") #NOT_REQUIRED
  | @as("REQUIRED_ALWAYS") #REQUIRED_ALWAYS
]
type rangeMode = [
  | @as("EXCLUSIVE") #EXCLUSIVE
  | @as("INCLUSIVE") #INCLUSIVE
  | @as("LAST_BEFORE_MISSING_VALUES") #LAST_BEFORE_MISSING_VALUES
  | @as("LAST") #LAST
  | @as("FIRST") #FIRST
]
type policyType = string
type pathString = string
type objectType = [
  | @as("INDEX") #INDEX
  | @as("POLICY") #POLICY
  | @as("LEAF_NODE") #LEAF_NODE
  | @as("NODE") #NODE
]
type objectIdentifier = string
type numberResults = int
type numberAttributeValue = string
type nextToken = string
type linkName = string
type facetStyle = [@as("DYNAMIC") #DYNAMIC | @as("STATIC") #STATIC]
type facetName = string
type facetAttributeType = [
  | @as("VARIANT") #VARIANT
  | @as("DATETIME") #DATETIME
  | @as("NUMBER") #NUMBER
  | @as("BOOLEAN") #BOOLEAN
  | @as("BINARY") #BINARY
  | @as("STRING") #STRING
]
type exceptionMessage = string
type directoryState = [
  | @as("DELETED") #DELETED
  | @as("DISABLED") #DISABLED
  | @as("ENABLED") #ENABLED
]
type directoryName = string
type directoryArn = string
type datetimeAttributeValue = Js.Date.t
type date = Js.Date.t
type consistencyLevel = [@as("EVENTUAL") #EVENTUAL | @as("SERIALIZABLE") #SERIALIZABLE]
type booleanAttributeValue = bool
type bool_ = bool
type binaryAttributeValue = NodeJs.Buffer.t
type batchWriteExceptionType = [
  | @as("UnsupportedIndexTypeException") #UnsupportedIndexTypeException
  | @as("LimitExceededException") #LimitExceededException
  | @as("DirectoryNotEnabledException") #DirectoryNotEnabledException
  | @as("NotPolicyException") #NotPolicyException
  | @as("ObjectAlreadyDetachedException") #ObjectAlreadyDetachedException
  | @as("IndexedAttributeMissingException") #IndexedAttributeMissingException
  | @as("NotNodeException") #NotNodeException
  | @as("NotIndexException") #NotIndexException
  | @as("InvalidAttachmentException") #InvalidAttachmentException
  | @as("AccessDeniedException") #AccessDeniedException
  | @as("ResourceNotFoundException") #ResourceNotFoundException
  | @as("ObjectNotDetachedException") #ObjectNotDetachedException
  | @as("FacetValidationException") #FacetValidationException
  | @as("StillContainsLinksException") #StillContainsLinksException
  | @as("LinkNameAlreadyInUseException") #LinkNameAlreadyInUseException
  | @as("InvalidArnException") #InvalidArnException
  | @as("ValidationException") #ValidationException
  | @as("InternalServiceException") #InternalServiceException
]
@ocaml.doc("<p>Represents the output of a <a>UpdateLinkAttributes</a> response operation.</p>")
type batchUpdateLinkAttributesResponse = {.}
@ocaml.doc("<p>An empty result that represents success.</p>")
type batchRemoveFacetFromObjectResponse = {.}
type batchReferenceName = string
type batchReadExceptionType = [
  | @as("InternalServiceException") #InternalServiceException
  | @as("LimitExceededException") #LimitExceededException
  | @as("DirectoryNotEnabledException") #DirectoryNotEnabledException
  | @as("NotPolicyException") #NotPolicyException
  | @as("NotIndexException") #NotIndexException
  | @as("CannotListParentOfRootException") #CannotListParentOfRootException
  | @as("FacetValidationException") #FacetValidationException
  | @as("NotNodeException") #NotNodeException
  | @as("AccessDeniedException") #AccessDeniedException
  | @as("InvalidNextTokenException") #InvalidNextTokenException
  | @as("ResourceNotFoundException") #ResourceNotFoundException
  | @as("InvalidArnException") #InvalidArnException
  | @as("ValidationException") #ValidationException
]
type batchOperationIndex = int
@ocaml.doc("<p>Represents the output of a <a>DetachTypedLink</a> response operation.</p>")
type batchDetachTypedLinkResponse = {.}
@ocaml.doc("<p>Represents the output of a <a>DetachPolicy</a> response operation.</p>")
type batchDetachPolicyResponse = {.}
@ocaml.doc("<p>Represents the output of a <a>DeleteObject</a> response operation.</p>")
type batchDeleteObjectResponse = {.}
@ocaml.doc("<p>Represents the output of an <a>AttachPolicy</a> response
      operation.</p>")
type batchAttachPolicyResponse = {.}
@ocaml.doc("<p>The result of a batch add facet to object operation.</p>")
type batchAddFacetToObjectResponse = {.}
type attributeName = string
type arn = string
@ocaml.doc("<p>Identifies the schema Amazon Resource Name (ARN) and facet name for the typed
      link.</p>")
type typedLinkSchemaAndFacetName = {
  @ocaml.doc("<p>The unique name of the typed link facet.</p>") @as("TypedLinkName")
  typedLinkName: typedLinkName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
  @as("SchemaArn")
  schemaArn: arn,
}
type typedLinkNameList = array<typedLinkName>
@ocaml.doc("<p>Represents the data for a typed attribute. You can set one, and only one, of the
      elements. Each attribute in an item is a name-value pair. Attributes have a single
      value.</p>")
type typedAttributeValue = {
  @ocaml.doc("<p>A date and time value.</p>") @as("DatetimeValue")
  datetimeValue: option<datetimeAttributeValue>,
  @ocaml.doc("<p>A number data value.</p>") @as("NumberValue")
  numberValue: option<numberAttributeValue>,
  @ocaml.doc("<p>A Boolean data value.</p>") @as("BooleanValue")
  booleanValue: option<booleanAttributeValue>,
  @ocaml.doc("<p>A binary data value.</p>") @as("BinaryValue")
  binaryValue: option<binaryAttributeValue>,
  @ocaml.doc("<p>A string data value.</p>") @as("StringValue")
  stringValue: option<stringAttributeValue>,
}
module TypedAttributeValue = {
  type t =
    | DatetimeValue(datetimeAttributeValue)
    | NumberValue(numberAttributeValue)
    | BooleanValue(booleanAttributeValue)
    | BinaryValue(binaryAttributeValue)
    | StringValue(stringAttributeValue)
  exception TypedAttributeValueUnspecified
  let classify = value =>
    switch value {
    | {datetimeValue: Some(x)} => DatetimeValue(x)
    | {numberValue: Some(x)} => NumberValue(x)
    | {booleanValue: Some(x)} => BooleanValue(x)
    | {binaryValue: Some(x)} => BinaryValue(x)
    | {stringValue: Some(x)} => StringValue(x)
    | _ => raise(TypedAttributeValueUnspecified)
    }

  let make = value =>
    switch value {
    | DatetimeValue(x) => {
        datetimeValue: Some(x),
        numberValue: None,
        booleanValue: None,
        binaryValue: None,
        stringValue: None,
      }
    | NumberValue(x) => {
        numberValue: Some(x),
        datetimeValue: None,
        booleanValue: None,
        binaryValue: None,
        stringValue: None,
      }
    | BooleanValue(x) => {
        booleanValue: Some(x),
        datetimeValue: None,
        numberValue: None,
        binaryValue: None,
        stringValue: None,
      }
    | BinaryValue(x) => {
        binaryValue: Some(x),
        datetimeValue: None,
        numberValue: None,
        booleanValue: None,
        stringValue: None,
      }
    | StringValue(x) => {
        stringValue: Some(x),
        datetimeValue: None,
        numberValue: None,
        booleanValue: None,
        binaryValue: None,
      }
    }
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The tag structure that contains a tag key and value.</p>")
type tag = {
  @ocaml.doc("<p>The value that is associated with the tag.</p>") @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>The key that is associated with the tag.</p>") @as("Key") key: option<tagKey>,
}
@ocaml.doc("<p>A facet.</p>")
type schemaFacet = {
  @ocaml.doc("<p>The name of the facet. If this value is set, SchemaArn must also be set.</p>")
  @as("FacetName")
  facetName: option<facetName>,
  @ocaml.doc("<p>The ARN of the schema that contains the facet with no minor component. See <a>arns</a> and <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_inplaceschemaupgrade.html\">In-Place Schema Upgrade</a> for a description of when to provide minor versions.
     If this value is set, FacetName must also be set.</p>")
  @as("SchemaArn")
  schemaArn: option<arn>,
}
type ruleParameterMap = Js.Dict.t<ruleParameterValue>
@ocaml.doc("<p>Contains the <code>PolicyType</code>, <code>PolicyId</code>, and the <code>ObjectIdentifier</code> to which it is
      attached. For more
      information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>")
type policyAttachment = {
  @ocaml.doc("<p>The type of policy that can be associated with <code>PolicyAttachment</code>.</p>")
  @as("PolicyType")
  policyType: option<policyType>,
  @ocaml.doc("<p>The <code>ObjectIdentifier</code> that is associated with
      <code>PolicyAttachment</code>.</p>")
  @as("ObjectIdentifier")
  objectIdentifier: option<objectIdentifier>,
  @ocaml.doc("<p>The ID of <code>PolicyAttachment</code>.</p>") @as("PolicyId")
  policyId: option<objectIdentifier>,
}
@ocaml.doc("<p>The reference that identifies an object.</p>")
type objectReference = {
  @ocaml.doc("<p>A path selector supports easy selection of an object by the parent/child links leading to it from the directory root. Use the link names from each parent/child link to construct the path. Path selectors start with a slash (/) and link names are separated by slashes. For more information about paths, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_access_objects.html\">Access Objects</a>. You can identify an object in one of the following ways:</p>
         <ul>
            <li>
               <p>
                  <i>$ObjectIdentifier</i> - An object identifier is an opaque string provided by Amazon Cloud Directory. When creating objects, the system will provide you with the identifier of the created object. An object’s identifier is immutable and no two objects will ever share the same object identifier. To identify an object with ObjectIdentifier, the ObjectIdentifier must be wrapped in double quotes. </p>
            </li>
            <li>
               <p>
                  <i>/some/path</i> - Identifies the object based on path</p>
            </li>
            <li>
               <p>
                  <i>#SomeBatchReference</i> - Identifies the object in a batch call</p>
            </li>
         </ul>")
  @as("Selector")
  selector: option<selectorObjectReference>,
}
type objectIdentifierToLinkNameMap = Js.Dict.t<linkName>
type objectIdentifierList = array<objectIdentifier>
@ocaml.doc("<p>A pair of ObjectIdentifier and LinkName.</p>")
type objectIdentifierAndLinkNameTuple = {
  @ocaml.doc("<p>The name of the link between the parent and the child object.</p>") @as("LinkName")
  linkName: option<linkName>,
  @ocaml.doc("<p>The ID that is associated with the object.</p>") @as("ObjectIdentifier")
  objectIdentifier: option<objectIdentifier>,
}
type linkNameToObjectIdentifierMap = Js.Dict.t<objectIdentifier>
type facetNameList = array<facetName>
@ocaml.doc("<p>The facet attribute reference that specifies the attribute definition that contains the
      attribute facet name and attribute name.</p>")
type facetAttributeReference = {
  @ocaml.doc(
    "<p>The target attribute name that is associated with the facet reference. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>"
  )
  @as("TargetAttributeName")
  targetAttributeName: attributeName,
  @ocaml.doc(
    "<p>The target facet name that is associated with the facet reference. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>"
  )
  @as("TargetFacetName")
  targetFacetName: facetName,
}
@ocaml.doc("<p>A structure that contains <code>Name</code>, <code>ARN</code>, <code>Attributes</code>, <code>
               <a>Rule</a>s</code>, and
      <code>ObjectTypes</code>. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_whatarefacets.html\">Facets</a> for more information.</p>")
type facet = {
  @ocaml.doc(
    "<p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>"
  )
  @as("FacetStyle")
  facetStyle: option<facetStyle>,
  @ocaml.doc(
    "<p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>"
  )
  @as("ObjectType")
  objectType: option<objectType>,
  @ocaml.doc("<p>The name of the <a>Facet</a>.</p>") @as("Name") name: option<facetName>,
}
@ocaml.doc("<p>Directory structure that includes the directory name and directory ARN.</p>")
type directory = {
  @ocaml.doc("<p>The date and time when the directory was created.</p>") @as("CreationDateTime")
  creationDateTime: option<date>,
  @ocaml.doc(
    "<p>The state of the directory. Can be either <code>Enabled</code>, <code>Disabled</code>, or <code>Deleted</code>.</p>"
  )
  @as("State")
  state: option<directoryState>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the directory. For more
      information, see <a>arns</a>.</p>")
  @as("DirectoryArn")
  directoryArn: option<directoryArn>,
  @ocaml.doc("<p>The name of the directory.</p>") @as("Name") name: option<directoryName>,
}
@ocaml.doc("<p>Represents the output of a <code>BatchUpdate</code> response operation.</p>")
type batchUpdateObjectAttributesResponse = {
  @ocaml.doc("<p>ID that is associated with the object.</p>") @as("ObjectIdentifier")
  objectIdentifier: option<objectIdentifier>,
}
@ocaml.doc("<p>The batch read exception structure, which contains the exception type and
      message.</p>")
type batchReadException = {
  @ocaml.doc("<p>An exception message that is associated with the failure.</p>") @as("Message")
  message: option<exceptionMessage>,
  @ocaml.doc("<p>A type of exception, such as <code>InvalidArnException</code>.</p>") @as("Type")
  type_: option<batchReadExceptionType>,
}
@ocaml.doc("<p>Represents the output of a <a>DetachObject</a> response operation.</p>")
type batchDetachObjectResponse = {
  @ocaml.doc("<p>The <code>ObjectIdentifier</code> of the detached object.</p>")
  detachedObjectIdentifier: option<objectIdentifier>,
}
@ocaml.doc("<p>Represents the output of a <a>DetachFromIndex</a> response operation.</p>")
type batchDetachFromIndexResponse = {
  @ocaml.doc(
    "<p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>"
  )
  @as("DetachedObjectIdentifier")
  detachedObjectIdentifier: option<objectIdentifier>,
}
@ocaml.doc("<p>Represents the output of a <a>CreateObject</a> response operation.</p>")
type batchCreateObjectResponse = {
  @ocaml.doc("<p>The ID that is associated with the object.</p>") @as("ObjectIdentifier")
  objectIdentifier: option<objectIdentifier>,
}
@ocaml.doc("<p>Represents the output of a <a>CreateIndex</a> response operation.</p>")
type batchCreateIndexResponse = {
  @ocaml.doc("<p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>")
  @as("ObjectIdentifier")
  objectIdentifier: option<objectIdentifier>,
}
@ocaml.doc("<p>Represents the output of a <a>AttachToIndex</a> response operation.</p>")
type batchAttachToIndexResponse = {
  @ocaml.doc(
    "<p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>"
  )
  @as("AttachedObjectIdentifier")
  attachedObjectIdentifier: option<objectIdentifier>,
}
@ocaml.doc("<p>Represents the output batch <a>AttachObject</a> response operation.</p>")
type batchAttachObjectResponse = {
  @ocaml.doc("<p>The <code>ObjectIdentifier</code> of the object that has been attached.</p>")
  attachedObjectIdentifier: option<objectIdentifier>,
}
type attributeNameList = array<attributeName>
@ocaml.doc("<p>A unique identifier for an attribute.</p>")
type attributeKey = {
  @ocaml.doc("<p>The name of the attribute.</p>") @as("Name") name: attributeName,
  @ocaml.doc("<p>The name of the facet that the attribute exists within.</p>") @as("FacetName")
  facetName: facetName,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the schema that contains the facet and
      attribute.</p>")
  @as("SchemaArn")
  schemaArn: arn,
}
type arns = array<arn>
@ocaml.doc(
  "<p>A range of attribute values. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_range_filters.html\">Range Filters</a>.</p>"
)
type typedAttributeValueRange = {
  @ocaml.doc("<p>The attribute value to terminate the range at.</p>") @as("EndValue")
  endValue: option<typedAttributeValue>,
  @ocaml.doc("<p>The inclusive or exclusive range end.</p>") @as("EndMode") endMode: rangeMode,
  @ocaml.doc("<p>The value to start the range at.</p>") @as("StartValue")
  startValue: option<typedAttributeValue>,
  @ocaml.doc("<p>The inclusive or exclusive range start.</p>") @as("StartMode")
  startMode: rangeMode,
}
type tagList_ = array<tag>
type schemaFacetList = array<schemaFacet>
@ocaml.doc("<p>Contains an Amazon Resource Name (ARN) and parameters that are associated with the
      rule.</p>")
type rule = {
  @ocaml.doc("<p>The minimum and maximum parameters that are associated with the rule.</p>")
  @as("Parameters")
  parameters: option<ruleParameterMap>,
  @ocaml.doc("<p>The type of attribute validation rule.</p>") @as("Type") type_: option<ruleType>,
}
type policyAttachmentList = array<policyAttachment>
@ocaml.doc("<p>Returns the path to the <code>ObjectIdentifiers</code> that is associated with the
      directory.</p>")
type pathToObjectIdentifiers = {
  @ocaml.doc("<p>Lists <code>ObjectIdentifiers</code> starting from directory root to the object in the
      request.</p>")
  @as("ObjectIdentifiers")
  objectIdentifiers: option<objectIdentifierList>,
  @ocaml.doc("<p>The path that is used to identify the object starting from directory root.</p>")
  @as("Path")
  path: option<pathString>,
}
type objectIdentifierAndLinkNameList = array<objectIdentifierAndLinkNameTuple>
@ocaml.doc("<p>The action to take on the object attribute.</p>")
type objectAttributeAction = {
  @ocaml.doc("<p>The value that you want to update to.</p>") @as("ObjectAttributeUpdateValue")
  objectAttributeUpdateValue: option<typedAttributeValue>,
  @ocaml.doc("<p>A type that can be either <code>Update</code> or <code>Delete</code>.</p>")
  @as("ObjectAttributeActionType")
  objectAttributeActionType: option<updateActionType>,
}
@ocaml.doc(
  "<p>The action to take on a typed link attribute value. Updates are only supported for attributes which don’t contribute to link identity.</p>"
)
type linkAttributeAction = {
  @ocaml.doc("<p>The value that you want to update to.</p>") @as("AttributeUpdateValue")
  attributeUpdateValue: option<typedAttributeValue>,
  @ocaml.doc(
    "<p>A type that can be either <code>UPDATE_OR_CREATE</code> or <code>DELETE</code>.</p>"
  )
  @as("AttributeActionType")
  attributeActionType: option<updateActionType>,
}
type directoryList = array<directory>
@ocaml.doc("<p>A batch operation to remove a facet from an object.</p>")
type batchRemoveFacetFromObject = {
  @ocaml.doc("<p>A reference to the object whose facet will be removed.</p>") @as("ObjectReference")
  objectReference: objectReference,
  @ocaml.doc("<p>The facet to remove from the object.</p>") @as("SchemaFacet")
  schemaFacet: schemaFacet,
}
@ocaml.doc(
  "<p>Lists all policies from the root of the Directory to the object specified inside a <a>BatchRead</a> operation. For more information, see <a>LookupPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchLookupPolicy = {
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Reference that identifies the object whose policies will be looked up.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc("<p>Represents the output of a <a>ListPolicyAttachments</a> response operation.</p>")
type batchListPolicyAttachmentsResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>")
  @as("ObjectIdentifiers")
  objectIdentifiers: option<objectIdentifierList>,
}
@ocaml.doc(
  "<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached inside a <a>BatchRead</a> operation. For more information, see <a>ListPolicyAttachments</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchListPolicyAttachments = {
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The reference that identifies the policy object.</p>") @as("PolicyReference")
  policyReference: objectReference,
}
@ocaml.doc("<p>Represents the output of a <a>ListObjectPolicies</a> response operation.</p>")
type batchListObjectPoliciesResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the
       object.</p>")
  @as("AttachedPolicyIds")
  attachedPolicyIds: option<objectIdentifierList>,
}
@ocaml.doc(
  "<p>Returns policies attached to an object in pagination fashion inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectPolicies</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchListObjectPolicies = {
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The reference that identifies the object whose attributes will be listed.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc("<p>Lists parent objects that are associated with a given object in pagination
      fashion.</p>")
type batchListObjectParents = {
  @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
  @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference,
}
@ocaml.doc(
  "<p>Retrieves all available parent paths for any object type such as node, leaf node, policy node, and index node objects inside a <a>BatchRead</a> operation. For more information, see <a>ListObjectParentPaths</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchListObjectParentPaths = {
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The reference that identifies the object whose attributes will be listed.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc("<p>Represents the output of a <a>ListObjectChildren</a> response operation.</p>")
type batchListObjectChildrenResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The children structure, which is a map with the key as the <code>LinkName</code> and
        <code>ObjectIdentifier</code> as the value.</p>")
  @as("Children")
  children: option<linkNameToObjectIdentifierMap>,
}
@ocaml.doc("<p>Represents the output of a <a>ListObjectChildren</a> operation.</p>")
type batchListObjectChildren = {
  @ocaml.doc("<p>Maximum number of items to be retrieved in a single call. This is an approximate
       number.</p>")
  @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Reference of the object for which child objects are being listed.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc("<p>Represents the output of a <a>ListObjectAttributes</a> operation.</p>")
type batchListObjectAttributes = {
  @ocaml.doc("<p>Used to filter the list of object attributes that are associated with a certain
      facet.</p>")
  @as("FacetFilter")
  facetFilter: option<schemaFacet>,
  @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
  @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Reference of the object whose attributes need to be listed.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc(
  "<p>Lists indices attached to an object inside a <a>BatchRead</a> operation. For more information, see <a>ListAttachedIndices</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchListAttachedIndices = {
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>A reference to the object that has indices attached.</p>") @as("TargetReference")
  targetReference: objectReference,
}
@ocaml.doc(
  "<p>Retrieves metadata about an object inside a <a>BatchRead</a> operation. For more information, see <a>GetObjectInformation</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchGetObjectInformation = {
  @ocaml.doc("<p>A reference to the object.</p>") @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc(
  "<p>Retrieves attributes within a facet that are associated with an object inside an <a>BatchRead</a> operation. For more information, see <a>GetObjectAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchGetObjectAttributes = {
  @ocaml.doc("<p>List of attribute names whose values will be retrieved.</p>") @as("AttributeNames")
  attributeNames: attributeNameList,
  @ocaml.doc(
    "<p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>"
  )
  @as("SchemaFacet")
  schemaFacet: schemaFacet,
  @ocaml.doc("<p>Reference that identifies the object whose attributes will be retrieved.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc(
  "<p>Detaches the specified policy from the specified directory inside a <a>BatchWrite</a> operation. For more information, see <a>DetachPolicy</a> and <a>BatchWriteRequest$Operations</a>.</p>"
)
type batchDetachPolicy = {
  @ocaml.doc("<p>Reference that identifies the object whose policy object will be detached.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
  @ocaml.doc("<p>Reference that identifies the policy object.</p>") @as("PolicyReference")
  policyReference: objectReference,
}
@ocaml.doc("<p>Represents the output of a <a>DetachObject</a> operation.</p>")
type batchDetachObject = {
  @ocaml.doc(
    "<p>The batch reference name. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html\">Transaction Support</a> for more information.</p>"
  )
  @as("BatchReferenceName")
  batchReferenceName: option<batchReferenceName>,
  @ocaml.doc("<p>The name of the link.</p>") @as("LinkName") linkName: linkName,
  @ocaml.doc("<p>Parent reference from which the object with the specified link name is
      detached.</p>")
  @as("ParentReference")
  parentReference: objectReference,
}
@ocaml.doc(
  "<p>Detaches the specified object from the specified index inside a <a>BatchRead</a> operation. For more information, see <a>DetachFromIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchDetachFromIndex = {
  @ocaml.doc("<p>A reference to the object being detached from the index.</p>")
  @as("TargetReference")
  targetReference: objectReference,
  @ocaml.doc("<p>A reference to the index object.</p>") @as("IndexReference")
  indexReference: objectReference,
}
@ocaml.doc("<p>Represents the output of a <a>DeleteObject</a> operation.</p>")
type batchDeleteObject = {
  @ocaml.doc("<p>The reference that identifies the object.</p>") @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc(
  "<p>Attaches the specified object to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>AttachToIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchAttachToIndex = {
  @ocaml.doc("<p>A reference to the object that you are attaching to the index.</p>")
  @as("TargetReference")
  targetReference: objectReference,
  @ocaml.doc("<p>A reference to the index that you are attaching the object to.</p>")
  @as("IndexReference")
  indexReference: objectReference,
}
@ocaml.doc(
  "<p>Attaches a policy object to a regular object inside a <a>BatchRead</a> operation. For more information, see <a>AttachPolicy</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchAttachPolicy = {
  @ocaml.doc("<p>The reference that identifies the object to which the policy will be
       attached.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
  @ocaml.doc("<p>The reference that is associated with the policy object.</p>")
  @as("PolicyReference")
  policyReference: objectReference,
}
@ocaml.doc("<p>Represents the output of an <a>AttachObject</a> operation.</p>")
type batchAttachObject = {
  @ocaml.doc("<p>The name of the link.</p>") @as("LinkName") linkName: linkName,
  @ocaml.doc("<p>The child object reference that is to be attached to the object.</p>")
  @as("ChildReference")
  childReference: objectReference,
  @ocaml.doc("<p>The parent object reference.</p>") @as("ParentReference")
  parentReference: objectReference,
}
@ocaml.doc("<p>Identifies the attribute name and value for a typed link.</p>")
type attributeNameAndValue = {
  @ocaml.doc("<p>The value for the typed link.</p>") @as("Value") value: typedAttributeValue,
  @ocaml.doc("<p>The attribute name of the typed link.</p>") @as("AttributeName")
  attributeName: attributeName,
}
type attributeKeyList = array<attributeKey>
@ocaml.doc("<p>The combination of an attribute key and an attribute value.</p>")
type attributeKeyAndValue = {
  @ocaml.doc("<p>The value of the attribute.</p>") @as("Value") value: typedAttributeValue,
  @ocaml.doc("<p>The key of the attribute.</p>") @as("Key") key: attributeKey,
}
@ocaml.doc("<p>Identifies the range of attributes that are used by a specified filter.</p>")
type typedLinkAttributeRange = {
  @ocaml.doc("<p>The range of attribute values that are being selected.</p>") @as("Range")
  range: typedAttributeValueRange,
  @ocaml.doc("<p>The unique name of the typed link attribute.</p>") @as("AttributeName")
  attributeName: option<attributeName>,
}
type ruleMap = Js.Dict.t<rule>
@ocaml.doc("<p>Used when a regular object exists in a <a>Directory</a> and you want to find
      all of the policies that are associated with that object and the parent to that
      object.</p>")
type policyToPath = {
  @ocaml.doc("<p>List of policy objects.</p>") @as("Policies")
  policies: option<policyAttachmentList>,
  @ocaml.doc("<p>The path that is referenced from the root.</p>") @as("Path")
  path: option<pathString>,
}
type pathToObjectIdentifiersList = array<pathToObjectIdentifiers>
@ocaml.doc("<p>Structure that contains attribute update information.</p>")
type objectAttributeUpdate = {
  @ocaml.doc("<p>The action to perform as part of the attribute update.</p>")
  @as("ObjectAttributeAction")
  objectAttributeAction: option<objectAttributeAction>,
  @ocaml.doc("<p>The key of the attribute being updated.</p>") @as("ObjectAttributeKey")
  objectAttributeKey: option<attributeKey>,
}
@ocaml.doc("<p>A range of attributes.</p>")
type objectAttributeRange = {
  @ocaml.doc("<p>The range of attribute values being selected.</p>") @as("Range")
  range: option<typedAttributeValueRange>,
  @ocaml.doc("<p>The key of the attribute that the attribute range covers.</p>") @as("AttributeKey")
  attributeKey: option<attributeKey>,
}
@ocaml.doc("<p>Structure that contains attribute update information.</p>")
type linkAttributeUpdate = {
  @ocaml.doc("<p>The action to perform as part of the attribute update.</p>") @as("AttributeAction")
  attributeAction: option<linkAttributeAction>,
  @ocaml.doc("<p>The key of the attribute being updated.</p>") @as("AttributeKey")
  attributeKey: option<attributeKey>,
}
@ocaml.doc("<p>Represents the output of a <a>ListObjectParents</a> response operation.</p>")
type batchListObjectParentsResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Returns a list of parent reference and LinkName Tuples.</p>") @as("ParentLinks")
  parentLinks: option<objectIdentifierAndLinkNameList>,
}
@ocaml.doc("<p>Represents the output of a <a>GetObjectInformation</a> response operation.</p>")
type batchGetObjectInformationResponse = {
  @ocaml.doc("<p>The <code>ObjectIdentifier</code> of the specified object.</p>")
  @as("ObjectIdentifier")
  objectIdentifier: option<objectIdentifier>,
  @ocaml.doc("<p>The facets attached to the specified object.</p>") @as("SchemaFacets")
  schemaFacets: option<schemaFacetList>,
}
@ocaml.doc(
  "<p>Creates an index object inside of a <a>BatchRead</a> operation. For more information, see <a>CreateIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchCreateIndex = {
  @ocaml.doc(
    "<p>The batch reference name. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html\">Transaction Support</a> for more information.</p>"
  )
  @as("BatchReferenceName")
  batchReferenceName: option<batchReferenceName>,
  @ocaml.doc("<p>The name of the link between the parent object and the index object.</p>")
  @as("LinkName")
  linkName: option<linkName>,
  @ocaml.doc("<p>A reference to the parent object that contains the index object.</p>")
  @as("ParentReference")
  parentReference: option<objectReference>,
  @ocaml.doc("<p>Indicates whether the attribute that is being indexed has unique values or
       not.</p>")
  @as("IsUnique")
  isUnique: bool_,
  @ocaml.doc("<p>Specifies the attributes that should be indexed on. Currently only a single attribute
       is supported.</p>")
  @as("OrderedIndexedAttributeList")
  orderedIndexedAttributeList: attributeKeyList,
}
type attributeNameAndValueList = array<attributeNameAndValue>
type attributeKeyAndValueList = array<attributeKeyAndValue>
@ocaml.doc("<p>Contains all the information that is used to uniquely identify a typed link. The
      parameters discussed in this topic are used to uniquely specify the typed link being operated
      on. The <a>AttachTypedLink</a> API returns a typed link specifier while the <a>DetachTypedLink</a> API accepts one as input. Similarly, the <a>ListIncomingTypedLinks</a> and <a>ListOutgoingTypedLinks</a> API
      operations provide typed link specifiers as output. You can also construct a typed link
      specifier from scratch.</p>")
type typedLinkSpecifier = {
  @ocaml.doc("<p>Identifies the attribute value to update.</p>") @as("IdentityAttributeValues")
  identityAttributeValues: attributeNameAndValueList,
  @ocaml.doc("<p>Identifies the target object that the typed link will attach to.</p>")
  @as("TargetObjectReference")
  targetObjectReference: objectReference,
  @ocaml.doc("<p>Identifies the source object that the typed link will attach to.</p>")
  @as("SourceObjectReference")
  sourceObjectReference: objectReference,
  @ocaml.doc("<p>Identifies the typed link facet that is associated with the typed link.</p>")
  @as("TypedLinkFacet")
  typedLinkFacet: typedLinkSchemaAndFacetName,
}
type typedLinkAttributeRangeList = array<typedLinkAttributeRange>
@ocaml.doc("<p>A typed link attribute definition.</p>")
type typedLinkAttributeDefinition = {
  @ocaml.doc("<p>The required behavior of the <code>TypedLinkAttributeDefinition</code>.</p>")
  @as("RequiredBehavior")
  requiredBehavior: requiredAttributeBehavior,
  @ocaml.doc("<p>Validation rules that are attached to the attribute definition.</p>") @as("Rules")
  rules: option<ruleMap>,
  @ocaml.doc("<p>Whether the attribute is mutable or not.</p>") @as("IsImmutable")
  isImmutable: option<bool_>,
  @ocaml.doc("<p>The default value of the attribute (if configured).</p>") @as("DefaultValue")
  defaultValue: option<typedAttributeValue>,
  @ocaml.doc("<p>The type of the attribute.</p>") @as("Type") type_: facetAttributeType,
  @ocaml.doc("<p>The unique name of the typed link attribute.</p>") @as("Name") name: attributeName,
}
type policyToPathList = array<policyToPath>
type objectAttributeUpdateList = array<objectAttributeUpdate>
type objectAttributeRangeList = array<objectAttributeRange>
type linkAttributeUpdateList = array<linkAttributeUpdate>
@ocaml.doc("<p>Represents an index and an attached object.</p>")
type indexAttachment = {
  @ocaml.doc(
    "<p>In response to <a>ListIndex</a>, the <code>ObjectIdentifier</code> of the object attached to the index. In response to <a>ListAttachedIndices</a>, the <code>ObjectIdentifier</code> of the index attached to the object. This field will always contain the <code>ObjectIdentifier</code> of the object on the opposite side of the attachment specified in the query.</p>"
  )
  @as("ObjectIdentifier")
  objectIdentifier: option<objectIdentifier>,
  @ocaml.doc("<p>The indexed attribute values.</p>") @as("IndexedAttributes")
  indexedAttributes: option<attributeKeyAndValueList>,
}
@ocaml.doc(
  "<p>A facet attribute definition. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>"
)
type facetAttributeDefinition = {
  @ocaml.doc("<p>Validation rules attached to the attribute definition.</p>") @as("Rules")
  rules: option<ruleMap>,
  @ocaml.doc("<p>Whether the attribute is mutable or not.</p>") @as("IsImmutable")
  isImmutable: option<bool_>,
  @ocaml.doc("<p>The default value of the attribute (if configured).</p>") @as("DefaultValue")
  defaultValue: option<typedAttributeValue>,
  @ocaml.doc("<p>The type of the attribute.</p>") @as("Type") type_: facetAttributeType,
}
@ocaml.doc("<p>Represents the output of a <a>ListObjectParentPaths</a> response operation.</p>")
type batchListObjectParentPathsResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the
       directory.</p>")
  @as("PathToObjectIdentifiersList")
  pathToObjectIdentifiersList: option<pathToObjectIdentifiersList>,
}
@ocaml.doc("<p>Represents the output of a <a>ListObjectAttributes</a> response operation.</p>")
type batchListObjectAttributesResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The attributes map that is associated with the object. <code>AttributeArn</code> is the
      key; attribute value is the value.</p>")
  @as("Attributes")
  attributes: option<attributeKeyAndValueList>,
}
@ocaml.doc("<p>Represents the output of a <a>GetObjectAttributes</a> response operation.</p>")
type batchGetObjectAttributesResponse = {
  @ocaml.doc("<p>The attribute values that are associated with an object.</p>") @as("Attributes")
  attributes: option<attributeKeyAndValueList>,
}
@ocaml.doc("<p>Represents the output of a <a>GetLinkAttributes</a> response operation.</p>")
type batchGetLinkAttributesResponse = {
  @ocaml.doc("<p>The attributes that are associated with the typed link.</p>") @as("Attributes")
  attributes: option<attributeKeyAndValueList>,
}
@ocaml.doc("<p>Represents the output of a <a>CreateObject</a> operation.</p>")
type batchCreateObject = {
  @ocaml.doc(
    "<p>The batch reference name. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html\">Transaction Support</a> for more information.</p>"
  )
  @as("BatchReferenceName")
  batchReferenceName: option<batchReferenceName>,
  @ocaml.doc("<p>The name of the link.</p>") @as("LinkName") linkName: option<linkName>,
  @ocaml.doc("<p>If specified, the parent reference to which this object will be attached.</p>")
  @as("ParentReference")
  parentReference: option<objectReference>,
  @ocaml.doc("<p>An attribute map, which contains an attribute ARN as the key and attribute value as
      the map value.</p>")
  @as("ObjectAttributeList")
  objectAttributeList: attributeKeyAndValueList,
  @ocaml.doc("<p>A list of <code>FacetArns</code> that will be associated with the object. For more
      information, see <a>arns</a>.</p>")
  @as("SchemaFacet")
  schemaFacet: schemaFacetList,
}
@ocaml.doc(
  "<p>Attaches a typed link to a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>AttachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchAttachTypedLink = {
  @ocaml.doc("<p>A set of attributes that are associated with the typed link.</p>")
  @as("Attributes")
  attributes: attributeNameAndValueList,
  @ocaml.doc("<p>Identifies the typed link facet that is associated with the typed link.</p>")
  @as("TypedLinkFacet")
  typedLinkFacet: typedLinkSchemaAndFacetName,
  @ocaml.doc("<p>Identifies the target object that the typed link will attach to.</p>")
  @as("TargetObjectReference")
  targetObjectReference: objectReference,
  @ocaml.doc("<p>Identifies the source object that the typed link will attach to.</p>")
  @as("SourceObjectReference")
  sourceObjectReference: objectReference,
}
@ocaml.doc("<p>Represents the output of a batch add facet to object operation.</p>")
type batchAddFacetToObject = {
  @ocaml.doc("<p>A reference to the object being mutated.</p>") @as("ObjectReference")
  objectReference: objectReference,
  @ocaml.doc("<p>The attributes to set on the object.</p>") @as("ObjectAttributeList")
  objectAttributeList: attributeKeyAndValueList,
  @ocaml.doc("<p>Represents the facet being added to the object.</p>") @as("SchemaFacet")
  schemaFacet: schemaFacet,
}
type typedLinkSpecifierList = array<typedLinkSpecifier>
@ocaml.doc("<p>A typed link facet attribute update.</p>")
type typedLinkFacetAttributeUpdate = {
  @ocaml.doc("<p>The action to perform when updating the attribute.</p>") @as("Action")
  action: updateActionType,
  @ocaml.doc("<p>The attribute to update.</p>") @as("Attribute")
  attribute: typedLinkAttributeDefinition,
}
type typedLinkAttributeDefinitionList = array<typedLinkAttributeDefinition>
type indexAttachmentList = array<indexAttachment>
@ocaml.doc("<p>An attribute that is associated with the <a>Facet</a>.</p>")
type facetAttribute = {
  @ocaml.doc("<p>The required behavior of the <code>FacetAttribute</code>.</p>")
  @as("RequiredBehavior")
  requiredBehavior: option<requiredAttributeBehavior>,
  @ocaml.doc(
    "<p>An attribute reference that is associated with the attribute. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>"
  )
  @as("AttributeReference")
  attributeReference: option<facetAttributeReference>,
  @ocaml.doc("<p>A facet attribute consists of either a definition or a reference. This structure
      contains the attribute definition. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html\">Attribute References</a> for more information.</p>")
  @as("AttributeDefinition")
  attributeDefinition: option<facetAttributeDefinition>,
  @ocaml.doc("<p>The name of the facet attribute.</p>") @as("Name") name: attributeName,
}
@ocaml.doc("<p>Represents the output of a <code>BatchUpdate</code> operation. </p>")
type batchUpdateObjectAttributes = {
  @ocaml.doc("<p>Attributes update structure.</p>") @as("AttributeUpdates")
  attributeUpdates: objectAttributeUpdateList,
  @ocaml.doc("<p>Reference that identifies the object.</p>") @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc(
  "<p>Updates a given typed link’s attributes inside a <a>BatchRead</a> operation. Attributes to be updated must not contribute to the typed link’s identity, as defined by its <code>IdentityAttributeOrder</code>. For more information, see <a>UpdateLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchUpdateLinkAttributes = {
  @ocaml.doc("<p>The attributes update structure.</p>") @as("AttributeUpdates")
  attributeUpdates: linkAttributeUpdateList,
  @ocaml.doc("<p>Allows a typed link specifier to be accepted as input.</p>")
  @as("TypedLinkSpecifier")
  typedLinkSpecifier: typedLinkSpecifier,
}
@ocaml.doc("<p>Represents the output of a <a>LookupPolicy</a> response operation.</p>")
type batchLookupPolicyResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and
       <code>PolicyType</code>. For more
       information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>")
  @as("PolicyToPathList")
  policyToPathList: option<policyToPathList>,
}
@ocaml.doc(
  "<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListOutgoingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchListOutgoingTypedLinks = {
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Filters are interpreted in the order of the attributes defined on the typed link facet,
       not the order they are supplied to any API calls.</p>")
  @as("FilterTypedLink")
  filterTypedLink: option<typedLinkSchemaAndFacetName>,
  @ocaml.doc("<p>Provides range filters for multiple attributes. When providing ranges to typed link
       selection, any inexact ranges must be specified at the end. Any attributes that do not have a
       range specified are presumed to match the entire range.</p>")
  @as("FilterAttributeRanges")
  filterAttributeRanges: option<typedLinkAttributeRangeList>,
  @ocaml.doc("<p>The reference that identifies the object whose attributes will be listed.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc(
  "<p>Lists objects attached to the specified index inside a <a>BatchRead</a> operation. For more information, see <a>ListIndex</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchListIndex = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The reference to the index to list.</p>") @as("IndexReference")
  indexReference: objectReference,
  @ocaml.doc("<p>Specifies the ranges of indexed values that you want to query.</p>")
  @as("RangesOnIndexedValues")
  rangesOnIndexedValues: option<objectAttributeRangeList>,
}
@ocaml.doc(
  "<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a> information for an object inside a <a>BatchRead</a> operation. For more information, see <a>ListIncomingTypedLinks</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchListIncomingTypedLinks = {
  @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
  maxResults: option<numberResults>,
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Filters are interpreted in the order of the attributes on the typed link facet, not the
       order in which they are supplied to any API calls.</p>")
  @as("FilterTypedLink")
  filterTypedLink: option<typedLinkSchemaAndFacetName>,
  @ocaml.doc("<p>Provides range filters for multiple attributes. When providing ranges to typed link
       selection, any inexact ranges must be specified at the end. Any attributes that do not have a
       range specified are presumed to match the entire range.</p>")
  @as("FilterAttributeRanges")
  filterAttributeRanges: option<typedLinkAttributeRangeList>,
  @ocaml.doc("<p>The reference that identifies the object whose attributes will be listed.</p>")
  @as("ObjectReference")
  objectReference: objectReference,
}
@ocaml.doc(
  "<p>Retrieves attributes that are associated with a typed link inside a <a>BatchRead</a> operation. For more information, see <a>GetLinkAttributes</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchGetLinkAttributes = {
  @ocaml.doc("<p>A list of attribute names whose values will be retrieved.</p>")
  @as("AttributeNames")
  attributeNames: attributeNameList,
  @ocaml.doc("<p>Allows a typed link specifier to be accepted as input.</p>")
  @as("TypedLinkSpecifier")
  typedLinkSpecifier: typedLinkSpecifier,
}
@ocaml.doc(
  "<p>Detaches a typed link from a specified source and target object inside a <a>BatchRead</a> operation. For more information, see <a>DetachTypedLink</a> and <a>BatchReadRequest$Operations</a>.</p>"
)
type batchDetachTypedLink = {
  @ocaml.doc("<p>Used to accept a typed link specifier as input.</p>") @as("TypedLinkSpecifier")
  typedLinkSpecifier: typedLinkSpecifier,
}
@ocaml.doc("<p>Represents the output of a <a>AttachTypedLink</a> response operation.</p>")
type batchAttachTypedLinkResponse = {
  @ocaml.doc("<p>Returns a typed link specifier as output.</p>") @as("TypedLinkSpecifier")
  typedLinkSpecifier: option<typedLinkSpecifier>,
}
type typedLinkFacetAttributeUpdateList = array<typedLinkFacetAttributeUpdate>
@ocaml.doc("<p>Defines the typed links structure and its attributes. To create a typed link facet, use
      the <a>CreateTypedLinkFacet</a> API.</p>")
type typedLinkFacet = {
  @ocaml.doc(
    "<p>The set of attributes that distinguish links made from this facet from each other, in the order of significance. Listing typed links can filter on the values of these attributes. See <a>ListOutgoingTypedLinks</a> and <a>ListIncomingTypedLinks</a> for details.</p>"
  )
  @as("IdentityAttributeOrder")
  identityAttributeOrder: attributeNameList,
  @ocaml.doc(
    "<p>A set of key-value pairs associated with the typed link. Typed link attributes are used when you have data values that are related to the link itself, and not to one of the two objects being linked. Identity attributes also serve to distinguish the link from others of the same type between the same objects.</p>"
  )
  @as("Attributes")
  attributes: typedLinkAttributeDefinitionList,
  @ocaml.doc("<p>The unique name of the typed link facet.</p>") @as("Name") name: typedLinkName,
}
@ocaml.doc("<p>A structure that contains information used to update an attribute.</p>")
type facetAttributeUpdate = {
  @ocaml.doc("<p>The action to perform when updating the attribute.</p>") @as("Action")
  action: option<updateActionType>,
  @ocaml.doc("<p>The attribute to update.</p>") @as("Attribute") attribute: option<facetAttribute>,
}
type facetAttributeList = array<facetAttribute>
@ocaml.doc("<p>Represents the output of a <code>BatchWrite</code> response operation.</p>")
type batchWriteOperationResponse = {
  @ocaml.doc("<p>Represents the output of a <code>BatchWrite</code> response operation.</p>")
  @as("UpdateLinkAttributes")
  updateLinkAttributes: option<batchUpdateLinkAttributesResponse>,
  @ocaml.doc(
    "<p>Detaches a typed link from a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"
  )
  @as("DetachTypedLink")
  detachTypedLink: option<batchDetachTypedLinkResponse>,
  @ocaml.doc(
    "<p>Attaches a typed link to a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"
  )
  @as("AttachTypedLink")
  attachTypedLink: option<batchAttachTypedLinkResponse>,
  @ocaml.doc("<p>Detaches the specified object from the specified index.</p>")
  @as("DetachFromIndex")
  detachFromIndex: option<batchDetachFromIndexResponse>,
  @ocaml.doc("<p>Attaches the specified object to the specified index.</p>") @as("AttachToIndex")
  attachToIndex: option<batchAttachToIndexResponse>,
  @ocaml.doc(
    "<p>Creates an index object. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm\">Indexing and search</a> for more information.</p>"
  )
  @as("CreateIndex")
  createIndex: option<batchCreateIndexResponse>,
  @ocaml.doc("<p>Detaches a policy from a <a>Directory</a>.</p>") @as("DetachPolicy")
  detachPolicy: option<batchDetachPolicyResponse>,
  @ocaml.doc("<p>Attaches a policy object to a regular object. An object can have a limited number of attached
       policies.</p>")
  @as("AttachPolicy")
  attachPolicy: option<batchAttachPolicyResponse>,
  @ocaml.doc("<p>The result of a batch remove facet from object operation.</p>")
  @as("RemoveFacetFromObject")
  removeFacetFromObject: option<batchRemoveFacetFromObjectResponse>,
  @ocaml.doc("<p>The result of an add facet to object batch operation.</p>") @as("AddFacetToObject")
  addFacetToObject: option<batchAddFacetToObjectResponse>,
  @ocaml.doc("<p>Deletes an object in a <a>Directory</a>.</p>") @as("DeleteObject")
  deleteObject: option<batchDeleteObjectResponse>,
  @ocaml.doc("<p>Updates a given object’s attributes.</p>") @as("UpdateObjectAttributes")
  updateObjectAttributes: option<batchUpdateObjectAttributesResponse>,
  @ocaml.doc("<p>Detaches an object from a <a>Directory</a>.</p>") @as("DetachObject")
  detachObject: option<batchDetachObjectResponse>,
  @ocaml.doc("<p>Attaches an object to a <a>Directory</a>.</p>") @as("AttachObject")
  attachObject: option<batchAttachObjectResponse>,
  @ocaml.doc("<p>Creates an object in a <a>Directory</a>.</p>") @as("CreateObject")
  createObject: option<batchCreateObjectResponse>,
}
@ocaml.doc("<p>Represents the output of a <code>BatchWrite</code> operation. </p>")
type batchWriteOperation = {
  @ocaml.doc("<p>Updates a given object's attributes.</p>") @as("UpdateLinkAttributes")
  updateLinkAttributes: option<batchUpdateLinkAttributes>,
  @ocaml.doc(
    "<p>Detaches a typed link from a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"
  )
  @as("DetachTypedLink")
  detachTypedLink: option<batchDetachTypedLink>,
  @ocaml.doc(
    "<p>Attaches a typed link to a specified source and target object. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"
  )
  @as("AttachTypedLink")
  attachTypedLink: option<batchAttachTypedLink>,
  @ocaml.doc("<p>Detaches the specified object from the specified index.</p>")
  @as("DetachFromIndex")
  detachFromIndex: option<batchDetachFromIndex>,
  @ocaml.doc("<p>Attaches the specified object to the specified index.</p>") @as("AttachToIndex")
  attachToIndex: option<batchAttachToIndex>,
  @ocaml.doc(
    "<p>Creates an index object. See <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.htm\">Indexing and search</a> for more information.</p>"
  )
  @as("CreateIndex")
  createIndex: option<batchCreateIndex>,
  @ocaml.doc("<p>Detaches a policy from a <a>Directory</a>.</p>") @as("DetachPolicy")
  detachPolicy: option<batchDetachPolicy>,
  @ocaml.doc("<p>Attaches a policy object to a regular object. An object can have a limited number of attached
       policies.</p>")
  @as("AttachPolicy")
  attachPolicy: option<batchAttachPolicy>,
  @ocaml.doc("<p>A batch operation that removes a facet from an object.</p>")
  @as("RemoveFacetFromObject")
  removeFacetFromObject: option<batchRemoveFacetFromObject>,
  @ocaml.doc("<p>A batch operation that adds a facet to an object.</p>") @as("AddFacetToObject")
  addFacetToObject: option<batchAddFacetToObject>,
  @ocaml.doc("<p>Deletes an object in a <a>Directory</a>.</p>") @as("DeleteObject")
  deleteObject: option<batchDeleteObject>,
  @ocaml.doc("<p>Updates a given object's attributes.</p>") @as("UpdateObjectAttributes")
  updateObjectAttributes: option<batchUpdateObjectAttributes>,
  @ocaml.doc("<p>Detaches an object from a <a>Directory</a>.</p>") @as("DetachObject")
  detachObject: option<batchDetachObject>,
  @ocaml.doc("<p>Attaches an object to a <a>Directory</a>.</p>") @as("AttachObject")
  attachObject: option<batchAttachObject>,
  @ocaml.doc("<p>Creates an object.</p>") @as("CreateObject")
  createObject: option<batchCreateObject>,
}
@ocaml.doc("<p>Represents the output of a <code>BatchRead</code> operation.</p>")
type batchReadOperation = {
  @ocaml.doc("<p>Retrieves attributes that are associated with a typed link.</p>")
  @as("GetLinkAttributes")
  getLinkAttributes: option<batchGetLinkAttributes>,
  @ocaml.doc("<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
       information for an object. It also supports filtering by typed link facet and identity
       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>")
  @as("ListIncomingTypedLinks")
  listIncomingTypedLinks: option<batchListIncomingTypedLinks>,
  @ocaml.doc("<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
       information for an object. It also supports filtering by typed link facet and identity
       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>")
  @as("ListOutgoingTypedLinks")
  listOutgoingTypedLinks: option<batchListOutgoingTypedLinks>,
  @ocaml.doc("<p>Lists objects attached to the specified index.</p>") @as("ListIndex")
  listIndex: option<batchListIndex>,
  @ocaml.doc("<p>Lists all policies from the root of the <a>Directory</a> to the object
       specified. If there are no policies present, an empty list is returned. If policies are
       present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
       for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
       <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
       information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>")
  @as("LookupPolicy")
  lookupPolicy: option<batchLookupPolicy>,
  @ocaml.doc(
    "<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>"
  )
  @as("ListPolicyAttachments")
  listPolicyAttachments: option<batchListPolicyAttachments>,
  @ocaml.doc("<p>Returns policies attached to an object in pagination fashion.</p>")
  @as("ListObjectPolicies")
  listObjectPolicies: option<batchListObjectPolicies>,
  @ocaml.doc("<p>Lists parent objects that are associated with a given object in pagination
      fashion.</p>")
  @as("ListObjectParents")
  listObjectParents: option<batchListObjectParents>,
  @ocaml.doc("<p>Retrieves attributes within a facet that are associated with an object.</p>")
  @as("GetObjectAttributes")
  getObjectAttributes: option<batchGetObjectAttributes>,
  @ocaml.doc("<p>Retrieves metadata about an object.</p>") @as("GetObjectInformation")
  getObjectInformation: option<batchGetObjectInformation>,
  @ocaml.doc("<p>Retrieves all available parent paths for any object type such as node, leaf node,
       policy node, and index node objects. For more information about objects, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html\">Directory Structure</a>.</p>")
  @as("ListObjectParentPaths")
  listObjectParentPaths: option<batchListObjectParentPaths>,
  @ocaml.doc("<p>Lists indices attached to an object.</p>") @as("ListAttachedIndices")
  listAttachedIndices: option<batchListAttachedIndices>,
  @ocaml.doc("<p>Returns a paginated list of child objects that are associated with a given
      object.</p>")
  @as("ListObjectChildren")
  listObjectChildren: option<batchListObjectChildren>,
  @ocaml.doc("<p>Lists all attributes that are associated with an object.</p>")
  @as("ListObjectAttributes")
  listObjectAttributes: option<batchListObjectAttributes>,
}
@ocaml.doc("<p>Represents the output of a <a>ListOutgoingTypedLinks</a> response operation.</p>")
type batchListOutgoingTypedLinksResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Returns a typed link specifier as output.</p>") @as("TypedLinkSpecifiers")
  typedLinkSpecifiers: option<typedLinkSpecifierList>,
}
@ocaml.doc("<p>Represents the output of a <a>ListIndex</a> response operation.</p>")
type batchListIndexResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The objects and indexed values attached to the index.</p>") @as("IndexAttachments")
  indexAttachments: option<indexAttachmentList>,
}
@ocaml.doc("<p>Represents the output of a <a>ListIncomingTypedLinks</a> response operation.</p>")
type batchListIncomingTypedLinksResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>Returns one or more typed link specifiers as output.</p>") @as("LinkSpecifiers")
  linkSpecifiers: option<typedLinkSpecifierList>,
}
@ocaml.doc("<p>Represents the output of a <a>ListAttachedIndices</a> response operation.</p>")
type batchListAttachedIndicesResponse = {
  @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  @ocaml.doc("<p>The indices attached to the specified object.</p>") @as("IndexAttachments")
  indexAttachments: option<indexAttachmentList>,
}
type facetAttributeUpdateList = array<facetAttributeUpdate>
type batchWriteOperationResponseList = array<batchWriteOperationResponse>
type batchWriteOperationList = array<batchWriteOperation>
@ocaml.doc("<p>Represents the output of a <code>BatchRead</code> success response operation.</p>")
type batchReadSuccessfulResponse = {
  @ocaml.doc("<p>The list of parent objects to retrieve.</p>") @as("ListObjectParents")
  listObjectParents: option<batchListObjectParentsResponse>,
  @ocaml.doc("<p>The list of attributes to retrieve from the typed link.</p>")
  @as("GetLinkAttributes")
  getLinkAttributes: option<batchGetLinkAttributesResponse>,
  @ocaml.doc("<p>Returns a paginated list of all the incoming <a>TypedLinkSpecifier</a>
       information for an object. It also supports filtering by typed link facet and identity
       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>")
  @as("ListIncomingTypedLinks")
  listIncomingTypedLinks: option<batchListIncomingTypedLinksResponse>,
  @ocaml.doc("<p>Returns a paginated list of all the outgoing <a>TypedLinkSpecifier</a>
       information for an object. It also supports filtering by typed link facet and identity
       attributes. For more information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>")
  @as("ListOutgoingTypedLinks")
  listOutgoingTypedLinks: option<batchListOutgoingTypedLinksResponse>,
  @ocaml.doc("<p>Lists objects attached to the specified index.</p>") @as("ListIndex")
  listIndex: option<batchListIndexResponse>,
  @ocaml.doc("<p>Lists all policies from the root of the <a>Directory</a> to the object
       specified. If there are no policies present, an empty list is returned. If policies are
       present, and if some objects don't have the policies attached, it returns the <code>ObjectIdentifier</code>
       for such objects. If policies are present, it returns <code>ObjectIdentifier</code>, <code>policyId</code>, and
       <code>policyType</code>. Paths that don't lead to the root from the target object are ignored. For more
       information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>")
  @as("LookupPolicy")
  lookupPolicy: option<batchLookupPolicyResponse>,
  @ocaml.doc(
    "<p>Returns all of the <code>ObjectIdentifiers</code> to which a given policy is attached.</p>"
  )
  @as("ListPolicyAttachments")
  listPolicyAttachments: option<batchListPolicyAttachmentsResponse>,
  @ocaml.doc("<p>Returns policies attached to an object in pagination fashion.</p>")
  @as("ListObjectPolicies")
  listObjectPolicies: option<batchListObjectPoliciesResponse>,
  @ocaml.doc("<p>Retrieves all available parent paths for any object type such as node, leaf node,
       policy node, and index node objects. For more information about objects, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html\">Directory Structure</a>.</p>")
  @as("ListObjectParentPaths")
  listObjectParentPaths: option<batchListObjectParentPathsResponse>,
  @ocaml.doc("<p>Lists indices attached to an object.</p>") @as("ListAttachedIndices")
  listAttachedIndices: option<batchListAttachedIndicesResponse>,
  @ocaml.doc("<p>Retrieves attributes within a facet that are associated with an object.</p>")
  @as("GetObjectAttributes")
  getObjectAttributes: option<batchGetObjectAttributesResponse>,
  @ocaml.doc("<p>Retrieves metadata about an object.</p>") @as("GetObjectInformation")
  getObjectInformation: option<batchGetObjectInformationResponse>,
  @ocaml.doc("<p>Returns a paginated list of child objects that are associated with a given
      object.</p>")
  @as("ListObjectChildren")
  listObjectChildren: option<batchListObjectChildrenResponse>,
  @ocaml.doc("<p>Lists all attributes that are associated with an object.</p>")
  @as("ListObjectAttributes")
  listObjectAttributes: option<batchListObjectAttributesResponse>,
}
type batchReadOperationList = array<batchReadOperation>
@ocaml.doc("<p>Represents the output of a <code>BatchRead</code> response operation.</p>")
type batchReadOperationResponse = {
  @ocaml.doc("<p>Identifies which operation in a batch has failed.</p>") @as("ExceptionResponse")
  exceptionResponse: option<batchReadException>,
  @ocaml.doc("<p>Identifies which operation in a batch has succeeded.</p>")
  @as("SuccessfulResponse")
  successfulResponse: option<batchReadSuccessfulResponse>,
}
type batchReadOperationResponseList = array<batchReadOperationResponse>
@ocaml.doc("<fullname>Amazon Cloud Directory</fullname>
         <p>Amazon Cloud Directory is a component of the AWS Directory Service that simplifies the
      development and management of cloud-scale web, mobile, and IoT applications. This guide
      describes the Cloud Directory operations that you can call programmatically and includes
      detailed information on data types and errors. For information about Cloud Directory features, see <a href=\"https://aws.amazon.com/directoryservice/\">AWS Directory
        Service</a> and the <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html\">Amazon Cloud Directory Developer Guide</a>.</p>")
module UpgradePublishedSchema = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Used for testing whether the Development schema provided is backwards compatible, or not, with the publish schema provided by the user to be upgraded. If schema compatibility fails, an exception would be thrown else the call would succeed. This parameter is optional and defaults to false.</p>"
    )
    @as("DryRun")
    dryRun: option<bool_>,
    @ocaml.doc(
      "<p>Identifies the minor version of the published schema that will be created. This parameter is NOT optional.</p>"
    )
    @as("MinorVersion")
    minorVersion: version,
    @ocaml.doc("<p>The ARN of the published schema to be upgraded.</p>") @as("PublishedSchemaArn")
    publishedSchemaArn: arn,
    @ocaml.doc("<p>The ARN of the development schema with the changes used for the upgrade.</p>")
    @as("DevelopmentSchemaArn")
    developmentSchemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the upgraded schema that is returned as part of the response.</p>")
    @as("UpgradedSchemaArn")
    upgradedSchemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "UpgradePublishedSchemaCommand"
  let make = (~minorVersion, ~publishedSchemaArn, ~developmentSchemaArn, ~dryRun=?, ()) =>
    new({
      dryRun: dryRun,
      minorVersion: minorVersion,
      publishedSchemaArn: publishedSchemaArn,
      developmentSchemaArn: developmentSchemaArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpgradeAppliedSchema = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Used for testing whether the major version schemas are backward compatible or not. If schema compatibility fails, an exception would be thrown else the call would succeed but no changes will be saved. This parameter is optional.</p>"
    )
    @as("DryRun")
    dryRun: option<bool_>,
    @ocaml.doc("<p>The ARN for the directory to which the upgraded schema will be applied.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
    @ocaml.doc("<p>The revision of the published schema to upgrade the directory to.</p>")
    @as("PublishedSchemaArn")
    publishedSchemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the directory that is returned as part of the response.</p>")
    @as("DirectoryArn")
    directoryArn: option<arn>,
    @ocaml.doc("<p>The ARN of the upgraded schema that is returned as part of the response.</p>")
    @as("UpgradedSchemaArn")
    upgradedSchemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "UpgradeAppliedSchemaCommand"
  let make = (~directoryArn, ~publishedSchemaArn, ~dryRun=?, ()) =>
    new({dryRun: dryRun, directoryArn: directoryArn, publishedSchemaArn: publishedSchemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the schema.</p>") @as("Name") name: schemaName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the development schema. For more information, see
        <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The ARN that is associated with the updated schema. For more information, see <a>arns</a>.</p>"
    )
    @as("SchemaArn")
    schemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "UpdateSchemaCommand"
  let make = (~name, ~schemaArn, ()) => new({name: name, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutSchemaFromJson = {
  type t
  type request = {
    @ocaml.doc("<p>The replacement JSON schema.</p>") @as("Document") document: schemaJsonDocument,
    @ocaml.doc("<p>The ARN of the schema to update.</p>") @as("SchemaArn") schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the schema to update.</p>") @as("Arn") arn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "PutSchemaFromJsonCommand"
  let make = (~document, ~schemaArn, ()) => new({document: document, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PublishSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The new name under which the schema will be published. If this is not provided, the
      development schema is considered.</p>")
    @as("Name")
    name: option<schemaName>,
    @ocaml.doc(
      "<p>The minor version under which the schema will be published. This parameter is recommended. Schemas have both a major and minor version associated with them.</p>"
    )
    @as("MinorVersion")
    minorVersion: option<version>,
    @ocaml.doc(
      "<p>The major version under which the schema will be published. Schemas have both a major and minor version associated with them.</p>"
    )
    @as("Version")
    version: version,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the development schema. For
      more information, see <a>arns</a>.</p>")
    @as("DevelopmentSchemaArn")
    developmentSchemaArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The ARN that is associated with the published schema. For more information, see <a>arns</a>.</p>"
    )
    @as("PublishedSchemaArn")
    publishedSchemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "PublishSchemaCommand"
  let make = (~version, ~developmentSchemaArn, ~name=?, ~minorVersion=?, ()) =>
    new({
      name: name,
      minorVersion: minorVersion,
      version: version,
      developmentSchemaArn: developmentSchemaArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSchemaAsJson = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the schema to retrieve.</p>") @as("SchemaArn") schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The JSON representation of the schema document.</p>") @as("Document")
    document: option<schemaJsonDocument>,
    @ocaml.doc("<p>The name of the retrieved schema.</p>") @as("Name") name: option<schemaName>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "GetSchemaAsJsonCommand"
  let make = (~schemaArn, ()) => new({schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAppliedSchemaVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the applied schema.</p>") @as("SchemaArn") schemaArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>Current applied schema ARN, including the minor version in use if one was provided.</p>"
    )
    @as("AppliedSchemaArn")
    appliedSchemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "GetAppliedSchemaVersionCommand"
  let make = (~schemaArn, ()) => new({schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the directory to enable.</p>") @as("DirectoryArn") directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the enabled directory.</p>") @as("DirectoryArn") directoryArn: arn,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "EnableDirectoryCommand"
  let make = (~directoryArn, ()) => new({directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the directory to disable.</p>") @as("DirectoryArn") directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the directory that has been disabled.</p>") @as("DirectoryArn")
    directoryArn: arn,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "DisableDirectoryCommand"
  let make = (~directoryArn, ()) => new({directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTypedLinkFacet = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the typed link facet.</p>") @as("Name") name: typedLinkName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "DeleteTypedLinkFacetCommand"
  let make = (~name, ~schemaArn, ()) => new({name: name, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the development schema. For more information, see
        <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The input ARN that is returned as part of the response. For more information, see
        <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "DeleteSchemaCommand"
  let make = (~schemaArn, ()) => new({schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFacet = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the facet to delete.</p>") @as("Name") name: facetName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
      For more information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "DeleteFacetCommand"
  let make = (~name, ~schemaArn, ()) => new({name: name, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the directory to delete.</p>") @as("DirectoryArn") directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the deleted directory.</p>") @as("DirectoryArn") directoryArn: arn,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "DeleteDirectoryCommand"
  let make = (~directoryArn, ()) => new({directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSchema = {
  type t
  type request = {
    @ocaml.doc("<p>The name that is associated with the schema. This is unique to each account and in each
      region.</p>")
    @as("Name")
    name: schemaName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "CreateSchemaCommand"
  let make = (~name, ()) => new({name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the published schema that will be copied into the
      data <a>Directory</a>. For more information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
    @ocaml.doc("<p>The name of the <a>Directory</a>. Should be unique per account, per
      region.</p>")
    @as("Name")
    name: directoryName,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the published schema in the <a>Directory</a>. Once a published
      schema is copied into the directory, it has its own ARN, which is referred to applied schema
      ARN. For more information, see <a>arns</a>.</p>")
    @as("AppliedSchemaArn")
    appliedSchemaArn: arn,
    @ocaml.doc("<p>The root object node of the created directory.</p>") @as("ObjectIdentifier")
    objectIdentifier: objectIdentifier,
    @ocaml.doc("<p>The name of the <a>Directory</a>.</p>") @as("Name") name: directoryName,
    @ocaml.doc("<p>The ARN that is associated with the <a>Directory</a>. For more information,
      see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: directoryArn,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "CreateDirectoryCommand"
  let make = (~schemaArn, ~name, ()) => new({schemaArn: schemaArn, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ApplySchema = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      into which the schema is copied. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
    @ocaml.doc("<p>Published schema Amazon Resource Name (ARN) that needs to be copied. For more
      information, see <a>arns</a>.</p>")
    @as("PublishedSchemaArn")
    publishedSchemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The ARN that is associated with the <a>Directory</a>. For more information,
      see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: option<arn>,
    @ocaml.doc("<p>The applied schema ARN that is associated with the copied schema in the <a>Directory</a>. You can use this ARN to describe the schema information applied on
      this directory. For more information, see <a>arns</a>.</p>")
    @as("AppliedSchemaArn")
    appliedSchemaArn: option<arn>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "ApplySchemaCommand"
  let make = (~directoryArn, ~publishedSchemaArn, ()) =>
    new({directoryArn: directoryArn, publishedSchemaArn: publishedSchemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>Keys of the tag that need to be removed from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
      directories.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RemoveFacetFromObject = {
  type t
  type request = {
    @ocaml.doc("<p>A reference to the object to remove the facet from.</p>") @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The facet to remove. See <a>SchemaFacet</a> for details.</p>") @as("SchemaFacet")
    schemaFacet: schemaFacet,
    @ocaml.doc("<p>The ARN of the directory in which the object resides.</p>") @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "RemoveFacetFromObjectCommand"
  let make = (~objectReference, ~schemaFacet, ~directoryArn, ()) =>
    new({objectReference: objectReference, schemaFacet: schemaFacet, directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTypedLinkFacetNames = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The names of typed link facets that exist within the schema.</p>")
    @as("FacetNames")
    facetNames: option<typedLinkNameList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListTypedLinkFacetNamesCommand"
  let make = (~schemaArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPublishedSchemaArns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The response for <code>ListPublishedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>"
    )
    @as("SchemaArn")
    schemaArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARNs of published schemas.</p>") @as("SchemaArns") schemaArns: option<arns>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListPublishedSchemaArnsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~schemaArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPolicyAttachments = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the manner and timing in which the successful write or update of an object
      is reflected in a subsequent read operation of that same object.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The reference that identifies the policy object.</p>") @as("PolicyReference")
    policyReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where objects reside. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>ObjectIdentifiers</code> to which the policy is attached.</p>")
    @as("ObjectIdentifiers")
    objectIdentifiers: option<objectIdentifierList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListPolicyAttachmentsCommand"
  let make = (
    ~policyReference,
    ~directoryArn,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      policyReference: policyReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjectPolicies = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the manner and timing in which the successful write or update of an object
      is reflected in a subsequent read operation of that same object.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Reference that identifies the object for which policies will be listed.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where objects reside. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of policy <code>ObjectIdentifiers</code>, that are attached to the
      object.</p>")
    @as("AttachedPolicyIds")
    attachedPolicyIds: option<objectIdentifierList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListObjectPoliciesCommand"
  let make = (
    ~objectReference,
    ~directoryArn,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjectChildren = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the manner and timing in which the successful write or update of an object
      is reflected in a subsequent read operation of that same object.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The reference that identifies the object for which child objects are being
      listed.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where the object resides. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Children structure, which is a map with key as the <code>LinkName</code> and
        <code>ObjectIdentifier</code> as the value.</p>")
    @as("Children")
    children: option<linkNameToObjectIdentifierMap>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListObjectChildrenCommand"
  let make = (
    ~objectReference,
    ~directoryArn,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListManagedSchemaArns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The response for ListManagedSchemaArns. When this parameter is used, all minor version ARNs for a major version are listed.</p>"
    )
    @as("SchemaArn")
    schemaArn: option<arn>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARNs for all AWS managed schemas.</p>") @as("SchemaArns")
    schemaArns: option<arns>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListManagedSchemaArnsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~schemaArn=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFacetNames = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) to retrieve facet names from.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The names of facets that exist within the schema.</p>") @as("FacetNames")
    facetNames: option<facetNameList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListFacetNamesCommand"
  let make = (~schemaArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevelopmentSchemaArns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARNs of retrieved development schemas.</p>") @as("SchemaArns")
    schemaArns: option<arns>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListDevelopmentSchemaArnsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAppliedSchemaArns = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The response for <code>ListAppliedSchemaArns</code> when this parameter is used will list all minor version ARNs for a major version.</p>"
    )
    @as("SchemaArn")
    schemaArn: option<arn>,
    @ocaml.doc("<p>The ARN of the directory you are listing.</p>") @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARNs of schemas that are applied to the directory.</p>") @as("SchemaArns")
    schemaArns: option<arns>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListAppliedSchemaArnsCommand"
  let make = (~directoryArn, ~maxResults=?, ~nextToken=?, ~schemaArn=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      schemaArn: schemaArn,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTypedLinkFacetInformation = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the typed link facet.</p>") @as("Name") name: typedLinkName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
      links considers the order that the attributes are defined on the typed link facet. When
      providing ranges to typed link selection, any inexact ranges must be specified at the end. Any
      attributes that do not have a range specified are presumed to match the entire range. Filters
      are interpreted in the order of the attributes on the typed link facet, not the order in which
      they are supplied to any API calls. For more information about identity attributes, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>")
    @as("IdentityAttributeOrder")
    identityAttributeOrder: option<attributeNameList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "GetTypedLinkFacetInformationCommand"
  let make = (~name, ~schemaArn, ()) => new({name: name, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFacet = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the facet to retrieve.</p>") @as("Name") name: facetName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
      For more information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The <a>Facet</a> structure that is associated with the facet.</p>") @as("Facet")
    facet: option<facet>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "GetFacetCommand"
  let make = (~name, ~schemaArn, ()) => new({name: name, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDirectory = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the directory.</p>") @as("DirectoryArn") directoryArn: directoryArn,
  }
  type response = {
    @ocaml.doc("<p>Metadata about the directory.</p>") @as("Directory") directory: directory,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "GetDirectoryCommand"
  let make = (~directoryArn, ()) => new({directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>Reference that identifies the object whose policy object will be detached.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>Reference that identifies the policy object.</p>") @as("PolicyReference")
    policyReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where both objects reside. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "DetachPolicyCommand"
  let make = (~objectReference, ~policyReference, ~directoryArn, ()) =>
    new({
      objectReference: objectReference,
      policyReference: policyReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DetachObject = {
  type t
  type request = {
    @ocaml.doc("<p>The link name associated with the object that needs to be detached.</p>")
    @as("LinkName")
    linkName: linkName,
    @ocaml.doc("<p>The parent reference from which the object with the specified link name is
      detached.</p>")
    @as("ParentReference")
    parentReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where objects reside. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The <code>ObjectIdentifier</code> that was detached from the object.</p>")
    @as("DetachedObjectIdentifier")
    detachedObjectIdentifier: option<objectIdentifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "DetachObjectCommand"
  let make = (~linkName, ~parentReference, ~directoryArn, ()) =>
    new({linkName: linkName, parentReference: parentReference, directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachFromIndex = {
  type t
  type request = {
    @ocaml.doc("<p>A reference to the object being detached from the index.</p>")
    @as("TargetReference")
    targetReference: objectReference,
    @ocaml.doc("<p>A reference to the index object.</p>") @as("IndexReference")
    indexReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the directory the index and object exist
      in.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>ObjectIdentifier</code> of the object that was detached from the index.</p>"
    )
    @as("DetachedObjectIdentifier")
    detachedObjectIdentifier: option<objectIdentifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "DetachFromIndexCommand"
  let make = (~targetReference, ~indexReference, ~directoryArn, ()) =>
    new({
      targetReference: targetReference,
      indexReference: indexReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteObject = {
  type t
  type request = {
    @ocaml.doc("<p>A reference that identifies the object.</p>") @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where the object resides. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "DeleteObjectCommand"
  let make = (~objectReference, ~directoryArn, ()) =>
    new({objectReference: objectReference, directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachToIndex = {
  type t
  type request = {
    @ocaml.doc("<p>A reference to the object that you are attaching to the index.</p>")
    @as("TargetReference")
    targetReference: objectReference,
    @ocaml.doc("<p>A reference to the index that you are attaching the object to.</p>")
    @as("IndexReference")
    indexReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the directory where the object and index
      exist.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The <code>ObjectIdentifier</code> of the object that was attached to the index.</p>"
    )
    @as("AttachedObjectIdentifier")
    attachedObjectIdentifier: option<objectIdentifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "AttachToIndexCommand"
  let make = (~targetReference, ~indexReference, ~directoryArn, ()) =>
    new({
      targetReference: targetReference,
      indexReference: indexReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The reference that identifies the object to which the policy will be
      attached.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The reference that is associated with the policy object.</p>")
    @as("PolicyReference")
    policyReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where both objects reside. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "AttachPolicyCommand"
  let make = (~objectReference, ~policyReference, ~directoryArn, ()) =>
    new({
      objectReference: objectReference,
      policyReference: policyReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachObject = {
  type t
  type request = {
    @ocaml.doc("<p>The link name with which the child object is attached to the parent.</p>")
    @as("LinkName")
    linkName: linkName,
    @ocaml.doc("<p>The child object reference to be attached to the object.</p>")
    @as("ChildReference")
    childReference: objectReference,
    @ocaml.doc("<p>The parent object reference.</p>") @as("ParentReference")
    parentReference: objectReference,
    @ocaml.doc("<p>Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where both objects reside. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The attached <code>ObjectIdentifier</code>, which is the child
        <code>ObjectIdentifier</code>.</p>")
    @as("AttachedObjectIdentifier")
    attachedObjectIdentifier: option<objectIdentifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "AttachObjectCommand"
  let make = (~linkName, ~childReference, ~parentReference, ~directoryArn, ()) =>
    new({
      linkName: linkName,
      childReference: childReference,
      parentReference: parentReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag key-value pairs.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
      directories.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>MaxResults</code> parameter sets the maximum number of results returned in a
      single page. This is for future use and is not supported currently.</p>")
    @as("MaxResults")
    maxResults: option<tagsNumberResults>,
    @ocaml.doc("<p>The pagination token. This is for future use. Currently pagination is not supported for
      tagging.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource. Tagging is only supported for
      directories.</p>")
    @as("ResourceArn")
    resourceArn: arn,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of tag key value pairs that are associated with the response.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjectParents = {
  type t
  type request = {
    @ocaml.doc(
      "<p>When set to True, returns all <a>ListObjectParentsResponse$ParentLinks</a>. There could be multiple links between a parent-child pair.</p>"
    )
    @as("IncludeAllLinksToEachParent")
    includeAllLinksToEachParent: option<bool_>,
    @ocaml.doc("<p>Represents the manner and timing in which the successful write or update of an object
      is reflected in a subsequent read operation of that same object.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The reference that identifies the object for which parent objects are being
      listed.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where the object resides. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Returns a list of parent reference and LinkName Tuples.</p>") @as("ParentLinks")
    parentLinks: option<objectIdentifierAndLinkNameList>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The parent structure, which is a map with key as the <code>ObjectIdentifier</code> and
      LinkName as the value.</p>")
    @as("Parents")
    parents: option<objectIdentifierToLinkNameMap>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListObjectParentsCommand"
  let make = (
    ~objectReference,
    ~directoryArn,
    ~includeAllLinksToEachParent=?,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      includeAllLinksToEachParent: includeAllLinksToEachParent,
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDirectories = {
  type t
  type request = {
    @ocaml.doc("<p>The state of the directories in the list. Can be either Enabled, Disabled, or
      Deleted.</p>")
    state: option<directoryState>,
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Lists all directories that are associated with your account in pagination
      fashion.</p>")
    @as("Directories")
    directories: directoryList,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListDirectoriesCommand"
  let make = (~state=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({state: state, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectInformation = {
  type t
  type request = {
    @ocaml.doc("<p>The consistency level at which to retrieve the object information.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>A reference to the object.</p>") @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The ARN of the directory being retrieved.</p>") @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The <code>ObjectIdentifier</code> of the specified object.</p>")
    @as("ObjectIdentifier")
    objectIdentifier: option<objectIdentifier>,
    @ocaml.doc(
      "<p>The facets attached to the specified object. Although the response does not include minor version information, the most recently applied minor version of each Facet is in effect. See <a>GetAppliedSchemaVersion</a> for details.</p>"
    )
    @as("SchemaFacets")
    schemaFacets: option<schemaFacetList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "GetObjectInformationCommand"
  let make = (~objectReference, ~directoryArn, ~consistencyLevel=?, ()) =>
    new({
      consistencyLevel: consistencyLevel,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIndex = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the link between the parent object and the index object.</p>")
    @as("LinkName")
    linkName: option<linkName>,
    @ocaml.doc("<p>A reference to the parent object that contains the index object.</p>")
    @as("ParentReference")
    parentReference: option<objectReference>,
    @ocaml.doc("<p>Indicates whether the attribute that is being indexed has unique values or
      not.</p>")
    @as("IsUnique")
    isUnique: bool_,
    @ocaml.doc("<p>Specifies the attributes that should be indexed on. Currently only a single attribute
      is supported.</p>")
    @as("OrderedIndexedAttributeList")
    orderedIndexedAttributeList: attributeKeyList,
    @ocaml.doc("<p>The ARN of the directory where the index should be created.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The <code>ObjectIdentifier</code> of the index created by this operation.</p>")
    @as("ObjectIdentifier")
    objectIdentifier: option<objectIdentifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "CreateIndexCommand"
  let make = (
    ~isUnique,
    ~orderedIndexedAttributeList,
    ~directoryArn,
    ~linkName=?,
    ~parentReference=?,
    (),
  ) =>
    new({
      linkName: linkName,
      parentReference: parentReference,
      isUnique: isUnique,
      orderedIndexedAttributeList: orderedIndexedAttributeList,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjectParentPaths = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The reference that identifies the object whose parent paths are listed.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The ARN of the directory to which the parent path applies.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns the path to the <code>ObjectIdentifiers</code> that are associated with the
      directory.</p>")
    @as("PathToObjectIdentifiersList")
    pathToObjectIdentifiersList: option<pathToObjectIdentifiersList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListObjectParentPathsCommand"
  let make = (~objectReference, ~directoryArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListObjectAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>Used to filter the list of object attributes that are associated with a certain
      facet.</p>")
    @as("FacetFilter")
    facetFilter: option<schemaFacet>,
    @ocaml.doc("<p>Represents the manner and timing in which the successful write or update of an object
      is reflected in a subsequent read operation of that same object.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The reference that identifies the object whose attributes will be listed.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where the object resides. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Attributes map that is associated with the object. <code>AttributeArn</code> is the
      key, and attribute value is the value.</p>")
    @as("Attributes")
    attributes: option<attributeKeyAndValueList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListObjectAttributesCommand"
  let make = (
    ~objectReference,
    ~directoryArn,
    ~facetFilter=?,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      facetFilter: facetFilter,
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetObjectAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>List of attribute names whose values will be retrieved.</p>")
    @as("AttributeNames")
    attributeNames: attributeNameList,
    @ocaml.doc(
      "<p>Identifier for the facet whose attributes will be retrieved. See <a>SchemaFacet</a> for details.</p>"
    )
    @as("SchemaFacet")
    schemaFacet: schemaFacet,
    @ocaml.doc("<p>The consistency level at which to retrieve the attributes on an object.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>Reference that identifies the object whose attributes will be retrieved.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a> where the object resides.</p>"
    )
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The attributes that are associated with the object.</p>") @as("Attributes")
    attributes: option<attributeKeyAndValueList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "GetObjectAttributesCommand"
  let make = (
    ~attributeNames,
    ~schemaFacet,
    ~objectReference,
    ~directoryArn,
    ~consistencyLevel=?,
    (),
  ) =>
    new({
      attributeNames: attributeNames,
      schemaFacet: schemaFacet,
      consistencyLevel: consistencyLevel,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateObject = {
  type t
  type request = {
    @ocaml.doc("<p>The name of link that is used to attach this object to a parent.</p>")
    @as("LinkName")
    linkName: option<linkName>,
    @ocaml.doc("<p>If specified, the parent reference to which this object will be attached.</p>")
    @as("ParentReference")
    parentReference: option<objectReference>,
    @ocaml.doc("<p>The attribute map whose attribute ARN contains the key and attribute value as the map
      value.</p>")
    @as("ObjectAttributeList")
    objectAttributeList: option<attributeKeyAndValueList>,
    @ocaml.doc(
      "<p>A list of schema facets to be associated with the object. Do not provide minor version components. See <a>SchemaFacet</a> for details.</p>"
    )
    @as("SchemaFacets")
    schemaFacets: schemaFacetList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      in which the object will be created. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The identifier that is associated with the object.</p>") @as("ObjectIdentifier")
    objectIdentifier: option<objectIdentifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "CreateObjectCommand"
  let make = (
    ~schemaFacets,
    ~directoryArn,
    ~linkName=?,
    ~parentReference=?,
    ~objectAttributeList=?,
    (),
  ) =>
    new({
      linkName: linkName,
      parentReference: parentReference,
      objectAttributeList: objectAttributeList,
      schemaFacets: schemaFacets,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddFacetToObject = {
  type t
  type request = {
    @ocaml.doc("<p>A reference to the object you are adding the specified facet to.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>Attributes on the facet that you are adding to the object.</p>")
    @as("ObjectAttributeList")
    objectAttributeList: option<attributeKeyAndValueList>,
    @ocaml.doc(
      "<p>Identifiers for the facet that you are adding to the object. See <a>SchemaFacet</a> for details.</p>"
    )
    @as("SchemaFacet")
    schemaFacet: schemaFacet,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where the object resides. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "AddFacetToObjectCommand"
  let make = (~objectReference, ~schemaFacet, ~directoryArn, ~objectAttributeList=?, ()) =>
    new({
      objectReference: objectReference,
      objectAttributeList: objectAttributeList,
      schemaFacet: schemaFacet,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateObjectAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The attributes update structure.</p>") @as("AttributeUpdates")
    attributeUpdates: objectAttributeUpdateList,
    @ocaml.doc("<p>The reference that identifies the object.</p>") @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>
      where the object resides. For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The <code>ObjectIdentifier</code> of the updated object.</p>")
    @as("ObjectIdentifier")
    objectIdentifier: option<objectIdentifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "UpdateObjectAttributesCommand"
  let make = (~attributeUpdates, ~objectReference, ~directoryArn, ()) =>
    new({
      attributeUpdates: attributeUpdates,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLinkAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The attributes update structure.</p>") @as("AttributeUpdates")
    attributeUpdates: linkAttributeUpdateList,
    @ocaml.doc("<p>Allows a typed link specifier to be accepted as input.</p>")
    @as("TypedLinkSpecifier")
    typedLinkSpecifier: typedLinkSpecifier,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that is associated with the Directory where the updated typed link resides. For more information, see <a>arns</a> or <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"
    )
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "UpdateLinkAttributesCommand"
  let make = (~attributeUpdates, ~typedLinkSpecifier, ~directoryArn, ()) =>
    new({
      attributeUpdates: attributeUpdates,
      typedLinkSpecifier: typedLinkSpecifier,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module LookupPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to be retrieved in a single call. This is an approximate
      number.</p>")
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The token to request the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Reference that identifies the object whose policies will be looked up.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
      For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Provides list of path to policies. Policies contain <code>PolicyId</code>, <code>ObjectIdentifier</code>, and
      <code>PolicyType</code>. For more
      information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>")
    @as("PolicyToPathList")
    policyToPathList: option<policyToPathList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "LookupPolicyCommand"
  let make = (~objectReference, ~directoryArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLinkAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The consistency level at which to retrieve the attributes on a typed link.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>A list of attribute names whose values will be retrieved.</p>")
    @as("AttributeNames")
    attributeNames: attributeNameList,
    @ocaml.doc("<p>Allows a typed link specifier to be accepted as input.</p>")
    @as("TypedLinkSpecifier")
    typedLinkSpecifier: typedLinkSpecifier,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) that is associated with the Directory where the typed link resides. For more information, see <a>arns</a> or <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>"
    )
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The attributes that are associated with the typed link.</p>") @as("Attributes")
    attributes: option<attributeKeyAndValueList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "GetLinkAttributesCommand"
  let make = (~attributeNames, ~typedLinkSpecifier, ~directoryArn, ~consistencyLevel=?, ()) =>
    new({
      consistencyLevel: consistencyLevel,
      attributeNames: attributeNames,
      typedLinkSpecifier: typedLinkSpecifier,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachTypedLink = {
  type t
  type request = {
    @ocaml.doc("<p>Used to accept a typed link specifier as input.</p>") @as("TypedLinkSpecifier")
    typedLinkSpecifier: typedLinkSpecifier,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the directory where you want to detach the typed
      link.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "DetachTypedLinkCommand"
  let make = (~typedLinkSpecifier, ~directoryArn, ()) =>
    new({typedLinkSpecifier: typedLinkSpecifier, directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AttachTypedLink = {
  type t
  type request = {
    @ocaml.doc("<p>A set of attributes that are associated with the typed link.</p>")
    @as("Attributes")
    attributes: attributeNameAndValueList,
    @ocaml.doc("<p>Identifies the typed link facet that is associated with the typed link.</p>")
    @as("TypedLinkFacet")
    typedLinkFacet: typedLinkSchemaAndFacetName,
    @ocaml.doc("<p>Identifies the target object that the typed link will attach to.</p>")
    @as("TargetObjectReference")
    targetObjectReference: objectReference,
    @ocaml.doc("<p>Identifies the source object that the typed link will attach to.</p>")
    @as("SourceObjectReference")
    sourceObjectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the directory where you want to attach the typed
      link.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>Returns a typed link specifier as output.</p>") @as("TypedLinkSpecifier")
    typedLinkSpecifier: option<typedLinkSpecifier>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "AttachTypedLinkCommand"
  let make = (
    ~attributes,
    ~typedLinkFacet,
    ~targetObjectReference,
    ~sourceObjectReference,
    ~directoryArn,
    (),
  ) =>
    new({
      attributes: attributes,
      typedLinkFacet: typedLinkFacet,
      targetObjectReference: targetObjectReference,
      sourceObjectReference: sourceObjectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTypedLinkFacetAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The unique name of the typed link facet.</p>") @as("Name") name: typedLinkName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>An ordered set of attributes associate with the typed link.</p>")
    @as("Attributes")
    attributes: option<typedLinkAttributeDefinitionList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListTypedLinkFacetAttributesCommand"
  let make = (~name, ~schemaArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOutgoingTypedLinks = {
  type t
  type request = {
    @ocaml.doc("<p>The consistency level to execute the request at.</p>") @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Filters are interpreted in the order of the attributes defined on the typed link facet,
      not the order they are supplied to any API calls.</p>")
    @as("FilterTypedLink")
    filterTypedLink: option<typedLinkSchemaAndFacetName>,
    @ocaml.doc("<p>Provides range filters for multiple attributes. When providing ranges to typed link
      selection, any inexact ranges must be specified at the end. Any attributes that do not have a
      range specified are presumed to match the entire range.</p>")
    @as("FilterAttributeRanges")
    filterAttributeRanges: option<typedLinkAttributeRangeList>,
    @ocaml.doc("<p>A reference that identifies the object whose attributes will be listed.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
      links.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns a typed link specifier as output.</p>") @as("TypedLinkSpecifiers")
    typedLinkSpecifiers: option<typedLinkSpecifierList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListOutgoingTypedLinksCommand"
  let make = (
    ~objectReference,
    ~directoryArn,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    ~filterTypedLink=?,
    ~filterAttributeRanges=?,
    (),
  ) =>
    new({
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      filterTypedLink: filterTypedLink,
      filterAttributeRanges: filterAttributeRanges,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIndex = {
  type t
  type request = {
    @ocaml.doc("<p>The consistency level to execute the request at.</p>") @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The maximum number of objects in a single page to retrieve from the index during a request. For more information, see <a href=\"http://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html\">Amazon Cloud Directory Limits</a>.</p>"
    )
    @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The reference to the index to list.</p>") @as("IndexReference")
    indexReference: objectReference,
    @ocaml.doc("<p>Specifies the ranges of indexed values that you want to query.</p>")
    @as("RangesOnIndexedValues")
    rangesOnIndexedValues: option<objectAttributeRangeList>,
    @ocaml.doc("<p>The ARN of the directory that the index exists in.</p>") @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The objects and indexed values attached to the index.</p>")
    @as("IndexAttachments")
    indexAttachments: option<indexAttachmentList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "ListIndexCommand"
  let make = (
    ~indexReference,
    ~directoryArn,
    ~consistencyLevel=?,
    ~nextToken=?,
    ~maxResults=?,
    ~rangesOnIndexedValues=?,
    (),
  ) =>
    new({
      consistencyLevel: consistencyLevel,
      nextToken: nextToken,
      maxResults: maxResults,
      indexReference: indexReference,
      rangesOnIndexedValues: rangesOnIndexedValues,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIncomingTypedLinks = {
  type t
  type request = {
    @ocaml.doc("<p>The consistency level to execute the request at.</p>") @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Filters are interpreted in the order of the attributes on the typed link facet, not the
      order in which they are supplied to any API calls.</p>")
    @as("FilterTypedLink")
    filterTypedLink: option<typedLinkSchemaAndFacetName>,
    @ocaml.doc("<p>Provides range filters for multiple attributes. When providing ranges to typed link
      selection, any inexact ranges must be specified at the end. Any attributes that do not have a
      range specified are presumed to match the entire range.</p>")
    @as("FilterAttributeRanges")
    filterAttributeRanges: option<typedLinkAttributeRangeList>,
    @ocaml.doc("<p>Reference that identifies the object whose attributes will be listed.</p>")
    @as("ObjectReference")
    objectReference: objectReference,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the directory where you want to list the typed
      links.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>Returns one or more typed link specifiers as output.</p>") @as("LinkSpecifiers")
    linkSpecifiers: option<typedLinkSpecifierList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListIncomingTypedLinksCommand"
  let make = (
    ~objectReference,
    ~directoryArn,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    ~filterTypedLink=?,
    ~filterAttributeRanges=?,
    (),
  ) =>
    new({
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      filterTypedLink: filterTypedLink,
      filterAttributeRanges: filterAttributeRanges,
      objectReference: objectReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAttachedIndices = {
  type t
  type request = {
    @ocaml.doc("<p>The consistency level to use for this operation.</p>") @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>A reference to the object that has indices attached.</p>") @as("TargetReference")
    targetReference: objectReference,
    @ocaml.doc("<p>The ARN of the directory.</p>") @as("DirectoryArn") directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The indices attached to the specified object.</p>") @as("IndexAttachments")
    indexAttachments: option<indexAttachmentList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListAttachedIndicesCommand"
  let make = (
    ~targetReference,
    ~directoryArn,
    ~consistencyLevel=?,
    ~maxResults=?,
    ~nextToken=?,
    (),
  ) =>
    new({
      consistencyLevel: consistencyLevel,
      maxResults: maxResults,
      nextToken: nextToken,
      targetReference: targetReference,
      directoryArn: directoryArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTypedLinkFacet = {
  type t
  type request = {
    @ocaml.doc("<p>The order of identity attributes for the facet, from most significant to least significant. The ability to filter typed
      links considers the order that the attributes are defined on the typed link facet.  When
      providing ranges to a typed link selection, any inexact ranges must be specified at the end.
      Any attributes that do not have a range specified are presumed to match the entire range.
      Filters are interpreted in the order of the attributes on the typed link facet, not the order
      in which they are supplied to any API calls. For more information about identity attributes, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink\">Typed Links</a>.</p>")
    @as("IdentityAttributeOrder")
    identityAttributeOrder: attributeNameList,
    @ocaml.doc("<p>Attributes update structure.</p>") @as("AttributeUpdates")
    attributeUpdates: typedLinkFacetAttributeUpdateList,
    @ocaml.doc("<p>The unique name of the typed link facet.</p>") @as("Name") name: typedLinkName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "UpdateTypedLinkFacetCommand"
  let make = (~identityAttributeOrder, ~attributeUpdates, ~name, ~schemaArn, ()) =>
    new({
      identityAttributeOrder: identityAttributeOrder,
      attributeUpdates: attributeUpdates,
      name: name,
      schemaArn: schemaArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListFacetAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to retrieve.</p>") @as("MaxResults")
    maxResults: option<numberResults>,
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the facet whose attributes will be retrieved.</p>") @as("Name")
    name: facetName,
    @ocaml.doc("<p>The ARN of the schema where the facet resides.</p>") @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token.</p>") @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The attributes attached to the facet.</p>") @as("Attributes")
    attributes: option<facetAttributeList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "ListFacetAttributesCommand"
  let make = (~name, ~schemaArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, name: name, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTypedLinkFacet = {
  type t
  type request = {
    @ocaml.doc("<p>
            <a>Facet</a> structure that is associated with the typed link
      facet.</p>")
    @as("Facet")
    facet: typedLinkFacet,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the schema. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new
  external new: request => t = "CreateTypedLinkFacetCommand"
  let make = (~facet, ~schemaArn, ()) => new({facet: facet, schemaArn: schemaArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateFacet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>There are two different styles that you can define on any given facet, <code>Static</code> and <code>Dynamic</code>. For static facets, all attributes must be defined in the schema. For dynamic facets, attributes can be defined during data plane operations.</p>"
    )
    @as("FacetStyle")
    facetStyle: option<facetStyle>,
    @ocaml.doc("<p>Specifies whether a given object created from this facet is of type node, leaf node,
      policy or index.</p>
         <ul>
            <li>
               <p>Node: Can have multiple children but one parent.</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>Leaf node: Cannot have children but can have multiple parents.</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>Policy: Allows you to store a policy document and policy type. For more
        information, see <a href=\"https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies\">Policies</a>.</p>
            </li>
         </ul>
         <ul>
            <li>
               <p>Index: Can be created with the Index API.</p>
            </li>
         </ul>")
    @as("ObjectType")
    objectType: option<objectType>,
    @ocaml.doc("<p>The attributes that are associated with the <a>Facet</a>.</p>") @as("Attributes")
    attributes: option<facetAttributeList>,
    @ocaml.doc("<p>The name of the <a>Facet</a>, which is unique for a given schema.</p>")
    @as("Name")
    name: facetName,
    @ocaml.doc("<p>The schema ARN in which the new <a>Facet</a> will be created. For more
      information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "CreateFacetCommand"
  let make = (~name, ~schemaArn, ~facetStyle=?, ~objectType=?, ~attributes=?, ()) =>
    new({
      facetStyle: facetStyle,
      objectType: objectType,
      attributes: attributes,
      name: name,
      schemaArn: schemaArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateFacet = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The object type that is associated with the facet. See <a>CreateFacetRequest$ObjectType</a> for more details.</p>"
    )
    @as("ObjectType")
    objectType: option<objectType>,
    @ocaml.doc("<p>List of attributes that need to be updated in a given schema <a>Facet</a>.
      Each attribute is followed by <code>AttributeAction</code>, which specifies the type of update
      operation to perform. </p>")
    @as("AttributeUpdates")
    attributeUpdates: option<facetAttributeUpdateList>,
    @ocaml.doc("<p>The name of the facet.</p>") @as("Name") name: facetName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Facet</a>.
      For more information, see <a>arns</a>.</p>")
    @as("SchemaArn")
    schemaArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "UpdateFacetCommand"
  let make = (~name, ~schemaArn, ~objectType=?, ~attributeUpdates=?, ()) =>
    new({
      objectType: objectType,
      attributeUpdates: attributeUpdates,
      name: name,
      schemaArn: schemaArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module BatchWrite = {
  type t
  type request = {
    @ocaml.doc("<p>A list of operations that are part of the batch.</p>") @as("Operations")
    operations: batchWriteOperationList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
      For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A list of all the responses for each batch write.</p>") @as("Responses")
    responses: option<batchWriteOperationResponseList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "BatchWriteCommand"
  let make = (~operations, ~directoryArn, ()) =>
    new({operations: operations, directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchRead = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the manner and timing in which the successful write or update of an object
      is reflected in a subsequent read operation of that same object.</p>")
    @as("ConsistencyLevel")
    consistencyLevel: option<consistencyLevel>,
    @ocaml.doc("<p>A list of operations that are part of the batch.</p>") @as("Operations")
    operations: batchReadOperationList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) that is associated with the <a>Directory</a>.
      For more information, see <a>arns</a>.</p>")
    @as("DirectoryArn")
    directoryArn: arn,
  }
  type response = {
    @ocaml.doc("<p>A list of all the responses for each batch read.</p>") @as("Responses")
    responses: option<batchReadOperationResponseList>,
  }
  @module("@aws-sdk/client-clouddirectory") @new external new: request => t = "BatchReadCommand"
  let make = (~operations, ~directoryArn, ~consistencyLevel=?, ()) =>
    new({consistencyLevel: consistencyLevel, operations: operations, directoryArn: directoryArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
