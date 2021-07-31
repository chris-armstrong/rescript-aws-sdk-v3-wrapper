type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-support") @new
external createClient: unit => awsServiceClient = "SupportClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timeCreated = string
type submittedBy = string
type subject = string
type string_ = string
type status = string
type severityLevelName = string
type severityLevelCode = string
type severityCode = string
type serviceName = string
type serviceCode = string
type result = bool
type nextToken = string
type maxResults = int
type long = float
type language = string
type issueType = string
type includeResolvedCases = bool
type includeCommunications = bool
type fileName = string
type expiryTime = string
type errorMessage = string
type double = float
type displayId = string
type data = NodeJs.Buffer.t
type communicationBody = string
type ccEmailAddress = string
type categoryName = string
type categoryCode = string
type caseStatus = string
type caseId = string
type boolean_ = bool
type beforeTime = string
type attachmentSetId = string
type attachmentId = string
type afterTime = string
type trustedAdvisorResourcesSummary = {
  resourcesSuppressed: long,
  resourcesIgnored: long,
  resourcesFlagged: long,
  resourcesProcessed: long,
}
type trustedAdvisorCostOptimizingSummary = {
  estimatedPercentMonthlySavings: double,
  estimatedMonthlySavings: double,
}
type trustedAdvisorCheckRefreshStatus = {
  millisUntilNextRefreshable: long,
  status: string_,
  checkId: string_,
}
type stringList = array<string_>
type severityLevel = {
  name: option<severityLevelName>,
  code: option<severityLevelCode>,
}
type serviceCodeList = array<serviceCode>
type ccEmailAddressList = array<ccEmailAddress>
type category = {
  name: option<categoryName>,
  code: option<categoryCode>,
}
type caseIdList = array<caseId>
type attachmentDetails = {
  fileName: option<fileName>,
  attachmentId: option<attachmentId>,
}
type attachment = {
  data: option<data>,
  fileName: option<fileName>,
}
type trustedAdvisorResourceDetail = {
  metadata: stringList,
  isSuppressed: option<boolean_>,
  resourceId: string_,
  region: option<string_>,
  status: string_,
}
type trustedAdvisorCheckRefreshStatusList = array<trustedAdvisorCheckRefreshStatus>
type trustedAdvisorCheckDescription = {
  metadata: stringList,
  category: string_,
  description: string_,
  name: string_,
  id: string_,
}
type trustedAdvisorCategorySpecificSummary = {
  costOptimizing: option<trustedAdvisorCostOptimizingSummary>,
}
type severityLevelsList = array<severityLevel>
type categoryList = array<category>
type attachments = array<attachment>
type attachmentSet = array<attachmentDetails>
type trustedAdvisorResourceDetailList = array<trustedAdvisorResourceDetail>
type trustedAdvisorCheckSummary = {
  categorySpecificSummary: trustedAdvisorCategorySpecificSummary,
  resourcesSummary: trustedAdvisorResourcesSummary,
  hasFlaggedResources: option<boolean_>,
  status: string_,
  @as("timestamp") timestamp_: string_,
  checkId: string_,
}
type trustedAdvisorCheckList = array<trustedAdvisorCheckDescription>
type service = {
  categories: option<categoryList>,
  name: option<serviceName>,
  code: option<serviceCode>,
}
type communication = {
  attachmentSet: option<attachmentSet>,
  timeCreated: option<timeCreated>,
  submittedBy: option<submittedBy>,
  body: option<communicationBody>,
  caseId: option<caseId>,
}
type trustedAdvisorCheckSummaryList = array<trustedAdvisorCheckSummary>
type trustedAdvisorCheckResult = {
  flaggedResources: trustedAdvisorResourceDetailList,
  categorySpecificSummary: trustedAdvisorCategorySpecificSummary,
  resourcesSummary: trustedAdvisorResourcesSummary,
  status: string_,
  @as("timestamp") timestamp_: string_,
  checkId: string_,
}
type serviceList = array<service>
type communicationList = array<communication>
type recentCaseCommunications = {
  nextToken: option<nextToken>,
  communications: option<communicationList>,
}
type caseDetails = {
  language: option<language>,
  ccEmailAddresses: option<ccEmailAddressList>,
  recentCommunications: option<recentCaseCommunications>,
  timeCreated: option<timeCreated>,
  submittedBy: option<submittedBy>,
  severityCode: option<severityCode>,
  categoryCode: option<categoryCode>,
  serviceCode: option<serviceCode>,
  status: option<status>,
  subject: option<subject>,
  displayId: option<displayId>,
  caseId: option<caseId>,
}
type caseList = array<caseDetails>

