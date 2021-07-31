type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-clouddirectory") @new external createClient: unit => awsServiceClient = "CloudDirectoryClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
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
type ruleType = [@as("STRING_LENGTH") #STRING_LENGTH | @as("STRING_FROM_SET") #STRING_FROM_SET | @as("NUMBER_COMPARISON") #NUMBER_COMPARISON | @as("BINARY_LENGTH") #BINARY_LENGTH]
type ruleParameterValue = string
type ruleParameterKey = string
type ruleKey = string
type requiredAttributeBehavior = [@as("NOT_REQUIRED") #NOT_REQUIRED | @as("REQUIRED_ALWAYS") #REQUIRED_ALWAYS]
type rangeMode = [@as("EXCLUSIVE") #EXCLUSIVE | @as("INCLUSIVE") #INCLUSIVE | @as("LAST_BEFORE_MISSING_VALUES") #LAST_BEFORE_MISSING_VALUES | @as("LAST") #LAST | @as("FIRST") #FIRST]
type policyType = string
type pathString = string
type objectType = [@as("INDEX") #INDEX | @as("POLICY") #POLICY | @as("LEAF_NODE") #LEAF_NODE | @as("NODE") #NODE]
type objectIdentifier = string
type numberResults = int
type numberAttributeValue = string
type nextToken = string
type linkName = string
type facetStyle = [@as("DYNAMIC") #DYNAMIC | @as("STATIC") #STATIC]
type facetName = string
type facetAttributeType = [@as("VARIANT") #VARIANT | @as("DATETIME") #DATETIME | @as("NUMBER") #NUMBER | @as("BOOLEAN") #BOOLEAN | @as("BINARY") #BINARY | @as("STRING") #STRING]
type exceptionMessage = string
type directoryState = [@as("DELETED") #DELETED | @as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type directoryName = string
type directoryArn = string
type datetimeAttributeValue = Js.Date.t;
type date = Js.Date.t;
type consistencyLevel = [@as("EVENTUAL") #EVENTUAL | @as("SERIALIZABLE") #SERIALIZABLE]
type booleanAttributeValue = bool
type bool_ = bool
type binaryAttributeValue = NodeJs.Buffer.t
type batchWriteExceptionType = [@as("UnsupportedIndexTypeException") #UnsupportedIndexTypeException | @as("LimitExceededException") #LimitExceededException | @as("DirectoryNotEnabledException") #DirectoryNotEnabledException | @as("NotPolicyException") #NotPolicyException | @as("ObjectAlreadyDetachedException") #ObjectAlreadyDetachedException | @as("IndexedAttributeMissingException") #IndexedAttributeMissingException | @as("NotNodeException") #NotNodeException | @as("NotIndexException") #NotIndexException | @as("InvalidAttachmentException") #InvalidAttachmentException | @as("AccessDeniedException") #AccessDeniedException | @as("ResourceNotFoundException") #ResourceNotFoundException | @as("ObjectNotDetachedException") #ObjectNotDetachedException | @as("FacetValidationException") #FacetValidationException | @as("StillContainsLinksException") #StillContainsLinksException | @as("LinkNameAlreadyInUseException") #LinkNameAlreadyInUseException | @as("InvalidArnException") #InvalidArnException | @as("ValidationException") #ValidationException | @as("InternalServiceException") #InternalServiceException]
type batchUpdateLinkAttributesResponse = unit
type batchRemoveFacetFromObjectResponse = unit
type batchReferenceName = string
type batchReadExceptionType = [@as("InternalServiceException") #InternalServiceException | @as("LimitExceededException") #LimitExceededException | @as("DirectoryNotEnabledException") #DirectoryNotEnabledException | @as("NotPolicyException") #NotPolicyException | @as("NotIndexException") #NotIndexException | @as("CannotListParentOfRootException") #CannotListParentOfRootException | @as("FacetValidationException") #FacetValidationException | @as("NotNodeException") #NotNodeException | @as("AccessDeniedException") #AccessDeniedException | @as("InvalidNextTokenException") #InvalidNextTokenException | @as("ResourceNotFoundException") #ResourceNotFoundException | @as("InvalidArnException") #InvalidArnException | @as("ValidationException") #ValidationException]
type batchOperationIndex = int
type batchDetachTypedLinkResponse = unit
type batchDetachPolicyResponse = unit
type batchDeleteObjectResponse = unit
type batchAttachPolicyResponse = unit
type batchAddFacetToObjectResponse = unit
type attributeName = string
type arn = string
type typedLinkSchemaAndFacetName = {
@as("TypedLinkName") typedLinkName: typedLinkName,
  @as("SchemaArn") schemaArn: arn
}
type typedLinkNameList = array<typedLinkName>
type typedAttributeValue = {
@as("DatetimeValue") datetimeValue: option<datetimeAttributeValue>,
  @as("NumberValue") numberValue: option<numberAttributeValue>,
  @as("BooleanValue") booleanValue: option<booleanAttributeValue>,
  @as("BinaryValue") binaryValue: option<binaryAttributeValue>,
  @as("StringValue") stringValue: option<stringAttributeValue>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>
}
type schemaFacet = {
@as("FacetName") facetName: option<facetName>,
  @as("SchemaArn") schemaArn: option<arn>
}
type ruleParameterMap = Js.Dict.t<ruleParameterValue>
type policyAttachment = {
@as("PolicyType") policyType: option<policyType>,
  @as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>,
  @as("PolicyId") policyId: option<objectIdentifier>
}
type objectReference = {
@as("Selector") selector: option<selectorObjectReference>
}
type objectIdentifierToLinkNameMap = Js.Dict.t<linkName>
type objectIdentifierList = array<objectIdentifier>
type objectIdentifierAndLinkNameTuple = {
@as("LinkName") linkName: option<linkName>,
  @as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>
}
type linkNameToObjectIdentifierMap = Js.Dict.t<objectIdentifier>
type facetNameList = array<facetName>
type facetAttributeReference = {
@as("TargetAttributeName") targetAttributeName: attributeName,
  @as("TargetFacetName") targetFacetName: facetName
}
type facet = {
@as("FacetStyle") facetStyle: option<facetStyle>,
  @as("ObjectType") objectType: option<objectType>,
  @as("Name") name: option<facetName>
}
type directory = {
@as("CreationDateTime") creationDateTime: option<date>,
  @as("State") state: option<directoryState>,
  @as("DirectoryArn") directoryArn: option<directoryArn>,
  @as("Name") name: option<directoryName>
}
type batchUpdateObjectAttributesResponse = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>
}
type batchReadException = {
@as("Message") message: option<exceptionMessage>,
  @as("Type") type_: option<batchReadExceptionType>
}
type batchDetachObjectResponse = {
detachedObjectIdentifier: option<objectIdentifier>
}
type batchDetachFromIndexResponse = {
@as("DetachedObjectIdentifier") detachedObjectIdentifier: option<objectIdentifier>
}
type batchCreateObjectResponse = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>
}
type batchCreateIndexResponse = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>
}
type batchAttachToIndexResponse = {
@as("AttachedObjectIdentifier") attachedObjectIdentifier: option<objectIdentifier>
}
type batchAttachObjectResponse = {
attachedObjectIdentifier: option<objectIdentifier>
}
type attributeNameList = array<attributeName>
type attributeKey = {
@as("Name") name: attributeName,
  @as("FacetName") facetName: facetName,
  @as("SchemaArn") schemaArn: arn
}
type arns = array<arn>
type typedAttributeValueRange = {
@as("EndValue") endValue: option<typedAttributeValue>,
  @as("EndMode") endMode: rangeMode,
  @as("StartValue") startValue: option<typedAttributeValue>,
  @as("StartMode") startMode: rangeMode
}
type tagList_ = array<tag>
type schemaFacetList = array<schemaFacet>
type rule = {
@as("Parameters") parameters: option<ruleParameterMap>,
  @as("Type") type_: option<ruleType>
}
type policyAttachmentList = array<policyAttachment>
type pathToObjectIdentifiers = {
@as("ObjectIdentifiers") objectIdentifiers: option<objectIdentifierList>,
  @as("Path") path: option<pathString>
}
type objectIdentifierAndLinkNameList = array<objectIdentifierAndLinkNameTuple>
type objectAttributeAction = {
@as("ObjectAttributeUpdateValue") objectAttributeUpdateValue: option<typedAttributeValue>,
  @as("ObjectAttributeActionType") objectAttributeActionType: option<updateActionType>
}
type linkAttributeAction = {
@as("AttributeUpdateValue") attributeUpdateValue: option<typedAttributeValue>,
  @as("AttributeActionType") attributeActionType: option<updateActionType>
}
type directoryList = array<directory>
type batchRemoveFacetFromObject = {
@as("ObjectReference") objectReference: objectReference,
  @as("SchemaFacet") schemaFacet: schemaFacet
}
type batchLookupPolicy = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference
}
type batchListPolicyAttachmentsResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ObjectIdentifiers") objectIdentifiers: option<objectIdentifierList>
}
type batchListPolicyAttachments = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("PolicyReference") policyReference: objectReference
}
type batchListObjectPoliciesResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("AttachedPolicyIds") attachedPolicyIds: option<objectIdentifierList>
}
type batchListObjectPolicies = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference
}
type batchListObjectParents = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference
}
type batchListObjectParentPaths = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference
}
type batchListObjectChildrenResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Children") children: option<linkNameToObjectIdentifierMap>
}
type batchListObjectChildren = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference
}
type batchListObjectAttributes = {
@as("FacetFilter") facetFilter: option<schemaFacet>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference
}
type batchListAttachedIndices = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("TargetReference") targetReference: objectReference
}
type batchGetObjectInformation = {
@as("ObjectReference") objectReference: objectReference
}
type batchGetObjectAttributes = {
@as("AttributeNames") attributeNames: attributeNameList,
  @as("SchemaFacet") schemaFacet: schemaFacet,
  @as("ObjectReference") objectReference: objectReference
}
type batchDetachPolicy = {
@as("ObjectReference") objectReference: objectReference,
  @as("PolicyReference") policyReference: objectReference
}
type batchDetachObject = {
@as("BatchReferenceName") batchReferenceName: option<batchReferenceName>,
  @as("LinkName") linkName: linkName,
  @as("ParentReference") parentReference: objectReference
}
type batchDetachFromIndex = {
@as("TargetReference") targetReference: objectReference,
  @as("IndexReference") indexReference: objectReference
}
type batchDeleteObject = {
@as("ObjectReference") objectReference: objectReference
}
type batchAttachToIndex = {
@as("TargetReference") targetReference: objectReference,
  @as("IndexReference") indexReference: objectReference
}
type batchAttachPolicy = {
@as("ObjectReference") objectReference: objectReference,
  @as("PolicyReference") policyReference: objectReference
}
type batchAttachObject = {
@as("LinkName") linkName: linkName,
  @as("ChildReference") childReference: objectReference,
  @as("ParentReference") parentReference: objectReference
}
type attributeNameAndValue = {
@as("Value") value: typedAttributeValue,
  @as("AttributeName") attributeName: attributeName
}
type attributeKeyList = array<attributeKey>
type attributeKeyAndValue = {
@as("Value") value: typedAttributeValue,
  @as("Key") key: attributeKey
}
type typedLinkAttributeRange = {
@as("Range") range: typedAttributeValueRange,
  @as("AttributeName") attributeName: option<attributeName>
}
type ruleMap = Js.Dict.t<rule>
type policyToPath = {
@as("Policies") policies: option<policyAttachmentList>,
  @as("Path") path: option<pathString>
}
type pathToObjectIdentifiersList = array<pathToObjectIdentifiers>
type objectAttributeUpdate = {
@as("ObjectAttributeAction") objectAttributeAction: option<objectAttributeAction>,
  @as("ObjectAttributeKey") objectAttributeKey: option<attributeKey>
}
type objectAttributeRange = {
@as("Range") range: option<typedAttributeValueRange>,
  @as("AttributeKey") attributeKey: option<attributeKey>
}
type linkAttributeUpdate = {
@as("AttributeAction") attributeAction: option<linkAttributeAction>,
  @as("AttributeKey") attributeKey: option<attributeKey>
}
type batchListObjectParentsResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ParentLinks") parentLinks: option<objectIdentifierAndLinkNameList>
}
type batchGetObjectInformationResponse = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>,
  @as("SchemaFacets") schemaFacets: option<schemaFacetList>
}
type batchCreateIndex = {
@as("BatchReferenceName") batchReferenceName: option<batchReferenceName>,
  @as("LinkName") linkName: option<linkName>,
  @as("ParentReference") parentReference: option<objectReference>,
  @as("IsUnique") isUnique: bool_,
  @as("OrderedIndexedAttributeList") orderedIndexedAttributeList: attributeKeyList
}
type attributeNameAndValueList = array<attributeNameAndValue>
type attributeKeyAndValueList = array<attributeKeyAndValue>
type typedLinkSpecifier = {
@as("IdentityAttributeValues") identityAttributeValues: attributeNameAndValueList,
  @as("TargetObjectReference") targetObjectReference: objectReference,
  @as("SourceObjectReference") sourceObjectReference: objectReference,
  @as("TypedLinkFacet") typedLinkFacet: typedLinkSchemaAndFacetName
}
type typedLinkAttributeRangeList = array<typedLinkAttributeRange>
type typedLinkAttributeDefinition = {
@as("RequiredBehavior") requiredBehavior: requiredAttributeBehavior,
  @as("Rules") rules: option<ruleMap>,
  @as("IsImmutable") isImmutable: option<bool_>,
  @as("DefaultValue") defaultValue: option<typedAttributeValue>,
  @as("Type") type_: facetAttributeType,
  @as("Name") name: attributeName
}
type policyToPathList = array<policyToPath>
type objectAttributeUpdateList = array<objectAttributeUpdate>
type objectAttributeRangeList = array<objectAttributeRange>
type linkAttributeUpdateList = array<linkAttributeUpdate>
type indexAttachment = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>,
  @as("IndexedAttributes") indexedAttributes: option<attributeKeyAndValueList>
}
type facetAttributeDefinition = {
@as("Rules") rules: option<ruleMap>,
  @as("IsImmutable") isImmutable: option<bool_>,
  @as("DefaultValue") defaultValue: option<typedAttributeValue>,
  @as("Type") type_: facetAttributeType
}
type batchListObjectParentPathsResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PathToObjectIdentifiersList") pathToObjectIdentifiersList: option<pathToObjectIdentifiersList>
}
type batchListObjectAttributesResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Attributes") attributes: option<attributeKeyAndValueList>
}
type batchGetObjectAttributesResponse = {
@as("Attributes") attributes: option<attributeKeyAndValueList>
}
type batchGetLinkAttributesResponse = {
@as("Attributes") attributes: option<attributeKeyAndValueList>
}
type batchCreateObject = {
@as("BatchReferenceName") batchReferenceName: option<batchReferenceName>,
  @as("LinkName") linkName: option<linkName>,
  @as("ParentReference") parentReference: option<objectReference>,
  @as("ObjectAttributeList") objectAttributeList: attributeKeyAndValueList,
  @as("SchemaFacet") schemaFacet: schemaFacetList
}
type batchAttachTypedLink = {
@as("Attributes") attributes: attributeNameAndValueList,
  @as("TypedLinkFacet") typedLinkFacet: typedLinkSchemaAndFacetName,
  @as("TargetObjectReference") targetObjectReference: objectReference,
  @as("SourceObjectReference") sourceObjectReference: objectReference
}
type batchAddFacetToObject = {
@as("ObjectReference") objectReference: objectReference,
  @as("ObjectAttributeList") objectAttributeList: attributeKeyAndValueList,
  @as("SchemaFacet") schemaFacet: schemaFacet
}
type typedLinkSpecifierList = array<typedLinkSpecifier>
type typedLinkFacetAttributeUpdate = {
@as("Action") action: updateActionType,
  @as("Attribute") attribute: typedLinkAttributeDefinition
}
type typedLinkAttributeDefinitionList = array<typedLinkAttributeDefinition>
type indexAttachmentList = array<indexAttachment>
type facetAttribute = {
@as("RequiredBehavior") requiredBehavior: option<requiredAttributeBehavior>,
  @as("AttributeReference") attributeReference: option<facetAttributeReference>,
  @as("AttributeDefinition") attributeDefinition: option<facetAttributeDefinition>,
  @as("Name") name: attributeName
}
type batchUpdateObjectAttributes = {
@as("AttributeUpdates") attributeUpdates: objectAttributeUpdateList,
  @as("ObjectReference") objectReference: objectReference
}
type batchUpdateLinkAttributes = {
@as("AttributeUpdates") attributeUpdates: linkAttributeUpdateList,
  @as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier
}
type batchLookupPolicyResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PolicyToPathList") policyToPathList: option<policyToPathList>
}
type batchListOutgoingTypedLinks = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("FilterTypedLink") filterTypedLink: option<typedLinkSchemaAndFacetName>,
  @as("FilterAttributeRanges") filterAttributeRanges: option<typedLinkAttributeRangeList>,
  @as("ObjectReference") objectReference: objectReference
}
type batchListIndex = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("IndexReference") indexReference: objectReference,
  @as("RangesOnIndexedValues") rangesOnIndexedValues: option<objectAttributeRangeList>
}
type batchListIncomingTypedLinks = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("FilterTypedLink") filterTypedLink: option<typedLinkSchemaAndFacetName>,
  @as("FilterAttributeRanges") filterAttributeRanges: option<typedLinkAttributeRangeList>,
  @as("ObjectReference") objectReference: objectReference
}
type batchGetLinkAttributes = {
@as("AttributeNames") attributeNames: attributeNameList,
  @as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier
}
type batchDetachTypedLink = {
@as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier
}
type batchAttachTypedLinkResponse = {
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>
}
type typedLinkFacetAttributeUpdateList = array<typedLinkFacetAttributeUpdate>
type typedLinkFacet = {
@as("IdentityAttributeOrder") identityAttributeOrder: attributeNameList,
  @as("Attributes") attributes: typedLinkAttributeDefinitionList,
  @as("Name") name: typedLinkName
}
type facetAttributeUpdate = {
@as("Action") action: option<updateActionType>,
  @as("Attribute") attribute: option<facetAttribute>
}
type facetAttributeList = array<facetAttribute>
type batchWriteOperationResponse = {
@as("UpdateLinkAttributes") updateLinkAttributes: option<batchUpdateLinkAttributesResponse>,
  @as("DetachTypedLink") detachTypedLink: option<batchDetachTypedLinkResponse>,
  @as("AttachTypedLink") attachTypedLink: option<batchAttachTypedLinkResponse>,
  @as("DetachFromIndex") detachFromIndex: option<batchDetachFromIndexResponse>,
  @as("AttachToIndex") attachToIndex: option<batchAttachToIndexResponse>,
  @as("CreateIndex") createIndex: option<batchCreateIndexResponse>,
  @as("DetachPolicy") detachPolicy: option<batchDetachPolicyResponse>,
  @as("AttachPolicy") attachPolicy: option<batchAttachPolicyResponse>,
  @as("RemoveFacetFromObject") removeFacetFromObject: option<batchRemoveFacetFromObjectResponse>,
  @as("AddFacetToObject") addFacetToObject: option<batchAddFacetToObjectResponse>,
  @as("DeleteObject") deleteObject: option<batchDeleteObjectResponse>,
  @as("UpdateObjectAttributes") updateObjectAttributes: option<batchUpdateObjectAttributesResponse>,
  @as("DetachObject") detachObject: option<batchDetachObjectResponse>,
  @as("AttachObject") attachObject: option<batchAttachObjectResponse>,
  @as("CreateObject") createObject: option<batchCreateObjectResponse>
}
type batchWriteOperation = {
@as("UpdateLinkAttributes") updateLinkAttributes: option<batchUpdateLinkAttributes>,
  @as("DetachTypedLink") detachTypedLink: option<batchDetachTypedLink>,
  @as("AttachTypedLink") attachTypedLink: option<batchAttachTypedLink>,
  @as("DetachFromIndex") detachFromIndex: option<batchDetachFromIndex>,
  @as("AttachToIndex") attachToIndex: option<batchAttachToIndex>,
  @as("CreateIndex") createIndex: option<batchCreateIndex>,
  @as("DetachPolicy") detachPolicy: option<batchDetachPolicy>,
  @as("AttachPolicy") attachPolicy: option<batchAttachPolicy>,
  @as("RemoveFacetFromObject") removeFacetFromObject: option<batchRemoveFacetFromObject>,
  @as("AddFacetToObject") addFacetToObject: option<batchAddFacetToObject>,
  @as("DeleteObject") deleteObject: option<batchDeleteObject>,
  @as("UpdateObjectAttributes") updateObjectAttributes: option<batchUpdateObjectAttributes>,
  @as("DetachObject") detachObject: option<batchDetachObject>,
  @as("AttachObject") attachObject: option<batchAttachObject>,
  @as("CreateObject") createObject: option<batchCreateObject>
}
type batchReadOperation = {
@as("GetLinkAttributes") getLinkAttributes: option<batchGetLinkAttributes>,
  @as("ListIncomingTypedLinks") listIncomingTypedLinks: option<batchListIncomingTypedLinks>,
  @as("ListOutgoingTypedLinks") listOutgoingTypedLinks: option<batchListOutgoingTypedLinks>,
  @as("ListIndex") listIndex: option<batchListIndex>,
  @as("LookupPolicy") lookupPolicy: option<batchLookupPolicy>,
  @as("ListPolicyAttachments") listPolicyAttachments: option<batchListPolicyAttachments>,
  @as("ListObjectPolicies") listObjectPolicies: option<batchListObjectPolicies>,
  @as("ListObjectParents") listObjectParents: option<batchListObjectParents>,
  @as("GetObjectAttributes") getObjectAttributes: option<batchGetObjectAttributes>,
  @as("GetObjectInformation") getObjectInformation: option<batchGetObjectInformation>,
  @as("ListObjectParentPaths") listObjectParentPaths: option<batchListObjectParentPaths>,
  @as("ListAttachedIndices") listAttachedIndices: option<batchListAttachedIndices>,
  @as("ListObjectChildren") listObjectChildren: option<batchListObjectChildren>,
  @as("ListObjectAttributes") listObjectAttributes: option<batchListObjectAttributes>
}
type batchListOutgoingTypedLinksResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("TypedLinkSpecifiers") typedLinkSpecifiers: option<typedLinkSpecifierList>
}
type batchListIndexResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("IndexAttachments") indexAttachments: option<indexAttachmentList>
}
type batchListIncomingTypedLinksResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("LinkSpecifiers") linkSpecifiers: option<typedLinkSpecifierList>
}
type batchListAttachedIndicesResponse = {
@as("NextToken") nextToken: option<nextToken>,
  @as("IndexAttachments") indexAttachments: option<indexAttachmentList>
}
type facetAttributeUpdateList = array<facetAttributeUpdate>
type batchWriteOperationResponseList = array<batchWriteOperationResponse>
type batchWriteOperationList = array<batchWriteOperation>
type batchReadSuccessfulResponse = {
@as("ListObjectParents") listObjectParents: option<batchListObjectParentsResponse>,
  @as("GetLinkAttributes") getLinkAttributes: option<batchGetLinkAttributesResponse>,
  @as("ListIncomingTypedLinks") listIncomingTypedLinks: option<batchListIncomingTypedLinksResponse>,
  @as("ListOutgoingTypedLinks") listOutgoingTypedLinks: option<batchListOutgoingTypedLinksResponse>,
  @as("ListIndex") listIndex: option<batchListIndexResponse>,
  @as("LookupPolicy") lookupPolicy: option<batchLookupPolicyResponse>,
  @as("ListPolicyAttachments") listPolicyAttachments: option<batchListPolicyAttachmentsResponse>,
  @as("ListObjectPolicies") listObjectPolicies: option<batchListObjectPoliciesResponse>,
  @as("ListObjectParentPaths") listObjectParentPaths: option<batchListObjectParentPathsResponse>,
  @as("ListAttachedIndices") listAttachedIndices: option<batchListAttachedIndicesResponse>,
  @as("GetObjectAttributes") getObjectAttributes: option<batchGetObjectAttributesResponse>,
  @as("GetObjectInformation") getObjectInformation: option<batchGetObjectInformationResponse>,
  @as("ListObjectChildren") listObjectChildren: option<batchListObjectChildrenResponse>,
  @as("ListObjectAttributes") listObjectAttributes: option<batchListObjectAttributesResponse>
}
type batchReadOperationList = array<batchReadOperation>
type batchReadOperationResponse = {
@as("ExceptionResponse") exceptionResponse: option<batchReadException>,
  @as("SuccessfulResponse") successfulResponse: option<batchReadSuccessfulResponse>
}
type batchReadOperationResponseList = array<batchReadOperationResponse>

