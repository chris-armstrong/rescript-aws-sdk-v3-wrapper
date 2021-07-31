type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type blob = NodeJs.Buffer.t
type title = string
type tagValue = string
type tagKey = string
type sortByEnum = [@as("lastModifiedDate") #LastModifiedDate | @as("repositoryName") #RepositoryName]
type ruleContentSha256 = string
type revisionId = string
type resourceArn = string
type repositoryTriggersConfigurationId = string
type repositoryTriggerName = string
type repositoryTriggerExecutionFailureMessage = string
type repositoryTriggerEventEnum = [@as("deleteReference") #DeleteReference | @as("createReference") #CreateReference | @as("updateReference") #UpdateReference | @as("all") #All]
type repositoryTriggerCustomData = string
type repositoryName = string
type repositoryId = string
type repositoryDescription = string
type replacementTypeEnum = [@as("USE_NEW_CONTENT") #USENEWCONTENT | @as("KEEP_DESTINATION") #KEEPDESTINATION | @as("KEEP_SOURCE") #KEEPSOURCE | @as("KEEP_BASE") #KEEPBASE]
type relativeFileVersionEnum = [@as("AFTER") #AFTER | @as("BEFORE") #BEFORE]
type referenceName = string
type reactionValue = string
type reactionUnicode = string
type reactionShortCode = string
type reactionEmoji = string
type pullRequestStatusEnum = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type pullRequestId = string
type pullRequestEventType = [@as("PULL_REQUEST_APPROVAL_STATE_CHANGED") #PULLREQUESTAPPROVALSTATECHANGED | @as("PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN") #PULLREQUESTAPPROVALRULEOVERRIDDEN | @as("PULL_REQUEST_APPROVAL_RULE_DELETED") #PULLREQUESTAPPROVALRULEDELETED | @as("PULL_REQUEST_APPROVAL_RULE_UPDATED") #PULLREQUESTAPPROVALRULEUPDATED | @as("PULL_REQUEST_APPROVAL_RULE_CREATED") #PULLREQUESTAPPROVALRULECREATED | @as("PULL_REQUEST_MERGE_STATE_CHANGED") #PULLREQUESTMERGESTATECHANGED | @as("PULL_REQUEST_SOURCE_REFERENCE_UPDATED") #PULLREQUESTSOURCEREFERENCEUPDATED | @as("PULL_REQUEST_STATUS_CHANGED") #PULLREQUESTSTATUSCHANGED | @as("PULL_REQUEST_CREATED") #PULLREQUESTCREATED]
type position = float
type path = string
type overrideStatus = [@as("REVOKE") #REVOKE | @as("OVERRIDE") #OVERRIDE]
type overridden = bool
type orderEnum = [@as("descending") #Descending | @as("ascending") #Ascending]
type objectTypeEnum = [@as("SYMBOLIC_LINK") #SYMBOLICLINK | @as("GIT_LINK") #GITLINK | @as("DIRECTORY") #DIRECTORY | @as("FILE") #FILE]
type objectSize = float
type objectId = string
type numberOfConflicts = int
type nextToken = string
type name = string
type mode = string
type message = string
type mergeOptionTypeEnum = [@as("THREE_WAY_MERGE") #THREEWAYMERGE | @as("SQUASH_MERGE") #SQUASHMERGE | @as("FAST_FORWARD_MERGE") #FASTFORWARDMERGE]
type maxResults = int
type lineNumber = int
type limit = int
type lastModifiedDate = Js.Date.t;
type keepEmptyFolders = bool
type isObjectTypeConflict = bool
type isMove = bool
type isMerged = bool
type isMergeable = bool
type isHunkConflict = bool
type isFileModeConflict = bool
type isContentConflict = bool
type isCommentDeleted = bool
type hunkContent = string
type fileSize = float
type fileModeTypeEnum = [@as("SYMLINK") #SYMLINK | @as("NORMAL") #NORMAL | @as("EXECUTABLE") #EXECUTABLE]
type fileContent = NodeJs.Buffer.t
type exceptionName = string
type eventDate = Js.Date.t;
type errorMessage = string
type errorCode = string
type email = string
type description = string
type date = string
type creationDate = Js.Date.t;
type count = int
type content = string
type conflictResolutionStrategyTypeEnum = [@as("AUTOMERGE") #AUTOMERGE | @as("ACCEPT_DESTINATION") #ACCEPTDESTINATION | @as("ACCEPT_SOURCE") #ACCEPTSOURCE | @as("NONE") #NONE]
type conflictDetailLevelTypeEnum = [@as("LINE_LEVEL") #LINELEVEL | @as("FILE_LEVEL") #FILELEVEL]
type commitName = string
type commitId = string
type commentId = string
type cloneUrlSsh = string
type cloneUrlHttp = string
type clientRequestToken = string
type changeTypeEnum = [@as("D") #D | @as("M") #M | @as("A") #A]
type capitalBoolean = bool
type branchName = string
type arn = string
type approved = bool
type approvalState = [@as("REVOKE") #REVOKE | @as("APPROVE") #APPROVE]
type approvalRuleTemplateName = string
type approvalRuleTemplateId = string
type approvalRuleTemplateDescription = string
type approvalRuleTemplateContent = string
type approvalRuleName = string
type approvalRuleId = string
type approvalRuleContent = string
type additionalData = string
type accountId = string
type userInfo = {
date: option<date>,
email: option<email>,
name: option<name>
}
type target = {
destinationReference: option<referenceName>,
sourceReference: referenceName,
repositoryName: repositoryName
}
type tagsMap = Js.Dict.t< tagValue>
type tagKeysList = array<tagKey>
type symbolicLink = {
fileMode: option<fileModeTypeEnum>,
relativePath: option<path>,
absolutePath: option<path>,
blobId: option<objectId>
}
type subModule = {
relativePath: option<path>,
absolutePath: option<path>,
commitId: option<objectId>
}
type sourceFileSpecifier = {
isMove: option<isMove>,
filePath: path
}
type setFileModeEntry = {
fileMode: fileModeTypeEnum,
filePath: path
}
type repositoryTriggerNameList = array<repositoryTriggerName>
type repositoryTriggerExecutionFailure = {
failureMessage: option<repositoryTriggerExecutionFailureMessage>,
trigger: option<repositoryTriggerName>
}
type repositoryTriggerEventList = array<repositoryTriggerEventEnum>
type repositoryNotFoundList = array<repositoryName>
type repositoryNameList = array<repositoryName>
type repositoryNameIdPair = {
repositoryId: option<repositoryId>,
repositoryName: option<repositoryName>
}
type repositoryMetadata = {
@as("Arn") arn: option<arn>,
cloneUrlSsh: option<cloneUrlSsh>,
cloneUrlHttp: option<cloneUrlHttp>,
creationDate: option<creationDate>,
lastModifiedDate: option<lastModifiedDate>,
defaultBranch: option<branchName>,
repositoryDescription: option<repositoryDescription>,
repositoryName: option<repositoryName>,
repositoryId: option<repositoryId>,
accountId: option<accountId>
}
type replaceContentEntry = {
fileMode: option<fileModeTypeEnum>,
content: option<fileContent>,
replacementType: replacementTypeEnum,
filePath: path
}
type reactionValueFormats = {
unicode: option<reactionUnicode>,
shortCode: option<reactionShortCode>,
emoji: option<reactionEmoji>
}
type reactionUsersList = array<arn>
type reactionCountsMap = Js.Dict.t< count>
type pullRequestStatusChangedEventMetadata = {
pullRequestStatus: option<pullRequestStatusEnum>
}
type pullRequestSourceReferenceUpdatedEventMetadata = {
mergeBase: option<commitId>,
afterCommitId: option<commitId>,
beforeCommitId: option<commitId>,
repositoryName: option<repositoryName>
}
type pullRequestIdList = array<pullRequestId>
type pullRequestCreatedEventMetadata = {
mergeBase: option<commitId>,
destinationCommitId: option<commitId>,
sourceCommitId: option<commitId>,
repositoryName: option<repositoryName>
}
type parentList = array<objectId>
type originApprovalRuleTemplate = {
approvalRuleTemplateName: option<approvalRuleTemplateName>,
approvalRuleTemplateId: option<approvalRuleTemplateId>
}
type objectTypes = {
base: option<objectTypeEnum>,
destination: option<objectTypeEnum>,
source: option<objectTypeEnum>
}
type mergeOptions = array<mergeOptionTypeEnum>
type mergeOperations = {
destination: option<changeTypeEnum>,
source: option<changeTypeEnum>
}
type mergeMetadata = {
mergeOption: option<mergeOptionTypeEnum>,
mergeCommitId: option<commitId>,
mergedBy: option<arn>,
isMerged: option<isMerged>
}
type mergeHunkDetail = {
hunkContent: option<hunkContent>,
endLine: option<lineNumber>,
startLine: option<lineNumber>
}
type location = {
relativeFileVersion: option<relativeFileVersionEnum>,
filePosition: option<position>,
filePath: option<path>
}
type isBinaryFile = {
base: option<capitalBoolean>,
destination: option<capitalBoolean>,
source: option<capitalBoolean>
}
type folder = {
relativePath: option<path>,
absolutePath: option<path>,
treeId: option<objectId>
}
type fileSizes = {
base: option<fileSize>,
destination: option<fileSize>,
source: option<fileSize>
}
type filePaths = array<path>
type fileModes = {
base: option<fileModeTypeEnum>,
destination: option<fileModeTypeEnum>,
source: option<fileModeTypeEnum>
}
type fileMetadata = {
fileMode: option<fileModeTypeEnum>,
blobId: option<objectId>,
absolutePath: option<path>
}
type file = {
fileMode: option<fileModeTypeEnum>,
relativePath: option<path>,
absolutePath: option<path>,
blobId: option<objectId>
}
type deleteFileEntry = {
filePath: path
}
type commitIdsInputList = array<objectId>
type callerReactions = array<reactionValue>
type branchNameList = array<branchName>
type branchInfo = {
commitId: option<commitId>,
branchName: option<branchName>
}
type blobMetadata = {
mode: option<mode>,
path: option<path>,
blobId: option<objectId>
}
type batchGetCommitsError = {
errorMessage: option<errorMessage>,
errorCode: option<errorCode>,
commitId: option<objectId>
}
type batchDisassociateApprovalRuleTemplateFromRepositoriesError = {
errorMessage: option<errorMessage>,
errorCode: option<errorCode>,
repositoryName: option<repositoryName>
}
type batchDescribeMergeConflictsError = {
message: message,
exceptionName: exceptionName,
filePath: path
}
type batchAssociateApprovalRuleTemplateWithRepositoriesError = {
errorMessage: option<errorMessage>,
errorCode: option<errorCode>,
repositoryName: option<repositoryName>
}
type approvalStateChangedEventMetadata = {
approvalStatus: option<approvalState>,
revisionId: option<revisionId>
}
type approvalRulesSatisfiedList = array<approvalRuleName>
type approvalRulesNotSatisfiedList = array<approvalRuleName>
type approvalRuleTemplateNameList = array<approvalRuleTemplateName>
type approvalRuleTemplate = {
lastModifiedUser: option<arn>,
creationDate: option<creationDate>,
lastModifiedDate: option<lastModifiedDate>,
ruleContentSha256: option<ruleContentSha256>,
approvalRuleTemplateContent: option<approvalRuleTemplateContent>,
approvalRuleTemplateDescription: option<approvalRuleTemplateDescription>,
approvalRuleTemplateName: option<approvalRuleTemplateName>,
approvalRuleTemplateId: option<approvalRuleTemplateId>
}
type approvalRuleOverriddenEventMetadata = {
overrideStatus: option<overrideStatus>,
revisionId: option<revisionId>
}
type approvalRuleEventMetadata = {
approvalRuleContent: option<approvalRuleContent>,
approvalRuleId: option<approvalRuleId>,
approvalRuleName: option<approvalRuleName>
}
type approval = {
approvalState: option<approvalState>,
userArn: option<arn>
}
type targetList = array<target>
type symbolicLinkList = array<symbolicLink>
type subModuleList = array<subModule>
type setFileModeEntries = array<setFileModeEntry>
type repositoryTriggerExecutionFailureList = array<repositoryTriggerExecutionFailure>
type repositoryTrigger = {
events: repositoryTriggerEventList,
branches: option<branchNameList>,
customData: option<repositoryTriggerCustomData>,
destinationArn: arn,
name: repositoryTriggerName
}
type repositoryNameIdPairList = array<repositoryNameIdPair>
type repositoryMetadataList = array<repositoryMetadata>
type replaceContentEntries = array<replaceContentEntry>
type reactionForComment = {
reactionsFromDeletedUsersCount: option<count>,
reactionUsers: option<reactionUsersList>,
reaction: option<reactionValueFormats>
}
type putFileEntry = {
sourceFile: option<sourceFileSpecifier>,
fileContent: option<fileContent>,
fileMode: option<fileModeTypeEnum>,
filePath: path
}
type pullRequestTarget = {
mergeMetadata: option<mergeMetadata>,
mergeBase: option<commitId>,
sourceCommit: option<commitId>,
destinationCommit: option<commitId>,
destinationReference: option<referenceName>,
sourceReference: option<referenceName>,
repositoryName: option<repositoryName>
}
type pullRequestMergedStateChangedEventMetadata = {
mergeMetadata: option<mergeMetadata>,
destinationReference: option<referenceName>,
repositoryName: option<repositoryName>
}
type mergeHunk = {
base: option<mergeHunkDetail>,
destination: option<mergeHunkDetail>,
source: option<mergeHunkDetail>,
isConflict: option<isHunkConflict>
}
type folderList = array<folder>
type filesMetadata = array<fileMetadata>
type fileList = array<file>
type evaluation = {
approvalRulesNotSatisfied: option<approvalRulesNotSatisfiedList>,
approvalRulesSatisfied: option<approvalRulesSatisfiedList>,
overridden: option<overridden>,
approved: option<approved>
}
type difference = {
changeType: option<changeTypeEnum>,
afterBlob: option<blobMetadata>,
beforeBlob: option<blobMetadata>
}
type deleteFileEntries = array<deleteFileEntry>
type conflictMetadata = {
mergeOperations: option<mergeOperations>,
objectTypeConflict: option<isObjectTypeConflict>,
fileModeConflict: option<isFileModeConflict>,
contentConflict: option<isContentConflict>,
isBinaryFile: option<isBinaryFile>,
numberOfConflicts: option<numberOfConflicts>,
objectTypes: option<objectTypes>,
fileModes: option<fileModes>,
fileSizes: option<fileSizes>,
filePath: option<path>
}
type commit = {
additionalData: option<additionalData>,
committer: option<userInfo>,
author: option<userInfo>,
message: option<message>,
parents: option<parentList>,
treeId: option<objectId>,
commitId: option<objectId>
}
type comment = {
reactionCounts: option<reactionCountsMap>,
callerReactions: option<callerReactions>,
clientRequestToken: option<clientRequestToken>,
deleted: option<isCommentDeleted>,
authorArn: option<arn>,
lastModifiedDate: option<lastModifiedDate>,
creationDate: option<creationDate>,
inReplyTo: option<commentId>,
content: option<content>,
commentId: option<commentId>
}
type batchGetCommitsErrorsList = array<batchGetCommitsError>
type batchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList = array<batchDisassociateApprovalRuleTemplateFromRepositoriesError>
type batchDescribeMergeConflictsErrors = array<batchDescribeMergeConflictsError>
type batchAssociateApprovalRuleTemplateWithRepositoriesErrorsList = array<batchAssociateApprovalRuleTemplateWithRepositoriesError>
type approvalRule = {
originApprovalRuleTemplate: option<originApprovalRuleTemplate>,
lastModifiedUser: option<arn>,
creationDate: option<creationDate>,
lastModifiedDate: option<lastModifiedDate>,
ruleContentSha256: option<ruleContentSha256>,
approvalRuleContent: option<approvalRuleContent>,
approvalRuleName: option<approvalRuleName>,
approvalRuleId: option<approvalRuleId>
}
type approvalList = array<approval>
type repositoryTriggersList = array<repositoryTrigger>
type reactionsForCommentList = array<reactionForComment>
type putFileEntries = array<putFileEntry>
type pullRequestTargetList = array<pullRequestTarget>
type pullRequestEvent = {
approvalRuleOverriddenEventMetadata: option<approvalRuleOverriddenEventMetadata>,
approvalStateChangedEventMetadata: option<approvalStateChangedEventMetadata>,
approvalRuleEventMetadata: option<approvalRuleEventMetadata>,
pullRequestMergedStateChangedEventMetadata: option<pullRequestMergedStateChangedEventMetadata>,
pullRequestSourceReferenceUpdatedEventMetadata: option<pullRequestSourceReferenceUpdatedEventMetadata>,
pullRequestStatusChangedEventMetadata: option<pullRequestStatusChangedEventMetadata>,
pullRequestCreatedEventMetadata: option<pullRequestCreatedEventMetadata>,
actorArn: option<arn>,
pullRequestEventType: option<pullRequestEventType>,
eventDate: option<eventDate>,
pullRequestId: option<pullRequestId>
}
type mergeHunks = array<mergeHunk>
type differenceList = array<difference>
type conflictResolution = {
setFileModes: option<setFileModeEntries>,
deleteFiles: option<deleteFileEntries>,
replaceContents: option<replaceContentEntries>
}
type conflictMetadataList = array<conflictMetadata>
type commitObjectsList = array<commit>
type comments = array<comment>
type approvalRulesList = array<approvalRule>
type pullRequestEventList = array<pullRequestEvent>
type pullRequest = {
approvalRules: option<approvalRulesList>,
revisionId: option<revisionId>,
clientRequestToken: option<clientRequestToken>,
pullRequestTargets: option<pullRequestTargetList>,
authorArn: option<arn>,
pullRequestStatus: option<pullRequestStatusEnum>,
creationDate: option<creationDate>,
lastActivityDate: option<lastModifiedDate>,
description: option<description>,
title: option<title>,
pullRequestId: option<pullRequestId>
}
type conflict = {
mergeHunks: option<mergeHunks>,
conflictMetadata: option<conflictMetadata>
}
type commentsForPullRequest = {
comments: option<comments>,
location: option<location>,
afterBlobId: option<objectId>,
beforeBlobId: option<objectId>,
afterCommitId: option<commitId>,
beforeCommitId: option<commitId>,
repositoryName: option<repositoryName>,
pullRequestId: option<pullRequestId>
}
type commentsForComparedCommit = {
comments: option<comments>,
location: option<location>,
afterBlobId: option<objectId>,
beforeBlobId: option<objectId>,
afterCommitId: option<commitId>,
beforeCommitId: option<commitId>,
repositoryName: option<repositoryName>
}
type conflicts = array<conflict>
type commentsForPullRequestData = array<commentsForPullRequest>
type commentsForComparedCommitData = array<commentsForComparedCommit>
type awsServiceClient;
@module("@aws-sdk/client-codecommit") @new external createClient: unit => awsServiceClient = "CodeCommitClient";
module UpdateRepositoryName = {
  type t;
  type request = {
newName: repositoryName,
oldName: repositoryName
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdateRepositoryNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateRepositoryDescription = {
  type t;
  type request = {
repositoryDescription: option<repositoryDescription>,
repositoryName: repositoryName
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdateRepositoryDescriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdatePullRequestApprovalState = {
  type t;
  type request = {
approvalState: approvalState,
revisionId: revisionId,
pullRequestId: pullRequestId
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdatePullRequestApprovalStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateDefaultBranch = {
  type t;
  type request = {
defaultBranchName: branchName,
repositoryName: repositoryName
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdateDefaultBranchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module PutFile = {
  type t;
  type request = {
email: option<email>,
name: option<name>,
commitMessage: option<message>,
parentCommitId: option<commitId>,
fileMode: option<fileModeTypeEnum>,
filePath: path,
fileContent: fileContent,
branchName: branchName,
repositoryName: repositoryName
}
  type response = {
treeId: objectId,
blobId: objectId,
commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "PutFileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutCommentReaction = {
  type t;
  type request = {
reactionValue: reactionValue,
commentId: commentId
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "PutCommentReactionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module OverridePullRequestApprovalRules = {
  type t;
  type request = {
overrideStatus: overrideStatus,
revisionId: revisionId,
pullRequestId: pullRequestId
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "OverridePullRequestApprovalRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module MergeBranchesByFastForward = {
  type t;
  type request = {
targetBranch: option<branchName>,
destinationCommitSpecifier: commitName,
sourceCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
treeId: option<objectId>,
commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "MergeBranchesByFastForwardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPullRequestOverrideState = {
  type t;
  type request = {
revisionId: revisionId,
pullRequestId: pullRequestId
}
  type response = {
overrider: option<arn>,
overridden: option<overridden>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetPullRequestOverrideStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMergeCommit = {
  type t;
  type request = {
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
destinationCommitSpecifier: commitName,
sourceCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
mergedCommitId: option<objectId>,
baseCommitId: option<objectId>,
destinationCommitId: option<objectId>,
sourceCommitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetMergeCommitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFile = {
  type t;
  type request = {
filePath: path,
commitSpecifier: option<commitName>,
repositoryName: repositoryName
}
  type response = {
fileContent: fileContent,
fileSize: objectSize,
fileMode: fileModeTypeEnum,
filePath: path,
blobId: objectId,
commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetFileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBlob = {
  type t;
  type request = {
blobId: objectId,
repositoryName: repositoryName
}
  type response = {
content: blob
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetBlobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateApprovalRuleTemplateFromRepository = {
  type t;
  type request = {
repositoryName: repositoryName,
approvalRuleTemplateName: approvalRuleTemplateName
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DisassociateApprovalRuleTemplateFromRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module DeleteRepository = {
  type t;
  type request = {
repositoryName: repositoryName
}
  type response = {
repositoryId: option<repositoryId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DeleteRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeletePullRequestApprovalRule = {
  type t;
  type request = {
approvalRuleName: approvalRuleName,
pullRequestId: pullRequestId
}
  type response = {
approvalRuleId: approvalRuleId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DeletePullRequestApprovalRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFile = {
  type t;
  type request = {
email: option<email>,
name: option<name>,
commitMessage: option<message>,
keepEmptyFolders: option<keepEmptyFolders>,
parentCommitId: commitId,
filePath: path,
branchName: branchName,
repositoryName: repositoryName
}
  type response = {
filePath: path,
treeId: objectId,
blobId: objectId,
commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DeleteFileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteApprovalRuleTemplate = {
  type t;
  type request = {
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
approvalRuleTemplateId: approvalRuleTemplateId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DeleteApprovalRuleTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBranch = {
  type t;
  type request = {
commitId: commitId,
branchName: branchName,
repositoryName: repositoryName
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "CreateBranchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module AssociateApprovalRuleTemplateWithRepository = {
  type t;
  type request = {
repositoryName: repositoryName,
approvalRuleTemplateName: approvalRuleTemplateName
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "AssociateApprovalRuleTemplateWithRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module UpdateApprovalRuleTemplateName = {
  type t;
  type request = {
newApprovalRuleTemplateName: approvalRuleTemplateName,
oldApprovalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
approvalRuleTemplate: approvalRuleTemplate
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdateApprovalRuleTemplateNameCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApprovalRuleTemplateDescription = {
  type t;
  type request = {
approvalRuleTemplateDescription: approvalRuleTemplateDescription,
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
approvalRuleTemplate: approvalRuleTemplate
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdateApprovalRuleTemplateDescriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateApprovalRuleTemplateContent = {
  type t;
  type request = {
existingRuleContentSha256: option<ruleContentSha256>,
newRuleContent: approvalRuleTemplateContent,
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
approvalRuleTemplate: approvalRuleTemplate
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdateApprovalRuleTemplateContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeysList,
resourceArn: resourceArn
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagsMap,
resourceArn: resourceArn
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
nextToken: option<nextToken>,
resourceArn: resourceArn
}
  type response = {
nextToken: option<nextToken>,
tags: option<tagsMap>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRepositoriesForApprovalRuleTemplate = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
nextToken: option<nextToken>,
repositoryNames: option<repositoryNameList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "ListRepositoriesForApprovalRuleTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListPullRequests = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
pullRequestStatus: option<pullRequestStatusEnum>,
authorArn: option<arn>,
repositoryName: repositoryName
}
  type response = {
nextToken: option<nextToken>,
pullRequestIds: pullRequestIdList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "ListPullRequestsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListBranches = {
  type t;
  type request = {
nextToken: option<nextToken>,
repositoryName: repositoryName
}
  type response = {
nextToken: option<nextToken>,
branches: option<branchNameList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "ListBranchesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedApprovalRuleTemplatesForRepository = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
repositoryName: repositoryName
}
  type response = {
nextToken: option<nextToken>,
approvalRuleTemplateNames: option<approvalRuleTemplateNameList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "ListAssociatedApprovalRuleTemplatesForRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListApprovalRuleTemplates = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
approvalRuleTemplateNames: option<approvalRuleTemplateNameList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "ListApprovalRuleTemplatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRepository = {
  type t;
  type request = {
repositoryName: repositoryName
}
  type response = {
repositoryMetadata: option<repositoryMetadata>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMergeOptions = {
  type t;
  type request = {
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
destinationCommitSpecifier: commitName,
sourceCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
baseCommitId: objectId,
destinationCommitId: objectId,
sourceCommitId: objectId,
mergeOptions: mergeOptions
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetMergeOptionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBranch = {
  type t;
  type request = {
branchName: option<branchName>,
repositoryName: option<repositoryName>
}
  type response = {
branch: option<branchInfo>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetBranchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetApprovalRuleTemplate = {
  type t;
  type request = {
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
approvalRuleTemplate: approvalRuleTemplate
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetApprovalRuleTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBranch = {
  type t;
  type request = {
branchName: branchName,
repositoryName: repositoryName
}
  type response = {
deletedBranch: option<branchInfo>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DeleteBranchCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRepository = {
  type t;
  type request = {
tags: option<tagsMap>,
repositoryDescription: option<repositoryDescription>,
repositoryName: repositoryName
}
  type response = {
repositoryMetadata: option<repositoryMetadata>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "CreateRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateApprovalRuleTemplate = {
  type t;
  type request = {
approvalRuleTemplateDescription: option<approvalRuleTemplateDescription>,
approvalRuleTemplateContent: approvalRuleTemplateContent,
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
approvalRuleTemplate: approvalRuleTemplate
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "CreateApprovalRuleTemplateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestApprovalRuleContent = {
  type t;
  type request = {
newRuleContent: approvalRuleContent,
existingRuleContentSha256: option<ruleContentSha256>,
approvalRuleName: approvalRuleName,
pullRequestId: pullRequestId
}
  type response = {
approvalRule: approvalRule
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdatePullRequestApprovalRuleContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateComment = {
  type t;
  type request = {
content: content,
commentId: commentId
}
  type response = {
comment: option<comment>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdateCommentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PostCommentReply = {
  type t;
  type request = {
content: content,
clientRequestToken: option<clientRequestToken>,
inReplyTo: commentId
}
  type response = {
comment: option<comment>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "PostCommentReplyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PostCommentForPullRequest = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
content: content,
location: option<location>,
afterCommitId: commitId,
beforeCommitId: commitId,
repositoryName: repositoryName,
pullRequestId: pullRequestId
}
  type response = {
comment: option<comment>,
location: option<location>,
afterBlobId: option<objectId>,
beforeBlobId: option<objectId>,
afterCommitId: option<commitId>,
beforeCommitId: option<commitId>,
pullRequestId: option<pullRequestId>,
repositoryName: option<repositoryName>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "PostCommentForPullRequestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PostCommentForComparedCommit = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
content: content,
location: option<location>,
afterCommitId: commitId,
beforeCommitId: option<commitId>,
repositoryName: repositoryName
}
  type response = {
comment: option<comment>,
location: option<location>,
afterBlobId: option<objectId>,
beforeBlobId: option<objectId>,
afterCommitId: option<commitId>,
beforeCommitId: option<commitId>,
repositoryName: option<repositoryName>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "PostCommentForComparedCommitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRepositories = {
  type t;
  type request = {
order: option<orderEnum>,
sortBy: option<sortByEnum>,
nextToken: option<nextToken>
}
  type response = {
nextToken: option<nextToken>,
repositories: option<repositoryNameIdPairList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "ListRepositoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPullRequestApprovalStates = {
  type t;
  type request = {
revisionId: revisionId,
pullRequestId: pullRequestId
}
  type response = {
approvals: option<approvalList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetPullRequestApprovalStatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetFolder = {
  type t;
  type request = {
folderPath: path,
commitSpecifier: option<commitName>,
repositoryName: repositoryName
}
  type response = {
subModules: option<subModuleList>,
symbolicLinks: option<symbolicLinkList>,
files: option<fileList>,
subFolders: option<folderList>,
treeId: option<objectId>,
folderPath: path,
commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCommit = {
  type t;
  type request = {
commitId: objectId,
repositoryName: repositoryName
}
  type response = {
commit: commit
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetCommitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetComment = {
  type t;
  type request = {
commentId: commentId
}
  type response = {
comment: option<comment>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetCommentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EvaluatePullRequestApprovalRules = {
  type t;
  type request = {
revisionId: revisionId,
pullRequestId: pullRequestId
}
  type response = {
evaluation: evaluation
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "EvaluatePullRequestApprovalRulesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCommentContent = {
  type t;
  type request = {
commentId: commentId
}
  type response = {
comment: option<comment>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DeleteCommentContentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePullRequestApprovalRule = {
  type t;
  type request = {
approvalRuleContent: approvalRuleContent,
approvalRuleName: approvalRuleName,
pullRequestId: pullRequestId
}
  type response = {
approvalRule: approvalRule
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "CreatePullRequestApprovalRuleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetRepositories = {
  type t;
  type request = {
repositoryNames: repositoryNameList
}
  type response = {
repositoriesNotFound: option<repositoryNotFoundList>,
repositories: option<repositoryMetadataList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "BatchGetRepositoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateApprovalRuleTemplateFromRepositories = {
  type t;
  type request = {
repositoryNames: repositoryNameList,
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
errors: batchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList,
disassociatedRepositoryNames: repositoryNameList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "BatchDisassociateApprovalRuleTemplateFromRepositoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateApprovalRuleTemplateWithRepositories = {
  type t;
  type request = {
repositoryNames: repositoryNameList,
approvalRuleTemplateName: approvalRuleTemplateName
}
  type response = {
errors: batchAssociateApprovalRuleTemplateWithRepositoriesErrorsList,
associatedRepositoryNames: repositoryNameList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "BatchAssociateApprovalRuleTemplateWithRepositoriesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestRepositoryTriggers = {
  type t;
  type request = {
triggers: repositoryTriggersList,
repositoryName: repositoryName
}
  type response = {
failedExecutions: option<repositoryTriggerExecutionFailureList>,
successfulExecutions: option<repositoryTriggerNameList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "TestRepositoryTriggersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRepositoryTriggers = {
  type t;
  type request = {
triggers: repositoryTriggersList,
repositoryName: repositoryName
}
  type response = {
configurationId: option<repositoryTriggersConfigurationId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "PutRepositoryTriggersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MergeBranchesByThreeWay = {
  type t;
  type request = {
conflictResolution: option<conflictResolution>,
keepEmptyFolders: option<keepEmptyFolders>,
commitMessage: option<message>,
email: option<email>,
authorName: option<name>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
targetBranch: option<branchName>,
destinationCommitSpecifier: commitName,
sourceCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
treeId: option<objectId>,
commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "MergeBranchesByThreeWayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MergeBranchesBySquash = {
  type t;
  type request = {
conflictResolution: option<conflictResolution>,
keepEmptyFolders: option<keepEmptyFolders>,
commitMessage: option<message>,
email: option<email>,
authorName: option<name>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
targetBranch: option<branchName>,
destinationCommitSpecifier: commitName,
sourceCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
treeId: option<objectId>,
commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "MergeBranchesBySquashCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRepositoryTriggers = {
  type t;
  type request = {
repositoryName: repositoryName
}
  type response = {
triggers: option<repositoryTriggersList>,
configurationId: option<repositoryTriggersConfigurationId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetRepositoryTriggersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetMergeConflicts = {
  type t;
  type request = {
nextToken: option<nextToken>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
maxConflictFiles: option<maxResults>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
mergeOption: mergeOptionTypeEnum,
sourceCommitSpecifier: commitName,
destinationCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
nextToken: option<nextToken>,
conflictMetadataList: conflictMetadataList,
baseCommitId: option<objectId>,
sourceCommitId: objectId,
destinationCommitId: objectId,
mergeable: isMergeable
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetMergeConflictsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDifferences = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<limit>,
afterPath: option<path>,
beforePath: option<path>,
afterCommitSpecifier: commitName,
beforeCommitSpecifier: option<commitName>,
repositoryName: repositoryName
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
differences: option<differenceList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetDifferencesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCommentReactions = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
reactionUserArn: option<arn>,
commentId: commentId
}
  type response = {
nextToken: option<nextToken>,
reactionsForComment: reactionsForCommentList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetCommentReactionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeMergeConflicts = {
  type t;
  type request = {
nextToken: option<nextToken>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
filePath: path,
maxMergeHunks: option<maxResults>,
mergeOption: mergeOptionTypeEnum,
sourceCommitSpecifier: commitName,
destinationCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
baseCommitId: option<objectId>,
sourceCommitId: objectId,
destinationCommitId: objectId,
nextToken: option<nextToken>,
mergeHunks: mergeHunks,
conflictMetadata: conflictMetadata
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DescribeMergeConflictsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUnreferencedMergeCommit = {
  type t;
  type request = {
conflictResolution: option<conflictResolution>,
keepEmptyFolders: option<keepEmptyFolders>,
commitMessage: option<message>,
email: option<email>,
authorName: option<name>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
mergeOption: mergeOptionTypeEnum,
destinationCommitSpecifier: commitName,
sourceCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
treeId: option<objectId>,
commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "CreateUnreferencedMergeCommitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCommit = {
  type t;
  type request = {
setFileModes: option<setFileModeEntries>,
deleteFiles: option<deleteFileEntries>,
putFiles: option<putFileEntries>,
keepEmptyFolders: option<keepEmptyFolders>,
commitMessage: option<message>,
email: option<email>,
authorName: option<name>,
parentCommitId: option<commitId>,
branchName: branchName,
repositoryName: repositoryName
}
  type response = {
filesDeleted: option<filesMetadata>,
filesUpdated: option<filesMetadata>,
filesAdded: option<filesMetadata>,
treeId: option<objectId>,
commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "CreateCommitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchGetCommits = {
  type t;
  type request = {
repositoryName: repositoryName,
commitIds: commitIdsInputList
}
  type response = {
errors: option<batchGetCommitsErrorsList>,
commits: option<commitObjectsList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "BatchGetCommitsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestTitle = {
  type t;
  type request = {
title: title,
pullRequestId: pullRequestId
}
  type response = {
pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdatePullRequestTitleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestStatus = {
  type t;
  type request = {
pullRequestStatus: pullRequestStatusEnum,
pullRequestId: pullRequestId
}
  type response = {
pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdatePullRequestStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestDescription = {
  type t;
  type request = {
description: description,
pullRequestId: pullRequestId
}
  type response = {
pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "UpdatePullRequestDescriptionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MergePullRequestByThreeWay = {
  type t;
  type request = {
conflictResolution: option<conflictResolution>,
keepEmptyFolders: option<keepEmptyFolders>,
email: option<email>,
authorName: option<name>,
commitMessage: option<message>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
sourceCommitId: option<objectId>,
repositoryName: repositoryName,
pullRequestId: pullRequestId
}
  type response = {
pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "MergePullRequestByThreeWayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MergePullRequestBySquash = {
  type t;
  type request = {
conflictResolution: option<conflictResolution>,
keepEmptyFolders: option<keepEmptyFolders>,
email: option<email>,
authorName: option<name>,
commitMessage: option<message>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
sourceCommitId: option<objectId>,
repositoryName: repositoryName,
pullRequestId: pullRequestId
}
  type response = {
pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "MergePullRequestBySquashCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module MergePullRequestByFastForward = {
  type t;
  type request = {
sourceCommitId: option<objectId>,
repositoryName: repositoryName,
pullRequestId: pullRequestId
}
  type response = {
pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "MergePullRequestByFastForwardCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetPullRequest = {
  type t;
  type request = {
pullRequestId: pullRequestId
}
  type response = {
pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetPullRequestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribePullRequestEvents = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
actorArn: option<arn>,
pullRequestEventType: option<pullRequestEventType>,
pullRequestId: pullRequestId
}
  type response = {
nextToken: option<nextToken>,
pullRequestEvents: pullRequestEventList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "DescribePullRequestEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePullRequest = {
  type t;
  type request = {
clientRequestToken: option<clientRequestToken>,
targets: targetList,
description: option<description>,
title: title
}
  type response = {
pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "CreatePullRequestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCommentsForPullRequest = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
afterCommitId: option<commitId>,
beforeCommitId: option<commitId>,
repositoryName: option<repositoryName>,
pullRequestId: pullRequestId
}
  type response = {
nextToken: option<nextToken>,
commentsForPullRequestData: option<commentsForPullRequestData>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetCommentsForPullRequestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCommentsForComparedCommit = {
  type t;
  type request = {
maxResults: option<maxResults>,
nextToken: option<nextToken>,
afterCommitId: commitId,
beforeCommitId: option<commitId>,
repositoryName: repositoryName
}
  type response = {
nextToken: option<nextToken>,
commentsForComparedCommitData: option<commentsForComparedCommitData>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "GetCommentsForComparedCommitCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDescribeMergeConflicts = {
  type t;
  type request = {
nextToken: option<nextToken>,
conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
filePaths: option<filePaths>,
maxConflictFiles: option<maxResults>,
maxMergeHunks: option<maxResults>,
mergeOption: mergeOptionTypeEnum,
sourceCommitSpecifier: commitName,
destinationCommitSpecifier: commitName,
repositoryName: repositoryName
}
  type response = {
baseCommitId: option<objectId>,
sourceCommitId: objectId,
destinationCommitId: objectId,
errors: option<batchDescribeMergeConflictsErrors>,
nextToken: option<nextToken>,
conflicts: conflicts
}
  @module("@aws-sdk/client-codecommit") @new external new_: (request) => t = "BatchDescribeMergeConflictsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
