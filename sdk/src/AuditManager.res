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
type objectTypeEnum = [
  | @as("ASSESSMENT_REPORT") #ASSESSMENT_REPORT
  | @as("DELEGATION") #DELEGATION
  | @as("CONTROL") #CONTROL
  | @as("CONTROL_SET") #CONTROL_SET
  | @as("ASSESSMENT") #ASSESSMENT
]
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
@ocaml.doc("<p>
   Indicates that the request has invalid or missing parameters for the specified field. 
</p>")
type validationExceptionField = {
  @ocaml.doc("<p>
 The body of the error message. 
</p>")
  message: string_,
  @ocaml.doc("<p>
 The name of the validation error. 
</p>")
  name: string_,
}
type validationErrors = array<nonEmptyString>
@ocaml.doc("<p>
   A uniform resource locator, used as a unique identifier to locate a resource on the internet. 
</p>")
type url = {
  @ocaml.doc("<p>
   The unique identifier for the internet resource. 
</p>")
  link: option<urlLink>,
  @ocaml.doc("<p>
   The name or word used as a hyperlink to the URL.  
</p>")
  hyperlinkName: option<hyperlinkName>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>
The keyword to search for in AWS CloudTrail logs, AWS Config rules, AWS Security Hub checks, and AWS API names.
</p>")
type sourceKeyword = {
  @ocaml.doc("<p>
The value of the keyword used to search AWS CloudTrail logs, AWS Config rules, AWS Security Hub checks, and AWS API names when mapping a control data source. 
</p>")
  keywordValue: option<keywordValue>,
  @ocaml.doc("<p>
The method of input for the specified keyword.
</p>")
  keywordInputType: option<keywordInputType>,
}
@ocaml.doc("<p>
   The metadata associated with the specified AWS service.
</p>")
type serviceMetadata = {
  @ocaml.doc("<p>
   The category in which the AWS service belongs, such as compute, storage, database, and so on.
</p>")
  category: option<nonEmptyString>,
  @ocaml.doc("<p>
   The description of the specified AWS service.
</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>
The display name of the AWS service.
</p>")
  displayName: option<nonEmptyString>,
  @ocaml.doc("<p>
The name of the AWS service.
</p>")
  name: option<awsserviceName>,
}
@ocaml.doc("<p>
     The wrapper that contains the AWS Audit Manager role information of the current user, such as the role type and IAM Amazon Resource Name (ARN).
  </p>")
type role = {
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the IAM role. 
</p>")
  roleArn: option<iamArn>,
  @ocaml.doc("<p>
   The type of customer persona.
</p>
         <note>
            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be <code>PROCESS_OWNER</code>. </p>
            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be <code>PROCESS_OWNER</code>.</p>
            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be <code>RESOURCE_OWNER</code>.</p>
         </note>")
  roleType: option<roleType>,
}
@ocaml.doc("<p>
      A system asset that is evaluated in an AWS Audit Manager assessment.  
    </p>")
type resource = {
  @ocaml.doc("<p>
  The value of the specified resource.
    </p>")
  value: option<string_>,
  @ocaml.doc("<p>
 The Amazon Resource Name (ARN) for the specified resource.
    </p>")
  arn: option<genericArn>,
}
@ocaml.doc("<p>
   The notification used to inform a user of an update in AWS Audit Manager. For example, this includes the notification that is sent when a control set is delegated for review. 
</p>")
type notification = {
  @ocaml.doc("<p>
 The sender of the notification. 
</p>")
  source: option<nonEmptyString>,
  @ocaml.doc("<p>
         The time when the notification was sent. 
      </p>")
  eventTime: option<timestamp_>,
  @ocaml.doc("<p>
 The description of the notification. 
</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>
         Specifies the name of the control set that the notification is about.
      </p>")
  controlSetName: option<nonEmptyString>,
  @ocaml.doc("<p>
   The identifier for the specified control set.
</p>")
  controlSetId: option<controlSetId>,
  @ocaml.doc("<p>
 The name of the related assessment. 
</p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p>
 The unique identifier for the notification. 
</p>")
  id: option<timestampUUID>,
}
@ocaml.doc("<p>
   Evidence that is uploaded to AWS Audit Manager manually. 
</p>")
type manualEvidence = {
  @ocaml.doc("<p>
   The Amazon S3 URL that points to a manual evidence object. 
</p>")
  s3ResourcePath: option<s3Url>,
}
type keywords = array<keywordValue>
@ocaml.doc("<p>
   The metadata of a framework, such as the name, ID, description, and so on. 
</p>")
type frameworkMetadata = {
  @ocaml.doc("<p>
         The compliance standard associated with the framework, such as PCI-DSS or HIPAA.
      </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>
   The logo associated with the framework. 
</p>")
  logo: option<filename>,
  @ocaml.doc("<p>
   The description of the framework. 
</p>")
  description: option<assessmentFrameworkDescription>,
  @ocaml.doc("<p>
   The name of the framework. 
</p>")
  name: option<assessmentName>,
}
type evidenceSources = array<nonEmptyString>
type evidenceIds = array<uuid>
type evidenceAttributes = Js.Dict.t<evidenceAttributeValue>
@ocaml.doc("<p>
   The metadata associated with the specified delegation.
</p>")
type delegationMetadata = {
  @ocaml.doc("<p>
Specifies the name of the control set delegated for review.
</p>")
  controlSetName: option<nonEmptyString>,
  @ocaml.doc("<p>
   Specifies when the delegation was created.
</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the IAM role. 
</p>")
  roleArn: option<iamArn>,
  @ocaml.doc("<p>
The current status of the delgation.
</p>")
  status: option<delegationStatus>,
  @ocaml.doc("<p>
   The unique identifier for the specified assessment.
</p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p>
   The name of the associated assessment. 
</p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p>
   The unique identifier for the delegation. 
</p>")
  id: option<uuid>,
}
type delegationIds = array<uuid>
@ocaml.doc("<p>
   The assignment of a control set to a delegate for review. 
</p>")
type delegation = {
  @ocaml.doc("<p> The IAM user or role that created the delegation. </p>")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>
 The comment related to the delegation. 
</p>")
  comment: option<delegationComment>,
  @ocaml.doc("<p>
   The identifier for the associated control set.
</p>")
  controlSetId: option<controlSetId>,
  @ocaml.doc("<p>
 Specifies when the delegation was last updated. 
</p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p> Specifies when the delegation was created. </p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
   The type of customer persona.
</p>
         <note>
            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be <code>PROCESS_OWNER</code>. </p>
            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be <code>PROCESS_OWNER</code>.</p>
            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be <code>RESOURCE_OWNER</code>.</p>
         </note>")
  roleType: option<roleType>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the IAM role. 
</p>")
  roleArn: option<iamArn>,
  @ocaml.doc("<p>
 The status of the delegation. 
</p>")
  status: option<delegationStatus>,
  @ocaml.doc("<p>
   The identifier for the associated assessment. 
</p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p>
 The name of the associated assessment. 
</p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p>
 The unique identifier for the delegation. 
</p>")
  id: option<uuid>,
}
@ocaml.doc("<p>
  A collection of attributes used to create a delegation for an assessment in AWS Audit Manager.
</p>")
type createDelegationRequest = {
  @ocaml.doc("<p>
   The type of customer persona.
</p>
         <note>
            <p>In <code>CreateAssessment</code>, <code>roleType</code> can only be <code>PROCESS_OWNER</code>. </p>
            <p>In <code>UpdateSettings</code>, <code>roleType</code> can only be <code>PROCESS_OWNER</code>.</p>
            <p>In <code>BatchCreateDelegationByAssessment</code>, <code>roleType</code> can only be <code>RESOURCE_OWNER</code>.</p>
         </note>")
  roleType: option<roleType>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the IAM role. 
</p>")
  roleArn: option<iamArn>,
  @ocaml.doc("<p>
   The unique identifier for the control set. 
</p>")
  controlSetId: option<controlSetId>,
  @ocaml.doc("<p>
   A comment related to the delegation request. 
</p>")
  comment: option<delegationComment>,
}
@ocaml.doc("<p>
Control entity attributes that uniquely identify an existing control to be added to a framework in AWS Audit Manager.
</p>")
type createAssessmentFrameworkControl = {
  @ocaml.doc("<p>
The unique identifier of the control.
</p>")
  id: option<uuid>,
}
@ocaml.doc("<p>
   The metadata associated with the specified standard or custom control.
</p>")
type controlMetadata = {
  @ocaml.doc("<p>
   Specifies when the control was most recently updated.
</p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>
   Specifies when the control was created.
</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>
   The data source that determines from where AWS Audit Manager collects evidence for the control.
</p>")
  controlSources: option<controlSources>,
  @ocaml.doc("<p>
The name of the specified control.
</p>")
  name: option<controlName>,
  @ocaml.doc("<p>
The unique identifier for the specified control.
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the specified control.
</p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p>
   A comment posted by a user on a control. This includes the author's name, the comment text, and a timestamp. 
</p>")
type controlComment = {
  @ocaml.doc("<p>
 The time when the comment was posted. 
</p>")
  postedDate: option<timestamp_>,
  @ocaml.doc("<p>
   The body text of a control comment. 
</p>")
  commentBody: option<controlCommentBody>,
  @ocaml.doc("<p>
 The name of the user who authored the comment. 
</p>")
  authorName: option<username>,
}
@ocaml.doc("<p>
   The record of a change within AWS Audit Manager, such as a modified assessment, a delegated control set, and so on. 
</p>")
type changeLog = {
  @ocaml.doc("<p>
 The IAM user or role that performed the action. 
</p>")
  createdBy: option<iamArn>,
  @ocaml.doc("<p>
 The time of creation for the changelog object. 
</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>
   The action performed. 
</p>")
  action: option<actionEnum>,
  @ocaml.doc("<p>
 The name of the changelog object. 
</p>")
  objectName: option<nonEmptyString>,
  @ocaml.doc("<p>
 The changelog object type, such as an assessment, control, or control set. 
</p>")
  objectType: option<objectTypeEnum>,
}
@ocaml.doc("<p>
   An error entity for the <code>BatchDeleteDelegationByAssessment</code> API. This is used to provide more meaningful errors than a simple string message.
</p>")
type batchDeleteDelegationByAssessmentError = {
  @ocaml.doc("<p>
   The error message returned by the <code>BatchDeleteDelegationByAssessment</code> API.
</p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>
   The error code returned by the <code>BatchDeleteDelegationByAssessment</code> API.
</p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>
   The identifier for the specified delegation.
</p>")
  delegationId: option<uuid>,
}
@ocaml.doc("<p>
   The location in which AWS Audit Manager saves assessment reports for the given assessment.
</p>")
type assessmentReportsDestination = {
  @ocaml.doc("<p>
   The destination of the assessment report.
</p>")
  destination: option<s3Url>,
  @ocaml.doc("<p>
   The destination type, such as Amazon S3. 
</p>")
  destinationType: option<assessmentReportDestinationType>,
}
@ocaml.doc("<p>
   The metadata objects associated with the specified assessment report.
</p>")
type assessmentReportMetadata = {
  @ocaml.doc("<p>
   Specifies when the assessment report was created.
</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
The current status of the assessment report.
</p>")
  status: option<assessmentReportStatus>,
  @ocaml.doc("<p>
   The name of the user who created the assessment report.
</p>")
  author: option<username>,
  @ocaml.doc("<p>The name of the associated assessment. 
</p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p>
   The unique identifier for the associated assessment.
</p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p>
The description of the specified assessment report.
</p>")
  description: option<assessmentReportDescription>,
  @ocaml.doc("<p>
The name of the assessment report.
</p>")
  name: option<assessmentReportName>,
  @ocaml.doc("<p>
The unique identifier for the assessment report.
</p>")
  id: option<uuid>,
}
@ocaml.doc("<p>
   An error entity for the <code>AssessmentReportEvidence</code> API. This is used to provide more meaningful errors than a simple string message.
</p>")
type assessmentReportEvidenceError = {
  @ocaml.doc("<p>
   The error message returned by the <code>AssessmentReportEvidence</code> API. 
</p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>
   The error code returned by the <code>AssessmentReportEvidence</code> API. 
</p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>
   The identifier for the evidence. 
</p>")
  evidenceId: option<uuid>,
}
@ocaml.doc("<p>
 A finalized document generated from an AWS Audit Manager assessment. These reports summarize the relevant evidence collected for your audit, and link to the relevant evidence folders which are named and organized according to the controls specified in your assessment.
</p>")
type assessmentReport = {
  @ocaml.doc("<p>
   Specifies when the assessment report was created. 
</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
The current status of the specified assessment report.
</p>")
  status: option<assessmentReportStatus>,
  @ocaml.doc("<p>
   The name of the user who created the assessment report.
</p>")
  author: option<username>,
  @ocaml.doc("<p>
The name of the associated assessment.
</p>")
  assessmentName: option<assessmentName>,
  @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p>
   The identifier for the specified AWS account. 
</p>")
  awsAccountId: option<accountId>,
  @ocaml.doc("<p>
   The description of the specified assessment report.
</p>")
  description: option<assessmentReportDescription>,
  @ocaml.doc("<p>
The name given to the assessment report.
</p>")
  name: option<assessmentReportName>,
  @ocaml.doc("<p>
The unique identifier for the specified assessment report.
</p>")
  id: option<uuid>,
}
@ocaml.doc("<p>
   The metadata associated with a standard or custom framework.
</p>")
type assessmentFrameworkMetadata = {
  @ocaml.doc("<p>
   Specifies when the framework was most recently updated.
</p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>
   Specifies when the framework was created.
</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>
   The number of control sets associated with the specified framework.
</p>")
  controlSetsCount: option<controlSetsCount>,
  @ocaml.doc("<p>
The number of controls associated with the specified framework.
</p>")
  controlsCount: option<controlsCount>,
  @ocaml.doc("<p>
   The compliance type that the new custom framework supports, such as CIS or HIPAA.
</p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>
   The logo associated with the framework. 
</p>")
  logo: option<filename>,
  @ocaml.doc("<p>
   The description of the specified framework.
</p>")
  description: option<frameworkDescription>,
  @ocaml.doc("<p>
The name of the specified framework.
</p>")
  name: option<frameworkName>,
  @ocaml.doc("<p>
The framework type, such as standard or custom.
</p>")
  @as("type")
  type_: option<frameworkType>,
  @ocaml.doc("<p>
The unique identified for the specified framework.
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the framework. 
</p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p>
The folder in which AWS Audit Manager stores evidence for an assessment.
</p>")
type assessmentEvidenceFolder = {
  @ocaml.doc("<p>
   The total number of AWS resources assessed to generate the evidence. 
</p>")
  evidenceAwsServiceSourceCount: option<integer_>,
  @ocaml.doc("<p>
         The number of evidence that falls under the user activity category. This evidence is collected from AWS CloudTrail logs.
      </p>")
  evidenceByTypeUserActivityCount: option<integer_>,
  @ocaml.doc("<p>
         The total number of issues that were reported directly from AWS Security
         Hub, AWS Config, or both.
      </p>")
  evidenceByTypeComplianceCheckIssuesCount: option<integer_>,
  @ocaml.doc("<p>
         The number of evidence that falls under the compliance check category. This evidence is collected from AWS Config or AWS Security Hub.
      </p>")
  evidenceByTypeComplianceCheckCount: option<integer_>,
  @ocaml.doc("<p>
         The number of evidence that falls under the manual category. This evidence is imported manually.
      </p>")
  evidenceByTypeManualCount: option<integer_>,
  @ocaml.doc("<p>
         The number of evidence that falls under the configuration data category. This evidence is collected from configuration snapshots of other AWS services such as Amazon EC2, Amazon S3, or IAM.
      </p>")
  evidenceByTypeConfigurationDataCount: option<integer_>,
  @ocaml.doc("<p>
         The amount of evidence included in the evidence folder.
      </p>")
  evidenceResourcesIncludedCount: option<integer_>,
  @ocaml.doc("<p>
         The name of the control.
      </p>")
  controlName: option<controlName>,
  @ocaml.doc("<p>
         The total count of evidence included in the assessment report.
      </p>")
  assessmentReportSelectionCount: option<integer_>,
  @ocaml.doc("<p>
         The total amount of evidence in the evidence folder.
      </p>")
  totalEvidence: option<integer_>,
  @ocaml.doc("<p>
   The name of the user who created the evidence folder.
</p>")
  author: option<string_>,
  @ocaml.doc("<p>
   The AWS service from which the evidence was collected. 
</p>")
  dataSource: option<string_>,
  @ocaml.doc("<p>
The identifier for the folder in which evidence is stored.
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
   
   The unique identifier for the specified control. 
</p>")
  controlId: option<uuid>,
  @ocaml.doc("<p>
   The identifier for the control set. 
</p>")
  controlSetId: option<controlSetId>,
  @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
  assessmentId: option<uuid>,
  @ocaml.doc("<p>
         The date when the first evidence was added to the evidence folder.
      </p>")
  date: option<timestamp_>,
  @ocaml.doc("<p>
The name of the specified evidence folder.
</p>")
  name: option<assessmentEvidenceFolderName>,
}
@ocaml.doc("<p>
   An AWS service such as Amazon S3, AWS CloudTrail, and so on. 
</p>")
type awsservice = {
  @ocaml.doc("<p>
   The name of the AWS service. 
</p>")
  serviceName: option<awsserviceName>,
}
@ocaml.doc("<p>
   The wrapper of AWS account details, such as account ID, email address, and so on. 
</p>")
type awsaccount = {
  @ocaml.doc("<p>
   The name of the specified AWS account. 
</p>")
  name: option<accountName>,
  @ocaml.doc("<p>
   The email address associated with the specified AWS account. 
</p>")
  emailAddress: option<emailAddress>,
  @ocaml.doc("<p>
   The identifier for the specified AWS account. 
</p>")
  id: option<accountId>,
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
@ocaml.doc("<p>
  Control mapping fields that represent the source for evidence collection, along with related parameters and metadata. This does not contain <code>mappingID</code>.
</p>")
type createControlMappingSource = {
  @ocaml.doc("<p>
The instructions for troubleshooting the specified control.
</p>")
  troubleshootingText: option<troubleshootingText>,
  @ocaml.doc("<p>
   The frequency of evidence collection for the specified control mapping source.
</p>")
  sourceFrequency: option<sourceFrequency>,
  sourceKeyword: option<sourceKeyword>,
  @ocaml.doc("<p>
   Specifies one of the five types of data sources for evidence collection.
   
</p>")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>
   The setup option for the data source, which reflects if the evidence collection is automated or manual.
</p>")
  sourceSetUpOption: option<sourceSetUpOption>,
  @ocaml.doc("<p>
   The description of the data source that determines from where AWS Audit Manager collects evidence for the control. 
</p>")
  sourceDescription: option<sourceDescription>,
  @ocaml.doc("<p>
The name of the control mapping data source.
</p>")
  sourceName: option<sourceName>,
}
type createAssessmentFrameworkControls = array<createAssessmentFrameworkControl>
type controlMetadataList = array<controlMetadata>
@ocaml.doc("<p>
   The data source that determines from where AWS Audit Manager collects evidence for the control.
</p>")
type controlMappingSource = {
  @ocaml.doc("<p>
         The instructions for troubleshooting the specified control.
      </p>")
  troubleshootingText: option<troubleshootingText>,
  @ocaml.doc("<p>
         The frequency of evidence collection for the specified control mapping source.
      </p>")
  sourceFrequency: option<sourceFrequency>,
  sourceKeyword: option<sourceKeyword>,
  @ocaml.doc("<p>
   Specifies one of the five types of data sources for evidence collection.
</p>")
  sourceType: option<sourceType>,
  @ocaml.doc("<p>
   The setup option for the data source, which reflects if the evidence collection is automated or manual.
</p>")
  sourceSetUpOption: option<sourceSetUpOption>,
  @ocaml.doc("<p>
The description of the specified source.
</p>")
  sourceDescription: option<sourceDescription>,
  @ocaml.doc("<p>
The name of the specified source.
</p>")
  sourceName: option<sourceName>,
  @ocaml.doc("<p>
The unique identifier for the specified source.
</p>")
  sourceId: option<uuid>,
}
type controlComments = array<controlComment>
type changeLogs = array<changeLog>
@ocaml.doc("<p>
   An error entity for the <code>BatchImportEvidenceToAssessmentControl</code> API. This is used to provide more meaningful errors than a simple string message.
</p>")
type batchImportEvidenceToAssessmentControlError = {
  @ocaml.doc("<p>
  The error message returned by the <code>BatchImportEvidenceToAssessmentControl</code> API. 
</p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>
  The error code returned by the <code>BatchImportEvidenceToAssessmentControl</code> API. 
</p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>
Manual evidence that cannot be collected automatically by AWS Audit Manager.
</p>")
  manualEvidence: option<manualEvidence>,
}
type batchDeleteDelegationByAssessmentErrors = array<batchDeleteDelegationByAssessmentError>
@ocaml.doc("<p>
   An error entity for the <code>BatchCreateDelegationByAssessment</code> API. This is used to provide more meaningful errors than a simple string message.
</p>")
type batchCreateDelegationByAssessmentError = {
  @ocaml.doc("<p>
   The error message returned by the <code>BatchCreateDelegationByAssessment</code> API. 
</p>")
  errorMessage: option<errorMessage>,
  @ocaml.doc("<p>
   The error code returned by the <code>BatchCreateDelegationByAssessment</code> API. 
</p>")
  errorCode: option<errorCode>,
  @ocaml.doc("<p>
The API request to batch create delegations in AWS Audit Manager.
</p>")
  createDelegationRequest: option<createDelegationRequest>,
}
type assessmentReportsMetadata = array<assessmentReportMetadata>
type assessmentReportEvidenceErrors = array<assessmentReportEvidenceError>
type assessmentEvidenceFolders = array<assessmentEvidenceFolder>
type awsservices = array<awsservice>
type awsaccounts = array<awsaccount>
@ocaml.doc("<p>
   A <code>controlSet</code> entity that represents a collection of controls in AWS Audit Manager. This does not contain the control set ID.
</p>")
type updateAssessmentFrameworkControlSet = {
  @ocaml.doc("<p>
The list of controls contained within the control set.
</p>")
  controls: option<createAssessmentFrameworkControls>,
  @ocaml.doc("<p>
The name of the control set.
</p>")
  name: controlSetName,
  @ocaml.doc("<p>
The unique identifier for the control set.
</p>")
  id: option<controlSetName>,
}
@ocaml.doc("<p>
   The settings object that holds all supported AWS Audit Manager settings. 
</p>")
type settings = {
  @ocaml.doc("<p>
         The AWS KMS key details. 
      </p>")
  kmsKey: option<kmsKey>,
  @ocaml.doc("<p>
 The designated default audit owners. 
</p>")
  defaultProcessOwners: option<roles>,
  @ocaml.doc("<p>
   The default storage destination for assessment reports.
</p>")
  defaultAssessmentReportsDestination: option<assessmentReportsDestination>,
  @ocaml.doc("<p>
 The designated Amazon Simple Notification Service (Amazon SNS) topic. 
</p>")
  snsTopic: option<snstopic>,
  @ocaml.doc("<p>
 Specifies whether AWS Organizations is enabled. 
</p>")
  isAwsOrgEnabled: option<boolean_>,
}
@ocaml.doc("<p>
   The wrapper that contains the AWS accounts and AWS services in scope for the assessment.
</p>")
type scope = {
  @ocaml.doc("<p>
 The AWS services included in the scope of the assessment. 
</p>")
  awsServices: option<awsservices>,
  @ocaml.doc("<p>
 The AWS accounts included in the scope of the assessment. 
</p>")
  awsAccounts: option<awsaccounts>,
}
@ocaml.doc("<p>
   A record that contains the information needed to demonstrate compliance with the requirements specified by a control. Examples of evidence include change activity triggered by a user, or a system configuration snapshot. 
</p>")
type evidence = {
  @ocaml.doc("<p>
         Specifies whether the evidence is included in the assessment report.
      </p>")
  assessmentReportSelection: option<string_>,
  @ocaml.doc("<p> The identifier for the evidence. 
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
   The identifier for the folder in which the evidence is stored.
</p>")
  evidenceFolderId: option<uuid>,
  @ocaml.doc("<p>
   The identifier for the specified AWS account. 
</p>")
  awsAccountId: option<accountId>,
  @ocaml.doc("<p>
   The AWS account from which the evidence is collected, and its AWS organization path.
</p>")
  awsOrganization: option<string_>,
  @ocaml.doc("<p> The evaluation status for evidence that falls under the compliance check category. For
         evidence collected from AWS Security Hub, a <i>Pass</i> or
            <i>Fail</i> result is shown. For evidence collected from AWS Config, a
            <i>Compliant</i> or <i>Noncompliant</i> result is shown. </p>")
  complianceCheck: option<string_>,
  @ocaml.doc("<p>
         The unique identifier for the IAM user or role associated with the evidence.
      </p>")
  iamId: option<iamArn>,
  @ocaml.doc("<p>
 The names and values used by the evidence event, including an attribute name (such as <code>allowUsersToChangePassword</code>) and value (such as <code>true</code> or <code>false</code>).
</p>")
  attributes: option<evidenceAttributes>,
  @ocaml.doc("<p>
   The list of resources assessed to generate the evidence.
</p>")
  resourcesIncluded: option<resources>,
  @ocaml.doc("<p>
         The type of automated evidence.
      </p>")
  evidenceByType: option<string_>,
  @ocaml.doc("<p>
         The name of the specified evidence event.
      </p>")
  eventName: option<eventName>,
  @ocaml.doc("<p>
The AWS service from which the evidence is collected.
</p>")
  eventSource: option<awsserviceName>,
  @ocaml.doc("<p>
         The timestamp that represents when the evidence was collected.
      </p>")
  time: option<timestamp_>,
  @ocaml.doc("<p>
   The identifier for the specified AWS account. 
</p>")
  evidenceAwsAccountId: option<accountId>,
  @ocaml.doc("<p>
         The data source from which the specified evidence was collected.
      </p>")
  dataSource: option<string_>,
}
type createControlMappingSources = array<createControlMappingSource>
@ocaml.doc("<p>
A <code>controlSet</code> entity that represents a collection of controls in AWS Audit Manager. This does not contain the control set ID.
</p>")
type createAssessmentFrameworkControlSet = {
  @ocaml.doc("<p>
   The list of controls within the control set. This does not contain the control set ID.
</p>")
  controls: option<createAssessmentFrameworkControls>,
  @ocaml.doc("<p>
The name of the specified control set.
</p>")
  name: controlSetName,
}
type controlMappingSources = array<controlMappingSource>
type batchImportEvidenceToAssessmentControlErrors = array<
  batchImportEvidenceToAssessmentControlError,
>
type batchCreateDelegationByAssessmentErrors = array<batchCreateDelegationByAssessmentError>
@ocaml.doc("<p>
A metadata object associated with an assessment in AWS Audit Manager.
</p>")
type assessmentMetadataItem = {
  @ocaml.doc("<p>
   The time of the most recent update. 
</p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>
   Specifies when the assessment was created.
</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
   The delegations associated with the assessment.
</p>")
  delegations: option<delegations>,
  @ocaml.doc("<p>
   The roles associated with the assessment. 
</p>")
  roles: option<roles>,
  @ocaml.doc("<p>
The current status of the assessment.
</p>")
  status: option<assessmentStatus>,
  @ocaml.doc("<p>
         The name of the compliance standard related to the assessment, such as PCI-DSS. 
      </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>
   The unique identifier for the assessment. 
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
The name of the assessment.
</p>")
  name: option<assessmentName>,
}
@ocaml.doc("<p>
   The control entity that represents a standard or custom control used in an AWS Audit Manager assessment.
</p>")
type assessmentControl = {
  @ocaml.doc("<p>
   The amount of evidence in the assessment report.
</p>")
  assessmentReportEvidenceCount: option<integer_>,
  @ocaml.doc("<p>
   The amount of evidence generated for the control.
</p>")
  evidenceCount: option<integer_>,
  @ocaml.doc("<p>
   The list of data sources for the specified evidence.
</p>")
  evidenceSources: option<evidenceSources>,
  @ocaml.doc("<p>
   The list of comments attached to the specified control. 
</p>")
  comments: option<controlComments>,
  @ocaml.doc("<p>
   The response of the specified control. 
</p>")
  response: option<controlResponse>,
  @ocaml.doc("<p>
   The status of the specified control. 
</p>")
  status: option<controlStatus>,
  @ocaml.doc("<p>
   The description of the specified control. 
</p>")
  description: option<controlDescription>,
  @ocaml.doc("<p>
   The name of the specified control. 
</p>")
  name: option<controlName>,
  @ocaml.doc("<p>
   The identifier for the specified control. 
</p>")
  id: option<uuid>,
}
type updateAssessmentFrameworkControlSets = array<updateAssessmentFrameworkControlSet>
type listAssessmentMetadata = array<assessmentMetadataItem>
type evidenceList = array<evidence>
type createAssessmentFrameworkControlSets = array<createAssessmentFrameworkControlSet>
@ocaml.doc("<p>
A control in AWS Audit Manager.
</p>")
type control = {
  @ocaml.doc("<p>
   The tags associated with the control.
</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>
         The IAM user or role that most recently updated the control. 
      </p>")
  lastUpdatedBy: option<lastUpdatedBy>,
  @ocaml.doc("<p>
         The IAM user or role that created the control.
      </p>")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>
Specifies when the control was most recently updated.
</p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>
Specifies when the control was created.
</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>
   The data mapping sources for the specified control.
</p>")
  controlMappingSources: option<controlMappingSources>,
  @ocaml.doc("<p>
   The data source that determines from where AWS Audit Manager collects evidence for the control. 
</p>")
  controlSources: option<controlSources>,
  @ocaml.doc("<p>
         
         The recommended actions to carry out if the control is not fulfilled.
      </p>")
  actionPlanInstructions: option<actionPlanInstructions>,
  @ocaml.doc("<p>
         The title of the action plan for remediating the control.
      </p>")
  actionPlanTitle: option<actionPlanTitle>,
  @ocaml.doc("<p>
         The steps to follow to determine if the control has been satisfied.
      </p>")
  testingInformation: option<testingInformation>,
  @ocaml.doc("<p>
   The description of the specified control. 
</p>")
  description: option<controlDescription>,
  @ocaml.doc("<p>
The name of the specified control.
</p>")
  name: option<controlName>,
  @ocaml.doc("<p>
The type of control, such as custom or standard.
</p>")
  @as("type")
  type_: option<controlType>,
  @ocaml.doc("<p>
The unique identifier for the control.
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the specified control.
</p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p>
   The metadata associated with the specified assessment.
</p>")
type assessmentMetadata = {
  @ocaml.doc("<p>
   The time of the most recent update. 
</p>")
  lastUpdated: option<timestamp_>,
  @ocaml.doc("<p>
   Specifies when the assessment was created.
</p>")
  creationTime: option<timestamp_>,
  @ocaml.doc("<p>
   The delegations associated with the assessment. 
</p>")
  delegations: option<delegations>,
  @ocaml.doc("<p>
   The roles associated with the assessment. 
</p>")
  roles: option<roles>,
  @ocaml.doc("<p>
   The wrapper of AWS accounts and services in scope for the assessment. 
</p>")
  scope: option<scope>,
  @ocaml.doc("<p>
   The destination in which evidence reports are stored for the specified assessment. 
</p>")
  assessmentReportsDestination: option<assessmentReportsDestination>,
  @ocaml.doc("<p>
   The overall status of the assessment. 
</p>")
  status: option<assessmentStatus>,
  @ocaml.doc("<p>
         The name of a compliance standard related to the assessment, such as PCI-DSS. 
      </p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>
   The description of the assessment. 
</p>")
  description: option<assessmentDescription>,
  @ocaml.doc("<p>
   The unique identifier for the assessment. 
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
   The name of the assessment. 
</p>")
  name: option<assessmentName>,
}
type assessmentControls = array<assessmentControl>
type controls = array<control>
@ocaml.doc("<p>
Represents a set of controls in an AWS Audit Manager assessment.
</p>")
type assessmentControlSet = {
  @ocaml.doc("<p>
   The total number of evidence objects uploaded manually to the control set. 
</p>")
  manualEvidenceCount: option<integer_>,
  @ocaml.doc("<p>
   The total number of evidence objects retrieved automatically for the control set. 
</p>")
  systemEvidenceCount: option<integer_>,
  @ocaml.doc("<p>
   The delegations associated with the control set.
</p>")
  delegations: option<delegations>,
  @ocaml.doc("<p>
The list of controls contained with the control set.
</p>")
  controls: option<assessmentControls>,
  @ocaml.doc("<p>
   The roles associated with the control set. 
</p>")
  roles: option<roles>,
  @ocaml.doc("<p>
Specifies the current status of the control set.
</p>")
  status: option<controlSetStatus>,
  @ocaml.doc("<p>
   The description for the control set. 
</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>
   The identifier of the control set in the assessment. This is the control set name in a plain string format. 
</p>")
  id: option<controlSetId>,
}
@ocaml.doc("<p>
A set of controls in AWS Audit Manager.
</p>")
type controlSet = {
  @ocaml.doc("<p>
   The list of controls within the control set. 
</p>")
  controls: option<controls>,
  @ocaml.doc("<p>
The name of the control set.
</p>")
  name: option<controlSetName>,
  @ocaml.doc("<p>
   The identifier of the control set in the assessment. This is the control set name in a plain string format. 
</p>")
  id: option<uuid>,
}
type assessmentControlSets = array<assessmentControlSet>
type controlSets = array<controlSet>
@ocaml.doc("<p>
   The file used to structure and automate AWS Audit Manager assessments for a given compliance standard.
</p>")
type assessmentFramework = {
  @ocaml.doc("<p>
   The control sets associated with the framework. 
</p>")
  controlSets: option<assessmentControlSets>,
  metadata: option<frameworkMetadata>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the specified framework. 
</p>")
  arn: option<auditManagerArn>,
  @ocaml.doc("<p>
The unique identifier for the framework.
</p>")
  id: option<uuid>,
}
@ocaml.doc("<p>
   The file used to structure and automate AWS Audit Manager assessments for a given compliance standard.
</p>")
type framework = {
  @ocaml.doc("<p>
         The tags associated with the framework.
      </p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>
   The IAM user or role that most recently updated the framework. 
</p>")
  lastUpdatedBy: option<lastUpdatedBy>,
  @ocaml.doc("<p>
   The IAM user or role that created the framework.
</p>")
  createdBy: option<createdBy>,
  @ocaml.doc("<p>
   Specifies when the framework was most recently updated.
</p>")
  lastUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>
   Specifies when the framework was created.
</p>")
  createdAt: option<timestamp_>,
  @ocaml.doc("<p>
   The control sets associated with the framework. 
</p>")
  controlSets: option<controlSets>,
  @ocaml.doc("<p>
The sources from which AWS Audit Manager collects evidence for the control.
</p>")
  controlSources: option<controlSources>,
  @ocaml.doc("<p>
   The logo associated with the framework. 
</p>")
  logo: option<filename>,
  @ocaml.doc("<p>
   The description of the specified framework.
</p>")
  description: option<frameworkDescription>,
  @ocaml.doc("<p>
   The compliance type that the new custom framework supports, such as CIS or HIPAA.
</p>")
  complianceType: option<complianceType>,
  @ocaml.doc("<p>
The framework type, such as custom or standard.
</p>")
  @as("type")
  type_: option<frameworkType>,
  @ocaml.doc("<p>
The name of the specified framework.
</p>")
  name: option<frameworkName>,
  @ocaml.doc("<p>
The unique identifier for the specified framework.
</p>")
  id: option<uuid>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the specified framework.
</p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p>
   An entity that defines the scope of audit evidence collected by AWS Audit Manager. An AWS Audit Manager assessment is an implementation of an AWS Audit Manager framework. 
</p>")
type assessment = {
  @ocaml.doc("<p>
 The tags associated with the assessment. 
</p>")
  tags: option<tagMap>,
  @ocaml.doc("<p>
   The framework from which the assessment was created. 
</p>")
  framework: option<assessmentFramework>,
  @ocaml.doc("<p>
 The metadata for the specified assessment. 
</p>")
  metadata: option<assessmentMetadata>,
  @ocaml.doc("<p>
 The AWS account associated with the assessment. 
</p>")
  awsAccount: option<awsaccount>,
  @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the assessment. 
</p>")
  arn: option<auditManagerArn>,
}
@ocaml.doc("<p>Welcome to the AWS Audit Manager API reference. This guide is for developers who need detailed information about the AWS Audit Manager API operations, data types, and errors. </p>
         <p>AWS Audit Manager is a service that provides automated evidence collection so that you
         can continuously audit your AWS usage, and assess the effectiveness of your controls to
         better manage risk and simplify compliance.</p>
         <p>AWS Audit Manager provides pre-built frameworks that structure and automate assessments
         for a given compliance standard. Frameworks include a pre-built collection of controls with
         descriptions and testing procedures, which are grouped according to the requirements of the
         specified compliance standard or regulation. You can also customize frameworks and controls
         to support internal audits with unique requirements. </p> 
    
         <p>Use the following links to get started with the AWS Audit Manager API:</p> 
         <ul>
            <li> 
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html\">Actions</a>: An alphabetical list of all AWS Audit Manager API operations.</p> 
            </li>
            <li> 
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html\">Data types</a>: An alphabetical list of all AWS Audit Manager data types.</p> 
            </li>
            <li> 
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html\">Common parameters</a>: Parameters that all Query operations can use.</p> 
            </li>
            <li> 
               <p>
                  <a href=\"https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html\">Common errors</a>: Client and server errors that all operations can return.</p> 
            </li>
         </ul> 
    
         <p>If you're new to AWS Audit Manager, we recommend that you review the <a href=\"https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html\"> AWS Audit Manager User Guide</a>.</p>")
module GetAccountStatus = {
  type t

  type response = {
    @ocaml.doc("<p>
The status of the specified AWS account.
</p>")
    status: option<accountStatus>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: unit => t = "GetAccountStatusCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ValidateAssessmentReportIntegrity = {
  type t
  type request = {
    @ocaml.doc("<p>
   The relative path of the specified Amazon S3 bucket in which the assessment report is stored.
</p>")
    s3RelativePath: s3Url,
  }
  type response = {
    @ocaml.doc("<p>
Represents any errors that occurred when validating the assessment report.
</p>")
    validationErrors: option<validationErrors>,
    @ocaml.doc("<p>
The unique identifier for the validation signature key.
</p>")
    signatureKeyId: option<string_>,
    @ocaml.doc("<p>
The date and time signature that specifies when the assessment report was created.
</p>")
    signatureDateTime: option<string_>,
    @ocaml.doc("<p>
   The signature algorithm used to code sign the assessment report file.
</p>")
    signatureAlgorithm: option<string_>,
    @ocaml.doc("<p>
Specifies whether the signature key is valid.
</p>")
    signatureValid: option<boolean_>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ValidateAssessmentReportIntegrityCommand"
  let make = (~s3RelativePath, ()) => new({s3RelativePath: s3RelativePath})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
   The name or key of the tag. 
</p>")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the specified resource.
</p>")
    resourceArn: auditManagerArn,
  }

  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>
The tags to be associated with the resource.
</p>")
    tags: tagMap,
    @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the specified resource.
</p>")
    resourceArn: auditManagerArn,
  }

  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the specified delegated administrator account. 
</p>")
    adminAccountId: accountId,
  }
  type response = {
    @ocaml.doc("<p>
   The identifier for the specified AWS organization. 
</p>")
    organizationId: option<organizationId>,
    @ocaml.doc("<p>
   The identifier for the specified delegated administrator account. 
</p>")
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
    @ocaml.doc("<p>
   The delegated administrator account for AWS Audit Manager. 
</p>")
    delegatedAdminAccount: option<accountId>,
    @ocaml.doc("<p>
   The AWS KMS key details. 
</p>")
    kmsKey: option<kmsKey>,
  }
  type response = {
    @ocaml.doc("<p>
 The status of the account registration request. 
</p>")
    status: option<accountStatus>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "RegisterAccountCommand"
  let make = (~delegatedAdminAccount=?, ~kmsKey=?, ()) =>
    new({delegatedAdminAccount: delegatedAdminAccount, kmsKey: kmsKey})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>
   The Amazon Resource Name (ARN) of the specified resource.
</p>")
    resourceArn: auditManagerArn,
  }
  type response = {
    @ocaml.doc("<p>
   The list of tags returned by the <code>ListTagsForResource</code> API.
</p>")
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
    @ocaml.doc("<p>
  Represents the maximum number of results per page, or per API request call.
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results. 
</p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
 The returned list of notifications. 
</p>")
    notifications: option<notifications>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListNotificationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListKeywordsForDataSource = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
The control mapping data source to which the keywords apply.
</p>")
    source: sourceType,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The list of keywords for the specified event mapping source.
</p>")
    keywords: option<keywords>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListKeywordsForDataSourceCommand"
  let make = (~source, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, source: source})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListControls = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
The type of control, such as standard or custom.
</p>")
    controlType: controlType,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The list of control metadata objects returned by the <code>ListControls</code> API. 
</p>")
    controlMetadataList: option<controlMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "ListControlsCommand"
  let make = (~controlType, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, controlType: controlType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentReports = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The list of assessment reports returned by the <code>ListAssessmentReports</code> API.
</p>")
    assessmentReports: option<assessmentReportsMetadata>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListAssessmentReportsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessmentFrameworks = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The type of framework, such as standard or custom. 
</p>")
    frameworkType: frameworkType,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
The list of metadata objects for the specified framework.
</p>")
    frameworkMetadataList: option<frameworkMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "ListAssessmentFrameworksCommand"
  let make = (~frameworkType, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, frameworkType: frameworkType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetServicesInScope = {
  type t

  type response = {
    @ocaml.doc("<p>
   The metadata associated with the aAWS service.
</p>")
    serviceMetadata: option<serviceMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: unit => t = "GetServicesInScopeCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOrganizationAdminAccount = {
  type t

  type response = {
    @ocaml.doc("<p>
   The identifier for the specified organization. 
</p>")
    organizationId: option<organizationId>,
    @ocaml.doc("<p>
   The identifier for the specified administrator account. 
</p>")
    adminAccountId: option<accountId>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: unit => t = "GetOrganizationAdminAccountCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEvidenceFoldersByAssessmentControl = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The identifier for the specified control. 
</p>")
    controlId: uuid,
    @ocaml.doc("<p>
   The identifier for the specified control set.
</p>")
    controlSetId: controlSetId,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The list of evidence folders returned by the <code>GetEvidenceFoldersByAssessmentControl</code> API.
</p>")
    evidenceFolders: option<assessmentEvidenceFolders>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceFoldersByAssessmentControlCommand"
  let make = (~controlId, ~controlSetId, ~assessmentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      controlId: controlId,
      controlSetId: controlSetId,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEvidenceFoldersByAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The list of evidence folders returned by the <code>GetEvidenceFoldersByAssessment</code> API.
</p>")
    evidenceFolders: option<assessmentEvidenceFolders>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceFoldersByAssessmentCommand"
  let make = (~assessmentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the folder in which the evidence is stored.
</p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p>
   The identifier for the specified control set.
</p>")
    controlSetId: controlSetId,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
The folder in which evidence is stored.
</p>")
    evidenceFolder: option<assessmentEvidenceFolder>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~controlSetId, ~assessmentId, ()) =>
    new({
      evidenceFolderId: evidenceFolderId,
      controlSetId: controlSetId,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDelegations = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call.
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results. 
</p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The list of delegations returned by the <code>GetDelegations</code> API. 
</p>")
    delegations: option<delegationMetadataList>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetDelegationsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetChangeLogs = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   
   The identifier for the specified control. 
</p>")
    controlId: option<uuid>,
    @ocaml.doc("<p>
   The identifier for the specified control set.
</p>")
    controlSetId: option<controlSetId>,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
         The list of user activity for the control.
      </p>")
    changeLogs: option<changeLogs>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetChangeLogsCommand"
  let make = (~assessmentId, ~maxResults=?, ~nextToken=?, ~controlId=?, ~controlSetId=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      controlId: controlId,
      controlSetId: controlSetId,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssessmentReportUrl = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
    @ocaml.doc("<p>
The identifier for the assessment report.
</p>")
    assessmentReportId: uuid,
  }
  type response = {preSignedUrl: option<url>}
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetAssessmentReportUrlCommand"
  let make = (~assessmentId, ~assessmentReportId, ()) =>
    new({assessmentId: assessmentId, assessmentReportId: assessmentReportId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateAssessmentReportEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the folder in which evidence is stored.
</p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }

  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DisassociateAssessmentReportEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~assessmentId, ()) =>
    new({evidenceFolderId: evidenceFolderId, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>
 The identifier for the specified administrator account. 
</p>")
    adminAccountId: option<accountId>,
  }

  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeregisterOrganizationAdminAccountCommand"
  let make = (~adminAccountId=?, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeregisterAccount = {
  type t

  type response = {
    @ocaml.doc("<p>
The registration status of the account.
</p>")
    status: option<accountStatus>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: unit => t = "DeregisterAccountCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteControl = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the specified control. 
</p>")
    controlId: uuid,
  }

  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "DeleteControlCommand"
  let make = (~controlId, ()) => new({controlId: controlId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssessmentReport = {
  type t
  type request = {
    @ocaml.doc("<p>
The unique identifier for the assessment report.
</p>")
    assessmentReportId: uuid,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }

  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeleteAssessmentReportCommand"
  let make = (~assessmentReportId, ~assessmentId, ()) =>
    new({assessmentReportId: assessmentReportId, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssessmentFramework = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the specified framework. 
</p>")
    frameworkId: uuid,
  }

  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeleteAssessmentFrameworkCommand"
  let make = (~frameworkId, ()) => new({frameworkId: frameworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }

  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "DeleteAssessmentCommand"
  let make = (~assessmentId, ()) => new({assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateAssessmentReport = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
    @ocaml.doc("<p>
The description of the assessment report.
</p>")
    description: option<assessmentReportDescription>,
    @ocaml.doc("<p>
The name of the new assessment report.
</p>")
    name: assessmentReportName,
  }
  type response = {
    @ocaml.doc("<p>
   The new assessment report returned by the <code>CreateAssessmentReport</code> API.
</p>")
    assessmentReport: option<assessmentReport>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "CreateAssessmentReportCommand"
  let make = (~assessmentId, ~name, ~description=?, ()) =>
    new({assessmentId: assessmentId, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisassociateAssessmentReportEvidence = {
  type t
  type request = {
    @ocaml.doc("<p>
         The list of evidence identifiers. 
      </p>")
    evidenceIds: evidenceIds,
    @ocaml.doc("<p>
         The identifier for the folder in which evidence is stored.
      </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p>
         The identifier for the specified assessment. 
      </p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
         A list of errors returned by the <code>BatchDisassociateAssessmentReportEvidence</code> API. 
      </p>")
    errors: option<assessmentReportEvidenceErrors>,
    @ocaml.doc("<p>
         The identifier for the evidence. 
      </p>")
    evidenceIds: option<evidenceIds>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchDisassociateAssessmentReportEvidenceCommand"
  let make = (~evidenceIds, ~evidenceFolderId, ~assessmentId, ()) =>
    new({evidenceIds: evidenceIds, evidenceFolderId: evidenceFolderId, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDeleteDelegationByAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>
         The identifier for the specified assessment. 
      </p>")
    assessmentId: uuid,
    @ocaml.doc("<p>
   The identifiers for the specified delegations.
      </p>")
    delegationIds: delegationIds,
  }
  type response = {
    @ocaml.doc("<p>
         A list of errors returned by the <code>BatchDeleteDelegationByAssessment</code> API. 
      </p>")
    errors: option<batchDeleteDelegationByAssessmentErrors>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchDeleteDelegationByAssessmentCommand"
  let make = (~assessmentId, ~delegationIds, ()) =>
    new({assessmentId: assessmentId, delegationIds: delegationIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchAssociateAssessmentReportEvidence = {
  type t
  type request = {
    @ocaml.doc("<p>
         The list of evidence identifiers. 
      </p>")
    evidenceIds: evidenceIds,
    @ocaml.doc("<p>
         The identifier for the folder in which the evidence is stored.
      </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p>
    The unique identifier for the specified assessment.
      </p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
         A list of errors returned by the <code>BatchAssociateAssessmentReportEvidence</code> API. 
      </p>")
    errors: option<assessmentReportEvidenceErrors>,
    @ocaml.doc("<p>
         The identifier for the evidence. 
      </p>")
    evidenceIds: option<evidenceIds>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchAssociateAssessmentReportEvidenceCommand"
  let make = (~evidenceIds, ~evidenceFolderId, ~assessmentId, ()) =>
    new({evidenceIds: evidenceIds, evidenceFolderId: evidenceFolderId, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateAssessmentReportEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc("<p>
         The identifier for the folder in which evidence is stored.
      </p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p>
         The identifier for the specified assessment. 
      </p>")
    assessmentId: uuid,
  }

  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "AssociateAssessmentReportEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~assessmentId, ()) =>
    new({evidenceFolderId: evidenceFolderId, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateSettings = {
  type t
  type request = {
    @ocaml.doc("<p>
         The AWS KMS key details. 
      </p>")
    kmsKey: option<kmsKey>,
    @ocaml.doc("<p>
A list of the default audit owners.
</p>")
    defaultProcessOwners: option<roles>,
    @ocaml.doc("<p>
   The default storage destination for assessment reports.
</p>")
    defaultAssessmentReportsDestination: option<assessmentReportsDestination>,
    @ocaml.doc("<p>
The Amazon Simple Notification Service (Amazon SNS) topic to which AWS Audit Manager sends notifications.
</p>")
    snsTopic: option<snsArn>,
  }
  type response = {
    @ocaml.doc("<p>
The current list of settings.
</p>")
    settings: option<settings>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "UpdateSettingsCommand"
  let make = (
    ~kmsKey=?,
    ~defaultProcessOwners=?,
    ~defaultAssessmentReportsDestination=?,
    ~snsTopic=?,
    (),
  ) =>
    new({
      kmsKey: kmsKey,
      defaultProcessOwners: defaultProcessOwners,
      defaultAssessmentReportsDestination: defaultAssessmentReportsDestination,
      snsTopic: snsTopic,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssessmentControl = {
  type t
  type request = {
    @ocaml.doc("<p>
   The comment body text for the specified control. 
</p>")
    commentBody: option<controlCommentBody>,
    @ocaml.doc("<p>
   The status of the specified control. 
</p>")
    controlStatus: option<controlStatus>,
    @ocaml.doc("<p>
   
   The identifier for the specified control. 
</p>")
    controlId: uuid,
    @ocaml.doc("<p>
   The identifier for the specified control set.
</p>")
    controlSetId: controlSetId,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The name of the updated control set returned by the <code>UpdateAssessmentControl</code> API. 
</p>")
    control: option<assessmentControl>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentControlCommand"
  let make = (~controlId, ~controlSetId, ~assessmentId, ~commentBody=?, ~controlStatus=?, ()) =>
    new({
      commentBody: commentBody,
      controlStatus: controlStatus,
      controlId: controlId,
      controlSetId: controlSetId,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSettings = {
  type t
  type request = {
    @ocaml.doc("<p>
   The list of <code>SettingAttribute</code> enum values. 
</p>")
    attribute: settingAttribute,
  }
  type response = {
    @ocaml.doc("<p>
   The settings object that holds all supported AWS Audit Manager settings. 
</p>")
    settings: option<settings>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetSettingsCommand"
  let make = (~attribute, ()) => new({attribute: attribute})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEvidence = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the evidence. 
</p>")
    evidenceId: uuid,
    @ocaml.doc("<p>
   The identifier for the folder in which the evidence is stored.
</p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p>
   The identifier for the specified control set.
</p>")
    controlSetId: controlSetId,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The evidence returned by the <code>GetEvidenceResponse</code> API.
</p>")
    evidence: option<evidence>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetEvidenceCommand"
  let make = (~evidenceId, ~evidenceFolderId, ~controlSetId, ~assessmentId, ()) =>
    new({
      evidenceId: evidenceId,
      evidenceFolderId: evidenceFolderId,
      controlSetId: controlSetId,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchImportEvidenceToAssessmentControl = {
  type t
  type request = {
    @ocaml.doc("<p>
         The list of manual evidence objects.
      </p>")
    manualEvidence: manualEvidenceList,
    @ocaml.doc("<p>
         
               The identifier for the specified control. 
      </p>")
    controlId: uuid,
    @ocaml.doc("<p>
         The identifier for the specified control set.
      </p>")
    controlSetId: controlSetId,
    @ocaml.doc("<p>
         The identifier for the specified assessment. 
      </p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
         A list of errors returned by the <code>BatchImportEvidenceToAssessmentControl</code> API. 
      </p>")
    errors: option<batchImportEvidenceToAssessmentControlErrors>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchImportEvidenceToAssessmentControlCommand"
  let make = (~manualEvidence, ~controlId, ~controlSetId, ~assessmentId, ()) =>
    new({
      manualEvidence: manualEvidence,
      controlId: controlId,
      controlSetId: controlSetId,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchCreateDelegationByAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>
         The identifier for the specified assessment. 
      </p>")
    assessmentId: uuid,
    @ocaml.doc("<p>
         The API request to batch create delegations in AWS Audit Manager.
      </p>")
    createDelegationRequests: createDelegationRequests,
  }
  type response = {
    @ocaml.doc("<p>
         A list of errors returned by the <code>BatchCreateDelegationByAssessment</code> API. 
      </p>")
    errors: option<batchCreateDelegationByAssessmentErrors>,
    @ocaml.doc("<p>
         The delegations associated with the assessment. 
      </p>")
    delegations: option<delegations>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "BatchCreateDelegationByAssessmentCommand"
  let make = (~assessmentId, ~createDelegationRequests, ()) =>
    new({assessmentId: assessmentId, createDelegationRequests: createDelegationRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateControl = {
  type t
  type request = {
    @ocaml.doc("<p>
   The data mapping sources for the specified control.
</p>")
    controlMappingSources: controlMappingSources,
    @ocaml.doc("<p>
         
         The recommended actions to carry out if the control is not fulfilled.
      </p>")
    actionPlanInstructions: option<actionPlanInstructions>,
    @ocaml.doc("<p>
         The title of the action plan for remediating the control.
      </p>")
    actionPlanTitle: option<actionPlanTitle>,
    @ocaml.doc("<p>
         The steps that to follow to determine if the control has been satisfied.
      </p>")
    testingInformation: option<testingInformation>,
    @ocaml.doc("<p>
The optional description of the control.
</p>")
    description: option<controlDescription>,
    @ocaml.doc("<p>
The name of the control to be updated.
</p>")
    name: controlName,
    @ocaml.doc("<p>
   The identifier for the specified control. 
</p>")
    controlId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The name of the updated control set returned by the <code>UpdateControl</code> API. 
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
      controlMappingSources: controlMappingSources,
      actionPlanInstructions: actionPlanInstructions,
      actionPlanTitle: actionPlanTitle,
      testingInformation: testingInformation,
      description: description,
      name: name,
      controlId: controlId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListAssessments = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The metadata associated with the assessment.
</p>")
    assessmentMetadata: option<listAssessmentMetadata>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "ListAssessmentsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEvidenceByEvidenceFolder = {
  type t
  type request = {
    @ocaml.doc("<p>
   Represents the maximum number of results per page, or per API request call. 
</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The unique identifier for the folder in which the evidence is stored.
</p>")
    evidenceFolderId: uuid,
    @ocaml.doc("<p>
   The identifier for the control set. 
</p>")
    controlSetId: controlSetId,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The pagination token used to fetch the next set of results.
</p>")
    nextToken: option<token>,
    @ocaml.doc("<p>
   The list of evidence returned by the <code>GetEvidenceByEvidenceFolder</code> API.
</p>")
    evidence: option<evidenceList>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "GetEvidenceByEvidenceFolderCommand"
  let make = (~evidenceFolderId, ~controlSetId, ~assessmentId, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      evidenceFolderId: evidenceFolderId,
      controlSetId: controlSetId,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetControl = {
  type t
  type request = {
    @ocaml.doc("<p>
   
   The identifier for the specified control. 
</p>")
    controlId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The name of the control returned by the <code>GetControl</code> API. 
</p>")
    control: option<control>,
  }
  @module("@aws-sdk/client-auditmanager") @new external new: request => t = "GetControlCommand"
  let make = (~controlId, ()) => new({controlId: controlId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateControl = {
  type t
  type request = {
    @ocaml.doc("<p>
   The tags associated with the control.
</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>
   The data mapping sources for the specified control.
</p>")
    controlMappingSources: createControlMappingSources,
    @ocaml.doc("<p>
         The recommended actions to carry out if the control is not fulfilled.
      </p>")
    actionPlanInstructions: option<actionPlanInstructions>,
    @ocaml.doc("<p>
         The title of the action plan for remediating the control.
      </p>")
    actionPlanTitle: option<actionPlanTitle>,
    @ocaml.doc("<p>
         The steps to follow to determine if the control has been satisfied.
      </p>")
    testingInformation: option<testingInformation>,
    @ocaml.doc("<p>
The description of the control.
</p>")
    description: option<controlDescription>,
    @ocaml.doc("<p>
The name of the control.
</p>")
    name: controlName,
  }
  type response = {
    @ocaml.doc("<p>
   The new control returned by the <code>CreateControl</code> API. 
</p>")
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
      tags: tags,
      controlMappingSources: controlMappingSources,
      actionPlanInstructions: actionPlanInstructions,
      actionPlanTitle: actionPlanTitle,
      testingInformation: testingInformation,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssessmentControlSetStatus = {
  type t
  type request = {
    @ocaml.doc("<p>
   The comment related to the status update.
</p>")
    comment: delegationComment,
    @ocaml.doc("<p>
The status of the control set that is being updated.
</p>")
    status: controlSetStatus,
    @ocaml.doc("<p>
   The identifier for the specified control set.
</p>")
    controlSetId: string_,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The name of the updated control set returned by the <code>UpdateAssessmentControlSetStatus</code> API. 
</p>")
    controlSet: option<assessmentControlSet>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentControlSetStatusCommand"
  let make = (~comment, ~status, ~controlSetId, ~assessmentId, ()) =>
    new({comment: comment, status: status, controlSetId: controlSetId, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssessmentStatus = {
  type t
  type request = {
    @ocaml.doc("<p>
   The current status of the specified assessment. 
</p>")
    status: assessmentStatus,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The name of the updated assessment returned by the <code>UpdateAssessmentStatus</code> API. 
</p>")
    assessment: option<assessment>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentStatusCommand"
  let make = (~status, ~assessmentId, ()) => new({status: status, assessmentId: assessmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssessmentFramework = {
  type t
  type request = {
    @ocaml.doc("<p>
   The control sets associated with the framework. 
</p>")
    controlSets: updateAssessmentFrameworkControlSets,
    @ocaml.doc("<p>
   The compliance type that the new custom framework supports, such as CIS or HIPAA.
</p>")
    complianceType: option<complianceType>,
    @ocaml.doc("<p>
The description of the framework that is to be updated.
</p>")
    description: option<frameworkDescription>,
    @ocaml.doc("<p>
The name of the framework to be updated.
</p>")
    name: frameworkName,
    @ocaml.doc("<p>
   The identifier for the specified framework. 
</p>")
    frameworkId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
The name of the specified framework.
</p>")
    framework: option<framework>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "UpdateAssessmentFrameworkCommand"
  let make = (~controlSets, ~name, ~frameworkId, ~complianceType=?, ~description=?, ()) =>
    new({
      controlSets: controlSets,
      complianceType: complianceType,
      description: description,
      name: name,
      frameworkId: frameworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>
 The list of roles for the specified assessment. 
</p>")
    roles: option<roles>,
    @ocaml.doc("<p>
   The assessment report storage destination for the specified assessment that is being updated. 
</p>")
    assessmentReportsDestination: option<assessmentReportsDestination>,
    @ocaml.doc("<p>
 The scope of the specified assessment. 
</p>")
    scope: scope,
    @ocaml.doc("<p>
 The description of the specified assessment. 
</p>")
    assessmentDescription: option<assessmentDescription>,
    @ocaml.doc("<p>
 The name of the specified assessment to be updated. 
</p>")
    assessmentName: option<assessmentName>,
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The response object (name of the updated assessment) for the <code>UpdateAssessmentRequest</code> API. 
</p>")
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
      roles: roles,
      assessmentReportsDestination: assessmentReportsDestination,
      scope: scope,
      assessmentDescription: assessmentDescription,
      assessmentName: assessmentName,
      assessmentId: assessmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAssessmentFramework = {
  type t
  type request = {
    @ocaml.doc("<p>
   The identifier for the specified framework. 
</p>")
    frameworkId: uuid,
  }
  type response = {
    @ocaml.doc("<p>
   The framework returned by the <code>GetAssessmentFramework</code> API.
</p>")
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
    @ocaml.doc("<p>
   The identifier for the specified assessment. 
</p>")
    assessmentId: uuid,
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
    @ocaml.doc("<p>
   The tags associated with the framework.
</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>
   The control sets to be associated with the framework. 
</p>")
    controlSets: createAssessmentFrameworkControlSets,
    @ocaml.doc("<p>
The compliance type that the new custom framework supports, such as CIS or HIPAA.
</p>")
    complianceType: option<complianceType>,
    @ocaml.doc("<p>
An optional description for the new custom framework.
</p>")
    description: option<frameworkDescription>,
    @ocaml.doc("<p>
The name of the new custom framework.
</p>")
    name: frameworkName,
  }
  type response = {
    @ocaml.doc("<p>
   The name of the new framework returned by the <code>CreateAssessmentFramework</code> API.
</p>")
    framework: option<framework>,
  }
  @module("@aws-sdk/client-auditmanager") @new
  external new: request => t = "CreateAssessmentFrameworkCommand"
  let make = (~controlSets, ~name, ~tags=?, ~complianceType=?, ~description=?, ()) =>
    new({
      tags: tags,
      controlSets: controlSets,
      complianceType: complianceType,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateAssessment = {
  type t
  type request = {
    @ocaml.doc("<p>
   The tags associated with the assessment. 
</p>")
    tags: option<tagMap>,
    @ocaml.doc("<p>
         The identifier for the specified framework. 
      </p>")
    frameworkId: uuid,
    @ocaml.doc("<p>
         The list of roles for the specified assessment. 
      </p>")
    roles: roles,
    scope: scope,
    @ocaml.doc("<p>
         The assessment report storage destination for the specified assessment that is being created. 
      </p>")
    assessmentReportsDestination: assessmentReportsDestination,
    @ocaml.doc("<p>
         The optional description of the assessment to be created.
      </p>")
    description: option<assessmentDescription>,
    @ocaml.doc("<p>
         The name of the assessment to be created.
      </p>")
    name: assessmentName,
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
  ) =>
    new({
      tags: tags,
      frameworkId: frameworkId,
      roles: roles,
      scope: scope,
      assessmentReportsDestination: assessmentReportsDestination,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
