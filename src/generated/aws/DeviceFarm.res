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
type vpceconfiguration = {
  vpceConfigurationDescription: option<vpceconfigurationDescription>,
  serviceDnsName: option<serviceDnsName>,
  vpceServiceName: option<vpceserviceName>,
  vpceConfigurationName: option<vpceconfigurationName>,
  arn: option<amazonResourceName>,
}
type upload = {
  category: option<uploadCategory>,
  message: option<message>,
  contentType: option<contentType>,
  metadata: option<metadata>,
  url: option<sensitiveURL>,
  status: option<uploadStatus>,
  @as("type") type_: option<uploadType>,
  created: option<dateTime>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type trialMinutes = {
  remaining: option<double>,
  total: option<double>,
}
type testParameters = Js.Dict.t<string_>
type testGridSessionArtifact = {
  url: option<sensitiveString>,
  @as("type") type_: option<testGridSessionArtifactType>,
  filename: option<string_>,
}
type testGridSessionAction = {
  requestMethod: option<string_>,
  statusCode: option<string_>,
  duration: option<long>,
  started: option<dateTime>,
  action: option<string_>,
}
type testGridSession = {
  seleniumProperties: option<string_>,
  billingMinutes: option<double>,
  ended: option<dateTime>,
  created: option<dateTime>,
  status: option<testGridSessionStatus>,
  arn: option<deviceFarmArn>,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: tagValue,
  @as("Key") key: tagKey,
}
type subnetIds = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
type sample = {
  url: option<url>,
  @as("type") type_: option<sampleType>,
  arn: option<amazonResourceName>,
}
type rule = {
  value: option<string_>,
  operator: option<ruleOperator>,
  attribute: option<deviceAttribute>,
}
type resolution = {
  height: option<integer_>,
  width: option<integer_>,
}
type radios = {
  gps: option<boolean_>,
  nfc: option<boolean_>,
  bluetooth: option<boolean_>,
  wifi: option<boolean_>,
}
type purchasedDevicesMap = Js.Dict.t<integer_>
type project = {
  created: option<dateTime>,
  defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type problemDetail = {
  name: option<name>,
  arn: option<amazonResourceName>,
}
type packageIds = array<string_>
type offeringPromotion = {
  description: option<message>,
  id: option<offeringPromotionIdentifier>,
}
type networkProfile = {
  downlinkLossPercent: option<percentInteger>,
  uplinkLossPercent: option<percentInteger>,
  downlinkJitterMs: option<long>,
  uplinkJitterMs: option<long>,
  downlinkDelayMs: option<long>,
  uplinkDelayMs: option<long>,
  downlinkBandwidthBits: option<long>,
  uplinkBandwidthBits: option<long>,
  @as("type") type_: option<networkProfileType>,
  description: option<message>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type monetaryAmount = {
  currencyCode: option<currencyCode>,
  amount: option<double>,
}
type maxSlotMap = Js.Dict.t<integer_>
type location = {
  longitude: double,
  latitude: double,
}
type iosPaths = array<string_>
type instanceLabels = array<string_>
type incompatibilityMessage = {
  @as("type") type_: option<deviceAttribute>,
  message: option<message>,
}
type executionConfiguration = {
  skipAppResign: option<skipAppResign>,
  videoCapture: option<videoCapture>,
  appPackagesCleanup: option<appPackagesCleanup>,
  accountsCleanup: option<accountsCleanup>,
  jobTimeoutMinutes: option<jobTimeoutMinutes>,
}
type deviceMinutes = {
  unmetered: option<double>,
  metered: option<double>,
  total: option<double>,
}
type deviceHostPaths = array<string_>
type deviceFilterValues = array<string_>
type counters = {
  skipped: option<integer_>,
  stopped: option<integer_>,
  errored: option<integer_>,
  warned: option<integer_>,
  failed: option<integer_>,
  passed: option<integer_>,
  total: option<integer_>,
}
type cpu = {
  clock: option<double>,
  architecture: option<string_>,
  frequency: option<string_>,
}
type artifact = {
  url: option<url>,
  extension: option<string_>,
  @as("type") type_: option<artifactType>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type androidPaths = array<string_>
type amazonResourceNames = array<amazonResourceName>
type vpceconfigurations = array<vpceconfiguration>
type uploads = array<upload>
type testGridVpcConfig = {
  vpcId: nonEmptyString,
  subnetIds: subnetIds,
  securityGroupIds: securityGroupIds,
}
type testGridSessions = array<testGridSession>
type testGridSessionArtifacts = array<testGridSessionArtifact>
type testGridSessionActions = array<testGridSessionAction>
type test = {
  deviceMinutes: option<deviceMinutes>,
  message: option<message>,
  counters: option<counters>,
  stopped: option<dateTime>,
  started: option<dateTime>,
  result: option<executionResult>,
  status: option<executionStatus>,
  created: option<dateTime>,
  @as("type") type_: option<testType>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type tagList_ = array<tag>
type suite = {
  deviceMinutes: option<deviceMinutes>,
  message: option<message>,
  counters: option<counters>,
  stopped: option<dateTime>,
  started: option<dateTime>,
  result: option<executionResult>,
  status: option<executionStatus>,
  created: option<dateTime>,
  @as("type") type_: option<testType>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type scheduleRunTest = {
  parameters: option<testParameters>,
  filter: option<filter>,
  testSpecArn: option<amazonResourceName>,
  testPackageArn: option<amazonResourceName>,
  @as("type") type_: testType,
}
type samples = array<sample>
type rules = array<rule>
type recurringCharge = {
  frequency: option<recurringChargeFrequency>,
  cost: option<monetaryAmount>,
}
type projects = array<project>
type offeringPromotions = array<offeringPromotion>
type networkProfiles = array<networkProfile>
type instanceProfile = {
  description: option<message>,
  name: option<name>,
  rebootAfterUse: option<boolean_>,
  excludeAppPackagesFromCleanup: option<packageIds>,
  packageCleanup: option<boolean_>,
  arn: option<amazonResourceName>,
}
type incompatibilityMessages = array<incompatibilityMessage>
type deviceFilter = {
  values: deviceFilterValues,
  operator: ruleOperator,
  attribute: deviceFilterAttribute,
}
type customerArtifactPaths = {
  deviceHostPaths: option<deviceHostPaths>,
  androidPaths: option<androidPaths>,
  iosPaths: option<iosPaths>,
}
type createRemoteAccessSessionConfiguration = {
  vpceConfigurationArns: option<amazonResourceNames>,
  billingMethod: option<billingMethod>,
}
type artifacts = array<artifact>
type accountSettings = {
  skipAppResign: option<skipAppResign>,
  defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
  maxSlots: option<maxSlotMap>,
  trialMinutes: option<trialMinutes>,
  maxJobTimeoutMinutes: option<jobTimeoutMinutes>,
  unmeteredRemoteAccessDevices: option<purchasedDevicesMap>,
  unmeteredDevices: option<purchasedDevicesMap>,
  awsAccountNumber: option<awsaccountNumber>,
}
type tests = array<test>
type testGridProject = {
  created: option<dateTime>,
  vpcConfig: option<testGridVpcConfig>,
  description: option<string_>,
  name: option<string_>,
  arn: option<deviceFarmArn>,
}
type suites = array<suite>
type scheduleRunConfiguration = {
  billingMethod: option<billingMethod>,
  auxiliaryApps: option<amazonResourceNames>,
  radios: option<radios>,
  customerArtifactPaths: option<customerArtifactPaths>,
  vpceConfigurationArns: option<amazonResourceNames>,
  location: option<location>,
  locale: option<string_>,
  networkProfileArn: option<amazonResourceName>,
  extraDataPackageArn: option<amazonResourceName>,
}
type recurringCharges = array<recurringCharge>
type instanceProfiles = array<instanceProfile>
type devicePool = {
  maxDevices: option<integer_>,
  rules: option<rules>,
  @as("type") type_: option<devicePoolType>,
  description: option<message>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type deviceInstance = {
  instanceProfile: option<instanceProfile>,
  udid: option<string_>,
  status: option<instanceStatus>,
  labels: option<instanceLabels>,
  deviceArn: option<amazonResourceName>,
  arn: option<amazonResourceName>,
}
type deviceFilters = array<deviceFilter>
type testGridProjects = array<testGridProject>
type offering = {
  recurringCharges: option<recurringCharges>,
  platform: option<devicePlatform>,
  @as("type") type_: option<offeringType>,
  description: option<message>,
  id: option<offeringIdentifier>,
}
type deviceSelectionResult = {
  maxDevices: option<integer_>,
  matchedDevicesCount: option<integer_>,
  filters: option<deviceFilters>,
}
type deviceSelectionConfiguration = {
  maxDevices: integer_,
  filters: deviceFilters,
}
type devicePools = array<devicePool>
type deviceInstances = array<deviceInstance>
type run = {
  deviceSelectionResult: option<deviceSelectionResult>,
  testSpecArn: option<amazonResourceName>,
  skipAppResign: option<skipAppResign>,
  webUrl: option<string_>,
  customerArtifactPaths: option<customerArtifactPaths>,
  location: option<location>,
  radios: option<radios>,
  locale: option<string_>,
  devicePoolArn: option<amazonResourceName>,
  jobTimeoutMinutes: option<jobTimeoutMinutes>,
  eventCount: option<integer_>,
  appUpload: option<amazonResourceName>,
  seed: option<integer_>,
  resultCode: option<executionResultCode>,
  parsingResultUrl: option<string_>,
  networkProfile: option<networkProfile>,
  deviceMinutes: option<deviceMinutes>,
  billingMethod: option<billingMethod>,
  completedJobs: option<integer_>,
  totalJobs: option<integer_>,
  message: option<message>,
  counters: option<counters>,
  stopped: option<dateTime>,
  started: option<dateTime>,
  result: option<executionResult>,
  status: option<executionStatus>,
  created: option<dateTime>,
  platform: option<devicePlatform>,
  @as("type") type_: option<testType>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type offerings = array<offering>
type offeringStatus = {
  effectiveOn: option<dateTime>,
  quantity: option<integer_>,
  offering: option<offering>,
  @as("type") type_: option<offeringTransactionType>,
}
type device = {
  availability: option<deviceAvailability>,
  instances: option<deviceInstances>,
  fleetName: option<string_>,
  fleetType: option<string_>,
  remoteDebugEnabled: option<boolean_>,
  remoteAccessEnabled: option<boolean_>,
  radio: option<string_>,
  carrier: option<string_>,
  image: option<string_>,
  memory: option<long>,
  heapSize: option<long>,
  resolution: option<resolution>,
  cpu: option<cpu>,
  os: option<string_>,
  platform: option<devicePlatform>,
  formFactor: option<deviceFormFactor>,
  modelId: option<string_>,
  model: option<string_>,
  manufacturer: option<string_>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type runs = array<run>
type remoteAccessSession = {
  skipAppResign: option<skipAppResign>,
  interactionMode: option<interactionMode>,
  deviceUdid: option<string_>,
  endpoint: option<string_>,
  deviceMinutes: option<deviceMinutes>,
  billingMethod: option<billingMethod>,
  clientId: option<clientId>,
  hostAddress: option<hostAddress>,
  remoteRecordAppArn: option<amazonResourceName>,
  remoteRecordEnabled: option<boolean_>,
  remoteDebugEnabled: option<boolean_>,
  instanceArn: option<amazonResourceName>,
  device: option<device>,
  stopped: option<dateTime>,
  started: option<dateTime>,
  message: option<message>,
  result: option<executionResult>,
  status: option<executionStatus>,
  created: option<dateTime>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type problem = {
  message: option<message>,
  result: option<executionResult>,
  device: option<device>,
  test: option<problemDetail>,
  suite: option<problemDetail>,
  job: option<problemDetail>,
  run: option<problemDetail>,
}
type offeringTransaction = {
  cost: option<monetaryAmount>,
  createdOn: option<dateTime>,
  offeringPromotionId: option<offeringPromotionIdentifier>,
  transactionId: option<transactionIdentifier>,
  offeringStatus: option<offeringStatus>,
}
type offeringStatusMap = Js.Dict.t<offeringStatus>
type job = {
  videoCapture: option<videoCapture>,
  videoEndpoint: option<string_>,
  deviceMinutes: option<deviceMinutes>,
  instanceArn: option<amazonResourceName>,
  device: option<device>,
  message: option<message>,
  counters: option<counters>,
  stopped: option<dateTime>,
  started: option<dateTime>,
  result: option<executionResult>,
  status: option<executionStatus>,
  created: option<dateTime>,
  @as("type") type_: option<testType>,
  name: option<name>,
  arn: option<amazonResourceName>,
}
type devices = array<device>
type devicePoolCompatibilityResult = {
  incompatibilityMessages: option<incompatibilityMessages>,
  compatible: option<boolean_>,
  device: option<device>,
}
type remoteAccessSessions = array<remoteAccessSession>
type problems = array<problem>
type offeringTransactions = array<offeringTransaction>
type jobs = array<job>
type devicePoolCompatibilityResults = array<devicePoolCompatibilityResult>
type uniqueProblem = {
  problems: option<problems>,
  message: option<message>,
}
type uniqueProblems = array<uniqueProblem>
type uniqueProblemsByExecutionResultMap = Js.Dict.t<uniqueProblems>

module DeleteVPCEConfiguration = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteVPCEConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteUpload = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteTestGridProject = {
  type t
  type request = {projectArn: deviceFarmArn}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteTestGridProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRun = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRemoteAccessSession = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteRemoteAccessSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteProject = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteNetworkProfile = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInstanceProfile = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "DeleteInstanceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDevicePool = {
  type t
  type request = {arn: amazonResourceName}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "DeleteDevicePoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTestGridUrl = {
  type t
  type request = {
    expiresInSeconds: testGridUrlExpiresInSecondsInput,
    projectArn: deviceFarmArn,
  }
  type response = {
    expires: option<dateTime>,
    url: option<sensitiveString>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateTestGridUrlCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateVPCEConfiguration = {
  type t
  type request = {
    vpceConfigurationDescription: option<vpceconfigurationDescription>,
    serviceDnsName: option<serviceDnsName>,
    vpceServiceName: option<vpceserviceName>,
    vpceConfigurationName: option<vpceconfigurationName>,
    arn: amazonResourceName,
  }
  type response = {vpceConfiguration: option<vpceconfiguration>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateVPCEConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateUpload = {
  type t
  type request = {
    editContent: option<boolean_>,
    contentType: option<contentType>,
    name: option<name>,
    arn: amazonResourceName,
  }
  type response = {upload: option<upload>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UpdateUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateProject = {
  type t
  type request = {
    defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
    name: option<name>,
    arn: amazonResourceName,
  }
  type response = {project: option<project>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UpdateProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateNetworkProfile = {
  type t
  type request = {
    downlinkLossPercent: option<percentInteger>,
    uplinkLossPercent: option<percentInteger>,
    downlinkJitterMs: option<long>,
    uplinkJitterMs: option<long>,
    downlinkDelayMs: option<long>,
    uplinkDelayMs: option<long>,
    downlinkBandwidthBits: option<long>,
    uplinkBandwidthBits: option<long>,
    @as("type") type_: option<networkProfileType>,
    description: option<message>,
    name: option<name>,
    arn: amazonResourceName,
  }
  type response = {networkProfile: option<networkProfile>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceARN") resourceARN: deviceFarmArn,
  }
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InstallToRemoteAccessSession = {
  type t
  type request = {
    appArn: amazonResourceName,
    remoteAccessSessionArn: amazonResourceName,
  }
  type response = {appUpload: option<upload>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "InstallToRemoteAccessSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetVPCEConfiguration = {
  type t
  type request = {arn: amazonResourceName}
  type response = {vpceConfiguration: option<vpceconfiguration>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetVPCEConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUpload = {
  type t
  type request = {arn: amazonResourceName}
  type response = {upload: option<upload>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTestGridSession = {
  type t
  type request = {
    sessionArn: option<deviceFarmArn>,
    sessionId: option<resourceId>,
    projectArn: option<deviceFarmArn>,
  }
  type response = {testGridSession: option<testGridSession>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetTestGridSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetProject = {
  type t
  type request = {arn: amazonResourceName}
  type response = {project: option<project>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetNetworkProfile = {
  type t
  type request = {arn: amazonResourceName}
  type response = {networkProfile: option<networkProfile>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateVPCEConfiguration = {
  type t
  type request = {
    vpceConfigurationDescription: option<vpceconfigurationDescription>,
    serviceDnsName: serviceDnsName,
    vpceServiceName: vpceserviceName,
    vpceConfigurationName: vpceconfigurationName,
  }
  type response = {vpceConfiguration: option<vpceconfiguration>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateVPCEConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateUpload = {
  type t
  type request = {
    contentType: option<contentType>,
    @as("type") type_: uploadType,
    name: name,
    projectArn: amazonResourceName,
  }
  type response = {upload: option<upload>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateUploadCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateProject = {
  type t
  type request = {
    defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
    name: name,
  }
  type response = {project: option<project>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateNetworkProfile = {
  type t
  type request = {
    downlinkLossPercent: option<percentInteger>,
    uplinkLossPercent: option<percentInteger>,
    downlinkJitterMs: option<long>,
    uplinkJitterMs: option<long>,
    downlinkDelayMs: option<long>,
    uplinkDelayMs: option<long>,
    downlinkBandwidthBits: option<long>,
    uplinkBandwidthBits: option<long>,
    @as("type") type_: option<networkProfileType>,
    description: option<message>,
    name: name,
    projectArn: amazonResourceName,
  }
  type response = {networkProfile: option<networkProfile>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateNetworkProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateInstanceProfile = {
  type t
  type request = {
    rebootAfterUse: option<boolean_>,
    excludeAppPackagesFromCleanup: option<packageIds>,
    packageCleanup: option<boolean_>,
    description: option<message>,
    name: option<name>,
    arn: amazonResourceName,
  }
  type response = {instanceProfile: option<instanceProfile>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateInstanceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceARN") resourceARN: deviceFarmArn,
  }
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListVPCEConfigurations = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<integer_>,
  }
  type response = {
    nextToken: option<paginationToken>,
    vpceConfigurations: option<vpceconfigurations>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListVPCEConfigurationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUploads = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    @as("type") type_: option<uploadType>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    uploads: option<uploads>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListUploadsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridSessions = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResult: option<maxPageSize>,
    endTimeBefore: option<dateTime>,
    endTimeAfter: option<dateTime>,
    creationTimeBefore: option<dateTime>,
    creationTimeAfter: option<dateTime>,
    status: option<testGridSessionStatus>,
    projectArn: deviceFarmArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    testGridSessions: option<testGridSessions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridSessionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridSessionArtifacts = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResult: option<maxPageSize>,
    @as("type") type_: option<testGridSessionArtifactCategory>,
    sessionArn: deviceFarmArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    artifacts: option<testGridSessionArtifacts>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridSessionArtifactsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridSessionActions = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResult: option<maxPageSize>,
    sessionArn: deviceFarmArn,
  }
  type response = {
    nextToken: option<paginationToken>,
    actions: option<testGridSessionActions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridSessionActionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceARN") resourceARN: deviceFarmArn}
  type response = {@as("Tags") tags: option<tagList_>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSamples = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    samples: option<samples>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListSamplesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListProjects = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: option<amazonResourceName>,
  }
  type response = {
    nextToken: option<paginationToken>,
    projects: option<projects>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListProjectsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferingPromotions = {
  type t
  type request = {nextToken: option<paginationToken>}
  type response = {
    nextToken: option<paginationToken>,
    offeringPromotions: option<offeringPromotions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListOfferingPromotionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListNetworkProfiles = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    @as("type") type_: option<networkProfileType>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    networkProfiles: option<networkProfiles>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListNetworkProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListArtifacts = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    @as("type") type_: artifactCategory,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    artifacts: option<artifacts>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListArtifactsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTest = {
  type t
  type request = {arn: amazonResourceName}
  type response = {test: option<test>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetTestCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSuite = {
  type t
  type request = {arn: amazonResourceName}
  type response = {suite: option<suite>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetSuiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceProfile = {
  type t
  type request = {arn: amazonResourceName}
  type response = {instanceProfile: option<instanceProfile>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetInstanceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAccountSettings = {
  type t
  type request = unit
  type response = {accountSettings: option<accountSettings>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetAccountSettingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstanceProfile = {
  type t
  type request = {
    rebootAfterUse: option<boolean_>,
    excludeAppPackagesFromCleanup: option<packageIds>,
    packageCleanup: option<boolean_>,
    description: option<message>,
    name: name,
  }
  type response = {instanceProfile: option<instanceProfile>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateInstanceProfileCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateTestGridProject = {
  type t
  type request = {
    vpcConfig: option<testGridVpcConfig>,
    description: option<resourceDescription>,
    name: option<resourceName>,
    projectArn: deviceFarmArn,
  }
  type response = {testGridProject: option<testGridProject>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateTestGridProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDevicePool = {
  type t
  type request = {
    clearMaxDevices: option<boolean_>,
    maxDevices: option<integer_>,
    rules: option<rules>,
    description: option<message>,
    name: option<name>,
    arn: amazonResourceName,
  }
  type response = {devicePool: option<devicePool>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "UpdateDevicePoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDeviceInstance = {
  type t
  type request = {
    labels: option<instanceLabels>,
    profileArn: option<amazonResourceName>,
    arn: amazonResourceName,
  }
  type response = {deviceInstance: option<deviceInstance>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "UpdateDeviceInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTests = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    tests: option<tests>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListTestsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListSuites = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    suites: option<suites>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListSuitesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInstanceProfiles = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<integer_>,
  }
  type response = {
    nextToken: option<paginationToken>,
    instanceProfiles: option<instanceProfiles>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListInstanceProfilesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTestGridProject = {
  type t
  type request = {projectArn: deviceFarmArn}
  type response = {testGridProject: option<testGridProject>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetTestGridProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevicePool = {
  type t
  type request = {arn: amazonResourceName}
  type response = {devicePool: option<devicePool>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetDevicePoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDeviceInstance = {
  type t
  type request = {arn: amazonResourceName}
  type response = {deviceInstance: option<deviceInstance>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetDeviceInstanceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateTestGridProject = {
  type t
  type request = {
    vpcConfig: option<testGridVpcConfig>,
    description: option<resourceDescription>,
    name: resourceName,
  }
  type response = {testGridProject: option<testGridProject>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateTestGridProjectCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDevicePool = {
  type t
  type request = {
    maxDevices: option<integer_>,
    rules: rules,
    description: option<message>,
    name: name,
    projectArn: amazonResourceName,
  }
  type response = {devicePool: option<devicePool>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "CreateDevicePoolCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTestGridProjects = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResult: option<maxPageSize>,
  }
  type response = {
    nextToken: option<paginationToken>,
    testGridProjects: option<testGridProjects>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListTestGridProjectsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevicePools = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    @as("type") type_: option<devicePoolType>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    devicePools: option<devicePools>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListDevicePoolsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDeviceInstances = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    maxResults: option<integer_>,
  }
  type response = {
    nextToken: option<paginationToken>,
    deviceInstances: option<deviceInstances>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListDeviceInstancesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopRun = {
  type t
  type request = {arn: amazonResourceName}
  type response = {run: option<run>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "StopRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ScheduleRun = {
  type t
  type request = {
    executionConfiguration: option<executionConfiguration>,
    configuration: option<scheduleRunConfiguration>,
    test: scheduleRunTest,
    name: option<name>,
    deviceSelectionConfiguration: option<deviceSelectionConfiguration>,
    devicePoolArn: option<amazonResourceName>,
    appArn: option<amazonResourceName>,
    projectArn: amazonResourceName,
  }
  type response = {run: option<run>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ScheduleRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferings = {
  type t
  type request = {nextToken: option<paginationToken>}
  type response = {
    nextToken: option<paginationToken>,
    offerings: option<offerings>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListOfferingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRun = {
  type t
  type request = {arn: amazonResourceName}
  type response = {run: option<run>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetRunCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevice = {
  type t
  type request = {arn: amazonResourceName}
  type response = {device: option<device>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopRemoteAccessSession = {
  type t
  type request = {arn: amazonResourceName}
  type response = {remoteAccessSession: option<remoteAccessSession>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "StopRemoteAccessSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopJob = {
  type t
  type request = {arn: amazonResourceName}
  type response = {job: option<job>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "StopJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RenewOffering = {
  type t
  type request = {
    quantity: integer_,
    offeringId: offeringIdentifier,
  }
  type response = {offeringTransaction: option<offeringTransaction>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "RenewOfferingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PurchaseOffering = {
  type t
  type request = {
    offeringPromotionId: option<offeringPromotionIdentifier>,
    quantity: integer_,
    offeringId: offeringIdentifier,
  }
  type response = {offeringTransaction: option<offeringTransaction>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "PurchaseOfferingCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRuns = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    runs: option<runs>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListRunsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDevices = {
  type t
  type request = {
    filters: option<deviceFilters>,
    nextToken: option<paginationToken>,
    arn: option<amazonResourceName>,
  }
  type response = {
    nextToken: option<paginationToken>,
    devices: option<devices>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRemoteAccessSession = {
  type t
  type request = {arn: amazonResourceName}
  type response = {remoteAccessSession: option<remoteAccessSession>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetRemoteAccessSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOfferingStatus = {
  type t
  type request = {nextToken: option<paginationToken>}
  type response = {
    nextToken: option<paginationToken>,
    nextPeriod: option<offeringStatusMap>,
    current: option<offeringStatusMap>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetOfferingStatusCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetJob = {
  type t
  type request = {arn: amazonResourceName}
  type response = {job: option<job>}
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "GetJobCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRemoteAccessSession = {
  type t
  type request = {
    skipAppResign: option<boolean_>,
    interactionMode: option<interactionMode>,
    configuration: option<createRemoteAccessSessionConfiguration>,
    clientId: option<clientId>,
    name: option<name>,
    remoteRecordAppArn: option<amazonResourceName>,
    remoteRecordEnabled: option<boolean_>,
    remoteDebugEnabled: option<boolean_>,
    sshPublicKey: option<sshPublicKey>,
    instanceArn: option<amazonResourceName>,
    deviceArn: amazonResourceName,
    projectArn: amazonResourceName,
  }
  type response = {remoteAccessSession: option<remoteAccessSession>}
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "CreateRemoteAccessSessionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListRemoteAccessSessions = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    remoteAccessSessions: option<remoteAccessSessions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListRemoteAccessSessionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOfferingTransactions = {
  type t
  type request = {nextToken: option<paginationToken>}
  type response = {
    nextToken: option<paginationToken>,
    offeringTransactions: option<offeringTransactions>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListOfferingTransactionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListJobs = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    jobs: option<jobs>,
  }
  @module("@aws-sdk/client-devicefarm") @new external new: request => t = "ListJobsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevicePoolCompatibility = {
  type t
  type request = {
    configuration: option<scheduleRunConfiguration>,
    test: option<scheduleRunTest>,
    testType: option<testType>,
    appArn: option<amazonResourceName>,
    devicePoolArn: amazonResourceName,
  }
  type response = {
    incompatibleDevices: option<devicePoolCompatibilityResults>,
    compatibleDevices: option<devicePoolCompatibilityResults>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "GetDevicePoolCompatibilityCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListUniqueProblems = {
  type t
  type request = {
    nextToken: option<paginationToken>,
    arn: amazonResourceName,
  }
  type response = {
    nextToken: option<paginationToken>,
    uniqueProblems: option<uniqueProblemsByExecutionResultMap>,
  }
  @module("@aws-sdk/client-devicefarm") @new
  external new: request => t = "ListUniqueProblemsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
