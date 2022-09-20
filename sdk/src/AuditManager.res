type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-auditmanager") @new
external createClient: unit => awsServiceClient = "AuditManagerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type organizationId = string
type validationExceptionReason = [
  | @as("other") #Other
  | @as("fieldValidationFailed") #FieldValidationFailed
  | @as("cannotParse") #CannotParse
  | @as("unknownOperation") #UnknownOperation
]
type username = string
type urlLink = string
type uuid = string
type troubleshootingText = string
type token = string
type timestampUUID = string
type timestamp_ = Js.Date.t
type testingInformation = string
type tagValue = string
type tagKey = string
type string_ = string
type sourceType = [
  | @as("MANUAL") #MANUAL
  | @as("AWS_API_Call") #AWS_API_Call
  | @as("AWS_Security_Hub") #AWS_Security_Hub
  | @as("AWS_Config") #AWS_Config
  | @as("AWS_Cloudtrail") #AWS_Cloudtrail
]
type sourceSetUpOption = [
  | @as("Procedural_Controls_Mapping") #Procedural_Controls_Mapping
  | @as("System_Controls_Mapping") #System_Controls_Mapping
]
type sourceName = string
type sourceFrequency = [@as("MONTHLY") #MONTHLY | @as("WEEKLY") #WEEKLY | @as("DAILY") #DAILY]
type sourceDescription = string
type snsArn = string
type shareRequestType = [@as("RECEIVED") #RECEIVED | @as("SENT") #SENT]
type shareRequestStatus = [
  | @as("REVOKED") #REVOKED
  | @as("DECLINED") #DECLINED
  | @as("EXPIRED") #EXPIRED
  | @as("FAILED") #FAILED
  | @as("EXPIRING") #EXPIRING
  | @as("SHARED") #SHARED
  | @as("REPLICATING") #REPLICATING
  | @as("ACTIVE") #ACTIVE
]
type shareRequestComment = string
type shareRequestAction = [@as("REVOKE") #REVOKE | @as("DECLINE") #DECLINE | @as("ACCEPT") #ACCEPT]
type settingAttribute = [
  | @as("DEFAULT_PROCESS_OWNERS") #DEFAULT_PROCESS_OWNERS
  | @as("DEFAULT_ASSESSMENT_REPORTS_DESTINATION") #DEFAULT_ASSESSMENT_REPORTS_DESTINATION
  | @as("SNS_TOPIC") #SNS_TOPIC
  | @as("IS_AWS_ORG_ENABLED") #IS_AWS_ORG_ENABLED
  | @as("ALL") #ALL
]
type snstopic = string
type s3Url = string
type roleType = [@as("RESOURCE_OWNER") #RESOURCE_OWNER | @as("PROCESS_OWNER") #PROCESS_OWNER]
type region = string
type objectTypeEnum = [
  | @as("ASSESSMENT_REPORT") #ASSESSMENT_REPORT
  | @as("DELEGATION") #DELEGATION
  | @as("CONTROL") #CONTROL
  | @as("CONTROL_SET") #CONTROL_SET
  | @as("ASSESSMENT") #ASSESSMENT
]
type nullableInteger = int
type nonEmptyString = string
@ocaml.doc("Max results in the page.") type maxResults = int
type lastUpdatedBy = string
type kmsKey = string
type keywordValue = string
type keywordInputType = [@as("SELECT_FROM_LIST") #SELECT_FROM_LIST]
type integer_ = int
type iamArn = string
type hyperlinkName = string
type genericArn = string
type frameworkType = [@as("Custom") #Custom | @as("Standard") #Standard]
type frameworkName = string
type frameworkDescription = string
type filename = string
type evidenceAttributeValue = string
type evidenceAttributeKey = string
type eventName = string
type errorMessage = string
type errorCode = string
type emailAddress = string
type delegationStatus = [
  | @as("COMPLETE") #COMPLETE
  | @as("UNDER_REVIEW") #UNDER_REVIEW
  | @as("IN_PROGRESS") #IN_PROGRESS
]
type delegationComment = string
type createdBy = string
type controlsCount = int
type controlType = [@as("Custom") #Custom | @as("Standard") #Standard]
type controlStatus = [
  | @as("INACTIVE") #INACTIVE
  | @as("REVIEWED") #REVIEWED
  | @as("UNDER_REVIEW") #UNDER_REVIEW
]
type controlSources = string
type controlSetsCount = int
type controlSetStatus = [
  | @as("REVIEWED") #REVIEWED
  | @as("UNDER_REVIEW") #UNDER_REVIEW
  | @as("ACTIVE") #ACTIVE
]
type controlSetName = string
type controlSetId = string
type controlResponse = [
  | @as("IGNORE") #IGNORE
  | @as("DEFER") #DEFER
  | @as("AUTOMATE") #AUTOMATE
  | @as("MANUAL") #MANUAL
]
type controlName = string
type controlDescription = string
type controlCommentBody = string
type complianceType = string
type boolean_ = bool
type auditManagerArn = string
type assessmentStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type assessmentReportStatus = [
  | @as("FAILED") #FAILED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("COMPLETE") #COMPLETE
]
type assessmentReportName = string
type assessmentReportDestinationType = [@as("S3") #S3]
type assessmentReportDescription = string
type assessmentName = string
type assessmentFrameworkDescription = string
type assessmentEvidenceFolderName = string
type assessmentDescription = string
type actionPlanTitle = string
type actionPlanInstructions = string
type actionEnum = [
  | @as("IMPORT_EVIDENCE") #IMPORT_EVIDENCE
  | @as("REVIEWED") #REVIEWED
  | @as("UNDER_REVIEW") #UNDER_REVIEW
  | @as("DELETE") #DELETE
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
  | @as("UPDATE_METADATA") #UPDATE_METADATA
  | @as("CREATE") #CREATE
]
type accountStatus = [
  | @as("PENDING_ACTIVATION") #PENDING_ACTIVATION
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
]
type accountName = string
type accountId = string
type awsserviceName = string
@ocaml.doc("<p> Indicates that the request has invalid or missing parameters for the field. </p>")
type validationExceptionField = {
  @ocaml.doc("<p> The body of the error message. </p>") message: string_,
  @ocaml.doc("<p> The name of the validation error. </p>") name: string_,
}
type validationErrors = array<nonEmptyString>
@ocaml.doc("<p> Short for uniform resource locator. A URL is used as a unique identifier to locate a
         resource on the internet. </p>")
type url = {
  @ocaml.doc("<p> The unique identifier for the internet resource. </p>") link: option<urlLink>,
  @ocaml.doc("<p> The name or word that's used as a hyperlink to the URL. </p>")
  hyperlinkName: option<hyperlinkName>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p> The keyword to search for in CloudTrail logs, Config rules,
         Security Hub checks, and Amazon Web Services API names. </p>")
type sourceKeyword = {
  @ocaml.doc("<p> The value of the keyword that's used to search CloudTrail logs, Config rules, Security Hub checks, and Amazon Web Services API names
         when mapping a control data source. </p>")
  keywordValue: option<keywordValue>,
  @ocaml.doc("<p> The method of input for the keyword. </p>")
  keywordInputType: option<keywordInputType>,
}
@ocaml.doc("<p> The metadata that's associated with the Amazon Web Service. </p>")
type serviceMetadata = {
  @ocaml.doc("<p> The category that the Amazon Web Service belongs to, such as compute, storage,
         or database. </p>")
  category: option<nonEmptyString>,
  @ocaml.doc("<p> The description of the Amazon Web Service. </p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p> The display name of the Amazon Web Service. </p>")
  displayName: option<nonEmptyString>,
  @ocaml.doc("<p> The name of the Amazon Web Service. </p>") name: option<awsserviceName>,
}
@ocaml.doc("<p> The wrapper that contains the Audit Manager role information of the current
         user. This includes the role type and IAM Amazon Resource Name (ARN).
      </p>")
type role = {
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the IAM role. </p>") roleArn: option<iamArn>,
  @ocaml.doc("<p> The type of customer persona. </p>
         <note>
            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
               <code>PROCESS_OWNER</code>. </p>
            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
               <code>PROCESS_OWNER</code>.</p>
            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
               <code>RESOURCE_OWNER</code>.</p>
         </note>")
  roleType: option<roleType>,
}
@ocaml.doc("<p> A system asset that's evaluated in an Audit Manager assessment. </p>")
type resource = {
  @ocaml.doc("<p> The value of the resource. </p>") value: option<string_>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) for the resource. </p>") arn: option<genericArn>,
}
@ocaml.doc("<p> The notification that informs a user of an update in Audit Manager. For
         example, this includes the notification that's sent when a control set is delegated for
         review. </p>")
type notification = {
  @ocaml.doc("<p> The sender of the notification. </p>") source: option<nonEmptyString>,
  @ocaml.doc("<p> The time when the notification was sent. </p>") eventTime: option<timestamp_>,
  @ocaml.doc("<p> The description of the notification. </p>") description: option<nonEmptyString>,
  @ocaml.doc("<p> Specifies the name of the control set that the notification is about. </p>")
  controlSetName: option<nonEmptyString>,
  @ocaml.doc("<p> The identifier for the control set. </p>") controlSetId: option<controlSetId>,
  @ocaml.doc("<p> The name of the related assessment. </p>") assessmentName: option<assessmentName>,
  @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: option<uuid>,
  @ocaml.doc("<p> The unique identifier for the notification. </p>") id: option<timestampUUID>,
}
@ocaml.doc("<p> Evidence that's uploaded to Audit Manager manually. </p>")
type manualEvidence = {
  @ocaml.doc("<p> The Amazon S3 URL that points to a manual evidence object. </p>")
  s3ResourcePath: option<s3Url>,
}
type keywords = array<keywordValue>
@ocaml.doc("<p>A summary of the latest analytics data for a specific active assessment.</p>   
         <p>This summary is a snapshot of the data that was collected on the <code>lastUpdated</code>
         date. It’s important to understand that the totals in <code>InsightsByAssessment</code> are
         daily counts based on this date — they aren’t a total sum to date. </p>
         <p>The <code>InsightsByAssessment</code> data is eventually consistent. This means that
         when you read data from <code>InsightsByAssessment</code>, the response might not instantly
         reflect the results of a recently completed write or update operation. If you repeat your
         read request after a few hours, the response returns the latest data.</p>
         <note>
            <p>If you delete an assessment or change its status to inactive,
            <code>InsightsByAssessment</code> includes data for that assessment as
            follows.</p>
            <ul>
               <li>   
                  <p>
                     <b>Inactive assessments</b> - If Audit Manager collected
               evidence for your assessment before you changed it inactive, that evidence is
               included in the <code>InsightsByAssessment</code> counts for that day.</p>
               </li>
               <li>      
                  <p>
                     <b>Deleted assessments</b> - If Audit Manager collected
               evidence for your assessment before you deleted it, that evidence isn't included
               in the <code>InsightsByAssessment</code> counts for that day.</p>
               </li>
            </ul>
         </note>")
type insightsByAssessment = {
  @ocaml.doc("<p>The time when the assessment insights were last updated.</p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The total number of controls in the assessment. </p>")
  totalAssessmentControlsCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of assessment controls that collected non-compliant evidence on the
         <code>lastUpdated</code> date. </p>")
  assessmentControlsCountByNoncompliantEvidence: option<nullableInteger>,
  @ocaml.doc("<p>The amount of evidence without a compliance check ruling. Evidence is inconclusive if the
         associated control uses Security Hub or Config as a data source
         and you didn't enable those services. This is also the case if a control uses a data source
         that doesn’t support compliance checks (for example, manual evidence, API calls, or CloudTrail). </p>
         <note>
            <p>If evidence has a compliance check status of <i>not applicable</i>, it's
         classified as <i>inconclusive</i> in <code>InsightsByAssessment</code>
         data.</p>
         </note>")
  inconclusiveEvidenceCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of compliance check evidence that Audit Manager classified as compliant.
         This includes evidence that was collected from Security Hub with a
         <i>Pass</i> ruling, or collected from Config with a
         <i>Compliant</i> ruling. </p>")
  compliantEvidenceCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of compliance check evidence that Audit Manager classified as non-compliant.
         This includes evidence that was collected from Security Hub with a
         <i>Fail</i> ruling, or collected from Config with a
         <i>Non-compliant</i> ruling. </p>")
  noncompliantEvidenceCount: option<nullableInteger>,
}
@ocaml.doc("<p>A summary of the latest analytics data for all your active assessments. </p>   
         <p>This summary is a snapshot of the data that your active assessments collected on the
         <code>lastUpdated</code> date. It’s important to understand that the following totals
         are daily counts based on this date — they aren’t a total sum to date. </p>
         <p>The <code>Insights</code> data is eventually consistent. This means that, when you read
         data from <code>Insights</code>, the response might not instantly reflect the results of a
         recently completed write or update operation. If you repeat your read request after a few
         hours, the response should return the latest data.</p>
         <note>
            <p>If you delete an assessment or change its status to inactive,
            <code>InsightsByAssessment</code> includes data for that assessment as
            follows.</p>
            <ul>
               <li>      
                  <p>
                     <b>Inactive assessments</b> - If Audit Manager collected
               evidence for your assessment before you changed it inactive, that evidence is
               included in the <code>InsightsByAssessment</code> counts for that day.</p>
               </li>
               <li>      
                  <p>
                     <b>Deleted assessments</b> - If Audit Manager collected
               evidence for your assessment before you deleted it, that evidence isn't included
               in the <code>InsightsByAssessment</code> counts for that day.</p>
               </li>
            </ul>
         </note>")
type insights = {
  @ocaml.doc("<p>The time when the cross-assessment insights were last updated. </p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The total number of controls across all active assessments. </p>")
  totalAssessmentControlsCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of assessment controls that collected non-compliant evidence on the
         <code>lastUpdated</code> date. </p>")
  assessmentControlsCountByNoncompliantEvidence: option<nullableInteger>,
  @ocaml.doc("<p>The number of evidence without a compliance check ruling. Evidence is inconclusive when the
         associated control uses Security Hub or Config as a data source
         but you didn't enable those services. This is also the case when a control uses a data
         source that doesn’t support compliance checks (for example: manual evidence, API calls, or
         CloudTrail). </p>
         <note>
            <p>If evidence has a compliance check status of <i>not applicable</i>, it's classed
         as <i>inconclusive</i> in <code>Insights</code> data.</p>
         </note>")
  inconclusiveEvidenceCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of compliance check evidence that Audit Manager classified as compliant on
         the <code>lastUpdated</code> date. This includes evidence that was collected from Security Hub with a <i>Pass</i> ruling, or collected from Config with a <i>Compliant</i> ruling. </p>")
  compliantEvidenceCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of compliance check evidence that Audit Manager classified as non-compliant
         on the <code>lastUpdated</code> date. This includes evidence that was collected from
         Security Hub with a <i>Fail</i> ruling, or collected from
         Config with a <i>Non-compliant</i> ruling. </p>")
  noncompliantEvidenceCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of active assessments in Audit Manager. </p>")
  activeAssessmentsCount: option<nullableInteger>,
}
@ocaml.doc("<p> The metadata of a framework, such as the name, ID, or description. </p>")
type frameworkMetadata = {
  @ocaml.doc("<p> The compliance standard that's associated with the framework. For example, this could
         be PCI DSS or HIPAA. </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p> The logo that's associated with the framework. </p>") logo: option<filename>,
  @ocaml.doc("<p> The description of the framework. </p>")
  description: option<assessmentFrameworkDescription>,
  @ocaml.doc("<p> The name of the framework. </p>") name: option<assessmentName>,
}
type evidenceSources = array<nonEmptyString>
@ocaml.doc("<p>A breakdown of the latest compliance check status for the evidence in your Audit Manager
         assessments. </p>")
type evidenceInsights = {
  @ocaml.doc("<p>The number of evidence that a compliance check ruling isn't available for. Evidence is
         inconclusive when the associated control uses Security Hub or Config as a data source but you didn't enable those services. This is also the case when a
         control uses a data source that doesn’t support compliance checks (for example, manual
         evidence, API calls, or CloudTrail). </p>
         <note>
            <p>If evidence has a compliance check status of <i>not applicable</i> in the
         console, it's classified as <i>inconclusive</i> in
         <code>EvidenceInsights</code> data.</p>
         </note>")
  inconclusiveEvidenceCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of compliance check evidence that Audit Manager classified as compliant. This
         includes evidence that was collected from Security Hub with a
         <i>Pass</i> ruling, or collected from Config with a
         <i>Compliant</i> ruling. </p>")
  compliantEvidenceCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of compliance check evidence that Audit Manager classified as non-compliant.
         This includes evidence that was collected from Security Hub with a
         <i>Fail</i> ruling, or collected from Config with a
         <i>Non-compliant</i> ruling. </p>")
  noncompliantEvidenceCount: option<nullableInteger>,
}
type evidenceIds = array<uuid>
type evidenceAttributes = Js.Dict.t<evidenceAttributeValue>
@ocaml.doc("<p> The metadata that's associated with the delegation. </p>")
type delegationMetadata = {
  @ocaml.doc("<p> Specifies the name of the control set that was delegated for review. </p>")
  controlSetName: option<nonEmptyString>,
  @ocaml.doc("<p> Specifies when the delegation was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the IAM role. </p>") roleArn: option<iamArn>,
  @ocaml.doc("<p> The current status of the delegation. </p>") status: option<delegationStatus>,
  @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: option<uuid>,
  @ocaml.doc("<p> The name of the associated assessment. </p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p> The unique identifier for the delegation. </p>") id: option<uuid>,
}
type delegationIds = array<uuid>
@ocaml.doc("<p> The assignment of a control set to a delegate for review. </p>")
type delegation = {
  @ocaml.doc("<p> The IAM user or role that created the delegation. </p>")
  createdBy: option<createdBy>,
  @ocaml.doc("<p> The comment that's related to the delegation. </p>")
  comment: option<delegationComment>,
  @ocaml.doc("<p> The identifier for the control set that's associated with the delegation. </p>")
  controlSetId: option<controlSetId>,
  @ocaml.doc("<p> Specifies when the delegation was last updated. </p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the delegation was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The type of customer persona. </p>
         <note>
            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
               <code>PROCESS_OWNER</code>. </p>
            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
               <code>PROCESS_OWNER</code>.</p>
            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
               <code>RESOURCE_OWNER</code>.</p>
         </note>")
  roleType: option<roleType>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the IAM role. </p>") roleArn: option<iamArn>,
  @ocaml.doc("<p> The status of the delegation. </p>") status: option<delegationStatus>,
  @ocaml.doc("<p> The identifier for the assessment that's associated with the delegation. </p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p> The name of the assessment that's associated with the delegation. </p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p> The unique identifier for the delegation. </p>") id: option<uuid>,
}
@ocaml.doc("<p> A collection of attributes that's used to create a delegation for an assessment in
         Audit Manager. </p>")
type createDelegationRequest = {
  @ocaml.doc("<p> The type of customer persona. </p>
         <note>
            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be
            <code>PROCESS_OWNER</code>. </p>
            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be
            <code>PROCESS_OWNER</code>.</p>
            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be
            <code>RESOURCE_OWNER</code>.</p>
         </note>")
  roleType: option<roleType>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the IAM role. </p>") roleArn: option<iamArn>,
  @ocaml.doc("<p> The unique identifier for the control set. </p>")
  controlSetId: option<controlSetId>,
  @ocaml.doc("<p> A comment that's related to the delegation request. </p>")
  comment: option<delegationComment>,
}
@ocaml.doc("<p> The control entity attributes that uniquely identify an existing control to be added to
         a framework in Audit Manager. </p>")
type createAssessmentFrameworkControl = {
  @ocaml.doc("<p> The unique identifier of the control. </p>") id: uuid,
}
@ocaml.doc("<p> The metadata that's associated with the standard control or custom control. </p>")
type controlMetadata = {
  @ocaml.doc("<p> Specifies when the control was most recently updated. </p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the control was created. </p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p> The data source that determines where Audit Manager collects evidence from for
         the control. </p>")
  controlSources: option<controlSources>,
  @ocaml.doc("<p> The name of the control. </p>") name: option<controlName>,
  @ocaml.doc("<p> The unique identifier for the control. </p>") id: option<uuid>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the control. </p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p> A comment that's posted by a user on a control. This includes the author's name, the
         comment text, and a timestamp. </p>")
type controlComment = {
  @ocaml.doc("<p> The time when the comment was posted. </p>") postedDate: option<timestamp_>,
  @ocaml.doc("<p> The body text of a control comment. </p>")
  commentBody: option<controlCommentBody>,
  @ocaml.doc("<p> The name of the user who authored the comment. </p>")
  authorName: option<username>,
}
@ocaml.doc("<p> The record of a change within Audit Manager. For example, this could be the
         status change of an assessment or the delegation of a control set. </p>")
type changeLog = {
  @ocaml.doc("<p> The IAM user or role that performed the action. </p>") createdBy: option<iamArn>,
  @ocaml.doc(
    "<p> The time when the action was performed and the changelog record was created. </p>"
  )
  createdAt: option<timestamp_>,
  @ocaml.doc("<p> The action that was performed. </p>") action: option<actionEnum>,
  @ocaml.doc("<p> The name of the object that changed. This could be the name of an assessment, control,
         or control set.</p>")
  objectName: option<nonEmptyString>,
  @ocaml.doc(
    "<p> The object that was changed, such as an assessment, control, or control set. </p>"
  )
  objectType: option<objectTypeEnum>,
}
@ocaml.doc("<p> An error entity for the <code>BatchDeleteDelegationByAssessment</code> API. This is
         used to provide more meaningful errors than a simple string message. </p>")
type batchDeleteDelegationByAssessmentError = {
  @ocaml.doc("<p> The error message that the <code>BatchDeleteDelegationByAssessment</code> API returned.
      </p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p> The error code that the <code>BatchDeleteDelegationByAssessment</code> API returned.
      </p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p> The identifier for the delegation. </p>") delegationId: option<uuid>,
}
@ocaml.doc("<p> The location where Audit Manager saves assessment reports for the given
         assessment. </p>")
type assessmentReportsDestination = {
  @ocaml.doc("<p> The destination of the assessment report. </p>") destination: option<s3Url>,
  @ocaml.doc("<p> The destination type, such as Amazon S3. </p>")
  destinationType: option<assessmentReportDestinationType>,
}
@ocaml.doc(
  "<p> The metadata objects that are associated with the specified assessment report. </p>"
)
type assessmentReportMetadata = {
  @ocaml.doc("<p> Specifies when the assessment report was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The current status of the assessment report. </p>")
  status: option<assessmentReportStatus>,
  @ocaml.doc("<p> The name of the user who created the assessment report. </p>")
  author: option<username>,
  @ocaml.doc("<p>The name of the associated assessment. </p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p> The unique identifier for the associated assessment. </p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p> The description of the assessment report. </p>")
  description: option<assessmentReportDescription>,
  @ocaml.doc("<p> The name of the assessment report. </p>") name: option<assessmentReportName>,
  @ocaml.doc("<p> The unique identifier for the assessment report. </p>") id: option<uuid>,
}
@ocaml.doc("<p> An error entity for the <code>AssessmentReportEvidence</code> API. This is used to
         provide more meaningful errors than a simple string message. </p>")
type assessmentReportEvidenceError = {
  @ocaml.doc(
    "<p> The error message that the <code>AssessmentReportEvidence</code> API returned. </p>"
  )
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p> The error code that the <code>AssessmentReportEvidence</code> API returned. </p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p> The identifier for the evidence. </p>") evidenceId: option<uuid>,
}
@ocaml.doc("<p> A finalized document that's generated from an Audit Manager assessment. These
         reports summarize the relevant evidence that was collected for your audit, and link to the
         relevant evidence folders. These evidence folders are named and organized according to the
         controls that are specified in your assessment. </p>")
type assessmentReport = {
  @ocaml.doc("<p> Specifies when the assessment report was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The current status of the specified assessment report. </p>")
  status: option<assessmentReportStatus>,
  @ocaml.doc("<p> The name of the user who created the assessment report. </p>")
  author: option<username>,
  @ocaml.doc("<p> The name of the associated assessment. </p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p> The identifier for the specified assessment. </p>") assessmentId: option<uuid>,
  @ocaml.doc("<p> The identifier for the specified Amazon Web Services account. </p>")
  awsAccountId: option<accountId>,
  @ocaml.doc("<p> The description of the specified assessment report. </p>")
  description: option<assessmentReportDescription>,
  @ocaml.doc("<p> The name that's given to the assessment report. </p>")
  name: option<assessmentReportName>,
  @ocaml.doc("<p> The unique identifier for the assessment report. </p>") id: option<uuid>,
}
@ocaml.doc("<p> Represents a share request for a custom framework in Audit Manager. </p>")
type assessmentFrameworkShareRequest = {
  @ocaml.doc(
    "<p>The compliance type that the shared custom framework supports, such as CIS or HIPAA.</p>"
  )
  complianceType: option<complianceType>,
  @ocaml.doc("<p>The number of custom controls that are part of the shared custom framework.</p>")
  customControlsCount: option<nullableInteger>,
  @ocaml.doc(
    "<p>The number of standard controls that are part of the shared custom framework. </p>"
  )
  standardControlsCount: option<nullableInteger>,
  @ocaml.doc("<p> An optional comment from the sender about the share request. </p>")
  comment: option<shareRequestComment>,
  @ocaml.doc("<p> Specifies when the share request was last updated. </p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p> The time when the share request was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The time when the share request expires. </p>")
  expirationTime: option<timestamp_>,
  @ocaml.doc("<p> The Amazon Web Services Region of the recipient. </p>")
  destinationRegion: option<region>,
  @ocaml.doc("<p> The Amazon Web Services account of the recipient. </p>")
  destinationAccount: option<accountId>,
  @ocaml.doc("<p> The Amazon Web Services account of the sender. </p>")
  sourceAccount: option<accountId>,
  @ocaml.doc("<p> The status of the share request. </p>") status: option<shareRequestStatus>,
  @ocaml.doc("<p>The description of the shared custom framework.</p>")
  frameworkDescription: option<frameworkDescription>,
  @ocaml.doc("<p> The name of the custom framework that the share request is for. </p>")
  frameworkName: option<frameworkName>,
  @ocaml.doc("<p>The unique identifier for the shared custom framework. </p>")
  frameworkId: option<uuid>,
  @ocaml.doc("<p> The unique identifier for the share request. </p>") id: option<uuid>,
}
@ocaml.doc(
  "<p> The metadata that's associated with a standard framework or a custom framework. </p>"
)
type assessmentFrameworkMetadata = {
  @ocaml.doc("<p> Specifies when the framework was most recently updated. </p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the framework was created. </p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p> The number of control sets that are associated with the framework. </p>")
  controlSetsCount: option<controlSetsCount>,
  @ocaml.doc("<p> The number of controls that are associated with the framework. </p>")
  controlsCount: option<controlsCount>,
  @ocaml.doc("<p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
      </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p> The logo that's associated with the framework. </p>") logo: option<filename>,
  @ocaml.doc("<p> The description of the framework. </p>")
  description: option<frameworkDescription>,
  @ocaml.doc("<p> The name of the framework. </p>") name: option<frameworkName>,
  @ocaml.doc("<p> The framework type, such as a standard framework or a custom framework. </p>")
  @as("type")
  type_: option<frameworkType>,
  @ocaml.doc("<p> The unique identifier for the framework. </p>") id: option<uuid>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the framework. </p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p> The folder where Audit Manager stores evidence for an assessment. </p>")
type assessmentEvidenceFolder = {
  @ocaml.doc("<p> The total number of Amazon Web Services resources that were assessed to generate the
         evidence. </p>")
  evidenceAwsServiceSourceCount: option<integer_>,
  @ocaml.doc("<p> The number of evidence that falls under the user activity category. This evidence is
         collected from CloudTrail logs. </p>")
  evidenceByTypeUserActivityCount: option<integer_>,
  @ocaml.doc("<p> The total number of issues that were reported directly from Security Hub,
            Config, or both. </p>")
  evidenceByTypeComplianceCheckIssuesCount: option<integer_>,
  @ocaml.doc("<p> The number of evidence that falls under the compliance check category. This evidence is
         collected from Config or Security Hub. </p>")
  evidenceByTypeComplianceCheckCount: option<integer_>,
  @ocaml.doc("<p> The number of evidence that falls under the manual category. This evidence is imported
         manually. </p>")
  evidenceByTypeManualCount: option<integer_>,
  @ocaml.doc("<p> The number of evidence that falls under the configuration data category. This
            evidence is collected from configuration snapshots of other Amazon Web Services services such as Amazon EC2, Amazon S3, or IAM. </p>")
  evidenceByTypeConfigurationDataCount: option<integer_>,
  @ocaml.doc("<p> The amount of evidence that's included in the evidence folder. </p>")
  evidenceResourcesIncludedCount: option<integer_>,
  @ocaml.doc("<p> The name of the control. </p>") controlName: option<controlName>,
  @ocaml.doc("<p> The total count of evidence that's included in the assessment report. </p>")
  assessmentReportSelectionCount: option<integer_>,
  @ocaml.doc("<p> The total amount of evidence in the evidence folder. </p>")
  totalEvidence: option<integer_>,
  @ocaml.doc("<p> The name of the user who created the evidence folder. </p>")
  author: option<string_>,
  @ocaml.doc("<p> The Amazon Web Service that the evidence was collected from. </p>")
  dataSource: option<string_>,
  @ocaml.doc("<p> The identifier for the folder that the evidence is stored in. </p>")
  id: option<uuid>,
  @ocaml.doc("<p> The unique identifier for the control. </p>") controlId: option<uuid>,
  @ocaml.doc("<p> The identifier for the control set. </p>") controlSetId: option<controlSetId>,
  @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: option<uuid>,
  @ocaml.doc("<p> The date when the first evidence was added to the evidence folder. </p>")
  date: option<timestamp_>,
  @ocaml.doc("<p> The name of the evidence folder. </p>")
  name: option<assessmentEvidenceFolderName>,
}
@ocaml.doc("<p> An Amazon Web Service such as Amazon S3 or CloudTrail.
      </p>")
type awsservice = {
  @ocaml.doc("<p> The name of the Amazon Web Service. </p>") serviceName: option<awsserviceName>,
}
@ocaml.doc("<p> The wrapper of Amazon Web Services account details, such as account ID or email address.
      </p>")
type awsaccount = {
  @ocaml.doc("<p> The name of the Amazon Web Services account. </p>") name: option<accountName>,
  @ocaml.doc("<p> The email address that's associated with the Amazon Web Services account. </p>")
  emailAddress: option<emailAddress>,
  @ocaml.doc("<p> The identifier for the Amazon Web Services account. </p>") id: option<accountId>,
}
type validationExceptionFieldList = array<validationExceptionField>
type serviceMetadataList = array<serviceMetadata>
type roles = array<role>
type resources = array<resource>
type notifications = array<notification>
type manualEvidenceList = array<manualEvidence>
type frameworkMetadataList = array<assessmentFrameworkMetadata>
type delegations = array<delegation>
type delegationMetadataList = array<delegationMetadata>
type createDelegationRequests = array<createDelegationRequest>
@ocaml.doc("<p> The control mapping fields that represent the source for evidence collection, along
         with related parameters and metadata. This doesn't contain <code>mappingID</code>. </p>")
type createControlMappingSource = {
  @ocaml.doc("<p> The instructions for troubleshooting the control. </p>")
  troubleshootingText: option<troubleshootingText>,
  @ocaml.doc("<p> The frequency of evidence collection for the control mapping source. </p>")
  sourceFrequency: option<sourceFrequency>,
  sourceKeyword: option<sourceKeyword>,
  @ocaml.doc("<p> Specifies one of the five types of data sources for evidence collection. </p>")
  sourceType: option<sourceType>,
  @ocaml.doc("<p> The setup option for the data source, which reflects if the evidence collection is
         automated or manual. </p>")
  sourceSetUpOption: option<sourceSetUpOption>,
  @ocaml.doc("<p> The description of the data source that determines where Audit Manager collects
         evidence from for the control. </p>")
  sourceDescription: option<sourceDescription>,
  @ocaml.doc("<p> The name of the control mapping data source. </p>")
  sourceName: option<sourceName>,
}
type createAssessmentFrameworkControls = array<createAssessmentFrameworkControl>
type controlMetadataList = array<controlMetadata>
@ocaml.doc("<p> The data source that determines where Audit Manager collects evidence from for
         the control. </p>")
type controlMappingSource = {
  @ocaml.doc("<p> The instructions for troubleshooting the control. </p>")
  troubleshootingText: option<troubleshootingText>,
  @ocaml.doc("<p> The frequency of evidence collection for the control mapping source. </p>")
  sourceFrequency: option<sourceFrequency>,
  sourceKeyword: option<sourceKeyword>,
  @ocaml.doc("<p> Specifies one of the five types of data sources for evidence collection. </p>")
  sourceType: option<sourceType>,
  @ocaml.doc("<p> The setup option for the data source. This option reflects if the evidence collection
         is automated or manual. </p>")
  sourceSetUpOption: option<sourceSetUpOption>,
  @ocaml.doc("<p> The description of the source. </p>")
  sourceDescription: option<sourceDescription>,
  @ocaml.doc("<p> The name of the source. </p>") sourceName: option<sourceName>,
  @ocaml.doc("<p> The unique identifier for the source. </p>") sourceId: option<uuid>,
}
@ocaml.doc("<p>A summary of the latest analytics data for a specific control. </p>
         <p>This data reflects the total counts for the specified control across all active assessments. Control insights are grouped by control domain, and ranked by the highest total count of non-compliant evidence.</p>")
type controlInsightsMetadataItem = {
  @ocaml.doc("<p>The time when the control insights were last updated. </p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>A breakdown of the compliance check status for the evidence that’s associated with the
         control. </p>")
  evidenceInsights: option<evidenceInsights>,
  @ocaml.doc("<p>The unique identifier for the control. </p>") id: option<uuid>,
  @ocaml.doc("<p>The name of the control. </p>") name: option<nonEmptyString>,
}
@ocaml.doc("<p>A summary of the latest analytics data for a specific control in a specific active
         assessment.</p>
         <p>Control insights are grouped by control domain, and ranked by the highest total count of non-compliant evidence. 
      </p>")
type controlInsightsMetadataByAssessmentItem = {
  @ocaml.doc("<p>The time when the assessment control insights were last updated. </p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>The name of the control set that the assessment control belongs to. </p>")
  controlSetName: option<nonEmptyString>,
  @ocaml.doc("<p>A breakdown of the compliance check status for the evidence that’s associated with the
         assessment control. </p>")
  evidenceInsights: option<evidenceInsights>,
  @ocaml.doc("<p>The unique identifier for the assessment control. </p>") id: option<uuid>,
  @ocaml.doc("<p>The name of the assessment control. </p>") name: option<nonEmptyString>,
}
@ocaml.doc("<p>A summary of the latest analytics data for a specific control domain.</p>
         <p>Control domain insights are grouped by control domain, and ranked by the highest total count of non-compliant evidence.</p>")
type controlDomainInsights = {
  @ocaml.doc("<p>The time when the control domain insights were last updated. </p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>A breakdown of the compliance check status for the evidence that’s associated with the control
         domain. </p>")
  evidenceInsights: option<evidenceInsights>,
  @ocaml.doc("<p>The total number of controls in the control domain. </p>")
  totalControlsCount: option<nullableInteger>,
  @ocaml.doc("<p>The number of controls in the control domain that collected non-compliant evidence on the
         <code>lastUpdated</code> date. </p>")
  controlsCountByNoncompliantEvidence: option<nullableInteger>,
  @ocaml.doc("<p>The unique identifier for the control domain. </p>") id: option<uuid>,
  @ocaml.doc("<p>The name of the control domain. </p>") name: option<nonEmptyString>,
}
type controlComments = array<controlComment>
type changeLogs = array<changeLog>
@ocaml.doc("<p> An error entity for the <code>BatchImportEvidenceToAssessmentControl</code> API. This
         is used to provide more meaningful errors than a simple string message. </p>")
type batchImportEvidenceToAssessmentControlError = {
  @ocaml.doc("<p> The error message that the <code>BatchImportEvidenceToAssessmentControl</code> API
         returned. </p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p> The error code that the <code>BatchImportEvidenceToAssessmentControl</code> API
         returned. </p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p> Manual evidence that can't be collected automatically by Audit Manager. </p>")
  manualEvidence: option<manualEvidence>,
}
type batchDeleteDelegationByAssessmentErrors = array<batchDeleteDelegationByAssessmentError>
@ocaml.doc("<p> An error entity for the <code>BatchCreateDelegationByAssessment</code> API. This is
         used to provide more meaningful errors than a simple string message. </p>")
type batchCreateDelegationByAssessmentError = {
  @ocaml.doc("<p> The error message that the <code>BatchCreateDelegationByAssessment</code> API returned.
      </p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p> The error code that the <code>BatchCreateDelegationByAssessment</code> API returned.
      </p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p> The API request to batch create delegations in Audit Manager. </p>")
  createDelegationRequest: option<createDelegationRequest>,
}
type assessmentReportsMetadata = array<assessmentReportMetadata>
type assessmentReportEvidenceErrors = array<assessmentReportEvidenceError>
type assessmentFrameworkShareRequestList = array<assessmentFrameworkShareRequest>
type assessmentEvidenceFolders = array<assessmentEvidenceFolder>
type awsservices = array<awsservice>
type awsaccounts = array<awsaccount>
@ocaml.doc(
  "<p> A <code>controlSet</code> entity that represents a collection of controls in Audit Manager. This doesn't contain the control set ID. </p>"
)
type updateAssessmentFrameworkControlSet = {
  @ocaml.doc("<p> The list of controls that are contained within the control set. </p>")
  controls: createAssessmentFrameworkControls,
  @ocaml.doc("<p> The name of the control set. </p>") name: controlSetName,
  @ocaml.doc("<p> The unique identifier for the control set. </p>") id: option<controlSetName>,
}
@ocaml.doc("<p> The settings object that holds all supported Audit Manager settings. </p>")
type settings = {
  @ocaml.doc("<p> The KMS key details. </p>") kmsKey: option<kmsKey>,
  @ocaml.doc("<p> The designated default audit owners. </p>") defaultProcessOwners: option<roles>,
  @ocaml.doc("<p> The default storage destination for assessment reports. </p>")
  defaultAssessmentReportsDestination: option<assessmentReportsDestination>,
  @ocaml.doc("<p> The designated Amazon Simple Notification Service (Amazon SNS) topic. </p>")
  snsTopic: option<snstopic>,
  @ocaml.doc("<p> Specifies whether Organizations is enabled. </p>")
  isAwsOrgEnabled: option<boolean_>,
}
@ocaml.doc("<p> The wrapper that contains the Amazon Web Services accounts and services that are in
         scope for the assessment. </p>")
type scope = {
  @ocaml.doc("<p> The Amazon Web Services services that are included in the scope of the assessment.
      </p>")
  awsServices: option<awsservices>,
  @ocaml.doc("<p> The Amazon Web Services accounts that are included in the scope of the assessment.
      </p>")
  awsAccounts: option<awsaccounts>,
}
@ocaml.doc("<p> A record that contains the information needed to demonstrate compliance with the
         requirements specified by a control. Examples of evidence include change activity triggered
         by a user, or a system configuration snapshot. </p>")
type evidence = {
  @ocaml.doc("<p> Specifies whether the evidence is included in the assessment report. </p>")
  assessmentReportSelection: option<string_>,
  @ocaml.doc("<p> The identifier for the evidence. </p>") id: option<uuid>,
  @ocaml.doc("<p> The identifier for the folder that the evidence is stored in. </p>")
  evidenceFolderId: option<uuid>,
  @ocaml.doc("<p> The identifier for the Amazon Web Services account. </p>")
  awsAccountId: option<accountId>,
  @ocaml.doc("<p> The Amazon Web Services account that the evidence is collected from, and its
         organization path. </p>")
  awsOrganization: option<string_>,
  @ocaml.doc("<p> The evaluation status for evidence that falls under the compliance check category. For
         evidence collected from Security Hub, a <i>Pass</i> or
         <i>Fail</i> result is shown. For evidence collected from Config, a <i>Compliant</i> or <i>Noncompliant</i>
         result is shown. </p>")
  complianceCheck: option<string_>,
  @ocaml.doc("<p> The unique identifier for the IAM user or role that's associated with
         the evidence. </p>")
  iamId: option<iamArn>,
  @ocaml.doc("<p> The names and values that are used by the evidence event. This includes an attribute
         name (such as <code>allowUsersToChangePassword</code>) and value (such as <code>true</code>
         or <code>false</code>). </p>")
  attributes: option<evidenceAttributes>,
  @ocaml.doc("<p> The list of resources that are assessed to generate the evidence. </p>")
  resourcesIncluded: option<resources>,
  @ocaml.doc("<p> The type of automated evidence. </p>") evidenceByType: option<string_>,
  @ocaml.doc("<p> The name of the evidence event. </p>") eventName: option<eventName>,
  @ocaml.doc("<p> The Amazon Web Service that the evidence is collected from. </p>")
  eventSource: option<awsserviceName>,
  @ocaml.doc("<p> The timestamp that represents when the evidence was collected. </p>")
  time: option<timestamp_>,
  @ocaml.doc("<p> The identifier for the Amazon Web Services account. </p>")
  evidenceAwsAccountId: option<accountId>,
  @ocaml.doc("<p> The data source where the evidence was collected from. </p>")
  dataSource: option<string_>,
}
type createControlMappingSources = array<createControlMappingSource>
@ocaml.doc(
  "<p> A <code>controlSet</code> entity that represents a collection of controls in Audit Manager. This doesn't contain the control set ID. </p>"
)
type createAssessmentFrameworkControlSet = {
  @ocaml.doc("<p> The list of controls within the control set. This doesn't contain the control set ID.
      </p>")
  controls: option<createAssessmentFrameworkControls>,
  @ocaml.doc("<p> The name of the control set. </p>") name: controlSetName,
}
type controlMappingSources = array<controlMappingSource>
type controlInsightsMetadataByAssessment = array<controlInsightsMetadataByAssessmentItem>
type controlInsightsMetadata = array<controlInsightsMetadataItem>
type controlDomainInsightsList = array<controlDomainInsights>
type batchImportEvidenceToAssessmentControlErrors = array<
  batchImportEvidenceToAssessmentControlError,
>
type batchCreateDelegationByAssessmentErrors = array<batchCreateDelegationByAssessmentError>
@ocaml.doc("<p> A metadata object that's associated with an assessment in Audit Manager.
      </p>")
type assessmentMetadataItem = {
  @ocaml.doc("<p> The time of the most recent update. </p>") lastUpdated: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the assessment was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The delegations that are associated with the assessment. </p>")
  delegations: option<delegations>,
  @ocaml.doc("<p> The roles that are associated with the assessment. </p>") roles: option<roles>,
  @ocaml.doc("<p> The current status of the assessment. </p>") status: option<assessmentStatus>,
  @ocaml.doc("<p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.
      </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p> The unique identifier for the assessment. </p>") id: option<uuid>,
  @ocaml.doc("<p> The name of the assessment. </p>") name: option<assessmentName>,
}
@ocaml.doc(
  "<p> The control entity that represents a standard control or a custom control in an Audit Manager assessment. </p>"
)
type assessmentControl = {
  @ocaml.doc("<p> The amount of evidence in the assessment report. </p>")
  assessmentReportEvidenceCount: option<integer_>,
  @ocaml.doc("<p> The amount of evidence that's generated for the control. </p>")
  evidenceCount: option<integer_>,
  @ocaml.doc("<p> The list of data sources for the evidence. </p>")
  evidenceSources: option<evidenceSources>,
  @ocaml.doc("<p> The list of comments that's attached to the control. </p>")
  comments: option<controlComments>,
  @ocaml.doc("<p> The response of the control. </p>") response: option<controlResponse>,
  @ocaml.doc("<p> The status of the control. </p>") status: option<controlStatus>,
  @ocaml.doc("<p> The description of the control. </p>") description: option<controlDescription>,
  @ocaml.doc("<p> The name of the control. </p>") name: option<controlName>,
  @ocaml.doc("<p> The identifier for the control. </p>") id: option<uuid>,
}
type updateAssessmentFrameworkControlSets = array<updateAssessmentFrameworkControlSet>
type listAssessmentMetadata = array<assessmentMetadataItem>
type evidenceList = array<evidence>
type createAssessmentFrameworkControlSets = array<createAssessmentFrameworkControlSet>
@ocaml.doc("<p> A control in Audit Manager. </p>")
type control = {
  @ocaml.doc("<p> The tags associated with the control. </p>") tags: option<tagMap>,
  @ocaml.doc("<p> The IAM user or role that most recently updated the control. </p>")
  lastUpdatedBy: option<lastUpdatedBy>,
  @ocaml.doc("<p> The IAM user or role that created the control. </p>")
  createdBy: option<createdBy>,
  @ocaml.doc("<p> Specifies when the control was most recently updated. </p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the control was created. </p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p> The data mapping sources for the control. </p>")
  controlMappingSources: option<controlMappingSources>,
  @ocaml.doc("<p> The data source that determines where Audit Manager collects evidence from for
         the control. </p>")
  controlSources: option<controlSources>,
  @ocaml.doc("<p> The recommended actions to carry out if the control isn't fulfilled. </p>")
  actionPlanInstructions: option<actionPlanInstructions>,
  @ocaml.doc("<p> The title of the action plan for remediating the control. </p>")
  actionPlanTitle: option<actionPlanTitle>,
  @ocaml.doc("<p> The steps that you should follow to determine if the control has been satisfied.
      </p>")
  testingInformation: option<testingInformation>,
  @ocaml.doc("<p> The description of the control. </p>") description: option<controlDescription>,
  @ocaml.doc("<p> The name of the control. </p>") name: option<controlName>,
  @ocaml.doc("<p> The type of control, such as a custom control or a standard control. </p>")
  @as("type")
  type_: option<controlType>,
  @ocaml.doc("<p> The unique identifier for the control. </p>") id: option<uuid>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the control. </p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p> The metadata that's associated with the specified assessment. </p>")
type assessmentMetadata = {
  @ocaml.doc("<p> The time of the most recent update. </p>") lastUpdated: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the assessment was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p> The delegations that are associated with the assessment. </p>")
  delegations: option<delegations>,
  @ocaml.doc("<p> The roles that are associated with the assessment. </p>") roles: option<roles>,
  @ocaml.doc("<p> The wrapper of Amazon Web Services accounts and services that are in scope for the
         assessment. </p>")
  scope: option<scope>,
  @ocaml.doc("<p> The destination that evidence reports are stored in for the assessment. </p>")
  assessmentReportsDestination: option<assessmentReportsDestination>,
  @ocaml.doc("<p> The overall status of the assessment. </p>") status: option<assessmentStatus>,
  @ocaml.doc("<p> The name of the compliance standard that's related to the assessment, such as PCI-DSS.
      </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p> The description of the assessment. </p>")
  description: option<assessmentDescription>,
  @ocaml.doc("<p> The unique identifier for the assessment. </p>") id: option<uuid>,
  @ocaml.doc("<p> The name of the assessment. </p>") name: option<assessmentName>,
}
type assessmentControls = array<assessmentControl>
type controls = array<control>
@ocaml.doc("<p> Represents a set of controls in an Audit Manager assessment. </p>")
type assessmentControlSet = {
  @ocaml.doc("<p> The total number of evidence objects that are uploaded manually to the control set.
      </p>")
  manualEvidenceCount: option<integer_>,
  @ocaml.doc("<p> The total number of evidence objects that are retrieved automatically for the control
         set. </p>")
  systemEvidenceCount: option<integer_>,
  @ocaml.doc("<p> The delegations that are associated with the control set. </p>")
  delegations: option<delegations>,
  @ocaml.doc("<p> The list of controls that's contained with the control set. </p>")
  controls: option<assessmentControls>,
  @ocaml.doc("<p> The roles that are associated with the control set. </p>") roles: option<roles>,
  @ocaml.doc("<p> Specifies the current status of the control set. </p>")
  status: option<controlSetStatus>,
  @ocaml.doc("<p> The description for the control set. </p>") description: option<nonEmptyString>,
  @ocaml.doc("<p> The identifier of the control set in the assessment. This is the control set name in a
         plain string format. </p>")
  id: option<controlSetId>,
}
@ocaml.doc("<p> A set of controls in Audit Manager. </p>")
type controlSet = {
  @ocaml.doc("<p> The list of controls within the control set. </p>") controls: option<controls>,
  @ocaml.doc("<p> The name of the control set. </p>") name: option<controlSetName>,
  @ocaml.doc("<p> The identifier of the control set in the assessment. This is the control set name in a
         plain string format. </p>")
  id: option<uuid>,
}
type assessmentControlSets = array<assessmentControlSet>
type controlSets = array<controlSet>
@ocaml.doc("<p> The file used to structure and automate Audit Manager assessments for a given
         compliance standard. </p>")
type assessmentFramework = {
  @ocaml.doc("<p> The control sets that are associated with the framework. </p>")
  controlSets: option<assessmentControlSets>,
  metadata: option<frameworkMetadata>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the framework. </p>")
  arn: option<auditManagerArn>,
  @ocaml.doc("<p> The unique identifier for the framework. </p>") id: option<uuid>,
}
@ocaml.doc("<p> The file that's used to structure and automate Audit Manager assessments for a
         given compliance standard. </p>")
type framework = {
  @ocaml.doc("<p> The tags that are associated with the framework. </p>") tags: option<tagMap>,
  @ocaml.doc("<p> The IAM user or role that most recently updated the framework. </p>")
  lastUpdatedBy: option<lastUpdatedBy>,
  @ocaml.doc("<p> The IAM user or role that created the framework. </p>")
  createdBy: option<createdBy>,
  @ocaml.doc("<p> Specifies when the framework was most recently updated. </p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the framework was created. </p>") createdAt: option<timestamp_>,
  @ocaml.doc("<p> The control sets that are associated with the framework. </p>")
  controlSets: option<controlSets>,
  @ocaml.doc("<p> The sources that Audit Manager collects evidence from for the control. </p>")
  controlSources: option<controlSources>,
  @ocaml.doc("<p> The logo that's associated with the framework. </p>") logo: option<filename>,
  @ocaml.doc("<p> The description of the framework. </p>")
  description: option<frameworkDescription>,
  @ocaml.doc("<p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
      </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p> The framework type, such as a custom framework or a standard framework. </p>")
  @as("type")
  type_: option<frameworkType>,
  @ocaml.doc("<p> The name of the framework. </p>") name: option<frameworkName>,
  @ocaml.doc("<p> The unique identifier for the framework. </p>") id: option<uuid>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the framework. </p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p> An entity that defines the scope of audit evidence collected by Audit Manager.
         An Audit Manager assessment is an implementation of an Audit Manager
         framework. </p>")
type assessment = {
  @ocaml.doc("<p> The tags that are associated with the assessment. </p>") tags: option<tagMap>,
  @ocaml.doc("<p> The framework that the assessment was created from. </p>")
  framework: option<assessmentFramework>,
  @ocaml.doc("<p> The metadata for the assessment. </p>") metadata: option<assessmentMetadata>,
  @ocaml.doc("<p> The Amazon Web Services account that's associated with the assessment. </p>")
  awsAccount: option<awsaccount>,
  @ocaml.doc("<p> The Amazon Resource Name (ARN) of the assessment. </p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p>Welcome to the Audit Manager API reference. This guide is for developers who
         need detailed information about the Audit Manager API operations, data types, and
         errors. </p>
         <p>Audit Manager is a service that provides automated evidence collection so that
         you can continually audit your Amazon Web Services usage. You can use it to assess the
         effectiveness of your controls, manage risk, and simplify compliance.</p>
         <p>Audit Manager provides prebuilt frameworks that structure and automate
         assessments for a given compliance standard. Frameworks include a prebuilt collection of
         controls with descriptions and testing procedures. These controls are grouped according to
         the requirements of the specified compliance standard or regulation. You can also customize
         frameworks and controls to support internal audits with specific requirements. </p>
         <p>Use the following links to get started with the Audit Manager API:</p>
         <ul>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html\">Actions</a>: An
               alphabetical list of all Audit Manager API operations.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html\">Data types</a>: An alphabetical list of all Audit Manager data
               types.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html\">Common
                  parameters</a>: Parameters that all Query operations can use.</p>
            </li>
            <li>
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html\">Common errors</a>:
               Client and server errors that all operations can return.</p>
            </li>
         </ul>
         <p>If you're new to Audit Manager, we recommend that you review the <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html\">
            Audit Manager User Guide</a>.</p>")
module GetAccountStatus = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p> The status of the Amazon Web Services account. </p>")
    status: option<accountStatus>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetAccountStatusCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetInsights = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The analytics data that the <code>GetInsights</code> API returned. </p>")
    insights: option<insights>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetInsightsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ValidateAssessmentReportIntegrity = {
  type t
  type request = {
    @ocaml.doc("<p> The relative path of the Amazon S3 bucket that the assessment report is stored
         in. </p>")
    s3RelativePath: s3Url,
  }
  type response = {
    @ocaml.doc(
      "<p> Represents any errors that occurred when validating the assessment report. </p>"
    )
    validationErrors: option<validationErrors>,
    @ocaml.doc("<p> The unique identifier for the validation signature key. </p>")
    signatureKeyId: option<string_>,
    @ocaml.doc("<p> The date and time signature that specifies when the assessment report was created.
      </p>")
    signatureDateTime: option<string_>,
    @ocaml.doc(
      "<p> The signature algorithm that's used to code sign the assessment report file. </p>"
    )
    signatureAlgorithm: option<string_>,
    @ocaml.doc("<p> Specifies whether the signature key is valid. </p>")
    signatureValid: option<boolean_>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ValidateAssessmentReportIntegrityCommand"
  let make = (~s3RelativePath, ()) => new({s3RelativePath: s3RelativePath})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAssessmentFrameworkShare = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies the update action for the share request.</p>")
    action: shareRequestAction,
    @ocaml.doc(
      "<p>Specifies whether the share request is a sent request or a received request.</p>"
    )
    requestType: shareRequestType,
    @ocaml.doc("<p> The unique identifier for the share request. </p>") requestId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The updated share request that's returned by the
         <code>UpdateAssessmentFrameworkShare</code> operation. </p>")
    assessmentFrameworkShareRequest: option<assessmentFrameworkShareRequest>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentFrameworkShareCommand"
  let make = (~action, ~requestType, ~requestId, ()) => new({action, requestType, requestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p> The name or key of the tag. </p>") tagKeys: tagKeyList,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the specified resource. </p>")
    resourceArn: auditManagerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p> The tags that are associated with the resource. </p>") tags: tagMap,
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the resource. </p>")
    resourceArn: auditManagerArn,
  }
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StartAssessmentFrameworkShare = {
  type t
  type request = {
    @ocaml.doc("<p> An optional comment from the sender about the share request. </p>")
    comment: option<shareRequestComment>,
    @ocaml.doc("<p> The Amazon Web Services Region of the recipient. </p>")
    destinationRegion: region,
    @ocaml.doc("<p> The Amazon Web Services account of the recipient. </p>")
    destinationAccount: accountId,
    @ocaml.doc("<p> The unique identifier for the custom framework to be shared. </p>")
    frameworkId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The share request that's created by the <code>StartAssessmentFrameworkShare</code> API.
      </p>")
    assessmentFrameworkShareRequest: option<assessmentFrameworkShareRequest>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "StartAssessmentFrameworkShareCommand"
  let make = (~destinationRegion, ~destinationAccount, ~frameworkId, ~comment=?, ()) =>
    new({comment, destinationRegion, destinationAccount, frameworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegisterOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p> The identifier for the delegated administrator account. </p>")
    adminAccountId: accountId,
  }
  type response = {
    @ocaml.doc("<p> The identifier for the organization. </p>")
    organizationId: option<organizationId>,
    @ocaml.doc("<p> The identifier for the delegated administrator account. </p>")
    adminAccountId: option<accountId>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "RegisterOrganizationAdminAccountCommand"
  let make = (~adminAccountId, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RegisterAccount = {
  type t
  type request = {
    @ocaml.doc("<p> The delegated administrator account for Audit Manager. </p>")
    delegatedAdminAccount: option<accountId>,
    @ocaml.doc("<p> The KMS key details. </p>") kmsKey: option<kmsKey>,
  }
  type response = {
    @ocaml.doc("<p> The status of the account registration request. </p>")
    status: option<accountStatus>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "RegisterAccountCommand"
  let make = (~delegatedAdminAccount=?, ~kmsKey=?, ()) => new({delegatedAdminAccount, kmsKey})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p> The Amazon Resource Name (ARN) of the resource. </p>")
    resourceArn: auditManagerArn,
  }
  type response = {
    @ocaml.doc("<p> The list of tags that the <code>ListTagsForResource</code> API returned. </p>")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListNotifications = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The returned list of notifications. </p>") notifications: option<notifications>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListNotificationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListKeywordsForDataSource = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The control mapping data source that the keywords apply to. </p>")
    source: sourceType,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of keywords for the event mapping source. </p>")
    keywords: option<keywords>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListKeywordsForDataSourceCommand"
  let make = (~source, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, source})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListControls = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The type of control, such as a standard control or a custom control. </p>")
    controlType: controlType,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of control metadata objects that the <code>ListControls</code> API returned.
      </p>")
    controlMetadataList: option<controlMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "ListControlsCommand"
  let make = (~controlType, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, controlType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssessmentReports = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of assessment reports that the <code>ListAssessmentReports</code> API
         returned. </p>")
    assessmentReports: option<assessmentReportsMetadata>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListAssessmentReportsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssessmentFrameworks = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc(
      "<p> The type of framework, such as a standard framework or a custom framework. </p>"
    )
    frameworkType: frameworkType,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of metadata objects for the framework. </p>")
    frameworkMetadataList: option<frameworkMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListAssessmentFrameworksCommand"
  let make = (~frameworkType, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, frameworkType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssessmentFrameworkShareRequests = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc(
      "<p> Specifies whether the share request is a sent request or a received request.</p>"
    )
    requestType: shareRequestType,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of share requests that the <code>ListAssessmentFrameworkShareRequests</code>
         API returned. </p>")
    assessmentFrameworkShareRequests: option<assessmentFrameworkShareRequestList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListAssessmentFrameworkShareRequestsCommand"
  let make = (~requestType, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, requestType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetServicesInScope = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p> The metadata that's associated with the Amazon Web Service. </p>")
    serviceMetadata: option<serviceMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetServicesInScopeCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetOrganizationAdminAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p> The identifier for the organization. </p>")
    organizationId: option<organizationId>,
    @ocaml.doc("<p> The identifier for the administrator account. </p>")
    adminAccountId: option<accountId>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetOrganizationAdminAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetInsightsByAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The assessment analytics data that the <code>GetInsightsByAssessment</code> API
         returned. </p>")
    insights: option<insightsByAssessment>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetInsightsByAssessmentCommand"
  let make = (~assessmentId, ()) => new({assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEvidenceFoldersByAssessmentControl = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The identifier for the control. </p>") controlId: uuid,
    @ocaml.doc("<p> The identifier for the control set. </p>") controlSetId: controlSetId,
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of evidence folders that the
         <code>GetEvidenceFoldersByAssessmentControl</code> API returned. </p>")
    evidenceFolders: option<assessmentEvidenceFolders>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceFoldersByAssessmentControlCommand"
  let make = (~controlId, ~controlSetId, ~assessmentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, controlId, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEvidenceFoldersByAssessment = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of evidence folders that the <code>GetEvidenceFoldersByAssessment</code> API
         returned. </p>")
    evidenceFolders: option<assessmentEvidenceFolders>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceFoldersByAssessmentCommand"
  let make = (~assessmentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc("<p> The unique identifier for the folder that the evidence is stored in. </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p> The unique identifier for the control set. </p>") controlSetId: controlSetId,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The folder that the evidence is stored in. </p>")
    evidenceFolder: option<assessmentEvidenceFolder>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~controlSetId, ~assessmentId, ()) =>
    new({evidenceFolderId, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDelegations = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc(
      "<p> The list of delegations that the <code>GetDelegations</code> API returned. </p>"
    )
    delegations: option<delegationMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetDelegationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetChangeLogs = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The unique identifier for the control. </p>") controlId: option<uuid>,
    @ocaml.doc("<p> The unique identifier for the control set. </p>")
    controlSetId: option<controlSetId>,
    @ocaml.doc("<p>The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The list of user activity for the control. </p>") changeLogs: option<changeLogs>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetChangeLogsCommand"
  let make = (~assessmentId, ~maxResults=?, ~nextToken=?, ~controlId=?, ~controlSetId=?, ()) =>
    new({maxResults, nextToken, controlId, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAssessmentReportUrl = {
  type t
  type request = {
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
    @ocaml.doc("<p> The unique identifier for the assessment report. </p>")
    assessmentReportId: uuid,
  }
  type response = {preSignedUrl: option<url>}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetAssessmentReportUrlCommand"
  let make = (~assessmentId, ~assessmentReportId, ()) => new({assessmentId, assessmentReportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateAssessmentReportEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc("<p> The unique identifier for the folder that the evidence is stored in. </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DisassociateAssessmentReportEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~assessmentId, ()) => new({evidenceFolderId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeregisterOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p> The identifier for the administrator account. </p>")
    adminAccountId: option<accountId>,
  }
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeregisterOrganizationAdminAccountCommand"
  let make = (~adminAccountId=?, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeregisterAccount = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p> The registration status of the account. </p>") status: option<accountStatus>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeregisterAccountCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteControl = {
  type t
  type request = {@ocaml.doc("<p> The unique identifier for the control. </p>") controlId: uuid}
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "DeleteControlCommand"
  let make = (~controlId, ()) => new({controlId: controlId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAssessmentReport = {
  type t
  type request = {
    @ocaml.doc("<p> The unique identifier for the assessment report. </p>")
    assessmentReportId: uuid,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeleteAssessmentReportCommand"
  let make = (~assessmentReportId, ~assessmentId, ()) => new({assessmentReportId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAssessmentFrameworkShare = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Specifies whether the share request is a sent request or a received request.</p>"
    )
    requestType: shareRequestType,
    @ocaml.doc("<p>The unique identifier for the share request to be deleted.</p>") requestId: uuid,
  }
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeleteAssessmentFrameworkShareCommand"
  let make = (~requestType, ~requestId, ()) => new({requestType, requestId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAssessmentFramework = {
  type t
  type request = {@ocaml.doc("<p> The identifier for the custom framework. </p>") frameworkId: uuid}
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeleteAssessmentFrameworkCommand"
  let make = (~frameworkId, ()) => new({frameworkId: frameworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DeleteAssessment = {
  type t
  type request = {@ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid}
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeleteAssessmentCommand"
  let make = (~assessmentId, ()) => new({assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module CreateAssessmentReport = {
  type t
  type request = {
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
    @ocaml.doc("<p> The description of the assessment report. </p>")
    description: option<assessmentReportDescription>,
    @ocaml.doc("<p> The name of the new assessment report. </p>") name: assessmentReportName,
  }
  type response = {
    @ocaml.doc("<p> The new assessment report that the <code>CreateAssessmentReport</code> API returned.
      </p>")
    assessmentReport: option<assessmentReport>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "CreateAssessmentReportCommand"
  let make = (~assessmentId, ~name, ~description=?, ()) => new({assessmentId, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDisassociateAssessmentReportEvidence = {
  type t
  type request = {
    @ocaml.doc("<p> The list of evidence identifiers. </p>") evidenceIds: evidenceIds,
    @ocaml.doc("<p> The identifier for the folder that the evidence is stored in. </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> A list of errors that the <code>BatchDisassociateAssessmentReportEvidence</code> API
         returned. </p>")
    errors: option<assessmentReportEvidenceErrors>,
    @ocaml.doc("<p> The identifier for the evidence. </p>") evidenceIds: option<evidenceIds>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchDisassociateAssessmentReportEvidenceCommand"
  let make = (~evidenceIds, ~evidenceFolderId, ~assessmentId, ()) =>
    new({evidenceIds, evidenceFolderId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchDeleteDelegationByAssessment = {
  type t
  type request = {
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
    @ocaml.doc("<p> The identifiers for the delegations. </p>") delegationIds: delegationIds,
  }
  type response = {
    @ocaml.doc("<p> A list of errors that the <code>BatchDeleteDelegationByAssessment</code> API returned.
      </p>")
    errors: option<batchDeleteDelegationByAssessmentErrors>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchDeleteDelegationByAssessmentCommand"
  let make = (~assessmentId, ~delegationIds, ()) => new({assessmentId, delegationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchAssociateAssessmentReportEvidence = {
  type t
  type request = {
    @ocaml.doc("<p> The list of evidence identifiers. </p>") evidenceIds: evidenceIds,
    @ocaml.doc("<p> The identifier for the folder that the evidence is stored in. </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> A list of errors that the <code>BatchAssociateAssessmentReportEvidence</code> API
         returned. </p>")
    errors: option<assessmentReportEvidenceErrors>,
    @ocaml.doc("<p> The list of evidence identifiers. </p>") evidenceIds: option<evidenceIds>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchAssociateAssessmentReportEvidenceCommand"
  let make = (~evidenceIds, ~evidenceFolderId, ~assessmentId, ()) =>
    new({evidenceIds, evidenceFolderId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateAssessmentReportEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc("<p> The identifier for the folder that the evidence is stored in. </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {.}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "AssociateAssessmentReportEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~assessmentId, ()) => new({evidenceFolderId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateSettings = {
  type t
  type request = {
    @ocaml.doc("<p> The KMS key details. </p>") kmsKey: option<kmsKey>,
    @ocaml.doc("<p> A list of the default audit owners. </p>") defaultProcessOwners: option<roles>,
    @ocaml.doc("<p> The default storage destination for assessment reports. </p>")
    defaultAssessmentReportsDestination: option<assessmentReportsDestination>,
    @ocaml.doc("<p> The Amazon Simple Notification Service (Amazon SNS) topic that Audit Manager sends
         notifications to. </p>")
    snsTopic: option<snsArn>,
  }
  type response = {@ocaml.doc("<p> The current list of settings. </p>") settings: option<settings>}
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "UpdateSettingsCommand"
  let make = (
    ~kmsKey=?,
    ~defaultProcessOwners=?,
    ~defaultAssessmentReportsDestination=?,
    ~snsTopic=?,
    (),
  ) => new({kmsKey, defaultProcessOwners, defaultAssessmentReportsDestination, snsTopic})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAssessmentControl = {
  type t
  type request = {
    @ocaml.doc("<p> The comment body text for the control. </p>")
    commentBody: option<controlCommentBody>,
    @ocaml.doc("<p> The status of the control. </p>") controlStatus: option<controlStatus>,
    @ocaml.doc("<p> The unique identifier for the control. </p>") controlId: uuid,
    @ocaml.doc("<p> The unique identifier for the control set. </p>") controlSetId: controlSetId,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The name of the updated control set that the <code>UpdateAssessmentControl</code> API
         returned. </p>")
    control: option<assessmentControl>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentControlCommand"
  let make = (~controlId, ~controlSetId, ~assessmentId, ~commentBody=?, ~controlStatus=?, ()) =>
    new({commentBody, controlStatus, controlId, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListControlInsightsByControlDomain = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique identifier for the control domain. </p>") controlDomainId: uuid,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The control analytics data that the <code>ListControlInsightsByControlDomain</code> API
         returned. </p>")
    controlInsightsMetadata: option<controlInsightsMetadata>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListControlInsightsByControlDomainCommand"
  let make = (~controlDomainId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, controlDomainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListControlDomainInsightsByAssessment = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique identifier for the active assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The control domain analytics data that the
         <code>ListControlDomainInsightsByAssessment</code> API returned. </p>")
    controlDomainInsights: option<controlDomainInsightsList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListControlDomainInsightsByAssessmentCommand"
  let make = (~assessmentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListControlDomainInsights = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The control domain analytics data that the <code>ListControlDomainInsights</code> API
         returned. </p>")
    controlDomainInsights: option<controlDomainInsightsList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListControlDomainInsightsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssessmentControlInsightsByControlDomain = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The unique identifier for the active assessment. </p>") assessmentId: uuid,
    @ocaml.doc("<p>The unique identifier for the control domain. </p>") controlDomainId: uuid,
  }
  type response = {
    @ocaml.doc("<p>The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p>The assessment control analytics data that the
         <code>ListAssessmentControlInsightsByControlDomain</code> API returned. </p>")
    controlInsightsByAssessment: option<controlInsightsMetadataByAssessment>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListAssessmentControlInsightsByControlDomainCommand"
  let make = (~assessmentId, ~controlDomainId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, assessmentId, controlDomainId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSettings = {
  type t
  type request = {
    @ocaml.doc("<p> The list of <code>SettingAttribute</code> enum values. </p>")
    attribute: settingAttribute,
  }
  type response = {
    @ocaml.doc("<p> The settings object that holds all supported Audit Manager settings. </p>")
    settings: option<settings>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetSettingsCommand"
  let make = (~attribute, ()) => new({attribute: attribute})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEvidence = {
  type t
  type request = {
    @ocaml.doc("<p> The unique identifier for the evidence. </p>") evidenceId: uuid,
    @ocaml.doc("<p> The unique identifier for the folder that the evidence is stored in. </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p> The unique identifier for the control set. </p>") controlSetId: controlSetId,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The evidence that the <code>GetEvidenceResponse</code> API returned. </p>")
    evidence: option<evidence>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetEvidenceCommand"
  let make = (~evidenceId, ~evidenceFolderId, ~controlSetId, ~assessmentId, ()) =>
    new({evidenceId, evidenceFolderId, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchImportEvidenceToAssessmentControl = {
  type t
  type request = {
    @ocaml.doc("<p> The list of manual evidence objects. </p>") manualEvidence: manualEvidenceList,
    @ocaml.doc("<p> The identifier for the control. </p>") controlId: uuid,
    @ocaml.doc("<p> The identifier for the control set. </p>") controlSetId: controlSetId,
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> A list of errors that the <code>BatchImportEvidenceToAssessmentControl</code> API
         returned. </p>")
    errors: option<batchImportEvidenceToAssessmentControlErrors>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchImportEvidenceToAssessmentControlCommand"
  let make = (~manualEvidence, ~controlId, ~controlSetId, ~assessmentId, ()) =>
    new({manualEvidence, controlId, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module BatchCreateDelegationByAssessment = {
  type t
  type request = {
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
    @ocaml.doc("<p> The API request to batch create delegations in Audit Manager. </p>")
    createDelegationRequests: createDelegationRequests,
  }
  type response = {
    @ocaml.doc("<p> A list of errors that the <code>BatchCreateDelegationByAssessment</code> API returned.
      </p>")
    errors: option<batchCreateDelegationByAssessmentErrors>,
    @ocaml.doc("<p> The delegations that are associated with the assessment. </p>")
    delegations: option<delegations>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchCreateDelegationByAssessmentCommand"
  let make = (~assessmentId, ~createDelegationRequests, ()) =>
    new({assessmentId, createDelegationRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateControl = {
  type t
  type request = {
    @ocaml.doc("<p> The data mapping sources for the control. </p>")
    controlMappingSources: controlMappingSources,
    @ocaml.doc("<p> The recommended actions to carry out if the control isn't fulfilled. </p>")
    actionPlanInstructions: option<actionPlanInstructions>,
    @ocaml.doc("<p> The title of the action plan for remediating the control. </p>")
    actionPlanTitle: option<actionPlanTitle>,
    @ocaml.doc("<p> The steps that you should follow to determine if the control is met. </p>")
    testingInformation: option<testingInformation>,
    @ocaml.doc("<p> The optional description of the control. </p>")
    description: option<controlDescription>,
    @ocaml.doc("<p> The name of the updated control. </p>") name: controlName,
    @ocaml.doc("<p> The identifier for the control. </p>") controlId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The name of the updated control set that the <code>UpdateControl</code> API returned.
      </p>")
    control: option<control>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "UpdateControlCommand"
  let make = (
    ~controlMappingSources,
    ~name,
    ~controlId,
    ~actionPlanInstructions=?,
    ~actionPlanTitle=?,
    ~testingInformation=?,
    ~description=?,
    (),
  ) =>
    new({
      controlMappingSources,
      actionPlanInstructions,
      actionPlanTitle,
      testingInformation,
      description,
      name,
      controlId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAssessments = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The current status of the assessment.</p>") status: option<assessmentStatus>,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The metadata that's associated with the assessment. </p>")
    assessmentMetadata: option<listAssessmentMetadata>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "ListAssessmentsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~status=?, ()) => new({maxResults, nextToken, status})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetEvidenceByEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc(
      "<p> Represents the maximum number of results on a page or for an API request call. </p>"
    )
    maxResults: option<maxResults>,
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The unique identifier for the folder that the evidence is stored in. </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p> The identifier for the control set. </p>") controlSetId: controlSetId,
    @ocaml.doc("<p> The identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The pagination token that's used to fetch the next set of results. </p>")
    nextToken: option<token>,
    @ocaml.doc("<p> The list of evidence that the <code>GetEvidenceByEvidenceFolder</code> API returned.
      </p>")
    evidence: option<evidenceList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceByEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~controlSetId, ~assessmentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults, nextToken, evidenceFolderId, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetControl = {
  type t
  type request = {@ocaml.doc("<p> The identifier for the control. </p>") controlId: uuid}
  type response = {
    @ocaml.doc("<p> The name of the control that the <code>GetControl</code> API returned. </p>")
    control: option<control>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetControlCommand"
  let make = (~controlId, ()) => new({controlId: controlId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateControl = {
  type t
  type request = {
    @ocaml.doc("<p> The tags that are associated with the control. </p>") tags: option<tagMap>,
    @ocaml.doc("<p> The data mapping sources for the control. </p>")
    controlMappingSources: createControlMappingSources,
    @ocaml.doc("<p> The recommended actions to carry out if the control isn't fulfilled. </p>")
    actionPlanInstructions: option<actionPlanInstructions>,
    @ocaml.doc("<p> The title of the action plan for remediating the control. </p>")
    actionPlanTitle: option<actionPlanTitle>,
    @ocaml.doc("<p> The steps to follow to determine if the control is satisfied. </p>")
    testingInformation: option<testingInformation>,
    @ocaml.doc("<p> The description of the control. </p>") description: option<controlDescription>,
    @ocaml.doc("<p> The name of the control. </p>") name: controlName,
  }
  type response = {
    @ocaml.doc("<p> The new control that the <code>CreateControl</code> API returned. </p>")
    control: option<control>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "CreateControlCommand"
  let make = (
    ~controlMappingSources,
    ~name,
    ~tags=?,
    ~actionPlanInstructions=?,
    ~actionPlanTitle=?,
    ~testingInformation=?,
    ~description=?,
    (),
  ) =>
    new({
      tags,
      controlMappingSources,
      actionPlanInstructions,
      actionPlanTitle,
      testingInformation,
      description,
      name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAssessmentControlSetStatus = {
  type t
  type request = {
    @ocaml.doc("<p> The comment that's related to the status update. </p>")
    comment: delegationComment,
    @ocaml.doc("<p> The status of the control set that's being updated. </p>")
    status: controlSetStatus,
    @ocaml.doc("<p> The unique identifier for the control set. </p>") controlSetId: string_,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The name of the updated control set that the
         <code>UpdateAssessmentControlSetStatus</code> API returned. </p>")
    controlSet: option<assessmentControlSet>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentControlSetStatusCommand"
  let make = (~comment, ~status, ~controlSetId, ~assessmentId, ()) =>
    new({comment, status, controlSetId, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAssessmentStatus = {
  type t
  type request = {
    @ocaml.doc("<p> The current status of the assessment. </p>") status: assessmentStatus,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The name of the updated assessment that the <code>UpdateAssessmentStatus</code> API
         returned. </p>")
    assessment: option<assessment>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentStatusCommand"
  let make = (~status, ~assessmentId, ()) => new({status, assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAssessmentFramework = {
  type t
  type request = {
    @ocaml.doc("<p> The control sets that are associated with the framework. </p>")
    controlSets: updateAssessmentFrameworkControlSets,
    @ocaml.doc("<p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
      </p>")
    complianceType: option<complianceType>,
    @ocaml.doc("<p> The description of the updated framework. </p>")
    description: option<frameworkDescription>,
    @ocaml.doc("<p> The name of the framework to be updated. </p>") name: frameworkName,
    @ocaml.doc("<p> The unique identifier for the framework. </p>") frameworkId: uuid,
  }
  type response = {@ocaml.doc("<p> The name of the framework. </p>") framework: option<framework>}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentFrameworkCommand"
  let make = (~controlSets, ~name, ~frameworkId, ~complianceType=?, ~description=?, ()) =>
    new({controlSets, complianceType, description, name, frameworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateAssessment = {
  type t
  type request = {
    @ocaml.doc("<p> The list of roles for the assessment. </p>") roles: option<roles>,
    @ocaml.doc("<p> The assessment report storage destination for the assessment that's being updated.
      </p>")
    assessmentReportsDestination: option<assessmentReportsDestination>,
    @ocaml.doc("<p> The scope of the assessment. </p>") scope: scope,
    @ocaml.doc("<p> The description of the assessment. </p>")
    assessmentDescription: option<assessmentDescription>,
    @ocaml.doc("<p> The name of the assessment to be updated. </p>")
    assessmentName: option<assessmentName>,
    @ocaml.doc("<p> The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p> The response object for the <code>UpdateAssessmentRequest</code> API. This is the name
         of the updated assessment.</p>")
    assessment: option<assessment>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentCommand"
  let make = (
    ~scope,
    ~assessmentId,
    ~roles=?,
    ~assessmentReportsDestination=?,
    ~assessmentDescription=?,
    ~assessmentName=?,
    (),
  ) =>
    new({
      roles,
      assessmentReportsDestination,
      scope,
      assessmentDescription,
      assessmentName,
      assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAssessmentFramework = {
  type t
  type request = {@ocaml.doc("<p> The identifier for the framework. </p>") frameworkId: uuid}
  type response = {
    @ocaml.doc("<p> The framework that the <code>GetAssessmentFramework</code> API returned. </p>")
    framework: option<framework>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetAssessmentFrameworkCommand"
  let make = (~frameworkId, ()) => new({frameworkId: frameworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>The unique identifier for the assessment. </p>") assessmentId: uuid,
  }
  type response = {
    userRole: option<role>,
    assessment: option<assessment>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetAssessmentCommand"
  let make = (~assessmentId, ()) => new({assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAssessmentFramework = {
  type t
  type request = {
    @ocaml.doc("<p> The tags that are associated with the framework. </p>") tags: option<tagMap>,
    @ocaml.doc("<p> The control sets that are associated with the framework. </p>")
    controlSets: createAssessmentFrameworkControlSets,
    @ocaml.doc("<p> The compliance type that the new custom framework supports, such as CIS or HIPAA.
      </p>")
    complianceType: option<complianceType>,
    @ocaml.doc("<p> An optional description for the new custom framework. </p>")
    description: option<frameworkDescription>,
    @ocaml.doc("<p> The name of the new custom framework. </p>") name: frameworkName,
  }
  type response = {
    @ocaml.doc("<p> The name of the new framework that the <code>CreateAssessmentFramework</code> API
         returned. </p>")
    framework: option<framework>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "CreateAssessmentFrameworkCommand"
  let make = (~controlSets, ~name, ~tags=?, ~complianceType=?, ~description=?, ()) =>
    new({tags, controlSets, complianceType, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateAssessment = {
  type t
  type request = {
    @ocaml.doc("<p> The tags that are associated with the assessment. </p>") tags: option<tagMap>,
    @ocaml.doc(
      "<p> The identifier for the framework that the assessment will be created from. </p>"
    )
    frameworkId: uuid,
    @ocaml.doc("<p> The list of roles for the assessment. </p>") roles: roles,
    scope: scope,
    @ocaml.doc(
      "<p> The assessment report storage destination for the assessment that's being created. </p>"
    )
    assessmentReportsDestination: assessmentReportsDestination,
    @ocaml.doc("<p> The optional description of the assessment to be created. </p>")
    description: option<assessmentDescription>,
    @ocaml.doc("<p> The name of the assessment to be created. </p>") name: assessmentName,
  }
  type response = {assessment: option<assessment>}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "CreateAssessmentCommand"
  let make = (
    ~frameworkId,
    ~roles,
    ~scope,
    ~assessmentReportsDestination,
    ~name,
    ~tags=?,
    ~description=?,
    (),
  ) => new({tags, frameworkId, roles, scope, assessmentReportsDestination, description, name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
