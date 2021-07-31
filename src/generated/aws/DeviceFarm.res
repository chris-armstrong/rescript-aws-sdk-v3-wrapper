type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type timestamp_ = Js.Date.t;
type videoCapture = bool
type vpceserviceName = string
type vpceconfigurationName = string
type vpceconfigurationDescription = string
type uploadType = [@as("XCTEST_UI_TEST_SPEC") #XCTESTUITESTSPEC | @as("INSTRUMENTATION_TEST_SPEC") #INSTRUMENTATIONTESTSPEC | @as("APPIUM_WEB_RUBY_TEST_SPEC") #APPIUMWEBRUBYTESTSPEC | @as("APPIUM_WEB_NODE_TEST_SPEC") #APPIUMWEBNODETESTSPEC | @as("APPIUM_WEB_PYTHON_TEST_SPEC") #APPIUMWEBPYTHONTESTSPEC | @as("APPIUM_WEB_JAVA_TESTNG_TEST_SPEC") #APPIUMWEBJAVATESTNGTESTSPEC | @as("APPIUM_WEB_JAVA_JUNIT_TEST_SPEC") #APPIUMWEBJAVAJUNITTESTSPEC | @as("APPIUM_RUBY_TEST_SPEC") #APPIUMRUBYTESTSPEC | @as("APPIUM_NODE_TEST_SPEC") #APPIUMNODETESTSPEC | @as("APPIUM_PYTHON_TEST_SPEC") #APPIUMPYTHONTESTSPEC | @as("APPIUM_JAVA_TESTNG_TEST_SPEC") #APPIUMJAVATESTNGTESTSPEC | @as("APPIUM_JAVA_JUNIT_TEST_SPEC") #APPIUMJAVAJUNITTESTSPEC | @as("XCTEST_UI_TEST_PACKAGE") #XCTESTUITESTPACKAGE | @as("XCTEST_TEST_PACKAGE") #XCTESTTESTPACKAGE | @as("UIAUTOMATOR_TEST_PACKAGE") #UIAUTOMATORTESTPACKAGE | @as("UIAUTOMATION_TEST_PACKAGE") #UIAUTOMATIONTESTPACKAGE | @as("INSTRUMENTATION_TEST_PACKAGE") #INSTRUMENTATIONTESTPACKAGE | @as("CALABASH_TEST_PACKAGE") #CALABASHTESTPACKAGE | @as("APPIUM_WEB_RUBY_TEST_PACKAGE") #APPIUMWEBRUBYTESTPACKAGE | @as("APPIUM_WEB_NODE_TEST_PACKAGE") #APPIUMWEBNODETESTPACKAGE | @as("APPIUM_WEB_PYTHON_TEST_PACKAGE") #APPIUMWEBPYTHONTESTPACKAGE | @as("APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE") #APPIUMWEBJAVATESTNGTESTPACKAGE | @as("APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE") #APPIUMWEBJAVAJUNITTESTPACKAGE | @as("APPIUM_RUBY_TEST_PACKAGE") #APPIUMRUBYTESTPACKAGE | @as("APPIUM_NODE_TEST_PACKAGE") #APPIUMNODETESTPACKAGE | @as("APPIUM_PYTHON_TEST_PACKAGE") #APPIUMPYTHONTESTPACKAGE | @as("APPIUM_JAVA_TESTNG_TEST_PACKAGE") #APPIUMJAVATESTNGTESTPACKAGE | @as("APPIUM_JAVA_JUNIT_TEST_PACKAGE") #APPIUMJAVAJUNITTESTPACKAGE | @as("EXTERNAL_DATA") #EXTERNALDATA | @as("WEB_APP") #WEBAPP | @as("IOS_APP") #IOSAPP | @as("ANDROID_APP") #ANDROIDAPP]
type uploadStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("PROCESSING") #PROCESSING | @as("INITIALIZED") #INITIALIZED]
type uploadCategory = [@as("PRIVATE") #PRIVATE | @as("CURATED") #CURATED]
type url = string
type transactionIdentifier = string
type testType = [@as("REMOTE_ACCESS_REPLAY") #REMOTEACCESSREPLAY | @as("REMOTE_ACCESS_RECORD") #REMOTEACCESSRECORD | @as("XCTEST_UI") #XCTESTUI | @as("XCTEST") #XCTEST | @as("UIAUTOMATOR") #UIAUTOMATOR | @as("UIAUTOMATION") #UIAUTOMATION | @as("INSTRUMENTATION") #INSTRUMENTATION | @as("CALABASH") #CALABASH | @as("APPIUM_WEB_RUBY") #APPIUMWEBRUBY | @as("APPIUM_WEB_NODE") #APPIUMWEBNODE | @as("APPIUM_WEB_PYTHON") #APPIUMWEBPYTHON | @as("APPIUM_WEB_JAVA_TESTNG") #APPIUMWEBJAVATESTNG | @as("APPIUM_WEB_JAVA_JUNIT") #APPIUMWEBJAVAJUNIT | @as("APPIUM_RUBY") #APPIUMRUBY | @as("APPIUM_NODE") #APPIUMNODE | @as("APPIUM_PYTHON") #APPIUMPYTHON | @as("APPIUM_JAVA_TESTNG") #APPIUMJAVATESTNG | @as("APPIUM_JAVA_JUNIT") #APPIUMJAVAJUNIT | @as("WEB_PERFORMANCE_PROFILE") #WEBPERFORMANCEPROFILE | @as("BUILTIN_EXPLORER") #BUILTINEXPLORER | @as("BUILTIN_FUZZ") #BUILTINFUZZ]
type testGridUrlExpiresInSecondsInput = int
type testGridSessionStatus = [@as("ERRORED") #ERRORED | @as("CLOSED") #CLOSED | @as("ACTIVE") #ACTIVE]
type testGridSessionArtifactType = [@as("SELENIUM_LOG") #SELENIUMLOG | @as("VIDEO") #VIDEO | @as("UNKNOWN") #UNKNOWN]
type testGridSessionArtifactCategory = [@as("LOG") #LOG | @as("VIDEO") #VIDEO]
type tagValue = string
type tagKey = string
type string_ = string
type sshPublicKey = string
type skipAppResign = bool
type serviceDnsName = string
type sensitiveURL = string
type sensitiveString = string
type sampleType = [@as("OPENGL_MAX_DRAWTIME") #OPENGLMAXDRAWTIME | @as("OPENGL_AVG_DRAWTIME") #OPENGLAVGDRAWTIME | @as("OPENGL_MIN_DRAWTIME") #OPENGLMINDRAWTIME | @as("OPENGL_FPS") #OPENGLFPS | @as("OPENGL_FRAMES") #OPENGLFRAMES | @as("NATIVE_MAX_DRAWTIME") #NATIVEMAXDRAWTIME | @as("NATIVE_AVG_DRAWTIME") #NATIVEAVGDRAWTIME | @as("NATIVE_MIN_DRAWTIME") #NATIVEMINDRAWTIME | @as("NATIVE_FPS") #NATIVEFPS | @as("NATIVE_FRAMES") #NATIVEFRAMES | @as("TX") #TX | @as("RX") #RX | @as("TX_RATE") #TXRATE | @as("RX_RATE") #RXRATE | @as("THREADS") #THREADS | @as("MEMORY") #MEMORY | @as("CPU") #CPU]
type ruleOperator = [@as("CONTAINS") #CONTAINS | @as("NOT_IN") #NOTIN | @as("IN") #IN | @as("GREATER_THAN_OR_EQUALS") #GREATERTHANOREQUALS | @as("GREATER_THAN") #GREATERTHAN | @as("LESS_THAN_OR_EQUALS") #LESSTHANOREQUALS | @as("LESS_THAN") #LESSTHAN | @as("EQUALS") #EQUALS]
type resourceName = string
type resourceId = string
type resourceDescription = string
type recurringChargeFrequency = [@as("MONTHLY") #MONTHLY]
type percentInteger = int
type paginationToken = string
type offeringType = [@as("RECURRING") #RECURRING]
type offeringTransactionType = [@as("SYSTEM") #SYSTEM | @as("RENEW") #RENEW | @as("PURCHASE") #PURCHASE]
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
type interactionMode = [@as("VIDEO_ONLY") #VIDEOONLY | @as("NO_VIDEO") #NOVIDEO | @as("INTERACTIVE") #INTERACTIVE]
type integer_ = int
type instanceStatus = [@as("NOT_AVAILABLE") #NOTAVAILABLE | @as("AVAILABLE") #AVAILABLE | @as("PREPARING") #PREPARING | @as("IN_USE") #INUSE]
type hostAddress = string
type filter = string
type executionStatus = [@as("STOPPING") #STOPPING | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING | @as("PREPARING") #PREPARING | @as("SCHEDULING") #SCHEDULING | @as("PROCESSING") #PROCESSING | @as("PENDING_DEVICE") #PENDINGDEVICE | @as("PENDING_CONCURRENCY") #PENDINGCONCURRENCY | @as("PENDING") #PENDING]
type executionResultCode = [@as("VPC_ENDPOINT_SETUP_FAILED") #VPCENDPOINTSETUPFAILED | @as("PARSING_FAILED") #PARSINGFAILED]
type executionResult = [@as("STOPPED") #STOPPED | @as("ERRORED") #ERRORED | @as("SKIPPED") #SKIPPED | @as("FAILED") #FAILED | @as("WARNED") #WARNED | @as("PASSED") #PASSED | @as("PENDING") #PENDING]
type exceptionMessage = string
type double = float
type devicePoolType = [@as("PRIVATE") #PRIVATE | @as("CURATED") #CURATED]
type devicePlatform = [@as("IOS") #IOS | @as("ANDROID") #ANDROID]
type deviceFormFactor = [@as("TABLET") #TABLET | @as("PHONE") #PHONE]
type deviceFilterAttribute = [@as("FLEET_TYPE") #FLEETTYPE | @as("INSTANCE_LABELS") #INSTANCELABELS | @as("INSTANCE_ARN") #INSTANCEARN | @as("REMOTE_DEBUG_ENABLED") #REMOTEDEBUGENABLED | @as("REMOTE_ACCESS_ENABLED") #REMOTEACCESSENABLED | @as("MANUFACTURER") #MANUFACTURER | @as("FORM_FACTOR") #FORMFACTOR | @as("AVAILABILITY") #AVAILABILITY | @as("MODEL") #MODEL | @as("OS_VERSION") #OSVERSION | @as("PLATFORM") #PLATFORM | @as("ARN") #ARN]
type deviceFarmArn = string
type deviceAvailability = [@as("HIGHLY_AVAILABLE") #HIGHLYAVAILABLE | @as("AVAILABLE") #AVAILABLE | @as("BUSY") #BUSY | @as("TEMPORARY_NOT_AVAILABLE") #TEMPORARYNOTAVAILABLE]
type deviceAttribute = [@as("AVAILABILITY") #AVAILABILITY | @as("MODEL") #MODEL | @as("OS_VERSION") #OSVERSION | @as("FLEET_TYPE") #FLEETTYPE | @as("INSTANCE_LABELS") #INSTANCELABELS | @as("INSTANCE_ARN") #INSTANCEARN | @as("APPIUM_VERSION") #APPIUMVERSION | @as("REMOTE_DEBUG_ENABLED") #REMOTEDEBUGENABLED | @as("REMOTE_ACCESS_ENABLED") #REMOTEACCESSENABLED | @as("MANUFACTURER") #MANUFACTURER | @as("FORM_FACTOR") #FORMFACTOR | @as("PLATFORM") #PLATFORM | @as("ARN") #ARN]
type dateTime = Js.Date.t;
type currencyCode = [@as("USD") #USD]
type contentType = string
type clientId = string
type boolean_ = bool
type billingMethod = [@as("UNMETERED") #UNMETERED | @as("METERED") #METERED]
type artifactType = [@as("TESTSPEC_OUTPUT") #TESTSPECOUTPUT | @as("CUSTOMER_ARTIFACT_LOG") #CUSTOMERARTIFACTLOG | @as("CUSTOMER_ARTIFACT") #CUSTOMERARTIFACT | @as("VIDEO") #VIDEO | @as("XCTEST_LOG") #XCTESTLOG | @as("APPLICATION_CRASH_REPORT") #APPLICATIONCRASHREPORT | @as("EXPLORER_SUMMARY_LOG") #EXPLORERSUMMARYLOG | @as("EXPLORER_EVENT_LOG") #EXPLOREREVENTLOG | @as("APPIUM_PYTHON_XML_OUTPUT") #APPIUMPYTHONXMLOUTPUT | @as("APPIUM_PYTHON_OUTPUT") #APPIUMPYTHONOUTPUT | @as("APPIUM_JAVA_XML_OUTPUT") #APPIUMJAVAXMLOUTPUT | @as("APPIUM_JAVA_OUTPUT") #APPIUMJAVAOUTPUT | @as("APPIUM_SERVER_OUTPUT") #APPIUMSERVEROUTPUT | @as("AUTOMATION_OUTPUT") #AUTOMATIONOUTPUT | @as("CALABASH_JAVA_XML_OUTPUT") #CALABASHJAVAXMLOUTPUT | @as("CALABASH_STANDARD_OUTPUT") #CALABASHSTANDARDOUTPUT | @as("CALABASH_PRETTY_OUTPUT") #CALABASHPRETTYOUTPUT | @as("CALABASH_JSON_OUTPUT") #CALABASHJSONOUTPUT | @as("EXERCISER_MONKEY_OUTPUT") #EXERCISERMONKEYOUTPUT | @as("INSTRUMENTATION_OUTPUT") #INSTRUMENTATIONOUTPUT | @as("WEBKIT_LOG") #WEBKITLOG | @as("SERVICE_LOG") #SERVICELOG | @as("RESULT_LOG") #RESULTLOG | @as("VIDEO_LOG") #VIDEOLOG | @as("MESSAGE_LOG") #MESSAGELOG | @as("DEVICE_LOG") #DEVICELOG | @as("SCREENSHOT") #SCREENSHOT | @as("UNKNOWN") #UNKNOWN]
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
arn: option<amazonResourceName>
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
arn: option<amazonResourceName>
}
type trialMinutes = {
remaining: option<double>,
total: option<double>
}
type testParameters = Js.Dict.t< string_>
type testGridSessionArtifact = {
url: option<sensitiveString>,
@as("type") type_: option<testGridSessionArtifactType>,
filename: option<string_>
}
type testGridSessionAction = {
requestMethod: option<string_>,
statusCode: option<string_>,
duration: option<long>,
started: option<dateTime>,
action: option<string_>
}
type testGridSession = {
seleniumProperties: option<string_>,
billingMinutes: option<double>,
ended: option<dateTime>,
created: option<dateTime>,
status: option<testGridSessionStatus>,
arn: option<deviceFarmArn>
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type subnetIds = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
type sample = {
url: option<url>,
@as("type") type_: option<sampleType>,
arn: option<amazonResourceName>
}
type rule = {
value: option<string_>,
operator: option<ruleOperator>,
attribute: option<deviceAttribute>
}
type resolution = {
height: option<integer_>,
width: option<integer_>
}
type radios = {
gps: option<boolean_>,
nfc: option<boolean_>,
bluetooth: option<boolean_>,
wifi: option<boolean_>
}
type purchasedDevicesMap = Js.Dict.t< integer_>
type project = {
created: option<dateTime>,
defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
name: option<name>,
arn: option<amazonResourceName>
}
type problemDetail = {
name: option<name>,
arn: option<amazonResourceName>
}
type packageIds = array<string_>
type offeringPromotion = {
description: option<message>,
id: option<offeringPromotionIdentifier>
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
arn: option<amazonResourceName>
}
type monetaryAmount = {
currencyCode: option<currencyCode>,
amount: option<double>
}
type maxSlotMap = Js.Dict.t< integer_>
type location = {
longitude: double,
latitude: double
}
type iosPaths = array<string_>
type instanceLabels = array<string_>
type incompatibilityMessage = {
@as("type") type_: option<deviceAttribute>,
message: option<message>
}
type executionConfiguration = {
skipAppResign: option<skipAppResign>,
videoCapture: option<videoCapture>,
appPackagesCleanup: option<appPackagesCleanup>,
accountsCleanup: option<accountsCleanup>,
jobTimeoutMinutes: option<jobTimeoutMinutes>
}
type deviceMinutes = {
unmetered: option<double>,
metered: option<double>,
total: option<double>
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
total: option<integer_>
}
type cpu = {
clock: option<double>,
architecture: option<string_>,
frequency: option<string_>
}
type artifact = {
url: option<url>,
extension: option<string_>,
@as("type") type_: option<artifactType>,
name: option<name>,
arn: option<amazonResourceName>
}
type androidPaths = array<string_>
type amazonResourceNames = array<amazonResourceName>
type vpceconfigurations = array<vpceconfiguration>
type uploads = array<upload>
type testGridVpcConfig = {
vpcId: nonEmptyString,
subnetIds: subnetIds,
securityGroupIds: securityGroupIds
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
arn: option<amazonResourceName>
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
arn: option<amazonResourceName>
}
type scheduleRunTest = {
parameters: option<testParameters>,
filter: option<filter>,
testSpecArn: option<amazonResourceName>,
testPackageArn: option<amazonResourceName>,
@as("type") type_: testType
}
type samples = array<sample>
type rules = array<rule>
type recurringCharge = {
frequency: option<recurringChargeFrequency>,
cost: option<monetaryAmount>
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
arn: option<amazonResourceName>
}
type incompatibilityMessages = array<incompatibilityMessage>
type deviceFilter = {
values: deviceFilterValues,
operator: ruleOperator,
attribute: deviceFilterAttribute
}
type customerArtifactPaths = {
deviceHostPaths: option<deviceHostPaths>,
androidPaths: option<androidPaths>,
iosPaths: option<iosPaths>
}
type createRemoteAccessSessionConfiguration = {
vpceConfigurationArns: option<amazonResourceNames>,
billingMethod: option<billingMethod>
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
awsAccountNumber: option<awsaccountNumber>
}
type tests = array<test>
type testGridProject = {
created: option<dateTime>,
vpcConfig: option<testGridVpcConfig>,
description: option<string_>,
name: option<string_>,
arn: option<deviceFarmArn>
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
extraDataPackageArn: option<amazonResourceName>
}
type recurringCharges = array<recurringCharge>
type instanceProfiles = array<instanceProfile>
type devicePool = {
maxDevices: option<integer_>,
rules: option<rules>,
@as("type") type_: option<devicePoolType>,
description: option<message>,
name: option<name>,
arn: option<amazonResourceName>
}
type deviceInstance = {
instanceProfile: option<instanceProfile>,
udid: option<string_>,
status: option<instanceStatus>,
labels: option<instanceLabels>,
deviceArn: option<amazonResourceName>,
arn: option<amazonResourceName>
}
type deviceFilters = array<deviceFilter>
type testGridProjects = array<testGridProject>
type offering = {
recurringCharges: option<recurringCharges>,
platform: option<devicePlatform>,
@as("type") type_: option<offeringType>,
description: option<message>,
id: option<offeringIdentifier>
}
type deviceSelectionResult = {
maxDevices: option<integer_>,
matchedDevicesCount: option<integer_>,
filters: option<deviceFilters>
}
type deviceSelectionConfiguration = {
maxDevices: integer_,
filters: deviceFilters
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
arn: option<amazonResourceName>
}
type offerings = array<offering>
type offeringStatus = {
effectiveOn: option<dateTime>,
quantity: option<integer_>,
offering: option<offering>,
@as("type") type_: option<offeringTransactionType>
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
arn: option<amazonResourceName>
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
arn: option<amazonResourceName>
}
type problem = {
message: option<message>,
result: option<executionResult>,
device: option<device>,
test: option<problemDetail>,
suite: option<problemDetail>,
job: option<problemDetail>,
run: option<problemDetail>
}
type offeringTransaction = {
cost: option<monetaryAmount>,
createdOn: option<dateTime>,
offeringPromotionId: option<offeringPromotionIdentifier>,
transactionId: option<transactionIdentifier>,
offeringStatus: option<offeringStatus>
}
type offeringStatusMap = Js.Dict.t< offeringStatus>
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
arn: option<amazonResourceName>
}
type devices = array<device>
type devicePoolCompatibilityResult = {
incompatibilityMessages: option<incompatibilityMessages>,
compatible: option<boolean_>,
device: option<device>
}
type remoteAccessSessions = array<remoteAccessSession>
type problems = array<problem>
type offeringTransactions = array<offeringTransaction>
type jobs = array<job>
type devicePoolCompatibilityResults = array<devicePoolCompatibilityResult>
type uniqueProblem = {
problems: option<problems>,
message: option<message>
}
type uniqueProblems = array<uniqueProblem>
type uniqueProblemsByExecutionResultMap = Js.Dict.t< uniqueProblems>
type awsServiceClient;
@module("@aws-sdk/client-devicefarm") @new external createClient: unit => awsServiceClient = "DeviceFarmClient";
module DeleteVPCEConfiguration = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteVPCEConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteUpload = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteTestGridProject = {
  type t;
  type request = {
projectArn: deviceFarmArn
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteTestGridProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRun = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRemoteAccessSession = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteRemoteAccessSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteNetworkProfile = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteNetworkProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInstanceProfile = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDevicePool = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteDevicePoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTestGridUrl = {
  type t;
  type request = {
expiresInSeconds: testGridUrlExpiresInSecondsInput,
projectArn: deviceFarmArn
}
  type response = {
expires: option<dateTime>,
url: option<sensitiveString>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateTestGridUrlCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateVPCEConfiguration = {
  type t;
  type request = {
vpceConfigurationDescription: option<vpceconfigurationDescription>,
serviceDnsName: option<serviceDnsName>,
vpceServiceName: option<vpceserviceName>,
vpceConfigurationName: option<vpceconfigurationName>,
arn: amazonResourceName
}
  type response = {
vpceConfiguration: option<vpceconfiguration>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateVPCEConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateUpload = {
  type t;
  type request = {
editContent: option<boolean_>,
contentType: option<contentType>,
name: option<name>,
arn: amazonResourceName
}
  type response = {
upload: option<upload>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
name: option<name>,
arn: amazonResourceName
}
  type response = {
project: option<project>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateNetworkProfile = {
  type t;
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
arn: amazonResourceName
}
  type response = {
networkProfile: option<networkProfile>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateNetworkProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
@as("ResourceARN") resourceARN: deviceFarmArn
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module InstallToRemoteAccessSession = {
  type t;
  type request = {
appArn: amazonResourceName,
remoteAccessSessionArn: amazonResourceName
}
  type response = {
appUpload: option<upload>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "InstallToRemoteAccessSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetVPCEConfiguration = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
vpceConfiguration: option<vpceconfiguration>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetVPCEConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetUpload = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
upload: option<upload>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTestGridSession = {
  type t;
  type request = {
sessionArn: option<deviceFarmArn>,
sessionId: option<resourceId>,
projectArn: option<deviceFarmArn>
}
  type response = {
testGridSession: option<testGridSession>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetTestGridSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetProject = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
project: option<project>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetNetworkProfile = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
networkProfile: option<networkProfile>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetNetworkProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateVPCEConfiguration = {
  type t;
  type request = {
vpceConfigurationDescription: option<vpceconfigurationDescription>,
serviceDnsName: serviceDnsName,
vpceServiceName: vpceserviceName,
vpceConfigurationName: vpceconfigurationName
}
  type response = {
vpceConfiguration: option<vpceconfiguration>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateVPCEConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateUpload = {
  type t;
  type request = {
contentType: option<contentType>,
@as("type") type_: uploadType,
name: name,
projectArn: amazonResourceName
}
  type response = {
upload: option<upload>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateUploadCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
defaultJobTimeoutMinutes: option<jobTimeoutMinutes>,
name: name
}
  type response = {
project: option<project>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkProfile = {
  type t;
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
projectArn: amazonResourceName
}
  type response = {
networkProfile: option<networkProfile>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateNetworkProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateInstanceProfile = {
  type t;
  type request = {
rebootAfterUse: option<boolean_>,
excludeAppPackagesFromCleanup: option<packageIds>,
packageCleanup: option<boolean_>,
description: option<message>,
name: option<name>,
arn: amazonResourceName
}
  type response = {
instanceProfile: option<instanceProfile>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagList_,
@as("ResourceARN") resourceARN: deviceFarmArn
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVPCEConfigurations = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<integer_>
}
  type response = {
nextToken: option<paginationToken>,
vpceConfigurations: option<vpceconfigurations>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListVPCEConfigurationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUploads = {
  type t;
  type request = {
nextToken: option<paginationToken>,
@as("type") type_: option<uploadType>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
uploads: option<uploads>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListUploadsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTestGridSessions = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResult: option<maxPageSize>,
endTimeBefore: option<dateTime>,
endTimeAfter: option<dateTime>,
creationTimeBefore: option<dateTime>,
creationTimeAfter: option<dateTime>,
status: option<testGridSessionStatus>,
projectArn: deviceFarmArn
}
  type response = {
nextToken: option<paginationToken>,
testGridSessions: option<testGridSessions>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridSessionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTestGridSessionArtifacts = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResult: option<maxPageSize>,
@as("type") type_: option<testGridSessionArtifactCategory>,
sessionArn: deviceFarmArn
}
  type response = {
nextToken: option<paginationToken>,
artifacts: option<testGridSessionArtifacts>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridSessionArtifactsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTestGridSessionActions = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResult: option<maxPageSize>,
sessionArn: deviceFarmArn
}
  type response = {
nextToken: option<paginationToken>,
actions: option<testGridSessionActions>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridSessionActionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: deviceFarmArn
}
  type response = {
@as("Tags") tags: option<tagList_>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSamples = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
samples: option<samples>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListSamplesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: option<amazonResourceName>
}
  type response = {
nextToken: option<paginationToken>,
projects: option<projects>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOfferingPromotions = {
  type t;
  type request = {
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
offeringPromotions: option<offeringPromotions>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListOfferingPromotionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListNetworkProfiles = {
  type t;
  type request = {
nextToken: option<paginationToken>,
@as("type") type_: option<networkProfileType>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
networkProfiles: option<networkProfiles>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListNetworkProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListArtifacts = {
  type t;
  type request = {
nextToken: option<paginationToken>,
@as("type") type_: artifactCategory,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
artifacts: option<artifacts>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListArtifactsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTest = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
test: option<test>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetTestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetSuite = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
suite: option<suite>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetSuiteCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstanceProfile = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
instanceProfile: option<instanceProfile>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAccountSettings = {
  type t;
  type request = unit
  type response = {
accountSettings: option<accountSettings>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetAccountSettingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceProfile = {
  type t;
  type request = {
rebootAfterUse: option<boolean_>,
excludeAppPackagesFromCleanup: option<packageIds>,
packageCleanup: option<boolean_>,
description: option<message>,
name: name
}
  type response = {
instanceProfile: option<instanceProfile>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateInstanceProfileCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateTestGridProject = {
  type t;
  type request = {
vpcConfig: option<testGridVpcConfig>,
description: option<resourceDescription>,
name: option<resourceName>,
projectArn: deviceFarmArn
}
  type response = {
testGridProject: option<testGridProject>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateTestGridProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDevicePool = {
  type t;
  type request = {
clearMaxDevices: option<boolean_>,
maxDevices: option<integer_>,
rules: option<rules>,
description: option<message>,
name: option<name>,
arn: amazonResourceName
}
  type response = {
devicePool: option<devicePool>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateDevicePoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDeviceInstance = {
  type t;
  type request = {
labels: option<instanceLabels>,
profileArn: option<amazonResourceName>,
arn: amazonResourceName
}
  type response = {
deviceInstance: option<deviceInstance>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateDeviceInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTests = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
tests: option<tests>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListSuites = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
suites: option<suites>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListSuitesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfiles = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<integer_>
}
  type response = {
nextToken: option<paginationToken>,
instanceProfiles: option<instanceProfiles>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListInstanceProfilesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetTestGridProject = {
  type t;
  type request = {
projectArn: deviceFarmArn
}
  type response = {
testGridProject: option<testGridProject>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetTestGridProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDevicePool = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
devicePool: option<devicePool>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDevicePoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDeviceInstance = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
deviceInstance: option<deviceInstance>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDeviceInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTestGridProject = {
  type t;
  type request = {
vpcConfig: option<testGridVpcConfig>,
description: option<resourceDescription>,
name: resourceName
}
  type response = {
testGridProject: option<testGridProject>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateTestGridProjectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDevicePool = {
  type t;
  type request = {
maxDevices: option<integer_>,
rules: rules,
description: option<message>,
name: name,
projectArn: amazonResourceName
}
  type response = {
devicePool: option<devicePool>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateDevicePoolCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTestGridProjects = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResult: option<maxPageSize>
}
  type response = {
nextToken: option<paginationToken>,
testGridProjects: option<testGridProjects>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridProjectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDevicePools = {
  type t;
  type request = {
nextToken: option<paginationToken>,
@as("type") type_: option<devicePoolType>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
devicePools: option<devicePools>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListDevicePoolsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDeviceInstances = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<integer_>
}
  type response = {
nextToken: option<paginationToken>,
deviceInstances: option<deviceInstances>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListDeviceInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopRun = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
run: option<run>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "StopRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ScheduleRun = {
  type t;
  type request = {
executionConfiguration: option<executionConfiguration>,
configuration: option<scheduleRunConfiguration>,
test: scheduleRunTest,
name: option<name>,
deviceSelectionConfiguration: option<deviceSelectionConfiguration>,
devicePoolArn: option<amazonResourceName>,
appArn: option<amazonResourceName>,
projectArn: amazonResourceName
}
  type response = {
run: option<run>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ScheduleRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOfferings = {
  type t;
  type request = {
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
offerings: option<offerings>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListOfferingsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRun = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
run: option<run>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetRunCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDevice = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
device: option<device>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopRemoteAccessSession = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
remoteAccessSession: option<remoteAccessSession>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "StopRemoteAccessSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopJob = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
job: option<job>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "StopJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RenewOffering = {
  type t;
  type request = {
quantity: integer_,
offeringId: offeringIdentifier
}
  type response = {
offeringTransaction: option<offeringTransaction>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "RenewOfferingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PurchaseOffering = {
  type t;
  type request = {
offeringPromotionId: option<offeringPromotionIdentifier>,
quantity: integer_,
offeringId: offeringIdentifier
}
  type response = {
offeringTransaction: option<offeringTransaction>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "PurchaseOfferingCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRuns = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
runs: option<runs>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListRunsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDevices = {
  type t;
  type request = {
filters: option<deviceFilters>,
nextToken: option<paginationToken>,
arn: option<amazonResourceName>
}
  type response = {
nextToken: option<paginationToken>,
devices: option<devices>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListDevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRemoteAccessSession = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
remoteAccessSession: option<remoteAccessSession>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetRemoteAccessSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOfferingStatus = {
  type t;
  type request = {
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
nextPeriod: option<offeringStatusMap>,
current: option<offeringStatusMap>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetOfferingStatusCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetJob = {
  type t;
  type request = {
arn: amazonResourceName
}
  type response = {
job: option<job>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetJobCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRemoteAccessSession = {
  type t;
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
projectArn: amazonResourceName
}
  type response = {
remoteAccessSession: option<remoteAccessSession>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateRemoteAccessSessionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListRemoteAccessSessions = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
remoteAccessSessions: option<remoteAccessSessions>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListRemoteAccessSessionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListOfferingTransactions = {
  type t;
  type request = {
nextToken: option<paginationToken>
}
  type response = {
nextToken: option<paginationToken>,
offeringTransactions: option<offeringTransactions>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListOfferingTransactionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
jobs: option<jobs>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDevicePoolCompatibility = {
  type t;
  type request = {
configuration: option<scheduleRunConfiguration>,
test: option<scheduleRunTest>,
testType: option<testType>,
appArn: option<amazonResourceName>,
devicePoolArn: amazonResourceName
}
  type response = {
incompatibleDevices: option<devicePoolCompatibilityResults>,
compatibleDevices: option<devicePoolCompatibilityResults>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDevicePoolCompatibilityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListUniqueProblems = {
  type t;
  type request = {
nextToken: option<paginationToken>,
arn: amazonResourceName
}
  type response = {
nextToken: option<paginationToken>,
uniqueProblems: option<uniqueProblemsByExecutionResultMap>
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListUniqueProblemsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
