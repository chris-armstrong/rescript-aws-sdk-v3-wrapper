type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type version = string
type updateActionType = [@as("DELETE") #DELETE | @as("CREATE_OR_UPDATE") #CREATE_OR_UPDATE]
type typedLinkName = string
type tagsNumberResults = int;
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
type numberResults = int;
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
type booleanAttributeValue = bool;
type amazonawsBool = bool;
type binaryAttributeValue = NodeJs.Buffer.t;
type batchWriteExceptionType = [@as("UnsupportedIndexTypeException") #UnsupportedIndexTypeException | @as("LimitExceededException") #LimitExceededException | @as("DirectoryNotEnabledException") #DirectoryNotEnabledException | @as("NotPolicyException") #NotPolicyException | @as("ObjectAlreadyDetachedException") #ObjectAlreadyDetachedException | @as("IndexedAttributeMissingException") #IndexedAttributeMissingException | @as("NotNodeException") #NotNodeException | @as("NotIndexException") #NotIndexException | @as("InvalidAttachmentException") #InvalidAttachmentException | @as("AccessDeniedException") #AccessDeniedException | @as("ResourceNotFoundException") #ResourceNotFoundException | @as("ObjectNotDetachedException") #ObjectNotDetachedException | @as("FacetValidationException") #FacetValidationException | @as("StillContainsLinksException") #StillContainsLinksException | @as("LinkNameAlreadyInUseException") #LinkNameAlreadyInUseException | @as("InvalidArnException") #InvalidArnException | @as("ValidationException") #ValidationException | @as("InternalServiceException") #InternalServiceException]
type batchUpdateLinkAttributesResponse = unit
type batchRemoveFacetFromObjectResponse = unit
type batchReferenceName = string
type batchReadExceptionType = [@as("InternalServiceException") #InternalServiceException | @as("LimitExceededException") #LimitExceededException | @as("DirectoryNotEnabledException") #DirectoryNotEnabledException | @as("NotPolicyException") #NotPolicyException | @as("NotIndexException") #NotIndexException | @as("CannotListParentOfRootException") #CannotListParentOfRootException | @as("FacetValidationException") #FacetValidationException | @as("NotNodeException") #NotNodeException | @as("AccessDeniedException") #AccessDeniedException | @as("InvalidNextTokenException") #InvalidNextTokenException | @as("ResourceNotFoundException") #ResourceNotFoundException | @as("InvalidArnException") #InvalidArnException | @as("ValidationException") #ValidationException]
type batchOperationIndex = int;
type batchDetachTypedLinkResponse = unit
type batchDetachPolicyResponse = unit
type batchDeleteObjectResponse = unit
type batchAttachPolicyResponse = unit
type batchAddFacetToObjectResponse = unit
type attributeName = string
type arn = string
type typedLinkSchemaAndFacetName = {
@as("TypedLinkName") typedLinkName: option<typedLinkName>,
@as("SchemaArn") schemaArn: option<arn>
}
type typedLinkNameList = array<typedLinkName>
type typedAttributeValue = DatetimeValue(datetimeAttributeValue) | NumberValue(numberAttributeValue) | BooleanValue(booleanAttributeValue) | BinaryValue(binaryAttributeValue) | StringValue(stringAttributeValue);
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type schemaFacet = {
@as("FacetName") facetName: facetName,
@as("SchemaArn") schemaArn: arn
}
type ruleParameterMap = Js.Dict.t< ruleParameterValue>
type policyAttachment = {
@as("PolicyType") policyType: policyType,
@as("ObjectIdentifier") objectIdentifier: objectIdentifier,
@as("PolicyId") policyId: objectIdentifier
}
type objectReference = {
@as("Selector") selector: selectorObjectReference
}
type objectIdentifierToLinkNameMap = Js.Dict.t< linkName>
type objectIdentifierList = array<objectIdentifier>
type objectIdentifierAndLinkNameTuple = {
@as("LinkName") linkName: linkName,
@as("ObjectIdentifier") objectIdentifier: objectIdentifier
}
type linkNameToObjectIdentifierMap = Js.Dict.t< objectIdentifier>
type facetNameList = array<facetName>
type facetAttributeReference = {
@as("TargetAttributeName") targetAttributeName: option<attributeName>,
@as("TargetFacetName") targetFacetName: option<facetName>
}
type facet = {
@as("FacetStyle") facetStyle: facetStyle,
@as("ObjectType") objectType: objectType,
@as("Name") name: facetName
}
type directory = {
@as("CreationDateTime") creationDateTime: date,
@as("State") state: directoryState,
@as("DirectoryArn") directoryArn: directoryArn,
@as("Name") name: directoryName
}
type batchUpdateObjectAttributesResponse = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier
}
type batchReadException = {
@as("Message") message: exceptionMessage,
@as("Type") type_: batchReadExceptionType
}
type batchDetachObjectResponse = {
@as("detachedObjectIdentifier") detachedObjectIdentifier: objectIdentifier
}
type batchDetachFromIndexResponse = {
@as("DetachedObjectIdentifier") detachedObjectIdentifier: objectIdentifier
}
type batchCreateObjectResponse = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier
}
type batchCreateIndexResponse = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier
}
type batchAttachToIndexResponse = {
@as("AttachedObjectIdentifier") attachedObjectIdentifier: objectIdentifier
}
type batchAttachObjectResponse = {
@as("attachedObjectIdentifier") attachedObjectIdentifier: objectIdentifier
}
type attributeNameList = array<attributeName>
type attributeKey = {
@as("Name") name: option<attributeName>,
@as("FacetName") facetName: option<facetName>,
@as("SchemaArn") schemaArn: option<arn>
}
type arns = array<arn>
type typedAttributeValueRange = {
@as("EndValue") endValue: typedAttributeValue,
@as("EndMode") endMode: option<rangeMode>,
@as("StartValue") startValue: typedAttributeValue,
@as("StartMode") startMode: option<rangeMode>
}
type tagList = array<tag>
type schemaFacetList = array<schemaFacet>
type rule = {
@as("Parameters") parameters: ruleParameterMap,
@as("Type") type_: ruleType
}
type policyAttachmentList = array<policyAttachment>
type pathToObjectIdentifiers = {
@as("ObjectIdentifiers") objectIdentifiers: objectIdentifierList,
@as("Path") path: pathString
}
type objectIdentifierAndLinkNameList = array<objectIdentifierAndLinkNameTuple>
type objectAttributeAction = {
@as("ObjectAttributeUpdateValue") objectAttributeUpdateValue: typedAttributeValue,
@as("ObjectAttributeActionType") objectAttributeActionType: updateActionType
}
type linkAttributeAction = {
@as("AttributeUpdateValue") attributeUpdateValue: typedAttributeValue,
@as("AttributeActionType") attributeActionType: updateActionType
}
type directoryList = array<directory>
type batchRemoveFacetFromObject = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("SchemaFacet") schemaFacet: option<schemaFacet>
}
type batchLookupPolicy = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchListPolicyAttachmentsResponse = {
@as("NextToken") nextToken: nextToken,
@as("ObjectIdentifiers") objectIdentifiers: objectIdentifierList
}
type batchListPolicyAttachments = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("PolicyReference") policyReference: option<objectReference>
}
type batchListObjectPoliciesResponse = {
@as("NextToken") nextToken: nextToken,
@as("AttachedPolicyIds") attachedPolicyIds: objectIdentifierList
}
type batchListObjectPolicies = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchListObjectParents = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchListObjectParentPaths = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchListObjectChildrenResponse = {
@as("NextToken") nextToken: nextToken,
@as("Children") children: linkNameToObjectIdentifierMap
}
type batchListObjectChildren = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchListObjectAttributes = {
@as("FacetFilter") facetFilter: schemaFacet,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchListAttachedIndices = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("TargetReference") targetReference: option<objectReference>
}
type batchGetObjectInformation = {
@as("ObjectReference") objectReference: option<objectReference>
}
type batchGetObjectAttributes = {
@as("AttributeNames") attributeNames: option<attributeNameList>,
@as("SchemaFacet") schemaFacet: option<schemaFacet>,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchDetachPolicy = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("PolicyReference") policyReference: option<objectReference>
}
type batchDetachObject = {
@as("BatchReferenceName") batchReferenceName: batchReferenceName,
@as("LinkName") linkName: option<linkName>,
@as("ParentReference") parentReference: option<objectReference>
}
type batchDetachFromIndex = {
@as("TargetReference") targetReference: option<objectReference>,
@as("IndexReference") indexReference: option<objectReference>
}
type batchDeleteObject = {
@as("ObjectReference") objectReference: option<objectReference>
}
type batchAttachToIndex = {
@as("TargetReference") targetReference: option<objectReference>,
@as("IndexReference") indexReference: option<objectReference>
}
type batchAttachPolicy = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("PolicyReference") policyReference: option<objectReference>
}
type batchAttachObject = {
@as("LinkName") linkName: option<linkName>,
@as("ChildReference") childReference: option<objectReference>,
@as("ParentReference") parentReference: option<objectReference>
}
type attributeNameAndValue = {
@as("Value") value: option<typedAttributeValue>,
@as("AttributeName") attributeName: option<attributeName>
}
type attributeKeyList = array<attributeKey>
type attributeKeyAndValue = {
@as("Value") value: option<typedAttributeValue>,
@as("Key") key: option<attributeKey>
}
type typedLinkAttributeRange = {
@as("Range") range: option<typedAttributeValueRange>,
@as("AttributeName") attributeName: attributeName
}
type ruleMap = Js.Dict.t< rule>
type policyToPath = {
@as("Policies") policies: policyAttachmentList,
@as("Path") path: pathString
}
type pathToObjectIdentifiersList = array<pathToObjectIdentifiers>
type objectAttributeUpdate = {
@as("ObjectAttributeAction") objectAttributeAction: objectAttributeAction,
@as("ObjectAttributeKey") objectAttributeKey: attributeKey
}
type objectAttributeRange = {
@as("Range") range: typedAttributeValueRange,
@as("AttributeKey") attributeKey: attributeKey
}
type linkAttributeUpdate = {
@as("AttributeAction") attributeAction: linkAttributeAction,
@as("AttributeKey") attributeKey: attributeKey
}
type batchListObjectParentsResponse = {
@as("NextToken") nextToken: nextToken,
@as("ParentLinks") parentLinks: objectIdentifierAndLinkNameList
}
type batchGetObjectInformationResponse = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier,
@as("SchemaFacets") schemaFacets: schemaFacetList
}
type batchCreateIndex = {
@as("BatchReferenceName") batchReferenceName: batchReferenceName,
@as("LinkName") linkName: linkName,
@as("ParentReference") parentReference: objectReference,
@as("IsUnique") isUnique: option<amazonawsBool>,
@as("OrderedIndexedAttributeList") orderedIndexedAttributeList: option<attributeKeyList>
}
type attributeNameAndValueList = array<attributeNameAndValue>
type attributeKeyAndValueList = array<attributeKeyAndValue>
type typedLinkSpecifier = {
@as("IdentityAttributeValues") identityAttributeValues: option<attributeNameAndValueList>,
@as("TargetObjectReference") targetObjectReference: option<objectReference>,
@as("SourceObjectReference") sourceObjectReference: option<objectReference>,
@as("TypedLinkFacet") typedLinkFacet: option<typedLinkSchemaAndFacetName>
}
type typedLinkAttributeRangeList = array<typedLinkAttributeRange>
type typedLinkAttributeDefinition = {
@as("RequiredBehavior") requiredBehavior: option<requiredAttributeBehavior>,
@as("Rules") rules: ruleMap,
@as("IsImmutable") isImmutable: amazonawsBool,
@as("DefaultValue") defaultValue: typedAttributeValue,
@as("Type") type_: option<facetAttributeType>,
@as("Name") name: option<attributeName>
}
type policyToPathList = array<policyToPath>
type objectAttributeUpdateList = array<objectAttributeUpdate>
type objectAttributeRangeList = array<objectAttributeRange>
type linkAttributeUpdateList = array<linkAttributeUpdate>
type indexAttachment = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier,
@as("IndexedAttributes") indexedAttributes: attributeKeyAndValueList
}
type facetAttributeDefinition = {
@as("Rules") rules: ruleMap,
@as("IsImmutable") isImmutable: amazonawsBool,
@as("DefaultValue") defaultValue: typedAttributeValue,
@as("Type") type_: option<facetAttributeType>
}
type batchListObjectParentPathsResponse = {
@as("NextToken") nextToken: nextToken,
@as("PathToObjectIdentifiersList") pathToObjectIdentifiersList: pathToObjectIdentifiersList
}
type batchListObjectAttributesResponse = {
@as("NextToken") nextToken: nextToken,
@as("Attributes") attributes: attributeKeyAndValueList
}
type batchGetObjectAttributesResponse = {
@as("Attributes") attributes: attributeKeyAndValueList
}
type batchGetLinkAttributesResponse = {
@as("Attributes") attributes: attributeKeyAndValueList
}
type batchCreateObject = {
@as("BatchReferenceName") batchReferenceName: batchReferenceName,
@as("LinkName") linkName: linkName,
@as("ParentReference") parentReference: objectReference,
@as("ObjectAttributeList") objectAttributeList: option<attributeKeyAndValueList>,
@as("SchemaFacet") schemaFacet: option<schemaFacetList>
}
type batchAttachTypedLink = {
@as("Attributes") attributes: option<attributeNameAndValueList>,
@as("TypedLinkFacet") typedLinkFacet: option<typedLinkSchemaAndFacetName>,
@as("TargetObjectReference") targetObjectReference: option<objectReference>,
@as("SourceObjectReference") sourceObjectReference: option<objectReference>
}
type batchAddFacetToObject = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("ObjectAttributeList") objectAttributeList: option<attributeKeyAndValueList>,
@as("SchemaFacet") schemaFacet: option<schemaFacet>
}
type typedLinkSpecifierList = array<typedLinkSpecifier>
type typedLinkFacetAttributeUpdate = {
@as("Action") action: option<updateActionType>,
@as("Attribute") attribute: option<typedLinkAttributeDefinition>
}
type typedLinkAttributeDefinitionList = array<typedLinkAttributeDefinition>
type indexAttachmentList = array<indexAttachment>
type facetAttribute = {
@as("RequiredBehavior") requiredBehavior: requiredAttributeBehavior,
@as("AttributeReference") attributeReference: facetAttributeReference,
@as("AttributeDefinition") attributeDefinition: facetAttributeDefinition,
@as("Name") name: option<attributeName>
}
type batchUpdateObjectAttributes = {
@as("AttributeUpdates") attributeUpdates: option<objectAttributeUpdateList>,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchUpdateLinkAttributes = {
@as("AttributeUpdates") attributeUpdates: option<linkAttributeUpdateList>,
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>
}
type batchLookupPolicyResponse = {
@as("NextToken") nextToken: nextToken,
@as("PolicyToPathList") policyToPathList: policyToPathList
}
type batchListOutgoingTypedLinks = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("FilterTypedLink") filterTypedLink: typedLinkSchemaAndFacetName,
@as("FilterAttributeRanges") filterAttributeRanges: typedLinkAttributeRangeList,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchListIndex = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: numberResults,
@as("IndexReference") indexReference: option<objectReference>,
@as("RangesOnIndexedValues") rangesOnIndexedValues: objectAttributeRangeList
}
type batchListIncomingTypedLinks = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("FilterTypedLink") filterTypedLink: typedLinkSchemaAndFacetName,
@as("FilterAttributeRanges") filterAttributeRanges: typedLinkAttributeRangeList,
@as("ObjectReference") objectReference: option<objectReference>
}
type batchGetLinkAttributes = {
@as("AttributeNames") attributeNames: option<attributeNameList>,
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>
}
type batchDetachTypedLink = {
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>
}
type batchAttachTypedLinkResponse = {
@as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier
}
type typedLinkFacetAttributeUpdateList = array<typedLinkFacetAttributeUpdate>
type typedLinkFacet = {
@as("IdentityAttributeOrder") identityAttributeOrder: option<attributeNameList>,
@as("Attributes") attributes: option<typedLinkAttributeDefinitionList>,
@as("Name") name: option<typedLinkName>
}
type facetAttributeUpdate = {
@as("Action") action: updateActionType,
@as("Attribute") attribute: facetAttribute
}
type facetAttributeList = array<facetAttribute>
type batchWriteOperationResponse = {
@as("UpdateLinkAttributes") updateLinkAttributes: batchUpdateLinkAttributesResponse,
@as("DetachTypedLink") detachTypedLink: batchDetachTypedLinkResponse,
@as("AttachTypedLink") attachTypedLink: batchAttachTypedLinkResponse,
@as("DetachFromIndex") detachFromIndex: batchDetachFromIndexResponse,
@as("AttachToIndex") attachToIndex: batchAttachToIndexResponse,
@as("CreateIndex") createIndex: batchCreateIndexResponse,
@as("DetachPolicy") detachPolicy: batchDetachPolicyResponse,
@as("AttachPolicy") attachPolicy: batchAttachPolicyResponse,
@as("RemoveFacetFromObject") removeFacetFromObject: batchRemoveFacetFromObjectResponse,
@as("AddFacetToObject") addFacetToObject: batchAddFacetToObjectResponse,
@as("DeleteObject") deleteObject: batchDeleteObjectResponse,
@as("UpdateObjectAttributes") updateObjectAttributes: batchUpdateObjectAttributesResponse,
@as("DetachObject") detachObject: batchDetachObjectResponse,
@as("AttachObject") attachObject: batchAttachObjectResponse,
@as("CreateObject") createObject: batchCreateObjectResponse
}
type batchWriteOperation = {
@as("UpdateLinkAttributes") updateLinkAttributes: batchUpdateLinkAttributes,
@as("DetachTypedLink") detachTypedLink: batchDetachTypedLink,
@as("AttachTypedLink") attachTypedLink: batchAttachTypedLink,
@as("DetachFromIndex") detachFromIndex: batchDetachFromIndex,
@as("AttachToIndex") attachToIndex: batchAttachToIndex,
@as("CreateIndex") createIndex: batchCreateIndex,
@as("DetachPolicy") detachPolicy: batchDetachPolicy,
@as("AttachPolicy") attachPolicy: batchAttachPolicy,
@as("RemoveFacetFromObject") removeFacetFromObject: batchRemoveFacetFromObject,
@as("AddFacetToObject") addFacetToObject: batchAddFacetToObject,
@as("DeleteObject") deleteObject: batchDeleteObject,
@as("UpdateObjectAttributes") updateObjectAttributes: batchUpdateObjectAttributes,
@as("DetachObject") detachObject: batchDetachObject,
@as("AttachObject") attachObject: batchAttachObject,
@as("CreateObject") createObject: batchCreateObject
}
type batchReadOperation = {
@as("GetLinkAttributes") getLinkAttributes: batchGetLinkAttributes,
@as("ListIncomingTypedLinks") listIncomingTypedLinks: batchListIncomingTypedLinks,
@as("ListOutgoingTypedLinks") listOutgoingTypedLinks: batchListOutgoingTypedLinks,
@as("ListIndex") listIndex: batchListIndex,
@as("LookupPolicy") lookupPolicy: batchLookupPolicy,
@as("ListPolicyAttachments") listPolicyAttachments: batchListPolicyAttachments,
@as("ListObjectPolicies") listObjectPolicies: batchListObjectPolicies,
@as("ListObjectParents") listObjectParents: batchListObjectParents,
@as("GetObjectAttributes") getObjectAttributes: batchGetObjectAttributes,
@as("GetObjectInformation") getObjectInformation: batchGetObjectInformation,
@as("ListObjectParentPaths") listObjectParentPaths: batchListObjectParentPaths,
@as("ListAttachedIndices") listAttachedIndices: batchListAttachedIndices,
@as("ListObjectChildren") listObjectChildren: batchListObjectChildren,
@as("ListObjectAttributes") listObjectAttributes: batchListObjectAttributes
}
type batchListOutgoingTypedLinksResponse = {
@as("NextToken") nextToken: nextToken,
@as("TypedLinkSpecifiers") typedLinkSpecifiers: typedLinkSpecifierList
}
type batchListIndexResponse = {
@as("NextToken") nextToken: nextToken,
@as("IndexAttachments") indexAttachments: indexAttachmentList
}
type batchListIncomingTypedLinksResponse = {
@as("NextToken") nextToken: nextToken,
@as("LinkSpecifiers") linkSpecifiers: typedLinkSpecifierList
}
type batchListAttachedIndicesResponse = {
@as("NextToken") nextToken: nextToken,
@as("IndexAttachments") indexAttachments: indexAttachmentList
}
type facetAttributeUpdateList = array<facetAttributeUpdate>
type batchWriteOperationResponseList = array<batchWriteOperationResponse>
type batchWriteOperationList = array<batchWriteOperation>
type batchReadSuccessfulResponse = {
@as("ListObjectParents") listObjectParents: batchListObjectParentsResponse,
@as("GetLinkAttributes") getLinkAttributes: batchGetLinkAttributesResponse,
@as("ListIncomingTypedLinks") listIncomingTypedLinks: batchListIncomingTypedLinksResponse,
@as("ListOutgoingTypedLinks") listOutgoingTypedLinks: batchListOutgoingTypedLinksResponse,
@as("ListIndex") listIndex: batchListIndexResponse,
@as("LookupPolicy") lookupPolicy: batchLookupPolicyResponse,
@as("ListPolicyAttachments") listPolicyAttachments: batchListPolicyAttachmentsResponse,
@as("ListObjectPolicies") listObjectPolicies: batchListObjectPoliciesResponse,
@as("ListObjectParentPaths") listObjectParentPaths: batchListObjectParentPathsResponse,
@as("ListAttachedIndices") listAttachedIndices: batchListAttachedIndicesResponse,
@as("GetObjectAttributes") getObjectAttributes: batchGetObjectAttributesResponse,
@as("GetObjectInformation") getObjectInformation: batchGetObjectInformationResponse,
@as("ListObjectChildren") listObjectChildren: batchListObjectChildrenResponse,
@as("ListObjectAttributes") listObjectAttributes: batchListObjectAttributesResponse
}
type batchReadOperationList = array<batchReadOperation>
type batchReadOperationResponse = {
@as("ExceptionResponse") exceptionResponse: batchReadException,
@as("SuccessfulResponse") successfulResponse: batchReadSuccessfulResponse
}
type batchReadOperationResponseList = array<batchReadOperationResponse>
type clientType;
@module("@aws-sdk/client-clouddirectory") @new external createClient: unit => clientType = "CloudDirectoryClient";
module UpgradePublishedSchema = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBool,
@as("MinorVersion") minorVersion: option<version>,
@as("PublishedSchemaArn") publishedSchemaArn: option<arn>,
@as("DevelopmentSchemaArn") developmentSchemaArn: option<arn>
}
  type response = {
@as("UpgradedSchemaArn") upgradedSchemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UpgradePublishedSchemaCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpgradeAppliedSchema = {
  type t;
  type request = {
@as("DryRun") dryRun: amazonawsBool,
@as("DirectoryArn") directoryArn: option<arn>,
@as("PublishedSchemaArn") publishedSchemaArn: option<arn>
}
  type response = {
@as("DirectoryArn") directoryArn: arn,
@as("UpgradedSchemaArn") upgradedSchemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UpgradeAppliedSchemaCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSchema = {
  type t;
  type request = {
@as("Name") name: option<schemaName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("SchemaArn") schemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UpdateSchemaCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutSchemaFromJson = {
  type t;
  type request = {
@as("Document") document: option<schemaJsonDocument>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("Arn") arn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "PutSchemaFromJsonCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module PublishSchema = {
  type t;
  type request = {
@as("Name") name: schemaName,
@as("MinorVersion") minorVersion: version,
@as("Version") version: option<version>,
@as("DevelopmentSchemaArn") developmentSchemaArn: option<arn>
}
  type response = {
@as("PublishedSchemaArn") publishedSchemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "PublishSchemaCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSchemaAsJson = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("Document") document: schemaJsonDocument,
@as("Name") name: schemaName
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetSchemaAsJsonCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAppliedSchemaVersion = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("AppliedSchemaArn") appliedSchemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetAppliedSchemaVersionCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("DirectoryArn") directoryArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "EnableDirectoryCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("DirectoryArn") directoryArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DisableDirectoryCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTypedLinkFacet = {
  type t;
  type request = {
@as("Name") name: option<typedLinkName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DeleteTypedLinkFacetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSchema = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("SchemaArn") schemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DeleteSchemaCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFacet = {
  type t;
  type request = {
@as("Name") name: option<facetName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DeleteFacetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("DirectoryArn") directoryArn: option<arn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DeleteDirectoryCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSchema = {
  type t;
  type request = {
@as("Name") name: option<schemaName>
}
  type response = {
@as("SchemaArn") schemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "CreateSchemaCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDirectory = {
  type t;
  type request = {
@as("SchemaArn") schemaArn: option<arn>,
@as("Name") name: option<directoryName>
}
  type response = {
@as("AppliedSchemaArn") appliedSchemaArn: option<arn>,
@as("ObjectIdentifier") objectIdentifier: option<objectIdentifier>,
@as("Name") name: option<directoryName>,
@as("DirectoryArn") directoryArn: option<directoryArn>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "CreateDirectoryCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ApplySchema = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: option<arn>,
@as("PublishedSchemaArn") publishedSchemaArn: option<arn>
}
  type response = {
@as("DirectoryArn") directoryArn: arn,
@as("AppliedSchemaArn") appliedSchemaArn: arn
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ApplySchemaCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module RemoveFacetFromObject = {
  type t;
  type request = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("SchemaFacet") schemaFacet: option<schemaFacet>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "RemoveFacetFromObjectCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTypedLinkFacetNames = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("FacetNames") facetNames: typedLinkNameList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListTypedLinkFacetNamesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPublishedSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("SchemaArn") schemaArn: arn
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SchemaArns") schemaArns: arns
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListPublishedSchemaArnsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPolicyAttachments = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("PolicyReference") policyReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ObjectIdentifiers") objectIdentifiers: objectIdentifierList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListPolicyAttachmentsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListObjectPolicies = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AttachedPolicyIds") attachedPolicyIds: objectIdentifierList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListObjectPoliciesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListObjectChildren = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Children") children: linkNameToObjectIdentifierMap
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListObjectChildrenCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListManagedSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("SchemaArn") schemaArn: arn
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SchemaArns") schemaArns: arns
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListManagedSchemaArnsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFacetNames = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("FacetNames") facetNames: facetNameList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListFacetNamesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDevelopmentSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SchemaArns") schemaArns: arns
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListDevelopmentSchemaArnsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAppliedSchemaArns = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("SchemaArn") schemaArn: arn,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("SchemaArns") schemaArns: arns
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListAppliedSchemaArnsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTypedLinkFacetInformation = {
  type t;
  type request = {
@as("Name") name: option<typedLinkName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("IdentityAttributeOrder") identityAttributeOrder: attributeNameList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetTypedLinkFacetInformationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFacet = {
  type t;
  type request = {
@as("Name") name: option<facetName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("Facet") facet: facet
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetFacetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDirectory = {
  type t;
  type request = {
@as("DirectoryArn") directoryArn: option<directoryArn>
}
  type response = {
@as("Directory") directory: option<directory>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetDirectoryCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachPolicy = {
  type t;
  type request = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("PolicyReference") policyReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DetachPolicyCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachObject = {
  type t;
  type request = {
@as("LinkName") linkName: option<linkName>,
@as("ParentReference") parentReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("DetachedObjectIdentifier") detachedObjectIdentifier: objectIdentifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DetachObjectCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachFromIndex = {
  type t;
  type request = {
@as("TargetReference") targetReference: option<objectReference>,
@as("IndexReference") indexReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("DetachedObjectIdentifier") detachedObjectIdentifier: objectIdentifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DetachFromIndexCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteObject = {
  type t;
  type request = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DeleteObjectCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachToIndex = {
  type t;
  type request = {
@as("TargetReference") targetReference: option<objectReference>,
@as("IndexReference") indexReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("AttachedObjectIdentifier") attachedObjectIdentifier: objectIdentifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "AttachToIndexCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachPolicy = {
  type t;
  type request = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("PolicyReference") policyReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "AttachPolicyCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachObject = {
  type t;
  type request = {
@as("LinkName") linkName: option<linkName>,
@as("ChildReference") childReference: option<objectReference>,
@as("ParentReference") parentReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("AttachedObjectIdentifier") attachedObjectIdentifier: objectIdentifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "AttachObjectCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("MaxResults") maxResults: tagsNumberResults,
@as("NextToken") nextToken: nextToken,
@as("ResourceArn") resourceArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListObjectParents = {
  type t;
  type request = {
@as("IncludeAllLinksToEachParent") includeAllLinksToEachParent: amazonawsBool,
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("ParentLinks") parentLinks: objectIdentifierAndLinkNameList,
@as("NextToken") nextToken: nextToken,
@as("Parents") parents: objectIdentifierToLinkNameMap
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListObjectParentsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDirectories = {
  type t;
  type request = {
@as("state") state: directoryState,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Directories") directories: option<directoryList>
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListDirectoriesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObjectInformation = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier,
@as("SchemaFacets") schemaFacets: schemaFacetList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetObjectInformationCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIndex = {
  type t;
  type request = {
@as("LinkName") linkName: linkName,
@as("ParentReference") parentReference: objectReference,
@as("IsUnique") isUnique: option<amazonawsBool>,
@as("OrderedIndexedAttributeList") orderedIndexedAttributeList: option<attributeKeyList>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "CreateIndexCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListObjectParentPaths = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("PathToObjectIdentifiersList") pathToObjectIdentifiersList: pathToObjectIdentifiersList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListObjectParentPathsCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListObjectAttributes = {
  type t;
  type request = {
@as("FacetFilter") facetFilter: schemaFacet,
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Attributes") attributes: attributeKeyAndValueList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListObjectAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetObjectAttributes = {
  type t;
  type request = {
@as("AttributeNames") attributeNames: option<attributeNameList>,
@as("SchemaFacet") schemaFacet: option<schemaFacet>,
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("Attributes") attributes: attributeKeyAndValueList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetObjectAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateObject = {
  type t;
  type request = {
@as("LinkName") linkName: linkName,
@as("ParentReference") parentReference: objectReference,
@as("ObjectAttributeList") objectAttributeList: attributeKeyAndValueList,
@as("SchemaFacets") schemaFacets: option<schemaFacetList>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "CreateObjectCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddFacetToObject = {
  type t;
  type request = {
@as("ObjectReference") objectReference: option<objectReference>,
@as("ObjectAttributeList") objectAttributeList: attributeKeyAndValueList,
@as("SchemaFacet") schemaFacet: option<schemaFacet>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "AddFacetToObjectCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateObjectAttributes = {
  type t;
  type request = {
@as("AttributeUpdates") attributeUpdates: option<objectAttributeUpdateList>,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("ObjectIdentifier") objectIdentifier: objectIdentifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UpdateObjectAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLinkAttributes = {
  type t;
  type request = {
@as("AttributeUpdates") attributeUpdates: option<linkAttributeUpdateList>,
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UpdateLinkAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module LookupPolicy = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("PolicyToPathList") policyToPathList: policyToPathList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "LookupPolicyCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLinkAttributes = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("AttributeNames") attributeNames: option<attributeNameList>,
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("Attributes") attributes: attributeKeyAndValueList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "GetLinkAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachTypedLink = {
  type t;
  type request = {
@as("TypedLinkSpecifier") typedLinkSpecifier: option<typedLinkSpecifier>,
@as("DirectoryArn") directoryArn: option<arn>
}
  
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "DetachTypedLinkCommand";
  @send external send: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AttachTypedLink = {
  type t;
  type request = {
@as("Attributes") attributes: option<attributeNameAndValueList>,
@as("TypedLinkFacet") typedLinkFacet: option<typedLinkSchemaAndFacetName>,
@as("TargetObjectReference") targetObjectReference: option<objectReference>,
@as("SourceObjectReference") sourceObjectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("TypedLinkSpecifier") typedLinkSpecifier: typedLinkSpecifier
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "AttachTypedLinkCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTypedLinkFacetAttributes = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("Name") name: option<typedLinkName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Attributes") attributes: typedLinkAttributeDefinitionList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListTypedLinkFacetAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOutgoingTypedLinks = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("FilterTypedLink") filterTypedLink: typedLinkSchemaAndFacetName,
@as("FilterAttributeRanges") filterAttributeRanges: typedLinkAttributeRangeList,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("TypedLinkSpecifiers") typedLinkSpecifiers: typedLinkSpecifierList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListOutgoingTypedLinksCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIndex = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: numberResults,
@as("IndexReference") indexReference: option<objectReference>,
@as("RangesOnIndexedValues") rangesOnIndexedValues: objectAttributeRangeList,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("IndexAttachments") indexAttachments: indexAttachmentList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListIndexCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIncomingTypedLinks = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("FilterTypedLink") filterTypedLink: typedLinkSchemaAndFacetName,
@as("FilterAttributeRanges") filterAttributeRanges: typedLinkAttributeRangeList,
@as("ObjectReference") objectReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("LinkSpecifiers") linkSpecifiers: typedLinkSpecifierList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListIncomingTypedLinksCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAttachedIndices = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("TargetReference") targetReference: option<objectReference>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("IndexAttachments") indexAttachments: indexAttachmentList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListAttachedIndicesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTypedLinkFacet = {
  type t;
  type request = {
@as("IdentityAttributeOrder") identityAttributeOrder: option<attributeNameList>,
@as("AttributeUpdates") attributeUpdates: option<typedLinkFacetAttributeUpdateList>,
@as("Name") name: option<typedLinkName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UpdateTypedLinkFacetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFacetAttributes = {
  type t;
  type request = {
@as("MaxResults") maxResults: numberResults,
@as("NextToken") nextToken: nextToken,
@as("Name") name: option<facetName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Attributes") attributes: facetAttributeList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "ListFacetAttributesCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTypedLinkFacet = {
  type t;
  type request = {
@as("Facet") facet: option<typedLinkFacet>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "CreateTypedLinkFacetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFacet = {
  type t;
  type request = {
@as("FacetStyle") facetStyle: facetStyle,
@as("ObjectType") objectType: objectType,
@as("Attributes") attributes: facetAttributeList,
@as("Name") name: option<facetName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "CreateFacetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFacet = {
  type t;
  type request = {
@as("ObjectType") objectType: objectType,
@as("AttributeUpdates") attributeUpdates: facetAttributeUpdateList,
@as("Name") name: option<facetName>,
@as("SchemaArn") schemaArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "UpdateFacetCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchWrite = {
  type t;
  type request = {
@as("Operations") operations: option<batchWriteOperationList>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("Responses") responses: batchWriteOperationResponseList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "BatchWriteCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchRead = {
  type t;
  type request = {
@as("ConsistencyLevel") consistencyLevel: consistencyLevel,
@as("Operations") operations: option<batchReadOperationList>,
@as("DirectoryArn") directoryArn: option<arn>
}
  type response = {
@as("Responses") responses: batchReadOperationResponseList
}
  @module("@aws-sdk/client-clouddirectory") @new external new_: (Js.Promise.t<request>) => t = "BatchReadCommand";
  @send external send: (clientType, t) => Js.Promise.t<response> = "send";
}
