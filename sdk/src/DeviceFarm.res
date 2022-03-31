type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-devicefarm") @new
external createClient: unit => awsServiceClient = "DeviceFarmClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type videoCapture = bool
type vpceserviceName = string
type vpceconfigurationName = string
type vpceconfigurationDescription = string
type uploadType = [
  | @as("XCTEST_UI_TEST_SPEC") #XCTEST_UI_TEST_SPEC
  | @as("INSTRUMENTATION_TEST_SPEC") #INSTRUMENTATION_TEST_SPEC
  | @as("APPIUM_WEB_RUBY_TEST_SPEC") #APPIUM_WEB_RUBY_TEST_SPEC
  | @as("APPIUM_WEB_NODE_TEST_SPEC") #APPIUM_WEB_NODE_TEST_SPEC
  | @as("APPIUM_WEB_PYTHON_TEST_SPEC") #APPIUM_WEB_PYTHON_TEST_SPEC
  | @as("APPIUM_WEB_JAVA_TESTNG_TEST_SPEC") #APPIUM_WEB_JAVA_TESTNG_TEST_SPEC
  | @as("APPIUM_WEB_JAVA_JUNIT_TEST_SPEC") #APPIUM_WEB_JAVA_JUNIT_TEST_SPEC
  | @as("APPIUM_RUBY_TEST_SPEC") #APPIUM_RUBY_TEST_SPEC
  | @as("APPIUM_NODE_TEST_SPEC") #APPIUM_NODE_TEST_SPEC
  | @as("APPIUM_PYTHON_TEST_SPEC") #APPIUM_PYTHON_TEST_SPEC
  | @as("APPIUM_JAVA_TESTNG_TEST_SPEC") #APPIUM_JAVA_TESTNG_TEST_SPEC
  | @as("APPIUM_JAVA_JUNIT_TEST_SPEC") #APPIUM_JAVA_JUNIT_TEST_SPEC
  | @as("XCTEST_UI_TEST_PACKAGE") #XCTEST_UI_TEST_PACKAGE
  | @as("XCTEST_TEST_PACKAGE") #XCTEST_TEST_PACKAGE
  | @as("UIAUTOMATOR_TEST_PACKAGE") #UIAUTOMATOR_TEST_PACKAGE
  | @as("UIAUTOMATION_TEST_PACKAGE") #UIAUTOMATION_TEST_PACKAGE
  | @as("INSTRUMENTATION_TEST_PACKAGE") #INSTRUMENTATION_TEST_PACKAGE
  | @as("CALABASH_TEST_PACKAGE") #CALABASH_TEST_PACKAGE
  | @as("APPIUM_WEB_RUBY_TEST_PACKAGE") #APPIUM_WEB_RUBY_TEST_PACKAGE
  | @as("APPIUM_WEB_NODE_TEST_PACKAGE") #APPIUM_WEB_NODE_TEST_PACKAGE
  | @as("APPIUM_WEB_PYTHON_TEST_PACKAGE") #APPIUM_WEB_PYTHON_TEST_PACKAGE
  | @as("APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE") #APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE
  | @as("APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE") #APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE
  | @as("APPIUM_RUBY_TEST_PACKAGE") #APPIUM_RUBY_TEST_PACKAGE
  | @as("APPIUM_NODE_TEST_PACKAGE") #APPIUM_NODE_TEST_PACKAGE
  | @as("APPIUM_PYTHON_TEST_PACKAGE") #APPIUM_PYTHON_TEST_PACKAGE
  | @as("APPIUM_JAVA_TESTNG_TEST_PACKAGE") #APPIUM_JAVA_TESTNG_TEST_PACKAGE
  | @as("APPIUM_JAVA_JUNIT_TEST_PACKAGE") #APPIUM_JAVA_JUNIT_TEST_PACKAGE
  | @as("EXTERNAL_DATA") #EXTERNAL_DATA
  | @as("WEB_APP") #WEB_APP
  | @as("IOS_APP") #IOS_APP
  | @as("ANDROID_APP") #ANDROID_APP
]
type uploadStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCEEDED") #SUCCEEDED
  | @as("PROCESSING") #PROCESSING
  | @as("INITIALIZED") #INITIALIZED
]
type uploadCategory = [@as("PRIVATE") #PRIVATE | @as("CURATED") #CURATED]
type url = string
type transactionIdentifier = string
type testType = [
  | @as("REMOTE_ACCESS_REPLAY") #REMOTE_ACCESS_REPLAY
  | @as("REMOTE_ACCESS_RECORD") #REMOTE_ACCESS_RECORD
  | @as("XCTEST_UI") #XCTEST_UI
  | @as("XCTEST") #XCTEST
  | @as("UIAUTOMATOR") #UIAUTOMATOR
  | @as("UIAUTOMATION") #UIAUTOMATION
  | @as("INSTRUMENTATION") #INSTRUMENTATION
  | @as("CALABASH") #CALABASH
  | @as("APPIUM_WEB_RUBY") #APPIUM_WEB_RUBY
  | @as("APPIUM_WEB_NODE") #APPIUM_WEB_NODE
  | @as("APPIUM_WEB_PYTHON") #APPIUM_WEB_PYTHON
  | @as("APPIUM_WEB_JAVA_TESTNG") #APPIUM_WEB_JAVA_TESTNG
  | @as("APPIUM_WEB_JAVA_JUNIT") #APPIUM_WEB_JAVA_JUNIT
  | @as("APPIUM_RUBY") #APPIUM_RUBY
  | @as("APPIUM_NODE") #APPIUM_NODE
  | @as("APPIUM_PYTHON") #APPIUM_PYTHON
  | @as("APPIUM_JAVA_TESTNG") #APPIUM_JAVA_TESTNG
  | @as("APPIUM_JAVA_JUNIT") #APPIUM_JAVA_JUNIT
  | @as("WEB_PERFORMANCE_PROFILE") #WEB_PERFORMANCE_PROFILE
  | @as("BUILTIN_EXPLORER") #BUILTIN_EXPLORER
  | @as("BUILTIN_FUZZ") #BUILTIN_FUZZ
]
type testGridUrlExpiresInSecondsInput = int
type testGridSessionStatus = [
  | @as("ERRORED") #ERRORED
  | @as("CLOSED") #CLOSED
  | @as("ACTIVE") #ACTIVE
]
type testGridSessionArtifactType = [
  | @as("SELENIUM_LOG") #SELENIUM_LOG
  | @as("VIDEO") #VIDEO
  | @as("UNKNOWN") #UNKNOWN
]
type testGridSessionArtifactCategory = [@as("LOG") #LOG | @as("VIDEO") #VIDEO]
type tagValue = string
type tagKey = string
type string_ = string
type sshPublicKey = string
type skipAppResign = bool
type serviceDnsName = string
type sensitiveURL = string
type sensitiveString = string
type sampleType = [
  | @as("OPENGL_MAX_DRAWTIME") #OPENGL_MAX_DRAWTIME
  | @as("OPENGL_AVG_DRAWTIME") #OPENGL_AVG_DRAWTIME
  | @as("OPENGL_MIN_DRAWTIME") #OPENGL_MIN_DRAWTIME
  | @as("OPENGL_FPS") #OPENGL_FPS
  | @as("OPENGL_FRAMES") #OPENGL_FRAMES
  | @as("NATIVE_MAX_DRAWTIME") #NATIVE_MAX_DRAWTIME
  | @as("NATIVE_AVG_DRAWTIME") #NATIVE_AVG_DRAWTIME
  | @as("NATIVE_MIN_DRAWTIME") #NATIVE_MIN_DRAWTIME
  | @as("NATIVE_FPS") #NATIVE_FPS
  | @as("NATIVE_FRAMES") #NATIVE_FRAMES
  | @as("TX") #TX
  | @as("RX") #RX
  | @as("TX_RATE") #TX_RATE
  | @as("RX_RATE") #RX_RATE
  | @as("THREADS") #THREADS
  | @as("MEMORY") #MEMORY
  | @as("CPU") #CPU
]
type ruleOperator = [
  | @as("CONTAINS") #CONTAINS
  | @as("NOT_IN") #NOT_IN
  | @as("IN") #IN
  | @as("GREATER_THAN_OR_EQUALS") #GREATER_THAN_OR_EQUALS
  | @as("GREATER_THAN") #GREATER_THAN
  | @as("LESS_THAN_OR_EQUALS") #LESS_THAN_OR_EQUALS
  | @as("LESS_THAN") #LESS_THAN
  | @as("EQUALS") #EQUALS
]
type resourceName = string
type resourceId = string
type resourceDescription = string
type recurringChargeFrequency = [@as("MONTHLY") #MONTHLY]
type percentInteger = int
type paginationToken = string
type offeringType = [@as("RECURRING") #RECURRING]
type offeringTransactionType = [
  | @as("SYSTEM") #SYSTEM
  | @as("RENEW") #RENEW
  | @as("PURCHASE") #PURCHASE
]
type offeringPromotionIdentifier = string
type offeringIdentifier = string
type nonEmptyString = string
type networkProfileType = [@as("PRIVATE") #PRIVATE | @as("CURATED") #CURATED]
type name = string
type metadata = string
type message = string
type maxPageSize = int
type long = float
type jobTimeoutMinutes = int
type interactionMode = [
  | @as("VIDEO_ONLY") #VIDEO_ONLY
  | @as("NO_VIDEO") #NO_VIDEO
  | @as("INTERACTIVE") #INTERACTIVE
]
type integer_ = int
type instanceStatus = [
  | @as("NOT_AVAILABLE") #NOT_AVAILABLE
  | @as("AVAILABLE") #AVAILABLE
  | @as("PREPARING") #PREPARING
  | @as("IN_USE") #IN_USE
]
type hostAddress = string
type filter = string
type executionStatus = [
  | @as("STOPPING") #STOPPING
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
  | @as("PREPARING") #PREPARING
  | @as("SCHEDULING") #SCHEDULING
  | @as("PROCESSING") #PROCESSING
  | @as("PENDING_DEVICE") #PENDING_DEVICE
  | @as("PENDING_CONCURRENCY") #PENDING_CONCURRENCY
  | @as("PENDING") #PENDING
]
type executionResultCode = [
  | @as("VPC_ENDPOINT_SETUP_FAILED") #VPC_ENDPOINT_SETUP_FAILED
  | @as("PARSING_FAILED") #PARSING_FAILED
]
type executionResult = [
  | @as("STOPPED") #STOPPED
  | @as("ERRORED") #ERRORED
  | @as("SKIPPED") #SKIPPED
  | @as("FAILED") #FAILED
  | @as("WARNED") #WARNED
  | @as("PASSED") #PASSED
  | @as("PENDING") #PENDING
]
type exceptionMessage = string
type double = float
type devicePoolType = [@as("PRIVATE") #PRIVATE | @as("CURATED") #CURATED]
type devicePlatform = [@as("IOS") #IOS | @as("ANDROID") #ANDROID]
type deviceFormFactor = [@as("TABLET") #TABLET | @as("PHONE") #PHONE]
type deviceFilterAttribute = [
  | @as("FLEET_TYPE") #FLEET_TYPE
  | @as("INSTANCE_LABELS") #INSTANCE_LABELS
  | @as("INSTANCE_ARN") #INSTANCE_ARN
  | @as("REMOTE_DEBUG_ENABLED") #REMOTE_DEBUG_ENABLED
  | @as("REMOTE_ACCESS_ENABLED") #REMOTE_ACCESS_ENABLED
  | @as("MANUFACTURER") #MANUFACTURER
  | @as("FORM_FACTOR") #FORM_FACTOR
  | @as("AVAILABILITY") #AVAILABILITY
  | @as("MODEL") #MODEL
  | @as("OS_VERSION") #OS_VERSION
  | @as("PLATFORM") #PLATFORM
  | @as("ARN") #ARN
]
type deviceFarmArn = string
type deviceAvailability = [
  | @as("HIGHLY_AVAILABLE") #HIGHLY_AVAILABLE
  | @as("AVAILABLE") #AVAILABLE
  | @as("BUSY") #BUSY
  | @as("TEMPORARY_NOT_AVAILABLE") #TEMPORARY_NOT_AVAILABLE
]
type deviceAttribute = [
  | @as("AVAILABILITY") #AVAILABILITY
  | @as("MODEL") #MODEL
  | @as("OS_VERSION") #OS_VERSION
  | @as("FLEET_TYPE") #FLEET_TYPE
  | @as("INSTANCE_LABELS") #INSTANCE_LABELS
  | @as("INSTANCE_ARN") #INSTANCE_ARN
  | @as("APPIUM_VERSION") #APPIUM_VERSION
  | @as("REMOTE_DEBUG_ENABLED") #REMOTE_DEBUG_ENABLED
  | @as("REMOTE_ACCESS_ENABLED") #REMOTE_ACCESS_ENABLED
  | @as("MANUFACTURER") #MANUFACTURER
  | @as("FORM_FACTOR") #FORM_FACTOR
  | @as("PLATFORM") #PLATFORM
  | @as("ARN") #ARN
]
type dateTime = Js.Date.t
type currencyCode = [@as("USD") #USD]
type contentType = string
type clientId = string
type boolean_ = bool
type billingMethod = [@as("UNMETERED") #UNMETERED | @as("METERED") #METERED]
type artifactType = [
  | @as("TESTSPEC_OUTPUT") #TESTSPEC_OUTPUT
  | @as("CUSTOMER_ARTIFACT_LOG") #CUSTOMER_ARTIFACT_LOG
  | @as("CUSTOMER_ARTIFACT") #CUSTOMER_ARTIFACT
  | @as("VIDEO") #VIDEO
  | @as("XCTEST_LOG") #XCTEST_LOG
  | @as("APPLICATION_CRASH_REPORT") #APPLICATION_CRASH_REPORT
  | @as("EXPLORER_SUMMARY_LOG") #EXPLORER_SUMMARY_LOG
  | @as("EXPLORER_EVENT_LOG") #EXPLORER_EVENT_LOG
  | @as("APPIUM_PYTHON_XML_OUTPUT") #APPIUM_PYTHON_XML_OUTPUT
  | @as("APPIUM_PYTHON_OUTPUT") #APPIUM_PYTHON_OUTPUT
  | @as("APPIUM_JAVA_XML_OUTPUT") #APPIUM_JAVA_XML_OUTPUT
  | @as("APPIUM_JAVA_OUTPUT") #APPIUM_JAVA_OUTPUT
  | @as("APPIUM_SERVER_OUTPUT") #APPIUM_SERVER_OUTPUT
  | @as("AUTOMATION_OUTPUT") #AUTOMATION_OUTPUT
  | @as("CALABASH_JAVA_XML_OUTPUT") #CALABASH_JAVA_XML_OUTPUT
  | @as("CALABASH_STANDARD_OUTPUT") #CALABASH_STANDARD_OUTPUT
  | @as("CALABASH_PRETTY_OUTPUT") #CALABASH_PRETTY_OUTPUT
  | @as("CALABASH_JSON_OUTPUT") #CALABASH_JSON_OUTPUT
  | @as("EXERCISER_MONKEY_OUTPUT") #EXERCISER_MONKEY_OUTPUT
  | @as("INSTRUMENTATION_OUTPUT") #INSTRUMENTATION_OUTPUT
  | @as("WEBKIT_LOG") #WEBKIT_LOG
  | @as("SERVICE_LOG") #SERVICE_LOG
  | @as("RESULT_LOG") #RESULT_LOG
  | @as("VIDEO_LOG") #VIDEO_LOG
  | @as("MESSAGE_LOG") #MESSAGE_LOG
  | @as("DEVICE_LOG") #DEVICE_LOG
  | @as("SCREENSHOT") #SCREENSHOT
  | @as("UNKNOWN") #UNKNOWN
]
type artifactCategory = [@as("LOG") #LOG | @as("FILE") #FILE | @as("SCREENSHOT") #SCREENSHOT]
type appPackagesCleanup = bool
type amazonResourceName = string
type accountsCleanup = bool
type awsaccountNumber = string
@ocaml.doc("<p>Represents an Amazon Virtual Private Cloud (VPC) endpoint configuration.</p>")
type vpceconfiguration = {
  @ocaml.doc(
    "<p>An optional description that provides details about your VPC endpoint configuration.</p>"
  )
  vpceConfigurationDescription: option<vpceconfigurationDescription>,
  @ocaml.doc("<p>The DNS name that maps to the private IP address of the service you want to
            access.</p>")
  serviceDnsName: option<serviceDnsName>,
  @ocaml.doc(
    "<p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>"
  )
  vpceServiceName: option<vpceserviceName>,
  @ocaml.doc("<p>The friendly name you give to your VPC endpoint configuration to manage your configurations more
            easily.</p>")
  vpceConfigurationName: option<vpceconfigurationName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration.</p>")
  arn: option<amazonResourceName>,
}
@ocaml.doc("<p>An app or a set of one or more tests to upload or that have been
            uploaded.</p>")
type upload = {
  @ocaml.doc("<p>The upload's category. Allowed values include:</p>
        <ul>
            <li>
                <p>CURATED: An upload managed by AWS Device Farm.</p>
            </li>
            <li>
                <p>PRIVATE: An upload managed by the AWS Device Farm customer.</p>
            </li>
         </ul>")
  category: option<uploadCategory>,
  @ocaml.doc("<p>A message about the upload's result.</p>") message: option<message>,
  @ocaml.doc(
    "<p>The upload's content type (for example, <code>application/octet-stream</code>).</p>"
  )
  contentType: option<contentType>,
  @ocaml.doc("<p>The upload's metadata. For example, for Android, this contains information that is
            parsed from the manifest and is displayed in the AWS Device Farm console after the
            associated app is uploaded.</p>")
  metadata: option<metadata>,
  @ocaml.doc(
    "<p>The presigned Amazon S3 URL that was used to store a file using a PUT request.</p>"
  )
  url: option<sensitiveURL>,
  @ocaml.doc("<p>The upload's status.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>FAILED</p>
            </li>
            <li>
                <p>INITIALIZED</p>
            </li>
            <li>
                <p>PROCESSING</p>
            </li>
            <li>
                <p>SUCCEEDED</p>
            </li>
         </ul>")
  status: option<uploadStatus>,
  @ocaml.doc("<p>The upload's type.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>ANDROID_APP</p>
            </li>
            <li>
                <p>IOS_APP</p>
            </li>
            <li>
                <p>WEB_APP</p>
            </li>
            <li>
                <p>EXTERNAL_DATA</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_NODE_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_RUBY_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
            </li>
            <li>
                <p>CALABASH_TEST_PACKAGE</p>
            </li>
            <li>
                <p>INSTRUMENTATION_TEST_PACKAGE</p>
            </li>
            <li>
                <p>UIAUTOMATION_TEST_PACKAGE</p>
            </li>
            <li>
                <p>UIAUTOMATOR_TEST_PACKAGE</p>
            </li>
            <li>
                <p>XCTEST_TEST_PACKAGE</p>
            </li>
            <li>
                <p>XCTEST_UI_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_NODE_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_RUBY_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
            </li>
            <li>
                <p>INSTRUMENTATION_TEST_SPEC</p>
            </li>
            <li>
                <p>XCTEST_UI_TEST_SPEC</p>
            </li>
         </ul>")
  @as("type")
  type_: option<uploadType>,
  @ocaml.doc("<p>When the upload was created.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The upload's file name.</p>") name: option<name>,
  @ocaml.doc("<p>The upload's ARN.</p>") arn: option<amazonResourceName>,
}
@ocaml.doc("<p>Represents information about free trial device minutes for an AWS
            account.</p>")
type trialMinutes = {
  @ocaml.doc("<p>The number of free trial minutes remaining in the account.</p>")
  remaining: option<double>,
  @ocaml.doc("<p>The total number of free trial minutes that the account started with.</p>")
  total: option<double>,
}
type testParameters = Js.Dict.t<string_>
@ocaml.doc("<p>Artifacts are video and other files that are produced in the process of running a browser in an automated
         context. </p>
         <note>
            <p>Video elements might be broken up into multiple artifacts as they grow in size during creation. </p>
         </note>")
type testGridSessionArtifact = {
  @ocaml.doc("<p>A semi-stable URL to the content of the object.</p>") url: option<sensitiveString>,
  @ocaml.doc("<p>The kind of artifact.</p>") @as("type") type_: option<testGridSessionArtifactType>,
  @ocaml.doc("<p>The file name of the artifact.</p>") filename: option<string_>,
}
@ocaml.doc("<p>An action taken by a <a>TestGridSession</a> browser instance.</p>")
type testGridSessionAction = {
  @ocaml.doc("<p>HTTP method that the browser used to make the request.</p>")
  requestMethod: option<string_>,
  @ocaml.doc("<p>HTTP status code returned to the browser when the action was taken.</p>")
  statusCode: option<string_>,
  @ocaml.doc("<p>The time, in milliseconds, that the action took to complete in the browser.</p>")
  duration: option<long>,
  @ocaml.doc("<p>The time that the session invoked the action.</p>") started: option<dateTime>,
  @ocaml.doc("<p>The action taken by the session.</p>") action: option<string_>,
}
@ocaml.doc("<p>A <a>TestGridSession</a> is a single instance of a browser launched from the URL provided by a
         call to <a>CreateTestGridUrl</a>.</p>")
type testGridSession = {
  @ocaml.doc("<p>A JSON object of options and parameters passed to the Selenium WebDriver.</p>")
  seleniumProperties: option<string_>,
  @ocaml.doc("<p>The number of billed minutes that were used for this session. </p>")
  billingMinutes: option<double>,
  @ocaml.doc("<p>The time the session ended.</p>") ended: option<dateTime>,
  @ocaml.doc("<p>The time that the session was started.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The state of the session.</p>") status: option<testGridSessionStatus>,
  @ocaml.doc("<p>The ARN of the session.</p>") arn: option<deviceFarmArn>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>The metadata that you apply to a resource to help you categorize and organize it. Each tag consists of a
            key and an optional value, both of which you define. Tag keys can have a maximum character length of 128
            characters. Tag values can have a maximum length of 256 characters. </p>")
type tag = {
  @ocaml.doc("<p>The optional part of a key-value pair that makes up a tag. A <code>value</code> acts as a descriptor in a
            tag category (key).</p>")
  @as("Value")
  value: tagValue,
  @ocaml.doc("<p>One part of a key-value pair that makes up a tag. A <code>key</code> is a general label that acts like a
            category for more specific tag values.</p>")
  @as("Key")
  key: tagKey,
}
type subnetIds = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
@ocaml.doc("<p>Represents a sample of performance data.</p>")
type sample = {
  @ocaml.doc("<p>The presigned Amazon S3 URL that can be used with a GET request to download the sample's
            file.</p>")
  url: option<url>,
  @ocaml.doc("<p>The sample's type.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>CPU: A CPU sample type. This is expressed as the app processing CPU time
                    (including child processes) as reported by process, as a percentage.</p>
            </li>
            <li>
                <p>MEMORY: A memory usage sample type. This is expressed as the total
                    proportional set size of an app process, in kilobytes.</p>
            </li>
            <li>
                <p>NATIVE_AVG_DRAWTIME</p>
            </li>
            <li>
                <p>NATIVE_FPS</p>
            </li>
            <li>
                <p>NATIVE_FRAMES</p>
            </li>
            <li>
                <p>NATIVE_MAX_DRAWTIME</p>
            </li>
            <li>
                <p>NATIVE_MIN_DRAWTIME</p>
            </li>
            <li>
                <p>OPENGL_AVG_DRAWTIME</p>
            </li>
            <li>
                <p>OPENGL_FPS</p>
            </li>
            <li>
                <p>OPENGL_FRAMES</p>
            </li>
            <li>
                <p>OPENGL_MAX_DRAWTIME</p>
            </li>
            <li>
                <p>OPENGL_MIN_DRAWTIME</p>
            </li>
            <li>
                <p>RX</p>
            </li>
            <li>
                <p>RX_RATE: The total number of bytes per second (TCP and UDP) that are sent,
                    by app process.</p>
            </li>
            <li>
                <p>THREADS: A threads sample type. This is expressed as the total number of
                    threads per app process.</p>
            </li>
            <li>
                <p>TX</p>
            </li>
            <li>
                <p>TX_RATE: The total number of bytes per second (TCP and UDP) that are
                    received, by app process.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<sampleType>,
  @ocaml.doc("<p>The sample's ARN.</p>") arn: option<amazonResourceName>,
}
@ocaml.doc("<p>Represents a condition for a device pool.</p>")
type rule = {
  @ocaml.doc("<p>The rule's value.</p>") value: option<string_>,
  @ocaml.doc("<p>Specifies how Device Farm compares the rule's attribute to the value. For the
            operators that are supported by each attribute, see the attribute
            descriptions.</p>")
  operator: option<ruleOperator>,
  @ocaml.doc("<p>The rule's stringified attribute. For example, specify the value as
                <code>\"\\\"abc\\\"\"</code>.</p>
        <p>The supported operators for each attribute are provided in the following
            list.</p>
        <dl>
            <dt>APPIUM_VERSION</dt>
            <dd>
                    <p>The Appium version for the test.</p>
                    <p>Supported operators: <code>CONTAINS</code>
               </p>
                </dd>
            <dt>ARN</dt>
            <dd>
                    <p>The Amazon Resource Name (ARN) of the device (for example,
                        <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>.</p>
                    <p>Supported operators: <code>EQUALS</code>,
                            <code>IN</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>AVAILABILITY</dt>
            <dd>
                    <p>The current availability of the device. Valid values are AVAILABLE,
                        HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
            <dt>FLEET_TYPE</dt>
            <dd>
                    <p>The fleet type. Valid values are PUBLIC or PRIVATE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
            <dt>FORM_FACTOR</dt>
            <dd>
                    <p>The device form factor. Valid values are PHONE or TABLET.</p>
                    <p>Supported operators: <code>EQUALS</code>,
                            <code>IN</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>INSTANCE_ARN</dt>
            <dd>
                    <p>The Amazon Resource Name (ARN) of the device instance.</p>
                    <p>Supported operators: <code>IN</code>,
                            <code>NOT_IN</code>
               </p>
                </dd>
            <dt>INSTANCE_LABELS</dt>
            <dd>
                    <p>The label of the device instance.</p>
                    <p>Supported operators: <code>CONTAINS</code>
               </p>
                </dd>
            <dt>MANUFACTURER</dt>
            <dd>
                    <p>The device manufacturer (for example, Apple).</p>
                    <p>Supported operators: <code>EQUALS</code>,
                            <code>IN</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>MODEL</dt>
            <dd>
                    <p>The device model, such as Apple iPad Air 2 or Google Pixel.</p>
                    <p>Supported operators: <code>CONTAINS</code>,
                            <code>EQUALS</code>, <code>IN</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>OS_VERSION</dt>
            <dd>
                    <p>The operating system version (for example, 10.3.2).</p>
                    <p>Supported operators: <code>EQUALS</code>,
                            <code>GREATER_THAN</code>, <code>GREATER_THAN_OR_EQUALS</code>,
                            <code>IN</code>, <code>LESS_THAN</code>,
                            <code>LESS_THAN_OR_EQUALS</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>PLATFORM</dt>
            <dd>
                    <p>The device platform. Valid values are ANDROID or IOS.</p>
                    <p>Supported operators: <code>EQUALS</code>,
                            <code>IN</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>REMOTE_ACCESS_ENABLED</dt>
            <dd>
                    <p>Whether the device is enabled for remote access. Valid values are TRUE
                        or FALSE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
            <dt>REMOTE_DEBUG_ENABLED</dt>
            <dd>
                    <p>Whether the device is enabled for remote debugging. Valid values are
                        TRUE or FALSE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                    <p>Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no longer
                            supported</a>, this filter is ignored.</p>
                </dd>
         </dl>")
  attribute: option<deviceAttribute>,
}
@ocaml.doc("<p>Represents the screen resolution of a device in height and width, expressed in
            pixels.</p>")
type resolution = {
  @ocaml.doc("<p>The screen resolution's height, expressed in pixels.</p>")
  height: option<integer_>,
  @ocaml.doc("<p>The screen resolution's width, expressed in pixels.</p>") width: option<integer_>,
}
@ocaml.doc("<p>Represents the set of radios and their states on a device. Examples of radios
            include Wi-Fi, GPS, Bluetooth, and NFC.</p>")
type radios = {
  @ocaml.doc("<p>True if GPS is enabled at the beginning of the test. Otherwise, false.</p>")
  gps: option<boolean_>,
  @ocaml.doc("<p>True if NFC is enabled at the beginning of the test. Otherwise, false.</p>")
  nfc: option<boolean_>,
  @ocaml.doc("<p>True if Bluetooth is enabled at the beginning of the test. Otherwise, false.</p>")
  bluetooth: option<boolean_>,
  @ocaml.doc("<p>True if Wi-Fi is enabled at the beginning of the test. Otherwise, false.</p>")
  wifi: option<boolean_>,
}
type purchasedDevicesMap = Js.Dict.t<integer_>
@ocaml.doc("<p>Represents an operating-system neutral workspace for running and managing
            tests.</p>")
type project = {
  @ocaml.doc("<p>When the project was created.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The default number of minutes (at the project level) a test run executes before it times out. The
            default value is 150 minutes.</p>")
  defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
  @ocaml.doc("<p>The project's name.</p>") name: option<name>,
  @ocaml.doc("<p>The project's ARN.</p>") arn: option<amazonResourceName>,
}
@ocaml.doc("<p>Information about a problem detail.</p>")
type problemDetail = {
  @ocaml.doc("<p>The problem detail's name.</p>") name: option<name>,
  @ocaml.doc("<p>The problem detail's ARN.</p>") arn: option<amazonResourceName>,
}
type packageIds = array<string_>
@ocaml.doc("<p>Represents information about an offering promotion.</p>")
type offeringPromotion = {
  @ocaml.doc("<p>A string that describes the offering promotion.</p>") description: option<message>,
  @ocaml.doc("<p>The ID of the offering promotion.</p>") id: option<offeringPromotionIdentifier>,
}
@ocaml.doc("<p>An array of settings that describes characteristics of a network profile.</p>")
type networkProfile = {
  @ocaml.doc("<p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>")
  downlinkLossPercent: option<percentInteger>,
  @ocaml.doc("<p>Proportion of transmitted packets that fail to arrive from 0 to 100
            percent.</p>")
  uplinkLossPercent: option<percentInteger>,
  @ocaml.doc("<p>Time variation in the delay of received packets in milliseconds as an integer from
            0 to 2000.</p>")
  downlinkJitterMs: option<long>,
  @ocaml.doc("<p>Time variation in the delay of received packets in milliseconds as an integer from
            0 to 2000.</p>")
  uplinkJitterMs: option<long>,
  @ocaml.doc("<p>Delay time for all packets to destination in milliseconds as an integer from 0 to
            2000.</p>")
  downlinkDelayMs: option<long>,
  @ocaml.doc("<p>Delay time for all packets to destination in milliseconds as an integer from 0 to
            2000.</p>")
  uplinkDelayMs: option<long>,
  @ocaml.doc("<p>The data throughput rate in bits per second, as an integer from 0 to
            104857600.</p>")
  downlinkBandwidthBits: option<long>,
  @ocaml.doc("<p>The data throughput rate in bits per second, as an integer from 0 to
            104857600.</p>")
  uplinkBandwidthBits: option<long>,
  @ocaml.doc("<p>The type of network profile. Valid values are listed here.</p>") @as("type")
  type_: option<networkProfileType>,
  @ocaml.doc("<p>The description of the network profile.</p>") description: option<message>,
  @ocaml.doc("<p>The name of the network profile.</p>") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the network profile.</p>")
  arn: option<amazonResourceName>,
}
@ocaml.doc("<p>A number that represents the monetary amount for an offering or transaction.</p>")
type monetaryAmount = {
  @ocaml.doc(
    "<p>The currency code of a monetary amount. For example, <code>USD</code> means U.S. dollars.</p>"
  )
  currencyCode: option<currencyCode>,
  @ocaml.doc("<p>The numerical amount of an offering or transaction.</p>") amount: option<double>,
}
type maxSlotMap = Js.Dict.t<integer_>
@ocaml.doc("<p>Represents a latitude and longitude pair, expressed in geographic coordinate system degrees (for
            example, 47.6204, -122.3491).</p>
        <p>Elevation is currently not supported.</p>")
type location = {
  @ocaml.doc("<p>The longitude.</p>") longitude: double,
  @ocaml.doc("<p>The latitude.</p>") latitude: double,
}
type iosPaths = array<string_>
type instanceLabels = array<string_>
@ocaml.doc("<p>Represents information about incompatibility.</p>")
type incompatibilityMessage = {
  @ocaml.doc("<p>The type of incompatibility.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>ARN</p>
            </li>
            <li>
                <p>FORM_FACTOR (for example, phone or tablet)</p>
            </li>
            <li>
                <p>MANUFACTURER</p>
            </li>
            <li>
                <p>PLATFORM (for example, Android or iOS)</p>
            </li>
            <li>
                <p>REMOTE_ACCESS_ENABLED</p>
            </li>
            <li>
                <p>APPIUM_VERSION</p>
            </li>
         </ul>")
  @as("type")
  type_: option<deviceAttribute>,
  @ocaml.doc("<p>A message about the incompatibility.</p>") message: option<message>,
}
@ocaml.doc("<p>Represents configuration information about a test run, such as the execution
            timeout (in minutes).</p>")
type executionConfiguration = {
  @ocaml.doc("<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public
            devices, Device Farm always signs your apps again.</p>
        <p>For more information about how Device Farm re-signs your apps, see <a href=\"https://aws.amazon.com/device-farm/faq/\">Do you modify my app?</a> in the <i>AWS Device
                Farm FAQs</i>.</p>")
  skipAppResign: option<skipAppResign>,
  @ocaml.doc(
    "<p>Set to true to enable video capture. Otherwise, set to false. The default is true.</p>"
  )
  videoCapture: option<videoCapture>,
  @ocaml.doc(
    "<p>True if app package cleanup is enabled at the beginning of the test. Otherwise, false.</p>"
  )
  appPackagesCleanup: option<appPackagesCleanup>,
  @ocaml.doc(
    "<p>True if account cleanup is enabled at the beginning of the test. Otherwise, false.</p>"
  )
  accountsCleanup: option<accountsCleanup>,
  @ocaml.doc("<p>The number of minutes a test run executes before it times out.</p>")
  jobTimeoutMinutes: option<jobTimeoutMinutes>,
}
@ocaml.doc("<p>Represents the total (metered or unmetered) minutes used by the resource to run
            tests. Contains the sum of minutes consumed by all children.</p>")
type deviceMinutes = {
  @ocaml.doc("<p>When specified, represents only the sum of unmetered minutes used by the resource
            to run tests.</p>")
  unmetered: option<double>,
  @ocaml.doc("<p>When specified, represents only the sum of metered minutes used by the resource to
            run tests.</p>")
  metered: option<double>,
  @ocaml.doc("<p>When specified, represents the total minutes used by the resource to run
            tests.</p>")
  total: option<double>,
}
type deviceHostPaths = array<string_>
type deviceFilterValues = array<string_>
@ocaml.doc("<p>Represents entity counters.</p>")
type counters = {
  @ocaml.doc("<p>The number of skipped entities.</p>") skipped: option<integer_>,
  @ocaml.doc("<p>The number of stopped entities.</p>") stopped: option<integer_>,
  @ocaml.doc("<p>The number of errored entities.</p>") errored: option<integer_>,
  @ocaml.doc("<p>The number of warned entities.</p>") warned: option<integer_>,
  @ocaml.doc("<p>The number of failed entities.</p>") failed: option<integer_>,
  @ocaml.doc("<p>The number of passed entities.</p>") passed: option<integer_>,
  @ocaml.doc("<p>The total number of entities.</p>") total: option<integer_>,
}
@ocaml.doc("<p>Represents the amount of CPU that an app is using on a physical device. Does not represent system-wide
            CPU usage.</p>")
type cpu = {
  @ocaml.doc("<p>The clock speed of the device's CPU, expressed in hertz (Hz). For example, a 1.2
            GHz CPU is expressed as 1200000000.</p>")
  clock: option<double>,
  @ocaml.doc("<p>The CPU's architecture (for example, x86 or ARM).</p>")
  architecture: option<string_>,
  @ocaml.doc("<p>The CPU's frequency.</p>") frequency: option<string_>,
}
@ocaml.doc("<p>Represents the output of a test. Examples of artifacts include logs and
            screenshots.</p>")
type artifact = {
  @ocaml.doc("<p>The presigned Amazon S3 URL that can be used with a GET request to download the artifact's
            file.</p>")
  url: option<url>,
  @ocaml.doc("<p>The artifact's file extension.</p>") extension: option<string_>,
  @ocaml.doc("<p>The artifact's type.</p>
        <p>Allowed values include the following:</p>
        <ul>
            <li>
                <p>UNKNOWN</p>
            </li>
            <li>
                <p>SCREENSHOT</p>
            </li>
            <li>
                <p>DEVICE_LOG</p>
            </li>
            <li>
                <p>MESSAGE_LOG</p>
            </li>
            <li>
                <p>VIDEO_LOG</p>
            </li>
            <li>
                <p>RESULT_LOG</p>
            </li>
            <li>
                <p>SERVICE_LOG</p>
            </li>
            <li>
                <p>WEBKIT_LOG</p>
            </li>
            <li>
                <p>INSTRUMENTATION_OUTPUT</p>
            </li>
            <li>
                <p>EXERCISER_MONKEY_OUTPUT: the artifact (log) generated by an Android fuzz test.</p>
            </li>
            <li>
                <p>CALABASH_JSON_OUTPUT</p>
            </li>
            <li>
                <p>CALABASH_PRETTY_OUTPUT</p>
            </li>
            <li>
                <p>CALABASH_STANDARD_OUTPUT</p>
            </li>
            <li>
                <p>CALABASH_JAVA_XML_OUTPUT</p>
            </li>
            <li>
                <p>AUTOMATION_OUTPUT</p>
            </li>
            <li>
                <p>APPIUM_SERVER_OUTPUT</p>
            </li>
            <li>
                <p>APPIUM_JAVA_OUTPUT</p>
            </li>
            <li>
                <p>APPIUM_JAVA_XML_OUTPUT</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_OUTPUT</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_XML_OUTPUT</p>
            </li>
            <li>
                <p>EXPLORER_EVENT_LOG</p>
            </li>
            <li>
                <p>EXPLORER_SUMMARY_LOG</p>
            </li>
            <li>
                <p>APPLICATION_CRASH_REPORT</p>
            </li>
            <li>
                <p>XCTEST_LOG</p>
            </li>
            <li>
                <p>VIDEO</p>
            </li>
            <li>
                <p>CUSTOMER_ARTIFACT</p>
            </li>
            <li>
                <p>CUSTOMER_ARTIFACT_LOG</p>
            </li>
            <li>
                <p>TESTSPEC_OUTPUT</p>
            </li>
         </ul>")
  @as("type")
  type_: option<artifactType>,
  @ocaml.doc("<p>The artifact's name.</p>") name: option<name>,
  @ocaml.doc("<p>The artifact's ARN.</p>") arn: option<amazonResourceName>,
}
type androidPaths = array<string_>
type amazonResourceNames = array<amazonResourceName>
type vpceconfigurations = array<vpceconfiguration>
type uploads = array<upload>
@ocaml.doc("<p>The VPC security groups and subnets that are attached to a project.</p>")
type testGridVpcConfig = {
  @ocaml.doc("<p>The ID of the Amazon VPC.</p>") vpcId: nonEmptyString,
  @ocaml.doc("<p>A list of VPC subnet IDs in your Amazon VPC.</p>") subnetIds: subnetIds,
  @ocaml.doc("<p>A list of VPC security group IDs in your Amazon VPC.</p>")
  securityGroupIds: securityGroupIds,
}
type testGridSessions = array<testGridSession>
type testGridSessionArtifacts = array<testGridSessionArtifact>
type testGridSessionActions = array<testGridSessionAction>
@ocaml.doc("<p>Represents a condition that is evaluated.</p>")
type test = {
  @ocaml.doc("<p>Represents the total (metered or unmetered) minutes used by the test.</p>")
  deviceMinutes: option<deviceMinutes>,
  @ocaml.doc("<p>A message about the test's result.</p>") message: option<message>,
  @ocaml.doc("<p>The test's result counters.</p>") counters: option<counters>,
  @ocaml.doc("<p>The test's stop time.</p>") stopped: option<dateTime>,
  @ocaml.doc("<p>The test's start time.</p>") started: option<dateTime>,
  @ocaml.doc("<p>The test's result.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PASSED</p>
            </li>
            <li>
                <p>WARNED</p>
            </li>
            <li>
                <p>FAILED</p>
            </li>
            <li>
                <p>SKIPPED</p>
            </li>
            <li>
                <p>ERRORED</p>
            </li>
            <li>
                <p>STOPPED</p>
            </li>
         </ul>")
  result: option<executionResult>,
  @ocaml.doc("<p>The test's status.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PENDING_CONCURRENCY</p>
            </li>
            <li>
                <p>PENDING_DEVICE</p>
            </li>
            <li>
                <p>PROCESSING</p>
            </li>
            <li>
                <p>SCHEDULING</p>
            </li>
            <li>
                <p>PREPARING</p>
            </li>
            <li>
                <p>RUNNING</p>
            </li>
            <li>
                <p>COMPLETED</p>
            </li>
            <li>
                <p>STOPPING</p>
            </li>
         </ul>")
  status: option<executionStatus>,
  @ocaml.doc("<p>When the test was created.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The test's type.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>BUILTIN_FUZZ</p>
            </li>
            <li>
                <p>BUILTIN_EXPLORER</p>
                <note>
                    <p>For Android, an app explorer that traverses an Android app, interacting with it and capturing
                        screenshots at the same time.</p>
                </note>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_NODE</p>
            </li>
            <li>
                <p>APPIUM_RUBY</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY</p>
            </li>
            <li>
                <p>CALABASH</p>
            </li>
            <li>
                <p>INSTRUMENTATION</p>
            </li>
            <li>
                <p>UIAUTOMATION</p>
            </li>
            <li>
                <p>UIAUTOMATOR</p>
            </li>
            <li>
                <p>XCTEST</p>
            </li>
            <li>
                <p>XCTEST_UI</p>
            </li>
         </ul>")
  @as("type")
  type_: option<testType>,
  @ocaml.doc("<p>The test's name.</p>") name: option<name>,
  @ocaml.doc("<p>The test's ARN.</p>") arn: option<amazonResourceName>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Represents a collection of one or more tests.</p>")
type suite = {
  @ocaml.doc("<p>Represents the total (metered or unmetered) minutes used by the test
            suite.</p>")
  deviceMinutes: option<deviceMinutes>,
  @ocaml.doc("<p>A message about the suite's result.</p>") message: option<message>,
  @ocaml.doc("<p>The suite's result counters.</p>") counters: option<counters>,
  @ocaml.doc("<p>The suite's stop time.</p>") stopped: option<dateTime>,
  @ocaml.doc("<p>The suite's start time.</p>") started: option<dateTime>,
  @ocaml.doc("<p>The suite's result.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PASSED</p>
            </li>
            <li>
                <p>WARNED</p>
            </li>
            <li>
                <p>FAILED</p>
            </li>
            <li>
                <p>SKIPPED</p>
            </li>
            <li>
                <p>ERRORED</p>
            </li>
            <li>
                <p>STOPPED</p>
            </li>
         </ul>")
  result: option<executionResult>,
  @ocaml.doc("<p>The suite's status.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PENDING_CONCURRENCY</p>
            </li>
            <li>
                <p>PENDING_DEVICE</p>
            </li>
            <li>
                <p>PROCESSING</p>
            </li>
            <li>
                <p>SCHEDULING</p>
            </li>
            <li>
                <p>PREPARING</p>
            </li>
            <li>
                <p>RUNNING</p>
            </li>
            <li>
                <p>COMPLETED</p>
            </li>
            <li>
                <p>STOPPING</p>
            </li>
         </ul>")
  status: option<executionStatus>,
  @ocaml.doc("<p>When the suite was created.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The suite's type.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>BUILTIN_FUZZ</p>
            </li>
            <li>
                <p>BUILTIN_EXPLORER </p>
                <note>
                    <p>Only available for Android; an app explorer that traverses an Android app, interacting with it
                        and capturing screenshots at the same time.</p>
                </note>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_NODE</p>
            </li>
            <li>
                <p>APPIUM_RUBY</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY</p>
            </li>
            <li>
                <p>CALABASH</p>
            </li>
            <li>
                <p>INSTRUMENTATION</p>
            </li>
            <li>
                <p>UIAUTOMATION</p>
            </li>
            <li>
                <p>UIAUTOMATOR</p>
            </li>
            <li>
                <p>XCTEST</p>
            </li>
            <li>
                <p>XCTEST_UI</p>
            </li>
         </ul>")
  @as("type")
  type_: option<testType>,
  @ocaml.doc("<p>The suite's name.</p>") name: option<name>,
  @ocaml.doc("<p>The suite's ARN.</p>") arn: option<amazonResourceName>,
}
@ocaml.doc("<p>Represents test settings. This data structure is passed in as the test parameter to ScheduleRun. For an
            example of the JSON request syntax, see <a>ScheduleRun</a>.</p>")
type scheduleRunTest = {
  @ocaml.doc("<p>The test's parameters, such as test framework parameters and fixture settings.
            Parameters are represented by name-value pairs of strings.</p>
        <p>For all tests:</p>
        <ul>
            <li>
                <p>
                  <code>app_performance_monitoring</code>: Performance monitoring is enabled by default.
                    Set this parameter to false to disable it.</p>
            </li>
         </ul>
        <p>For Calabash tests:</p>
        <ul>
            <li>
                <p>profile: A cucumber profile (for example, <code>my_profile_name</code>).</p>
            </li>
            <li>
                <p>tags: You can limit execution to features or scenarios that have (or don't
                    have) certain tags (for example, @smoke or @smoke,~@wip).</p>
            </li>
         </ul>
        <p>For Appium tests (all types):</p>
        <ul>
            <li>
                <p>appium_version: The Appium version. Currently supported values are 1.6.5
                    (and later), latest, and default.</p>
                <ul>
                  <li>
                        
                        <p>latest runs the latest Appium version supported by Device
                            Farm (1.9.1).</p>
                    </li>
                  <li>
                        <p>For default, Device Farm selects a compatible version of
                            Appium for the device. The current behavior is to run 1.7.2 on Android
                            devices and iOS 9 and earlier and 1.7.2 for iOS 10 and later.</p>
                    </li>
                  <li>
                        <p>This behavior is subject to change.</p>
                    </li>
               </ul>
            </li>
         </ul>
        <p>For fuzz tests (Android only):</p>
        <ul>
            <li>
                <p>event_count: The number of events, between 1 and 10000, that the UI fuzz
                    test should perform.</p>
            </li>
            <li>
                <p>throttle: The time, in ms, between 0 and 1000, that the UI fuzz test should
                    wait between events.</p>
            </li>
            <li>
                <p>seed: A seed to use for randomizing the UI fuzz test. Using the same seed
                    value between tests ensures identical event sequences.</p>
            </li>
         </ul>
        <p>For Explorer tests:</p>
        <ul>
            <li>
                <p>username: A user name to use if the Explorer encounters a login form. If not supplied, no user
                    name is inserted.</p>
            </li>
            <li>
                <p>password: A password to use if the Explorer encounters a login form. If not supplied, no
                    password is inserted.</p>
            </li>
         </ul>
        <p>For Instrumentation:</p>
        <ul>
            <li>
                <p>filter: A test filter string. Examples:</p>
                <ul>
                  <li>
                        <p>Running a single test case: <code>com.android.abc.Test1</code>
                     </p>
                    </li>
                  <li>
                        <p>Running a single test: <code>com.android.abc.Test1#smoke</code>
                     </p>
                    </li>
                  <li>
                        <p>Running multiple tests:
                            <code>com.android.abc.Test1,com.android.abc.Test2</code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>
        <p>For XCTest and XCTestUI:</p>
        <ul>
            <li>
                <p>filter: A test filter string. Examples:</p>
                <ul>
                  <li>
                        <p>Running a single test class: <code>LoginTests</code>
                     </p>
                    </li>
                  <li>
                        <p>Running a multiple test classes: <code>LoginTests,SmokeTests</code>
                     </p>
                    </li>
                  <li>
                        <p>Running a single test: <code>LoginTests/testValid</code>
                     </p>
                    </li>
                  <li>
                        <p>Running multiple tests:
                            <code>LoginTests/testValid,LoginTests/testInvalid</code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>
        <p>For UIAutomator:</p>
        <ul>
            <li>
                <p>filter: A test filter string. Examples:</p>
                <ul>
                  <li>
                        <p>Running a single test case: <code>com.android.abc.Test1</code>
                     </p>
                    </li>
                  <li>
                        <p>Running a single test: <code>com.android.abc.Test1#smoke</code>
                     </p>
                    </li>
                  <li>
                        <p>Running multiple tests:
                            <code>com.android.abc.Test1,com.android.abc.Test2</code>
                     </p>
                    </li>
               </ul>
            </li>
         </ul>")
  parameters: option<testParameters>,
  @ocaml.doc("<p>The test's filter.</p>") filter: option<filter>,
  @ocaml.doc("<p>The ARN of the YAML-formatted test specification.</p>")
  testSpecArn: option<amazonResourceName>,
  @ocaml.doc("<p>The ARN of the uploaded test to be run.</p>")
  testPackageArn: option<amazonResourceName>,
  @ocaml.doc("<p>The test's type.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>BUILTIN_FUZZ</p>
            </li>
            <li>
                <p>BUILTIN_EXPLORER. For Android, an app explorer that traverses an
                    Android app, interacting with it and capturing screenshots at the same
                    time.</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_NODE</p>
            </li>
            <li>
                <p>APPIUM_RUBY</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY</p>
            </li>
            <li>
                <p>CALABASH</p>
            </li>
            <li>
                <p>INSTRUMENTATION</p>
            </li>
            <li>
                <p>UIAUTOMATION</p>
            </li>
            <li>
                <p>UIAUTOMATOR</p>
            </li>
            <li>
                <p>XCTEST</p>
            </li>
            <li>
                <p>XCTEST_UI</p>
            </li>
         </ul>")
  @as("type")
  type_: testType,
}
type samples = array<sample>
type rules = array<rule>
@ocaml.doc("<p>Specifies whether charges for devices are recurring.</p>")
type recurringCharge = {
  @ocaml.doc("<p>The frequency in which charges recur.</p>")
  frequency: option<recurringChargeFrequency>,
  @ocaml.doc("<p>The cost of the recurring charge.</p>") cost: option<monetaryAmount>,
}
type projects = array<project>
type offeringPromotions = array<offeringPromotion>
type networkProfiles = array<networkProfile>
@ocaml.doc("<p>Represents the instance profile.</p>")
type instanceProfile = {
  @ocaml.doc("<p>The description of the instance profile.</p>") description: option<message>,
  @ocaml.doc("<p>The name of the instance profile.</p>") name: option<name>,
  @ocaml.doc("<p>When set to <code>true</code>, Device Farm reboots the instance after a test run. The default value is
                <code>true</code>.</p>")
  rebootAfterUse: option<boolean_>,
  @ocaml.doc("<p>An array of strings containing the list of app packages that should not be cleaned up from the device
            after a test run completes.</p>
        <p>The list of packages is considered only if you set <code>packageCleanup</code> to
            <code>true</code>.</p>")
  excludeAppPackagesFromCleanup: option<packageIds>,
  @ocaml.doc("<p>When set to <code>true</code>, Device Farm removes app packages after a test run. The default value is
                <code>false</code> for private devices.</p>")
  packageCleanup: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance profile.</p>")
  arn: option<amazonResourceName>,
}
type incompatibilityMessages = array<incompatibilityMessage>
@ocaml.doc("<p>Represents a device filter used to select a set of devices to be included in a test
            run. This data structure is passed in as the <code>deviceSelectionConfiguration</code>
            parameter to <code>ScheduleRun</code>. For an example of the JSON request syntax, see
                <a>ScheduleRun</a>.</p>
        <p>It is also passed in as the <code>filters</code> parameter to
            <code>ListDevices</code>. For an example of the JSON request syntax, see <a>ListDevices</a>.</p>")
type deviceFilter = {
  @ocaml.doc("<p>An array of one or more filter values used in a device filter.</p>
        <p class=\"title\">
            <b>Operator Values</b>
         </p>
         <ul>
            <li>
                <p>The IN and NOT_IN operators can take a values array that has more than one
                    element.</p>
            </li>
            <li>
                <p>The other operators require an array with a single element.</p>
            </li>
         </ul>
        <p class=\"title\">
            <b>Attribute Values</b>
         </p>
         <ul>
            <li>
                <p>The PLATFORM attribute can be set to ANDROID or IOS.</p>
            </li>
            <li>
                <p>The AVAILABILITY attribute can be set to AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
                    TEMPORARY_NOT_AVAILABLE.</p>
            </li>
            <li>
                <p>The FORM_FACTOR attribute can be set to PHONE or TABLET.</p>
            </li>
            <li>
                <p>The FLEET_TYPE attribute can be set to PUBLIC or PRIVATE.</p>
            </li>
         </ul>")
  values: deviceFilterValues,
  @ocaml.doc("<p>Specifies how Device Farm compares the filter's attribute to the value. See the attribute
            descriptions.</p>")
  operator: ruleOperator,
  @ocaml.doc("<p>The aspect of a device such as platform or model used as the selection criteria in a
            device filter.</p>
        <p>The supported operators for each attribute are provided in the following list.</p>
        <dl>
            <dt>ARN</dt>
            <dd>
                    <p>The Amazon Resource Name (ARN) of the device (for example,
                            <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>
                    <p>Supported operators: <code>EQUALS</code>, <code>IN</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>PLATFORM</dt>
            <dd>
                    <p>The device platform. Valid values are ANDROID or IOS.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
            <dt>OS_VERSION</dt>
            <dd>
                    <p>The operating system version (for example, 10.3.2).</p>
                    <p>Supported operators: <code>EQUALS</code>, <code>GREATER_THAN</code>,
                            <code>GREATER_THAN_OR_EQUALS</code>, <code>IN</code>,
                            <code>LESS_THAN</code>, <code>LESS_THAN_OR_EQUALS</code>,
                            <code>NOT_IN</code>
               </p>
                </dd>
            <dt>MODEL</dt>
            <dd>
                    <p>The device model (for example, iPad 5th Gen).</p>
                    <p>Supported operators: <code>CONTAINS</code>, <code>EQUALS</code>,
                            <code>IN</code>, <code>NOT_IN</code>
               </p>
                </dd>
            <dt>AVAILABILITY</dt>
            <dd>
                    <p>The current availability of the device. Valid values are AVAILABLE,
                        HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
            <dt>FORM_FACTOR</dt>
            <dd>
                    <p>The device form factor. Valid values are PHONE or TABLET.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
            <dt>MANUFACTURER</dt>
            <dd>
                    <p>The device manufacturer (for example, Apple).</p>
                    <p>Supported operators: <code>EQUALS</code>, <code>IN</code>,
                            <code>NOT_IN</code>
               </p>
                </dd>
            <dt>REMOTE_ACCESS_ENABLED</dt>
            <dd>
                    <p>Whether the device is enabled for remote access. Valid values are TRUE or
                        FALSE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
            <dt>REMOTE_DEBUG_ENABLED</dt>
            <dd>
                    <p>Whether the device is enabled for remote debugging. Valid values are TRUE or FALSE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                    <p>Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no longer
                            supported</a>, this filter is ignored.</p>
                </dd>
            <dt>INSTANCE_ARN</dt>
            <dd>
                    <p>The Amazon Resource Name (ARN) of the device instance.</p>
                    <p>Supported operators: <code>EQUALS</code>, <code>IN</code>,
                            <code>NOT_IN</code>
               </p>
                </dd>
            <dt>INSTANCE_LABELS</dt>
            <dd>
                    <p>The label of the device instance.</p>
                    <p>Supported operators: <code>CONTAINS</code>
               </p>
                </dd>
            <dt>FLEET_TYPE</dt>
            <dd>
                    <p>The fleet type. Valid values are PUBLIC or PRIVATE.</p>
                    <p>Supported operators: <code>EQUALS</code>
               </p>
                </dd>
         </dl>")
  attribute: deviceFilterAttribute,
}
@ocaml.doc("<p>A JSON object that specifies the paths where the artifacts generated by the customer's tests, on the
            device or in the test environment, are pulled from.</p>
        <p>Specify <code>deviceHostPaths</code> and optionally specify either
                <code>iosPaths</code> or <code>androidPaths</code>.</p>
        <p>For web app tests, you can specify both <code>iosPaths</code> and
                <code>androidPaths</code>.</p>")
type customerArtifactPaths = {
  @ocaml.doc("<p>Comma-separated list of paths in the test execution environment where the artifacts generated by the
            customer's tests are pulled from.</p>")
  deviceHostPaths: option<deviceHostPaths>,
  @ocaml.doc("<p>Comma-separated list of paths on the Android device where the artifacts generated by the customer's
            tests are pulled from.</p>")
  androidPaths: option<androidPaths>,
  @ocaml.doc("<p>Comma-separated list of paths on the iOS device where the artifacts generated by the customer's tests
            are pulled from.</p>")
  iosPaths: option<iosPaths>,
}
@ocaml.doc("<p>Configuration settings for a remote access session, including billing
            method.</p>")
type createRemoteAccessSessionConfiguration = {
  @ocaml.doc("<p>An array of ARNs included in the VPC endpoint configuration.</p>")
  vpceConfigurationArns: option<amazonResourceNames>,
  @ocaml.doc("<p>The billing method for the remote access session.</p>")
  billingMethod: option<billingMethod>,
}
type artifacts = array<artifact>
@ocaml.doc("<p>A container for account-level settings in AWS Device Farm.</p>")
type accountSettings = {
  @ocaml.doc("<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public
            devices, Device Farm always signs your apps again.</p>
        <p>For more information about how Device Farm re-signs your apps, see <a href=\"https://aws.amazon.com/device-farm/faq/\">Do you modify my app?</a> in the <i>AWS Device
                Farm FAQs</i>.</p>")
  skipAppResign: option<skipAppResign>,
  @ocaml.doc("<p>The default number of minutes (at the account level) a test run executes before it times out. The
            default value is 150 minutes.</p>")
  defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
  @ocaml.doc("<p>The maximum number of device slots that the AWS account can purchase. Each maximum
            is expressed as an <code>offering-id:number</code> pair, where the
                <code>offering-id</code> represents one of the IDs returned by the
                <code>ListOfferings</code> command.</p>")
  maxSlots: option<maxSlotMap>,
  @ocaml.doc("<p>Information about an AWS account's usage of free trial device minutes.</p>")
  trialMinutes: option<trialMinutes>,
  @ocaml.doc("<p>The maximum number of minutes a test run executes before it times out.</p>")
  maxJobTimeoutMinutes: option<jobTimeoutMinutes>,
  @ocaml.doc("<p>Returns the unmetered remote access devices you have purchased or want to
            purchase.</p>")
  unmeteredRemoteAccessDevices: option<purchasedDevicesMap>,
  @ocaml.doc("<p>Returns the unmetered devices you have purchased or want to purchase.</p>")
  unmeteredDevices: option<purchasedDevicesMap>,
  @ocaml.doc("<p>The AWS account number specified in the <code>AccountSettings</code>
            container.</p>")
  awsAccountNumber: option<awsaccountNumber>,
}
type tests = array<test>
@ocaml.doc("<p>A Selenium testing project. Projects are used to collect and collate sessions.</p>")
type testGridProject = {
  @ocaml.doc("<p>When the project was created.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The VPC security groups and subnets that are attached to a project.</p>")
  vpcConfig: option<testGridVpcConfig>,
  @ocaml.doc("<p>A human-readable description for the project.</p>") description: option<string_>,
  @ocaml.doc("<p>A human-readable name for the project.</p>") name: option<string_>,
  @ocaml.doc("<p>The ARN for the project.</p>") arn: option<deviceFarmArn>,
}
type suites = array<suite>
@ocaml.doc("<p>Represents the settings for a run. Includes things like location, radio states,
            auxiliary apps, and network profiles.</p>")
type scheduleRunConfiguration = {
  @ocaml.doc("<p>Specifies the billing method for a test run: <code>metered</code> or
                <code>unmetered</code>. If the parameter is not specified, the default value is
                <code>metered</code>.</p>
        <note>
            <p>If you have purchased unmetered device slots, you must set this parameter to <code>unmetered</code> to
                make use of them. Otherwise, your run counts against your metered time.</p>
        </note>")
  billingMethod: option<billingMethod>,
  @ocaml.doc("<p>A list of upload ARNs for app packages to be installed with your app.</p>")
  auxiliaryApps: option<amazonResourceNames>,
  @ocaml.doc("<p>Information about the radio states for the run.</p>") radios: option<radios>,
  @ocaml.doc("<p>Input <code>CustomerArtifactPaths</code> object for the scheduled run
            configuration.</p>")
  customerArtifactPaths: option<customerArtifactPaths>,
  @ocaml.doc("<p>An array of ARNs for your VPC endpoint configurations.</p>")
  vpceConfigurationArns: option<amazonResourceNames>,
  @ocaml.doc("<p>Information about the location that is used for the run.</p>")
  location: option<location>,
  @ocaml.doc("<p>Information about the locale that is used for the run.</p>")
  locale: option<string_>,
  @ocaml.doc("<p>Reserved for internal use.</p>") networkProfileArn: option<amazonResourceName>,
  @ocaml.doc("<p>The ARN of the extra data for the run. The extra data is a .zip file that AWS Device Farm extracts to
            external data for Android or the app's sandbox for iOS.</p>")
  extraDataPackageArn: option<amazonResourceName>,
}
type recurringCharges = array<recurringCharge>
type instanceProfiles = array<instanceProfile>
@ocaml.doc("<p>Represents a collection of device types.</p>")
type devicePool = {
  @ocaml.doc("<p>The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are
            available and meet the criteria that you assign for the <code>rules</code> parameter. Depending on how many
            devices meet these constraints, your device pool might contain fewer devices than the value for this
            parameter.</p>
        <p>By specifying the maximum number of devices, you can control the costs that you incur
            by running tests.</p>")
  maxDevices: option<integer_>,
  @ocaml.doc("<p>Information about the device pool's rules.</p>") rules: option<rules>,
  @ocaml.doc("<p>The device pool's type.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>CURATED: A device pool that is created and managed by AWS Device
                    Farm.</p>
            </li>
            <li>
                <p>PRIVATE: A device pool that is created and managed by the device pool
                    developer.</p>
            </li>
         </ul>")
  @as("type")
  type_: option<devicePoolType>,
  @ocaml.doc("<p>The device pool's description.</p>") description: option<message>,
  @ocaml.doc("<p>The device pool's name.</p>") name: option<name>,
  @ocaml.doc("<p>The device pool's ARN.</p>") arn: option<amazonResourceName>,
}
@ocaml.doc("<p>Represents the device instance.</p>")
type deviceInstance = {
  @ocaml.doc("<p>A object that contains information about the instance profile.</p>")
  instanceProfile: option<instanceProfile>,
  @ocaml.doc("<p>Unique device identifier for the device instance.</p>") udid: option<string_>,
  @ocaml.doc("<p>The status of the device instance. Valid values are listed here.</p>")
  status: option<instanceStatus>,
  @ocaml.doc("<p>An array of strings that describe the device instance.</p>")
  labels: option<instanceLabels>,
  @ocaml.doc("<p>The ARN of the device.</p>") deviceArn: option<amazonResourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device instance.</p>")
  arn: option<amazonResourceName>,
}
type deviceFilters = array<deviceFilter>
type testGridProjects = array<testGridProject>
@ocaml.doc("<p>Represents the metadata of a device offering.</p>")
type offering = {
  @ocaml.doc("<p>Specifies whether there are recurring charges for the offering.</p>")
  recurringCharges: option<recurringCharges>,
  @ocaml.doc(
    "<p>The platform of the device (for example, <code>ANDROID</code> or <code>IOS</code>).</p>"
  )
  platform: option<devicePlatform>,
  @ocaml.doc("<p>The type of offering (for example, <code>RECURRING</code>) for a device.</p>")
  @as("type")
  type_: option<offeringType>,
  @ocaml.doc("<p>A string that describes the offering.</p>") description: option<message>,
  @ocaml.doc("<p>The ID that corresponds to a device offering.</p>") id: option<offeringIdentifier>,
}
@ocaml.doc("<p>Contains the run results requested by the device selection configuration and how many devices were
            returned. For an example of the JSON response syntax, see <a>ScheduleRun</a>.</p>")
type deviceSelectionResult = {
  @ocaml.doc("<p>The maximum number of devices to be selected by a device filter and included in a test
            run.</p>")
  maxDevices: option<integer_>,
  @ocaml.doc("<p>The number of devices that matched the device filter selection criteria.</p>")
  matchedDevicesCount: option<integer_>,
  @ocaml.doc("<p>The filters in a device selection result.</p>") filters: option<deviceFilters>,
}
@ocaml.doc("<p>Represents the device filters used in a test run and the maximum number of devices to be included in the
            run. It is passed in as the <code>deviceSelectionConfiguration</code> request parameter in <a>ScheduleRun</a>.</p>")
type deviceSelectionConfiguration = {
  @ocaml.doc("<p>The maximum number of devices to be included in a test run.</p>")
  maxDevices: integer_,
  @ocaml.doc("<p>Used to dynamically select a set of devices for a test run. A filter is made up of an
            attribute, an operator, and one or more values.</p>
        <ul>
            <li>
                <p>
                  <b>Attribute</b>
               </p>
                <p>The aspect of a device such as platform or model used as the selection
                    criteria in a device filter.</p>
                <p>Allowed values include:</p>
                <ul>
                  <li>
                        <p>ARN: The Amazon Resource Name (ARN) of the device (for example,
                                <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>
                    </li>
                  <li>
                        <p>PLATFORM: The device platform. Valid values are ANDROID or
                            IOS.</p>
                    </li>
                  <li>
                        <p>OS_VERSION: The operating system version (for example,
                            10.3.2).</p>
                    </li>
                  <li>
                        <p>MODEL: The device model (for example, iPad 5th Gen).</p>
                    </li>
                  <li>
                        <p>AVAILABILITY: The current availability of the device. Valid values
                            are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
                            TEMPORARY_NOT_AVAILABLE.</p>
                    </li>
                  <li>
                        <p>FORM_FACTOR: The device form factor. Valid values are PHONE or
                            TABLET.</p>
                    </li>
                  <li>
                        <p>MANUFACTURER: The device manufacturer (for example,
                            Apple).</p>
                    </li>
                  <li>
                        <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote
                            access. Valid values are TRUE or FALSE.</p>
                    </li>
                  <li>
                        <p>REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values
                            are TRUE or FALSE. Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                                longer supported</a>, this filter is ignored.</p>
                    </li>
                  <li>
                        <p>INSTANCE_ARN: The Amazon Resource Name (ARN) of the device
                            instance.</p>
                    </li>
                  <li>
                        <p>INSTANCE_LABELS: The label of the device instance.</p>
                    </li>
                  <li>
                        <p>FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                  <b>Operator</b>
               </p>
                <p>The filter operator.</p>
                <ul>
                  <li>
                        <p>The EQUALS operator is available for every attribute except
                            INSTANCE_LABELS.</p>
                    </li>
                  <li>
                        <p>The CONTAINS operator is available for the INSTANCE_LABELS and MODEL
                            attributes.</p>
                    </li>
                  <li>
                        <p>The IN and NOT_IN operators are available for the ARN, OS_VERSION,
                            MODEL, MANUFACTURER, and INSTANCE_ARN attributes.</p>
                    </li>
                  <li>
                        <p>The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
                            GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION
                            attribute.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>
                  <b>Values</b>
               </p>
                <p>An array of one or more filter values.</p>
                <p class=\"title\">
                  <b>Operator Values</b>
               </p>
               <ul>
                  <li>
                        <p>The IN and NOT_IN operators can take a values array that has more than
                            one element.</p>
                    </li>
                  <li>
                        <p>The other operators require an array with a single element.</p>
                    </li>
               </ul>
                <p class=\"title\">
                  <b>Attribute Values</b>
               </p>
               <ul>
                  <li>
                        <p>The PLATFORM attribute can be set to ANDROID or IOS.</p>
                    </li>
                  <li>
                        <p>The AVAILABILITY attribute can be set to AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
                            TEMPORARY_NOT_AVAILABLE.</p>
                    </li>
                  <li>
                        <p>The FORM_FACTOR attribute can be set to PHONE or TABLET.</p>
                    </li>
                  <li>
                        <p>The FLEET_TYPE attribute can be set to PUBLIC or PRIVATE.</p>
                    </li>
               </ul>
            </li>
         </ul>")
  filters: deviceFilters,
}
type devicePools = array<devicePool>
type deviceInstances = array<deviceInstance>
@ocaml.doc("<p>Represents a test run on a set of devices with a given app package, test parameters, and so
            on.</p>")
type run = {
  @ocaml.doc("<p>The results of a device filter used to select the devices for a test run.</p>")
  deviceSelectionResult: option<deviceSelectionResult>,
  @ocaml.doc("<p>The ARN of the YAML-formatted test specification for the run.</p>")
  testSpecArn: option<amazonResourceName>,
  @ocaml.doc("<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public
            devices, Device Farm always signs your apps again.</p>
        <p>For more information about how Device Farm re-signs your apps, see <a href=\"https://aws.amazon.com/device-farm/faq/\">Do you modify my app?</a> in the <i>AWS Device
                Farm FAQs</i>.</p>")
  skipAppResign: option<skipAppResign>,
  @ocaml.doc("<p>The Device Farm console URL for the recording of the run.</p>")
  webUrl: option<string_>,
  @ocaml.doc("<p>Output <code>CustomerArtifactPaths</code> object for the test run.</p>")
  customerArtifactPaths: option<customerArtifactPaths>,
  @ocaml.doc("<p>Information about the location that is used for the run.</p>")
  location: option<location>,
  @ocaml.doc("<p>Information about the radio states for the run.</p>") radios: option<radios>,
  @ocaml.doc("<p>Information about the locale that is used for the run.</p>")
  locale: option<string_>,
  @ocaml.doc("<p>The ARN of the device pool for the run.</p>")
  devicePoolArn: option<amazonResourceName>,
  @ocaml.doc("<p>The number of minutes the job executes before it times out.</p>")
  jobTimeoutMinutes: option<jobTimeoutMinutes>,
  @ocaml.doc("<p>For fuzz tests, this is the number of events, between 1 and 10000, that the UI fuzz
            test should perform.</p>")
  eventCount: option<integer_>,
  @ocaml.doc("<p>An app to upload or that has been uploaded.</p>")
  appUpload: option<amazonResourceName>,
  @ocaml.doc("<p>For fuzz tests, this is a seed to use for randomizing the UI fuzz test. Using the same
            seed value between tests ensures identical event sequences.</p>")
  seed: option<integer_>,
  @ocaml.doc("<p>Supporting field for the result field. Set only if <code>result</code> is <code>SKIPPED</code>.
                <code>PARSING_FAILED</code> if the result is skipped because of test package parsing failure.</p>")
  resultCode: option<executionResultCode>,
  @ocaml.doc("<p>Read-only URL for an object in an S3 bucket where you can get the parsing results of the test package.
            If the test package doesn't parse, the reason why it doesn't parse appears in the file that this URL points
            to.</p>")
  parsingResultUrl: option<string_>,
  @ocaml.doc("<p>The network profile being used for a test run.</p>")
  networkProfile: option<networkProfile>,
  @ocaml.doc("<p>Represents the total (metered or unmetered) minutes used by the test run.</p>")
  deviceMinutes: option<deviceMinutes>,
  @ocaml.doc("<p>Specifies the billing method for a test run: <code>metered</code> or
                <code>unmetered</code>. If the parameter is not specified, the default value is
                <code>metered</code>.</p>
        <note>
            <p>If you have unmetered device slots, you must set this to <code>unmetered</code> to use them.
                Otherwise, the run is counted toward metered device minutes.</p>
        </note>")
  billingMethod: option<billingMethod>,
  @ocaml.doc("<p>The total number of completed jobs.</p>") completedJobs: option<integer_>,
  @ocaml.doc("<p>The total number of jobs for the run.</p>") totalJobs: option<integer_>,
  @ocaml.doc("<p>A message about the run's result.</p>") message: option<message>,
  @ocaml.doc("<p>The run's result counters.</p>") counters: option<counters>,
  @ocaml.doc("<p>The run's stop time.</p>") stopped: option<dateTime>,
  @ocaml.doc("<p>The run's start time.</p>") started: option<dateTime>,
  @ocaml.doc("<p>The run's result.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PASSED</p>
            </li>
            <li>
                <p>WARNED</p>
            </li>
            <li>
                <p>FAILED</p>
            </li>
            <li>
                <p>SKIPPED</p>
            </li>
            <li>
                <p>ERRORED</p>
            </li>
            <li>
                <p>STOPPED</p>
            </li>
         </ul>")
  result: option<executionResult>,
  @ocaml.doc("<p>The run's status.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PENDING_CONCURRENCY</p>
            </li>
            <li>
                <p>PENDING_DEVICE</p>
            </li>
            <li>
                <p>PROCESSING</p>
            </li>
            <li>
                <p>SCHEDULING</p>
            </li>
            <li>
                <p>PREPARING</p>
            </li>
            <li>
                <p>RUNNING</p>
            </li>
            <li>
                <p>COMPLETED</p>
            </li>
            <li>
                <p>STOPPING</p>
            </li>
         </ul>")
  status: option<executionStatus>,
  @ocaml.doc("<p>When the run was created.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The run's platform.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>ANDROID</p>
            </li>
            <li>
                <p>IOS</p>
            </li>
         </ul>")
  platform: option<devicePlatform>,
  @ocaml.doc("<p>The run's type.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>BUILTIN_FUZZ</p>
            </li>
            <li>
                <p>BUILTIN_EXPLORER</p>
                <note>
                    <p>For Android, an app explorer that traverses an Android app, interacting with it and capturing
                        screenshots at the same time.</p>
                </note>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_NODE</p>
            </li>
            <li>
                <p>APPIUM_RUBY</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY</p>
            </li>
            <li>
                <p>CALABASH</p>
            </li>
            <li>
                <p>INSTRUMENTATION</p>
            </li>
            <li>
                <p>UIAUTOMATION</p>
            </li>
            <li>
                <p>UIAUTOMATOR</p>
            </li>
            <li>
                <p>XCTEST</p>
            </li>
            <li>
                <p>XCTEST_UI</p>
            </li>
         </ul>")
  @as("type")
  type_: option<testType>,
  @ocaml.doc("<p>The run's name.</p>") name: option<name>,
  @ocaml.doc("<p>The run's ARN.</p>") arn: option<amazonResourceName>,
}
type offerings = array<offering>
@ocaml.doc("<p>The status of the offering.</p>")
type offeringStatus = {
  @ocaml.doc("<p>The date on which the offering is effective.</p>") effectiveOn: option<dateTime>,
  @ocaml.doc("<p>The number of available devices in the offering.</p>") quantity: option<integer_>,
  @ocaml.doc("<p>Represents the metadata of an offering status.</p>") offering: option<offering>,
  @ocaml.doc("<p>The type specified for the offering status.</p>") @as("type")
  type_: option<offeringTransactionType>,
}
@ocaml.doc("<p>Represents a device type that an app is tested against.</p>")
type device = {
  @ocaml.doc(
    "<p>Indicates how likely a device is available for a test run. Currently available in the <a>ListDevices</a> and GetDevice API methods.</p>"
  )
  availability: option<deviceAvailability>,
  @ocaml.doc("<p>The instances that belong to this device.</p>") instances: option<deviceInstances>,
  @ocaml.doc("<p>The name of the fleet to which this device belongs.</p>")
  fleetName: option<string_>,
  @ocaml.doc(
    "<p>The type of fleet to which this device belongs. Possible values are PRIVATE and PUBLIC.</p>"
  )
  fleetType: option<string_>,
  @ocaml.doc("<p>This flag is set to <code>true</code> if remote debugging is enabled for the
            device.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
  remoteDebugEnabled: option<boolean_>,
  @ocaml.doc("<p>Specifies whether remote access has been enabled for the specified
            device.</p>")
  remoteAccessEnabled: option<boolean_>,
  @ocaml.doc("<p>The device's radio.</p>") radio: option<string_>,
  @ocaml.doc("<p>The device's carrier.</p>") carrier: option<string_>,
  @ocaml.doc("<p>The device's image name.</p>") image: option<string_>,
  @ocaml.doc("<p>The device's total memory size, expressed in bytes.</p>") memory: option<long>,
  @ocaml.doc("<p>The device's heap size, expressed in bytes.</p>") heapSize: option<long>,
  @ocaml.doc("<p>The resolution of the device.</p>") resolution: option<resolution>,
  @ocaml.doc("<p>Information about the device's CPU.</p>") cpu: option<cpu>,
  @ocaml.doc("<p>The device's operating system type.</p>") os: option<string_>,
  @ocaml.doc("<p>The device's platform.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>ANDROID</p>
            </li>
            <li>
                <p>IOS</p>
            </li>
         </ul>")
  platform: option<devicePlatform>,
  @ocaml.doc("<p>The device's form factor.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PHONE</p>
            </li>
            <li>
                <p>TABLET</p>
            </li>
         </ul>")
  formFactor: option<deviceFormFactor>,
  @ocaml.doc("<p>The device's model ID.</p>") modelId: option<string_>,
  @ocaml.doc("<p>The device's model name.</p>") model: option<string_>,
  @ocaml.doc("<p>The device's manufacturer name.</p>") manufacturer: option<string_>,
  @ocaml.doc("<p>The device's display name.</p>") name: option<name>,
  @ocaml.doc("<p>The device's ARN.</p>") arn: option<amazonResourceName>,
}
type runs = array<run>
@ocaml.doc("<p>Represents information about the remote access session.</p>")
type remoteAccessSession = {
  @ocaml.doc("<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public
            devices, Device Farm always signs your apps again.</p>
        <p>For more information about how Device Farm re-signs your apps, see <a href=\"https://aws.amazon.com/device-farm/faq/\">Do you modify my app?</a> in the <i>AWS Device
                Farm FAQs</i>.</p>")
  skipAppResign: option<skipAppResign>,
  @ocaml.doc("<p>The interaction mode of the remote access session. Valid values are:</p>
        <ul>
            <li>
                <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and
                    rotating the screen. You cannot run XCUITest framework-based tests in this
                    mode.</p>
            </li>
            <li>
                <p>NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This
                    mode has the fastest test execution speed. You can run XCUITest framework-based tests in this
                    mode.</p>
            </li>
            <li>
                <p>VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest
                    framework-based tests and watch the screen in this mode.</p>
            </li>
         </ul>")
  interactionMode: option<interactionMode>,
  @ocaml.doc("<p>Unique device identifier for the remote device. Only returned if remote debugging
            is enabled for the remote access session.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
  deviceUdid: option<string_>,
  @ocaml.doc("<p>The endpoint for the remote access sesssion.</p>") endpoint: option<string_>,
  @ocaml.doc("<p>The number of minutes a device is used in a remote access session (including setup
            and teardown minutes).</p>")
  deviceMinutes: option<deviceMinutes>,
  @ocaml.doc("<p>The billing method of the remote access session. Possible values include <code>METERED</code> or
                <code>UNMETERED</code>. For more information about metered devices, see <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/welcome.html#welcome-terminology\">AWS Device Farm
                terminology</a>.</p>")
  billingMethod: option<billingMethod>,
  @ocaml.doc("<p>Unique identifier of your client for the remote access session. Only returned if
            remote debugging is enabled for the remote access session.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
  clientId: option<clientId>,
  @ocaml.doc("<p>IP address of the EC2 host where you need to connect to remotely debug devices.
            Only returned if remote debugging is enabled for the remote access session.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
  hostAddress: option<hostAddress>,
  @ocaml.doc("<p>The ARN for the app to be recorded in the remote access session.</p>")
  remoteRecordAppArn: option<amazonResourceName>,
  @ocaml.doc("<p>This flag is set to <code>true</code> if remote recording is enabled for the remote
            access session.</p>")
  remoteRecordEnabled: option<boolean_>,
  @ocaml.doc("<p>This flag is set to <code>true</code> if remote debugging is enabled for the remote
            access session.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
  remoteDebugEnabled: option<boolean_>,
  @ocaml.doc("<p>The ARN of the instance.</p>") instanceArn: option<amazonResourceName>,
  @ocaml.doc("<p>The device (phone or tablet) used in the remote access session.</p>")
  device: option<device>,
  @ocaml.doc("<p>The date and time the remote access session was stopped.</p>")
  stopped: option<dateTime>,
  @ocaml.doc("<p>The date and time the remote access session was started.</p>")
  started: option<dateTime>,
  @ocaml.doc("<p>A message about the remote access session.</p>") message: option<message>,
  @ocaml.doc("<p>The result of the remote access session. Can be any of the following:</p>
        <ul>
            <li>
                <p>PENDING.</p>
            </li>
            <li>
                <p>PASSED.</p>
            </li>
            <li>
                <p>WARNED.</p>
            </li>
            <li>
                <p>FAILED.</p>
            </li>
            <li>
                <p>SKIPPED.</p>
            </li>
            <li>
                <p>ERRORED.</p>
            </li>
            <li>
                <p>STOPPED.</p>
            </li>
         </ul>")
  result: option<executionResult>,
  @ocaml.doc("<p>The status of the remote access session. Can be any of the following:</p>
        <ul>
            <li>
                <p>PENDING.</p>
            </li>
            <li>
                <p>PENDING_CONCURRENCY.</p>
            </li>
            <li>
                <p>PENDING_DEVICE.</p>
            </li>
            <li>
                <p>PROCESSING.</p>
            </li>
            <li>
                <p>SCHEDULING.</p>
            </li>
            <li>
                <p>PREPARING.</p>
            </li>
            <li>
                <p>RUNNING.</p>
            </li>
            <li>
                <p>COMPLETED.</p>
            </li>
            <li>
                <p>STOPPING.</p>
            </li>
         </ul>")
  status: option<executionStatus>,
  @ocaml.doc("<p>The date and time the remote access session was created.</p>")
  created: option<dateTime>,
  @ocaml.doc("<p>The name of the remote access session.</p>") name: option<name>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the remote access session.</p>")
  arn: option<amazonResourceName>,
}
@ocaml.doc("<p>Represents a specific warning or failure.</p>")
type problem = {
  @ocaml.doc("<p>A message about the problem's result.</p>") message: option<message>,
  @ocaml.doc("<p>The problem's result.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PASSED</p>
            </li>
            <li>
                <p>WARNED</p>
            </li>
            <li>
                <p>FAILED</p>
            </li>
            <li>
                <p>SKIPPED</p>
            </li>
            <li>
                <p>ERRORED</p>
            </li>
            <li>
                <p>STOPPED</p>
            </li>
         </ul>")
  result: option<executionResult>,
  @ocaml.doc("<p>Information about the associated device.</p>") device: option<device>,
  @ocaml.doc("<p>Information about the associated test.</p>") test: option<problemDetail>,
  @ocaml.doc("<p>Information about the associated suite.</p>") suite: option<problemDetail>,
  @ocaml.doc("<p>Information about the associated job.</p>") job: option<problemDetail>,
  @ocaml.doc("<p>Information about the associated run.</p>") run: option<problemDetail>,
}
@ocaml.doc("<p>Represents the metadata of an offering transaction.</p>")
type offeringTransaction = {
  @ocaml.doc("<p>The cost of an offering transaction.</p>") cost: option<monetaryAmount>,
  @ocaml.doc("<p>The date on which an offering transaction was created.</p>")
  createdOn: option<dateTime>,
  @ocaml.doc("<p>The ID that corresponds to a device offering promotion.</p>")
  offeringPromotionId: option<offeringPromotionIdentifier>,
  @ocaml.doc("<p>The transaction ID of the offering transaction.</p>")
  transactionId: option<transactionIdentifier>,
  @ocaml.doc("<p>The status of an offering transaction.</p>")
  offeringStatus: option<offeringStatus>,
}
type offeringStatusMap = Js.Dict.t<offeringStatus>
@ocaml.doc("<p>Represents a device.</p>")
type job = {
  @ocaml.doc(
    "<p>This value is set to true if video capture is enabled. Otherwise, it is set to false.</p>"
  )
  videoCapture: option<videoCapture>,
  @ocaml.doc("<p>The endpoint for streaming device video.</p>") videoEndpoint: option<string_>,
  @ocaml.doc("<p>Represents the total (metered or unmetered) minutes used by the job.</p>")
  deviceMinutes: option<deviceMinutes>,
  @ocaml.doc("<p>The ARN of the instance.</p>") instanceArn: option<amazonResourceName>,
  @ocaml.doc("<p>The device (phone or tablet).</p>") device: option<device>,
  @ocaml.doc("<p>A message about the job's result.</p>") message: option<message>,
  @ocaml.doc("<p>The job's result counters.</p>") counters: option<counters>,
  @ocaml.doc("<p>The job's stop time.</p>") stopped: option<dateTime>,
  @ocaml.doc("<p>The job's start time.</p>") started: option<dateTime>,
  @ocaml.doc("<p>The job's result.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PASSED</p>
            </li>
            <li>
                <p>WARNED</p>
            </li>
            <li>
                <p>FAILED</p>
            </li>
            <li>
                <p>SKIPPED</p>
            </li>
            <li>
                <p>ERRORED</p>
            </li>
            <li>
                <p>STOPPED</p>
            </li>
         </ul>")
  result: option<executionResult>,
  @ocaml.doc("<p>The job's status.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PENDING_CONCURRENCY</p>
            </li>
            <li>
                <p>PENDING_DEVICE</p>
            </li>
            <li>
                <p>PROCESSING</p>
            </li>
            <li>
                <p>SCHEDULING</p>
            </li>
            <li>
                <p>PREPARING</p>
            </li>
            <li>
                <p>RUNNING</p>
            </li>
            <li>
                <p>COMPLETED</p>
            </li>
            <li>
                <p>STOPPING</p>
            </li>
         </ul>")
  status: option<executionStatus>,
  @ocaml.doc("<p>When the job was created.</p>") created: option<dateTime>,
  @ocaml.doc("<p>The job's type.</p>
        <p>Allowed values include the following:</p>
        <ul>
            <li>
                <p>BUILTIN_FUZZ</p>
            </li>
            <li>
                <p>BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with
                    it and capturing screenshots at the same time.</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_NODE</p>
            </li>
            <li>
                <p>APPIUM_RUBY</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY</p>
            </li>
            <li>
                <p>CALABASH</p>
            </li>
            <li>
                <p>INSTRUMENTATION</p>
            </li>
            <li>
                <p>UIAUTOMATION</p>
            </li>
            <li>
                <p>UIAUTOMATOR</p>
            </li>
            <li>
                <p>XCTEST</p>
            </li>
            <li>
                <p>XCTEST_UI</p>
            </li>
         </ul>")
  @as("type")
  type_: option<testType>,
  @ocaml.doc("<p>The job's name.</p>") name: option<name>,
  @ocaml.doc("<p>The job's ARN.</p>") arn: option<amazonResourceName>,
}
type devices = array<device>
@ocaml.doc("<p>Represents a device pool compatibility result.</p>")
type devicePoolCompatibilityResult = {
  @ocaml.doc("<p>Information about the compatibility.</p>")
  incompatibilityMessages: option<incompatibilityMessages>,
  @ocaml.doc("<p>Whether the result was compatible with the device pool.</p>")
  compatible: option<boolean_>,
  @ocaml.doc("<p>The device (phone or tablet) to return information about.</p>")
  device: option<device>,
}
type remoteAccessSessions = array<remoteAccessSession>
type problems = array<problem>
type offeringTransactions = array<offeringTransaction>
type jobs = array<job>
type devicePoolCompatibilityResults = array<devicePoolCompatibilityResult>
@ocaml.doc("<p>A collection of one or more problems, grouped by their result.</p>")
type uniqueProblem = {
  @ocaml.doc("<p>Information about the problems.</p>") problems: option<problems>,
  @ocaml.doc("<p>A message about the unique problems' result.</p>") message: option<message>,
}
type uniqueProblems = array<uniqueProblem>
type uniqueProblemsByExecutionResultMap = Js.Dict.t<uniqueProblems>
@ocaml.doc("<p>Welcome to the AWS Device Farm API documentation, which contains APIs for:</p>
        <ul>
            <li>
                <p>Testing on desktop browsers</p>
                <p> Device Farm makes it possible for you to test your web applications on desktop browsers using
                    Selenium. The APIs for desktop browser testing contain <code>TestGrid</code> in their names. For
                    more information, see <a href=\"https://docs.aws.amazon.com/devicefarm/latest/testgrid/\">Testing Web
                        Applications on Selenium with Device Farm</a>.</p>
            </li>
            <li>
                <p>Testing on real mobile devices</p>
                <p>Device Farm makes it possible for you to test apps on physical phones, tablets, and other
                    devices in the cloud. For more information, see the <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/\">Device Farm Developer Guide</a>.</p>
            </li>
         </ul>")
module DeleteVPCEConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
            delete.</p>")
    arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteVPCEConfigurationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteUpload = {
  type t
  @ocaml.doc("<p>Represents a request to the delete upload operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>Represents the Amazon Resource Name (ARN) of the Device Farm upload to delete.</p>"
    )
    arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteUploadCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteTestGridProject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of the project to delete, from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>"
    )
    projectArn: deviceFarmArn,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteTestGridProjectCommand"
  let make = (~projectArn, ()) => new({projectArn: projectArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRun = {
  type t
  @ocaml.doc("<p>Represents a request to the delete run operation.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the run to delete.</p>")
    arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteRunCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteRemoteAccessSession = {
  type t
  @ocaml.doc("<p>Represents the request to delete the specified remote access session.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the session for which you want to delete remote
            access.</p>")
    arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteRemoteAccessSessionCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteProject = {
  type t
  @ocaml.doc("<p>Represents a request to the delete project operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>Represents the Amazon Resource Name (ARN) of the Device Farm project to delete.</p>"
    )
    arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteProjectCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the network profile to delete.</p>") arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteNetworkProfileCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance profile you are requesting to
            delete.</p>")
    arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteInstanceProfileCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteDevicePool = {
  type t
  @ocaml.doc("<p>Represents a request to the delete device pool operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>Represents the Amazon Resource Name (ARN) of the Device Farm device pool to delete.</p>"
    )
    arn: amazonResourceName,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteDevicePoolCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module CreateTestGridUrl = {
  type t
  type request = {
    @ocaml.doc("<p>Lifetime, in seconds, of the URL.</p>")
    expiresInSeconds: testGridUrlExpiresInSecondsInput,
    @ocaml.doc("<p>ARN (from <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>) to associate
         with the short-term URL. </p>")
    projectArn: deviceFarmArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The number of seconds the URL from <a>CreateTestGridUrlResult$url</a> stays active.</p>"
    )
    expires: option<dateTime>,
    @ocaml.doc("<p>A signed URL, expiring in <a>CreateTestGridUrlRequest$expiresInSeconds</a> seconds, to be passed
         to a <code>RemoteWebDriver</code>. </p>")
    url: option<sensitiveString>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateTestGridUrlCommand"
  let make = (~expiresInSeconds, ~projectArn, ()) =>
    new({expiresInSeconds: expiresInSeconds, projectArn: projectArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVPCEConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional description that provides details about your VPC endpoint configuration.</p>"
    )
    vpceConfigurationDescription: option<vpceconfigurationDescription>,
    @ocaml.doc("<p>The DNS (domain) name used to connect to your private service in your VPC. The DNS name must not already
            be in use on the internet.</p>")
    serviceDnsName: option<serviceDnsName>,
    @ocaml.doc(
      "<p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>"
    )
    vpceServiceName: option<vpceserviceName>,
    @ocaml.doc("<p>The friendly name you give to your VPC endpoint configuration to manage your configurations more
            easily.</p>")
    vpceConfigurationName: option<vpceconfigurationName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
            update.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about your VPC endpoint configuration.</p>")
    vpceConfiguration: option<vpceconfiguration>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateVPCEConfigurationCommand"
  let make = (
    ~arn,
    ~vpceConfigurationDescription=?,
    ~serviceDnsName=?,
    ~vpceServiceName=?,
    ~vpceConfigurationName=?,
    (),
  ) =>
    new({
      vpceConfigurationDescription: vpceConfigurationDescription,
      serviceDnsName: serviceDnsName,
      vpceServiceName: vpceServiceName,
      vpceConfigurationName: vpceConfigurationName,
      arn: arn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUpload = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Set to true if the YAML file has changed and must be updated. Otherwise, set to false.</p>"
    )
    editContent: option<boolean_>,
    @ocaml.doc("<p>The upload's content type (for example, <code>application/x-yaml</code>).</p>")
    contentType: option<contentType>,
    @ocaml.doc("<p>The upload's test spec file name. The name must not contain any forward slashes (/). The test spec file
            name must end with the <code>.yaml</code> or <code>.yml</code> file extension.</p>")
    name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the uploaded test spec.</p>")
    arn: amazonResourceName,
  }
  type response = {@ocaml.doc("<p>A test spec uploaded to Device Farm.</p>") upload: option<upload>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UpdateUploadCommand"
  let make = (~arn, ~editContent=?, ~contentType=?, ~name=?, ()) =>
    new({editContent: editContent, contentType: contentType, name: name, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  @ocaml.doc("<p>Represents a request to the update project operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>The number of minutes a test run in the project executes before it times out.</p>"
    )
    defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
    @ocaml.doc("<p>A string that represents the new name of the project that you are updating.</p>")
    name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project whose name to update.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of an update project request.</p>")
  type response = {@ocaml.doc("<p>The project to update.</p>") project: option<project>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UpdateProjectCommand"
  let make = (~arn, ~defaultJobTimeoutMinutes=?, ~name=?, ()) =>
    new({defaultJobTimeoutMinutes: defaultJobTimeoutMinutes, name: name, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>")
    downlinkLossPercent: option<percentInteger>,
    @ocaml.doc("<p>Proportion of transmitted packets that fail to arrive from 0 to 100
            percent.</p>")
    uplinkLossPercent: option<percentInteger>,
    @ocaml.doc("<p>Time variation in the delay of received packets in milliseconds as an integer from
            0 to 2000.</p>")
    downlinkJitterMs: option<long>,
    @ocaml.doc("<p>Time variation in the delay of received packets in milliseconds as an integer from
            0 to 2000.</p>")
    uplinkJitterMs: option<long>,
    @ocaml.doc("<p>Delay time for all packets to destination in milliseconds as an integer from 0 to
            2000.</p>")
    downlinkDelayMs: option<long>,
    @ocaml.doc("<p>Delay time for all packets to destination in milliseconds as an integer from 0 to
            2000.</p>")
    uplinkDelayMs: option<long>,
    @ocaml.doc("<p>The data throughput rate in bits per second, as an integer from 0 to
            104857600.</p>")
    downlinkBandwidthBits: option<long>,
    @ocaml.doc("<p>The data throughput rate in bits per second, as an integer from 0 to
            104857600.</p>")
    uplinkBandwidthBits: option<long>,
    @ocaml.doc(
      "<p>The type of network profile to return information about. Valid values are listed here.</p>"
    )
    @as("type")
    type_: option<networkProfileType>,
    @ocaml.doc("<p>The description of the network profile about which you are returning
            information.</p>")
    description: option<message>,
    @ocaml.doc("<p>The name of the network profile about which you are returning
            information.</p>")
    name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project for which you want to update network
            profile settings.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>A list of the available network profiles.</p>")
    networkProfile: option<networkProfile>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateNetworkProfileCommand"
  let make = (
    ~arn,
    ~downlinkLossPercent=?,
    ~uplinkLossPercent=?,
    ~downlinkJitterMs=?,
    ~uplinkJitterMs=?,
    ~downlinkDelayMs=?,
    ~uplinkDelayMs=?,
    ~downlinkBandwidthBits=?,
    ~uplinkBandwidthBits=?,
    ~type_=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      downlinkLossPercent: downlinkLossPercent,
      uplinkLossPercent: uplinkLossPercent,
      downlinkJitterMs: downlinkJitterMs,
      uplinkJitterMs: uplinkJitterMs,
      downlinkDelayMs: downlinkDelayMs,
      uplinkDelayMs: uplinkDelayMs,
      downlinkBandwidthBits: downlinkBandwidthBits,
      uplinkBandwidthBits: uplinkBandwidthBits,
      type_: type_,
      description: description,
      name: name,
      arn: arn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The keys of the tags to be removed.</p>") @as("TagKeys") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource or resources from which to delete tags. You can associate
            tags with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
                <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
                <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
            <code>VPCE_CONFIGURATION</code>.</p>")
    @as("ResourceARN")
    resourceARN: deviceFarmArn,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceARN, ()) => new({tagKeys: tagKeys, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module InstallToRemoteAccessSession = {
  type t
  @ocaml.doc("<p>Represents the request to install an Android application (in .apk format) or an iOS
            application (in .ipa format) as part of a remote access session.</p>")
  type request = {
    @ocaml.doc("<p>The ARN of the app about which you are requesting information.</p>")
    appArn: amazonResourceName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the remote access session about which you are
            requesting information.</p>")
    remoteAccessSessionArn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the response from the server after AWS Device Farm makes a request to
            install to a remote access session.</p>")
  type response = {
    @ocaml.doc("<p>An app to upload or that has been uploaded.</p>") appUpload: option<upload>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "InstallToRemoteAccessSessionCommand"
  let make = (~appArn, ~remoteAccessSessionArn, ()) =>
    new({appArn: appArn, remoteAccessSessionArn: remoteAccessSessionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVPCEConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
            describe.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about your VPC endpoint configuration.</p>")
    vpceConfiguration: option<vpceconfiguration>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetVPCEConfigurationCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUpload = {
  type t
  @ocaml.doc("<p>Represents a request to the get upload operation.</p>")
  type request = {@ocaml.doc("<p>The upload's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get upload request.</p>")
  type response = {
    @ocaml.doc("<p>An app or a set of one or more tests to upload or that have been
            uploaded.</p>")
    upload: option<upload>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetUploadCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTestGridSession = {
  type t
  type request = {
    @ocaml.doc("<p>An ARN that uniquely identifies a <a>TestGridSession</a>.</p>")
    sessionArn: option<deviceFarmArn>,
    @ocaml.doc("<p>An ID associated with this session.</p>") sessionId: option<resourceId>,
    @ocaml.doc(
      "<p>The ARN for the project that this session belongs to. See <a>CreateTestGridProject</a> and <a>ListTestGridProjects</a>.</p>"
    )
    projectArn: option<deviceFarmArn>,
  }
  type response = {
    @ocaml.doc("<p>The <a>TestGridSession</a> that was requested.</p>")
    testGridSession: option<testGridSession>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetTestGridSessionCommand"
  let make = (~sessionArn=?, ~sessionId=?, ~projectArn=?, ()) =>
    new({sessionArn: sessionArn, sessionId: sessionId, projectArn: projectArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProject = {
  type t
  @ocaml.doc("<p>Represents a request to the get project operation.</p>")
  type request = {@ocaml.doc("<p>The project's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get project request.</p>")
  type response = {
    @ocaml.doc("<p>The project to get information about.</p>") project: option<project>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetProjectCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the network profile to return information about.</p>")
    arn: amazonResourceName,
  }
  type response = {@ocaml.doc("<p>The network profile.</p>") networkProfile: option<networkProfile>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetNetworkProfileCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVPCEConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An optional description that provides details about your VPC endpoint configuration.</p>"
    )
    vpceConfigurationDescription: option<vpceconfigurationDescription>,
    @ocaml.doc("<p>The DNS name of the service running in your VPC that you want Device Farm to
            test.</p>")
    serviceDnsName: serviceDnsName,
    @ocaml.doc(
      "<p>The name of the VPC endpoint service running in your AWS account that you want Device Farm to test.</p>"
    )
    vpceServiceName: vpceserviceName,
    @ocaml.doc("<p>The friendly name you give to your VPC endpoint configuration, to manage your
            configurations more easily.</p>")
    vpceConfigurationName: vpceconfigurationName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about your VPC endpoint configuration.</p>")
    vpceConfiguration: option<vpceconfiguration>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateVPCEConfigurationCommand"
  let make = (
    ~serviceDnsName,
    ~vpceServiceName,
    ~vpceConfigurationName,
    ~vpceConfigurationDescription=?,
    (),
  ) =>
    new({
      vpceConfigurationDescription: vpceConfigurationDescription,
      serviceDnsName: serviceDnsName,
      vpceServiceName: vpceServiceName,
      vpceConfigurationName: vpceConfigurationName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUpload = {
  type t
  @ocaml.doc("<p>Represents a request to the create upload operation.</p>")
  type request = {
    @ocaml.doc(
      "<p>The upload's content type (for example, <code>application/octet-stream</code>).</p>"
    )
    contentType: option<contentType>,
    @ocaml.doc("<p>The upload's upload type.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>ANDROID_APP</p>
            </li>
            <li>
                <p>IOS_APP</p>
            </li>
            <li>
                <p>WEB_APP</p>
            </li>
            <li>
                <p>EXTERNAL_DATA</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_NODE_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_RUBY_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
            </li>
            <li>
                <p>CALABASH_TEST_PACKAGE</p>
            </li>
            <li>
                <p>INSTRUMENTATION_TEST_PACKAGE</p>
            </li>
            <li>
                <p>UIAUTOMATION_TEST_PACKAGE</p>
            </li>
            <li>
                <p>UIAUTOMATOR_TEST_PACKAGE</p>
            </li>
            <li>
                <p>XCTEST_TEST_PACKAGE</p>
            </li>
            <li>
                <p>XCTEST_UI_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_NODE_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_RUBY_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
            </li>
            <li>
                <p>INSTRUMENTATION_TEST_SPEC</p>
            </li>
            <li>
                <p>XCTEST_UI_TEST_SPEC</p>
            </li>
         </ul>
        <p> If you call <code>CreateUpload</code> with <code>WEB_APP</code> specified, AWS
            Device Farm throws an <code>ArgumentException</code> error.</p>")
    @as("type")
    type_: uploadType,
    @ocaml.doc("<p>The upload's file name. The name should not contain any forward slashes (<code>/</code>). If you are
            uploading an iOS app, the file name must end with the <code>.ipa</code> extension. If you are uploading an
            Android app, the file name must end with the <code>.apk</code> extension. For all others, the file name must
            end with the <code>.zip</code> file extension.</p>")
    name: name,
    @ocaml.doc("<p>The ARN of the project for the upload.</p>") projectArn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a create upload request.</p>")
  type response = {@ocaml.doc("<p>The newly created upload.</p>") upload: option<upload>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateUploadCommand"
  let make = (~type_, ~name, ~projectArn, ~contentType=?, ()) =>
    new({contentType: contentType, type_: type_, name: name, projectArn: projectArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  @ocaml.doc("<p>Represents a request to the create project operation.</p>")
  type request = {
    @ocaml.doc("<p>Sets the execution timeout value (in minutes) for a project. All test runs in this project use the
            specified execution timeout value unless overridden when scheduling a run.</p>")
    defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
    @ocaml.doc("<p>The project's name.</p>") name: name,
  }
  @ocaml.doc("<p>Represents the result of a create project request.</p>")
  type response = {@ocaml.doc("<p>The newly created project.</p>") project: option<project>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateProjectCommand"
  let make = (~name, ~defaultJobTimeoutMinutes=?, ()) =>
    new({defaultJobTimeoutMinutes: defaultJobTimeoutMinutes, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkProfile = {
  type t
  type request = {
    @ocaml.doc("<p>Proportion of received packets that fail to arrive from 0 to 100 percent.</p>")
    downlinkLossPercent: option<percentInteger>,
    @ocaml.doc("<p>Proportion of transmitted packets that fail to arrive from 0 to 100
            percent.</p>")
    uplinkLossPercent: option<percentInteger>,
    @ocaml.doc("<p>Time variation in the delay of received packets in milliseconds as an integer from
            0 to 2000.</p>")
    downlinkJitterMs: option<long>,
    @ocaml.doc("<p>Time variation in the delay of received packets in milliseconds as an integer from
            0 to 2000.</p>")
    uplinkJitterMs: option<long>,
    @ocaml.doc("<p>Delay time for all packets to destination in milliseconds as an integer from 0 to
            2000.</p>")
    downlinkDelayMs: option<long>,
    @ocaml.doc("<p>Delay time for all packets to destination in milliseconds as an integer from 0 to
            2000.</p>")
    uplinkDelayMs: option<long>,
    @ocaml.doc("<p>The data throughput rate in bits per second, as an integer from 0 to
            104857600.</p>")
    downlinkBandwidthBits: option<long>,
    @ocaml.doc("<p>The data throughput rate in bits per second, as an integer from 0 to
            104857600.</p>")
    uplinkBandwidthBits: option<long>,
    @ocaml.doc("<p>The type of network profile to create. Valid values are listed here.</p>")
    @as("type")
    type_: option<networkProfileType>,
    @ocaml.doc("<p>The description of the network profile.</p>") description: option<message>,
    @ocaml.doc("<p>The name for the new network profile.</p>") name: name,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project for which you want to create a
            network profile.</p>")
    projectArn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>The network profile that is returned by the create network profile
            request.</p>")
    networkProfile: option<networkProfile>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateNetworkProfileCommand"
  let make = (
    ~name,
    ~projectArn,
    ~downlinkLossPercent=?,
    ~uplinkLossPercent=?,
    ~downlinkJitterMs=?,
    ~uplinkJitterMs=?,
    ~downlinkDelayMs=?,
    ~uplinkDelayMs=?,
    ~downlinkBandwidthBits=?,
    ~uplinkBandwidthBits=?,
    ~type_=?,
    ~description=?,
    (),
  ) =>
    new({
      downlinkLossPercent: downlinkLossPercent,
      uplinkLossPercent: uplinkLossPercent,
      downlinkJitterMs: downlinkJitterMs,
      uplinkJitterMs: uplinkJitterMs,
      downlinkDelayMs: downlinkDelayMs,
      uplinkDelayMs: uplinkDelayMs,
      downlinkBandwidthBits: downlinkBandwidthBits,
      uplinkBandwidthBits: uplinkBandwidthBits,
      type_: type_,
      description: description,
      name: name,
      projectArn: projectArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The updated choice for whether you want to reboot the device after use. The default
            value is <code>true</code>.</p>")
    rebootAfterUse: option<boolean_>,
    @ocaml.doc("<p>An array of strings that specifies the list of app packages that should not be cleaned up from the device
            after a test run is over.</p>
        <p>The list of packages is only considered if you set <code>packageCleanup</code> to
                <code>true</code>.</p>")
    excludeAppPackagesFromCleanup: option<packageIds>,
    @ocaml.doc("<p>The updated choice for whether you want to specify package cleanup. The default value
            is <code>false</code> for private devices.</p>")
    packageCleanup: option<boolean_>,
    @ocaml.doc("<p>The updated description for your instance profile.</p>")
    description: option<message>,
    @ocaml.doc("<p>The updated name for your instance profile.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance profile.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about your instance profile.</p>")
    instanceProfile: option<instanceProfile>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateInstanceProfileCommand"
  let make = (
    ~arn,
    ~rebootAfterUse=?,
    ~excludeAppPackagesFromCleanup=?,
    ~packageCleanup=?,
    ~description=?,
    ~name=?,
    (),
  ) =>
    new({
      rebootAfterUse: rebootAfterUse,
      excludeAppPackagesFromCleanup: excludeAppPackagesFromCleanup,
      packageCleanup: packageCleanup,
      description: description,
      name: name,
      arn: arn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum
            character length of 128 characters. Tag values can have a maximum length of 256 characters.</p>")
    @as("Tags")
    tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource or resources to which to add tags. You can associate tags
            with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
                <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
                <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
            <code>VPCE_CONFIGURATION</code>.</p>")
    @as("ResourceARN")
    resourceARN: deviceFarmArn,
  }
  type response = {.}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceARN, ()) => new({tags: tags, resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module ListVPCEConfigurations = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
            used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>An integer that specifies the maximum number of items you want to return in the API response.</p>"
    )
    maxResults: option<integer_>,
  }
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
            used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An array of <code>VPCEConfiguration</code> objects that contain information about your VPC endpoint
            configuration.</p>")
    vpceConfigurations: option<vpceconfigurations>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListVPCEConfigurationsCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUploads = {
  type t
  @ocaml.doc("<p>Represents a request to the list uploads operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The type of upload.</p>
        <p>Must be one of the following values:</p>
        <ul>
            <li>
                <p>ANDROID_APP</p>
            </li>
            <li>
                <p>IOS_APP</p>
            </li>
            <li>
                <p>WEB_APP</p>
            </li>
            <li>
                <p>EXTERNAL_DATA</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_NODE_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_RUBY_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY_TEST_PACKAGE</p>
            </li>
            <li>
                <p>CALABASH_TEST_PACKAGE</p>
            </li>
            <li>
                <p>INSTRUMENTATION_TEST_PACKAGE</p>
            </li>
            <li>
                <p>UIAUTOMATION_TEST_PACKAGE</p>
            </li>
            <li>
                <p>UIAUTOMATOR_TEST_PACKAGE</p>
            </li>
            <li>
                <p>XCTEST_TEST_PACKAGE</p>
            </li>
            <li>
                <p>XCTEST_UI_TEST_PACKAGE</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_PYTHON_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_NODE_TEST_SPEC</p>
            </li>
            <li>
                <p> APPIUM_RUBY_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE_TEST_SPEC</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY_TEST_SPEC</p>
            </li>
            <li>
                <p>INSTRUMENTATION_TEST_SPEC</p>
            </li>
            <li>
                <p>XCTEST_UI_TEST_SPEC</p>
            </li>
         </ul>")
    @as("type")
    type_: option<uploadType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project for which you want to list
            uploads.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list uploads request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the uploads.</p>") uploads: option<uploads>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListUploadsCommand"
  let make = (~arn, ~nextToken=?, ~type_=?, ()) =>
    new({nextToken: nextToken, type_: type_, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridSessions = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>Return only this many results at a time.</p>") maxResult: option<maxPageSize>,
    @ocaml.doc("<p>Return only sessions that ended before this time.</p>")
    endTimeBefore: option<dateTime>,
    @ocaml.doc("<p>Return only sessions that ended after this time.</p>")
    endTimeAfter: option<dateTime>,
    @ocaml.doc("<p>Return only  sessions created before this time.</p>")
    creationTimeBefore: option<dateTime>,
    @ocaml.doc("<p>Return only sessions created after this time.</p>")
    creationTimeAfter: option<dateTime>,
    @ocaml.doc("<p>Return only sessions in this state.</p>") status: option<testGridSessionStatus>,
    @ocaml.doc("<p>ARN of a <a>TestGridProject</a>.</p>") projectArn: deviceFarmArn,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The sessions that match the criteria in a <a>ListTestGridSessionsRequest</a>. </p>"
    )
    testGridSessions: option<testGridSessions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridSessionsCommand"
  let make = (
    ~projectArn,
    ~nextToken=?,
    ~maxResult=?,
    ~endTimeBefore=?,
    ~endTimeAfter=?,
    ~creationTimeBefore=?,
    ~creationTimeAfter=?,
    ~status=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResult: maxResult,
      endTimeBefore: endTimeBefore,
      endTimeAfter: endTimeAfter,
      creationTimeBefore: creationTimeBefore,
      creationTimeAfter: creationTimeAfter,
      status: status,
      projectArn: projectArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridSessionArtifacts = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to be returned by a request.</p>")
    maxResult: option<maxPageSize>,
    @ocaml.doc("<p>Limit results to a specified type of artifact.</p>") @as("type")
    type_: option<testGridSessionArtifactCategory>,
    @ocaml.doc("<p>The ARN of a <a>TestGridSession</a>. </p>") sessionArn: deviceFarmArn,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of test grid session artifacts for a <a>TestGridSession</a>.</p>")
    artifacts: option<testGridSessionArtifacts>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridSessionArtifactsCommand"
  let make = (~sessionArn, ~nextToken=?, ~maxResult=?, ~type_=?, ()) =>
    new({nextToken: nextToken, maxResult: maxResult, type_: type_, sessionArn: sessionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridSessionActions = {
  type t
  type request = {
    @ocaml.doc("<p>Pagination token.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of sessions to return per response.</p>")
    maxResult: option<maxPageSize>,
    @ocaml.doc("<p>The ARN of the session to retrieve.</p>") sessionArn: deviceFarmArn,
  }
  type response = {
    @ocaml.doc("<p>Pagination token.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The action taken by the session.</p>") actions: option<testGridSessionActions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridSessionActionsCommand"
  let make = (~sessionArn, ~nextToken=?, ~maxResult=?, ()) =>
    new({nextToken: nextToken, maxResult: maxResult, sessionArn: sessionArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource or resources for which to list tags. You can associate tags
            with the following Device Farm resources: <code>PROJECT</code>, <code>RUN</code>,
                <code>NETWORK_PROFILE</code>, <code>INSTANCE_PROFILE</code>, <code>DEVICE_INSTANCE</code>,
                <code>SESSION</code>, <code>DEVICE_POOL</code>, <code>DEVICE</code>, and
            <code>VPCE_CONFIGURATION</code>.</p>")
    @as("ResourceARN")
    resourceARN: deviceFarmArn,
  }
  type response = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is an array of key-value pairs. Tag keys can have a maximum
            character length of 128 characters. Tag values can have a maximum length of 256 characters.</p>")
    @as("Tags")
    tags: option<tagList_>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceARN, ()) => new({resourceARN: resourceARN})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSamples = {
  type t
  @ocaml.doc("<p>Represents a request to the list samples operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the job used to list samples.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list samples request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the samples.</p>") samples: option<samples>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListSamplesCommand"
  let make = (~arn, ~nextToken=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  @ocaml.doc("<p>Represents a request to the list projects operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Optional. If no Amazon Resource Name (ARN) is specified, then AWS Device Farm
            returns a list of all projects for the AWS account. You can also specify a project
            ARN.</p>")
    arn: option<amazonResourceName>,
  }
  @ocaml.doc("<p>Represents the result of a list projects request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the projects.</p>") projects: option<projects>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListProjectsCommand"
  let make = (~nextToken=?, ~arn=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferingPromotions = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
  }
  type response = {
    @ocaml.doc("<p>An identifier to be used in the next call to this operation, to return the next set
            of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the offering promotions.</p>")
    offeringPromotions: option<offeringPromotions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListOfferingPromotionsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNetworkProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The type of network profile to return information about. Valid values are listed here.</p>"
    )
    @as("type")
    type_: option<networkProfileType>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project for which you want to list network
            profiles.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A list of the available network profiles.</p>")
    networkProfiles: option<networkProfiles>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListNetworkProfilesCommand"
  let make = (~arn, ~nextToken=?, ~type_=?, ()) =>
    new({nextToken: nextToken, type_: type_, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArtifacts = {
  type t
  @ocaml.doc("<p>Represents a request to the list artifacts operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The artifacts' type.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>FILE</p>
            </li>
            <li>
                <p>LOG</p>
            </li>
            <li>
                <p>SCREENSHOT</p>
            </li>
         </ul>")
    @as("type")
    type_: artifactCategory,
    @ocaml.doc("<p>The run, job, suite, or test ARN.</p>") arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list artifacts operation.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the artifacts.</p>") artifacts: option<artifacts>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListArtifactsCommand"
  let make = (~type_, ~arn, ~nextToken=?, ()) => new({nextToken: nextToken, type_: type_, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTest = {
  type t
  @ocaml.doc("<p>Represents a request to the get test operation.</p>")
  type request = {@ocaml.doc("<p>The test's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get test request.</p>")
  type response = {@ocaml.doc("<p>A test condition that is evaluated.</p>") test: option<test>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetTestCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSuite = {
  type t
  @ocaml.doc("<p>Represents a request to the get suite operation.</p>")
  type request = {@ocaml.doc("<p>The suite's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get suite request.</p>")
  type response = {@ocaml.doc("<p>A collection of one or more tests.</p>") suite: option<suite>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetSuiteCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of an instance profile.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about an instance profile.</p>")
    instanceProfile: option<instanceProfile>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetInstanceProfileCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccountSettings = {
  type t
  type request = {.}
  @ocaml.doc("<p>Represents the account settings return values from the
                <code>GetAccountSettings</code> request.</p>")
  type response = {
    @ocaml.doc("<p>The account settings.</p>") accountSettings: option<accountSettings>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetAccountSettingsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstanceProfile = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, Device Farm reboots the instance after a test run. The default value is
                <code>true</code>.</p>")
    rebootAfterUse: option<boolean_>,
    @ocaml.doc("<p>An array of strings that specifies the list of app packages that should not be cleaned up from the device
            after a test run.</p>
        <p>The list of packages is considered only if you set <code>packageCleanup</code> to
            <code>true</code>.</p>")
    excludeAppPackagesFromCleanup: option<packageIds>,
    @ocaml.doc("<p>When set to <code>true</code>, Device Farm removes app packages after a test run. The default value is
                <code>false</code> for private devices.</p>")
    packageCleanup: option<boolean_>,
    @ocaml.doc("<p>The description of your instance profile.</p>") description: option<message>,
    @ocaml.doc("<p>The name of your instance profile.</p>") name: name,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about your instance profile.</p>")
    instanceProfile: option<instanceProfile>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateInstanceProfileCommand"
  let make = (
    ~name,
    ~rebootAfterUse=?,
    ~excludeAppPackagesFromCleanup=?,
    ~packageCleanup=?,
    ~description=?,
    (),
  ) =>
    new({
      rebootAfterUse: rebootAfterUse,
      excludeAppPackagesFromCleanup: excludeAppPackagesFromCleanup,
      packageCleanup: packageCleanup,
      description: description,
      name: name,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTestGridProject = {
  type t
  type request = {
    @ocaml.doc("<p>The VPC security groups and subnets that are attached to a project.</p>")
    vpcConfig: option<testGridVpcConfig>,
    @ocaml.doc("<p>Human-readable description for the project.</p>")
    description: option<resourceDescription>,
    @ocaml.doc("<p>Human-readable name for the project.</p>") name: option<resourceName>,
    @ocaml.doc("<p>ARN of the project to update.</p>") projectArn: deviceFarmArn,
  }
  type response = {
    @ocaml.doc("<p>The project, including updated information.</p>")
    testGridProject: option<testGridProject>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateTestGridProjectCommand"
  let make = (~projectArn, ~vpcConfig=?, ~description=?, ~name=?, ()) =>
    new({vpcConfig: vpcConfig, description: description, name: name, projectArn: projectArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDevicePool = {
  type t
  @ocaml.doc("<p>Represents a request to the update device pool operation.</p>")
  type request = {
    @ocaml.doc("<p>Sets whether the <code>maxDevices</code> parameter applies to your device pool. If you set this parameter
            to <code>true</code>, the <code>maxDevices</code> parameter does not apply, and Device Farm does not limit
            the number of devices that it adds to your device pool. In this case, Device Farm adds all available devices
            that meet the criteria specified in the <code>rules</code> parameter.</p>
        <p>If you use this parameter in your request, you cannot use the <code>maxDevices</code>
            parameter in the same request.</p>")
    clearMaxDevices: option<boolean_>,
    @ocaml.doc("<p>The number of devices that Device Farm can add to your device pool. Device Farm adds
            devices that are available and that meet the criteria that you assign for the
                <code>rules</code> parameter. Depending on how many devices meet these constraints,
            your device pool might contain fewer devices than the value for this parameter.</p>
        <p>By specifying the maximum number of devices, you can control the costs that you incur
            by running tests.</p>
        <p>If you use this parameter in your request, you cannot use the
                <code>clearMaxDevices</code> parameter in the same request.</p>")
    maxDevices: option<integer_>,
    @ocaml.doc("<p>Represents the rules to modify for the device pool. Updating rules is optional. If you update rules for
            your request, the update replaces the existing rules.</p>")
    rules: option<rules>,
    @ocaml.doc("<p>A description of the device pool to update.</p>") description: option<message>,
    @ocaml.doc("<p>A string that represents the name of the device pool to update.</p>")
    name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Device Farm device pool to update.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of an update device pool request.</p>")
  type response = {
    @ocaml.doc("<p>The device pool you just updated.</p>") devicePool: option<devicePool>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UpdateDevicePoolCommand"
  let make = (~arn, ~clearMaxDevices=?, ~maxDevices=?, ~rules=?, ~description=?, ~name=?, ()) =>
    new({
      clearMaxDevices: clearMaxDevices,
      maxDevices: maxDevices,
      rules: rules,
      description: description,
      name: name,
      arn: arn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeviceInstance = {
  type t
  type request = {
    @ocaml.doc("<p>An array of strings that you want to associate with the device instance.</p>")
    labels: option<instanceLabels>,
    @ocaml.doc("<p>The ARN of the profile that you want to associate with the device instance.</p>")
    profileArn: option<amazonResourceName>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device instance.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about your device instance.</p>")
    deviceInstance: option<deviceInstance>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateDeviceInstanceCommand"
  let make = (~arn, ~labels=?, ~profileArn=?, ()) =>
    new({labels: labels, profileArn: profileArn, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTests = {
  type t
  @ocaml.doc("<p>Represents a request to the list tests operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The test suite's Amazon Resource Name (ARN).</p>") arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list tests request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the tests.</p>") tests: option<tests>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListTestsCommand"
  let make = (~arn, ~nextToken=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSuites = {
  type t
  @ocaml.doc("<p>Represents a request to the list suites operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The job's Amazon Resource Name (ARN).</p>") arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list suites request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the suites.</p>") suites: option<suites>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListSuitesCommand"
  let make = (~arn, ~nextToken=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstanceProfiles = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
            used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>An integer that specifies the maximum number of items you want to return in the API response.</p>"
    )
    maxResults: option<integer_>,
  }
  type response = {
    @ocaml.doc("<p>An identifier that can be used in the next call to this operation to return the next
            set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An object that contains information about your instance profiles.</p>")
    instanceProfiles: option<instanceProfiles>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListInstanceProfilesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTestGridProject = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of the Selenium testing project, from either <a>CreateTestGridProject</a> or <a>ListTestGridProjects</a>.</p>"
    )
    projectArn: deviceFarmArn,
  }
  type response = {
    @ocaml.doc("<p>A <a>TestGridProject</a>.</p>") testGridProject: option<testGridProject>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetTestGridProjectCommand"
  let make = (~projectArn, ()) => new({projectArn: projectArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevicePool = {
  type t
  @ocaml.doc("<p>Represents a request to the get device pool operation.</p>")
  type request = {@ocaml.doc("<p>The device pool's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get device pool request.</p>")
  type response = {
    @ocaml.doc("<p>An object that contains information about the requested device pool.</p>")
    devicePool: option<devicePool>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetDevicePoolCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeviceInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance you're requesting information
            about.</p>")
    arn: amazonResourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that contains information about your device instance.</p>")
    deviceInstance: option<deviceInstance>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetDeviceInstanceCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTestGridProject = {
  type t
  type request = {
    @ocaml.doc("<p>The VPC security groups and subnets that are attached to a project.</p>")
    vpcConfig: option<testGridVpcConfig>,
    @ocaml.doc("<p>Human-readable description of the project.</p>")
    description: option<resourceDescription>,
    @ocaml.doc("<p>Human-readable name of the Selenium testing project.</p>") name: resourceName,
  }
  type response = {
    @ocaml.doc("<p>ARN of the Selenium testing project that was created.</p>")
    testGridProject: option<testGridProject>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateTestGridProjectCommand"
  let make = (~name, ~vpcConfig=?, ~description=?, ()) =>
    new({vpcConfig: vpcConfig, description: description, name: name})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDevicePool = {
  type t
  @ocaml.doc("<p>Represents a request to the create device pool operation.</p>")
  type request = {
    @ocaml.doc("<p>The number of devices that Device Farm can add to your device pool. Device Farm adds devices that are
            available and meet the criteria that you assign for the <code>rules</code> parameter. Depending on how many
            devices meet these constraints, your device pool might contain fewer devices than the value for this
            parameter.</p>
        <p>By specifying the maximum number of devices, you can control the costs that you incur
            by running tests.</p>")
    maxDevices: option<integer_>,
    @ocaml.doc("<p>The device pool's rules.</p>") rules: rules,
    @ocaml.doc("<p>The device pool's description.</p>") description: option<message>,
    @ocaml.doc("<p>The device pool's name.</p>") name: name,
    @ocaml.doc("<p>The ARN of the project for the device pool.</p>") projectArn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a create device pool request.</p>")
  type response = {
    @ocaml.doc("<p>The newly created device pool.</p>") devicePool: option<devicePool>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateDevicePoolCommand"
  let make = (~rules, ~name, ~projectArn, ~maxDevices=?, ~description=?, ()) =>
    new({
      maxDevices: maxDevices,
      rules: rules,
      description: description,
      name: name,
      projectArn: projectArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridProjects = {
  type t
  type request = {
    @ocaml.doc("<p>From a response, used to continue a paginated listing. </p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Return no more than this number of results.</p>") maxResult: option<maxPageSize>,
  }
  type response = {
    @ocaml.doc("<p>Used for pagination. Pass into <a>ListTestGridProjects</a> to get more results in a paginated
         request.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>The list of TestGridProjects, based on a <a>ListTestGridProjectsRequest</a>.</p>"
    )
    testGridProjects: option<testGridProjects>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridProjectsCommand"
  let make = (~nextToken=?, ~maxResult=?, ()) => new({nextToken: nextToken, maxResult: maxResult})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevicePools = {
  type t
  @ocaml.doc("<p>Represents the result of a list device pools request.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The device pools' type.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>CURATED: A device pool that is created and managed by AWS Device
                    Farm.</p>
            </li>
            <li>
                <p>PRIVATE: A device pool that is created and managed by the device pool
                    developer.</p>
            </li>
         </ul>")
    @as("type")
    type_: option<devicePoolType>,
    @ocaml.doc("<p>The project ARN.</p>") arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list device pools request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the device pools.</p>") devicePools: option<devicePools>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListDevicePoolsCommand"
  let make = (~arn, ~nextToken=?, ~type_=?, ()) =>
    new({nextToken: nextToken, type_: type_, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceInstances = {
  type t
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can be
            used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc(
      "<p>An integer that specifies the maximum number of items you want to return in the API response.</p>"
    )
    maxResults: option<integer_>,
  }
  type response = {
    @ocaml.doc("<p>An identifier that can be used in the next call to this operation to return the next
            set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>An object that contains information about your device instances.</p>")
    deviceInstances: option<deviceInstances>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListDeviceInstancesCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopRun = {
  type t
  @ocaml.doc("<p>Represents the request to stop a specific run.</p>")
  type request = {
    @ocaml.doc("<p>Represents the Amazon Resource Name (ARN) of the Device Farm run to stop.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the results of your stop run attempt.</p>")
  type response = {@ocaml.doc("<p>The run that was stopped.</p>") run: option<run>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "StopRunCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ScheduleRun = {
  type t
  @ocaml.doc("<p>Represents a request to the schedule run operation.</p>")
  type request = {
    @ocaml.doc("<p>Specifies configuration information about a test run, such as the execution timeout
            (in minutes).</p>")
    executionConfiguration: option<executionConfiguration>,
    @ocaml.doc("<p>Information about the settings for the run to be scheduled.</p>")
    configuration: option<scheduleRunConfiguration>,
    @ocaml.doc("<p>Information about the test for the run to be scheduled.</p>")
    test: scheduleRunTest,
    @ocaml.doc("<p>The name for the run to be scheduled.</p>") name: option<name>,
    @ocaml.doc("<p>The filter criteria used to dynamically select a set of devices for a test run and the maximum number of
            devices to be included in the run.</p>
        <p>Either <b>
               <code>devicePoolArn</code>
            </b> or <b>
               <code>deviceSelectionConfiguration</code>
            </b> is required in a
            request.</p>")
    deviceSelectionConfiguration: option<deviceSelectionConfiguration>,
    @ocaml.doc("<p>The ARN of the device pool for the run to be scheduled.</p>")
    devicePoolArn: option<amazonResourceName>,
    @ocaml.doc("<p>The ARN of an application package to run tests against, created with <a>CreateUpload</a>.
            See <a>ListUploads</a>.</p>")
    appArn: option<amazonResourceName>,
    @ocaml.doc("<p>The ARN of the project for the run to be scheduled.</p>")
    projectArn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a schedule run request.</p>")
  type response = {@ocaml.doc("<p>Information about the scheduled run.</p>") run: option<run>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ScheduleRunCommand"
  let make = (
    ~test,
    ~projectArn,
    ~executionConfiguration=?,
    ~configuration=?,
    ~name=?,
    ~deviceSelectionConfiguration=?,
    ~devicePoolArn=?,
    ~appArn=?,
    (),
  ) =>
    new({
      executionConfiguration: executionConfiguration,
      configuration: configuration,
      test: test,
      name: name,
      deviceSelectionConfiguration: deviceSelectionConfiguration,
      devicePoolArn: devicePoolArn,
      appArn: appArn,
      projectArn: projectArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferings = {
  type t
  @ocaml.doc("<p>Represents the request to list all offerings.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
  }
  @ocaml.doc("<p>Represents the return values of the list of offerings.</p>")
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A value that represents the list offering results.</p>")
    offerings: option<offerings>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListOfferingsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRun = {
  type t
  @ocaml.doc("<p>Represents a request to the get run operation.</p>")
  type request = {@ocaml.doc("<p>The run's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get run request.</p>")
  type response = {@ocaml.doc("<p>The run to get results from.</p>") run: option<run>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetRunCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevice = {
  type t
  @ocaml.doc("<p>Represents a request to the get device request.</p>")
  type request = {@ocaml.doc("<p>The device type's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get device request.</p>")
  type response = {
    @ocaml.doc("<p>An object that contains information about the requested device.</p>")
    device: option<device>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetDeviceCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopRemoteAccessSession = {
  type t
  @ocaml.doc("<p>Represents the request to stop the remote access session.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the remote access session to stop.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the response from the server that describes the remote access session
            when AWS Device Farm stops the session.</p>")
  type response = {
    @ocaml.doc("<p>A container that represents the metadata from the service about the remote access session you are
            stopping.</p>")
    remoteAccessSession: option<remoteAccessSession>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "StopRemoteAccessSessionCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopJob = {
  type t
  type request = {
    @ocaml.doc("<p>Represents the Amazon Resource Name (ARN) of the Device Farm job to stop.</p>")
    arn: amazonResourceName,
  }
  type response = {@ocaml.doc("<p>The job that was stopped.</p>") job: option<job>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "StopJobCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RenewOffering = {
  type t
  @ocaml.doc("<p>A request that represents an offering renewal.</p>")
  type request = {
    @ocaml.doc("<p>The quantity requested in an offering renewal.</p>") quantity: integer_,
    @ocaml.doc("<p>The ID of a request to renew an offering.</p>") offeringId: offeringIdentifier,
  }
  @ocaml.doc("<p>The result of a renewal offering.</p>")
  type response = {
    @ocaml.doc("<p>Represents the status of the offering transaction for the renewal.</p>")
    offeringTransaction: option<offeringTransaction>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "RenewOfferingCommand"
  let make = (~quantity, ~offeringId, ()) => new({quantity: quantity, offeringId: offeringId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseOffering = {
  type t
  @ocaml.doc("<p>Represents a request for a purchase offering.</p>")
  type request = {
    @ocaml.doc("<p>The ID of the offering promotion to be applied to the purchase.</p>")
    offeringPromotionId: option<offeringPromotionIdentifier>,
    @ocaml.doc("<p>The number of device slots to purchase in an offering request.</p>")
    quantity: integer_,
    @ocaml.doc("<p>The ID of the offering.</p>") offeringId: offeringIdentifier,
  }
  @ocaml.doc("<p>The result of the purchase offering (for example, success or failure).</p>")
  type response = {
    @ocaml.doc("<p>Represents the offering transaction for the purchase result.</p>")
    offeringTransaction: option<offeringTransaction>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "PurchaseOfferingCommand"
  let make = (~quantity, ~offeringId, ~offeringPromotionId=?, ()) =>
    new({offeringPromotionId: offeringPromotionId, quantity: quantity, offeringId: offeringId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRuns = {
  type t
  @ocaml.doc("<p>Represents a request to the list runs operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project for which you want to list
            runs.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list runs request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the runs.</p>") runs: option<runs>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListRunsCommand"
  let make = (~arn, ~nextToken=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevices = {
  type t
  @ocaml.doc("<p>Represents the result of a list devices request.</p>")
  type request = {
    @ocaml.doc("<p>Used to select a set of devices. A filter is made up of an attribute, an operator, and
            one or more values.</p>
        <ul>
            <li>
                <p>Attribute: The aspect of a device such as platform or model used as the
                    selection criteria in a device filter.</p>
                <p>Allowed values include:</p>
                <ul>
                  <li>
                        <p>ARN: The Amazon Resource Name (ARN) of the device (for example,
                                <code>arn:aws:devicefarm:us-west-2::device:12345Example</code>).</p>
                    </li>
                  <li>
                        <p>PLATFORM: The device platform. Valid values are ANDROID or IOS.</p>
                    </li>
                  <li>
                        <p>OS_VERSION: The operating system version (for example, 10.3.2).</p>
                    </li>
                  <li>
                        <p>MODEL: The device model (for example, iPad 5th Gen).</p>
                    </li>
                  <li>
                        <p>AVAILABILITY: The current availability of the device. Valid values are AVAILABLE,
                            HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
                    </li>
                  <li>
                        <p>FORM_FACTOR: The device form factor. Valid values are PHONE or TABLET.</p>
                    </li>
                  <li>
                        <p>MANUFACTURER: The device manufacturer (for example, Apple).</p>
                    </li>
                  <li>
                        <p>REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote access. Valid values
                            are TRUE or FALSE.</p>
                    </li>
                  <li>
                        <p>REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote debugging. Valid values
                            are TRUE or FALSE. Because remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                                longer supported</a>, this attribute is ignored.</p>
                    </li>
                  <li>
                        <p>INSTANCE_ARN: The Amazon Resource Name (ARN) of the device
                            instance.</p>
                    </li>
                  <li>
                        <p>INSTANCE_LABELS: The label of the device instance.</p>
                    </li>
                  <li>
                        <p>FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>Operator: The filter operator.</p>
                <ul>
                  <li>
                        <p>The EQUALS operator is available for every attribute except
                            INSTANCE_LABELS.</p>
                    </li>
                  <li>
                        <p>The CONTAINS operator is available for the INSTANCE_LABELS and MODEL
                            attributes.</p>
                    </li>
                  <li>
                        <p>The IN and NOT_IN operators are available for the ARN, OS_VERSION,
                            MODEL, MANUFACTURER, and INSTANCE_ARN attributes.</p>
                    </li>
                  <li>
                        <p>The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
                            GREATER_THAN_OR_EQUALS operators are also available for the OS_VERSION
                            attribute.</p>
                    </li>
               </ul>
            </li>
            <li>
                <p>Values: An array of one or more filter values.</p>
                <ul>
                  <li>
                        <p>The IN and NOT_IN operators take a values array that has one or more
                            elements.</p>
                    </li>
                  <li>
                        <p>The other operators require an array with a single element.</p>
                    </li>
                  <li>
                        <p>In a request, the AVAILABILITY attribute takes the following values: AVAILABLE,
                            HIGHLY_AVAILABLE, BUSY, or TEMPORARY_NOT_AVAILABLE.</p>
                    </li>
               </ul>
            </li>
         </ul>")
    filters: option<deviceFilters>,
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project.</p>")
    arn: option<amazonResourceName>,
  }
  @ocaml.doc("<p>Represents the result of a list devices operation.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the devices.</p>") devices: option<devices>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListDevicesCommand"
  let make = (~filters=?, ~nextToken=?, ~arn=?, ()) =>
    new({filters: filters, nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRemoteAccessSession = {
  type t
  @ocaml.doc("<p>Represents the request to get information about the specified remote access
            session.</p>")
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the remote access session about which you want to
            get session information.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the response from the server that lists detailed information about the
            remote access session.</p>")
  type response = {
    @ocaml.doc("<p>A container that lists detailed information about the remote access
            session.</p>")
    remoteAccessSession: option<remoteAccessSession>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetRemoteAccessSessionCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOfferingStatus = {
  type t
  @ocaml.doc("<p>Represents the request to retrieve the offering status for the specified customer
            or account.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
  }
  @ocaml.doc("<p>Returns the status result for a device offering.</p>")
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>When specified, gets the offering status for the next period.</p>")
    nextPeriod: option<offeringStatusMap>,
    @ocaml.doc("<p>When specified, gets the offering status for the current period.</p>")
    current: option<offeringStatusMap>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetOfferingStatusCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  @ocaml.doc("<p>Represents a request to the get job operation.</p>")
  type request = {@ocaml.doc("<p>The job's ARN.</p>") arn: amazonResourceName}
  @ocaml.doc("<p>Represents the result of a get job request.</p>")
  type response = {
    @ocaml.doc("<p>An object that contains information about the requested job.</p>")
    job: option<job>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetJobCommand"
  let make = (~arn, ()) => new({arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRemoteAccessSession = {
  type t
  @ocaml.doc("<p>Creates and submits a request to start a remote access session.</p>")
  type request = {
    @ocaml.doc("<p>When set to <code>true</code>, for private devices, Device Farm does not sign your app again. For public
            devices, Device Farm always signs your apps again.</p>
        <p>For more information on how Device Farm modifies your uploads during tests, see <a href=\"https://aws.amazon.com/device-farm/faq/\">Do you modify my app?</a>
         </p>")
    skipAppResign: option<boolean_>,
    @ocaml.doc("<p>The interaction mode of the remote access session. Valid values are:</p>
        <ul>
            <li>
                <p>INTERACTIVE: You can interact with the iOS device by viewing, touching, and
                    rotating the screen. You cannot run XCUITest framework-based tests in this
                    mode.</p>
            </li>
            <li>
                <p>NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This
                    mode has the fastest test execution speed. You can run XCUITest framework-based tests in this
                    mode.</p>
            </li>
            <li>
                <p>VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest
                    framework-based tests and watch the screen in this mode.</p>
            </li>
         </ul>")
    interactionMode: option<interactionMode>,
    @ocaml.doc("<p>The configuration information for the remote access session request.</p>")
    configuration: option<createRemoteAccessSessionConfiguration>,
    @ocaml.doc("<p>Unique identifier for the client. If you want access to multiple devices on the same client, you should
            pass the same <code>clientId</code> value in each call to <code>CreateRemoteAccessSession</code>. This
            identifier is required only if <code>remoteDebugEnabled</code> is set to <code>true</code>.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
    clientId: option<clientId>,
    @ocaml.doc("<p>The name of the remote access session to create.</p>") name: option<name>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) for the app to be recorded in the remote access
            session.</p>")
    remoteRecordAppArn: option<amazonResourceName>,
    @ocaml.doc("<p>Set to <code>true</code> to enable remote recording for the remote access
            session.</p>")
    remoteRecordEnabled: option<boolean_>,
    @ocaml.doc("<p>Set to <code>true</code> if you want to access devices remotely for debugging in
            your remote access session.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
    remoteDebugEnabled: option<boolean_>,
    @ocaml.doc("<p>Ignored. The public key of the <code>ssh</code> key pair you want to use for connecting to remote
            devices in your remote debugging session. This key is required only if <code>remoteDebugEnabled</code> is
            set to <code>true</code>.</p>
        <p>Remote debugging is <a href=\"https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html\">no
                longer supported</a>.</p>")
    sshPublicKey: option<sshPublicKey>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device instance for which you want to create a
            remote access session.</p>")
    instanceArn: option<amazonResourceName>,
    @ocaml.doc("<p>The ARN of the device for which you want to create a remote access session.</p>")
    deviceArn: amazonResourceName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project for which you want to create a remote
            access session.</p>")
    projectArn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the server response from a request to create a remote access
            session.</p>")
  type response = {
    @ocaml.doc("<p>A container that describes the remote access session when the request to create a
            remote access session is sent.</p>")
    remoteAccessSession: option<remoteAccessSession>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateRemoteAccessSessionCommand"
  let make = (
    ~deviceArn,
    ~projectArn,
    ~skipAppResign=?,
    ~interactionMode=?,
    ~configuration=?,
    ~clientId=?,
    ~name=?,
    ~remoteRecordAppArn=?,
    ~remoteRecordEnabled=?,
    ~remoteDebugEnabled=?,
    ~sshPublicKey=?,
    ~instanceArn=?,
    (),
  ) =>
    new({
      skipAppResign: skipAppResign,
      interactionMode: interactionMode,
      configuration: configuration,
      clientId: clientId,
      name: name,
      remoteRecordAppArn: remoteRecordAppArn,
      remoteRecordEnabled: remoteRecordEnabled,
      remoteDebugEnabled: remoteDebugEnabled,
      sshPublicKey: sshPublicKey,
      instanceArn: instanceArn,
      deviceArn: deviceArn,
      projectArn: projectArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRemoteAccessSessions = {
  type t
  @ocaml.doc("<p>Represents the request to return information about the remote access
            session.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the project about which you are requesting
            information.</p>")
    arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the response from the server after AWS Device Farm makes a request to
            return information about the remote access session.</p>")
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>A container that represents the metadata from the service about each remote access session you are
            requesting.</p>")
    remoteAccessSessions: option<remoteAccessSessions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListRemoteAccessSessionsCommand"
  let make = (~arn, ~nextToken=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferingTransactions = {
  type t
  @ocaml.doc("<p>Represents the request to list the offering transaction history.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
  }
  @ocaml.doc("<p>Returns the transaction log of the specified offerings.</p>")
  type response = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The audit log of subscriptions you have purchased and modified through AWS Device
            Farm.</p>")
    offeringTransactions: option<offeringTransactions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListOfferingTransactionsCommand"
  let make = (~nextToken=?, ()) => new({nextToken: nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  @ocaml.doc("<p>Represents a request to the list jobs operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The run's Amazon Resource Name (ARN).</p>") arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list jobs request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the jobs.</p>") jobs: option<jobs>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListJobsCommand"
  let make = (~arn, ~nextToken=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevicePoolCompatibility = {
  type t
  @ocaml.doc("<p>Represents a request to the get device pool compatibility operation.</p>")
  type request = {
    @ocaml.doc("<p>An object that contains information about the settings for a run.</p>")
    configuration: option<scheduleRunConfiguration>,
    @ocaml.doc("<p>Information about the uploaded test to be run against the device pool.</p>")
    test: option<scheduleRunTest>,
    @ocaml.doc("<p>The test type for the specified device pool.</p>
        <p>Allowed values include the following:</p>
        <ul>
            <li>
                <p>BUILTIN_FUZZ.</p>
            </li>
            <li>
                <p>BUILTIN_EXPLORER. For Android, an app explorer that traverses an Android app, interacting with
                    it and capturing screenshots at the same time.</p>
            </li>
            <li>
                <p>APPIUM_JAVA_JUNIT.</p>
            </li>
            <li>
                <p>APPIUM_JAVA_TESTNG.</p>
            </li>
            <li>
                <p>APPIUM_PYTHON.</p>
            </li>
            <li>
                <p>APPIUM_NODE.</p>
            </li>
            <li>
                <p>APPIUM_RUBY.</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_JUNIT.</p>
            </li>
            <li>
                <p>APPIUM_WEB_JAVA_TESTNG.</p>
            </li>
            <li>
                <p>APPIUM_WEB_PYTHON.</p>
            </li>
            <li>
                <p>APPIUM_WEB_NODE.</p>
            </li>
            <li>
                <p>APPIUM_WEB_RUBY.</p>
            </li>
            <li>
                <p>CALABASH.</p>
            </li>
            <li>
                <p>INSTRUMENTATION.</p>
            </li>
            <li>
                <p>UIAUTOMATION.</p>
            </li>
            <li>
                <p>UIAUTOMATOR.</p>
            </li>
            <li>
                <p>XCTEST.</p>
            </li>
            <li>
                <p>XCTEST_UI.</p>
            </li>
         </ul>")
    testType: option<testType>,
    @ocaml.doc("<p>The ARN of the app that is associated with the specified device pool.</p>")
    appArn: option<amazonResourceName>,
    @ocaml.doc("<p>The device pool's ARN.</p>") devicePoolArn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of describe device pool compatibility request.</p>")
  type response = {
    @ocaml.doc("<p>Information about incompatible devices.</p>")
    incompatibleDevices: option<devicePoolCompatibilityResults>,
    @ocaml.doc("<p>Information about compatible devices.</p>")
    compatibleDevices: option<devicePoolCompatibilityResults>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetDevicePoolCompatibilityCommand"
  let make = (~devicePoolArn, ~configuration=?, ~test=?, ~testType=?, ~appArn=?, ()) =>
    new({
      configuration: configuration,
      test: test,
      testType: testType,
      appArn: appArn,
      devicePoolArn: devicePoolArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUniqueProblems = {
  type t
  @ocaml.doc("<p>Represents a request to the list unique problems operation.</p>")
  type request = {
    @ocaml.doc("<p>An identifier that was returned from the previous call to this operation, which can
            be used to return the next set of items in the list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The unique problems' ARNs.</p>") arn: amazonResourceName,
  }
  @ocaml.doc("<p>Represents the result of a list unique problems request.</p>")
  type response = {
    @ocaml.doc("<p>If the number of items that are returned is significantly large, this is an identifier that is also
            returned. It can be used in a subsequent call to this operation to return the next set of items in the
            list.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the unique problems.</p>
        <p>Allowed values include:</p>
        <ul>
            <li>
                <p>PENDING</p>
            </li>
            <li>
                <p>PASSED</p>
            </li>
            <li>
                <p>WARNED</p>
            </li>
            <li>
                <p>FAILED</p>
            </li>
            <li>
                <p>SKIPPED</p>
            </li>
            <li>
                <p>ERRORED</p>
            </li>
            <li>
                <p>STOPPED</p>
            </li>
         </ul>")
    uniqueProblems: option<uniqueProblemsByExecutionResultMap>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListUniqueProblemsCommand"
  let make = (~arn, ~nextToken=?, ()) => new({nextToken: nextToken, arn: arn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
