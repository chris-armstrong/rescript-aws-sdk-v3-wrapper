type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timeCreated = string
type submittedBy = string
type subject = string
type amazonawsString = string
type status = string
type severityLevelName = string
type severityLevelCode = string
type severityCode = string
type serviceName = string
type serviceCode = string
type result = bool;
type nextToken = string
type maxResults = int;
type amazonawsLong = float;
type language = string
type issueType = string
type includeResolvedCases = bool;
type includeCommunications = bool;
type fileName = string
type expiryTime = string
type errorMessage = string
type amazonawsDouble = float;
type displayId = string
type data = NodeJs.Buffer.t;
type communicationBody = string
type ccEmailAddress = string
type categoryName = string
type categoryCode = string
type caseStatus = string
type caseId = string
type amazonawsBoolean = bool;
type beforeTime = string
type attachmentSetId = string
type attachmentId = string
type afterTime = string
type trustedAdvisorResourcesSummary = {
@as("resourcesSuppressed") resourcesSuppressed: option<amazonawsLong>,
@as("resourcesIgnored") resourcesIgnored: option<amazonawsLong>,
@as("resourcesFlagged") resourcesFlagged: option<amazonawsLong>,
@as("resourcesProcessed") resourcesProcessed: option<amazonawsLong>
}
type trustedAdvisorCostOptimizingSummary = {
@as("estimatedPercentMonthlySavings") estimatedPercentMonthlySavings: option<amazonawsDouble>,
@as("estimatedMonthlySavings") estimatedMonthlySavings: option<amazonawsDouble>
}
type trustedAdvisorCheckRefreshStatus = {
@as("millisUntilNextRefreshable") millisUntilNextRefreshable: option<amazonawsLong>,
@as("status") status: option<amazonawsString>,
@as("checkId") checkId: option<amazonawsString>
}
type stringList = array<amazonawsString>
type severityLevel = {
@as("name") name: severityLevelName,
@as("code") code: severityLevelCode
}
type serviceCodeList = array<serviceCode>
type ccEmailAddressList = array<ccEmailAddress>
type category = {
@as("name") name: categoryName,
@as("code") code: categoryCode
}
type caseIdList = array<caseId>
type attachmentDetails = {
@as("fileName") fileName: fileName,
@as("attachmentId") attachmentId: attachmentId
}
type attachment = {
@as("data") data: data,
@as("fileName") fileName: fileName
}
type trustedAdvisorResourceDetail = {
@as("metadata") metadata: option<stringList>,
@as("isSuppressed") isSuppressed: amazonawsBoolean,
@as("resourceId") resourceId: option<amazonawsString>,
@as("region") region: amazonawsString,
@as("status") status: option<amazonawsString>
}
type trustedAdvisorCheckRefreshStatusList = array<trustedAdvisorCheckRefreshStatus>
type trustedAdvisorCheckDescription = {
@as("metadata") metadata: option<stringList>,
@as("category") category: option<amazonawsString>,
@as("description") description: option<amazonawsString>,
@as("name") name: option<amazonawsString>,
@as("id") id: option<amazonawsString>
}
type trustedAdvisorCategorySpecificSummary = {
@as("costOptimizing") costOptimizing: trustedAdvisorCostOptimizingSummary
}
type severityLevelsList = array<severityLevel>
type categoryList = array<category>
type attachments = array<attachment>
type attachmentSet = array<attachmentDetails>
type trustedAdvisorResourceDetailList = array<trustedAdvisorResourceDetail>
type trustedAdvisorCheckSummary = {
@as("categorySpecificSummary") categorySpecificSummary: option<trustedAdvisorCategorySpecificSummary>,
@as("resourcesSummary") resourcesSummary: option<trustedAdvisorResourcesSummary>,
@as("hasFlaggedResources") hasFlaggedResources: amazonawsBoolean,
@as("status") status: option<amazonawsString>,
@as("timestamp") timestamp: option<amazonawsString>,
@as("checkId") checkId: option<amazonawsString>
}
type trustedAdvisorCheckList = array<trustedAdvisorCheckDescription>
type service = {
@as("categories") categories: categoryList,
@as("name") name: serviceName,
@as("code") code: serviceCode
}
type communication = {
@as("attachmentSet") attachmentSet: attachmentSet,
@as("timeCreated") timeCreated: timeCreated,
@as("submittedBy") submittedBy: submittedBy,
@as("body") body: communicationBody,
@as("caseId") caseId: caseId
}
type trustedAdvisorCheckSummaryList = array<trustedAdvisorCheckSummary>
type trustedAdvisorCheckResult = {
@as("flaggedResources") flaggedResources: option<trustedAdvisorResourceDetailList>,
@as("categorySpecificSummary") categorySpecificSummary: option<trustedAdvisorCategorySpecificSummary>,
@as("resourcesSummary") resourcesSummary: option<trustedAdvisorResourcesSummary>,
@as("status") status: option<amazonawsString>,
@as("timestamp") timestamp: option<amazonawsString>,
@as("checkId") checkId: option<amazonawsString>
}
type serviceList = array<service>
type communicationList = array<communication>
type recentCaseCommunications = {
@as("nextToken") nextToken: nextToken,
@as("communications") communications: communicationList
}
type caseDetails = {
@as("language") language: language,
@as("ccEmailAddresses") ccEmailAddresses: ccEmailAddressList,
@as("recentCommunications") recentCommunications: recentCaseCommunications,
@as("timeCreated") timeCreated: timeCreated,
@as("submittedBy") submittedBy: submittedBy,
@as("severityCode") severityCode: severityCode,
@as("categoryCode") categoryCode: categoryCode,
@as("serviceCode") serviceCode: serviceCode,
@as("status") status: status,
@as("subject") subject: subject,
@as("displayId") displayId: displayId,
@as("caseId") caseId: caseId
}
type caseList = array<caseDetails>
type clientType;
@module("@aws-sdk/client-support") @new external createClient: unit => clientType = "SupportClient";
module ResolveCase = {
  type t;
  type request = {
@as("caseId") caseId: caseId
}
  type response = {
@as("finalCaseStatus") finalCaseStatus: caseStatus,
@as("initialCaseStatus") initialCaseStatus: caseStatus
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "ResolveCaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RefreshTrustedAdvisorCheck = {
  type t;
  type request = {
@as("checkId") checkId: option<amazonawsString>
}
  type response = {
@as("status") status: option<trustedAdvisorCheckRefreshStatus>
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "RefreshTrustedAdvisorCheckCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAttachment = {
  type t;
  type request = {
@as("attachmentId") attachmentId: option<attachmentId>
}
  type response = {
@as("attachment") attachment: attachment
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeAttachmentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCase = {
  type t;
  type request = {
@as("attachmentSetId") attachmentSetId: attachmentSetId,
@as("issueType") issueType: issueType,
@as("language") language: language,
@as("ccEmailAddresses") ccEmailAddresses: ccEmailAddressList,
@as("communicationBody") communicationBody: option<communicationBody>,
@as("categoryCode") categoryCode: categoryCode,
@as("severityCode") severityCode: severityCode,
@as("serviceCode") serviceCode: serviceCode,
@as("subject") subject: option<subject>
}
  type response = {
@as("caseId") caseId: caseId
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "CreateCaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddCommunicationToCase = {
  type t;
  type request = {
@as("attachmentSetId") attachmentSetId: attachmentSetId,
@as("ccEmailAddresses") ccEmailAddresses: ccEmailAddressList,
@as("communicationBody") communicationBody: option<communicationBody>,
@as("caseId") caseId: caseId
}
  type response = {
@as("result") result: result
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "AddCommunicationToCaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrustedAdvisorCheckRefreshStatuses = {
  type t;
  type request = {
@as("checkIds") checkIds: option<stringList>
}
  type response = {
@as("statuses") statuses: option<trustedAdvisorCheckRefreshStatusList>
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeTrustedAdvisorCheckRefreshStatusesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeSeverityLevels = {
  type t;
  type request = {
@as("language") language: language
}
  type response = {
@as("severityLevels") severityLevels: severityLevelsList
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeSeverityLevelsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AddAttachmentsToSet = {
  type t;
  type request = {
@as("attachments") attachments: option<attachments>,
@as("attachmentSetId") attachmentSetId: attachmentSetId
}
  type response = {
@as("expiryTime") expiryTime: expiryTime,
@as("attachmentSetId") attachmentSetId: attachmentSetId
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "AddAttachmentsToSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrustedAdvisorChecks = {
  type t;
  type request = {
@as("language") language: option<amazonawsString>
}
  type response = {
@as("checks") checks: option<trustedAdvisorCheckList>
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeTrustedAdvisorChecksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrustedAdvisorCheckSummaries = {
  type t;
  type request = {
@as("checkIds") checkIds: option<stringList>
}
  type response = {
@as("summaries") summaries: option<trustedAdvisorCheckSummaryList>
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeTrustedAdvisorCheckSummariesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTrustedAdvisorCheckResult = {
  type t;
  type request = {
@as("language") language: amazonawsString,
@as("checkId") checkId: option<amazonawsString>
}
  type response = {
@as("result") result: trustedAdvisorCheckResult
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeTrustedAdvisorCheckResultCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeServices = {
  type t;
  type request = {
@as("language") language: language,
@as("serviceCodeList") serviceCodeList: serviceCodeList
}
  type response = {
@as("services") services: serviceList
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCommunications = {
  type t;
  type request = {
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("afterTime") afterTime: afterTime,
@as("beforeTime") beforeTime: beforeTime,
@as("caseId") caseId: option<caseId>
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("communications") communications: communicationList
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeCommunicationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCases = {
  type t;
  type request = {
@as("includeCommunications") includeCommunications: includeCommunications,
@as("language") language: language,
@as("maxResults") maxResults: maxResults,
@as("nextToken") nextToken: nextToken,
@as("includeResolvedCases") includeResolvedCases: includeResolvedCases,
@as("beforeTime") beforeTime: beforeTime,
@as("afterTime") afterTime: afterTime,
@as("displayId") displayId: displayId,
@as("caseIdList") caseIdList: caseIdList
}
  type response = {
@as("nextToken") nextToken: nextToken,
@as("cases") cases: caseList
}
  @module("@aws-sdk/client-support") @new external new_: (request) => t = "DescribeCasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