module ResolveCase = {
  type t
  type request = {caseId: option<caseId>}
  type response = {
    finalCaseStatus: option<caseStatus>,
    initialCaseStatus: option<caseStatus>,
  }
  @module("@aws-sdk/client-support") @new external new_: request => t = "ResolveCaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RefreshTrustedAdvisorCheck = {
  type t
  type request = {checkId: string_}
  type response = {status: trustedAdvisorCheckRefreshStatus}
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "RefreshTrustedAdvisorCheckCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAttachment = {
  type t
  type request = {attachmentId: attachmentId}
  type response = {attachment: option<attachment>}
  @module("@aws-sdk/client-support") @new external new_: request => t = "DescribeAttachmentCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCase = {
  type t
  type request = {
    attachmentSetId: option<attachmentSetId>,
    issueType: option<issueType>,
    language: option<language>,
    ccEmailAddresses: option<ccEmailAddressList>,
    communicationBody: communicationBody,
    categoryCode: option<categoryCode>,
    severityCode: option<severityCode>,
    serviceCode: option<serviceCode>,
    subject: subject,
  }
  type response = {caseId: option<caseId>}
  @module("@aws-sdk/client-support") @new external new_: request => t = "CreateCaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddCommunicationToCase = {
  type t
  type request = {
    attachmentSetId: option<attachmentSetId>,
    ccEmailAddresses: option<ccEmailAddressList>,
    communicationBody: communicationBody,
    caseId: option<caseId>,
  }
  type response = {result: option<result>}
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "AddCommunicationToCaseCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorCheckRefreshStatuses = {
  type t
  type request = {checkIds: stringList}
  type response = {statuses: trustedAdvisorCheckRefreshStatusList}
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "DescribeTrustedAdvisorCheckRefreshStatusesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSeverityLevels = {
  type t
  type request = {language: option<language>}
  type response = {severityLevels: option<severityLevelsList>}
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "DescribeSeverityLevelsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddAttachmentsToSet = {
  type t
  type request = {
    attachments: attachments,
    attachmentSetId: option<attachmentSetId>,
  }
  type response = {
    expiryTime: option<expiryTime>,
    attachmentSetId: option<attachmentSetId>,
  }
  @module("@aws-sdk/client-support") @new external new_: request => t = "AddAttachmentsToSetCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorChecks = {
  type t
  type request = {language: string_}
  type response = {checks: trustedAdvisorCheckList}
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "DescribeTrustedAdvisorChecksCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorCheckSummaries = {
  type t
  type request = {checkIds: stringList}
  type response = {summaries: trustedAdvisorCheckSummaryList}
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "DescribeTrustedAdvisorCheckSummariesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorCheckResult = {
  type t
  type request = {
    language: option<string_>,
    checkId: string_,
  }
  type response = {result: option<trustedAdvisorCheckResult>}
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "DescribeTrustedAdvisorCheckResultCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServices = {
  type t
  type request = {
    language: option<language>,
    serviceCodeList: option<serviceCodeList>,
  }
  type response = {services: option<serviceList>}
  @module("@aws-sdk/client-support") @new external new_: request => t = "DescribeServicesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCommunications = {
  type t
  type request = {
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    afterTime: option<afterTime>,
    beforeTime: option<beforeTime>,
    caseId: caseId,
  }
  type response = {
    nextToken: option<nextToken>,
    communications: option<communicationList>,
  }
  @module("@aws-sdk/client-support") @new
  external new_: request => t = "DescribeCommunicationsCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCases = {
  type t
  type request = {
    includeCommunications: option<includeCommunications>,
    language: option<language>,
    maxResults: option<maxResults>,
    nextToken: option<nextToken>,
    includeResolvedCases: option<includeResolvedCases>,
    beforeTime: option<beforeTime>,
    afterTime: option<afterTime>,
    displayId: option<displayId>,
    caseIdList: option<caseIdList>,
  }
  type response = {
    nextToken: option<nextToken>,
    cases: option<caseList>,
  }
  @module("@aws-sdk/client-support") @new external new_: request => t = "DescribeCasesCommand"
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