module UpgradePublishedSchema = {
  type t;
  type request = {
@as("DryRun") dryRun: option<bool_>,
  @as("MinorVersion") minorVersion: version,
  @as("PublishedSchemaArn") publishedSchemaArn: arn,
  @as("DevelopmentSchemaArn") developmentSchemaArn: arn
}
  type response = {
@as("UpgradedSchemaArn") upgradedSchemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UpgradePublishedSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpgradeAppliedSchema = {
  type t;
  type request = {
@as("DryRun") dryRun: option<bool_>,
  @as("DirectoryArn") directoryArn: arn,
  @as("PublishedSchemaArn") publishedSchemaArn: arn
}
  type response = {
@as("DirectoryArn") directoryArn: option<arn>,
  @as("UpgradedSchemaArn") upgradedSchemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UpgradeAppliedSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSchema = {
  type t;
  type request = {
@as("Name") name: schemaName,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("SchemaArn") schemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UpdateSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutSchemaFromJson = {
  type t;
  type request = {
@as("Document") document: schemaJsonDocument,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("Arn") arn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "PutSchemaFromJsonCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PublishSchema = {
  type t;
  type request = {
@as("Name") name: option<schemaName>,
  @as("MinorVersion") minorVersion: option<version>,
  @as("Version") version: version,
  @as("DevelopmentSchemaArn") developmentSchemaArn: arn
}
  type response = {
@as("PublishedSchemaArn") publishedSchemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "PublishSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSchemaAsJson = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: arn
}
  type response = {
@as("Document") document: option<schemaJsonDocument>,
  @as("Name") name: option<schemaName>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetSchemaAsJsonCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAppliedSchemaVersion = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: arn
}
  type response = {
@as("AppliedSchemaArn") appliedSchemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetAppliedSchemaVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("DirectoryArn") directoryArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "EnableDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("DirectoryArn") directoryArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DisableDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTypedLinkFacet = {
  type t;
  type request = {
@as("Name") name: typedLinkName,
  @as("SchemaArn") schemaArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DeleteTypedLinkFacetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteSchema = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: arn
}
  type response = {
@as("SchemaArn") schemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DeleteSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFacet = {
  type t;
  type request = {
@as("Name") name: facetName,
  @as("SchemaArn") schemaArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DeleteFacetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("DirectoryArn") directoryArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DeleteDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateSchema = {
  type t;
  type request = {
@as("Name") name: schemaName
}
  type response = {
@as("SchemaArn") schemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "CreateSchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDirectory = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: arn,
  @as("Name") name: directoryName
}
  type response = {
@as("AppliedSchemaArn") appliedSchemaArn: arn,
  @as("ObjectIdentifier") objectIdentifier: objectIdentifier,
  @as("Name") name: directoryName,
  @as("DirectoryArn") directoryArn: directoryArn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "CreateDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ApplySchema = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: arn,
  @as("PublishedSchemaArn") publishedSchemaArn: arn
}
  type response = {
@as("DirectoryArn") directoryArn: option<arn>,
  @as("AppliedSchemaArn") appliedSchemaArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ApplySchemaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceArn") resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RemoveFacetFromObject = {
  type t;
  type request = {
@as("ObjectReference") objectReference: objectReference,
  @as("SchemaFacet") schemaFacet: schemaFacet,
  @as("DirectoryArn") directoryArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "RemoveFacetFromObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTypedLinkFacetNames = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("FacetNames") facetNames: option<typedLinkNameList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListTypedLinkFacetNamesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPublishedSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArns") schemaArns: option<arns>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListPublishedSchemaArnsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPolicyAttachments = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("PolicyReference") policyReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("ObjectIdentifiers") objectIdentifiers: option<objectIdentifierList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListPolicyAttachmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListObjectPolicies = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("AttachedPolicyIds") attachedPolicyIds: option<objectIdentifierList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListObjectPoliciesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListObjectChildren = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Children") children: option<linkNameToObjectIdentifierMap>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListObjectChildrenCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListManagedSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArns") schemaArns: option<arns>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListManagedSchemaArnsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFacetNames = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("FacetNames") facetNames: option<facetNameList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListFacetNamesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDevelopmentSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArns") schemaArns: option<arns>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListDevelopmentSchemaArnsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAppliedSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArn") schemaArn: option<arn>,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("SchemaArns") schemaArns: option<arns>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListAppliedSchemaArnsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTypedLinkFacetInformation = {
  type t;
  type request = {
@as("Name") name: typedLinkName,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("IdentityAttributeOrder") identityAttributeOrder: option<attributeNameList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetTypedLinkFacetInformationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFacet = {
  type t;
  type request = {
@as("Name") name: facetName,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("Facet") facet: option<facet>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetFacetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: directoryArn
}
  type response = {
@as("Directory") directory: directory
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetDirectoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachPolicy = {
  type t;
  type request = {
@as("ObjectReference") objectReference: objectReference,
  @as("PolicyReference") policyReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DetachPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachObject = {
  type t;
  type request = {
@as("LinkName") linkName: linkName,
  @as("ParentReference") parentReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("DetachedObjectIdentifier") detachedObjectIdentifier: option<objectIdentifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DetachObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachFromIndex = {
  type t;
  type request = {
@as("TargetReference") targetReference: objectReference,
  @as("IndexReference") indexReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("DetachedObjectIdentifier") detachedObjectIdentifier: option<objectIdentifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DetachFromIndexCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteObject = {
  type t;
  type request = {
@as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DeleteObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachToIndex = {
  type t;
  type request = {
@as("TargetReference") targetReference: objectReference,
  @as("IndexReference") indexReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("AttachedObjectIdentifier") attachedObjectIdentifier: option<objectIdentifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "AttachToIndexCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachPolicy = {
  type t;
  type request = {
@as("ObjectReference") objectReference: objectReference,
  @as("PolicyReference") policyReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "AttachPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachObject = {
  type t;
  type request = {
@as("LinkName") linkName: linkName,
  @as("ChildReference") childReference: objectReference,
  @as("ParentReference") parentReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("AttachedObjectIdentifier") attachedObjectIdentifier: option<objectIdentifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "AttachObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
  @as("ResourceArn") resourceArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<tagsNumberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ResourceArn") resourceArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListObjectParents = {
  type t;
  type request = {
@as("IncludeAllLinksToEachParent") includeAllLinksToEachParent: option<bool_>,
  @as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("ParentLinks") parentLinks: option<objectIdentifierAndLinkNameList>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Parents") parents: option<objectIdentifierToLinkNameMap>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListObjectParentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDirectories = {
  type t;
  type request = {
state: option<directoryState>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Directories") directories: directoryList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListDirectoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetObjectInformation = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>,
  @as("SchemaFacets") schemaFacets: option<schemaFacetList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetObjectInformationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateIndex = {
  type t;
  type request = {
@as("LinkName") linkName: option<linkName>,
  @as("ParentReference") parentReference: option<objectReference>,
  @as("IsUnique") isUnique: bool_,
  @as("OrderedIndexedAttributeList") orderedIndexedAttributeList: attributeKeyList,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "CreateIndexCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListObjectParentPaths = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PathToObjectIdentifiersList") pathToObjectIdentifiersList: option<pathToObjectIdentifiersList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListObjectParentPathsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListObjectAttributes = {
  type t;
  type request = {
@as("FacetFilter") facetFilter: option<schemaFacet>,
  @as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Attributes") attributes: option<attributeKeyAndValueList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListObjectAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetObjectAttributes = {
  type t;
  type request = {
@as("AttributeNames") attributeNames: attributeNameList,
  @as("SchemaFacet") schemaFacet: schemaFacet,
  @as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("Attributes") attributes: option<attributeKeyAndValueList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetObjectAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateObject = {
  type t;
  type request = {
@as("LinkName") linkName: option<linkName>,
  @as("ParentReference") parentReference: option<objectReference>,
  @as("ObjectAttributeList") objectAttributeList: option<attributeKeyAndValueList>,
  @as("SchemaFacets") schemaFacets: schemaFacetList,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "CreateObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddFacetToObject = {
  type t;
  type request = {
@as("ObjectReference") objectReference: objectReference,
  @as("ObjectAttributeList") objectAttributeList: option<attributeKeyAndValueList>,
  @as("SchemaFacet") schemaFacet: schemaFacet,
  @as("DirectoryArn") directoryArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "AddFacetToObjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateObjectAttributes = {
  type t;
  type request = {
@as("AttributeUpdates") attributeUpdates: objectAttributeUpdateList,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UpdateObjectAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLinkAttributes = {
  type t;
  type request = {
@as("AttributeUpdates") attributeUpdates: linkAttributeUpdateList,
  @as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier,
  @as("DirectoryArn") directoryArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UpdateLinkAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module LookupPolicy = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("PolicyToPathList") policyToPathList: option<policyToPathList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "LookupPolicyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLinkAttributes = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("AttributeNames") attributeNames: attributeNameList,
  @as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("Attributes") attributes: option<attributeKeyAndValueList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "GetLinkAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachTypedLink = {
  type t;
  type request = {
@as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier,
  @as("DirectoryArn") directoryArn: arn
}
  
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "DetachTypedLinkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AttachTypedLink = {
  type t;
  type request = {
@as("Attributes") attributes: attributeNameAndValueList,
  @as("TypedLinkFacet") typedLinkFacet: typedLinkSchemaAndFacetName,
  @as("TargetObjectReference") targetObjectReference: objectReference,
  @as("SourceObjectReference") sourceObjectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "AttachTypedLinkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTypedLinkFacetAttributes = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Name") name: typedLinkName,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Attributes") attributes: option<typedLinkAttributeDefinitionList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListTypedLinkFacetAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOutgoingTypedLinks = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("FilterTypedLink") filterTypedLink: option<typedLinkSchemaAndFacetName>,
  @as("FilterAttributeRanges") filterAttributeRanges: option<typedLinkAttributeRangeList>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("TypedLinkSpecifiers") typedLinkSpecifiers: option<typedLinkSpecifierList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListOutgoingTypedLinksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIndex = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("IndexReference") indexReference: objectReference,
  @as("RangesOnIndexedValues") rangesOnIndexedValues: option<objectAttributeRangeList>,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("IndexAttachments") indexAttachments: option<indexAttachmentList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListIndexCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListIncomingTypedLinks = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("FilterTypedLink") filterTypedLink: option<typedLinkSchemaAndFacetName>,
  @as("FilterAttributeRanges") filterAttributeRanges: option<typedLinkAttributeRangeList>,
  @as("ObjectReference") objectReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("LinkSpecifiers") linkSpecifiers: option<typedLinkSpecifierList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListIncomingTypedLinksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAttachedIndices = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("TargetReference") targetReference: objectReference,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("IndexAttachments") indexAttachments: option<indexAttachmentList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListAttachedIndicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTypedLinkFacet = {
  type t;
  type request = {
@as("IdentityAttributeOrder") identityAttributeOrder: attributeNameList,
  @as("AttributeUpdates") attributeUpdates: typedLinkFacetAttributeUpdateList,
  @as("Name") name: typedLinkName,
  @as("SchemaArn") schemaArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UpdateTypedLinkFacetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFacetAttributes = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<numberResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("Name") name: facetName,
  @as("SchemaArn") schemaArn: arn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Attributes") attributes: option<facetAttributeList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "ListFacetAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTypedLinkFacet = {
  type t;
  type request = {
@as("Facet") facet: typedLinkFacet,
  @as("SchemaArn") schemaArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "CreateTypedLinkFacetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFacet = {
  type t;
  type request = {
@as("FacetStyle") facetStyle: option<facetStyle>,
  @as("ObjectType") objectType: option<objectType>,
  @as("Attributes") attributes: option<facetAttributeList>,
  @as("Name") name: facetName,
  @as("SchemaArn") schemaArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "CreateFacetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFacet = {
  type t;
  type request = {
@as("ObjectType") objectType: option<objectType>,
  @as("AttributeUpdates") attributeUpdates: option<facetAttributeUpdateList>,
  @as("Name") name: facetName,
  @as("SchemaArn") schemaArn: arn
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "UpdateFacetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchWrite = {
  type t;
  type request = {
@as("Operations") operations: batchWriteOperationList,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("Responses") responses: option<batchWriteOperationResponseList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "BatchWriteCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchRead = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: option<consistencyLevel>,
  @as("Operations") operations: batchReadOperationList,
  @as("DirectoryArn") directoryArn: arn
}
  type response = {
@as("Responses") responses: option<batchReadOperationResponseList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (request) => t = "BatchReadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
