type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type blob = NodeJs.Buffer.t;
type title = string
type tagValue = string
type tagKey = string
type sortByEnum = [@as("lastModifiedDate") #lastModifiedDate | @as("repositoryName") #repositoryName]
type ruleContentSha256 = string
type revisionId = string
type resourceArn = string
type repositoryTriggersConfigurationId = string
type repositoryTriggerName = string
type repositoryTriggerExecutionFailureMessage = string
type repositoryTriggerEventEnum = [@as("deleteReference") #deleteReference | @as("createReference") #createReference | @as("updateReference") #updateReference | @as("all") #all]
type repositoryTriggerCustomData = string
type repositoryName = string
type repositoryId = string
type repositoryDescription = string
type replacementTypeEnum = [@as("USE_NEW_CONTENT") #USE_NEW_CONTENT | @as("KEEP_DESTINATION") #KEEP_DESTINATION | @as("KEEP_SOURCE") #KEEP_SOURCE | @as("KEEP_BASE") #KEEP_BASE]
type relativeFileVersionEnum = [@as("AFTER") #AFTER | @as("BEFORE") #BEFORE]
type referenceName = string
type reactionValue = string
type reactionUnicode = string
type reactionShortCode = string
type reactionEmoji = string
type pullRequestStatusEnum = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type pullRequestId = string
type pullRequestEventType = [@as("PULL_REQUEST_APPROVAL_STATE_CHANGED") #PULL_REQUEST_APPROVAL_STATE_CHANGED | @as("PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN") #PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN | @as("PULL_REQUEST_APPROVAL_RULE_DELETED") #PULL_REQUEST_APPROVAL_RULE_DELETED | @as("PULL_REQUEST_APPROVAL_RULE_UPDATED") #PULL_REQUEST_APPROVAL_RULE_UPDATED | @as("PULL_REQUEST_APPROVAL_RULE_CREATED") #PULL_REQUEST_APPROVAL_RULE_CREATED | @as("PULL_REQUEST_MERGE_STATE_CHANGED") #PULL_REQUEST_MERGE_STATE_CHANGED | @as("PULL_REQUEST_SOURCE_REFERENCE_UPDATED") #PULL_REQUEST_SOURCE_REFERENCE_UPDATED | @as("PULL_REQUEST_STATUS_CHANGED") #PULL_REQUEST_STATUS_CHANGED | @as("PULL_REQUEST_CREATED") #PULL_REQUEST_CREATED]
type position = float;
type path = string
type overrideStatus = [@as("REVOKE") #REVOKE | @as("OVERRIDE") #OVERRIDE]
type overridden = bool;
type orderEnum = [@as("descending") #descending | @as("ascending") #ascending]
type objectTypeEnum = [@as("SYMBOLIC_LINK") #SYMBOLIC_LINK | @as("GIT_LINK") #GIT_LINK | @as("DIRECTORY") #DIRECTORY | @as("FILE") #FILE]
type objectSize = float;
type objectId = string
type numberOfConflicts = int;
type nextToken = string
type name = string
type mode = string
type message = string
type mergeOptionTypeEnum = [@as("THREE_WAY_MERGE") #THREE_WAY_MERGE | @as("SQUASH_MERGE") #SQUASH_MERGE | @as("FAST_FORWARD_MERGE") #FAST_FORWARD_MERGE]
type maxResults = int;
type lineNumber = int;
type limit = int;
type lastModifiedDate = Js.Date.t;
type keepEmptyFolders = bool;
type isObjectTypeConflict = bool;
type isMove = bool;
type isMerged = bool;
type isMergeable = bool;
type isHunkConflict = bool;
type isFileModeConflict = bool;
type isContentConflict = bool;
type isCommentDeleted = bool;
type hunkContent = string
type fileSize = float;
type fileModeTypeEnum = [@as("SYMLINK") #SYMLINK | @as("NORMAL") #NORMAL | @as("EXECUTABLE") #EXECUTABLE]
type fileContent = NodeJs.Buffer.t;
type exceptionName = string
type eventDate = Js.Date.t;
type errorMessage = string
type errorCode = string
type email = string
type description = string
type date = string
type creationDate = Js.Date.t;
type count = int;
type content = string
type conflictResolutionStrategyTypeEnum = [@as("AUTOMERGE") #AUTOMERGE | @as("ACCEPT_DESTINATION") #ACCEPT_DESTINATION | @as("ACCEPT_SOURCE") #ACCEPT_SOURCE | @as("NONE") #NONE]
type conflictDetailLevelTypeEnum = [@as("LINE_LEVEL") #LINE_LEVEL | @as("FILE_LEVEL") #FILE_LEVEL]
type commitName = string
type commitId = string
type commentId = string
type cloneUrlSsh = string
type cloneUrlHttp = string
type clientRequestToken = string
type changeTypeEnum = [@as("D") #D | @as("M") #M | @as("A") #A]
type capitalBoolean = bool;
type branchName = string
type arn = string
type approved = bool;
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
@as("date") date: date,
@as("email") email: email,
@as("name") name: name
}
type target = {
@as("destinationReference") destinationReference: referenceName,
@as("sourceReference") sourceReference: option<referenceName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
type tagsMap = Js.Dict.t< tagValue>
type tagKeysList = array<tagKey>
type symbolicLink = {
@as("fileMode") fileMode: fileModeTypeEnum,
@as("relativePath") relativePath: path,
@as("absolutePath") absolutePath: path,
@as("blobId") blobId: objectId
}
type subModule = {
@as("relativePath") relativePath: path,
@as("absolutePath") absolutePath: path,
@as("commitId") commitId: objectId
}
type sourceFileSpecifier = {
@as("isMove") isMove: isMove,
@as("filePath") filePath: option<path>
}
type setFileModeEntry = {
@as("fileMode") fileMode: option<fileModeTypeEnum>,
@as("filePath") filePath: option<path>
}
type repositoryTriggerNameList = array<repositoryTriggerName>
type repositoryTriggerExecutionFailure = {
@as("failureMessage") failureMessage: repositoryTriggerExecutionFailureMessage,
@as("trigger") trigger: repositoryTriggerName
}
type repositoryTriggerEventList = array<repositoryTriggerEventEnum>
type repositoryNotFoundList = array<repositoryName>
type repositoryNameList = array<repositoryName>
type repositoryNameIdPair = {
@as("repositoryId") repositoryId: repositoryId,
@as("repositoryName") repositoryName: repositoryName
}
type repositoryMetadata = {
@as("Arn") arn: arn,
@as("cloneUrlSsh") cloneUrlSsh: cloneUrlSsh,
@as("cloneUrlHttp") cloneUrlHttp: cloneUrlHttp,
@as("creationDate") creationDate: creationDate,
@as("lastModifiedDate") lastModifiedDate: lastModifiedDate,
@as("defaultBranch") defaultBranch: branchName,
@as("repositoryDescription") repositoryDescription: repositoryDescription,
@as("repositoryName") repositoryName: repositoryName,
@as("repositoryId") repositoryId: repositoryId,
@as("accountId") accountId: accountId
}
type replaceContentEntry = {
@as("fileMode") fileMode: fileModeTypeEnum,
@as("content") content: fileContent,
@as("replacementType") replacementType: option<replacementTypeEnum>,
@as("filePath") filePath: option<path>
}
type reactionValueFormats = {
@as("unicode") unicode: reactionUnicode,
@as("shortCode") shortCode: reactionShortCode,
@as("emoji") emoji: reactionEmoji
}
type reactionUsersList = array<arn>
type reactionCountsMap = Js.Dict.t< count>
type pullRequestStatusChangedEventMetadata = {
@as("pullRequestStatus") pullRequestStatus: pullRequestStatusEnum
}
type pullRequestSourceReferenceUpdatedEventMetadata = {
@as("mergeBase") mergeBase: commitId,
@as("afterCommitId") afterCommitId: commitId,
@as("beforeCommitId") beforeCommitId: commitId,
@as("repositoryName") repositoryName: repositoryName
}
type pullRequestIdList = array<pullRequestId>
type pullRequestCreatedEventMetadata = {
@as("mergeBase") mergeBase: commitId,
@as("destinationCommitId") destinationCommitId: commitId,
@as("sourceCommitId") sourceCommitId: commitId,
@as("repositoryName") repositoryName: repositoryName
}
type parentList = array<objectId>
type originApprovalRuleTemplate = {
@as("approvalRuleTemplateName") approvalRuleTemplateName: approvalRuleTemplateName,
@as("approvalRuleTemplateId") approvalRuleTemplateId: approvalRuleTemplateId
}
type objectTypes = {
@as("base") base: objectTypeEnum,
@as("destination") destination: objectTypeEnum,
@as("source") source: objectTypeEnum
}
type mergeOptions = array<mergeOptionTypeEnum>
type mergeOperations = {
@as("destination") destination: changeTypeEnum,
@as("source") source: changeTypeEnum
}
type mergeMetadata = {
@as("mergeOption") mergeOption: mergeOptionTypeEnum,
@as("mergeCommitId") mergeCommitId: commitId,
@as("mergedBy") mergedBy: arn,
@as("isMerged") isMerged: isMerged
}
type mergeHunkDetail = {
@as("hunkContent") hunkContent: hunkContent,
@as("endLine") endLine: lineNumber,
@as("startLine") startLine: lineNumber
}
type location = {
@as("relativeFileVersion") relativeFileVersion: relativeFileVersionEnum,
@as("filePosition") filePosition: position,
@as("filePath") filePath: path
}
type isBinaryFile = {
@as("base") base: capitalBoolean,
@as("destination") destination: capitalBoolean,
@as("source") source: capitalBoolean
}
type folder = {
@as("relativePath") relativePath: path,
@as("absolutePath") absolutePath: path,
@as("treeId") treeId: objectId
}
type fileSizes = {
@as("base") base: fileSize,
@as("destination") destination: fileSize,
@as("source") source: fileSize
}
type filePaths = array<path>
type fileModes = {
@as("base") base: fileModeTypeEnum,
@as("destination") destination: fileModeTypeEnum,
@as("source") source: fileModeTypeEnum
}
type fileMetadata = {
@as("fileMode") fileMode: fileModeTypeEnum,
@as("blobId") blobId: objectId,
@as("absolutePath") absolutePath: path
}
type file = {
@as("fileMode") fileMode: fileModeTypeEnum,
@as("relativePath") relativePath: path,
@as("absolutePath") absolutePath: path,
@as("blobId") blobId: objectId
}
type deleteFileEntry = {
@as("filePath") filePath: option<path>
}
type commitIdsInputList = array<objectId>
type callerReactions = array<reactionValue>
type branchNameList = array<branchName>
type branchInfo = {
@as("commitId") commitId: commitId,
@as("branchName") branchName: branchName
}
type blobMetadata = {
@as("mode") mode: mode,
@as("path") path: path,
@as("blobId") blobId: objectId
}
type batchGetCommitsError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("commitId") commitId: objectId
}
type batchDisassociateApprovalRuleTemplateFromRepositoriesError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("repositoryName") repositoryName: repositoryName
}
type batchDescribeMergeConflictsError = {
@as("message") message: option<message>,
@as("exceptionName") exceptionName: option<exceptionName>,
@as("filePath") filePath: option<path>
}
type batchAssociateApprovalRuleTemplateWithRepositoriesError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("repositoryName") repositoryName: repositoryName
}
type approvalStateChangedEventMetadata = {
@as("approvalStatus") approvalStatus: approvalState,
@as("revisionId") revisionId: revisionId
}
type approvalRulesSatisfiedList = array<approvalRuleName>
type approvalRulesNotSatisfiedList = array<approvalRuleName>
type approvalRuleTemplateNameList = array<approvalRuleTemplateName>
type approvalRuleTemplate = {
@as("lastModifiedUser") lastModifiedUser: arn,
@as("creationDate") creationDate: creationDate,
@as("lastModifiedDate") lastModifiedDate: lastModifiedDate,
@as("ruleContentSha256") ruleContentSha256: ruleContentSha256,
@as("approvalRuleTemplateContent") approvalRuleTemplateContent: approvalRuleTemplateContent,
@as("approvalRuleTemplateDescription") approvalRuleTemplateDescription: approvalRuleTemplateDescription,
@as("approvalRuleTemplateName") approvalRuleTemplateName: approvalRuleTemplateName,
@as("approvalRuleTemplateId") approvalRuleTemplateId: approvalRuleTemplateId
}
type approvalRuleOverriddenEventMetadata = {
@as("overrideStatus") overrideStatus: overrideStatus,
@as("revisionId") revisionId: revisionId
}
type approvalRuleEventMetadata = {
@as("approvalRuleContent") approvalRuleContent: approvalRuleContent,
@as("approvalRuleId") approvalRuleId: approvalRuleId,
@as("approvalRuleName") approvalRuleName: approvalRuleName
}
type approval = {
@as("approvalState") approvalState: approvalState,
@as("userArn") userArn: arn
}
type targetList = array<target>
type symbolicLinkList = array<symbolicLink>
type subModuleList = array<subModule>
type setFileModeEntries = array<setFileModeEntry>
type repositoryTriggerExecutionFailureList = array<repositoryTriggerExecutionFailure>
type repositoryTrigger = {
@as("events") events: option<repositoryTriggerEventList>,
@as("branches") branches: branchNameList,
@as("customData") customData: repositoryTriggerCustomData,
@as("destinationArn") destinationArn: option<arn>,
@as("name") name: option<repositoryTriggerName>
}
type repositoryNameIdPairList = array<repositoryNameIdPair>
type repositoryMetadataList = array<repositoryMetadata>
type replaceContentEntries = array<replaceContentEntry>
type reactionForComment = {
@as("reactionsFromDeletedUsersCount") reactionsFromDeletedUsersCount: count,
@as("reactionUsers") reactionUsers: reactionUsersList,
@as("reaction") reaction: reactionValueFormats
}
type putFileEntry = {
@as("sourceFile") sourceFile: sourceFileSpecifier,
@as("fileContent") fileContent: fileContent,
@as("fileMode") fileMode: fileModeTypeEnum,
@as("filePath") filePath: option<path>
}
type pullRequestTarget = {
@as("mergeMetadata") mergeMetadata: mergeMetadata,
@as("mergeBase") mergeBase: commitId,
@as("sourceCommit") sourceCommit: commitId,
@as("destinationCommit") destinationCommit: commitId,
@as("destinationReference") destinationReference: referenceName,
@as("sourceReference") sourceReference: referenceName,
@as("repositoryName") repositoryName: repositoryName
}
type pullRequestMergedStateChangedEventMetadata = {
@as("mergeMetadata") mergeMetadata: mergeMetadata,
@as("destinationReference") destinationReference: referenceName,
@as("repositoryName") repositoryName: repositoryName
}
type mergeHunk = {
@as("base") base: mergeHunkDetail,
@as("destination") destination: mergeHunkDetail,
@as("source") source: mergeHunkDetail,
@as("isConflict") isConflict: isHunkConflict
}
type folderList = array<folder>
type filesMetadata = array<fileMetadata>
type fileList = array<file>
type evaluation = {
@as("approvalRulesNotSatisfied") approvalRulesNotSatisfied: approvalRulesNotSatisfiedList,
@as("approvalRulesSatisfied") approvalRulesSatisfied: approvalRulesSatisfiedList,
@as("overridden") overridden: overridden,
@as("approved") approved: approved
}
type difference = {
@as("changeType") changeType: changeTypeEnum,
@as("afterBlob") afterBlob: blobMetadata,
@as("beforeBlob") beforeBlob: blobMetadata
}
type deleteFileEntries = array<deleteFileEntry>
type conflictMetadata = {
@as("mergeOperations") mergeOperations: mergeOperations,
@as("objectTypeConflict") objectTypeConflict: isObjectTypeConflict,
@as("fileModeConflict") fileModeConflict: isFileModeConflict,
@as("contentConflict") contentConflict: isContentConflict,
@as("isBinaryFile") isBinaryFile: isBinaryFile,
@as("numberOfConflicts") numberOfConflicts: numberOfConflicts,
@as("objectTypes") objectTypes: objectTypes,
@as("fileModes") fileModes: fileModes,
@as("fileSizes") fileSizes: fileSizes,
@as("filePath") filePath: path
}
type commit = {
@as("additionalData") additionalData: additionalData,
@as("committer") committer: userInfo,
@as("author") author: userInfo,
@as("message") message: message,
@as("parents") parents: parentList,
@as("treeId") treeId: objectId,
@as("commitId") commitId: objectId
}
type comment = {
@as("reactionCounts") reactionCounts: reactionCountsMap,
@as("callerReactions") callerReactions: callerReactions,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("deleted") deleted: isCommentDeleted,
@as("authorArn") authorArn: arn,
@as("lastModifiedDate") lastModifiedDate: lastModifiedDate,
@as("creationDate") creationDate: creationDate,
@as("inReplyTo") inReplyTo: commentId,
@as("content") content: content,
@as("commentId") commentId: commentId
}
type batchGetCommitsErrorsList = array<batchGetCommitsError>
type batchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList = array<batchDisassociateApprovalRuleTemplateFromRepositoriesError>
type batchDescribeMergeConflictsErrors = array<batchDescribeMergeConflictsError>
type batchAssociateApprovalRuleTemplateWithRepositoriesErrorsList = array<batchAssociateApprovalRuleTemplateWithRepositoriesError>
type approvalRule = {
@as("originApprovalRuleTemplate") originApprovalRuleTemplate: originApprovalRuleTemplate,
@as("lastModifiedUser") lastModifiedUser: arn,
@as("creationDate") creationDate: creationDate,
@as("lastModifiedDate") lastModifiedDate: lastModifiedDate,
@as("ruleContentSha256") ruleContentSha256: ruleContentSha256,
@as("approvalRuleContent") approvalRuleContent: approvalRuleContent,
@as("approvalRuleName") approvalRuleName: approvalRuleName,
@as("approvalRuleId") approvalRuleId: approvalRuleId
}
type approvalList = array<approval>
type repositoryTriggersList = array<repositoryTrigger>
type reactionsForCommentList = array<reactionForComment>
type putFileEntries = array<putFileEntry>
type pullRequestTargetList = array<pullRequestTarget>
type pullRequestEvent = {
@as("approvalRuleOverriddenEventMetadata") approvalRuleOverriddenEventMetadata: approvalRuleOverriddenEventMetadata,
@as("approvalStateChangedEventMetadata") approvalStateChangedEventMetadata: approvalStateChangedEventMetadata,
@as("approvalRuleEventMetadata") approvalRuleEventMetadata: approvalRuleEventMetadata,
@as("pullRequestMergedStateChangedEventMetadata") pullRequestMergedStateChangedEventMetadata: pullRequestMergedStateChangedEventMetadata,
@as("pullRequestSourceReferenceUpdatedEventMetadata") pullRequestSourceReferenceUpdatedEventMetadata: pullRequestSourceReferenceUpdatedEventMetadata,
@as("pullRequestStatusChangedEventMetadata") pullRequestStatusChangedEventMetadata: pullRequestStatusChangedEventMetadata,
@as("pullRequestCreatedEventMetadata") pullRequestCreatedEventMetadata: pullRequestCreatedEventMetadata,
@as("actorArn") actorArn: arn,
@as("pullRequestEventType") pullRequestEventType: pullRequestEventType,
@as("eventDate") eventDate: eventDate,
@as("pullRequestId") pullRequestId: pullRequestId
}
type mergeHunks = array<mergeHunk>
type differenceList = array<difference>
type conflictResolution = {
@as("setFileModes") setFileModes: setFileModeEntries,
@as("deleteFiles") deleteFiles: deleteFileEntries,
@as("replaceContents") replaceContents: replaceContentEntries
}
type conflictMetadataList = array<conflictMetadata>
type commitObjectsList = array<commit>
type comments = array<comment>
type approvalRulesList = array<approvalRule>
type pullRequestEventList = array<pullRequestEvent>
type pullRequest = {
@as("approvalRules") approvalRules: approvalRulesList,
@as("revisionId") revisionId: revisionId,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("pullRequestTargets") pullRequestTargets: pullRequestTargetList,
@as("authorArn") authorArn: arn,
@as("pullRequestStatus") pullRequestStatus: pullRequestStatusEnum,
@as("creationDate") creationDate: creationDate,
@as("lastActivityDate") lastActivityDate: lastModifiedDate,
@as("description") description: description,
@as("title") title: title,
@as("pullRequestId") pullRequestId: pullRequestId
}
type conflict = {
@as("mergeHunks") mergeHunks: mergeHunks,
@as("conflictMetadata") conflictMetadata: conflictMetadata
}
type commentsForPullRequest = {
@as("comments") comments: comments,
@as("location") location: location,
@as("afterBlobId") afterBlobId: objectId,
@as("beforeBlobId") beforeBlobId: objectId,
@as("afterCommitId") afterCommitId: commitId,
@as("beforeCommitId") beforeCommitId: commitId,
@as("repositoryName") repositoryName: repositoryName,
@as("pullRequestId") pullRequestId: pullRequestId
}
type commentsForComparedCommit = {
@as("comments") comments: comments,
@as("location") location: location,
@as("afterBlobId") afterBlobId: objectId,
@as("beforeBlobId") beforeBlobId: objectId,
@as("afterCommitId") afterCommitId: commitId,
@as("beforeCommitId") beforeCommitId: commitId,
@as("repositoryName") repositoryName: repositoryName
}
type conflicts = array<conflict>
type commentsForPullRequestData = array<commentsForPullRequest>
type commentsForComparedCommitData = array<commentsForComparedCommit>
type clientType;
@module("@aws-sdk/client-codecommit") @new external createClient: unit => clientType = "CodeCommitClient";
module UpdateRepositoryName = {
  type t;
  type request = {
@as("newName") newName: option<repositoryName>,
@as("oldName") oldName: option<repositoryName>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdateRepositoryNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateRepositoryDescription = {
  type t;
  type request = {
@as("repositoryDescription") repositoryDescription: repositoryDescription,
@as("repositoryName") repositoryName: option<repositoryName>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdateRepositoryDescriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdatePullRequestApprovalState = {
  type t;
  type request = {
@as("approvalState") approvalState: option<approvalState>,
@as("revisionId") revisionId: option<revisionId>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdatePullRequestApprovalStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateDefaultBranch = {
  type t;
  type request = {
@as("defaultBranchName") defaultBranchName: option<branchName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdateDefaultBranchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module PutFile = {
  type t;
  type request = {
@as("email") email: email,
@as("name") name: name,
@as("commitMessage") commitMessage: message,
@as("parentCommitId") parentCommitId: commitId,
@as("fileMode") fileMode: fileModeTypeEnum,
@as("filePath") filePath: option<path>,
@as("fileContent") fileContent: option<fileContent>,
@as("branchName") branchName: option<branchName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("treeId") treeId: option<objectId>,
@as("blobId") blobId: option<objectId>,
@as("commitId") commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "PutFileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutCommentReaction = {
  type t;
  type request = {
@as("reactionValue") reactionValue: option<reactionValue>,
@as("commentId") commentId: option<commentId>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "PutCommentReactionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module OverridePullRequestApprovalRules = {
  type t;
  type request = {
@as("overrideStatus") overrideStatus: option<overrideStatus>,
@as("revisionId") revisionId: option<revisionId>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "OverridePullRequestApprovalRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module MergeBranchesByFastForward = {
  type t;
  type request = {
@as("targetBranch") targetBranch: branchName,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("treeId") treeId: objectId,
@as("commitId") commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "MergeBranchesByFastForwardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPullRequestOverrideState = {
  type t;
  type request = {
@as("revisionId") revisionId: option<revisionId>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("overrider") overrider: arn,
@as("overridden") overridden: overridden
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetPullRequestOverrideStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMergeCommit = {
  type t;
  type request = {
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("mergedCommitId") mergedCommitId: objectId,
@as("baseCommitId") baseCommitId: objectId,
@as("destinationCommitId") destinationCommitId: objectId,
@as("sourceCommitId") sourceCommitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetMergeCommitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFile = {
  type t;
  type request = {
@as("filePath") filePath: option<path>,
@as("commitSpecifier") commitSpecifier: commitName,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("fileContent") fileContent: option<fileContent>,
@as("fileSize") fileSize: option<objectSize>,
@as("fileMode") fileMode: option<fileModeTypeEnum>,
@as("filePath") filePath: option<path>,
@as("blobId") blobId: option<objectId>,
@as("commitId") commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetFileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBlob = {
  type t;
  type request = {
@as("blobId") blobId: option<objectId>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("content") content: option<blob>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetBlobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateApprovalRuleTemplateFromRepository = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DisassociateApprovalRuleTemplateFromRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteRepository = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("repositoryId") repositoryId: repositoryId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DeleteRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePullRequestApprovalRule = {
  type t;
  type request = {
@as("approvalRuleName") approvalRuleName: option<approvalRuleName>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("approvalRuleId") approvalRuleId: option<approvalRuleId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DeletePullRequestApprovalRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFile = {
  type t;
  type request = {
@as("email") email: email,
@as("name") name: name,
@as("commitMessage") commitMessage: message,
@as("keepEmptyFolders") keepEmptyFolders: keepEmptyFolders,
@as("parentCommitId") parentCommitId: option<commitId>,
@as("filePath") filePath: option<path>,
@as("branchName") branchName: option<branchName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("filePath") filePath: option<path>,
@as("treeId") treeId: option<objectId>,
@as("blobId") blobId: option<objectId>,
@as("commitId") commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DeleteFileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteApprovalRuleTemplate = {
  type t;
  type request = {
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("approvalRuleTemplateId") approvalRuleTemplateId: option<approvalRuleTemplateId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DeleteApprovalRuleTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBranch = {
  type t;
  type request = {
@as("commitId") commitId: option<commitId>,
@as("branchName") branchName: option<branchName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "CreateBranchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module AssociateApprovalRuleTemplateWithRepository = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "AssociateApprovalRuleTemplateWithRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateApprovalRuleTemplateName = {
  type t;
  type request = {
@as("newApprovalRuleTemplateName") newApprovalRuleTemplateName: option<approvalRuleTemplateName>,
@as("oldApprovalRuleTemplateName") oldApprovalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("approvalRuleTemplate") approvalRuleTemplate: option<approvalRuleTemplate>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdateApprovalRuleTemplateNameCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApprovalRuleTemplateDescription = {
  type t;
  type request = {
@as("approvalRuleTemplateDescription") approvalRuleTemplateDescription: option<approvalRuleTemplateDescription>,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("approvalRuleTemplate") approvalRuleTemplate: option<approvalRuleTemplate>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdateApprovalRuleTemplateDescriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateApprovalRuleTemplateContent = {
  type t;
  type request = {
@as("existingRuleContentSha256") existingRuleContentSha256: ruleContentSha256,
@as("newRuleContent") newRuleContent: option<approvalRuleTemplateContent>,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("approvalRuleTemplate") approvalRuleTemplate: option<approvalRuleTemplate>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdateApprovalRuleTemplateContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeysList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagsMap>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("tags") tags: tagsMap
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRepositoriesForApprovalRuleTemplate = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("repositoryNames") repositoryNames: repositoryNameList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "ListRepositoriesForApprovalRuleTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPullRequests = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("pullRequestStatus") pullRequestStatus: pullRequestStatusEnum,
@as("authorArn") authorArn: arn,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("pullRequestIds") pullRequestIds: option<pullRequestIdList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "ListPullRequestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListBranches = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("branches") branches: branchNameList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "ListBranchesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssociatedApprovalRuleTemplatesForRepository = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("approvalRuleTemplateNames") approvalRuleTemplateNames: approvalRuleTemplateNameList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "ListAssociatedApprovalRuleTemplatesForRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListApprovalRuleTemplates = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("approvalRuleTemplateNames") approvalRuleTemplateNames: approvalRuleTemplateNameList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "ListApprovalRuleTemplatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRepository = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("repositoryMetadata") repositoryMetadata: repositoryMetadata
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMergeOptions = {
  type t;
  type request = {
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("baseCommitId") baseCommitId: option<objectId>,
@as("destinationCommitId") destinationCommitId: option<objectId>,
@as("sourceCommitId") sourceCommitId: option<objectId>,
@as("mergeOptions") mergeOptions: option<mergeOptions>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetMergeOptionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBranch = {
  type t;
  type request = {
@as("branchName") branchName: branchName,
@as("repositoryName") repositoryName: repositoryName
}
  type response = {
@as("branch") branch: branchInfo
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetBranchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetApprovalRuleTemplate = {
  type t;
  type request = {
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("approvalRuleTemplate") approvalRuleTemplate: option<approvalRuleTemplate>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetApprovalRuleTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBranch = {
  type t;
  type request = {
@as("branchName") branchName: option<branchName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("deletedBranch") deletedBranch: branchInfo
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DeleteBranchCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRepository = {
  type t;
  type request = {
@as("tags") tags: tagsMap,
@as("repositoryDescription") repositoryDescription: repositoryDescription,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("repositoryMetadata") repositoryMetadata: repositoryMetadata
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "CreateRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateApprovalRuleTemplate = {
  type t;
  type request = {
@as("approvalRuleTemplateDescription") approvalRuleTemplateDescription: approvalRuleTemplateDescription,
@as("approvalRuleTemplateContent") approvalRuleTemplateContent: option<approvalRuleTemplateContent>,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("approvalRuleTemplate") approvalRuleTemplate: option<approvalRuleTemplate>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "CreateApprovalRuleTemplateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestApprovalRuleContent = {
  type t;
  type request = {
@as("newRuleContent") newRuleContent: option<approvalRuleContent>,
@as("existingRuleContentSha256") existingRuleContentSha256: ruleContentSha256,
@as("approvalRuleName") approvalRuleName: option<approvalRuleName>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("approvalRule") approvalRule: option<approvalRule>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdatePullRequestApprovalRuleContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateComment = {
  type t;
  type request = {
@as("content") content: option<content>,
@as("commentId") commentId: option<commentId>
}
  type response = {
@as("comment") comment: comment
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdateCommentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PostCommentReply = {
  type t;
  type request = {
@as("content") content: option<content>,
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("inReplyTo") inReplyTo: option<commentId>
}
  type response = {
@as("comment") comment: comment
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "PostCommentReplyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PostCommentForPullRequest = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("content") content: option<content>,
@as("location") location: location,
@as("afterCommitId") afterCommitId: option<commitId>,
@as("beforeCommitId") beforeCommitId: option<commitId>,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("comment") comment: comment,
@as("location") location: location,
@as("afterBlobId") afterBlobId: objectId,
@as("beforeBlobId") beforeBlobId: objectId,
@as("afterCommitId") afterCommitId: commitId,
@as("beforeCommitId") beforeCommitId: commitId,
@as("pullRequestId") pullRequestId: pullRequestId,
@as("repositoryName") repositoryName: repositoryName
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "PostCommentForPullRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PostCommentForComparedCommit = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("content") content: option<content>,
@as("location") location: location,
@as("afterCommitId") afterCommitId: option<commitId>,
@as("beforeCommitId") beforeCommitId: commitId,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("comment") comment: comment,
@as("location") location: location,
@as("afterBlobId") afterBlobId: objectId,
@as("beforeBlobId") beforeBlobId: objectId,
@as("afterCommitId") afterCommitId: commitId,
@as("beforeCommitId") beforeCommitId: commitId,
@as("repositoryName") repositoryName: repositoryName
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "PostCommentForComparedCommitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRepositories = {
  type t;
  type request = {
@as("order") order: orderEnum,
@as("sortBy") sortBy: sortByEnum,
@as("nextToken") nextToken: nextToken
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("repositories") repositories: repositoryNameIdPairList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "ListRepositoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPullRequestApprovalStates = {
  type t;
  type request = {
@as("revisionId") revisionId: option<revisionId>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("approvals") approvals: approvalList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetPullRequestApprovalStatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFolder = {
  type t;
  type request = {
@as("folderPath") folderPath: option<path>,
@as("commitSpecifier") commitSpecifier: commitName,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("subModules") subModules: subModuleList,
@as("symbolicLinks") symbolicLinks: symbolicLinkList,
@as("files") files: fileList,
@as("subFolders") subFolders: folderList,
@as("treeId") treeId: objectId,
@as("folderPath") folderPath: option<path>,
@as("commitId") commitId: option<objectId>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCommit = {
  type t;
  type request = {
@as("commitId") commitId: option<objectId>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("commit") commit: option<commit>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetCommitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetComment = {
  type t;
  type request = {
@as("commentId") commentId: option<commentId>
}
  type response = {
@as("comment") comment: comment
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetCommentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EvaluatePullRequestApprovalRules = {
  type t;
  type request = {
@as("revisionId") revisionId: option<revisionId>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("evaluation") evaluation: option<evaluation>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "EvaluatePullRequestApprovalRulesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCommentContent = {
  type t;
  type request = {
@as("commentId") commentId: option<commentId>
}
  type response = {
@as("comment") comment: comment
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DeleteCommentContentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePullRequestApprovalRule = {
  type t;
  type request = {
@as("approvalRuleContent") approvalRuleContent: option<approvalRuleContent>,
@as("approvalRuleName") approvalRuleName: option<approvalRuleName>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("approvalRule") approvalRule: option<approvalRule>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "CreatePullRequestApprovalRuleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetRepositories = {
  type t;
  type request = {
@as("repositoryNames") repositoryNames: option<repositoryNameList>
}
  type response = {
@as("repositoriesNotFound") repositoriesNotFound: repositoryNotFoundList,
@as("repositories") repositories: repositoryMetadataList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "BatchGetRepositoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateApprovalRuleTemplateFromRepositories = {
  type t;
  type request = {
@as("repositoryNames") repositoryNames: option<repositoryNameList>,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("errors") errors: option<batchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList>,
@as("disassociatedRepositoryNames") disassociatedRepositoryNames: option<repositoryNameList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "BatchDisassociateApprovalRuleTemplateFromRepositoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateApprovalRuleTemplateWithRepositories = {
  type t;
  type request = {
@as("repositoryNames") repositoryNames: option<repositoryNameList>,
@as("approvalRuleTemplateName") approvalRuleTemplateName: option<approvalRuleTemplateName>
}
  type response = {
@as("errors") errors: option<batchAssociateApprovalRuleTemplateWithRepositoriesErrorsList>,
@as("associatedRepositoryNames") associatedRepositoryNames: option<repositoryNameList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "BatchAssociateApprovalRuleTemplateWithRepositoriesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestRepositoryTriggers = {
  type t;
  type request = {
@as("triggers") triggers: option<repositoryTriggersList>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("failedExecutions") failedExecutions: repositoryTriggerExecutionFailureList,
@as("successfulExecutions") successfulExecutions: repositoryTriggerNameList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "TestRepositoryTriggersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRepositoryTriggers = {
  type t;
  type request = {
@as("triggers") triggers: option<repositoryTriggersList>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("configurationId") configurationId: repositoryTriggersConfigurationId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "PutRepositoryTriggersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MergeBranchesByThreeWay = {
  type t;
  type request = {
@as("conflictResolution") conflictResolution: conflictResolution,
@as("keepEmptyFolders") keepEmptyFolders: keepEmptyFolders,
@as("commitMessage") commitMessage: message,
@as("email") email: email,
@as("authorName") authorName: name,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("targetBranch") targetBranch: branchName,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("treeId") treeId: objectId,
@as("commitId") commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "MergeBranchesByThreeWayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MergeBranchesBySquash = {
  type t;
  type request = {
@as("conflictResolution") conflictResolution: conflictResolution,
@as("keepEmptyFolders") keepEmptyFolders: keepEmptyFolders,
@as("commitMessage") commitMessage: message,
@as("email") email: email,
@as("authorName") authorName: name,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("targetBranch") targetBranch: branchName,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("treeId") treeId: objectId,
@as("commitId") commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "MergeBranchesBySquashCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRepositoryTriggers = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("triggers") triggers: repositoryTriggersList,
@as("configurationId") configurationId: repositoryTriggersConfigurationId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetRepositoryTriggersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMergeConflicts = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("maxConflictFiles") maxConflictFiles: maxResults,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("mergeOption") mergeOption: option<mergeOptionTypeEnum>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("conflictMetadataList") conflictMetadataList: option<conflictMetadataList>,
@as("baseCommitId") baseCommitId: objectId,
@as("sourceCommitId") sourceCommitId: option<objectId>,
@as("destinationCommitId") destinationCommitId: option<objectId>,
@as("mergeable") mergeable: option<isMergeable>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetMergeConflictsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDifferences = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: limit,
@as("afterPath") afterPath: path,
@as("beforePath") beforePath: path,
@as("afterCommitSpecifier") afterCommitSpecifier: option<commitName>,
@as("beforeCommitSpecifier") beforeCommitSpecifier: commitName,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("differences") differences: differenceList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetDifferencesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCommentReactions = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("reactionUserArn") reactionUserArn: arn,
@as("commentId") commentId: option<commentId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("reactionsForComment") reactionsForComment: option<reactionsForCommentList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetCommentReactionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeMergeConflicts = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("filePath") filePath: option<path>,
@as("maxMergeHunks") maxMergeHunks: maxResults,
@as("mergeOption") mergeOption: option<mergeOptionTypeEnum>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("baseCommitId") baseCommitId: objectId,
@as("sourceCommitId") sourceCommitId: option<objectId>,
@as("destinationCommitId") destinationCommitId: option<objectId>,
@as("nextToken") nextToken: nextToken,
@as("mergeHunks") mergeHunks: option<mergeHunks>,
@as("conflictMetadata") conflictMetadata: option<conflictMetadata>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DescribeMergeConflictsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUnreferencedMergeCommit = {
  type t;
  type request = {
@as("conflictResolution") conflictResolution: conflictResolution,
@as("keepEmptyFolders") keepEmptyFolders: keepEmptyFolders,
@as("commitMessage") commitMessage: message,
@as("email") email: email,
@as("authorName") authorName: name,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("mergeOption") mergeOption: option<mergeOptionTypeEnum>,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("treeId") treeId: objectId,
@as("commitId") commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "CreateUnreferencedMergeCommitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCommit = {
  type t;
  type request = {
@as("setFileModes") setFileModes: setFileModeEntries,
@as("deleteFiles") deleteFiles: deleteFileEntries,
@as("putFiles") putFiles: putFileEntries,
@as("keepEmptyFolders") keepEmptyFolders: keepEmptyFolders,
@as("commitMessage") commitMessage: message,
@as("email") email: email,
@as("authorName") authorName: name,
@as("parentCommitId") parentCommitId: commitId,
@as("branchName") branchName: option<branchName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("filesDeleted") filesDeleted: filesMetadata,
@as("filesUpdated") filesUpdated: filesMetadata,
@as("filesAdded") filesAdded: filesMetadata,
@as("treeId") treeId: objectId,
@as("commitId") commitId: objectId
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "CreateCommitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchGetCommits = {
  type t;
  type request = {
@as("repositoryName") repositoryName: option<repositoryName>,
@as("commitIds") commitIds: option<commitIdsInputList>
}
  type response = {
@as("errors") errors: batchGetCommitsErrorsList,
@as("commits") commits: commitObjectsList
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "BatchGetCommitsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestTitle = {
  type t;
  type request = {
@as("title") title: option<title>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("pullRequest") pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdatePullRequestTitleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestStatus = {
  type t;
  type request = {
@as("pullRequestStatus") pullRequestStatus: option<pullRequestStatusEnum>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("pullRequest") pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdatePullRequestStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePullRequestDescription = {
  type t;
  type request = {
@as("description") description: option<description>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("pullRequest") pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "UpdatePullRequestDescriptionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MergePullRequestByThreeWay = {
  type t;
  type request = {
@as("conflictResolution") conflictResolution: conflictResolution,
@as("keepEmptyFolders") keepEmptyFolders: keepEmptyFolders,
@as("email") email: email,
@as("authorName") authorName: name,
@as("commitMessage") commitMessage: message,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("sourceCommitId") sourceCommitId: objectId,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("pullRequest") pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "MergePullRequestByThreeWayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MergePullRequestBySquash = {
  type t;
  type request = {
@as("conflictResolution") conflictResolution: conflictResolution,
@as("keepEmptyFolders") keepEmptyFolders: keepEmptyFolders,
@as("email") email: email,
@as("authorName") authorName: name,
@as("commitMessage") commitMessage: message,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("sourceCommitId") sourceCommitId: objectId,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("pullRequest") pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "MergePullRequestBySquashCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module MergePullRequestByFastForward = {
  type t;
  type request = {
@as("sourceCommitId") sourceCommitId: objectId,
@as("repositoryName") repositoryName: option<repositoryName>,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("pullRequest") pullRequest: pullRequest
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "MergePullRequestByFastForwardCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetPullRequest = {
  type t;
  type request = {
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("pullRequest") pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetPullRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePullRequestEvents = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("actorArn") actorArn: arn,
@as("pullRequestEventType") pullRequestEventType: pullRequestEventType,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("pullRequestEvents") pullRequestEvents: option<pullRequestEventList>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "DescribePullRequestEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePullRequest = {
  type t;
  type request = {
@as("clientRequestToken") clientRequestToken: clientRequestToken,
@as("targets") targets: option<targetList>,
@as("description") description: description,
@as("title") title: option<title>
}
  type response = {
@as("pullRequest") pullRequest: option<pullRequest>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "CreatePullRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCommentsForPullRequest = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("afterCommitId") afterCommitId: commitId,
@as("beforeCommitId") beforeCommitId: commitId,
@as("repositoryName") repositoryName: repositoryName,
@as("pullRequestId") pullRequestId: option<pullRequestId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("commentsForPullRequestData") commentsForPullRequestData: commentsForPullRequestData
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetCommentsForPullRequestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCommentsForComparedCommit = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("afterCommitId") afterCommitId: option<commitId>,
@as("beforeCommitId") beforeCommitId: commitId,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("commentsForComparedCommitData") commentsForComparedCommitData: commentsForComparedCommitData
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "GetCommentsForComparedCommitCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDescribeMergeConflicts = {
  type t;
  type request = {
@as("nextToken") nextToken: nextToken,
@as("conflictResolutionStrategy") conflictResolutionStrategy: conflictResolutionStrategyTypeEnum,
@as("conflictDetailLevel") conflictDetailLevel: conflictDetailLevelTypeEnum,
@as("filePaths") filePaths: filePaths,
@as("maxConflictFiles") maxConflictFiles: maxResults,
@as("maxMergeHunks") maxMergeHunks: maxResults,
@as("mergeOption") mergeOption: option<mergeOptionTypeEnum>,
@as("sourceCommitSpecifier") sourceCommitSpecifier: option<commitName>,
@as("destinationCommitSpecifier") destinationCommitSpecifier: option<commitName>,
@as("repositoryName") repositoryName: option<repositoryName>
}
  type response = {
@as("baseCommitId") baseCommitId: objectId,
@as("sourceCommitId") sourceCommitId: option<objectId>,
@as("destinationCommitId") destinationCommitId: option<objectId>,
@as("errors") errors: batchDescribeMergeConflictsErrors,
@as("nextToken") nextToken: nextToken,
@as("conflicts") conflicts: option<conflicts>
}
  @module("@aws-sdk/client-codecommit") @new external new_: (Js.Promise.t<request>) => t = "BatchDescribeMergeConflictsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
