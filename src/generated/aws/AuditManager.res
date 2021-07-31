type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type organizationId = string
type validationExceptionReason = [@as("other") #other | @as("fieldValidationFailed") #fieldValidationFailed | @as("cannotParse") #cannotParse | @as("unknownOperation") #unknownOperation]
type username = string
type urlLink = string
type uUID = string
type troubleshootingText = string
type token = string
type timestampUUID = string
type amazonawsTimestamp = Js.Date.t;
type testingInformation = string
type tagValue = string
type tagKey = string
type amazonawsString = string
type sourceType = [@as("MANUAL") #MANUAL | @as("AWS_API_Call") #AWS_API_Call | @as("AWS_Security_Hub") #AWS_Security_Hub | @as("AWS_Config") #AWS_Config | @as("AWS_Cloudtrail") #AWS_Cloudtrail]
type sourceSetUpOption = [@as("Procedural_Controls_Mapping") #Procedural_Controls_Mapping | @as("System_Controls_Mapping") #System_Controls_Mapping]
type sourceName = string
type sourceFrequency = [@as("MONTHLY") #MONTHLY | @as("WEEKLY") #WEEKLY | @as("DAILY") #DAILY]
type sourceDescription = string
type snsArn = string
type settingAttribute = [@as("DEFAULT_PROCESS_OWNERS") #DEFAULT_PROCESS_OWNERS | @as("DEFAULT_ASSESSMENT_REPORTS_DESTINATION") #DEFAULT_ASSESSMENT_REPORTS_DESTINATION | @as("SNS_TOPIC") #SNS_TOPIC | @as("IS_AWS_ORG_ENABLED") #IS_AWS_ORG_ENABLED | @as("ALL") #ALL]
type sNSTopic = string
type s3Url = string
type roleType = [@as("RESOURCE_OWNER") #RESOURCE_OWNER | @as("PROCESS_OWNER") #PROCESS_OWNER]
type objectTypeEnum = [@as("ASSESSMENT_REPORT") #ASSESSMENT_REPORT | @as("DELEGATION") #DELEGATION | @as("CONTROL") #CONTROL | @as("CONTROL_SET") #CONTROL_SET | @as("ASSESSMENT") #ASSESSMENT]
type nonEmptyString = string
type maxResults = int;
type lastUpdatedBy = string
type kmsKey = string
type keywordValue = string
type keywordInputType = [@as("SELECT_FROM_LIST") #SELECT_FROM_LIST]
type amazonawsInteger = int;
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
type controlsCount = int;
type controlType = [@as("Custom") #Custom | @as("Standard") #Standard]
type controlStatus = [@as("INACTIVE") #INACTIVE | @as("REVIEWED") #REVIEWED | @as("UNDER_REVIEW") #UNDER_REVIEW]
type controlSources = string
type controlSetsCount = int;
type controlSetStatus = [@as("REVIEWED") #REVIEWED | @as("UNDER_REVIEW") #UNDER_REVIEW | @as("ACTIVE") #ACTIVE]
type controlSetName = string
type controlSetId = string
type controlResponse = [@as("IGNORE") #IGNORE | @as("DEFER") #DEFER | @as("AUTOMATE") #AUTOMATE | @as("MANUAL") #MANUAL]
type controlName = string
type controlDescription = string
type controlCommentBody = string
type complianceType = string
type amazonawsBoolean = bool;
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
type aWSServiceName = string
type validationExceptionField = {
@as("message") message: option<amazonawsString>,
@as("name") name: option<amazonawsString>
}
type validationErrors = array<nonEmptyString>
type uRL = {
@as("link") link: urlLink,
@as("hyperlinkName") hyperlinkName: hyperlinkName
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type sourceKeyword = {
@as("keywordValue") keywordValue: keywordValue,
@as("keywordInputType") keywordInputType: keywordInputType
}
type serviceMetadata = {
@as("category") category: nonEmptyString,
@as("description") description: nonEmptyString,
@as("displayName") displayName: nonEmptyString,
@as("name") name: aWSServiceName
}
type role = {
@as("roleArn") roleArn: iamArn,
@as("roleType") roleType: roleType
}
type resource = {
@as("value") value: amazonawsString,
@as("arn") arn: genericArn
}
type notification = {
@as("source") source: nonEmptyString,
@as("eventTime") eventTime: amazonawsTimestamp,
@as("description") description: nonEmptyString,
@as("controlSetName") controlSetName: nonEmptyString,
@as("controlSetId") controlSetId: controlSetId,
@as("assessmentName") assessmentName: assessmentName,
@as("assessmentId") assessmentId: uUID,
@as("id") id: timestampUUID
}
type manualEvidence = {
@as("s3ResourcePath") s3ResourcePath: s3Url
}
type keywords = array<keywordValue>
type frameworkMetadata = {
@as("complianceType") complianceType: complianceType,
@as("logo") logo: filename,
@as("description") description: assessmentFrameworkDescription,
@as("name") name: assessmentName
}
type evidenceSources = array<nonEmptyString>
type evidenceIds = array<uUID>
type evidenceAttributes = Js.Dict.t< evidenceAttributeValue>
type delegationMetadata = {
@as("controlSetName") controlSetName: nonEmptyString,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("roleArn") roleArn: iamArn,
@as("status") status: delegationStatus,
@as("assessmentId") assessmentId: uUID,
@as("assessmentName") assessmentName: assessmentName,
@as("id") id: uUID
}
type delegationIds = array<uUID>
type delegation = {
@as("createdBy") createdBy: createdBy,
@as("comment") comment: delegationComment,
@as("controlSetId") controlSetId: controlSetId,
@as("lastUpdated") lastUpdated: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("roleType") roleType: roleType,
@as("roleArn") roleArn: iamArn,
@as("status") status: delegationStatus,
@as("assessmentId") assessmentId: uUID,
@as("assessmentName") assessmentName: assessmentName,
@as("id") id: uUID
}
type createDelegationRequest = {
@as("roleType") roleType: roleType,
@as("roleArn") roleArn: iamArn,
@as("controlSetId") controlSetId: controlSetId,
@as("comment") comment: delegationComment
}
type createAssessmentFrameworkControl = {
@as("id") id: uUID
}
type controlMetadata = {
@as("lastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("controlSources") controlSources: controlSources,
@as("name") name: controlName,
@as("id") id: uUID,
@as("arn") arn: auditManagerArn
}
type controlComment = {
@as("postedDate") postedDate: amazonawsTimestamp,
@as("commentBody") commentBody: controlCommentBody,
@as("authorName") authorName: username
}
type changeLog = {
@as("createdBy") createdBy: iamArn,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("action") action: actionEnum,
@as("objectName") objectName: nonEmptyString,
@as("objectType") objectType: objectTypeEnum
}
type batchDeleteDelegationByAssessmentError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("delegationId") delegationId: uUID
}
type assessmentReportsDestination = {
@as("destination") destination: s3Url,
@as("destinationType") destinationType: assessmentReportDestinationType
}
type assessmentReportMetadata = {
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: assessmentReportStatus,
@as("author") author: username,
@as("assessmentName") assessmentName: assessmentName,
@as("assessmentId") assessmentId: uUID,
@as("description") description: assessmentReportDescription,
@as("name") name: assessmentReportName,
@as("id") id: uUID
}
type assessmentReportEvidenceError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("evidenceId") evidenceId: uUID
}
type assessmentReport = {
@as("creationTime") creationTime: amazonawsTimestamp,
@as("status") status: assessmentReportStatus,
@as("author") author: username,
@as("assessmentName") assessmentName: assessmentName,
@as("assessmentId") assessmentId: uUID,
@as("awsAccountId") awsAccountId: accountId,
@as("description") description: assessmentReportDescription,
@as("name") name: assessmentReportName,
@as("id") id: uUID
}
type assessmentFrameworkMetadata = {
@as("lastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("controlSetsCount") controlSetsCount: controlSetsCount,
@as("controlsCount") controlsCount: controlsCount,
@as("complianceType") complianceType: complianceType,
@as("logo") logo: filename,
@as("description") description: frameworkDescription,
@as("name") name: frameworkName,
@as("type") type_: frameworkType,
@as("id") id: uUID,
@as("arn") arn: auditManagerArn
}
type assessmentEvidenceFolder = {
@as("evidenceAwsServiceSourceCount") evidenceAwsServiceSourceCount: amazonawsInteger,
@as("evidenceByTypeUserActivityCount") evidenceByTypeUserActivityCount: amazonawsInteger,
@as("evidenceByTypeComplianceCheckIssuesCount") evidenceByTypeComplianceCheckIssuesCount: amazonawsInteger,
@as("evidenceByTypeComplianceCheckCount") evidenceByTypeComplianceCheckCount: amazonawsInteger,
@as("evidenceByTypeManualCount") evidenceByTypeManualCount: amazonawsInteger,
@as("evidenceByTypeConfigurationDataCount") evidenceByTypeConfigurationDataCount: amazonawsInteger,
@as("evidenceResourcesIncludedCount") evidenceResourcesIncludedCount: amazonawsInteger,
@as("controlName") controlName: controlName,
@as("assessmentReportSelectionCount") assessmentReportSelectionCount: amazonawsInteger,
@as("totalEvidence") totalEvidence: amazonawsInteger,
@as("author") author: amazonawsString,
@as("dataSource") dataSource: amazonawsString,
@as("id") id: uUID,
@as("controlId") controlId: uUID,
@as("controlSetId") controlSetId: controlSetId,
@as("assessmentId") assessmentId: uUID,
@as("date") date: amazonawsTimestamp,
@as("name") name: assessmentEvidenceFolderName
}
type aWSService = {
@as("serviceName") serviceName: aWSServiceName
}
type aWSAccount = {
@as("name") name: accountName,
@as("emailAddress") emailAddress: emailAddress,
@as("id") id: accountId
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
@as("troubleshootingText") troubleshootingText: troubleshootingText,
@as("sourceFrequency") sourceFrequency: sourceFrequency,
@as("sourceKeyword") sourceKeyword: sourceKeyword,
@as("sourceType") sourceType: sourceType,
@as("sourceSetUpOption") sourceSetUpOption: sourceSetUpOption,
@as("sourceDescription") sourceDescription: sourceDescription,
@as("sourceName") sourceName: sourceName
}
type createAssessmentFrameworkControls = array<createAssessmentFrameworkControl>
type controlMetadataList = array<controlMetadata>
type controlMappingSource = {
@as("troubleshootingText") troubleshootingText: troubleshootingText,
@as("sourceFrequency") sourceFrequency: sourceFrequency,
@as("sourceKeyword") sourceKeyword: sourceKeyword,
@as("sourceType") sourceType: sourceType,
@as("sourceSetUpOption") sourceSetUpOption: sourceSetUpOption,
@as("sourceDescription") sourceDescription: sourceDescription,
@as("sourceName") sourceName: sourceName,
@as("sourceId") sourceId: uUID
}
type controlComments = array<controlComment>
type changeLogs = array<changeLog>
type batchImportEvidenceToAssessmentControlError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("manualEvidence") manualEvidence: manualEvidence
}
type batchDeleteDelegationByAssessmentErrors = array<batchDeleteDelegationByAssessmentError>
type batchCreateDelegationByAssessmentError = {
@as("errorMessage") errorMessage: errorMessage,
@as("errorCode") errorCode: errorCode,
@as("createDelegationRequest") createDelegationRequest: createDelegationRequest
}
type assessmentReportsMetadata = array<assessmentReportMetadata>
type assessmentReportEvidenceErrors = array<assessmentReportEvidenceError>
type assessmentEvidenceFolders = array<assessmentEvidenceFolder>
type aWSServices = array<aWSService>
type aWSAccounts = array<aWSAccount>
type updateAssessmentFrameworkControlSet = {
@as("controls") controls: createAssessmentFrameworkControls,
@as("name") name: option<controlSetName>,
@as("id") id: controlSetName
}
type settings = {
@as("kmsKey") kmsKey: kmsKey,
@as("defaultProcessOwners") defaultProcessOwners: roles,
@as("defaultAssessmentReportsDestination") defaultAssessmentReportsDestination: assessmentReportsDestination,
@as("snsTopic") snsTopic: sNSTopic,
@as("isAwsOrgEnabled") isAwsOrgEnabled: amazonawsBoolean
}
type scope = {
@as("awsServices") awsServices: aWSServices,
@as("awsAccounts") awsAccounts: aWSAccounts
}
type evidence = {
@as("assessmentReportSelection") assessmentReportSelection: amazonawsString,
@as("id") id: uUID,
@as("evidenceFolderId") evidenceFolderId: uUID,
@as("awsAccountId") awsAccountId: accountId,
@as("awsOrganization") awsOrganization: amazonawsString,
@as("complianceCheck") complianceCheck: amazonawsString,
@as("iamId") iamId: iamArn,
@as("attributes") attributes: evidenceAttributes,
@as("resourcesIncluded") resourcesIncluded: resources,
@as("evidenceByType") evidenceByType: amazonawsString,
@as("eventName") eventName: eventName,
@as("eventSource") eventSource: aWSServiceName,
@as("time") time: amazonawsTimestamp,
@as("evidenceAwsAccountId") evidenceAwsAccountId: accountId,
@as("dataSource") dataSource: amazonawsString
}
type createControlMappingSources = array<createControlMappingSource>
type createAssessmentFrameworkControlSet = {
@as("controls") controls: createAssessmentFrameworkControls,
@as("name") name: option<controlSetName>
}
type controlMappingSources = array<controlMappingSource>
type batchImportEvidenceToAssessmentControlErrors = array<batchImportEvidenceToAssessmentControlError>
type batchCreateDelegationByAssessmentErrors = array<batchCreateDelegationByAssessmentError>
type assessmentMetadataItem = {
@as("lastUpdated") lastUpdated: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("delegations") delegations: delegations,
@as("roles") roles: roles,
@as("status") status: assessmentStatus,
@as("complianceType") complianceType: complianceType,
@as("id") id: uUID,
@as("name") name: assessmentName
}
type assessmentControl = {
@as("assessmentReportEvidenceCount") assessmentReportEvidenceCount: amazonawsInteger,
@as("evidenceCount") evidenceCount: amazonawsInteger,
@as("evidenceSources") evidenceSources: evidenceSources,
@as("comments") comments: controlComments,
@as("response") response: controlResponse,
@as("status") status: controlStatus,
@as("description") description: controlDescription,
@as("name") name: controlName,
@as("id") id: uUID
}
type updateAssessmentFrameworkControlSets = array<updateAssessmentFrameworkControlSet>
type listAssessmentMetadata = array<assessmentMetadataItem>
type evidenceList = array<evidence>
type createAssessmentFrameworkControlSets = array<createAssessmentFrameworkControlSet>
type control = {
@as("tags") tags: tagMap,
@as("lastUpdatedBy") lastUpdatedBy: lastUpdatedBy,
@as("createdBy") createdBy: createdBy,
@as("lastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("controlMappingSources") controlMappingSources: controlMappingSources,
@as("controlSources") controlSources: controlSources,
@as("actionPlanInstructions") actionPlanInstructions: actionPlanInstructions,
@as("actionPlanTitle") actionPlanTitle: actionPlanTitle,
@as("testingInformation") testingInformation: testingInformation,
@as("description") description: controlDescription,
@as("name") name: controlName,
@as("type") type_: controlType,
@as("id") id: uUID,
@as("arn") arn: auditManagerArn
}
type assessmentMetadata = {
@as("lastUpdated") lastUpdated: amazonawsTimestamp,
@as("creationTime") creationTime: amazonawsTimestamp,
@as("delegations") delegations: delegations,
@as("roles") roles: roles,
@as("scope") scope: scope,
@as("assessmentReportsDestination") assessmentReportsDestination: assessmentReportsDestination,
@as("status") status: assessmentStatus,
@as("complianceType") complianceType: complianceType,
@as("description") description: assessmentDescription,
@as("id") id: uUID,
@as("name") name: assessmentName
}
type assessmentControls = array<assessmentControl>
type controls = array<control>
type assessmentControlSet = {
@as("manualEvidenceCount") manualEvidenceCount: amazonawsInteger,
@as("systemEvidenceCount") systemEvidenceCount: amazonawsInteger,
@as("delegations") delegations: delegations,
@as("controls") controls: assessmentControls,
@as("roles") roles: roles,
@as("status") status: controlSetStatus,
@as("description") description: nonEmptyString,
@as("id") id: controlSetId
}
type controlSet = {
@as("controls") controls: controls,
@as("name") name: controlSetName,
@as("id") id: uUID
}
type assessmentControlSets = array<assessmentControlSet>
type controlSets = array<controlSet>
type assessmentFramework = {
@as("controlSets") controlSets: assessmentControlSets,
@as("metadata") metadata: frameworkMetadata,
@as("arn") arn: auditManagerArn,
@as("id") id: uUID
}
type framework = {
@as("tags") tags: tagMap,
@as("lastUpdatedBy") lastUpdatedBy: lastUpdatedBy,
@as("createdBy") createdBy: createdBy,
@as("lastUpdatedAt") lastUpdatedAt: amazonawsTimestamp,
@as("createdAt") createdAt: amazonawsTimestamp,
@as("controlSets") controlSets: controlSets,
@as("controlSources") controlSources: controlSources,
@as("logo") logo: filename,
@as("description") description: frameworkDescription,
@as("complianceType") complianceType: complianceType,
@as("type") type_: frameworkType,
@as("name") name: frameworkName,
@as("id") id: uUID,
@as("arn") arn: auditManagerArn
}
type assessment = {
@as("tags") tags: tagMap,
@as("framework") framework: assessmentFramework,
@as("metadata") metadata: assessmentMetadata,
@as("awsAccount") awsAccount: aWSAccount,
@as("arn") arn: auditManagerArn
}
type clientType;
@module("@aws-sdk/client-auditmanager") @new external createClient: unit => clientType = "AuditManagerClient";
module GetAccountStatus = {
  type t;
  type request = unit
  type response = {
@as("status") status: accountStatus
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetAccountStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ValidateAssessmentReportIntegrity = {
  type t;
  type request = {
@as("s3RelativePath") s3RelativePath: option<s3Url>
}
  type response = {
@as("validationErrors") validationErrors: validationErrors,
@as("signatureKeyId") signatureKeyId: amazonawsString,
@as("signatureDateTime") signatureDateTime: amazonawsString,
@as("signatureAlgorithm") signatureAlgorithm: amazonawsString,
@as("signatureValid") signatureValid: amazonawsBoolean
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ValidateAssessmentReportIntegrityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<auditManagerArn>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagMap>,
@as("resourceArn") resourceArn: option<auditManagerArn>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterOrganizationAdminAccount = {
  type t;
  type request = {
@as("adminAccountId") adminAccountId: option<accountId>
}
  type response = {
@as("organizationId") organizationId: organizationId,
@as("adminAccountId") adminAccountId: accountId
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "RegisterOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterAccount = {
  type t;
  type request = {
@as("delegatedAdminAccount") delegatedAdminAccount: accountId,
@as("kmsKey") kmsKey: kmsKey
}
  type response = {
@as("status") status: accountStatus
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "RegisterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("resourceArn") resourceArn: option<auditManagerArn>
}
  type response = {
@as("tags") tags: tagMap
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNotifications = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token
}
  type response = {
@as("nextToken") nextToken: token,
@as("notifications") notifications: notifications
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ListNotificationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListKeywordsForDataSource = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token,
@as("source") source: option<sourceType>
}
  type response = {
@as("nextToken") nextToken: token,
@as("keywords") keywords: keywords
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ListKeywordsForDataSourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListControls = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token,
@as("controlType") controlType: option<controlType>
}
  type response = {
@as("nextToken") nextToken: token,
@as("controlMetadataList") controlMetadataList: controlMetadataList
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ListControlsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentReports = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token
}
  type response = {
@as("nextToken") nextToken: token,
@as("assessmentReports") assessmentReports: assessmentReportsMetadata
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ListAssessmentReportsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssessmentFrameworks = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token,
@as("frameworkType") frameworkType: option<frameworkType>
}
  type response = {
@as("nextToken") nextToken: token,
@as("frameworkMetadataList") frameworkMetadataList: frameworkMetadataList
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ListAssessmentFrameworksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetServicesInScope = {
  type t;
  type request = unit
  type response = {
@as("serviceMetadata") serviceMetadata: serviceMetadataList
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetServicesInScopeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOrganizationAdminAccount = {
  type t;
  type request = unit
  type response = {
@as("organizationId") organizationId: organizationId,
@as("adminAccountId") adminAccountId: accountId
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceFoldersByAssessmentControl = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token,
@as("controlId") controlId: option<uUID>,
@as("controlSetId") controlSetId: option<controlSetId>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("nextToken") nextToken: token,
@as("evidenceFolders") evidenceFolders: assessmentEvidenceFolders
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetEvidenceFoldersByAssessmentControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceFoldersByAssessment = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("nextToken") nextToken: token,
@as("evidenceFolders") evidenceFolders: assessmentEvidenceFolders
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetEvidenceFoldersByAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceFolder = {
  type t;
  type request = {
@as("evidenceFolderId") evidenceFolderId: option<uUID>,
@as("controlSetId") controlSetId: option<controlSetId>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("evidenceFolder") evidenceFolder: assessmentEvidenceFolder
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetEvidenceFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDelegations = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token
}
  type response = {
@as("nextToken") nextToken: token,
@as("delegations") delegations: delegationMetadataList
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetDelegationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetChangeLogs = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token,
@as("controlId") controlId: uUID,
@as("controlSetId") controlSetId: controlSetId,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("nextToken") nextToken: token,
@as("changeLogs") changeLogs: changeLogs
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetChangeLogsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssessmentReportUrl = {
  type t;
  type request = {
@as("assessmentId") assessmentId: option<uUID>,
@as("assessmentReportId") assessmentReportId: option<uUID>
}
  type response = {
@as("preSignedUrl") preSignedUrl: uRL
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetAssessmentReportUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateAssessmentReportEvidenceFolder = {
  type t;
  type request = {
@as("evidenceFolderId") evidenceFolderId: option<uUID>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "DisassociateAssessmentReportEvidenceFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterOrganizationAdminAccount = {
  type t;
  type request = {
@as("adminAccountId") adminAccountId: accountId
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "DeregisterOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterAccount = {
  type t;
  type request = unit
  type response = {
@as("status") status: accountStatus
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "DeregisterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteControl = {
  type t;
  type request = {
@as("controlId") controlId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessmentReport = {
  type t;
  type request = {
@as("assessmentReportId") assessmentReportId: option<uUID>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteAssessmentReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessmentFramework = {
  type t;
  type request = {
@as("frameworkId") frameworkId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteAssessmentFrameworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAssessment = {
  type t;
  type request = {
@as("assessmentId") assessmentId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentReport = {
  type t;
  type request = {
@as("assessmentId") assessmentId: option<uUID>,
@as("description") description: assessmentReportDescription,
@as("name") name: option<assessmentReportName>
}
  type response = {
@as("assessmentReport") assessmentReport: assessmentReport
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateAssessmentReportCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDisassociateAssessmentReportEvidence = {
  type t;
  type request = {
@as("evidenceIds") evidenceIds: option<evidenceIds>,
@as("evidenceFolderId") evidenceFolderId: option<uUID>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("errors") errors: assessmentReportEvidenceErrors,
@as("evidenceIds") evidenceIds: evidenceIds
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "BatchDisassociateAssessmentReportEvidenceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchDeleteDelegationByAssessment = {
  type t;
  type request = {
@as("assessmentId") assessmentId: option<uUID>,
@as("delegationIds") delegationIds: option<delegationIds>
}
  type response = {
@as("errors") errors: batchDeleteDelegationByAssessmentErrors
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "BatchDeleteDelegationByAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchAssociateAssessmentReportEvidence = {
  type t;
  type request = {
@as("evidenceIds") evidenceIds: option<evidenceIds>,
@as("evidenceFolderId") evidenceFolderId: option<uUID>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("errors") errors: assessmentReportEvidenceErrors,
@as("evidenceIds") evidenceIds: evidenceIds
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "BatchAssociateAssessmentReportEvidenceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateAssessmentReportEvidenceFolder = {
  type t;
  type request = {
@as("evidenceFolderId") evidenceFolderId: option<uUID>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = unit
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "AssociateAssessmentReportEvidenceFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSettings = {
  type t;
  type request = {
@as("kmsKey") kmsKey: kmsKey,
@as("defaultProcessOwners") defaultProcessOwners: roles,
@as("defaultAssessmentReportsDestination") defaultAssessmentReportsDestination: assessmentReportsDestination,
@as("snsTopic") snsTopic: snsArn
}
  type response = {
@as("settings") settings: settings
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentControl = {
  type t;
  type request = {
@as("commentBody") commentBody: controlCommentBody,
@as("controlStatus") controlStatus: controlStatus,
@as("controlId") controlId: option<uUID>,
@as("controlSetId") controlSetId: option<controlSetId>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("control") control: assessmentControl
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateAssessmentControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSettings = {
  type t;
  type request = {
@as("attribute") attribute: option<settingAttribute>
}
  type response = {
@as("settings") settings: settings
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEvidence = {
  type t;
  type request = {
@as("evidenceId") evidenceId: option<uUID>,
@as("evidenceFolderId") evidenceFolderId: option<uUID>,
@as("controlSetId") controlSetId: option<controlSetId>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("evidence") evidence: evidence
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetEvidenceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchImportEvidenceToAssessmentControl = {
  type t;
  type request = {
@as("manualEvidence") manualEvidence: option<manualEvidenceList>,
@as("controlId") controlId: option<uUID>,
@as("controlSetId") controlSetId: option<controlSetId>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("errors") errors: batchImportEvidenceToAssessmentControlErrors
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "BatchImportEvidenceToAssessmentControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module BatchCreateDelegationByAssessment = {
  type t;
  type request = {
@as("assessmentId") assessmentId: option<uUID>,
@as("createDelegationRequests") createDelegationRequests: option<createDelegationRequests>
}
  type response = {
@as("errors") errors: batchCreateDelegationByAssessmentErrors,
@as("delegations") delegations: delegations
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "BatchCreateDelegationByAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateControl = {
  type t;
  type request = {
@as("controlMappingSources") controlMappingSources: option<controlMappingSources>,
@as("actionPlanInstructions") actionPlanInstructions: actionPlanInstructions,
@as("actionPlanTitle") actionPlanTitle: actionPlanTitle,
@as("testingInformation") testingInformation: testingInformation,
@as("description") description: controlDescription,
@as("name") name: option<controlName>,
@as("controlId") controlId: option<uUID>
}
  type response = {
@as("control") control: control
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListAssessments = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token
}
  type response = {
@as("nextToken") nextToken: token,
@as("assessmentMetadata") assessmentMetadata: listAssessmentMetadata
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "ListAssessmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetEvidenceByEvidenceFolder = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: token,
@as("evidenceFolderId") evidenceFolderId: option<uUID>,
@as("controlSetId") controlSetId: option<controlSetId>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("nextToken") nextToken: token,
@as("evidence") evidence: evidenceList
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetEvidenceByEvidenceFolderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetControl = {
  type t;
  type request = {
@as("controlId") controlId: option<uUID>
}
  type response = {
@as("control") control: control
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateControl = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("controlMappingSources") controlMappingSources: option<createControlMappingSources>,
@as("actionPlanInstructions") actionPlanInstructions: actionPlanInstructions,
@as("actionPlanTitle") actionPlanTitle: actionPlanTitle,
@as("testingInformation") testingInformation: testingInformation,
@as("description") description: controlDescription,
@as("name") name: option<controlName>
}
  type response = {
@as("control") control: control
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateControlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentControlSetStatus = {
  type t;
  type request = {
@as("comment") comment: option<delegationComment>,
@as("status") status: option<controlSetStatus>,
@as("controlSetId") controlSetId: option<amazonawsString>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("controlSet") controlSet: assessmentControlSet
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateAssessmentControlSetStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentStatus = {
  type t;
  type request = {
@as("status") status: option<assessmentStatus>,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("assessment") assessment: assessment
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateAssessmentStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessmentFramework = {
  type t;
  type request = {
@as("controlSets") controlSets: option<updateAssessmentFrameworkControlSets>,
@as("complianceType") complianceType: complianceType,
@as("description") description: frameworkDescription,
@as("name") name: option<frameworkName>,
@as("frameworkId") frameworkId: option<uUID>
}
  type response = {
@as("framework") framework: framework
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateAssessmentFrameworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAssessment = {
  type t;
  type request = {
@as("roles") roles: roles,
@as("assessmentReportsDestination") assessmentReportsDestination: assessmentReportsDestination,
@as("scope") scope: option<scope>,
@as("assessmentDescription") assessmentDescription: assessmentDescription,
@as("assessmentName") assessmentName: assessmentName,
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("assessment") assessment: assessment
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssessmentFramework = {
  type t;
  type request = {
@as("frameworkId") frameworkId: option<uUID>
}
  type response = {
@as("framework") framework: framework
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetAssessmentFrameworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAssessment = {
  type t;
  type request = {
@as("assessmentId") assessmentId: option<uUID>
}
  type response = {
@as("userRole") userRole: role,
@as("assessment") assessment: assessment
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "GetAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAssessmentFramework = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("controlSets") controlSets: option<createAssessmentFrameworkControlSets>,
@as("complianceType") complianceType: complianceType,
@as("description") description: frameworkDescription,
@as("name") name: option<frameworkName>
}
  type response = {
@as("framework") framework: framework
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateAssessmentFrameworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateAssessment = {
  type t;
  type request = {
@as("tags") tags: tagMap,
@as("frameworkId") frameworkId: option<uUID>,
@as("roles") roles: option<roles>,
@as("scope") scope: option<scope>,
@as("assessmentReportsDestination") assessmentReportsDestination: option<assessmentReportsDestination>,
@as("description") description: assessmentDescription,
@as("name") name: option<assessmentName>
}
  type response = {
@as("assessment") assessment: assessment
}
  @module("@aws-sdk/client-auditmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateAssessmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
