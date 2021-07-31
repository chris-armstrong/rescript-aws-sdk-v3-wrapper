type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type workloadReviewOwner = string
type workloadNonAwsRegion = string
type workloadNamePrefix = string
type workloadName = string
type workloadIndustryType = string
type workloadIndustry = string
type workloadImprovementStatus = [@as("RISK_ACKNOWLEDGED") #RISK_ACKNOWLEDGED | @as("COMPLETE") #COMPLETE | @as("IN_PROGRESS") #IN_PROGRESS | @as("NOT_STARTED") #NOT_STARTED | @as("NOT_APPLICABLE") #NOT_APPLICABLE]
type workloadId = string
type workloadEnvironment = [@as("PREPRODUCTION") #PREPRODUCTION | @as("PRODUCTION") #PRODUCTION]
type workloadDescription = string
type workloadArn = string
type workloadArchitecturalDesign = string
type validationExceptionReason = [@as("OTHER") #OTHER | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED | @as("CANNOT_PARSE") #CANNOT_PARSE | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION]
type validationExceptionFieldName = string
type amazonawsTimestamp = Js.Date.t;
type tagValue = string
type tagKey = string
type sharedWithPrefix = string
type sharedWith = string
type shareStatus = [@as("EXPIRED") #EXPIRED | @as("REVOKED") #REVOKED | @as("PENDING") #PENDING | @as("REJECTED") #REJECTED | @as("ACCEPTED") #ACCEPTED]
type shareInvitationId = string
type shareInvitationAction = [@as("REJECT") #REJECT | @as("ACCEPT") #ACCEPT]
type shareId = string
type serviceCode = string
type risk = [@as("NOT_APPLICABLE") #NOT_APPLICABLE | @as("NONE") #NONE | @as("MEDIUM") #MEDIUM | @as("HIGH") #HIGH | @as("UNANSWERED") #UNANSWERED]
type quotaCode = string
type questionTitle = string
type questionId = string
type questionDescription = string
type pillarName = string
type pillarId = string
type permissionType = [@as("CONTRIBUTOR") #CONTRIBUTOR | @as("READONLY") #READONLY]
type notificationType = [@as("LENS_VERSION_DEPRECATED") #LENS_VERSION_DEPRECATED | @as("LENS_VERSION_UPGRADED") #LENS_VERSION_UPGRADED]
type notes = string
type nextToken = string
type milestoneNumber = int;
type milestoneName = string
type maxResults = int;
type listWorkloadsMaxResults = int;
type listWorkloadSharesMaxResults = int;
type listShareInvitationsMaxResults = int;
type listNotificationsMaxResults = int;
type listLensReviewImprovementsMaxResults = int;
type listAnswersMaxResults = int;
type lensVersion = string
type lensStatus = [@as("DEPRECATED") #DEPRECATED | @as("NOT_CURRENT") #NOT_CURRENT | @as("CURRENT") #CURRENT]
type lensName = string
type lensDescription = string
type lensAlias = string
type isReviewOwnerUpdateAcknowledged = bool;
type isApplicable = bool;
type improvementPlanUrl = string
type helpfulResourceUrl = string
type exceptionResourceType = string
type exceptionResourceId = string
type exceptionMessage = string
type differenceStatus = [@as("DELETED") #DELETED | @as("NEW") #NEW | @as("UPDATED") #UPDATED]
type count = int;
type clientRequestToken = string
type choiceTitle = string
type choiceId = string
type choiceDescription = string
type base64String = string
type awsRegion = string
type awsAccountId = string
type workloadShareSummary = {
@as("Status") status: shareStatus,
@as("PermissionType") permissionType: permissionType,
@as("SharedWith") sharedWith: sharedWith,
@as("ShareId") shareId: shareId
}
type workloadShare = {
@as("WorkloadId") workloadId: workloadId,
@as("WorkloadName") workloadName: workloadName,
@as("Status") status: shareStatus,
@as("PermissionType") permissionType: permissionType,
@as("SharedWith") sharedWith: sharedWith,
@as("SharedBy") sharedBy: awsAccountId,
@as("ShareId") shareId: shareId
}
type workloadPillarPriorities = array<pillarId>
type workloadNonAwsRegions = array<workloadNonAwsRegion>
type workloadLenses = array<lensAlias>
type workloadAwsRegions = array<awsRegion>
type workloadAccountIds = array<awsAccountId>
type validationExceptionField = {
@as("Message") message: option<exceptionMessage>,
@as("Name") name: option<validationExceptionFieldName>
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type shareInvitationSummary = {
@as("WorkloadId") workloadId: workloadId,
@as("WorkloadName") workloadName: workloadName,
@as("PermissionType") permissionType: permissionType,
@as("SharedWith") sharedWith: sharedWith,
@as("SharedBy") sharedBy: awsAccountId,
@as("ShareInvitationId") shareInvitationId: shareInvitationId
}
type shareInvitation = {
@as("WorkloadId") workloadId: workloadId,
@as("ShareInvitationId") shareInvitationId: shareInvitationId
}
type selectedChoices = array<choiceId>
type riskCounts = Js.Dict.t< count>
type questionDifference = {
@as("DifferenceStatus") differenceStatus: differenceStatus,
@as("QuestionTitle") questionTitle: questionTitle,
@as("QuestionId") questionId: questionId
}
type pillarNotes = Js.Dict.t< notes>
type lensUpgradeSummary = {
@as("LatestLensVersion") latestLensVersion: lensVersion,
@as("CurrentLensVersion") currentLensVersion: lensVersion,
@as("LensAlias") lensAlias: lensAlias,
@as("WorkloadName") workloadName: workloadName,
@as("WorkloadId") workloadId: workloadId
}
type lensSummary = {
@as("Description") description: lensDescription,
@as("LensName") lensName: lensName,
@as("LensVersion") lensVersion: lensVersion,
@as("LensAlias") lensAlias: lensAlias
}
type lensReviewReport = {
@as("Base64String") base64String: base64String,
@as("LensAlias") lensAlias: lensAlias
}
type lensAliases = array<lensAlias>
type improvementSummary = {
@as("ImprovementPlanUrl") improvementPlanUrl: improvementPlanUrl,
@as("Risk") risk: risk,
@as("QuestionTitle") questionTitle: questionTitle,
@as("PillarId") pillarId: pillarId,
@as("QuestionId") questionId: questionId
}
type choice = {
@as("Description") description: choiceDescription,
@as("Title") title: choiceTitle,
@as("ChoiceId") choiceId: choiceId
}
type workloadSummary = {
@as("ImprovementStatus") improvementStatus: workloadImprovementStatus,
@as("RiskCounts") riskCounts: riskCounts,
@as("Lenses") lenses: workloadLenses,
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Owner") owner: awsAccountId,
@as("WorkloadName") workloadName: workloadName,
@as("WorkloadArn") workloadArn: workloadArn,
@as("WorkloadId") workloadId: workloadId
}
type workloadShareSummaries = array<workloadShareSummary>
type workload = {
@as("Tags") tags: tagMap,
@as("ShareInvitationId") shareInvitationId: shareInvitationId,
@as("Owner") owner: awsAccountId,
@as("Lenses") lenses: workloadLenses,
@as("PillarPriorities") pillarPriorities: workloadPillarPriorities,
@as("RiskCounts") riskCounts: riskCounts,
@as("ImprovementStatus") improvementStatus: workloadImprovementStatus,
@as("Notes") notes: notes,
@as("Industry") industry: workloadIndustry,
@as("IndustryType") industryType: workloadIndustryType,
@as("IsReviewOwnerUpdateAcknowledged") isReviewOwnerUpdateAcknowledged: isReviewOwnerUpdateAcknowledged,
@as("ReviewRestrictionDate") reviewRestrictionDate: amazonawsTimestamp,
@as("ReviewOwner") reviewOwner: workloadReviewOwner,
@as("ArchitecturalDesign") architecturalDesign: workloadArchitecturalDesign,
@as("NonAwsRegions") nonAwsRegions: workloadNonAwsRegions,
@as("AwsRegions") awsRegions: workloadAwsRegions,
@as("AccountIds") accountIds: workloadAccountIds,
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("Environment") environment: workloadEnvironment,
@as("Description") description: workloadDescription,
@as("WorkloadName") workloadName: workloadName,
@as("WorkloadArn") workloadArn: workloadArn,
@as("WorkloadId") workloadId: workloadId
}
type validationExceptionFieldList = array<validationExceptionField>
type shareInvitationSummaries = array<shareInvitationSummary>
type questionDifferences = array<questionDifference>
type pillarReviewSummary = {
@as("RiskCounts") riskCounts: riskCounts,
@as("Notes") notes: notes,
@as("PillarName") pillarName: pillarName,
@as("PillarId") pillarId: pillarId
}
type notificationSummary = {
@as("LensUpgradeSummary") lensUpgradeSummary: lensUpgradeSummary,
@as("Type") type_: notificationType
}
type lensSummaries = array<lensSummary>
type lensReviewSummary = {
@as("RiskCounts") riskCounts: riskCounts,
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("LensStatus") lensStatus: lensStatus,
@as("LensName") lensName: lensName,
@as("LensVersion") lensVersion: lensVersion,
@as("LensAlias") lensAlias: lensAlias
}
type improvementSummaries = array<improvementSummary>
type choices = array<choice>
type workloadSummaries = array<workloadSummary>
type pillarReviewSummaries = array<pillarReviewSummary>
type pillarDifference = {
@as("QuestionDifferences") questionDifferences: questionDifferences,
@as("DifferenceStatus") differenceStatus: differenceStatus,
@as("PillarId") pillarId: pillarId
}
type notificationSummaries = array<notificationSummary>
type milestoneSummary = {
@as("WorkloadSummary") workloadSummary: workloadSummary,
@as("RecordedAt") recordedAt: amazonawsTimestamp,
@as("MilestoneName") milestoneName: milestoneName,
@as("MilestoneNumber") milestoneNumber: milestoneNumber
}
type milestone = {
@as("Workload") workload: workload,
@as("RecordedAt") recordedAt: amazonawsTimestamp,
@as("MilestoneName") milestoneName: milestoneName,
@as("MilestoneNumber") milestoneNumber: milestoneNumber
}
type lensReviewSummaries = array<lensReviewSummary>
type answerSummary = {
@as("Risk") risk: risk,
@as("IsApplicable") isApplicable: isApplicable,
@as("SelectedChoices") selectedChoices: selectedChoices,
@as("Choices") choices: choices,
@as("QuestionTitle") questionTitle: questionTitle,
@as("PillarId") pillarId: pillarId,
@as("QuestionId") questionId: questionId
}
type answer = {
@as("Notes") notes: notes,
@as("Risk") risk: risk,
@as("IsApplicable") isApplicable: isApplicable,
@as("SelectedChoices") selectedChoices: selectedChoices,
@as("Choices") choices: choices,
@as("HelpfulResourceUrl") helpfulResourceUrl: helpfulResourceUrl,
@as("ImprovementPlanUrl") improvementPlanUrl: improvementPlanUrl,
@as("QuestionDescription") questionDescription: questionDescription,
@as("QuestionTitle") questionTitle: questionTitle,
@as("PillarId") pillarId: pillarId,
@as("QuestionId") questionId: questionId
}
type pillarDifferences = array<pillarDifference>
type milestoneSummaries = array<milestoneSummary>
type lensReview = {
@as("NextToken") nextToken: nextToken,
@as("RiskCounts") riskCounts: riskCounts,
@as("Notes") notes: notes,
@as("UpdatedAt") updatedAt: amazonawsTimestamp,
@as("PillarReviewSummaries") pillarReviewSummaries: pillarReviewSummaries,
@as("LensStatus") lensStatus: lensStatus,
@as("LensName") lensName: lensName,
@as("LensVersion") lensVersion: lensVersion,
@as("LensAlias") lensAlias: lensAlias
}
type answerSummaries = array<answerSummary>
type versionDifferences = {
@as("PillarDifferences") pillarDifferences: pillarDifferences
}
type clientType;
@module("@aws-sdk/client-wellarchitected") @new external createClient: unit => clientType = "WellArchitectedClient";
module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("WorkloadArn") workloadArn: option<workloadArn>
}
  type response = unit
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("WorkloadArn") workloadArn: option<workloadArn>
}
  type response = unit
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("WorkloadArn") workloadArn: option<workloadArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpgradeLensReview = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: clientRequestToken,
@as("MilestoneName") milestoneName: option<milestoneName>,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "UpgradeLensReviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateWorkloadShare = {
  type t;
  type request = {
@as("PermissionType") permissionType: option<permissionType>,
@as("WorkloadId") workloadId: option<workloadId>,
@as("ShareId") shareId: option<shareId>
}
  type response = {
@as("WorkloadShare") workloadShare: workloadShare,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "UpdateWorkloadShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateWorkload = {
  type t;
  type request = {
@as("ImprovementStatus") improvementStatus: workloadImprovementStatus,
@as("Notes") notes: notes,
@as("Industry") industry: workloadIndustry,
@as("IndustryType") industryType: workloadIndustryType,
@as("IsReviewOwnerUpdateAcknowledged") isReviewOwnerUpdateAcknowledged: isReviewOwnerUpdateAcknowledged,
@as("ReviewOwner") reviewOwner: workloadReviewOwner,
@as("ArchitecturalDesign") architecturalDesign: workloadArchitecturalDesign,
@as("PillarPriorities") pillarPriorities: workloadPillarPriorities,
@as("NonAwsRegions") nonAwsRegions: workloadNonAwsRegions,
@as("AwsRegions") awsRegions: workloadAwsRegions,
@as("AccountIds") accountIds: workloadAccountIds,
@as("Environment") environment: workloadEnvironment,
@as("Description") description: workloadDescription,
@as("WorkloadName") workloadName: workloadName,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("Workload") workload: workload
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "UpdateWorkloadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateShareInvitation = {
  type t;
  type request = {
@as("ShareInvitationAction") shareInvitationAction: option<shareInvitationAction>,
@as("ShareInvitationId") shareInvitationId: option<shareInvitationId>
}
  type response = {
@as("ShareInvitation") shareInvitation: shareInvitation
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "UpdateShareInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkloadShares = {
  type t;
  type request = {
@as("MaxResults") maxResults: listWorkloadSharesMaxResults,
@as("NextToken") nextToken: nextToken,
@as("SharedWithPrefix") sharedWithPrefix: sharedWithPrefix,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("WorkloadShareSummaries") workloadShareSummaries: workloadShareSummaries,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListWorkloadSharesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListShareInvitations = {
  type t;
  type request = {
@as("MaxResults") maxResults: listShareInvitationsMaxResults,
@as("NextToken") nextToken: nextToken,
@as("WorkloadNamePrefix") workloadNamePrefix: workloadNamePrefix
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ShareInvitationSummaries") shareInvitationSummaries: shareInvitationSummaries
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListShareInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLenses = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("LensSummaries") lensSummaries: lensSummaries
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListLensesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLensReviewImprovements = {
  type t;
  type request = {
@as("MaxResults") maxResults: listLensReviewImprovementsMaxResults,
@as("NextToken") nextToken: nextToken,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("PillarId") pillarId: pillarId,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("ImprovementSummaries") improvementSummaries: improvementSummaries,
@as("LensAlias") lensAlias: lensAlias,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListLensReviewImprovementsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetWorkload = {
  type t;
  type request = {
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("Workload") workload: workload
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "GetWorkloadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLensReviewReport = {
  type t;
  type request = {
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("LensReviewReport") lensReviewReport: lensReviewReport,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "GetLensReviewReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateLenses = {
  type t;
  type request = {
@as("LensAliases") lensAliases: option<lensAliases>,
@as("WorkloadId") workloadId: option<workloadId>
}
  
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "DisassociateLensesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteWorkloadShare = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("WorkloadId") workloadId: option<workloadId>,
@as("ShareId") shareId: option<shareId>
}
  
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "DeleteWorkloadShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module DeleteWorkload = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("WorkloadId") workloadId: option<workloadId>
}
  
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "DeleteWorkloadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module CreateWorkloadShare = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("PermissionType") permissionType: option<permissionType>,
@as("SharedWith") sharedWith: option<sharedWith>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("ShareId") shareId: shareId,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "CreateWorkloadShareCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateWorkload = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("Notes") notes: notes,
@as("Lenses") lenses: option<workloadLenses>,
@as("Industry") industry: workloadIndustry,
@as("IndustryType") industryType: workloadIndustryType,
@as("ReviewOwner") reviewOwner: option<workloadReviewOwner>,
@as("ArchitecturalDesign") architecturalDesign: workloadArchitecturalDesign,
@as("PillarPriorities") pillarPriorities: workloadPillarPriorities,
@as("NonAwsRegions") nonAwsRegions: workloadNonAwsRegions,
@as("AwsRegions") awsRegions: workloadAwsRegions,
@as("AccountIds") accountIds: workloadAccountIds,
@as("Environment") environment: option<workloadEnvironment>,
@as("Description") description: option<workloadDescription>,
@as("WorkloadName") workloadName: option<workloadName>
}
  type response = {
@as("WorkloadArn") workloadArn: workloadArn,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "CreateWorkloadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMilestone = {
  type t;
  type request = {
@as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
@as("MilestoneName") milestoneName: option<milestoneName>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "CreateMilestoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateLenses = {
  type t;
  type request = {
@as("LensAliases") lensAliases: option<lensAliases>,
@as("WorkloadId") workloadId: option<workloadId>
}
  
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "AssociateLensesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<unit> = "send";
}

module UpdateAnswer = {
  type t;
  type request = {
@as("IsApplicable") isApplicable: isApplicable,
@as("Notes") notes: notes,
@as("SelectedChoices") selectedChoices: selectedChoices,
@as("QuestionId") questionId: option<questionId>,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("Answer") answer: answer,
@as("LensAlias") lensAlias: lensAlias,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "UpdateAnswerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWorkloads = {
  type t;
  type request = {
@as("MaxResults") maxResults: listWorkloadsMaxResults,
@as("NextToken") nextToken: nextToken,
@as("WorkloadNamePrefix") workloadNamePrefix: workloadNamePrefix
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("WorkloadSummaries") workloadSummaries: workloadSummaries
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListWorkloadsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNotifications = {
  type t;
  type request = {
@as("MaxResults") maxResults: listNotificationsMaxResults,
@as("NextToken") nextToken: nextToken,
@as("WorkloadId") workloadId: workloadId
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("NotificationSummaries") notificationSummaries: notificationSummaries
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListLensReviews = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("LensReviewSummaries") lensReviewSummaries: lensReviewSummaries,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListLensReviewsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMilestone = {
  type t;
  type request = {
@as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("Milestone") milestone: milestone,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "GetMilestoneCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAnswer = {
  type t;
  type request = {
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("QuestionId") questionId: option<questionId>,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("Answer") answer: answer,
@as("LensAlias") lensAlias: lensAlias,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "GetAnswerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLensReview = {
  type t;
  type request = {
@as("PillarNotes") pillarNotes: pillarNotes,
@as("LensNotes") lensNotes: notes,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("LensReview") lensReview: lensReview,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "UpdateLensReviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMilestones = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("MilestoneSummaries") milestoneSummaries: milestoneSummaries,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListMilestonesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAnswers = {
  type t;
  type request = {
@as("MaxResults") maxResults: listAnswersMaxResults,
@as("NextToken") nextToken: nextToken,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("PillarId") pillarId: pillarId,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("AnswerSummaries") answerSummaries: answerSummaries,
@as("LensAlias") lensAlias: lensAlias,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "ListAnswersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLensReview = {
  type t;
  type request = {
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("LensAlias") lensAlias: option<lensAlias>,
@as("WorkloadId") workloadId: option<workloadId>
}
  type response = {
@as("LensReview") lensReview: lensReview,
@as("MilestoneNumber") milestoneNumber: milestoneNumber,
@as("WorkloadId") workloadId: workloadId
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "GetLensReviewCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLensVersionDifference = {
  type t;
  type request = {
@as("BaseLensVersion") baseLensVersion: option<lensVersion>,
@as("LensAlias") lensAlias: option<lensAlias>
}
  type response = {
@as("VersionDifferences") versionDifferences: versionDifferences,
@as("LatestLensVersion") latestLensVersion: lensVersion,
@as("BaseLensVersion") baseLensVersion: lensVersion,
@as("LensAlias") lensAlias: lensAlias
}
  @module("@aws-sdk/client-wellarchitected") @new external new_: (Js.Promise.t<request>) => t = "GetLensVersionDifferenceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
