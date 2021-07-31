type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
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
type meteredLinesOfCodeCount = float;
type maxResults = int;
type listCodeReviewsMaxResults = int;
type lineNumber = int;
type kMSKeyId = string
type jobState = [@as("Deleting") #Deleting | @as("Failed") #Failed | @as("Pending") #Pending | @as("Completed") #Completed]
type findingsCount = float;
type filePath = string
type errorMessage = string
type encryptionOption = [@as("CUSTOMER_MANAGED_CMK") #CUSTOMER_MANAGED_CMK | @as("AWS_OWNED_CMK") #AWS_OWNED_CMK]
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
@as("Owner") owner: option<owner>,
@as("ConnectionArn") connectionArn: option<connectionArn>,
@as("Name") name: option<name>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type repositoryNames = array<name>
type repositoryHeadSourceCodeType = {
@as("BranchName") branchName: option<branchName>
}
type repositoryAssociationSummary = {
@as("State") state: repositoryAssociationState,
@as("ProviderType") providerType: providerType,
@as("Owner") owner: owner,
@as("Name") name: name,
@as("AssociationId") associationId: associationId,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: timeStamp,
@as("ConnectionArn") connectionArn: connectionArn,
@as("AssociationArn") associationArn: arn
}
type repositoryAssociationStates = array<repositoryAssociationState>
type recommendationSummary = {
@as("Description") description: text,
@as("EndLine") endLine: lineNumber,
@as("StartLine") startLine: lineNumber,
@as("RecommendationId") recommendationId: recommendationId,
@as("FilePath") filePath: filePath
}
type recommendationIds = array<recommendationId>
type reactions = array<reaction>
type providerTypes = array<providerType>
type owners = array<owner>
type names = array<name>
type metricsSummary = {
@as("FindingsCount") findingsCount: findingsCount,
@as("MeteredLinesOfCodeCount") meteredLinesOfCodeCount: meteredLinesOfCodeCount
}
type metrics = {
@as("FindingsCount") findingsCount: findingsCount,
@as("MeteredLinesOfCodeCount") meteredLinesOfCodeCount: meteredLinesOfCodeCount
}
type kMSKeyDetails = {
@as("EncryptionOption") encryptionOption: encryptionOption,
@as("KMSKeyId") kMSKeyId: kMSKeyId
}
type jobStates = array<jobState>
type commitDiffSourceCodeType = {
@as("DestinationCommit") destinationCommit: commitId,
@as("SourceCommit") sourceCommit: commitId
}
type codeCommitRepository = {
@as("Name") name: option<name>
}
type sourceCodeType = {
@as("RepositoryHead") repositoryHead: repositoryHeadSourceCodeType,
@as("CommitDiff") commitDiff: commitDiffSourceCodeType
}
type repositoryAssociationSummaries = array<repositoryAssociationSummary>
type repositoryAssociation = {
@as("KMSKeyDetails") kMSKeyDetails: kMSKeyDetails,
@as("CreatedTimeStamp") createdTimeStamp: timeStamp,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: timeStamp,
@as("StateReason") stateReason: stateReason,
@as("State") state: repositoryAssociationState,
@as("ProviderType") providerType: providerType,
@as("Owner") owner: owner,
@as("Name") name: name,
@as("ConnectionArn") connectionArn: connectionArn,
@as("AssociationArn") associationArn: arn,
@as("AssociationId") associationId: associationId
}
type repositoryAnalysis = {
@as("RepositoryHead") repositoryHead: option<repositoryHeadSourceCodeType>
}
type repository = {
@as("GitHubEnterpriseServer") gitHubEnterpriseServer: thirdPartySourceRepository,
@as("Bitbucket") bitbucket: thirdPartySourceRepository,
@as("CodeCommit") codeCommit: codeCommitRepository
}
type recommendationSummaries = array<recommendationSummary>
type recommendationFeedbackSummary = {
@as("UserId") userId: userId,
@as("Reactions") reactions: reactions,
@as("RecommendationId") recommendationId: recommendationId
}
type recommendationFeedback = {
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: timeStamp,
@as("CreatedTimeStamp") createdTimeStamp: timeStamp,
@as("UserId") userId: userId,
@as("Reactions") reactions: reactions,
@as("RecommendationId") recommendationId: recommendationId,
@as("CodeReviewArn") codeReviewArn: arn
}
type codeReviewSummary = {
@as("MetricsSummary") metricsSummary: metricsSummary,
@as("PullRequestId") pullRequestId: pullRequestId,
@as("Type") type_: type_,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: timeStamp,
@as("CreatedTimeStamp") createdTimeStamp: timeStamp,
@as("State") state: jobState,
@as("ProviderType") providerType: providerType,
@as("Owner") owner: owner,
@as("RepositoryName") repositoryName: name,
@as("CodeReviewArn") codeReviewArn: arn,
@as("Name") name: name
}
type recommendationFeedbackSummaries = array<recommendationFeedbackSummary>
type codeReviewType = {
@as("RepositoryAnalysis") repositoryAnalysis: option<repositoryAnalysis>
}
type codeReviewSummaries = array<codeReviewSummary>
type codeReview = {
@as("Metrics") metrics: metrics,
@as("AssociationArn") associationArn: associationArn,
@as("SourceCodeType") sourceCodeType: sourceCodeType,
@as("PullRequestId") pullRequestId: pullRequestId,
@as("Type") type_: type_,
@as("LastUpdatedTimeStamp") lastUpdatedTimeStamp: timeStamp,
@as("CreatedTimeStamp") createdTimeStamp: timeStamp,
@as("StateReason") stateReason: stateReason,
@as("State") state: jobState,
@as("ProviderType") providerType: providerType,
@as("Owner") owner: owner,
@as("RepositoryName") repositoryName: name,
@as("CodeReviewArn") codeReviewArn: arn,
@as("Name") name: name
}
type clientType;
@module("@aws-sdk/client-codeguru-reviewer") @new external createClient: unit => clientType = "CodeGuruReviewerClient";
module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<associationArn>
}
  type response = unit
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<associationArn>
}
  type response = unit
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutRecommendationFeedback = {
  type t;
  type request = {
@as("Reactions") reactions: option<reactions>,
@as("RecommendationId") recommendationId: option<recommendationId>,
@as("CodeReviewArn") codeReviewArn: option<arn>
}
  type response = unit
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "PutRecommendationFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<associationArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRepositoryAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("Owners") owners: owners,
@as("Names") names: names,
@as("States") states: repositoryAssociationStates,
@as("ProviderTypes") providerTypes: providerTypes
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RepositoryAssociationSummaries") repositoryAssociationSummaries: repositoryAssociationSummaries
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListRepositoryAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecommendations = {
  type t;
  type request = {
@as("CodeReviewArn") codeReviewArn: option<arn>,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RecommendationSummaries") recommendationSummaries: recommendationSummaries
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListRecommendationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateRepository = {
  type t;
  type request = {
@as("AssociationArn") associationArn: option<associationArn>
}
  type response = {
@as("Tags") tags: tagMap,
@as("RepositoryAssociation") repositoryAssociation: repositoryAssociation
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DisassociateRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRepositoryAssociation = {
  type t;
  type request = {
@as("AssociationArn") associationArn: option<associationArn>
}
  type response = {
@as("Tags") tags: tagMap,
@as("RepositoryAssociation") repositoryAssociation: repositoryAssociation
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DescribeRepositoryAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeRecommendationFeedback = {
  type t;
  type request = {
@as("UserId") userId: userId,
@as("RecommendationId") recommendationId: option<recommendationId>,
@as("CodeReviewArn") codeReviewArn: option<arn>
}
  type response = {
@as("RecommendationFeedback") recommendationFeedback: recommendationFeedback
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DescribeRecommendationFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateRepository = {
  type t;
  type request = {
@as("KMSKeyDetails") kMSKeyDetails: kMSKeyDetails,
@as("Tags") tags: tagMap,
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Repository") repository: option<repository>
}
  type response = {
@as("Tags") tags: tagMap,
@as("RepositoryAssociation") repositoryAssociation: repositoryAssociation
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "AssociateRepositoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRecommendationFeedback = {
  type t;
  type request = {
@as("RecommendationIds") recommendationIds: recommendationIds,
@as("UserIds") userIds: userIds,
@as("CodeReviewArn") codeReviewArn: option<arn>,
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("RecommendationFeedbackSummaries") recommendationFeedbackSummaries: recommendationFeedbackSummaries
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListRecommendationFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListCodeReviews = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: listCodeReviewsMaxResults,
@as("Type") type_: option<type_>,
@as("RepositoryNames") repositoryNames: repositoryNames,
@as("States") states: jobStates,
@as("ProviderTypes") providerTypes: providerTypes
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("CodeReviewSummaries") codeReviewSummaries: codeReviewSummaries
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "ListCodeReviewsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCodeReview = {
  type t;
  type request = {
@as("CodeReviewArn") codeReviewArn: option<arn>
}
  type response = {
@as("CodeReview") codeReview: codeReview
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "DescribeCodeReviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCodeReview = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("Type") type_: option<codeReviewType>,
@as("RepositoryAssociationArn") repositoryAssociationArn: option<associationArn>,
@as("Name") name: option<codeReviewName>
}
  type response = {
@as("CodeReview") codeReview: codeReview
}
  @module("@aws-sdk/client-codeguru-reviewer") @new external new_: (request) => t = "CreateCodeReviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
