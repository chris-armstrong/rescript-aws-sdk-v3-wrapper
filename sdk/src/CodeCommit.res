type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codecommit") @new
external createClient: unit => awsServiceClient = "CodeCommitClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type blob = NodeJs.Buffer.t
type title = string
type tagValue = string
type tagKey = string
type sortByEnum = [
  | @as("lastModifiedDate") #LastModifiedDate
  | @as("repositoryName") #RepositoryName
]
type ruleContentSha256 = string
type revisionId = string
type resourceArn = string
type repositoryTriggersConfigurationId = string
type repositoryTriggerName = string
type repositoryTriggerExecutionFailureMessage = string
type repositoryTriggerEventEnum = [
  | @as("deleteReference") #DeleteReference
  | @as("createReference") #CreateReference
  | @as("updateReference") #UpdateReference
  | @as("all") #All
]
type repositoryTriggerCustomData = string
type repositoryName = string
type repositoryId = string
type repositoryDescription = string
type replacementTypeEnum = [
  | @as("USE_NEW_CONTENT") #USE_NEW_CONTENT
  | @as("KEEP_DESTINATION") #KEEP_DESTINATION
  | @as("KEEP_SOURCE") #KEEP_SOURCE
  | @as("KEEP_BASE") #KEEP_BASE
]
type relativeFileVersionEnum = [@as("AFTER") #AFTER | @as("BEFORE") #BEFORE]
type referenceName = string
type reactionValue = string
type reactionUnicode = string
type reactionShortCode = string
type reactionEmoji = string
type pullRequestStatusEnum = [@as("CLOSED") #CLOSED | @as("OPEN") #OPEN]
type pullRequestId = string
type pullRequestEventType = [
  | @as("PULL_REQUEST_APPROVAL_STATE_CHANGED") #PULL_REQUEST_APPROVAL_STATE_CHANGED
  | @as("PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN") #PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN
  | @as("PULL_REQUEST_APPROVAL_RULE_DELETED") #PULL_REQUEST_APPROVAL_RULE_DELETED
  | @as("PULL_REQUEST_APPROVAL_RULE_UPDATED") #PULL_REQUEST_APPROVAL_RULE_UPDATED
  | @as("PULL_REQUEST_APPROVAL_RULE_CREATED") #PULL_REQUEST_APPROVAL_RULE_CREATED
  | @as("PULL_REQUEST_MERGE_STATE_CHANGED") #PULL_REQUEST_MERGE_STATE_CHANGED
  | @as("PULL_REQUEST_SOURCE_REFERENCE_UPDATED") #PULL_REQUEST_SOURCE_REFERENCE_UPDATED
  | @as("PULL_REQUEST_STATUS_CHANGED") #PULL_REQUEST_STATUS_CHANGED
  | @as("PULL_REQUEST_CREATED") #PULL_REQUEST_CREATED
]
type position = float
type path = string
type overrideStatus = [@as("REVOKE") #REVOKE | @as("OVERRIDE") #OVERRIDE]
type overridden = bool
type orderEnum = [@as("descending") #Descending | @as("ascending") #Ascending]
type objectTypeEnum = [
  | @as("SYMBOLIC_LINK") #SYMBOLIC_LINK
  | @as("GIT_LINK") #GIT_LINK
  | @as("DIRECTORY") #DIRECTORY
  | @as("FILE") #FILE
]
type objectSize = float
type objectId = string
type numberOfConflicts = int
type nextToken = string
type name = string
type mode = string
type message = string
type mergeOptionTypeEnum = [
  | @as("THREE_WAY_MERGE") #THREE_WAY_MERGE
  | @as("SQUASH_MERGE") #SQUASH_MERGE
  | @as("FAST_FORWARD_MERGE") #FAST_FORWARD_MERGE
]
type maxResults = int
type lineNumber = int
type limit = int
type lastModifiedDate = Js.Date.t
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
type fileModeTypeEnum = [
  | @as("SYMLINK") #SYMLINK
  | @as("NORMAL") #NORMAL
  | @as("EXECUTABLE") #EXECUTABLE
]
type fileContent = NodeJs.Buffer.t
type exceptionName = string
type eventDate = Js.Date.t
type errorMessage = string
type errorCode = string
type email = string
type description = string
type date = string
type creationDate = Js.Date.t
type count = int
type content = string
type conflictResolutionStrategyTypeEnum = [
  | @as("AUTOMERGE") #AUTOMERGE
  | @as("ACCEPT_DESTINATION") #ACCEPT_DESTINATION
  | @as("ACCEPT_SOURCE") #ACCEPT_SOURCE
  | @as("NONE") #NONE
]
type conflictDetailLevelTypeEnum = [@as("LINE_LEVEL") #LINE_LEVEL | @as("FILE_LEVEL") #FILE_LEVEL]
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
@ocaml.doc("<p>Information about the user who made a specified commit.</p>")
type userInfo = {
  @ocaml.doc(
    "<p>The date when the specified commit was commited, in timestamp format with GMT offset.</p>"
  )
  date: option<date>,
  @ocaml.doc("<p>The email address associated with the user who made the commit, if any.</p>")
  email: option<email>,
  @ocaml.doc("<p>The name of the user who made the specified commit.</p>") name: option<name>,
}
@ocaml.doc("<p>Returns information about a target for a pull request.</p>")
type target = {
  @ocaml.doc("<p>The branch of the repository where the pull request changes are merged. Also known as
            the destination branch.</p>")
  destinationReference: option<referenceName>,
  @ocaml.doc(
    "<p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>"
  )
  sourceReference: referenceName,
  @ocaml.doc("<p>The name of the repository that contains the pull request.</p>")
  repositoryName: repositoryName,
}
type tagsMap = Js.Dict.t<tagValue>
type tagKeysList = array<tagKey>
@ocaml.doc("<p>Returns information about a symbolic link in a repository folder.</p>")
type symbolicLink = {
  @ocaml.doc(
    "<p>The file mode permissions of the blob that cotains information about the symbolic link.</p>"
  )
  fileMode: option<fileModeTypeEnum>,
  @ocaml.doc(
    "<p>The relative path of the symbolic link from the folder where the query originated.</p>"
  )
  relativePath: option<path>,
  @ocaml.doc("<p>The fully qualified path to the folder that contains the symbolic link.</p>")
  absolutePath: option<path>,
  @ocaml.doc("<p>The blob ID that contains the information about the symbolic link.</p>")
  blobId: option<objectId>,
}
@ocaml.doc("<p>Returns information about a submodule reference in a repository folder.</p>")
type subModule = {
  @ocaml.doc(
    "<p>The relative path of the submodule from the folder where the query originated.</p>"
  )
  relativePath: option<path>,
  @ocaml.doc(
    "<p>The fully qualified path to the folder that contains the reference to the submodule.</p>"
  )
  absolutePath: option<path>,
  @ocaml.doc("<p>The commit ID that contains the reference to the submodule.</p>")
  commitId: option<objectId>,
}
@ocaml.doc("<p>Information about a source file that is part of changes made in a commit.</p>")
type sourceFileSpecifier = {
  @ocaml.doc("<p>Whether to remove the source file from the parent commit.</p>")
  isMove: option<isMove>,
  @ocaml.doc("<p>The full path to the file, including the name of the file.</p>") filePath: path,
}
@ocaml.doc("<p>Information about the file mode changes.</p>")
type setFileModeEntry = {
  @ocaml.doc("<p>The file mode for the file.</p>") fileMode: fileModeTypeEnum,
  @ocaml.doc("<p>The full path to the file, including the name of the file.</p>") filePath: path,
}
type repositoryTriggerNameList = array<repositoryTriggerName>
@ocaml.doc("<p>A trigger failed to run.</p>")
type repositoryTriggerExecutionFailure = {
  @ocaml.doc("<p>Message information about the trigger that did not run.</p>")
  failureMessage: option<repositoryTriggerExecutionFailureMessage>,
  @ocaml.doc("<p>The name of the trigger that did not run.</p>")
  trigger: option<repositoryTriggerName>,
}
type repositoryTriggerEventList = array<repositoryTriggerEventEnum>
type repositoryNotFoundList = array<repositoryName>
type repositoryNameList = array<repositoryName>
@ocaml.doc("<p>Information about a repository name and ID.</p>")
type repositoryNameIdPair = {
  @ocaml.doc("<p>The ID associated with the repository.</p>") repositoryId: option<repositoryId>,
  @ocaml.doc("<p>The name associated with the repository.</p>")
  repositoryName: option<repositoryName>,
}
@ocaml.doc("<p>Information about a repository.</p>")
type repositoryMetadata = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the repository.</p>") @as("Arn")
  arn: option<arn>,
  @ocaml.doc("<p>The URL to use for cloning the repository over SSH.</p>")
  cloneUrlSsh: option<cloneUrlSsh>,
  @ocaml.doc("<p>The URL to use for cloning the repository over HTTPS.</p>")
  cloneUrlHttp: option<cloneUrlHttp>,
  @ocaml.doc("<p>The date and time the repository was created, in timestamp format.</p>")
  creationDate: option<creationDate>,
  @ocaml.doc("<p>The date and time the repository was last modified, in timestamp format.</p>")
  lastModifiedDate: option<lastModifiedDate>,
  @ocaml.doc("<p>The repository's default branch name.</p>") defaultBranch: option<branchName>,
  @ocaml.doc("<p>A comment or description about the repository.</p>")
  repositoryDescription: option<repositoryDescription>,
  @ocaml.doc("<p>The repository's name.</p>") repositoryName: option<repositoryName>,
  @ocaml.doc("<p>The ID of the repository.</p>") repositoryId: option<repositoryId>,
  @ocaml.doc("<p>The ID of the AWS account associated with the repository.</p>")
  accountId: option<accountId>,
}
@ocaml.doc(
  "<p>Information about a replacement content entry in the conflict of a merge or pull request operation.</p>"
)
type replaceContentEntry = {
  @ocaml.doc("<p>The file mode to apply during conflict resoltion.</p>")
  fileMode: option<fileModeTypeEnum>,
  @ocaml.doc(
    "<p>The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.</p>"
  )
  content: option<fileContent>,
  @ocaml.doc("<p>The replacement type to use when determining how to resolve the conflict.</p>")
  replacementType: replacementTypeEnum,
  @ocaml.doc("<p>The path of the conflicting file.</p>") filePath: path,
}
@ocaml.doc(
  "<p>Information about the values for reactions to a comment. AWS CodeCommit supports a limited set of reactions.</p>"
)
type reactionValueFormats = {
  @ocaml.doc("<p>The Unicode codepoint for the reaction.</p>") unicode: option<reactionUnicode>,
  @ocaml.doc(
    "<p>The emoji short code for the reaction. Short codes are interpreted slightly differently on different operating systems. </p>"
  )
  shortCode: option<reactionShortCode>,
  @ocaml.doc(
    "<p>The Emoji Version 1.0 graphic of the reaction. These graphics are interpreted slightly differently on different operating systems.</p>"
  )
  emoji: option<reactionEmoji>,
}
type reactionUsersList = array<arn>
type reactionCountsMap = Js.Dict.t<count>
@ocaml.doc("<p>Information about a change to the status of a pull request.</p>")
type pullRequestStatusChangedEventMetadata = {
  @ocaml.doc("<p>The changed status of the pull request.</p>")
  pullRequestStatus: option<pullRequestStatusEnum>,
}
@ocaml.doc("<p>Information about an update to the source branch of a pull request.</p>")
type pullRequestSourceReferenceUpdatedEventMetadata = {
  @ocaml.doc(
    "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"
  )
  mergeBase: option<commitId>,
  @ocaml.doc(
    "<p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.</p>"
  )
  afterCommitId: option<commitId>,
  @ocaml.doc(
    "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.</p>"
  )
  beforeCommitId: option<commitId>,
  @ocaml.doc("<p>The name of the repository where the pull request was updated.</p>")
  repositoryName: option<repositoryName>,
}
type pullRequestIdList = array<pullRequestId>
@ocaml.doc(
  "<p>Metadata about the pull request that is used when comparing the pull request source with its destination.</p>"
)
type pullRequestCreatedEventMetadata = {
  @ocaml.doc(
    "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"
  )
  mergeBase: option<commitId>,
  @ocaml.doc(
    "<p>The commit ID of the tip of the branch specified as the destination branch when the pull request was created.</p>"
  )
  destinationCommitId: option<commitId>,
  @ocaml.doc("<p>The commit ID on the source branch used when the pull request was created.</p>")
  sourceCommitId: option<commitId>,
  @ocaml.doc("<p>The name of the repository where the pull request was created.</p>")
  repositoryName: option<repositoryName>,
}
type parentList = array<objectId>
@ocaml.doc(
  "<p>Returns information about the template that created the approval rule for a pull request.</p>"
)
type originApprovalRuleTemplate = {
  @ocaml.doc("<p>The name of the template that created the approval rule.</p>")
  approvalRuleTemplateName: option<approvalRuleTemplateName>,
  @ocaml.doc("<p>The ID of the template that created the approval rule.</p>")
  approvalRuleTemplateId: option<approvalRuleTemplateId>,
}
@ocaml.doc("<p>Information about the type of an object in a merge operation.</p>")
type objectTypes = {
  @ocaml.doc("<p>The type of the object in the base commit of the merge.</p>")
  base: option<objectTypeEnum>,
  @ocaml.doc("<p>The type of the object in the destination branch.</p>")
  destination: option<objectTypeEnum>,
  @ocaml.doc("<p>The type of the object in the source branch.</p>") source: option<objectTypeEnum>,
}
type mergeOptions = array<mergeOptionTypeEnum>
@ocaml.doc("<p>Information about the file operation conflicts in a merge operation.</p>")
type mergeOperations = {
  @ocaml.doc("<p>The operation on a file in the destination of a merge or pull request.</p>")
  destination: option<changeTypeEnum>,
  @ocaml.doc("<p>The operation (add, modify, or delete) on a file in the source of a merge or pull
            request.</p>")
  source: option<changeTypeEnum>,
}
@ocaml.doc(
  "<p>Returns information about a merge or potential merge between a source reference and a destination reference in a pull request.</p>"
)
type mergeMetadata = {
  @ocaml.doc("<p>The merge strategy used in the merge.</p>")
  mergeOption: option<mergeOptionTypeEnum>,
  @ocaml.doc("<p>The commit ID for the merge commit, if any.</p>") mergeCommitId: option<commitId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who merged the branches.</p>")
  mergedBy: option<arn>,
  @ocaml.doc("<p>A Boolean value indicating whether the merge has been made.</p>")
  isMerged: option<isMerged>,
}
@ocaml.doc(
  "<p>Information about the details of a merge hunk that contains a conflict in a merge or pull request operation.</p>"
)
type mergeHunkDetail = {
  @ocaml.doc("<p>The base-64 encoded content of the hunk merged region that might contain a
            conflict.</p>")
  hunkContent: option<hunkContent>,
  @ocaml.doc("<p>The end position of the hunk in the merge result.</p>")
  endLine: option<lineNumber>,
  @ocaml.doc("<p>The start position of the hunk in the merge result.</p>")
  startLine: option<lineNumber>,
}
@ocaml.doc(
  "<p>Returns information about the location of a change or comment in the comparison between two commits or a pull request.</p>"
)
type location = {
  @ocaml.doc("<p>In a comparison of commits or a pull request, whether the change is in the before or
            after of that comparison.</p>")
  relativeFileVersion: option<relativeFileVersionEnum>,
  @ocaml.doc("<p>The position of a change in a compared file, in line number format.</p>")
  filePosition: option<position>,
  @ocaml.doc(
    "<p>The name of the file being compared, including its extension and subdirectory, if any.</p>"
  )
  filePath: option<path>,
}
@ocaml.doc(
  "<p>Information about whether a file is binary or textual in a merge or pull request operation.</p>"
)
type isBinaryFile = {
  @ocaml.doc(
    "<p>The binary or non-binary status of a file in the base of a merge or pull request.</p>"
  )
  base: option<capitalBoolean>,
  @ocaml.doc(
    "<p>The binary or non-binary status of a file in the destination of a merge or pull request.</p>"
  )
  destination: option<capitalBoolean>,
  @ocaml.doc(
    "<p>The binary or non-binary status of file in the source of a merge or pull request.</p>"
  )
  source: option<capitalBoolean>,
}
@ocaml.doc("<p>Returns information about a folder in a repository.</p>")
type folder = {
  @ocaml.doc(
    "<p>The relative path of the specified folder from the folder where the query originated.</p>"
  )
  relativePath: option<path>,
  @ocaml.doc("<p>The fully qualified path of the folder in the repository.</p>")
  absolutePath: option<path>,
  @ocaml.doc(
    "<p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>"
  )
  treeId: option<objectId>,
}
@ocaml.doc("<p>Information about the size of files in a merge or pull request.</p>")
type fileSizes = {
  @ocaml.doc("<p>The size of a file in the base of a merge or pull request.</p>")
  base: option<fileSize>,
  @ocaml.doc("<p>The size of a file in the destination of a merge or pull request.</p>")
  destination: option<fileSize>,
  @ocaml.doc("<p>The  size of a file in the source of a merge or pull request.</p>")
  source: option<fileSize>,
}
type filePaths = array<path>
@ocaml.doc("<p>Information about file modes in a merge or pull request.</p>")
type fileModes = {
  @ocaml.doc("<p>The file mode of a file in the base of a merge or pull request.</p>")
  base: option<fileModeTypeEnum>,
  @ocaml.doc("<p>The file mode of a file in the destination of a merge or pull request.</p>")
  destination: option<fileModeTypeEnum>,
  @ocaml.doc("<p>The file mode of a file in the source of a merge or pull request.</p>")
  source: option<fileModeTypeEnum>,
}
@ocaml.doc("<p>A file to be added, updated, or deleted as part of a commit.</p>")
type fileMetadata = {
  @ocaml.doc(
    "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"
  )
  fileMode: option<fileModeTypeEnum>,
  @ocaml.doc("<p>The blob ID that contains the file information.</p>") blobId: option<objectId>,
  @ocaml.doc("<p>The full path to the file to be added or updated, including the name of the
            file.</p>")
  absolutePath: option<path>,
}
@ocaml.doc("<p>Returns information about a file in a repository.</p>")
type file = {
  @ocaml.doc(
    "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"
  )
  fileMode: option<fileModeTypeEnum>,
  @ocaml.doc("<p>The relative path of the file from the folder where the query originated.</p>")
  relativePath: option<path>,
  @ocaml.doc("<p>The fully qualified path to the file in the repository.</p>")
  absolutePath: option<path>,
  @ocaml.doc("<p>The blob ID that contains the file information.</p>") blobId: option<objectId>,
}
@ocaml.doc("<p>A file that is deleted as part of a commit.</p>")
type deleteFileEntry = {
  @ocaml.doc("<p>The full path of the file to be deleted, including the name of the file.</p>")
  filePath: path,
}
type commitIdsInputList = array<objectId>
type callerReactions = array<reactionValue>
type branchNameList = array<branchName>
@ocaml.doc("<p>Returns information about a branch.</p>")
type branchInfo = {
  @ocaml.doc("<p>The ID of the last commit made to the branch.</p>") commitId: option<commitId>,
  @ocaml.doc("<p>The name of the branch.</p>") branchName: option<branchName>,
}
@ocaml.doc("<p>Returns information about a specific Git blob object.</p>")
type blobMetadata = {
  @ocaml.doc("<p>The file mode permissions of the blob. File mode permission codes include:</p>
        <ul>
            <li>
               <p>
                  <code>100644</code> indicates read/write</p>
            </li>
            <li>
               <p>
                  <code>100755</code> indicates read/write/execute</p>
            </li>
            <li>
               <p>
                  <code>160000</code> indicates a submodule</p>
            </li>
            <li>
               <p>
                  <code>120000</code> indicates a symlink</p>
            </li>
         </ul>")
  mode: option<mode>,
  @ocaml.doc("<p>The path to the blob and associated file name, if any.</p>") path: option<path>,
  @ocaml.doc("<p>The full ID of the blob.</p>") blobId: option<objectId>,
}
@ocaml.doc("<p>Returns information about errors in a BatchGetCommits operation.</p>")
type batchGetCommitsError = {
  @ocaml.doc(
    "<p>An error message that provides detail about why the commit ID either was not found or was not valid.</p>"
  )
  errorMessage: option<errorMessage>,
  @ocaml.doc(
    "<p>An error code that specifies whether the commit ID was not valid or not found.</p>"
  )
  errorCode: option<errorCode>,
  @ocaml.doc("<p>A commit ID that either could not be found or was not in a valid format.</p>")
  commitId: option<objectId>,
}
@ocaml.doc(
  "<p>Returns information about errors in a BatchDisassociateApprovalRuleTemplateFromRepositories operation.</p>"
)
type batchDisassociateApprovalRuleTemplateFromRepositoriesError = {
  @ocaml.doc(
    "<p>An error message that provides details about why the repository name was either not found or not valid.</p>"
  )
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>An error code that specifies whether the repository name was not valid or not
            found.</p>")
  errorCode: option<errorCode>,
  @ocaml.doc(
    "<p>The name of the repository where the association with the template was not able to be removed.</p>"
  )
  repositoryName: option<repositoryName>,
}
@ocaml.doc("<p>Returns information about errors in a BatchDescribeMergeConflicts operation.</p>")
type batchDescribeMergeConflictsError = {
  @ocaml.doc("<p>The message provided by the exception.</p>") message: message,
  @ocaml.doc("<p>The name of the exception.</p>") exceptionName: exceptionName,
  @ocaml.doc("<p>The path to the file.</p>") filePath: path,
}
@ocaml.doc(
  "<p>Returns information about errors in a BatchAssociateApprovalRuleTemplateWithRepositories operation.</p>"
)
type batchAssociateApprovalRuleTemplateWithRepositoriesError = {
  @ocaml.doc(
    "<p>An error message that provides details about why the repository name was not found or not valid.</p>"
  )
  errorMessage: option<errorMessage>,
  @ocaml.doc(
    "<p>An error code that specifies whether the repository name was not valid or not found.</p>"
  )
  errorCode: option<errorCode>,
  @ocaml.doc("<p>The name of the repository where the association was not made.</p>")
  repositoryName: option<repositoryName>,
}
@ocaml.doc("<p>Returns information about a change in the approval state for a pull request.</p>")
type approvalStateChangedEventMetadata = {
  @ocaml.doc("<p>The approval status for the pull request.</p>")
  approvalStatus: option<approvalState>,
  @ocaml.doc("<p>The revision ID of the pull request when the approval state changed.</p>")
  revisionId: option<revisionId>,
}
type approvalRulesSatisfiedList = array<approvalRuleName>
type approvalRulesNotSatisfiedList = array<approvalRuleName>
type approvalRuleTemplateNameList = array<approvalRuleTemplateName>
@ocaml.doc("<p>Returns information about an approval rule template.</p>")
type approvalRuleTemplate = {
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.</p>"
  )
  lastModifiedUser: option<arn>,
  @ocaml.doc("<p>The date the approval rule template was created, in timestamp format.</p>")
  creationDate: option<creationDate>,
  @ocaml.doc(
    "<p>The date the approval rule template was most recently changed, in timestamp format.</p>"
  )
  lastModifiedDate: option<lastModifiedDate>,
  @ocaml.doc("<p>The SHA-256 hash signature for the content of the approval rule template.</p>")
  ruleContentSha256: option<ruleContentSha256>,
  @ocaml.doc("<p>The content of the approval rule template.</p>")
  approvalRuleTemplateContent: option<approvalRuleTemplateContent>,
  @ocaml.doc("<p>The description of the approval rule template.</p>")
  approvalRuleTemplateDescription: option<approvalRuleTemplateDescription>,
  @ocaml.doc("<p>The name of the approval rule template.</p>")
  approvalRuleTemplateName: option<approvalRuleTemplateName>,
  @ocaml.doc("<p>The system-generated ID of the approval rule template.</p>")
  approvalRuleTemplateId: option<approvalRuleTemplateId>,
}
@ocaml.doc(
  "<p>Returns information about an override event for approval rules for a pull request.</p>"
)
type approvalRuleOverriddenEventMetadata = {
  @ocaml.doc("<p>The status of the override event.</p>") overrideStatus: option<overrideStatus>,
  @ocaml.doc("<p>The revision ID of the pull request when the override event occurred.</p>")
  revisionId: option<revisionId>,
}
@ocaml.doc("<p>Returns information about an event for an approval rule.</p>")
type approvalRuleEventMetadata = {
  @ocaml.doc("<p>The content of the approval rule.</p>")
  approvalRuleContent: option<approvalRuleContent>,
  @ocaml.doc("<p>The system-generated ID of the approval rule.</p>")
  approvalRuleId: option<approvalRuleId>,
  @ocaml.doc("<p>The name of the approval rule.</p>") approvalRuleName: option<approvalRuleName>,
}
@ocaml.doc("<p>Returns information about a specific approval on a pull request.</p>")
type approval = {
  @ocaml.doc("<p>The state of the approval, APPROVE or REVOKE. REVOKE states are not stored.</p>")
  approvalState: option<approvalState>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user.</p>") userArn: option<arn>,
}
type targetList = array<target>
type symbolicLinkList = array<symbolicLink>
type subModuleList = array<subModule>
type setFileModeEntries = array<setFileModeEntry>
type repositoryTriggerExecutionFailureList = array<repositoryTriggerExecutionFailure>
@ocaml.doc("<p>Information about a trigger for a repository.</p>")
type repositoryTrigger = {
  @ocaml.doc("<p>The repository events that cause the trigger to run actions in another service, such
            as sending a notification through Amazon SNS.
            
        </p>
         <note>
            <p>The valid value \"all\" cannot be used with any other values.</p>
         </note>")
  events: repositoryTriggerEventList,
  @ocaml.doc("<p>The branches to be included in the trigger configuration. If you specify an empty
            array, the trigger applies to all branches.</p>
        <note>
            <p>Although no content is required in the array, you must include the array itself.</p>
        </note>")
  branches: option<branchNameList>,
  @ocaml.doc("<p>Any custom data associated with the trigger to be included in the information sent to
            the target of the trigger.</p>")
  customData: option<repositoryTriggerCustomData>,
  @ocaml.doc("<p>The ARN of the resource that is the target for a trigger (for example, the ARN of a
            topic in Amazon SNS).</p>")
  destinationArn: arn,
  @ocaml.doc("<p>The name of the trigger.</p>") name: repositoryTriggerName,
}
type repositoryNameIdPairList = array<repositoryNameIdPair>
type repositoryMetadataList = array<repositoryMetadata>
type replaceContentEntries = array<replaceContentEntry>
@ocaml.doc("<p>Information about the reaction values provided by users on a comment.</p>")
type reactionForComment = {
  @ocaml.doc("<p>A numerical count of users who reacted with the specified emoji whose identities have been subsequently deleted
            from IAM. While these IAM users or roles no longer exist, the reactions might still appear in total reaction counts.</p>")
  reactionsFromDeletedUsersCount: option<count>,
  @ocaml.doc(
    "<p>The Amazon Resource Names (ARNs) of users who have provided reactions to the comment.</p>"
  )
  reactionUsers: option<reactionUsersList>,
  @ocaml.doc("<p>The reaction for a specified comment.</p>") reaction: option<reactionValueFormats>,
}
@ocaml.doc("<p>Information about a file added or updated as part of a commit.</p>")
type putFileEntry = {
  @ocaml.doc("<p>The name and full path of the file that contains the changes you want to make as part of the commit, 
        if you are not providing the file content directly.</p>")
  sourceFile: option<sourceFileSpecifier>,
  @ocaml.doc("<p>The content of the file, if a source file is not specified.</p>")
  fileContent: option<fileContent>,
  @ocaml.doc(
    "<p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>"
  )
  fileMode: option<fileModeTypeEnum>,
  @ocaml.doc("<p>The full path to the file in the repository, including the name of the file.</p>")
  filePath: path,
}
@ocaml.doc("<p>Returns information about a pull request target.</p>")
type pullRequestTarget = {
  @ocaml.doc(
    "<p>Returns metadata about the state of the merge, including whether the merge has been made.</p>"
  )
  mergeMetadata: option<mergeMetadata>,
  @ocaml.doc(
    "<p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>"
  )
  mergeBase: option<commitId>,
  @ocaml.doc("<p>The full commit ID of the tip of the source branch used to create the pull request. If
            the pull request branch is updated by a push while the pull request is open, the commit
            ID changes to reflect the new tip of the branch.</p>")
  sourceCommit: option<commitId>,
  @ocaml.doc(
    "<p>The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.</p>"
  )
  destinationCommit: option<commitId>,
  @ocaml.doc("<p>The branch of the repository where the pull request changes are merged. Also known as
            the destination branch. </p>")
  destinationReference: option<referenceName>,
  @ocaml.doc(
    "<p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>"
  )
  sourceReference: option<referenceName>,
  @ocaml.doc(
    "<p>The name of the repository that contains the pull request source and destination branches.</p>"
  )
  repositoryName: option<repositoryName>,
}
@ocaml.doc(
  "<p>Returns information about the change in the merge state for a pull request event. </p>"
)
type pullRequestMergedStateChangedEventMetadata = {
  @ocaml.doc("<p>Information about the merge state change event.</p>")
  mergeMetadata: option<mergeMetadata>,
  @ocaml.doc("<p>The name of the branch that the pull request is merged into.</p>")
  destinationReference: option<referenceName>,
  @ocaml.doc("<p>The name of the repository where the pull request was created.</p>")
  repositoryName: option<repositoryName>,
}
@ocaml.doc("<p>Information about merge hunks in a merge or pull request operation.</p>")
type mergeHunk = {
  @ocaml.doc("<p>Information about the merge hunk in the base of a merge or pull request.</p>")
  base: option<mergeHunkDetail>,
  @ocaml.doc(
    "<p>Information about the merge hunk in the destination of a merge or pull request.</p>"
  )
  destination: option<mergeHunkDetail>,
  @ocaml.doc("<p>Information about the merge hunk in the source of a merge or pull request.</p>")
  source: option<mergeHunkDetail>,
  @ocaml.doc("<p>A Boolean value indicating whether a combination of hunks contains a conflict.
            Conflicts occur when the same file or the same lines in a file were modified in both the
            source and destination of a merge or pull request. Valid values include true, false, and
            null. True when the hunk represents a conflict and one or more files contains a line
            conflict. File mode conflicts in a merge do not set this to true.</p>")
  isConflict: option<isHunkConflict>,
}
type folderList = array<folder>
type filesMetadata = array<fileMetadata>
type fileList = array<file>
@ocaml.doc(
  "<p>Returns information about the approval rules applied to a pull request and whether conditions have been met.</p>"
)
type evaluation = {
  @ocaml.doc("<p>The names of the approval rules that have not had their conditions met.</p>")
  approvalRulesNotSatisfied: option<approvalRulesNotSatisfiedList>,
  @ocaml.doc("<p>The names of the approval rules that have had their conditions met.</p>")
  approvalRulesSatisfied: option<approvalRulesSatisfiedList>,
  @ocaml.doc(
    "<p>Whether the approval rule requirements for the pull request have been overridden and no longer need to be met.</p>"
  )
  overridden: option<overridden>,
  @ocaml.doc("<p>Whether the state of the pull request is approved.</p>")
  approved: option<approved>,
}
@ocaml.doc("<p>Returns information about a set of differences for a commit specifier.</p>")
type difference = {
  @ocaml.doc(
    "<p>Whether the change type of the difference is an addition (A), deletion (D), or modification (M).</p>"
  )
  changeType: option<changeTypeEnum>,
  @ocaml.doc("<p>Information about an <code>afterBlob</code> data type object, including the ID, 
            the file mode permission code, and the path.</p>")
  afterBlob: option<blobMetadata>,
  @ocaml.doc("<p>Information about a <code>beforeBlob</code> data type object, including the ID, 
            the file mode permission code, and the path.</p>")
  beforeBlob: option<blobMetadata>,
}
type deleteFileEntries = array<deleteFileEntry>
@ocaml.doc("<p>Information about the metadata for a conflict in a merge operation.</p>")
type conflictMetadata = {
  @ocaml.doc(
    "<p>Whether an add, modify, or delete operation caused the conflict between the source and destination of the merge.</p>"
  )
  mergeOperations: option<mergeOperations>,
  @ocaml.doc(
    "<p>A boolean value (true or false) indicating whether there are conflicts between the branches in the object type of a file, folder, or submodule.</p>"
  )
  objectTypeConflict: option<isObjectTypeConflict>,
  @ocaml.doc(
    "<p>A boolean value indicating whether there are conflicts in the file mode of a file.</p>"
  )
  fileModeConflict: option<isFileModeConflict>,
  @ocaml.doc(
    "<p>A boolean value indicating whether there are conflicts in the content of a file.</p>"
  )
  contentConflict: option<isContentConflict>,
  @ocaml.doc(
    "<p>A boolean value (true or false) indicating whether the file is binary or textual in the source, destination, and base of the merge.</p>"
  )
  isBinaryFile: option<isBinaryFile>,
  @ocaml.doc(
    "<p>The number of conflicts, including both hunk conflicts and metadata conflicts.</p>"
  )
  numberOfConflicts: option<numberOfConflicts>,
  @ocaml.doc("<p>Information about any object type conflicts in a merge operation.</p>")
  objectTypes: option<objectTypes>,
  @ocaml.doc("<p>The file modes of the file in the source, destination, and base of the merge.</p>")
  fileModes: option<fileModes>,
  @ocaml.doc("<p>The file sizes of the file in the source, destination, and base of the merge.</p>")
  fileSizes: option<fileSizes>,
  @ocaml.doc("<p>The path of the file that contains conflicts.</p>") filePath: option<path>,
}
@ocaml.doc("<p>Returns information about a specific commit.</p>")
type commit = {
  @ocaml.doc("<p>Any other data associated with the specified commit.</p>")
  additionalData: option<additionalData>,
  @ocaml.doc("<p>Information about the person who committed the specified commit, also known as the committer. Information includes 
        the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured 
        in Git.</p>
        <p>For more information
            about the difference between an author and a committer in Git, see <a href=\"http://git-scm.com/book/ch2-3.html\">Viewing the Commit History</a> in Pro Git
            by Scott Chacon and Ben Straub.</p>")
  committer: option<userInfo>,
  @ocaml.doc("<p>Information about the author of the specified commit. Information includes 
            the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured 
            in Git.</p>")
  author: option<userInfo>,
  @ocaml.doc("<p>The commit message associated with the specified commit.</p>")
  message: option<message>,
  @ocaml.doc(
    "<p>A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.</p>"
  )
  parents: option<parentList>,
  @ocaml.doc("<p>Tree information for the specified commit.</p>") treeId: option<objectId>,
  @ocaml.doc("<p>The full SHA ID of the specified commit. </p>") commitId: option<objectId>,
}
@ocaml.doc("<p>Returns information about a specific comment.</p>")
type comment = {
  @ocaml.doc(
    "<p>A string to integer map that represents the number of individual users who have responded to a comment with the specified reactions.</p>"
  )
  reactionCounts: option<reactionCountsMap>,
  @ocaml.doc(
    "<p>The emoji reactions to a comment, if any, submitted by the user whose credentials are associated with the call to the API.</p>"
  )
  callerReactions: option<callerReactions>,
  @ocaml.doc("<p>A unique, client-generated idempotency token that, when provided in a request, ensures
            the request cannot be repeated with a changed parameter. If a request is received with
            the same parameters and a token is included, the request returns information about the
            initial request that used that token.</p>")
  clientRequestToken: option<clientRequestToken>,
  @ocaml.doc("<p>A Boolean value indicating whether the comment has been deleted.</p>")
  deleted: option<isCommentDeleted>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the person who posted the comment.</p>")
  authorArn: option<arn>,
  @ocaml.doc(
    "<p>The date and time the comment was most recently modified, in timestamp format.</p>"
  )
  lastModifiedDate: option<lastModifiedDate>,
  @ocaml.doc("<p>The date and time the comment was created, in timestamp format.</p>")
  creationDate: option<creationDate>,
  @ocaml.doc("<p>The ID of the comment for which this comment is a reply, if any.</p>")
  inReplyTo: option<commentId>,
  @ocaml.doc("<p>The content of the comment.</p>") content: option<content>,
  @ocaml.doc("<p>The system-generated comment ID.</p>") commentId: option<commentId>,
}
type batchGetCommitsErrorsList = array<batchGetCommitsError>
type batchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList = array<
  batchDisassociateApprovalRuleTemplateFromRepositoriesError,
>
type batchDescribeMergeConflictsErrors = array<batchDescribeMergeConflictsError>
type batchAssociateApprovalRuleTemplateWithRepositoriesErrorsList = array<
  batchAssociateApprovalRuleTemplateWithRepositoriesError,
>
@ocaml.doc("<p>Returns information about an approval rule.</p>")
type approvalRule = {
  @ocaml.doc("<p>The approval rule template used to create the rule.</p>")
  originApprovalRuleTemplate: option<originApprovalRuleTemplate>,
  @ocaml.doc(
    "<p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.</p>"
  )
  lastModifiedUser: option<arn>,
  @ocaml.doc("<p>The date the approval rule was created, in timestamp format.</p>")
  creationDate: option<creationDate>,
  @ocaml.doc("<p>The date the approval rule was most recently changed, in timestamp format.</p>")
  lastModifiedDate: option<lastModifiedDate>,
  @ocaml.doc("<p>The SHA-256 hash signature for the content of the approval rule.</p>")
  ruleContentSha256: option<ruleContentSha256>,
  @ocaml.doc("<p>The content of the approval rule.</p>")
  approvalRuleContent: option<approvalRuleContent>,
  @ocaml.doc("<p>The name of the approval rule.</p>") approvalRuleName: option<approvalRuleName>,
  @ocaml.doc("<p>The system-generated ID of the approval rule.</p>")
  approvalRuleId: option<approvalRuleId>,
}
type approvalList = array<approval>
type repositoryTriggersList = array<repositoryTrigger>
type reactionsForCommentList = array<reactionForComment>
type putFileEntries = array<putFileEntry>
type pullRequestTargetList = array<pullRequestTarget>
@ocaml.doc("<p>Returns information about a pull request event.</p>")
type pullRequestEvent = {
  @ocaml.doc("<p>Information about an approval rule override event for a pull request.</p>")
  approvalRuleOverriddenEventMetadata: option<approvalRuleOverriddenEventMetadata>,
  @ocaml.doc("<p>Information about an approval state change for a pull request.</p>")
  approvalStateChangedEventMetadata: option<approvalStateChangedEventMetadata>,
  @ocaml.doc("<p>Information about a pull request event.</p>")
  approvalRuleEventMetadata: option<approvalRuleEventMetadata>,
  @ocaml.doc("<p>Information about the change in mergability state for the pull request event.</p>")
  pullRequestMergedStateChangedEventMetadata: option<pullRequestMergedStateChangedEventMetadata>,
  @ocaml.doc("<p>Information about the updated source branch for the pull request event. </p>")
  pullRequestSourceReferenceUpdatedEventMetadata: option<
    pullRequestSourceReferenceUpdatedEventMetadata,
  >,
  @ocaml.doc("<p>Information about the change in status for the pull request event.</p>")
  pullRequestStatusChangedEventMetadata: option<pullRequestStatusChangedEventMetadata>,
  @ocaml.doc("<p>Information about the source and destination branches for the pull request.</p>")
  pullRequestCreatedEventMetadata: option<pullRequestCreatedEventMetadata>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
            Examples include updating the pull request with more commits or changing the status of a
            pull request.</p>")
  actorArn: option<arn>,
  @ocaml.doc("<p>The type of the pull request event (for example, a status change event
            (PULL_REQUEST_STATUS_CHANGED) or update event
            (PULL_REQUEST_SOURCE_REFERENCE_UPDATED)).</p>")
  pullRequestEventType: option<pullRequestEventType>,
  @ocaml.doc("<p>The day and time of the pull request event, in timestamp format.</p>")
  eventDate: option<eventDate>,
  @ocaml.doc("<p>The system-generated ID of the pull request.</p>")
  pullRequestId: option<pullRequestId>,
}
type mergeHunks = array<mergeHunk>
type differenceList = array<difference>
@ocaml.doc("<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
            resolving conflicts during a merge.</p>")
type conflictResolution = {
  @ocaml.doc("<p>File modes that are set as part of the merge conflict resolution.</p>")
  setFileModes: option<setFileModeEntries>,
  @ocaml.doc("<p>Files to be deleted as part of the merge conflict resolution.</p>")
  deleteFiles: option<deleteFileEntries>,
  @ocaml.doc("<p>Files to have content replaced as part of the merge conflict resolution.</p>")
  replaceContents: option<replaceContentEntries>,
}
type conflictMetadataList = array<conflictMetadata>
type commitObjectsList = array<commit>
type comments = array<comment>
type approvalRulesList = array<approvalRule>
type pullRequestEventList = array<pullRequestEvent>
@ocaml.doc("<p>Returns information about a pull request.</p>")
type pullRequest = {
  @ocaml.doc("<p>The approval rules applied to the pull request.</p>")
  approvalRules: option<approvalRulesList>,
  @ocaml.doc("<p>The system-generated revision ID for the pull request.</p>")
  revisionId: option<revisionId>,
  @ocaml.doc("<p>A unique, client-generated idempotency token that, when provided in a request, ensures
            the request cannot be repeated with a changed parameter. If a request is received with
            the same parameters and a token is included, the request returns information about the
            initial request that used that token.</p>")
  clientRequestToken: option<clientRequestToken>,
  @ocaml.doc(
    "<p>The targets of the pull request, including the source branch and destination branch for the pull request.</p>"
  )
  pullRequestTargets: option<pullRequestTargetList>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user who created the pull request.</p>")
  authorArn: option<arn>,
  @ocaml.doc(
    "<p>The status of the pull request. Pull request status can only change from <code>OPEN</code> to <code>CLOSED</code>.</p>"
  )
  pullRequestStatus: option<pullRequestStatusEnum>,
  @ocaml.doc(
    "<p>The date and time the pull request was originally created, in timestamp format.</p>"
  )
  creationDate: option<creationDate>,
  @ocaml.doc(
    "<p>The day and time of the last user or system activity on the pull request, in timestamp format.</p>"
  )
  lastActivityDate: option<lastModifiedDate>,
  @ocaml.doc(
    "<p>The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.</p>"
  )
  description: option<description>,
  @ocaml.doc("<p>The user-defined title of the pull request. This title is displayed in the list of
            pull requests to other repository users.</p>")
  title: option<title>,
  @ocaml.doc("<p>The system-generated ID of the pull request. </p>")
  pullRequestId: option<pullRequestId>,
}
@ocaml.doc("<p>Information about conflicts in a merge operation.</p>")
type conflict = {
  @ocaml.doc(
    "<p>A list of hunks that contain the differences between files or lines causing the conflict.</p>"
  )
  mergeHunks: option<mergeHunks>,
  @ocaml.doc("<p>Metadata about a conflict in a merge operation.</p>")
  conflictMetadata: option<conflictMetadata>,
}
@ocaml.doc("<p>Returns information about comments on a pull request.</p>")
type commentsForPullRequest = {
  @ocaml.doc(
    "<p>An array of comment objects. Each comment object contains information about a comment on the pull request.</p>"
  )
  comments: option<comments>,
  @ocaml.doc("<p>Location information about the comment on the pull request, including the file name,
            line number, and whether the version of the file where the comment was made is BEFORE
            (destination branch) or AFTER (source branch).</p>")
  location: option<location>,
  @ocaml.doc(
    "<p>The full blob ID of the file on which you want to comment on the source commit.</p>"
  )
  afterBlobId: option<objectId>,
  @ocaml.doc(
    "<p>The full blob ID of the file on which you want to comment on the destination commit.</p>"
  )
  beforeBlobId: option<objectId>,
  @ocaml.doc("<p>The full commit ID of the commit that was the tip of the source branch at the time the
            comment was made. </p>")
  afterCommitId: option<commitId>,
  @ocaml.doc("<p>The full commit ID of the commit that was the tip of the destination branch when the
            pull request was created. This commit is superceded by the after commit in the source
            branch when and if you merge the source branch into the destination branch.</p>")
  beforeCommitId: option<commitId>,
  @ocaml.doc("<p>The name of the repository that contains the pull request.</p>")
  repositoryName: option<repositoryName>,
  @ocaml.doc("<p>The system-generated ID of the pull request.</p>")
  pullRequestId: option<pullRequestId>,
}
@ocaml.doc("<p>Returns information about comments on the comparison between two commits.</p>")
type commentsForComparedCommit = {
  @ocaml.doc("<p>An array of comment objects. Each comment object contains information about a comment on the comparison
         between commits.</p>")
  comments: option<comments>,
  @ocaml.doc("<p>Location information about the comment on the comparison, including the file name,
            line number, and whether the version of the file where the comment was made is BEFORE or
            AFTER.</p>")
  location: option<location>,
  @ocaml.doc("<p>The full blob ID of the commit used to establish the after of the comparison.</p>")
  afterBlobId: option<objectId>,
  @ocaml.doc(
    "<p>The full blob ID of the commit used to establish the before of the comparison.</p>"
  )
  beforeBlobId: option<objectId>,
  @ocaml.doc(
    "<p>The full commit ID of the commit used to establish the after of the comparison.</p>"
  )
  afterCommitId: option<commitId>,
  @ocaml.doc("<p>The full commit ID of the commit used to establish the before of the
            comparison.</p>")
  beforeCommitId: option<commitId>,
  @ocaml.doc("<p>The name of the repository that contains the compared commits.</p>")
  repositoryName: option<repositoryName>,
}
type conflicts = array<conflict>
type commentsForPullRequestData = array<commentsForPullRequest>
type commentsForComparedCommitData = array<commentsForComparedCommit>
@ocaml.doc("<fullname>AWS CodeCommit</fullname>
        <p>This is the <i>AWS CodeCommit API Reference</i>. This reference provides descriptions of the operations and data types for 
            AWS CodeCommit API along with usage examples.</p>
        <p>You can use the AWS CodeCommit API to work with the following objects:</p>
        
            <p>Repositories, by calling the following:</p>
          <ul>
            <li>
                  <p>
                  <a>BatchGetRepositories</a>, which returns information about one or more repositories associated with your AWS account.</p>
            </li>
            <li>
                  <p>
                  <a>CreateRepository</a>, which creates an AWS CodeCommit repository.</p>
            </li>
            <li>
                  <p>
                  <a>DeleteRepository</a>, which deletes an AWS CodeCommit repository.</p>
            </li>
            <li>
                  <p>
                  <a>GetRepository</a>, which returns information about a specified repository.</p>
            </li>
            <li>
                  <p>
                  <a>ListRepositories</a>, which lists all AWS CodeCommit repositories associated with your AWS account.</p>
            </li>
            <li>
                  <p>
                  <a>UpdateRepositoryDescription</a>, which sets or updates the description of the repository.</p>
              </li>
            <li>
                  <p>
                  <a>UpdateRepositoryName</a>, which changes the name of the
                    repository. If you change the name of a repository, no other users of that
                    repository can access it until you send them the new HTTPS or SSH URL to
                    use.</p>
            </li>
         </ul>
        
            <p>Branches, by calling the following:</p>
            <ul>
            <li>
                    <p>
                  <a>CreateBranch</a>, which creates a branch in a specified
                    repository.</p>
            </li>
            <li>
                    <p>
                  <a>DeleteBranch</a>, which deletes the specified branch in a repository unless it is the default branch.</p>
                </li>
            <li>
                    <p>
                  <a>GetBranch</a>, which returns information about a specified branch.</p>
            </li>
            <li>
                    <p>
                  <a>ListBranches</a>, which lists all branches for a specified repository.</p>
            </li>
            <li>
                    <p>
                  <a>UpdateDefaultBranch</a>, which changes the default branch for a repository.</p>
            </li>
         </ul>
        
        <p>Files, by calling the following:</p>
        <ul>
            <li>
               <p>
                  <a>DeleteFile</a>, which deletes the content of a specified file from a specified branch.</p>
            </li>
            <li>
                <p>
                  <a>GetBlob</a>, which returns the base-64 encoded content of an
                    individual Git blob object in a repository.</p>
            </li>
            <li>
               <p>
                  <a>GetFile</a>, which returns the base-64 encoded content of a specified file.</p>
            </li>
            <li>
               <p>
                  <a>GetFolder</a>, which returns the contents of a specified folder or directory.</p>
            </li>
            <li>
               <p>
                  <a>PutFile</a>, which adds or modifies a single file in a specified repository and branch.</p>
            </li>
         </ul>
        
        
            <p>Commits, by calling the following:</p>
              <ul>
            <li>
                      <p>
                  <a>BatchGetCommits</a>, which returns information about one or more commits in a repository.</p>
                  </li>
            <li>
               <p>
                  <a>CreateCommit</a>, which creates a commit for changes to a repository.</p>
            </li>
            <li>
                      <p>
                  <a>GetCommit</a>, which returns information about  a commit, including commit 
                          messages and author and committer information.</p>
                  </li>
            <li>
                      <p>
                  <a>GetDifferences</a>, which returns information about the
                    differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID,
                    or other fully qualified reference).</p>
                  </li>
         </ul>
        

        <p>Merges, by calling the following:</p>
        <ul>
            <li>
                <p>
                  <a>BatchDescribeMergeConflicts</a>, which returns information about conflicts in a merge between commits in a repository.</p>
            </li>
            <li>
                <p>
                  <a>CreateUnreferencedMergeCommit</a>, which creates an unreferenced commit between two branches or commits for the
                    purpose of comparing them and identifying any potential conflicts.</p>
            </li>
            <li>
                <p>
                  <a>DescribeMergeConflicts</a>, which returns information about merge conflicts between the base, source, and destination versions
                    of a file in a potential merge.</p>
            </li>
            <li>
                <p>
                  <a>GetMergeCommit</a>, which returns information about the merge between a source and destination commit. </p>

            </li>
            <li>
                <p>
                  <a>GetMergeConflicts</a>, which returns information about merge conflicts
                    between the source and destination branch in a pull request.</p>
            </li>
            <li>

                <p>
                  <a>GetMergeOptions</a>, which returns information about the available merge options between two branches or commit specifiers.</p>
            </li>
            <li>
                <p>
                  <a>MergeBranchesByFastForward</a>, which merges two branches using the fast-forward merge option.</p>
            </li>
            <li>
                <p>
                  <a>MergeBranchesBySquash</a>, which merges two branches using the squash merge option.</p>
            </li>
            <li>
                <p>
                  <a>MergeBranchesByThreeWay</a>, which merges two branches using the three-way merge option.</p>
            </li>
         </ul>
        
        
        <p>Pull requests, by calling the following:</p>
        <ul>
            <li>
                <p>
                  <a>CreatePullRequest</a>, which creates a pull request in a specified repository.</p>
            </li>
            <li>
               <p>
                  <a>CreatePullRequestApprovalRule</a>, which creates an approval rule for a specified pull request.</p>
            </li>
            <li>
               <p>
                  <a>DeletePullRequestApprovalRule</a>, which deletes an approval rule for a specified pull request.</p>
            </li>
            <li>
                <p>
                  <a>DescribePullRequestEvents</a>, which returns information about one or more pull request events.</p>
            </li>
            <li>
               <p>
                  <a>EvaluatePullRequestApprovalRules</a>, which evaluates whether a pull request has met all the conditions specified in its associated approval rules.</p>
            </li>
            <li>
                <p>
                  <a>GetCommentsForPullRequest</a>, which returns information about comments on a specified pull request.</p>
            </li>
            <li>

                <p>
                  <a>GetPullRequest</a>, which returns information about a specified pull request.</p>
            </li>
            <li>
               <p>
                  <a>GetPullRequestApprovalStates</a>, which returns information about the approval states for a specified pull request.</p>
            </li>
            <li>
               <p>
                  <a>GetPullRequestOverrideState</a>, which returns information about whether approval rules have been set aside (overriden) for a 
            pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>
            </li>
            <li> 
                <p>
                  <a>ListPullRequests</a>, which lists all pull requests for a repository.</p>
            </li>
            <li>
                <p>
                  <a>MergePullRequestByFastForward</a>, which merges the source destination branch of a pull request into the specified destination
                    branch for that pull request using the fast-forward merge option.</p>
            </li>
            <li>
                <p>
                  <a>MergePullRequestBySquash</a>, which merges the source destination branch of a pull request into the specified destination
                branch for that pull request using the squash merge option.</p>
            </li>
            <li>
                <p>
                  <a>MergePullRequestByThreeWay</a>. which merges the source destination branch of a pull request into the specified destination
                branch for that pull request using the three-way merge option.</p>
            </li>
            <li>
               <p>
                  <a>OverridePullRequestApprovalRules</a>, which sets aside all approval rule requirements for a pull request.</p>
            </li>
            <li>
                <p>
                  <a>PostCommentForPullRequest</a>, which posts a comment to a pull request at the specified line, file, or request.</p>
            </li>
            <li>
               <p>
                  <a>UpdatePullRequestApprovalRuleContent</a>, which updates the structure of an approval rule for a pull request.</p>
            </li>
            <li>
               <p>
                  <a>UpdatePullRequestApprovalState</a>, which updates the state of an approval on a pull request.</p>
            </li>
            <li>
                <p>
                  <a>UpdatePullRequestDescription</a>, which updates the description of a pull request.</p>
            </li>
            <li>
                <p>
                  <a>UpdatePullRequestStatus</a>, which updates the status of a pull request.</p>
            </li>
            <li>
                <p>
                  <a>UpdatePullRequestTitle</a>, which updates the title of a pull request.</p>
            </li>
         </ul>
        
        <p>Approval rule templates, by calling the following:</p>
        <ul>
            <li>
               <p>
                  <a>AssociateApprovalRuleTemplateWithRepository</a>, which associates a template
                    with a specified repository. After the template is associated with a repository,
                    AWS CodeCommit creates approval rules that match the template conditions on
                    every pull request created in the specified repository.</p>
            </li>
            <li>
               <p>
                  <a>BatchAssociateApprovalRuleTemplateWithRepositories</a>, which associates a
                    template with one or more specified repositories. After the template is
                    associated with a repository, AWS CodeCommit creates approval rules that match
                    the template conditions on every pull request created in the specified
                    repositories.</p>
            </li>
            <li>
               <p>
                  <a>BatchDisassociateApprovalRuleTemplateFromRepositories</a>, which removes the
                    association between a template and specified repositories so that approval rules
                    based on the template are not automatically created when pull requests are
                    created in those repositories.</p>
            </li>
            <li>
               <p>
                  <a>CreateApprovalRuleTemplate</a>, which creates a template for approval rules that can then be associated with one or more repositories
             in your AWS account.</p>
            </li>
            <li>
               <p>
                  <a>DeleteApprovalRuleTemplate</a>, which deletes the specified template. It does not remove approval rules on pull requests already created with the template.</p>
            </li>
            <li>
               <p>
                  <a>DisassociateApprovalRuleTemplateFromRepository</a>, which removes the
                    association between a template and a repository so that approval rules based on
                    the template are not automatically created when pull requests are created in the
                    specified repository.</p>
            </li>
            <li>
               <p>
                  <a>GetApprovalRuleTemplate</a>, which returns information about an approval rule template.</p>
            </li>
            <li>
               <p>
                  <a>ListApprovalRuleTemplates</a>, which lists all approval rule templates in the AWS Region in your AWS account.</p>
            </li>
            <li>
               <p>
                  <a>ListAssociatedApprovalRuleTemplatesForRepository</a>, which lists all approval rule templates that are associated with a specified repository.</p>
            </li>
            <li>
               <p>
                  <a>ListRepositoriesForApprovalRuleTemplate</a>, which lists all repositories associated with the specified approval rule template.</p>
            </li>
            <li>
               <p>
                  <a>UpdateApprovalRuleTemplateDescription</a>, which updates the description of an
                    approval rule template.</p>
            </li>
            <li>
               <p>
                  <a>UpdateApprovalRuleTemplateName</a>, which updates the name of an approval rule template.</p>
            </li>
            <li>
               <p>
                  <a>UpdateApprovalRuleTemplateContent</a>, which updates the content of an approval rule template.</p>
            </li>
         </ul>
        
        <p>Comments in a repository, by calling the following:</p>
        <ul>
            <li>
                <p>
                  <a>DeleteCommentContent</a>, which deletes the content of a comment on a commit in a repository.</p>
            </li>
            <li>
                <p>
                  <a>GetComment</a>, which returns information about a comment on a commit.</p>
            </li>
            <li>
                <p>
                  <a>GetCommentReactions</a>, which returns information about emoji reactions to comments.</p>
            </li>
            <li>
                <p>
                  <a>GetCommentsForComparedCommit</a>, which returns information about comments on the comparison between two commit specifiers 
                    in a repository.</p>
            </li>
            <li>
                <p>
                  <a>PostCommentForComparedCommit</a>, which creates a comment on the comparison between two commit specifiers in a repository.</p>
            </li>
            <li>
                <p>
                  <a>PostCommentReply</a>, which creates a reply to a comment.</p>
            </li>
            <li>
               <p>
                  <a>PutCommentReaction</a>, which creates or updates an emoji reaction to a comment.</p>
            </li>
            <li>
                <p>
                  <a>UpdateComment</a>, which updates the content of a comment on a commit in a repository.</p>
            </li>
         </ul>
        
        <p>Tags used to tag resources in AWS CodeCommit (not Git tags), by calling the following:</p>
        <ul>
            <li>
               <p>
                  <a>ListTagsForResource</a>, which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit.</p>
            </li>
            <li>
               <p>
                  <a>TagResource</a>, which adds or updates tags for a resource in AWS CodeCommit.</p>
            </li>
            <li>
               <p>
                  <a>UntagResource</a>, which removes tags for a resource in AWS CodeCommit.</p>
            </li>
         </ul>
         
            <p>Triggers, by calling the following:</p> 
                <ul>
            <li>
                        <p>
                  <a>GetRepositoryTriggers</a>, which returns information about triggers configured 
                            for a repository.</p>
            </li>
            <li>
                        <p>
                  <a>PutRepositoryTriggers</a>, which replaces all triggers for a repository and can 
                            be used to create or delete triggers.</p>
            </li>
            <li>
                        <p>
                  <a>TestRepositoryTriggers</a>, which tests the functionality of a repository trigger 
                            by sending data to the trigger target.</p>
            </li>
         </ul>
                   
            
             
        
        <p>For information about how to use AWS CodeCommit, see the <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html\">AWS CodeCommit User Guide</a>.</p>")
module UpdateRepositoryName = {
  type t
  @ocaml.doc("<p>Represents the input of an update repository description operation.</p>")
  type request = {
    @ocaml.doc("<p>The new name for the repository.</p>") newName: repositoryName,
    @ocaml.doc("<p>The current name of the repository.</p>") oldName: repositoryName,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdateRepositoryNameCommand"
  let make = (~newName, ~oldName, ()) => new({newName: newName, oldName: oldName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateRepositoryDescription = {
  type t
  @ocaml.doc("<p>Represents the input of an update repository description operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>"
    )
    repositoryDescription: option<repositoryDescription>,
    @ocaml.doc("<p>The name of the repository to set or change the comment or description for.</p>")
    repositoryName: repositoryName,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdateRepositoryDescriptionCommand"
  let make = (~repositoryName, ~repositoryDescription=?, ()) =>
    new({repositoryDescription: repositoryDescription, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdatePullRequestApprovalState = {
  type t
  type request = {
    @ocaml.doc("<p>The approval state to associate with the user on the pull request.</p>")
    approvalState: approvalState,
    @ocaml.doc("<p>The system-generated ID of the revision.</p>") revisionId: revisionId,
    @ocaml.doc("<p>The system-generated ID of the pull request.</p>") pullRequestId: pullRequestId,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdatePullRequestApprovalStateCommand"
  let make = (~approvalState, ~revisionId, ~pullRequestId, ()) =>
    new({approvalState: approvalState, revisionId: revisionId, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateDefaultBranch = {
  type t
  @ocaml.doc("<p>Represents the input of an update default branch operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the branch to set as the default.</p>")
    defaultBranchName: branchName,
    @ocaml.doc("<p>The name of the repository to set or change the default branch for.</p>")
    repositoryName: repositoryName,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdateDefaultBranchCommand"
  let make = (~defaultBranchName, ~repositoryName, ()) =>
    new({defaultBranchName: defaultBranchName, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module PutFile = {
  type t
  type request = {
    @ocaml.doc("<p>An email address for the person adding or updating the file.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the person adding or updating the file. Although it is optional, a name
            makes the commit history for your repository more useful.</p>")
    name: option<name>,
    @ocaml.doc("<p>A message about why this file was added or updated. Although it is optional, a message
            makes the commit history for your repository more useful.</p>")
    commitMessage: option<message>,
    @ocaml.doc("<p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository, 
            no commit ID is required. If this is not an empty repository, a commit ID is required. </p>
        <p>The commit ID must match the ID of the head commit at the time of the operation.
            Otherwise, an error occurs, and the file is not added or updated.</p>")
    parentCommitId: option<commitId>,
    @ocaml.doc("<p>The file mode permissions of the blob. Valid file mode permissions are listed
            here.</p>")
    fileMode: option<fileModeTypeEnum>,
    @ocaml.doc("<p>The name of the file you want to add or update, including the relative path to the file in the repository.</p>
        <note>
            <p>If the path does not currently exist in the repository, the path is created as part of adding
                the file.</p>
         </note>")
    filePath: path,
    @ocaml.doc("<p>The content of the file, in binary object format. </p>")
    fileContent: fileContent,
    @ocaml.doc("<p>The name of the branch where you want to add or update the file. If this is an empty
            repository, this branch is created.</p>")
    branchName: branchName,
    @ocaml.doc("<p>The name of the repository where you want to add or update the file.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>The full SHA-1 pointer of the tree information for the commit that contains this file change.</p>"
    )
    treeId: objectId,
    @ocaml.doc("<p>The ID of the blob, which is its SHA-1 pointer.</p>") blobId: objectId,
    @ocaml.doc("<p>The full SHA ID of the commit that contains this file change.</p>")
    commitId: objectId,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "PutFileCommand"
  let make = (
    ~filePath,
    ~fileContent,
    ~branchName,
    ~repositoryName,
    ~email=?,
    ~name=?,
    ~commitMessage=?,
    ~parentCommitId=?,
    ~fileMode=?,
    (),
  ) =>
    new({
      email: email,
      name: name,
      commitMessage: commitMessage,
      parentCommitId: parentCommitId,
      fileMode: fileMode,
      filePath: filePath,
      fileContent: fileContent,
      branchName: branchName,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutCommentReaction = {
  type t
  type request = {
    @ocaml.doc("<p>The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none.
            For information about emoji reaction values supported in AWS CodeCommit, see the <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table\">AWS CodeCommit User Guide</a>.</p>")
    reactionValue: reactionValue,
    @ocaml.doc("<p>The ID of the comment to which you want to add or update a reaction.</p>")
    commentId: commentId,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "PutCommentReactionCommand"
  let make = (~reactionValue, ~commentId, ()) =>
    new({reactionValue: reactionValue, commentId: commentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module OverridePullRequestApprovalRules = {
  type t
  type request = {
    @ocaml.doc("<p>Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply 
        approval rule requirements (REVOKE). REVOKE status is not stored.</p>")
    overrideStatus: overrideStatus,
    @ocaml.doc("<p>The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request.
            To get the revision ID, use GetPullRequest.</p>")
    revisionId: revisionId,
    @ocaml.doc("<p>The system-generated ID of the pull request for which you want to override all
            approval rule requirements. To get this information, use
            <a>GetPullRequest</a>.</p>")
    pullRequestId: pullRequestId,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "OverridePullRequestApprovalRulesCommand"
  let make = (~overrideStatus, ~revisionId, ~pullRequestId, ()) =>
    new({overrideStatus: overrideStatus, revisionId: revisionId, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module MergeBranchesByFastForward = {
  type t
  type request = {
    @ocaml.doc("<p>The branch where the merge is applied.</p>") targetBranch: option<branchName>,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc("<p>The name of the repository where you want to merge two branches.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The tree ID of the merge in the destination or target branch.</p>")
    treeId: option<objectId>,
    @ocaml.doc("<p>The commit ID of the merge in the destination or target branch.</p>")
    commitId: option<objectId>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "MergeBranchesByFastForwardCommand"
  let make = (
    ~destinationCommitSpecifier,
    ~sourceCommitSpecifier,
    ~repositoryName,
    ~targetBranch=?,
    (),
  ) =>
    new({
      targetBranch: targetBranch,
      destinationCommitSpecifier: destinationCommitSpecifier,
      sourceCommitSpecifier: sourceCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPullRequestOverrideState = {
  type t
  type request = {
    @ocaml.doc("<p>The system-generated ID of the revision for the pull request. To retrieve the most
            recent revision ID, use
            <a>GetPullRequest</a>.</p>")
    revisionId: revisionId,
    @ocaml.doc(
      "<p>The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>"
    )
    overrider: option<arn>,
    @ocaml.doc(
      "<p>A Boolean value that indicates whether a pull request has had its rules set aside (TRUE) or whether all approval rules still apply (FALSE).</p>"
    )
    overridden: option<overridden>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "GetPullRequestOverrideStateCommand"
  let make = (~revisionId, ~pullRequestId, ()) =>
    new({revisionId: revisionId, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMergeCommit = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc(
      "<p>The name of the repository that contains the merge commit about which you want to get information.</p>"
    )
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The commit ID for the merge commit created when the source branch was merged into the
            destination branch. If the fast-forward merge strategy was used, there is no merge
            commit.</p>")
    mergedCommitId: option<objectId>,
    @ocaml.doc("<p>The commit ID of the merge base.</p>") baseCommitId: option<objectId>,
    @ocaml.doc(
      "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
    )
    destinationCommitId: option<objectId>,
    @ocaml.doc(
      "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
    )
    sourceCommitId: option<objectId>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetMergeCommitCommand"
  let make = (
    ~destinationCommitSpecifier,
    ~sourceCommitSpecifier,
    ~repositoryName,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    (),
  ) =>
    new({
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      destinationCommitSpecifier: destinationCommitSpecifier,
      sourceCommitSpecifier: sourceCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFile = {
  type t
  type request = {
    @ocaml.doc("<p>The fully qualified path to the file, including the full name and extension of the
            file. For example, /examples/file.md is the fully qualified path to a file named file.md
            in a folder named examples.</p>")
    filePath: path,
    @ocaml.doc("<p>The fully quaified reference that identifies the commit that contains the file. For
            example, you can specify a full commit ID, a tag, a branch name, or a reference such as
            refs/heads/master. If none is provided, the head commit is used.</p>")
    commitSpecifier: option<commitName>,
    @ocaml.doc("<p>The name of the repository that contains the file.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>The base-64 encoded binary data object that represents the content of the file.</p>"
    )
    fileContent: fileContent,
    @ocaml.doc("<p>The size of the contents of the file, in bytes.</p>") fileSize: objectSize,
    @ocaml.doc("<p>The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.</p>
        <note>
            <p>The file mode permissions returned by this API are not the standard file mode
                permission values, such as 100644, but rather extrapolated values. See the supported
                return values.</p>
        </note>")
    fileMode: fileModeTypeEnum,
    @ocaml.doc("<p>The fully qualified path to the specified file. Returns the name and extension of the
            file.</p>")
    filePath: path,
    @ocaml.doc("<p>The blob ID of the object that represents the file content.</p>")
    blobId: objectId,
    @ocaml.doc(
      "<p>The full commit ID of the commit that contains the content returned by GetFile.</p>"
    )
    commitId: objectId,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetFileCommand"
  let make = (~filePath, ~repositoryName, ~commitSpecifier=?, ()) =>
    new({filePath: filePath, commitSpecifier: commitSpecifier, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBlob = {
  type t
  @ocaml.doc("<p>Represents the input of a get blob operation.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the blob, which is its SHA-1 pointer.</p>") blobId: objectId,
    @ocaml.doc("<p>The name of the repository that contains the blob.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a get blob operation.</p>")
  type response = {@ocaml.doc("<p>The content of the blob, usually a file.</p>") content: blob}
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetBlobCommand"
  let make = (~blobId, ~repositoryName, ()) => new({blobId: blobId, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateApprovalRuleTemplateFromRepository = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository you want to disassociate from the template.</p>")
    repositoryName: repositoryName,
    @ocaml.doc(
      "<p>The name of the approval rule template to disassociate from a specified repository.</p>"
    )
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "DisassociateApprovalRuleTemplateFromRepositoryCommand"
  let make = (~repositoryName, ~approvalRuleTemplateName, ()) =>
    new({repositoryName: repositoryName, approvalRuleTemplateName: approvalRuleTemplateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRepository = {
  type t
  @ocaml.doc("<p>Represents the input of a delete repository operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the repository to delete.</p>") repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a delete repository operation.</p>")
  type response = {
    @ocaml.doc("<p>The ID of the repository that was deleted.</p>")
    repositoryId: option<repositoryId>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "DeleteRepositoryCommand"
  let make = (~repositoryName, ()) => new({repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePullRequestApprovalRule = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the approval rule you want to delete.</p>")
    approvalRuleName: approvalRuleName,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the deleted approval rule. </p>
        <note>
            <p>If the approval rule was deleted in an earlier API call, the response is 200 OK without
                content.</p>
         </note>")
    approvalRuleId: approvalRuleId,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "DeletePullRequestApprovalRuleCommand"
  let make = (~approvalRuleName, ~pullRequestId, ()) =>
    new({approvalRuleName: approvalRuleName, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFile = {
  type t
  type request = {
    @ocaml.doc("<p>The email address for the commit that deletes the file. If no email address is
            specified, the email address is left blank.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the author of the commit that deletes the file. If no name is specified,
            the user's ARN is used as the author name and committer name.</p>")
    name: option<name>,
    @ocaml.doc("<p>The commit message you want to include as part of deleting the file. Commit messages
            are limited to 256 KB. If no message is specified, a default message is used.</p>")
    commitMessage: option<message>,
    @ocaml.doc("<p>If a file is the only object in the folder or directory, specifies whether to delete
            the folder or directory that contains the file. By default, empty folders are deleted.
            This includes empty folders that are part of the directory structure. For example, if
            the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the
            last file in dir4 also deletes the empty folders dir4, dir3, and dir2.</p>")
    keepEmptyFolders: option<keepEmptyFolders>,
    @ocaml.doc("<p>The ID of the commit that is the tip of the branch where you want to create the commit
            that deletes the file. This must be the HEAD commit for the branch. The commit that
            deletes the file is created from this commit ID.</p>")
    parentCommitId: commitId,
    @ocaml.doc("<p>The fully qualified path to the file that to be deleted, including the full name and
            extension of that file. For example, /examples/file.md is a fully qualified path to a
            file named file.md in a folder named examples.</p>")
    filePath: path,
    @ocaml.doc("<p>The name of the branch where the commit that deletes the file is made.</p>")
    branchName: branchName,
    @ocaml.doc("<p>The name of the repository that contains the file to delete.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The fully qualified path to the file to be deleted, including the full name and
            extension of that file.</p>")
    filePath: path,
    @ocaml.doc(
      "<p>The full SHA-1 pointer of the tree information for the commit that contains the delete file change.</p>"
    )
    treeId: objectId,
    @ocaml.doc("<p>The blob ID removed from the tree as part of deleting the file.</p>")
    blobId: objectId,
    @ocaml.doc(
      "<p>The full commit ID of the commit that contains the change that deletes the file.</p>"
    )
    commitId: objectId,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "DeleteFileCommand"
  let make = (
    ~parentCommitId,
    ~filePath,
    ~branchName,
    ~repositoryName,
    ~email=?,
    ~name=?,
    ~commitMessage=?,
    ~keepEmptyFolders=?,
    (),
  ) =>
    new({
      email: email,
      name: name,
      commitMessage: commitMessage,
      keepEmptyFolders: keepEmptyFolders,
      parentCommitId: parentCommitId,
      filePath: filePath,
      branchName: branchName,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteApprovalRuleTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the approval rule template to delete.</p>")
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc("<p>The system-generated ID of the deleted approval rule template. If the template has
            been previously deleted, the only response is a 200 OK.</p>")
    approvalRuleTemplateId: approvalRuleTemplateId,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "DeleteApprovalRuleTemplateCommand"
  let make = (~approvalRuleTemplateName, ()) =>
    new({approvalRuleTemplateName: approvalRuleTemplateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateBranch = {
  type t
  @ocaml.doc("<p>Represents the input of a create branch operation.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the commit to point the new branch to.</p>") commitId: commitId,
    @ocaml.doc("<p>The name of the new branch to create.</p>") branchName: branchName,
    @ocaml.doc("<p>The name of the repository in which you want to create the new branch.</p>")
    repositoryName: repositoryName,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "CreateBranchCommand"
  let make = (~commitId, ~branchName, ~repositoryName, ()) =>
    new({commitId: commitId, branchName: branchName, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AssociateApprovalRuleTemplateWithRepository = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository that you want to associate with the template.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The name for the approval rule template. </p>")
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "AssociateApprovalRuleTemplateWithRepositoryCommand"
  let make = (~repositoryName, ~approvalRuleTemplateName, ()) =>
    new({repositoryName: repositoryName, approvalRuleTemplateName: approvalRuleTemplateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateApprovalRuleTemplateName = {
  type t
  type request = {
    @ocaml.doc("<p>The new name you want to apply to the approval rule template.</p>")
    newApprovalRuleTemplateName: approvalRuleTemplateName,
    @ocaml.doc("<p>The current name of the approval rule template.</p>")
    oldApprovalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc("<p>The structure and content of the updated approval rule template.</p>")
    approvalRuleTemplate: approvalRuleTemplate,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdateApprovalRuleTemplateNameCommand"
  let make = (~newApprovalRuleTemplateName, ~oldApprovalRuleTemplateName, ()) =>
    new({
      newApprovalRuleTemplateName: newApprovalRuleTemplateName,
      oldApprovalRuleTemplateName: oldApprovalRuleTemplateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApprovalRuleTemplateDescription = {
  type t
  type request = {
    @ocaml.doc("<p>The updated description of the approval rule template.</p>")
    approvalRuleTemplateDescription: approvalRuleTemplateDescription,
    @ocaml.doc("<p>The name of the template for which you want to update the description.</p>")
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc("<p>The structure and content of the updated approval rule template.</p>")
    approvalRuleTemplate: approvalRuleTemplate,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdateApprovalRuleTemplateDescriptionCommand"
  let make = (~approvalRuleTemplateDescription, ~approvalRuleTemplateName, ()) =>
    new({
      approvalRuleTemplateDescription: approvalRuleTemplateDescription,
      approvalRuleTemplateName: approvalRuleTemplateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateApprovalRuleTemplateContent = {
  type t
  type request = {
    @ocaml.doc("<p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
            information by using
            <a>GetPullRequest</a>.</p>")
    existingRuleContentSha256: option<ruleContentSha256>,
    @ocaml.doc("<p>The content that replaces the existing content of the rule. Content statements must be
            complete. You cannot provide only the changes.</p>")
    newRuleContent: approvalRuleTemplateContent,
    @ocaml.doc(
      "<p>The name of the approval rule template where you want to update the content of the rule. </p>"
    )
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {approvalRuleTemplate: approvalRuleTemplate}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdateApprovalRuleTemplateContentCommand"
  let make = (~newRuleContent, ~approvalRuleTemplateName, ~existingRuleContentSha256=?, ()) =>
    new({
      existingRuleContentSha256: existingRuleContentSha256,
      newRuleContent: newRuleContent,
      approvalRuleTemplateName: approvalRuleTemplateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key for each tag that you want to remove from the resource.</p>")
    tagKeys: tagKeysList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to which you want to remove tags.</p>"
    )
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The key-value pair to use when tagging this repository.</p>") tags: tagsMap,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>"
    )
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource for which you want to get information
            about tags, if any.</p>")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of tag key and value pairs associated with the specified resource.</p>")
    tags: option<tagsMap>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ~nextToken=?, ()) =>
    new({nextToken: nextToken, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRepositoriesForApprovalRuleTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The name of the approval rule template for which you want to list repositories that are associated with that template.</p>"
    )
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of repository names that are associated with the specified approval rule template.</p>"
    )
    repositoryNames: option<repositoryNameList>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "ListRepositoriesForApprovalRuleTemplateCommand"
  let make = (~approvalRuleTemplateName, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      approvalRuleTemplateName: approvalRuleTemplateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPullRequests = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>"
    )
    pullRequestStatus: option<pullRequestStatusEnum>,
    @ocaml.doc("<p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results 
        to pull requests created by that user.</p>")
    authorArn: option<arn>,
    @ocaml.doc("<p>The name of the repository for which you want to list pull requests.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The system-generated IDs of the pull requests.</p>")
    pullRequestIds: pullRequestIdList,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "ListPullRequestsCommand"
  let make = (
    ~repositoryName,
    ~maxResults=?,
    ~nextToken=?,
    ~pullRequestStatus=?,
    ~authorArn=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      pullRequestStatus: pullRequestStatus,
      authorArn: authorArn,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListBranches = {
  type t
  @ocaml.doc("<p>Represents the input of a list branches operation.</p>")
  type request = {
    @ocaml.doc("<p>An enumeration token that allows the operation to batch the results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The name of the repository that contains the branches.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a list branches operation.</p>")
  type response = {
    @ocaml.doc("<p>An enumeration token that returns the batch of the results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of branch names.</p>") branches: option<branchNameList>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "ListBranchesCommand"
  let make = (~repositoryName, ~nextToken=?, ()) =>
    new({nextToken: nextToken, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssociatedApprovalRuleTemplatesForRepository = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The name of the repository for which you want to list all associated approval rule templates.</p>"
    )
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The names of all approval rule templates associated with the repository.</p>")
    approvalRuleTemplateNames: option<approvalRuleTemplateNameList>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "ListAssociatedApprovalRuleTemplatesForRepositoryCommand"
  let make = (~repositoryName, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListApprovalRuleTemplates = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that allows the operation to batch the next results of the operation.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The names of all the approval rule templates found in the AWS Region for your AWS account.</p>"
    )
    approvalRuleTemplateNames: option<approvalRuleTemplateNameList>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "ListApprovalRuleTemplatesCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRepository = {
  type t
  @ocaml.doc("<p>Represents the input of a get repository operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the repository to get information about.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a get repository operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the repository.</p>")
    repositoryMetadata: option<repositoryMetadata>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetRepositoryCommand"
  let make = (~repositoryName, ()) => new({repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMergeOptions = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc(
      "<p>The name of the repository that contains the commits about which you want to get merge options.</p>"
    )
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The commit ID of the merge base.</p>") baseCommitId: objectId,
    @ocaml.doc(
      "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
    )
    destinationCommitId: objectId,
    @ocaml.doc(
      "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
    )
    sourceCommitId: objectId,
    @ocaml.doc("<p>The merge option or strategy used to merge the code.</p>")
    mergeOptions: mergeOptions,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetMergeOptionsCommand"
  let make = (
    ~destinationCommitSpecifier,
    ~sourceCommitSpecifier,
    ~repositoryName,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    (),
  ) =>
    new({
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      destinationCommitSpecifier: destinationCommitSpecifier,
      sourceCommitSpecifier: sourceCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBranch = {
  type t
  @ocaml.doc("<p>Represents the input of a get branch operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the branch for which you want to retrieve information.</p>")
    branchName: option<branchName>,
    @ocaml.doc(
      "<p>The name of the repository that contains the branch for which you want to retrieve information.</p>"
    )
    repositoryName: option<repositoryName>,
  }
  @ocaml.doc("<p>Represents the output of a get branch operation.</p>")
  type response = {@ocaml.doc("<p>The name of the branch.</p>") branch: option<branchInfo>}
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetBranchCommand"
  let make = (~branchName=?, ~repositoryName=?, ()) =>
    new({branchName: branchName, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetApprovalRuleTemplate = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the approval rule template for which you want to get information.</p>"
    )
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc("<p>The content and structure of the approval rule template.</p>")
    approvalRuleTemplate: approvalRuleTemplate,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "GetApprovalRuleTemplateCommand"
  let make = (~approvalRuleTemplateName, ()) =>
    new({approvalRuleTemplateName: approvalRuleTemplateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteBranch = {
  type t
  @ocaml.doc("<p>Represents the input of a delete branch operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the branch to delete.</p>") branchName: branchName,
    @ocaml.doc("<p>The name of the repository that contains the branch to be deleted.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a delete branch operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.</p>"
    )
    deletedBranch: option<branchInfo>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "DeleteBranchCommand"
  let make = (~branchName, ~repositoryName, ()) =>
    new({branchName: branchName, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRepository = {
  type t
  @ocaml.doc("<p>Represents the input of a create repository operation.</p>")
  type request = {
    @ocaml.doc("<p>One or more tag key-value pairs to use when tagging this repository.</p>")
    tags: option<tagsMap>,
    @ocaml.doc("<p>A comment or description about the new repository.</p>
        <note>
            <p>The description field for a repository accepts all HTML characters and all valid
                Unicode characters. Applications that do not HTML-encode the description and display
                it in a webpage can expose users to potentially malicious code. Make sure that you
                HTML-encode the description field in any application that uses this API to display
                the repository description on a webpage.</p>
         </note>")
    repositoryDescription: option<repositoryDescription>,
    @ocaml.doc("<p>The name of the new repository to be created.</p>
        <note>
            <p>The repository name must be unique across the calling AWS account. Repository names
                are limited to 100 alphanumeric, dash, and underscore characters, and cannot include
                certain characters. For more information about the limits on repository names, see
                    <a href=\"https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html\">Limits</a> in the <i>AWS CodeCommit User Guide</i>. The
                suffix .git is prohibited.</p>
         </note>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a create repository operation.</p>")
  type response = {
    @ocaml.doc("<p>Information about the newly created repository.</p>")
    repositoryMetadata: option<repositoryMetadata>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "CreateRepositoryCommand"
  let make = (~repositoryName, ~tags=?, ~repositoryDescription=?, ()) =>
    new({tags: tags, repositoryDescription: repositoryDescription, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateApprovalRuleTemplate = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the approval rule template. Consider providing a description that
            explains what this template does and when it might be appropriate to associate it with
            repositories.</p>")
    approvalRuleTemplateDescription: option<approvalRuleTemplateDescription>,
    @ocaml.doc("<p>The content of the approval rule that is created on pull requests in associated
            repositories. If you specify one or more destination references (branches), approval
            rules are created in an associated repository only if their destination references
            (branches) match those specified in the template.</p>
        <note>
            <p>When you create the content of the approval rule template, you can specify
                approvers in an approval pool in one of two ways:</p>
            <ul>
               <li>
                    <p>
                     <b>CodeCommitApprovers</b>: This option only
                        requires an AWS account and a resource. It can be used for both IAM users
                        and federated access users whose name matches the provided resource name.
                        This is a very powerful option that offers a great deal of flexibility. For
                        example, if you specify the AWS account <i>123456789012</i>
                        and <i>Mary_Major</i>, all of the following are counted as
                        approvals coming from that user:</p>
                    <ul>
                     <li>
                            <p>An IAM user in the account
                                (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
                        </li>
                     <li>
                            <p>A federated user identified in IAM as Mary_Major
                                (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
                        </li>
                  </ul>
                    <p>This option does not recognize an active session of someone assuming the
                        role of CodeCommitReview with a role session name of
                            <i>Mary_Major</i>
                            (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
                        unless you include a wildcard (*Mary_Major).</p>
                </li>
               <li>
                    <p>
                     <b>Fully qualified ARN</b>: This option allows
                        you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
                        user or role. </p>
                </li>
            </ul>
            <p>For more information about IAM ARNs, wildcards, and formats, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM
                    Identifiers</a> in the <i>IAM User Guide</i>.</p>
            
        </note>")
    approvalRuleTemplateContent: approvalRuleTemplateContent,
    @ocaml.doc("<p>The name of the approval rule template. Provide descriptive names, because this name
            is applied to the approval rules created automatically in associated
            repositories.</p>")
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc("<p>The content and structure of the created approval rule template.</p>")
    approvalRuleTemplate: approvalRuleTemplate,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "CreateApprovalRuleTemplateCommand"
  let make = (
    ~approvalRuleTemplateContent,
    ~approvalRuleTemplateName,
    ~approvalRuleTemplateDescription=?,
    (),
  ) =>
    new({
      approvalRuleTemplateDescription: approvalRuleTemplateDescription,
      approvalRuleTemplateContent: approvalRuleTemplateContent,
      approvalRuleTemplateName: approvalRuleTemplateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePullRequestApprovalRuleContent = {
  type t
  type request = {
    @ocaml.doc("<p>The updated content for the approval rule.</p>
        <note>
            <p>When you update the content of the approval rule, you can specify approvers in an
                approval pool in one of two ways:</p>
            <ul>
               <li>
                    <p>
                     <b>CodeCommitApprovers</b>: This option only
                        requires an AWS account and a resource. It can be used for both IAM users
                        and federated access users whose name matches the provided resource name.
                        This is a very powerful option that offers a great deal of flexibility. For
                        example, if you specify the AWS account <i>123456789012</i>
                        and <i>Mary_Major</i>, all of the following are counted as
                        approvals coming from that user:</p>
                    <ul>
                     <li>
                            <p>An IAM user in the account
                                (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
                        </li>
                     <li>
                            <p>A federated user identified in IAM as Mary_Major
                                (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
                        </li>
                  </ul>
                    <p>This option does not recognize an active session of someone assuming the
                        role of CodeCommitReview with a role session name of
                            <i>Mary_Major</i>
                            (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
                        unless you include a wildcard (*Mary_Major).</p>
                </li>
               <li>
                    <p>
                     <b>Fully qualified ARN</b>: This option allows
                        you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
                        user or role. </p>
                </li>
            </ul>
            <p>For more information about IAM ARNs, wildcards, and formats, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM
                    Identifiers</a> in the <i>IAM User Guide</i>.</p>
            
        </note>")
    newRuleContent: approvalRuleContent,
    @ocaml.doc("<p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
            information by using
            <a>GetPullRequest</a>.</p>")
    existingRuleContentSha256: option<ruleContentSha256>,
    @ocaml.doc("<p>The name of the approval rule you want to update.</p>")
    approvalRuleName: approvalRuleName,
    @ocaml.doc("<p>The system-generated ID of the pull request.</p>") pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the updated approval rule.</p>") approvalRule: approvalRule,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdatePullRequestApprovalRuleContentCommand"
  let make = (
    ~newRuleContent,
    ~approvalRuleName,
    ~pullRequestId,
    ~existingRuleContentSha256=?,
    (),
  ) =>
    new({
      newRuleContent: newRuleContent,
      existingRuleContentSha256: existingRuleContentSha256,
      approvalRuleName: approvalRuleName,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateComment = {
  type t
  type request = {
    @ocaml.doc("<p>The updated content to replace the existing content of the comment.</p>")
    content: content,
    @ocaml.doc("<p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a> 
            or <a>GetCommentsForPullRequest</a>.</p>")
    commentId: commentId,
  }
  type response = {
    @ocaml.doc("<p>Information about the updated comment.</p>") comment: option<comment>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "UpdateCommentCommand"
  let make = (~content, ~commentId, ()) => new({content: content, commentId: commentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PostCommentReply = {
  type t
  type request = {
    @ocaml.doc("<p>The contents of your reply to a comment.</p>") content: content,
    @ocaml.doc("<p>A unique, client-generated idempotency token that, when provided in a request, ensures
            the request cannot be repeated with a changed parameter. If a request is received with
            the same parameters and a token is included, the request returns information about the
            initial request that used that token.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a> 
        or <a>GetCommentsForPullRequest</a>.</p>")
    inReplyTo: commentId,
  }
  type response = {
    @ocaml.doc("<p>Information about the reply to a comment.</p>") comment: option<comment>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "PostCommentReplyCommand"
  let make = (~content, ~inReplyTo, ~clientRequestToken=?, ()) =>
    new({content: content, clientRequestToken: clientRequestToken, inReplyTo: inReplyTo})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PostCommentForPullRequest = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, client-generated idempotency token that, when provided in a request, ensures
            the request cannot be repeated with a changed parameter. If a request is received with
            the same parameters and a token is included, the request returns information about the
            initial request that used that token.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The content of your comment on the change.</p>") content: content,
    @ocaml.doc("<p>The location of the change where you want to post your comment. If no location is
            provided, the comment is posted as a general comment on the pull request difference
            between the before commit ID and the after commit ID.</p>")
    location: option<location>,
    @ocaml.doc(
      "<p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>"
    )
    afterCommitId: commitId,
    @ocaml.doc(
      "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>"
    )
    beforeCommitId: commitId,
    @ocaml.doc(
      "<p>The name of the repository where you want to post a comment on a pull request.</p>"
    )
    repositoryName: repositoryName,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>The content of the comment you posted.</p>") comment: option<comment>,
    @ocaml.doc("<p>The location of the change where you posted your comment.</p>")
    location: option<location>,
    @ocaml.doc("<p>In the directionality of the pull request, the blob ID of the after blob.</p>")
    afterBlobId: option<objectId>,
    @ocaml.doc("<p>In the directionality of the pull request, the blob ID of the before blob.</p>")
    beforeBlobId: option<objectId>,
    @ocaml.doc("<p>The full commit ID of the commit in the destination branch where the pull request is
            merged.</p>")
    afterCommitId: option<commitId>,
    @ocaml.doc("<p>The full commit ID of the commit in the source branch used to create the pull request, 
            or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.</p>")
    beforeCommitId: option<commitId>,
    @ocaml.doc("<p>The system-generated ID of the pull request. </p>")
    pullRequestId: option<pullRequestId>,
    @ocaml.doc("<p>The name of the repository where you posted a comment on a pull request.</p>")
    repositoryName: option<repositoryName>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "PostCommentForPullRequestCommand"
  let make = (
    ~content,
    ~afterCommitId,
    ~beforeCommitId,
    ~repositoryName,
    ~pullRequestId,
    ~clientRequestToken=?,
    ~location=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      content: content,
      location: location,
      afterCommitId: afterCommitId,
      beforeCommitId: beforeCommitId,
      repositoryName: repositoryName,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PostCommentForComparedCommit = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, client-generated idempotency token that, when provided in a request, ensures
            the request cannot be repeated with a changed parameter. If a request is received with
            the same parameters and a token is included, the request returns information about the
            initial request that used that token.</p>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The content of the comment you want to make.</p>") content: content,
    @ocaml.doc("<p>The location of the comparison where you want to comment.</p>")
    location: option<location>,
    @ocaml.doc("<p>To establish the directionality of the comparison, the full commit ID of the after
            commit.</p>")
    afterCommitId: commitId,
    @ocaml.doc("<p>To establish the directionality of the comparison, the full commit ID of the before
            commit. Required for commenting on any commit unless that commit is the initial
            commit.</p>")
    beforeCommitId: option<commitId>,
    @ocaml.doc(
      "<p>The name of the repository where you want to post a comment on the comparison between commits.</p>"
    )
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The content of the comment you posted.</p>") comment: option<comment>,
    @ocaml.doc("<p>The location of the comment in the comparison between the two commits.</p>")
    location: option<location>,
    @ocaml.doc("<p>In the directionality you established, the blob ID of the after blob.</p>")
    afterBlobId: option<objectId>,
    @ocaml.doc("<p>In the directionality you established, the blob ID of the before blob.</p>")
    beforeBlobId: option<objectId>,
    @ocaml.doc(
      "<p>In the directionality you established, the full commit ID of the after commit.</p>"
    )
    afterCommitId: option<commitId>,
    @ocaml.doc(
      "<p>In the directionality you established, the full commit ID of the before commit.</p>"
    )
    beforeCommitId: option<commitId>,
    @ocaml.doc(
      "<p>The name of the repository where you posted a comment on the comparison between commits.</p>"
    )
    repositoryName: option<repositoryName>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "PostCommentForComparedCommitCommand"
  let make = (
    ~content,
    ~afterCommitId,
    ~repositoryName,
    ~clientRequestToken=?,
    ~location=?,
    ~beforeCommitId=?,
    (),
  ) =>
    new({
      clientRequestToken: clientRequestToken,
      content: content,
      location: location,
      afterCommitId: afterCommitId,
      beforeCommitId: beforeCommitId,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRepositories = {
  type t
  @ocaml.doc("<p>Represents the input of a list repositories operation.</p>")
  type request = {
    @ocaml.doc("<p>The order in which to sort the results of a list repositories operation.</p>")
    order: option<orderEnum>,
    @ocaml.doc("<p>The criteria used to sort the results of a list repositories operation.</p>")
    sortBy: option<sortByEnum>,
    @ocaml.doc("<p>An enumeration token that allows the operation to batch the results of the operation. 
            Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit,
            another page of 1,000 records is retrieved.</p>")
    nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>Represents the output of a list repositories operation.</p>")
  type response = {
    @ocaml.doc("<p>An enumeration token that allows the operation to batch the results of the operation. 
            Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, 
            another page of 1,000 records is retrieved.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Lists the repositories called by the list repositories operation.</p>")
    repositories: option<repositoryNameIdPairList>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "ListRepositoriesCommand"
  let make = (~order=?, ~sortBy=?, ~nextToken=?, ()) =>
    new({order: order, sortBy: sortBy, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPullRequestApprovalStates = {
  type t
  type request = {
    @ocaml.doc("<p>The system-generated ID for the pull request revision.</p>")
    revisionId: revisionId,
    @ocaml.doc("<p>The system-generated ID for the pull request.</p>") pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about users who have approved the pull request.</p>")
    approvals: option<approvalList>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "GetPullRequestApprovalStatesCommand"
  let make = (~revisionId, ~pullRequestId, ()) =>
    new({revisionId: revisionId, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFolder = {
  type t
  type request = {
    @ocaml.doc("<p>The fully qualified path to the folder whose contents are returned, including the
            folder name. For example, /examples is a fully-qualified path to a folder named examples
            that was created off of the root directory (/) of a repository. </p>")
    folderPath: path,
    @ocaml.doc("<p>A fully qualified reference used to identify a commit that contains the version of the
            folder's content to return. A fully qualified reference can be a commit ID, branch name,
            tag, or reference such as HEAD. If no specifier is provided, the folder content is
            returned as it exists in the HEAD commit.</p>")
    commitSpecifier: option<commitName>,
    @ocaml.doc("<p>The name of the repository.</p>") repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The list of submodules in the specified folder, if any.</p>")
    subModules: option<subModuleList>,
    @ocaml.doc("<p>The list of symbolic links to other files and folders in the specified folder, if
            any.</p>")
    symbolicLinks: option<symbolicLinkList>,
    @ocaml.doc("<p>The list of files in the specified folder, if any.</p>") files: option<fileList>,
    @ocaml.doc("<p>The list of folders that exist under the specified folder, if any.</p>")
    subFolders: option<folderList>,
    @ocaml.doc(
      "<p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>"
    )
    treeId: option<objectId>,
    @ocaml.doc("<p>The fully qualified path of the folder whose contents are returned.</p>")
    folderPath: path,
    @ocaml.doc("<p>The full commit ID used as a reference for the returned version of the folder
            content.</p>")
    commitId: objectId,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetFolderCommand"
  let make = (~folderPath, ~repositoryName, ~commitSpecifier=?, ()) =>
    new({folderPath: folderPath, commitSpecifier: commitSpecifier, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCommit = {
  type t
  @ocaml.doc("<p>Represents the input of a get commit operation.</p>")
  type request = {
    @ocaml.doc("<p>The commit ID. Commit IDs are the full SHA ID of the commit.</p>")
    commitId: objectId,
    @ocaml.doc("<p>The name of the repository to which the commit was made.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a get commit operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>A commit data type object that contains information about the specified commit.</p>"
    )
    commit: commit,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetCommitCommand"
  let make = (~commitId, ~repositoryName, ()) =>
    new({commitId: commitId, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetComment = {
  type t
  type request = {
    @ocaml.doc("<p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
            or <a>GetCommentsForPullRequest</a>.</p>")
    commentId: commentId,
  }
  type response = {@ocaml.doc("<p>The contents of the comment.</p>") comment: option<comment>}
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetCommentCommand"
  let make = (~commentId, ()) => new({commentId: commentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EvaluatePullRequestApprovalRules = {
  type t
  type request = {
    @ocaml.doc("<p>The system-generated ID for the pull request revision. To retrieve the most recent
            revision ID for a pull request, use
            <a>GetPullRequest</a>.</p>")
    revisionId: revisionId,
    @ocaml.doc("<p>The system-generated ID of the pull request you want to evaluate.</p>")
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>The result of the evaluation, including the names of the rules whose conditions have been met (if any), the names of the rules whose conditions have 
        not been met (if any), whether the pull request is in the approved state, and whether the pull request approval rule has been set aside by an override. </p>")
    evaluation: evaluation,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "EvaluatePullRequestApprovalRulesCommand"
  let make = (~revisionId, ~pullRequestId, ()) =>
    new({revisionId: revisionId, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCommentContent = {
  type t
  type request = {
    @ocaml.doc("<p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
         or <a>GetCommentsForPullRequest</a>.</p>")
    commentId: commentId,
  }
  type response = {
    @ocaml.doc("<p>Information about the comment you just deleted.</p>") comment: option<comment>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "DeleteCommentContentCommand"
  let make = (~commentId, ()) => new({commentId: commentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePullRequestApprovalRule = {
  type t
  type request = {
    @ocaml.doc("<p>The content of the approval rule, including the number of approvals needed and the structure of an approval pool defined for approvals, if any. For more information
        about approval pools, see the AWS CodeCommit User Guide.</p>
        <note>
            <p>When you create the content of the approval rule, you can specify approvers in an
                approval pool in one of two ways:</p>
            <ul>
               <li>
                    <p>
                     <b>CodeCommitApprovers</b>: This option only
                        requires an AWS account and a resource. It can be used for both IAM users
                        and federated access users whose name matches the provided resource name.
                        This is a very powerful option that offers a great deal of flexibility. For
                        example, if you specify the AWS account <i>123456789012</i>
                        and <i>Mary_Major</i>, all of the following would be counted
                        as approvals coming from that user:</p>
                    <ul>
                     <li>
                            <p>An IAM user in the account
                                    (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
                        </li>
                     <li>
                            <p>A federated user identified in IAM as Mary_Major
                                    (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
                        </li>
                  </ul>
                    <p>This option does not recognize an active session of someone assuming the
                        role of CodeCommitReview with a role session name of
                            <i>Mary_Major</i>
                            (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
                        unless you include a wildcard (*Mary_Major).</p>
                </li>
               <li>
                    <p>
                     <b>Fully qualified ARN</b>: This option allows
                        you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
                        user or role. </p>
                </li>
            </ul>
            <p>For more information about IAM ARNs, wildcards, and formats, see
               <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html\">IAM
                Identifiers</a> in the <i>IAM User Guide</i>.</p>
            
        </note>")
    approvalRuleContent: approvalRuleContent,
    @ocaml.doc("<p>The name for the approval rule.</p>") approvalRuleName: approvalRuleName,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request for which you want to create the approval rule.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the created approval rule.</p>") approvalRule: approvalRule,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "CreatePullRequestApprovalRuleCommand"
  let make = (~approvalRuleContent, ~approvalRuleName, ~pullRequestId, ()) =>
    new({
      approvalRuleContent: approvalRuleContent,
      approvalRuleName: approvalRuleName,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetRepositories = {
  type t
  @ocaml.doc("<p>Represents the input of a batch get repositories operation.</p>")
  type request = {
    @ocaml.doc("<p>The names of the repositories to get information about.</p>
        <note>
            <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
         </note>")
    repositoryNames: repositoryNameList,
  }
  @ocaml.doc("<p>Represents the output of a batch get repositories operation.</p>")
  type response = {
    @ocaml.doc(
      "<p>Returns a list of repository names for which information could not be found.</p>"
    )
    repositoriesNotFound: option<repositoryNotFoundList>,
    @ocaml.doc("<p>A list of repositories returned by the batch get repositories operation.</p>")
    repositories: option<repositoryMetadataList>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "BatchGetRepositoriesCommand"
  let make = (~repositoryNames, ()) => new({repositoryNames: repositoryNames})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisassociateApprovalRuleTemplateFromRepositories = {
  type t
  type request = {
    @ocaml.doc("<p>The repository names that you want to disassociate from the approval rule
            template.</p>
        <note>
            <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
         </note>")
    repositoryNames: repositoryNameList,
    @ocaml.doc(
      "<p>The name of the template that you want to disassociate from one or more repositories.</p>"
    )
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of any errors that might have occurred while attempting to remove the association between the template and the repositories.</p>"
    )
    errors: batchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList,
    @ocaml.doc("<p>A list of repository names that have had their association with the template
            removed.</p>")
    disassociatedRepositoryNames: repositoryNameList,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "BatchDisassociateApprovalRuleTemplateFromRepositoriesCommand"
  let make = (~repositoryNames, ~approvalRuleTemplateName, ()) =>
    new({repositoryNames: repositoryNames, approvalRuleTemplateName: approvalRuleTemplateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAssociateApprovalRuleTemplateWithRepositories = {
  type t
  type request = {
    @ocaml.doc("<p>The names of the repositories you want to associate with the template.</p>
        <note>
            <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
         </note>")
    repositoryNames: repositoryNameList,
    @ocaml.doc(
      "<p>The name of the template you want to associate with one or more repositories.</p>"
    )
    approvalRuleTemplateName: approvalRuleTemplateName,
  }
  type response = {
    @ocaml.doc(
      "<p>A list of any errors that might have occurred while attempting to create the association between the template and the repositories.</p>"
    )
    errors: batchAssociateApprovalRuleTemplateWithRepositoriesErrorsList,
    @ocaml.doc(
      "<p>A list of names of the repositories that have been associated with the template.</p>"
    )
    associatedRepositoryNames: repositoryNameList,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "BatchAssociateApprovalRuleTemplateWithRepositoriesCommand"
  let make = (~repositoryNames, ~approvalRuleTemplateName, ()) =>
    new({repositoryNames: repositoryNames, approvalRuleTemplateName: approvalRuleTemplateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestRepositoryTriggers = {
  type t
  @ocaml.doc("<p>Represents the input of a test repository triggers operation.</p>")
  type request = {
    @ocaml.doc("<p>The list of triggers to test.</p>") triggers: repositoryTriggersList,
    @ocaml.doc("<p>The name of the repository in which to test the triggers.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a test repository triggers operation.</p>")
  type response = {
    @ocaml.doc("<p>The list of triggers that were not tested. This list provides the names of the
            triggers that could not be tested, separated by commas.</p>")
    failedExecutions: option<repositoryTriggerExecutionFailureList>,
    @ocaml.doc(
      "<p>The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.</p>"
    )
    successfulExecutions: option<repositoryTriggerNameList>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "TestRepositoryTriggersCommand"
  let make = (~triggers, ~repositoryName, ()) =>
    new({triggers: triggers, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutRepositoryTriggers = {
  type t
  @ocaml.doc("<p>Represents the input of a put repository triggers operation.</p>")
  type request = {
    @ocaml.doc("<p>The JSON block of configuration information for each trigger.</p>")
    triggers: repositoryTriggersList,
    @ocaml.doc("<p>The name of the repository where you want to create or update the trigger.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a put repository triggers operation.</p>")
  type response = {
    @ocaml.doc("<p>The system-generated unique ID for the create or update operation.</p>")
    configurationId: option<repositoryTriggersConfigurationId>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "PutRepositoryTriggersCommand"
  let make = (~triggers, ~repositoryName, ()) =>
    new({triggers: triggers, repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MergeBranchesByThreeWay = {
  type t
  type request = {
    @ocaml.doc("<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
            resolving conflicts during a merge.</p>")
    conflictResolution: option<conflictResolution>,
    @ocaml.doc("<p>If the commit contains deletions, whether to keep a folder or folder structure if the
            changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
            The default is false.</p>")
    keepEmptyFolders: option<keepEmptyFolders>,
    @ocaml.doc("<p>The commit message to include in the commit information for the merge.</p>")
    commitMessage: option<message>,
    @ocaml.doc("<p>The email address of the person merging the branches. This information is used in the
            commit information for the merge.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the author who created the commit. This information is used as both the
            author and committer for the commit.</p>")
    authorName: option<name>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The branch where the merge is applied. </p>") targetBranch: option<branchName>,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc("<p>The name of the repository where you want to merge two branches.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The tree ID of the merge in the destination or target branch.</p>")
    treeId: option<objectId>,
    @ocaml.doc("<p>The commit ID of the merge in the destination or target branch.</p>")
    commitId: option<objectId>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "MergeBranchesByThreeWayCommand"
  let make = (
    ~destinationCommitSpecifier,
    ~sourceCommitSpecifier,
    ~repositoryName,
    ~conflictResolution=?,
    ~keepEmptyFolders=?,
    ~commitMessage=?,
    ~email=?,
    ~authorName=?,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    ~targetBranch=?,
    (),
  ) =>
    new({
      conflictResolution: conflictResolution,
      keepEmptyFolders: keepEmptyFolders,
      commitMessage: commitMessage,
      email: email,
      authorName: authorName,
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      targetBranch: targetBranch,
      destinationCommitSpecifier: destinationCommitSpecifier,
      sourceCommitSpecifier: sourceCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MergeBranchesBySquash = {
  type t
  type request = {
    @ocaml.doc("<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
            resolving conflicts during a merge.</p>")
    conflictResolution: option<conflictResolution>,
    @ocaml.doc("<p>If the commit contains deletions, whether to keep a folder or folder structure if the
            changes leave the folders empty. If this is specified as true, a .gitkeep file is
            created for empty folders. The default is false.</p>")
    keepEmptyFolders: option<keepEmptyFolders>,
    @ocaml.doc("<p>The commit message for the merge.</p>") commitMessage: option<message>,
    @ocaml.doc("<p>The email address of the person merging the branches. This information is used in the
            commit information for the merge.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the author who created the commit. This information is used as both the
            author and committer for the commit.</p>")
    authorName: option<name>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The branch where the merge is applied. </p>") targetBranch: option<branchName>,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc("<p>The name of the repository where you want to merge two branches.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The tree ID of the merge in the destination or target branch.</p>")
    treeId: option<objectId>,
    @ocaml.doc("<p>The commit ID of the merge in the destination or target branch.</p>")
    commitId: option<objectId>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "MergeBranchesBySquashCommand"
  let make = (
    ~destinationCommitSpecifier,
    ~sourceCommitSpecifier,
    ~repositoryName,
    ~conflictResolution=?,
    ~keepEmptyFolders=?,
    ~commitMessage=?,
    ~email=?,
    ~authorName=?,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    ~targetBranch=?,
    (),
  ) =>
    new({
      conflictResolution: conflictResolution,
      keepEmptyFolders: keepEmptyFolders,
      commitMessage: commitMessage,
      email: email,
      authorName: authorName,
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      targetBranch: targetBranch,
      destinationCommitSpecifier: destinationCommitSpecifier,
      sourceCommitSpecifier: sourceCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRepositoryTriggers = {
  type t
  @ocaml.doc("<p>Represents the input of a get repository triggers operation.</p>")
  type request = {
    @ocaml.doc("<p>The name of the repository for which the trigger is configured.</p>")
    repositoryName: repositoryName,
  }
  @ocaml.doc("<p>Represents the output of a get repository triggers operation.</p>")
  type response = {
    @ocaml.doc("<p>The JSON block of configuration information for each trigger.</p>")
    triggers: option<repositoryTriggersList>,
    @ocaml.doc("<p>The system-generated unique ID for the trigger.</p>")
    configurationId: option<repositoryTriggersConfigurationId>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "GetRepositoryTriggersCommand"
  let make = (~repositoryName, ()) => new({repositoryName: repositoryName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMergeConflicts = {
  type t
  type request = {
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The maximum number of files to include in the output.</p>")
    maxConflictFiles: option<maxResults>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The merge option or strategy you want to use to merge the code.  </p>")
    mergeOption: mergeOptionTypeEnum,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc("<p>The name of the repository where the pull request was created.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of metadata for any conflicting files. If the specified merge strategy is
            FAST_FORWARD_MERGE, this list is always empty.</p>")
    conflictMetadataList: conflictMetadataList,
    @ocaml.doc("<p>The commit ID of the merge base.</p>") baseCommitId: option<objectId>,
    @ocaml.doc(
      "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
    )
    sourceCommitId: objectId,
    @ocaml.doc(
      "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
    )
    destinationCommitId: objectId,
    @ocaml.doc(
      "<p>A Boolean value that indicates whether the code is mergeable by the specified merge option.</p>"
    )
    mergeable: isMergeable,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetMergeConflictsCommand"
  let make = (
    ~mergeOption,
    ~sourceCommitSpecifier,
    ~destinationCommitSpecifier,
    ~repositoryName,
    ~nextToken=?,
    ~conflictResolutionStrategy=?,
    ~maxConflictFiles=?,
    ~conflictDetailLevel=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      conflictResolutionStrategy: conflictResolutionStrategy,
      maxConflictFiles: maxConflictFiles,
      conflictDetailLevel: conflictDetailLevel,
      mergeOption: mergeOption,
      sourceCommitSpecifier: sourceCommitSpecifier,
      destinationCommitSpecifier: destinationCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDifferences = {
  type t
  type request = {
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A non-zero, non-negative integer used to limit the number of returned results.</p>"
    )
    @as("MaxResults")
    maxResults: option<limit>,
    @ocaml.doc("<p>The file path in which to check differences. Limits the results to this path. Can also
            be used to specify the changed name of a directory or folder, if it has changed. If not
            specified, differences are shown for all paths.</p>")
    afterPath: option<path>,
    @ocaml.doc("<p>The file path in which to check for differences. Limits the results to this path. Can
            also be used to specify the previous name of a directory or folder. If
                <code>beforePath</code> and <code>afterPath</code> are not specified, differences
            are shown for all paths.</p>")
    beforePath: option<path>,
    @ocaml.doc(
      "<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>"
    )
    afterCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, the full commit ID). Optional. If not specified, all changes before the
                <code>afterCommitSpecifier</code> value are shown. If you do not use
                <code>beforeCommitSpecifier</code> in your request, consider limiting the results
            with <code>maxResults</code>.</p>")
    beforeCommitSpecifier: option<commitName>,
    @ocaml.doc("<p>The name of the repository where you want to get differences.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A data type object that contains information about the differences, including whether
            the difference is added, modified, or deleted (A, D, M).</p>")
    differences: option<differenceList>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetDifferencesCommand"
  let make = (
    ~afterCommitSpecifier,
    ~repositoryName,
    ~nextToken=?,
    ~maxResults=?,
    ~afterPath=?,
    ~beforePath=?,
    ~beforeCommitSpecifier=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      afterPath: afterPath,
      beforePath: beforePath,
      afterCommitSpecifier: afterCommitSpecifier,
      beforeCommitSpecifier: beforeCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCommentReactions = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A non-zero, non-negative integer used to limit the number of returned results.  The default is the same as the allowed maximum, 1,000.</p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>An enumeration token that, when provided in a request, returns the next batch of the results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.</p>"
    )
    reactionUserArn: option<arn>,
    @ocaml.doc("<p>The ID of the comment for which you want to get reactions information.</p>")
    commentId: commentId,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of reactions to the specified comment.</p>")
    reactionsForComment: reactionsForCommentList,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "GetCommentReactionsCommand"
  let make = (~commentId, ~maxResults=?, ~nextToken=?, ~reactionUserArn=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      reactionUserArn: reactionUserArn,
      commentId: commentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeMergeConflicts = {
  type t
  type request = {
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The path of the target files used to describe the conflicts. </p>")
    filePath: path,
    @ocaml.doc("<p>The maximum number of merge hunks to include in the output.</p>")
    maxMergeHunks: option<maxResults>,
    @ocaml.doc("<p>The merge option or strategy you want to use to merge the code.</p>")
    mergeOption: mergeOptionTypeEnum,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc(
      "<p>The name of the repository where you want to get information about a merge conflict.</p>"
    )
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The commit ID of the merge base.</p>") baseCommitId: option<objectId>,
    @ocaml.doc(
      "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
    )
    sourceCommitId: objectId,
    @ocaml.doc(
      "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
    )
    destinationCommitId: objectId,
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of merge hunks of the differences between the files or lines.</p>")
    mergeHunks: mergeHunks,
    @ocaml.doc("<p>Contains metadata about the conflicts found in the merge.</p>")
    conflictMetadata: conflictMetadata,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "DescribeMergeConflictsCommand"
  let make = (
    ~filePath,
    ~mergeOption,
    ~sourceCommitSpecifier,
    ~destinationCommitSpecifier,
    ~repositoryName,
    ~nextToken=?,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    ~maxMergeHunks=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      filePath: filePath,
      maxMergeHunks: maxMergeHunks,
      mergeOption: mergeOption,
      sourceCommitSpecifier: sourceCommitSpecifier,
      destinationCommitSpecifier: destinationCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUnreferencedMergeCommit = {
  type t
  type request = {
    @ocaml.doc("<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
            resolving conflicts during a merge.</p>")
    conflictResolution: option<conflictResolution>,
    @ocaml.doc("<p>If the commit contains deletions, whether to keep a folder or folder structure if the
            changes leave the folders empty. If this is specified as true, a .gitkeep file is
            created for empty folders. The default is false.</p>")
    keepEmptyFolders: option<keepEmptyFolders>,
    @ocaml.doc("<p>The commit message for the unreferenced commit.</p>")
    commitMessage: option<message>,
    @ocaml.doc("<p>The email address for the person who created the unreferenced commit.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the author who created the unreferenced commit. This information is used
            as both the author and committer for the commit.</p>")
    authorName: option<name>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The merge option or strategy you want to use to merge the code.</p>")
    mergeOption: mergeOptionTypeEnum,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc(
      "<p>The name of the repository where you want to create the unreferenced merge commit.</p>"
    )
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>The full SHA-1 pointer of the tree information for the commit that contains the merge results.</p>"
    )
    treeId: option<objectId>,
    @ocaml.doc("<p>The full commit ID of the commit that contains your merge results.</p>")
    commitId: option<objectId>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "CreateUnreferencedMergeCommitCommand"
  let make = (
    ~mergeOption,
    ~destinationCommitSpecifier,
    ~sourceCommitSpecifier,
    ~repositoryName,
    ~conflictResolution=?,
    ~keepEmptyFolders=?,
    ~commitMessage=?,
    ~email=?,
    ~authorName=?,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    (),
  ) =>
    new({
      conflictResolution: conflictResolution,
      keepEmptyFolders: keepEmptyFolders,
      commitMessage: commitMessage,
      email: email,
      authorName: authorName,
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      mergeOption: mergeOption,
      destinationCommitSpecifier: destinationCommitSpecifier,
      sourceCommitSpecifier: sourceCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCommit = {
  type t
  type request = {
    @ocaml.doc("<p>The file modes to update for files in this commit.</p>")
    setFileModes: option<setFileModeEntries>,
    @ocaml.doc(
      "<p>The files to delete in this commit. These files still exist in earlier commits.</p>"
    )
    deleteFiles: option<deleteFileEntries>,
    @ocaml.doc("<p>The files to add or update in this commit.</p>")
    putFiles: option<putFileEntries>,
    @ocaml.doc("<p>If the commit contains deletions, whether to keep a folder or folder structure if the
            changes leave the folders empty. If true, a ..gitkeep file is created for empty folders.
            The default is false.</p>")
    keepEmptyFolders: option<keepEmptyFolders>,
    @ocaml.doc("<p>The commit message you want to include in the commit. Commit messages are limited to
            256 KB. If no message is specified, a default message is used.</p>")
    commitMessage: option<message>,
    @ocaml.doc("<p>The email address of the person who created the commit.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the author who created the commit. This information is used as both the
            author and committer for the commit.</p>")
    authorName: option<name>,
    @ocaml.doc("<p>The ID of the commit that is the parent of the commit you create. Not required if this
            is an empty repository.</p>")
    parentCommitId: option<commitId>,
    @ocaml.doc("<p>The name of the branch where you create the commit.</p>") branchName: branchName,
    @ocaml.doc("<p>The name of the repository where you create the commit.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The files deleted as part of the committed file changes.</p>")
    filesDeleted: option<filesMetadata>,
    @ocaml.doc("<p>The files updated as part of the commited file changes.</p>")
    filesUpdated: option<filesMetadata>,
    @ocaml.doc("<p>The files added as part of the committed file changes.</p>")
    filesAdded: option<filesMetadata>,
    @ocaml.doc(
      "<p>The full SHA-1 pointer of the tree information for the commit that contains the commited file changes.</p>"
    )
    treeId: option<objectId>,
    @ocaml.doc("<p>The full commit ID of the commit that contains your committed file changes.</p>")
    commitId: option<objectId>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "CreateCommitCommand"
  let make = (
    ~branchName,
    ~repositoryName,
    ~setFileModes=?,
    ~deleteFiles=?,
    ~putFiles=?,
    ~keepEmptyFolders=?,
    ~commitMessage=?,
    ~email=?,
    ~authorName=?,
    ~parentCommitId=?,
    (),
  ) =>
    new({
      setFileModes: setFileModes,
      deleteFiles: deleteFiles,
      putFiles: putFiles,
      keepEmptyFolders: keepEmptyFolders,
      commitMessage: commitMessage,
      email: email,
      authorName: authorName,
      parentCommitId: parentCommitId,
      branchName: branchName,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchGetCommits = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the repository that contains the commits.</p>")
    repositoryName: repositoryName,
    @ocaml.doc("<p>The full commit IDs of the commits to get information about.</p>
        <note>
            <p>You must supply the full SHA IDs of each commit. You cannot use shortened SHA
                IDs.</p>
        </note>")
    commitIds: commitIdsInputList,
  }
  type response = {
    @ocaml.doc("<p>Returns any commit IDs for which information could not be found. For example, if one
            of the commit IDs was a shortened SHA ID or that commit was not found in the specified
            repository, the ID returns an error object with more information.</p>")
    errors: option<batchGetCommitsErrorsList>,
    @ocaml.doc(
      "<p>An array of commit data type objects, each of which contains information about a specified commit.</p>"
    )
    commits: option<commitObjectsList>,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "BatchGetCommitsCommand"
  let make = (~repositoryName, ~commitIds, ()) =>
    new({repositoryName: repositoryName, commitIds: commitIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePullRequestTitle = {
  type t
  type request = {
    @ocaml.doc("<p>The updated title of the pull request. This replaces the existing title.</p>")
    title: title,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the updated pull request.</p>") pullRequest: pullRequest,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdatePullRequestTitleCommand"
  let make = (~title, ~pullRequestId, ()) => new({title: title, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePullRequestStatus = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the pull request. The only valid operations are to update the status
            from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or
            from <code>CLOSED</code> to <code>CLOSED</code>.</p>")
    pullRequestStatus: pullRequestStatusEnum,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the pull request.</p>") pullRequest: pullRequest,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdatePullRequestStatusCommand"
  let make = (~pullRequestStatus, ~pullRequestId, ()) =>
    new({pullRequestStatus: pullRequestStatus, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePullRequestDescription = {
  type t
  type request = {
    @ocaml.doc("<p>The updated content of the description for the pull request. This content replaces the
            existing description.</p>")
    description: description,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the updated pull request.</p>") pullRequest: pullRequest,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "UpdatePullRequestDescriptionCommand"
  let make = (~description, ~pullRequestId, ()) =>
    new({description: description, pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MergePullRequestByThreeWay = {
  type t
  type request = {
    @ocaml.doc("<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
            resolving conflicts during a merge.</p>")
    conflictResolution: option<conflictResolution>,
    @ocaml.doc("<p>If the commit contains deletions, whether to keep a folder or folder structure if the
            changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
            The default is false.</p>")
    keepEmptyFolders: option<keepEmptyFolders>,
    @ocaml.doc("<p>The email address of the person merging the branches. This information is used in the
            commit information for the merge.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the author who created the commit. This information is used as both the
            author and committer for the commit.</p>")
    authorName: option<name>,
    @ocaml.doc("<p>The commit message to include in the commit information for the merge.</p>")
    commitMessage: option<message>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
            exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>")
    sourceCommitId: option<objectId>,
    @ocaml.doc("<p>The name of the repository where the pull request was created.</p>")
    repositoryName: repositoryName,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {pullRequest: option<pullRequest>}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "MergePullRequestByThreeWayCommand"
  let make = (
    ~repositoryName,
    ~pullRequestId,
    ~conflictResolution=?,
    ~keepEmptyFolders=?,
    ~email=?,
    ~authorName=?,
    ~commitMessage=?,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    ~sourceCommitId=?,
    (),
  ) =>
    new({
      conflictResolution: conflictResolution,
      keepEmptyFolders: keepEmptyFolders,
      email: email,
      authorName: authorName,
      commitMessage: commitMessage,
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      sourceCommitId: sourceCommitId,
      repositoryName: repositoryName,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MergePullRequestBySquash = {
  type t
  type request = {
    @ocaml.doc("<p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
            resolving conflicts during a merge.</p>")
    conflictResolution: option<conflictResolution>,
    @ocaml.doc("<p>If the commit contains deletions, whether to keep a folder or folder structure if the
            changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
            The default is false.</p>")
    keepEmptyFolders: option<keepEmptyFolders>,
    @ocaml.doc("<p>The email address of the person merging the branches. This information is used in the
            commit information for the merge.</p>")
    email: option<email>,
    @ocaml.doc("<p>The name of the author who created the commit. This information is used as both the
            author and committer for the commit.</p>")
    authorName: option<name>,
    @ocaml.doc("<p>The commit message to include in the commit information for the merge.</p>")
    commitMessage: option<message>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc("<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
            exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>")
    sourceCommitId: option<objectId>,
    @ocaml.doc("<p>The name of the repository where the pull request was created.</p>")
    repositoryName: repositoryName,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {pullRequest: option<pullRequest>}
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "MergePullRequestBySquashCommand"
  let make = (
    ~repositoryName,
    ~pullRequestId,
    ~conflictResolution=?,
    ~keepEmptyFolders=?,
    ~email=?,
    ~authorName=?,
    ~commitMessage=?,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    ~sourceCommitId=?,
    (),
  ) =>
    new({
      conflictResolution: conflictResolution,
      keepEmptyFolders: keepEmptyFolders,
      email: email,
      authorName: authorName,
      commitMessage: commitMessage,
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      sourceCommitId: sourceCommitId,
      repositoryName: repositoryName,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module MergePullRequestByFastForward = {
  type t
  type request = {
    @ocaml.doc("<p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an 
        exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>")
    sourceCommitId: option<objectId>,
    @ocaml.doc("<p>The name of the repository where the pull request was created.</p>")
    repositoryName: repositoryName,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the specified pull request, including the merge.</p>")
    pullRequest: option<pullRequest>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "MergePullRequestByFastForwardCommand"
  let make = (~repositoryName, ~pullRequestId, ~sourceCommitId=?, ()) =>
    new({
      sourceCommitId: sourceCommitId,
      repositoryName: repositoryName,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetPullRequest = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc("<p>Information about the specified pull request.</p>") pullRequest: pullRequest,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "GetPullRequestCommand"
  let make = (~pullRequestId, ()) => new({pullRequestId: pullRequestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePullRequestEvents = {
  type t
  type request = {
    @ocaml.doc("<p>A non-zero, non-negative integer used to limit the number of returned results. 
            The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
            Examples include updating the pull request with more commits or changing the status of a
            pull request.</p>")
    actorArn: option<arn>,
    @ocaml.doc(
      "<p>Optional. The pull request event type about which you want to return information.</p>"
    )
    pullRequestEventType: option<pullRequestEventType>,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the pull request events.</p>")
    pullRequestEvents: pullRequestEventList,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "DescribePullRequestEventsCommand"
  let make = (
    ~pullRequestId,
    ~maxResults=?,
    ~nextToken=?,
    ~actorArn=?,
    ~pullRequestEventType=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      actorArn: actorArn,
      pullRequestEventType: pullRequestEventType,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePullRequest = {
  type t
  type request = {
    @ocaml.doc("<p>A unique, client-generated idempotency token that, when provided in a request, ensures
            the request cannot be repeated with a changed parameter. If a request is received with
            the same parameters and a token is included, the request returns information about the
            initial request that used that token.</p>
        <note>
            <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an
                idempotency token is created for you.</p>
        </note>")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The targets for the pull request, including the source of the code to be reviewed (the
            source branch) and the destination where the creator of the pull request intends the
            code to be merged after the pull request is closed (the destination branch).</p>")
    targets: targetList,
    @ocaml.doc("<p>A description of the pull request.</p>") description: option<description>,
    @ocaml.doc("<p>The title of the pull request. This title is used to identify the pull request to
            other users in the repository.</p>")
    title: title,
  }
  type response = {
    @ocaml.doc("<p>Information about the newly created pull request.</p>") pullRequest: pullRequest,
  }
  @module("@aws-sdk/client-codecommit") @new external new: request => t = "CreatePullRequestCommand"
  let make = (~targets, ~title, ~clientRequestToken=?, ~description=?, ()) =>
    new({
      clientRequestToken: clientRequestToken,
      targets: targets,
      description: description,
      title: title,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCommentsForPullRequest = {
  type t
  type request = {
    @ocaml.doc("<p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments.
            You can return up to 500 comments with a single request.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.</p>"
    )
    afterCommitId: option<commitId>,
    @ocaml.doc(
      "<p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>"
    )
    beforeCommitId: option<commitId>,
    @ocaml.doc("<p>The name of the repository that contains the pull request.</p>")
    repositoryName: option<repositoryName>,
    @ocaml.doc(
      "<p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>"
    )
    pullRequestId: pullRequestId,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>An array of comment objects on the pull request.</p>")
    commentsForPullRequestData: option<commentsForPullRequestData>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "GetCommentsForPullRequestCommand"
  let make = (
    ~pullRequestId,
    ~maxResults=?,
    ~nextToken=?,
    ~afterCommitId=?,
    ~beforeCommitId=?,
    ~repositoryName=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      afterCommitId: afterCommitId,
      beforeCommitId: beforeCommitId,
      repositoryName: repositoryName,
      pullRequestId: pullRequestId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCommentsForComparedCommit = {
  type t
  type request = {
    @ocaml.doc("<p>A non-zero, non-negative integer used to limit the number of returned results. The
            default is 100 comments, but you can configure up to 500.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>An enumeration token that when provided in a request, returns the next batch of the results. </p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>To establish the directionality of the comparison, the full commit ID of the after
            commit.</p>")
    afterCommitId: commitId,
    @ocaml.doc("<p>To establish the directionality of the comparison, the full commit ID of the before
            commit.</p>")
    beforeCommitId: option<commitId>,
    @ocaml.doc("<p>The name of the repository where you want to compare commits.</p>")
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of comment objects on the compared commit.</p>")
    commentsForComparedCommitData: option<commentsForComparedCommitData>,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "GetCommentsForComparedCommitCommand"
  let make = (
    ~afterCommitId,
    ~repositoryName,
    ~maxResults=?,
    ~nextToken=?,
    ~beforeCommitId=?,
    (),
  ) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      afterCommitId: afterCommitId,
      beforeCommitId: beforeCommitId,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDescribeMergeConflicts = {
  type t
  type request = {
    @ocaml.doc("<p>An enumeration token that, when provided in a request, returns the next batch of the
            results.</p>")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies which branch to use when resolving conflicts, or whether to attempt
            automatically merging two versions of a file. The default is NONE, which requires any
            conflicts to be resolved manually before the merge operation is successful.</p>")
    conflictResolutionStrategy: option<conflictResolutionStrategyTypeEnum>,
    @ocaml.doc("<p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
            which returns a not-mergeable result if the same file has differences in both branches.
            If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
            both branches has differences on the same line.</p>")
    conflictDetailLevel: option<conflictDetailLevelTypeEnum>,
    @ocaml.doc(
      "<p>The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.</p>"
    )
    filePaths: option<filePaths>,
    @ocaml.doc("<p>The maximum number of files to include in the output.</p>")
    maxConflictFiles: option<maxResults>,
    @ocaml.doc("<p>The maximum number of merge hunks to include in the output.</p>")
    maxMergeHunks: option<maxResults>,
    @ocaml.doc("<p>The merge option or strategy you want to use to merge the code.</p>")
    mergeOption: mergeOptionTypeEnum,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    sourceCommitSpecifier: commitName,
    @ocaml.doc("<p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
            (for example, a branch name or a full commit ID).</p>")
    destinationCommitSpecifier: commitName,
    @ocaml.doc(
      "<p>The name of the repository that contains the merge conflicts you want to review.</p>"
    )
    repositoryName: repositoryName,
  }
  type response = {
    @ocaml.doc("<p>The commit ID of the merge base.</p>") baseCommitId: option<objectId>,
    @ocaml.doc(
      "<p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>"
    )
    sourceCommitId: objectId,
    @ocaml.doc(
      "<p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>"
    )
    destinationCommitId: objectId,
    @ocaml.doc(
      "<p>A list of any errors returned while describing the merge conflicts for each file.</p>"
    )
    errors: option<batchDescribeMergeConflictsErrors>,
    @ocaml.doc(
      "<p>An enumeration token that can be used in a request to return the next batch of the results.</p>"
    )
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of conflicts for each file, including the conflict metadata and the hunks of the differences between the files.</p>"
    )
    conflicts: conflicts,
  }
  @module("@aws-sdk/client-codecommit") @new
  external new: request => t = "BatchDescribeMergeConflictsCommand"
  let make = (
    ~mergeOption,
    ~sourceCommitSpecifier,
    ~destinationCommitSpecifier,
    ~repositoryName,
    ~nextToken=?,
    ~conflictResolutionStrategy=?,
    ~conflictDetailLevel=?,
    ~filePaths=?,
    ~maxConflictFiles=?,
    ~maxMergeHunks=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      conflictResolutionStrategy: conflictResolutionStrategy,
      conflictDetailLevel: conflictDetailLevel,
      filePaths: filePaths,
      maxConflictFiles: maxConflictFiles,
      maxMergeHunks: maxMergeHunks,
      mergeOption: mergeOption,
      sourceCommitSpecifier: sourceCommitSpecifier,
      destinationCommitSpecifier: destinationCommitSpecifier,
      repositoryName: repositoryName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
