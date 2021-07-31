type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type sizeType = float;
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
type positiveSizeType = float;
type positiveIntegerType = int;
type passwordType = string
type pageMarkerType = string
type orderType = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type messageType = string
type markerType = string
type localeType = [@as("default") #default | @as("pt_BR") #pt_BR | @as("zh_TW") #zh_TW | @as("zh_CN") #zh_CN | @as("ru") #ru | @as("ja") #ja | @as("es") #es | @as("de") #de | @as("ko") #ko | @as("fr") #fr | @as("en") #en]
type limitType = int;
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
type booleanType = bool;
type booleanEnumType = [@as("FALSE") #FALSE | @as("TRUE") #TRUE]
type authenticationHeaderType = string
type activityType = [@as("FOLDER_MOVED") #FOLDER_MOVED | @as("FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED") #FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED | @as("FOLDER_SHAREABLE_LINK_REMOVED") #FOLDER_SHAREABLE_LINK_REMOVED | @as("FOLDER_SHAREABLE_LINK_CREATED") #FOLDER_SHAREABLE_LINK_CREATED | @as("FOLDER_SHARE_PERMISSION_CHANGED") #FOLDER_SHARE_PERMISSION_CHANGED | @as("FOLDER_UNSHARED") #FOLDER_UNSHARED | @as("FOLDER_SHARED") #FOLDER_SHARED | @as("FOLDER_RESTORED") #FOLDER_RESTORED | @as("FOLDER_RECYCLED") #FOLDER_RECYCLED | @as("FOLDER_RENAMED") #FOLDER_RENAMED | @as("FOLDER_DELETED") #FOLDER_DELETED | @as("FOLDER_CREATED") #FOLDER_CREATED | @as("DOCUMENT_ANNOTATION_DELETED") #DOCUMENT_ANNOTATION_DELETED | @as("DOCUMENT_ANNOTATION_ADDED") #DOCUMENT_ANNOTATION_ADDED | @as("DOCUMENT_COMMENT_DELETED") #DOCUMENT_COMMENT_DELETED | @as("DOCUMENT_COMMENT_ADDED") #DOCUMENT_COMMENT_ADDED | @as("DOCUMENT_MOVED") #DOCUMENT_MOVED | @as("DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED") #DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED | @as("DOCUMENT_SHAREABLE_LINK_REMOVED") #DOCUMENT_SHAREABLE_LINK_REMOVED | @as("DOCUMENT_SHAREABLE_LINK_CREATED") #DOCUMENT_SHAREABLE_LINK_CREATED | @as("DOCUMENT_SHARE_PERMISSION_CHANGED") #DOCUMENT_SHARE_PERMISSION_CHANGED | @as("DOCUMENT_UNSHARED") #DOCUMENT_UNSHARED | @as("DOCUMENT_SHARED") #DOCUMENT_SHARED | @as("DOCUMENT_REVERTED") #DOCUMENT_REVERTED | @as("DOCUMENT_RESTORED") #DOCUMENT_RESTORED | @as("DOCUMENT_RECYCLED") #DOCUMENT_RECYCLED | @as("DOCUMENT_VERSION_DOWNLOADED") #DOCUMENT_VERSION_DOWNLOADED | @as("DOCUMENT_VERSION_VIEWED") #DOCUMENT_VERSION_VIEWED | @as("DOCUMENT_VERSION_DELETED") #DOCUMENT_VERSION_DELETED | @as("DOCUMENT_VERSION_UPLOADED") #DOCUMENT_VERSION_UPLOADED | @as("DOCUMENT_RENAMED") #DOCUMENT_RENAMED | @as("DOCUMENT_CHECKED_OUT") #DOCUMENT_CHECKED_OUT | @as("DOCUMENT_CHECKED_IN") #DOCUMENT_CHECKED_IN]
type activityNamesFilterType = string
type userMetadata = {
@as("EmailAddress") emailAddress: emailAddressType,
@as("Surname") surname: userAttributeValueType,
@as("GivenName") givenName: userAttributeValueType,
@as("Username") username: usernameType,
@as("Id") id: idType
}
type subscription = {
@as("Protocol") protocol: subscriptionProtocolType,
@as("EndPoint") endPoint: subscriptionEndPointType,
@as("SubscriptionId") subscriptionId: idType
}
type storageRuleType = {
@as("StorageType") storageType: storageType,
@as("StorageAllocatedInBytes") storageAllocatedInBytes: positiveSizeType
}
type signedHeaderMap = Js.Dict.t< headerValueType>
type sharedLabels = array<sharedLabel>
type shareResult = {
@as("StatusMessage") statusMessage: messageType,
@as("ShareId") shareId: resourceIdType,
@as("Status") status: shareStatusType,
@as("Role") role: roleType,
@as("InviteePrincipalId") inviteePrincipalId: idType,
@as("PrincipalId") principalId: idType
}
type sharePrincipal = {
@as("Role") role: option<roleType>,
@as("Type") type_: option<principalType>,
@as("Id") id: option<idType>
}
type resourcePathComponent = {
@as("Name") name: resourceNameType,
@as("Id") id: idType
}
type permissionInfo = {
@as("Type") type_: rolePermissionType,
@as("Role") role: roleType
}
type notificationOptions = {
@as("EmailMessage") emailMessage: messageType,
@as("SendEmail") sendEmail: booleanType
}
type groupMetadata = {
@as("Name") name: groupNameType,
@as("Id") id: idType
}
type entityIdList = array<idType>
type documentThumbnailUrlMap = Js.Dict.t< urlType>
type documentSourceUrlMap = Js.Dict.t< urlType>
type customMetadataMap = Js.Dict.t< customMetadataValueType>
type customMetadataKeyList = array<customMetadataKeyType>
type userStorageMetadata = {
@as("StorageRule") storageRule: storageRuleType,
@as("StorageUtilizedInBytes") storageUtilizedInBytes: sizeType
}
type userMetadataList = array<userMetadata>
type uploadMetadata = {
@as("SignedHeaders") signedHeaders: signedHeaderMap,
@as("UploadUrl") uploadUrl: urlType
}
type subscriptionList = array<subscription>
type shareResultsList = array<shareResult>
type sharePrincipalList = array<sharePrincipal>
type resourcePathComponentList = array<resourcePathComponent>
type resourceMetadata = {
@as("ParentId") parentId: resourceIdType,
@as("Owner") owner: userMetadata,
@as("VersionId") versionId: documentVersionIdType,
@as("Id") id: resourceIdType,
@as("OriginalName") originalName: resourceNameType,
@as("Name") name: resourceNameType,
@as("Type") type_: resourceType
}
type permissionInfoList = array<permissionInfo>
type groupMetadataList = array<groupMetadata>
type folderMetadata = {
@as("LatestVersionSize") latestVersionSize: sizeType,
@as("Size") size: sizeType,
@as("Labels") labels: sharedLabels,
@as("Signature") signature: hashType,
@as("ResourceState") resourceState: resourceStateType,
@as("ModifiedTimestamp") modifiedTimestamp: timestampType,
@as("CreatedTimestamp") createdTimestamp: timestampType,
@as("ParentFolderId") parentFolderId: resourceIdType,
@as("CreatorId") creatorId: idType,
@as("Name") name: resourceNameType,
@as("Id") id: resourceIdType
}
type documentVersionMetadata = {
@as("Source") source: documentSourceUrlMap,
@as("Thumbnail") thumbnail: documentThumbnailUrlMap,
@as("CreatorId") creatorId: idType,
@as("ContentModifiedTimestamp") contentModifiedTimestamp: timestampType,
@as("ContentCreatedTimestamp") contentCreatedTimestamp: timestampType,
@as("ModifiedTimestamp") modifiedTimestamp: timestampType,
@as("CreatedTimestamp") createdTimestamp: timestampType,
@as("Status") status: documentStatusType,
@as("Signature") signature: hashType,
@as("Size") size: sizeType,
@as("ContentType") contentType: documentContentType,
@as("Name") name: resourceNameType,
@as("Id") id: documentVersionIdType
}
type user = {
@as("Storage") storage: userStorageMetadata,
@as("Locale") locale: localeType,
@as("TimeZoneId") timeZoneId: timeZoneIdType,
@as("ModifiedTimestamp") modifiedTimestamp: timestampType,
@as("CreatedTimestamp") createdTimestamp: timestampType,
@as("Type") type_: userType,
@as("Status") status: userStatusType,
@as("RecycleBinFolderId") recycleBinFolderId: resourceIdType,
@as("RootFolderId") rootFolderId: resourceIdType,
@as("OrganizationId") organizationId: idType,
@as("Surname") surname: userAttributeValueType,
@as("GivenName") givenName: userAttributeValueType,
@as("EmailAddress") emailAddress: emailAddressType,
@as("Username") username: usernameType,
@as("Id") id: idType
}
type resourcePath = {
@as("Components") components: resourcePathComponentList
}
type principal = {
@as("Roles") roles: permissionInfoList,
@as("Type") type_: principalType,
@as("Id") id: idType
}
type participants = {
@as("Groups") groups: groupMetadataList,
@as("Users") users: userMetadataList
}
type folderMetadataList = array<folderMetadata>
type documentVersionMetadataList = array<documentVersionMetadata>
type documentMetadata = {
@as("Labels") labels: sharedLabels,
@as("ResourceState") resourceState: resourceStateType,
@as("LatestVersionMetadata") latestVersionMetadata: documentVersionMetadata,
@as("ModifiedTimestamp") modifiedTimestamp: timestampType,
@as("CreatedTimestamp") createdTimestamp: timestampType,
@as("ParentFolderId") parentFolderId: resourceIdType,
@as("CreatorId") creatorId: idType,
@as("Id") id: resourceIdType
}
type principalList = array<principal>
type organizationUserList = array<user>
type documentMetadataList = array<documentMetadata>
type commentMetadata = {
@as("RecipientId") recipientId: idType,
@as("CommentStatus") commentStatus: commentStatusType,
@as("CreatedTimestamp") createdTimestamp: timestampType,
@as("Contributor") contributor: user,
@as("CommentId") commentId: commentIdType
}
type comment = {
@as("RecipientId") recipientId: idType,
@as("Visibility") visibility: commentVisibilityType,
@as("Status") status: commentStatusType,
@as("CreatedTimestamp") createdTimestamp: timestampType,
@as("Contributor") contributor: user,
@as("Text") text: commentTextType,
@as("ThreadId") threadId: commentIdType,
@as("ParentId") parentId: commentIdType,
@as("CommentId") commentId: option<commentIdType>
}
type commentList = array<comment>
type activity = {
@as("CommentMetadata") commentMetadata: commentMetadata,
@as("OriginalParent") originalParent: resourceMetadata,
@as("ResourceMetadata") resourceMetadata: resourceMetadata,
@as("Participants") participants: participants,
@as("Initiator") initiator: userMetadata,
@as("OrganizationId") organizationId: idType,
@as("IsIndirectActivity") isIndirectActivity: booleanType,
@as("TimeStamp") timeStamp: timestampType,
@as("Type") type_: activityType
}
type userActivities = array<activity>
type clientType;
@module("@aws-sdk/client-workdocs") @new external createClient: unit => clientType = "WorkDocsClient";
module RemoveResourcePermission = {
  type t;
  type request = {
@as("PrincipalType") principalType: principalType,
@as("PrincipalId") principalId: option<idType>,
@as("ResourceId") resourceId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "RemoveResourcePermissionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module RemoveAllResourcePermissions = {
  type t;
  type request = {
@as("ResourceId") resourceId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "RemoveAllResourcePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateFolder = {
  type t;
  type request = {
@as("ResourceState") resourceState: resourceStateType,
@as("ParentFolderId") parentFolderId: resourceIdType,
@as("Name") name: resourceNameType,
@as("FolderId") folderId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDocumentVersion = {
  type t;
  type request = {
@as("VersionStatus") versionStatus: documentVersionStatus,
@as("VersionId") versionId: option<documentVersionIdType>,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateDocumentVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDocument = {
  type t;
  type request = {
@as("ResourceState") resourceState: resourceStateType,
@as("ParentFolderId") parentFolderId: resourceIdType,
@as("Name") name: resourceNameType,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateDocumentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteUser = {
  type t;
  type request = {
@as("UserId") userId: option<idType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteNotificationSubscription = {
  type t;
  type request = {
@as("OrganizationId") organizationId: option<idType>,
@as("SubscriptionId") subscriptionId: option<idType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteNotificationSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteLabels = {
  type t;
  type request = {
@as("DeleteAll") deleteAll: booleanType,
@as("Labels") labels: sharedLabels,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType,
@as("ResourceId") resourceId: option<resourceIdType>
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteLabelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFolderContents = {
  type t;
  type request = {
@as("FolderId") folderId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteFolderContentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteFolder = {
  type t;
  type request = {
@as("FolderId") folderId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteDocument = {
  type t;
  type request = {
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteDocumentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteCustomMetadata = {
  type t;
  type request = {
@as("DeleteAll") deleteAll: booleanType,
@as("Keys") keys: customMetadataKeyList,
@as("VersionId") versionId: documentVersionIdType,
@as("ResourceId") resourceId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteCustomMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteComment = {
  type t;
  type request = {
@as("CommentId") commentId: option<commentIdType>,
@as("VersionId") versionId: option<documentVersionIdType>,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeleteCommentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeactivateUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: authenticationHeaderType,
@as("UserId") userId: option<idType>
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DeactivateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateNotificationSubscription = {
  type t;
  type request = {
@as("SubscriptionType") subscriptionType: option<subscriptionType>,
@as("Protocol") protocol: option<subscriptionProtocolType>,
@as("Endpoint") endpoint: option<subscriptionEndPointType>,
@as("OrganizationId") organizationId: option<idType>
}
  type response = {
@as("Subscription") subscription: subscription
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateNotificationSubscriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLabels = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: authenticationHeaderType,
@as("Labels") labels: option<sharedLabels>,
@as("ResourceId") resourceId: option<resourceIdType>
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateLabelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCustomMetadata = {
  type t;
  type request = {
@as("CustomMetadata") customMetadata: option<customMetadataMap>,
@as("VersionId") versionId: documentVersionIdType,
@as("ResourceId") resourceId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = unit
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateCustomMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AbortDocumentVersionUpload = {
  type t;
  type request = {
@as("VersionId") versionId: option<documentVersionIdType>,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "AbortDocumentVersionUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module GetFolder = {
  type t;
  type request = {
@as("IncludeCustomMetadata") includeCustomMetadata: booleanType,
@as("FolderId") folderId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("CustomMetadata") customMetadata: customMetadataMap,
@as("Metadata") metadata: folderMetadata
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentVersion = {
  type t;
  type request = {
@as("IncludeCustomMetadata") includeCustomMetadata: booleanType,
@as("Fields") fields: fieldNamesType,
@as("VersionId") versionId: option<documentVersionIdType>,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("CustomMetadata") customMetadata: customMetadataMap,
@as("Metadata") metadata: documentVersionMetadata
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetDocumentVersionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeNotificationSubscriptions = {
  type t;
  type request = {
@as("Limit") limit: limitType,
@as("Marker") marker: pageMarkerType,
@as("OrganizationId") organizationId: option<idType>
}
  type response = {
@as("Marker") marker: pageMarkerType,
@as("Subscriptions") subscriptions: subscriptionList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeNotificationSubscriptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGroups = {
  type t;
  type request = {
@as("Limit") limit: positiveIntegerType,
@as("Marker") marker: markerType,
@as("OrganizationId") organizationId: idType,
@as("SearchQuery") searchQuery: option<searchQueryType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: markerType,
@as("Groups") groups: groupMetadataList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeGroupsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFolder = {
  type t;
  type request = {
@as("ParentFolderId") parentFolderId: option<resourceIdType>,
@as("Name") name: resourceNameType,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Metadata") metadata: folderMetadata
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddResourcePermissions = {
  type t;
  type request = {
@as("NotificationOptions") notificationOptions: notificationOptions,
@as("Principals") principals: option<sharePrincipalList>,
@as("ResourceId") resourceId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("ShareResults") shareResults: shareResultsList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "AddResourcePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUser = {
  type t;
  type request = {
@as("GrantPoweruserPrivileges") grantPoweruserPrivileges: booleanEnumType,
@as("Locale") locale: localeType,
@as("TimeZoneId") timeZoneId: timeZoneIdType,
@as("StorageRule") storageRule: storageRuleType,
@as("Type") type_: userType,
@as("Surname") surname: userAttributeValueType,
@as("GivenName") givenName: userAttributeValueType,
@as("UserId") userId: option<idType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "UpdateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InitiateDocumentVersionUpload = {
  type t;
  type request = {
@as("ParentFolderId") parentFolderId: option<resourceIdType>,
@as("DocumentSizeInBytes") documentSizeInBytes: sizeType,
@as("ContentType") contentType: documentContentType,
@as("ContentModifiedTimestamp") contentModifiedTimestamp: timestampType,
@as("ContentCreatedTimestamp") contentCreatedTimestamp: timestampType,
@as("Name") name: resourceNameType,
@as("Id") id: resourceIdType,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("UploadMetadata") uploadMetadata: uploadMetadata,
@as("Metadata") metadata: documentMetadata
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "InitiateDocumentVersionUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFolderPath = {
  type t;
  type request = {
@as("Marker") marker: pageMarkerType,
@as("Fields") fields: fieldNamesType,
@as("Limit") limit: limitType,
@as("FolderId") folderId: option<idType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Path") path: resourcePath
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetFolderPathCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocumentPath = {
  type t;
  type request = {
@as("Marker") marker: pageMarkerType,
@as("Fields") fields: fieldNamesType,
@as("Limit") limit: limitType,
@as("DocumentId") documentId: option<idType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Path") path: resourcePath
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetDocumentPathCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDocument = {
  type t;
  type request = {
@as("IncludeCustomMetadata") includeCustomMetadata: booleanType,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("CustomMetadata") customMetadata: customMetadataMap,
@as("Metadata") metadata: documentMetadata
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetDocumentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCurrentUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetCurrentUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRootFolders = {
  type t;
  type request = {
@as("Marker") marker: pageMarkerType,
@as("Limit") limit: limitType,
@as("AuthenticationToken") authenticationToken: option<authenticationHeaderType>
}
  type response = {
@as("Marker") marker: pageMarkerType,
@as("Folders") folders: folderMetadataList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeRootFoldersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDocumentVersions = {
  type t;
  type request = {
@as("Fields") fields: fieldNamesType,
@as("Include") include: fieldNamesType,
@as("Limit") limit: limitType,
@as("Marker") marker: pageMarkerType,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: pageMarkerType,
@as("DocumentVersions") documentVersions: documentVersionMetadataList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeDocumentVersionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: authenticationHeaderType,
@as("StorageRule") storageRule: storageRuleType,
@as("TimeZoneId") timeZoneId: timeZoneIdType,
@as("Password") password: option<passwordType>,
@as("Surname") surname: option<userAttributeValueType>,
@as("GivenName") givenName: option<userAttributeValueType>,
@as("EmailAddress") emailAddress: emailAddressType,
@as("Username") username: option<usernameType>,
@as("OrganizationId") organizationId: idType
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ActivateUser = {
  type t;
  type request = {
@as("AuthenticationToken") authenticationToken: authenticationHeaderType,
@as("UserId") userId: option<idType>
}
  type response = {
@as("User") user: user
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "ActivateUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetResources = {
  type t;
  type request = {
@as("Marker") marker: pageMarkerType,
@as("Limit") limit: limitType,
@as("CollectionType") collectionType: resourceCollectionType,
@as("UserId") userId: idType,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: pageMarkerType,
@as("Documents") documents: documentMetadataList,
@as("Folders") folders: folderMetadataList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "GetResourcesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeUsers = {
  type t;
  type request = {
@as("Fields") fields: fieldNamesType,
@as("Limit") limit: limitType,
@as("Marker") marker: pageMarkerType,
@as("Sort") sort: userSortType,
@as("Order") order: orderType,
@as("Include") include: userFilterType,
@as("Query") query: searchQueryType,
@as("UserIds") userIds: userIdsType,
@as("OrganizationId") organizationId: idType,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: pageMarkerType,
@as("TotalNumberOfUsers") totalNumberOfUsers: sizeType,
@as("Users") users: organizationUserList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeUsersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeResourcePermissions = {
  type t;
  type request = {
@as("Marker") marker: pageMarkerType,
@as("Limit") limit: limitType,
@as("PrincipalId") principalId: idType,
@as("ResourceId") resourceId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: pageMarkerType,
@as("Principals") principals: principalList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeResourcePermissionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFolderContents = {
  type t;
  type request = {
@as("Include") include: fieldNamesType,
@as("Type") type_: folderContentType,
@as("Marker") marker: pageMarkerType,
@as("Limit") limit: limitType,
@as("Order") order: orderType,
@as("Sort") sort: resourceSortType,
@as("FolderId") folderId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: pageMarkerType,
@as("Documents") documents: documentMetadataList,
@as("Folders") folders: folderMetadataList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeFolderContentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateComment = {
  type t;
  type request = {
@as("NotifyCollaborators") notifyCollaborators: booleanType,
@as("Visibility") visibility: commentVisibilityType,
@as("Text") text: option<commentTextType>,
@as("ThreadId") threadId: commentIdType,
@as("ParentId") parentId: commentIdType,
@as("VersionId") versionId: option<documentVersionIdType>,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Comment") comment: comment
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "CreateCommentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeComments = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("Limit") limit: limitType,
@as("VersionId") versionId: option<documentVersionIdType>,
@as("DocumentId") documentId: option<resourceIdType>,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: markerType,
@as("Comments") comments: commentList
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeCommentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeActivities = {
  type t;
  type request = {
@as("Marker") marker: markerType,
@as("Limit") limit: limitType,
@as("IncludeIndirectActivities") includeIndirectActivities: booleanType,
@as("UserId") userId: idType,
@as("ResourceId") resourceId: idType,
@as("ActivityTypes") activityTypes: activityNamesFilterType,
@as("OrganizationId") organizationId: idType,
@as("EndTime") endTime: timestampType,
@as("StartTime") startTime: timestampType,
@as("AuthenticationToken") authenticationToken: authenticationHeaderType
}
  type response = {
@as("Marker") marker: markerType,
@as("UserActivities") userActivities: userActivities
}
  @module("@aws-sdk/client-workdocs") @new external new_: (request) => t = "DescribeActivitiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
