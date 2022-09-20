type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-workdocs") @new
external createClient: unit => awsServiceClient = "WorkDocsClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type usernameType = string
type userType = [
  | @as("WORKSPACESUSER") #WORKSPACESUSER
  | @as("MINIMALUSER") #MINIMALUSER
  | @as("POWERUSER") #POWERUSER
  | @as("ADMIN") #ADMIN
  | @as("USER") #USER
]
type userStatusType = [@as("PENDING") #PENDING | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type userSortType = [
  | @as("STORAGE_USED") #STORAGE_USED
  | @as("USER_STATUS") #USER_STATUS
  | @as("STORAGE_LIMIT") #STORAGE_LIMIT
  | @as("FULL_NAME") #FULL_NAME
  | @as("USER_NAME") #USER_NAME
]
type userIdsType = string
type userFilterType = [@as("ACTIVE_PENDING") #ACTIVE_PENDING | @as("ALL") #ALL]
type userAttributeValueType = string
type urlType = string
type timestampType = Js.Date.t
type timeZoneIdType = string
type subscriptionType = [@as("ALL") #ALL]
type subscriptionProtocolType = [@as("HTTPS") #HTTPS]
type subscriptionEndPointType = string
type storageType = [@as("QUOTA") #QUOTA | @as("UNLIMITED") #UNLIMITED]
type sizeType = float
type sharedLabel = string
type shareStatusType = [@as("FAILURE") #FAILURE | @as("SUCCESS") #SUCCESS]
type searchQueryType = string
type roleType = [
  | @as("COOWNER") #COOWNER
  | @as("OWNER") #OWNER
  | @as("CONTRIBUTOR") #CONTRIBUTOR
  | @as("VIEWER") #VIEWER
]
type rolePermissionType = [@as("INHERITED") #INHERITED | @as("DIRECT") #DIRECT]
type resourceType = [@as("DOCUMENT") #DOCUMENT | @as("FOLDER") #FOLDER]
type resourceStateType = [
  | @as("RECYCLED") #RECYCLED
  | @as("RECYCLING") #RECYCLING
  | @as("RESTORING") #RESTORING
  | @as("ACTIVE") #ACTIVE
]
type resourceSortType = [@as("NAME") #NAME | @as("DATE") #DATE]
type resourceNameType = string
type resourceIdType = string
type resourceCollectionType = [@as("SHARED_WITH_ME") #SHARED_WITH_ME]
type principalType = [
  | @as("ORGANIZATION") #ORGANIZATION
  | @as("ANONYMOUS") #ANONYMOUS
  | @as("INVITE") #INVITE
  | @as("GROUP") #GROUP
  | @as("USER") #USER
]
type positiveSizeType = float
type positiveIntegerType = int
type passwordType = string
type pageMarkerType = string
type orderType = [@as("DESCENDING") #DESCENDING | @as("ASCENDING") #ASCENDING]
type messageType = string
type markerType = string
type localeType = [
  | @as("default") #Default
  | @as("pt_BR") #Pt_BR
  | @as("zh_TW") #Zh_TW
  | @as("zh_CN") #Zh_CN
  | @as("ru") #Ru
  | @as("ja") #Ja
  | @as("es") #Es
  | @as("de") #De
  | @as("ko") #Ko
  | @as("fr") #Fr
  | @as("en") #En
]
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
type commentStatusType = [
  | @as("DELETED") #DELETED
  | @as("PUBLISHED") #PUBLISHED
  | @as("DRAFT") #DRAFT
]
type commentIdType = string
type booleanType = bool
type booleanEnumType = [@as("FALSE") #FALSE | @as("TRUE") #TRUE]
type authenticationHeaderType = string
type activityType = [
  | @as("FOLDER_MOVED") #FOLDER_MOVED
  | @as("FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED") #FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED
  | @as("FOLDER_SHAREABLE_LINK_REMOVED") #FOLDER_SHAREABLE_LINK_REMOVED
  | @as("FOLDER_SHAREABLE_LINK_CREATED") #FOLDER_SHAREABLE_LINK_CREATED
  | @as("FOLDER_SHARE_PERMISSION_CHANGED") #FOLDER_SHARE_PERMISSION_CHANGED
  | @as("FOLDER_UNSHARED") #FOLDER_UNSHARED
  | @as("FOLDER_SHARED") #FOLDER_SHARED
  | @as("FOLDER_RESTORED") #FOLDER_RESTORED
  | @as("FOLDER_RECYCLED") #FOLDER_RECYCLED
  | @as("FOLDER_RENAMED") #FOLDER_RENAMED
  | @as("FOLDER_DELETED") #FOLDER_DELETED
  | @as("FOLDER_CREATED") #FOLDER_CREATED
  | @as("DOCUMENT_ANNOTATION_DELETED") #DOCUMENT_ANNOTATION_DELETED
  | @as("DOCUMENT_ANNOTATION_ADDED") #DOCUMENT_ANNOTATION_ADDED
  | @as("DOCUMENT_COMMENT_DELETED") #DOCUMENT_COMMENT_DELETED
  | @as("DOCUMENT_COMMENT_ADDED") #DOCUMENT_COMMENT_ADDED
  | @as("DOCUMENT_MOVED") #DOCUMENT_MOVED
  | @as("DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED") #DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED
  | @as("DOCUMENT_SHAREABLE_LINK_REMOVED") #DOCUMENT_SHAREABLE_LINK_REMOVED
  | @as("DOCUMENT_SHAREABLE_LINK_CREATED") #DOCUMENT_SHAREABLE_LINK_CREATED
  | @as("DOCUMENT_SHARE_PERMISSION_CHANGED") #DOCUMENT_SHARE_PERMISSION_CHANGED
  | @as("DOCUMENT_UNSHARED") #DOCUMENT_UNSHARED
  | @as("DOCUMENT_SHARED") #DOCUMENT_SHARED
  | @as("DOCUMENT_REVERTED") #DOCUMENT_REVERTED
  | @as("DOCUMENT_RESTORED") #DOCUMENT_RESTORED
  | @as("DOCUMENT_RECYCLED") #DOCUMENT_RECYCLED
  | @as("DOCUMENT_VERSION_DOWNLOADED") #DOCUMENT_VERSION_DOWNLOADED
  | @as("DOCUMENT_VERSION_VIEWED") #DOCUMENT_VERSION_VIEWED
  | @as("DOCUMENT_VERSION_DELETED") #DOCUMENT_VERSION_DELETED
  | @as("DOCUMENT_VERSION_UPLOADED") #DOCUMENT_VERSION_UPLOADED
  | @as("DOCUMENT_RENAMED") #DOCUMENT_RENAMED
  | @as("DOCUMENT_CHECKED_OUT") #DOCUMENT_CHECKED_OUT
  | @as("DOCUMENT_CHECKED_IN") #DOCUMENT_CHECKED_IN
]
type activityNamesFilterType = string
@ocaml.doc("<p>Describes the metadata of the user.</p>")
type userMetadata = {
  @ocaml.doc("<p>The email address of the user.</p>") @as("EmailAddress")
  emailAddress: option<emailAddressType>,
  @ocaml.doc("<p>The surname of the user.</p>") @as("Surname")
  surname: option<userAttributeValueType>,
  @ocaml.doc("<p>The given name of the user before a rename operation.</p>") @as("GivenName")
  givenName: option<userAttributeValueType>,
  @ocaml.doc("<p>The name of the user.</p>") @as("Username") username: option<usernameType>,
  @ocaml.doc("<p>The ID of the user.</p>") @as("Id") id: option<idType>,
}
@ocaml.doc("<p>Describes a subscription.</p>")
type subscription = {
  @ocaml.doc("<p>The protocol of the subscription.</p>") @as("Protocol")
  protocol: option<subscriptionProtocolType>,
  @ocaml.doc("<p>The endpoint of the subscription.</p>") @as("EndPoint")
  endPoint: option<subscriptionEndPointType>,
  @ocaml.doc("<p>The ID of the subscription.</p>") @as("SubscriptionId")
  subscriptionId: option<idType>,
}
@ocaml.doc("<p>Describes the storage for a user.</p>")
type storageRuleType = {
  @ocaml.doc("<p>The type of storage.</p>") @as("StorageType") storageType: option<storageType>,
  @ocaml.doc("<p>The amount of storage allocated, in bytes.</p>") @as("StorageAllocatedInBytes")
  storageAllocatedInBytes: option<positiveSizeType>,
}
type signedHeaderMap = Js.Dict.t<headerValueType>
type sharedLabels = array<sharedLabel>
@ocaml.doc("<p>Describes the share results of a resource.</p>")
type shareResult = {
  @ocaml.doc("<p>The status message.</p>") @as("StatusMessage") statusMessage: option<messageType>,
  @ocaml.doc("<p>The ID of the resource that was shared.</p>") @as("ShareId")
  shareId: option<resourceIdType>,
  @ocaml.doc("<p>The status.</p>") @as("Status") status: option<shareStatusType>,
  @ocaml.doc("<p>The role.</p>") @as("Role") role: option<roleType>,
  @ocaml.doc("<p>The ID of the invited user.</p>") @as("InviteePrincipalId")
  inviteePrincipalId: option<idType>,
  @ocaml.doc("<p>The ID of the principal.</p>") @as("PrincipalId") principalId: option<idType>,
}
@ocaml.doc("<p>Describes the recipient type and ID, if available.</p>")
type sharePrincipal = {
  @ocaml.doc("<p>The role of the recipient.</p>") @as("Role") role: roleType,
  @ocaml.doc("<p>The type of the recipient.</p>") @as("Type") type_: principalType,
  @ocaml.doc("<p>The ID of the recipient.</p>") @as("Id") id: idType,
}
@ocaml.doc("<p>Describes the resource path.</p>")
type resourcePathComponent = {
  @ocaml.doc("<p>The name of the resource path.</p>") @as("Name") name: option<resourceNameType>,
  @ocaml.doc("<p>The ID of the resource path.</p>") @as("Id") id: option<idType>,
}
@ocaml.doc("<p>Describes the permissions.</p>")
type permissionInfo = {
  @ocaml.doc("<p>The type of permissions.</p>") @as("Type") type_: option<rolePermissionType>,
  @ocaml.doc("<p>The role of the user.</p>") @as("Role") role: option<roleType>,
}
@ocaml.doc("<p>Set of options which defines notification preferences of given action.</p>")
type notificationOptions = {
  @ocaml.doc("<p>Text value to be included in the email body.</p>") @as("EmailMessage")
  emailMessage: option<messageType>,
  @ocaml.doc("<p>Boolean value to indicate an email notification should be sent to the
            receipients.</p>")
  @as("SendEmail")
  sendEmail: option<booleanType>,
}
@ocaml.doc("<p>Describes the metadata of a user group.</p>")
type groupMetadata = {
  @ocaml.doc("<p>The name of the group.</p>") @as("Name") name: option<groupNameType>,
  @ocaml.doc("<p>The ID of the user group.</p>") @as("Id") id: option<idType>,
}
type entityIdList = array<idType>
type documentThumbnailUrlMap = Js.Dict.t<urlType>
type documentSourceUrlMap = Js.Dict.t<urlType>
type customMetadataMap = Js.Dict.t<customMetadataValueType>
type customMetadataKeyList = array<customMetadataKeyType>
@ocaml.doc("<p>Describes the storage for a user.</p>")
type userStorageMetadata = {
  @ocaml.doc("<p>The storage for a user.</p>") @as("StorageRule")
  storageRule: option<storageRuleType>,
  @ocaml.doc("<p>The amount of storage used, in bytes.</p>") @as("StorageUtilizedInBytes")
  storageUtilizedInBytes: option<sizeType>,
}
type userMetadataList = array<userMetadata>
@ocaml.doc("<p>Describes the upload.</p>")
type uploadMetadata = {
  @ocaml.doc("<p>The signed headers.</p>") @as("SignedHeaders")
  signedHeaders: option<signedHeaderMap>,
  @ocaml.doc("<p>The URL of the upload.</p>") @as("UploadUrl") uploadUrl: option<urlType>,
}
type subscriptionList = array<subscription>
type shareResultsList = array<shareResult>
type sharePrincipalList = array<sharePrincipal>
type resourcePathComponentList = array<resourcePathComponent>
@ocaml.doc("<p>Describes the metadata of a resource.</p>")
type resourceMetadata = {
  @ocaml.doc("<p>The parent ID of the resource before a rename operation.</p>") @as("ParentId")
  parentId: option<resourceIdType>,
  @ocaml.doc("<p>The owner of the resource.</p>") @as("Owner") owner: option<userMetadata>,
  @ocaml.doc("<p>The version ID of the resource. This is an optional field and is filled for action
            on document version.</p>")
  @as("VersionId")
  versionId: option<documentVersionIdType>,
  @ocaml.doc("<p>The ID of the resource.</p>") @as("Id") id: option<resourceIdType>,
  @ocaml.doc("<p>The original name of the resource before a rename operation.</p>")
  @as("OriginalName")
  originalName: option<resourceNameType>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<resourceNameType>,
  @ocaml.doc("<p>The type of resource.</p>") @as("Type") type_: option<resourceType>,
}
type permissionInfoList = array<permissionInfo>
type groupMetadataList = array<groupMetadata>
@ocaml.doc("<p>Describes a folder.</p>")
type folderMetadata = {
  @ocaml.doc("<p>The size of the latest version of the folder metadata.</p>")
  @as("LatestVersionSize")
  latestVersionSize: option<sizeType>,
  @ocaml.doc("<p>The size of the folder metadata.</p>") @as("Size") size: option<sizeType>,
  @ocaml.doc("<p>List of labels on the folder.</p>") @as("Labels") labels: option<sharedLabels>,
  @ocaml.doc("<p>The unique identifier created from the subfolders and documents of the
            folder.</p>")
  @as("Signature")
  signature: option<hashType>,
  @ocaml.doc("<p>The resource state of the folder.</p>") @as("ResourceState")
  resourceState: option<resourceStateType>,
  @ocaml.doc("<p>The time when the folder was updated.</p>") @as("ModifiedTimestamp")
  modifiedTimestamp: option<timestampType>,
  @ocaml.doc("<p>The time when the folder was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestampType>,
  @ocaml.doc("<p>The ID of the parent folder.</p>") @as("ParentFolderId")
  parentFolderId: option<resourceIdType>,
  @ocaml.doc("<p>The ID of the creator.</p>") @as("CreatorId") creatorId: option<idType>,
  @ocaml.doc("<p>The name of the folder.</p>") @as("Name") name: option<resourceNameType>,
  @ocaml.doc("<p>The ID of the folder.</p>") @as("Id") id: option<resourceIdType>,
}
@ocaml.doc("<p>Describes a version of a document.</p>")
type documentVersionMetadata = {
  @ocaml.doc("<p>The source of the document.</p>") @as("Source")
  source: option<documentSourceUrlMap>,
  @ocaml.doc("<p>The thumbnail of the document.</p>") @as("Thumbnail")
  thumbnail: option<documentThumbnailUrlMap>,
  @ocaml.doc("<p>The ID of the creator.</p>") @as("CreatorId") creatorId: option<idType>,
  @ocaml.doc("<p>The timestamp when the content of the document was modified.</p>")
  @as("ContentModifiedTimestamp")
  contentModifiedTimestamp: option<timestampType>,
  @ocaml.doc("<p>The timestamp when the content of the document was originally created.</p>")
  @as("ContentCreatedTimestamp")
  contentCreatedTimestamp: option<timestampType>,
  @ocaml.doc("<p>The timestamp when the document was last uploaded.</p>") @as("ModifiedTimestamp")
  modifiedTimestamp: option<timestampType>,
  @ocaml.doc("<p>The timestamp when the document was first uploaded.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestampType>,
  @ocaml.doc("<p>The status of the document.</p>") @as("Status") status: option<documentStatusType>,
  @ocaml.doc("<p>The signature of the document.</p>") @as("Signature") signature: option<hashType>,
  @ocaml.doc("<p>The size of the document, in bytes.</p>") @as("Size") size: option<sizeType>,
  @ocaml.doc("<p>The content type of the document.</p>") @as("ContentType")
  contentType: option<documentContentType>,
  @ocaml.doc("<p>The name of the version.</p>") @as("Name") name: option<resourceNameType>,
  @ocaml.doc("<p>The ID of the version.</p>") @as("Id") id: option<documentVersionIdType>,
}
@ocaml.doc("<p>Describes a user.</p>")
type user = {
  @ocaml.doc("<p>The storage for the user.</p>") @as("Storage")
  storage: option<userStorageMetadata>,
  @ocaml.doc("<p>The locale of the user.</p>") @as("Locale") locale: option<localeType>,
  @ocaml.doc("<p>The time zone ID of the user.</p>") @as("TimeZoneId")
  timeZoneId: option<timeZoneIdType>,
  @ocaml.doc("<p>The time when the user was modified.</p>") @as("ModifiedTimestamp")
  modifiedTimestamp: option<timestampType>,
  @ocaml.doc("<p>The time when the user was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestampType>,
  @ocaml.doc("<p>The type of user.</p>") @as("Type") type_: option<userType>,
  @ocaml.doc("<p>The status of the user.</p>") @as("Status") status: option<userStatusType>,
  @ocaml.doc("<p>The ID of the recycle bin folder.</p>") @as("RecycleBinFolderId")
  recycleBinFolderId: option<resourceIdType>,
  @ocaml.doc("<p>The ID of the root folder.</p>") @as("RootFolderId")
  rootFolderId: option<resourceIdType>,
  @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId")
  organizationId: option<idType>,
  @ocaml.doc("<p>The surname of the user.</p>") @as("Surname")
  surname: option<userAttributeValueType>,
  @ocaml.doc("<p>The given name of the user.</p>") @as("GivenName")
  givenName: option<userAttributeValueType>,
  @ocaml.doc("<p>The email address of the user.</p>") @as("EmailAddress")
  emailAddress: option<emailAddressType>,
  @ocaml.doc("<p>The login name of the user.</p>") @as("Username") username: option<usernameType>,
  @ocaml.doc("<p>The ID of the user.</p>") @as("Id") id: option<idType>,
}
@ocaml.doc("<p>Describes the path information of a resource.</p>")
type resourcePath = {
  @ocaml.doc("<p>The components of the resource path.</p>") @as("Components")
  components: option<resourcePathComponentList>,
}
@ocaml.doc("<p>Describes a resource.</p>")
type principal = {
  @ocaml.doc("<p>The permission information for the resource.</p>") @as("Roles")
  roles: option<permissionInfoList>,
  @ocaml.doc("<p>The type of resource.</p>") @as("Type") type_: option<principalType>,
  @ocaml.doc("<p>The ID of the resource.</p>") @as("Id") id: option<idType>,
}
@ocaml.doc("<p>Describes the users or user groups.</p>")
type participants = {
  @ocaml.doc("<p>The list of user groups.</p>") @as("Groups") groups: option<groupMetadataList>,
  @ocaml.doc("<p>The list of users.</p>") @as("Users") users: option<userMetadataList>,
}
type folderMetadataList = array<folderMetadata>
type documentVersionMetadataList = array<documentVersionMetadata>
@ocaml.doc("<p>Describes the document.</p>")
type documentMetadata = {
  @ocaml.doc("<p>List of labels on the document.</p>") @as("Labels") labels: option<sharedLabels>,
  @ocaml.doc("<p>The resource state.</p>") @as("ResourceState")
  resourceState: option<resourceStateType>,
  @ocaml.doc("<p>The latest version of the document.</p>") @as("LatestVersionMetadata")
  latestVersionMetadata: option<documentVersionMetadata>,
  @ocaml.doc("<p>The time when the document was updated.</p>") @as("ModifiedTimestamp")
  modifiedTimestamp: option<timestampType>,
  @ocaml.doc("<p>The time when the document was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestampType>,
  @ocaml.doc("<p>The ID of the parent folder.</p>") @as("ParentFolderId")
  parentFolderId: option<resourceIdType>,
  @ocaml.doc("<p>The ID of the creator.</p>") @as("CreatorId") creatorId: option<idType>,
  @ocaml.doc("<p>The ID of the document.</p>") @as("Id") id: option<resourceIdType>,
}
type principalList = array<principal>
type organizationUserList = array<user>
type documentMetadataList = array<documentMetadata>
@ocaml.doc("<p>Describes the metadata of a comment.</p>")
type commentMetadata = {
  @ocaml.doc("<p>The ID of the user being replied to.</p>") @as("RecipientId")
  recipientId: option<idType>,
  @ocaml.doc("<p>The status of the comment.</p>") @as("CommentStatus")
  commentStatus: option<commentStatusType>,
  @ocaml.doc("<p>The timestamp that the comment was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestampType>,
  @ocaml.doc("<p>The user who made the comment.</p>") @as("Contributor") contributor: option<user>,
  @ocaml.doc("<p>The ID of the comment.</p>") @as("CommentId") commentId: option<commentIdType>,
}
@ocaml.doc("<p>Describes a comment.</p>")
type comment = {
  @ocaml.doc("<p>If the comment is a reply to another user's comment, this field contains the user
            ID of the user being replied to.</p>")
  @as("RecipientId")
  recipientId: option<idType>,
  @ocaml.doc("<p>The visibility of the comment. Options are either PRIVATE, where the comment is
            visible only to the comment author and document owner and co-owners, or PUBLIC, where
            the comment is visible to document owners, co-owners, and contributors.</p>")
  @as("Visibility")
  visibility: option<commentVisibilityType>,
  @ocaml.doc("<p>The status of the comment.</p>") @as("Status") status: option<commentStatusType>,
  @ocaml.doc("<p>The time that the comment was created.</p>") @as("CreatedTimestamp")
  createdTimestamp: option<timestampType>,
  @ocaml.doc("<p>The details of the user who made the comment.</p>") @as("Contributor")
  contributor: option<user>,
  @ocaml.doc("<p>The text of the comment.</p>") @as("Text") text: option<commentTextType>,
  @ocaml.doc("<p>The ID of the root comment in the thread.</p>") @as("ThreadId")
  threadId: option<commentIdType>,
  @ocaml.doc("<p>The ID of the parent comment.</p>") @as("ParentId")
  parentId: option<commentIdType>,
  @ocaml.doc("<p>The ID of the comment.</p>") @as("CommentId") commentId: commentIdType,
}
type commentList = array<comment>
@ocaml.doc("<p>Describes the activity information.</p>")
type activity = {
  @ocaml.doc("<p>Metadata of the commenting activity. This is an optional field and is filled for
            commenting activities.</p>")
  @as("CommentMetadata")
  commentMetadata: option<commentMetadata>,
  @ocaml.doc("<p>The original parent of the resource. This is an optional field and is filled for
            move activities.</p>")
  @as("OriginalParent")
  originalParent: option<resourceMetadata>,
  @ocaml.doc("<p>The metadata of the resource involved in the user action.</p>")
  @as("ResourceMetadata")
  resourceMetadata: option<resourceMetadata>,
  @ocaml.doc("<p>The list of users or groups impacted by this action. This is an optional field and
            is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED,
            DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.</p>")
  @as("Participants")
  participants: option<participants>,
  @ocaml.doc("<p>The user who performed the action.</p>") @as("Initiator")
  initiator: option<userMetadata>,
  @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId")
  organizationId: option<idType>,
  @ocaml.doc("<p>Indicates whether an activity is indirect or direct. An indirect activity results
            from a direct activity performed on a parent resource. For example, sharing a parent
            folder (the direct activity) shares all of the subfolders and documents within the
            parent folder (the indirect activity).</p>")
  @as("IsIndirectActivity")
  isIndirectActivity: option<booleanType>,
  @ocaml.doc("<p>The timestamp when the action was performed.</p>") @as("TimeStamp")
  timeStamp: option<timestampType>,
  @ocaml.doc("<p>The activity type.</p>") @as("Type") type_: option<activityType>,
}
type userActivities = array<activity>
@ocaml.doc("<p>The WorkDocs API is designed for the following use cases:</p>
        <ul>
            <li>
                <p>File Migration: File migration applications are supported for users who
                    want to migrate their files from an on-premises or off-premises file system or
                    service. Users can insert files into a user directory structure, as well as
                    allow for basic metadata changes, such as modifications to the permissions of
                    files.</p>
            </li>
            <li>
                <p>Security: Support security applications are supported for users who have
                    additional security needs, such as antivirus or data loss prevention. The API
                    actions, along with AWS CloudTrail, allow these applications to detect when
                    changes occur in Amazon WorkDocs. Then, the application can take the necessary
                    actions and replace the target file. If the target file violates the policy, the
                    application can also choose to email the user.</p>
            </li>
            <li>
                <p>eDiscovery/Analytics: General administrative applications are supported,
                    such as eDiscovery and analytics. These applications can choose to mimic or
                    record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to
                    replicate data for eDiscovery, backup, or analytical applications.</p>
            </li>
         </ul>
        <p>All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed.
            They not only require the use of the AWS SDK, but also allow for the exclusive use of
            IAM users and roles to help facilitate access, trust, and permission policies. By
            creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM
            user gains full administrative visibility into the entire Amazon WorkDocs site (or as
            set in the IAM policy). This includes, but is not limited to, the ability to modify file
            permissions and upload any file to any user. This allows developers to perform the three
            use cases above, as well as give users the ability to grant access on a selective basis
            using the IAM model.</p>")
module RemoveResourcePermission = {
  type t
  type request = {
    @ocaml.doc("<p>The principal type of the resource.</p>") @as("PrincipalType")
    principalType: option<principalType>,
    @ocaml.doc("<p>The principal ID of the resource.</p>") @as("PrincipalId") principalId: idType,
    @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "RemoveResourcePermissionCommand"
  let make = (~principalId, ~resourceId, ~principalType=?, ~authenticationToken=?, ()) =>
    new({principalType, principalId, resourceId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RemoveAllResourcePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "RemoveAllResourcePermissionsCommand"
  let make = (~resourceId, ~authenticationToken=?, ()) => new({resourceId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateFolder = {
  type t
  type request = {
    @ocaml.doc("<p>The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from
            the API.</p>")
    @as("ResourceState")
    resourceState: option<resourceStateType>,
    @ocaml.doc("<p>The ID of the parent folder.</p>") @as("ParentFolderId")
    parentFolderId: option<resourceIdType>,
    @ocaml.doc("<p>The name of the folder.</p>") @as("Name") name: option<resourceNameType>,
    @ocaml.doc("<p>The ID of the folder.</p>") @as("FolderId") folderId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "UpdateFolderCommand"
  let make = (
    ~folderId,
    ~resourceState=?,
    ~parentFolderId=?,
    ~name=?,
    ~authenticationToken=?,
    (),
  ) => new({resourceState, parentFolderId, name, folderId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateDocumentVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the version.</p>") @as("VersionStatus")
    versionStatus: option<documentVersionStatus>,
    @ocaml.doc("<p>The version ID of the document.</p>") @as("VersionId")
    versionId: documentVersionIdType,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "UpdateDocumentVersionCommand"
  let make = (~versionId, ~documentId, ~versionStatus=?, ~authenticationToken=?, ()) =>
    new({versionStatus, versionId, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateDocument = {
  type t
  type request = {
    @ocaml.doc("<p>The resource state of the document. Only ACTIVE and RECYCLED are
            supported.</p>")
    @as("ResourceState")
    resourceState: option<resourceStateType>,
    @ocaml.doc("<p>The ID of the parent folder.</p>") @as("ParentFolderId")
    parentFolderId: option<resourceIdType>,
    @ocaml.doc("<p>The name of the document.</p>") @as("Name") name: option<resourceNameType>,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "UpdateDocumentCommand"
  let make = (
    ~documentId,
    ~resourceState=?,
    ~parentFolderId=?,
    ~name=?,
    ~authenticationToken=?,
    (),
  ) => new({resourceState, parentFolderId, name, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteUser = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: idType,
    @ocaml.doc("<p>Amazon WorkDocs authentication token. Do not set this field when using
            administrative API actions, as in accessing the API using AWS credentials.</p>")
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DeleteUserCommand"
  let make = (~userId, ~authenticationToken=?, ()) => new({userId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteNotificationSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId") organizationId: idType,
    @ocaml.doc("<p>The ID of the subscription.</p>") @as("SubscriptionId") subscriptionId: idType,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "DeleteNotificationSubscriptionCommand"
  let make = (~organizationId, ~subscriptionId, ()) => new({organizationId, subscriptionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLabels = {
  type t
  type request = {
    @ocaml.doc("<p>Flag to request removal of all labels from the specified resource.</p>")
    @as("DeleteAll")
    deleteAll: option<booleanType>,
    @ocaml.doc("<p>List of labels to delete from the resource.</p>") @as("Labels")
    labels: option<sharedLabels>,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
    @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: resourceIdType,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DeleteLabelsCommand"
  let make = (~resourceId, ~deleteAll=?, ~labels=?, ~authenticationToken=?, ()) =>
    new({deleteAll, labels, authenticationToken, resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteFolderContents = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the folder.</p>") @as("FolderId") folderId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "DeleteFolderContentsCommand"
  let make = (~folderId, ~authenticationToken=?, ()) => new({folderId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteFolder = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the folder.</p>") @as("FolderId") folderId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DeleteFolderCommand"
  let make = (~folderId, ~authenticationToken=?, ()) => new({folderId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteDocument = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DeleteDocumentCommand"
  let make = (~documentId, ~authenticationToken=?, ()) => new({documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteCustomMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>Flag to indicate removal of all custom metadata properties from the specified
            resource.</p>")
    @as("DeleteAll")
    deleteAll: option<booleanType>,
    @ocaml.doc("<p>List of properties to remove.</p>") @as("Keys")
    keys: option<customMetadataKeyList>,
    @ocaml.doc("<p>The ID of the version, if the custom metadata is being deleted from a document
            version.</p>")
    @as("VersionId")
    versionId: option<documentVersionIdType>,
    @ocaml.doc("<p>The ID of the resource, either a document or folder.</p>") @as("ResourceId")
    resourceId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "DeleteCustomMetadataCommand"
  let make = (~resourceId, ~deleteAll=?, ~keys=?, ~versionId=?, ~authenticationToken=?, ()) =>
    new({deleteAll, keys, versionId, resourceId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteComment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the comment.</p>") @as("CommentId") commentId: commentIdType,
    @ocaml.doc("<p>The ID of the document version.</p>") @as("VersionId")
    versionId: documentVersionIdType,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DeleteCommentCommand"
  let make = (~commentId, ~versionId, ~documentId, ~authenticationToken=?, ()) =>
    new({commentId, versionId, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeactivateUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
    @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: idType,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DeactivateUserCommand"
  let make = (~userId, ~authenticationToken=?, ()) => new({authenticationToken, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateNotificationSubscription = {
  type t
  type request = {
    @ocaml.doc("<p>The notification type.</p>") @as("SubscriptionType")
    subscriptionType: subscriptionType,
    @ocaml.doc("<p>The protocol to use. The supported value is https, which delivers JSON-encoded
            messages using HTTPS POST.</p>")
    @as("Protocol")
    protocol: subscriptionProtocolType,
    @ocaml.doc("<p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint
            is a URL that begins with <code>https</code>.</p>")
    @as("Endpoint")
    endpoint: subscriptionEndPointType,
    @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId") organizationId: idType,
  }
  type response = {
    @ocaml.doc("<p>The subscription.</p>") @as("Subscription") subscription: option<subscription>,
  }
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "CreateNotificationSubscriptionCommand"
  let make = (~subscriptionType, ~protocol, ~endpoint, ~organizationId, ()) =>
    new({subscriptionType, protocol, endpoint, organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLabels = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
    @ocaml.doc("<p>List of labels to add to the resource.</p>") @as("Labels") labels: sharedLabels,
    @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: resourceIdType,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "CreateLabelsCommand"
  let make = (~labels, ~resourceId, ~authenticationToken=?, ()) =>
    new({authenticationToken, labels, resourceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateCustomMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>Custom metadata in the form of name-value pairs.</p>") @as("CustomMetadata")
    customMetadata: customMetadataMap,
    @ocaml.doc("<p>The ID of the version, if the custom metadata is being added to a document
            version.</p>")
    @as("VersionId")
    versionId: option<documentVersionIdType>,
    @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "CreateCustomMetadataCommand"
  let make = (~customMetadata, ~resourceId, ~versionId=?, ~authenticationToken=?, ()) =>
    new({customMetadata, versionId, resourceId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AbortDocumentVersionUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the version.</p>") @as("VersionId") versionId: documentVersionIdType,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {.}
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "AbortDocumentVersionUploadCommand"
  let make = (~versionId, ~documentId, ~authenticationToken=?, ()) =>
    new({versionId, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module GetFolder = {
  type t
  type request = {
    @ocaml.doc("<p>Set to TRUE to include custom metadata in the response.</p>")
    @as("IncludeCustomMetadata")
    includeCustomMetadata: option<booleanType>,
    @ocaml.doc("<p>The ID of the folder.</p>") @as("FolderId") folderId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The custom metadata on the folder.</p>") @as("CustomMetadata")
    customMetadata: option<customMetadataMap>,
    @ocaml.doc("<p>The metadata of the folder.</p>") @as("Metadata")
    metadata: option<folderMetadata>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "GetFolderCommand"
  let make = (~folderId, ~includeCustomMetadata=?, ~authenticationToken=?, ()) =>
    new({includeCustomMetadata, folderId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDocumentVersion = {
  type t
  type request = {
    @ocaml.doc("<p>Set this to TRUE to include custom metadata in the response.</p>")
    @as("IncludeCustomMetadata")
    includeCustomMetadata: option<booleanType>,
    @ocaml.doc("<p>A comma-separated list of values. Specify \"SOURCE\" to include a URL for the source
            document.</p>")
    @as("Fields")
    fields: option<fieldNamesType>,
    @ocaml.doc("<p>The version ID of the document.</p>") @as("VersionId")
    versionId: documentVersionIdType,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The custom metadata on the document version.</p>") @as("CustomMetadata")
    customMetadata: option<customMetadataMap>,
    @ocaml.doc("<p>The version metadata.</p>") @as("Metadata")
    metadata: option<documentVersionMetadata>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "GetDocumentVersionCommand"
  let make = (
    ~versionId,
    ~documentId,
    ~includeCustomMetadata=?,
    ~fields=?,
    ~authenticationToken=?,
    (),
  ) => new({includeCustomMetadata, fields, versionId, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeNotificationSubscriptions = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
            call.)</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId") organizationId: idType,
  }
  type response = {
    @ocaml.doc("<p>The marker to use when requesting the next set of results. If there are no
            additional results, the string is empty.</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The subscriptions.</p>") @as("Subscriptions")
    subscriptions: option<subscriptionList>,
  }
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "DescribeNotificationSubscriptionsCommand"
  let make = (~organizationId, ~limit=?, ~marker=?, ()) => new({limit, marker, organizationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeGroups = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("Limit")
    limit: option<positiveIntegerType>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
            call.)</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId")
    organizationId: option<idType>,
    @ocaml.doc("<p>A query to describe groups by group name.</p>") @as("SearchQuery")
    searchQuery: searchQueryType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The marker to use when requesting the next set of results. If there are no additional
            results, the string is empty.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The list of groups.</p>") @as("Groups") groups: option<groupMetadataList>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DescribeGroupsCommand"
  let make = (~searchQuery, ~limit=?, ~marker=?, ~organizationId=?, ~authenticationToken=?, ()) =>
    new({limit, marker, organizationId, searchQuery, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFolder = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the parent folder.</p>") @as("ParentFolderId")
    parentFolderId: resourceIdType,
    @ocaml.doc("<p>The name of the new folder.</p>") @as("Name") name: option<resourceNameType>,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The metadata of the folder.</p>") @as("Metadata")
    metadata: option<folderMetadata>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "CreateFolderCommand"
  let make = (~parentFolderId, ~name=?, ~authenticationToken=?, ()) =>
    new({parentFolderId, name, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AddResourcePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The notification options.</p>") @as("NotificationOptions")
    notificationOptions: option<notificationOptions>,
    @ocaml.doc("<p>The users, groups, or organization being granted permission.</p>")
    @as("Principals")
    principals: sharePrincipalList,
    @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The share results.</p>") @as("ShareResults")
    shareResults: option<shareResultsList>,
  }
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "AddResourcePermissionsCommand"
  let make = (~principals, ~resourceId, ~notificationOptions=?, ~authenticationToken=?, ()) =>
    new({notificationOptions, principals, resourceId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Boolean value to determine whether the user is granted Poweruser privileges.</p>"
    )
    @as("GrantPoweruserPrivileges")
    grantPoweruserPrivileges: option<booleanEnumType>,
    @ocaml.doc("<p>The locale of the user.</p>") @as("Locale") locale: option<localeType>,
    @ocaml.doc("<p>The time zone ID of the user.</p>") @as("TimeZoneId")
    timeZoneId: option<timeZoneIdType>,
    @ocaml.doc("<p>The amount of storage for the user.</p>") @as("StorageRule")
    storageRule: option<storageRuleType>,
    @ocaml.doc("<p>The type of the user.</p>") @as("Type") type_: option<userType>,
    @ocaml.doc("<p>The surname of the user.</p>") @as("Surname")
    surname: option<userAttributeValueType>,
    @ocaml.doc("<p>The given name of the user.</p>") @as("GivenName")
    givenName: option<userAttributeValueType>,
    @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: idType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {@ocaml.doc("<p>The user information.</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "UpdateUserCommand"
  let make = (
    ~userId,
    ~grantPoweruserPrivileges=?,
    ~locale=?,
    ~timeZoneId=?,
    ~storageRule=?,
    ~type_=?,
    ~surname=?,
    ~givenName=?,
    ~authenticationToken=?,
    (),
  ) =>
    new({
      grantPoweruserPrivileges,
      locale,
      timeZoneId,
      storageRule,
      type_,
      surname,
      givenName,
      userId,
      authenticationToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module InitiateDocumentVersionUpload = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the parent folder.</p>") @as("ParentFolderId")
    parentFolderId: resourceIdType,
    @ocaml.doc("<p>The size of the document, in bytes.</p>") @as("DocumentSizeInBytes")
    documentSizeInBytes: option<sizeType>,
    @ocaml.doc("<p>The content type of the document.</p>") @as("ContentType")
    contentType: option<documentContentType>,
    @ocaml.doc("<p>The timestamp when the content of the document was modified.</p>")
    @as("ContentModifiedTimestamp")
    contentModifiedTimestamp: option<timestampType>,
    @ocaml.doc("<p>The timestamp when the content of the document was originally created.</p>")
    @as("ContentCreatedTimestamp")
    contentCreatedTimestamp: option<timestampType>,
    @ocaml.doc("<p>The name of the document.</p>") @as("Name") name: option<resourceNameType>,
    @ocaml.doc("<p>The ID of the document.</p>") @as("Id") id: option<resourceIdType>,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The upload metadata.</p>") @as("UploadMetadata")
    uploadMetadata: option<uploadMetadata>,
    @ocaml.doc("<p>The document metadata.</p>") @as("Metadata") metadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "InitiateDocumentVersionUploadCommand"
  let make = (
    ~parentFolderId,
    ~documentSizeInBytes=?,
    ~contentType=?,
    ~contentModifiedTimestamp=?,
    ~contentCreatedTimestamp=?,
    ~name=?,
    ~id=?,
    ~authenticationToken=?,
    (),
  ) =>
    new({
      parentFolderId,
      documentSizeInBytes,
      contentType,
      contentModifiedTimestamp,
      contentCreatedTimestamp,
      name,
      id,
      authenticationToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetFolderPath = {
  type t
  type request = {
    @ocaml.doc("<p>This value is not supported.</p>") @as("Marker") marker: option<pageMarkerType>,
    @ocaml.doc("<p>A comma-separated list of values. Specify \"NAME\" to include the names of the parent
            folders.</p>")
    @as("Fields")
    fields: option<fieldNamesType>,
    @ocaml.doc("<p>The maximum number of levels in the hierarchy to return.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The ID of the folder.</p>") @as("FolderId") folderId: idType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The path information.</p>") @as("Path") path: option<resourcePath>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "GetFolderPathCommand"
  let make = (~folderId, ~marker=?, ~fields=?, ~limit=?, ~authenticationToken=?, ()) =>
    new({marker, fields, limit, folderId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDocumentPath = {
  type t
  type request = {
    @ocaml.doc("<p>This value is not supported.</p>") @as("Marker") marker: option<pageMarkerType>,
    @ocaml.doc("<p>A comma-separated list of values. Specify <code>NAME</code> to include the names of
            the parent folders.</p>")
    @as("Fields")
    fields: option<fieldNamesType>,
    @ocaml.doc("<p>The maximum number of levels in the hierarchy to return.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: idType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The path information.</p>") @as("Path") path: option<resourcePath>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "GetDocumentPathCommand"
  let make = (~documentId, ~marker=?, ~fields=?, ~limit=?, ~authenticationToken=?, ()) =>
    new({marker, fields, limit, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDocument = {
  type t
  type request = {
    @ocaml.doc("<p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>")
    @as("IncludeCustomMetadata")
    includeCustomMetadata: option<booleanType>,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The custom metadata on the document.</p>") @as("CustomMetadata")
    customMetadata: option<customMetadataMap>,
    @ocaml.doc("<p>The metadata details of the document.</p>") @as("Metadata")
    metadata: option<documentMetadata>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "GetDocumentCommand"
  let make = (~documentId, ~includeCustomMetadata=?, ~authenticationToken=?, ()) =>
    new({includeCustomMetadata, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCurrentUser = {
  type t
  type request = {
    @ocaml.doc("<p>Amazon WorkDocs authentication token.</p>") @as("AuthenticationToken")
    authenticationToken: authenticationHeaderType,
  }
  type response = {@ocaml.doc("<p>Metadata of the user.</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "GetCurrentUserCommand"
  let make = (~authenticationToken, ()) => new({authenticationToken: authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRootFolders = {
  type t
  type request = {
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
            call.)</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>Amazon WorkDocs authentication token.</p>") @as("AuthenticationToken")
    authenticationToken: authenticationHeaderType,
  }
  type response = {
    @ocaml.doc("<p>The marker for the next set of results.</p>") @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The user's special folders.</p>") @as("Folders")
    folders: option<folderMetadataList>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DescribeRootFoldersCommand"
  let make = (~authenticationToken, ~marker=?, ~limit=?, ()) =>
    new({marker, limit, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDocumentVersions = {
  type t
  type request = {
    @ocaml.doc("<p>Specify \"SOURCE\" to include initialized versions and a URL for the source
            document.</p>")
    @as("Fields")
    fields: option<fieldNamesType>,
    @ocaml.doc("<p>A comma-separated list of values. Specify \"INITIALIZED\" to include incomplete
            versions.</p>")
    @as("Include")
    include_: option<fieldNamesType>,
    @ocaml.doc("<p>The maximum number of versions to return with this call.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
            call.)</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The marker to use when requesting the next set of results. If there are no
            additional results, the string is empty.</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The document versions.</p>") @as("DocumentVersions")
    documentVersions: option<documentVersionMetadataList>,
  }
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "DescribeDocumentVersionsCommand"
  let make = (
    ~documentId,
    ~fields=?,
    ~include_=?,
    ~limit=?,
    ~marker=?,
    ~authenticationToken=?,
    (),
  ) => new({fields, include_, limit, marker, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
    @ocaml.doc("<p>The amount of storage for the user.</p>") @as("StorageRule")
    storageRule: option<storageRuleType>,
    @ocaml.doc("<p>The time zone ID of the user.</p>") @as("TimeZoneId")
    timeZoneId: option<timeZoneIdType>,
    @ocaml.doc("<p>The password of the user.</p>") @as("Password") password: passwordType,
    @ocaml.doc("<p>The surname of the user.</p>") @as("Surname") surname: userAttributeValueType,
    @ocaml.doc("<p>The given name of the user.</p>") @as("GivenName")
    givenName: userAttributeValueType,
    @ocaml.doc("<p>The email address of the user.</p>") @as("EmailAddress")
    emailAddress: option<emailAddressType>,
    @ocaml.doc("<p>The login name of the user.</p>") @as("Username") username: usernameType,
    @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId")
    organizationId: option<idType>,
  }
  type response = {@ocaml.doc("<p>The user information.</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "CreateUserCommand"
  let make = (
    ~password,
    ~surname,
    ~givenName,
    ~username,
    ~authenticationToken=?,
    ~storageRule=?,
    ~timeZoneId=?,
    ~emailAddress=?,
    ~organizationId=?,
    (),
  ) =>
    new({
      authenticationToken,
      storageRule,
      timeZoneId,
      password,
      surname,
      givenName,
      emailAddress,
      username,
      organizationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ActivateUser = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
    @ocaml.doc("<p>The ID of the user.</p>") @as("UserId") userId: idType,
  }
  type response = {@ocaml.doc("<p>The user information.</p>") @as("User") user: option<user>}
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "ActivateUserCommand"
  let make = (~userId, ~authenticationToken=?, ()) => new({authenticationToken, userId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResources = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The marker for the next set of results. This marker was received from a previous call.</p>"
    )
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The maximum number of resources to return.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The collection type.</p>") @as("CollectionType")
    collectionType: option<resourceCollectionType>,
    @ocaml.doc("<p>The user ID for the resource collection. This is a required field for accessing the
            API operation using IAM credentials.</p>")
    @as("UserId")
    userId: option<idType>,
    @ocaml.doc(
      "<p>The Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc(
      "<p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>"
    )
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The documents in the specified collection.</p>") @as("Documents")
    documents: option<documentMetadataList>,
    @ocaml.doc("<p>The folders in the specified folder.</p>") @as("Folders")
    folders: option<folderMetadataList>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "GetResourcesCommand"
  let make = (~marker=?, ~limit=?, ~collectionType=?, ~userId=?, ~authenticationToken=?, ()) =>
    new({marker, limit, collectionType, userId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeUsers = {
  type t
  type request = {
    @ocaml.doc("<p>A comma-separated list of values. Specify \"STORAGE_METADATA\" to include the user
            storage quota and utilization information.</p>")
    @as("Fields")
    fields: option<fieldNamesType>,
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
            call.)</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The sorting criteria.</p>") @as("Sort") sort: option<userSortType>,
    @ocaml.doc("<p>The order for the results.</p>") @as("Order") order: option<orderType>,
    @ocaml.doc("<p>The state of the users. Specify \"ALL\" to include inactive users.</p>")
    @as("Include")
    include_: option<userFilterType>,
    @ocaml.doc("<p>A query to filter users by user name.</p>") @as("Query")
    query: option<searchQueryType>,
    @ocaml.doc("<p>The IDs of the users.</p>") @as("UserIds") userIds: option<userIdsType>,
    @ocaml.doc("<p>The ID of the organization.</p>") @as("OrganizationId")
    organizationId: option<idType>,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The marker to use when requesting the next set of results. If there are no
            additional results, the string is empty.</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The total number of users included in the results.</p>")
    @as("TotalNumberOfUsers")
    totalNumberOfUsers: option<sizeType>,
    @ocaml.doc("<p>The users.</p>") @as("Users") users: option<organizationUserList>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DescribeUsersCommand"
  let make = (
    ~fields=?,
    ~limit=?,
    ~marker=?,
    ~sort=?,
    ~order=?,
    ~include_=?,
    ~query=?,
    ~userIds=?,
    ~organizationId=?,
    ~authenticationToken=?,
    (),
  ) =>
    new({
      fields,
      limit,
      marker,
      sort,
      order,
      include_,
      query,
      userIds,
      organizationId,
      authenticationToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeResourcePermissions = {
  type t
  type request = {
    @ocaml.doc("<p>The marker for the next set of results. (You received this marker from a previous
            call)</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The ID of the principal to filter permissions by.</p>") @as("PrincipalId")
    principalId: option<idType>,
    @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId") resourceId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The marker to use when requesting the next set of results. If there are no
            additional results, the string is empty.</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The principals.</p>") @as("Principals") principals: option<principalList>,
  }
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "DescribeResourcePermissionsCommand"
  let make = (~resourceId, ~marker=?, ~limit=?, ~principalId=?, ~authenticationToken=?, ()) =>
    new({marker, limit, principalId, resourceId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeFolderContents = {
  type t
  type request = {
    @ocaml.doc("<p>The contents to include. Specify \"INITIALIZED\" to include initialized
            documents.</p>")
    @as("Include")
    include_: option<fieldNamesType>,
    @ocaml.doc("<p>The type of items.</p>") @as("Type") type_: option<folderContentType>,
    @ocaml.doc("<p>The marker for the next set of results. This marker was received from a previous
            call.</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The maximum number of items to return with this call.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The order for the contents of the folder.</p>") @as("Order")
    order: option<orderType>,
    @ocaml.doc("<p>The sorting criteria.</p>") @as("Sort") sort: option<resourceSortType>,
    @ocaml.doc("<p>The ID of the folder.</p>") @as("FolderId") folderId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The marker to use when requesting the next set of results. If there are no
            additional results, the string is empty.</p>")
    @as("Marker")
    marker: option<pageMarkerType>,
    @ocaml.doc("<p>The documents in the specified folder.</p>") @as("Documents")
    documents: option<documentMetadataList>,
    @ocaml.doc("<p>The subfolders in the specified folder.</p>") @as("Folders")
    folders: option<folderMetadataList>,
  }
  @module("@aws-sdk/client-workdocs") @new
  external new: request => t = "DescribeFolderContentsCommand"
  let make = (
    ~folderId,
    ~include_=?,
    ~type_=?,
    ~marker=?,
    ~limit=?,
    ~order=?,
    ~sort=?,
    ~authenticationToken=?,
    (),
  ) => new({include_, type_, marker, limit, order, sort, folderId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateComment = {
  type t
  type request = {
    @ocaml.doc("<p>Set this parameter to TRUE to send an email out to the document collaborators after
            the comment is created.</p>")
    @as("NotifyCollaborators")
    notifyCollaborators: option<booleanType>,
    @ocaml.doc("<p>The visibility of the comment. Options are either PRIVATE, where the comment is
            visible only to the comment author and document owner and co-owners, or PUBLIC, where
            the comment is visible to document owners, co-owners, and contributors.</p>")
    @as("Visibility")
    visibility: option<commentVisibilityType>,
    @ocaml.doc("<p>The text of the comment.</p>") @as("Text") text: commentTextType,
    @ocaml.doc("<p>The ID of the root comment in the thread.</p>") @as("ThreadId")
    threadId: option<commentIdType>,
    @ocaml.doc("<p>The ID of the parent comment.</p>") @as("ParentId")
    parentId: option<commentIdType>,
    @ocaml.doc("<p>The ID of the document version.</p>") @as("VersionId")
    versionId: documentVersionIdType,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The comment that has been created.</p>") @as("Comment") comment: option<comment>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "CreateCommentCommand"
  let make = (
    ~text,
    ~versionId,
    ~documentId,
    ~notifyCollaborators=?,
    ~visibility=?,
    ~threadId=?,
    ~parentId=?,
    ~authenticationToken=?,
    (),
  ) =>
    new({
      notifyCollaborators,
      visibility,
      text,
      threadId,
      parentId,
      versionId,
      documentId,
      authenticationToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeComments = {
  type t
  type request = {
    @ocaml.doc("<p>The marker for the next set of results. This marker was received from a previous
            call.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>The ID of the document version.</p>") @as("VersionId")
    versionId: documentVersionIdType,
    @ocaml.doc("<p>The ID of the document.</p>") @as("DocumentId") documentId: resourceIdType,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The marker for the next set of results. This marker was received from a previous
            call.</p>")
    @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The list of comments for the specified document version.</p>") @as("Comments")
    comments: option<commentList>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DescribeCommentsCommand"
  let make = (~versionId, ~documentId, ~marker=?, ~limit=?, ~authenticationToken=?, ()) =>
    new({marker, limit, versionId, documentId, authenticationToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeActivities = {
  type t
  type request = {
    @ocaml.doc("<p>The marker for the next set of results.</p>") @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The maximum number of items to return.</p>") @as("Limit")
    limit: option<limitType>,
    @ocaml.doc("<p>Includes indirect activities. An indirect activity results from a direct activity
            performed on a parent resource. For example, sharing a parent folder (the direct
            activity) shares all of the subfolders and documents within the parent folder (the
            indirect activity).</p>")
    @as("IncludeIndirectActivities")
    includeIndirectActivities: option<booleanType>,
    @ocaml.doc("<p>The ID of the user who performed the action. The response includes activities
            pertaining to this user. This is an optional parameter and is only applicable for
            administrative API (SigV4) requests.</p>")
    @as("UserId")
    userId: option<idType>,
    @ocaml.doc("<p>The document or folder ID for which to describe activity types.</p>")
    @as("ResourceId")
    resourceId: option<idType>,
    @ocaml.doc("<p>Specifies which activity types to include in the response. If this field is left
            empty, all activity types are returned.</p>")
    @as("ActivityTypes")
    activityTypes: option<activityNamesFilterType>,
    @ocaml.doc("<p>The ID of the organization. This is a mandatory parameter when using administrative
            API (SigV4) requests.</p>")
    @as("OrganizationId")
    organizationId: option<idType>,
    @ocaml.doc("<p>The timestamp that determines the end time of the activities. The response includes
            the activities performed before the specified timestamp.</p>")
    @as("EndTime")
    endTime: option<timestampType>,
    @ocaml.doc("<p>The timestamp that determines the starting time of the activities. The response
            includes the activities performed after the specified timestamp.</p>")
    @as("StartTime")
    startTime: option<timestampType>,
    @ocaml.doc(
      "<p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>"
    )
    @as("AuthenticationToken")
    authenticationToken: option<authenticationHeaderType>,
  }
  type response = {
    @ocaml.doc("<p>The marker for the next set of results.</p>") @as("Marker")
    marker: option<markerType>,
    @ocaml.doc("<p>The list of activities for the specified user and time period.</p>")
    @as("UserActivities")
    userActivities: option<userActivities>,
  }
  @module("@aws-sdk/client-workdocs") @new external new: request => t = "DescribeActivitiesCommand"
  let make = (
    ~marker=?,
    ~limit=?,
    ~includeIndirectActivities=?,
    ~userId=?,
    ~resourceId=?,
    ~activityTypes=?,
    ~organizationId=?,
    ~endTime=?,
    ~startTime=?,
    ~authenticationToken=?,
    (),
  ) =>
    new({
      marker,
      limit,
      includeIndirectActivities,
      userId,
      resourceId,
      activityTypes,
      organizationId,
      endTime,
      startTime,
      authenticationToken,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
