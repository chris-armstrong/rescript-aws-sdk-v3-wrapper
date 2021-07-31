type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type videoCapture = bool;
type vPCEServiceName = string
type vPCEConfigurationName = string
type vPCEConfigurationDescription = string
type uploadType = [@as("XCTEST_UI_TEST_SPEC") #XCTEST_UI_TEST_SPEC | @as("INSTRUMENTATION_TEST_SPEC") #INSTRUMENTATION_TEST_SPEC | @as("APPIUM_WEB_RUBY_TEST_SPEC") #APPIUM_WEB_RUBY_TEST_SPEC | @as("APPIUM_WEB_NODE_TEST_SPEC") #APPIUM_WEB_NODE_TEST_SPEC | @as("APPIUM_WEB_PYTHON_TEST_SPEC") #APPIUM_WEB_PYTHON_TEST_SPEC | @as("APPIUM_WEB_JAVA_TESTNG_TEST_SPEC") #APPIUM_WEB_JAVA_TESTNG_TEST_SPEC | @as("APPIUM_WEB_JAVA_JUNIT_TEST_SPEC") #APPIUM_WEB_JAVA_JUNIT_TEST_SPEC | @as("APPIUM_RUBY_TEST_SPEC") #APPIUM_RUBY_TEST_SPEC | @as("APPIUM_NODE_TEST_SPEC") #APPIUM_NODE_TEST_SPEC | @as("APPIUM_PYTHON_TEST_SPEC") #APPIUM_PYTHON_TEST_SPEC | @as("APPIUM_JAVA_TESTNG_TEST_SPEC") #APPIUM_JAVA_TESTNG_TEST_SPEC | @as("APPIUM_JAVA_JUNIT_TEST_SPEC") #APPIUM_JAVA_JUNIT_TEST_SPEC | @as("XCTEST_UI_TEST_PACKAGE") #XCTEST_UI_TEST_PACKAGE | @as("XCTEST_TEST_PACKAGE") #XCTEST_TEST_PACKAGE | @as("UIAUTOMATOR_TEST_PACKAGE") #UIAUTOMATOR_TEST_PACKAGE | @as("UIAUTOMATION_TEST_PACKAGE") #UIAUTOMATION_TEST_PACKAGE | @as("INSTRUMENTATION_TEST_PACKAGE") #INSTRUMENTATION_TEST_PACKAGE | @as("CALABASH_TEST_PACKAGE") #CALABASH_TEST_PACKAGE | @as("APPIUM_WEB_RUBY_TEST_PACKAGE") #APPIUM_WEB_RUBY_TEST_PACKAGE | @as("APPIUM_WEB_NODE_TEST_PACKAGE") #APPIUM_WEB_NODE_TEST_PACKAGE | @as("APPIUM_WEB_PYTHON_TEST_PACKAGE") #APPIUM_WEB_PYTHON_TEST_PACKAGE | @as("APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE") #APPIUM_WEB_JAVA_TESTNG_TEST_PACKAGE | @as("APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE") #APPIUM_WEB_JAVA_JUNIT_TEST_PACKAGE | @as("APPIUM_RUBY_TEST_PACKAGE") #APPIUM_RUBY_TEST_PACKAGE | @as("APPIUM_NODE_TEST_PACKAGE") #APPIUM_NODE_TEST_PACKAGE | @as("APPIUM_PYTHON_TEST_PACKAGE") #APPIUM_PYTHON_TEST_PACKAGE | @as("APPIUM_JAVA_TESTNG_TEST_PACKAGE") #APPIUM_JAVA_TESTNG_TEST_PACKAGE | @as("APPIUM_JAVA_JUNIT_TEST_PACKAGE") #APPIUM_JAVA_JUNIT_TEST_PACKAGE | @as("EXTERNAL_DATA") #EXTERNAL_DATA | @as("WEB_APP") #WEB_APP | @as("IOS_APP") #IOS_APP | @as("ANDROID_APP") #ANDROID_APP]
type uploadStatus = [@as("FAILED") #FAILED | @as("SUCCEEDED") #SUCCEEDED | @as("PROCESSING") #PROCESSING | @as("INITIALIZED") #INITIALIZED]
type uploadCategory = [@as("PRIVATE") #PRIVATE | @as("CURATED") #CURATED]
type uRL = string
type transactionIdentifier = string
type testType = [@as("REMOTE_ACCESS_REPLAY") #REMOTE_ACCESS_REPLAY | @as("REMOTE_ACCESS_RECORD") #REMOTE_ACCESS_RECORD | @as("XCTEST_UI") #XCTEST_UI | @as("XCTEST") #XCTEST | @as("UIAUTOMATOR") #UIAUTOMATOR | @as("UIAUTOMATION") #UIAUTOMATION | @as("INSTRUMENTATION") #INSTRUMENTATION | @as("CALABASH") #CALABASH | @as("APPIUM_WEB_RUBY") #APPIUM_WEB_RUBY | @as("APPIUM_WEB_NODE") #APPIUM_WEB_NODE | @as("APPIUM_WEB_PYTHON") #APPIUM_WEB_PYTHON | @as("APPIUM_WEB_JAVA_TESTNG") #APPIUM_WEB_JAVA_TESTNG | @as("APPIUM_WEB_JAVA_JUNIT") #APPIUM_WEB_JAVA_JUNIT | @as("APPIUM_RUBY") #APPIUM_RUBY | @as("APPIUM_NODE") #APPIUM_NODE | @as("APPIUM_PYTHON") #APPIUM_PYTHON | @as("APPIUM_JAVA_TESTNG") #APPIUM_JAVA_TESTNG | @as("APPIUM_JAVA_JUNIT") #APPIUM_JAVA_JUNIT | @as("WEB_PERFORMANCE_PROFILE") #WEB_PERFORMANCE_PROFILE | @as("BUILTIN_EXPLORER") #BUILTIN_EXPLORER | @as("BUILTIN_FUZZ") #BUILTIN_FUZZ]
type testGridUrlExpiresInSecondsInput = int;
type testGridSessionStatus = [@as("ERRORED") #ERRORED | @as("CLOSED") #CLOSED | @as("ACTIVE") #ACTIVE]
type testGridSessionArtifactType = [@as("SELENIUM_LOG") #SELENIUM_LOG | @as("VIDEO") #VIDEO | @as("UNKNOWN") #UNKNOWN]
type testGridSessionArtifactCategory = [@as("LOG") #LOG | @as("VIDEO") #VIDEO]
type tagValue = string
type tagKey = string
type amazonawsString = string
type sshPublicKey = string
type skipAppResign = bool;
type serviceDnsName = string
type sensitiveURL = string
type sensitiveString = string
type sampleType = [@as("OPENGL_MAX_DRAWTIME") #OPENGL_MAX_DRAWTIME | @as("OPENGL_AVG_DRAWTIME") #OPENGL_AVG_DRAWTIME | @as("OPENGL_MIN_DRAWTIME") #OPENGL_MIN_DRAWTIME | @as("OPENGL_FPS") #OPENGL_FPS | @as("OPENGL_FRAMES") #OPENGL_FRAMES | @as("NATIVE_MAX_DRAWTIME") #NATIVE_MAX_DRAWTIME | @as("NATIVE_AVG_DRAWTIME") #NATIVE_AVG_DRAWTIME | @as("NATIVE_MIN_DRAWTIME") #NATIVE_MIN_DRAWTIME | @as("NATIVE_FPS") #NATIVE_FPS | @as("NATIVE_FRAMES") #NATIVE_FRAMES | @as("TX") #TX | @as("RX") #RX | @as("TX_RATE") #TX_RATE | @as("RX_RATE") #RX_RATE | @as("THREADS") #THREADS | @as("MEMORY") #MEMORY | @as("CPU") #CPU]
type ruleOperator = [@as("CONTAINS") #CONTAINS | @as("NOT_IN") #NOT_IN | @as("IN") #IN | @as("GREATER_THAN_OR_EQUALS") #GREATER_THAN_OR_EQUALS | @as("GREATER_THAN") #GREATER_THAN | @as("LESS_THAN_OR_EQUALS") #LESS_THAN_OR_EQUALS | @as("LESS_THAN") #LESS_THAN | @as("EQUALS") #EQUALS]
type resourceName = string
type resourceId = string
type resourceDescription = string
type recurringChargeFrequency = [@as("MONTHLY") #MONTHLY]
type percentInteger = int;
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
type maxPageSize = int;
type amazonawsLong = float;
type jobTimeoutMinutes = int;
type interactionMode = [@as("VIDEO_ONLY") #VIDEO_ONLY | @as("NO_VIDEO") #NO_VIDEO | @as("INTERACTIVE") #INTERACTIVE]
type amazonawsInteger = int;
type instanceStatus = [@as("NOT_AVAILABLE") #NOT_AVAILABLE | @as("AVAILABLE") #AVAILABLE | @as("PREPARING") #PREPARING | @as("IN_USE") #IN_USE]
type hostAddress = string
type filter = string
type executionStatus = [@as("STOPPING") #STOPPING | @as("COMPLETED") #COMPLETED | @as("RUNNING") #RUNNING | @as("PREPARING") #PREPARING | @as("SCHEDULING") #SCHEDULING | @as("PROCESSING") #PROCESSING | @as("PENDING_DEVICE") #PENDING_DEVICE | @as("PENDING_CONCURRENCY") #PENDING_CONCURRENCY | @as("PENDING") #PENDING]
type executionResultCode = [@as("VPC_ENDPOINT_SETUP_FAILED") #VPC_ENDPOINT_SETUP_FAILED | @as("PARSING_FAILED") #PARSING_FAILED]
type executionResult = [@as("STOPPED") #STOPPED | @as("ERRORED") #ERRORED | @as("SKIPPED") #SKIPPED | @as("FAILED") #FAILED | @as("WARNED") #WARNED | @as("PASSED") #PASSED | @as("PENDING") #PENDING]
type exceptionMessage = string
type amazonawsDouble = float;
type devicePoolType = [@as("PRIVATE") #PRIVATE | @as("CURATED") #CURATED]
type devicePlatform = [@as("IOS") #IOS | @as("ANDROID") #ANDROID]
type deviceFormFactor = [@as("TABLET") #TABLET | @as("PHONE") #PHONE]
type deviceFilterAttribute = [@as("FLEET_TYPE") #FLEET_TYPE | @as("INSTANCE_LABELS") #INSTANCE_LABELS | @as("INSTANCE_ARN") #INSTANCE_ARN | @as("REMOTE_DEBUG_ENABLED") #REMOTE_DEBUG_ENABLED | @as("REMOTE_ACCESS_ENABLED") #REMOTE_ACCESS_ENABLED | @as("MANUFACTURER") #MANUFACTURER | @as("FORM_FACTOR") #FORM_FACTOR | @as("AVAILABILITY") #AVAILABILITY | @as("MODEL") #MODEL | @as("OS_VERSION") #OS_VERSION | @as("PLATFORM") #PLATFORM | @as("ARN") #ARN]
type deviceFarmArn = string
type deviceAvailability = [@as("HIGHLY_AVAILABLE") #HIGHLY_AVAILABLE | @as("AVAILABLE") #AVAILABLE | @as("BUSY") #BUSY | @as("TEMPORARY_NOT_AVAILABLE") #TEMPORARY_NOT_AVAILABLE]
type deviceAttribute = [@as("AVAILABILITY") #AVAILABILITY | @as("MODEL") #MODEL | @as("OS_VERSION") #OS_VERSION | @as("FLEET_TYPE") #FLEET_TYPE | @as("INSTANCE_LABELS") #INSTANCE_LABELS | @as("INSTANCE_ARN") #INSTANCE_ARN | @as("APPIUM_VERSION") #APPIUM_VERSION | @as("REMOTE_DEBUG_ENABLED") #REMOTE_DEBUG_ENABLED | @as("REMOTE_ACCESS_ENABLED") #REMOTE_ACCESS_ENABLED | @as("MANUFACTURER") #MANUFACTURER | @as("FORM_FACTOR") #FORM_FACTOR | @as("PLATFORM") #PLATFORM | @as("ARN") #ARN]
type dateTime = Js.Date.t;
type currencyCode = [@as("USD") #USD]
type contentType = string
type clientId = string
type amazonawsBoolean = bool;
type billingMethod = [@as("UNMETERED") #UNMETERED | @as("METERED") #METERED]
type artifactType = [@as("TESTSPEC_OUTPUT") #TESTSPEC_OUTPUT | @as("CUSTOMER_ARTIFACT_LOG") #CUSTOMER_ARTIFACT_LOG | @as("CUSTOMER_ARTIFACT") #CUSTOMER_ARTIFACT | @as("VIDEO") #VIDEO | @as("XCTEST_LOG") #XCTEST_LOG | @as("APPLICATION_CRASH_REPORT") #APPLICATION_CRASH_REPORT | @as("EXPLORER_SUMMARY_LOG") #EXPLORER_SUMMARY_LOG | @as("EXPLORER_EVENT_LOG") #EXPLORER_EVENT_LOG | @as("APPIUM_PYTHON_XML_OUTPUT") #APPIUM_PYTHON_XML_OUTPUT | @as("APPIUM_PYTHON_OUTPUT") #APPIUM_PYTHON_OUTPUT | @as("APPIUM_JAVA_XML_OUTPUT") #APPIUM_JAVA_XML_OUTPUT | @as("APPIUM_JAVA_OUTPUT") #APPIUM_JAVA_OUTPUT | @as("APPIUM_SERVER_OUTPUT") #APPIUM_SERVER_OUTPUT | @as("AUTOMATION_OUTPUT") #AUTOMATION_OUTPUT | @as("CALABASH_JAVA_XML_OUTPUT") #CALABASH_JAVA_XML_OUTPUT | @as("CALABASH_STANDARD_OUTPUT") #CALABASH_STANDARD_OUTPUT | @as("CALABASH_PRETTY_OUTPUT") #CALABASH_PRETTY_OUTPUT | @as("CALABASH_JSON_OUTPUT") #CALABASH_JSON_OUTPUT | @as("EXERCISER_MONKEY_OUTPUT") #EXERCISER_MONKEY_OUTPUT | @as("INSTRUMENTATION_OUTPUT") #INSTRUMENTATION_OUTPUT | @as("WEBKIT_LOG") #WEBKIT_LOG | @as("SERVICE_LOG") #SERVICE_LOG | @as("RESULT_LOG") #RESULT_LOG | @as("VIDEO_LOG") #VIDEO_LOG | @as("MESSAGE_LOG") #MESSAGE_LOG | @as("DEVICE_LOG") #DEVICE_LOG | @as("SCREENSHOT") #SCREENSHOT | @as("UNKNOWN") #UNKNOWN]
type artifactCategory = [@as("LOG") #LOG | @as("FILE") #FILE | @as("SCREENSHOT") #SCREENSHOT]
type appPackagesCleanup = bool;
type amazonResourceName = string
type accountsCleanup = bool;
type aWSAccountNumber = string
type vPCEConfiguration = {
@as("vpceConfigurationDescription") vpceConfigurationDescription: vPCEConfigurationDescription,
@as("serviceDnsName") serviceDnsName: serviceDnsName,
@as("vpceServiceName") vpceServiceName: vPCEServiceName,
@as("vpceConfigurationName") vpceConfigurationName: vPCEConfigurationName,
@as("arn") arn: amazonResourceName
}
type upload = {
@as("category") category: uploadCategory,
@as("message") message: message,
@as("contentType") contentType: contentType,
@as("metadata") metadata: metadata,
@as("url") url: sensitiveURL,
@as("status") status: uploadStatus,
@as("type") type_: uploadType,
@as("created") created: dateTime,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type trialMinutes = {
@as("remaining") remaining: amazonawsDouble,
@as("total") total: amazonawsDouble
}
type testParameters = Js.Dict.t< amazonawsString>
type testGridSessionArtifact = {
@as("url") url: sensitiveString,
@as("type") type_: testGridSessionArtifactType,
@as("filename") filename: amazonawsString
}
type testGridSessionAction = {
@as("requestMethod") requestMethod: amazonawsString,
@as("statusCode") statusCode: amazonawsString,
@as("duration") duration: amazonawsLong,
@as("started") started: dateTime,
@as("action") action: amazonawsString
}
type testGridSession = {
@as("seleniumProperties") seleniumProperties: amazonawsString,
@as("billingMinutes") billingMinutes: amazonawsDouble,
@as("ended") ended: dateTime,
@as("created") created: dateTime,
@as("status") status: testGridSessionStatus,
@as("arn") arn: deviceFarmArn
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: option<tagValue>,
@as("Key") key: option<tagKey>
}
type subnetIds = array<nonEmptyString>
type securityGroupIds = array<nonEmptyString>
type sample = {
@as("url") url: uRL,
@as("type") type_: sampleType,
@as("arn") arn: amazonResourceName
}
type rule = {
@as("value") value: amazonawsString,
@as("operator") operator: ruleOperator,
@as("attribute") attribute: deviceAttribute
}
type resolution = {
@as("height") height: amazonawsInteger,
@as("width") width: amazonawsInteger
}
type radios = {
@as("gps") gps: amazonawsBoolean,
@as("nfc") nfc: amazonawsBoolean,
@as("bluetooth") bluetooth: amazonawsBoolean,
@as("wifi") wifi: amazonawsBoolean
}
type purchasedDevicesMap = Js.Dict.t< amazonawsInteger>
type project = {
@as("created") created: dateTime,
@as("defaultJobTimeoutMinutes") defaultJobTimeoutMinutes: jobTimeoutMinutes,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type problemDetail = {
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type packageIds = array<amazonawsString>
type offeringPromotion = {
@as("description") description: message,
@as("id") id: offeringPromotionIdentifier
}
type networkProfile = {
@as("downlinkLossPercent") downlinkLossPercent: percentInteger,
@as("uplinkLossPercent") uplinkLossPercent: percentInteger,
@as("downlinkJitterMs") downlinkJitterMs: amazonawsLong,
@as("uplinkJitterMs") uplinkJitterMs: amazonawsLong,
@as("downlinkDelayMs") downlinkDelayMs: amazonawsLong,
@as("uplinkDelayMs") uplinkDelayMs: amazonawsLong,
@as("downlinkBandwidthBits") downlinkBandwidthBits: amazonawsLong,
@as("uplinkBandwidthBits") uplinkBandwidthBits: amazonawsLong,
@as("type") type_: networkProfileType,
@as("description") description: message,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type monetaryAmount = {
@as("currencyCode") currencyCode: currencyCode,
@as("amount") amount: amazonawsDouble
}
type maxSlotMap = Js.Dict.t< amazonawsInteger>
type location = {
@as("longitude") longitude: option<amazonawsDouble>,
@as("latitude") latitude: option<amazonawsDouble>
}
type iosPaths = array<amazonawsString>
type instanceLabels = array<amazonawsString>
type incompatibilityMessage = {
@as("type") type_: deviceAttribute,
@as("message") message: message
}
type executionConfiguration = {
@as("skipAppResign") skipAppResign: skipAppResign,
@as("videoCapture") videoCapture: videoCapture,
@as("appPackagesCleanup") appPackagesCleanup: appPackagesCleanup,
@as("accountsCleanup") accountsCleanup: accountsCleanup,
@as("jobTimeoutMinutes") jobTimeoutMinutes: jobTimeoutMinutes
}
type deviceMinutes = {
@as("unmetered") unmetered: amazonawsDouble,
@as("metered") metered: amazonawsDouble,
@as("total") total: amazonawsDouble
}
type deviceHostPaths = array<amazonawsString>
type deviceFilterValues = array<amazonawsString>
type counters = {
@as("skipped") skipped: amazonawsInteger,
@as("stopped") stopped: amazonawsInteger,
@as("errored") errored: amazonawsInteger,
@as("warned") warned: amazonawsInteger,
@as("failed") failed: amazonawsInteger,
@as("passed") passed: amazonawsInteger,
@as("total") total: amazonawsInteger
}
type cPU = {
@as("clock") clock: amazonawsDouble,
@as("architecture") architecture: amazonawsString,
@as("frequency") frequency: amazonawsString
}
type artifact = {
@as("url") url: uRL,
@as("extension") extension: amazonawsString,
@as("type") type_: artifactType,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type androidPaths = array<amazonawsString>
type amazonResourceNames = array<amazonResourceName>
type vPCEConfigurations = array<vPCEConfiguration>
type uploads = array<upload>
type testGridVpcConfig = {
@as("vpcId") vpcId: option<nonEmptyString>,
@as("subnetIds") subnetIds: option<subnetIds>,
@as("securityGroupIds") securityGroupIds: option<securityGroupIds>
}
type testGridSessions = array<testGridSession>
type testGridSessionArtifacts = array<testGridSessionArtifact>
type testGridSessionActions = array<testGridSessionAction>
type test = {
@as("deviceMinutes") deviceMinutes: deviceMinutes,
@as("message") message: message,
@as("counters") counters: counters,
@as("stopped") stopped: dateTime,
@as("started") started: dateTime,
@as("result") result: executionResult,
@as("status") status: executionStatus,
@as("created") created: dateTime,
@as("type") type_: testType,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type tagList = array<tag>
type suite = {
@as("deviceMinutes") deviceMinutes: deviceMinutes,
@as("message") message: message,
@as("counters") counters: counters,
@as("stopped") stopped: dateTime,
@as("started") started: dateTime,
@as("result") result: executionResult,
@as("status") status: executionStatus,
@as("created") created: dateTime,
@as("type") type_: testType,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type scheduleRunTest = {
@as("parameters") parameters: testParameters,
@as("filter") filter: filter,
@as("testSpecArn") testSpecArn: amazonResourceName,
@as("testPackageArn") testPackageArn: amazonResourceName,
@as("type") type_: option<testType>
}
type samples = array<sample>
type rules = array<rule>
type recurringCharge = {
@as("frequency") frequency: recurringChargeFrequency,
@as("cost") cost: monetaryAmount
}
type projects = array<project>
type offeringPromotions = array<offeringPromotion>
type networkProfiles = array<networkProfile>
type instanceProfile = {
@as("description") description: message,
@as("name") name: name,
@as("rebootAfterUse") rebootAfterUse: amazonawsBoolean,
@as("excludeAppPackagesFromCleanup") excludeAppPackagesFromCleanup: packageIds,
@as("packageCleanup") packageCleanup: amazonawsBoolean,
@as("arn") arn: amazonResourceName
}
type incompatibilityMessages = array<incompatibilityMessage>
type deviceFilter = {
@as("values") values: option<deviceFilterValues>,
@as("operator") operator: option<ruleOperator>,
@as("attribute") attribute: option<deviceFilterAttribute>
}
type customerArtifactPaths = {
@as("deviceHostPaths") deviceHostPaths: deviceHostPaths,
@as("androidPaths") androidPaths: androidPaths,
@as("iosPaths") iosPaths: iosPaths
}
type createRemoteAccessSessionConfiguration = {
@as("vpceConfigurationArns") vpceConfigurationArns: amazonResourceNames,
@as("billingMethod") billingMethod: billingMethod
}
type artifacts = array<artifact>
type accountSettings = {
@as("skipAppResign") skipAppResign: skipAppResign,
@as("defaultJobTimeoutMinutes") defaultJobTimeoutMinutes: jobTimeoutMinutes,
@as("maxSlots") maxSlots: maxSlotMap,
@as("trialMinutes") trialMinutes: trialMinutes,
@as("maxJobTimeoutMinutes") maxJobTimeoutMinutes: jobTimeoutMinutes,
@as("unmeteredRemoteAccessDevices") unmeteredRemoteAccessDevices: purchasedDevicesMap,
@as("unmeteredDevices") unmeteredDevices: purchasedDevicesMap,
@as("awsAccountNumber") awsAccountNumber: aWSAccountNumber
}
type tests = array<test>
type testGridProject = {
@as("created") created: dateTime,
@as("vpcConfig") vpcConfig: testGridVpcConfig,
@as("description") description: amazonawsString,
@as("name") name: amazonawsString,
@as("arn") arn: deviceFarmArn
}
type suites = array<suite>
type scheduleRunConfiguration = {
@as("billingMethod") billingMethod: billingMethod,
@as("auxiliaryApps") auxiliaryApps: amazonResourceNames,
@as("radios") radios: radios,
@as("customerArtifactPaths") customerArtifactPaths: customerArtifactPaths,
@as("vpceConfigurationArns") vpceConfigurationArns: amazonResourceNames,
@as("location") location: location,
@as("locale") locale: amazonawsString,
@as("networkProfileArn") networkProfileArn: amazonResourceName,
@as("extraDataPackageArn") extraDataPackageArn: amazonResourceName
}
type recurringCharges = array<recurringCharge>
type instanceProfiles = array<instanceProfile>
type devicePool = {
@as("maxDevices") maxDevices: amazonawsInteger,
@as("rules") rules: rules,
@as("type") type_: devicePoolType,
@as("description") description: message,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type deviceInstance = {
@as("instanceProfile") instanceProfile: instanceProfile,
@as("udid") udid: amazonawsString,
@as("status") status: instanceStatus,
@as("labels") labels: instanceLabels,
@as("deviceArn") deviceArn: amazonResourceName,
@as("arn") arn: amazonResourceName
}
type deviceFilters = array<deviceFilter>
type testGridProjects = array<testGridProject>
type offering = {
@as("recurringCharges") recurringCharges: recurringCharges,
@as("platform") platform: devicePlatform,
@as("type") type_: offeringType,
@as("description") description: message,
@as("id") id: offeringIdentifier
}
type deviceSelectionResult = {
@as("maxDevices") maxDevices: amazonawsInteger,
@as("matchedDevicesCount") matchedDevicesCount: amazonawsInteger,
@as("filters") filters: deviceFilters
}
type deviceSelectionConfiguration = {
@as("maxDevices") maxDevices: option<amazonawsInteger>,
@as("filters") filters: option<deviceFilters>
}
type devicePools = array<devicePool>
type deviceInstances = array<deviceInstance>
type run = {
@as("deviceSelectionResult") deviceSelectionResult: deviceSelectionResult,
@as("testSpecArn") testSpecArn: amazonResourceName,
@as("skipAppResign") skipAppResign: skipAppResign,
@as("webUrl") webUrl: amazonawsString,
@as("customerArtifactPaths") customerArtifactPaths: customerArtifactPaths,
@as("location") location: location,
@as("radios") radios: radios,
@as("locale") locale: amazonawsString,
@as("devicePoolArn") devicePoolArn: amazonResourceName,
@as("jobTimeoutMinutes") jobTimeoutMinutes: jobTimeoutMinutes,
@as("eventCount") eventCount: amazonawsInteger,
@as("appUpload") appUpload: amazonResourceName,
@as("seed") seed: amazonawsInteger,
@as("resultCode") resultCode: executionResultCode,
@as("parsingResultUrl") parsingResultUrl: amazonawsString,
@as("networkProfile") networkProfile: networkProfile,
@as("deviceMinutes") deviceMinutes: deviceMinutes,
@as("billingMethod") billingMethod: billingMethod,
@as("completedJobs") completedJobs: amazonawsInteger,
@as("totalJobs") totalJobs: amazonawsInteger,
@as("message") message: message,
@as("counters") counters: counters,
@as("stopped") stopped: dateTime,
@as("started") started: dateTime,
@as("result") result: executionResult,
@as("status") status: executionStatus,
@as("created") created: dateTime,
@as("platform") platform: devicePlatform,
@as("type") type_: testType,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type offerings = array<offering>
type offeringStatus = {
@as("effectiveOn") effectiveOn: dateTime,
@as("quantity") quantity: amazonawsInteger,
@as("offering") offering: offering,
@as("type") type_: offeringTransactionType
}
type device = {
@as("availability") availability: deviceAvailability,
@as("instances") instances: deviceInstances,
@as("fleetName") fleetName: amazonawsString,
@as("fleetType") fleetType: amazonawsString,
@as("remoteDebugEnabled") remoteDebugEnabled: amazonawsBoolean,
@as("remoteAccessEnabled") remoteAccessEnabled: amazonawsBoolean,
@as("radio") radio: amazonawsString,
@as("carrier") carrier: amazonawsString,
@as("image") image: amazonawsString,
@as("memory") memory: amazonawsLong,
@as("heapSize") heapSize: amazonawsLong,
@as("resolution") resolution: resolution,
@as("cpu") cpu: cPU,
@as("os") os: amazonawsString,
@as("platform") platform: devicePlatform,
@as("formFactor") formFactor: deviceFormFactor,
@as("modelId") modelId: amazonawsString,
@as("model") model: amazonawsString,
@as("manufacturer") manufacturer: amazonawsString,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type runs = array<run>
type remoteAccessSession = {
@as("skipAppResign") skipAppResign: skipAppResign,
@as("interactionMode") interactionMode: interactionMode,
@as("deviceUdid") deviceUdid: amazonawsString,
@as("endpoint") endpoint: amazonawsString,
@as("deviceMinutes") deviceMinutes: deviceMinutes,
@as("billingMethod") billingMethod: billingMethod,
@as("clientId") clientId: clientId,
@as("hostAddress") hostAddress: hostAddress,
@as("remoteRecordAppArn") remoteRecordAppArn: amazonResourceName,
@as("remoteRecordEnabled") remoteRecordEnabled: amazonawsBoolean,
@as("remoteDebugEnabled") remoteDebugEnabled: amazonawsBoolean,
@as("instanceArn") instanceArn: amazonResourceName,
@as("device") device: device,
@as("stopped") stopped: dateTime,
@as("started") started: dateTime,
@as("message") message: message,
@as("result") result: executionResult,
@as("status") status: executionStatus,
@as("created") created: dateTime,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type problem = {
@as("message") message: message,
@as("result") result: executionResult,
@as("device") device: device,
@as("test") test: problemDetail,
@as("suite") suite: problemDetail,
@as("job") job: problemDetail,
@as("run") run: problemDetail
}
type offeringTransaction = {
@as("cost") cost: monetaryAmount,
@as("createdOn") createdOn: dateTime,
@as("offeringPromotionId") offeringPromotionId: offeringPromotionIdentifier,
@as("transactionId") transactionId: transactionIdentifier,
@as("offeringStatus") offeringStatus: offeringStatus
}
type offeringStatusMap = Js.Dict.t< offeringStatus>
type job = {
@as("videoCapture") videoCapture: videoCapture,
@as("videoEndpoint") videoEndpoint: amazonawsString,
@as("deviceMinutes") deviceMinutes: deviceMinutes,
@as("instanceArn") instanceArn: amazonResourceName,
@as("device") device: device,
@as("message") message: message,
@as("counters") counters: counters,
@as("stopped") stopped: dateTime,
@as("started") started: dateTime,
@as("result") result: executionResult,
@as("status") status: executionStatus,
@as("created") created: dateTime,
@as("type") type_: testType,
@as("name") name: name,
@as("arn") arn: amazonResourceName
}
type devices = array<device>
type devicePoolCompatibilityResult = {
@as("incompatibilityMessages") incompatibilityMessages: incompatibilityMessages,
@as("compatible") compatible: amazonawsBoolean,
@as("device") device: device
}
type remoteAccessSessions = array<remoteAccessSession>
type problems = array<problem>
type offeringTransactions = array<offeringTransaction>
type jobs = array<job>
type devicePoolCompatibilityResults = array<devicePoolCompatibilityResult>
type uniqueProblem = {
@as("problems") problems: problems,
@as("message") message: message
}
type uniqueProblems = array<uniqueProblem>
type uniqueProblemsByExecutionResultMap = Js.Dict.t< uniqueProblems>
type clientType;
@module("@aws-sdk/client-devicefarm") @new external createClient: unit => clientType = "DeviceFarmClient";
module DeleteVPCEConfiguration = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteVPCEConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteUpload = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteTestGridProject = {
  type t;
  type request = {
@as("projectArn") projectArn: option<deviceFarmArn>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteTestGridProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRun = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRemoteAccessSession = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteRemoteAccessSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteProject = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteNetworkProfile = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteNetworkProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInstanceProfile = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDevicePool = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "DeleteDevicePoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTestGridUrl = {
  type t;
  type request = {
@as("expiresInSeconds") expiresInSeconds: option<testGridUrlExpiresInSecondsInput>,
@as("projectArn") projectArn: option<deviceFarmArn>
}
  type response = {
@as("expires") expires: dateTime,
@as("url") url: sensitiveString
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateTestGridUrlCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVPCEConfiguration = {
  type t;
  type request = {
@as("vpceConfigurationDescription") vpceConfigurationDescription: vPCEConfigurationDescription,
@as("serviceDnsName") serviceDnsName: serviceDnsName,
@as("vpceServiceName") vpceServiceName: vPCEServiceName,
@as("vpceConfigurationName") vpceConfigurationName: vPCEConfigurationName,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("vpceConfiguration") vpceConfiguration: vPCEConfiguration
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateVPCEConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateUpload = {
  type t;
  type request = {
@as("editContent") editContent: amazonawsBoolean,
@as("contentType") contentType: contentType,
@as("name") name: name,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("upload") upload: upload
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateProject = {
  type t;
  type request = {
@as("defaultJobTimeoutMinutes") defaultJobTimeoutMinutes: jobTimeoutMinutes,
@as("name") name: name,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("project") project: project
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateNetworkProfile = {
  type t;
  type request = {
@as("downlinkLossPercent") downlinkLossPercent: percentInteger,
@as("uplinkLossPercent") uplinkLossPercent: percentInteger,
@as("downlinkJitterMs") downlinkJitterMs: amazonawsLong,
@as("uplinkJitterMs") uplinkJitterMs: amazonawsLong,
@as("downlinkDelayMs") downlinkDelayMs: amazonawsLong,
@as("uplinkDelayMs") uplinkDelayMs: amazonawsLong,
@as("downlinkBandwidthBits") downlinkBandwidthBits: amazonawsLong,
@as("uplinkBandwidthBits") uplinkBandwidthBits: amazonawsLong,
@as("type") type_: networkProfileType,
@as("description") description: message,
@as("name") name: name,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("networkProfile") networkProfile: networkProfile
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateNetworkProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceARN") resourceARN: option<deviceFarmArn>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InstallToRemoteAccessSession = {
  type t;
  type request = {
@as("appArn") appArn: option<amazonResourceName>,
@as("remoteAccessSessionArn") remoteAccessSessionArn: option<amazonResourceName>
}
  type response = {
@as("appUpload") appUpload: upload
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "InstallToRemoteAccessSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetVPCEConfiguration = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("vpceConfiguration") vpceConfiguration: vPCEConfiguration
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetVPCEConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUpload = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("upload") upload: upload
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTestGridSession = {
  type t;
  type request = {
@as("sessionArn") sessionArn: deviceFarmArn,
@as("sessionId") sessionId: resourceId,
@as("projectArn") projectArn: deviceFarmArn
}
  type response = {
@as("testGridSession") testGridSession: testGridSession
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetTestGridSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetProject = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("project") project: project
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetNetworkProfile = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("networkProfile") networkProfile: networkProfile
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetNetworkProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateVPCEConfiguration = {
  type t;
  type request = {
@as("vpceConfigurationDescription") vpceConfigurationDescription: vPCEConfigurationDescription,
@as("serviceDnsName") serviceDnsName: option<serviceDnsName>,
@as("vpceServiceName") vpceServiceName: option<vPCEServiceName>,
@as("vpceConfigurationName") vpceConfigurationName: option<vPCEConfigurationName>
}
  type response = {
@as("vpceConfiguration") vpceConfiguration: vPCEConfiguration
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateVPCEConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateUpload = {
  type t;
  type request = {
@as("contentType") contentType: contentType,
@as("type") type_: option<uploadType>,
@as("name") name: option<name>,
@as("projectArn") projectArn: option<amazonResourceName>
}
  type response = {
@as("upload") upload: upload
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateUploadCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateProject = {
  type t;
  type request = {
@as("defaultJobTimeoutMinutes") defaultJobTimeoutMinutes: jobTimeoutMinutes,
@as("name") name: option<name>
}
  type response = {
@as("project") project: project
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateNetworkProfile = {
  type t;
  type request = {
@as("downlinkLossPercent") downlinkLossPercent: percentInteger,
@as("uplinkLossPercent") uplinkLossPercent: percentInteger,
@as("downlinkJitterMs") downlinkJitterMs: amazonawsLong,
@as("uplinkJitterMs") uplinkJitterMs: amazonawsLong,
@as("downlinkDelayMs") downlinkDelayMs: amazonawsLong,
@as("uplinkDelayMs") uplinkDelayMs: amazonawsLong,
@as("downlinkBandwidthBits") downlinkBandwidthBits: amazonawsLong,
@as("uplinkBandwidthBits") uplinkBandwidthBits: amazonawsLong,
@as("type") type_: networkProfileType,
@as("description") description: message,
@as("name") name: option<name>,
@as("projectArn") projectArn: option<amazonResourceName>
}
  type response = {
@as("networkProfile") networkProfile: networkProfile
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateNetworkProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateInstanceProfile = {
  type t;
  type request = {
@as("rebootAfterUse") rebootAfterUse: amazonawsBoolean,
@as("excludeAppPackagesFromCleanup") excludeAppPackagesFromCleanup: packageIds,
@as("packageCleanup") packageCleanup: amazonawsBoolean,
@as("description") description: message,
@as("name") name: name,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("instanceProfile") instanceProfile: instanceProfile
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceARN") resourceARN: option<deviceFarmArn>
}
  type response = unit
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVPCEConfigurations = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: amazonawsInteger
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("vpceConfigurations") vpceConfigurations: vPCEConfigurations
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListVPCEConfigurationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUploads = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("type") type_: uploadType,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("uploads") uploads: uploads
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListUploadsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTestGridSessions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResult") maxResult: maxPageSize,
@as("endTimeBefore") endTimeBefore: dateTime,
@as("endTimeAfter") endTimeAfter: dateTime,
@as("creationTimeBefore") creationTimeBefore: dateTime,
@as("creationTimeAfter") creationTimeAfter: dateTime,
@as("status") status: testGridSessionStatus,
@as("projectArn") projectArn: option<deviceFarmArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("testGridSessions") testGridSessions: testGridSessions
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTestGridSessionArtifacts = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResult") maxResult: maxPageSize,
@as("type") type_: testGridSessionArtifactCategory,
@as("sessionArn") sessionArn: option<deviceFarmArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("artifacts") artifacts: testGridSessionArtifacts
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridSessionArtifactsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTestGridSessionActions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResult") maxResult: maxPageSize,
@as("sessionArn") sessionArn: option<deviceFarmArn>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("actions") actions: testGridSessionActions
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridSessionActionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceARN") resourceARN: option<deviceFarmArn>
}
  type response = {
@as("Tags") tags: tagList
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSamples = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("samples") samples: samples
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListSamplesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListProjects = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: amazonResourceName
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("projects") projects: projects
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOfferingPromotions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("offeringPromotions") offeringPromotions: offeringPromotions
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListOfferingPromotionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListNetworkProfiles = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("type") type_: networkProfileType,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("networkProfiles") networkProfiles: networkProfiles
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListNetworkProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListArtifacts = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("type") type_: option<artifactCategory>,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("artifacts") artifacts: artifacts
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListArtifactsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTest = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("test") test: test
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetTestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSuite = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("suite") suite: suite
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetSuiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceProfile = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("instanceProfile") instanceProfile: instanceProfile
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAccountSettings = {
  type t;
  type request = unit
  type response = {
@as("accountSettings") accountSettings: accountSettings
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetAccountSettingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceProfile = {
  type t;
  type request = {
@as("rebootAfterUse") rebootAfterUse: amazonawsBoolean,
@as("excludeAppPackagesFromCleanup") excludeAppPackagesFromCleanup: packageIds,
@as("packageCleanup") packageCleanup: amazonawsBoolean,
@as("description") description: message,
@as("name") name: option<name>
}
  type response = {
@as("instanceProfile") instanceProfile: instanceProfile
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateInstanceProfileCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateTestGridProject = {
  type t;
  type request = {
@as("vpcConfig") vpcConfig: testGridVpcConfig,
@as("description") description: resourceDescription,
@as("name") name: resourceName,
@as("projectArn") projectArn: option<deviceFarmArn>
}
  type response = {
@as("testGridProject") testGridProject: testGridProject
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateTestGridProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDevicePool = {
  type t;
  type request = {
@as("clearMaxDevices") clearMaxDevices: amazonawsBoolean,
@as("maxDevices") maxDevices: amazonawsInteger,
@as("rules") rules: rules,
@as("description") description: message,
@as("name") name: name,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("devicePool") devicePool: devicePool
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateDevicePoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDeviceInstance = {
  type t;
  type request = {
@as("labels") labels: instanceLabels,
@as("profileArn") profileArn: amazonResourceName,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("deviceInstance") deviceInstance: deviceInstance
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "UpdateDeviceInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTests = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("tests") tests: tests
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListSuites = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("suites") suites: suites
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListSuitesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInstanceProfiles = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: amazonawsInteger
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("instanceProfiles") instanceProfiles: instanceProfiles
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListInstanceProfilesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTestGridProject = {
  type t;
  type request = {
@as("projectArn") projectArn: option<deviceFarmArn>
}
  type response = {
@as("testGridProject") testGridProject: testGridProject
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetTestGridProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevicePool = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("devicePool") devicePool: devicePool
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDevicePoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDeviceInstance = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("deviceInstance") deviceInstance: deviceInstance
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDeviceInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTestGridProject = {
  type t;
  type request = {
@as("vpcConfig") vpcConfig: testGridVpcConfig,
@as("description") description: resourceDescription,
@as("name") name: option<resourceName>
}
  type response = {
@as("testGridProject") testGridProject: testGridProject
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateTestGridProjectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDevicePool = {
  type t;
  type request = {
@as("maxDevices") maxDevices: amazonawsInteger,
@as("rules") rules: option<rules>,
@as("description") description: message,
@as("name") name: option<name>,
@as("projectArn") projectArn: option<amazonResourceName>
}
  type response = {
@as("devicePool") devicePool: devicePool
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateDevicePoolCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTestGridProjects = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResult") maxResult: maxPageSize
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("testGridProjects") testGridProjects: testGridProjects
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListTestGridProjectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDevicePools = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("type") type_: devicePoolType,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("devicePools") devicePools: devicePools
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListDevicePoolsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDeviceInstances = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: amazonawsInteger
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("deviceInstances") deviceInstances: deviceInstances
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListDeviceInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopRun = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("run") run: run
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "StopRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ScheduleRun = {
  type t;
  type request = {
@as("executionConfiguration") executionConfiguration: executionConfiguration,
@as("configuration") configuration: scheduleRunConfiguration,
@as("test") test: option<scheduleRunTest>,
@as("name") name: name,
@as("deviceSelectionConfiguration") deviceSelectionConfiguration: deviceSelectionConfiguration,
@as("devicePoolArn") devicePoolArn: amazonResourceName,
@as("appArn") appArn: amazonResourceName,
@as("projectArn") projectArn: option<amazonResourceName>
}
  type response = {
@as("run") run: run
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ScheduleRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOfferings = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("offerings") offerings: offerings
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListOfferingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRun = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("run") run: run
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetRunCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevice = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("device") device: device
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopRemoteAccessSession = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("remoteAccessSession") remoteAccessSession: remoteAccessSession
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "StopRemoteAccessSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopJob = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("job") job: job
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "StopJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RenewOffering = {
  type t;
  type request = {
@as("quantity") quantity: option<amazonawsInteger>,
@as("offeringId") offeringId: option<offeringIdentifier>
}
  type response = {
@as("offeringTransaction") offeringTransaction: offeringTransaction
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "RenewOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PurchaseOffering = {
  type t;
  type request = {
@as("offeringPromotionId") offeringPromotionId: offeringPromotionIdentifier,
@as("quantity") quantity: option<amazonawsInteger>,
@as("offeringId") offeringId: option<offeringIdentifier>
}
  type response = {
@as("offeringTransaction") offeringTransaction: offeringTransaction
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "PurchaseOfferingCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRuns = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("runs") runs: runs
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListRunsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDevices = {
  type t;
  type request = {
@as("filters") filters: deviceFilters,
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: amazonResourceName
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("devices") devices: devices
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRemoteAccessSession = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("remoteAccessSession") remoteAccessSession: remoteAccessSession
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetRemoteAccessSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOfferingStatus = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("nextPeriod") nextPeriod: offeringStatusMap,
@as("current") current: offeringStatusMap
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetOfferingStatusCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetJob = {
  type t;
  type request = {
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("job") job: job
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetJobCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRemoteAccessSession = {
  type t;
  type request = {
@as("skipAppResign") skipAppResign: amazonawsBoolean,
@as("interactionMode") interactionMode: interactionMode,
@as("configuration") configuration: createRemoteAccessSessionConfiguration,
@as("clientId") clientId: clientId,
@as("name") name: name,
@as("remoteRecordAppArn") remoteRecordAppArn: amazonResourceName,
@as("remoteRecordEnabled") remoteRecordEnabled: amazonawsBoolean,
@as("remoteDebugEnabled") remoteDebugEnabled: amazonawsBoolean,
@as("sshPublicKey") sshPublicKey: sshPublicKey,
@as("instanceArn") instanceArn: amazonResourceName,
@as("deviceArn") deviceArn: option<amazonResourceName>,
@as("projectArn") projectArn: option<amazonResourceName>
}
  type response = {
@as("remoteAccessSession") remoteAccessSession: remoteAccessSession
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "CreateRemoteAccessSessionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListRemoteAccessSessions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("remoteAccessSessions") remoteAccessSessions: remoteAccessSessions
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListRemoteAccessSessionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOfferingTransactions = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("offeringTransactions") offeringTransactions: offeringTransactions
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListOfferingTransactionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListJobs = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("jobs") jobs: jobs
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListJobsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevicePoolCompatibility = {
  type t;
  type request = {
@as("configuration") configuration: scheduleRunConfiguration,
@as("test") test: scheduleRunTest,
@as("testType") testType: testType,
@as("appArn") appArn: amazonResourceName,
@as("devicePoolArn") devicePoolArn: option<amazonResourceName>
}
  type response = {
@as("incompatibleDevices") incompatibleDevices: devicePoolCompatibilityResults,
@as("compatibleDevices") compatibleDevices: devicePoolCompatibilityResults
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "GetDevicePoolCompatibilityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListUniqueProblems = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("arn") arn: option<amazonResourceName>
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("uniqueProblems") uniqueProblems: uniqueProblemsByExecutionResultMap
}
  @module("@aws-sdk/client-devicefarm") @new external new_: (request) => t = "ListUniqueProblemsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
