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
@ocaml.doc(
  "<p>Details about AWS resources that were analyzed in a call to Trusted Advisor <a>DescribeTrustedAdvisorCheckSummaries</a>.</p>"
)
type trustedAdvisorResourcesSummary = {
  @ocaml.doc("<p>The number of AWS resources ignored by Trusted Advisor because they were marked as
            suppressed by the user.</p>")
  resourcesSuppressed: long,
  @ocaml.doc("<p>The number of AWS resources ignored by Trusted Advisor because information was
            unavailable.</p>")
  resourcesIgnored: long,
  @ocaml.doc("<p>The number of AWS resources that were flagged (listed) by the Trusted Advisor
            check.</p>")
  resourcesFlagged: long,
  @ocaml.doc("<p>The number of AWS resources that were analyzed by the Trusted Advisor check.</p>")
  resourcesProcessed: long,
}
@ocaml.doc("<p>The estimated cost savings that might be realized if the recommended operations are
            taken.</p>")
type trustedAdvisorCostOptimizingSummary = {
  @ocaml.doc("<p>The estimated percentage of savings that might be realized if the recommended
            operations are taken.</p>")
  estimatedPercentMonthlySavings: double,
  @ocaml.doc("<p>The estimated monthly savings that might be realized if the recommended operations are
            taken.</p>")
  estimatedMonthlySavings: double,
}
@ocaml.doc("<p>The refresh status of a Trusted Advisor check.</p>")
type trustedAdvisorCheckRefreshStatus = {
  @ocaml.doc("<p>The amount of time, in milliseconds, until the Trusted Advisor check is eligible for
            refresh.</p>")
  millisUntilNextRefreshable: long,
  @ocaml.doc("<p>The status of the Trusted Advisor check for which a refresh has been requested:
            </p>
        <ul>
            <li>
                <p>
                  <code>none</code> - The check is not refreshed or the non-success status
                    exceeds the timeout</p>
            </li>
            <li>
                <p>
                  <code>enqueued</code> - The check refresh requests has entered the refresh
                    queue</p>
            </li>
            <li>
                <p>
                  <code>processing</code> - The check refresh request is picked up by the rule
                    processing engine</p>
            </li>
            <li>
                <p>
                  <code>success</code> - The check is successfully refreshed</p>
            </li>
            <li>
                <p>
                  <code>abandoned</code> - The check refresh has failed</p>
            </li>
         </ul>")
  status: string_,
  @ocaml.doc("<p>The unique identifier for the Trusted Advisor check.</p>") checkId: string_,
}
type stringList = array<string_>
@ocaml.doc("<p>A code and name pair that represents the severity level of a support case. The
            available values depend on the support plan for the account. For more information, see
                <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity\">Choosing a
                severity</a> in the <i>AWS Support User Guide</i>.</p>")
type severityLevel = {
  @ocaml.doc("<p>The name of the severity level that corresponds to the severity level code.</p>
        <note>
            <p>The values returned by the API are different from the values that appear in the
                AWS Support Center. For example, the API uses the code <code>low</code>, but the name
                appears as General guidance in Support Center. </p>
            <p>The following are the API code names and how they appear in the console:</p>
            <ul>
               <li>
                    <p>
                     <code>low</code> - General guidance</p>
                </li>
               <li>
                    <p>
                     <code>normal</code> - System impaired</p>
                </li>
               <li>
                    <p>
                     <code>high</code> - Production system impaired</p>
                </li>
               <li>
                    <p>
                     <code>urgent</code> - Production system down</p>
                </li>
               <li>
                    <p>
                     <code>critical</code> - Business-critical system down</p>
                </li>
            </ul>
        </note>
        <p>For more information, see <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/case-management.html#choosing-severity\">Choosing a
                severity</a> in the <i>AWS Support User Guide</i>.</p>")
  name: option<severityLevelName>,
  @ocaml.doc("<p>The code for case severity level.</p>
        <p>Valid values: <code>low</code> | <code>normal</code> | <code>high</code> |
                <code>urgent</code> | <code>critical</code>
         </p>")
  code: option<severityLevelCode>,
}
type serviceCodeList = array<serviceCode>
type ccEmailAddressList = array<ccEmailAddress>
@ocaml.doc("<p>A JSON-formatted name/value pair that represents the category name and category code
            of the problem, selected from the <a>DescribeServices</a> response for each
            AWS service.</p>")
type category = {
  @ocaml.doc("<p>The category name for the support case.</p>") name: option<categoryName>,
  @ocaml.doc("<p>The category code for the support case.</p>") code: option<categoryCode>,
}
type caseIdList = array<caseId>
@ocaml.doc("<p>The file name and ID of an attachment to a case communication. You can use the ID to
            retrieve the attachment with the <a>DescribeAttachment</a> operation.</p>")
type attachmentDetails = {
  @ocaml.doc("<p>The file name of the attachment.</p>") fileName: option<fileName>,
  @ocaml.doc("<p>The ID of the attachment.</p>") attachmentId: option<attachmentId>,
}
@ocaml.doc("<p>An attachment to a case communication. The attachment consists of the file name and
            the content of the file.</p>")
type attachment = {
  @ocaml.doc("<p>The content of the attachment file.</p>") data: option<data>,
  @ocaml.doc("<p>The name of the attachment file.</p>") fileName: option<fileName>,
}
@ocaml.doc("<p>Contains information about a resource identified by a Trusted Advisor check.</p>")
type trustedAdvisorResourceDetail = {
  @ocaml.doc("<p>Additional information about the identified resource. The exact metadata and its order
            can be obtained by inspecting the <a>TrustedAdvisorCheckDescription</a>
            object returned by the call to <a>DescribeTrustedAdvisorChecks</a>. <b>Metadata</b> contains all the data that is shown in the Excel
            download, even in those cases where the UI shows just summary data.</p>")
  metadata: stringList,
  @ocaml.doc("<p>Specifies whether the AWS resource was ignored by Trusted Advisor because it was
            marked as suppressed by the user.</p>")
  isSuppressed: option<boolean_>,
  @ocaml.doc("<p>The unique identifier for the identified resource.</p>") resourceId: string_,
  @ocaml.doc("<p>The AWS Region in which the identified resource is located.</p>")
  region: option<string_>,
  @ocaml.doc("<p>The status code for the resource identified in the Trusted Advisor check.</p>")
  status: string_,
}
type trustedAdvisorCheckRefreshStatusList = array<trustedAdvisorCheckRefreshStatus>
@ocaml.doc("<p>The description and metadata for a Trusted Advisor check.</p>")
type trustedAdvisorCheckDescription = {
  @ocaml.doc("<p>The column headings for the data returned by the Trusted Advisor check. The order of
            the headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a>
            for the check. <b>Metadata</b> contains all the data that is
            shown in the Excel download, even in those cases where the UI shows just summary data.
        </p>")
  metadata: stringList,
  @ocaml.doc("<p>The category of the Trusted Advisor check.</p>") category: string_,
  @ocaml.doc("<p>The description of the Trusted Advisor check, which includes the alert criteria and
            recommended operations (contains HTML markup).</p>")
  description: string_,
  @ocaml.doc("<p>The display name for the Trusted Advisor check.</p>") name: string_,
  @ocaml.doc("<p>The unique identifier for the Trusted Advisor check.</p>") id: string_,
}
@ocaml.doc(
  "<p>The container for summary information that relates to the category of the Trusted Advisor check.</p>"
)
type trustedAdvisorCategorySpecificSummary = {
  @ocaml.doc("<p>The summary information about cost savings for a Trusted Advisor check that is in the
            Cost Optimizing category.</p>")
  costOptimizing: option<trustedAdvisorCostOptimizingSummary>,
}
type severityLevelsList = array<severityLevel>
type categoryList = array<category>
type attachments = array<attachment>
type attachmentSet = array<attachmentDetails>
type trustedAdvisorResourceDetailList = array<trustedAdvisorResourceDetail>
@ocaml.doc("<p>A summary of a Trusted Advisor check result, including the alert status, last refresh,
            and number of resources examined.</p>")
type trustedAdvisorCheckSummary = {
  @ocaml.doc("<p>Summary information that relates to the category of the check. Cost Optimizing is the
            only category that is currently supported.</p>")
  categorySpecificSummary: trustedAdvisorCategorySpecificSummary,
  resourcesSummary: trustedAdvisorResourcesSummary,
  @ocaml.doc("<p>Specifies whether the Trusted Advisor check has flagged resources.</p>")
  hasFlaggedResources: option<boolean_>,
  @ocaml.doc("<p>The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or
            \"not_available\".</p>")
  status: string_,
  @ocaml.doc("<p>The time of the last refresh of the check.</p>") @as("timestamp")
  timestamp_: string_,
  @ocaml.doc("<p>The unique identifier for the Trusted Advisor check.</p>") checkId: string_,
}
type trustedAdvisorCheckList = array<trustedAdvisorCheckDescription>
@ocaml.doc("<p>Information about an AWS service returned by the <a>DescribeServices</a>
            operation.</p>")
type service = {
  @ocaml.doc("<p>A list of categories that describe the type of support issue a case describes.
            Categories consist of a category name and a category code. Category names and codes are
            passed to AWS Support when you call <a>CreateCase</a>.</p>")
  categories: option<categoryList>,
  @ocaml.doc("<p>The friendly name for an AWS service. The <code>code</code> element contains the
            corresponding code.</p>")
  name: option<serviceName>,
  @ocaml.doc("<p>The code for an AWS service returned by the <a>DescribeServices</a>
            response. The <code>name</code> element contains the corresponding friendly name.</p>")
  code: option<serviceCode>,
}
@ocaml.doc("<p>A communication associated with a support case. The communication consists of the
            case ID, the message body, attachment information, the submitter of the communication,
            and the date and time of the communication.</p>")
type communication = {
  @ocaml.doc("<p>Information about the attachments to the case communication.</p>")
  attachmentSet: option<attachmentSet>,
  @ocaml.doc("<p>The time the communication was created.</p>") timeCreated: option<timeCreated>,
  @ocaml.doc("<p>The identity of the account that submitted, or responded to, the support case.
            Customer entries include the role or IAM user as well as the email address. For example,
            \"AdminRole (Role) <janedoe@example.com>. Entries from the AWS Support team display
            \"Amazon Web Services,\" and don't show an email address.
            </p>")
  submittedBy: option<submittedBy>,
  @ocaml.doc("<p>The text of the communication between the customer and AWS Support.</p>")
  body: option<communicationBody>,
  @ocaml.doc("<p>The support case ID requested or returned in the call. The case ID is an
            alphanumeric string formatted as shown in this example:
                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
        </p>")
  caseId: option<caseId>,
}
type trustedAdvisorCheckSummaryList = array<trustedAdvisorCheckSummary>
@ocaml.doc(
  "<p>The results of a Trusted Advisor check returned by <a>DescribeTrustedAdvisorCheckResult</a>.</p>"
)
type trustedAdvisorCheckResult = {
  @ocaml.doc("<p>The details about each resource listed in the check result.</p>")
  flaggedResources: trustedAdvisorResourceDetailList,
  @ocaml.doc("<p>Summary information that relates to the category of the check. Cost Optimizing is the
            only category that is currently supported.</p>")
  categorySpecificSummary: trustedAdvisorCategorySpecificSummary,
  resourcesSummary: trustedAdvisorResourcesSummary,
  @ocaml.doc("<p>The alert status of the check: \"ok\" (green), \"warning\" (yellow), \"error\" (red), or
            \"not_available\".</p>")
  status: string_,
  @ocaml.doc("<p>The time of the last refresh of the check.</p>") @as("timestamp")
  timestamp_: string_,
  @ocaml.doc("<p>The unique identifier for the Trusted Advisor check.</p>") checkId: string_,
}
type serviceList = array<service>
type communicationList = array<communication>
@ocaml.doc("<p>The five most recent communications associated with the case.</p>")
type recentCaseCommunications = {
  @ocaml.doc("<p>A resumption point for pagination.</p>") nextToken: option<nextToken>,
  @ocaml.doc("<p>The five most recent communications associated with the case.</p>")
  communications: option<communicationList>,
}
@ocaml.doc("<p>A JSON-formatted object that contains the metadata for a support case. It is contained
            in the response from a <a>DescribeCases</a> request. <b>CaseDetails</b> contains the following fields:</p>
        <ul>
            <li>
                <p>
                    <b>caseId</b> - The support case ID requested or
                    returned in the call. The case ID is an alphanumeric string formatted as shown
                    in this example:
                    case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>.</p>
            </li>
            <li>
                <p>
                    <b>categoryCode</b> - The category of problem for the
                    support case. Corresponds to the <code>CategoryCode</code> values returned by a call to
                        <a>DescribeServices</a>.</p>
            </li>
            <li>
                <p>
                    <b>displayId</b> - The identifier for the case on pages
                    in the AWS Support Center.</p>
            </li>
            <li>
                <p>
                    <b>language</b> - The ISO 639-1 code for the language
                    in which AWS provides support. AWS Support currently supports English (\"en\") and
                    Japanese (\"ja\"). Language parameters must be passed explicitly for operations
                    that take them.</p>
            </li>
            <li>
                <p>
                    <b>nextToken</b> - A resumption point for
                    pagination.</p>
            </li>
            <li>
                <p>
                    <b>recentCommunications</b> - One or more <a>Communication</a> objects. Fields of these objects are
                        <code>attachments</code>, <code>body</code>, <code>caseId</code>,
                        <code>submittedBy</code>, and <code>timeCreated</code>.</p>
            </li>
            <li>
                <p>
                    <b>serviceCode</b> - The identifier for the AWS service
                    that corresponds to the service code defined in the call to <a>DescribeServices</a>.</p>
            </li>
            <li>
                <p>
                    <b>severityCode</b> - The severity code assigned to the
                    case. Contains one of the values returned by the call to <a>DescribeSeverityLevels</a>. The possible values are:
                        <code>low</code>, <code>normal</code>, <code>high</code>,
                        <code>urgent</code>, and <code>critical</code>.</p>
            </li>
            <li>
                <p>
                    <b>status</b> - The status of the case in the AWS Support Center. Valid values:</p>
                <ul>
                  <li>
                        <p>
                        <code>opened</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>pending-customer-action</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>reopened</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>resolved</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>unassigned</code>
                     </p>
                    </li>
                  <li>
                        <p>
                        <code>work-in-progress</code>
                     </p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                    <b>subject</b> - The subject line of the case.</p>
            </li>
            <li>
                <p>
                    <b>submittedBy</b> - The email address of the account
                    that submitted the case.</p>
            </li>
            <li>
                <p>
                    <b>timeCreated</b> - The time the case was created, in
                    ISO-8601 format.</p>
            </li>
         </ul>")
type caseDetails = {
  @ocaml.doc("<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support
            currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be
            passed explicitly for operations that take them.</p>")
  language: option<language>,
  @ocaml.doc("<p>The email addresses that receive copies of communication about the case.</p>")
  ccEmailAddresses: option<ccEmailAddressList>,
  @ocaml.doc("<p>The five most recent communications between you and AWS Support Center, including the
            IDs of any attachments to the communications. Also includes a <code>nextToken</code>
            that you can use to retrieve earlier communications.</p>")
  recentCommunications: option<recentCaseCommunications>,
  @ocaml.doc("<p>The time that the case was created in the AWS Support Center.</p>")
  timeCreated: option<timeCreated>,
  @ocaml.doc("<p>The email address of the account that submitted the case.</p>")
  submittedBy: option<submittedBy>,
  @ocaml.doc(
    "<p>The code for the severity level returned by the call to <a>DescribeSeverityLevels</a>.</p>"
  )
  severityCode: option<severityCode>,
  @ocaml.doc("<p>The category of problem for the support case.</p>")
  categoryCode: option<categoryCode>,
  @ocaml.doc("<p>The code for the AWS service. You can get a list of codes and the corresponding
            service names by calling <a>DescribeServices</a>.</p>")
  serviceCode: option<serviceCode>,
  @ocaml.doc("<p>The status of the case.</p>
        <p>Valid values:</p>
        <ul>
            <li>
                <p>
                  <code>opened</code>
               </p>
            </li>
            <li>
                <p>
                  <code>pending-customer-action</code>
               </p>
            </li>
            <li>
                <p>
                  <code>reopened</code>
               </p>
            </li>
            <li>
                <p>
                  <code>resolved</code>
               </p>
            </li>
            <li>
                <p>
                  <code>unassigned</code>
               </p>
            </li>
            <li>
                <p>
                  <code>work-in-progress</code>
               </p>
            </li>
         </ul>")
  status: option<status>,
  @ocaml.doc("<p>The subject line for the case in the AWS Support Center.</p>")
  subject: option<subject>,
  @ocaml.doc("<p>The ID displayed for the case in the AWS Support Center. This is a numeric
            string.</p>")
  displayId: option<displayId>,
  @ocaml.doc("<p>The support case ID requested or returned in the call. The case ID is an
            alphanumeric string formatted as shown in this example:
                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
        </p>")
  caseId: option<caseId>,
}
type caseList = array<caseDetails>
@ocaml.doc("<fullname>AWS Support</fullname>
        <p>The <i>AWS Support API Reference</i> is intended for programmers who need detailed
            information about the AWS Support operations and data types. You can use the API to manage
            your support cases programmatically. The AWS Support API uses HTTP methods that return
            results in JSON format.</p>
        <note>
            <ul>
               <li>
                    <p>You must have a Business or Enterprise Support plan to use the AWS Support
                        API. </p>
                </li>
               <li>
                    <p>If you call the AWS Support API from an account that does not have a
                        Business or Enterprise Support plan, the
                            <code>SubscriptionRequiredException</code> error message appears. For
                        information about changing your support plan, see <a href=\"http://aws.amazon.com/premiumsupport/\">AWS Support</a>.</p>
                </li>
            </ul>
        </note>
        <p>The AWS Support service also exposes a set of <a href=\"http://aws.amazon.com/premiumsupport/trustedadvisor/\">AWS Trusted Advisor</a> features. You can
            retrieve a list of checks and their descriptions, get check results, specify checks to
            refresh, and get the refresh status of checks.</p>
        <p>The following list describes the AWS Support case management operations:</p>
        <ul>
            <li>
                <p> Service names, issue categories, and available severity levels  - The
                        <a>DescribeServices</a> and <a>DescribeSeverityLevels</a> operations return AWS service names,
                    service codes, service categories, and problem severity levels. You use these
                    values when you call the <a>CreateCase</a> operation.</p>
            </li>
            <li>
                <p> Case creation, case details, and case resolution - The <a>CreateCase</a>, <a>DescribeCases</a>, <a>DescribeAttachment</a>, and <a>ResolveCase</a> operations
                    create AWS Support cases, retrieve information about cases, and resolve cases.</p>
            </li>
            <li>
                <p> Case communication - The <a>DescribeCommunications</a>,
                        <a>AddCommunicationToCase</a>, and <a>AddAttachmentsToSet</a> operations retrieve and add communications
                    and attachments to AWS Support cases.</p>
            </li>
         </ul>
        <p>The following list describes the operations available from the AWS Support service for
            Trusted Advisor:</p>
        <ul>
            <li>
                <p>
                    <a>DescribeTrustedAdvisorChecks</a> returns the list of checks that
                    run against your AWS resources.</p>
            </li>
            <li>
                <p>Using the <code>checkId</code> for a specific check returned by <a>DescribeTrustedAdvisorChecks</a>, you can call <a>DescribeTrustedAdvisorCheckResult</a> to obtain the results for the
                    check that you specified.</p>
            </li>
            <li>
                <p>
                    <a>DescribeTrustedAdvisorCheckSummaries</a> returns summarized
                    results for one or more Trusted Advisor checks.</p>
            </li>
            <li>
                <p>
                    <a>RefreshTrustedAdvisorCheck</a> requests that Trusted Advisor rerun a
                    specified check.</p>
            </li>
            <li>
                <p>
                    <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> reports the refresh
                    status of one or more checks.</p>
            </li>
         </ul>
        <p>For authentication of requests, AWS Support uses <a href=\"https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html\">Signature Version 4 Signing
                Process</a>.</p>
        <p>See <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/Welcome.html\">About the
            AWS Support API</a> in the <i>AWS Support User Guide</i> for
            information about how to use this service to create and manage your support cases, and
            how to call Trusted Advisor for results of checks on your resources.</p>")
module ResolveCase = {
  type t
  type request = {
    @ocaml.doc("<p>The support case ID requested or returned in the call. The case ID is an
            alphanumeric string formatted as shown in this example:
                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
        </p>")
    caseId: option<caseId>,
  }
  @ocaml.doc("<p>The status of the case returned by the <a>ResolveCase</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>The status of the case after the <a>ResolveCase</a> request was
            processed.</p>")
    finalCaseStatus: option<caseStatus>,
    @ocaml.doc("<p>The status of the case when the <a>ResolveCase</a> request was sent.</p>")
    initialCaseStatus: option<caseStatus>,
  }
  @module("@aws-sdk/client-support") @new external new: request => t = "ResolveCaseCommand"
  let make = (~caseId=?, ()) => new({caseId: caseId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RefreshTrustedAdvisorCheck = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The unique identifier for the Trusted Advisor check to refresh.</p>     
            <note>
                <p>Specifying the check ID of a check that is automatically refreshed
                    causes an <code>InvalidParameterValue</code> error.</p>
            </note>")
    checkId: string_,
  }
  @ocaml.doc("<p>The current refresh status of a Trusted Advisor check.</p>")
  type response = {
    @ocaml.doc("<p>The current refresh status for a check, including the amount of time until the check
            is eligible for refresh.</p>")
    status: trustedAdvisorCheckRefreshStatus,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "RefreshTrustedAdvisorCheckCommand"
  let make = (~checkId, ()) => new({checkId: checkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeAttachment = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ID of the attachment to return. Attachment IDs are returned by the <a>DescribeCommunications</a> operation.</p>"
    )
    attachmentId: attachmentId,
  }
  @ocaml.doc(
    "<p>The content and file name of the attachment returned by the <a>DescribeAttachment</a> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>This object includes the attachment content and file name.</p>
        <p>In the previous response syntax, the value for the <code>data</code> parameter appears
            as <code>blob</code>, which is represented as a base64-encoded string. The value for
                <code>fileName</code> is the name of the attachment, such as
                <code>troubleshoot-screenshot.png</code>.</p>")
    attachment: option<attachment>,
  }
  @module("@aws-sdk/client-support") @new external new: request => t = "DescribeAttachmentCommand"
  let make = (~attachmentId, ()) => new({attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCase = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of a set of one or more attachments for the case. Create the set by using the
                <a>AddAttachmentsToSet</a> operation.</p>")
    attachmentSetId: option<attachmentSetId>,
    @ocaml.doc("<p>The type of issue for the case. You can specify <code>customer-service</code> or
                <code>technical</code>. If you don't specify a value, the default is
                <code>technical</code>.</p>")
    issueType: option<issueType>,
    @ocaml.doc("<p>The language in which AWS Support handles the case. You must specify the ISO 639-1
            code for the <code>language</code> parameter if you want support in that language.
            Currently, English (\"en\") and Japanese (\"ja\") are supported.</p>")
    language: option<language>,
    @ocaml.doc("<p>A list of email addresses that AWS Support copies on case correspondence. AWS Support
            identifies the account that creates the case when you specify your AWS credentials in an
            HTTP POST method or use the <a href=\"http://aws.amazon.com/tools/\">AWS SDKs</a>.
        </p>")
    ccEmailAddresses: option<ccEmailAddressList>,
    @ocaml.doc("<p>The communication body text that describes the issue. This text appears in the
                <b>Description</b> field on the AWS Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p>")
    communicationBody: communicationBody,
    @ocaml.doc("<p>The category of problem for the support case. You also use the <a>DescribeServices</a> operation to get the category code for a service. Each
            AWS service defines its own set of category codes.</p>")
    categoryCode: option<categoryCode>,
    @ocaml.doc("<p>A value that indicates the urgency of the case. This value determines the response
            time according to your service level agreement with AWS Support. You can use the <a>DescribeSeverityLevels</a> operation to get the possible values for
                <code>severityCode</code>. </p>
        <p>For more information, see <a>SeverityLevel</a> and <a href=\"https://docs.aws.amazon.com/awssupport/latest/user/getting-started.html#choosing-severity\">Choosing a
                Severity</a> in the <i>AWS Support User Guide</i>.</p>
        <note>
            <p>The availability of severity levels depends on the support plan for the AWS
                account.</p>
        </note>")
    severityCode: option<severityCode>,
    @ocaml.doc("<p>The code for the AWS service. You can use the <a>DescribeServices</a>
            operation to get the possible <code>serviceCode</code> values.</p>")
    serviceCode: option<serviceCode>,
    @ocaml.doc(
      "<p>The title of the support case. The title appears in the <b>Subject</b> field on the AWS Support Center <a href=\"https://console.aws.amazon.com/support/home#/case/create\">Create Case</a> page.</p>"
    )
    subject: subject,
  }
  @ocaml.doc(
    "<p>The support case ID returned by a successful completion of the <a>CreateCase</a> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>The support case ID requested or returned in the call. The case ID is an
            alphanumeric string in the following format:
                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
        </p>")
    caseId: option<caseId>,
  }
  @module("@aws-sdk/client-support") @new external new: request => t = "CreateCaseCommand"
  let make = (
    ~communicationBody,
    ~subject,
    ~attachmentSetId=?,
    ~issueType=?,
    ~language=?,
    ~ccEmailAddresses=?,
    ~categoryCode=?,
    ~severityCode=?,
    ~serviceCode=?,
    (),
  ) =>
    new({
      attachmentSetId: attachmentSetId,
      issueType: issueType,
      language: language,
      ccEmailAddresses: ccEmailAddresses,
      communicationBody: communicationBody,
      categoryCode: categoryCode,
      severityCode: severityCode,
      serviceCode: serviceCode,
      subject: subject,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddCommunicationToCase = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of a set of one or more attachments for the communication to add to the case.
            Create the set by calling <a>AddAttachmentsToSet</a>
        </p>")
    attachmentSetId: option<attachmentSetId>,
    @ocaml.doc(
      "<p>The email addresses in the CC line of an email to be added to the support case.</p>"
    )
    ccEmailAddresses: option<ccEmailAddressList>,
    @ocaml.doc("<p>The body of an email communication to add to the support case.</p>")
    communicationBody: communicationBody,
    @ocaml.doc("<p>The support case ID requested or returned in the call. The case ID is an
            alphanumeric string formatted as shown in this example:
                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
        </p>")
    caseId: option<caseId>,
  }
  @ocaml.doc("<p>The result of the <a>AddCommunicationToCase</a> operation.</p>")
  type response = {
    @ocaml.doc("<p>True if <a>AddCommunicationToCase</a> succeeds. Otherwise, returns an
            error.</p>")
    result: option<result>,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "AddCommunicationToCaseCommand"
  let make = (~communicationBody, ~attachmentSetId=?, ~ccEmailAddresses=?, ~caseId=?, ()) =>
    new({
      attachmentSetId: attachmentSetId,
      ccEmailAddresses: ccEmailAddresses,
      communicationBody: communicationBody,
      caseId: caseId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorCheckRefreshStatuses = {
  type t
  type request = {
    @ocaml.doc("<p>The IDs of the Trusted Advisor checks to get the status.</p>
        <note>
            <p>If you specify the check ID of a check that is automatically refreshed, you might
                see an <code>InvalidParameterValue</code> error.</p>
        </note>")
    checkIds: stringList,
  }
  @ocaml.doc(
    "<p>The statuses of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckRefreshStatuses</a> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>The refresh status of the specified Trusted Advisor checks.</p>")
    statuses: trustedAdvisorCheckRefreshStatusList,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "DescribeTrustedAdvisorCheckRefreshStatusesCommand"
  let make = (~checkIds, ()) => new({checkIds: checkIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeSeverityLevels = {
  type t
  type request = {
    @ocaml.doc("<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support
            currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be
            passed explicitly for operations that take them.</p>")
    language: option<language>,
  }
  @ocaml.doc("<p>The list of severity levels returned by the <a>DescribeSeverityLevels</a>
            operation.</p>")
  type response = {
    @ocaml.doc("<p>The available severity levels for the support case. Available severity levels are
            defined by your service level agreement with AWS.</p>")
    severityLevels: option<severityLevelsList>,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "DescribeSeverityLevelsCommand"
  let make = (~language=?, ()) => new({language: language})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AddAttachmentsToSet = {
  type t
  type request = {
    @ocaml.doc("<p>One or more attachments to add to the set. You can add up to three attachments per
            set. The size limit is 5 MB per attachment.</p>
        <p>In the <code>Attachment</code> object, use the <code>data</code> parameter to specify
            the contents of the attachment file. In the previous request syntax, the value for
                <code>data</code> appear as <code>blob</code>, which is represented as a
            base64-encoded string. The value for <code>fileName</code> is the name of the
            attachment, such as <code>troubleshoot-screenshot.png</code>.</p>")
    attachments: attachments,
    @ocaml.doc("<p>The ID of the attachment set. If an <code>attachmentSetId</code> is not specified, a
            new attachment set is created, and the ID of the set is returned in the response. If an
                <code>attachmentSetId</code> is specified, the attachments are added to the
            specified set, if it exists.</p>")
    attachmentSetId: option<attachmentSetId>,
  }
  @ocaml.doc(
    "<p>The ID and expiry time of the attachment set returned by the <a>AddAttachmentsToSet</a> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>The time and date when the attachment set expires.</p>")
    expiryTime: option<expiryTime>,
    @ocaml.doc("<p>The ID of the attachment set. If an <code>attachmentSetId</code> was not specified, a
            new attachment set is created, and the ID of the set is returned in the response. If an
                <code>attachmentSetId</code> was specified, the attachments are added to the
            specified set, if it exists.</p>")
    attachmentSetId: option<attachmentSetId>,
  }
  @module("@aws-sdk/client-support") @new external new: request => t = "AddAttachmentsToSetCommand"
  let make = (~attachments, ~attachmentSetId=?, ()) =>
    new({attachments: attachments, attachmentSetId: attachmentSetId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorChecks = {
  type t
  type request = {
    @ocaml.doc("<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support
            currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be
            passed explicitly for operations that take them.</p>")
    language: string_,
  }
  @ocaml.doc(
    "<p>Information about the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorChecks</a> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>Information about all available Trusted Advisor checks.</p>")
    checks: trustedAdvisorCheckList,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "DescribeTrustedAdvisorChecksCommand"
  let make = (~language, ()) => new({language: language})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorCheckSummaries = {
  type t
  type request = {@ocaml.doc("<p>The IDs of the Trusted Advisor checks.</p>") checkIds: stringList}
  @ocaml.doc(
    "<p>The summaries of the Trusted Advisor checks returned by the <a>DescribeTrustedAdvisorCheckSummaries</a> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>The summary information for the requested Trusted Advisor checks.</p>")
    summaries: trustedAdvisorCheckSummaryList,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "DescribeTrustedAdvisorCheckSummariesCommand"
  let make = (~checkIds, ()) => new({checkIds: checkIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeTrustedAdvisorCheckResult = {
  type t
  @ocaml.doc("<p></p>")
  type request = {
    @ocaml.doc("<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support
            currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be
            passed explicitly for operations that take them.</p>")
    language: option<string_>,
    @ocaml.doc("<p>The unique identifier for the Trusted Advisor check.</p>") checkId: string_,
  }
  @ocaml.doc(
    "<p>The result of the Trusted Advisor check returned by the <a>DescribeTrustedAdvisorCheckResult</a> operation.</p>"
  )
  type response = {
    @ocaml.doc("<p>The detailed results of the Trusted Advisor check.</p>")
    result: option<trustedAdvisorCheckResult>,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "DescribeTrustedAdvisorCheckResultCommand"
  let make = (~checkId, ~language=?, ()) => new({language: language, checkId: checkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeServices = {
  type t
  type request = {
    @ocaml.doc("<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support
            currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be
            passed explicitly for operations that take them.</p>")
    language: option<language>,
    @ocaml.doc("<p>A JSON-formatted list of service codes available for AWS services.</p>")
    serviceCodeList: option<serviceCodeList>,
  }
  @ocaml.doc("<p>The list of AWS services returned by the <a>DescribeServices</a>
            operation.</p>")
  type response = {
    @ocaml.doc("<p>A JSON-formatted list of AWS services.</p>") services: option<serviceList>,
  }
  @module("@aws-sdk/client-support") @new external new: request => t = "DescribeServicesCommand"
  let make = (~language=?, ~serviceCodeList=?, ()) =>
    new({language: language, serviceCodeList: serviceCodeList})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCommunications = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return before paginating.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A resumption point for pagination.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The start date for a filtered date search on support case communications. Case
            communications are available for 12 months after creation.</p>")
    afterTime: option<afterTime>,
    @ocaml.doc("<p>The end date for a filtered date search on support case communications. Case
            communications are available for 12 months after creation.</p>")
    beforeTime: option<beforeTime>,
    @ocaml.doc("<p>The support case ID requested or returned in the call. The case ID is an
            alphanumeric string formatted as shown in this example:
                case-<i>12345678910-2013-c4c1d2bf33c5cf47</i>
        </p>")
    caseId: caseId,
  }
  @ocaml.doc("<p>The communications returned by the <a>DescribeCommunications</a>
            operation.</p>")
  type response = {
    @ocaml.doc("<p>A resumption point for pagination.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The communications for the case.</p>") communications: option<communicationList>,
  }
  @module("@aws-sdk/client-support") @new
  external new: request => t = "DescribeCommunicationsCommand"
  let make = (~caseId, ~maxResults=?, ~nextToken=?, ~afterTime=?, ~beforeTime=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      afterTime: afterTime,
      beforeTime: beforeTime,
      caseId: caseId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeCases = {
  type t
  type request = {
    @ocaml.doc("<p>Specifies whether to include communications in the <code>DescribeCases</code>
            response. By default, communications are included.</p>")
    includeCommunications: option<includeCommunications>,
    @ocaml.doc("<p>The ISO 639-1 code for the language in which AWS provides support. AWS Support
            currently supports English (\"en\") and Japanese (\"ja\"). Language parameters must be
            passed explicitly for operations that take them.</p>")
    language: option<language>,
    @ocaml.doc("<p>The maximum number of results to return before paginating.</p>")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>A resumption point for pagination.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>Specifies whether to include resolved support cases in the <code>DescribeCases</code>
            response. By default, resolved cases aren't included.</p>")
    includeResolvedCases: option<includeResolvedCases>,
    @ocaml.doc("<p>The end date for a filtered date search on support case communications. Case
            communications are available for 12 months after creation.</p>")
    beforeTime: option<beforeTime>,
    @ocaml.doc("<p>The start date for a filtered date search on support case communications. Case
            communications are available for 12 months after creation.</p>")
    afterTime: option<afterTime>,
    @ocaml.doc("<p>The ID displayed for a case in the AWS Support Center user interface.</p>")
    displayId: option<displayId>,
    @ocaml.doc("<p>A list of ID numbers of the support cases you want returned. The maximum number of
            cases is 100.</p>")
    caseIdList: option<caseIdList>,
  }
  @ocaml.doc("<p>Returns an array of <a href=\"https://docs.aws.amazon.com/awssupport/latest/APIReference/API_CaseDetails.html\">CaseDetails</a>
            objects and a <code>nextToken</code> that defines a point for pagination in the result
            set.</p>")
  type response = {
    @ocaml.doc("<p>A resumption point for pagination.</p>") nextToken: option<nextToken>,
    @ocaml.doc("<p>The details for the cases that match the request.</p>") cases: option<caseList>,
  }
  @module("@aws-sdk/client-support") @new external new: request => t = "DescribeCasesCommand"
  let make = (
    ~includeCommunications=?,
    ~language=?,
    ~maxResults=?,
    ~nextToken=?,
    ~includeResolvedCases=?,
    ~beforeTime=?,
    ~afterTime=?,
    ~displayId=?,
    ~caseIdList=?,
    (),
  ) =>
    new({
      includeCommunications: includeCommunications,
      language: language,
      maxResults: maxResults,
      nextToken: nextToken,
      includeResolvedCases: includeResolvedCases,
      beforeTime: beforeTime,
      afterTime: afterTime,
      displayId: displayId,
      caseIdList: caseIdList,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
