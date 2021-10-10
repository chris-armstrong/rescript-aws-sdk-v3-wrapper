type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-securityhub") @new
external createClient: unit => awsServiceClient = "SecurityHubClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type workflowStatus = [
  | @as("SUPPRESSED") #SUPPRESSED
  | @as("RESOLVED") #RESOLVED
  | @as("NOTIFIED") #NOTIFIED
  | @as("NEW") #NEW
]
type workflowState = [
  | @as("RESOLVED") #RESOLVED
  | @as("DEFERRED") #DEFERRED
  | @as("IN_PROGRESS") #IN_PROGRESS
  | @as("ASSIGNED") #ASSIGNED
  | @as("NEW") #NEW
]
type verificationState = [
  | @as("BENIGN_POSITIVE") #BENIGN_POSITIVE
  | @as("FALSE_POSITIVE") #FALSE_POSITIVE
  | @as("TRUE_POSITIVE") #TRUE_POSITIVE
  | @as("UNKNOWN") #UNKNOWN
]
type timestamp_ = Js.Date.t
type threatIntelIndicatorType = [
  | @as("URL") #URL
  | @as("PROCESS") #PROCESS
  | @as("MUTEX") #MUTEX
  | @as("IPV6_ADDRESS") #IPV6_ADDRESS
  | @as("IPV4_ADDRESS") #IPV4_ADDRESS
  | @as("HASH_SHA512") #HASH_SHA512
  | @as("HASH_SHA256") #HASH_SHA256
  | @as("HASH_SHA1") #HASH_SHA1
  | @as("HASH_MD5") #HASH_MD5
  | @as("EMAIL_ADDRESS") #EMAIL_ADDRESS
  | @as("DOMAIN") #DOMAIN
]
type threatIntelIndicatorCategory = [
  | @as("KEYLOGGER") #KEYLOGGER
  | @as("EXPLOIT_SITE") #EXPLOIT_SITE
  | @as("DROP_SITE") #DROP_SITE
  | @as("COMMAND_AND_CONTROL") #COMMAND_AND_CONTROL
  | @as("CARD_STEALER") #CARD_STEALER
  | @as("BACKDOOR") #BACKDOOR
]
type tagValue = string
type tagKey = string
type stringFilterComparison = [
  | @as("PREFIX_NOT_EQUALS") #PREFIX_NOT_EQUALS
  | @as("NOT_EQUALS") #NOT_EQUALS
  | @as("PREFIX") #PREFIX
  | @as("EQUALS") #EQUALS
]
type standardsStatus = [
  | @as("INCOMPLETE") #INCOMPLETE
  | @as("DELETING") #DELETING
  | @as("FAILED") #FAILED
  | @as("READY") #READY
  | @as("PENDING") #PENDING
]
type sortOrder = [@as("desc") #Desc | @as("asc") #Asc]
type sizeBytes = float
type severityRating = [
  | @as("CRITICAL") #CRITICAL
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
]
type severityLabel = [
  | @as("CRITICAL") #CRITICAL
  | @as("HIGH") #HIGH
  | @as("MEDIUM") #MEDIUM
  | @as("LOW") #LOW
  | @as("INFORMATIONAL") #INFORMATIONAL
]
type resourceArn = string
type recordState = [@as("ARCHIVED") #ARCHIVED | @as("ACTIVE") #ACTIVE]
type ratioScale = int
type partition = [@as("aws-us-gov") #Aws_Us_Gov | @as("aws-cn") #Aws_Cn | @as("aws") #Aws]
type nonEmptyString = string
type nextToken = string
type networkDirection = [@as("OUT") #OUT | @as("IN") #IN]
type maxResults = int
type mapFilterComparison = [@as("NOT_EQUALS") #NOT_EQUALS | @as("EQUALS") #EQUALS]
type malwareType = [
  | @as("WORM") #WORM
  | @as("VIRUS") #VIRUS
  | @as("TROJAN") #TROJAN
  | @as("ROOTKIT") #ROOTKIT
  | @as("REMOTE_ACCESS") #REMOTE_ACCESS
  | @as("RANSOMWARE") #RANSOMWARE
  | @as("SPYWARE") #SPYWARE
  | @as("POTENTIALLY_UNWANTED") #POTENTIALLY_UNWANTED
  | @as("MACRO") #MACRO
  | @as("KEYLOGGER") #KEYLOGGER
  | @as("EXPLOIT_KIT") #EXPLOIT_KIT
  | @as("COIN_MINER") #COIN_MINER
  | @as("BOTNET_AGENT") #BOTNET_AGENT
  | @as("BLENDED_THREAT") #BLENDED_THREAT
  | @as("ADWARE") #ADWARE
]
type malwareState = [
  | @as("REMOVED") #REMOVED
  | @as("REMOVAL_FAILED") #REMOVAL_FAILED
  | @as("OBSERVED") #OBSERVED
]
type long = float
type integrationType = [
  | @as("UPDATE_FINDINGS_IN_SECURITY_HUB") #UPDATE_FINDINGS_IN_SECURITY_HUB
  | @as("RECEIVE_FINDINGS_FROM_SECURITY_HUB") #RECEIVE_FINDINGS_FROM_SECURITY_HUB
  | @as("SEND_FINDINGS_TO_SECURITY_HUB") #SEND_FINDINGS_TO_SECURITY_HUB
]
type integer_ = int
type double = float
type dateRangeUnit = [@as("DAYS") #DAYS]
type crossAccountMaxResults = int
type controlStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type complianceStatus = [
  | @as("NOT_AVAILABLE") #NOT_AVAILABLE
  | @as("FAILED") #FAILED
  | @as("WARNING") #WARNING
  | @as("PASSED") #PASSED
]
type boolean_ = bool
type awsLambdaLayerVersionNumber = float
type awsIamRoleAssumeRolePolicyDocument = string
type awsIamAccessKeyStatus = [@as("Inactive") #Inactive | @as("Active") #Active]
type adminsMaxResults = int
type adminStatus = [@as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS | @as("ENABLED") #ENABLED]
type accountId = string
@ocaml.doc("<p>Used to update information about the investigation into the finding.</p>")
type workflowUpdate = {
  @ocaml.doc("<p>The status of the investigation into the finding. The allowed values are the
         following.</p>
         <ul>
            <li>
               <p>
                  <code>NEW</code> - The initial state of a finding, before it is reviewed.</p>
               <p>Security Hub also resets <code>WorkFlowStatus</code> from <code>NOTIFIED</code> or
                  <code>RESOLVED</code> to <code>NEW</code> in the following cases:</p>
               <ul>
                  <li>
                     <p>The record state changes from <code>ARCHIVED</code> to
                     <code>ACTIVE</code>.</p>
                  </li>
                  <li>
                     <p>The compliance status changes from <code>PASSED</code> to either
                        <code>WARNING</code>, <code>FAILED</code>, or
                     <code>NOT_AVAILABLE</code>.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>NOTIFIED</code> - Indicates that you notified the resource owner about the
               security issue. Used when the initial reviewer is not the resource owner, and needs
               intervention from the resource owner.</p>
            </li>
            <li>
               <p>
                  <code>RESOLVED</code> - The finding was reviewed and remediated and is now
               considered resolved.</p>
            </li>
            <li>
               <p>
                  <code>SUPPRESSED</code> - The finding will not be reviewed again and will not be
               acted upon.</p>
            </li>
         </ul>")
  @as("Status")
  status: option<workflowStatus>,
}
@ocaml.doc("<p>Provides information about the status of the investigation into a finding.</p>")
type workflow = {
  @ocaml.doc("<p>The status of the investigation into the finding. The allowed values are the
         following.</p>
         <ul>
            <li>
               <p>
                  <code>NEW</code> - The initial state of a finding, before it is reviewed.</p>
               <p>Security Hub also resets the workflow status from <code>NOTIFIED</code> or
                  <code>RESOLVED</code> to <code>NEW</code> in the following cases:</p>
               <ul>
                  <li>
                     <p>
                        <code>RecordState</code> changes from <code>ARCHIVED</code> to
                        <code>ACTIVE</code>.</p>
                  </li>
                  <li>
                     <p>
                        <code>ComplianceStatus</code> changes from <code>PASSED</code> to either
                        <code>WARNING</code>, <code>FAILED</code>, or
                     <code>NOT_AVAILABLE</code>.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>NOTIFIED</code> - Indicates that you notified the resource owner about the
               security issue. Used when the initial reviewer is not the resource owner, and needs
               intervention from the resource owner.</p>
            </li>
            <li>
               <p>
                  <code>SUPPRESSED</code> - The finding will not be reviewed again and will not be
               acted upon.</p>
            </li>
            <li>
               <p>
                  <code>RESOLVED</code> - The finding was reviewed and remediated and is now
               considered resolved. </p>
            </li>
         </ul>")
  @as("Status")
  status: option<workflowStatus>,
}
@ocaml.doc("<p>Details about an override action for a rule.</p>")
type wafOverrideAction = {
  @ocaml.doc("<p>
            <code>COUNT</code> overrides the action specified by the individual rule within a
            <code>RuleGroup</code> .</p>
         <p>If set to <code>NONE</code>, the rule's action takes place.</p>")
  @as("Type")
  type_: option<nonEmptyString>,
}
@ocaml.doc("<p>Details about a rule to exclude from a rule group.</p>")
type wafExcludedRule = {
  @ocaml.doc("<p>The unique identifier for the rule to exclude from the rule group.</p>")
  @as("RuleId")
  ruleId: option<nonEmptyString>,
}
@ocaml.doc("<p>Details about the action that CloudFront or AWS WAF takes when a web request matches the
         conditions in the rule. </p>")
type wafAction = {
  @ocaml.doc("<p>Specifies how you want AWS WAF to respond to requests that match the settings in a
         rule.</p>
         <p>Valid settings include the following:</p>
         <ul>
            <li>
               <p>
                  <code>ALLOW</code> - AWS WAF allows requests</p>
            </li>
            <li>
               <p>
                  <code>BLOCK</code> - AWS WAF blocks requests</p>
            </li>
            <li>
               <p>
                  <code>COUNT</code> - AWS WAF increments a counter of the requests that match all
               of the conditions in the rule. AWS WAF then continues to inspect the web request
               based on the remaining rules in the web ACL. You can't specify <code>COUNT</code> for
               the default action for a WebACL.</p>
            </li>
         </ul>")
  @as("Type")
  type_: option<nonEmptyString>,
}
@ocaml.doc("<p>A vendor that generates a vulnerability report.</p>")
type vulnerabilityVendor = {
  @ocaml.doc("<p>Indicates when the vulnerability advisory was last updated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("VendorUpdatedAt")
  vendorUpdatedAt: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the vulnerability advisory was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("VendorCreatedAt")
  vendorCreatedAt: option<nonEmptyString>,
  @ocaml.doc("<p>The severity that the vendor assigned to the vulnerability.</p>")
  @as("VendorSeverity")
  vendorSeverity: option<nonEmptyString>,
  @ocaml.doc("<p>The URL of the vulnerability advisory.</p>") @as("Url")
  url: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the vendor.</p>") @as("Name") name: nonEmptyString,
}
type typeList = array<nonEmptyString>
@ocaml.doc("<p>Details about the threat intelligence related to a finding.</p>")
type threatIntelIndicator = {
  @ocaml.doc("<p>The URL to the page or site where you can get more information about the threat
         intelligence indicator.</p>")
  @as("SourceUrl")
  sourceUrl: option<nonEmptyString>,
  @ocaml.doc("<p>The source of the threat intelligence indicator.</p>") @as("Source")
  source: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the most recent instance of a threat intelligence indicator was
         observed.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastObservedAt")
  lastObservedAt: option<nonEmptyString>,
  @ocaml.doc("<p>The category of a threat intelligence indicator.</p>") @as("Category")
  category: option<threatIntelIndicatorCategory>,
  @ocaml.doc("<p>The value of a threat intelligence indicator.</p>") @as("Value")
  value: option<nonEmptyString>,
  @ocaml.doc("<p>The type of threat intelligence indicator.</p>") @as("Type")
  type_: option<threatIntelIndicatorType>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type stringList = array<nonEmptyString>
@ocaml.doc("<p>A string filter for querying findings.</p>")
type stringFilter = {
  @ocaml.doc("<p>The condition to apply to a string value when querying for findings. To search for
         values that contain the filter criteria value, use one of the following comparison
         operators:</p>
         <ul>
            <li>
               <p>To search for values that exactly match the filter value, use
               <code>EQUALS</code>.</p>
               <p>For example, the filter <code>ResourceType EQUALS AwsEc2SecurityGroup</code> only
               matches findings that have a resource type of
               <code>AwsEc2SecurityGroup</code>.</p>
            </li>
            <li>
               <p>To search for values that start with the filter value, use
               <code>PREFIX</code>.</p>
               <p>For example, the filter <code>ResourceType PREFIX AwsIam</code> matches findings
               that have a resource type that starts with <code>AwsIam</code>. Findings with a
               resource type of <code>AwsIamPolicy</code>, <code>AwsIamRole</code>, or
                  <code>AwsIamUser</code> would all match.</p>
            </li>
         </ul>
         <p>
            <code>EQUALS</code> and <code>PREFIX</code> filters on the same field are joined by
            <code>OR</code>. A finding matches if it matches any one of those filters.</p>
         <p>To search for values that do not contain the filter criteria value, use one of the
         following comparison operators:</p>
         <ul>
            <li>
               <p>To search for values that do not exactly match the filter value, use
                  <code>NOT_EQUALS</code>.</p>
               <p>For example, the filter <code>ResourceType NOT_EQUALS AwsIamPolicy</code> matches
               findings that have a resource type other than <code>AwsIamPolicy</code>.</p>
            </li>
            <li>
               <p>To search for values that do not start with the filter value, use
                  <code>PREFIX_NOT_EQUALS</code>.</p>
               <p>For example, the filter <code>ResourceType PREFIX_NOT_EQUALS AwsIam</code> matches
               findings that have a resource type that does not start with <code>AwsIam</code>.
               Findings with a resource type of <code>AwsIamPolicy</code>, <code>AwsIamRole</code>,
               or <code>AwsIamUser</code> would all be excluded from the results.</p>
            </li>
         </ul>
         <p>
            <code>NOT_EQUALS</code> and <code>PREFIX_NOT_EQUALS</code> filters on the same field are
         joined by <code>AND</code>. A finding matches only if it matches all of those
         filters.</p>
         <p>For filters on the same field, you cannot provide both an <code>EQUALS</code> filter and
         a <code>NOT_EQUALS</code> or <code>PREFIX_NOT_EQUALS</code> filter. Combining filters in
         this way always returns an error, even if the provided filter values would return valid
         results.</p>
         <p>You can combine <code>PREFIX</code> filters with <code>NOT_EQUALS</code> or
            <code>PREFIX_NOT_EQUALS</code> filters for the same field. Security Hub first processes the
            <code>PREFIX</code> filters, then the <code>NOT_EQUALS</code> or
            <code>PREFIX_NOT_EQUALS</code> filters.</p>
         <p> For example, for the following filter, Security Hub first identifies findings that have
         resource types that start with either <code>AwsIAM</code> or <code>AwsEc2</code>. It then
         excludes findings that have a resource type of <code>AwsIamPolicy</code> and findings that
         have a resource type of <code>AwsEc2NetworkInterface</code>.</p>
         <ul>
            <li>
               <p>
                  <code>ResourceType PREFIX AwsIam</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ResourceType PREFIX AwsEc2</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ResourceType NOT_EQUALS AwsIamPolicy</code>
               </p>
            </li>
            <li>
               <p>
                  <code>ResourceType NOT_EQUALS AwsEc2NetworkInterface</code>
               </p>
            </li>
         </ul>")
  @as("Comparison")
  comparison: option<stringFilterComparison>,
  @ocaml.doc("<p>The string filter value. Filter values are case sensitive. For example, the product name
         for control-based findings is <code>Security Hub</code>. If you provide <code>security hub</code>
         as the filter text, then there is no match.</p>")
  @as("Value")
  value: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides additional context for the value of <code>Compliance.Status</code>.</p>")
type statusReason = {
  @ocaml.doc("<p>The corresponding description for the status reason code.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>A code that represents a reason for the control status. For the list of status reason
         codes and their meanings, see <a href=\"https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff\">Standards-related information in the ASFF</a> in the
            <i>AWS Security Hub User Guide</i>. </p>")
  @as("ReasonCode")
  reasonCode: nonEmptyString,
}
type standardsSubscriptionArns = array<nonEmptyString>
type standardsInputParameterMap = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>Provides information about a specific standard.</p>")
type standard = {
  @ocaml.doc("<p>Whether the standard is enabled by default. When Security Hub is enabled from the console, if a
         standard is enabled by default, the check box for that standard is selected by
         default.</p>
         <p>When Security Hub is enabled using the <code>EnableSecurityHub</code> API operation, the
         standard is enabled by default unless <code>EnableDefaultStandards</code> is set to
            <code>false</code>.</p>")
  @as("EnabledByDefault")
  enabledByDefault: option<boolean_>,
  @ocaml.doc("<p>A description of the standard.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the standard.</p>") @as("Name") name: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of a standard.</p>") @as("StandardsArn")
  standardsArn: option<nonEmptyString>,
}
@ocaml.doc("<p>A collection of finding attributes used to sort findings.</p>")
type sortCriterion = {
  @ocaml.doc("<p>The order used to sort findings.</p>") @as("SortOrder")
  sortOrder: option<sortOrder>,
  @ocaml.doc("<p>The finding attribute used to sort findings.</p>") @as("Field")
  field: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a software package.</p>")
type softwarePackage = {
  @ocaml.doc("<p>The architecture used for the software package.</p>") @as("Architecture")
  architecture: option<nonEmptyString>,
  @ocaml.doc("<p>The release of the software package.</p>") @as("Release")
  release: option<nonEmptyString>,
  @ocaml.doc("<p>The epoch of the software package.</p>") @as("Epoch")
  epoch: option<nonEmptyString>,
  @ocaml.doc("<p>The version of the software package.</p>") @as("Version")
  version: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the software package.</p>") @as("Name") name: option<nonEmptyString>,
}
@ocaml.doc("<p>Updates to the severity information for a finding.</p>")
type severityUpdate = {
  @ocaml.doc("<p>The severity value of the finding. The allowed values are the following.</p>
         <ul>
            <li>
               <p>
                  <code>INFORMATIONAL</code> - No issue was found.</p>
            </li>
            <li>
               <p>
                  <code>LOW</code> - The issue does not require action on its own.</p>
            </li>
            <li>
               <p>
                  <code>MEDIUM</code> - The issue must be addressed but not urgently.</p>
            </li>
            <li>
               <p>
                  <code>HIGH</code> - The issue must be addressed as a priority.</p>
            </li>
            <li>
               <p>
                  <code>CRITICAL</code> - The issue must be remediated immediately to avoid it
               escalating.</p>
            </li>
         </ul>")
  @as("Label")
  label: option<severityLabel>,
  @ocaml.doc("<p>The native severity as defined by the AWS service or integrated partner product that
         generated the finding.</p>")
  @as("Product")
  product: option<double>,
  @ocaml.doc("<p>The normalized severity for the finding. This attribute is to be deprecated in favor of
            <code>Label</code>.</p>
         <p>If you provide <code>Normalized</code> and do not provide <code>Label</code>,
            <code>Label</code> is set automatically as follows.</p>
         <ul>
            <li>
               <p>0 - <code>INFORMATIONAL</code>
               </p>
            </li>
            <li>
               <p>1–39 - <code>LOW</code>
               </p>
            </li>
            <li>
               <p>40–69 - <code>MEDIUM</code>
               </p>
            </li>
            <li>
               <p>70–89 - <code>HIGH</code>
               </p>
            </li>
            <li>
               <p>90–100 - <code>CRITICAL</code>
               </p>
            </li>
         </ul>")
  @as("Normalized")
  normalized: option<ratioScale>,
}
@ocaml.doc("<p>The severity of the finding.</p>
         <p>The finding provider can provide the initial severity. The finding provider can only
         update the severity if it has not been updated using
         <code>BatchUpdateFindings</code>.</p>
         <p>The finding must have either <code>Label</code> or <code>Normalized</code> populated. If
         only one of these attributes is populated, then Security Hub automatically populates the other
         one. If neither attribute is populated, then the finding is invalid. <code>Label</code> is
         the preferred attribute.</p>")
type severity = {
  @ocaml.doc("<p>The native severity from the finding product that generated the finding.</p>")
  @as("Original")
  original: option<nonEmptyString>,
  @ocaml.doc("<p>Deprecated. The normalized severity of a finding. This attribute is being deprecated.
         Instead of providing <code>Normalized</code>, provide <code>Label</code>.</p>
         <p>If you provide <code>Label</code> and do not provide <code>Normalized</code>, then
            <code>Normalized</code> is set automatically as follows.</p>
         <ul>
            <li>
               <p>
                  <code>INFORMATIONAL</code> - 0</p>
            </li>
            <li>
               <p>
                  <code>LOW</code> - 1</p>
            </li>
            <li>
               <p>
                  <code>MEDIUM</code> - 40</p>
            </li>
            <li>
               <p>
                  <code>HIGH</code> - 70</p>
            </li>
            <li>
               <p>
                  <code>CRITICAL</code> - 90</p>
            </li>
         </ul>")
  @as("Normalized")
  normalized: option<integer_>,
  @ocaml.doc("<p>The severity value of the finding. The allowed values are the following.</p>
         <ul>
            <li>
               <p>
                  <code>INFORMATIONAL</code> - No issue was found.</p>
            </li>
            <li>
               <p>
                  <code>LOW</code> - The issue does not require action on its own.</p>
            </li>
            <li>
               <p>
                  <code>MEDIUM</code> - The issue must be addressed but not urgently.</p>
            </li>
            <li>
               <p>
                  <code>HIGH</code> - The issue must be addressed as a priority.</p>
            </li>
            <li>
               <p>
                  <code>CRITICAL</code> - The issue must be remediated immediately to avoid it
               escalating.</p>
            </li>
         </ul>
         <p>If you provide <code>Normalized</code> and do not provide <code>Label</code>, then
            <code>Label</code> is set automatically as follows. </p>
         <ul>
            <li>
               <p>0 - <code>INFORMATIONAL</code>
               </p>
            </li>
            <li>
               <p>1–39 - <code>LOW</code>
               </p>
            </li>
            <li>
               <p>40–69 - <code>MEDIUM</code>
               </p>
            </li>
            <li>
               <p>70–89 - <code>HIGH</code>
               </p>
            </li>
            <li>
               <p>90–100 - <code>CRITICAL</code>
               </p>
            </li>
         </ul>")
  @as("Label")
  label: option<severityLabel>,
  @ocaml.doc("<p>Deprecated. This attribute is being deprecated. Instead of providing
            <code>Product</code>, provide <code>Original</code>.</p>
         <p>The native severity as defined by the AWS service or integrated partner product that
         generated the finding.</p>")
  @as("Product")
  product: option<double>,
}
type securityGroups = array<nonEmptyString>
@ocaml.doc("<p>Details about the account that was not processed.</p>")
type result = {
  @ocaml.doc("<p>The reason that the account was not processed.</p>") @as("ProcessingResult")
  processingResult: option<nonEmptyString>,
  @ocaml.doc("<p>An AWS account ID of the account that was not processed.</p>") @as("AccountId")
  accountId: option<accountId>,
}
type relatedRequirementsList = array<nonEmptyString>
@ocaml.doc("<p>Details about a related finding.</p>")
type relatedFinding = {
  @ocaml.doc("<p>The product-generated identifier for a related finding.</p>") @as("Id")
  id: nonEmptyString,
  @ocaml.doc("<p>The ARN of the product that generated a related finding.</p>") @as("ProductArn")
  productArn: nonEmptyString,
}
@ocaml.doc(
  "<p>An occurrence of sensitive data in an Apache Avro object container or an Apache Parquet file.</p>"
)
type record = {
  @ocaml.doc("<p>The record index, starting from 0, for the record that contains the data.</p>")
  @as("RecordIndex")
  recordIndex: option<long>,
  @ocaml.doc(
    "<p>The path, as a JSONPath expression, to the field in the record that contains the data. If the field name is longer than 20 characters, it is truncated. If the path is longer than 250 characters, it is truncated.</p>"
  )
  @as("JsonPath")
  jsonPath: option<nonEmptyString>,
}
@ocaml.doc("<p>A recommendation on how to remediate the issue identified in a finding.</p>")
type recommendation = {
  @ocaml.doc(
    "<p>A URL to a page or site that contains information about how to remediate a finding.</p>"
  )
  @as("Url")
  url: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Describes the recommended steps to take to remediate an issue identified in a finding.</p>"
  )
  @as("Text")
  text: option<nonEmptyString>,
}
@ocaml.doc("<p>Identifies where the sensitive data begins and ends.</p>")
type range = {
  @ocaml.doc(
    "<p>In the line where the sensitive data starts, the column within the line where the sensitive data starts.</p>"
  )
  @as("StartColumn")
  startColumn: option<long>,
  @ocaml.doc(
    "<p>The number of lines (for a line range) or characters (for an offset range) from the beginning of the file to the end of the sensitive data.</p>"
  )
  @as("End")
  end: option<long>,
  @ocaml.doc(
    "<p>The number of lines (for a line range) or characters (for an offset range) from the beginning of the file to the end of the sensitive data.</p>"
  )
  @as("Start")
  start: option<long>,
}
type productSubscriptionArnList = array<nonEmptyString>
@ocaml.doc("<p>The details of process-related information about a finding.</p>")
type processDetails = {
  @ocaml.doc("<p>Indicates when the process was terminated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("TerminatedAt")
  terminatedAt: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the process was launched.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LaunchedAt")
  launchedAt: option<nonEmptyString>,
  @ocaml.doc("<p>The parent process ID.</p>") @as("ParentPid") parentPid: option<integer_>,
  @ocaml.doc("<p>The process ID.</p>") @as("Pid") pid: option<integer_>,
  @ocaml.doc("<p>The path to the process executable.</p>") @as("Path") path: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the process.</p>") @as("Name") name: option<nonEmptyString>,
}
@ocaml.doc("<p>A range of ports.</p>")
type portRangeFromTo = {
  @ocaml.doc("<p>The last port in the port range.</p>") @as("To") to: option<integer_>,
  @ocaml.doc("<p>The first port in the port range.</p>") @as("From") from: option<integer_>,
}
@ocaml.doc("<p>A range of ports.</p>")
type portRange = {
  @ocaml.doc("<p>The last port in the port range.</p>") @as("End") end: option<integer_>,
  @ocaml.doc("<p>The first port in the port range.</p>") @as("Begin") begin: option<integer_>,
}
@ocaml.doc("<p>Provides an overview of the patch compliance status for an instance against a selected
         compliance standard.</p>")
type patchSummary = {
  @ocaml.doc("<p>The type of patch operation performed. For Patch Manager, the values are
            <code>SCAN</code> and <code>INSTALL</code>. </p>")
  @as("Operation")
  operation: option<nonEmptyString>,
  @ocaml.doc("<p>The reboot option specified for the instance.</p>") @as("RebootOption")
  rebootOption: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the operation completed.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("OperationEndTime")
  operationEndTime: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the operation started.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("OperationStartTime")
  operationStartTime: option<nonEmptyString>,
  @ocaml.doc("<p>The number of patches that were applied, but that require the instance to be rebooted in
         order to be marked as installed.</p>")
  @as("InstalledPendingReboot")
  installedPendingReboot: option<integer_>,
  @ocaml.doc("<p>The number of patches that are installed but are also on a list of patches that the
         customer rejected.</p>")
  @as("InstalledRejectedCount")
  installedRejectedCount: option<integer_>,
  @ocaml.doc("<p>The number of installed patches that are not part of the compliance standard.</p>")
  @as("InstalledOtherCount")
  installedOtherCount: option<integer_>,
  @ocaml.doc("<p>The number of patches from the compliance standard that failed to install.</p>")
  @as("FailedCount")
  failedCount: option<integer_>,
  @ocaml.doc("<p>The number of patches that are part of the compliance standard but are not installed.
         The count includes patches that failed to install.</p>")
  @as("MissingCount")
  missingCount: option<integer_>,
  @ocaml.doc("<p>The number of patches from the compliance standard that were installed
         successfully.</p>")
  @as("InstalledCount")
  installedCount: option<integer_>,
  @ocaml.doc("<p>The identifier of the compliance standard that was used to determine the patch
         compliance status.</p>")
  @as("Id")
  id: nonEmptyString,
}
@ocaml.doc("<p>A number filter for querying findings.</p>")
type numberFilter = {
  @ocaml.doc("<p>The equal-to condition to be applied to a single field when querying for
         findings.</p>")
  @as("Eq")
  eq: option<double>,
  @ocaml.doc("<p>The less-than-equal condition to be applied to a single field when querying for
         findings. </p>")
  @as("Lte")
  lte: option<double>,
  @ocaml.doc("<p>The greater-than-equal condition to be applied to a single field when querying for
         findings. </p>")
  @as("Gte")
  gte: option<double>,
}
@ocaml.doc("<p>The updated note.</p>")
type noteUpdate = {
  @ocaml.doc("<p>The principal that updated the note.</p>") @as("UpdatedBy")
  updatedBy: nonEmptyString,
  @ocaml.doc("<p>The updated note text.</p>") @as("Text") text: nonEmptyString,
}
@ocaml.doc("<p>A user-defined note added to a finding.</p>")
type note = {
  @ocaml.doc("<p>The timestamp of when the note was updated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("UpdatedAt")
  updatedAt: nonEmptyString,
  @ocaml.doc("<p>The principal that created a note.</p>") @as("UpdatedBy")
  updatedBy: nonEmptyString,
  @ocaml.doc("<p>The text of a note.</p>") @as("Text") text: nonEmptyString,
}
type nonEmptyStringList = array<nonEmptyString>
@ocaml.doc("<p>The details about a member account.</p>")
type member = {
  @ocaml.doc("<p>The timestamp for the date and time when the member account was updated.</p>")
  @as("UpdatedAt")
  updatedAt: option<timestamp_>,
  @ocaml.doc("<p>A timestamp for the date and time when the invitation was sent to the member
         account.</p>")
  @as("InvitedAt")
  invitedAt: option<timestamp_>,
  @ocaml.doc("<p>The status of the relationship between the member account and its administrator account.
      </p>
         <p>The status can have one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>CREATED</code> - Indicates that the administrator account added the member account,
               but has not yet invited the member account.</p>
            </li>
            <li>
               <p>
                  <code>INVITED</code> - Indicates that the administrator account invited the member
               account. The member account has not yet responded to the invitation.</p>
            </li>
            <li>
               <p>
                  <code>ENABLED</code> - Indicates that the member account is currently active. For
               manually invited member accounts, indicates that the member account accepted the
               invitation.</p>
            </li>
            <li>
               <p>
                  <code>REMOVED</code> - Indicates that the administrator account disassociated the member
               account.</p>
            </li>
            <li>
               <p>
                  <code>RESIGNED</code> - Indicates that the member account disassociated themselves
               from the administrator account.</p>
            </li>
            <li>
               <p>
                  <code>DELETED</code> - Indicates that the administrator account deleted the member
               account.</p>
            </li>
         </ul>")
  @as("MemberStatus")
  memberStatus: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The AWS account ID of the Security Hub administrator account associated with this member account.</p>"
  )
  @as("AdministratorId")
  administratorId: option<nonEmptyString>,
  @ocaml.doc("<p>This is replaced by <code>AdministratorID</code>.</p>
         <p>The AWS account ID of the Security Hub administrator account associated with this member account.</p>")
  @as("MasterId")
  masterId: option<nonEmptyString>,
  @ocaml.doc("<p>The email address of the member account.</p>") @as("Email")
  email: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS account ID of the member account.</p>") @as("AccountId")
  accountId: option<accountId>,
}
@ocaml.doc("<p>A map filter for querying findings. Each map filter provides the field to check, the
         value to look for, and the comparison operator.</p>")
type mapFilter = {
  @ocaml.doc("<p>The condition to apply to the key value when querying for findings with a map
         filter.</p>
         <p>To search for values that exactly match the filter value, use <code>EQUALS</code>. For
         example, for the <code>ResourceTags</code> field, the filter <code>Department EQUALS
            Security</code> matches findings that have the value <code>Security</code> for the tag
            <code>Department</code>.</p>
         <p>To search for values other than the filter value, use <code>NOT_EQUALS</code>. For
         example, for the <code>ResourceTags</code> field, the filter <code>Department NOT_EQUALS
            Finance</code> matches findings that do not have the value <code>Finance</code> for the
         tag <code>Department</code>.</p>
         <p>
            <code>EQUALS</code> filters on the same field are joined by <code>OR</code>. A finding
         matches if it matches any one of those filters.</p>
         <p>
            <code>NOT_EQUALS</code> filters on the same field are joined by <code>AND</code>. A
         finding matches only if it matches all of those filters.</p>
         <p>You cannot have both an <code>EQUALS</code> filter and a <code>NOT_EQUALS</code> filter
         on the same field.</p>")
  @as("Comparison")
  comparison: option<mapFilterComparison>,
  @ocaml.doc("<p>The value for the key in the map filter. Filter values are case sensitive. For example,
         one of the values for a tag called <code>Department</code> might be <code>Security</code>.
         If you provide <code>security</code> as the filter value, then there is no match.</p>")
  @as("Value")
  value: option<nonEmptyString>,
  @ocaml.doc("<p>The key of the map filter. For example, for <code>ResourceTags</code>, <code>Key</code>
         identifies the name of the tag. For <code>UserDefinedFields</code>, <code>Key</code> is the
         name of the field.</p>")
  @as("Key")
  key: option<nonEmptyString>,
}
@ocaml.doc("<p>A list of malware related to a finding.</p>")
type malware = {
  @ocaml.doc("<p>The state of the malware that was observed.</p>") @as("State")
  state: option<malwareState>,
  @ocaml.doc("<p>The file system path of the malware that was observed.</p>") @as("Path")
  path: option<nonEmptyString>,
  @ocaml.doc("<p>The type of the malware that was observed.</p>") @as("Type")
  type_: option<malwareType>,
  @ocaml.doc("<p>The name of the malware that was observed.</p>") @as("Name") name: nonEmptyString,
}
@ocaml.doc("<p>Information about the state of the load balancer.</p>")
type loadBalancerState = {
  @ocaml.doc("<p>A description of the state.</p>") @as("Reason") reason: option<nonEmptyString>,
  @ocaml.doc("<p>The state code. The initial state of the load balancer is provisioning.</p>
         <p>After the load balancer is fully set up and ready to route traffic, its state is
         active.</p>
         <p>If the load balancer could not be set up, its state is failed. </p>")
  @as("Code")
  code: option<nonEmptyString>,
}
@ocaml.doc("<p>A keyword filter for querying findings.</p>")
type keywordFilter = {
  @ocaml.doc("<p>A value for the keyword.</p>") @as("Value") value: option<nonEmptyString>,
}
@ocaml.doc("<p>An IPV6 CIDR block association.</p>")
type ipv6CidrBlockAssociation = {
  @ocaml.doc("<p>Information about the state of the CIDR block.</p>") @as("CidrBlockState")
  cidrBlockState: option<nonEmptyString>,
  @ocaml.doc("<p>The IPv6 CIDR block.</p>") @as("Ipv6CidrBlock")
  ipv6CidrBlock: option<nonEmptyString>,
  @ocaml.doc("<p>The association ID for the IPv6 CIDR block.</p>") @as("AssociationId")
  associationId: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides information about an internet provider.</p>")
type ipOrganizationDetails = {
  @ocaml.doc("<p>The name of the internet provider.</p>") @as("Org") org: option<nonEmptyString>,
  @ocaml.doc("<p>The ISP information for the internet provider.</p>") @as("Isp")
  isp: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the organization that registered the ASN.</p>") @as("AsnOrg")
  asnOrg: option<nonEmptyString>,
  @ocaml.doc("<p>The Autonomous System Number (ASN) of the internet provider</p>") @as("Asn")
  asn: option<integer_>,
}
@ocaml.doc("<p>The IP filter for querying findings.</p>")
type ipFilter = {
  @ocaml.doc("<p>A finding's CIDR value.</p>") @as("Cidr") cidr: option<nonEmptyString>,
}
@ocaml.doc("<p>Details about an invitation.</p>")
type invitation = {
  @ocaml.doc(
    "<p>The current status of the association between the member and administrator accounts.</p>"
  )
  @as("MemberStatus")
  memberStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The timestamp of when the invitation was sent.</p>") @as("InvitedAt")
  invitedAt: option<timestamp_>,
  @ocaml.doc("<p>The ID of the invitation sent to the member account.</p>") @as("InvitationId")
  invitationId: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The account ID of the Security Hub administrator account that the invitation was sent from.</p>"
  )
  @as("AccountId")
  accountId: option<accountId>,
}
type integrationTypeList = array<integrationType>
@ocaml.doc("<p>The insight result values returned by the <code>GetInsightResults</code>
         operation.</p>")
type insightResultValue = {
  @ocaml.doc("<p>The number of findings returned for each <code>GroupByAttributeValue</code>.</p>")
  @as("Count")
  count: integer_,
  @ocaml.doc("<p>The value of the attribute that the findings are grouped by for the insight whose
         results are returned by the <code>GetInsightResults</code> operation.</p>")
  @as("GroupByAttributeValue")
  groupByAttributeValue: nonEmptyString,
}
@ocaml.doc("<p>The list of the findings that cannot be imported. For each finding, the list provides
         the error.</p>")
type importFindingsError = {
  @ocaml.doc("<p>The message of the error returned by the <code>BatchImportFindings</code>
         operation.</p>")
  @as("ErrorMessage")
  errorMessage: nonEmptyString,
  @ocaml.doc(
    "<p>The code of the error returned by the <code>BatchImportFindings</code> operation.</p>"
  )
  @as("ErrorCode")
  errorCode: nonEmptyString,
  @ocaml.doc("<p>The identifier of the finding that could not be updated.</p>") @as("Id")
  id: nonEmptyString,
}
@ocaml.doc("<p>An Internet Control Message Protocol (ICMP) type and code.</p>")
type icmpTypeCode = {
  @ocaml.doc(
    "<p>The ICMP type for which to deny or allow access. To deny or allow all types, use the value -1.</p>"
  )
  @as("Type")
  type_: option<integer_>,
  @ocaml.doc(
    "<p>The ICMP code for which to deny or allow access. To deny or allow all codes, use the value -1.</p>"
  )
  @as("Code")
  code: option<integer_>,
}
@ocaml.doc("<p>Provides the latitude and longitude coordinates of a location.</p>")
type geoLocation = {
  @ocaml.doc("<p>The latitude of the location.</p>") @as("Lat") lat: option<double>,
  @ocaml.doc("<p>The longitude of the location.</p>") @as("Lon") lon: option<double>,
}
@ocaml.doc("<p>The severity assigned to the finding by the finding provider.</p>")
type findingProviderSeverity = {
  @ocaml.doc("<p>The finding provider's original value for the severity.</p>") @as("Original")
  original: option<nonEmptyString>,
  @ocaml.doc("<p>The severity label assigned to the finding by the finding provider.</p>")
  @as("Label")
  label: option<severityLabel>,
}
type fieldMap = Js.Dict.t<nonEmptyString>
@ocaml.doc("<p>Provided if <code>ActionType</code> is <code>DNS_REQUEST</code>. It provides details
         about the DNS request that was detected.</p>")
type dnsRequestAction = {
  @ocaml.doc("<p>Indicates whether the DNS request was blocked.</p>") @as("Blocked")
  blocked: option<boolean_>,
  @ocaml.doc("<p>The protocol that was used for the DNS request.</p>") @as("Protocol")
  protocol: option<nonEmptyString>,
  @ocaml.doc("<p>The DNS domain that is associated with the DNS request.</p>") @as("Domain")
  domain: option<nonEmptyString>,
}
@ocaml.doc("<p>A date range for the date filter.</p>")
type dateRange = {
  @ocaml.doc("<p>A date range unit for the date filter.</p>") @as("Unit")
  unit_: option<dateRangeUnit>,
  @ocaml.doc("<p>A date range value for the date filter.</p>") @as("Value") value: option<integer_>,
}
@ocaml.doc("<p>CVSS scores from the advisory related to the vulnerability.</p>")
type cvss = {
  @ocaml.doc("<p>The base scoring vector for the CVSS score.</p>") @as("BaseVector")
  baseVector: option<nonEmptyString>,
  @ocaml.doc("<p>The base CVSS score.</p>") @as("BaseScore") baseScore: option<double>,
  @ocaml.doc("<p>The version of CVSS for the CVSS score.</p>") @as("Version")
  version: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a country.</p>")
type country = {
  @ocaml.doc("<p>The name of the country.</p>") @as("CountryName")
  countryName: option<nonEmptyString>,
  @ocaml.doc("<p>The 2-letter ISO 3166 country code for the country.</p>") @as("CountryCode")
  countryCode: option<nonEmptyString>,
}
@ocaml.doc("<p>Container details related to a finding.</p>")
type containerDetails = {
  @ocaml.doc("<p>Indicates when the container started.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LaunchedAt")
  launchedAt: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the image related to a finding.</p>") @as("ImageName")
  imageName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the image related to a finding.</p>") @as("ImageId")
  imageId: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the container related to a finding.</p>") @as("Name")
  name: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides details about the current status of the sensitive data detection.</p>")
type classificationStatus = {
  @ocaml.doc("<p>A longer description of the current status of the sensitive data detection.</p>")
  @as("Reason")
  reason: option<nonEmptyString>,
  @ocaml.doc("<p>The code that represents the status of the sensitive data detection.</p>")
  @as("Code")
  code: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a city.</p>")
type city = {
  @ocaml.doc("<p>The name of the city.</p>") @as("CityName") cityName: option<nonEmptyString>,
}
@ocaml.doc("<p>An IPv4 CIDR block association.</p>")
type cidrBlockAssociation = {
  @ocaml.doc("<p>Information about the state of the IPv4 CIDR block.</p>") @as("CidrBlockState")
  cidrBlockState: option<nonEmptyString>,
  @ocaml.doc("<p>The IPv4 CIDR block.</p>") @as("CidrBlock") cidrBlock: option<nonEmptyString>,
  @ocaml.doc("<p>The association ID for the IPv4 CIDR block.</p>") @as("AssociationId")
  associationId: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>An occurrence of sensitive data detected in a Microsoft Excel workbook, comma-separated value (CSV) file, or tab-separated value (TSV) file.</p>"
)
type cell = {
  @ocaml.doc(
    "<p>For a Microsoft Excel workbook, provides the location of the cell, as an absolute cell reference, that contains the data. For example, Sheet2!C5 for cell C5 on Sheet2.</p>"
  )
  @as("CellReference")
  cellReference: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the column that contains the data.</p>") @as("ColumnName")
  columnName: option<nonEmptyString>,
  @ocaml.doc("<p>The row number of the row that contains the data.</p>") @as("Row")
  row: option<long>,
  @ocaml.doc(
    "<p>The column number of the column that contains the data. For a Microsoft Excel workbook, the column number corresponds to the alphabetical column identifiers. For example, a value of 1 for Column corresponds to the A column in the workbook.</p>"
  )
  @as("Column")
  column: option<long>,
}
type categoryList = array<nonEmptyString>
@ocaml.doc("<p>Provides the details about the compliance status for a patch.</p>")
type awsSsmComplianceSummary = {
  @ocaml.doc("<p>The identifier of the patch group for which compliance was determined. A patch group
         uses tags to group EC2 instances that should have the same patch compliance.</p>")
  @as("PatchGroup")
  patchGroup: option<nonEmptyString>,
  @ocaml.doc("<p>For the patches that are noncompliant, the number that have a severity of
            <code>UNSPECIFIED</code>.</p>")
  @as("NonCompliantUnspecifiedCount")
  nonCompliantUnspecifiedCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are noncompliant, the number that have a severity of
            <code>MEDIUM</code>.</p>")
  @as("NonCompliantMediumCount")
  nonCompliantMediumCount: option<integer_>,
  @ocaml.doc("<p>The highest severity for the patches.</p>") @as("OverallSeverity")
  overallSeverity: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the patch baseline. The patch baseline lists the patches that are
         approved for installation.</p>")
  @as("PatchBaselineId")
  patchBaselineId: option<nonEmptyString>,
  @ocaml.doc("<p>The type of resource for which the compliance was determined. For
            <code>AwsSsmPatchCompliance</code>, <code>ComplianceType</code> is <code>Patch</code>. </p>")
  @as("ComplianceType")
  complianceType: option<nonEmptyString>,
  @ocaml.doc("<p>For the patches that are compliant, the number that have a severity of
         <code>LOW</code>.</p>")
  @as("CompliantLowCount")
  compliantLowCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are noncompliant, the number that have a severity of
            <code>HIGH</code>.</p>")
  @as("NonCompliantHighCount")
  nonCompliantHighCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are noncompliant, the number that have a severity of
            <code>LOW</code>.</p>")
  @as("NonCompliantLowCount")
  nonCompliantLowCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are compliant, the number that have a severity of
            <code>UNSPECIFIED</code>.</p>")
  @as("CompliantUnspecifiedCount")
  compliantUnspecifiedCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are noncompliant, the number that have a severity of
            <code>INFORMATIONAL</code>.</p>")
  @as("NonCompliantInformationalCount")
  nonCompliantInformationalCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are compliant, the number that have a severity of
            <code>INFORMATIONAL</code>.</p>")
  @as("CompliantInformationalCount")
  compliantInformationalCount: option<integer_>,
  @ocaml.doc("<p>For the patch items that are noncompliant, the number of items that have a severity of
            <code>CRITICAL</code>.</p>")
  @as("NonCompliantCriticalCount")
  nonCompliantCriticalCount: option<integer_>,
  @ocaml.doc("<p>The type of execution that was used determine compliance.</p>")
  @as("ExecutionType")
  executionType: option<nonEmptyString>,
  @ocaml.doc("<p>For the patches that are compliant, the number that have a severity of
            <code>MEDIUM</code>.</p>")
  @as("CompliantMediumCount")
  compliantMediumCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are compliant, the number that have a severity of
         <code>HIGH</code>.</p>")
  @as("CompliantHighCount")
  compliantHighCount: option<integer_>,
  @ocaml.doc("<p>For the patches that are compliant, the number that have a severity of
            <code>CRITICAL</code>.</p>")
  @as("CompliantCriticalCount")
  compliantCriticalCount: option<integer_>,
  @ocaml.doc("<p>The current patch compliance status.</p>
         <p>The possible status values are:</p>
         <ul>
            <li>
               <p>
                  <code>COMPLIANT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NON_COMPLIANT</code>
               </p>
            </li>
            <li>
               <p>
                  <code>UNSPECIFIED_DATA</code>
               </p>
            </li>
         </ul>")
  @as("Status")
  status: option<nonEmptyString>,
}
@ocaml.doc("<p>Data about a queue.</p>")
type awsSqsQueueDetails = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the dead-letter queue to which Amazon SQS moves
         messages after the value of <code>maxReceiveCount</code> is exceeded. </p>")
  @as("DeadLetterTargetArn")
  deadLetterTargetArn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the new queue.</p>") @as("QueueName")
  queueName: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of an AWS managed customer master key (CMK) for Amazon SQS or a custom
         CMK.</p>")
  @as("KmsMasterKeyId")
  kmsMasterKeyId: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again.</p>"
  )
  @as("KmsDataKeyReusePeriodSeconds")
  kmsDataKeyReusePeriodSeconds: option<integer_>,
}
@ocaml.doc("<p>A wrapper type for the attributes of an Amazon SNS subscription.</p>")
type awsSnsTopicSubscription = {
  @ocaml.doc("<p>The subscription's protocol.</p>") @as("Protocol")
  protocol: option<nonEmptyString>,
  @ocaml.doc("<p>The subscription's endpoint (format depends on the protocol).</p>") @as("Endpoint")
  endpoint: option<nonEmptyString>,
}
@ocaml.doc("<p>Identifies a finding to update using <code>BatchUpdateFindings</code>.</p>")
type awsSecurityFindingIdentifier = {
  @ocaml.doc("<p>The ARN generated by Security Hub that uniquely identifies a product that generates findings.
         This can be the ARN for a third-party product that is integrated with Security Hub, or the ARN for
         a custom integration.</p>")
  @as("ProductArn")
  productArn: nonEmptyString,
  @ocaml.doc("<p>The identifier of the finding that was specified by the finding provider.</p>")
  @as("Id")
  id: nonEmptyString,
}
@ocaml.doc("<p>Defines the rotation schedule for the secret.</p>")
type awsSecretsManagerSecretRotationRules = {
  @ocaml.doc("<p>The number of days after the previous rotation to rotate the secret.</p>")
  @as("AutomaticallyAfterDays")
  automaticallyAfterDays: option<integer_>,
}
@ocaml.doc("<p>Details about an Amazon S3 object.</p>")
type awsS3ObjectDetails = {
  @ocaml.doc("<p>The identifier of the AWS Key Management Service (AWS KMS) symmetric customer managed
         customer master key (CMK) that was used for the object.</p>")
  @as("SSEKMSKeyId")
  ssekmskeyId: option<nonEmptyString>,
  @ocaml.doc("<p>If the object is stored using server-side encryption, the value of the server-side
         encryption algorithm used when storing this object in Amazon S3.</p>")
  @as("ServerSideEncryption")
  serverSideEncryption: option<nonEmptyString>,
  @ocaml.doc("<p>A standard MIME type describing the format of the object data.</p>")
  @as("ContentType")
  contentType: option<nonEmptyString>,
  @ocaml.doc("<p>The version of the object.</p>") @as("VersionId")
  versionId: option<nonEmptyString>,
  @ocaml.doc("<p>The opaque identifier assigned by a web server to a specific version of a resource found
         at a URL.</p>")
  @as("ETag")
  etag: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the object was last modified.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastModified")
  lastModified: option<nonEmptyString>,
}
@ocaml.doc("<p>Specifies the default server-side encryption to apply to new objects in the
         bucket.</p>")
type awsS3BucketServerSideEncryptionByDefault = {
  @ocaml.doc("<p>AWS KMS customer master key (CMK) ID to use for the default encryption.</p>")
  @as("KMSMasterKeyID")
  kmsmasterKeyID: option<nonEmptyString>,
  @ocaml.doc("<p>Server-side encryption algorithm to use for the default encryption.</p>")
  @as("SSEAlgorithm")
  ssealgorithm: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>provides information about the Amazon S3 Public Access Block configuration for accounts.</p>"
)
type awsS3AccountPublicAccessBlockDetails = {
  @ocaml.doc(
    "<p>Indicates whether to restrict access to an access point or S3 bucket that has a public policy to only AWS service principals and authorized users within the S3 bucket owner's account.</p>"
  )
  @as("RestrictPublicBuckets")
  restrictPublicBuckets: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates whether Amazon S3 ignores public ACLs that are associated with an S3 bucket.</p>"
  )
  @as("IgnorePublicAcls")
  ignorePublicAcls: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates whether to reject calls to update the access policy for an S3 bucket or access point if the policy allows public access.</p>"
  )
  @as("BlockPublicPolicy")
  blockPublicPolicy: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates whether to reject calls to update an S3 bucket if the calls include a public access control list (ACL).</p>"
  )
  @as("BlockPublicAcls")
  blockPublicAcls: option<boolean_>,
}
@ocaml.doc("<p>A VPC security group that the cluster belongs to, if the cluster is in a VPC.</p>")
type awsRedshiftClusterVpcSecurityGroup = {
  @ocaml.doc("<p>The identifier of the VPC security group.</p>") @as("VpcSecurityGroupId")
  vpcSecurityGroupId: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the VPC security group.</p>") @as("Status")
  status: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the status of a cluster restore action. It only applies if the cluster
         was created by restoring a snapshot.</p>")
type awsRedshiftClusterRestoreStatus = {
  @ocaml.doc("<p>The status of the restore action.</p>
         <p>Valid values: <code>starting</code> | <code>restoring</code> | <code>completed</code> |
            <code>failed</code>
         </p>")
  @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The size of the set of snapshot data that was used to restore the cluster.</p>
         <p>This field is only updated when you restore to DC2 and DS2 node types.</p>")
  @as("SnapshotSizeInMegaBytes")
  snapshotSizeInMegaBytes: option<long>,
  @ocaml.doc("<p>The number of megabytes that were transferred from snapshot storage.</p>
         <p>This field is only updated when you restore to DC2 and DS2 node types.</p>")
  @as("ProgressInMegaBytes")
  progressInMegaBytes: option<long>,
  @ocaml.doc("<p>The estimate of the time remaining before the restore is complete. Returns 0 for a
         completed restore.</p>
         <p>This field is only updated when you restore to DC2 and DS2 node types.</p>")
  @as("EstimatedTimeToCompletionInSeconds")
  estimatedTimeToCompletionInSeconds: option<long>,
  @ocaml.doc("<p>The amount of time an in-progress restore has been running, or the amount of time it
         took a completed restore to finish.</p>
         <p>This field is only updated when you restore to DC2 and DS2 node types.</p>")
  @as("ElapsedTimeInSeconds")
  elapsedTimeInSeconds: option<long>,
  @ocaml.doc("<p>The number of megabytes per second being transferred from the backup storage. Returns
         the average rate for a completed backup.</p>
         <p>This field is only updated when you restore to DC2 and DS2 node types.</p>")
  @as("CurrentRestoreRateInMegaBytesPerSecond")
  currentRestoreRateInMegaBytesPerSecond: option<double>,
}
@ocaml.doc("<p>Information about the resize operation for the cluster.</p>")
type awsRedshiftClusterResizeInfo = {
  @ocaml.doc("<p>The type of resize operation.</p>
         <p>Valid values: <code>ClassicResize</code>
         </p>")
  @as("ResizeType")
  resizeType: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether the resize operation can be canceled.</p>")
  @as("AllowCancelResize")
  allowCancelResize: option<boolean_>,
}
@ocaml.doc("<p>Changes to the Amazon Redshift cluster that are currently pending.</p>")
type awsRedshiftClusterPendingModifiedValues = {
  @ocaml.doc("<p>The pending or in-progress change to whether the cluster can be connected to from the
         public network.</p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>The pending or in-progress change to the number of nodes in the cluster.</p>")
  @as("NumberOfNodes")
  numberOfNodes: option<integer_>,
  @ocaml.doc("<p>The pending or in-progress change to the cluster's node type.</p>") @as("NodeType")
  nodeType: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The pending or in-progress change to the master user password for the cluster.</p>"
  )
  @as("MasterUserPassword")
  masterUserPassword: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the maintenance track that the cluster changes to during the next
         maintenance window.</p>")
  @as("MaintenanceTrackName")
  maintenanceTrackName: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether to create the cluster with enhanced VPC routing enabled.</p>")
  @as("EnhancedVpcRouting")
  enhancedVpcRouting: option<boolean_>,
  @ocaml.doc("<p>The encryption type for a cluster.</p>") @as("EncryptionType")
  encryptionType: option<nonEmptyString>,
  @ocaml.doc("<p>The pending or in-progress change to the service version.</p>")
  @as("ClusterVersion")
  clusterVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The pending or in-progress change to the cluster type.</p>") @as("ClusterType")
  clusterType: option<nonEmptyString>,
  @ocaml.doc("<p>The pending or in-progress change to the identifier for the cluster.</p>")
  @as("ClusterIdentifier")
  clusterIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The pending or in-progress change to the automated snapshot retention period.</p>")
  @as("AutomatedSnapshotRetentionPeriod")
  automatedSnapshotRetentionPeriod: option<integer_>,
}
@ocaml.doc("<p>An IAM role that the cluster can use to access other AWS services.</p>")
type awsRedshiftClusterIamRole = {
  @ocaml.doc("<p>The ARN of the IAM role.</p>") @as("IamRoleArn")
  iamRoleArn: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the IAM role's association with the cluster.</p>
         <p>Valid values: <code>in-sync</code> | <code>adding</code> | <code>removing</code>
         </p>")
  @as("ApplyStatus")
  applyStatus: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about whether an Amazon Redshift cluster finished applying any hardware
         changes to security module (HSM) settings that were specified in a modify cluster
         command.</p>")
type awsRedshiftClusterHsmStatus = {
  @ocaml.doc("<p>Indicates whether the Amazon Redshift cluster has finished applying any HSM settings
         changes specified in a modify cluster command.</p>
         <p>Type: String</p>
         <p>Valid values: <code>active</code> | <code>applying</code>
         </p>")
  @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the HSM configuration that contains the information that the Amazon Redshift
         cluster can use to retrieve and store keys in an HSM.</p>")
  @as("HsmConfigurationIdentifier")
  hsmConfigurationIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the HSM client certificate that the Amazon Redshift cluster uses to retrieve
         the data encryption keys that are stored in an HSM.</p>")
  @as("HsmClientCertificateIdentifier")
  hsmClientCertificateIdentifier: option<nonEmptyString>,
}
@ocaml.doc("<p>The connection endpoint for an Amazon Redshift cluster.</p>")
type awsRedshiftClusterEndpoint = {
  @ocaml.doc("<p>The port that the database engine listens on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The DNS address of the cluster.</p>") @as("Address")
  address: option<nonEmptyString>,
}
@ocaml.doc("<p>The status of the elastic IP (EIP) address for an Amazon Redshift cluster.</p>")
type awsRedshiftClusterElasticIpStatus = {
  @ocaml.doc("<p>The status of the elastic IP address.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The elastic IP address for the cluster.</p>") @as("ElasticIp")
  elasticIp: option<nonEmptyString>,
}
@ocaml.doc("<p>A time windows during which maintenance was deferred for an Amazon Redshift
         cluster.</p>")
type awsRedshiftClusterDeferredMaintenanceWindow = {
  @ocaml.doc("<p>The start of the time window for which maintenance was deferred.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("DeferMaintenanceStartTime")
  deferMaintenanceStartTime: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the maintenance window.</p>") @as("DeferMaintenanceIdentifier")
  deferMaintenanceIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The end of the time window for which maintenance was deferred.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("DeferMaintenanceEndTime")
  deferMaintenanceEndTime: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a cross-Region snapshot copy.</p>")
type awsRedshiftClusterClusterSnapshotCopyStatus = {
  @ocaml.doc("<p>The name of the snapshot copy grant.</p>") @as("SnapshotCopyGrantName")
  snapshotCopyGrantName: option<nonEmptyString>,
  @ocaml.doc("<p>The number of days to retain automated snapshots in the destination Region after they
         are copied from a source Region.</p>")
  @as("RetentionPeriod")
  retentionPeriod: option<integer_>,
  @ocaml.doc("<p>The number of days that manual snapshots are retained in the destination region after
         they are copied from a source region.</p>
         <p>If the value is -1, then the manual snapshot is retained indefinitely.</p>
         <p>Valid values: Either -1 or an integer between 1 and 3,653</p>")
  @as("ManualSnapshotRetentionPeriod")
  manualSnapshotRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>The destination Region that snapshots are automatically copied to when cross-Region
         snapshot copy is enabled.</p>")
  @as("DestinationRegion")
  destinationRegion: option<nonEmptyString>,
}
@ocaml.doc("<p>A security group that is associated with the cluster.</p>")
type awsRedshiftClusterClusterSecurityGroup = {
  @ocaml.doc("<p>The status of the cluster security group.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the cluster security group.</p>") @as("ClusterSecurityGroupName")
  clusterSecurityGroupName: option<nonEmptyString>,
}
@ocaml.doc("<p>The status of a parameter in a cluster parameter group for an Amazon Redshift
         cluster.</p>")
type awsRedshiftClusterClusterParameterStatus = {
  @ocaml.doc("<p>The error that prevented the parameter from being applied to the database.</p>")
  @as("ParameterApplyErrorDescription")
  parameterApplyErrorDescription: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the parameter. Indicates whether the parameter is in sync with the
         database, waiting for a cluster reboot, or encountered an error when it was applied.</p>
         <p>Valid values: <code>in-sync</code> | <code>pending-reboot</code> | <code>applying</code>
         | <code>invalid-parameter</code> | <code>apply-deferred</code> | <code>apply-error</code> |
            <code>unknown-error</code>
         </p>")
  @as("ParameterApplyStatus")
  parameterApplyStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the parameter.</p>") @as("ParameterName")
  parameterName: option<nonEmptyString>,
}
@ocaml.doc("<p>A node in an Amazon Redshift cluster.</p>")
type awsRedshiftClusterClusterNode = {
  @ocaml.doc("<p>The public IP address of the node.</p>") @as("PublicIpAddress")
  publicIpAddress: option<nonEmptyString>,
  @ocaml.doc("<p>The private IP address of the node.</p>") @as("PrivateIpAddress")
  privateIpAddress: option<nonEmptyString>,
  @ocaml.doc("<p>The role of the node. A node might be a leader node or a compute node.</p>")
  @as("NodeRole")
  nodeRole: option<nonEmptyString>,
}
@ocaml.doc("<p>An Availability Zone for a subnet in a subnet group.</p>")
type awsRdsDbSubnetGroupSubnetAvailabilityZone = {
  @ocaml.doc("<p>The name of the Availability Zone for a subnet in the subnet group.</p>")
  @as("Name")
  name: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the status of a read replica.</p>")
type awsRdsDbStatusInfo = {
  @ocaml.doc(
    "<p>If the read replica is currently in an error state, provides the error details.</p>"
  )
  @as("Message")
  message: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the read replica instance.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the read replica instance is operating normally.</p>") @as("Normal")
  normal: option<boolean_>,
  @ocaml.doc("<p>The type of status. For a read replica, the status type is read replication.</p>")
  @as("StatusType")
  statusType: option<nonEmptyString>,
}
@ocaml.doc("<p>A processor feature.</p>")
type awsRdsDbProcessorFeature = {
  @ocaml.doc("<p>The value of the processor feature.</p>") @as("Value")
  value: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the processor feature.</p>") @as("Name") name: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides information about a parameter group for a DB instance.</p>")
type awsRdsDbParameterGroup = {
  @ocaml.doc("<p>The status of parameter updates.</p>") @as("ParameterApplyStatus")
  parameterApplyStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the parameter group.</p>") @as("DbParameterGroupName")
  dbParameterGroupName: option<nonEmptyString>,
}
@ocaml.doc("<p>An option group membership.</p>")
type awsRdsDbOptionGroupMembership = {
  @ocaml.doc("<p>The status of the option group membership.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the option group.</p>") @as("OptionGroupName")
  optionGroupName: option<nonEmptyString>,
}
@ocaml.doc("<p>A VPC security groups that the DB instance belongs to.</p>")
type awsRdsDbInstanceVpcSecurityGroup = {
  @ocaml.doc("<p>The status of the VPC security group.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the VPC security group.</p>") @as("VpcSecurityGroupId")
  vpcSecurityGroupId: option<nonEmptyString>,
}
@ocaml.doc("<p>Specifies the connection endpoint.</p>")
type awsRdsDbInstanceEndpoint = {
  @ocaml.doc("<p>Specifies the ID that Amazon Route 53 assigns when you create a hosted zone.</p>")
  @as("HostedZoneId")
  hostedZoneId: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies the port that the database engine is listening on.</p>") @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>Specifies the DNS address of the DB instance.</p>") @as("Address")
  address: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>An AWS Identity and Access Management (IAM) role associated with the DB instance.</p>"
)
type awsRdsDbInstanceAssociatedRole = {
  @ocaml.doc("<p>Describes the state of the association between the IAM role and the DB instance. The
            <code>Status</code> property returns one of the following values:</p>
         <ul>
            <li>
               <p>
                  <code>ACTIVE</code> - The IAM role ARN is associated with the DB instance and can
               be used to access other AWS services on your behalf.</p>
            </li>
            <li>
               <p>
                  <code>PENDING</code> - The IAM role ARN is being associated with the DB
               instance.</p>
            </li>
            <li>
               <p>
                  <code>INVALID</code> - The IAM role ARN is associated with the DB instance. But
               the DB instance is unable to assume the IAM role in order to access other AWS
               services on your behalf. </p>
            </li>
         </ul>")
  @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the feature associated with the IAM)role.</p>") @as("FeatureName")
  featureName: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the IAM role that is associated with the DB
         instance.</p>")
  @as("RoleArn")
  roleArn: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an Active Directory domain membership record associated with the DB
         instance.</p>")
type awsRdsDbDomainMembership = {
  @ocaml.doc(
    "<p>The name of the IAM role to use when making API calls to the Directory Service.</p>"
  )
  @as("IamRoleName")
  iamRoleName: option<nonEmptyString>,
  @ocaml.doc("<p>The fully qualified domain name of the Active Directory domain.</p>") @as("Fqdn")
  fqdn: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the Active Directory Domain membership for the DB instance.</p>")
  @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the Active Directory domain.</p>") @as("Domain")
  domain: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an option group membership for a DB cluster.</p>")
type awsRdsDbClusterOptionGroupMembership = {
  @ocaml.doc("<p>The status of the DB cluster option group.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the DB cluster option group.</p>") @as("DbClusterOptionGroupName")
  dbClusterOptionGroupName: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an instance in the DB cluster.</p>")
type awsRdsDbClusterMember = {
  @ocaml.doc(
    "<p>The status of the DB cluster parameter group for this member of the DB cluster.</p>"
  )
  @as("DbClusterParameterGroupStatus")
  dbClusterParameterGroupStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The instance identifier for this member of the DB cluster.</p>")
  @as("DbInstanceIdentifier")
  dbInstanceIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies the order in which an Aurora replica is promoted to the primary instance when
         the existing primary instance fails.</p>")
  @as("PromotionTier")
  promotionTier: option<integer_>,
  @ocaml.doc("<p>Whether the cluster member is the primary instance for the DB cluster.</p>")
  @as("IsClusterWriter")
  isClusterWriter: option<boolean_>,
}
@ocaml.doc("<p>An IAM role that is associated with the Amazon RDS DB cluster.</p>")
type awsRdsDbClusterAssociatedRole = {
  @ocaml.doc("<p>The status of the association between the IAM role and the DB cluster.</p>")
  @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the IAM role.</p>") @as("RoleArn") roleArn: option<nonEmptyString>,
}
@ocaml.doc("<p>The function's AWS X-Ray tracing configuration.</p>")
type awsLambdaFunctionTracingConfig = {
  @ocaml.doc("<p>The tracing mode.</p>") @as("Mode") mode: option<nonEmptyString>,
}
@ocaml.doc("<p>An AWS Lambda layer.</p>")
type awsLambdaFunctionLayer = {
  @ocaml.doc("<p>The size of the layer archive in bytes.</p>") @as("CodeSize")
  codeSize: option<integer_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the function layer.</p>") @as("Arn")
  arn: option<nonEmptyString>,
}
@ocaml.doc("<p>Error messages for environment variables that couldn't be applied.</p>")
type awsLambdaFunctionEnvironmentError = {
  @ocaml.doc("<p>The error message.</p>") @as("Message") message: option<nonEmptyString>,
  @ocaml.doc("<p>The error code.</p>") @as("ErrorCode") errorCode: option<nonEmptyString>,
}
@ocaml.doc("<p>The dead-letter queue for failed asynchronous invocations.</p>")
type awsLambdaFunctionDeadLetterConfig = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of an Amazon SQS queue or Amazon SNS topic.</p>")
  @as("TargetArn")
  targetArn: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>The code for the Lambda function. You can specify either an object in Amazon S3, or upload a deployment package directly.</p>"
)
type awsLambdaFunctionCode = {
  @ocaml.doc(
    "<p>The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for you.</p>"
  )
  @as("ZipFile")
  zipFile: option<nonEmptyString>,
  @ocaml.doc("<p>For versioned objects, the version of the deployment package object to use.</p>")
  @as("S3ObjectVersion")
  s3ObjectVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon S3 key of the deployment package.</p>") @as("S3Key")
  s3Key: option<nonEmptyString>,
  @ocaml.doc(
    "<p>An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.</p>"
  )
  @as("S3Bucket")
  s3Bucket: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains metadata about a customer master key (CMK).</p>")
type awsKmsKeyDetails = {
  @ocaml.doc("<p>A description of the key.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The source of the CMK's key material.</p>
         <p>When this value is <code>AWS_KMS</code>, AWS KMS created the key material.</p>
         <p>When this value is <code>EXTERNAL</code>, the key material was imported from your
         existing key management infrastructure or the CMK lacks key material.</p>
         <p>When this value is <code>AWS_CLOUDHSM</code>, the key material was created in the AWS
         CloudHSM cluster associated with a custom key store.</p>")
  @as("Origin")
  origin: option<nonEmptyString>,
  @ocaml.doc("<p>The state of the CMK.</p>") @as("KeyState") keyState: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The manager of the CMK. CMKs in your AWS account are either customer managed or AWS managed.</p>"
  )
  @as("KeyManager")
  keyManager: option<nonEmptyString>,
  @ocaml.doc("<p>The globally unique identifier for the CMK.</p>") @as("KeyId")
  keyId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the CMK was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreationDate")
  creationDate: option<double>,
  @ocaml.doc("<p>The twelve-digit account ID of the AWS account that owns the CMK.</p>")
  @as("AWSAccountId")
  awsaccountId: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an inline policy that is embedded in the user.</p>")
type awsIamUserPolicy = {
  @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: option<nonEmptyString>,
}
@ocaml.doc("<p>An inline policy that is embedded in the role.</p>")
type awsIamRolePolicy = {
  @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: option<nonEmptyString>,
}
@ocaml.doc("<p>A version of an IAM policy.</p>")
type awsIamPolicyVersion = {
  @ocaml.doc("<p>Indicates when the version was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateDate")
  createDate: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the version is the default version.</p>") @as("IsDefaultVersion")
  isDefaultVersion: option<boolean_>,
  @ocaml.doc("<p>The identifier of the policy version.</p>") @as("VersionId")
  versionId: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the policy used to set the permissions boundary for an IAM
         principal.</p>")
type awsIamPermissionsBoundary = {
  @ocaml.doc("<p>The usage type for the permissions boundary.</p>") @as("PermissionsBoundaryType")
  permissionsBoundaryType: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the policy used to set the permissions boundary.</p>")
  @as("PermissionsBoundaryArn")
  permissionsBoundaryArn: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a role associated with an instance profile.</p>")
type awsIamInstanceProfileRole = {
  @ocaml.doc("<p>The name of the role.</p>") @as("RoleName") roleName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the role.</p>") @as("RoleId") roleId: option<nonEmptyString>,
  @ocaml.doc("<p>The path to the role.</p>") @as("Path") path: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the role was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateDate")
  createDate: option<nonEmptyString>,
  @ocaml.doc("<p>The policy that grants an entity permission to assume the role.</p>")
  @as("AssumeRolePolicyDocument")
  assumeRolePolicyDocument: option<awsIamRoleAssumeRolePolicyDocument>,
  @ocaml.doc("<p>The ARN of the role.</p>") @as("Arn") arn: option<nonEmptyString>,
}
@ocaml.doc("<p>A managed policy that is attached to the IAM group.</p>")
type awsIamGroupPolicy = {
  @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: option<nonEmptyString>,
}
@ocaml.doc("<p>A managed policy that is attached to an IAM principal.</p>")
type awsIamAttachedManagedPolicy = {
  @ocaml.doc("<p>The ARN of the policy.</p>") @as("PolicyArn") policyArn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the entity that created the session.</p>")
type awsIamAccessKeySessionContextSessionIssuer = {
  @ocaml.doc("<p>The name of the principal that created the session.</p>") @as("UserName")
  userName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the AWS account that created the session.</p>") @as("AccountId")
  accountId: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the session.</p>") @as("Arn") arn: option<nonEmptyString>,
  @ocaml.doc("<p>The principal ID of the principal (user, role, or group) that created the
         session.</p>")
  @as("PrincipalId")
  principalId: option<nonEmptyString>,
  @ocaml.doc("<p>The type of principal (user, role, or group) that created the session.</p>")
  @as("Type")
  type_: option<nonEmptyString>,
}
@ocaml.doc("<p>Attributes of the session that the key was used for.</p>")
type awsIamAccessKeySessionContextAttributes = {
  @ocaml.doc("<p>Indicates when the session was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreationDate")
  creationDate: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether the session used multi-factor authentication (MFA).</p>")
  @as("MfaAuthenticated")
  mfaAuthenticated: option<boolean_>,
}
@ocaml.doc("<p>Contains information about the security group for the load balancer.</p>")
type awsElbLoadBalancerSourceSecurityGroup = {
  @ocaml.doc("<p>The owner of the security group.</p>") @as("OwnerAlias")
  ownerAlias: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the security group.</p>") @as("GroupName")
  groupName: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a load balancer listener.</p>")
type awsElbLoadBalancerListener = {
  @ocaml.doc("<p>The ARN of the server certificate.</p>") @as("SslCertificateId")
  sslCertificateId: option<nonEmptyString>,
  @ocaml.doc("<p>The load balancer transport protocol to use for routing.</p>
         <p>Valid values: <code>HTTP</code> | <code>HTTPS</code> | <code>TCP</code> |
            <code>SSL</code>
         </p>")
  @as("Protocol")
  protocol: option<nonEmptyString>,
  @ocaml.doc("<p>The port on which the load balancer is listening.</p>
         <p>On EC2-VPC, you can specify any port from the range 1-65535.</p>
         <p>On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587,
         1024-65535.</p>")
  @as("LoadBalancerPort")
  loadBalancerPort: option<integer_>,
  @ocaml.doc("<p>The protocol to use to route traffic to instances.</p>
         <p>Valid values: <code>HTTP</code> | <code>HTTPS</code> | <code>TCP</code> |
            <code>SSL</code>
         </p>")
  @as("InstanceProtocol")
  instanceProtocol: option<nonEmptyString>,
  @ocaml.doc("<p>The port on which the instance is listening.</p>") @as("InstancePort")
  instancePort: option<integer_>,
}
@ocaml.doc("<p>Provides information about an EC2 instance for a load balancer.</p>")
type awsElbLoadBalancerInstance = {
  @ocaml.doc("<p>The instance identifier.</p>") @as("InstanceId")
  instanceId: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about the health checks that are conducted on the load
         balancer.</p>")
type awsElbLoadBalancerHealthCheck = {
  @ocaml.doc("<p>The number of consecutive health check failures that must occur before the instance is
         moved to the Unhealthy state.</p>")
  @as("UnhealthyThreshold")
  unhealthyThreshold: option<integer_>,
  @ocaml.doc("<p>The amount of time, in seconds, during which no response means a failed health
         check.</p>")
  @as("Timeout")
  timeout: option<integer_>,
  @ocaml.doc("<p>The instance that is being checked. The target specifies the protocol and port. The
         available protocols are TCP, SSL, HTTP, and HTTPS. The range of valid ports is 1 through
         65535.</p>
         <p>For the HTTP and HTTPS protocols, the target also specifies the ping path.</p>
         <p>For the TCP protocol, the target is specified as <code>TCP:
               <i><port></i>
            </code>.</p>
         <p>For the SSL protocol, the target is specified as
               <code>SSL.<i><port></i>
            </code>.</p>
         <p>For the HTTP and HTTPS protocols, the target is specified as
               <code>
               <i><protocol></i>:<i><port></i>/<i><path
               to ping></i>
            </code>.</p>")
  @as("Target")
  target: option<nonEmptyString>,
  @ocaml.doc("<p>The approximate interval, in seconds, between health checks of an individual
         instance.</p>")
  @as("Interval")
  interval: option<integer_>,
  @ocaml.doc("<p>The number of consecutive health check successes required before the instance is moved
         to the Healthy state.</p>")
  @as("HealthyThreshold")
  healthyThreshold: option<integer_>,
}
@ocaml.doc("<p>Contains cross-zone load balancing settings for the load balancer.</p>")
type awsElbLoadBalancerCrossZoneLoadBalancing = {
  @ocaml.doc("<p>Indicates whether cross-zone load balancing is enabled for the load balancer.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>Contains connection settings for the load balancer.</p>")
type awsElbLoadBalancerConnectionSettings = {
  @ocaml.doc("<p>The time, in seconds, that the connection can be idle (no data is sent over the
         connection) before it is closed by the load balancer.</p>")
  @as("IdleTimeout")
  idleTimeout: option<integer_>,
}
@ocaml.doc("<p>Contains information about the connection draining configuration for the load
         balancer.</p>")
type awsElbLoadBalancerConnectionDraining = {
  @ocaml.doc("<p>The maximum time, in seconds, to keep the existing connections open before deregistering
         the instances.</p>")
  @as("Timeout")
  timeout: option<integer_>,
  @ocaml.doc("<p>Indicates whether connection draining is enabled for the load balancer.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>Contains information about the access log configuration for the load balancer.</p>")
type awsElbLoadBalancerAccessLog = {
  @ocaml.doc("<p>The logical hierarchy that was created for the S3 bucket.</p>
         <p>If a prefix is not provided, the log is placed at the root level of the bucket.</p>")
  @as("S3BucketPrefix")
  s3BucketPrefix: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the S3 bucket where the access logs are stored.</p>")
  @as("S3BucketName")
  s3BucketName: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether access logs are enabled for the load balancer.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>The interval in minutes for publishing the access logs.</p>
         <p>You can publish access logs either every 5 minutes or every 60 minutes.</p>")
  @as("EmitInterval")
  emitInterval: option<integer_>,
}
@ocaml.doc("<p>Contains information about a stickiness policy that was created using
            <code>CreateLBCookieStickinessPolicy</code>.</p>")
type awsElbLbCookieStickinessPolicy = {
  @ocaml.doc("<p>The name of the policy. The name must be unique within the set of policies for the load
         balancer.</p>")
  @as("PolicyName")
  policyName: option<nonEmptyString>,
  @ocaml.doc("<p>The amount of time, in seconds, after which the cookie is considered stale. If an
         expiration period is not specified, the stickiness session lasts for the duration of the
         browser session.</p>")
  @as("CookieExpirationPeriod")
  cookieExpirationPeriod: option<long>,
}
@ocaml.doc("<p>Contains information about a stickiness policy that was created using
            <code>CreateAppCookieStickinessPolicy</code>.</p>")
type awsElbAppCookieStickinessPolicy = {
  @ocaml.doc("<p>The mnemonic name for the policy being created. The name must be unique within the set
         of policies for the load balancer.</p>")
  @as("PolicyName")
  policyName: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the application cookie used for stickiness.</p>") @as("CookieName")
  cookieName: option<nonEmptyString>,
}
@ocaml.doc("<p>Details about the configuration for node-to-node encryption.</p>")
type awsElasticsearchDomainNodeToNodeEncryptionOptions = {
  @ocaml.doc("<p>Whether node-to-node encryption is enabled.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>Details about the configuration for encryption at rest.</p>")
type awsElasticsearchDomainEncryptionAtRestOptions = {
  @ocaml.doc("<p>The KMS key ID. Takes the form 1a2a3a4-1a2a-3a4a-5a6a-1a2a3a4a5a6a.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether encryption at rest is enabled.</p>") @as("Enabled")
  enabled: option<boolean_>,
}
@ocaml.doc("<p>Additional options for the domain endpoint, such as whether to require HTTPS for all
         traffic.</p>")
type awsElasticsearchDomainDomainEndpointOptions = {
  @ocaml.doc("<p>The TLS security policy to apply to the HTTPS endpoint of the Elasticsearch
         domain.</p>
         <p>Valid values:</p>
         <ul>
            <li>
               <p>
                  <code>Policy-Min-TLS-1-0-2019-07</code>, which supports TLSv1.0 and higher</p>
            </li>
            <li>
               <p>
                  <code>Policy-Min-TLS-1-2-2019-07</code>, which only supports TLSv1.2</p>
            </li>
         </ul>")
  @as("TLSSecurityPolicy")
  tlssecurityPolicy: option<nonEmptyString>,
  @ocaml.doc("<p>Whether to require that all traffic to the domain arrive over HTTPS.</p>")
  @as("EnforceHTTPS")
  enforceHTTPS: option<boolean_>,
}
@ocaml.doc("<p>Contains information about the tier of the environment.</p>")
type awsElasticBeanstalkEnvironmentTier = {
  @ocaml.doc("<p>The version of the environment tier.</p>") @as("Version")
  version: option<nonEmptyString>,
  @ocaml.doc("<p>The type of environment tier.</p>") @as("Type") type_: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the environment tier.</p>") @as("Name") name: option<nonEmptyString>,
}
@ocaml.doc("<p>A configuration option setting for the environment.</p>")
type awsElasticBeanstalkEnvironmentOptionSetting = {
  @ocaml.doc("<p>The value of the configuration setting.</p>") @as("Value")
  value: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("ResourceName")
  resourceName: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the option.</p>") @as("OptionName") optionName: option<nonEmptyString>,
  @ocaml.doc("<p>The type of resource that the configuration option is associated with.</p>")
  @as("Namespace")
  namespace: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>Contains information about a link to another environment that is in the same group.</p>"
)
type awsElasticBeanstalkEnvironmentEnvironmentLink = {
  @ocaml.doc("<p>The name of the environment link.</p>") @as("LinkName")
  linkName: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the linked environment.</p>") @as("EnvironmentName")
  environmentName: option<nonEmptyString>,
}
@ocaml.doc("<p>An attachment to an AWS EC2 volume.</p>")
type awsEc2VolumeAttachment = {
  @ocaml.doc("<p>The attachment state of the volume.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the EC2 instance.</p>") @as("InstanceId")
  instanceId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the EBS volume is deleted when the EC2 instance is terminated.</p>")
  @as("DeleteOnTermination")
  deleteOnTermination: option<boolean_>,
  @ocaml.doc("<p>The datetime when the attachment initiated.</p>") @as("AttachTime")
  attachTime: option<nonEmptyString>,
}
@ocaml.doc("<p>A relationship between a security group and a user.</p>")
type awsEc2SecurityGroupUserIdGroupPair = {
  @ocaml.doc("<p>The ID of the VPC peering connection, if applicable.</p>")
  @as("VpcPeeringConnectionId")
  vpcPeeringConnectionId: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the VPC for the referenced security group, if applicable.</p>")
  @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of an AWS account.</p>
         <p>For a referenced security group in another VPC, the account ID of the referenced
         security group is returned in the response. If the referenced security group is deleted,
         this value is not returned.</p>
         <p>[EC2-Classic] Required when adding or removing rules that reference a security group in
         another AWS. </p>")
  @as("UserId")
  userId: option<nonEmptyString>,
  @ocaml.doc("<p>The status of a VPC peering connection, if applicable.</p>") @as("PeeringStatus")
  peeringStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the security group.</p>") @as("GroupName")
  groupName: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the security group.</p>") @as("GroupId") groupId: option<nonEmptyString>,
}
@ocaml.doc("<p>A prefix list ID.</p>")
type awsEc2SecurityGroupPrefixListId = {
  @ocaml.doc("<p>The ID of the prefix.</p>") @as("PrefixListId")
  prefixListId: option<nonEmptyString>,
}
@ocaml.doc("<p>A range of IPv6 addresses.</p>")
type awsEc2SecurityGroupIpv6Range = {
  @ocaml.doc("<p>The IPv6 CIDR range. You can specify either a CIDR range or a source security group, but
         not both. To specify a single IPv6 address, use the /128 prefix length.</p>")
  @as("CidrIpv6")
  cidrIpv6: option<nonEmptyString>,
}
@ocaml.doc("<p>A range of IPv4 addresses.</p>")
type awsEc2SecurityGroupIpRange = {
  @ocaml.doc("<p>The IPv4 CIDR range. You can specify either a CIDR range or a source security group, but
         not both. To specify a single IPv4 address, use the /32 prefix length.</p>")
  @as("CidrIp")
  cidrIp: option<nonEmptyString>,
}
@ocaml.doc("<p>A security group associated with the network interface.</p>")
type awsEc2NetworkInterfaceSecurityGroup = {
  @ocaml.doc("<p>The ID of the security group.</p>") @as("GroupId") groupId: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the security group.</p>") @as("GroupName")
  groupName: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides information about a private IPv4 address that is with the network
         interface.</p>")
type awsEc2NetworkInterfacePrivateIpAddressDetail = {
  @ocaml.doc("<p>The private DNS name for the IP address.</p>") @as("PrivateDnsName")
  privateDnsName: option<nonEmptyString>,
  @ocaml.doc("<p>The IP address.</p>") @as("PrivateIpAddress")
  privateIpAddress: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides information about an IPV6 address that is associated with the network
         interface.</p>")
type awsEc2NetworkInterfaceIpV6AddressDetail = {
  @ocaml.doc("<p>The IPV6 address.</p>") @as("IpV6Address") ipV6Address: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the network interface attachment.</p>")
type awsEc2NetworkInterfaceAttachment = {
  @ocaml.doc("<p>The attachment state.</p>
         <p>Valid values: <code>attaching</code> | <code>attached</code> | <code>detaching</code> |
            <code>detached</code>
         </p>")
  @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS account ID of the owner of the instance.</p>") @as("InstanceOwnerId")
  instanceOwnerId: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the instance.</p>") @as("InstanceId") instanceId: option<nonEmptyString>,
  @ocaml.doc("<p>The device index of the network interface attachment on the instance.</p>")
  @as("DeviceIndex")
  deviceIndex: option<integer_>,
  @ocaml.doc("<p>Indicates whether the network interface is deleted when the instance is
         terminated.</p>")
  @as("DeleteOnTermination")
  deleteOnTermination: option<boolean_>,
  @ocaml.doc("<p>The identifier of the network interface attachment</p>") @as("AttachmentId")
  attachmentId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the attachment initiated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("AttachTime")
  attachTime: option<nonEmptyString>,
}
@ocaml.doc("<p>An association between the network ACL and a subnet.</p>")
type awsEc2NetworkAclAssociation = {
  @ocaml.doc("<p>The identifier of the subnet that is associated with the network ACL.</p>")
  @as("SubnetId")
  subnetId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the network ACL.</p>") @as("NetworkAclId")
  networkAclId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the association between the network ACL and the subnet.</p>")
  @as("NetworkAclAssociationId")
  networkAclAssociationId: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an Elastic IP address.</p>")
type awsEc2EipDetails = {
  @ocaml.doc("<p>The private IP address that is associated with the Elastic IP address.</p>")
  @as("PrivateIpAddress")
  privateIpAddress: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS account ID of the owner of the network interface.</p>")
  @as("NetworkInterfaceOwnerId")
  networkInterfaceOwnerId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the network interface.</p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the location from which the Elastic IP address is advertised.</p>")
  @as("NetworkBorderGroup")
  networkBorderGroup: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of an IP address pool. This parameter allows Amazon EC2 to select an IP
         address from the address pool.</p>")
  @as("PublicIpv4Pool")
  publicIpv4Pool: option<nonEmptyString>,
  @ocaml.doc("<p>The domain in which to allocate the address.</p>
         <p>If the address is for use with EC2 instances in a VPC, then <code>Domain</code> is
            <code>vpc</code>. Otherwise, <code>Domain</code> is <code>standard</code>. </p>")
  @as("Domain")
  domain: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier that represents the association of the Elastic IP address with an EC2
         instance.</p>")
  @as("AssociationId")
  associationId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier that AWS assigns to represent the allocation of the Elastic IP address
         for use with Amazon VPC.</p>")
  @as("AllocationId")
  allocationId: option<nonEmptyString>,
  @ocaml.doc("<p>A public IP address that is associated with the EC2 instance.</p>") @as("PublicIp")
  publicIp: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the EC2 instance.</p>") @as("InstanceId")
  instanceId: option<nonEmptyString>,
}
@ocaml.doc("<p>The current DynamoDB Streams configuration for the table.</p>")
type awsDynamoDbTableStreamSpecification = {
  @ocaml.doc("<p>Determines the information that is written to the table.</p>")
  @as("StreamViewType")
  streamViewType: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether DynamoDB Streams is enabled on the table.</p>")
  @as("StreamEnabled")
  streamEnabled: option<boolean_>,
}
@ocaml.doc("<p>Information about the server-side encryption for the table.</p>")
type awsDynamoDbTableSseDescription = {
  @ocaml.doc("<p>The ARN of the AWS KMS customer master key (CMK) that is used for the AWS KMS
         encryption.</p>")
  @as("KmsMasterKeyArn")
  kmsMasterKeyArn: option<nonEmptyString>,
  @ocaml.doc("<p>The type of server-side encryption.</p>") @as("SseType")
  sseType: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the server-side encryption.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>If the key is inaccessible, the date and time when DynamoDB detected that the key was
         inaccessible.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("InaccessibleEncryptionDateTime")
  inaccessibleEncryptionDateTime: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the restore for the table.</p>")
type awsDynamoDbTableRestoreSummary = {
  @ocaml.doc("<p>Whether a restore is currently in progress.</p>") @as("RestoreInProgress")
  restoreInProgress: option<boolean_>,
  @ocaml.doc("<p>Indicates the point in time that the table was restored to.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("RestoreDateTime")
  restoreDateTime: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the source table for the backup.</p>") @as("SourceTableArn")
  sourceTableArn: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the source backup from which the table was restored.</p>")
  @as("SourceBackupArn")
  sourceBackupArn: option<nonEmptyString>,
}
@ocaml.doc("<p>Replica-specific configuration for the provisioned throughput.</p>")
type awsDynamoDbTableProvisionedThroughputOverride = {
  @ocaml.doc("<p>The read capacity units for the replica.</p>") @as("ReadCapacityUnits")
  readCapacityUnits: option<integer_>,
}
@ocaml.doc("<p>Information about the provisioned throughput for the table or for a global secondary
         index.</p>")
type awsDynamoDbTableProvisionedThroughput = {
  @ocaml.doc("<p>The maximum number of writes consumed per second before DynamoDB returns a
            <code>ThrottlingException</code>.</p>")
  @as("WriteCapacityUnits")
  writeCapacityUnits: option<integer_>,
  @ocaml.doc("<p>The maximum number of strongly consistent reads consumed per second before DynamoDB
         returns a <code>ThrottlingException</code>.</p>")
  @as("ReadCapacityUnits")
  readCapacityUnits: option<integer_>,
  @ocaml.doc("<p>The number of times during the current UTC calendar day that the provisioned throughput
         was decreased.</p>")
  @as("NumberOfDecreasesToday")
  numberOfDecreasesToday: option<integer_>,
  @ocaml.doc("<p>Indicates when the provisioned throughput was last increased.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastIncreaseDateTime")
  lastIncreaseDateTime: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the provisioned throughput was last decreased.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastDecreaseDateTime")
  lastDecreaseDateTime: option<nonEmptyString>,
}
@ocaml.doc("<p>A component of the key schema for the DynamoDB table, a global secondary index, or a
         local secondary index.</p>")
type awsDynamoDbTableKeySchema = {
  @ocaml.doc("<p>The type of key used for the key schema attribute.</p>") @as("KeyType")
  keyType: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the key schema attribute.</p>") @as("AttributeName")
  attributeName: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides information about the billing for read/write capacity on the table.</p>")
type awsDynamoDbTableBillingModeSummary = {
  @ocaml.doc("<p>If the billing mode is <code>PAY_PER_REQUEST</code>, indicates when the billing mode was
         set to that value.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastUpdateToPayPerRequestDateTime")
  lastUpdateToPayPerRequestDateTime: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The method used to charge for read and write throughput and to manage capacity.</p>"
  )
  @as("BillingMode")
  billingMode: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains a definition of an attribute for the table.</p>")
type awsDynamoDbTableAttributeDefinition = {
  @ocaml.doc("<p>The type of the attribute.</p>") @as("AttributeType")
  attributeType: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the attribute.</p>") @as("AttributeName")
  attributeName: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the build input source code for this build project.</p>")
type awsCodeBuildProjectSource = {
  @ocaml.doc("<p>Whether to ignore SSL warnings while connecting to the project source code.</p>")
  @as("InsecureSsl")
  insecureSsl: option<boolean_>,
  @ocaml.doc("<p>Information about the Git clone depth for the build project.</p>")
  @as("GitCloneDepth")
  gitCloneDepth: option<integer_>,
  @ocaml.doc("<p>Information about the location of the source code to be built.</p>
         <p>Valid values include:</p>
         <ul>
            <li>
               <p>For source code settings that are specified in the source action of a pipeline in
               AWS CodePipeline, location should not be specified. If it is specified, AWS
               CodePipeline ignores it. This is because AWS CodePipeline uses the settings in a
               pipeline's source action instead of this value.</p>
            </li>
            <li>
               <p>For source code in an AWS CodeCommit repository, the HTTPS clone URL to the
               repository that contains the source code and the build spec file (for example,
                  <code>https://git-codecommit.region-ID.amazonaws.com/v1/repos/repo-name</code>
               ).</p>
            </li>
            <li>
               <p>For source code in an S3 input bucket, one of the following.</p>
               <ul>
                  <li>
                     <p>The path to the ZIP file that contains the source code (for example,
                        <code>bucket-name/path/to/object-name.zip</code>).</p>
                  </li>
                  <li>
                     <p> The path to the folder that contains the source code (for example,
                        <code>bucket-name/path/to/source-code/folder/</code>).</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>For source code in a GitHub repository, the HTTPS clone URL to the repository that
               contains the source and the build spec file.</p>
            </li>
            <li>
               <p>For source code in a Bitbucket repository, the HTTPS clone URL to the repository
               that contains the source and the build spec file. </p>
            </li>
         </ul>")
  @as("Location")
  location: option<nonEmptyString>,
  @ocaml.doc("<p>The type of repository that contains the source code to be built. Valid values
         are:</p>
         <ul>
            <li>
               <p>
                  <code>BITBUCKET</code> - The source code is in a Bitbucket repository.</p>
            </li>
            <li>
               <p>
                  <code>CODECOMMIT</code> - The source code is in an AWS CodeCommit
               repository.</p>
            </li>
            <li>
               <p>
                  <code>CODEPIPELINE</code> - The source code settings are specified in the source
               action of a pipeline in AWS CodePipeline.</p>
            </li>
            <li>
               <p>
                  <code>GITHUB</code> - The source code is in a GitHub repository.</p>
            </li>
            <li>
               <p>
                  <code>GITHUB_ENTERPRISE</code> - The source code is in a GitHub Enterprise
               repository.</p>
            </li>
            <li>
               <p>
                  <code>NO_SOURCE</code> - The project does not have input source code.</p>
            </li>
            <li>
               <p>
                  <code>S3</code> - The source code is in an S3 input bucket. </p>
            </li>
         </ul>")
  @as("Type")
  type_: option<nonEmptyString>,
}
@ocaml.doc("<p>The credentials for access to a private registry.</p>")
type awsCodeBuildProjectEnvironmentRegistryCredential = {
  @ocaml.doc("<p>The service that created the credentials to access a private Docker registry.</p>
         <p>The valid value,<code> SECRETS_MANAGER</code>, is for AWS Secrets Manager.</p>")
  @as("CredentialProvider")
  credentialProvider: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) or name of credentials created using AWS Secrets
         Manager.</p>
         <note>
            <p>The credential can use the name of the credentials only if they exist in your current
            AWS Region. </p>
         </note>")
  @as("Credential")
  credential: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides details about a CloudTrail trail.</p>")
type awsCloudTrailTrailDetails = {
  @ocaml.doc("<p>The ARN of the trail.</p>") @as("TrailArn") trailArn: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The name of the SNS topic that is used for notifications of log file delivery.</p>"
  )
  @as("SnsTopicName")
  snsTopicName: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the SNS topic that is used for notifications of log file delivery.</p>")
  @as("SnsTopicArn")
  snsTopicArn: option<nonEmptyString>,
  @ocaml.doc("<p>The S3 key prefix. The key prefix is added after the name of the S3 bucket where the log
         files are published.</p>")
  @as("S3KeyPrefix")
  s3KeyPrefix: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the S3 bucket where the log files are published.</p>")
  @as("S3BucketName")
  s3BucketName: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the trail.</p>") @as("Name") name: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether CloudTrail log file validation is enabled.</p>")
  @as("LogFileValidationEnabled")
  logFileValidationEnabled: option<boolean_>,
  @ocaml.doc("<p>The AWS KMS key ID to use to encrypt the logs.</p>") @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the trail is created for all accounts in an organization in AWS Organizations,
         or only for the current AWS account.</p>")
  @as("IsOrganizationTrail")
  isOrganizationTrail: option<boolean_>,
  @ocaml.doc(
    "<p>Indicates whether the trail applies only to the current Region or to all Regions.</p>"
  )
  @as("IsMultiRegionTrail")
  isMultiRegionTrail: option<boolean_>,
  @ocaml.doc("<p>Indicates whether the trail publishes events from global services such as IAM to the log
         files.</p>")
  @as("IncludeGlobalServiceEvents")
  includeGlobalServiceEvents: option<boolean_>,
  @ocaml.doc("<p>The Region where the trail was created.</p>") @as("HomeRegion")
  homeRegion: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether the trail has custom event selectors.</p>")
  @as("HasCustomEventSelectors")
  hasCustomEventSelectors: option<boolean_>,
  @ocaml.doc("<p>The ARN of the role that the CloudWatch Logs endpoint assumes when it writes to the log
         group.</p>")
  @as("CloudWatchLogsRoleArn")
  cloudWatchLogsRoleArn: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the log group that CloudTrail logs are delivered to.</p>")
  @as("CloudWatchLogsLogGroupArn")
  cloudWatchLogsLogGroupArn: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an origin that is an S3 bucket that is not configured with static
         website hosting.</p>")
type awsCloudFrontDistributionOriginS3OriginConfig = {
  @ocaml.doc("<p>The CloudFront origin access identity to associate with the origin.</p>")
  @as("OriginAccessIdentity")
  originAccessIdentity: option<nonEmptyString>,
}
type awsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList = array<integer_>
@ocaml.doc(
  "<p>A complex type that controls whether access logs are written for the distribution.</p>"
)
type awsCloudFrontDistributionLogging = {
  @ocaml.doc("<p>An optional string that you want CloudFront to use as a prefix to the access log
         filenames for this distribution.</p>")
  @as("Prefix")
  prefix: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies whether you want CloudFront to include cookies in access logs.</p>")
  @as("IncludeCookies")
  includeCookies: option<boolean_>,
  @ocaml.doc("<p>With this field, you can enable or disable the selected distribution.</p>")
  @as("Enabled")
  enabled: option<boolean_>,
  @ocaml.doc("<p>The Amazon S3 bucket to store the access logs in.</p>") @as("Bucket")
  bucket: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>Contains information about the default cache configuration for the distribution.</p>"
)
type awsCloudFrontDistributionDefaultCacheBehavior = {
  @ocaml.doc("<p>The protocol that viewers can use to access the files in an origin. You can specify the
         following options:</p>
         <ul>
            <li>
               <p>
                  <code>allow-all</code> - Viewers can use HTTP or HTTPS.</p>
            </li>
            <li>
               <p>
                  <code>redirect-to-https</code> - CloudFront responds to HTTP requests with an HTTP
               status code of 301 (Moved Permanently) and the HTTPS URL. The viewer then uses the
               new URL to resubmit.</p>
            </li>
            <li>
               <p>
                  <code>https-only</code> - CloudFront responds to HTTP request with an HTTP status
               code of 403 (Forbidden).</p>
            </li>
         </ul>")
  @as("ViewerProtocolPolicy")
  viewerProtocolPolicy: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a cache behavior for the distribution.</p>")
type awsCloudFrontDistributionCacheBehavior = {
  @ocaml.doc("<p>The protocol that viewers can use to access the files in an origin. You can specify the
         following options:</p>
         <ul>
            <li>
               <p>
                  <code>allow-all</code> - Viewers can use HTTP or HTTPS.</p>
            </li>
            <li>
               <p>
                  <code>redirect-to-https</code> - CloudFront responds to HTTP requests with an HTTP
               status code of 301 (Moved Permanently) and the HTTPS URL. The viewer then uses the
               new URL to resubmit.</p>
            </li>
            <li>
               <p>
                  <code>https-only</code> - CloudFront responds to HTTP request with an HTTP status
               code of 403 (Forbidden).</p>
            </li>
         </ul>")
  @as("ViewerProtocolPolicy")
  viewerProtocolPolicy: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides details about the CNAME record that is added to the DNS database for domain
         validation.</p>")
type awsCertificateManagerCertificateResourceRecord = {
  @ocaml.doc("<p>The value of the resource.</p>") @as("Value") value: option<nonEmptyString>,
  @ocaml.doc("<p>The type of resource.</p>") @as("Type") type_: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the resource.</p>") @as("Name") name: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains other options for the certificate.</p>")
type awsCertificateManagerCertificateOptions = {
  @ocaml.doc("<p>Whether to add the certificate to a transparency log.</p>
         <p>Valid values: <code>DISABLED</code> | <code>ENABLED</code>
         </p>")
  @as("CertificateTransparencyLoggingPreference")
  certificateTransparencyLoggingPreference: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about a key usage X.509 v3 extension object.</p>")
type awsCertificateManagerCertificateKeyUsage = {
  @ocaml.doc("<p>The key usage extension name.</p>") @as("Name") name: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about an extended key usage X.509 v3 extension object.</p>")
type awsCertificateManagerCertificateExtendedKeyUsage = {
  @ocaml.doc("<p>An object identifier (OID) for the extension value.</p>
         <p>The format is numbers separated by periods.</p>")
  @as("OId")
  oid: option<nonEmptyString>,
  @ocaml.doc("<p>The name of an extension value. Indicates the purpose for which the certificate public
         key can be used.</p>")
  @as("Name")
  name: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains route settings for a stage.</p>")
type awsApiGatewayV2RouteSettings = {
  @ocaml.doc("<p>The throttling rate limit.</p>") @as("ThrottlingRateLimit")
  throttlingRateLimit: option<double>,
  @ocaml.doc("<p>The throttling burst limit.</p>") @as("ThrottlingBurstLimit")
  throttlingBurstLimit: option<integer_>,
  @ocaml.doc("<p>Indicates whether data trace logging is enabled. Data trace logging affects the log
         entries that are pushed to CloudWatch Logs. Supported only for WebSocket APIs.</p>")
  @as("DataTraceEnabled")
  dataTraceEnabled: option<boolean_>,
  @ocaml.doc("<p>The logging level. The logging level affects the log entries that are pushed to
         CloudWatch Logs. Supported only for WebSocket APIs.</p>
         <p>If the logging level is <code>ERROR</code>, then the logs only include error-level
         entries.</p>
         <p>If the logging level is <code>INFO</code>, then the logs include both <code>ERROR</code>
         events and extra informational events.</p>
         <p>Valid values: <code>OFF</code> | <code>ERROR</code> | <code>INFO</code>
         </p>")
  @as("LoggingLevel")
  loggingLevel: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether detailed metrics are enabled.</p>") @as("DetailedMetricsEnabled")
  detailedMetricsEnabled: option<boolean_>,
}
@ocaml.doc("<p>Defines settings for a method for the stage.</p>")
type awsApiGatewayMethodSettings = {
  @ocaml.doc("<p>The resource path for this method. Forward slashes (/) are encoded as ~1 . The initial
         slash must include a forward slash.</p>
         <p>For example, the path value <code>/resource/subresource</code> must be encoded as
            <code>/~1resource~1subresource</code>.</p>
         <p>To specify the root path, use only a slash (/). You can use an asterisk (*) as a
         wildcard to apply method settings to multiple methods.</p>")
  @as("ResourcePath")
  resourcePath: option<nonEmptyString>,
  @ocaml.doc("<p>The HTTP method. You can use an asterisk (*) as a wildcard to apply method settings to
         multiple methods.</p>")
  @as("HttpMethod")
  httpMethod: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates how to handle unauthorized requests for cache invalidation.</p>
         <p>Valid values: <code>FAIL_WITH_403</code> | <code>SUCCEED_WITH_RESPONSE_HEADER</code> |
            <code>SUCCEED_WITHOUT_RESPONSE_HEADER</code>
         </p>")
  @as("UnauthorizedCacheControlHeaderStrategy")
  unauthorizedCacheControlHeaderStrategy: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether authorization is required for a cache invalidation request.</p>")
  @as("RequireAuthorizationForCacheControl")
  requireAuthorizationForCacheControl: option<boolean_>,
  @ocaml.doc("<p>Indicates whether the cached responses are encrypted. </p>")
  @as("CacheDataEncrypted")
  cacheDataEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the time to live (TTL), in seconds, for cached responses. The higher the TTL,
         the longer the response is cached.</p>")
  @as("CacheTtlInSeconds")
  cacheTtlInSeconds: option<integer_>,
  @ocaml.doc("<p>Indicates whether responses are cached and returned for requests. For responses to be
         cached, a cache cluster must be enabled on the stage.</p>")
  @as("CachingEnabled")
  cachingEnabled: option<boolean_>,
  @ocaml.doc("<p>The throttling rate limit for the method.</p>") @as("ThrottlingRateLimit")
  throttlingRateLimit: option<double>,
  @ocaml.doc("<p>The throttling burst limit for the method.</p>") @as("ThrottlingBurstLimit")
  throttlingBurstLimit: option<integer_>,
  @ocaml.doc("<p>Indicates whether data trace logging is enabled for the method. Data trace logging
         affects the log entries that are pushed to CloudWatch Logs.</p>")
  @as("DataTraceEnabled")
  dataTraceEnabled: option<boolean_>,
  @ocaml.doc("<p>The logging level for this method. The logging level affects the log entries that are
         pushed to CloudWatch Logs.</p>
         <p>If the logging level is <code>ERROR</code>, then the logs only include error-level
         entries.</p>
         <p>If the logging level is <code>INFO</code>, then the logs include both <code>ERROR</code>
         events and extra informational events.</p>
         <p>Valid values: <code>OFF</code> | <code>ERROR</code> | <code>INFO</code>
         </p>")
  @as("LoggingLevel")
  loggingLevel: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether CloudWatch metrics are enabled for the method. </p>")
  @as("MetricsEnabled")
  metricsEnabled: option<boolean_>,
}
@ocaml.doc("<p>Contains information about settings for logging access for the stage.</p>")
type awsApiGatewayAccessLogSettings = {
  @ocaml.doc("<p>The ARN of the CloudWatch Logs log group that receives the access logs.</p>")
  @as("DestinationArn")
  destinationArn: option<nonEmptyString>,
  @ocaml.doc("<p>A single-line format of the access logs of data, as specified by selected
            <code>$context</code> variables. The format must include at least
            <code>$context.requestId</code>.</p>")
  @as("Format")
  format: option<nonEmptyString>,
}
@ocaml.doc("<p>Provided if <code>CallerType</code> is <code>domain</code>. It provides information
         about the DNS domain that issued the API call.</p>")
type awsApiCallActionDomainDetails = {
  @ocaml.doc("<p>The name of the DNS domain that issued the API call.</p>") @as("Domain")
  domain: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an Availability Zone.</p>")
type availabilityZone = {
  @ocaml.doc("<p>The ID of the subnet. You can specify one subnet per Availability Zone.</p>")
  @as("SubnetId")
  subnetId: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the Availability Zone.</p>") @as("ZoneName")
  zoneName: option<nonEmptyString>,
}
type arnList = array<nonEmptyString>
@ocaml.doc("<p>Represents a Security Hub administrator account designated by an organization management
         account.</p>")
type adminAccount = {
  @ocaml.doc("<p>The current status of the Security Hub administrator account. Indicates whether the account is
         currently enabled as a Security Hub administrator.</p>")
  @as("Status")
  status: option<adminStatus>,
  @ocaml.doc("<p>The AWS account identifier of the Security Hub administrator account.</p>")
  @as("AccountId")
  accountId: option<nonEmptyString>,
}
@ocaml.doc("<p>An <code>ActionTarget</code> object.</p>")
type actionTarget = {
  @ocaml.doc("<p>The description of the target action.</p>") @as("Description")
  description: nonEmptyString,
  @ocaml.doc("<p>The name of the action target.</p>") @as("Name") name: nonEmptyString,
  @ocaml.doc("<p>The ARN for the target action.</p>") @as("ActionTargetArn")
  actionTargetArn: nonEmptyString,
}
@ocaml.doc("<p>Provides information about the remote port that was involved in an attempted network
         connection.</p>")
type actionRemotePortDetails = {
  @ocaml.doc("<p>The port name of the remote connection.</p>") @as("PortName")
  portName: option<nonEmptyString>,
  @ocaml.doc("<p>The number of the port.</p>") @as("Port") port: option<integer_>,
}
@ocaml.doc("<p>For <code>NetworkConnectionAction</code> and <code>PortProbeDetails</code>,
            <code>LocalPortDetails</code> provides information about the local port that was
         involved in the action.</p>")
type actionLocalPortDetails = {
  @ocaml.doc("<p>The port name of the local connection.</p>") @as("PortName")
  portName: option<nonEmptyString>,
  @ocaml.doc("<p>The number of the port.</p>") @as("Port") port: option<integer_>,
}
@ocaml.doc("<p>Provides information about the IP address where the scanned port is located.</p>")
type actionLocalIpDetails = {
  @ocaml.doc("<p>The IP address.</p>") @as("IpAddressV4") ipAddressV4: option<nonEmptyString>,
}
type accountIdList = array<nonEmptyString>
@ocaml.doc("<p>The details of an AWS account.</p>")
type accountDetails = {
  @ocaml.doc("<p>The email of an AWS account.</p>") @as("Email") email: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of an AWS account.</p>") @as("AccountId") accountId: accountId,
}
type wafExcludedRuleList = array<wafExcludedRule>
type threatIntelIndicatorList = array<threatIntelIndicator>
type stringFilterList = array<stringFilter>
type statusReasonsList = array<statusReason>
@ocaml.doc("<p>The standard that you want to enable.</p>")
type standardsSubscriptionRequest = {
  @ocaml.doc("<p>A key-value pair of input for the standard.</p>") @as("StandardsInput")
  standardsInput: option<standardsInputParameterMap>,
  @ocaml.doc("<p>The ARN of the standard that you want to enable. To view the list of available standards
         and their ARNs, use the <code>
               <a>DescribeStandards</a>
            </code> operation.</p>")
  @as("StandardsArn")
  standardsArn: nonEmptyString,
}
@ocaml.doc("<p>A resource that represents your subscription to a supported standard.</p>")
type standardsSubscription = {
  @ocaml.doc("<p>The status of the standard subscription.</p>
         <p>The status values are as follows:</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code> - Standard is in the process of being enabled.</p>
            </li>
            <li>
               <p>
                  <code>READY</code> - Standard is enabled.</p>
            </li>
            <li>
               <p>
                  <code>INCOMPLETE</code> - Standard could not be enabled completely. Some controls may not be available.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - Standard is in the process of being disabled.</p>
            </li>
            <li>
               <p>
                  <code>FAILED</code> - Standard could not be disabled.</p>
            </li>
         </ul>")
  @as("StandardsStatus")
  standardsStatus: standardsStatus,
  @ocaml.doc("<p>A key-value pair of input for the standard.</p>") @as("StandardsInput")
  standardsInput: standardsInputParameterMap,
  @ocaml.doc("<p>The ARN of a standard.</p>") @as("StandardsArn") standardsArn: nonEmptyString,
  @ocaml.doc(
    "<p>The ARN of a resource that represents your subscription to a supported standard.</p>"
  )
  @as("StandardsSubscriptionArn")
  standardsSubscriptionArn: nonEmptyString,
}
@ocaml.doc("<p>Details for an individual security standard control.</p>")
type standardsControl = {
  @ocaml.doc("<p>The list of requirements that are related to this control.</p>")
  @as("RelatedRequirements")
  relatedRequirements: option<relatedRequirementsList>,
  @ocaml.doc("<p>The severity of findings generated from this security standard control.</p>
         <p>The finding severity is based on an assessment of how easy it would be to compromise AWS
         resources if the issue is detected.</p>")
  @as("SeverityRating")
  severityRating: option<severityRating>,
  @ocaml.doc("<p>A link to remediation information for the control in the Security Hub user
         documentation.</p>")
  @as("RemediationUrl")
  remediationUrl: option<nonEmptyString>,
  @ocaml.doc("<p>The longer description of the security standard control. Provides information about what
         the control is checking for.</p>")
  @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The title of the security standard control.</p>") @as("Title")
  title: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the security standard control.</p>") @as("ControlId")
  controlId: option<nonEmptyString>,
  @ocaml.doc("<p>The date and time that the status of the security standard control was most recently
         updated.</p>")
  @as("ControlStatusUpdatedAt")
  controlStatusUpdatedAt: option<timestamp_>,
  @ocaml.doc("<p>The reason provided for the most recent change in status for the control.</p>")
  @as("DisabledReason")
  disabledReason: option<nonEmptyString>,
  @ocaml.doc("<p>The current status of the security standard control. Indicates whether the control is
         enabled or disabled. Security Hub does not check against disabled controls.</p>")
  @as("ControlStatus")
  controlStatus: option<controlStatus>,
  @ocaml.doc("<p>The ARN of the security standard control.</p>") @as("StandardsControlArn")
  standardsControlArn: option<nonEmptyString>,
}
type standards = array<standard>
type sortCriteria = array<sortCriterion>
type softwarePackageList = array<softwarePackage>
type resultList = array<result>
@ocaml.doc("<p>Details about the remediation steps for a finding.</p>")
type remediation = {
  @ocaml.doc(
    "<p>A recommendation on the steps to take to remediate the issue identified by a finding.</p>"
  )
  @as("Recommendation")
  recommendation: option<recommendation>,
}
type relatedFindingList = array<relatedFinding>
type records = array<record>
type ranges = array<range>
@ocaml.doc("<p>Contains details about a product.</p>")
type product = {
  @ocaml.doc("<p>The resource policy associated with the product.</p>")
  @as("ProductSubscriptionResourcePolicy")
  productSubscriptionResourcePolicy: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The URL to the service or product documentation about the integration with Security Hub, including how to activate the integration.</p>"
  )
  @as("ActivationUrl")
  activationUrl: option<nonEmptyString>,
  @ocaml.doc("<p>For integrations with AWS services, the AWS Console URL from which to activate the service.</p>
         <p>For integrations with third-party products, the AWS Marketplace URL from which to subscribe to or purchase the product.</p>")
  @as("MarketplaceUrl")
  marketplaceUrl: option<nonEmptyString>,
  @ocaml.doc("<p>The types of integration that the product supports. Available values are the
         following.</p>
         <ul>
            <li>
               <p>
                  <code>SEND_FINDINGS_TO_SECURITY_HUB</code> - The integration sends
               findings to Security Hub.</p>
            </li>
            <li>
               <p>
                  <code>RECEIVE_FINDINGS_FROM_SECURITY_HUB</code> - The integration
               receives findings from Security Hub.</p>
            </li>
            <li>
               <p>
                  <code>UPDATE_FINDINGS_IN_SECURITY_HUB</code> - The integration does not send new findings to Security Hub, but does make updates to the findings that it receives from Security Hub.</p>
            </li>
         </ul>")
  @as("IntegrationTypes")
  integrationTypes: option<integrationTypeList>,
  @ocaml.doc("<p>The categories assigned to the product.</p>") @as("Categories")
  categories: option<categoryList>,
  @ocaml.doc("<p>A description of the product.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the company that provides the product.</p>") @as("CompanyName")
  companyName: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the product.</p>") @as("ProductName")
  productName: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN assigned to the product.</p>") @as("ProductArn")
  productArn: nonEmptyString,
}
type portRangeList = array<portRange>
@ocaml.doc(
  "<p>An occurrence of sensitive data in an Adobe Portable Document Format (PDF) file.</p>"
)
type page = {
  @ocaml.doc("<p>An occurrence of sensitive data detected in a binary text file.</p>")
  @as("OffsetRange")
  offsetRange: option<range>,
  @ocaml.doc(
    "<p>An occurrence of sensitive data detected in a non-binary text file or a Microsoft Word file. Non-binary text files include files such as HTML, XML, JSON, and TXT files.</p>"
  )
  @as("LineRange")
  lineRange: option<range>,
  @ocaml.doc("<p>The page number of the page that contains the sensitive data.</p>")
  @as("PageNumber")
  pageNumber: option<long>,
}
type numberFilterList = array<numberFilter>
@ocaml.doc("<p>The details of network-related information about a finding.</p>")
type network = {
  @ocaml.doc("<p>The destination domain of network-related information about a finding.</p>")
  @as("DestinationDomain")
  destinationDomain: option<nonEmptyString>,
  @ocaml.doc("<p>The destination port of network-related information about a finding.</p>")
  @as("DestinationPort")
  destinationPort: option<integer_>,
  @ocaml.doc("<p>The destination IPv6 address of network-related information about a finding.</p>")
  @as("DestinationIpV6")
  destinationIpV6: option<nonEmptyString>,
  @ocaml.doc("<p>The destination IPv4 address of network-related information about a finding.</p>")
  @as("DestinationIpV4")
  destinationIpV4: option<nonEmptyString>,
  @ocaml.doc("<p>The source media access control (MAC) address of network-related information about a
         finding.</p>")
  @as("SourceMac")
  sourceMac: option<nonEmptyString>,
  @ocaml.doc("<p>The source domain of network-related information about a finding.</p>")
  @as("SourceDomain")
  sourceDomain: option<nonEmptyString>,
  @ocaml.doc("<p>The source port of network-related information about a finding.</p>")
  @as("SourcePort")
  sourcePort: option<integer_>,
  @ocaml.doc("<p>The source IPv6 address of network-related information about a finding.</p>")
  @as("SourceIpV6")
  sourceIpV6: option<nonEmptyString>,
  @ocaml.doc("<p>The source IPv4 address of network-related information about a finding.</p>")
  @as("SourceIpV4")
  sourceIpV4: option<nonEmptyString>,
  @ocaml.doc("<p>The range of open ports that is present on the network.</p>") @as("OpenPortRange")
  openPortRange: option<portRange>,
  @ocaml.doc("<p>The protocol of network-related information about a finding.</p>") @as("Protocol")
  protocol: option<nonEmptyString>,
  @ocaml.doc("<p>The direction of network traffic associated with a finding.</p>") @as("Direction")
  direction: option<networkDirection>,
}
type memberList = array<member>
type mapFilterList = array<mapFilter>
type malwareList = array<malware>
type keywordFilterList = array<keywordFilter>
type ipv6CidrBlockAssociationList = array<ipv6CidrBlockAssociation>
type ipFilterList = array<ipFilter>
type invitationList = array<invitation>
type insightResultValueList = array<insightResultValue>
type importFindingsErrorList = array<importFindingsError>
@ocaml.doc("<p>A date filter for querying findings.</p>")
type dateFilter = {
  @ocaml.doc("<p>A date range for the date filter.</p>") @as("DateRange")
  dateRange: option<dateRange>,
  @ocaml.doc("<p>An end date for the date filter.</p>") @as("End") end: option<nonEmptyString>,
  @ocaml.doc("<p>A start date for the date filter.</p>") @as("Start") start: option<nonEmptyString>,
}
type cvssList = array<cvss>
type cidrBlockAssociationList = array<cidrBlockAssociation>
type cells = array<cell>
@ocaml.doc("<p>A finding from a <code>BatchUpdateFindings</code> request that Security Hub was unable to
         update.</p>")
type batchUpdateFindingsUnprocessedFinding = {
  @ocaml.doc("<p>The message associated with the error.</p>") @as("ErrorMessage")
  errorMessage: nonEmptyString,
  @ocaml.doc("<p>The code associated with the error.</p>") @as("ErrorCode")
  errorCode: nonEmptyString,
  @ocaml.doc("<p>The identifier of the finding that was not updated.</p>") @as("FindingIdentifier")
  findingIdentifier: awsSecurityFindingIdentifier,
}
@ocaml.doc("<p>Provides details about the compliance for a patch.</p>")
type awsSsmPatch = {
  @ocaml.doc("<p>The compliance status details for the patch.</p>") @as("ComplianceSummary")
  complianceSummary: option<awsSsmComplianceSummary>,
}
type awsSnsTopicSubscriptionList = array<awsSnsTopicSubscription>
type awsSecurityFindingIdentifierList = array<awsSecurityFindingIdentifier>
@ocaml.doc("<p>Details about an AWS Secrets Manager secret.</p>")
type awsSecretsManagerSecretDetails = {
  @ocaml.doc("<p>The user-provided description of the secret.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the secret.</p>") @as("Name") name: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the secret is deleted.</p>") @as("Deleted") deleted: option<boolean_>,
  @ocaml.doc("<p>The ARN of the Lambda function that rotates the secret.</p>")
  @as("RotationLambdaArn")
  rotationLambdaArn: option<nonEmptyString>,
  @ocaml.doc("<p>Whether rotation is enabled.</p>") @as("RotationEnabled")
  rotationEnabled: option<boolean_>,
  @ocaml.doc("<p>The ARN, Key ID, or alias of the AWS KMS customer master key (CMK) used to encrypt the
            <code>SecretString</code> or <code>SecretBinary</code> values for versions of this
         secret.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the rotation occurred within the specified rotation frequency.</p>")
  @as("RotationOccurredWithinFrequency")
  rotationOccurredWithinFrequency: option<boolean_>,
  @ocaml.doc("<p>Defines the rotation schedule for the secret.</p>") @as("RotationRules")
  rotationRules: option<awsSecretsManagerSecretRotationRules>,
}
@ocaml.doc("<p>An encryption rule to apply to the S3 bucket.</p>")
type awsS3BucketServerSideEncryptionRule = {
  @ocaml.doc("<p>Specifies the default server-side encryption to apply to new objects in the bucket. If a
            <code>PUT</code> object request doesn't specify any server-side encryption, this default
         encryption is applied.</p>")
  @as("ApplyServerSideEncryptionByDefault")
  applyServerSideEncryptionByDefault: option<awsS3BucketServerSideEncryptionByDefault>,
}
type awsRedshiftClusterVpcSecurityGroups = array<awsRedshiftClusterVpcSecurityGroup>
type awsRedshiftClusterIamRoles = array<awsRedshiftClusterIamRole>
type awsRedshiftClusterDeferredMaintenanceWindows = array<
  awsRedshiftClusterDeferredMaintenanceWindow,
>
type awsRedshiftClusterClusterSecurityGroups = array<awsRedshiftClusterClusterSecurityGroup>
type awsRedshiftClusterClusterParameterStatusList = array<awsRedshiftClusterClusterParameterStatus>
type awsRedshiftClusterClusterNodes = array<awsRedshiftClusterClusterNode>
@ocaml.doc("<p>Identifies the log types to enable and disable.</p>")
type awsRdsPendingCloudWatchLogsExports = {
  @ocaml.doc("<p>A list of log types that are being disabled.</p>") @as("LogTypesToDisable")
  logTypesToDisable: option<stringList>,
  @ocaml.doc("<p>A list of log types that are being enabled.</p>") @as("LogTypesToEnable")
  logTypesToEnable: option<stringList>,
}
@ocaml.doc("<p>Information about a subnet in a subnet group.</p>")
type awsRdsDbSubnetGroupSubnet = {
  @ocaml.doc("<p>The status of a subnet in the subnet group.</p>") @as("SubnetStatus")
  subnetStatus: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the Availability Zone for a subnet in the subnet group.</p>")
  @as("SubnetAvailabilityZone")
  subnetAvailabilityZone: option<awsRdsDbSubnetGroupSubnetAvailabilityZone>,
  @ocaml.doc("<p>The identifier of a subnet in the subnet group.</p>") @as("SubnetIdentifier")
  subnetIdentifier: option<nonEmptyString>,
}
type awsRdsDbStatusInfos = array<awsRdsDbStatusInfo>
type awsRdsDbProcessorFeatures = array<awsRdsDbProcessorFeature>
type awsRdsDbParameterGroups = array<awsRdsDbParameterGroup>
type awsRdsDbOptionGroupMemberships = array<awsRdsDbOptionGroupMembership>
type awsRdsDbInstanceVpcSecurityGroups = array<awsRdsDbInstanceVpcSecurityGroup>
type awsRdsDbInstanceAssociatedRoles = array<awsRdsDbInstanceAssociatedRole>
type awsRdsDbDomainMemberships = array<awsRdsDbDomainMembership>
@ocaml.doc("<p>Information about an Amazon RDS DB cluster snapshot.</p>")
type awsRdsDbClusterSnapshotDetails = {
  @ocaml.doc("<p>Whether mapping of IAM accounts to database accounts is enabled.</p>")
  @as("IamDatabaseAuthenticationEnabled")
  iamDatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>The identifier of the DB cluster snapshot.</p>") @as("DbClusterSnapshotIdentifier")
  dbClusterSnapshotIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The DB cluster identifier.</p>") @as("DbClusterIdentifier")
  dbClusterIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the AWS KMS master key that is used to encrypt the database instances in the
         DB cluster.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the DB cluster is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the percentage of the estimated data that has been transferred.</p>")
  @as("PercentProgress")
  percentProgress: option<integer_>,
  @ocaml.doc("<p>The type of DB cluster snapshot.</p>") @as("SnapshotType")
  snapshotType: option<nonEmptyString>,
  @ocaml.doc("<p>The license model information for this DB cluster snapshot.</p>")
  @as("LicenseModel")
  licenseModel: option<nonEmptyString>,
  @ocaml.doc("<p>The version of the database engine to use.</p>") @as("EngineVersion")
  engineVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the master user for the DB cluster.</p>") @as("MasterUsername")
  masterUsername: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<nonEmptyString>,
  @ocaml.doc("<p>The VPC ID that is associated with the DB cluster snapshot.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The port number on which the DB instances in the DB cluster accept connections.</p>"
  )
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The status of this DB cluster snapshot.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies the allocated storage size in gibibytes (GiB).</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>The name of the database engine that you want to use for this DB instance.</p>")
  @as("Engine")
  engine: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the snapshot was taken.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<nonEmptyString>,
  @ocaml.doc(
    "<p>A list of Availability Zones where instances in the DB cluster can be created.</p>"
  )
  @as("AvailabilityZones")
  availabilityZones: option<stringList>,
}
type awsRdsDbClusterOptionGroupMemberships = array<awsRdsDbClusterOptionGroupMembership>
type awsRdsDbClusterMembers = array<awsRdsDbClusterMember>
type awsRdsDbClusterAssociatedRoles = array<awsRdsDbClusterAssociatedRole>
@ocaml.doc("<p>Details about a Lambda layer version.</p>")
type awsLambdaLayerVersionDetails = {
  @ocaml.doc("<p>Indicates when the version was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedDate")
  createdDate: option<nonEmptyString>,
  @ocaml.doc("<p>The layer's compatible runtimes. Maximum number of five items.</p>
         <p>Valid values: <code>nodejs10.x</code> | <code>nodejs12.x</code> | <code>java8</code> |
            <code>java11</code> | <code>python2.7</code> | <code>python3.6</code> |
            <code>python3.7</code> | <code>python3.8</code> | <code>dotnetcore1.0</code> |
            <code>dotnetcore2.1</code> | <code>go1.x</code> | <code>ruby2.5</code> |
            <code>provided</code>
         </p>")
  @as("CompatibleRuntimes")
  compatibleRuntimes: option<nonEmptyStringList>,
  @ocaml.doc("<p>The version number.</p>") @as("Version")
  version: option<awsLambdaLayerVersionNumber>,
}
@ocaml.doc(
  "<p>The VPC security groups and subnets that are attached to a Lambda function. For more information, see VPC Settings.</p>"
)
type awsLambdaFunctionVpcConfig = {
  @ocaml.doc("<p>The ID of the VPC.</p>") @as("VpcId") vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>A list of VPC subnet IDs.</p>") @as("SubnetIds")
  subnetIds: option<nonEmptyStringList>,
  @ocaml.doc("<p>A list of VPC security groups IDs.</p>") @as("SecurityGroupIds")
  securityGroupIds: option<nonEmptyStringList>,
}
type awsLambdaFunctionLayerList = array<awsLambdaFunctionLayer>
@ocaml.doc("<p>A function's environment variable settings.</p>")
type awsLambdaFunctionEnvironment = {
  @ocaml.doc("<p>An <code>AwsLambdaFunctionEnvironmentError</code> object.</p>") @as("Error")
  error: option<awsLambdaFunctionEnvironmentError>,
  @ocaml.doc("<p>Environment variable key-value pairs.</p>") @as("Variables")
  variables: option<fieldMap>,
}
type awsIamUserPolicyList = array<awsIamUserPolicy>
type awsIamRolePolicyList = array<awsIamRolePolicy>
type awsIamPolicyVersionList = array<awsIamPolicyVersion>
type awsIamInstanceProfileRoles = array<awsIamInstanceProfileRole>
type awsIamGroupPolicyList = array<awsIamGroupPolicy>
type awsIamAttachedManagedPolicyList = array<awsIamAttachedManagedPolicy>
@ocaml.doc("<p>Provides information about the session that the key was used for.</p>")
type awsIamAccessKeySessionContext = {
  @ocaml.doc("<p>Information about the entity that created the session.</p>") @as("SessionIssuer")
  sessionIssuer: option<awsIamAccessKeySessionContextSessionIssuer>,
  @ocaml.doc("<p>Attributes of the session that the key was used for.</p>") @as("Attributes")
  attributes: option<awsIamAccessKeySessionContextAttributes>,
}
@ocaml.doc("<p>Lists the policies that are enabled for a load balancer listener.</p>")
type awsElbLoadBalancerListenerDescription = {
  @ocaml.doc("<p>The policies enabled for the listener.</p>") @as("PolicyNames")
  policyNames: option<stringList>,
  @ocaml.doc("<p>Information about the listener.</p>") @as("Listener")
  listener: option<awsElbLoadBalancerListener>,
}
type awsElbLoadBalancerInstances = array<awsElbLoadBalancerInstance>
@ocaml.doc("<p>Provides information about the configuration of an EC2 instance for the load
         balancer.</p>")
type awsElbLoadBalancerBackendServerDescription = {
  @ocaml.doc("<p>The names of the policies that are enabled for the EC2 instance.</p>")
  @as("PolicyNames")
  policyNames: option<stringList>,
  @ocaml.doc("<p>The port on which the EC2 instance is listening.</p>") @as("InstancePort")
  instancePort: option<integer_>,
}
@ocaml.doc("<p>Contains attributes for the load balancer.</p>")
type awsElbLoadBalancerAttributes = {
  @ocaml.doc("<p>Cross-zone load balancing settings for the load balancer.</p>
         <p>If cross-zone load balancing is enabled, the load balancer routes the request traffic
         evenly across all instances regardless of the Availability Zones.</p>")
  @as("CrossZoneLoadBalancing")
  crossZoneLoadBalancing: option<awsElbLoadBalancerCrossZoneLoadBalancing>,
  @ocaml.doc("<p>Connection settings for the load balancer.</p>
         <p>If an idle timeout is configured, the load balancer allows connections to remain idle
         for the specified duration. When a connection is idle, no data is sent over the
         connection.</p>")
  @as("ConnectionSettings")
  connectionSettings: option<awsElbLoadBalancerConnectionSettings>,
  @ocaml.doc("<p>Information about the connection draining configuration for the load balancer.</p>
         <p>If connection draining is enabled, the load balancer allows existing requests to
         complete before it shifts traffic away from a deregistered or unhealthy instance.</p>")
  @as("ConnectionDraining")
  connectionDraining: option<awsElbLoadBalancerConnectionDraining>,
  @ocaml.doc("<p>Information about the access log configuration for the load balancer.</p>
         <p>If the access log is enabled, the load balancer captures detailed information about all
         requests. It delivers the information to a specified S3 bucket.</p>")
  @as("AccessLog")
  accessLog: option<awsElbLoadBalancerAccessLog>,
}
type awsElbLbCookieStickinessPolicies = array<awsElbLbCookieStickinessPolicy>
type awsElbAppCookieStickinessPolicies = array<awsElbAppCookieStickinessPolicy>
@ocaml.doc("<p>Information that Amazon ES derives based on <code>VPCOptions</code> for the
         domain.</p>")
type awsElasticsearchDomainVPCOptions = {
  @ocaml.doc("<p>ID for the VPC.</p>") @as("VPCId") vpcid: option<nonEmptyString>,
  @ocaml.doc("<p>A list of subnet IDs associated with the VPC endpoints for the domain.</p>")
  @as("SubnetIds")
  subnetIds: option<nonEmptyStringList>,
  @ocaml.doc(
    "<p>The list of security group IDs associated with the VPC endpoints for the domain.</p>"
  )
  @as("SecurityGroupIds")
  securityGroupIds: option<nonEmptyStringList>,
  @ocaml.doc("<p>The list of Availability Zones associated with the VPC subnets.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<nonEmptyStringList>,
}
type awsElasticBeanstalkEnvironmentOptionSettings = array<
  awsElasticBeanstalkEnvironmentOptionSetting,
>
type awsElasticBeanstalkEnvironmentEnvironmentLinks = array<
  awsElasticBeanstalkEnvironmentEnvironmentLink,
>
type awsEc2VolumeAttachmentList = array<awsEc2VolumeAttachment>
type awsEc2SecurityGroupUserIdGroupPairList = array<awsEc2SecurityGroupUserIdGroupPair>
type awsEc2SecurityGroupPrefixListIdList = array<awsEc2SecurityGroupPrefixListId>
type awsEc2SecurityGroupIpv6RangeList = array<awsEc2SecurityGroupIpv6Range>
type awsEc2SecurityGroupIpRangeList = array<awsEc2SecurityGroupIpRange>
type awsEc2NetworkInterfaceSecurityGroupList = array<awsEc2NetworkInterfaceSecurityGroup>
type awsEc2NetworkInterfacePrivateIpAddressList = array<
  awsEc2NetworkInterfacePrivateIpAddressDetail,
>
type awsEc2NetworkInterfaceIpV6AddressList = array<awsEc2NetworkInterfaceIpV6AddressDetail>
@ocaml.doc(
  "<p>A rule for the network ACL. Each rule allows or denies access based on the IP address, traffic direction, port, and protocol.</p>"
)
type awsEc2NetworkAclEntry = {
  @ocaml.doc("<p>The rule number. The rules are processed in order by their number.</p>")
  @as("RuleNumber")
  ruleNumber: option<integer_>,
  @ocaml.doc("<p>Whether the rule is used to allow access or deny access.</p>") @as("RuleAction")
  ruleAction: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The protocol that the rule applies to. To deny or allow access to all protocols, use the value -1.</p>"
  )
  @as("Protocol")
  protocol: option<nonEmptyString>,
  @ocaml.doc("<p>For TCP or UDP protocols, the range of ports that the rule applies to.</p>")
  @as("PortRange")
  portRange: option<portRangeFromTo>,
  @ocaml.doc("<p>The IPV6 network range for which to deny or allow access.</p>")
  @as("Ipv6CidrBlock")
  ipv6CidrBlock: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The Internet Control Message Protocol (ICMP) type and code for which to deny or allow access.</p>"
  )
  @as("IcmpTypeCode")
  icmpTypeCode: option<icmpTypeCode>,
  @ocaml.doc(
    "<p>Whether the rule is an egress rule. An egress rule is a rule that applies to traffic that leaves the subnet.</p>"
  )
  @as("Egress")
  egress: option<boolean_>,
  @ocaml.doc("<p>The IPV4 network range for which to deny or allow access.</p>") @as("CidrBlock")
  cidrBlock: option<nonEmptyString>,
}
type awsEc2NetworkAclAssociationList = array<awsEc2NetworkAclAssociation>
@ocaml.doc("<p>The details of an Amazon EC2 instance.</p>")
type awsEc2InstanceDetails = {
  @ocaml.doc("<p>Indicates when the instance was launched.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LaunchedAt")
  launchedAt: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the subnet that the instance was launched in.</p>")
  @as("SubnetId")
  subnetId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the VPC that the instance was launched in.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The IAM profile ARN of the instance.</p>") @as("IamInstanceProfileArn")
  iamInstanceProfileArn: option<nonEmptyString>,
  @ocaml.doc("<p>The key name associated with the instance.</p>") @as("KeyName")
  keyName: option<nonEmptyString>,
  @ocaml.doc("<p>The IPv6 addresses associated with the instance.</p>") @as("IpV6Addresses")
  ipV6Addresses: option<stringList>,
  @ocaml.doc("<p>The IPv4 addresses associated with the instance.</p>") @as("IpV4Addresses")
  ipV4Addresses: option<stringList>,
  @ocaml.doc("<p>The Amazon Machine Image (AMI) ID of the instance.</p>") @as("ImageId")
  imageId: option<nonEmptyString>,
  @ocaml.doc("<p>The instance type of the instance. </p>") @as("Type")
  type_: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a global secondary index for a DynamoDB table replica.</p>")
type awsDynamoDbTableReplicaGlobalSecondaryIndex = {
  @ocaml.doc("<p>Replica-specific configuration for the provisioned throughput for the index.</p>")
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<awsDynamoDbTableProvisionedThroughputOverride>,
  @ocaml.doc("<p>The name of the index.</p>") @as("IndexName") indexName: option<nonEmptyString>,
}
@ocaml.doc("<p>For global and local secondary indexes, identifies the attributes that are copied from
         the table into the index.</p>")
type awsDynamoDbTableProjection = {
  @ocaml.doc("<p>The types of attributes that are projected into the index.</p>")
  @as("ProjectionType")
  projectionType: option<nonEmptyString>,
  @ocaml.doc("<p>The nonkey attributes that are projected into the index. For each attribute, provide the
         attribute name.</p>")
  @as("NonKeyAttributes")
  nonKeyAttributes: option<stringList>,
}
type awsDynamoDbTableKeySchemaList = array<awsDynamoDbTableKeySchema>
type awsDynamoDbTableAttributeDefinitionList = array<awsDynamoDbTableAttributeDefinition>
@ocaml.doc("<p>Contains the cross-origin resource sharing (CORS) configuration for the API. CORS is
         only supported for HTTP APIs.</p>")
type awsCorsConfiguration = {
  @ocaml.doc("<p>The allowed headers for CORS requests.</p>") @as("AllowHeaders")
  allowHeaders: option<nonEmptyStringList>,
  @ocaml.doc("<p>The allowed methods for CORS requests.</p>") @as("AllowMethods")
  allowMethods: option<nonEmptyStringList>,
  @ocaml.doc("<p>The number of seconds for which the browser caches preflight request results.</p>")
  @as("MaxAge")
  maxAge: option<integer_>,
  @ocaml.doc("<p>The exposed headers for CORS requests.</p>") @as("ExposeHeaders")
  exposeHeaders: option<nonEmptyStringList>,
  @ocaml.doc("<p>Indicates whether the CORS request includes credentials.</p>")
  @as("AllowCredentials")
  allowCredentials: option<boolean_>,
  @ocaml.doc("<p>The allowed origins for CORS requests.</p>") @as("AllowOrigins")
  allowOrigins: option<nonEmptyStringList>,
}
@ocaml.doc("<p>Information about the VPC configuration that AWS CodeBuild accesses.</p>")
type awsCodeBuildProjectVpcConfig = {
  @ocaml.doc("<p>A list of one or more security group IDs in your Amazon VPC.</p>")
  @as("SecurityGroupIds")
  securityGroupIds: option<nonEmptyStringList>,
  @ocaml.doc("<p>A list of one or more subnet IDs in your Amazon VPC.</p>") @as("Subnets")
  subnets: option<nonEmptyStringList>,
  @ocaml.doc("<p>The ID of the VPC.</p>") @as("VpcId") vpcId: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about the build environment for this build project.</p>")
type awsCodeBuildProjectEnvironment = {
  @ocaml.doc("<p>The type of build environment to use for related builds.</p>
         <p>The environment type <code>ARM_CONTAINER</code> is available only in Regions US East (N.
         Virginia), US East (Ohio), US West (Oregon), Europe (Ireland), Asia Pacific (Mumbai), Asia
         Pacific (Tokyo), Asia Pacific (Sydney), and Europe (Frankfurt).</p>
         <p>The environment type <code>LINUX_CONTAINER</code> with compute type
         build.general1.2xlarge is available only in Regions US East (N. Virginia), US East (N.
         Virginia), US West (Oregon), Canada (Central), Europe (Ireland), Europe (London), Europe
         (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul), Asia Pacific (Singapore), Asia
         Pacific (Sydney), China (Beijing), and China (Ningxia).</p>
         <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in Regions US
         East (N. Virginia), US East (N. Virginia), US West (Oregon), Canada (Central), Europe
         (Ireland), Europe (London), Europe (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul),
         Asia Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and China
         (Ningxia).</p>
         <p>Valid values: <code>WINDOWS_CONTAINER</code> | <code>LINUX_CONTAINER</code> |
            <code>LINUX_GPU_CONTAINER</code> | <code>ARM_CONTAINER</code>
         </p>")
  @as("Type")
  type_: option<nonEmptyString>,
  @ocaml.doc("<p>The credentials for access to a private registry.</p>") @as("RegistryCredential")
  registryCredential: option<awsCodeBuildProjectEnvironmentRegistryCredential>,
  @ocaml.doc("<p>The type of credentials AWS CodeBuild uses to pull images in your build.</p>
         <p>Valid values:</p>
         <ul>
            <li>
               <p>
                  <code>CODEBUILD</code> specifies that AWS CodeBuild uses its own credentials. This
               requires that you modify your ECR repository policy to trust the AWS CodeBuild
               service principal.</p>
            </li>
            <li>
               <p>
                  <code>SERVICE_ROLE</code> specifies that AWS CodeBuild uses your build project's
               service role.</p>
            </li>
         </ul>
         <p>When you use a cross-account or private registry image, you must use
            <code>SERVICE_ROLE</code> credentials. When you use an AWS CodeBuild curated image, you
         must use <code>CODEBUILD</code> credentials.</p>")
  @as("ImagePullCredentialsType")
  imagePullCredentialsType: option<nonEmptyString>,
  @ocaml.doc("<p>The certificate to use with this build project.</p>") @as("Certificate")
  certificate: option<nonEmptyString>,
}
@ocaml.doc("<p>A complex type that describes the Amazon S3 bucket, HTTP server (for example, a web
         server), Amazon Elemental MediaStore, or other server from which CloudFront gets your
         files.</p>")
type awsCloudFrontDistributionOriginItem = {
  @ocaml.doc("<p>An origin that is an S3 bucket that is not configured with static website
         hosting.</p>")
  @as("S3OriginConfig")
  s3OriginConfig: option<awsCloudFrontDistributionOriginS3OriginConfig>,
  @ocaml.doc(
    "<p>An optional element that causes CloudFront to request your content from a directory in your Amazon S3 bucket or your custom origin.</p>"
  )
  @as("OriginPath")
  originPath: option<nonEmptyString>,
  @ocaml.doc("<p>A unique identifier for the origin or origin group.</p>") @as("Id")
  id: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Amazon S3 origins: The DNS name of the Amazon S3 bucket from which you want CloudFront to get objects for this origin.</p>"
  )
  @as("DomainName")
  domainName: option<nonEmptyString>,
}
@ocaml.doc("<p>The status codes that cause an origin group to fail over.</p>")
type awsCloudFrontDistributionOriginGroupFailoverStatusCodes = {
  @ocaml.doc("<p>The number of status codes that can cause a failover.</p>") @as("Quantity")
  quantity: option<integer_>,
  @ocaml.doc("<p>The list of status code values that can cause a failover to the next origin.</p>")
  @as("Items")
  items: option<awsCloudFrontDistributionOriginGroupFailoverStatusCodesItemList>,
}
type awsCloudFrontDistributionCacheBehaviorsItemList = array<awsCloudFrontDistributionCacheBehavior>
type awsCertificateManagerCertificateKeyUsages = array<awsCertificateManagerCertificateKeyUsage>
type awsCertificateManagerCertificateExtendedKeyUsages = array<
  awsCertificateManagerCertificateExtendedKeyUsage,
>
@ocaml.doc("<p>Contains information about one of the following:</p>
         <ul>
            <li>
               <p>The initial validation of each domain name that occurs as a result of the
                  <code>RequestCertificate</code> request</p>
            </li>
            <li>
               <p>The validation of each domain name in the certificate, as it pertains to AWS
               Certificate Manager managed renewal</p>
            </li>
         </ul>")
type awsCertificateManagerCertificateDomainValidationOption = {
  @ocaml.doc("<p>The validation status of the domain name.</p>") @as("ValidationStatus")
  validationStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The method used to validate the domain name.</p>") @as("ValidationMethod")
  validationMethod: option<nonEmptyString>,
  @ocaml.doc("<p>A list of email addresses that AWS Certificate Manager uses to send domain validation
         emails.</p>")
  @as("ValidationEmails")
  validationEmails: option<stringList>,
  @ocaml.doc("<p>The domain name that AWS Certificate Manager uses to send domain validation
         emails.</p>")
  @as("ValidationDomain")
  validationDomain: option<nonEmptyString>,
  @ocaml.doc("<p>The CNAME record that is added to the DNS database for domain validation.</p>")
  @as("ResourceRecord")
  resourceRecord: option<awsCertificateManagerCertificateResourceRecord>,
  @ocaml.doc("<p>A fully qualified domain name (FQDN) in the certificate.</p>") @as("DomainName")
  domainName: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides details about an auto scaling group.</p>")
type awsAutoScalingAutoScalingGroupDetails = {
  @ocaml.doc("<p>Indicates when the auto scaling group was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedTime")
  createdTime: option<nonEmptyString>,
  @ocaml.doc("<p>The amount of time, in seconds, that Amazon EC2 Auto Scaling waits before it checks the
         health status of an EC2 instance that has come into service.</p>")
  @as("HealthCheckGracePeriod")
  healthCheckGracePeriod: option<integer_>,
  @ocaml.doc("<p>The service to use for the health checks.</p>") @as("HealthCheckType")
  healthCheckType: option<nonEmptyString>,
  @ocaml.doc("<p>The list of load balancers associated with the group.</p>")
  @as("LoadBalancerNames")
  loadBalancerNames: option<stringList>,
  @ocaml.doc("<p>The name of the launch configuration.</p>") @as("LaunchConfigurationName")
  launchConfigurationName: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about a version 2 stage for Amazon API Gateway.</p>")
type awsApiGatewayV2StageDetails = {
  @ocaml.doc("<p>Indicates whether the stage is managed by API Gateway.</p>")
  @as("ApiGatewayManaged")
  apiGatewayManaged: option<boolean_>,
  @ocaml.doc("<p>The status of the last deployment of a stage. Supported only if the stage has automatic
         deployment enabled.</p>")
  @as("LastDeploymentStatusMessage")
  lastDeploymentStatusMessage: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether updates to an API automatically trigger a new deployment.</p>")
  @as("AutoDeploy")
  autoDeploy: option<boolean_>,
  @ocaml.doc("<p>Information about settings for logging access for the stage.</p>")
  @as("AccessLogSettings")
  accessLogSettings: option<awsApiGatewayAccessLogSettings>,
  @ocaml.doc("<p>A map that defines the stage variables for the stage.</p>
         <p>Variable names can have alphanumeric and underscore characters.</p>
         <p>Variable values can contain the following characters:</p>
         <ul>
            <li>
               <p>Uppercase and lowercase letters</p>
            </li>
            <li>
               <p>Numbers</p>
            </li>
            <li>
               <p>Special characters -._~:/?#&=,</p>
            </li>
         </ul>")
  @as("StageVariables")
  stageVariables: option<fieldMap>,
  @ocaml.doc("<p>The name of the stage.</p>") @as("StageName") stageName: option<nonEmptyString>,
  @ocaml.doc("<p>The route settings for the stage.</p>") @as("RouteSettings")
  routeSettings: option<awsApiGatewayV2RouteSettings>,
  @ocaml.doc("<p>Indicates when the stage was most recently updated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastUpdatedDate")
  lastUpdatedDate: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the deployment that the stage is associated with. </p>")
  @as("DeploymentId")
  deploymentId: option<nonEmptyString>,
  @ocaml.doc("<p>Default route settings for the stage.</p>") @as("DefaultRouteSettings")
  defaultRouteSettings: option<awsApiGatewayV2RouteSettings>,
  @ocaml.doc("<p>The description of the stage.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the stage was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedDate")
  createdDate: option<nonEmptyString>,
}
type awsApiGatewayMethodSettingsList = array<awsApiGatewayMethodSettings>
@ocaml.doc("<p>Contains information about the endpoints for the API.</p>")
type awsApiGatewayEndpointConfiguration = {
  @ocaml.doc("<p>A list of endpoint types for the REST API.</p>
         <p>For an edge-optimized API, the endpoint type is <code>EDGE</code>. For a Regional API,
         the endpoint type is <code>REGIONAL</code>. For a private API, the endpoint type is
            <code>PRIVATE</code>.</p>")
  @as("Types")
  types: option<nonEmptyStringList>,
}
@ocaml.doc("<p>Contains information about settings for canary deployment in the stage.</p>")
type awsApiGatewayCanarySettings = {
  @ocaml.doc("<p>Indicates whether the canary deployment uses the stage cache.</p>")
  @as("UseStageCache")
  useStageCache: option<boolean_>,
  @ocaml.doc("<p>Stage variables that are overridden in the canary release deployment. The variables
         include new stage variables that are introduced in the canary.</p>
         <p>Each variable is represented as a string-to-string map between the stage variable name
         and the variable value.</p>")
  @as("StageVariableOverrides")
  stageVariableOverrides: option<fieldMap>,
  @ocaml.doc("<p>The deployment identifier for the canary deployment.</p>") @as("DeploymentId")
  deploymentId: option<nonEmptyString>,
  @ocaml.doc("<p>The percentage of traffic that is diverted to a canary deployment.</p>")
  @as("PercentTraffic")
  percentTraffic: option<double>,
}
type availabilityZones = array<availabilityZone>
type adminAccounts = array<adminAccount>
type actionTargetList = array<actionTarget>
@ocaml.doc("<p>For <code>AwsApiAction</code>, <code>NetworkConnectionAction</code>, and
            <code>PortProbeAction</code>, <code>RemoteIpDetails</code> provides information about
         the remote IP address that was involved in the action.</p>")
type actionRemoteIpDetails = {
  @ocaml.doc("<p>The coordinates of the location of the remote IP address.</p>") @as("GeoLocation")
  geoLocation: option<geoLocation>,
  @ocaml.doc("<p>The city where the remote IP address is located.</p>") @as("City")
  city: option<city>,
  @ocaml.doc("<p>The country where the remote IP address is located.</p>") @as("Country")
  country: option<country>,
  @ocaml.doc("<p>The internet service provider (ISP) organization associated with the remote IP
         address.</p>")
  @as("Organization")
  organization: option<ipOrganizationDetails>,
  @ocaml.doc("<p>The IP address.</p>") @as("IpAddressV4") ipAddressV4: option<nonEmptyString>,
}
type accountDetailsList = array<accountDetails>
@ocaml.doc("<p>A vulnerability associated with a finding.</p>")
type vulnerability = {
  @ocaml.doc("<p>A list of URLs that provide additional information about the vulnerability.</p>")
  @as("ReferenceUrls")
  referenceUrls: option<stringList>,
  @ocaml.doc("<p>Information about the vendor that generates the vulnerability report.</p>")
  @as("Vendor")
  vendor: option<vulnerabilityVendor>,
  @ocaml.doc("<p>List of vulnerabilities that are related to this vulnerability.</p>")
  @as("RelatedVulnerabilities")
  relatedVulnerabilities: option<stringList>,
  @ocaml.doc("<p>CVSS scores from the advisory related to the vulnerability.</p>") @as("Cvss")
  cvss: option<cvssList>,
  @ocaml.doc("<p>List of software packages that have the vulnerability.</p>")
  @as("VulnerablePackages")
  vulnerablePackages: option<softwarePackageList>,
  @ocaml.doc("<p>The identifier of the vulnerability.</p>") @as("Id") id: nonEmptyString,
}
type standardsSubscriptions = array<standardsSubscription>
type standardsSubscriptionRequests = array<standardsSubscriptionRequest>
type standardsControls = array<standardsControl>
type productsList = array<product>
@ocaml.doc("<p>A port scan that was part of the port probe. For each scan, PortProbeDetails provides
         information about the local IP address and port that were scanned, and the remote IP
         address that the scan originated from.</p>")
type portProbeDetail = {
  @ocaml.doc("<p>Provides information about the remote IP address that performed the scan.</p>")
  @as("RemoteIpDetails")
  remoteIpDetails: option<actionRemoteIpDetails>,
  @ocaml.doc("<p>Provides information about the IP address where the scanned port is located.</p>")
  @as("LocalIpDetails")
  localIpDetails: option<actionLocalIpDetails>,
  @ocaml.doc("<p>Provides information about the port that was scanned.</p>") @as("LocalPortDetails")
  localPortDetails: option<actionLocalPortDetails>,
}
type pages = array<page>
@ocaml.doc("<p>Information about the destination of the next component in the network path.</p>")
type networkPathComponentDetails = {
  @ocaml.doc("<p>A list of port ranges for the destination.</p>") @as("PortRanges")
  portRanges: option<portRangeList>,
  @ocaml.doc("<p>The IP addresses of the destination.</p>") @as("Address")
  address: option<stringList>,
}
@ocaml.doc("<p>Provided if <code>ActionType</code> is <code>NETWORK_CONNECTION</code>. It provides
         details about the attempted network connection that was detected.</p>")
type networkConnectionAction = {
  @ocaml.doc("<p>Indicates whether the network connection attempt was blocked.</p>") @as("Blocked")
  blocked: option<boolean_>,
  @ocaml.doc("<p>The protocol used to make the network connection request.</p>") @as("Protocol")
  protocol: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the port on the EC2 instance.</p>") @as("LocalPortDetails")
  localPortDetails: option<actionLocalPortDetails>,
  @ocaml.doc("<p>Information about the port on the remote IP address.</p>") @as("RemotePortDetails")
  remotePortDetails: option<actionRemotePortDetails>,
  @ocaml.doc("<p>Information about the remote IP address that issued the network connection
         request.</p>")
  @as("RemoteIpDetails")
  remoteIpDetails: option<actionRemoteIpDetails>,
  @ocaml.doc("<p>The direction of the network connection request (<code>IN</code> or
         <code>OUT</code>).</p>")
  @as("ConnectionDirection")
  connectionDirection: option<nonEmptyString>,
}
@ocaml.doc("<p>The insight results returned by the <code>GetInsightResults</code> operation.</p>")
type insightResults = {
  @ocaml.doc("<p>The list of insight result values returned by the <code>GetInsightResults</code>
         operation.</p>")
  @as("ResultValues")
  resultValues: insightResultValueList,
  @ocaml.doc("<p>The attribute that the findings are grouped by for the insight whose results are
         returned by the <code>GetInsightResults</code> operation.</p>")
  @as("GroupByAttribute")
  groupByAttribute: nonEmptyString,
  @ocaml.doc("<p>The ARN of the insight whose results are returned by the <code>GetInsightResults</code>
         operation.</p>")
  @as("InsightArn")
  insightArn: nonEmptyString,
}
@ocaml.doc(
  "<p>In a <code>BatchImportFindings</code> request, finding providers use <code>FindingProviderFields</code> to provide and update values for confidence, criticality, related findings, severity, and types.</p>"
)
type findingProviderFields = {
  @ocaml.doc("<p>One or more finding types in the format of <code>namespace/category/classifier</code>
         that classify a finding.</p>
         <p>Valid namespace values are: Software and Configuration Checks | TTPs | Effects | Unusual
         Behaviors | Sensitive Data Identifications</p>")
  @as("Types")
  types: option<typeList>,
  @ocaml.doc("<p>The severity of a finding.</p>") @as("Severity")
  severity: option<findingProviderSeverity>,
  @ocaml.doc("<p>A list of findings that are related to the current finding.</p>")
  @as("RelatedFindings")
  relatedFindings: option<relatedFindingList>,
  @ocaml.doc("<p>The level of importance assigned to the resources associated with the finding.</p>
         <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
         is reserved for the most critical resources.</p>")
  @as("Criticality")
  criticality: option<ratioScale>,
  @ocaml.doc("<p>A finding's confidence. Confidence is defined as the likelihood that a finding
         accurately identifies the behavior or issue that it was intended to identify.</p>
         <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
         confidence and 100 means 100 percent confidence.</p>")
  @as("Confidence")
  confidence: option<ratioScale>,
}
type dateFilterList = array<dateFilter>
@ocaml.doc("<p>Contains finding details that are specific to control-based findings. Only returned for
         findings generated from controls.</p>")
type compliance = {
  @ocaml.doc("<p>For findings generated from controls, a list of reasons behind the value of
            <code>Status</code>. For the list of status reason codes and their meanings, see <a href=\"https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-standards-results.html#securityhub-standards-results-asff\">Standards-related information in the ASFF</a> in the
            <i>AWS Security Hub User Guide</i>. </p>")
  @as("StatusReasons")
  statusReasons: option<statusReasonsList>,
  @ocaml.doc("<p>For a control, the industry or regulatory framework requirements that are related to the
         control. The check for that control is aligned with these requirements.</p>")
  @as("RelatedRequirements")
  relatedRequirements: option<relatedRequirementsList>,
  @ocaml.doc("<p>The result of a standards check.</p>
         <p>The valid values for <code>Status</code> are as follows.</p>
         <ul>
            <li>
               <ul>
                  <li>
                     <p>
                        <code>PASSED</code> - Standards check passed for all evaluated
                     resources.</p>
                  </li>
                  <li>
                     <p>
                        <code>WARNING</code> - Some information is missing or this check is not
                     supported for your configuration.</p>
                  </li>
                  <li>
                     <p>
                        <code>FAILED</code> - Standards check failed for at least one evaluated
                     resource.</p>
                  </li>
                  <li>
                     <p>
                        <code>NOT_AVAILABLE</code> - Check could not be performed due to a service
                     outage, API error, or because the result of the AWS Config evaluation was
                        <code>NOT_APPLICABLE</code>. If the AWS Config evaluation result was
                        <code>NOT_APPLICABLE</code>, then after 3 days, Security Hub automatically archives
                     the finding.</p>
                  </li>
               </ul>
            </li>
         </ul>")
  @as("Status")
  status: option<complianceStatus>,
}
type batchUpdateFindingsUnprocessedFindingsList = array<batchUpdateFindingsUnprocessedFinding>
@ocaml.doc("<p>Details for a rule in a WAF WebACL.</p>")
type awsWafWebAclRule = {
  @ocaml.doc("<p>The rule type.</p>
         <p>Valid values: <code>REGULAR</code> | <code>RATE_BASED</code> | <code>GROUP</code>
         </p>
         <p>The default is <code>REGULAR</code>.</p>")
  @as("Type")
  type_: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier for a rule.</p>") @as("RuleId") ruleId: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies the order in which the rules in a WebACL are evaluated. Rules with a lower
         value for <code>Priority</code> are evaluated before rules with a higher value. The value
         must be a unique integer. If you add multiple rules to a WebACL, the values do not need to
         be consecutive.</p>")
  @as("Priority")
  priority: option<integer_>,
  @ocaml.doc("<p>Use the <code>OverrideAction</code> to test your RuleGroup.</p>
         <p>Any rule in a RuleGroup can potentially block a request. If you set the
            <code>OverrideAction</code> to <code>None</code>, the RuleGroup blocks a request if any
         individual rule in the RuleGroup matches the request and is configured to block that
         request.</p>
         <p>However, if you first want to test the RuleGroup, set the <code>OverrideAction</code> to
            <code>Count</code>. The RuleGroup then overrides any block action specified by
         individual rules contained within the group. Instead of blocking matching requests, those
         requests are counted.</p>
         <p>
            <code>ActivatedRule</code>|<code>OverrideAction</code> applies only when updating or
         adding a RuleGroup to a WebACL. In this case you do not use
            <code>ActivatedRule</code>|<code>Action</code>. For all other update requests,
            <code>ActivatedRule</code>|<code>Action</code> is used instead of
            <code>ActivatedRule</code>|<code>OverrideAction</code>. </p>")
  @as("OverrideAction")
  overrideAction: option<wafOverrideAction>,
  @ocaml.doc("<p>Rules to exclude from a rule group.</p>") @as("ExcludedRules")
  excludedRules: option<wafExcludedRuleList>,
  @ocaml.doc("<p>Specifies the action that CloudFront or AWS WAF takes when a web request matches the
         conditions in the rule. </p>")
  @as("Action")
  action: option<wafAction>,
}
@ocaml.doc("<p>Provides information about the state of a patch on an instance based on the patch
         baseline that was used to patch the instance.</p>")
type awsSsmPatchComplianceDetails = {
  @ocaml.doc("<p>Information about the status of a patch.</p>") @as("Patch")
  patch: option<awsSsmPatch>,
}
@ocaml.doc("<p>A wrapper type for the topic's Amazon Resource Name (ARN).</p>")
type awsSnsTopicDetails = {
  @ocaml.doc("<p>The subscription's owner.</p>") @as("Owner") owner: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the topic.</p>") @as("TopicName") topicName: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Subscription is an embedded property that describes the subscription endpoints of an Amazon SNS topic.</p>"
  )
  @as("Subscription")
  subscription: option<awsSnsTopicSubscriptionList>,
  @ocaml.doc("<p>The ID of an AWS managed customer master key (CMK) for Amazon SNS or a custom
         CMK.</p>")
  @as("KmsMasterKeyId")
  kmsMasterKeyId: option<nonEmptyString>,
}
type awsS3BucketServerSideEncryptionRules = array<awsS3BucketServerSideEncryptionRule>
@ocaml.doc("<p>A cluster parameter group that is associated with an Amazon Redshift cluster.</p>")
type awsRedshiftClusterClusterParameterGroup = {
  @ocaml.doc("<p>The name of the parameter group.</p>") @as("ParameterGroupName")
  parameterGroupName: option<nonEmptyString>,
  @ocaml.doc("<p>The status of updates to the parameters.</p>") @as("ParameterApplyStatus")
  parameterApplyStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The list of parameter statuses.</p>") @as("ClusterParameterStatusList")
  clusterParameterStatusList: option<awsRedshiftClusterClusterParameterStatusList>,
}
type awsRdsDbSubnetGroupSubnets = array<awsRdsDbSubnetGroupSubnet>
@ocaml.doc("<p>Provides details about an Amazon RDS DB cluster snapshot.</p>")
type awsRdsDbSnapshotDetails = {
  @ocaml.doc("<p>The identifier for the source DB instance.</p>") @as("DbiResourceId")
  dbiResourceId: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The number of CPU cores and the number of threads per core for the DB instance class of the DB instance.</p>"
  )
  @as("ProcessorFeatures")
  processorFeatures: option<awsRdsDbProcessorFeatures>,
  @ocaml.doc("<p>Whether mapping of IAM accounts to database accounts is enabled.</p>")
  @as("IamDatabaseAuthenticationEnabled")
  iamDatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>The time zone of the DB snapshot.</p>") @as("Timezone")
  timezone: option<nonEmptyString>,
  @ocaml.doc(
    "<p>If <code>Encrypted</code> is <code>true</code>, the AWS KMS key identifier for the encrypted DB snapshot.</p>"
  )
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the DB snapshot is encrypted.</p>") @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc(
    "<p>The ARN from the key store with which to associate the instance for TDE encryption.</p>"
  )
  @as("TdeCredentialArn")
  tdeCredentialArn: option<nonEmptyString>,
  @ocaml.doc("<p>The storage type associated with the DB snapshot.</p>") @as("StorageType")
  storageType: option<nonEmptyString>,
  @ocaml.doc("<p>The DB snapshot ARN that the DB snapshot was copied from.</p>")
  @as("SourceDbSnapshotIdentifier")
  sourceDbSnapshotIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS Region that the DB snapshot was created in or copied from.</p>")
  @as("SourceRegion")
  sourceRegion: option<nonEmptyString>,
  @ocaml.doc("<p>The percentage of the estimated data that has been transferred.</p>")
  @as("PercentProgress")
  percentProgress: option<integer_>,
  @ocaml.doc("<p>The option group name for the DB snapshot.</p>") @as("OptionGroupName")
  optionGroupName: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot.</p>"
  )
  @as("Iops")
  iops: option<integer_>,
  @ocaml.doc("<p>The type of the DB snapshot.</p>") @as("SnapshotType")
  snapshotType: option<nonEmptyString>,
  @ocaml.doc("<p>License model information for the restored DB instance.</p>") @as("LicenseModel")
  licenseModel: option<nonEmptyString>,
  @ocaml.doc("<p>The version of the database engine.</p>") @as("EngineVersion")
  engineVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The master user name for the DB snapshot.</p>") @as("MasterUsername")
  masterUsername: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Specifies the time in Coordinated Universal Time (UTC) when the DB instance, from which the snapshot was taken, was created.</p>"
  )
  @as("InstanceCreateTime")
  instanceCreateTime: option<nonEmptyString>,
  @ocaml.doc("<p>The VPC ID associated with the DB snapshot.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Specifies the name of the Availability Zone in which the DB instance was located at the time of the DB snapshot.</p>"
  )
  @as("AvailabilityZone")
  availabilityZone: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The port that the database engine was listening on at the time of the snapshot.</p>"
  )
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The status of this DB snapshot.</p>") @as("Status") status: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The amount of storage (in gigabytes) to be initially allocated for the database instance.</p>"
  )
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>The name of the database engine to use for this DB instance.</p>") @as("Engine")
  engine: option<nonEmptyString>,
  @ocaml.doc("<p>When the snapshot was taken in Coordinated Universal Time (UTC).</p>")
  @as("SnapshotCreateTime")
  snapshotCreateTime: option<nonEmptyString>,
  @ocaml.doc("<p>A name for the DB instance.</p>") @as("DbInstanceIdentifier")
  dbInstanceIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The name or ARN of the DB snapshot that is used to restore the DB instance.</p>")
  @as("DbSnapshotIdentifier")
  dbSnapshotIdentifier: option<nonEmptyString>,
}
@ocaml.doc("<p>Changes to a DB instance that are currently pending.</p>")
type awsRdsDbPendingModifiedValues = {
  @ocaml.doc("<p>Processor features that are being updated.</p>") @as("ProcessorFeatures")
  processorFeatures: option<awsRdsDbProcessorFeatures>,
  @ocaml.doc("<p>A list of log types that are being enabled or disabled.</p>")
  @as("PendingCloudWatchLogsExports")
  pendingCloudWatchLogsExports: option<awsRdsPendingCloudWatchLogsExports>,
  @ocaml.doc("<p>The name of the new subnet group for the DB instance.</p>")
  @as("DbSubnetGroupName")
  dbSubnetGroupName: option<nonEmptyString>,
  @ocaml.doc("<p>The new CA certificate identifier for the DB instance.</p>")
  @as("CaCertificateIdentifier")
  caCertificateIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The new storage type for the DB instance.</p>") @as("StorageType")
  storageType: option<nonEmptyString>,
  @ocaml.doc("<p>The new DB instance identifier for the DB instance.</p>")
  @as("DbInstanceIdentifier")
  dbInstanceIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The new provisioned IOPS value for the DB instance.</p>") @as("Iops")
  iops: option<integer_>,
  @ocaml.doc("<p>The new license model value for the DB instance.</p>") @as("LicenseModel")
  licenseModel: option<nonEmptyString>,
  @ocaml.doc("<p>The new engine version for the DB instance.</p>") @as("EngineVersion")
  engineVersion: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Indicates that a single Availability Zone DB instance is changing to a multiple Availability Zone deployment.</p>"
  )
  @as("MultiAZ")
  multiAZ: option<boolean_>,
  @ocaml.doc("<p>The new backup retention period for the DB instance.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>The new port for the DB instance.</p>") @as("Port") port: option<integer_>,
  @ocaml.doc("<p>The new master user password for the DB instance.</p>") @as("MasterUserPassword")
  masterUserPassword: option<nonEmptyString>,
  @ocaml.doc("<p>The new value of the allocated storage for the DB instance.</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>The new DB instance class for the DB instance.</p>") @as("DbInstanceClass")
  dbInstanceClass: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about an Amazon RDS DB cluster.</p>")
type awsRdsDbClusterDetails = {
  @ocaml.doc("<p>Whether the mapping of IAM accounts to database accounts is enabled.</p>")
  @as("IamDatabaseAuthenticationEnabled")
  iamDatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>The list of instances that make up the DB cluster.</p>") @as("DbClusterMembers")
  dbClusterMembers: option<awsRdsDbClusterMembers>,
  @ocaml.doc("<p>The DB cluster identifier that the user assigned to the cluster. This identifier is the
         unique key that identifies a DB cluster.</p>")
  @as("DbClusterIdentifier")
  dbClusterIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The list of option group memberships for this DB cluster.</p>")
  @as("DbClusterOptionGroupMemberships")
  dbClusterOptionGroupMemberships: option<awsRdsDbClusterOptionGroupMemberships>,
  @ocaml.doc("<p>The subnet group that is associated with the DB cluster, including the name,
         description, and subnets in the subnet group.</p>")
  @as("DbSubnetGroup")
  dbSubnetGroup: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the DB cluster parameter group for the DB cluster.</p>")
  @as("DbClusterParameterGroup")
  dbClusterParameterGroup: option<nonEmptyString>,
  @ocaml.doc("<p>The Active Directory domain membership records that are associated with the DB
         cluster.</p>")
  @as("DomainMemberships")
  domainMemberships: option<awsRdsDbDomainMemberships>,
  @ocaml.doc("<p>Whether the DB cluster is a clone of a DB cluster owned by a different AWS
         account.</p>")
  @as("CrossAccountClone")
  crossAccountClone: option<boolean_>,
  @ocaml.doc("<p>Whether tags are copied from the DB cluster to snapshots of the DB cluster.</p>")
  @as("CopyTagsToSnapshot")
  copyTagsToSnapshot: option<boolean_>,
  @ocaml.doc("<p>The status of the database activity stream.</p>") @as("ActivityStreamStatus")
  activityStreamStatus: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the HTTP endpoint for an Aurora Serverless DB cluster is enabled.</p>")
  @as("HttpEndpointEnabled")
  httpEndpointEnabled: option<boolean_>,
  @ocaml.doc("<p>Whether the DB cluster has deletion protection enabled.</p>")
  @as("DeletionProtection")
  deletionProtection: option<boolean_>,
  @ocaml.doc("<p>The database engine mode of the DB cluster.</p>") @as("EngineMode")
  engineMode: option<nonEmptyString>,
  @ocaml.doc("<p>A list of log types that this DB cluster is configured to export to CloudWatch
         Logs.</p>")
  @as("EnabledCloudWatchLogsExports")
  enabledCloudWatchLogsExports: option<stringList>,
  @ocaml.doc("<p>Indicates when the DB cluster was created, in Universal Coordinated Time (UTC).</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<nonEmptyString>,
  @ocaml.doc("<p>A list of the IAM roles that are associated with the DB cluster.</p>")
  @as("AssociatedRoles")
  associatedRoles: option<awsRdsDbClusterAssociatedRoles>,
  @ocaml.doc("<p>The identifier of the DB cluster. The identifier must be unique within each AWS Region
         and is immutable.</p>")
  @as("DbClusterResourceId")
  dbClusterResourceId: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the AWS KMS master key that is used to encrypt the database instances in the
         DB cluster.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the DB cluster is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the identifier that Amazon Route 53 assigns when you create a hosted
         zone.</p>")
  @as("HostedZoneId")
  hostedZoneId: option<nonEmptyString>,
  @ocaml.doc("<p>A list of VPC security groups that the DB cluster belongs to.</p>")
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<awsRdsDbInstanceVpcSecurityGroups>,
  @ocaml.doc(
    "<p>The identifiers of the read replicas that are associated with this DB cluster.</p>"
  )
  @as("ReadReplicaIdentifiers")
  readReplicaIdentifiers: option<stringList>,
  @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal
         Coordinated Time (UTC).</p>
         <p>Uses the format <code><day>:HH:MM-<day>:HH:MM</code>.</p>
         <p>For the day values, use
            <code>mon</code>|<code>tue</code>|<code>wed</code>|<code>thu</code>|<code>fri</code>|<code>sat</code>|<code>sun</code>.</p>
         <p>For example, <code>sun:09:32-sun:10:02</code>.</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<nonEmptyString>,
  @ocaml.doc("<p>The range of time each day when automated backups are created, if automated backups are
         enabled.</p>
         <p>Uses the format <code>HH:MM-HH:MM</code>. For example, <code>04:52-05:22</code>.</p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the master user for the DB cluster.</p>") @as("MasterUsername")
  masterUsername: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The port number on which the DB instances in the DB cluster accept connections.</p>"
  )
  @as("Port")
  port: option<integer_>,
  @ocaml.doc("<p>The version number of the database engine to use.</p>") @as("EngineVersion")
  engineVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the database engine to use for this DB cluster.</p>") @as("Engine")
  engine: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the DB cluster has instances in multiple Availability Zones.</p>")
  @as("MultiAz")
  multiAz: option<boolean_>,
  @ocaml.doc("<p>A list of custom endpoints for the DB cluster.</p>") @as("CustomEndpoints")
  customEndpoints: option<stringList>,
  @ocaml.doc("<p>The reader endpoint for the DB cluster.</p>") @as("ReaderEndpoint")
  readerEndpoint: option<nonEmptyString>,
  @ocaml.doc("<p>The connection endpoint for the primary instance of the DB cluster.</p>")
  @as("Endpoint")
  endpoint: option<nonEmptyString>,
  @ocaml.doc("<p>The current status of this DB cluster.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the database.</p>") @as("DatabaseName")
  databaseName: option<nonEmptyString>,
  @ocaml.doc("<p>The number of days for which automated backups are retained.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>A list of Availability Zones (AZs) where instances in the DB cluster can be
         created.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<stringList>,
  @ocaml.doc("<p>For all database engines except Aurora, specifies the allocated storage size in
         gibibytes (GiB).</p>")
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
}
@ocaml.doc("<p>Details about a function's configuration.</p>")
type awsLambdaFunctionDetails = {
  @ocaml.doc("<p>The version of the Lambda function.</p>") @as("Version")
  version: option<nonEmptyString>,
  @ocaml.doc("<p>The function's networking configuration.</p>") @as("VpcConfig")
  vpcConfig: option<awsLambdaFunctionVpcConfig>,
  @ocaml.doc("<p>The function's AWS X-Ray tracing configuration.</p>") @as("TracingConfig")
  tracingConfig: option<awsLambdaFunctionTracingConfig>,
  @ocaml.doc("<p>The amount of time that Lambda allows a function to run before stopping it.</p>")
  @as("Timeout")
  timeout: option<integer_>,
  @ocaml.doc("<p>The runtime environment for the Lambda function.</p>") @as("Runtime")
  runtime: option<nonEmptyString>,
  @ocaml.doc("<p>The function's execution role.</p>") @as("Role") role: option<nonEmptyString>,
  @ocaml.doc("<p>The latest updated revision of the function or alias.</p>") @as("RevisionId")
  revisionId: option<nonEmptyString>,
  @ocaml.doc("<p>The memory that's allocated to the function.</p>") @as("MemorySize")
  memorySize: option<integer_>,
  @ocaml.doc("<p>For Lambda@Edge functions, the ARN of the master function.</p>") @as("MasterArn")
  masterArn: option<nonEmptyString>,
  @ocaml.doc("<p>The function's layers.</p>") @as("Layers")
  layers: option<awsLambdaFunctionLayerList>,
  @ocaml.doc("<p>Indicates when the function was last updated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastModified")
  lastModified: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The KMS key that's used to encrypt the function's environment variables. This key is only returned if you've configured a customer managed CMK.</p>"
  )
  @as("KmsKeyArn")
  kmsKeyArn: option<nonEmptyString>,
  @ocaml.doc("<p>The function that Lambda calls to begin executing your function.</p>")
  @as("Handler")
  handler: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the function.</p>") @as("FunctionName")
  functionName: option<nonEmptyString>,
  @ocaml.doc("<p>The function's environment variables.</p>") @as("Environment")
  environment: option<awsLambdaFunctionEnvironment>,
  @ocaml.doc("<p>The function's dead letter queue.</p>") @as("DeadLetterConfig")
  deadLetterConfig: option<awsLambdaFunctionDeadLetterConfig>,
  @ocaml.doc("<p>The SHA256 hash of the function's deployment package.</p>") @as("CodeSha256")
  codeSha256: option<nonEmptyString>,
  @ocaml.doc("<p>An <code>AwsLambdaFunctionCode</code> object.</p>") @as("Code")
  code: option<awsLambdaFunctionCode>,
}
@ocaml.doc("<p>Information about an IAM user.</p>")
type awsIamUserDetails = {
  @ocaml.doc("<p>The list of inline policies that are embedded in the user.</p>")
  @as("UserPolicyList")
  userPolicyList: option<awsIamUserPolicyList>,
  @ocaml.doc("<p>The name of the user.</p>") @as("UserName") userName: option<nonEmptyString>,
  @ocaml.doc("<p>The unique identifier for the user.</p>") @as("UserId")
  userId: option<nonEmptyString>,
  @ocaml.doc("<p>The permissions boundary for the user.</p>") @as("PermissionsBoundary")
  permissionsBoundary: option<awsIamPermissionsBoundary>,
  @ocaml.doc("<p>The path to the user.</p>") @as("Path") path: option<nonEmptyString>,
  @ocaml.doc("<p>A list of IAM groups that the user belongs to.</p>") @as("GroupList")
  groupList: option<stringList>,
  @ocaml.doc("<p>Indicates when the user was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateDate")
  createDate: option<nonEmptyString>,
  @ocaml.doc("<p>A list of the managed policies that are attached to the user.</p>")
  @as("AttachedManagedPolicies")
  attachedManagedPolicies: option<awsIamAttachedManagedPolicyList>,
}
@ocaml.doc("<p>Represents an IAM permissions policy.</p>")
type awsIamPolicyDetails = {
  @ocaml.doc("<p>When the policy was most recently updated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("UpdateDate")
  updateDate: option<nonEmptyString>,
  @ocaml.doc("<p>List of versions of the policy.</p>") @as("PolicyVersionList")
  policyVersionList: option<awsIamPolicyVersionList>,
  @ocaml.doc("<p>The name of the policy.</p>") @as("PolicyName") policyName: option<nonEmptyString>,
  @ocaml.doc("<p>The unique identifier of the policy.</p>") @as("PolicyId")
  policyId: option<nonEmptyString>,
  @ocaml.doc("<p>The number of users and roles that use the policy to set the permissions
         boundary.</p>")
  @as("PermissionsBoundaryUsageCount")
  permissionsBoundaryUsageCount: option<integer_>,
  @ocaml.doc("<p>The path to the policy.</p>") @as("Path") path: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the policy can be attached to a user, group, or role.</p>")
  @as("IsAttachable")
  isAttachable: option<boolean_>,
  @ocaml.doc("<p>A description of the policy.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the default version of the policy.</p>") @as("DefaultVersionId")
  defaultVersionId: option<nonEmptyString>,
  @ocaml.doc("<p>When the policy was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateDate")
  createDate: option<nonEmptyString>,
  @ocaml.doc("<p>The number of users, groups, and roles that the policy is attached to.</p>")
  @as("AttachmentCount")
  attachmentCount: option<integer_>,
}
@ocaml.doc("<p>Information about an instance profile.</p>")
type awsIamInstanceProfile = {
  @ocaml.doc("<p>The roles associated with the instance profile.</p>") @as("Roles")
  roles: option<awsIamInstanceProfileRoles>,
  @ocaml.doc("<p>The path to the instance profile.</p>") @as("Path") path: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the instance profile.</p>") @as("InstanceProfileName")
  instanceProfileName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the instance profile.</p>") @as("InstanceProfileId")
  instanceProfileId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the instance profile was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateDate")
  createDate: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the instance profile.</p>") @as("Arn") arn: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains details about an IAM group.</p>")
type awsIamGroupDetails = {
  @ocaml.doc("<p>The path to the group.</p>") @as("Path") path: option<nonEmptyString>,
  @ocaml.doc("<p>The list of inline policies that are embedded in the group.</p>")
  @as("GroupPolicyList")
  groupPolicyList: option<awsIamGroupPolicyList>,
  @ocaml.doc("<p>The name of the IAM group.</p>") @as("GroupName")
  groupName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the IAM group.</p>") @as("GroupId")
  groupId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the IAM group was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateDate")
  createDate: option<nonEmptyString>,
  @ocaml.doc("<p>A list of the managed policies that are attached to the IAM group.</p>")
  @as("AttachedManagedPolicies")
  attachedManagedPolicies: option<awsIamAttachedManagedPolicyList>,
}
@ocaml.doc("<p>IAM access key details related to a finding.</p>")
type awsIamAccessKeyDetails = {
  @ocaml.doc("<p>Information about the session that the key was used for.</p>")
  @as("SessionContext")
  sessionContext: option<awsIamAccessKeySessionContext>,
  @ocaml.doc("<p>The identifier of the access key.</p>") @as("AccessKeyId")
  accessKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS account ID of the account for the key.</p>") @as("AccountId")
  accountId: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the principal.</p>") @as("PrincipalName")
  principalName: option<nonEmptyString>,
  @ocaml.doc("<p>The type of principal associated with an access key.</p>") @as("PrincipalType")
  principalType: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the principal associated with an access key.</p>") @as("PrincipalId")
  principalId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the IAM access key was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedAt")
  createdAt: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the IAM access key related to a finding.</p>") @as("Status")
  status: option<awsIamAccessKeyStatus>,
  @ocaml.doc("<p>The user associated with the IAM access key related to a finding.</p>
         <p>The <code>UserName</code> parameter has been replaced with the
            <code>PrincipalName</code> parameter because access keys can also be assigned to
         principals that are not IAM users.</p>")
  @as("UserName")
  userName: option<nonEmptyString>,
}
@ocaml.doc("<p>Information about a load balancer.</p>")
type awsElbv2LoadBalancerDetails = {
  @ocaml.doc("<p>The ID of the VPC for the load balancer.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The type of load balancer.</p>") @as("Type") type_: option<nonEmptyString>,
  @ocaml.doc("<p>The state of the load balancer.</p>") @as("State")
  state: option<loadBalancerState>,
  @ocaml.doc("<p>The IDs of the security groups for the load balancer.</p>") @as("SecurityGroups")
  securityGroups: option<securityGroups>,
  @ocaml.doc("<p>The nodes of an Internet-facing load balancer have public IP addresses.</p>")
  @as("Scheme")
  scheme: option<nonEmptyString>,
  @ocaml.doc("<p>The type of IP addresses used by the subnets for your load balancer. The possible values
         are <code>ipv4</code> (for IPv4 addresses) and <code>dualstack</code> (for IPv4 and IPv6
         addresses).</p>")
  @as("IpAddressType")
  ipAddressType: option<nonEmptyString>,
  @ocaml.doc("<p>The public DNS name of the load balancer.</p>") @as("DNSName")
  dnsname: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the load balancer was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedTime")
  createdTime: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the Amazon Route 53 hosted zone associated with the load balancer.</p>")
  @as("CanonicalHostedZoneId")
  canonicalHostedZoneId: option<nonEmptyString>,
  @ocaml.doc("<p>The Availability Zones for the load balancer.</p>") @as("AvailabilityZones")
  availabilityZones: option<availabilityZones>,
}
@ocaml.doc("<p>Contains information about the policies for a load balancer.</p>")
type awsElbLoadBalancerPolicies = {
  @ocaml.doc("<p>The policies other than the stickiness policies.</p>") @as("OtherPolicies")
  otherPolicies: option<stringList>,
  @ocaml.doc("<p>The stickiness policies that are created using
            <code>CreateLBCookieStickinessPolicy</code>.</p>")
  @as("LbCookieStickinessPolicies")
  lbCookieStickinessPolicies: option<awsElbLbCookieStickinessPolicies>,
  @ocaml.doc("<p>The stickiness policies that are created using
            <code>CreateAppCookieStickinessPolicy</code>.</p>")
  @as("AppCookieStickinessPolicies")
  appCookieStickinessPolicies: option<awsElbAppCookieStickinessPolicies>,
}
type awsElbLoadBalancerListenerDescriptions = array<awsElbLoadBalancerListenerDescription>
type awsElbLoadBalancerBackendServerDescriptions = array<awsElbLoadBalancerBackendServerDescription>
@ocaml.doc("<p>Information about an Elasticsearch domain.</p>")
type awsElasticsearchDomainDetails = {
  @ocaml.doc("<p>Information that Amazon ES derives based on <code>VPCOptions</code> for the
         domain.</p>")
  @as("VPCOptions")
  vpcoptions: option<awsElasticsearchDomainVPCOptions>,
  @ocaml.doc("<p>Details about the configuration for node-to-node encryption.</p>")
  @as("NodeToNodeEncryptionOptions")
  nodeToNodeEncryptionOptions: option<awsElasticsearchDomainNodeToNodeEncryptionOptions>,
  @ocaml.doc("<p>Details about the configuration for encryption at rest.</p>")
  @as("EncryptionAtRestOptions")
  encryptionAtRestOptions: option<awsElasticsearchDomainEncryptionAtRestOptions>,
  @ocaml.doc("<p>Elasticsearch version.</p>") @as("ElasticsearchVersion")
  elasticsearchVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The key-value pair that exists if the Amazon ES domain uses VPC endpoints.</p>")
  @as("Endpoints")
  endpoints: option<fieldMap>,
  @ocaml.doc("<p>Domain-specific endpoint used to submit index, search, and data upload requests to an
         Amazon ES domain.</p>
         <p>The endpoint is a service URL. </p>")
  @as("Endpoint")
  endpoint: option<nonEmptyString>,
  @ocaml.doc("<p>Name of an Amazon ES domain.</p>
         <p>Domain names are unique across all domains owned by the same account within an AWS
         Region.</p>
         <p>Domain names must start with a lowercase letter and must be between 3 and 28
         characters.</p>
         <p>Valid characters are a-z (lowercase only), 0-9, and – (hyphen). </p>")
  @as("DomainName")
  domainName: option<nonEmptyString>,
  @ocaml.doc("<p>Unique identifier for an Amazon ES domain.</p>") @as("DomainId")
  domainId: option<nonEmptyString>,
  @ocaml.doc("<p>Additional options for the domain endpoint.</p>") @as("DomainEndpointOptions")
  domainEndpointOptions: option<awsElasticsearchDomainDomainEndpointOptions>,
  @ocaml.doc(
    "<p>IAM policy document specifying the access policies for the new Amazon ES domain.</p>"
  )
  @as("AccessPolicies")
  accessPolicies: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains details about an Elastic Beanstalk environment.</p>")
type awsElasticBeanstalkEnvironmentDetails = {
  @ocaml.doc("<p>The application version of the environment.</p>") @as("VersionLabel")
  versionLabel: option<nonEmptyString>,
  @ocaml.doc("<p>The tier of the environment.</p>") @as("Tier")
  tier: option<awsElasticBeanstalkEnvironmentTier>,
  @ocaml.doc("<p>The current operational status of the environment.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the solution stack that is deployed with the environment.</p>")
  @as("SolutionStackName")
  solutionStackName: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the platform version for the environment.</p>") @as("PlatformArn")
  platformArn: option<nonEmptyString>,
  @ocaml.doc("<p>The configuration setting for the environment.</p>") @as("OptionSettings")
  optionSettings: option<awsElasticBeanstalkEnvironmentOptionSettings>,
  @ocaml.doc("<p>The name of the environment.</p>") @as("EnvironmentName")
  environmentName: option<nonEmptyString>,
  @ocaml.doc("<p>Links to other environments in the same group.</p>") @as("EnvironmentLinks")
  environmentLinks: option<awsElasticBeanstalkEnvironmentEnvironmentLinks>,
  @ocaml.doc("<p>The identifier of the environment.</p>") @as("EnvironmentId")
  environmentId: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the environment.</p>") @as("EnvironmentArn")
  environmentArn: option<nonEmptyString>,
  @ocaml.doc(
    "<p>For load-balanced, autoscaling environments, the URL to the load balancer. For single-instance environments, the IP address of the instance.</p>"
  )
  @as("EndpointUrl")
  endpointUrl: option<nonEmptyString>,
  @ocaml.doc("<p>A description of the environment.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The date when this environment was last modified.</p>") @as("DateUpdated")
  dateUpdated: option<nonEmptyString>,
  @ocaml.doc("<p>The creation date for this environment.</p>") @as("DateCreated")
  dateCreated: option<nonEmptyString>,
  @ocaml.doc("<p>The URL to the CNAME for this environment.</p>") @as("Cname")
  cname: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the application that is associated with the environment.</p>")
  @as("ApplicationName")
  applicationName: option<nonEmptyString>,
}
@ocaml.doc("<p>Details about an EC2 VPC.</p>")
type awsEc2VpcDetails = {
  @ocaml.doc("<p>The current state of the VPC.</p>") @as("State") state: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the set of Dynamic Host Configuration Protocol (DHCP) options that are
         associated with the VPC. If the default options are associated with the VPC, then this is
         default.</p>")
  @as("DhcpOptionsId")
  dhcpOptionsId: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the IPv6 CIDR blocks associated with the VPC.</p>")
  @as("Ipv6CidrBlockAssociationSet")
  ipv6CidrBlockAssociationSet: option<ipv6CidrBlockAssociationList>,
  @ocaml.doc("<p>Information about the IPv4 CIDR blocks associated with the VPC.</p>")
  @as("CidrBlockAssociationSet")
  cidrBlockAssociationSet: option<cidrBlockAssociationList>,
}
@ocaml.doc("<p>Details about an EC2 volume.</p>")
type awsEc2VolumeDetails = {
  @ocaml.doc("<p>The volume attachments.</p>") @as("Attachments")
  attachments: option<awsEc2VolumeAttachmentList>,
  @ocaml.doc("<p>The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) that was
         used to protect the volume encryption key for the volume.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>The volume state.</p>") @as("Status") status: option<nonEmptyString>,
  @ocaml.doc("<p>The snapshot from which the volume was created.</p>") @as("SnapshotId")
  snapshotId: option<nonEmptyString>,
  @ocaml.doc("<p>The size of the volume, in GiBs.</p>") @as("Size") size: option<integer_>,
  @ocaml.doc("<p>Whether the volume is encrypted.</p>") @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc("<p>Indicates when the volume was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateTime")
  createTime: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about a subnet in EC2.</p>")
type awsEc2SubnetDetails = {
  @ocaml.doc("<p>The IPV6 CIDR blocks that are associated with the subnet.</p>")
  @as("Ipv6CidrBlockAssociationSet")
  ipv6CidrBlockAssociationSet: option<ipv6CidrBlockAssociationList>,
  @ocaml.doc("<p>The identifier of the VPC that contains the subnet.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the subnet.</p>") @as("SubnetId")
  subnetId: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the subnet.</p>") @as("SubnetArn") subnetArn: option<nonEmptyString>,
  @ocaml.doc("<p>The current state of the subnet.</p>") @as("State") state: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the AWS account that owns the subnet.</p>") @as("OwnerId")
  ownerId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether instances in this subnet receive a public IP address.</p>")
  @as("MapPublicIpOnLaunch")
  mapPublicIpOnLaunch: option<boolean_>,
  @ocaml.doc("<p>Whether this subnet is the default subnet for the Availability Zone.</p>")
  @as("DefaultForAz")
  defaultForAz: option<boolean_>,
  @ocaml.doc("<p>The IPV4 CIDR block that is assigned to the subnet.</p>") @as("CidrBlock")
  cidrBlock: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The number of available IPV4 addresses in the subnet. Does not include addresses for stopped instances.</p>"
  )
  @as("AvailableIpAddressCount")
  availableIpAddressCount: option<integer_>,
  @ocaml.doc("<p>The identifier of the Availability Zone for the subnet.</p>")
  @as("AvailabilityZoneId")
  availabilityZoneId: option<nonEmptyString>,
  @ocaml.doc("<p>The Availability Zone for the subnet.</p>") @as("AvailabilityZone")
  availabilityZone: option<nonEmptyString>,
  @ocaml.doc(
    "<p>Whether to assign an IPV6 address to a network interface that is created in this subnet.</p>"
  )
  @as("AssignIpv6AddressOnCreation")
  assignIpv6AddressOnCreation: option<boolean_>,
}
@ocaml.doc("<p>An IP permission for an EC2 security group.</p>")
type awsEc2SecurityGroupIpPermission = {
  @ocaml.doc("<p>[VPC only] The prefix list IDs for an AWS service. With outbound rules, this is the AWS
         service to access through a VPC endpoint from instances associated with the security
         group.</p>")
  @as("PrefixListIds")
  prefixListIds: option<awsEc2SecurityGroupPrefixListIdList>,
  @ocaml.doc("<p>The IPv6 ranges.</p>") @as("Ipv6Ranges")
  ipv6Ranges: option<awsEc2SecurityGroupIpv6RangeList>,
  @ocaml.doc("<p>The IPv4 ranges.</p>") @as("IpRanges")
  ipRanges: option<awsEc2SecurityGroupIpRangeList>,
  @ocaml.doc("<p>The security group and AWS account ID pairs.</p>") @as("UserIdGroupPairs")
  userIdGroupPairs: option<awsEc2SecurityGroupUserIdGroupPairList>,
  @ocaml.doc("<p>The end of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.</p>
         <p>A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all ICMP/ICMPv6 types, you
         must specify all codes.</p>")
  @as("ToPort")
  toPort: option<integer_>,
  @ocaml.doc("<p>The start of the port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type
         number.</p>
         <p>A value of -1 indicates all ICMP/ICMPv6 types. If you specify all ICMP/ICMPv6 types, you
         must specify all codes. </p>")
  @as("FromPort")
  fromPort: option<integer_>,
  @ocaml.doc("<p>The IP protocol name (<code>tcp</code>, <code>udp</code>, <code>icmp</code>,
            <code>icmpv6</code>) or number.</p>
         <p>[VPC only] Use <code>-1</code> to specify all protocols.</p>
         <p>When authorizing security group rules, specifying -1 or a protocol number other than
            <code>tcp</code>, <code>udp</code>, <code>icmp</code>, or <code>icmpv6</code> allows
         traffic on all ports, regardless of any port range you specify.</p>
         <p>For <code>tcp</code>, <code>udp</code>, and <code>icmp</code>, you must specify a port
         range.</p>
         <p>For <code>icmpv6</code>, the port range is optional. If you omit the port range, traffic
         for all types and codes is allowed. </p>")
  @as("IpProtocol")
  ipProtocol: option<nonEmptyString>,
}
@ocaml.doc("<p>Details about the network interface</p>")
type awsEc2NetworkInterfaceDetails = {
  @ocaml.doc("<p>The address of the Elastic IP address bound to the network interface.</p>")
  @as("PublicIp")
  publicIp: option<nonEmptyString>,
  @ocaml.doc("<p>The public DNS name of the network interface.</p>") @as("PublicDnsName")
  publicDnsName: option<nonEmptyString>,
  @ocaml.doc("<p>The private IPv4 addresses associated with the network interface.</p>")
  @as("PrivateIpAddresses")
  privateIpAddresses: option<awsEc2NetworkInterfacePrivateIpAddressList>,
  @ocaml.doc("<p>The IPv6 addresses associated with the network interface.</p>")
  @as("IpV6Addresses")
  ipV6Addresses: option<awsEc2NetworkInterfaceIpV6AddressList>,
  @ocaml.doc("<p>Indicates whether traffic to or from the instance is validated.</p>")
  @as("SourceDestCheck")
  sourceDestCheck: option<boolean_>,
  @ocaml.doc("<p>Security groups for the network interface.</p>") @as("SecurityGroups")
  securityGroups: option<awsEc2NetworkInterfaceSecurityGroupList>,
  @ocaml.doc("<p>The ID of the network interface.</p>") @as("NetworkInterfaceId")
  networkInterfaceId: option<nonEmptyString>,
  @ocaml.doc("<p>The network interface attachment.</p>") @as("Attachment")
  attachment: option<awsEc2NetworkInterfaceAttachment>,
}
type awsEc2NetworkAclEntryList = array<awsEc2NetworkAclEntry>
type awsDynamoDbTableReplicaGlobalSecondaryIndexList = array<
  awsDynamoDbTableReplicaGlobalSecondaryIndex,
>
@ocaml.doc("<p>Information about a local secondary index for a DynamoDB table.</p>")
type awsDynamoDbTableLocalSecondaryIndex = {
  @ocaml.doc("<p>Attributes that are copied from the table into the index. These are in addition to the
         primary key attributes and index key attributes, which are automatically projected.</p>")
  @as("Projection")
  projection: option<awsDynamoDbTableProjection>,
  @ocaml.doc("<p>The complete key schema for the index.</p>") @as("KeySchema")
  keySchema: option<awsDynamoDbTableKeySchemaList>,
  @ocaml.doc("<p>The name of the index.</p>") @as("IndexName") indexName: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the index.</p>") @as("IndexArn") indexArn: option<nonEmptyString>,
}
@ocaml.doc("<p>Information abut a global secondary index for the table.</p>")
type awsDynamoDbTableGlobalSecondaryIndex = {
  @ocaml.doc("<p>Information about the provisioned throughput settings for the indexes.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: option<awsDynamoDbTableProvisionedThroughput>,
  @ocaml.doc("<p>Attributes that are copied from the table into an index.</p>") @as("Projection")
  projection: option<awsDynamoDbTableProjection>,
  @ocaml.doc("<p>The key schema for the index.</p>") @as("KeySchema")
  keySchema: option<awsDynamoDbTableKeySchemaList>,
  @ocaml.doc("<p>The number of items in the index.</p>") @as("ItemCount")
  itemCount: option<integer_>,
  @ocaml.doc("<p>The current status of the index.</p>") @as("IndexStatus")
  indexStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The total size in bytes of the index.</p>") @as("IndexSizeBytes")
  indexSizeBytes: option<sizeBytes>,
  @ocaml.doc("<p>The name of the index.</p>") @as("IndexName") indexName: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the index.</p>") @as("IndexArn") indexArn: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the index is currently backfilling.</p>") @as("Backfilling")
  backfilling: option<boolean_>,
}
@ocaml.doc("<p>Information about an AWS CodeBuild project.</p>")
type awsCodeBuildProjectDetails = {
  @ocaml.doc("<p>Information about the VPC configuration that AWS CodeBuild accesses.</p>")
  @as("VpcConfig")
  vpcConfig: option<awsCodeBuildProjectVpcConfig>,
  @ocaml.doc("<p>The ARN of the IAM role that enables AWS CodeBuild to interact with dependent AWS
         services on behalf of the AWS account.</p>")
  @as("ServiceRole")
  serviceRole: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the build input source code for this build project.</p>")
  @as("Source")
  source: option<awsCodeBuildProjectSource>,
  @ocaml.doc("<p>The name of the build project.</p>") @as("Name") name: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the build environment for this build project.</p>")
  @as("Environment")
  environment: option<awsCodeBuildProjectEnvironment>,
  @ocaml.doc("<p>The AWS Key Management Service (AWS KMS) customer master key (CMK) used to encrypt the
         build output artifacts.</p>
         <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the
         CMK alias (using the format alias/alias-name). </p>")
  @as("EncryptionKey")
  encryptionKey: option<nonEmptyString>,
}
type awsCloudFrontDistributionOriginItemList = array<awsCloudFrontDistributionOriginItem>
@ocaml.doc("<p>Provides information about when an origin group fails over.</p>")
type awsCloudFrontDistributionOriginGroupFailover = {
  @ocaml.doc("<p>Information about the status codes that cause an origin group to fail over.</p>")
  @as("StatusCodes")
  statusCodes: option<awsCloudFrontDistributionOriginGroupFailoverStatusCodes>,
}
@ocaml.doc("<p>Provides information about caching for the distribution.</p>")
type awsCloudFrontDistributionCacheBehaviors = {
  @ocaml.doc("<p>The cache behaviors for the distribution.</p>") @as("Items")
  items: option<awsCloudFrontDistributionCacheBehaviorsItemList>,
}
type awsCertificateManagerCertificateDomainValidationOptions = array<
  awsCertificateManagerCertificateDomainValidationOption,
>
@ocaml.doc("<p>Contains information about a version 2 API in Amazon API Gateway.</p>")
type awsApiGatewayV2ApiDetails = {
  @ocaml.doc("<p>A cross-origin resource sharing (CORS) configuration. Supported only for HTTP
         APIs.</p>")
  @as("CorsConfiguration")
  corsConfiguration: option<awsCorsConfiguration>,
  @ocaml.doc("<p>The route selection expression for the API.</p>
         <p>For HTTP APIs, must be <code>${request.method} ${request.path}</code>. This is the
         default value for HTTP APIs.</p>
         <p>For WebSocket APIs, there is no default value.</p>")
  @as("RouteSelectionExpression")
  routeSelectionExpression: option<nonEmptyString>,
  @ocaml.doc("<p>The API protocol for the API.</p>
         <p>Valid values: <code>WEBSOCKET</code> | <code>HTTP</code>
         </p>")
  @as("ProtocolType")
  protocolType: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the API.</p>") @as("Name") name: option<nonEmptyString>,
  @ocaml.doc("<p>The version identifier for the API.</p>") @as("Version")
  version: option<nonEmptyString>,
  @ocaml.doc("<p>A description of the API.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the API was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedDate")
  createdDate: option<nonEmptyString>,
  @ocaml.doc("<p>An API key selection expression. Supported only for WebSocket APIs. </p>")
  @as("ApiKeySelectionExpression")
  apiKeySelectionExpression: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the API.</p>") @as("ApiId") apiId: option<nonEmptyString>,
  @ocaml.doc("<p>The URI of the API. </p>
         <p>Uses the format
               <code>
               <i><api-id></i>.execute-api.<i><region></i>.amazonaws.com</code>
         </p>
         <p>The stage name is typically appended to the URI to form a complete path to a deployed
         API stage.</p>")
  @as("ApiEndpoint")
  apiEndpoint: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides information about a version 1 Amazon API Gateway stage.</p>")
type awsApiGatewayStageDetails = {
  @ocaml.doc("<p>The ARN of the web ACL associated with the stage.</p>") @as("WebAclArn")
  webAclArn: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the stage was most recently updated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastUpdatedDate")
  lastUpdatedDate: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the stage was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedDate")
  createdDate: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether active tracing with AWS X-Ray is enabled for the stage.</p>")
  @as("TracingEnabled")
  tracingEnabled: option<boolean_>,
  @ocaml.doc("<p>Information about settings for canary deployment in the stage.</p>")
  @as("CanarySettings")
  canarySettings: option<awsApiGatewayCanarySettings>,
  @ocaml.doc("<p>Settings for logging access for the stage.</p>") @as("AccessLogSettings")
  accessLogSettings: option<awsApiGatewayAccessLogSettings>,
  @ocaml.doc("<p>The version of the API documentation that is associated with the stage.</p>")
  @as("DocumentationVersion")
  documentationVersion: option<nonEmptyString>,
  @ocaml.doc("<p>A map that defines the stage variables for the stage.</p>
         <p>Variable names can have alphanumeric and underscore characters.</p>
         <p>Variable values can contain the following characters:</p>
         <ul>
            <li>
               <p>Uppercase and lowercase letters</p>
            </li>
            <li>
               <p>Numbers</p>
            </li>
            <li>
               <p>Special characters -._~:/?#&=,</p>
            </li>
         </ul>")
  @as("Variables")
  variables: option<fieldMap>,
  @ocaml.doc("<p>Defines the method settings for the stage.</p>") @as("MethodSettings")
  methodSettings: option<awsApiGatewayMethodSettingsList>,
  @ocaml.doc("<p>If a cache cluster is enabled, the status of the cache cluster.</p>")
  @as("CacheClusterStatus")
  cacheClusterStatus: option<nonEmptyString>,
  @ocaml.doc("<p>If a cache cluster is enabled, the size of the cache cluster.</p>")
  @as("CacheClusterSize")
  cacheClusterSize: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether a cache cluster is enabled for the stage.</p>")
  @as("CacheClusterEnabled")
  cacheClusterEnabled: option<boolean_>,
  @ocaml.doc("<p>A description of the stage.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the stage.</p>") @as("StageName") stageName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the client certificate for the stage.</p>")
  @as("ClientCertificateId")
  clientCertificateId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the deployment that the stage points to.</p>")
  @as("DeploymentId")
  deploymentId: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about a REST API in version 1 of Amazon API Gateway.</p>")
type awsApiGatewayRestApiDetails = {
  @ocaml.doc("<p>The endpoint configuration of the REST API.</p>") @as("EndpointConfiguration")
  endpointConfiguration: option<awsApiGatewayEndpointConfiguration>,
  @ocaml.doc("<p>The source of the API key for metering requests according to a usage plan.</p>
         <p>
            <code>HEADER</code> indicates whether to read the API key from the X-API-Key header of a
         request.</p>
         <p>
            <code>AUTHORIZER</code> indicates whether to read the API key from the
            <code>UsageIdentifierKey</code> from a custom authorizer.</p>")
  @as("ApiKeySource")
  apiKeySource: option<nonEmptyString>,
  @ocaml.doc("<p>The minimum size in bytes of a payload before compression is enabled.</p>
         <p>If <code>null</code>, then compression is disabled.</p>
         <p>If 0, then all payloads are compressed.</p>")
  @as("MinimumCompressionSize")
  minimumCompressionSize: option<integer_>,
  @ocaml.doc("<p>The list of binary media types supported by the REST API.</p>")
  @as("BinaryMediaTypes")
  binaryMediaTypes: option<nonEmptyStringList>,
  @ocaml.doc("<p>The version identifier for the REST API.</p>") @as("Version")
  version: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the API was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedDate")
  createdDate: option<nonEmptyString>,
  @ocaml.doc("<p>A description of the REST API.</p>") @as("Description")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the REST API.</p>") @as("Name") name: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the REST API.</p>") @as("Id") id: option<nonEmptyString>,
}
@ocaml.doc("<p>Provided if <code>ActionType</code> is <code>AWS_API_CALL</code>. It provides details
         about the API call that was detected.</p>")
type awsApiCallAction = {
  @ocaml.doc("<p>An ISO8601-formatted timestamp that indicates when the API call was most recently
         observed.</p>")
  @as("LastSeen")
  lastSeen: option<nonEmptyString>,
  @ocaml.doc("<p>An ISO8601-formatted timestamp that indicates when the API call was first
         observed.</p>")
  @as("FirstSeen")
  firstSeen: option<nonEmptyString>,
  @ocaml.doc("<p>Identifies the resources that were affected by the API call.</p>")
  @as("AffectedResources")
  affectedResources: option<fieldMap>,
  @ocaml.doc("<p>Provided if <code>CallerType</code> is <code>domain</code>. Provides information about
         the DNS domain that the API call originated from.</p>")
  @as("DomainDetails")
  domainDetails: option<awsApiCallActionDomainDetails>,
  @ocaml.doc("<p>Provided if <code>CallerType</code> is <code>remoteIp</code>. Provides information about
         the remote IP address that the API call originated from.</p>")
  @as("RemoteIpDetails")
  remoteIpDetails: option<actionRemoteIpDetails>,
  @ocaml.doc("<p>Indicates whether the API call originated from a remote IP address
            (<code>remoteip</code>) or from a DNS domain (<code>domain</code>).</p>")
  @as("CallerType")
  callerType: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the AWS service that the API method belongs to.</p>")
  @as("ServiceName")
  serviceName: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the API method that was issued.</p>") @as("Api")
  api: option<nonEmptyString>,
}
type vulnerabilityList = array<vulnerability>
type portProbeDetailList = array<portProbeDetail>
@ocaml.doc("<p>The detected occurrences of sensitive data.</p>")
type occurrences = {
  @ocaml.doc(
    "<p>Occurrences of sensitive data detected in Microsoft Excel workbooks, comma-separated value (CSV) files, or tab-separated value (TSV) files.</p>"
  )
  @as("Cells")
  cells: option<cells>,
  @ocaml.doc(
    "<p>Occurrences of sensitive data in an Apache Avro object container or an Apache Parquet file.</p>"
  )
  @as("Records")
  records: option<records>,
  @ocaml.doc(
    "<p>Occurrences of sensitive data in an Adobe Portable Document Format (PDF) file.</p>"
  )
  @as("Pages")
  pages: option<pages>,
  @ocaml.doc("<p>Occurrences of sensitive data detected in a binary text file.</p>")
  @as("OffsetRanges")
  offsetRanges: option<ranges>,
  @ocaml.doc(
    "<p>Occurrences of sensitive data detected in a non-binary text file or a Microsoft Word file. Non-binary text files include files such as HTML, XML, JSON, and TXT files.</p>"
  )
  @as("LineRanges")
  lineRanges: option<ranges>,
}
@ocaml.doc("<p>Details about a network path component that occurs before or after the current
         component.</p>")
type networkHeader = {
  @ocaml.doc("<p>Information about the origin of the component.</p>") @as("Source")
  source: option<networkPathComponentDetails>,
  @ocaml.doc("<p>Information about the destination of the component.</p>") @as("Destination")
  destination: option<networkPathComponentDetails>,
  @ocaml.doc("<p>The protocol used for the component.</p>") @as("Protocol")
  protocol: option<nonEmptyString>,
}
type awsWafWebAclRuleList = array<awsWafWebAclRule>
@ocaml.doc("<p>A collection of attributes that are applied to all active Security Hub-aggregated findings and
         that result in a subset of findings that are included in this insight.</p>
         <p>You can filter by up to 10 finding attributes. For each attribute, you can provide up to
         20 filter values.</p>")
type awsSecurityFindingFilters = {
  @ocaml.doc("<p>One or more finding types that the finding provider assigned to the finding. Uses the format of <code>namespace/category/classifier</code>
         that classify a finding.</p>
         <p>Valid namespace values are: Software and Configuration Checks | TTPs | Effects | Unusual
         Behaviors | Sensitive Data Identifications</p>")
  @as("FindingProviderFieldsTypes")
  findingProviderFieldsTypes: option<stringFilterList>,
  @ocaml.doc("<p>The finding provider's original value for the severity.</p>")
  @as("FindingProviderFieldsSeverityOriginal")
  findingProviderFieldsSeverityOriginal: option<stringFilterList>,
  @ocaml.doc("<p>The finding provider value for the severity label.</p>")
  @as("FindingProviderFieldsSeverityLabel")
  findingProviderFieldsSeverityLabel: option<stringFilterList>,
  @ocaml.doc(
    "<p>The ARN of the solution that generated a related finding that is identified by the finding provider.</p>"
  )
  @as("FindingProviderFieldsRelatedFindingsProductArn")
  findingProviderFieldsRelatedFindingsProductArn: option<stringFilterList>,
  @ocaml.doc(
    "<p>The finding identifier of a related finding that is identified by the finding provider.</p>"
  )
  @as("FindingProviderFieldsRelatedFindingsId")
  findingProviderFieldsRelatedFindingsId: option<stringFilterList>,
  @ocaml.doc("<p>The finding provider value for the level of importance assigned to the resources associated with
         the findings.</p>
         <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
         is reserved for the most critical resources. </p>")
  @as("FindingProviderFieldsCriticality")
  findingProviderFieldsCriticality: option<numberFilterList>,
  @ocaml.doc("<p>The finding provider value for the finding confidence. Confidence is defined as the likelihood
         that a finding accurately identifies the behavior or issue that it was intended to
         identify.</p>
         <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
         confidence and 100 means 100 percent confidence.</p>")
  @as("FindingProviderFieldsConfidence")
  findingProviderFieldsConfidence: option<numberFilterList>,
  @ocaml.doc("<p>A keyword for a finding.</p>") @as("Keyword") keyword: option<keywordFilterList>,
  @ocaml.doc("<p>The principal that created a note.</p>") @as("NoteUpdatedBy")
  noteUpdatedBy: option<stringFilterList>,
  @ocaml.doc("<p>The timestamp of when the note was updated.</p>") @as("NoteUpdatedAt")
  noteUpdatedAt: option<dateFilterList>,
  @ocaml.doc("<p>The text of a note.</p>") @as("NoteText") noteText: option<stringFilterList>,
  @ocaml.doc("<p>The solution-generated identifier for a related finding.</p>")
  @as("RelatedFindingsId")
  relatedFindingsId: option<stringFilterList>,
  @ocaml.doc("<p>The ARN of the solution that generated a related finding.</p>")
  @as("RelatedFindingsProductArn")
  relatedFindingsProductArn: option<stringFilterList>,
  @ocaml.doc("<p>The updated record state for the finding.</p>") @as("RecordState")
  recordState: option<stringFilterList>,
  @ocaml.doc("<p>The status of the investigation into a finding. Allowed values are the following.</p>
         <ul>
            <li>
               <p>
                  <code>NEW</code> - The initial state of a finding, before it is reviewed.</p>
               <p>Security Hub also resets the workflow status from <code>NOTIFIED</code> or
                  <code>RESOLVED</code> to <code>NEW</code> in the following cases:</p>
               <ul>
                  <li>
                     <p>The record state changes from <code>ARCHIVED</code> to <code>ACTIVE</code>.</p>
                  </li>
                  <li>
                     <p>The compliance status changes from <code>PASSED</code> to either <code>WARNING</code>,
                        <code>FAILED</code>, or <code>NOT_AVAILABLE</code>.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>
                  <code>NOTIFIED</code> - Indicates that the resource owner has been notified about
               the security issue. Used when the initial reviewer is not the resource owner, and
               needs intervention from the resource owner.</p>
            </li>
            <li>
               <p>
                  <code>SUPPRESSED</code> - The finding will not be reviewed again and will not be
               acted upon.</p>
            </li>
            <li>
               <p>
                  <code>RESOLVED</code> - The finding was reviewed and remediated and is now
               considered resolved. </p>
            </li>
         </ul>")
  @as("WorkflowStatus")
  workflowStatus: option<stringFilterList>,
  @ocaml.doc("<p>The workflow state of a finding.</p>
         <p>Note that this field is deprecated. To search for a finding based on its workflow
         status, use <code>WorkflowStatus</code>.</p>")
  @as("WorkflowState")
  workflowState: option<stringFilterList>,
  @ocaml.doc("<p>The veracity of a finding.</p>") @as("VerificationState")
  verificationState: option<stringFilterList>,
  @ocaml.doc("<p>Exclusive to findings that are generated as the result of a check run against a specific
         rule in a supported standard, such as CIS AWS Foundations. Contains security
         standard-related finding details.</p>")
  @as("ComplianceStatus")
  complianceStatus: option<stringFilterList>,
  @ocaml.doc("<p>The details of a resource that doesn't have a specific subfield for the resource type
         defined.</p>")
  @as("ResourceDetailsOther")
  resourceDetailsOther: option<mapFilterList>,
  @ocaml.doc("<p>The date/time that the container was started.</p>")
  @as("ResourceContainerLaunchedAt")
  resourceContainerLaunchedAt: option<dateFilterList>,
  @ocaml.doc("<p>The name of the image related to a finding.</p>") @as("ResourceContainerImageName")
  resourceContainerImageName: option<stringFilterList>,
  @ocaml.doc("<p>The identifier of the image related to a finding.</p>")
  @as("ResourceContainerImageId")
  resourceContainerImageId: option<stringFilterList>,
  @ocaml.doc("<p>The name of the container related to a finding.</p>") @as("ResourceContainerName")
  resourceContainerName: option<stringFilterList>,
  @ocaml.doc("<p>The creation date/time of the IAM access key related to a finding.</p>")
  @as("ResourceAwsIamAccessKeyCreatedAt")
  resourceAwsIamAccessKeyCreatedAt: option<dateFilterList>,
  @ocaml.doc("<p>The status of the IAM access key related to a finding.</p>")
  @as("ResourceAwsIamAccessKeyStatus")
  resourceAwsIamAccessKeyStatus: option<stringFilterList>,
  @ocaml.doc("<p>The user associated with the IAM access key related to a finding.</p>")
  @as("ResourceAwsIamAccessKeyUserName")
  resourceAwsIamAccessKeyUserName: option<stringFilterList>,
  @ocaml.doc("<p>The display name of the owner of the S3 bucket.</p>")
  @as("ResourceAwsS3BucketOwnerName")
  resourceAwsS3BucketOwnerName: option<stringFilterList>,
  @ocaml.doc("<p>The canonical user ID of the owner of the S3 bucket.</p>")
  @as("ResourceAwsS3BucketOwnerId")
  resourceAwsS3BucketOwnerId: option<stringFilterList>,
  @ocaml.doc("<p>The date and time the instance was launched.</p>")
  @as("ResourceAwsEc2InstanceLaunchedAt")
  resourceAwsEc2InstanceLaunchedAt: option<dateFilterList>,
  @ocaml.doc("<p>The identifier of the subnet that the instance was launched in.</p>")
  @as("ResourceAwsEc2InstanceSubnetId")
  resourceAwsEc2InstanceSubnetId: option<stringFilterList>,
  @ocaml.doc("<p>The identifier of the VPC that the instance was launched in.</p>")
  @as("ResourceAwsEc2InstanceVpcId")
  resourceAwsEc2InstanceVpcId: option<stringFilterList>,
  @ocaml.doc("<p>The IAM profile ARN of the instance.</p>")
  @as("ResourceAwsEc2InstanceIamInstanceProfileArn")
  resourceAwsEc2InstanceIamInstanceProfileArn: option<stringFilterList>,
  @ocaml.doc("<p>The key name associated with the instance.</p>")
  @as("ResourceAwsEc2InstanceKeyName")
  resourceAwsEc2InstanceKeyName: option<stringFilterList>,
  @ocaml.doc("<p>The IPv6 addresses associated with the instance.</p>")
  @as("ResourceAwsEc2InstanceIpV6Addresses")
  resourceAwsEc2InstanceIpV6Addresses: option<ipFilterList>,
  @ocaml.doc("<p>The IPv4 addresses associated with the instance.</p>")
  @as("ResourceAwsEc2InstanceIpV4Addresses")
  resourceAwsEc2InstanceIpV4Addresses: option<ipFilterList>,
  @ocaml.doc("<p>The Amazon Machine Image (AMI) ID of the instance.</p>")
  @as("ResourceAwsEc2InstanceImageId")
  resourceAwsEc2InstanceImageId: option<stringFilterList>,
  @ocaml.doc("<p>The instance type of the instance.</p>") @as("ResourceAwsEc2InstanceType")
  resourceAwsEc2InstanceType: option<stringFilterList>,
  @ocaml.doc("<p>A list of AWS tags associated with a resource at the time the finding was
         processed.</p>")
  @as("ResourceTags")
  resourceTags: option<mapFilterList>,
  @ocaml.doc("<p>The canonical AWS external Region name where this resource is located.</p>")
  @as("ResourceRegion")
  resourceRegion: option<stringFilterList>,
  @ocaml.doc("<p>The canonical AWS partition name that the Region is assigned to.</p>")
  @as("ResourcePartition")
  resourcePartition: option<stringFilterList>,
  @ocaml.doc("<p>The canonical identifier for the given resource type.</p>") @as("ResourceId")
  resourceId: option<stringFilterList>,
  @ocaml.doc("<p>Specifies the type of the resource that details are provided for.</p>")
  @as("ResourceType")
  resourceType: option<stringFilterList>,
  @ocaml.doc("<p>The URL for more details from the source of the threat intelligence.</p>")
  @as("ThreatIntelIndicatorSourceUrl")
  threatIntelIndicatorSourceUrl: option<stringFilterList>,
  @ocaml.doc("<p>The source of the threat intelligence.</p>") @as("ThreatIntelIndicatorSource")
  threatIntelIndicatorSource: option<stringFilterList>,
  @ocaml.doc("<p>The date/time of the last observation of a threat intelligence indicator.</p>")
  @as("ThreatIntelIndicatorLastObservedAt")
  threatIntelIndicatorLastObservedAt: option<dateFilterList>,
  @ocaml.doc("<p>The category of a threat intelligence indicator.</p>")
  @as("ThreatIntelIndicatorCategory")
  threatIntelIndicatorCategory: option<stringFilterList>,
  @ocaml.doc("<p>The value of a threat intelligence indicator.</p>")
  @as("ThreatIntelIndicatorValue")
  threatIntelIndicatorValue: option<stringFilterList>,
  @ocaml.doc("<p>The type of a threat intelligence indicator.</p>") @as("ThreatIntelIndicatorType")
  threatIntelIndicatorType: option<stringFilterList>,
  @ocaml.doc("<p>The date/time that the process was terminated.</p>") @as("ProcessTerminatedAt")
  processTerminatedAt: option<dateFilterList>,
  @ocaml.doc("<p>The date/time that the process was launched.</p>") @as("ProcessLaunchedAt")
  processLaunchedAt: option<dateFilterList>,
  @ocaml.doc("<p>The parent process ID.</p>") @as("ProcessParentPid")
  processParentPid: option<numberFilterList>,
  @ocaml.doc("<p>The process ID.</p>") @as("ProcessPid") processPid: option<numberFilterList>,
  @ocaml.doc("<p>The path to the process executable.</p>") @as("ProcessPath")
  processPath: option<stringFilterList>,
  @ocaml.doc("<p>The name of the process.</p>") @as("ProcessName")
  processName: option<stringFilterList>,
  @ocaml.doc("<p>The destination domain of network-related information about a finding.</p>")
  @as("NetworkDestinationDomain")
  networkDestinationDomain: option<stringFilterList>,
  @ocaml.doc("<p>The destination port of network-related information about a finding.</p>")
  @as("NetworkDestinationPort")
  networkDestinationPort: option<numberFilterList>,
  @ocaml.doc("<p>The destination IPv6 address of network-related information about a finding.</p>")
  @as("NetworkDestinationIpV6")
  networkDestinationIpV6: option<ipFilterList>,
  @ocaml.doc("<p>The destination IPv4 address of network-related information about a finding.</p>")
  @as("NetworkDestinationIpV4")
  networkDestinationIpV4: option<ipFilterList>,
  @ocaml.doc("<p>The source media access control (MAC) address of network-related information about a
         finding.</p>")
  @as("NetworkSourceMac")
  networkSourceMac: option<stringFilterList>,
  @ocaml.doc("<p>The source domain of network-related information about a finding.</p>")
  @as("NetworkSourceDomain")
  networkSourceDomain: option<stringFilterList>,
  @ocaml.doc("<p>The source port of network-related information about a finding.</p>")
  @as("NetworkSourcePort")
  networkSourcePort: option<numberFilterList>,
  @ocaml.doc("<p>The source IPv6 address of network-related information about a finding.</p>")
  @as("NetworkSourceIpV6")
  networkSourceIpV6: option<ipFilterList>,
  @ocaml.doc("<p>The source IPv4 address of network-related information about a finding.</p>")
  @as("NetworkSourceIpV4")
  networkSourceIpV4: option<ipFilterList>,
  @ocaml.doc("<p>The protocol of network-related information about a finding.</p>")
  @as("NetworkProtocol")
  networkProtocol: option<stringFilterList>,
  @ocaml.doc("<p>Indicates the direction of network traffic associated with a finding.</p>")
  @as("NetworkDirection")
  networkDirection: option<stringFilterList>,
  @ocaml.doc("<p>The state of the malware that was observed.</p>") @as("MalwareState")
  malwareState: option<stringFilterList>,
  @ocaml.doc("<p>The filesystem path of the malware that was observed.</p>") @as("MalwarePath")
  malwarePath: option<stringFilterList>,
  @ocaml.doc("<p>The type of the malware that was observed.</p>") @as("MalwareType")
  malwareType: option<stringFilterList>,
  @ocaml.doc("<p>The name of the malware that was observed.</p>") @as("MalwareName")
  malwareName: option<stringFilterList>,
  @ocaml.doc("<p>A list of name/value string pairs associated with the finding. These are custom,
         user-defined fields added to a finding. </p>")
  @as("UserDefinedFields")
  userDefinedFields: option<mapFilterList>,
  @ocaml.doc("<p>The name of the findings provider (company) that owns the solution (product) that
         generates findings.</p>")
  @as("CompanyName")
  companyName: option<stringFilterList>,
  @ocaml.doc("<p>The name of the solution (product) that generates findings.</p>")
  @as("ProductName")
  productName: option<stringFilterList>,
  @ocaml.doc("<p>A data type where security-findings providers can include additional solution-specific
         details that aren't part of the defined <code>AwsSecurityFinding</code> format.</p>")
  @as("ProductFields")
  productFields: option<mapFilterList>,
  @ocaml.doc("<p>A URL that links to a page about the current finding in the security-findings provider's
         solution.</p>")
  @as("SourceUrl")
  sourceUrl: option<stringFilterList>,
  @ocaml.doc("<p>The recommendation of what to do about the issue described in a finding.</p>")
  @as("RecommendationText")
  recommendationText: option<stringFilterList>,
  @ocaml.doc("<p>A finding's description.</p>") @as("Description")
  description: option<stringFilterList>,
  @ocaml.doc("<p>A finding's title.</p>") @as("Title") title: option<stringFilterList>,
  @ocaml.doc("<p>The level of importance assigned to the resources associated with the finding.</p>
         <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
         is reserved for the most critical resources.</p>")
  @as("Criticality")
  criticality: option<numberFilterList>,
  @ocaml.doc("<p>A finding's confidence. Confidence is defined as the likelihood that a finding
         accurately identifies the behavior or issue that it was intended to identify.</p>
         <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
         confidence and 100 means 100 percent confidence.</p>")
  @as("Confidence")
  confidence: option<numberFilterList>,
  @ocaml.doc("<p>The label of a finding's severity.</p>") @as("SeverityLabel")
  severityLabel: option<stringFilterList>,
  @ocaml.doc("<p>The normalized severity of a finding.</p>") @as("SeverityNormalized")
  severityNormalized: option<numberFilterList>,
  @ocaml.doc("<p>The native severity as defined by the security-findings provider's solution that
         generated the finding.</p>")
  @as("SeverityProduct")
  severityProduct: option<numberFilterList>,
  @ocaml.doc("<p>An ISO8601-formatted timestamp that indicates when the security-findings provider last
         updated the finding record. </p>")
  @as("UpdatedAt")
  updatedAt: option<dateFilterList>,
  @ocaml.doc("<p>An ISO8601-formatted timestamp that indicates when the security-findings provider
         captured the potential security issue that a finding captured.</p>")
  @as("CreatedAt")
  createdAt: option<dateFilterList>,
  @ocaml.doc("<p>An ISO8601-formatted timestamp that indicates when the security-findings provider most
         recently observed the potential security issue that a finding captured.</p>")
  @as("LastObservedAt")
  lastObservedAt: option<dateFilterList>,
  @ocaml.doc("<p>An ISO8601-formatted timestamp that indicates when the security-findings provider first
         observed the potential security issue that a finding captured.</p>")
  @as("FirstObservedAt")
  firstObservedAt: option<dateFilterList>,
  @ocaml.doc("<p>A finding type in the format of <code>namespace/category/classifier</code> that
         classifies a finding.</p>")
  @as("Type")
  type_: option<stringFilterList>,
  @ocaml.doc("<p>The identifier for the solution-specific component (a discrete unit of logic) that
         generated a finding. In various security-findings providers' solutions, this generator can
         be called a rule, a check, a detector, a plugin, etc.</p>")
  @as("GeneratorId")
  generatorId: option<stringFilterList>,
  @ocaml.doc("<p>The security findings provider-specific identifier for a finding.</p>") @as("Id")
  id: option<stringFilterList>,
  @ocaml.doc("<p>The AWS account ID that a finding is generated in.</p>") @as("AwsAccountId")
  awsAccountId: option<stringFilterList>,
  @ocaml.doc("<p>The ARN generated by Security Hub that uniquely identifies a third-party company
         (security findings provider) after this provider's product (solution that generates
         findings) is registered with Security Hub.</p>")
  @as("ProductArn")
  productArn: option<stringFilterList>,
}
@ocaml.doc("<p>The encryption configuration for the S3 bucket.</p>")
type awsS3BucketServerSideEncryptionConfiguration = {
  @ocaml.doc("<p>The encryption rules that are applied to the S3 bucket.</p>") @as("Rules")
  rules: option<awsS3BucketServerSideEncryptionRules>,
}
type awsRedshiftClusterClusterParameterGroups = array<awsRedshiftClusterClusterParameterGroup>
@ocaml.doc("<p>Information about the subnet group for the database instance.</p>")
type awsRdsDbSubnetGroup = {
  @ocaml.doc("<p>The ARN of the subnet group.</p>") @as("DbSubnetGroupArn")
  dbSubnetGroupArn: option<nonEmptyString>,
  @ocaml.doc("<p>A list of subnets in the subnet group.</p>") @as("Subnets")
  subnets: option<awsRdsDbSubnetGroupSubnets>,
  @ocaml.doc("<p>The status of the subnet group.</p>") @as("SubnetGroupStatus")
  subnetGroupStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The VPC ID of the subnet group.</p>") @as("VpcId") vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The description of the subnet group.</p>") @as("DbSubnetGroupDescription")
  dbSubnetGroupDescription: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the subnet group.</p>") @as("DbSubnetGroupName")
  dbSubnetGroupName: option<nonEmptyString>,
}
type awsIamInstanceProfileList = array<awsIamInstanceProfile>
@ocaml.doc("<p>Contains details about a Classic Load Balancer.</p>")
type awsElbLoadBalancerDetails = {
  @ocaml.doc("<p>The identifier of the VPC for the load balancer.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The list of subnet identifiers for the load balancer.</p>") @as("Subnets")
  subnets: option<stringList>,
  @ocaml.doc("<p>Information about the security group for the load balancer. This is the security group
         that is used for inbound rules.</p>")
  @as("SourceSecurityGroup")
  sourceSecurityGroup: option<awsElbLoadBalancerSourceSecurityGroup>,
  @ocaml.doc("<p>The security groups for the load balancer. Only provided if the load balancer is in a
         VPC.</p>")
  @as("SecurityGroups")
  securityGroups: option<stringList>,
  @ocaml.doc("<p>The type of load balancer. Only provided if the load balancer is in a VPC.</p>
         <p>If <code>Scheme</code> is <code>internet-facing</code>, the load balancer has a public
         DNS name that resolves to a public IP address.</p>
         <p>If <code>Scheme</code> is <code>internal</code>, the load balancer has a public DNS name
         that resolves to a private IP address.</p>")
  @as("Scheme")
  scheme: option<nonEmptyString>,
  @ocaml.doc("<p>The policies for a load balancer.</p>") @as("Policies")
  policies: option<awsElbLoadBalancerPolicies>,
  @ocaml.doc("<p>The name of the load balancer.</p>") @as("LoadBalancerName")
  loadBalancerName: option<nonEmptyString>,
  @ocaml.doc("<p>The attributes for a load balancer.</p>") @as("LoadBalancerAttributes")
  loadBalancerAttributes: option<awsElbLoadBalancerAttributes>,
  @ocaml.doc("<p>The policies that are enabled for the load balancer listeners.</p>")
  @as("ListenerDescriptions")
  listenerDescriptions: option<awsElbLoadBalancerListenerDescriptions>,
  @ocaml.doc("<p>List of EC2 instances for the load balancer.</p>") @as("Instances")
  instances: option<awsElbLoadBalancerInstances>,
  @ocaml.doc("<p>Information about the health checks that are conducted on the load balancer.</p>")
  @as("HealthCheck")
  healthCheck: option<awsElbLoadBalancerHealthCheck>,
  @ocaml.doc("<p>The DNS name of the load balancer.</p>") @as("DnsName")
  dnsName: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the load balancer was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedTime")
  createdTime: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the Amazon Route 53 hosted zone for the load balancer.</p>")
  @as("CanonicalHostedZoneNameID")
  canonicalHostedZoneNameID: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the Amazon Route 53 hosted zone for the load balancer.</p>")
  @as("CanonicalHostedZoneName")
  canonicalHostedZoneName: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the configuration of the EC2 instances.</p>")
  @as("BackendServerDescriptions")
  backendServerDescriptions: option<awsElbLoadBalancerBackendServerDescriptions>,
  @ocaml.doc("<p>The list of Availability Zones for the load balancer.</p>")
  @as("AvailabilityZones")
  availabilityZones: option<stringList>,
}
type awsEc2SecurityGroupIpPermissionList = array<awsEc2SecurityGroupIpPermission>
@ocaml.doc("<p>Contains details about an EC2 network access control list (ACL).</p>")
type awsEc2NetworkAclDetails = {
  @ocaml.doc("<p>The set of rules in the network ACL.</p>") @as("Entries")
  entries: option<awsEc2NetworkAclEntryList>,
  @ocaml.doc("<p>Associations between the network ACL and subnets.</p>") @as("Associations")
  associations: option<awsEc2NetworkAclAssociationList>,
  @ocaml.doc("<p>The identifier of the VPC for the network ACL.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the AWS account that owns the network ACL.</p>") @as("OwnerId")
  ownerId: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the network ACL.</p>") @as("NetworkAclId")
  networkAclId: option<nonEmptyString>,
  @ocaml.doc("<p>Whether this is the default network ACL for the VPC.</p>") @as("IsDefault")
  isDefault: option<boolean_>,
}
@ocaml.doc("<p>Information about a replica of a DynamoDB table.</p>")
type awsDynamoDbTableReplica = {
  @ocaml.doc("<p>Detailed information about the replica status.</p>")
  @as("ReplicaStatusDescription")
  replicaStatusDescription: option<nonEmptyString>,
  @ocaml.doc("<p>The current status of the replica.</p>") @as("ReplicaStatus")
  replicaStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the Region where the replica is located.</p>") @as("RegionName")
  regionName: option<nonEmptyString>,
  @ocaml.doc("<p>Replica-specific configuration for the provisioned throughput.</p>")
  @as("ProvisionedThroughputOverride")
  provisionedThroughputOverride: option<awsDynamoDbTableProvisionedThroughputOverride>,
  @ocaml.doc("<p>The identifier of the AWS KMS customer master key (CMK) that will be used for AWS KMS
         encryption for the replica.</p>")
  @as("KmsMasterKeyId")
  kmsMasterKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>List of global secondary indexes for the replica.</p>")
  @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<awsDynamoDbTableReplicaGlobalSecondaryIndexList>,
}
type awsDynamoDbTableLocalSecondaryIndexList = array<awsDynamoDbTableLocalSecondaryIndex>
type awsDynamoDbTableGlobalSecondaryIndexList = array<awsDynamoDbTableGlobalSecondaryIndex>
@ocaml.doc(
  "<p>A complex type that contains information about origins and origin groups for this distribution.</p>"
)
type awsCloudFrontDistributionOrigins = {
  @ocaml.doc("<p>A complex type that contains origins or origin groups for this distribution.</p>")
  @as("Items")
  items: option<awsCloudFrontDistributionOriginItemList>,
}
@ocaml.doc("<p>Information about an origin group for the distribution.</p>")
type awsCloudFrontDistributionOriginGroup = {
  @ocaml.doc("<p>Provides the criteria for an origin group to fail over.</p>")
  @as("FailoverCriteria")
  failoverCriteria: option<awsCloudFrontDistributionOriginGroupFailover>,
}
@ocaml.doc("<p>Contains information about the AWS Certificate Manager managed renewal for an
            <code>AMAZON_ISSUED</code> certificate.</p>")
type awsCertificateManagerCertificateRenewalSummary = {
  @ocaml.doc("<p>Indicates when the renewal summary was last updated.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("UpdatedAt")
  updatedAt: option<nonEmptyString>,
  @ocaml.doc("<p>The reason that a renewal request was unsuccessful.</p>
         <p>Valid values: <code>NO_AVAILABLE_CONTACTS</code> |
            <code>ADDITIONAL_VERIFICATION_REQUIRED</code> | <code>DOMAIN_NOT_ALLOWED</code> |
            <code>INVALID_PUBLIC_DOMAIN</code> | <code>DOMAIN_VALIDATION_DENIED</code> |
            <code>CAA_ERROR</code> | <code>PCA_LIMIT_EXCEEDED</code> | <code>PCA_INVALID_ARN</code>
         | <code>PCA_INVALID_STATE</code> | <code>PCA_REQUEST_FAILED</code> |
            <code>PCA_NAME_CONSTRAINTS_VALIDATION</code> | <code>PCA_RESOURCE_NOT_FOUND</code> |
            <code>PCA_INVALID_ARGS</code> | <code>PCA_INVALID_DURATION</code> |
            <code>PCA_ACCESS_DENIED</code> | <code>SLR_NOT_FOUND</code> | <code>OTHER</code>
         </p>")
  @as("RenewalStatusReason")
  renewalStatusReason: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the AWS Certificate Manager managed renewal of the certificate.</p>
         <p>Valid values: <code>PENDING_AUTO_RENEWAL</code> | <code>PENDING_VALIDATION</code> |
            <code>SUCCESS</code> | <code>FAILED</code>
         </p>")
  @as("RenewalStatus")
  renewalStatus: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the validation of each domain name in the certificate, as it pertains
         to AWS Certificate Manager managed renewal. Provided only when the certificate type is
            <code>AMAZON_ISSUED</code>.</p>")
  @as("DomainValidationOptions")
  domainValidationOptions: option<awsCertificateManagerCertificateDomainValidationOptions>,
}
@ocaml.doc("<p>The list of detected instances of sensitive data.</p>")
type sensitiveDataDetections = {
  @ocaml.doc("<p>Details about the sensitive data that was detected.</p>") @as("Occurrences")
  occurrences: option<occurrences>,
  @ocaml.doc(
    "<p>The type of sensitive data that was detected. For example, the type might indicate that the data is an email address.</p>"
  )
  @as("Type")
  type_: option<nonEmptyString>,
  @ocaml.doc("<p>The total number of occurrences of sensitive data that were detected.</p>")
  @as("Count")
  count: option<long>,
}
@ocaml.doc("<p>Provided if <code>ActionType</code> is <code>PORT_PROBE</code>. It provides details
         about the attempted port probe that was detected.</p>")
type portProbeAction = {
  @ocaml.doc("<p>Indicates whether the port probe was blocked.</p>") @as("Blocked")
  blocked: option<boolean_>,
  @ocaml.doc("<p>Information about the ports affected by the port probe.</p>")
  @as("PortProbeDetails")
  portProbeDetails: option<portProbeDetailList>,
}
@ocaml.doc("<p>Information about a network path component.</p>")
type networkPathComponent = {
  @ocaml.doc("<p>Information about the component that comes before the current node in the network
         path.</p>")
  @as("Ingress")
  ingress: option<networkHeader>,
  @ocaml.doc("<p>Information about the component that comes after the current component in the network
         path.</p>")
  @as("Egress")
  egress: option<networkHeader>,
  @ocaml.doc("<p>The type of component.</p>") @as("ComponentType")
  componentType: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of a component in the network path.</p>") @as("ComponentId")
  componentId: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about a Security Hub insight.</p>")
type insight = {
  @ocaml.doc("<p>The grouping attribute for the insight's findings. Indicates how to group the matching
         findings, and identifies the type of item that the insight applies to. For example, if an
         insight is grouped by resource identifier, then the insight produces a list of resource
         identifiers.</p>")
  @as("GroupByAttribute")
  groupByAttribute: nonEmptyString,
  @ocaml.doc("<p>One or more attributes used to filter the findings included in the insight. The insight
         only includes findings that match the criteria defined in the filters.</p>")
  @as("Filters")
  filters: awsSecurityFindingFilters,
  @ocaml.doc("<p>The name of a Security Hub insight.</p>") @as("Name") name: nonEmptyString,
  @ocaml.doc("<p>The ARN of a Security Hub insight.</p>") @as("InsightArn")
  insightArn: nonEmptyString,
}
@ocaml.doc("<p>The list of detected instances of sensitive data.</p>")
type customDataIdentifiersDetections = {
  @ocaml.doc("<p>Details about the sensitive data that was detected.</p>") @as("Occurrences")
  occurrences: option<occurrences>,
  @ocaml.doc("<p>he name of the custom identifier that detected the sensitive data.</p>")
  @as("Name")
  name: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the custom identifier that was used to detect the sensitive data.</p>")
  @as("Arn")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The total number of occurrences of sensitive data that were detected.</p>")
  @as("Count")
  count: option<long>,
}
@ocaml.doc("<p>Details about a WAF WebACL.</p>")
type awsWafWebAclDetails = {
  @ocaml.doc("<p>A unique identifier for a WebACL.</p>") @as("WebAclId")
  webAclId: option<nonEmptyString>,
  @ocaml.doc("<p>An array that contains the action for each rule in a WebACL, the priority of the rule,
         and the ID of the rule.</p>")
  @as("Rules")
  rules: option<awsWafWebAclRuleList>,
  @ocaml.doc("<p>The action to perform if none of the rules contained in the WebACL match.</p>")
  @as("DefaultAction")
  defaultAction: option<nonEmptyString>,
  @ocaml.doc("<p>A friendly name or description of the WebACL. You can't change the name of a WebACL
         after you create it.</p>")
  @as("Name")
  name: option<nonEmptyString>,
}
@ocaml.doc("<p>The details of an Amazon S3 bucket.</p>")
type awsS3BucketDetails = {
  @ocaml.doc(
    "<p>Provides information about the Amazon S3 Public Access Block configuration for the S3 bucket.</p>"
  )
  @as("PublicAccessBlockConfiguration")
  publicAccessBlockConfiguration: option<awsS3AccountPublicAccessBlockDetails>,
  @ocaml.doc("<p>The encryption rules that are applied to the S3 bucket.</p>")
  @as("ServerSideEncryptionConfiguration")
  serverSideEncryptionConfiguration: option<awsS3BucketServerSideEncryptionConfiguration>,
  @ocaml.doc("<p>Indicates when the S3 bucket was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedAt")
  createdAt: option<nonEmptyString>,
  @ocaml.doc("<p>The display name of the owner of the S3 bucket.</p>") @as("OwnerName")
  ownerName: option<nonEmptyString>,
  @ocaml.doc("<p>The canonical user ID of the owner of the S3 bucket.</p>") @as("OwnerId")
  ownerId: option<nonEmptyString>,
}
@ocaml.doc("<p>Details about an Amazon Redshift cluster.</p>")
type awsRedshiftClusterDetails = {
  @ocaml.doc("<p>The list of VPC security groups that the cluster belongs to, if the cluster is in a
         VPC.</p>")
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<awsRedshiftClusterVpcSecurityGroups>,
  @ocaml.doc("<p>The identifier of the VPC that the cluster is in, if the cluster is in a VPC.</p>")
  @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The current state of the cluster snapshot schedule.</p>
         <p>Valid values: <code>MODIFYING</code> | <code>ACTIVE</code> | <code>FAILED</code>
         </p>")
  @as("SnapshotScheduleState")
  snapshotScheduleState: option<nonEmptyString>,
  @ocaml.doc("<p>A unique identifier for the cluster snapshot schedule.</p>")
  @as("SnapshotScheduleIdentifier")
  snapshotScheduleIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the status of a cluster restore action. Only applies to a cluster that
         was created by restoring a snapshot.</p>")
  @as("RestoreStatus")
  restoreStatus: option<awsRedshiftClusterRestoreStatus>,
  @ocaml.doc("<p>Information about the resize operation for the cluster.</p>") @as("ResizeInfo")
  resizeInfo: option<awsRedshiftClusterResizeInfo>,
  @ocaml.doc("<p>Whether the cluster can be accessed from a public network.</p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>The weekly time range, in Universal Coordinated Time (UTC), during which system
         maintenance can occur.</p>
         <p>Format:
            <code>
               <i><day></i>:HH:MM-<i><day></i>:HH:MM</code>
         </p>
         <p>For the day values, use <code>mon</code> | <code>tue</code> | <code>wed</code> |
            <code>thu</code> | <code>fri</code> | <code>sat</code> | <code>sun</code>
         </p>
         <p>For example, <code>sun:09:32-sun:10:02</code>
         </p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<nonEmptyString>,
  @ocaml.doc("<p>A list of changes to the cluster that are currently pending.</p>")
  @as("PendingModifiedValues")
  pendingModifiedValues: option<awsRedshiftClusterPendingModifiedValues>,
  @ocaml.doc("<p>A list of cluster operations that are waiting to start.</p>") @as("PendingActions")
  pendingActions: option<stringList>,
  @ocaml.doc("<p>The number of compute nodes in the cluster.</p>") @as("NumberOfNodes")
  numberOfNodes: option<integer_>,
  @ocaml.doc("<p>The node type for the nodes in the cluster.</p>") @as("NodeType")
  nodeType: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates the start of the next maintenance window.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("NextMaintenanceWindowStartTime")
  nextMaintenanceWindowStartTime: option<nonEmptyString>,
  @ocaml.doc("<p>The master user name for the cluster. This name is used to connect to the database that
         is specified in as the value of <code>DBName</code>.</p>")
  @as("MasterUsername")
  masterUsername: option<nonEmptyString>,
  @ocaml.doc("<p>The default number of days to retain a manual snapshot.</p>
         <p>If the value is -1, the snapshot is retained indefinitely.</p>
         <p>This setting doesn't change the retention period of existing snapshots.</p>
         <p>Valid values: Either -1 or an integer between 1 and 3,653</p>")
  @as("ManualSnapshotRetentionPeriod")
  manualSnapshotRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>The name of the maintenance track for the cluster.</p>")
  @as("MaintenanceTrackName")
  maintenanceTrackName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the AWS KMS encryption key that is used to encrypt data in the
         cluster.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>A list of IAM roles that the cluster can use to access other AWS services.</p>")
  @as("IamRoles")
  iamRoles: option<awsRedshiftClusterIamRoles>,
  @ocaml.doc("<p>Information about whether the Amazon Redshift cluster finished applying any changes to
         hardware security module (HSM) settings that were specified in a modify cluster
         command.</p>")
  @as("HsmStatus")
  hsmStatus: option<awsRedshiftClusterHsmStatus>,
  @ocaml.doc("<p>The status of the next expected snapshot.</p>
         <p>Valid values: <code>OnTrack</code> | <code>Pending</code>
         </p>")
  @as("ExpectedNextSnapshotScheduleTimeStatus")
  expectedNextSnapshotScheduleTimeStatus: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the next snapshot is expected to be taken. The cluster must have a valid
         snapshot schedule and have backups enabled.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("ExpectedNextSnapshotScheduleTime")
  expectedNextSnapshotScheduleTime: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether to create the cluster with enhanced VPC routing enabled.</p>")
  @as("EnhancedVpcRouting")
  enhancedVpcRouting: option<boolean_>,
  @ocaml.doc("<p>The connection endpoint.</p>") @as("Endpoint")
  endpoint: option<awsRedshiftClusterEndpoint>,
  @ocaml.doc("<p>Indicates whether the data in the cluster is encrypted at rest.</p>")
  @as("Encrypted")
  encrypted: option<boolean_>,
  @ocaml.doc("<p>The number of nodes that you can use the elastic resize method to resize the cluster
         to.</p>")
  @as("ElasticResizeNumberOfNodeOptions")
  elasticResizeNumberOfNodeOptions: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the status of the Elastic IP (EIP) address.</p>")
  @as("ElasticIpStatus")
  elasticIpStatus: option<awsRedshiftClusterElasticIpStatus>,
  @ocaml.doc("<p>List of time windows during which maintenance was deferred.</p>")
  @as("DeferredMaintenanceWindows")
  deferredMaintenanceWindows: option<awsRedshiftClusterDeferredMaintenanceWindows>,
  @ocaml.doc("<p>The name of the initial database that was created when the cluster was created.</p>
         <p>The same name is returned for the life of the cluster.</p>
         <p>If an initial database is not specified, a database named <code>devdev</code> is created
         by default.</p>")
  @as("DBName")
  dbname: option<nonEmptyString>,
  @ocaml.doc("<p>The version ID of the Amazon Redshift engine that runs on the cluster.</p>")
  @as("ClusterVersion")
  clusterVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the subnet group that is associated with the cluster. This parameter is
         valid only when the cluster is in a VPC.</p>")
  @as("ClusterSubnetGroupName")
  clusterSubnetGroupName: option<nonEmptyString>,
  @ocaml.doc("<p>The current status of the cluster.</p>
         <p>Valid values: <code>available</code> | <code>available, prep-for-resize</code> |
            <code>available, resize-cleanup</code> |<code> cancelling-resize</code> |
            <code>creating</code> | <code>deleting</code> | <code>final-snapshot</code> |
            <code>hardware-failure</code> | <code>incompatible-hsm</code> |<code>
            incompatible-network</code> | <code>incompatible-parameters</code> |
            <code>incompatible-restore</code> | <code>modifying</code> | <code>paused</code> |
            <code>rebooting</code> | <code>renaming</code> | <code>resizing</code> |
            <code>rotating-keys</code> | <code>storage-full</code> |
         <code>updating-hsm</code>
         </p>")
  @as("ClusterStatus")
  clusterStatus: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the destination Region and retention period for the cross-Region
         snapshot copy.</p>")
  @as("ClusterSnapshotCopyStatus")
  clusterSnapshotCopyStatus: option<awsRedshiftClusterClusterSnapshotCopyStatus>,
  @ocaml.doc("<p>A list of cluster security groups that are associated with the cluster.</p>")
  @as("ClusterSecurityGroups")
  clusterSecurityGroups: option<awsRedshiftClusterClusterSecurityGroups>,
  @ocaml.doc("<p>The specific revision number of the database in the cluster.</p>")
  @as("ClusterRevisionNumber")
  clusterRevisionNumber: option<nonEmptyString>,
  @ocaml.doc("<p>The public key for the cluster.</p>") @as("ClusterPublicKey")
  clusterPublicKey: option<nonEmptyString>,
  @ocaml.doc("<p>The list of cluster parameter groups that are associated with this cluster.</p>")
  @as("ClusterParameterGroups")
  clusterParameterGroups: option<awsRedshiftClusterClusterParameterGroups>,
  @ocaml.doc("<p>The nodes in the cluster.</p>") @as("ClusterNodes")
  clusterNodes: option<awsRedshiftClusterClusterNodes>,
  @ocaml.doc("<p>The unique identifier of the cluster.</p>") @as("ClusterIdentifier")
  clusterIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the cluster was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("ClusterCreateTime")
  clusterCreateTime: option<nonEmptyString>,
  @ocaml.doc("<p>The availability status of the cluster for queries. Possible values are the
         following:</p>
         <ul>
            <li>
               <p>
                  <code>Available</code> - The cluster is available for queries.</p>
            </li>
            <li>
               <p>
                  <code>Unavailable</code> - The cluster is not available for queries.</p>
            </li>
            <li>
               <p>
                  <code>Maintenance</code> - The cluster is intermittently available for queries due
               to maintenance activities.</p>
            </li>
            <li>
               <p>
                  <code>Modifying</code> -The cluster is intermittently available for queries due to
               changes that modify the cluster.</p>
            </li>
            <li>
               <p>
                  <code>Failed</code> - The cluster failed and is not available for queries.</p>
            </li>
         </ul>")
  @as("ClusterAvailabilityStatus")
  clusterAvailabilityStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the Availability Zone in which the cluster is located.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<nonEmptyString>,
  @ocaml.doc("<p>The number of days that automatic cluster snapshots are retained.</p>")
  @as("AutomatedSnapshotRetentionPeriod")
  automatedSnapshotRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>Indicates whether major version upgrades are applied automatically to the cluster during
         the maintenance window.</p>")
  @as("AllowVersionUpgrade")
  allowVersionUpgrade: option<boolean_>,
}
@ocaml.doc("<p>Contains the details of an Amazon RDS DB instance.</p>")
type awsRdsDbInstanceDetails = {
  @ocaml.doc("<p>The upper limit to which Amazon RDS can automatically scale the storage of the DB
         instance.</p>")
  @as("MaxAllocatedStorage")
  maxAllocatedStorage: option<integer_>,
  @as("ListenerEndpoint") listenerEndpoint: option<awsRdsDbInstanceEndpoint>,
  @ocaml.doc("<p>The number of CPU cores and the number of threads per core for the DB instance class of
         the DB instance.</p>")
  @as("ProcessorFeatures")
  processorFeatures: option<awsRdsDbProcessorFeatures>,
  @ocaml.doc("<p>A list of log types that this DB instance is configured to export to CloudWatch
         Logs.</p>")
  @as("EnabledCloudWatchLogsExports")
  enabledCloudWatchLogsExports: option<stringList>,
  @ocaml.doc("<p>The number of days to retain Performance Insights data.</p>")
  @as("PerformanceInsightsRetentionPeriod")
  performanceInsightsRetentionPeriod: option<integer_>,
  @ocaml.doc(
    "<p>The identifier of the AWS KMS key used to encrypt the Performance Insights data.</p>"
  )
  @as("PerformanceInsightsKmsKeyId")
  performanceInsightsKmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether Performance Insights is enabled for the DB instance.</p>")
  @as("PerformanceInsightsEnabled")
  performanceInsightsEnabled: option<boolean_>,
  @ocaml.doc("<p>The time zone of the DB instance.</p>") @as("Timezone")
  timezone: option<nonEmptyString>,
  @ocaml.doc("<p>The order in which to promote an Aurora replica to the primary instance after a failure
         of the existing primary instance.</p>")
  @as("PromotionTier")
  promotionTier: option<integer_>,
  @ocaml.doc("<p>The ARN for the IAM role that permits Amazon RDS to send enhanced monitoring metrics to
         CloudWatch Logs.</p>")
  @as("MonitoringRoleArn")
  monitoringRoleArn: option<nonEmptyString>,
  @ocaml.doc("<p>The interval, in seconds, between points when enhanced monitoring metrics are collected
         for the DB instance.</p>")
  @as("MonitoringInterval")
  monitoringInterval: option<integer_>,
  @ocaml.doc("<p>Whether to copy resource tags to snapshots of the DB instance.</p>")
  @as("CopyTagsToSnapshot")
  copyTagsToSnapshot: option<boolean_>,
  @ocaml.doc(
    "<p>The Active Directory domain membership records associated with the DB instance.</p>"
  )
  @as("DomainMemberships")
  domainMemberships: option<awsRdsDbDomainMemberships>,
  @ocaml.doc("<p>The storage type for the DB instance.</p>") @as("StorageType")
  storageType: option<nonEmptyString>,
  @ocaml.doc("<p>The status of a read replica. If the instance isn't a read replica, this is
         empty.</p>")
  @as("StatusInfos")
  statusInfos: option<awsRdsDbStatusInfos>,
  @ocaml.doc("<p>For a DB instance with multi-Availability Zone support, the name of the secondary
         Availability Zone.</p>")
  @as("SecondaryAvailabilityZone")
  secondaryAvailabilityZone: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the character set that this DB instance is associated with.</p>")
  @as("CharacterSetName")
  characterSetName: option<nonEmptyString>,
  @ocaml.doc("<p>The list of option group memberships for this DB instance.</p>")
  @as("OptionGroupMemberships")
  optionGroupMemberships: option<awsRdsDbOptionGroupMemberships>,
  @ocaml.doc(
    "<p>Specifies the provisioned IOPS (I/O operations per second) for this DB instance.</p>"
  )
  @as("Iops")
  iops: option<integer_>,
  @ocaml.doc("<p>License model information for this DB instance.</p>") @as("LicenseModel")
  licenseModel: option<nonEmptyString>,
  @ocaml.doc("<p>List of identifiers of Aurora DB clusters to which the RDS DB instance is replicated as
         a read replica.</p>")
  @as("ReadReplicaDBClusterIdentifiers")
  readReplicaDBClusterIdentifiers: option<stringList>,
  @ocaml.doc("<p>List of identifiers of the read replicas associated with this DB instance.</p>")
  @as("ReadReplicaDBInstanceIdentifiers")
  readReplicaDBInstanceIdentifiers: option<stringList>,
  @ocaml.doc("<p>If this DB instance is a read replica, contains the identifier of the source DB
         instance.</p>")
  @as("ReadReplicaSourceDBInstanceIdentifier")
  readReplicaSourceDBInstanceIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates whether minor version patches are applied automatically.</p>")
  @as("AutoMinorVersionUpgrade")
  autoMinorVersionUpgrade: option<boolean_>,
  @ocaml.doc("<p>Specifies the latest time to which a database can be restored with point-in-time
         restore.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LatestRestorableTime")
  latestRestorableTime: option<nonEmptyString>,
  @ocaml.doc("<p>Changes to the DB instance that are currently pending.</p>")
  @as("PendingModifiedValues")
  pendingModifiedValues: option<awsRdsDbPendingModifiedValues>,
  @ocaml.doc("<p>The weekly time range during which system maintenance can occur, in Universal
         Coordinated Time (UTC).</p>
         <p>Uses the format <code><day>:HH:MM-<day>:HH:MM</code>.</p>
         <p>For the day values, use
            <code>mon</code>|<code>tue</code>|<code>wed</code>|<code>thu</code>|<code>fri</code>|<code>sat</code>|<code>sun</code>.</p>
         <p>For example, <code>sun:09:32-sun:10:02</code>.</p>")
  @as("PreferredMaintenanceWindow")
  preferredMaintenanceWindow: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the subnet group that is associated with the DB instance.</p>")
  @as("DbSubnetGroup")
  dbSubnetGroup: option<awsRdsDbSubnetGroup>,
  @ocaml.doc("<p>The Availability Zone where the DB instance will be created.</p>")
  @as("AvailabilityZone")
  availabilityZone: option<nonEmptyString>,
  @ocaml.doc("<p>A list of the DB parameter groups to assign to the DB instance.</p>")
  @as("DbParameterGroups")
  dbParameterGroups: option<awsRdsDbParameterGroups>,
  @ocaml.doc("<p>A list of the DB security groups to assign to the DB instance.</p>")
  @as("DbSecurityGroups")
  dbSecurityGroups: option<stringList>,
  @ocaml.doc("<p>The number of days for which to retain automated backups.</p>")
  @as("BackupRetentionPeriod")
  backupRetentionPeriod: option<integer_>,
  @ocaml.doc("<p>The range of time each day when automated backups are created, if automated backups are
         enabled.</p>
         <p>Uses the format <code>HH:MM-HH:MM</code>. For example, <code>04:52-05:22</code>.</p>")
  @as("PreferredBackupWindow")
  preferredBackupWindow: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The amount of storage (in gigabytes) to initially allocate for the DB instance.</p>"
  )
  @as("AllocatedStorage")
  allocatedStorage: option<integer_>,
  @ocaml.doc("<p>The master user name of the DB instance.</p>") @as("MasterUsername")
  masterUsername: option<nonEmptyString>,
  @ocaml.doc("<p>The current status of the DB instance.</p>") @as("DbInstanceStatus")
  dbInstanceStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the CloudWatch Logs log stream that receives the enhanced monitoring metrics
         data for the DB instance.</p>")
  @as("EnhancedMonitoringResourceArn")
  enhancedMonitoringResourceArn: option<nonEmptyString>,
  @ocaml.doc("<p>Whether the DB instance is a multiple Availability Zone deployment.</p>")
  @as("MultiAz")
  multiAz: option<boolean_>,
  @ocaml.doc("<p>A list of VPC security groups that the DB instance belongs to.</p>")
  @as("VpcSecurityGroups")
  vpcSecurityGroups: option<awsRdsDbInstanceVpcSecurityGroups>,
  @ocaml.doc("<p>The ARN from the key store with which the instance is associated for TDE
         encryption.</p>")
  @as("TdeCredentialArn")
  tdeCredentialArn: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies whether the DB instance is encrypted.</p>") @as("StorageEncrypted")
  storageEncrypted: option<boolean_>,
  @ocaml.doc("<p>Specifies the accessibility options for the DB instance.</p>
         <p>A value of true specifies an Internet-facing instance with a publicly resolvable DNS
         name, which resolves to a public IP address.</p>
         <p>A value of false specifies an internal instance with a DNS name that resolves to a
         private IP address. </p>")
  @as("PubliclyAccessible")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>If <code>StorageEncrypted</code> is true, the AWS KMS key identifier for the encrypted
         DB instance.</p>")
  @as("KmsKeyId")
  kmsKeyId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the DB instance was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("InstanceCreateTime")
  instanceCreateTime: option<nonEmptyString>,
  @ocaml.doc("<p>True if mapping of AWS Identity and Access Management (IAM) accounts to database
         accounts is enabled, and otherwise false.</p>
         <p>IAM database authentication can be enabled for the following database engines.</p>
         <ul>
            <li>
               <p>For MySQL 5.6, minor version 5.6.34 or higher</p>
            </li>
            <li>
               <p>For MySQL 5.7, minor version 5.7.16 or higher</p>
            </li>
            <li>
               <p>Aurora 5.6 or higher</p>
            </li>
         </ul>")
  @as("IAMDatabaseAuthenticationEnabled")
  iamdatabaseAuthenticationEnabled: option<boolean_>,
  @ocaml.doc("<p>Indicates the database engine version.</p>") @as("EngineVersion")
  engineVersion: option<nonEmptyString>,
  @ocaml.doc("<p>Provides the name of the database engine to use for this DB instance.</p>")
  @as("Engine")
  engine: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies the connection endpoint.</p>") @as("Endpoint")
  endpoint: option<awsRdsDbInstanceEndpoint>,
  @ocaml.doc("<p>Indicates whether the DB instance has deletion protection enabled.</p>
         <p>When deletion protection is enabled, the database cannot be deleted.</p>")
  @as("DeletionProtection")
  deletionProtection: option<boolean_>,
  @ocaml.doc("<p>The meaning of this parameter differs according to the database engine you use.</p>
         <p>
            <b>MySQL, MariaDB, SQL Server, PostgreSQL</b>
         </p>
         <p>Contains the name of the initial database of this instance that was provided at create
         time, if one was specified when the DB instance was created. This same name is returned for
         the life of the DB instance.</p>
         <p>
            <b>Oracle</b>
         </p>
         <p>Contains the Oracle System ID (SID) of the created DB instance. Not shown when the
         returned parameters do not apply to an Oracle DB instance. </p>")
  @as("DBName")
  dbname: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS Region-unique, immutable identifier for the DB instance. This identifier is
         found in AWS CloudTrail log entries whenever the AWS KMS key for the DB instance is
         accessed. </p>")
  @as("DbiResourceId")
  dbiResourceId: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies the port that the DB instance listens on. If the DB instance is part of a DB
         cluster, this can be a different port than the DB cluster port.</p>")
  @as("DbInstancePort")
  dbInstancePort: option<integer_>,
  @ocaml.doc(
    "<p>Contains the name of the compute and memory capacity class of the DB instance.</p>"
  )
  @as("DBInstanceClass")
  dbinstanceClass: option<nonEmptyString>,
  @ocaml.doc("<p>Contains a user-supplied database identifier. This identifier is the unique key that
         identifies a DB instance.</p>")
  @as("DBInstanceIdentifier")
  dbinstanceIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>If the DB instance is a member of a DB cluster, contains the name of the DB cluster that
         the DB instance is a member of.</p>")
  @as("DBClusterIdentifier")
  dbclusterIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the CA certificate for this DB instance.</p>")
  @as("CACertificateIdentifier")
  cacertificateIdentifier: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS Identity and Access Management (IAM) roles associated with the DB
         instance.</p>")
  @as("AssociatedRoles")
  associatedRoles: option<awsRdsDbInstanceAssociatedRoles>,
}
@ocaml.doc("<p>Contains information about an IAM role, including all of the role's policies.</p>")
type awsIamRoleDetails = {
  @ocaml.doc("<p>The path to the role.</p>") @as("Path") path: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The maximum session duration (in seconds) that you want to set for the specified role.</p>"
  )
  @as("MaxSessionDuration")
  maxSessionDuration: option<integer_>,
  @ocaml.doc("<p>The list of inline policies that are embedded in the role.</p>")
  @as("RolePolicyList")
  rolePolicyList: option<awsIamRolePolicyList>,
  @ocaml.doc("<p>The friendly name that identifies the role.</p>") @as("RoleName")
  roleName: option<nonEmptyString>,
  @ocaml.doc("<p>The stable and unique string identifying the role.</p>") @as("RoleId")
  roleId: option<nonEmptyString>,
  @as("PermissionsBoundary") permissionsBoundary: option<awsIamPermissionsBoundary>,
  @ocaml.doc("<p>The list of instance profiles that contain this role.</p>")
  @as("InstanceProfileList")
  instanceProfileList: option<awsIamInstanceProfileList>,
  @ocaml.doc("<p>Indicates when the role was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreateDate")
  createDate: option<nonEmptyString>,
  @ocaml.doc("<p>The list of the managed policies that are attached to the role.</p>")
  @as("AttachedManagedPolicies")
  attachedManagedPolicies: option<awsIamAttachedManagedPolicyList>,
  @ocaml.doc("<p>The trust policy that grants permission to assume the role.</p>")
  @as("AssumeRolePolicyDocument")
  assumeRolePolicyDocument: option<awsIamRoleAssumeRolePolicyDocument>,
}
@ocaml.doc("<p>Details about an EC2 security group.</p>")
type awsEc2SecurityGroupDetails = {
  @ocaml.doc("<p>[VPC only] The outbound rules associated with the security group.</p>")
  @as("IpPermissionsEgress")
  ipPermissionsEgress: option<awsEc2SecurityGroupIpPermissionList>,
  @ocaml.doc("<p>The inbound rules associated with the security group.</p>") @as("IpPermissions")
  ipPermissions: option<awsEc2SecurityGroupIpPermissionList>,
  @ocaml.doc("<p>[VPC only] The ID of the VPC for the security group.</p>") @as("VpcId")
  vpcId: option<nonEmptyString>,
  @ocaml.doc("<p>The AWS account ID of the owner of the security group.</p>") @as("OwnerId")
  ownerId: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the security group.</p>") @as("GroupId") groupId: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the security group.</p>") @as("GroupName")
  groupName: option<nonEmptyString>,
}
type awsDynamoDbTableReplicaList = array<awsDynamoDbTableReplica>
type awsCloudFrontDistributionOriginGroupsItemList = array<awsCloudFrontDistributionOriginGroup>
@ocaml.doc("<p>Provides details about an AWS Certificate Manager certificate.</p>")
type awsCertificateManagerCertificateDetails = {
  @ocaml.doc("<p>The source of the certificate. For certificates that AWS Certificate Manager provides,
            <code>Type</code> is <code>AMAZON_ISSUED</code>. For certificates that are imported with
            <code>ImportCertificate</code>, <code>Type</code> is <code>IMPORTED</code>.</p>
         <p>Valid values: <code>IMPORTED</code> | <code>AMAZON_ISSUED</code> |
         <code>PRIVATE</code>
         </p>")
  @as("Type")
  type_: option<nonEmptyString>,
  @ocaml.doc("<p>One or more domain names (subject alternative names) included in the certificate. This
         list contains the domain names that are bound to the public key that is contained in the
         certificate.</p>
         <p>The subject alternative names include the canonical domain name (CN) of the certificate
         and additional domain names that can be used to connect to the website.</p>")
  @as("SubjectAlternativeNames")
  subjectAlternativeNames: option<stringList>,
  @ocaml.doc("<p>The name of the entity that is associated with the public key contained in the
         certificate.</p>")
  @as("Subject")
  subject: option<nonEmptyString>,
  @ocaml.doc("<p>The status of the certificate.</p>
         <p>Valid values: <code>PENDING_VALIDATION</code> | <code>ISSUED</code> |
            <code>INACTIVE</code> | <code>EXPIRED</code> | <code>VALIDATION_TIMED_OUT</code> |
            <code>REVOKED</code> | <code>FAILED</code>
         </p>")
  @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>The algorithm that was used to sign the certificate.</p>")
  @as("SignatureAlgorithm")
  signatureAlgorithm: option<nonEmptyString>,
  @ocaml.doc("<p>The serial number of the certificate.</p>") @as("Serial")
  serial: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the status of the AWS Certificate Manager managed renewal for the
         certificate. Provided only when the certificate type is <code>AMAZON_ISSUED</code>.</p>")
  @as("RenewalSummary")
  renewalSummary: option<awsCertificateManagerCertificateRenewalSummary>,
  @ocaml.doc("<p>Whether the certificate is eligible for renewal.</p>
         <p>Valid values: <code>ELIGIBLE</code> | <code>INELIGIBLE</code>
         </p>")
  @as("RenewalEligibility")
  renewalEligibility: option<nonEmptyString>,
  @ocaml.doc("<p>Provides a value that specifies whether to add the certificate to a transparency
         log.</p>")
  @as("Options")
  options: option<awsCertificateManagerCertificateOptions>,
  @ocaml.doc("<p>The time before which the certificate is not valid.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("NotBefore")
  notBefore: option<nonEmptyString>,
  @ocaml.doc("<p>The time after which the certificate becomes invalid.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("NotAfter")
  notAfter: option<nonEmptyString>,
  @ocaml.doc("<p>A list of key usage X.509 v3 extension objects.</p>") @as("KeyUsages")
  keyUsages: option<awsCertificateManagerCertificateKeyUsages>,
  @ocaml.doc("<p>The algorithm that was used to generate the public-private key pair.</p>
         <p>Valid values: <code>RSA_2048</code> | <code>RSA_1024</code> |<code> RSA_4096</code> |
            <code>EC_prime256v1</code> | <code>EC_secp384r1</code> |
         <code>EC_secp521r1</code>
         </p>")
  @as("KeyAlgorithm")
  keyAlgorithm: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the certificate authority that issued and signed the certificate.</p>")
  @as("Issuer")
  issuer: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the certificate was issued. Provided if the certificate type is
            <code>AMAZON_ISSUED</code>.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("IssuedAt")
  issuedAt: option<nonEmptyString>,
  @ocaml.doc("<p>The list of ARNs for the AWS resources that use the certificate.</p>")
  @as("InUseBy")
  inUseBy: option<stringList>,
  @ocaml.doc("<p>Indicates when the certificate was imported. Provided if the certificate type is
            <code>IMPORTED</code>.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("ImportedAt")
  importedAt: option<nonEmptyString>,
  @ocaml.doc("<p>For a failed certificate request, the reason for the failure.</p>
         <p>Valid values: <code>NO_AVAILABLE_CONTACTS</code> |
            <code>ADDITIONAL_VERIFICATION_REQUIRED</code> | <code>DOMAIN_NOT_ALLOWED</code> |
            <code>INVALID_PUBLIC_DOMAIN</code> | <code>DOMAIN_VALIDATION_DENIED</code> |
            <code>CAA_ERROR</code> | <code>PCA_LIMIT_EXCEEDED</code> | <code>PCA_INVALID_ARN</code>
         | <code>PCA_INVALID_STATE</code> | <code>PCA_REQUEST_FAILED</code> |
            <code>PCA_NAME_CONSTRAINTS_VALIDATION</code> | <code>PCA_RESOURCE_NOT_FOUND</code> |
            <code>PCA_INVALID_ARGS</code> | <code>PCA_INVALID_DURATION</code> |
            <code>PCA_ACCESS_DENIED</code> | <code>SLR_NOT_FOUND</code> | <code>OTHER</code>
         </p>")
  @as("FailureReason")
  failureReason: option<nonEmptyString>,
  @ocaml.doc("<p>Contains a list of Extended Key Usage X.509 v3 extension objects. Each object specifies
         a purpose for which the certificate public key can be used and consists of a name and an
         object identifier (OID).</p>")
  @as("ExtendedKeyUsages")
  extendedKeyUsages: option<awsCertificateManagerCertificateExtendedKeyUsages>,
  @ocaml.doc("<p>Contains information about the initial validation of each domain name that occurs as a
         result of the <code>RequestCertificate</code> request.</p>
         <p>Only provided if the certificate type is <code>AMAZON_ISSUED</code>.</p>")
  @as("DomainValidationOptions")
  domainValidationOptions: option<awsCertificateManagerCertificateDomainValidationOptions>,
  @ocaml.doc("<p>The fully qualified domain name (FQDN), such as www.example.com, that is secured by the
         certificate.</p>")
  @as("DomainName")
  domainName: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the certificate was requested.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedAt")
  createdAt: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the private certificate authority (CA) that will be used to issue the
         certificate.</p>")
  @as("CertificateAuthorityArn")
  certificateAuthorityArn: option<nonEmptyString>,
}
type sensitiveDataDetectionsList = array<sensitiveDataDetections>
type networkPathList = array<networkPathComponent>
type insightList = array<insight>
type customDataIdentifiersDetectionsList = array<customDataIdentifiersDetections>
@ocaml.doc("<p>Provides details about a DynamoDB table.</p>")
type awsDynamoDbTableDetails = {
  @ocaml.doc("<p>The current status of the table.</p>") @as("TableStatus")
  tableStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The total size of the table in bytes.</p>") @as("TableSizeBytes")
  tableSizeBytes: option<sizeBytes>,
  @ocaml.doc("<p>The name of the table.</p>") @as("TableName") tableName: option<nonEmptyString>,
  @ocaml.doc("<p>The identifier of the table.</p>") @as("TableId") tableId: option<nonEmptyString>,
  @ocaml.doc("<p>The current DynamoDB Streams configuration for the table.</p>")
  @as("StreamSpecification")
  streamSpecification: option<awsDynamoDbTableStreamSpecification>,
  @ocaml.doc("<p>Information about the server-side encryption for the table.</p>")
  @as("SseDescription")
  sseDescription: option<awsDynamoDbTableSseDescription>,
  @ocaml.doc("<p>Information about the restore for the table.</p>") @as("RestoreSummary")
  restoreSummary: option<awsDynamoDbTableRestoreSummary>,
  @ocaml.doc("<p>The list of replicas of this table.</p>") @as("Replicas")
  replicas: option<awsDynamoDbTableReplicaList>,
  @ocaml.doc("<p>Information about the provisioned throughput for the table.</p>")
  @as("ProvisionedThroughput")
  provisionedThroughput: option<awsDynamoDbTableProvisionedThroughput>,
  @ocaml.doc("<p>The list of local secondary indexes for the table.</p>")
  @as("LocalSecondaryIndexes")
  localSecondaryIndexes: option<awsDynamoDbTableLocalSecondaryIndexList>,
  @ocaml.doc("<p>The label of the latest stream. The label is not a unique identifier.</p>")
  @as("LatestStreamLabel")
  latestStreamLabel: option<nonEmptyString>,
  @ocaml.doc("<p>The ARN of the latest stream for the table.</p>") @as("LatestStreamArn")
  latestStreamArn: option<nonEmptyString>,
  @ocaml.doc("<p>The primary key structure for the table.</p>") @as("KeySchema")
  keySchema: option<awsDynamoDbTableKeySchemaList>,
  @ocaml.doc("<p>The number of items in the table.</p>") @as("ItemCount")
  itemCount: option<integer_>,
  @ocaml.doc("<p>The version of global tables being used.</p>") @as("GlobalTableVersion")
  globalTableVersion: option<nonEmptyString>,
  @ocaml.doc("<p>List of global secondary indexes for the table.</p>") @as("GlobalSecondaryIndexes")
  globalSecondaryIndexes: option<awsDynamoDbTableGlobalSecondaryIndexList>,
  @ocaml.doc("<p>Indicates when the table was created.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreationDateTime")
  creationDateTime: option<nonEmptyString>,
  @ocaml.doc("<p>Information about the billing for read/write capacity on the table.</p>")
  @as("BillingModeSummary")
  billingModeSummary: option<awsDynamoDbTableBillingModeSummary>,
  @ocaml.doc("<p>A list of attribute definitions for the table.</p>") @as("AttributeDefinitions")
  attributeDefinitions: option<awsDynamoDbTableAttributeDefinitionList>,
}
@ocaml.doc("<p>Provides information about origin groups that are associated with the
         distribution.</p>")
type awsCloudFrontDistributionOriginGroups = {
  @ocaml.doc("<p>The list of origin groups.</p>") @as("Items")
  items: option<awsCloudFrontDistributionOriginGroupsItemList>,
}
@ocaml.doc("<p>Provides details about one of the following actions that affects or that was taken on a resource:</p>
         <ul>
            <li>
               <p>A remote IP address issued an AWS API call</p>
            </li>
            <li>
               <p>A DNS request was received</p>
            </li>
            <li>
               <p>A remote IP address attempted to connect to an EC2 instance</p>
            </li>
            <li>
               <p>A remote IP address attempted a port probe on an EC2 instance</p>
            </li>
         </ul>")
type action = {
  @ocaml.doc("<p>Included if <code>ActionType</code> is <code>PORT_PROBE</code>. Provides details about
         the port probe that was detected. </p>")
  @as("PortProbeAction")
  portProbeAction: option<portProbeAction>,
  @ocaml.doc("<p>Included if <code>ActionType</code> is <code>DNS_REQUEST</code>. Provides details about
         the DNS request that was detected. </p>")
  @as("DnsRequestAction")
  dnsRequestAction: option<dnsRequestAction>,
  @ocaml.doc("<p>Included if <code>ActionType</code> is <code>AWS_API_CALL</code>. Provides details about
         the API call that was detected. </p>")
  @as("AwsApiCallAction")
  awsApiCallAction: option<awsApiCallAction>,
  @ocaml.doc("<p>Included if <code>ActionType</code> is <code>NETWORK_CONNECTION</code>. Provides details
         about the network connection that was detected.</p>")
  @as("NetworkConnectionAction")
  networkConnectionAction: option<networkConnectionAction>,
  @ocaml.doc("<p>The type of action that was detected. The possible action types are:</p>
         <ul>
            <li>
               <p>
                  <code>NETWORK_CONNECTION</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AWS_API_CALL</code>
               </p>
            </li>
            <li>
               <p>
                  <code>DNS_REQUEST</code>
               </p>
            </li>
            <li>
               <p>
                  <code>PORT_PROBE</code>
               </p>
            </li>
         </ul>")
  @as("ActionType")
  actionType: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>Contains a detected instance of sensitive data that are based on built-in identifiers.</p>"
)
type sensitiveDataResult = {
  @ocaml.doc("<p>The total number of occurrences of sensitive data.</p>") @as("TotalCount")
  totalCount: option<long>,
  @ocaml.doc("<p>The list of detected instances of sensitive data.</p>") @as("Detections")
  detections: option<sensitiveDataDetectionsList>,
  @ocaml.doc(
    "<p>The category of sensitive data that was detected. For example, the category can indicate that the sensitive data involved credentials, financial information, or personal information.</p>"
  )
  @as("Category")
  category: option<nonEmptyString>,
}
@ocaml.doc(
  "<p>Contains an instance of sensitive data that was detected by a customer-defined identifier.</p>"
)
type customDataIdentifiersResult = {
  @ocaml.doc("<p>The total number of occurrences of sensitive data.</p>") @as("TotalCount")
  totalCount: option<long>,
  @ocaml.doc("<p>The list of detected instances of sensitive data.</p>") @as("Detections")
  detections: option<customDataIdentifiersDetectionsList>,
}
@ocaml.doc("<p>A distribution configuration.</p>")
type awsCloudFrontDistributionDetails = {
  @ocaml.doc(
    "<p>A unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution.</p>"
  )
  @as("WebAclId")
  webAclId: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates the current status of the distribution.</p>") @as("Status")
  status: option<nonEmptyString>,
  @ocaml.doc("<p>Provides information about the origin groups in the distribution.</p>")
  @as("OriginGroups")
  originGroups: option<awsCloudFrontDistributionOriginGroups>,
  @ocaml.doc("<p>A complex type that contains information about origins for this distribution.</p>")
  @as("Origins")
  origins: option<awsCloudFrontDistributionOrigins>,
  @ocaml.doc(
    "<p>A complex type that controls whether access logs are written for the distribution.</p>"
  )
  @as("Logging")
  logging: option<awsCloudFrontDistributionLogging>,
  @ocaml.doc("<p>Indicates when that the distribution was last modified.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastModifiedTime")
  lastModifiedTime: option<nonEmptyString>,
  @ocaml.doc("<p>The entity tag is a hash of the object.</p>") @as("ETag")
  etag: option<nonEmptyString>,
  @ocaml.doc("<p>The domain name corresponding to the distribution.</p>") @as("DomainName")
  domainName: option<nonEmptyString>,
  @ocaml.doc("<p>The object that CloudFront sends in response to requests from the origin (for example,
         index.html) when a viewer requests the root URL for the distribution
         (http://www.example.com) instead of an object in your distribution
         (http://www.example.com/product-description.html). </p>")
  @as("DefaultRootObject")
  defaultRootObject: option<nonEmptyString>,
  @ocaml.doc("<p>The default cache behavior for the configuration.</p>") @as("DefaultCacheBehavior")
  defaultCacheBehavior: option<awsCloudFrontDistributionDefaultCacheBehavior>,
  @ocaml.doc("<p>Provides information about the cache configuration for the distribution.</p>")
  @as("CacheBehaviors")
  cacheBehaviors: option<awsCloudFrontDistributionCacheBehaviors>,
}
type sensitiveDataResultList = array<sensitiveDataResult>
@ocaml.doc("<p>Additional details about a resource related to a finding.</p>
         <p>To provide the details, use the object that corresponds to the resource type. For
         example, if the resource type is <code>AwsEc2Instance</code>, then you use the
            <code>AwsEc2Instance</code> object to provide the details.</p>
         <p>If the type-specific object does not contain all of the fields you want to populate,
         then you use the <code>Other</code> object to populate those additional fields.</p>
         <p>You also use the <code>Other</code> object to populate the details when the selected
         type does not have a corresponding object.</p>")
type resourceDetails = {
  @ocaml.doc("<p>Details about a resource that are not available in a type-specific details object. Use
         the <code>Other</code> object in the following cases.</p>
         <ul>
            <li>
               <p>The type-specific object does not contain all of the fields that you want to
               populate. In this case, first use the type-specific object to populate those fields.
               Use the <code>Other</code> object to populate the fields that are missing from the
               type-specific object.</p>
            </li>
            <li>
               <p>The resource type does not have a corresponding object. This includes resources
               for which the type is <code>Other</code>. </p>
            </li>
         </ul>")
  @as("Other")
  other: option<fieldMap>,
  @ocaml.doc("<p>Details about a container resource related to a finding.</p>") @as("Container")
  container: option<containerDetails>,
  @ocaml.doc("<p>Details about an Amazon RDS database cluster.</p>") @as("AwsRdsDbCluster")
  awsRdsDbCluster: option<awsRdsDbClusterDetails>,
  @ocaml.doc("<p>Details about an Amazon RDS database cluster snapshot.</p>")
  @as("AwsRdsDbClusterSnapshot")
  awsRdsDbClusterSnapshot: option<awsRdsDbClusterSnapshotDetails>,
  @ocaml.doc("<p>Details about an Amazon RDS database snapshot.</p>") @as("AwsRdsDbSnapshot")
  awsRdsDbSnapshot: option<awsRdsDbSnapshotDetails>,
  @ocaml.doc("<p>Details for a WAF WebACL.</p>") @as("AwsWafWebAcl")
  awsWafWebAcl: option<awsWafWebAclDetails>,
  @ocaml.doc("<p>Details about an SQS queue.</p>") @as("AwsSqsQueue")
  awsSqsQueue: option<awsSqsQueueDetails>,
  @ocaml.doc("<p>Details about an SNS topic.</p>") @as("AwsSnsTopic")
  awsSnsTopic: option<awsSnsTopicDetails>,
  @ocaml.doc("<p>Details about an Amazon RDS database instance.</p>") @as("AwsRdsDbInstance")
  awsRdsDbInstance: option<awsRdsDbInstanceDetails>,
  @ocaml.doc("<p>Details for a Lambda layer version.</p>") @as("AwsLambdaLayerVersion")
  awsLambdaLayerVersion: option<awsLambdaLayerVersionDetails>,
  @ocaml.doc("<p>Details about a Lambda function.</p>") @as("AwsLambdaFunction")
  awsLambdaFunction: option<awsLambdaFunctionDetails>,
  @ocaml.doc("<p>Details about a KMS key.</p>") @as("AwsKmsKey")
  awsKmsKey: option<awsKmsKeyDetails>,
  @ocaml.doc("<p>Details about an IAM role.</p>") @as("AwsIamRole")
  awsIamRole: option<awsIamRoleDetails>,
  @ocaml.doc("<p>Contains details about an IAM group.</p>") @as("AwsIamGroup")
  awsIamGroup: option<awsIamGroupDetails>,
  @ocaml.doc("<p>contains details about a Classic Load Balancer.</p>") @as("AwsElbLoadBalancer")
  awsElbLoadBalancer: option<awsElbLoadBalancerDetails>,
  @ocaml.doc("<p>Contains details about an Amazon Redshift cluster.</p>") @as("AwsRedshiftCluster")
  awsRedshiftCluster: option<awsRedshiftClusterDetails>,
  @ocaml.doc("<p>Provides details about an AWS Certificate Manager (ACM) certificate.</p>")
  @as("AwsCertificateManagerCertificate")
  awsCertificateManagerCertificate: option<awsCertificateManagerCertificateDetails>,
  @ocaml.doc(
    "<p>Provides information about the state of a patch on an instance based on the patch baseline that was used to patch the instance.</p>"
  )
  @as("AwsSsmPatchCompliance")
  awsSsmPatchCompliance: option<awsSsmPatchComplianceDetails>,
  @ocaml.doc("<p>Provides details about a CloudTrail trail.</p>") @as("AwsCloudTrailTrail")
  awsCloudTrailTrail: option<awsCloudTrailTrailDetails>,
  @ocaml.doc("<p>Provides information about a REST API in version 1 of Amazon API Gateway.</p>")
  @as("AwsApiGatewayRestApi")
  awsApiGatewayRestApi: option<awsApiGatewayRestApiDetails>,
  @ocaml.doc("<p>Provides information about a version 1 Amazon API Gateway stage.</p>")
  @as("AwsApiGatewayStage")
  awsApiGatewayStage: option<awsApiGatewayStageDetails>,
  @ocaml.doc("<p>Details about a DynamoDB table.</p>") @as("AwsDynamoDbTable")
  awsDynamoDbTable: option<awsDynamoDbTableDetails>,
  @ocaml.doc("<p>Provides information about a version 2 API in Amazon API Gateway.</p>")
  @as("AwsApiGatewayV2Api")
  awsApiGatewayV2Api: option<awsApiGatewayV2ApiDetails>,
  @ocaml.doc("<p>Provides information about a version 2 stage for Amazon API Gateway.</p>")
  @as("AwsApiGatewayV2Stage")
  awsApiGatewayV2Stage: option<awsApiGatewayV2StageDetails>,
  @ocaml.doc("<p>Details about an IAM permissions policy.</p>") @as("AwsIamPolicy")
  awsIamPolicy: option<awsIamPolicyDetails>,
  @ocaml.doc("<p>Details about an IAM user.</p>") @as("AwsIamUser")
  awsIamUser: option<awsIamUserDetails>,
  @ocaml.doc("<p>Details about an IAM access key related to a finding.</p>") @as("AwsIamAccessKey")
  awsIamAccessKey: option<awsIamAccessKeyDetails>,
  @ocaml.doc("<p>Details about a Secrets Manager secret.</p>") @as("AwsSecretsManagerSecret")
  awsSecretsManagerSecret: option<awsSecretsManagerSecretDetails>,
  @ocaml.doc("<p>Details about an Amazon S3 object related to a finding.</p>") @as("AwsS3Object")
  awsS3Object: option<awsS3ObjectDetails>,
  @ocaml.doc("<p>Details about the Amazon S3 Public Access Block configuration for an account.</p>")
  @as("AwsS3AccountPublicAccessBlock")
  awsS3AccountPublicAccessBlock: option<awsS3AccountPublicAccessBlockDetails>,
  @ocaml.doc("<p>Details about an Amazon S3 bucket related to a finding.</p>") @as("AwsS3Bucket")
  awsS3Bucket: option<awsS3BucketDetails>,
  @ocaml.doc("<p>Details for an Elasticsearch domain.</p>") @as("AwsElasticsearchDomain")
  awsElasticsearchDomain: option<awsElasticsearchDomainDetails>,
  @ocaml.doc("<p>Details about an Elastic Beanstalk environment.</p>")
  @as("AwsElasticBeanstalkEnvironment")
  awsElasticBeanstalkEnvironment: option<awsElasticBeanstalkEnvironmentDetails>,
  @ocaml.doc("<p>Details about a load balancer.</p>") @as("AwsElbv2LoadBalancer")
  awsElbv2LoadBalancer: option<awsElbv2LoadBalancerDetails>,
  @ocaml.doc("<p>Details about an EC2 network access control list (ACL).</p>")
  @as("AwsEc2NetworkAcl")
  awsEc2NetworkAcl: option<awsEc2NetworkAclDetails>,
  @ocaml.doc("<p>Details about a subnet in EC2.</p>") @as("AwsEc2Subnet")
  awsEc2Subnet: option<awsEc2SubnetDetails>,
  @ocaml.doc("<p>Details about an Elastic IP address.</p>") @as("AwsEc2Eip")
  awsEc2Eip: option<awsEc2EipDetails>,
  @ocaml.doc("<p>Details for an EC2 VPC.</p>") @as("AwsEc2Vpc") awsEc2Vpc: option<awsEc2VpcDetails>,
  @ocaml.doc("<p>Details for an EC2 volume.</p>") @as("AwsEc2Volume")
  awsEc2Volume: option<awsEc2VolumeDetails>,
  @ocaml.doc("<p>Details for an EC2 security group.</p>") @as("AwsEc2SecurityGroup")
  awsEc2SecurityGroup: option<awsEc2SecurityGroupDetails>,
  @ocaml.doc("<p>Details for an Amazon EC2 network interface.</p>") @as("AwsEc2NetworkInterface")
  awsEc2NetworkInterface: option<awsEc2NetworkInterfaceDetails>,
  @ocaml.doc("<p>Details about an Amazon EC2 instance related to a finding.</p>")
  @as("AwsEc2Instance")
  awsEc2Instance: option<awsEc2InstanceDetails>,
  @ocaml.doc("<p>Details about a CloudFront distribution.</p>") @as("AwsCloudFrontDistribution")
  awsCloudFrontDistribution: option<awsCloudFrontDistributionDetails>,
  @ocaml.doc("<p>Details for an AWS CodeBuild project.</p>") @as("AwsCodeBuildProject")
  awsCodeBuildProject: option<awsCodeBuildProjectDetails>,
  @ocaml.doc("<p>Details for an autoscaling group.</p>") @as("AwsAutoScalingAutoScalingGroup")
  awsAutoScalingAutoScalingGroup: option<awsAutoScalingAutoScalingGroupDetails>,
}
@ocaml.doc("<p>Details about the sensitive data that was detected on the resource.</p>")
type classificationResult = {
  @ocaml.doc(
    "<p>Provides details about sensitive data that was identified based on customer-defined configuration.</p>"
  )
  @as("CustomDataIdentifiers")
  customDataIdentifiers: option<customDataIdentifiersResult>,
  @ocaml.doc(
    "<p>Provides details about sensitive data that was identified based on built-in configuration.</p>"
  )
  @as("SensitiveData")
  sensitiveData: option<sensitiveDataResultList>,
  @ocaml.doc("<p>The current status of the sensitive data detection.</p>") @as("Status")
  status: option<classificationStatus>,
  @ocaml.doc(
    "<p>Indicates whether there are additional occurrences of sensitive data that are not included in the finding. This occurs when the number of occurrences exceeds the maximum that can be included.</p>"
  )
  @as("AdditionalOccurrences")
  additionalOccurrences: option<boolean_>,
  @ocaml.doc("<p>The total size in bytes of the affected data.</p>") @as("SizeClassified")
  sizeClassified: option<long>,
  @ocaml.doc("<p>The type of content that the finding applies to.</p>") @as("MimeType")
  mimeType: option<nonEmptyString>,
}
@ocaml.doc("<p>Provides details about sensitive data that was detected on a resource.</p>")
type dataClassificationDetails = {
  @ocaml.doc("<p>The details about the sensitive data that was detected on the resource.</p>")
  @as("Result")
  result: option<classificationResult>,
  @ocaml.doc("<p>The path to the folder or file that contains the sensitive data.</p>")
  @as("DetailedResultsLocation")
  detailedResultsLocation: option<nonEmptyString>,
}
@ocaml.doc("<p>A resource related to a finding.</p>")
type resource = {
  @ocaml.doc("<p>Additional details about the resource related to a finding.</p>") @as("Details")
  details: option<resourceDetails>,
  @ocaml.doc("<p>Contains information about sensitive data that was detected on the resource.</p>")
  @as("DataClassification")
  dataClassification: option<dataClassificationDetails>,
  @ocaml.doc("<p>A list of AWS tags associated with a resource at the time the finding was
         processed.</p>")
  @as("Tags")
  tags: option<fieldMap>,
  @ocaml.doc(
    "<p>Identifies the role of the resource in the finding. A resource is either the actor or target of the finding activity,</p>"
  )
  @as("ResourceRole")
  resourceRole: option<nonEmptyString>,
  @ocaml.doc("<p>The canonical AWS external Region name where this resource is located.</p>")
  @as("Region")
  region: option<nonEmptyString>,
  @ocaml.doc("<p>The canonical AWS partition name that the Region is assigned to.</p>")
  @as("Partition")
  partition: option<partition>,
  @ocaml.doc("<p>The canonical identifier for the given resource type.</p>") @as("Id")
  id: nonEmptyString,
  @ocaml.doc("<p>The type of the resource that details are provided for. If possible, set
            <code>Type</code> to one of the supported resource types. For example, if the resource
         is an EC2 instance, then set <code>Type</code> to <code>AwsEc2Instance</code>.</p>
         <p>If the resource does not match any of the provided types, then set <code>Type</code> to
            <code>Other</code>. </p>")
  @as("Type")
  type_: nonEmptyString,
}
type resourceList = array<resource>
@ocaml.doc("<p>Provides consistent format for the contents of the Security Hub-aggregated findings.
            <code>AwsSecurityFinding</code> format enables you to share findings between AWS
         security services and third-party solutions, and security standards checks.</p>
         <note>
            <p>A finding is a potential security issue generated either by AWS services (Amazon
            GuardDuty, Amazon Inspector, and Amazon Macie) or by the integrated third-party
            solutions and standards checks.</p>
         </note>")
type awsSecurityFinding = {
  @ocaml.doc(
    "<p>In a <code>BatchImportFindings</code> request, finding providers use <code>FindingProviderFields</code> to provide and update their own values for confidence, criticality, related findings, severity, and types.</p>"
  )
  @as("FindingProviderFields")
  findingProviderFields: option<findingProviderFields>,
  @ocaml.doc(
    "<p>Provides details about an action that affects or that was taken on a resource.</p>"
  )
  @as("Action")
  action: option<action>,
  @ocaml.doc("<p>Provides an overview of the patch compliance status for an instance against a selected
         compliance standard.</p>")
  @as("PatchSummary")
  patchSummary: option<patchSummary>,
  @ocaml.doc("<p>Provides a list of vulnerabilities associated with the findings.</p>")
  @as("Vulnerabilities")
  vulnerabilities: option<vulnerabilityList>,
  @ocaml.doc("<p>A user-defined note added to a finding.</p>") @as("Note") note: option<note>,
  @ocaml.doc("<p>A list of related findings.</p>") @as("RelatedFindings")
  relatedFindings: option<relatedFindingList>,
  @ocaml.doc("<p>The record state of a finding.</p>") @as("RecordState")
  recordState: option<recordState>,
  @ocaml.doc("<p>Provides information about the status of the investigation into a finding.</p>")
  @as("Workflow")
  workflow: option<workflow>,
  @ocaml.doc("<p>The workflow state of a finding. </p>") @as("WorkflowState")
  workflowState: option<workflowState>,
  @ocaml.doc("<p>Indicates the veracity of a finding. </p>") @as("VerificationState")
  verificationState: option<verificationState>,
  @ocaml.doc("<p>This data type is exclusive to findings that are generated as the result of a check run
         against a specific rule in a supported security standard, such as CIS AWS Foundations.
         Contains security standard-related finding details.</p>")
  @as("Compliance")
  compliance: option<compliance>,
  @ocaml.doc("<p>A set of resource data types that describe the resources that the finding refers
         to.</p>")
  @as("Resources")
  resources: resourceList,
  @ocaml.doc("<p>Threat intelligence details related to a finding.</p>")
  @as("ThreatIntelIndicators")
  threatIntelIndicators: option<threatIntelIndicatorList>,
  @ocaml.doc("<p>The details of process-related information about a finding.</p>") @as("Process")
  process: option<processDetails>,
  @ocaml.doc("<p>Provides information about a network path that is relevant to a finding. Each entry
         under <code>NetworkPath</code> represents a component of that path.</p>")
  @as("NetworkPath")
  networkPath: option<networkPathList>,
  @ocaml.doc("<p>The details of network-related information about a finding.</p>") @as("Network")
  network: option<network>,
  @ocaml.doc("<p>A list of malware related to a finding.</p>") @as("Malware")
  malware: option<malwareList>,
  @ocaml.doc("<p>A list of name/value string pairs associated with the finding. These are custom,
         user-defined fields added to a finding. </p>")
  @as("UserDefinedFields")
  userDefinedFields: option<fieldMap>,
  @ocaml.doc("<p>A data type where security-findings providers can include additional solution-specific
         details that aren't part of the defined <code>AwsSecurityFinding</code> format.</p>")
  @as("ProductFields")
  productFields: option<fieldMap>,
  @ocaml.doc("<p>A URL that links to a page about the current finding in the security-findings provider's
         solution.</p>")
  @as("SourceUrl")
  sourceUrl: option<nonEmptyString>,
  @ocaml.doc("<p>A data type that describes the remediation options for a finding.</p>")
  @as("Remediation")
  remediation: option<remediation>,
  @ocaml.doc("<p>A finding's description.</p>
         <note>
            <p>In this release, <code>Description</code> is a required property.</p>
         </note>")
  @as("Description")
  description: nonEmptyString,
  @ocaml.doc("<p>A finding's title.</p>
         <note>
            <p>In this release, <code>Title</code> is a required property.</p>
         </note>")
  @as("Title")
  title: nonEmptyString,
  @ocaml.doc("<p>The level of importance assigned to the resources associated with the finding.</p>
         <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
         is reserved for the most critical resources.</p>")
  @as("Criticality")
  criticality: option<integer_>,
  @ocaml.doc("<p>A finding's confidence. Confidence is defined as the likelihood that a finding
         accurately identifies the behavior or issue that it was intended to identify.</p>
         <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
         confidence and 100 means 100 percent confidence.</p>")
  @as("Confidence")
  confidence: option<integer_>,
  @ocaml.doc("<p>A finding's severity.</p>") @as("Severity") severity: option<severity>,
  @ocaml.doc("<p>Indicates when the security-findings provider last updated the finding record.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("UpdatedAt")
  updatedAt: nonEmptyString,
  @ocaml.doc("<p>Indicates when the security-findings provider created the potential security issue that
         a finding captured.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("CreatedAt")
  createdAt: nonEmptyString,
  @ocaml.doc("<p>Indicates when the security-findings provider most recently observed the potential
         security issue that a finding captured.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("LastObservedAt")
  lastObservedAt: option<nonEmptyString>,
  @ocaml.doc("<p>Indicates when the security-findings provider first observed the potential security
         issue that a finding captured.</p>
         <p>Uses the <code>date-time</code> format specified in <a href=\"https://tools.ietf.org/html/rfc3339#section-5.6\">RFC 3339 section 5.6, Internet
            Date/Time Format</a>. The value cannot contain spaces. For example,
            <code>2020-03-22T13:22:13.933Z</code>.</p>")
  @as("FirstObservedAt")
  firstObservedAt: option<nonEmptyString>,
  @ocaml.doc("<p>One or more finding types in the format of <code>namespace/category/classifier</code>
         that classify a finding.</p>
         <p>Valid namespace values are: Software and Configuration Checks | TTPs | Effects | Unusual
         Behaviors | Sensitive Data Identifications</p>")
  @as("Types")
  types: option<typeList>,
  @ocaml.doc("<p>The AWS account ID that a finding is generated in.</p>") @as("AwsAccountId")
  awsAccountId: nonEmptyString,
  @ocaml.doc("<p>The identifier for the solution-specific component (a discrete unit of logic) that
         generated a finding. In various security-findings providers' solutions, this generator can
         be called a rule, a check, a detector, a plugin, etc. </p>")
  @as("GeneratorId")
  generatorId: nonEmptyString,
  @ocaml.doc("<p>The ARN generated by Security Hub that uniquely identifies a product that generates findings.
         This can be the ARN for a third-party product that is integrated with Security Hub, or the ARN for
         a custom integration.</p>")
  @as("ProductArn")
  productArn: nonEmptyString,
  @ocaml.doc("<p>The security findings provider-specific identifier for a finding.</p>") @as("Id")
  id: nonEmptyString,
  @ocaml.doc("<p>The schema version that a finding is formatted for.</p>") @as("SchemaVersion")
  schemaVersion: nonEmptyString,
}
type batchImportFindingsRequestFindingList = array<awsSecurityFinding>
type awsSecurityFindingList = array<awsSecurityFinding>
@ocaml.doc("<p>Security Hub provides you with a comprehensive view of the security state of your AWS
         environment and resources. It also provides you with the readiness status of your
         environment based on controls from supported security standards. Security Hub collects security
         data from AWS accounts, services, and integrated third-party products and helps you analyze
         security trends in your environment to identify the highest priority security issues. For
         more information about Security Hub, see the <i>
               <a href=\"https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html\">AWS Security Hub User
               Guide</a>
            </i>.</p>
         <p>When you use operations in the Security Hub API, the requests are executed only in the AWS
         Region that is currently active or in the specific AWS Region that you specify in your
         request. Any configuration or settings change that results from the operation is applied
         only to that Region. To make the same change in other Regions, execute the same command for
         each Region to apply the change to.</p>
         <p>For example, if your Region is set to <code>us-west-2</code>, when you use <code>
               <a>CreateMembers</a>
            </code> to add a member account to Security Hub, the association of
         the member account with the administrator account is created only in the <code>us-west-2</code>
         Region. Security Hub must be enabled for the member account in the same Region that the invitation
         was sent from.</p>
         <p>The following throttling limits apply to using Security Hub API operations.</p>
         <ul>
            <li>
               <p>
                  <code>
                     <a>BatchEnableStandards</a>
                  </code> - <code>RateLimit</code> of 1
               request per second, <code>BurstLimit</code> of 1 request per second.</p>
            </li>
            <li>
               <p>
                  <code>
                     <a>GetFindings</a>
                  </code> - <code>RateLimit</code> of 3 requests per second.
                  <code>BurstLimit</code> of 6 requests per second.</p>
            </li>
            <li>
               <p>
                  <code>
                     <a>UpdateFindings</a>
                  </code> - <code>RateLimit</code> of 1 request per
               second. <code>BurstLimit</code> of 5 requests per second.</p>
            </li>
            <li>
               <p>
                  <code>
                     <a>UpdateStandardsControl</a>
                  </code> - <code>RateLimit</code> of
               1 request per second, <code>BurstLimit</code> of 5 requests per second.</p>
            </li>
            <li>
               <p>All other operations - <code>RateLimit</code> of 10 requests per second.
                  <code>BurstLimit</code> of 30 requests per second.</p>
            </li>
         </ul>")
module UpdateStandardsControl = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the reason why you are disabling a security standard control. If you
         are disabling a control, then this is required.</p>")
    @as("DisabledReason")
    disabledReason: option<nonEmptyString>,
    @ocaml.doc("<p>The updated status of the security standard control.</p>") @as("ControlStatus")
    controlStatus: option<controlStatus>,
    @ocaml.doc("<p>The ARN of the security standard control to enable or disable.</p>")
    @as("StandardsControlArn")
    standardsControlArn: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "UpdateStandardsControlCommand"
  let make = (~standardsControlArn, ~disabledReason=?, ~controlStatus=?, ()) =>
    new({
      disabledReason: disabledReason,
      controlStatus: controlStatus,
      standardsControlArn: standardsControlArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateSecurityHubConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Whether to automatically enable new controls when they are added to standards that are
         enabled.</p>
         <p>By default, this is set to <code>true</code>, and new controls are enabled
         automatically. To not automatically enable new controls, set this to <code>false</code>.
      </p>")
    @as("AutoEnableControls")
    autoEnableControls: option<boolean_>,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "UpdateSecurityHubConfigurationCommand"
  let make = (~autoEnableControls=?, ()) => new({autoEnableControls: autoEnableControls})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateOrganizationConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>Whether to automatically enable Security Hub for new accounts in the organization.</p>
         <p>By default, this is <code>false</code>, and new accounts are not added
         automatically.</p>
         <p>To automatically enable Security Hub for new accounts, set this to <code>true</code>.</p>")
    @as("AutoEnable")
    autoEnable: boolean_,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "UpdateOrganizationConfigurationCommand"
  let make = (~autoEnable, ()) => new({autoEnable: autoEnable})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateActionTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The updated description for the custom action target.</p>") @as("Description")
    description: option<nonEmptyString>,
    @ocaml.doc("<p>The updated name of the custom action target.</p>") @as("Name")
    name: option<nonEmptyString>,
    @ocaml.doc("<p>The ARN of the custom action target to update.</p>") @as("ActionTargetArn")
    actionTargetArn: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "UpdateActionTargetCommand"
  let make = (~actionTargetArn, ~description=?, ~name=?, ()) =>
    new({description: description, name: name, actionTargetArn: actionTargetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module GetInvitationsCount = {
  type t

  type response = {
    @ocaml.doc("<p>The number of all membership invitations sent to this Security Hub member account, not
         including the currently accepted invitation.</p>")
    @as("InvitationsCount")
    invitationsCount: option<integer_>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: unit => t = "GetInvitationsCountCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account identifier of the account to designate as the Security Hub administrator
         account.</p>")
    @as("AdminAccountId")
    adminAccountId: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "EnableOrganizationAdminAccountCommand"
  let make = (~adminAccountId, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module EnableImportFindingsForProduct = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the product to enable the integration for.</p>") @as("ProductArn")
    productArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The ARN of your subscription to the product to enable integrations for.</p>")
    @as("ProductSubscriptionArn")
    productSubscriptionArn: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "EnableImportFindingsForProductCommand"
  let make = (~productArn, ()) => new({productArn: productArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateFromMasterAccount = {
  type t

  @module("@aws-sdk/client-securityhub") @new
  external new: unit => t = "DisassociateFromMasterAccountCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateFromAdministratorAccount = {
  type t

  @module("@aws-sdk/client-securityhub") @new
  external new: unit => t = "DisassociateFromAdministratorAccountCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableSecurityHub = {
  type t

  @module("@aws-sdk/client-securityhub") @new external new: unit => t = "DisableSecurityHubCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableOrganizationAdminAccount = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS account identifier of the Security Hub administrator account.</p>")
    @as("AdminAccountId")
    adminAccountId: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DisableOrganizationAdminAccountCommand"
  let make = (~adminAccountId, ()) => new({adminAccountId: adminAccountId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisableImportFindingsForProduct = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the integrated product to disable the integration for.</p>")
    @as("ProductSubscriptionArn")
    productSubscriptionArn: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DisableImportFindingsForProductCommand"
  let make = (~productSubscriptionArn, ()) => new({productSubscriptionArn: productSubscriptionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DescribeOrganizationConfiguration = {
  type t

  type response = {
    @ocaml.doc("<p>Whether the maximum number of allowed member accounts are already associated with the
         Security Hub administrator account.</p>")
    @as("MemberAccountLimitReached")
    memberAccountLimitReached: option<boolean_>,
    @ocaml.doc("<p>Whether to automatically enable Security Hub for new accounts in the organization.</p>
         <p>If set to <code>true</code>, then Security Hub is enabled for new accounts. If set to false,
         then new accounts are not added automatically.</p>")
    @as("AutoEnable")
    autoEnable: option<boolean_>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: unit => t = "DescribeOrganizationConfigurationCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeHub = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the Hub resource to retrieve.</p>") @as("HubArn")
    hubArn: option<nonEmptyString>,
  }
  type response = {
    @ocaml.doc("<p>Whether to automatically enable new controls when they are added to standards that are
         enabled.</p>
         <p>If set to <code>true</code>, then new controls for enabled standards are enabled
         automatically. If set to <code>false</code>, then new controls are not enabled.</p>")
    @as("AutoEnableControls")
    autoEnableControls: option<boolean_>,
    @ocaml.doc("<p>The date and time when Security Hub was enabled in the account.</p>")
    @as("SubscribedAt")
    subscribedAt: option<nonEmptyString>,
    @ocaml.doc("<p>The ARN of the Hub resource that was retrieved.</p>") @as("HubArn")
    hubArn: option<nonEmptyString>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "DescribeHubCommand"
  let make = (~hubArn=?, ()) => new({hubArn: hubArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInsight = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the insight to delete.</p>") @as("InsightArn")
    insightArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the insight that was deleted.</p>") @as("InsightArn")
    insightArn: nonEmptyString,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "DeleteInsightCommand"
  let make = (~insightArn, ()) => new({insightArn: insightArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteActionTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the custom action target to delete.</p>") @as("ActionTargetArn")
    actionTargetArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the custom action target that was deleted.</p>")
    @as("ActionTargetArn")
    actionTargetArn: nonEmptyString,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DeleteActionTargetCommand"
  let make = (~actionTargetArn, ()) => new({actionTargetArn: actionTargetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateActionTarget = {
  type t
  type request = {
    @ocaml.doc("<p>The ID for the custom action target.</p>") @as("Id") id: nonEmptyString,
    @ocaml.doc("<p>The description for the custom action target.</p>") @as("Description")
    description: nonEmptyString,
    @ocaml.doc("<p>The name of the custom action target.</p>") @as("Name") name: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The ARN for the custom action target.</p>") @as("ActionTargetArn")
    actionTargetArn: nonEmptyString,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "CreateActionTargetCommand"
  let make = (~id, ~description, ~name, ()) => new({id: id, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptInvitation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the invitation sent from the Security Hub administrator account.</p>"
    )
    @as("InvitationId")
    invitationId: nonEmptyString,
    @ocaml.doc(
      "<p>The account ID of the Security Hub administrator account that sent the invitation.</p>"
    )
    @as("MasterId")
    masterId: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new external new: request => t = "AcceptInvitationCommand"
  let make = (~invitationId, ~masterId, ()) => new({invitationId: invitationId, masterId: masterId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module AcceptAdministratorInvitation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The identifier of the invitation sent from the Security Hub administrator account.</p>"
    )
    @as("InvitationId")
    invitationId: nonEmptyString,
    @ocaml.doc(
      "<p>The account ID of the Security Hub administrator account that sent the invitation.</p>"
    )
    @as("AdministratorId")
    administratorId: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "AcceptAdministratorInvitationCommand"
  let make = (~invitationId, ~administratorId, ()) =>
    new({invitationId: invitationId, administratorId: administratorId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tag keys associated with the tags to remove from the resource. You can remove up to 50 tags at a time.</p>"
    )
    @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The ARN of the resource to remove the tags from.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-securityhub") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The tags to add to the resource. You can add up to 50 tags at a time. The tag keys can be no longer than 128 characters. The tag values can be no longer than 256 characters.</p>"
    )
    @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The ARN of the resource to apply the tags to.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }

  @module("@aws-sdk/client-securityhub") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource to retrieve tags for.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The tags associated with a resource.</p>") @as("Tags") tags: option<tagMap>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListEnabledProductsForImport = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>ListEnabledProductsForImport</code> operation, set the value of this parameter to
            <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>The list of ARNs for the resources that represent your subscriptions to products. </p>"
    )
    @as("ProductSubscriptions")
    productSubscriptions: option<productSubscriptionArnList>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "ListEnabledProductsForImportCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMasterAccount = {
  type t

  type response = {
    @ocaml.doc("<p>A list of details about the Security Hub administrator account for the current member account.
      </p>")
    @as("Master")
    master: option<invitation>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: unit => t = "GetMasterAccountCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAdministratorAccount = {
  type t

  type response = {@as("Administrator") administrator: option<invitation>}
  @module("@aws-sdk/client-securityhub") @new
  external new: unit => t = "GetAdministratorAccountCommand"

  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableSecurityHub = {
  type t
  type request = {
    @ocaml.doc("<p>Whether to enable the security standards that Security Hub has designated as automatically
         enabled. If you do not provide a value for <code>EnableDefaultStandards</code>, it is set
         to <code>true</code>. To not enable the automatically enabled standards, set
            <code>EnableDefaultStandards</code> to <code>false</code>.</p>")
    @as("EnableDefaultStandards")
    enableDefaultStandards: option<boolean_>,
    @ocaml.doc("<p>The tags to add to the hub resource when you enable Security Hub.</p>")
    @as("Tags")
    tags: option<tagMap>,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "EnableSecurityHubCommand"
  let make = (~enableDefaultStandards=?, ~tags=?, ()) =>
    new({enableDefaultStandards: enableDefaultStandards, tags: tags})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DisassociateMembers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The account IDs of the member accounts to disassociate from the administrator account.</p>"
    )
    @as("AccountIds")
    accountIds: accountIdList,
  }

  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DisassociateMembersCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListOrganizationAdminAccounts = {
  type t
  type request = {
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>ListOrganizationAdminAccounts</code> operation, set the value of this parameter to
            <code>NULL</code>. For subsequent calls to the operation, to continue listing data, set
         the value of this parameter to the value returned from the previous response. </p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<adminsMaxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of Security Hub administrator accounts.</p>") @as("AdminAccounts")
    adminAccounts: option<adminAccounts>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "ListOrganizationAdminAccountsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>ListMembers</code> operation, set the value of this parameter to
         <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return in the response. </p>") @as("MaxResults")
    maxResults: option<crossAccountMaxResults>,
    @ocaml.doc("<p>Specifies which member accounts to include in the response based on their relationship
         status with the administrator account. The default value is <code>TRUE</code>.</p>
         <p>If <code>OnlyAssociated</code> is set to <code>TRUE</code>, the response includes member
         accounts whose relationship status with the administrator account is set to <code>ENABLED</code>.</p>
         <p>If <code>OnlyAssociated</code> is set to <code>FALSE</code>, the response includes all
         existing member accounts. </p>")
    @as("OnlyAssociated")
    onlyAssociated: option<boolean_>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>Member details returned by the operation.</p>") @as("Members")
    members: option<memberList>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "ListMembersCommand"
  let make = (~nextToken=?, ~maxResults=?, ~onlyAssociated=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, onlyAssociated: onlyAssociated})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>ListInvitations</code> operation, set the value of this parameter to
            <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of items to return in the response. </p>") @as("MaxResults")
    maxResults: option<crossAccountMaxResults>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nonEmptyString>,
    @ocaml.doc("<p>The details of the invitations returned by the operation.</p>")
    @as("Invitations")
    invitations: option<invitationList>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "ListInvitationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InviteMembers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of account IDs of the AWS accounts to invite to Security Hub as members. </p>"
    )
    @as("AccountIds")
    accountIds: accountIdList,
  }
  type response = {
    @ocaml.doc("<p>The list of AWS accounts that could not be processed. For each account, the list
         includes the account ID and the email address.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<resultList>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "InviteMembersCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMembers = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The list of account IDs for the Security Hub member accounts to return the details for. </p>"
    )
    @as("AccountIds")
    accountIds: accountIdList,
  }
  type response = {
    @ocaml.doc("<p>The list of AWS accounts that could not be processed. For each account, the list
         includes the account ID and the email address.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<resultList>,
    @ocaml.doc("<p>The list of details about the Security Hub member accounts.</p>") @as("Members")
    members: option<memberList>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "GetMembersCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStandards = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of standards to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>DescribeStandards</code> operation, set the value of this parameter to
            <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of available standards.</p>") @as("Standards")
    standards: option<standards>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DescribeStandardsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeActionTargets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>DescribeActionTargets</code> operation, set the value of this parameter to
            <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc(
      "<p>A list of custom action target ARNs for the custom action targets to retrieve.</p>"
    )
    @as("ActionTargetArns")
    actionTargetArns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of <code>ActionTarget</code> objects. Each object includes the <code>ActionTargetArn</code>,
            <code>Description</code>, and <code>Name</code> of a custom action target available in
         Security Hub.</p>")
    @as("ActionTargets")
    actionTargets: actionTargetList,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DescribeActionTargetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~actionTargetArns=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, actionTargetArns: actionTargetArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The list of account IDs for the member accounts to delete.</p>")
    @as("AccountIds")
    accountIds: accountIdList,
  }
  type response = {
    @ocaml.doc("<p>The list of AWS accounts that were not deleted. For each account, the list includes the
         account ID and the email address.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<resultList>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "DeleteMembersCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>The list of the account IDs that sent the invitations to delete.</p>")
    @as("AccountIds")
    accountIds: accountIdList,
  }
  type response = {
    @ocaml.doc("<p>The list of AWS accounts for which the invitations were not deleted. For each account,
         the list includes the account ID and the email address.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<resultList>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DeleteInvitationsCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeclineInvitations = {
  type t
  type request = {
    @ocaml.doc("<p>The list of account IDs for the accounts from which to decline the invitations to
         Security Hub.</p>")
    @as("AccountIds")
    accountIds: accountIdList,
  }
  type response = {
    @ocaml.doc("<p>The list of AWS accounts that were not processed. For each account, the list includes
         the account ID and the email address.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<resultList>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DeclineInvitationsCommand"
  let make = (~accountIds, ()) => new({accountIds: accountIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMembers = {
  type t
  type request = {
    @ocaml.doc("<p>The list of accounts to associate with the Security Hub administrator account. For each account, the
         list includes the account ID and optionally the email address.</p>")
    @as("AccountDetails")
    accountDetails: accountDetailsList,
  }
  type response = {
    @ocaml.doc("<p>The list of AWS accounts that were not processed. For each account, the list includes
         the account ID and the email address.</p>")
    @as("UnprocessedAccounts")
    unprocessedAccounts: option<resultList>,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "CreateMembersCommand"
  let make = (~accountDetails, ()) => new({accountDetails: accountDetails})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsightResults = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the insight for which to return results.</p>") @as("InsightArn")
    insightArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The insight results returned by the operation.</p>") @as("InsightResults")
    insightResults: insightResults,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "GetInsightResultsCommand"
  let make = (~insightArn, ()) => new({insightArn: insightArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetEnabledStandards = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>GetEnabledStandards</code> operation, set the value of this parameter to
            <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of the standards subscription ARNs for the standards to retrieve.</p>")
    @as("StandardsSubscriptionArns")
    standardsSubscriptionArns: option<standardsSubscriptionArns>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The list of <code>StandardsSubscriptions</code> objects that include information about
         the enabled standards.</p>")
    @as("StandardsSubscriptions")
    standardsSubscriptions: option<standardsSubscriptions>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "GetEnabledStandardsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~standardsSubscriptionArns=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      standardsSubscriptionArns: standardsSubscriptionArns,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeStandardsControls = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of security standard controls to return.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>DescribeStandardsControls</code> operation, set the value of this parameter to
            <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of a resource that represents your subscription to a supported standard. To get
         the subscription ARNs of the standards you have enabled, use the <code>
               <a>GetEnabledStandards</a>
            </code> operation.</p>")
    @as("StandardsSubscriptionArn")
    standardsSubscriptionArn: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of security standards controls.</p>") @as("Controls")
    controls: option<standardsControls>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "DescribeStandardsControlsCommand"
  let make = (~standardsSubscriptionArn, ~maxResults=?, ~nextToken=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      standardsSubscriptionArn: standardsSubscriptionArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeProducts = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the integration to return.</p>") @as("ProductArn")
    productArn: option<nonEmptyString>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>DescribeProducts</code> operation, set the value of this parameter to
            <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>A list of products, including details for each product.</p>") @as("Products")
    products: productsList,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "DescribeProductsCommand"
  let make = (~productArn=?, ~maxResults=?, ~nextToken=?, ()) =>
    new({productArn: productArn, maxResults: maxResults, nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchUpdateFindings = {
  type t
  type request = {
    @ocaml.doc("<p>A list of findings that are related to the updated findings.</p>")
    @as("RelatedFindings")
    relatedFindings: option<relatedFindingList>,
    @ocaml.doc("<p>Used to update the workflow status of a finding.</p>
         <p>The workflow status indicates the progress of the investigation into the finding. </p>")
    @as("Workflow")
    workflow: option<workflowUpdate>,
    @ocaml.doc("<p>A list of name/value string pairs associated with the finding. These are custom,
         user-defined fields added to a finding.</p>")
    @as("UserDefinedFields")
    userDefinedFields: option<fieldMap>,
    @ocaml.doc("<p>One or more finding types in the format of namespace/category/classifier that classify a
         finding.</p>
         <p>Valid namespace values are as follows.</p>
         <ul>
            <li>
               <p>Software and Configuration Checks</p>
            </li>
            <li>
               <p>TTPs</p>
            </li>
            <li>
               <p>Effects</p>
            </li>
            <li>
               <p>Unusual Behaviors</p>
            </li>
            <li>
               <p>Sensitive Data Identifications </p>
            </li>
         </ul>")
    @as("Types")
    types: option<typeList>,
    @ocaml.doc("<p>The updated value for the level of importance assigned to the resources associated with
         the findings.</p>
         <p>A score of 0 means that the underlying resources have no criticality, and a score of 100
         is reserved for the most critical resources. </p>")
    @as("Criticality")
    criticality: option<ratioScale>,
    @ocaml.doc("<p>The updated value for the finding confidence. Confidence is defined as the likelihood
         that a finding accurately identifies the behavior or issue that it was intended to
         identify.</p>
         <p>Confidence is scored on a 0-100 basis using a ratio scale, where 0 means zero percent
         confidence and 100 means 100 percent confidence.</p>")
    @as("Confidence")
    confidence: option<ratioScale>,
    @ocaml.doc("<p>Indicates the veracity of a finding.</p>
         <p>The available values for <code>VerificationState</code> are  as follows.</p>
         <ul>
            <li>
               <p>
                  <code>UNKNOWN</code> – The default disposition of a security finding</p>
            </li>
            <li>
               <p>
                  <code>TRUE_POSITIVE</code> – The security finding is confirmed</p>
            </li>
            <li>
               <p>
                  <code>FALSE_POSITIVE</code> – The security finding was determined to be a false
               alarm</p>
            </li>
            <li>
               <p>
                  <code>BENIGN_POSITIVE</code> – A special case of <code>TRUE_POSITIVE</code> where
               the finding doesn't pose any threat, is expected, or both</p>
            </li>
         </ul>")
    @as("VerificationState")
    verificationState: option<verificationState>,
    @ocaml.doc("<p>Used to update the finding severity.</p>") @as("Severity")
    severity: option<severityUpdate>,
    @as("Note") note: option<noteUpdate>,
    @ocaml.doc("<p>The list of findings to update. <code>BatchUpdateFindings</code> can be used to update
         up to 100 findings at a time.</p>
         <p>For each finding, the list provides the finding identifier and the ARN of the finding
         provider.</p>")
    @as("FindingIdentifiers")
    findingIdentifiers: awsSecurityFindingIdentifierList,
  }
  type response = {
    @ocaml.doc("<p>The list of findings that were not updated.</p>") @as("UnprocessedFindings")
    unprocessedFindings: batchUpdateFindingsUnprocessedFindingsList,
    @ocaml.doc("<p>The list of findings that were updated successfully.</p>")
    @as("ProcessedFindings")
    processedFindings: awsSecurityFindingIdentifierList,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "BatchUpdateFindingsCommand"
  let make = (
    ~findingIdentifiers,
    ~relatedFindings=?,
    ~workflow=?,
    ~userDefinedFields=?,
    ~types=?,
    ~criticality=?,
    ~confidence=?,
    ~verificationState=?,
    ~severity=?,
    ~note=?,
    (),
  ) =>
    new({
      relatedFindings: relatedFindings,
      workflow: workflow,
      userDefinedFields: userDefinedFields,
      types: types,
      criticality: criticality,
      confidence: confidence,
      verificationState: verificationState,
      severity: severity,
      note: note,
      findingIdentifiers: findingIdentifiers,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchEnableStandards = {
  type t
  type request = {
    @ocaml.doc("<p>The list of standards checks to enable.</p>")
    @as("StandardsSubscriptionRequests")
    standardsSubscriptionRequests: standardsSubscriptionRequests,
  }
  type response = {
    @ocaml.doc("<p>The details of the standards subscriptions that were enabled.</p>")
    @as("StandardsSubscriptions")
    standardsSubscriptions: option<standardsSubscriptions>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "BatchEnableStandardsCommand"
  let make = (~standardsSubscriptionRequests, ()) =>
    new({standardsSubscriptionRequests: standardsSubscriptionRequests})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchDisableStandards = {
  type t
  type request = {
    @ocaml.doc("<p>The ARNs of the standards subscriptions to disable.</p>")
    @as("StandardsSubscriptionArns")
    standardsSubscriptionArns: standardsSubscriptionArns,
  }
  type response = {
    @ocaml.doc("<p>The details of the standards subscriptions that were disabled.</p>")
    @as("StandardsSubscriptions")
    standardsSubscriptions: option<standardsSubscriptions>,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "BatchDisableStandardsCommand"
  let make = (~standardsSubscriptionArns, ()) =>
    new({standardsSubscriptionArns: standardsSubscriptionArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInsight = {
  type t
  type request = {
    @ocaml.doc("<p>The updated <code>GroupBy</code> attribute that defines this insight.</p>")
    @as("GroupByAttribute")
    groupByAttribute: option<nonEmptyString>,
    @ocaml.doc("<p>The updated filters that define this insight.</p>") @as("Filters")
    filters: option<awsSecurityFindingFilters>,
    @ocaml.doc("<p>The updated name for the insight.</p>") @as("Name") name: option<nonEmptyString>,
    @ocaml.doc("<p>The ARN of the insight that you want to update.</p>") @as("InsightArn")
    insightArn: nonEmptyString,
  }

  @module("@aws-sdk/client-securityhub") @new external new: request => t = "UpdateInsightCommand"
  let make = (~insightArn, ~groupByAttribute=?, ~filters=?, ~name=?, ()) =>
    new({groupByAttribute: groupByAttribute, filters: filters, name: name, insightArn: insightArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module UpdateFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The updated record state for the finding.</p>") @as("RecordState")
    recordState: option<recordState>,
    @ocaml.doc("<p>The updated note for the finding.</p>") @as("Note") note: option<noteUpdate>,
    @ocaml.doc("<p>A collection of attributes that specify which findings you want to update.</p>")
    @as("Filters")
    filters: awsSecurityFindingFilters,
  }

  @module("@aws-sdk/client-securityhub") @new external new: request => t = "UpdateFindingsCommand"
  let make = (~filters, ~recordState=?, ~note=?, ()) =>
    new({recordState: recordState, note: note, filters: filters})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateInsight = {
  type t
  type request = {
    @ocaml.doc("<p>The attribute used to group the findings for the insight. The grouping attribute
         identifies the type of item that the insight applies to. For example, if an insight is
         grouped by resource identifier, then the insight produces a list of resource
         identifiers.</p>")
    @as("GroupByAttribute")
    groupByAttribute: nonEmptyString,
    @ocaml.doc("<p>One or more attributes used to filter the findings included in the insight. The insight
         only includes findings that match the criteria defined in the filters.</p>")
    @as("Filters")
    filters: awsSecurityFindingFilters,
    @ocaml.doc("<p>The name of the custom insight to create.</p>") @as("Name") name: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>The ARN of the insight created.</p>") @as("InsightArn")
    insightArn: nonEmptyString,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "CreateInsightCommand"
  let make = (~groupByAttribute, ~filters, ~name, ()) =>
    new({groupByAttribute: groupByAttribute, filters: filters, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInsights = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of items to return in the response.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>GetInsights</code> operation, set the value of this parameter to
         <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARNs of the insights to describe. If you do not provide any insight ARNs, then
            <code>GetInsights</code> returns all of your custom insights. It does not return any
         managed insights.</p>")
    @as("InsightArns")
    insightArns: option<arnList>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The insights returned by the operation.</p>") @as("Insights")
    insights: insightList,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "GetInsightsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~insightArns=?, ()) =>
    new({maxResults: maxResults, nextToken: nextToken, insightArns: insightArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFindings = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of findings to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The token that is required for pagination. On your first call to the
            <code>GetFindings</code> operation, set the value of this parameter to
         <code>NULL</code>.</p>
         <p>For subsequent calls to the operation, to continue listing data, set the value of this
         parameter to the value returned from the previous response.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The finding attributes used to sort the list of returned findings.</p>")
    @as("SortCriteria")
    sortCriteria: option<sortCriteria>,
    @ocaml.doc("<p>The finding attributes used to define a condition to filter the returned
         findings.</p>
         <p>You can filter by up to 10 finding attributes. For each attribute, you can provide up to
         20 filter values.</p>
         <p>Note that in the available filter fields, <code>WorkflowState</code> is deprecated. To
         search for a finding based on its workflow status, use <code>WorkflowStatus</code>.</p>")
    @as("Filters")
    filters: option<awsSecurityFindingFilters>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token to use to request the next page of results.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The findings that matched the filters specified in the request.</p>")
    @as("Findings")
    findings: awsSecurityFindingList,
  }
  @module("@aws-sdk/client-securityhub") @new external new: request => t = "GetFindingsCommand"
  let make = (~maxResults=?, ~nextToken=?, ~sortCriteria=?, ~filters=?, ()) =>
    new({
      maxResults: maxResults,
      nextToken: nextToken,
      sortCriteria: sortCriteria,
      filters: filters,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module BatchImportFindings = {
  type t
  type request = {
    @ocaml.doc("<p>A list of findings to import. To successfully import a finding, it must follow the
            <a href=\"https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html\">AWS Security Finding Format</a>. Maximum of 100 findings per request.</p>")
    @as("Findings")
    findings: batchImportFindingsRequestFindingList,
  }
  type response = {
    @ocaml.doc("<p>The list of findings that failed to import.</p>") @as("FailedFindings")
    failedFindings: option<importFindingsErrorList>,
    @ocaml.doc("<p>The number of findings that were successfully imported.</p>") @as("SuccessCount")
    successCount: integer_,
    @ocaml.doc("<p>The number of findings that failed to import.</p>") @as("FailedCount")
    failedCount: integer_,
  }
  @module("@aws-sdk/client-securityhub") @new
  external new: request => t = "BatchImportFindingsCommand"
  let make = (~findings, ()) => new({findings: findings})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
