type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-workdocs") @new external createClient: unit => awsServiceClient = "WorkDocsClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type usernameType = string
type userType = [@as("WORKSPACESUSER") #WORKSPACESUSER | @as("MINIMALUSER") #MINIMALUSER | @as("POWERUSER") #POWERUSER | @as("ADMIN") #ADMIN | @as("USER") #USER]
type userStatusType = [@as("PENDING") #PENDING | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type userSortType = [@as("STORAGE_USED") #STORAGE_USED | @as("USER_STATUS") #USER_STATUS | @as("STORAGE_LIMIT") #STORAGE_LIMIT | @as("FULL_NAME") #FULL_NAME | @as("USER_NAME") #USER_NAME]
type userIdsType = string
type userFilterType = [@as("ACTIVE_PENDING") #ACTIVE_PENDING | @as("ALL") #ALL]
type userAttributeValueType = string
type urlType = string
type timestampType = Js.Date.t;
type timeZoneIdType = string
type subscriptionType = [@as("ALL") #ALL]
type subscriptionProtocolType = [@as("HTTPS") #HTTPS]
type subscriptionEndPointType = string
type storageType = [@as("QUOTA") #QUOTA | @as("UNLIMITED") #UNLIMITED]
type sizeType = float
type sharedLabel = string
type shareStatusType = [@as("FAILURE") #FAILURE | @as("SUCCESS") #SUCCESS]
type searchQueryType = string
type roleType = [@as("COOWNER") #COOWNER | @as("OWNER") #OWNER | @as("CONTRIBUTOR") #CONTRIBUTOR | @as("VIEWER") #VIEWER]
type rolePermissionType = [@as("INHERITED") #INHERITED | @as("DIRECT") #DIRECT]
type resourceType = [@as("DOCUMENT") #DOCUMENT | @as("FOLDER") #FOLDER]
type resourceStateType = [@as("RECYCLED") #RECYCLED | @as("RECYCLING") #RECYCLING | @as("RESTORING") #RESTORING | @as("ACTIVE") #ACTIVE]
type resourceSortType = [@as("NAME") #NAME | @as("DATE") #DATE]
type resourceNameType = string
type resourceIdType = string
type resourceCollectionType = [@as("SHARED_WITH_ME") #SHARED_WITH_ME]
type principalType = [@as("ORGANIZATION") #ORGANIZATION | @as("ANONYMOUS") #ANONYMOUS | @as("INVITE") #INVITE | @as("GROUP") #GROUP | @as("USER") #USER]
type positiveSizeType = float
type positiveIntegerType = int
type passwordType = string
type pageMarkerType = string
type orderType = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type messageType = string
type markerType = string
type localeType = [@as("default") #Default | @as("pt_BR") #Pt_BR | @as("zh_TW") #Zh_TW | @as("zh_CN") #Zh_CN | @as("ru") #Ru | @as("ja") #Ja | @as("es") #Es | @as("de") #De | @as("ko") #Ko | @as("fr") #Fr | @as("en") #En]
type limitType = int
type idType = string
type headerValueType = string
type headerNameType = string
type hashType = string
type groupNameType = string
type folderContentType = [@as("FOLDER") #FOLDER | @as("DOCUMENT") #DOCUMENT | @as("ALL") #ALL]
type fieldNamesType = string
type exceptionCodeType = string
type errorMessageType = string
type emailAddressType = string
type documentVersionStatus = [@as("ACTIVE") #ACTIVE]
type documentVersionIdType = string
type documentThumbnailType = [@as("LARGE") #LARGE | @as("SMALL_HQ") #SMALL_HQ | @as("SMALL") #SMALL]
type documentStatusType = [@as("ACTIVE") #ACTIVE | @as("INITIALIZED") #INITIALIZED]
type documentSourceType = [@as("WITH_COMMENTS") #WITH_COMMENTS | @as("ORIGINAL") #ORIGINAL]
type documentContentType = string
type customMetadataValueType = string
type customMetadataKeyType = string
type commentVisibilityType = [@as("PRIVATE") #PRIVATE | @as("PUBLIC") #PUBLIC]
type commentTextType = string
type commentStatusType = [@as("DELETED") #DELETED | @as("PUBLISHED") #PUBLISHED | @as("DRAFT") #DRAFT]
type commentIdType = string
type booleanType = bool
type booleanEnumType = [@as("FALSE") #FALSE | @as("TRUE") #TRUE]
type authenticationHeaderType = string
type activityType = [@as("FOLDER_MOVED") #FOLDER_MOVED | @as("FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED") #FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED | @as("FOLDER_SHAREABLE_LINK_REMOVED") #FOLDER_SHAREABLE_LINK_REMOVED | @as("FOLDER_SHAREABLE_LINK_CREATED") #FOLDER_SHAREABLE_LINK_CREATED | @as("FOLDER_SHARE_PERMISSION_CHANGED") #FOLDER_SHARE_PERMISSION_CHANGED | @as("FOLDER_UNSHARED") #FOLDER_UNSHARED | @as("FOLDER_SHARED") #FOLDER_SHARED | @as("FOLDER_RESTORED") #FOLDER_RESTORED | @as("FOLDER_RECYCLED") #FOLDER_RECYCLED | @as("FOLDER_RENAMED") #FOLDER_RENAMED | @as("FOLDER_DELETED") #FOLDER_DELETED | @as("FOLDER_CREATED") #FOLDER_CREATED | @as("DOCUMENT_ANNOTATION_DELETED") #DOCUMENT_ANNOTATION_DELETED | @as("DOCUMENT_ANNOTATION_ADDED") #DOCUMENT_ANNOTATION_ADDED | @as("DOCUMENT_COMMENT_DELETED") #DOCUMENT_COMMENT_DELETED | @as("DOCUMENT_COMMENT_ADDED") #DOCUMENT_COMMENT_ADDED | @as("DOCUMENT_MOVED") #DOCUMENT_MOVED | @as("DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED") #DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED | @as("DOCUMENT_SHAREABLE_LINK_REMOVED") #DOCUMENT_SHAREABLE_LINK_REMOVED | @as("DOCUMENT_SHAREABLE_LINK_CREATED") #DOCUMENT_SHAREABLE_LINK_CREATED | @as("DOCUMENT_SHARE_PERMISSION_CHANGED") #DOCUMENT_SHARE_PERMISSION_CHANGED | @as("DOCUMENT_UNSHARED") #DOCUMENT_UNSHARED | @as("DOCUMENT_SHARED") #DOCUMENT_SHARED | @as("DOCUMENT_REVERTED") #DOCUMENT_REVERTED | @as("DOCUMENT_RESTORED") #DOCUMENT_RESTORED | @as("DOCUMENT_RECYCLED") #DOCUMENT_RECYCLED | @as("DOCUMENT_VERSION_DOWNLOADED") #DOCUMENT_VERSION_DOWNLOADED | @as("DOCUMENT_VERSION_VIEWED") #DOCUMENT_VERSION_VIEWED | @as("DOCUMENT_VERSION_DELETED") #DOCUMENT_VERSION_DELETED | @as("DOCUMENT_VERSION_UPLOADED") #DOCUMENT_VERSION_UPLOADED | @as("DOCUMENT_RENAMED") #DOCUMENT_RENAMED | @as("DOCUMENT_CHECKED_OUT") #DOCUMENT_CHECKED_OUT | @as("DOCUMENT_CHECKED_IN") #DOCUMENT_CHECKED_IN]
type activityNamesFilterType = string
type userMetadata = {
@as("EmailAddress") emailAddress: option<emailAddressType>,
  @as("Surname") surname: option<userAttributeValueType>,
  @as("GivenName") givenName: option<userAttributeValueType>,
  @as("Username") username: option<usernameType>,
  @as("Id") id: option<idType>
}
type subscription = {
@as("Protocol") protocol: option<subscriptionProtocolType>,
  @as("EndPoint") endPoint: option<subscriptionEndPointType>,
  @as("SubscriptionId") subscriptionId: option<idType>
}
type storageRuleType = {
@as("StorageType") storageType: option<storageType>,
  @as("StorageAllocatedInBytes") storageAllocatedInBytes: option<positiveSizeType>
}
type signedHeaderMap = Js.Dict.t<headerValueType>
type sharedLabels = array<sharedLabel>
type shareResult = {
@as("StatusMessage") statusMessage: option<messageType>,
  @as("ShareId") shareId: option<resourceIdType>,
  @as("Status") status: option<shareStatusType>,
  @as("Role") role: option<roleType>,
  @as("InviteePrincipalId") inviteePrincipalId: option<idType>,
  @as("PrincipalId") principalId: option<idType>
}
type sharePrincipal = {
@as("Role") role: roleType,
  @as("Type") type_: principalType,
  @as("Id") id: idType
}
type resourcePathComponent = {
@as("Name") name: option<resourceNameType>,
  @as("Id") id: option<idType>
}
type permissionInfo = {
@as("Type") type_: option<rolePermissionType>,
  @as("Role") role: option<roleType>
}
type notificationOptions = {
@as("EmailMessage") emailMessage: option<messageType>,
  @as("SendEmail") sendEmail: option<booleanType>
}
type groupMetadata = {
@as("Name") name: option<groupNameType>,
  @as("Id") id: option<idType>
}
type entityIdList = array<idType>
type documentThumbnailUrlMap = Js.Dict.t<urlType>
type documentSourceUrlMap = Js.Dict.t<urlType>
type customMetadataMap = Js.Dict.t<customMetadataValueType>
type customMetadataKeyList = array<customMetadataKeyType>
type userStorageMetadata = {
@as("StorageRule") storageRule: option<storageRuleType>,
  @as("StorageUtilizedInBytes") storageUtilizedInBytes: option<sizeType>
}
type userMetadataList = array<userMetadata>
type uploadMetadata = {
@as("SignedHeaders") signedHeaders: option<signedHeaderMap>,
  @as("UploadUrl") uploadUrl: option<urlType>
}
type subscriptionList = array<subscription>
type shareResultsList = array<shareResult>
type sharePrincipalList = array<sharePrincipal>
type resourcePathComponentList = array<resourcePathComponent>
type resourceMetadata = {
@as("ParentId") parentId: option<resourceIdType>,
  @as("Owner") owner: option<userMetadata>,
  @as("VersionId") versionId: option<documentVersionIdType>,
  @as("Id") id: option<resourceIdType>,
  @as("OriginalName") originalName: option<resourceNameType>,
  @as("Name") name: option<resourceNameType>,
  @as("Type") type_: option<resourceType>
}
type permissionInfoList = array<permissionInfo>
type groupMetadataList = array<groupMetadata>
type folderMetadata = {
@as("LatestVersionSize") latestVersionSize: option<sizeType>,
  @as("Size") size: option<sizeType>,
  @as("Labels") labels: option<sharedLabels>,
  @as("Signature") signature: option<hashType>,
  @as("ResourceState") resourceState: option<resourceStateType>,
  @as("ModifiedTimestamp") modifiedTimestamp: option<timestampType>,
  @as("CreatedTimestamp") createdTimestamp: option<timestampType>,
  @as("ParentFolderId") parentFolderId: option<resourceIdType>,
  @as("CreatorId") creatorId: option<idType>,
  @as("Name") name: option<resourceNameType>,
  @as("Id") id: option<resourceIdType>
}
type documentVersionMetadata = {
@as("Source") source: option<documentSourceUrlMap>,
  @as("Thumbnail") thumbnail: option<documentThumbnailUrlMap>,
  @as("CreatorId") creatorId: option<idType>,
  @as("ContentModifiedTimestamp") contentModifiedTimestamp: option<timestampType>,
  @as("ContentCreatedTimestamp") contentCreatedTimestamp: option<timestampType>,
  @as("ModifiedTimestamp") modifiedTimestamp: option<timestampType>,
  @as("CreatedTimestamp") createdTimestamp: option<timestampType>,
  @as("Status") status: option<documentStatusType>,
  @as("Signature") signature: option<hashType>,
  @as("Size") size: option<sizeType>,
  @as("ContentType") contentType: option<documentContentType>,
  @as("Name") name: option<resourceNameType>,
  @as("Id") id: option<documentVersionIdType>
}
type user = {
@as("Storage") storage: option<userStorageMetadata>,
  @as("Locale") locale: option<localeType>,
  @as("TimeZoneId") timeZoneId: option<timeZoneIdType>,
  @as("ModifiedTimestamp") modifiedTimestamp: option<timestampType>,
  @as("CreatedTimestamp") createdTimestamp: option<timestampType>,
  @as("Type") type_: option<userType>,
  @as("Status") status: option<userStatusType>,
  @as("RecycleBinFolderId") recycleBinFolderId: option<resourceIdType>,
  @as("RootFolderId") rootFolderId: option<resourceIdType>,
  @as("OrganizationId") organizationId: option<idType>,
  @as("Surname") surname: option<userAttributeValueType>,
  @as("GivenName") givenName: option<userAttributeValueType>,
  @as("EmailAddress") emailAddress: option<emailAddressType>,
  @as("Username") username: option<usernameType>,
  @as("Id") id: option<idType>
}
type resourcePath = {
@as("Components") components: option<resourcePathComponentList>
}
type principal = {
@as("Roles") roles: option<permissionInfoList>,
  @as("Type") type_: option<principalType>,
  @as("Id") id: option<idType>
}
type participants = {
@as("Groups") groups: option<groupMetadataList>,
  @as("Users") users: option<userMetadataList>
}
type folderMetadataList = array<folderMetadata>
type documentVersionMetadataList = array<documentVersionMetadata>
type documentMetadata = {
@as("Labels") labels: option<sharedLabels>,
  @as("ResourceState") resourceState: option<resourceStateType>,
  @as("LatestVersionMetadata") latestVersionMetadata: option<documentVersionMetadata>,
  @as("ModifiedTimestamp") modifiedTimestamp: option<timestampType>,
  @as("CreatedTimestamp") createdTimestamp: option<timestampType>,
  @as("ParentFolderId") parentFolderId: option<resourceIdType>,
  @as("CreatorId") creatorId: option<idType>,
  @as("Id") id: option<resourceIdType>
}
type principalList = array<principal>
type organizationUserList = array<user>
type documentMetadataList = array<documentMetadata>
type commentMetadata = {
@as("RecipientId") recipientId: option<idType>,
  @as("CommentStatus") commentStatus: option<commentStatusType>,
  @as("CreatedTimestamp") createdTimestamp: option<timestampType>,
  @as("Contributor") contributor: option<user>,
  @as("CommentId") commentId: option<commentIdType>
}
type comment = {
@as("RecipientId") recipientId: option<idType>,
  @as("Visibility") visibility: option<commentVisibilityType>,
  @as("Status") status: option<commentStatusType>,
  @as("CreatedTimestamp") createdTimestamp: option<timestampType>,
  @as("Contributor") contributor: option<user>,
  @as("Text") text: option<commentTextType>,
  @as("ThreadId") threadId: option<commentIdType>,
  @as("ParentId") parentId: option<commentIdType>,
  @as("CommentId") commentId: commentIdType
}
type commentList = array<comment>
type activity = {
@as("CommentMetadata") commentMetadata: option<commentMetadata>,
  @as("OriginalParent") originalParent: option<resourceMetadata>,
  @as("ResourceMetadata") resourceMetadata: option<resourceMetadata>,
  @as("Participants") participants: option<participants>,
  @as("Initiator") initiator: option<userMetadata>,
  @as("OrganizationId") organizationId: option<idType>,
  @as("IsIndirectActivity") isIndirectActivity: option<booleanType>,
  @as("TimeStamp") timeStamp: option<timestampType>,
  @as("Type") type_: option<activityType>
}
type userActivities = array<activity>

module RemoveResourcePermission = {
  type t;
  type request = {
@as("PrincipalType") principalType: option<principalType>,
  @as("PrincipalId") principalId: idType,
  @as("ResourceId") resourceId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "RemoveResourcePermissionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module RemoveAllResourcePermissions = {
  type t;
  type request = {
@as("ResourceId") resourceId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "RemoveAllResourcePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateFolder = {
  type t;
  type request = {
@as("ResourceState") resourceState: option<resourceStateType>,
  @as("ParentFolderId") parentFolderId: option<resourceIdType>,
  @as("Name") name: option<resourceNameType>,
  @as("FolderId") folderId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateDocumentVersion = {
  type t;
  type request = {
@as("VersionStatus") versionStatus: option<documentVersionStatus>,
  @as("VersionId") versionId: documentVersionIdType,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateDocumentVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateDocument = {
  type t;
  type request = {
@as("ResourceState") resourceState: option<resourceStateType>,
  @as("ParentFolderId") parentFolderId: option<resourceIdType>,
  @as("Name") name: option<resourceNameType>,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateDocumentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserId") userId: idType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteNotificationSubscription = {
  type t;
  type request = {
@as("OrganizationId") organizationId: idType,
  @as("SubscriptionId") subscriptionId: idType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteNotificationSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteLabels = {
  type t;
  type request = {
@as("DeleteAll") deleteAll: option<booleanType>,
  @as("Labels") labels: option<sharedLabels>,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>,
  @as("ResourceId") resourceId: resourceIdType
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteLabelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFolderContents = {
  type t;
  type request = {
@as("FolderId") folderId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteFolderContentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteFolder = {
  type t;
  type request = {
@as("FolderId") folderId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteDocument = {
  type t;
  type request = {
@as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteDocumentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomMetadata = {
  type t;
  type request = {
@as("DeleteAll") deleteAll: option<booleanType>,
  @as("Keys") keys: option<customMetadataKeyList>,
  @as("VersionId") versionId: option<documentVersionIdType>,
  @as("ResourceId") resourceId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteCustomMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteComment = {
  type t;
  type request = {
@as("CommentId") commentId: commentIdType,
  @as("VersionId") versionId: documentVersionIdType,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteCommentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeactivateUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>,
  @as("UserId") userId: idType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeactivateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module CreateNotificationSubscription = {
  type t;
  type request = {
@as("SubscriptionType") subscriptionType: subscriptionType,
  @as("Protocol") protocol: subscriptionProtocolType,
  @as("Endpoint") endpoint: subscriptionEndPointType,
  @as("OrganizationId") organizationId: idType
}
  type response = {
@as("Subscription") subscription: option<subscription>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateNotificationSubscriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLabels = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>,
  @as("Labels") labels: sharedLabels,
  @as("ResourceId") resourceId: resourceIdType
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateLabelsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCustomMetadata = {
  type t;
  type request = {
@as("CustomMetadata") customMetadata: customMetadataMap,
  @as("VersionId") versionId: option<documentVersionIdType>,
  @as("ResourceId") resourceId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateCustomMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AbortDocumentVersionUpload = {
  type t;
  type request = {
@as("VersionId") versionId: documentVersionIdType,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "AbortDocumentVersionUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module GetFolder = {
  type t;
  type request = {
@as("IncludeCustomMetadata") includeCustomMetadata: option<booleanType>,
  @as("FolderId") folderId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("CustomMetadata") customMetadata: option<customMetadataMap>,
  @as("Metadata") metadata: option<folderMetadata>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDocumentVersion = {
  type t;
  type request = {
@as("IncludeCustomMetadata") includeCustomMetadata: option<booleanType>,
  @as("Fields") fields: option<fieldNamesType>,
  @as("VersionId") versionId: documentVersionIdType,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("CustomMetadata") customMetadata: option<customMetadataMap>,
  @as("Metadata") metadata: option<documentVersionMetadata>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetDocumentVersionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationSubscriptions = {
  type t;
  type request = {
@as("Limit") limit: option<limitType>,
  @as("Marker") marker: option<pageMarkerType>,
  @as("OrganizationId") organizationId: idType
}
  type response = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Subscriptions") subscriptions: option<subscriptionList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeNotificationSubscriptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeGroups = {
  type t;
  type request = {
@as("Limit") limit: option<positiveIntegerType>,
  @as("Marker") marker: option<markerType>,
  @as("OrganizationId") organizationId: option<idType>,
  @as("SearchQuery") searchQuery: searchQueryType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<markerType>,
  @as("Groups") groups: option<groupMetadataList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeGroupsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFolder = {
  type t;
  type request = {
@as("ParentFolderId") parentFolderId: resourceIdType,
  @as("Name") name: option<resourceNameType>,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Metadata") metadata: option<folderMetadata>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AddResourcePermissions = {
  type t;
  type request = {
@as("NotificationOptions") notificationOptions: option<notificationOptions>,
  @as("Principals") principals: sharePrincipalList,
  @as("ResourceId") resourceId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("ShareResults") shareResults: option<shareResultsList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "AddResourcePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("GrantPoweruserPrivileges") grantPoweruserPrivileges: option<booleanEnumType>,
  @as("Locale") locale: option<localeType>,
  @as("TimeZoneId") timeZoneId: option<timeZoneIdType>,
  @as("StorageRule") storageRule: option<storageRuleType>,
  @as("Type") type_: option<userType>,
  @as("Surname") surname: option<userAttributeValueType>,
  @as("GivenName") givenName: option<userAttributeValueType>,
  @as("UserId") userId: idType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("User") user: option<user>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InitiateDocumentVersionUpload = {
  type t;
  type request = {
@as("ParentFolderId") parentFolderId: resourceIdType,
  @as("DocumentSizeInBytes") documentSizeInBytes: option<sizeType>,
  @as("ContentType") contentType: option<documentContentType>,
  @as("ContentModifiedTimestamp") contentModifiedTimestamp: option<timestampType>,
  @as("ContentCreatedTimestamp") contentCreatedTimestamp: option<timestampType>,
  @as("Name") name: option<resourceNameType>,
  @as("Id") id: option<resourceIdType>,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("UploadMetadata") uploadMetadata: option<uploadMetadata>,
  @as("Metadata") metadata: option<documentMetadata>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "InitiateDocumentVersionUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFolderPath = {
  type t;
  type request = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Fields") fields: option<fieldNamesType>,
  @as("Limit") limit: option<limitType>,
  @as("FolderId") folderId: idType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Path") path: option<resourcePath>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetFolderPathCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDocumentPath = {
  type t;
  type request = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Fields") fields: option<fieldNamesType>,
  @as("Limit") limit: option<limitType>,
  @as("DocumentId") documentId: idType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Path") path: option<resourcePath>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetDocumentPathCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDocument = {
  type t;
  type request = {
@as("IncludeCustomMetadata") includeCustomMetadata: option<booleanType>,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("CustomMetadata") customMetadata: option<customMetadataMap>,
  @as("Metadata") metadata: option<documentMetadata>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetDocumentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCurrentUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("User") user: option<user>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetCurrentUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRootFolders = {
  type t;
  type request = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Limit") limit: option<limitType>,
  @as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Folders") folders: option<folderMetadataList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeRootFoldersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDocumentVersions = {
  type t;
  type request = {
@as("Fields") fields: option<fieldNamesType>,
  @as("Include") include_: option<fieldNamesType>,
  @as("Limit") limit: option<limitType>,
  @as("Marker") marker: option<pageMarkerType>,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<pageMarkerType>,
  @as("DocumentVersions") documentVersions: option<documentVersionMetadataList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeDocumentVersionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>,
  @as("StorageRule") storageRule: option<storageRuleType>,
  @as("TimeZoneId") timeZoneId: option<timeZoneIdType>,
  @as("Password") password: passwordType,
  @as("Surname") surname: userAttributeValueType,
  @as("GivenName") givenName: userAttributeValueType,
  @as("EmailAddress") emailAddress: option<emailAddressType>,
  @as("Username") username: usernameType,
  @as("OrganizationId") organizationId: option<idType>
}
  type response = {
@as("User") user: option<user>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ActivateUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>,
  @as("UserId") userId: idType
}
  type response = {
@as("User") user: option<user>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "ActivateUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetResources = {
  type t;
  type request = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Limit") limit: option<limitType>,
  @as("CollectionType") collectionType: option<resourceCollectionType>,
  @as("UserId") userId: option<idType>,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Documents") documents: option<documentMetadataList>,
  @as("Folders") folders: option<folderMetadataList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetResourcesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeUsers = {
  type t;
  type request = {
@as("Fields") fields: option<fieldNamesType>,
  @as("Limit") limit: option<limitType>,
  @as("Marker") marker: option<pageMarkerType>,
  @as("Sort") sort: option<userSortType>,
  @as("Order") order: option<orderType>,
  @as("Include") include_: option<userFilterType>,
  @as("Query") query: option<searchQueryType>,
  @as("UserIds") userIds: option<userIdsType>,
  @as("OrganizationId") organizationId: option<idType>,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<pageMarkerType>,
  @as("TotalNumberOfUsers") totalNumberOfUsers: option<sizeType>,
  @as("Users") users: option<organizationUserList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeUsersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeResourcePermissions = {
  type t;
  type request = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Limit") limit: option<limitType>,
  @as("PrincipalId") principalId: option<idType>,
  @as("ResourceId") resourceId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Principals") principals: option<principalList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeResourcePermissionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFolderContents = {
  type t;
  type request = {
@as("Include") include_: option<fieldNamesType>,
  @as("Type") type_: option<folderContentType>,
  @as("Marker") marker: option<pageMarkerType>,
  @as("Limit") limit: option<limitType>,
  @as("Order") order: option<orderType>,
  @as("Sort") sort: option<resourceSortType>,
  @as("FolderId") folderId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<pageMarkerType>,
  @as("Documents") documents: option<documentMetadataList>,
  @as("Folders") folders: option<folderMetadataList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeFolderContentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateComment = {
  type t;
  type request = {
@as("NotifyCollaborators") notifyCollaborators: option<booleanType>,
  @as("Visibility") visibility: option<commentVisibilityType>,
  @as("Text") text: commentTextType,
  @as("ThreadId") threadId: option<commentIdType>,
  @as("ParentId") parentId: option<commentIdType>,
  @as("VersionId") versionId: documentVersionIdType,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Comment") comment: option<comment>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateCommentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeComments = {
  type t;
  type request = {
@as("Marker") marker: option<markerType>,
  @as("Limit") limit: option<limitType>,
  @as("VersionId") versionId: documentVersionIdType,
  @as("DocumentId") documentId: resourceIdType,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<markerType>,
  @as("Comments") comments: option<commentList>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeCommentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeActivities = {
  type t;
  type request = {
@as("Marker") marker: option<markerType>,
  @as("Limit") limit: option<limitType>,
  @as("IncludeIndirectActivities") includeIndirectActivities: option<booleanType>,
  @as("UserId") userId: option<idType>,
  @as("ResourceId") resourceId: option<idType>,
  @as("ActivityTypes") activityTypes: option<activityNamesFilterType>,
  @as("OrganizationId") organizationId: option<idType>,
  @as("EndTime") endTime: option<timestampType>,
  @as("StartTime") startTime: option<timestampType>,
  @as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: option<markerType>,
  @as("UserActivities") userActivities: option<userActivities>
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeActivitiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
