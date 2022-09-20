type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-codeguru-reviewer") @new
external createClient: unit => awsServiceClient = "CodeGuruReviewerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type vendorName = [@as("NativeS3") #NativeS3 | @as("GitLab") #GitLab | @as("GitHub") #GitHub]
type userId = string
type type_ = [@as("RepositoryAnalysis") #RepositoryAnalysis | @as("PullRequest") #PullRequest]
type timeStamp = Js.Date.t
type text = string
type tagValue = string
type tagKey = string
type stateReason = string
type sourceCodeArtifactsObjectKey = string
type shortDescription = string
type severity = [
  | @as("Critical") #Critical
  | @as("High") #High
  | @as("Medium") #Medium
  | @as("Low") #Low
  | @as("Info") #Info
]
type s3BucketName = string
type ruleTag = string
type ruleName = string
type ruleId = string
type requester = string
type requestId = string
type repositoryAssociationState = [
  | @as("Disassociated") #Disassociated
  | @as("Disassociating") #Disassociating
  | @as("Failed") #Failed
  | @as("Associating") #Associating
  | @as("Associated") #Associated
]
type recommendationId = string
type recommendationCategory = [
  | @as("CodeInconsistencies") #CodeInconsistencies
  | @as("SecurityIssues") #SecurityIssues
  | @as("ResourceLeaks") #ResourceLeaks
  | @as("JavaBestPractices") #JavaBestPractices
  | @as("PythonBestPractices") #PythonBestPractices
  | @as("InputValidations") #InputValidations
  | @as("ConcurrencyIssues") #ConcurrencyIssues
  | @as("CodeMaintenanceIssues") #CodeMaintenanceIssues
  | @as("DuplicateCode") #DuplicateCode
  | @as("AWSCloudFormationIssues") #AWSCloudFormationIssues
  | @as("AWSBestPractices") #AWSBestPractices
]
type reaction = [@as("ThumbsDown") #ThumbsDown | @as("ThumbsUp") #ThumbsUp]
type pullRequestId = string
type providerType = [
  | @as("S3Bucket") #S3Bucket
  | @as("GitHubEnterpriseServer") #GitHubEnterpriseServer
  | @as("Bitbucket") #Bitbucket
  | @as("GitHub") #GitHub
  | @as("CodeCommit") #CodeCommit
]
type owner = string
type nextToken = string
type name = string
type meteredLinesOfCodeCount = float
type maxResults = int
type longDescription = string
type listRecommendationsMaxResults = int
type listCodeReviewsMaxResults = int
type lineNumber = int
type kmskeyId = string
type jobState = [
  | @as("Deleting") #Deleting
  | @as("Failed") #Failed
  | @as("Pending") #Pending
  | @as("Completed") #Completed
]
type findingsCount = float
type filePath = string
type eventState = string
type eventName = string
type errorMessage = string
type encryptionOption = [
  | @as("CUSTOMER_MANAGED_CMK") #CUSTOMER_MANAGED_CMK
  | @as("AWS_OWNED_CMK") #AWS_OWNED_CMK
]
type connectionArn = string
type commitId = string
type codeReviewName = string
type clientRequestToken = string
type buildArtifactsObjectKey = string
type branchName = string
type associationId = string
type associationArn = string
type arn = string
type analysisType = [@as("CodeQuality") #CodeQuality | @as("Security") #Security]
type userIds = array<userId>
@ocaml.doc("<p>
         Information about a third-party source repository connected to CodeGuru Reviewer.
      </p>")
type thirdPartySourceRepository = {
  @ocaml.doc("<p>
         The owner of the repository. For a GitHub, GitHub Enterprise, or Bitbucket repository, 
         this is the username for the account that owns the repository. For an S3 repository, 
         this can be the username or Amazon Web Services account ID.
      </p>")
  @as("Owner")
  owner: owner,
  @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar Connections connection. Its format is 
         <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see 
         <a href=\"https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html\">
               <code>Connection</code>
            </a> in 
         the <i>Amazon Web Services CodeStar Connections API Reference</i>.
      </p>")
  @as("ConnectionArn")
  connectionArn: connectionArn,
  @ocaml.doc("<p>
         The name of the third party source repository.
      </p>")
  @as("Name")
  name: name,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>
         Information about a repository in an S3 bucket. 
      </p>")
type s3Repository = {
  @ocaml.doc("<p>The name of the S3 bucket used for associating a new S3 repository. It must begin with 
         <code>codeguru-reviewer-</code>. </p>")
  @as("BucketName")
  bucketName: s3BucketName,
  @ocaml.doc("<p> The name of the repository in the S3 bucket. </p>") @as("Name") name: name,
}
type ruleTags = array<ruleTag>
type repositoryNames = array<name>
@ocaml.doc("<p>
         A <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\">
               <code>SourceCodeType</code>
            </a> that specifies 
         the tip of a branch in an associated repository.
      </p>")
type repositoryHeadSourceCodeType = {
  @ocaml.doc("<p>
         The name of the branch in an associated repository. The <code>RepositoryHeadSourceCodeType</code> specifies 
         the tip of this branch.
      </p>")
  @as("BranchName")
  branchName: branchName,
}
@ocaml.doc("<p>Summary information about a repository association. The 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>
         operation returns a list of <code>RepositoryAssociationSummary</code> objects.</p>")
type repositoryAssociationSummary = {
  @ocaml.doc("<p>The state of the repository association.</p>
         <p>The valid repository association states are:</p>
         <ul>
            <li>            
               <p>
                  <b>Associated</b>: The repository 
               association is complete.
            </p>            
            </li>
            <li>
               <p>
                  <b>Associating</b>: CodeGuru Reviewer is:               
            </p>
               <ul>
                  <li>
                     <p>
                     Setting up pull request notifications. This is required 
                     for pull requests to trigger a CodeGuru Reviewer review.
                  </p>
                     <note>
                        <p>
                        If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, 
                        CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, 
                        reviews of code in your repository cannot be triggered.
                     </p>
                     </note>
                  </li>
                  <li>
                     <p>
                     Setting up source code access. This is required for CodeGuru Reviewer to securely 
                     clone code in your repository.
                  </p>
                  </li>
               </ul>            
            </li>
            <li>
               <p>
                  <b>Failed</b>: The repository failed to associate or disassociate.
            </p>            
            </li>
            <li>
               <p>
                  <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and 
               source code access.
            </p>
            </li>
            <li>
               <p>
                  <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association 
               with this repository if you want to review source code in it later. You can control access to code reviews created in an 
               associated repository with tags after it has been disassociated. For more information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html\">Using tags to control access to 
               associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.
            </p>
            </li>
         </ul>")
  @as("State")
  state: option<repositoryAssociationState>,
  @ocaml.doc("<p>The provider type of the repository association.</p>") @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
      account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
      For an S3 repository, it can be the username or Amazon Web Services account ID.</p>")
  @as("Owner")
  owner: option<owner>,
  @ocaml.doc("<p>The name of the repository association.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>
         The repository association ID.
      </p>")
  @as("AssociationId")
  associationId: option<associationId>,
  @ocaml.doc("<p>The time, in milliseconds since the epoch, since the repository association
        was last updated.
      </p>")
  @as("LastUpdatedTimeStamp")
  lastUpdatedTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar Connections connection. Its format is 
         <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see 
         <a href=\"https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html\">
               <code>Connection</code>
            </a> in 
         the <i>Amazon Web Services CodeStar Connections API Reference</i>.
      </p>")
  @as("ConnectionArn")
  connectionArn: option<connectionArn>,
  @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the  
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> object. 
         You can retrieve this ARN by calling 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
      </p>")
  @as("AssociationArn")
  associationArn: option<arn>,
}
type repositoryAssociationStates = array<repositoryAssociationState>
type recommendationIds = array<recommendationId>
type reactions = array<reaction>
type providerTypes = array<providerType>
type owners = array<owner>
type names = array<name>
@ocaml.doc("<p>
         Information about metrics summaries.
      </p>")
type metricsSummary = {
  @ocaml.doc("<p>
         Total number of recommendations found in the code review.
      </p>")
  @as("FindingsCount")
  findingsCount: option<findingsCount>,
  @ocaml.doc("<p>
         Lines of code metered in the code review. For the initial code review pull request and all subsequent revisions, 
         this includes all lines of code in the files added to the pull request. In subsequent revisions, for files that already 
         existed in the pull request, this includes only the changed lines of code. In both cases, this does not include non-code lines such as comments 
         and import statements. For example, if you submit a pull request containing 5 files, each with 500 lines of code, and in 
         a subsequent revision you added a new file with 200 lines of code, and also modified a total of 25 lines across the initial 5 files, 
         <code>MeteredLinesOfCodeCount</code> includes the first 5 files (5 * 500 = 2,500 lines), the new file (200 lines) and the 25 changed lines of
         code for a total of 2,725 lines of code.
      </p>")
  @as("MeteredLinesOfCodeCount")
  meteredLinesOfCodeCount: option<meteredLinesOfCodeCount>,
}
@ocaml.doc("<p>
         Information about the statistics from the code review.
      </p>")
type metrics = {
  @ocaml.doc("<p>
         Total number of recommendations found in the code review.
      </p>")
  @as("FindingsCount")
  findingsCount: option<findingsCount>,
  @ocaml.doc("<p>
            <code>MeteredLinesOfCode</code> is the number of lines of code in the repository where the code review happened. 
         This does not include non-code lines such as comments and blank lines.
      </p>")
  @as("MeteredLinesOfCodeCount")
  meteredLinesOfCodeCount: option<meteredLinesOfCodeCount>,
}
@ocaml.doc("<p>An object that contains:</p>
         <ul>
            <li>
               <p>The encryption option for a repository association. It is either owned by Amazon Web Services 
            Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed (<code>CUSTOMER_MANAGED_CMK</code>).</p>
            </li>
            <li>
               <p>The ID of the Amazon Web Services KMS key that 
            is associated with a respository association.</p>
            </li>
         </ul>")
type kmskeyDetails = {
  @ocaml.doc("<p>The encryption option for a repository association. It is either owned by Amazon Web Services 
            Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed (<code>CUSTOMER_MANAGED_CMK</code>).</p>")
  @as("EncryptionOption")
  encryptionOption: option<encryptionOption>,
  @ocaml.doc(
    "<p>The ID of the Amazon Web Services KMS key that is associated with a respository association.</p>"
  )
  @as("KMSKeyId")
  kmskeyId: option<kmskeyId>,
}
type jobStates = array<jobState>
@ocaml.doc(
  "<p>Information about an event. The event might be a push, pull request, scheduled request, or another type of event.</p>"
)
type eventInfo = {
  @ocaml.doc("<p>The state of an event. The state might be open, closed, or another state.</p>")
  @as("State")
  state: option<eventState>,
  @ocaml.doc("<p>The name of the event. The possible names are <code>pull_request</code>, <code>workflow_dispatch</code>, 
         <code>schedule</code>, and <code>push</code>
         </p>")
  @as("Name")
  name: option<eventName>,
}
@ocaml.doc("<p>
         A type of <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\">
               <code>SourceCodeType</code>
            </a> that 
         specifies the commit diff for a pull request on an associated repository. The <code>SourceCommit</code> 
         and <code>DestinationCommit</code> fields are required to do a pull request code review.
      </p>")
type commitDiffSourceCodeType = {
  @ocaml.doc("<p>The SHA of the merge base of a commit.</p>") @as("MergeBaseCommit")
  mergeBaseCommit: option<commitId>,
  @ocaml.doc("<p>
         The SHA of the destination commit used to generate a commit diff. This field is required for a pull request code review.
      </p>")
  @as("DestinationCommit")
  destinationCommit: option<commitId>,
  @ocaml.doc("<p>
         The SHA of the source commit used to generate a commit diff. This field is required for a pull request code review.
      </p>")
  @as("SourceCommit")
  sourceCommit: option<commitId>,
}
@ocaml.doc("<p>Information about an Amazon Web Services CodeCommit repository. The CodeCommit repository must be in the same 
      Amazon Web Services Region and Amazon Web Services account where its CodeGuru Reviewer code reviews are configured.</p>")
type codeCommitRepository = {
  @ocaml.doc("<p>The name of the Amazon Web Services CodeCommit repository. For more information, see 
         <a href=\"https://docs.aws.amazon.com/codecommit/latest/APIReference/API_GetRepository.html#CodeCommit-GetRepository-request-repositoryName\">repositoryName</a> 
         in the <i>Amazon Web Services CodeCommit API Reference</i>.</p>")
  @as("Name")
  name: name,
}
@ocaml.doc("<p>Code artifacts are source code artifacts and build artifacts used in a repository analysis or a pull request review.</p>
         <ul>
            <li>
               <p>Source code artifacts are source code files in a Git repository that are 
            compressed into a .zip file.</p>
            </li>
            <li>
               <p>Build artifacts are .jar or .class files that are compressed in a .zip file.</p>
            </li>
         </ul>")
type codeArtifacts = {
  @ocaml.doc("<p>The S3 object key for a build artifacts .zip file that 
         contains .jar or .class files. This is required for a code review with security analysis. For more 
         information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/code-review-security.html\">Create code reviews with security 
            analysis</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.</p>")
  @as("BuildArtifactsObjectKey")
  buildArtifactsObjectKey: option<buildArtifactsObjectKey>,
  @ocaml.doc(
    "<p>The S3 object key for a source code .zip file. This is required for all code reviews.</p>"
  )
  @as("SourceCodeArtifactsObjectKey")
  sourceCodeArtifactsObjectKey: sourceCodeArtifactsObjectKey,
}
@ocaml.doc("<p>
         A type of <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\">
               <code>SourceCodeType</code>
            </a> that 
         specifies a code diff between a source and destination branch in an associated repository.
      </p>")
type branchDiffSourceCodeType = {
  @ocaml.doc("<p>The destination branch for a diff in an associated repository.</p>")
  @as("DestinationBranchName")
  destinationBranchName: branchName,
  @ocaml.doc("<p>The source branch for a diff in an associated repository.</p>")
  @as("SourceBranchName")
  sourceBranchName: branchName,
}
type analysisTypes = array<analysisType>
@ocaml.doc("<p>
         Specifies the name of an S3 bucket and a <code>CodeArtifacts</code> object that contains the S3 
         object keys for a source code .zip file and for a build artifacts .zip file that contains .jar or .class files.
      </p>")
type s3RepositoryDetails = {
  @ocaml.doc("<p>
         A <code>CodeArtifacts</code> object. The <code>CodeArtifacts</code> object includes the S3 
         object key for a source code .zip file and for a build artifacts .zip file that contains .jar or .class files.
      </p>")
  @as("CodeArtifacts")
  codeArtifacts: option<codeArtifacts>,
  @ocaml.doc("<p>The name of the S3 bucket used for associating a new S3 repository. It must begin with 
         <code>codeguru-reviewer-</code>. </p>")
  @as("BucketName")
  bucketName: option<s3BucketName>,
}
@ocaml.doc("<p>Metadata about a rule. Rule metadata includes an ID, a name, a list of tags, and a 
         short and long description. CodeGuru Reviewer uses rules to analyze code. A rule's recommendation is 
         included in analysis results if code is detected that violates the rule.</p>")
type ruleMetadata = {
  @ocaml.doc("<p>Tags that are associated with the rule.</p>") @as("RuleTags")
  ruleTags: option<ruleTags>,
  @ocaml.doc("<p>A long description of the rule.</p>") @as("LongDescription")
  longDescription: option<longDescription>,
  @ocaml.doc("<p>A short description of the rule.</p>") @as("ShortDescription")
  shortDescription: option<shortDescription>,
  @ocaml.doc("<p>The name of the rule.</p>") @as("RuleName") ruleName: option<ruleName>,
  @ocaml.doc("<p>The ID of the rule.</p>") @as("RuleId") ruleId: option<ruleId>,
}
@ocaml.doc("<p>Metadata that is associated with a code review. This applies to both pull request 
         and repository analysis code reviews.</p>")
type requestMetadata = {
  @ocaml.doc("<p>The name of the repository vendor used to upload code to an S3 bucket for a CI/CD code
         review. For example, if code and artifacts are uploaded to an S3 bucket for a CI/CD code
         review by GitHub scripts from a GitHub repository, then the repository association's <code>ProviderType</code> is
            <code>S3Bucket</code> and the CI/CD repository vendor name is GitHub. For more
         information, see the definition for <code>ProviderType</code> in <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">RepositoryAssociation</a>. </p>")
  @as("VendorName")
  vendorName: option<vendorName>,
  @ocaml.doc("<p>Information about the event associated with a code review.</p>") @as("EventInfo")
  eventInfo: option<eventInfo>,
  @ocaml.doc("<p>An identifier, such as a name or account ID, that is associated with the requester. The 
      <code>Requester</code> is used to capture the <code>author/actor</code> name of the event request.</p>")
  @as("Requester")
  requester: option<requester>,
  @ocaml.doc("<p>The ID of the request. This is required for a pull request code review.</p>")
  @as("RequestId")
  requestId: option<requestId>,
}
type repositoryAssociationSummaries = array<repositoryAssociationSummary>
@ocaml.doc("<p>
         Information about an associated Amazon Web Services CodeCommit repository or an associated repository that is managed 
         by Amazon Web Services CodeStar Connections (for example, Bitbucket). This <code>Repository</code> object 
         is not used if your source code is in an associated GitHub repository.
      </p>")
type repository = {
  @as("S3Bucket") s3Bucket: option<s3Repository>,
  @ocaml.doc("<p>
         Information about a GitHub Enterprise Server repository.
      </p>")
  @as("GitHubEnterpriseServer")
  gitHubEnterpriseServer: option<thirdPartySourceRepository>,
  @ocaml.doc("<p>
         Information about a Bitbucket repository.
      </p>")
  @as("Bitbucket")
  bitbucket: option<thirdPartySourceRepository>,
  @ocaml.doc("<p>Information about an Amazon Web Services CodeCommit repository.</p>")
  @as("CodeCommit")
  codeCommit: option<codeCommitRepository>,
}
@ocaml.doc("<p>
         Information about recommendation feedback summaries.
      </p>")
type recommendationFeedbackSummary = {
  @ocaml.doc("<p>
         The ID of the user that gave the feedback.
      </p>
         <p>
         The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\">
            Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.
      </p>")
  @as("UserId")
  userId: option<userId>,
  @ocaml.doc("<p>
         List for storing reactions. Reactions are utf-8 text code for emojis.
      </p>")
  @as("Reactions")
  reactions: option<reactions>,
  @ocaml.doc("<p>
         The recommendation ID that can be used to track the provided recommendations. Later on it can be used to collect the feedback.
      </p>")
  @as("RecommendationId")
  recommendationId: option<recommendationId>,
}
@ocaml.doc("<p>
         Information about the recommendation feedback.
      </p>")
type recommendationFeedback = {
  @ocaml.doc("<p>
         The time at which the feedback was last updated. 
      </p>")
  @as("LastUpdatedTimeStamp")
  lastUpdatedTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>
         The time at which the feedback was created.
      </p>")
  @as("CreatedTimeStamp")
  createdTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>
         The ID of the user that made the API call.
      </p>
         <p>
         The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\">
            Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.
      </p>")
  @as("UserId")
  userId: option<userId>,
  @ocaml.doc("<p>
         List for storing reactions. Reactions are utf-8 text code for emojis. You can send an empty list to clear off all your feedback.
      </p>")
  @as("Reactions")
  reactions: option<reactions>,
  @ocaml.doc("<p>
         The recommendation ID that can be used to track the provided recommendations. Later on it can be used to collect the feedback.
      </p>")
  @as("RecommendationId")
  recommendationId: option<recommendationId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
  @as("CodeReviewArn")
  codeReviewArn: option<arn>,
}
@ocaml.doc("<p>
         Information about an associated repository in an S3 bucket. The associated repository contains a source code 
         .zip file and a build artifacts .zip file that contains .jar or .class files.
      </p>")
type s3BucketRepository = {
  @ocaml.doc("<p>
			An <code>S3RepositoryDetails</code> object that specifies the name of an S3 bucket and 
			a <code>CodeArtifacts</code> object. The <code>CodeArtifacts</code> object includes the S3 
			object keys for a source code .zip file and for a build artifacts .zip file.
		</p>")
  @as("Details")
  details: option<s3RepositoryDetails>,
  @ocaml.doc("<p>
         The name of the repository when the <code>ProviderType</code> is <code>S3Bucket</code>.
      </p>")
  @as("Name")
  name: name,
}
@ocaml.doc("<p>Information about a repository association. The 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_DescribeRepositoryAssociation.html\">
               <code>DescribeRepositoryAssociation</code>
            </a>
         operation returns a <code>RepositoryAssociation</code> object.</p>")
type repositoryAssociation = {
  @as("S3RepositoryDetails") s3RepositoryDetails: option<s3RepositoryDetails>,
  @ocaml.doc("<p>A <code>KMSKeyDetails</code> object that contains:</p>
         <ul>
            <li>
               <p>The encryption option for this repository association. It is either owned by Amazon Web Services 
            Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed (<code>CUSTOMER_MANAGED_CMK</code>).</p>
            </li>
            <li>
               <p>The ID of the Amazon Web Services KMS key that 
            is associated with this respository association.</p>
            </li>
         </ul>")
  @as("KMSKeyDetails")
  kmskeyDetails: option<kmskeyDetails>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the repository association was created.</p>"
  )
  @as("CreatedTimeStamp")
  createdTimeStamp: option<timeStamp>,
  @ocaml.doc(
    "<p>The time, in milliseconds since the epoch, when the repository association was last updated.</p>"
  )
  @as("LastUpdatedTimeStamp")
  lastUpdatedTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>A description of why the repository association is in the current state.</p>")
  @as("StateReason")
  stateReason: option<stateReason>,
  @ocaml.doc("<p>The state of the repository association.</p>
         <p>The valid repository association states are:</p>
         <ul>
            <li>            
               <p>
                  <b>Associated</b>: The repository 
               association is complete.
            </p>            
            </li>
            <li>
               <p>
                  <b>Associating</b>: CodeGuru Reviewer is:               
            </p>
               <ul>
                  <li>
                     <p>
                     Setting up pull request notifications. This is required 
                     for pull requests to trigger a CodeGuru Reviewer review.
                  </p>
                     <note>
                        <p>
                        If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, 
                        CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, 
                        reviews of code in your repository cannot be triggered.
                     </p>
                     </note>
                  </li>
                  <li>
                     <p>
                     Setting up source code access. This is required for CodeGuru Reviewer to securely 
                     clone code in your repository.
                  </p>
                  </li>
               </ul>            
            </li>
            <li>
               <p>
                  <b>Failed</b>: The repository failed to associate or disassociate.
            </p>            
            </li>
            <li>
               <p>
                  <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and 
               source code access.
            </p>
            </li>
            <li>
               <p>
                  <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association 
               with this repository if you want to review source code in it later. You can control access to code reviews created in an 
               associated repository with tags after it has been disassociated. For more information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html\">Using tags to control access to 
               associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.
            </p>
            </li>
         </ul>")
  @as("State")
  state: option<repositoryAssociationState>,
  @ocaml.doc("<p>The provider type of the repository association.</p>") @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
      account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
      For an S3 repository, it can be the username or Amazon Web Services account ID.</p>")
  @as("Owner")
  owner: option<owner>,
  @ocaml.doc("<p>The name of the repository.</p>") @as("Name") name: option<name>,
  @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of an Amazon Web Services CodeStar Connections connection. Its format is 
         <code>arn:aws:codestar-connections:region-id:aws-account_id:connection/connection-id</code>. For more information, see 
         <a href=\"https://docs.aws.amazon.com/codestar-connections/latest/APIReference/API_Connection.html\">
               <code>Connection</code>
            </a> in 
         the <i>Amazon Web Services CodeStar Connections API Reference</i>.
      </p>")
  @as("ConnectionArn")
  connectionArn: option<connectionArn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) identifying the repository association.</p>")
  @as("AssociationArn")
  associationArn: option<arn>,
  @ocaml.doc("<p>The ID of the repository association.</p>") @as("AssociationId")
  associationId: option<associationId>,
}
@ocaml.doc("<p>
         Information about recommendations.
      </p>")
type recommendationSummary = {
  @ocaml.doc("<p>The severity of the issue in the code that generated this recommendation.</p>")
  @as("Severity")
  severity: option<severity>,
  @ocaml.doc("<p>Metadata about a rule. Rule metadata includes an ID, a name, a list of tags, and a 
         short and long description. CodeGuru Reviewer uses rules to analyze code. A rule's recommendation is 
         included in analysis results if code is detected that violates the rule.</p>")
  @as("RuleMetadata")
  ruleMetadata: option<ruleMetadata>,
  @ocaml.doc("<p>The type of a recommendation.</p>") @as("RecommendationCategory")
  recommendationCategory: option<recommendationCategory>,
  @ocaml.doc("<p>
         A description of the recommendation generated by CodeGuru Reviewer for the lines of code between the start line and the end line.
      </p>")
  @as("Description")
  description: option<text>,
  @ocaml.doc("<p>
         Last line where the recommendation is applicable in the source commit or source branch. For a single line comment the start line and end line values are the same.
      </p>")
  @as("EndLine")
  endLine: option<lineNumber>,
  @ocaml.doc("<p>
         Start line from where the recommendation is applicable in the source commit or source branch.
      </p>")
  @as("StartLine")
  startLine: option<lineNumber>,
  @ocaml.doc("<p>
         The recommendation ID that can be used to track the provided recommendations. Later on it can be used to collect the feedback.
      </p>")
  @as("RecommendationId")
  recommendationId: option<recommendationId>,
  @ocaml.doc("<p>Name of the file on which a recommendation is provided.</p>") @as("FilePath")
  filePath: option<filePath>,
}
type recommendationFeedbackSummaries = array<recommendationFeedbackSummary>
@ocaml.doc("<p>
         Specifies the source code that is analyzed in a code review. 
      </p>")
type sourceCodeType = {
  @ocaml.doc("<p>Metadata that is associated with a code review. This applies to any type of code review supported by CodeGuru Reviewer. The 
      <code>RequestMetadaa</code> field captures any event metadata. For example, it might capture metadata associated with 
         an event trigger, such as a push or a pull request. </p>")
  @as("RequestMetadata")
  requestMetadata: option<requestMetadata>,
  @ocaml.doc("<p>
			Information about an associated repository in an S3 bucket that includes its name and an <code>S3RepositoryDetails</code> object. 
			The <code>S3RepositoryDetails</code> object includes the name of an S3 bucket, an S3 key for a source code .zip file, and 
			an S3 key for a build artifacts .zip file. <code>S3BucketRepository</code> is required in <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\">
               <code>SourceCodeType</code>
            </a> for 
         <code>S3BucketRepository</code> based code reviews.
		</p>")
  @as("S3BucketRepository")
  s3BucketRepository: option<s3BucketRepository>,
  @ocaml.doc("<p>
         A type of <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\">
               <code>SourceCodeType</code>
            </a> that 
         specifies a source branch name and a destination branch name in an associated repository.
      </p>")
  @as("BranchDiff")
  branchDiff: option<branchDiffSourceCodeType>,
  @as("RepositoryHead") repositoryHead: option<repositoryHeadSourceCodeType>,
  @ocaml.doc("<p>
         A <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\">
               <code>SourceCodeType</code>
            </a> that 
         specifies a commit diff created by a pull request on an associated repository.
      </p>")
  @as("CommitDiff")
  commitDiff: option<commitDiffSourceCodeType>,
}
type recommendationSummaries = array<recommendationSummary>
@ocaml.doc("<p> A code review type that analyzes all code under a specified branch in an associated
			repository. The associated repository is specified using its ARN when you call <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview\">
               <code>CreateCodeReview</code>
            </a>. </p>")
type repositoryAnalysis = {
  @as("SourceCodeType") sourceCodeType: option<sourceCodeType>,
  @ocaml.doc("<p>
         A <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_SourceCodeType\">
               <code>SourceCodeType</code>
            </a> that 
         specifies the tip of a branch in an associated repository. 
      </p>")
  @as("RepositoryHead")
  repositoryHead: option<repositoryHeadSourceCodeType>,
}
@ocaml.doc("<p>
         Information about the summary of the code review.
      </p>")
type codeReviewSummary = {
  @as("SourceCodeType") sourceCodeType: option<sourceCodeType>,
  @ocaml.doc("<p>
         The statistics from the code review.
      </p>")
  @as("MetricsSummary")
  metricsSummary: option<metricsSummary>,
  @ocaml.doc("<p>
         The pull request ID for the code review.
      </p>")
  @as("PullRequestId")
  pullRequestId: option<pullRequestId>,
  @ocaml.doc("<p>
         The type of the code review.
      </p>")
  @as("Type")
  type_: option<type_>,
  @ocaml.doc("<p>
         The time, in milliseconds since the epoch, when the code review was last updated.
      </p>")
  @as("LastUpdatedTimeStamp")
  lastUpdatedTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>
         The time, in milliseconds since the epoch, when the code review was created.
      </p>")
  @as("CreatedTimeStamp")
  createdTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>
         The state of the code review.
      </p>
         <p>The valid code review states are:</p>
         <ul>
            <li>            
               <p>
                  <code>Completed</code>: The code review is complete.
            </p>            
            </li>
            <li>
               <p>
                  <code>Pending</code>: The code review started and has not completed or failed.
            </p>
            </li>
            <li>
               <p>
                  <code>Failed</code>: The code review failed.
            </p>            
            </li>
            <li>
               <p>
                  <code>Deleting</code>: The code review is being deleted.
            </p>
            </li>
         </ul>")
  @as("State")
  state: option<jobState>,
  @ocaml.doc("<p>
         The provider type of the repository association.
      </p>")
  @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
      account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
      For an S3 repository, it can be the username or Amazon Web Services account ID.</p>")
  @as("Owner")
  owner: option<owner>,
  @ocaml.doc("<p>
         The name of the repository.
      </p>")
  @as("RepositoryName")
  repositoryName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
  @as("CodeReviewArn")
  codeReviewArn: option<arn>,
  @ocaml.doc("<p>
         The name of the code review.
      </p>")
  @as("Name")
  name: option<name>,
}
@ocaml.doc("<p>
         Information about a code review. A code review belongs to the associated repository that contains the reviewed code. 
      </p>")
type codeReview = {
  @ocaml.doc("<p>They types of analysis performed during a repository analysis or a pull request review. You can specify either 
         <code>Security</code>, <code>CodeQuality</code>, or both.</p>")
  @as("AnalysisTypes")
  analysisTypes: option<analysisTypes>,
  @ocaml.doc("<p>
         The statistics from the code review.
      </p>")
  @as("Metrics")
  metrics: option<metrics>,
  @ocaml.doc("<p>
			The Amazon Resource Name (ARN) of the  
			<a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> that contains 
			the reviewed source code. You can retrieve associated repository ARNs by calling 
			<a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
		</p>")
  @as("AssociationArn")
  associationArn: option<associationArn>,
  @ocaml.doc("<p>
         The type of the source code for the code review.
      </p>")
  @as("SourceCodeType")
  sourceCodeType: option<sourceCodeType>,
  @ocaml.doc("<p>
         The pull request ID for the code review.
      </p>")
  @as("PullRequestId")
  pullRequestId: option<pullRequestId>,
  @ocaml.doc("<p>
         The type of code review.
      </p>")
  @as("Type")
  type_: option<type_>,
  @ocaml.doc("<p>
         The time, in milliseconds since the epoch, when the code review was last updated.
      </p>")
  @as("LastUpdatedTimeStamp")
  lastUpdatedTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>
         The time, in milliseconds since the epoch, when the code review was created.
      </p>")
  @as("CreatedTimeStamp")
  createdTimeStamp: option<timeStamp>,
  @ocaml.doc("<p>
         The reason for the state of the code review.
      </p>")
  @as("StateReason")
  stateReason: option<stateReason>,
  @ocaml.doc("<p>The valid code review states are:</p>
         <ul>
            <li>            
               <p>
                  <code>Completed</code>: The code review is complete.
            </p>            
            </li>
            <li>
               <p>
                  <code>Pending</code>: The code review started and has not completed or failed.
            </p>
            </li>
            <li>
               <p>
                  <code>Failed</code>: The code review failed.
            </p>            
            </li>
            <li>
               <p>
                  <code>Deleting</code>: The code review is being deleted.
            </p>
            </li>
         </ul>")
  @as("State")
  state: option<jobState>,
  @ocaml.doc("<p>
         The type of repository that contains the reviewed code (for example, GitHub or Bitbucket).
      </p>")
  @as("ProviderType")
  providerType: option<providerType>,
  @ocaml.doc("<p>The owner of the repository. For an Amazon Web Services CodeCommit repository, this is the Amazon Web Services account ID of the 
      account that owns the repository. For a GitHub, GitHub Enterprise Server, or Bitbucket repository, this is the username for the account that owns the repository.
      For an S3 repository, it can be the username or Amazon Web Services account ID.</p>")
  @as("Owner")
  owner: option<owner>,
  @ocaml.doc("<p>
         The name of the repository.
      </p>")
  @as("RepositoryName")
  repositoryName: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
  @as("CodeReviewArn")
  codeReviewArn: option<arn>,
  @ocaml.doc("<p>
         The name of the code review.
      </p>")
  @as("Name")
  name: option<name>,
}
@ocaml.doc("<p>
         The type of a code review. There are two code review types:         
      </p>
         <ul>
            <li>
               <p>
                  <code>PullRequest</code> - A code review that is automatically triggered by a pull request on an associated repository.
            </p>
            </li>
            <li>
               <p>
					             <code>RepositoryAnalysis</code> - A code review that analyzes all code under a specified
					branch in an associated repository. The associated repository is specified using its ARN
					in <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview\">
                     <code>CreateCodeReview</code>
                  </a>. </p>
            </li>
         </ul>")
type codeReviewType = {
  @ocaml.doc("<p>They types of analysis performed during a repository analysis or a pull request review. You can specify either 
         <code>Security</code>, <code>CodeQuality</code>, or both.</p>")
  @as("AnalysisTypes")
  analysisTypes: option<analysisTypes>,
  @ocaml.doc("<p> A code review that analyzes all code under a specified branch in an associated
			repository. The associated repository is specified using its ARN in <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CreateCodeReview\">
               <code>CreateCodeReview</code>
            </a>. </p>")
  @as("RepositoryAnalysis")
  repositoryAnalysis: repositoryAnalysis,
}
type codeReviewSummaries = array<codeReviewSummary>
@ocaml.doc("<p>This section provides documentation for the Amazon CodeGuru Reviewer API operations. CodeGuru Reviewer is a service
         that uses program analysis and machine learning to detect potential defects that are difficult for developers to find and recommends
         fixes in your Java and Python code.</p>
         
         <p>By proactively detecting and providing recommendations for addressing code defects and implementing best practices, CodeGuru Reviewer
            improves the overall quality and maintainability of your code base during the code review stage. For more information about CodeGuru Reviewer, see the 
            <i>
               <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/welcome.html\">Amazon CodeGuru Reviewer User Guide</a>.</i>
         </p>
      
         <p>
         To improve the security of your CodeGuru Reviewer API calls, you can establish a private connection between your VPC and CodeGuru Reviewer by 
         creating an <i>interface VPC endpoint</i>. For more information, see 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/vpc-interface-endpoints.html\">CodeGuru Reviewer and interface 
            VPC endpoints (Amazon Web Services PrivateLink)</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.
      </p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A list of the keys for each tag you want to remove from an associated repository.</p>"
    )
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the  
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> object. 
         You can retrieve this ARN by calling 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
      </p>")
    resourceArn: associationArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts: 
		</p>
		       <ul>
            <li>
				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
					keys are case sensitive.</p>
			         </li>
            <li>
				           <p>An optional field known as a <i>tag value</i> (for example,
					<code>111122223333</code>, <code>Production</code>, or a team name).
					Omitting the tag value is the same as using an empty string. Like tag keys, tag
					values are case sensitive.</p>
			         </li>
         </ul>")
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the  
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> object. 
         You can retrieve this ARN by calling 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
      </p>")
    resourceArn: associationArn,
  }
  type response = {.}
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module PutRecommendationFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>
         List for storing reactions. Reactions are utf-8 text code for emojis. If you send an empty list it clears all your feedback.
      </p>")
    @as("Reactions")
    reactions: reactions,
    @ocaml.doc("<p>
         The recommendation ID that can be used to track the provided recommendations and then to collect the feedback.
      </p>")
    @as("RecommendationId")
    recommendationId: recommendationId,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
    @as("CodeReviewArn")
    codeReviewArn: arn,
  }
  type response = {.}
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "PutRecommendationFeedbackCommand"
  let make = (~reactions, ~recommendationId, ~codeReviewArn, ()) =>
    new({reactions, recommendationId, codeReviewArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the  
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> object. 
         You can retrieve this ARN by calling 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
      </p>")
    resourceArn: associationArn,
  }
  type response = {
    @ocaml.doc("<p>
			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts: 
		</p>
		       <ul>
            <li>
				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
					keys are case sensitive.</p>
			         </li>
            <li>
				           <p>An optional field known as a <i>tag value</i> (for example,
					<code>111122223333</code>, <code>Production</code>, or a team name).
					Omitting the tag value is the same as using an empty string. Like tag keys, tag
					values are case sensitive.</p>
			         </li>
         </ul>")
    @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRepositoryAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The <code>nextToken</code> value returned from a previous paginated 
         <code>ListRepositoryAssociations</code> request where <code>maxResults</code> was used and the results 
         exceeded the value of that parameter. Pagination continues from the end of the previous results 
         that returned the <code>nextToken</code> value. 
      </p>
         <note>
            <p>Treat this token as an opaque identifier that is only used to retrieve 
         the next items in a list and not for other programmatic purposes.</p>
         </note>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of repository association results returned by <code>ListRepositoryAssociations</code> 
         in paginated output. When this parameter is used, <code>ListRepositoryAssociations</code> only returns 
         <code>maxResults</code> results in a single page with a <code>nextToken</code> response 
         element. The remaining results of the initial request 
         can be seen by sending another <code>ListRepositoryAssociations</code> request with the returned 
         <code>nextToken</code> value. 
         This value can be between 1 and 100. If this parameter is not used, <code>ListRepositoryAssociations</code>
         returns up to 100 results and a <code>nextToken</code> value if applicable. </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>List of owners to use as a filter. 
        For Amazon Web Services CodeCommit, it is the name of the CodeCommit account that was
        used to associate the repository. For other repository source providers, such as Bitbucket and GitHub Enterprise Server, this is name of the account 
        that was used to associate the repository. </p>")
    @as("Owners")
    owners: option<owners>,
    @ocaml.doc("<p>List of repository names to use as a filter.</p>") @as("Names")
    names: option<names>,
    @ocaml.doc("<p>List of repository association states to use as a filter.</p>
         <p>The valid repository association states are:</p>
         <ul>
            <li>            
               <p>
                  <b>Associated</b>: The repository 
               association is complete.
            </p>            
            </li>
            <li>
               <p>
                  <b>Associating</b>: CodeGuru Reviewer is:               
            </p>
               <ul>
                  <li>
                     <p>
                     Setting up pull request notifications. This is required 
                     for pull requests to trigger a CodeGuru Reviewer review.
                  </p>
                     <note>
                        <p>
                        If your repository <code>ProviderType</code> is <code>GitHub</code>, <code>GitHub Enterprise Server</code>, or <code>Bitbucket</code>, 
                        CodeGuru Reviewer creates webhooks in your repository to trigger CodeGuru Reviewer reviews. If you delete these webhooks, 
                        reviews of code in your repository cannot be triggered.
                     </p>
                     </note>
                  </li>
                  <li>
                     <p>
                     Setting up source code access. This is required for CodeGuru Reviewer to securely 
                     clone code in your repository.
                  </p>
                  </li>
               </ul>            
            </li>
            <li>
               <p>
                  <b>Failed</b>: The repository failed to associate or disassociate.
            </p>            
            </li>
            <li>
               <p>
                  <b>Disassociating</b>: CodeGuru Reviewer is removing the repository's pull request notifications and 
               source code access.
            </p>
            </li>
            <li>
               <p>
                  <b>Disassociated</b>: CodeGuru Reviewer successfully disassociated the repository. You can create a new association 
               with this repository if you want to review source code in it later. You can control access to code reviews created in an 
               associated repository with tags after it has been disassociated. For more information, see <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-ug/auth-and-access-control-using-tags.html\">Using tags to control access to 
               associated repositories</a> in the <i>Amazon CodeGuru Reviewer User Guide</i>.
            </p>
            </li>
         </ul>")
    @as("States")
    states: option<repositoryAssociationStates>,
    @ocaml.doc("<p>List of provider types to use as a filter.</p>") @as("ProviderTypes")
    providerTypes: option<providerTypes>,
  }
  type response = {
    @ocaml.doc("<p>The <code>nextToken</code> value to include in a future <code>ListRecommendations</code> request. 
         When the results of a <code>ListRecommendations</code> request exceed <code>maxResults</code>, this 
         value can be used to retrieve the next page of results. This value is <code>null</code> when there are no more 
         results to return. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of repository associations that meet the criteria of the request.</p>")
    @as("RepositoryAssociationSummaries")
    repositoryAssociationSummaries: option<repositoryAssociationSummaries>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "ListRepositoryAssociationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~owners=?, ~names=?, ~states=?, ~providerTypes=?, ()) =>
    new({nextToken, maxResults, owners, names, states, providerTypes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRecommendationFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>
         Optional parameter to describe the feedback for a given user. If this is not supplied, it defaults to the user making the request.
      </p>
         <p>
         The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\">
            Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.
      </p>")
    @as("UserId")
    userId: option<userId>,
    @ocaml.doc("<p>
         The recommendation ID that can be used to track the provided recommendations and then to collect the feedback.
      </p>")
    @as("RecommendationId")
    recommendationId: recommendationId,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
    @as("CodeReviewArn")
    codeReviewArn: arn,
  }
  type response = {
    @ocaml.doc("<p>
         The recommendation feedback given by the user.
      </p>")
    @as("RecommendationFeedback")
    recommendationFeedback: option<recommendationFeedback>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "DescribeRecommendationFeedbackCommand"
  let make = (~recommendationId, ~codeReviewArn, ~userId=?, ()) =>
    new({userId, recommendationId, codeReviewArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRecommendationFeedback = {
  type t
  type request = {
    @ocaml.doc("<p>
         Used to query the recommendation feedback for a given recommendation. 
      </p>")
    @as("RecommendationIds")
    recommendationIds: option<recommendationIds>,
    @ocaml.doc("<p>
         An Amazon Web Services user's account ID or Amazon Resource Name (ARN). Use this ID to query the recommendation feedback for a code review from that user.
      </p>
         <p>
         The <code>UserId</code> is an IAM principal that can be specified as an Amazon Web Services account ID or an Amazon Resource Name (ARN). For 
         more information, see <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying\">
            Specifying a Principal</a> in the <i>Amazon Web Services Identity and Access Management User Guide</i>.
      </p>")
    @as("UserIds")
    userIds: option<userIds>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
    @as("CodeReviewArn")
    codeReviewArn: arn,
    @ocaml.doc("<p>
         The maximum number of results that are returned per call. The default is 100.
      </p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
         If <code>nextToken</code> is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
         Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>
         If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
         Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p> Recommendation feedback summaries corresponding to the code review ARN. </p>")
    @as("RecommendationFeedbackSummaries")
    recommendationFeedbackSummaries: option<recommendationFeedbackSummaries>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "ListRecommendationFeedbackCommand"
  let make = (~codeReviewArn, ~recommendationIds=?, ~userIds=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({recommendationIds, userIds, codeReviewArn, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateRepository = {
  type t
  type request = {
    @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the  
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> object. 
         You can retrieve this ARN by calling 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
      </p>")
    @as("AssociationArn")
    associationArn: associationArn,
  }
  type response = {
    @ocaml.doc("<p>
			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts: 
		</p>
		       <ul>
            <li>
				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
					keys are case sensitive.</p>
			         </li>
            <li>
				           <p>An optional field known as a <i>tag value</i> (for example,
					<code>111122223333</code>, <code>Production</code>, or a team name).
					Omitting the tag value is the same as using an empty string. Like tag keys, tag
					values are case sensitive.</p>
			         </li>
         </ul>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Information about the disassociated repository.</p>")
    @as("RepositoryAssociation")
    repositoryAssociation: option<repositoryAssociation>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "DisassociateRepositoryCommand"
  let make = (~associationArn, ()) => new({associationArn: associationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeRepositoryAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the  
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> object. 
         You can retrieve this ARN by calling 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
      </p>")
    @as("AssociationArn")
    associationArn: associationArn,
  }
  type response = {
    @ocaml.doc("<p>
			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts: 
		</p>
		       <ul>
            <li>
				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
					keys are case sensitive.</p>
			         </li>
            <li>
				           <p>An optional field known as a <i>tag value</i> (for example,
					<code>111122223333</code>, <code>Production</code>, or a team name).
					Omitting the tag value is the same as using an empty string. Like tag keys, tag
					values are case sensitive.</p>
			         </li>
         </ul>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Information about the repository association.</p>") @as("RepositoryAssociation")
    repositoryAssociation: option<repositoryAssociation>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "DescribeRepositoryAssociationCommand"
  let make = (~associationArn, ()) => new({associationArn: associationArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateRepository = {
  type t
  type request = {
    @ocaml.doc("<p>A <code>KMSKeyDetails</code> object that contains:</p>
         <ul>
            <li>
               <p>The encryption option for this repository association. It is either owned by Amazon Web Services 
            Key Management Service (KMS) (<code>AWS_OWNED_CMK</code>) or customer managed (<code>CUSTOMER_MANAGED_CMK</code>).</p>
            </li>
            <li>
               <p>The ID of the Amazon Web Services KMS key that 
            is associated with this respository association.</p>
            </li>
         </ul>")
    @as("KMSKeyDetails")
    kmskeyDetails: option<kmskeyDetails>,
    @ocaml.doc("<p>
			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts: 
		</p>
		       <ul>
            <li>
				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
					keys are case sensitive.</p>
			         </li>
            <li>
				           <p>An optional field known as a <i>tag value</i> (for example,
					<code>111122223333</code>, <code>Production</code>, or a team name).
					Omitting the tag value is the same as using an empty string. Like tag keys, tag
					values are case sensitive.</p>
			         </li>
         </ul>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate repository
        associations if there are failures and retries. </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>The repository to associate.</p>") @as("Repository") repository: repository,
  }
  type response = {
    @ocaml.doc("<p>
			An array of key-value pairs used to tag an associated repository. A tag is a custom attribute label with two parts: 
		</p>
		       <ul>
            <li>
				           <p>A <i>tag key</i> (for example, <code>CostCenter</code>,
					<code>Environment</code>, <code>Project</code>, or <code>Secret</code>). Tag
					keys are case sensitive.</p>
			         </li>
            <li>
				           <p>An optional field known as a <i>tag value</i> (for example,
					<code>111122223333</code>, <code>Production</code>, or a team name).
					Omitting the tag value is the same as using an empty string. Like tag keys, tag
					values are case sensitive.</p>
			         </li>
         </ul>")
    @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>Information about the repository association.</p>") @as("RepositoryAssociation")
    repositoryAssociation: option<repositoryAssociation>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "AssociateRepositoryCommand"
  let make = (~repository, ~kmskeyDetails=?, ~tags=?, ~clientRequestToken=?, ()) =>
    new({kmskeyDetails, tags, clientRequestToken, repository})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListRecommendations = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
    @as("CodeReviewArn")
    codeReviewArn: arn,
    @ocaml.doc("<p>
         The maximum number of results that are returned per call. The default is 100.
      </p>")
    @as("MaxResults")
    maxResults: option<listRecommendationsMaxResults>,
    @ocaml.doc("<p>
         Pagination token.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>
         Pagination token.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
         List of recommendations for the requested code review.
      </p>")
    @as("RecommendationSummaries")
    recommendationSummaries: option<recommendationSummaries>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "ListRecommendationsCommand"
  let make = (~codeReviewArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({codeReviewArn, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCodeReview = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReview.html\">
               <code>CodeReview</code>
            </a> object.
      </p>")
    @as("CodeReviewArn")
    codeReviewArn: arn,
  }
  type response = {
    @ocaml.doc("<p>
         Information about the code review.
      </p>")
    @as("CodeReview")
    codeReview: option<codeReview>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "DescribeCodeReviewCommand"
  let make = (~codeReviewArn, ()) => new({codeReviewArn: codeReviewArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCodeReviews = {
  type t
  type request = {
    @ocaml.doc("<p>
         If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page.
         Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
         The maximum number of results that are returned per call. The default is 100.
      </p>")
    @as("MaxResults")
    maxResults: option<listCodeReviewsMaxResults>,
    @ocaml.doc("<p>
         The type of code reviews to list in the response.
      </p>")
    @as("Type")
    type_: type_,
    @ocaml.doc("<p>
         List of repository names for filtering that needs to be applied before displaying the result.
      </p>")
    @as("RepositoryNames")
    repositoryNames: option<repositoryNames>,
    @ocaml.doc("<p>
         List of states for filtering that needs to be applied before displaying the result. For example, <code>states=[Pending]</code> lists code reviews in the Pending state.
      </p>
         <p>The valid code review states are:</p>
         <ul>
            <li>            
               <p>
                  <code>Completed</code>: The code review is complete.
            </p>            
            </li>
            <li>
               <p>
                  <code>Pending</code>: The code review started and has not completed or failed.
            </p>
            </li>
            <li>
               <p>
                  <code>Failed</code>: The code review failed.
            </p>            
            </li>
            <li>
               <p>
                  <code>Deleting</code>: The code review is being deleted.
            </p>
            </li>
         </ul>")
    @as("States")
    states: option<jobStates>,
    @ocaml.doc("<p>
         List of provider types for filtering that needs to be applied before displaying the result. For example, <code>providerTypes=[GitHub]</code>  lists code reviews from GitHub.
      </p>")
    @as("ProviderTypes")
    providerTypes: option<providerTypes>,
  }
  type response = {
    @ocaml.doc("<p>
         Pagination token.
      </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>
         A list of code reviews that meet the criteria of the request.
      </p>")
    @as("CodeReviewSummaries")
    codeReviewSummaries: option<codeReviewSummaries>,
  }
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "ListCodeReviewsCommand"
  let make = (
    ~type_,
    ~nextToken=?,
    ~maxResults=?,
    ~repositoryNames=?,
    ~states=?,
    ~providerTypes=?,
    (),
  ) => new({nextToken, maxResults, type_, repositoryNames, states, providerTypes})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCodeReview = {
  type t
  type request = {
    @ocaml.doc("<p>
         Amazon CodeGuru Reviewer uses this value to prevent the accidental creation of duplicate code 
         reviews if there are failures and retries.
      </p>")
    @as("ClientRequestToken")
    clientRequestToken: option<clientRequestToken>,
    @ocaml.doc("<p>
         The type of code review to create. This is specified using a 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_CodeReviewType.html\">
               <code>CodeReviewType</code>
            </a> 
         object. You can create a code review only of type <code>RepositoryAnalysis</code>. 
      </p>")
    @as("Type")
    type_: codeReviewType,
    @ocaml.doc("<p>
         The Amazon Resource Name (ARN) of the  
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html\">
               <code>RepositoryAssociation</code>
            </a> object. 
         You can retrieve this ARN by calling 
         <a href=\"https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html\">
               <code>ListRepositoryAssociations</code>
            </a>.
      </p>
         <p>
         A code review can only be created on an associated repository. This is the ARN of the 
         associated repository.
      </p>")
    @as("RepositoryAssociationArn")
    repositoryAssociationArn: associationArn,
    @ocaml.doc("<p>
         The name of the code review. The name of each code review in your Amazon Web Services account must be unique.
      </p>")
    @as("Name")
    name: codeReviewName,
  }
  type response = {@as("CodeReview") codeReview: option<codeReview>}
  @module("@aws-sdk/client-codeguru-reviewer") @new
  external new: request => t = "CreateCodeReviewCommand"
  let make = (~type_, ~repositoryAssociationArn, ~name, ~clientRequestToken=?, ()) =>
    new({clientRequestToken, type_, repositoryAssociationArn, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
