type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-auditmanager") @new external createClient: unit => awsServiceClient = "AuditManagerClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type organizationId = string
type validationExceptionReason = [@as("other") #Other | @as("fieldValidationFailed") #FieldValidationFailed | @as("cannotParse") #CannotParse | @as("unknownOperation") #UnknownOperation]
type username = string
type urlLink = string
type uuid = string
type troubleshootingText = string
type token = string
type timestampUUID = string
type timestamp_ = Js.Date.t;
type testingInformation = string
type tagValue = string
type tagKey = string
type string_ = string
type sourceType = [@as("MANUAL") #MANUAL | @as("AWS_API_Call") #AWS_API_Call | @as("AWS_Security_Hub") #AWS_Security_Hub | @as("AWS_Config") #AWS_Config | @as("AWS_Cloudtrail") #AWS_Cloudtrail]
type sourceSetUpOption = [@as("Procedural_Controls_Mapping") #Procedural_Controls_Mapping | @as("System_Controls_Mapping") #System_Controls_Mapping]
type sourceName = string
type sourceFrequency = [@as("MONTHLY") #MONTHLY | @as("WEEKLY") #WEEKLY | @as("DAILY") #DAILY]
type sourceDescription = string
type snsArn = string
type settingAttribute = [@as("DEFAULT_PROCESS_OWNERS") #DEFAULT_PROCESS_OWNERS | @as("DEFAULT_ASSESSMENT_REPORTS_DESTINATION") #DEFAULT_ASSESSMENT_REPORTS_DESTINATION | @as("SNS_TOPIC") #SNS_TOPIC | @as("IS_AWS_ORG_ENABLED") #IS_AWS_ORG_ENABLED | @as("ALL") #ALL]
type snstopic = string
type s3Url = string
type roleType = [@as("RESOURCE_OWNER") #RESOURCE_OWNER | @as("PROCESS_OWNER") #PROCESS_OWNER]
type objectTypeEnum = [@as("ASSESSMENT_REPORT") #ASSESSMENT_REPORT | @as("DELEGATION") #DELEGATION | @as("CONTROL") #CONTROL | @as("CONTROL_SET") #CONTROL_SET | @as("ASSESSMENT") #ASSESSMENT]
type nonEmptyString = string
type maxResults = int
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
type delegationStatus = [@as("COMPLETE") #COMPLETE | @as("UNDER_REVIEW") #UNDER_REVIEW | @as("IN_PROGRESS") #IN_PROGRESS]
type delegationComment = string
type createdBy = string
type controlsCount = int
type controlType = [@as("Custom") #Custom | @as("Standard") #Standard]
type controlStatus = [@as("INACTIVE") #INACTIVE | @as("REVIEWED") #REVIEWED | @as("UNDER_REVIEW") #UNDER_REVIEW]
type controlSources = string
type controlSetsCount = int
type controlSetStatus = [@as("REVIEWED") #REVIEWED | @as("UNDER_REVIEW") #UNDER_REVIEW | @as("ACTIVE") #ACTIVE]
type controlSetName = string
type controlSetId = string
type controlResponse = [@as("IGNORE") #IGNORE | @as("DEFER") #DEFER | @as("AUTOMATE") #AUTOMATE | @as("MANUAL") #MANUAL]
type controlName = string
type controlDescription = string
type controlCommentBody = string
type complianceType = string
type boolean_ = bool
type auditManagerArn = string
type assessmentStatus = [@as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type assessmentReportStatus = [@as("FAILED") #FAILED | @as("IN_PROGRESS") #IN_PROGRESS | @as("COMPLETE") #COMPLETE]
type assessmentReportName = string
type assessmentReportDestinationType = [@as("S3") #S3]
type assessmentReportDescription = string
type assessmentName = string
type assessmentFrameworkDescription = string
type assessmentEvidenceFolderName = string
type assessmentDescription = string
type actionPlanTitle = string
type actionPlanInstructions = string
type actionEnum = [@as("IMPORT_EVIDENCE") #IMPORT_EVIDENCE | @as("REVIEWED") #REVIEWED | @as("UNDER_REVIEW") #UNDER_REVIEW | @as("DELETE") #DELETE | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE | @as("UPDATE_METADATA") #UPDATE_METADATA | @as("CREATE") #CREATE]
type accountStatus = [@as("PENDING_ACTIVATION") #PENDING_ACTIVATION | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE]
type accountName = string
type accountId = string
type awsserviceName = string
type validationExceptionField = {
message: string_,
  name: string_
}
type validationErrors = array<nonEmptyString>
type url = {
link: option<urlLink>,
  hyperlinkName: option<hyperlinkName>
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type sourceKeyword = {
keywordValue: option<keywordValue>,
  keywordInputType: option<keywordInputType>
}
type serviceMetadata = {
category: option<nonEmptyString>,
  description: option<nonEmptyString>,
  displayName: option<nonEmptyString>,
  name: option<awsserviceName>
}
type role = {
roleArn: option<iamArn>,
  roleType: option<roleType>
}
type resource = {
value: option<string_>,
  arn: option<genericArn>
}
type notification = {
source: option<nonEmptyString>,
  eventTime: option<timestamp_>,
  description: option<nonEmptyString>,
  controlSetName: option<nonEmptyString>,
  controlSetId: option<controlSetId>,
  assessmentName: option<assessmentName>,
  assessmentId: option<uuid>,
  id: option<timestampUUID>
}
type manualEvidence = {
s3ResourcePath: option<s3Url>
}
type keywords = array<keywordValue>
type frameworkMetadata = {
complianceType: option<complianceType>,
  logo: option<filename>,
  description: option<assessmentFrameworkDescription>,
  name: option<assessmentName>
}
type evidenceSources = array<nonEmptyString>
type evidenceIds = array<uuid>
type evidenceAttributes = Js.Dict.t<evidenceAttributeValue>
type delegationMetadata = {
controlSetName: option<nonEmptyString>,
  creationTime: option<timestamp_>,
  roleArn: option<iamArn>,
  status: option<delegationStatus>,
  assessmentId: option<uuid>,
  assessmentName: option<assessmentName>,
  id: option<uuid>
}
type delegationIds = array<uuid>
type delegation = {
createdBy: option<createdBy>,
  comment: option<delegationComment>,
  controlSetId: option<controlSetId>,
  lastUpdated: option<timestamp_>,
  creationTime: option<timestamp_>,
  roleType: option<roleType>,
  roleArn: option<iamArn>,
  status: option<delegationStatus>,
  assessmentId: option<uuid>,
  assessmentName: option<assessmentName>,
  id: option<uuid>
}
type createDelegationRequest = {
roleType: option<roleType>,
  roleArn: option<iamArn>,
  controlSetId: option<controlSetId>,
  comment: option<delegationComment>
}
type createAssessmentFrameworkControl = {
id: option<uuid>
}
type controlMetadata = {
lastUpdatedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  controlSources: option<controlSources>,
  name: option<controlName>,
  id: option<uuid>,
  arn: option<auditManagerArn>
}
type controlComment = {
postedDate: option<timestamp_>,
  commentBody: option<controlCommentBody>,
  authorName: option<username>
}
type changeLog = {
createdBy: option<iamArn>,
  createdAt: option<timestamp_>,
  action: option<actionEnum>,
  objectName: option<nonEmptyString>,
  objectType: option<objectTypeEnum>
}
type batchDeleteDelegationByAssessmentError = {
errorMessage: option<errorMessage>,
  errorCode: option<errorCode>,
  delegationId: option<uuid>
}
type assessmentReportsDestination = {
destination: option<s3Url>,
  destinationType: option<assessmentReportDestinationType>
}
type assessmentReportMetadata = {
creationTime: option<timestamp_>,
  status: option<assessmentReportStatus>,
  author: option<username>,
  assessmentName: option<assessmentName>,
  assessmentId: option<uuid>,
  description: option<assessmentReportDescription>,
  name: option<assessmentReportName>,
  id: option<uuid>
}
type assessmentReportEvidenceError = {
errorMessage: option<errorMessage>,
  errorCode: option<errorCode>,
  evidenceId: option<uuid>
}
type assessmentReport = {
creationTime: option<timestamp_>,
  status: option<assessmentReportStatus>,
  author: option<username>,
  assessmentName: option<assessmentName>,
  assessmentId: option<uuid>,
  awsAccountId: option<accountId>,
  description: option<assessmentReportDescription>,
  name: option<assessmentReportName>,
  id: option<uuid>
}
type assessmentFrameworkMetadata = {
lastUpdatedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  controlSetsCount: option<controlSetsCount>,
  controlsCount: option<controlsCount>,
  complianceType: option<complianceType>,
  logo: option<filename>,
  description: option<frameworkDescription>,
  name: option<frameworkName>,
  @as("type") type_: option<frameworkType>,
  id: option<uuid>,
  arn: option<auditManagerArn>
}
type assessmentEvidenceFolder = {
evidenceAwsServiceSourceCount: option<integer_>,
  evidenceByTypeUserActivityCount: option<integer_>,
  evidenceByTypeComplianceCheckIssuesCount: option<integer_>,
  evidenceByTypeComplianceCheckCount: option<integer_>,
  evidenceByTypeManualCount: option<integer_>,
  evidenceByTypeConfigurationDataCount: option<integer_>,
  evidenceResourcesIncludedCount: option<integer_>,
  controlName: option<controlName>,
  assessmentReportSelectionCount: option<integer_>,
  totalEvidence: option<integer_>,
  author: option<string_>,
  dataSource: option<string_>,
  id: option<uuid>,
  controlId: option<uuid>,
  controlSetId: option<controlSetId>,
  assessmentId: option<uuid>,
  date: option<timestamp_>,
  name: option<assessmentEvidenceFolderName>
}
type awsservice = {
serviceName: option<awsserviceName>
}
type awsaccount = {
name: option<accountName>,
  emailAddress: option<emailAddress>,
  id: option<accountId>
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
type createControlMappingSource = {
troubleshootingText: option<troubleshootingText>,
  sourceFrequency: option<sourceFrequency>,
  sourceKeyword: option<sourceKeyword>,
  sourceType: option<sourceType>,
  sourceSetUpOption: option<sourceSetUpOption>,
  sourceDescription: option<sourceDescription>,
  sourceName: option<sourceName>
}
type createAssessmentFrameworkControls = array<createAssessmentFrameworkControl>
type controlMetadataList = array<controlMetadata>
type controlMappingSource = {
troubleshootingText: option<troubleshootingText>,
  sourceFrequency: option<sourceFrequency>,
  sourceKeyword: option<sourceKeyword>,
  sourceType: option<sourceType>,
  sourceSetUpOption: option<sourceSetUpOption>,
  sourceDescription: option<sourceDescription>,
  sourceName: option<sourceName>,
  sourceId: option<uuid>
}
type controlComments = array<controlComment>
type changeLogs = array<changeLog>
type batchImportEvidenceToAssessmentControlError = {
errorMessage: option<errorMessage>,
  errorCode: option<errorCode>,
  manualEvidence: option<manualEvidence>
}
type batchDeleteDelegationByAssessmentErrors = array<batchDeleteDelegationByAssessmentError>
type batchCreateDelegationByAssessmentError = {
errorMessage: option<errorMessage>,
  errorCode: option<errorCode>,
  createDelegationRequest: option<createDelegationRequest>
}
type assessmentReportsMetadata = array<assessmentReportMetadata>
type assessmentReportEvidenceErrors = array<assessmentReportEvidenceError>
type assessmentEvidenceFolders = array<assessmentEvidenceFolder>
type awsservices = array<awsservice>
type awsaccounts = array<awsaccount>
type updateAssessmentFrameworkControlSet = {
controls: option<createAssessmentFrameworkControls>,
  name: controlSetName,
  id: option<controlSetName>
}
type settings = {
kmsKey: option<kmsKey>,
  defaultProcessOwners: option<roles>,
  defaultAssessmentReportsDestination: option<assessmentReportsDestination>,
  snsTopic: option<snstopic>,
  isAwsOrgEnabled: option<boolean_>
}
type scope = {
awsServices: option<awsservices>,
  awsAccounts: option<awsaccounts>
}
type evidence = {
assessmentReportSelection: option<string_>,
  id: option<uuid>,
  evidenceFolderId: option<uuid>,
  awsAccountId: option<accountId>,
  awsOrganization: option<string_>,
  complianceCheck: option<string_>,
  iamId: option<iamArn>,
  attributes: option<evidenceAttributes>,
  resourcesIncluded: option<resources>,
  evidenceByType: option<string_>,
  eventName: option<eventName>,
  eventSource: option<awsserviceName>,
  time: option<timestamp_>,
  evidenceAwsAccountId: option<accountId>,
  dataSource: option<string_>
}
type createControlMappingSources = array<createControlMappingSource>
type createAssessmentFrameworkControlSet = {
controls: option<createAssessmentFrameworkControls>,
  name: controlSetName
}
type controlMappingSources = array<controlMappingSource>
type batchImportEvidenceToAssessmentControlErrors = array<batchImportEvidenceToAssessmentControlError>
type batchCreateDelegationByAssessmentErrors = array<batchCreateDelegationByAssessmentError>
type assessmentMetadataItem = {
lastUpdated: option<timestamp_>,
  creationTime: option<timestamp_>,
  delegations: option<delegations>,
  roles: option<roles>,
  status: option<assessmentStatus>,
  complianceType: option<complianceType>,
  id: option<uuid>,
  name: option<assessmentName>
}
type assessmentControl = {
assessmentReportEvidenceCount: option<integer_>,
  evidenceCount: option<integer_>,
  evidenceSources: option<evidenceSources>,
  comments: option<controlComments>,
  response: option<controlResponse>,
  status: option<controlStatus>,
  description: option<controlDescription>,
  name: option<controlName>,
  id: option<uuid>
}
type updateAssessmentFrameworkControlSets = array<updateAssessmentFrameworkControlSet>
type listAssessmentMetadata = array<assessmentMetadataItem>
type evidenceList = array<evidence>
type createAssessmentFrameworkControlSets = array<createAssessmentFrameworkControlSet>
type control = {
tags: option<tagMap>,
  lastUpdatedBy: option<lastUpdatedBy>,
  createdBy: option<createdBy>,
  lastUpdatedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  controlMappingSources: option<controlMappingSources>,
  controlSources: option<controlSources>,
  actionPlanInstructions: option<actionPlanInstructions>,
  actionPlanTitle: option<actionPlanTitle>,
  testingInformation: option<testingInformation>,
  description: option<controlDescription>,
  name: option<controlName>,
  @as("type") type_: option<controlType>,
  id: option<uuid>,
  arn: option<auditManagerArn>
}
type assessmentMetadata = {
lastUpdated: option<timestamp_>,
  creationTime: option<timestamp_>,
  delegations: option<delegations>,
  roles: option<roles>,
  scope: option<scope>,
  assessmentReportsDestination: option<assessmentReportsDestination>,
  status: option<assessmentStatus>,
  complianceType: option<complianceType>,
  description: option<assessmentDescription>,
  id: option<uuid>,
  name: option<assessmentName>
}
type assessmentControls = array<assessmentControl>
type controls = array<control>
type assessmentControlSet = {
manualEvidenceCount: option<integer_>,
  systemEvidenceCount: option<integer_>,
  delegations: option<delegations>,
  controls: option<assessmentControls>,
  roles: option<roles>,
  status: option<controlSetStatus>,
  description: option<nonEmptyString>,
  id: option<controlSetId>
}
type controlSet = {
controls: option<controls>,
  name: option<controlSetName>,
  id: option<uuid>
}
type assessmentControlSets = array<assessmentControlSet>
type controlSets = array<controlSet>
type assessmentFramework = {
controlSets: option<assessmentControlSets>,
  metadata: option<frameworkMetadata>,
  arn: option<auditManagerArn>,
  id: option<uuid>
}
type framework = {
tags: option<tagMap>,
  lastUpdatedBy: option<lastUpdatedBy>,
  createdBy: option<createdBy>,
  lastUpdatedAt: option<timestamp_>,
  createdAt: option<timestamp_>,
  controlSets: option<controlSets>,
  controlSources: option<controlSources>,
  logo: option<filename>,
  description: option<frameworkDescription>,
  complianceType: option<complianceType>,
  @as("type") type_: option<frameworkType>,
  name: option<frameworkName>,
  id: option<uuid>,
  arn: option<auditManagerArn>
}
type assessment = {
tags: option<tagMap>,
  framework: option<assessmentFramework>,
  metadata: option<assessmentMetadata>,
  awsAccount: option<awsaccount>,
  arn: option<auditManagerArn>
}

module GetAccountStatus = {
  type t;
  type request = unit
  type response = {
status: option<accountStatus>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetAccountStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ValidateAssessmentReportIntegrity = {
  type t;
  type request = {
s3RelativePath: s3Url
}
  type response = {
validationErrors: option<validationErrors>,
  signatureKeyId: option<string_>,
  signatureDateTime: option<string_>,
  signatureAlgorithm: option<string_>,
  signatureValid: option<boolean_>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ValidateAssessmentReportIntegrityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
  resourceArn: auditManagerArn
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagMap,
  resourceArn: auditManagerArn
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterOrganizationAdminAccount = {
  type t;
  type request = {
adminAccountId: accountId
}
  type response = {
organizationId: option<organizationId>,
  adminAccountId: option<accountId>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "RegisterOrganizationAdminAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterAccount = {
  type t;
  type request = {
delegatedAdminAccount: option<accountId>,
  kmsKey: option<kmsKey>
}
  type response = {
status: option<accountStatus>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "RegisterAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
resourceArn: auditManagerArn
}
  type response = {
tags: option<tagMap>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListNotifications = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>
}
  type response = {
nextToken: option<token>,
  notifications: option<notifications>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ListNotificationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListKeywordsForDataSource = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>,
  source: sourceType
}
  type response = {
nextToken: option<token>,
  keywords: option<keywords>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ListKeywordsForDataSourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListControls = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>,
  controlType: controlType
}
  type response = {
nextToken: option<token>,
  controlMetadataList: option<controlMetadataList>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ListControlsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentReports = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>
}
  type response = {
nextToken: option<token>,
  assessmentReports: option<assessmentReportsMetadata>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ListAssessmentReportsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentFrameworks = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>,
  frameworkType: frameworkType
}
  type response = {
nextToken: option<token>,
  frameworkMetadataList: option<frameworkMetadataList>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ListAssessmentFrameworksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetServicesInScope = {
  type t;
  type request = unit
  type response = {
serviceMetadata: option<serviceMetadataList>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetServicesInScopeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationAdminAccount = {
  type t;
  type request = unit
  type response = {
organizationId: option<organizationId>,
  adminAccountId: option<accountId>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetOrganizationAdminAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceFoldersByAssessmentControl = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>,
  controlId: uuid,
  controlSetId: controlSetId,
  assessmentId: uuid
}
  type response = {
nextToken: option<token>,
  evidenceFolders: option<assessmentEvidenceFolders>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetEvidenceFoldersByAssessmentControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceFoldersByAssessment = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>,
  assessmentId: uuid
}
  type response = {
nextToken: option<token>,
  evidenceFolders: option<assessmentEvidenceFolders>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetEvidenceFoldersByAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceFolder = {
  type t;
  type request = {
evidenceFolderId: uuid,
  controlSetId: controlSetId,
  assessmentId: uuid
}
  type response = {
evidenceFolder: option<assessmentEvidenceFolder>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetEvidenceFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDelegations = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>
}
  type response = {
nextToken: option<token>,
  delegations: option<delegationMetadataList>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetDelegationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetChangeLogs = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>,
  controlId: option<uuid>,
  controlSetId: option<controlSetId>,
  assessmentId: uuid
}
  type response = {
nextToken: option<token>,
  changeLogs: option<changeLogs>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetChangeLogsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAssessmentReportUrl = {
  type t;
  type request = {
assessmentId: uuid,
  assessmentReportId: uuid
}
  type response = {
preSignedUrl: option<url>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetAssessmentReportUrlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateAssessmentReportEvidenceFolder = {
  type t;
  type request = {
evidenceFolderId: uuid,
  assessmentId: uuid
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "DisassociateAssessmentReportEvidenceFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterOrganizationAdminAccount = {
  type t;
  type request = {
adminAccountId: option<accountId>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "DeregisterOrganizationAdminAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeregisterAccount = {
  type t;
  type request = unit
  type response = {
status: option<accountStatus>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "DeregisterAccountCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteControl = {
  type t;
  type request = {
controlId: uuid
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "DeleteControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessmentReport = {
  type t;
  type request = {
assessmentReportId: uuid,
  assessmentId: uuid
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "DeleteAssessmentReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessmentFramework = {
  type t;
  type request = {
frameworkId: uuid
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "DeleteAssessmentFrameworkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessment = {
  type t;
  type request = {
assessmentId: uuid
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "DeleteAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentReport = {
  type t;
  type request = {
assessmentId: uuid,
  description: option<assessmentReportDescription>,
  name: assessmentReportName
}
  type response = {
assessmentReport: option<assessmentReport>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "CreateAssessmentReportCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateAssessmentReportEvidence = {
  type t;
  type request = {
evidenceIds: evidenceIds,
  evidenceFolderId: uuid,
  assessmentId: uuid
}
  type response = {
errors: option<assessmentReportEvidenceErrors>,
  evidenceIds: option<evidenceIds>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "BatchDisassociateAssessmentReportEvidenceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteDelegationByAssessment = {
  type t;
  type request = {
assessmentId: uuid,
  delegationIds: delegationIds
}
  type response = {
errors: option<batchDeleteDelegationByAssessmentErrors>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "BatchDeleteDelegationByAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateAssessmentReportEvidence = {
  type t;
  type request = {
evidenceIds: evidenceIds,
  evidenceFolderId: uuid,
  assessmentId: uuid
}
  type response = {
errors: option<assessmentReportEvidenceErrors>,
  evidenceIds: option<evidenceIds>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "BatchAssociateAssessmentReportEvidenceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateAssessmentReportEvidenceFolder = {
  type t;
  type request = {
evidenceFolderId: uuid,
  assessmentId: uuid
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "AssociateAssessmentReportEvidenceFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateSettings = {
  type t;
  type request = {
kmsKey: option<kmsKey>,
  defaultProcessOwners: option<roles>,
  defaultAssessmentReportsDestination: option<assessmentReportsDestination>,
  snsTopic: option<snsArn>
}
  type response = {
settings: option<settings>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UpdateSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentControl = {
  type t;
  type request = {
commentBody: option<controlCommentBody>,
  controlStatus: option<controlStatus>,
  controlId: uuid,
  controlSetId: controlSetId,
  assessmentId: uuid
}
  type response = {
control: option<assessmentControl>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UpdateAssessmentControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSettings = {
  type t;
  type request = {
attribute: settingAttribute
}
  type response = {
settings: option<settings>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEvidence = {
  type t;
  type request = {
evidenceId: uuid,
  evidenceFolderId: uuid,
  controlSetId: controlSetId,
  assessmentId: uuid
}
  type response = {
evidence: option<evidence>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetEvidenceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchImportEvidenceToAssessmentControl = {
  type t;
  type request = {
manualEvidence: manualEvidenceList,
  controlId: uuid,
  controlSetId: controlSetId,
  assessmentId: uuid
}
  type response = {
errors: option<batchImportEvidenceToAssessmentControlErrors>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "BatchImportEvidenceToAssessmentControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module BatchCreateDelegationByAssessment = {
  type t;
  type request = {
assessmentId: uuid,
  createDelegationRequests: createDelegationRequests
}
  type response = {
errors: option<batchCreateDelegationByAssessmentErrors>,
  delegations: option<delegations>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "BatchCreateDelegationByAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateControl = {
  type t;
  type request = {
controlMappingSources: controlMappingSources,
  actionPlanInstructions: option<actionPlanInstructions>,
  actionPlanTitle: option<actionPlanTitle>,
  testingInformation: option<testingInformation>,
  description: option<controlDescription>,
  name: controlName,
  controlId: uuid
}
  type response = {
control: option<control>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UpdateControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListAssessments = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>
}
  type response = {
nextToken: option<token>,
  assessmentMetadata: option<listAssessmentMetadata>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "ListAssessmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceByEvidenceFolder = {
  type t;
  type request = {
maxResults: option<maxResults>,
  nextToken: option<token>,
  evidenceFolderId: uuid,
  controlSetId: controlSetId,
  assessmentId: uuid
}
  type response = {
nextToken: option<token>,
  evidence: option<evidenceList>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetEvidenceByEvidenceFolderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetControl = {
  type t;
  type request = {
controlId: uuid
}
  type response = {
control: option<control>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateControl = {
  type t;
  type request = {
tags: option<tagMap>,
  controlMappingSources: createControlMappingSources,
  actionPlanInstructions: option<actionPlanInstructions>,
  actionPlanTitle: option<actionPlanTitle>,
  testingInformation: option<testingInformation>,
  description: option<controlDescription>,
  name: controlName
}
  type response = {
control: option<control>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "CreateControlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentControlSetStatus = {
  type t;
  type request = {
comment: delegationComment,
  status: controlSetStatus,
  controlSetId: string_,
  assessmentId: uuid
}
  type response = {
controlSet: option<assessmentControlSet>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UpdateAssessmentControlSetStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentStatus = {
  type t;
  type request = {
status: assessmentStatus,
  assessmentId: uuid
}
  type response = {
assessment: option<assessment>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UpdateAssessmentStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentFramework = {
  type t;
  type request = {
controlSets: updateAssessmentFrameworkControlSets,
  complianceType: option<complianceType>,
  description: option<frameworkDescription>,
  name: frameworkName,
  frameworkId: uuid
}
  type response = {
framework: option<framework>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UpdateAssessmentFrameworkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessment = {
  type t;
  type request = {
roles: option<roles>,
  assessmentReportsDestination: option<assessmentReportsDestination>,
  scope: scope,
  assessmentDescription: option<assessmentDescription>,
  assessmentName: option<assessmentName>,
  assessmentId: uuid
}
  type response = {
assessment: option<assessment>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "UpdateAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAssessmentFramework = {
  type t;
  type request = {
frameworkId: uuid
}
  type response = {
framework: option<framework>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetAssessmentFrameworkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAssessment = {
  type t;
  type request = {
assessmentId: uuid
}
  type response = {
userRole: option<role>,
  assessment: option<assessment>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "GetAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentFramework = {
  type t;
  type request = {
tags: option<tagMap>,
  controlSets: createAssessmentFrameworkControlSets,
  complianceType: option<complianceType>,
  description: option<frameworkDescription>,
  name: frameworkName
}
  type response = {
framework: option<framework>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "CreateAssessmentFrameworkCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateAssessment = {
  type t;
  type request = {
tags: option<tagMap>,
  frameworkId: uuid,
  roles: roles,
  scope: scope,
  assessmentReportsDestination: assessmentReportsDestination,
  description: option<assessmentDescription>,
  name: assessmentName
}
  type response = {
assessment: option<assessment>
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (request) => t = "CreateAssessmentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
