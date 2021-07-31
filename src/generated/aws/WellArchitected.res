type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-wellarchitected") @new
external createClient: unit => awsServiceClient = "WellArchitectedClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workloadReviewOwner = string
type workloadNonAwsRegion = string
type workloadNamePrefix = string
type workloadName = string
type workloadIndustryType = string
type workloadIndustry = string
type workloadImprovementStatus = [
  | @as("RISK_ACKNOWLEDGED") #RISK_ACKNOWLEDGED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
]
type workloadId = string
type workloadEnvironment = [@as("PREPRODUCTION") #PREPRODUCTION | @as("PRODUCTION") #PRODUCTION]
type workloadDescription = string
type workloadArn = string
type workloadArchitecturalDesign = string
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
type validationExceptionFieldName = string
type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type sharedWithPrefix = string
type sharedWith = string
type shareStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("REVOKED") #REVOKED
  | @as("PENDING") #PENDING
  | @as("REJECTED") #REJECTED
  | @as("ACCEPTED") #ACCEPTED
]
type shareInvitationId = string
type shareInvitationAction = [@as("REJECT") #REJECT | @as("ACCEPT") #ACCEPT]
type shareId = string
type serviceCode = string
type risk = [
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
  | @as("NONE") #NONE
  | @as("MEDIUM") #MEDIUM
  | @as("HIGH") #HIGH
  | @as("UNANSWERED") #UNANSWERED
]
type quotaCode = string
type questionTitle = string
type questionId = string
type questionDescription = string
type pillarName = string
type pillarId = string
type permissionType = [@as("CONTRIBUTOR") #CONTRIBUTOR | @as("READONLY") #READONLY]
type notificationType = [
  | @as("LENS_VERSION_DEPRECATED") #LENS_VERSION_DEPRECATED
  | @as("LENS_VERSION_UPGRADED") #LENS_VERSION_UPGRADED
]
type notes = string
type nextToken = string
type milestoneNumber = int
type milestoneName = string
type maxResults = int
type listWorkloadsMaxResults = int
type listWorkloadSharesMaxResults = int
type listShareInvitationsMaxResults = int
type listNotificationsMaxResults = int
type listLensReviewImprovementsMaxResults = int
type listAnswersMaxResults = int
type lensVersion = string
type lensStatus = [
  | @as("DEPRECATED") #DEPRECATED
  | @as("NOT_CURRENT") #NOT_CURRENT
  | @as("CURRENT") #CURRENT
]
type lensName = string
type lensDescription = string
type lensAlias = string
type isReviewOwnerUpdateAcknowledged = bool
type isApplicable = bool
type improvementPlanUrl = string
type helpfulResourceUrl = string
type exceptionResourceType = string
type exceptionResourceId = string
type exceptionMessage = string
type differenceStatus = [@as("DELETED") #DELETED | @as("NEW") #NEW | @as("UPDATED") #UPDATED]
type count = int
type clientRequestToken = string
type choiceTitle = string
type choiceId = string
type choiceDescription = string
type base64String = string
type awsRegion = string
type awsAccountId = string
type workloadShareSummary = {
  @as("Status") status: option<shareStatus>,
  @as("PermissionType") permissionType: option<permissionType>,
  @as("SharedWith") sharedWith: option<sharedWith>,
  @as("ShareId") shareId: option<shareId>,
}
type workloadShare = {
  @as("WorkloadId") workloadId: option<workloadId>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @as("Status") status: option<shareStatus>,
  @as("PermissionType") permissionType: option<permissionType>,
  @as("SharedWith") sharedWith: option<sharedWith>,
  @as("SharedBy") sharedBy: option<awsAccountId>,
  @as("ShareId") shareId: option<shareId>,
}
type workloadPillarPriorities = array<pillarId>
type workloadNonAwsRegions = array<workloadNonAwsRegion>
type workloadLenses = array<lensAlias>
type workloadAwsRegions = array<awsRegion>
type workloadAccountIds = array<awsAccountId>
type validationExceptionField = {
  @as("Message") message: exceptionMessage,
  @as("Name") name: validationExceptionFieldName,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type shareInvitationSummary = {
  @as("WorkloadId") workloadId: option<workloadId>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @as("PermissionType") permissionType: option<permissionType>,
  @as("SharedWith") sharedWith: option<sharedWith>,
  @as("SharedBy") sharedBy: option<awsAccountId>,
  @as("ShareInvitationId") shareInvitationId: option<shareInvitationId>,
}
type shareInvitation = {
  @as("WorkloadId") workloadId: option<workloadId>,
  @as("ShareInvitationId") shareInvitationId: option<shareInvitationId>,
}
type selectedChoices = array<choiceId>
type riskCounts = Js.Dict.t<count>
type questionDifference = {
  @as("DifferenceStatus") differenceStatus: option<differenceStatus>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("QuestionId") questionId: option<questionId>,
}
type pillarNotes = Js.Dict.t<notes>
type lensUpgradeSummary = {
  @as("LatestLensVersion") latestLensVersion: option<lensVersion>,
  @as("CurrentLensVersion") currentLensVersion: option<lensVersion>,
  @as("LensAlias") lensAlias: option<lensAlias>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @as("WorkloadId") workloadId: option<workloadId>,
}
type lensSummary = {
  @as("Description") description: option<lensDescription>,
  @as("LensName") lensName: option<lensName>,
  @as("LensVersion") lensVersion: option<lensVersion>,
  @as("LensAlias") lensAlias: option<lensAlias>,
}
type lensReviewReport = {
  @as("Base64String") base64String: option<base64String>,
  @as("LensAlias") lensAlias: option<lensAlias>,
}
type lensAliases = array<lensAlias>
type improvementSummary = {
  @as("ImprovementPlanUrl") improvementPlanUrl: option<improvementPlanUrl>,
  @as("Risk") risk: option<risk>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("PillarId") pillarId: option<pillarId>,
  @as("QuestionId") questionId: option<questionId>,
}
type choice = {
  @as("Description") description: option<choiceDescription>,
  @as("Title") title: option<choiceTitle>,
  @as("ChoiceId") choiceId: option<choiceId>,
}
type workloadSummary = {
  @as("ImprovementStatus") improvementStatus: option<workloadImprovementStatus>,
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("Lenses") lenses: option<workloadLenses>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("Owner") owner: option<awsAccountId>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @as("WorkloadArn") workloadArn: option<workloadArn>,
  @as("WorkloadId") workloadId: option<workloadId>,
}
type workloadShareSummaries = array<workloadShareSummary>
type workload = {
  @as("Tags") tags: option<tagMap>,
  @as("ShareInvitationId") shareInvitationId: option<shareInvitationId>,
  @as("Owner") owner: option<awsAccountId>,
  @as("Lenses") lenses: option<workloadLenses>,
  @as("PillarPriorities") pillarPriorities: option<workloadPillarPriorities>,
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("ImprovementStatus") improvementStatus: option<workloadImprovementStatus>,
  @as("Notes") notes: option<notes>,
  @as("Industry") industry: option<workloadIndustry>,
  @as("IndustryType") industryType: option<workloadIndustryType>,
  @as("IsReviewOwnerUpdateAcknowledged")
  isReviewOwnerUpdateAcknowledged: option<isReviewOwnerUpdateAcknowledged>,
  @as("ReviewRestrictionDate") reviewRestrictionDate: option<timestamp_>,
  @as("ReviewOwner") reviewOwner: option<workloadReviewOwner>,
  @as("ArchitecturalDesign") architecturalDesign: option<workloadArchitecturalDesign>,
  @as("NonAwsRegions") nonAwsRegions: option<workloadNonAwsRegions>,
  @as("AwsRegions") awsRegions: option<workloadAwsRegions>,
  @as("AccountIds") accountIds: option<workloadAccountIds>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("Environment") environment: option<workloadEnvironment>,
  @as("Description") description: option<workloadDescription>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @as("WorkloadArn") workloadArn: option<workloadArn>,
  @as("WorkloadId") workloadId: option<workloadId>,
}
type validationExceptionFieldList = array<validationExceptionField>
type shareInvitationSummaries = array<shareInvitationSummary>
type questionDifferences = array<questionDifference>
type pillarReviewSummary = {
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("Notes") notes: option<notes>,
  @as("PillarName") pillarName: option<pillarName>,
  @as("PillarId") pillarId: option<pillarId>,
}
type notificationSummary = {
  @as("LensUpgradeSummary") lensUpgradeSummary: option<lensUpgradeSummary>,
  @as("Type") type_: option<notificationType>,
}
type lensSummaries = array<lensSummary>
type lensReviewSummary = {
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("LensStatus") lensStatus: option<lensStatus>,
  @as("LensName") lensName: option<lensName>,
  @as("LensVersion") lensVersion: option<lensVersion>,
  @as("LensAlias") lensAlias: option<lensAlias>,
}
type improvementSummaries = array<improvementSummary>
type choices = array<choice>
type workloadSummaries = array<workloadSummary>
type pillarReviewSummaries = array<pillarReviewSummary>
type pillarDifference = {
  @as("QuestionDifferences") questionDifferences: option<questionDifferences>,
  @as("DifferenceStatus") differenceStatus: option<differenceStatus>,
  @as("PillarId") pillarId: option<pillarId>,
}
type notificationSummaries = array<notificationSummary>
type milestoneSummary = {
  @as("WorkloadSummary") workloadSummary: option<workloadSummary>,
  @as("RecordedAt") recordedAt: option<timestamp_>,
  @as("MilestoneName") milestoneName: option<milestoneName>,
  @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
}
type milestone = {
  @as("Workload") workload: option<workload>,
  @as("RecordedAt") recordedAt: option<timestamp_>,
  @as("MilestoneName") milestoneName: option<milestoneName>,
  @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
}
type lensReviewSummaries = array<lensReviewSummary>
type answerSummary = {
  @as("Risk") risk: option<risk>,
  @as("IsApplicable") isApplicable: option<isApplicable>,
  @as("SelectedChoices") selectedChoices: option<selectedChoices>,
  @as("Choices") choices: option<choices>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("PillarId") pillarId: option<pillarId>,
  @as("QuestionId") questionId: option<questionId>,
}
type answer = {
  @as("Notes") notes: option<notes>,
  @as("Risk") risk: option<risk>,
  @as("IsApplicable") isApplicable: option<isApplicable>,
  @as("SelectedChoices") selectedChoices: option<selectedChoices>,
  @as("Choices") choices: option<choices>,
  @as("HelpfulResourceUrl") helpfulResourceUrl: option<helpfulResourceUrl>,
  @as("ImprovementPlanUrl") improvementPlanUrl: option<improvementPlanUrl>,
  @as("QuestionDescription") questionDescription: option<questionDescription>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("PillarId") pillarId: option<pillarId>,
  @as("QuestionId") questionId: option<questionId>,
}
type pillarDifferences = array<pillarDifference>
type milestoneSummaries = array<milestoneSummary>
type lensReview = {
  @as("NextToken") nextToken: option<nextToken>,
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("Notes") notes: option<notes>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("PillarReviewSummaries") pillarReviewSummaries: option<pillarReviewSummaries>,
  @as("LensStatus") lensStatus: option<lensStatus>,
  @as("LensName") lensName: option<lensName>,
  @as("LensVersion") lensVersion: option<lensVersion>,
  @as("LensAlias") lensAlias: option<lensAlias>,
}
type answerSummaries = array<answerSummary>
type versionDifferences = {@as("PillarDifferences") pillarDifferences: option<pillarDifferences>}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("WorkloadArn") workloadArn: workloadArn,
  }
  type response = unit
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "UntagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("WorkloadArn") workloadArn: workloadArn,
  }
  type response = unit
  @module("@aws-sdk/client-wellarchitected") @new external new_: request => t = "TagResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("WorkloadArn") workloadArn: workloadArn}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListTagsForResourceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpgradeLensReview = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("MilestoneName") milestoneName: milestoneName,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }

  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "UpgradeLensReviewCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateWorkloadShare = {
  type t
  type request = {
    @as("PermissionType") permissionType: permissionType,
    @as("WorkloadId") workloadId: workloadId,
    @as("ShareId") shareId: shareId,
  }
  type response = {
    @as("WorkloadShare") workloadShare: option<workloadShare>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "UpdateWorkloadShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateWorkload = {
  type t
  type request = {
    @as("ImprovementStatus") improvementStatus: option<workloadImprovementStatus>,
    @as("Notes") notes: option<notes>,
    @as("Industry") industry: option<workloadIndustry>,
    @as("IndustryType") industryType: option<workloadIndustryType>,
    @as("IsReviewOwnerUpdateAcknowledged")
    isReviewOwnerUpdateAcknowledged: option<isReviewOwnerUpdateAcknowledged>,
    @as("ReviewOwner") reviewOwner: option<workloadReviewOwner>,
    @as("ArchitecturalDesign") architecturalDesign: option<workloadArchitecturalDesign>,
    @as("PillarPriorities") pillarPriorities: option<workloadPillarPriorities>,
    @as("NonAwsRegions") nonAwsRegions: option<workloadNonAwsRegions>,
    @as("AwsRegions") awsRegions: option<workloadAwsRegions>,
    @as("AccountIds") accountIds: option<workloadAccountIds>,
    @as("Environment") environment: option<workloadEnvironment>,
    @as("Description") description: option<workloadDescription>,
    @as("WorkloadName") workloadName: option<workloadName>,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {@as("Workload") workload: option<workload>}
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "UpdateWorkloadCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateShareInvitation = {
  type t
  type request = {
    @as("ShareInvitationAction") shareInvitationAction: shareInvitationAction,
    @as("ShareInvitationId") shareInvitationId: shareInvitationId,
  }
  type response = {@as("ShareInvitation") shareInvitation: option<shareInvitation>}
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "UpdateShareInvitationCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkloadShares = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listWorkloadSharesMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("SharedWithPrefix") sharedWithPrefix: option<sharedWithPrefix>,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadShareSummaries") workloadShareSummaries: option<workloadShareSummaries>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListWorkloadSharesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListShareInvitations = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listShareInvitationsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadNamePrefix") workloadNamePrefix: option<workloadNamePrefix>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ShareInvitationSummaries") shareInvitationSummaries: option<shareInvitationSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListShareInvitationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLenses = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("LensSummaries") lensSummaries: option<lensSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new_: request => t = "ListLensesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLensReviewImprovements = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listLensReviewImprovementsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("PillarId") pillarId: option<pillarId>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ImprovementSummaries") improvementSummaries: option<improvementSummaries>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListLensReviewImprovementsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetWorkload = {
  type t
  type request = {@as("WorkloadId") workloadId: workloadId}
  type response = {@as("Workload") workload: option<workload>}
  @module("@aws-sdk/client-wellarchitected") @new external new_: request => t = "GetWorkloadCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLensReviewReport = {
  type t
  type request = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("LensReviewReport") lensReviewReport: option<lensReviewReport>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "GetLensReviewReportCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateLenses = {
  type t
  type request = {
    @as("LensAliases") lensAliases: lensAliases,
    @as("WorkloadId") workloadId: workloadId,
  }

  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "DisassociateLensesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWorkloadShare = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("WorkloadId") workloadId: workloadId,
    @as("ShareId") shareId: shareId,
  }

  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "DeleteWorkloadShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteWorkload = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("WorkloadId") workloadId: workloadId,
  }

  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "DeleteWorkloadCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateWorkloadShare = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("PermissionType") permissionType: permissionType,
    @as("SharedWith") sharedWith: sharedWith,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("ShareId") shareId: option<shareId>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "CreateWorkloadShareCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateWorkload = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("Notes") notes: option<notes>,
    @as("Lenses") lenses: workloadLenses,
    @as("Industry") industry: option<workloadIndustry>,
    @as("IndustryType") industryType: option<workloadIndustryType>,
    @as("ReviewOwner") reviewOwner: workloadReviewOwner,
    @as("ArchitecturalDesign") architecturalDesign: option<workloadArchitecturalDesign>,
    @as("PillarPriorities") pillarPriorities: option<workloadPillarPriorities>,
    @as("NonAwsRegions") nonAwsRegions: option<workloadNonAwsRegions>,
    @as("AwsRegions") awsRegions: option<workloadAwsRegions>,
    @as("AccountIds") accountIds: option<workloadAccountIds>,
    @as("Environment") environment: workloadEnvironment,
    @as("Description") description: workloadDescription,
    @as("WorkloadName") workloadName: workloadName,
  }
  type response = {
    @as("WorkloadArn") workloadArn: option<workloadArn>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "CreateWorkloadCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMilestone = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("MilestoneName") milestoneName: milestoneName,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "CreateMilestoneCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateLenses = {
  type t
  type request = {
    @as("LensAliases") lensAliases: lensAliases,
    @as("WorkloadId") workloadId: workloadId,
  }

  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "AssociateLensesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateAnswer = {
  type t
  type request = {
    @as("IsApplicable") isApplicable: option<isApplicable>,
    @as("Notes") notes: option<notes>,
    @as("SelectedChoices") selectedChoices: option<selectedChoices>,
    @as("QuestionId") questionId: questionId,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("Answer") answer: option<answer>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "UpdateAnswerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListWorkloads = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listWorkloadsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadNamePrefix") workloadNamePrefix: option<workloadNamePrefix>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadSummaries") workloadSummaries: option<workloadSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListWorkloadsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNotifications = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listNotificationsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("NotificationSummaries") notificationSummaries: option<notificationSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListNotificationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListLensReviews = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("LensReviewSummaries") lensReviewSummaries: option<lensReviewSummaries>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListLensReviewsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMilestone = {
  type t
  type request = {
    @as("MilestoneNumber") milestoneNumber: milestoneNumber,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("Milestone") milestone: option<milestone>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "GetMilestoneCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAnswer = {
  type t
  type request = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("QuestionId") questionId: questionId,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("Answer") answer: option<answer>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new_: request => t = "GetAnswerCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLensReview = {
  type t
  type request = {
    @as("PillarNotes") pillarNotes: option<pillarNotes>,
    @as("LensNotes") lensNotes: option<notes>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("LensReview") lensReview: option<lensReview>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "UpdateLensReviewCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMilestones = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneSummaries") milestoneSummaries: option<milestoneSummaries>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "ListMilestonesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAnswers = {
  type t
  type request = {
    @as("MaxResults") maxResults: option<listAnswersMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("PillarId") pillarId: option<pillarId>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AnswerSummaries") answerSummaries: option<answerSummaries>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new_: request => t = "ListAnswersCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLensReview = {
  type t
  type request = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {
    @as("LensReview") lensReview: option<lensReview>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "GetLensReviewCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLensVersionDifference = {
  type t
  type request = {
    @as("BaseLensVersion") baseLensVersion: lensVersion,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {
    @as("VersionDifferences") versionDifferences: option<versionDifferences>,
    @as("LatestLensVersion") latestLensVersion: option<lensVersion>,
    @as("BaseLensVersion") baseLensVersion: option<lensVersion>,
    @as("LensAlias") lensAlias: option<lensAlias>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new_: request => t = "GetLensVersionDifferenceCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
