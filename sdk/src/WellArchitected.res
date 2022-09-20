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
@ocaml.doc("<p>The review owner of the workload. The name, email address, or identifier for the
            primary group or individual that owns the workload review process.</p>")
type workloadReviewOwner = string
type workloadNonAwsRegion = string
@ocaml.doc("<p>An optional string added to the beginning of each workload name returned in the
            results.</p>")
type workloadNamePrefix = string
@ocaml.doc("<p>The name of the workload.</p>
        <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
            are ignored when checking for uniqueness.</p>")
type workloadName = string
@ocaml.doc("<p>The industry type for the workload.</p>
        <p>If specified, must be one of the following:</p>  
        <ul>
            <li>
                <p>
                  <code>Agriculture</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Automobile</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Defense</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Design and Engineering</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Digital Advertising</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Education</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Environmental Protection</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Financial Services</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Gaming</code>
               </p>
            </li>
            <li>
                <p>
                  <code>General Public Services</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Healthcare</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Hospitality</code>
               </p>
            </li>
            <li>
                <p>
                  <code>InfoTech</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Justice and Public Safety</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Life Sciences</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Manufacturing</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Media & Entertainment</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Mining & Resources</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Oil & Gas</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Power & Utilities</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Professional Services</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Real Estate & Construction</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Retail & Wholesale</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Social Protection</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Telecommunications</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Travel, Transportation & Logistics</code>
               </p>
            </li>
            <li>
                <p>
                  <code>Other</code>
               </p>
            </li>
         </ul>")
type workloadIndustryType = string
@ocaml.doc("<p>The industry for the workload.</p>") type workloadIndustry = string
@ocaml.doc("<p>The improvement status for a workload.</p>")
type workloadImprovementStatus = [
  | @as("RISK_ACKNOWLEDGED") #RISK_ACKNOWLEDGED
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("NOT_STARTED") #NOT_STARTED
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
]
@ocaml.doc(
  "<p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>"
)
type workloadId = string
@ocaml.doc("<p>The environment for the workload.</p>")
type workloadEnvironment = [@as("PREPRODUCTION") #PREPRODUCTION | @as("PRODUCTION") #PRODUCTION]
@ocaml.doc("<p>The description for the workload.</p>") type workloadDescription = string
@ocaml.doc("<p>The ARN for the workload.</p>") type workloadArn = string
@ocaml.doc("<p>The URL of the architectural design for the workload.</p>")
type workloadArchitecturalDesign = string
@ocaml.doc("<p>The reason why the request failed validation.</p>")
type validationExceptionReason = [
  | @as("OTHER") #OTHER
  | @as("FIELD_VALIDATION_FAILED") #FIELD_VALIDATION_FAILED
  | @as("CANNOT_PARSE") #CANNOT_PARSE
  | @as("UNKNOWN_OPERATION") #UNKNOWN_OPERATION
]
@ocaml.doc("<p>The field name for which validation failed.</p>")
type validationExceptionFieldName = string
@ocaml.doc("<p>The date and time recorded.</p>") type timestamp_ = Js.Date.t
type tagValue = string
type tagKey = string
type sharedWithPrefix = string
@ocaml.doc(
  "<p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>"
)
type sharedWith = string
@ocaml.doc("<p>The status of a workload share.</p>")
type shareStatus = [
  | @as("EXPIRED") #EXPIRED
  | @as("REVOKED") #REVOKED
  | @as("PENDING") #PENDING
  | @as("REJECTED") #REJECTED
  | @as("ACCEPTED") #ACCEPTED
]
type shareResourceType = [@as("LENS") #LENS | @as("WORKLOAD") #WORKLOAD]
type shareInvitationId = string
@ocaml.doc("<p>Share invitation action taken by contributor.</p>")
type shareInvitationAction = [@as("REJECT") #REJECT | @as("ACCEPT") #ACCEPT]
@ocaml.doc("<p>The ID associated with the workload share.</p>") type shareId = string
@ocaml.doc("<p>Service Quotas requirement to identify originating service.</p>")
type serviceCode = string
@ocaml.doc("<p>The risk for a given workload, lens review, pillar, or question.</p>")
type risk = [
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
  | @as("NONE") #NONE
  | @as("MEDIUM") #MEDIUM
  | @as("HIGH") #HIGH
  | @as("UNANSWERED") #UNANSWERED
]
@ocaml.doc("<p>Service Quotas requirement to identify originating quota.</p>")
type quotaCode = string
@ocaml.doc("<p>The title of the question.</p>") type questionTitle = string
@ocaml.doc("<p>The ID of the question.</p>") type questionId = string
@ocaml.doc("<p>The description of the question.</p>") type questionDescription = string
@ocaml.doc("<p>The name of the pillar.</p>") type pillarName = string
@ocaml.doc("<p>The ID used to identify a pillar, for example, <code>security</code>.</p>
        <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>")
type pillarId = string
@ocaml.doc("<p>Permission granted on a workload share.</p>")
type permissionType = [@as("CONTRIBUTOR") #CONTRIBUTOR | @as("READONLY") #READONLY]
type notificationType = [
  | @as("LENS_VERSION_DEPRECATED") #LENS_VERSION_DEPRECATED
  | @as("LENS_VERSION_UPGRADED") #LENS_VERSION_UPGRADED
]
@ocaml.doc("<p>The notes associated with the workload.</p>") type notes = string
@ocaml.doc("<p>The token to use to retrieve the next set of results.</p>") type nextToken = string
@ocaml.doc("<p>The milestone number.</p>
        <p>A workload can have a maximum of 100 milestones.</p>")
type milestoneNumber = int
@ocaml.doc("<p>The name of the milestone in a workload.</p>
        <p>Milestone names must be unique within a workload.</p>")
type milestoneName = string
@ocaml.doc("<p>The maximum number of results to return for this request.</p>") type maxResults = int
type listWorkloadsMaxResults = int
type listWorkloadSharesMaxResults = int
type listShareInvitationsMaxResults = int
type listNotificationsMaxResults = int
type listLensReviewImprovementsMaxResults = int
type listAnswersMaxResults = int
type lensVersion = string
type lensType = [
  | @as("CUSTOM_SELF") #CUSTOM_SELF
  | @as("CUSTOM_SHARED") #CUSTOM_SHARED
  | @as("AWS_OFFICIAL") #AWS_OFFICIAL
]
type lensStatusType = [@as("PUBLISHED") #PUBLISHED | @as("DRAFT") #DRAFT | @as("ALL") #ALL]
type lensStatus = [
  | @as("UNSHARED") #UNSHARED
  | @as("DELETED") #DELETED
  | @as("DEPRECATED") #DEPRECATED
  | @as("NOT_CURRENT") #NOT_CURRENT
  | @as("CURRENT") #CURRENT
]
type lensOwner = string
type lensNamePrefix = string
@ocaml.doc("<p>The full name of the lens.</p>") type lensName = string
type lensJSON = string
@ocaml.doc("<p>The description of the lens.</p>") type lensDescription = string
type lensArn = string
@ocaml.doc("<p>The alias of the lens, for example, <code>serverless</code>.</p>
        <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>")
type lensAlias = string
type isReviewOwnerUpdateAcknowledged = bool
type isMajorVersion = bool
@ocaml.doc("<p>Defines whether this question is applicable to a lens review.</p>")
type isApplicable = bool
@ocaml.doc("<p>The improvement plan URL for a question.</p>
        <p>This value is only available if the question has been answered.</p>")
type improvementPlanUrl = string
type importLensStatus = [
  | @as("ERROR") #ERROR
  | @as("COMPLETE") #COMPLETE
  | @as("IN_PROGRESS") #IN_PROGRESS
]
@ocaml.doc("<p>The helpful resource URL for a question.</p>") type helpfulResourceUrl = string
@ocaml.doc("<p>Type of the resource affected.</p>") type exceptionResourceType = string
@ocaml.doc("<p>Identifier of the resource affected.</p>") type exceptionResourceId = string
@ocaml.doc("<p>Description of the error.</p>") type exceptionMessage = string
type displayText = string
type differenceStatus = [@as("DELETED") #DELETED | @as("NEW") #NEW | @as("UPDATED") #UPDATED]
@ocaml.doc("<p>A non-negative integer that denotes how many.</p>") type count = int
@ocaml.doc("<p>A unique case-sensitive string used to ensure that this request is idempotent
            (executes only once).</p>
        <p>You should not reuse the same token for other requests. If you retry a request with
            the same client request token and the same parameters after it has completed
            successfully, the result of the original request is returned. </p>
        <important>
            <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
                automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
                you must provide this token or the request will fail.</p>
        </important>")
type clientRequestToken = string
@ocaml.doc("<p>The title of a choice.</p>") type choiceTitle = string
type choiceStatus = [
  | @as("UNSELECTED") #UNSELECTED
  | @as("NOT_APPLICABLE") #NOT_APPLICABLE
  | @as("SELECTED") #SELECTED
]
type choiceReason = [
  | @as("NONE") #NONE
  | @as("OTHER") #OTHER
  | @as("ARCHITECTURE_CONSTRAINTS") #ARCHITECTURE_CONSTRAINTS
  | @as("BUSINESS_PRIORITIES") #BUSINESS_PRIORITIES
  | @as("OUT_OF_SCOPE") #OUT_OF_SCOPE
]
type choiceNotes = string
@ocaml.doc("<p>The ID of a choice.</p>") type choiceId = string
@ocaml.doc("<p>The description of a choice.</p>") type choiceDescription = string
type choiceContentUrl = string
type choiceContentDisplayText = string
@ocaml.doc("<p>The Base64-encoded string representation of a lens review report.</p>
        <p>This data can be used to create a PDF file.</p>")
type base64String = string
@ocaml.doc("<p>An Amazon Web Services Region, for example, <code>us-west-2</code> or
            <code>ap-northeast-1</code>.</p>")
type awsRegion = string
@ocaml.doc("<p>An Amazon Web Services account ID.</p>") type awsAccountId = string
type answerReason = [
  | @as("NONE") #NONE
  | @as("OTHER") #OTHER
  | @as("ARCHITECTURE_CONSTRAINTS") #ARCHITECTURE_CONSTRAINTS
  | @as("BUSINESS_PRIORITIES") #BUSINESS_PRIORITIES
  | @as("OUT_OF_SCOPE") #OUT_OF_SCOPE
]
@ocaml.doc("<p>A workload share summary return object.</p>")
type workloadShareSummary = {
  @as("Status") status: option<shareStatus>,
  @as("PermissionType") permissionType: option<permissionType>,
  @as("SharedWith") sharedWith: option<sharedWith>,
  @as("ShareId") shareId: option<shareId>,
}
@ocaml.doc("<p>A workload share return object.</p>")
type workloadShare = {
  @as("WorkloadId") workloadId: option<workloadId>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @as("Status") status: option<shareStatus>,
  @as("PermissionType") permissionType: option<permissionType>,
  @as("SharedWith") sharedWith: option<sharedWith>,
  @as("SharedBy") sharedBy: option<awsAccountId>,
  @as("ShareId") shareId: option<shareId>,
}
@ocaml.doc("<p>The priorities of the pillars, which are used to order items in the improvement plan.
            Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>")
type workloadPillarPriorities = array<pillarId>
@ocaml.doc("<p> The list of non-Amazon Web Services Regions associated with the workload.</p>")
type workloadNonAwsRegions = array<workloadNonAwsRegion>
@ocaml.doc(
  "<p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>"
)
type workloadLenses = array<lensAlias>
@ocaml.doc("<p>The list of Amazon Web Services Regions associated with the workload, for example,
                <code>us-east-2</code>, or <code>ca-central-1</code>.</p>")
type workloadAwsRegions = array<awsRegion>
@ocaml.doc("<p>The list of Amazon Web Services account IDs associated with the workload.</p>")
type workloadAccountIds = array<awsAccountId>
@ocaml.doc(
  "<p>Stores information about a field passed inside a request that resulted in an exception.</p>"
)
type validationExceptionField = {
  @as("Message") message: exceptionMessage,
  @as("Name") name: validationExceptionFieldName,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>A share invitation summary return object.</p>")
type shareInvitationSummary = {
  @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  @as("LensName") lensName: option<lensName>,
  @as("WorkloadId") workloadId: option<workloadId>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @ocaml.doc("<p>The resource type of the share invitation.</p>") @as("ShareResourceType")
  shareResourceType: option<shareResourceType>,
  @as("PermissionType") permissionType: option<permissionType>,
  @as("SharedWith") sharedWith: option<sharedWith>,
  @as("SharedBy") sharedBy: option<awsAccountId>,
  @ocaml.doc("<p>The ID assigned to the share invitation.</p>") @as("ShareInvitationId")
  shareInvitationId: option<shareInvitationId>,
}
@ocaml.doc("<p>The share invitation.</p>")
type shareInvitation = {
  @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  @as("LensAlias") lensAlias: option<lensAlias>,
  @as("WorkloadId") workloadId: option<workloadId>,
  @ocaml.doc("<p>The resource type of the share invitation.</p>") @as("ShareResourceType")
  shareResourceType: option<shareResourceType>,
  @ocaml.doc("<p>The ID assigned to the share invitation.</p>") @as("ShareInvitationId")
  shareInvitationId: option<shareInvitationId>,
}
@ocaml.doc("<p>List of selected choice IDs in a question answer.</p>
        <p>The values entered replace the previously selected choices.</p>")
type selectedChoices = array<choiceId>
@ocaml.doc("<p>A map from risk names to the count of how questions have that rating.</p>")
type riskCounts = Js.Dict.t<count>
@ocaml.doc("<p>A question difference return object.</p>")
type questionDifference = {
  @ocaml.doc("<p>Indicates the type of change to the question.</p>") @as("DifferenceStatus")
  differenceStatus: option<differenceStatus>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("QuestionId") questionId: option<questionId>,
}
@ocaml.doc("<p>List of pillar notes of a lens review in a workload.</p>")
type pillarNotes = Js.Dict.t<notes>
@ocaml.doc("<p>Lens upgrade summary return object.</p>")
type lensUpgradeSummary = {
  @ocaml.doc("<p>The latest version of the lens.</p>") @as("LatestLensVersion")
  latestLensVersion: option<lensVersion>,
  @ocaml.doc("<p>The current version of the lens.</p>") @as("CurrentLensVersion")
  currentLensVersion: option<lensVersion>,
  @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  @as("LensAlias") lensAlias: option<lensAlias>,
  @as("WorkloadName") workloadName: option<workloadName>,
  @as("WorkloadId") workloadId: option<workloadId>,
}
@ocaml.doc("<p>A lens summary of a lens.</p>")
type lensSummary = {
  @ocaml.doc("<p>The status of the lens.</p>") @as("LensStatus") lensStatus: option<lensStatus>,
  @as("Owner") owner: option<awsAccountId>,
  @ocaml.doc("<p>The version of the lens.</p>") @as("LensVersion") lensVersion: option<lensVersion>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Description") description: option<lensDescription>,
  @ocaml.doc("<p>The type of the lens.</p>") @as("LensType") lensType: option<lensType>,
  @as("LensName") lensName: option<lensName>,
  @as("LensAlias") lensAlias: option<lensAlias>,
  @ocaml.doc("<p>The ARN of the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
}
@ocaml.doc("<p>A lens share summary return object.</p>")
type lensShareSummary = {
  @as("Status") status: option<shareStatus>,
  @as("SharedWith") sharedWith: option<sharedWith>,
  @as("ShareId") shareId: option<shareId>,
}
@ocaml.doc("<p>A report of a lens review.</p>")
type lensReviewReport = {
  @as("Base64String") base64String: option<base64String>,
  @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  @as("LensAlias") lensAlias: option<lensAlias>,
}
@ocaml.doc("<p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
        <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>")
type lensAliases = array<lensAlias>
@ocaml.doc("<p>A lens return object.</p>")
type lens = {
  @ocaml.doc("<p>The ID assigned to the share invitation.</p>") @as("ShareInvitationId")
  shareInvitationId: option<shareInvitationId>,
  @ocaml.doc("<p>The Amazon Web Services account ID that owns the lens.</p>") @as("Owner")
  owner: option<lensOwner>,
  @as("Description") description: option<lensDescription>,
  @as("Name") name: option<lensName>,
  @ocaml.doc("<p>The version of a lens.</p>") @as("LensVersion") lensVersion: option<lensVersion>,
  @ocaml.doc("<p>The ARN of a lens.</p>") @as("LensArn") lensArn: option<lensArn>,
}
@ocaml.doc("<p>A list of choices to be updated.</p>")
type choiceUpdate = {
  @ocaml.doc("<p>The notes associated with a choice.</p>") @as("Notes") notes: option<choiceNotes>,
  @ocaml.doc("<p>The reason why a choice is non-applicable to a question in your workload.</p>")
  @as("Reason")
  reason: option<choiceReason>,
  @ocaml.doc("<p>The status of a choice.</p>") @as("Status") status: choiceStatus,
}
@ocaml.doc("<p>The choice level improvement plan.</p>")
type choiceImprovementPlan = {
  @as("ImprovementPlanUrl") improvementPlanUrl: option<improvementPlanUrl>,
  @ocaml.doc("<p>The display text for the improvement plan.</p>") @as("DisplayText")
  displayText: option<displayText>,
  @as("ChoiceId") choiceId: option<choiceId>,
}
@ocaml.doc("<p>The choice content.</p>")
type choiceContent = {
  @ocaml.doc("<p>The URL for the choice content.</p>") @as("Url") url: option<choiceContentUrl>,
  @ocaml.doc("<p>The display text for the choice content.</p>") @as("DisplayText")
  displayText: option<choiceContentDisplayText>,
}
@ocaml.doc("<p>A choice summary that has been answered on a question in your workload.</p>")
type choiceAnswerSummary = {
  @ocaml.doc("<p>The reason why a choice is non-applicable to a question in your workload.</p>")
  @as("Reason")
  reason: option<choiceReason>,
  @ocaml.doc("<p>The status of a choice.</p>") @as("Status") status: option<choiceStatus>,
  @as("ChoiceId") choiceId: option<choiceId>,
}
@ocaml.doc("<p>A choice that has been answered on a question in your workload.</p>")
type choiceAnswer = {
  @ocaml.doc("<p>The notes associated with a choice.</p>") @as("Notes") notes: option<choiceNotes>,
  @ocaml.doc("<p>The reason why a choice is non-applicable to a question in your workload.</p>")
  @as("Reason")
  reason: option<choiceReason>,
  @ocaml.doc("<p>The status of a choice.</p>") @as("Status") status: option<choiceStatus>,
  @as("ChoiceId") choiceId: option<choiceId>,
}
@ocaml.doc("<p>A workload summary return object.</p>")
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
@ocaml.doc("<p>A list of workload share summaries.</p>")
type workloadShareSummaries = array<workloadShareSummary>
@ocaml.doc("<p>A workload return object.</p>")
type workload = {
  @ocaml.doc("<p>The tags associated with the workload.</p>") @as("Tags") tags: option<tagMap>,
  @ocaml.doc("<p>The ID assigned to the share invitation.</p>") @as("ShareInvitationId")
  shareInvitationId: option<shareInvitationId>,
  @as("Owner") owner: option<awsAccountId>,
  @as("Lenses") lenses: option<workloadLenses>,
  @as("PillarPriorities") pillarPriorities: option<workloadPillarPriorities>,
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("ImprovementStatus") improvementStatus: option<workloadImprovementStatus>,
  @as("Notes") notes: option<notes>,
  @as("Industry") industry: option<workloadIndustry>,
  @as("IndustryType") industryType: option<workloadIndustryType>,
  @ocaml.doc("<p>Flag indicating whether the workload owner has acknowledged that the <i>Review
                owner</i> field is required.</p>
        <p>If a <b>Review owner</b> is not added to the workload within
            60 days of acknowledgement, access to the workload is restricted until an owner is
            added.</p>")
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
@ocaml.doc("<p>The fields that caused the error, if applicable.</p>")
type validationExceptionFieldList = array<validationExceptionField>
type shareInvitationSummaries = array<shareInvitationSummary>
type questionDifferences = array<questionDifference>
@ocaml.doc("<p>A pillar review summary of a lens review.</p>")
type pillarReviewSummary = {
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("Notes") notes: option<notes>,
  @as("PillarName") pillarName: option<pillarName>,
  @as("PillarId") pillarId: option<pillarId>,
}
@ocaml.doc("<p>A notification summary return object.</p>")
type notificationSummary = {
  @ocaml.doc("<p>Summary of lens upgrade.</p>") @as("LensUpgradeSummary")
  lensUpgradeSummary: option<lensUpgradeSummary>,
  @ocaml.doc("<p>The type of notification.</p>") @as("Type") type_: option<notificationType>,
}
@ocaml.doc("<p>List of lens summaries of available lenses.</p>")
type lensSummaries = array<lensSummary>
type lensShareSummaries = array<lensShareSummary>
@ocaml.doc("<p>A lens review summary of a workload.</p>")
type lensReviewSummary = {
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @ocaml.doc("<p>The status of the lens.</p>") @as("LensStatus") lensStatus: option<lensStatus>,
  @as("LensName") lensName: option<lensName>,
  @ocaml.doc("<p>The version of the lens.</p>") @as("LensVersion") lensVersion: option<lensVersion>,
  @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  @as("LensAlias") lensAlias: option<lensAlias>,
}
type choiceUpdates = Js.Dict.t<choiceUpdate>
type choiceImprovementPlans = array<choiceImprovementPlan>
type choiceAnswers = array<choiceAnswer>
type choiceAnswerSummaries = array<choiceAnswerSummary>
@ocaml.doc("<p>A choice available to answer question.</p>")
type choice = {
  @ocaml.doc("<p>The choice level improvement plan.</p>") @as("ImprovementPlan")
  improvementPlan: option<choiceContent>,
  @ocaml.doc("<p>The choice level helpful resource.</p>") @as("HelpfulResource")
  helpfulResource: option<choiceContent>,
  @as("Description") description: option<choiceDescription>,
  @as("Title") title: option<choiceTitle>,
  @as("ChoiceId") choiceId: option<choiceId>,
}
@ocaml.doc("<p>A list of workload summaries.</p>") type workloadSummaries = array<workloadSummary>
@ocaml.doc("<p>List of pillar review summaries of lens review in a workload.</p>")
type pillarReviewSummaries = array<pillarReviewSummary>
@ocaml.doc("<p>A pillar difference return object.</p>")
type pillarDifference = {
  @ocaml.doc("<p>List of question differences.</p>") @as("QuestionDifferences")
  questionDifferences: option<questionDifferences>,
  @ocaml.doc("<p>Indicates the type of change to the pillar.</p>") @as("DifferenceStatus")
  differenceStatus: option<differenceStatus>,
  @as("PillarName") pillarName: option<pillarName>,
  @as("PillarId") pillarId: option<pillarId>,
}
type notificationSummaries = array<notificationSummary>
@ocaml.doc("<p>A milestone summary return object.</p>")
type milestoneSummary = {
  @as("WorkloadSummary") workloadSummary: option<workloadSummary>,
  @as("RecordedAt") recordedAt: option<timestamp_>,
  @as("MilestoneName") milestoneName: option<milestoneName>,
  @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
}
@ocaml.doc("<p>A milestone return object.</p>")
type milestone = {
  @as("Workload") workload: option<workload>,
  @as("RecordedAt") recordedAt: option<timestamp_>,
  @as("MilestoneName") milestoneName: option<milestoneName>,
  @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
}
@ocaml.doc("<p>List of lens summaries of lens reviews of a workload.</p>")
type lensReviewSummaries = array<lensReviewSummary>
@ocaml.doc("<p>An improvement summary of a lens review in a workload.</p>")
type improvementSummary = {
  @ocaml.doc("<p>The improvement plan details.</p>") @as("ImprovementPlans")
  improvementPlans: option<choiceImprovementPlans>,
  @as("ImprovementPlanUrl") improvementPlanUrl: option<improvementPlanUrl>,
  @as("Risk") risk: option<risk>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("PillarId") pillarId: option<pillarId>,
  @as("QuestionId") questionId: option<questionId>,
}
@ocaml.doc("<p>List of choices available for a question.</p>") type choices = array<choice>
type pillarDifferences = array<pillarDifference>
@ocaml.doc("<p>A list of milestone summaries.</p>")
type milestoneSummaries = array<milestoneSummary>
@ocaml.doc("<p>A lens review of a question.</p>")
type lensReview = {
  @as("NextToken") nextToken: option<nextToken>,
  @as("RiskCounts") riskCounts: option<riskCounts>,
  @as("Notes") notes: option<notes>,
  @as("UpdatedAt") updatedAt: option<timestamp_>,
  @as("PillarReviewSummaries") pillarReviewSummaries: option<pillarReviewSummaries>,
  @ocaml.doc("<p>The status of the lens.</p>") @as("LensStatus") lensStatus: option<lensStatus>,
  @as("LensName") lensName: option<lensName>,
  @ocaml.doc("<p>The version of the lens.</p>") @as("LensVersion") lensVersion: option<lensVersion>,
  @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  @as("LensAlias") lensAlias: option<lensAlias>,
}
@ocaml.doc("<p>List of improvement summaries of lens review in a workload.</p>")
type improvementSummaries = array<improvementSummary>
@ocaml.doc("<p>An answer summary of a lens review in a workload.</p>")
type answerSummary = {
  @ocaml.doc("<p>The reason why a choice is non-applicable to a question in your workload.</p>")
  @as("Reason")
  reason: option<answerReason>,
  @as("Risk") risk: option<risk>,
  @as("IsApplicable") isApplicable: option<isApplicable>,
  @ocaml.doc("<p>A list of selected choices to a question in your workload.</p>")
  @as("ChoiceAnswerSummaries")
  choiceAnswerSummaries: option<choiceAnswerSummaries>,
  @as("SelectedChoices") selectedChoices: option<selectedChoices>,
  @as("Choices") choices: option<choices>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("PillarId") pillarId: option<pillarId>,
  @as("QuestionId") questionId: option<questionId>,
}
@ocaml.doc("<p>An answer of the question.</p>")
type answer = {
  @ocaml.doc("<p>The reason why the question is not applicable to your workload.</p>") @as("Reason")
  reason: option<answerReason>,
  @as("Notes") notes: option<notes>,
  @as("Risk") risk: option<risk>,
  @as("IsApplicable") isApplicable: option<isApplicable>,
  @ocaml.doc("<p>A list of selected choices to a question in your workload.</p>")
  @as("ChoiceAnswers")
  choiceAnswers: option<choiceAnswers>,
  @as("SelectedChoices") selectedChoices: option<selectedChoices>,
  @as("Choices") choices: option<choices>,
  @ocaml.doc("<p>The helpful resource text to be displayed.</p>") @as("HelpfulResourceDisplayText")
  helpfulResourceDisplayText: option<displayText>,
  @as("HelpfulResourceUrl") helpfulResourceUrl: option<helpfulResourceUrl>,
  @as("ImprovementPlanUrl") improvementPlanUrl: option<improvementPlanUrl>,
  @as("QuestionDescription") questionDescription: option<questionDescription>,
  @as("QuestionTitle") questionTitle: option<questionTitle>,
  @as("PillarId") pillarId: option<pillarId>,
  @as("QuestionId") questionId: option<questionId>,
}
@ocaml.doc("<p>The differences between the base and latest versions of the lens.</p>")
type versionDifferences = {
  @ocaml.doc("<p>The differences between the base and latest versions of the lens.</p>")
  @as("PillarDifferences")
  pillarDifferences: option<pillarDifferences>,
}
@ocaml.doc("<p>List of answer summaries of lens review in a workload.</p>")
type answerSummaries = array<answerSummary>
@ocaml.doc("<fullname>Well-Architected Tool</fullname>
        
         <p>This is the <i>Well-Architected Tool API Reference</i>. The WA Tool API provides programmatic access to the 
            <a href=\"http://aws.amazon.com/well-architected-tool\">Well-Architected Tool</a> in the 
           <a href=\"https://console.aws.amazon.com/wellarchitected\">Amazon Web Services Management Console</a>. For information 
            about the Well-Architected Tool, see the 
           <a href=\"https://docs.aws.amazon.com/wellarchitected/latest/userguide/intro.html\">Well-Architected Tool User Guide</a>.</p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>A list of tag keys. Existing tags of the resource 
            whose keys are members of this list are removed from the resource.</p>")
    @as("TagKeys")
    tagKeys: tagKeyList,
    @as("WorkloadArn") workloadArn: workloadArn,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~workloadArn, ()) => new({tagKeys, workloadArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags for the resource.</p>") @as("Tags") tags: tagMap,
    @as("WorkloadArn") workloadArn: workloadArn,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~workloadArn, ()) => new({tags, workloadArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {@as("WorkloadArn") workloadArn: workloadArn}
  type response = {@ocaml.doc("<p>The tags for the resource.</p>") @as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~workloadArn, ()) => new({workloadArn: workloadArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpgradeLensReview = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: option<clientRequestToken>,
    @as("MilestoneName") milestoneName: milestoneName,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "UpgradeLensReviewCommand"
  let make = (~milestoneName, ~lensAlias, ~workloadId, ~clientRequestToken=?, ()) =>
    new({clientRequestToken, milestoneName, lensAlias, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateWorkloadShare = {
  type t
  @ocaml.doc("<p>Input for Update Workload Share</p>")
  type request = {
    @as("PermissionType") permissionType: permissionType,
    @as("WorkloadId") workloadId: workloadId,
    @as("ShareId") shareId: shareId,
  }
  @ocaml.doc("<p>Input for Update Workload Share</p>")
  type response = {
    @as("WorkloadShare") workloadShare: option<workloadShare>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "UpdateWorkloadShareCommand"
  let make = (~permissionType, ~workloadId, ~shareId, ()) =>
    new({permissionType, workloadId, shareId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateWorkload = {
  type t
  @ocaml.doc("<p>Input to update a workload.</p>")
  type request = {
    @as("ImprovementStatus") improvementStatus: option<workloadImprovementStatus>,
    @as("Notes") notes: option<notes>,
    @as("Industry") industry: option<workloadIndustry>,
    @as("IndustryType") industryType: option<workloadIndustryType>,
    @ocaml.doc("<p>Flag indicating whether the workload owner has acknowledged that the <i>Review
                owner</i> field is required.</p>
        <p>If a <b>Review owner</b> is not added to the workload within
            60 days of acknowledgement, access to the workload is restricted until an owner is
            added.</p>")
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
  @ocaml.doc("<p>Output of an update workload call.</p>")
  type response = {@as("Workload") workload: option<workload>}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "UpdateWorkloadCommand"
  let make = (
    ~workloadId,
    ~improvementStatus=?,
    ~notes=?,
    ~industry=?,
    ~industryType=?,
    ~isReviewOwnerUpdateAcknowledged=?,
    ~reviewOwner=?,
    ~architecturalDesign=?,
    ~pillarPriorities=?,
    ~nonAwsRegions=?,
    ~awsRegions=?,
    ~accountIds=?,
    ~environment=?,
    ~description=?,
    ~workloadName=?,
    (),
  ) =>
    new({
      improvementStatus,
      notes,
      industry,
      industryType,
      isReviewOwnerUpdateAcknowledged,
      reviewOwner,
      architecturalDesign,
      pillarPriorities,
      nonAwsRegions,
      awsRegions,
      accountIds,
      environment,
      description,
      workloadName,
      workloadId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateShareInvitation = {
  type t
  @ocaml.doc("<p>Input for Update Share Invitation</p>")
  type request = {
    @as("ShareInvitationAction") shareInvitationAction: shareInvitationAction,
    @ocaml.doc("<p>The ID assigned to the share invitation.</p>") @as("ShareInvitationId")
    shareInvitationId: shareInvitationId,
  }
  type response = {
    @ocaml.doc("<p>The updated workload share invitation.</p>") @as("ShareInvitation")
    shareInvitation: option<shareInvitation>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "UpdateShareInvitationCommand"
  let make = (~shareInvitationAction, ~shareInvitationId, ()) =>
    new({shareInvitationAction, shareInvitationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWorkloadShares = {
  type t
  @ocaml.doc("<p>Input for List Workload Share</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for this request.</p>") @as("MaxResults")
    maxResults: option<listWorkloadSharesMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>"
    )
    @as("SharedWithPrefix")
    sharedWithPrefix: option<sharedWithPrefix>,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Input for List Workload Share</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadShareSummaries") workloadShareSummaries: option<workloadShareSummaries>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListWorkloadSharesCommand"
  let make = (~workloadId, ~maxResults=?, ~nextToken=?, ~sharedWithPrefix=?, ()) =>
    new({maxResults, nextToken, sharedWithPrefix, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListShareInvitations = {
  type t
  @ocaml.doc("<p>Input for List Share Invitations</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for this request.</p>") @as("MaxResults")
    maxResults: option<listShareInvitationsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>The type of share invitations to be returned.</p>") @as("ShareResourceType")
    shareResourceType: option<shareResourceType>,
    @ocaml.doc(
      "<p>An optional string added to the beginning of each lens name returned in the results.</p>"
    )
    @as("LensNamePrefix")
    lensNamePrefix: option<lensNamePrefix>,
    @as("WorkloadNamePrefix") workloadNamePrefix: option<workloadNamePrefix>,
  }
  @ocaml.doc("<p>Input for List Share Invitations</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>List of share invitation summaries in a workload.</p>")
    @as("ShareInvitationSummaries")
    shareInvitationSummaries: option<shareInvitationSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListShareInvitationsCommand"
  let make = (
    ~maxResults=?,
    ~nextToken=?,
    ~shareResourceType=?,
    ~lensNamePrefix=?,
    ~workloadNamePrefix=?,
    (),
  ) => new({maxResults, nextToken, shareResourceType, lensNamePrefix, workloadNamePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListLenses = {
  type t
  @ocaml.doc("<p>Input to list lenses.</p>")
  type request = {
    @as("LensName") lensName: option<lensName>,
    @ocaml.doc("<p>The status of lenses to be returned.</p>") @as("LensStatus")
    lensStatus: option<lensStatusType>,
    @ocaml.doc("<p>The type of lenses to be returned.</p>") @as("LensType")
    lensType: option<lensType>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
  }
  @ocaml.doc("<p>Output of a list lenses call.</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("LensSummaries") lensSummaries: option<lensSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "ListLensesCommand"
  let make = (~lensName=?, ~lensStatus=?, ~lensType=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({lensName, lensStatus, lensType, maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListLensShares = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for this request.</p>") @as("MaxResults")
    maxResults: option<listWorkloadSharesMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The Amazon Web Services account ID or IAM role with which the lens is shared.</p>"
    )
    @as("SharedWithPrefix")
    sharedWithPrefix: option<sharedWithPrefix>,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of lens share summaries.</p>") @as("LensShareSummaries")
    lensShareSummaries: option<lensShareSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListLensSharesCommand"
  let make = (~lensAlias, ~maxResults=?, ~nextToken=?, ~sharedWithPrefix=?, ()) =>
    new({maxResults, nextToken, sharedWithPrefix, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ImportLens = {
  type t
  type request = {
    @ocaml.doc("<p>Tags to associate to a lens.</p>") @as("Tags") tags: option<tagMap>,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>The JSON representation of a lens.</p>") @as("JSONString") jsonstring: lensJSON,
    @as("LensAlias") lensAlias: option<lensAlias>,
  }
  type response = {
    @ocaml.doc("<p>The status of the imported lens.</p>") @as("Status")
    status: option<importLensStatus>,
    @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "ImportLensCommand"
  let make = (~clientRequestToken, ~jsonstring, ~tags=?, ~lensAlias=?, ()) =>
    new({tags, clientRequestToken, jsonstring, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetWorkload = {
  type t
  @ocaml.doc("<p>Input to get a workload.</p>")
  type request = {@as("WorkloadId") workloadId: workloadId}
  @ocaml.doc("<p>Output of a get workload call.</p>")
  type response = {@as("Workload") workload: option<workload>}
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "GetWorkloadCommand"
  let make = (~workloadId, ()) => new({workloadId: workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLensReviewReport = {
  type t
  @ocaml.doc("<p>Input to get lens review report.</p>")
  type request = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a get lens review report call.</p>")
  type response = {
    @as("LensReviewReport") lensReviewReport: option<lensReviewReport>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "GetLensReviewReportCommand"
  let make = (~lensAlias, ~workloadId, ~milestoneNumber=?, ()) =>
    new({milestoneNumber, lensAlias, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLens = {
  type t
  type request = {
    @ocaml.doc("<p>The lens version to be retrieved.</p>") @as("LensVersion")
    lensVersion: option<lensVersion>,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {@ocaml.doc("<p>A lens return object.</p>") @as("Lens") lens: option<lens>}
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "GetLensCommand"
  let make = (~lensAlias, ~lensVersion=?, ()) => new({lensVersion, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExportLens = {
  type t
  type request = {
    @ocaml.doc("<p>The lens version to be exported.</p>") @as("LensVersion")
    lensVersion: option<lensVersion>,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {
    @ocaml.doc("<p>The JSON for the lens.</p>") @as("LensJSON") lensJSON: option<lensJSON>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "ExportLensCommand"
  let make = (~lensAlias, ~lensVersion=?, ()) => new({lensVersion, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateLenses = {
  type t
  @ocaml.doc("<p>Input to disassociate lens reviews.</p>")
  type request = {
    @as("LensAliases") lensAliases: lensAliases,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "DisassociateLensesCommand"
  let make = (~lensAliases, ~workloadId, ()) => new({lensAliases, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteWorkloadShare = {
  type t
  @ocaml.doc("<p>Input for Delete Workload Share</p>")
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("WorkloadId") workloadId: workloadId,
    @as("ShareId") shareId: shareId,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "DeleteWorkloadShareCommand"
  let make = (~clientRequestToken, ~workloadId, ~shareId, ()) =>
    new({clientRequestToken, workloadId, shareId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteWorkload = {
  type t
  @ocaml.doc("<p>Input for workload deletion.</p>")
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "DeleteWorkloadCommand"
  let make = (~clientRequestToken, ~workloadId, ()) => new({clientRequestToken, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLensShare = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("LensAlias") lensAlias: lensAlias,
    @as("ShareId") shareId: shareId,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "DeleteLensShareCommand"
  let make = (~clientRequestToken, ~lensAlias, ~shareId, ()) =>
    new({clientRequestToken, lensAlias, shareId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteLens = {
  type t
  type request = {
    @ocaml.doc("<p>The status of the lens to be deleted.</p>") @as("LensStatus")
    lensStatus: lensStatusType,
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "DeleteLensCommand"
  let make = (~lensStatus, ~clientRequestToken, ~lensAlias, ()) =>
    new({lensStatus, clientRequestToken, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateWorkloadShare = {
  type t
  @ocaml.doc("<p>Input for Create Workload Share</p>")
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("PermissionType") permissionType: permissionType,
    @as("SharedWith") sharedWith: sharedWith,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Input for Create Workload Share</p>")
  type response = {
    @as("ShareId") shareId: option<shareId>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "CreateWorkloadShareCommand"
  let make = (~clientRequestToken, ~permissionType, ~sharedWith, ~workloadId, ()) =>
    new({clientRequestToken, permissionType, sharedWith, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateWorkload = {
  type t
  @ocaml.doc("<p>Input for workload creation.</p>")
  type request = {
    @ocaml.doc("<p>The tags to be associated with the workload.</p>") @as("Tags")
    tags: option<tagMap>,
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
  @ocaml.doc("<p>Output of a create workload call.</p>")
  type response = {
    @as("WorkloadArn") workloadArn: option<workloadArn>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "CreateWorkloadCommand"
  let make = (
    ~clientRequestToken,
    ~lenses,
    ~reviewOwner,
    ~environment,
    ~description,
    ~workloadName,
    ~tags=?,
    ~notes=?,
    ~industry=?,
    ~industryType=?,
    ~architecturalDesign=?,
    ~pillarPriorities=?,
    ~nonAwsRegions=?,
    ~awsRegions=?,
    ~accountIds=?,
    (),
  ) =>
    new({
      tags,
      clientRequestToken,
      notes,
      lenses,
      industry,
      industryType,
      reviewOwner,
      architecturalDesign,
      pillarPriorities,
      nonAwsRegions,
      awsRegions,
      accountIds,
      environment,
      description,
      workloadName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateMilestone = {
  type t
  @ocaml.doc("<p>Input for milestone creation.</p>")
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("MilestoneName") milestoneName: milestoneName,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a create milestone call.</p>")
  type response = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "CreateMilestoneCommand"
  let make = (~clientRequestToken, ~milestoneName, ~workloadId, ()) =>
    new({clientRequestToken, milestoneName, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLensVersion = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @ocaml.doc("<p>Set to true if this new major lens version.</p>") @as("IsMajorVersion")
    isMajorVersion: option<isMajorVersion>,
    @ocaml.doc("<p>The version of the lens being created.</p>") @as("LensVersion")
    lensVersion: lensVersion,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {
    @ocaml.doc("<p>The version of the lens.</p>") @as("LensVersion")
    lensVersion: option<lensVersion>,
    @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "CreateLensVersionCommand"
  let make = (~clientRequestToken, ~lensVersion, ~lensAlias, ~isMajorVersion=?, ()) =>
    new({clientRequestToken, isMajorVersion, lensVersion, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLensShare = {
  type t
  type request = {
    @as("ClientRequestToken") clientRequestToken: clientRequestToken,
    @as("SharedWith") sharedWith: sharedWith,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {@as("ShareId") shareId: option<shareId>}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "CreateLensShareCommand"
  let make = (~clientRequestToken, ~sharedWith, ~lensAlias, ()) =>
    new({clientRequestToken, sharedWith, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateLenses = {
  type t
  @ocaml.doc("<p>Input to associate lens reviews.</p>")
  type request = {
    @as("LensAliases") lensAliases: lensAliases,
    @as("WorkloadId") workloadId: workloadId,
  }
  type response = {.}
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "AssociateLensesCommand"
  let make = (~lensAliases, ~workloadId, ()) => new({lensAliases, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListWorkloads = {
  type t
  @ocaml.doc("<p>Input to list all workloads.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for this request.</p>") @as("MaxResults")
    maxResults: option<listWorkloadsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadNamePrefix") workloadNamePrefix: option<workloadNamePrefix>,
  }
  @ocaml.doc("<p>Output of a list workloads call.</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadSummaries") workloadSummaries: option<workloadSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListWorkloadsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~workloadNamePrefix=?, ()) =>
    new({maxResults, nextToken, workloadNamePrefix})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListNotifications = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for this request.</p>") @as("MaxResults")
    maxResults: option<listNotificationsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @ocaml.doc("<p>List of lens notification summaries in a workload.</p>")
    @as("NotificationSummaries")
    notificationSummaries: option<notificationSummaries>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListNotificationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~workloadId=?, ()) =>
    new({maxResults, nextToken, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListLensReviews = {
  type t
  @ocaml.doc("<p>Input to list lens reviews.</p>")
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a list lens reviews call.</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("LensReviewSummaries") lensReviewSummaries: option<lensReviewSummaries>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListLensReviewsCommand"
  let make = (~workloadId, ~maxResults=?, ~nextToken=?, ~milestoneNumber=?, ()) =>
    new({maxResults, nextToken, milestoneNumber, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetMilestone = {
  type t
  @ocaml.doc("<p>Input to get a milestone.</p>")
  type request = {
    @as("MilestoneNumber") milestoneNumber: milestoneNumber,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a get milestone call.</p>")
  type response = {
    @as("Milestone") milestone: option<milestone>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "GetMilestoneCommand"
  let make = (~milestoneNumber, ~workloadId, ()) => new({milestoneNumber, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateLensReview = {
  type t
  @ocaml.doc("<p>Input for update lens review.</p>")
  type request = {
    @as("PillarNotes") pillarNotes: option<pillarNotes>,
    @as("LensNotes") lensNotes: option<notes>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a update lens review call.</p>")
  type response = {
    @as("LensReview") lensReview: option<lensReview>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "UpdateLensReviewCommand"
  let make = (~lensAlias, ~workloadId, ~pillarNotes=?, ~lensNotes=?, ()) =>
    new({pillarNotes, lensNotes, lensAlias, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAnswer = {
  type t
  @ocaml.doc("<p>Input to update answer.</p>")
  type request = {
    @ocaml.doc("<p>The reason why a question is not applicable to your workload.</p>") @as("Reason")
    reason: option<answerReason>,
    @as("IsApplicable") isApplicable: option<isApplicable>,
    @as("Notes") notes: option<notes>,
    @ocaml.doc("<p>A list of choices to update on a question in your workload.  The String key 
            corresponds to the choice ID to be updated.</p>")
    @as("ChoiceUpdates")
    choiceUpdates: option<choiceUpdates>,
    @as("SelectedChoices") selectedChoices: option<selectedChoices>,
    @as("QuestionId") questionId: questionId,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a update answer call.</p>")
  type response = {
    @as("Answer") answer: option<answer>,
    @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "UpdateAnswerCommand"
  let make = (
    ~questionId,
    ~lensAlias,
    ~workloadId,
    ~reason=?,
    ~isApplicable=?,
    ~notes=?,
    ~choiceUpdates=?,
    ~selectedChoices=?,
    (),
  ) =>
    new({
      reason,
      isApplicable,
      notes,
      choiceUpdates,
      selectedChoices,
      questionId,
      lensAlias,
      workloadId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListMilestones = {
  type t
  @ocaml.doc("<p>Input to list all milestones for a workload.</p>")
  type request = {
    @as("MaxResults") maxResults: option<maxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a list milestones call.</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneSummaries") milestoneSummaries: option<milestoneSummaries>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListMilestonesCommand"
  let make = (~workloadId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListLensReviewImprovements = {
  type t
  @ocaml.doc("<p>Input to list lens review improvements.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for this request.</p>") @as("MaxResults")
    maxResults: option<listLensReviewImprovementsMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("PillarId") pillarId: option<pillarId>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a list lens review improvements call.</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("ImprovementSummaries") improvementSummaries: option<improvementSummaries>,
    @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "ListLensReviewImprovementsCommand"
  let make = (
    ~lensAlias,
    ~workloadId,
    ~maxResults=?,
    ~nextToken=?,
    ~milestoneNumber=?,
    ~pillarId=?,
    (),
  ) => new({maxResults, nextToken, milestoneNumber, pillarId, lensAlias, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLensReview = {
  type t
  @ocaml.doc("<p>Input to get lens review.</p>")
  type request = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a get lens review call.</p>")
  type response = {
    @as("LensReview") lensReview: option<lensReview>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "GetLensReviewCommand"
  let make = (~lensAlias, ~workloadId, ~milestoneNumber=?, ()) =>
    new({milestoneNumber, lensAlias, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAnswer = {
  type t
  @ocaml.doc("<p>Input to get answer.</p>")
  type request = {
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("QuestionId") questionId: questionId,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a get answer call.</p>")
  type response = {
    @as("Answer") answer: option<answer>,
    @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "GetAnswerCommand"
  let make = (~questionId, ~lensAlias, ~workloadId, ~milestoneNumber=?, ()) =>
    new({milestoneNumber, questionId, lensAlias, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAnswers = {
  type t
  @ocaml.doc("<p>Input to list answers.</p>")
  type request = {
    @ocaml.doc("<p>The maximum number of results to return for this request.</p>") @as("MaxResults")
    maxResults: option<listAnswersMaxResults>,
    @as("NextToken") nextToken: option<nextToken>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("PillarId") pillarId: option<pillarId>,
    @as("LensAlias") lensAlias: lensAlias,
    @as("WorkloadId") workloadId: workloadId,
  }
  @ocaml.doc("<p>Output of a list answers call.</p>")
  type response = {
    @as("NextToken") nextToken: option<nextToken>,
    @as("AnswerSummaries") answerSummaries: option<answerSummaries>,
    @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
    @as("LensAlias") lensAlias: option<lensAlias>,
    @as("MilestoneNumber") milestoneNumber: option<milestoneNumber>,
    @as("WorkloadId") workloadId: option<workloadId>,
  }
  @module("@aws-sdk/client-wellarchitected") @new external new: request => t = "ListAnswersCommand"
  let make = (
    ~lensAlias,
    ~workloadId,
    ~maxResults=?,
    ~nextToken=?,
    ~milestoneNumber=?,
    ~pillarId=?,
    (),
  ) => new({maxResults, nextToken, milestoneNumber, pillarId, lensAlias, workloadId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLensVersionDifference = {
  type t
  type request = {
    @ocaml.doc("<p>The lens version to target a difference for.</p>") @as("TargetLensVersion")
    targetLensVersion: option<lensVersion>,
    @ocaml.doc("<p>The base version of the lens.</p>") @as("BaseLensVersion")
    baseLensVersion: option<lensVersion>,
    @as("LensAlias") lensAlias: lensAlias,
  }
  type response = {
    @as("VersionDifferences") versionDifferences: option<versionDifferences>,
    @ocaml.doc("<p>The latest version of the lens.</p>") @as("LatestLensVersion")
    latestLensVersion: option<lensVersion>,
    @ocaml.doc("<p>The target lens version for the lens.</p>") @as("TargetLensVersion")
    targetLensVersion: option<lensVersion>,
    @ocaml.doc("<p>The base version of the lens.</p>") @as("BaseLensVersion")
    baseLensVersion: option<lensVersion>,
    @ocaml.doc("<p>The ARN for the lens.</p>") @as("LensArn") lensArn: option<lensArn>,
    @as("LensAlias") lensAlias: option<lensAlias>,
  }
  @module("@aws-sdk/client-wellarchitected") @new
  external new: request => t = "GetLensVersionDifferenceCommand"
  let make = (~lensAlias, ~targetLensVersion=?, ~baseLensVersion=?, ()) =>
    new({targetLensVersion, baseLensVersion, lensAlias})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
