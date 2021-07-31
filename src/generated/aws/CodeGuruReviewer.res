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
type userId = string
type type_ = [@as("RepositoryAnalysis") #RepositoryAnalysis | @as("PullRequest") #PullRequest]
type timeStamp = Js.Date.t;
type text = string
type tagValue = string
type tagKey = string
type stateReason = string
type repositoryAssociationState = [@as("Disassociated") #Disassociated | @as("Disassociating") #Disassociating | @as("Failed") #Failed | @as("Associating") #Associating | @as("Associated") #Associated]
type recommendationId = string
type reaction = [@as("ThumbsDown") #ThumbsDown | @as("ThumbsUp") #ThumbsUp]
type pullRequestId = string
type providerType = [@as("GitHubEnterpriseServer") #GitHubEnterpriseServer | @as("Bitbucket") #Bitbucket | @as("GitHub") #GitHub | @as("CodeCommit") #CodeCommit]
type owner = string
type nextToken = string
type name = string
type meteredLinesOfCodeCount = float
type maxResults = int
type listCodeReviewsMaxResults = int
type lineNumber = int
type kmskeyId = string
type jobState = [@as("Deleting") #Deleting | @as("Failed") #Failed | @as("Pending") #Pending | @as("Completed") #Completed]
type findingsCount = float
type filePath = string
type errorMessage = string
type encryptionOption = [@as("CUSTOMER_MANAGED_CMK") #CUSTOMERMANAGEDCMK | @as("AWS_OWNED_CMK") #AWSOWNEDCMK]
type connectionArn = string
type commitId = string
type codeReviewName = string
type clientRequestToken = string
type branchName = string
type associationId = string
type associationArn = string
type arn = string
type userIds = array<userId>
type thirdPartySourceRepository = {
@as("Owner") owner: owner,
@as("ConnectionArn") connectionArn: connectionArn,
@as("Name") name: name
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type repositoryNames = array<name>
type repositoryHeadSourceCodeType = {
@as("BranchName") branchName: branchName
}
type repositoryAssociationSummary = {
@as("State") state: option<repositoryAssociationState>,
@as("ProviderType") providerType: option<providerType>,
@as("Owner") owner: option<owner>,
@as("Name") name: option<name>,
@as("AssociationId") associationId: option<associationId>,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: option<timeStamp>,
@as("ConnectionArn") connectionArn: option<connectionArn>,
@as("AssociationArn") associationArn: option<arn>
}
type repositoryAssociationStates = array<repositoryAssociationState>
type recommendationSummary = {
@as("Description") description: option<text>,
@as("EndLine") endLine: option<lineNumber>,
@as("StartLine") startLine: option<lineNumber>,
@as("RecommendationId") recommendationId: option<recommendationId>,
@as("FilePath") filePath: option<filePath>
}
type recommendationIds = array<recommendationId>
type reactions = array<reaction>
type providerTypes = array<providerType>
type owners = array<owner>
type names = array<name>
type metricsSummary = {
@as("FindingsCount") findingsCount: option<findingsCount>,
@as("MeteredLinesOfCodeCount") meteredLinesOfCodeCount: option<meteredLinesOfCodeCount>
}
type metrics = {
@as("FindingsCount") findingsCount: option<findingsCount>,
@as("MeteredLinesOfCodeCount") meteredLinesOfCodeCount: option<meteredLinesOfCodeCount>
}
type kmskeyDetails = {
@as("EncryptionOption") encryptionOption: option<encryptionOption>,
@as("KMSKeyId") kmskeyId: option<kmskeyId>
}
type jobStates = array<jobState>
type commitDiffSourceCodeType = {
@as("DestinationCommit") destinationCommit: option<commitId>,
@as("SourceCommit") sourceCommit: option<commitId>
}
type codeCommitRepository = {
@as("Name") name: name
}
type sourceCodeType = {
@as("RepositoryHead") repositoryHead: option<repositoryHeadSourceCodeType>,
@as("CommitDiff") commitDiff: option<commitDiffSourceCodeType>
}
type repositoryAssociationSummaries = array<repositoryAssociationSummary>
type repositoryAssociation = {
@as("KMSKeyDetails") kmskeyDetails: option<kmskeyDetails>,
@as("CreatedTimeStamp") createdTimeStamp: option<timeStamp>,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: option<timeStamp>,
@as("StateReason") stateReason: option<stateReason>,
@as("State") state: option<repositoryAssociationState>,
@as("ProviderType") providerType: option<providerType>,
@as("Owner") owner: option<owner>,
@as("Name") name: option<name>,
@as("ConnectionArn") connectionArn: option<connectionArn>,
@as("AssociationArn") associationArn: option<arn>,
@as("AssociationId") associationId: option<associationId>
}
type repositoryAnalysis = {
@as("RepositoryHead") repositoryHead: repositoryHeadSourceCodeType
}
type repository = {
@as("GitHubEnterpriseServer") gitHubEnterpriseServer: option<thirdPartySourceRepository>,
@as("Bitbucket") bitbucket: option<thirdPartySourceRepository>,
@as("CodeCommit") codeCommit: option<codeCommitRepository>
}
type recommendationSummaries = array<recommendationSummary>
type recommendationFeedbackSummary = {
@as("UserId") userId: option<userId>,
@as("Reactions") reactions: option<reactions>,
@as("RecommendationId") recommendationId: option<recommendationId>
}
type recommendationFeedback = {
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: option<timeStamp>,
@as("CreatedTimeStamp") createdTimeStamp: option<timeStamp>,
@as("UserId") userId: option<userId>,
@as("Reactions") reactions: option<reactions>,
@as("RecommendationId") recommendationId: option<recommendationId>,
@as("CodeReviewArn") codeReviewArn: option<arn>
}
type codeReviewSummary = {
@as("MetricsSummary") metricsSummary: option<metricsSummary>,
@as("PullRequestId") pullRequestId: option<pullRequestId>,
@as("Type") type_: option<type_>,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: option<timeStamp>,
@as("CreatedTimeStamp") createdTimeStamp: option<timeStamp>,
@as("State") state: option<jobState>,
@as("ProviderType") providerType: option<providerType>,
@as("Owner") owner: option<owner>,
@as("RepositoryName") repositoryName: option<name>,
@as("CodeReviewArn") codeReviewArn: option<arn>,
@as("Name") name: option<name>
}
type recommendationFeedbackSummaries = array<recommendationFeedbackSummary>
type codeReviewType = {
@as("RepositoryAnalysis") repositoryAnalysis: repositoryAnalysis
}
type codeReviewSummaries = array<codeReviewSummary>
type codeReview = {
@as("Metrics") metrics: option<metrics>,
@as("AssociationArn") associationArn: option<associationArn>,
@as("SourceCodeType") sourceCodeType: option<sourceCodeType>,
@as("PullRequestId") pullRequestId: option<pullRequestId>,
@as("Type") type_: option<type_>,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: option<timeStamp>,
@as("CreatedTimeStamp") createdTimeStamp: option<timeStamp>,
@as("StateReason") stateReason: option<stateReason>,
@as("State") state: option<jobState>,
@as("ProviderType") providerType: option<providerType>,
@as("Owner") owner: option<owner>,
@as("RepositoryName") repositoryName: option<name>,
@as("CodeReviewArn") codeReviewArn: option<arn>,
@as("Name") name: option<name>
}
type awsServiceClient;
@module("@aws-sdk/client-codeguru-reviewer") @new external createClient: unit => awsServiceClient = "CodeGuruReviewerClient";
module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
resourceArn: associationArn
}
  type response = unit
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
resourceArn: associationArn
}
  type response = unit
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutRecommendationFeedback = {
  type t;
  type request = {
@as("Reactions") reactions: reactions,
@as("RecommendationId") recommendationId: recommendationId,
@as("CodeReviewArn") codeReviewArn: arn
}
  type response = unit
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "PutRecommendationFeedbackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: associationArn
}
  type response = {
@as("Tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRepositoryAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<maxResults>,
@as("Owners") owners: option<owners>,
@as("Names") names: option<names>,
@as("States") states: option<repositoryAssociationStates>,
@as("ProviderTypes") providerTypes: option<providerTypes>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("RepositoryAssociationSummaries") repositoryAssociationSummaries: option<repositoryAssociationSummaries>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListRepositoryAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRecommendations = {
  type t;
  type request = {
@as("CodeReviewArn") codeReviewArn: arn,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("RecommendationSummaries") recommendationSummaries: option<recommendationSummaries>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListRecommendationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateRepository = {
  type t;
  type request = {
@as("AssociationArn") associationArn: associationArn
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("RepositoryAssociation") repositoryAssociation: option<repositoryAssociation>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DisassociateRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRepositoryAssociation = {
  type t;
  type request = {
@as("AssociationArn") associationArn: associationArn
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("RepositoryAssociation") repositoryAssociation: option<repositoryAssociation>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DescribeRepositoryAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeRecommendationFeedback = {
  type t;
  type request = {
@as("UserId") userId: option<userId>,
@as("RecommendationId") recommendationId: recommendationId,
@as("CodeReviewArn") codeReviewArn: arn
}
  type response = {
@as("RecommendationFeedback") recommendationFeedback: option<recommendationFeedback>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DescribeRecommendationFeedbackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateRepository = {
  type t;
  type request = {
@as("KMSKeyDetails") kmskeyDetails: option<kmskeyDetails>,
@as("Tags") tags: option<tagMap>,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Repository") repository: repository
}
  type response = {
@as("Tags") tags: option<tagMap>,
@as("RepositoryAssociation") repositoryAssociation: option<repositoryAssociation>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "AssociateRepositoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRecommendationFeedback = {
  type t;
  type request = {
@as("RecommendationIds") recommendationIds: option<recommendationIds>,
@as("UserIds") userIds: option<userIds>,
@as("CodeReviewArn") codeReviewArn: arn,
@as("MaxResults") maxResults: option<maxResults>,
@as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("RecommendationFeedbackSummaries") recommendationFeedbackSummaries: option<recommendationFeedbackSummaries>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListRecommendationFeedbackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListCodeReviews = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
@as("MaxResults") maxResults: option<listCodeReviewsMaxResults>,
@as("Type") type_: type_,
@as("RepositoryNames") repositoryNames: option<repositoryNames>,
@as("States") states: option<jobStates>,
@as("ProviderTypes") providerTypes: option<providerTypes>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
@as("CodeReviewSummaries") codeReviewSummaries: option<codeReviewSummaries>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListCodeReviewsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCodeReview = {
  type t;
  type request = {
@as("CodeReviewArn") codeReviewArn: arn
}
  type response = {
@as("CodeReview") codeReview: option<codeReview>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DescribeCodeReviewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCodeReview = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Type") type_: codeReviewType,
@as("RepositoryAssociationArn") repositoryAssociationArn: associationArn,
@as("Name") name: codeReviewName
}
  type response = {
@as("CodeReview") codeReview: option<codeReview>
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "CreateCodeReviewCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
