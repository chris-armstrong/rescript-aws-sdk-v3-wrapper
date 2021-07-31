type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type timestamp_ = Js.Date.t;
type string_ = string
type long = float
type integer_ = int
type float_ = float
type double = float
type boolean_ = bool
type treatMissingData = [@as("missing") #Missing | @as("ignore") #Ignore | @as("notBreaching") #NotBreaching | @as("breaching") #Breaching]
type timeOfDay = string
type tagValue = string
type tagKey = string
type stringMax256 = string
type serialNumber = string
type sensitiveString = string
type revocationReason = string
type resourceType = [@as("Certificate") #Certificate | @as("Distribution") #Distribution | @as("ContactMethod") #ContactMethod | @as("Alarm") #Alarm | @as("CloudFormationStackRecord") #CloudFormationStackRecord | @as("ExportSnapshotRecord") #ExportSnapshotRecord | @as("RelationalDatabaseSnapshot") #RelationalDatabaseSnapshot | @as("RelationalDatabase") #RelationalDatabase | @as("DiskSnapshot") #DiskSnapshot | @as("Disk") #Disk | @as("LoadBalancerTlsCertificate") #LoadBalancerTlsCertificate | @as("LoadBalancer") #LoadBalancer | @as("PeeredVpc") #PeeredVpc | @as("Domain") #Domain | @as("InstanceSnapshot") #InstanceSnapshot | @as("KeyPair") #KeyPair | @as("StaticIp") #StaticIp | @as("Instance") #Instance | @as("ContainerService") #ContainerService]
type resourceName = string
type resourceArn = string
type requestFailureReason = string
type renewalStatusReason = string
type renewalStatus = [@as("Failed") #Failed | @as("Success") #Success | @as("PendingValidation") #PendingValidation | @as("PendingAutoRenewal") #PendingAutoRenewal]
type relationalDatabasePasswordVersion = [@as("PENDING") #PENDING | @as("PREVIOUS") #PREVIOUS | @as("CURRENT") #CURRENT]
type relationalDatabaseMetricName = [@as("NetworkTransmitThroughput") #NetworkTransmitThroughput | @as("NetworkReceiveThroughput") #NetworkReceiveThroughput | @as("FreeStorageSpace") #FreeStorageSpace | @as("DiskQueueDepth") #DiskQueueDepth | @as("DatabaseConnections") #DatabaseConnections | @as("CPUUtilization") #CPUUtilization]
type relationalDatabaseEngine = [@as("mysql") #Mysql]
type regionName = [@as("ap-northeast-2") #ApNortheast2 | @as("ap-northeast-1") #ApNortheast1 | @as("ap-southeast-2") #ApSoutheast2 | @as("ap-southeast-1") #ApSoutheast1 | @as("ap-south-1") #ApSouth1 | @as("ca-central-1") #CaCentral1 | @as("eu-central-1") #EuCentral1 | @as("eu-west-3") #EuWest3 | @as("eu-west-2") #EuWest2 | @as("eu-west-1") #EuWest1 | @as("us-west-2") #UsWest2 | @as("us-west-1") #UsWest1 | @as("us-east-2") #UsEast2 | @as("us-east-1") #UsEast1]
type recordState = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("Started") #Started]
type portState = [@as("closed") #Closed | @as("open") #Open]
type portInfoSourceType = [@as("CLOSED") #CLOSED | @as("NONE") #NONE | @as("INSTANCE") #INSTANCE | @as("DEFAULT") #DEFAULT]
type portAccessType = [@as("Private") #Private | @as("Public") #Public]
type port = int
type originProtocolPolicyEnum = [@as("https-only") #HttpsOnly | @as("http-only") #HttpOnly]
type operationType = [@as("DeleteContainerImage") #DeleteContainerImage | @as("RegisterContainerImage") #RegisterContainerImage | @as("CreateContainerServiceRegistryLogin") #CreateContainerServiceRegistryLogin | @as("CreateContainerServiceDeployment") #CreateContainerServiceDeployment | @as("DeleteContainerService") #DeleteContainerService | @as("UpdateContainerService") #UpdateContainerService | @as("CreateContainerService") #CreateContainerService | @as("DeleteCertificate") #DeleteCertificate | @as("CreateCertificate") #CreateCertificate | @as("SetIpAddressType") #SetIpAddressType | @as("UpdateDistributionBundle") #UpdateDistributionBundle | @as("DetachCertificateFromDistribution") #DetachCertificateFromDistribution | @as("AttachCertificateToDistribution") #AttachCertificateToDistribution | @as("ResetDistributionCache") #ResetDistributionCache | @as("DeleteDistribution") #DeleteDistribution | @as("UpdateDistribution") #UpdateDistribution | @as("CreateDistribution") #CreateDistribution | @as("DeleteContactMethod") #DeleteContactMethod | @as("SendContactMethodVerification") #SendContactMethodVerification | @as("GetContactMethods") #GetContactMethods | @as("CreateContactMethod") #CreateContactMethod | @as("TestAlarm") #TestAlarm | @as("DeleteAlarm") #DeleteAlarm | @as("GetAlarms") #GetAlarms | @as("PutAlarm") #PutAlarm | @as("DisableAddOn") #DisableAddOn | @as("EnableAddOn") #EnableAddOn | @as("StopRelationalDatabase") #StopRelationalDatabase | @as("RebootRelationalDatabase") #RebootRelationalDatabase | @as("StartRelationalDatabase") #StartRelationalDatabase | @as("UpdateRelationalDatabaseParameters") #UpdateRelationalDatabaseParameters | @as("DeleteRelationalDatabaseSnapshot") #DeleteRelationalDatabaseSnapshot | @as("CreateRelationalDatabaseSnapshot") #CreateRelationalDatabaseSnapshot | @as("CreateRelationalDatabaseFromSnapshot") #CreateRelationalDatabaseFromSnapshot | @as("DeleteRelationalDatabase") #DeleteRelationalDatabase | @as("UpdateRelationalDatabase") #UpdateRelationalDatabase | @as("CreateRelationalDatabase") #CreateRelationalDatabase | @as("CreateDiskFromSnapshot") #CreateDiskFromSnapshot | @as("DeleteDiskSnapshot") #DeleteDiskSnapshot | @as("CreateDiskSnapshot") #CreateDiskSnapshot | @as("DetachDisk") #DetachDisk | @as("AttachDisk") #AttachDisk | @as("DeleteDisk") #DeleteDisk | @as("CreateDisk") #CreateDisk | @as("AttachLoadBalancerTlsCertificate") #AttachLoadBalancerTlsCertificate | @as("DeleteLoadBalancerTlsCertificate") #DeleteLoadBalancerTlsCertificate | @as("CreateLoadBalancerTlsCertificate") #CreateLoadBalancerTlsCertificate | @as("UpdateLoadBalancerAttribute") #UpdateLoadBalancerAttribute | @as("DetachInstancesFromLoadBalancer") #DetachInstancesFromLoadBalancer | @as("AttachInstancesToLoadBalancer") #AttachInstancesToLoadBalancer | @as("DeleteLoadBalancer") #DeleteLoadBalancer | @as("CreateLoadBalancer") #CreateLoadBalancer | @as("CreateInstancesFromSnapshot") #CreateInstancesFromSnapshot | @as("DeleteInstanceSnapshot") #DeleteInstanceSnapshot | @as("CreateInstanceSnapshot") #CreateInstanceSnapshot | @as("DeleteDomain") #DeleteDomain | @as("CreateDomain") #CreateDomain | @as("DeleteDomainEntry") #DeleteDomainEntry | @as("UpdateDomainEntry") #UpdateDomainEntry | @as("DetachStaticIp") #DetachStaticIp | @as("AttachStaticIp") #AttachStaticIp | @as("ReleaseStaticIp") #ReleaseStaticIp | @as("AllocateStaticIp") #AllocateStaticIp | @as("CloseInstancePublicPorts") #CloseInstancePublicPorts | @as("PutInstancePublicPorts") #PutInstancePublicPorts | @as("OpenInstancePublicPorts") #OpenInstancePublicPorts | @as("RebootInstance") #RebootInstance | @as("StartInstance") #StartInstance | @as("StopInstance") #StopInstance | @as("CreateInstance") #CreateInstance | @as("DeleteInstance") #DeleteInstance | @as("DeleteKnownHostKeys") #DeleteKnownHostKeys]
type operationStatus = [@as("Succeeded") #Succeeded | @as("Completed") #Completed | @as("Failed") #Failed | @as("Started") #Started | @as("NotStarted") #NotStarted]
type nonEmptyString = string
type networkProtocol = [@as("icmp") #Icmp | @as("udp") #Udp | @as("all") #All | @as("tcp") #Tcp]
type metricUnit = [@as("None") #None | @as("Count/Second") #CountSecond | @as("Terabits/Second") #TerabitsSecond | @as("Gigabits/Second") #GigabitsSecond | @as("Megabits/Second") #MegabitsSecond | @as("Kilobits/Second") #KilobitsSecond | @as("Bits/Second") #BitsSecond | @as("Terabytes/Second") #TerabytesSecond | @as("Gigabytes/Second") #GigabytesSecond | @as("Megabytes/Second") #MegabytesSecond | @as("Kilobytes/Second") #KilobytesSecond | @as("Bytes/Second") #BytesSecond | @as("Count") #Count | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds]
type metricStatistic = [@as("SampleCount") #SampleCount | @as("Average") #Average | @as("Sum") #Sum | @as("Maximum") #Maximum | @as("Minimum") #Minimum]
type metricPeriod = int
type metricName = [@as("BurstCapacityPercentage") #BurstCapacityPercentage | @as("BurstCapacityTime") #BurstCapacityTime | @as("NetworkTransmitThroughput") #NetworkTransmitThroughput | @as("NetworkReceiveThroughput") #NetworkReceiveThroughput | @as("FreeStorageSpace") #FreeStorageSpace | @as("DiskQueueDepth") #DiskQueueDepth | @as("DatabaseConnections") #DatabaseConnections | @as("RequestCount") #RequestCount | @as("RejectedConnectionCount") #RejectedConnectionCount | @as("InstanceResponseTime") #InstanceResponseTime | @as("HTTPCode_Instance_5XX_Count") #HTTPCodeInstance5XXCount | @as("HTTPCode_Instance_4XX_Count") #HTTPCodeInstance4XXCount | @as("HTTPCode_Instance_3XX_Count") #HTTPCodeInstance3XXCount | @as("HTTPCode_Instance_2XX_Count") #HTTPCodeInstance2XXCount | @as("HTTPCode_LB_5XX_Count") #HTTPCodeLB5XXCount | @as("HTTPCode_LB_4XX_Count") #HTTPCodeLB4XXCount | @as("UnhealthyHostCount") #UnhealthyHostCount | @as("HealthyHostCount") #HealthyHostCount | @as("ClientTLSNegotiationErrorCount") #ClientTLSNegotiationErrorCount | @as("StatusCheckFailed_System") #StatusCheckFailedSystem | @as("StatusCheckFailed_Instance") #StatusCheckFailedInstance | @as("StatusCheckFailed") #StatusCheckFailed | @as("NetworkOut") #NetworkOut | @as("NetworkIn") #NetworkIn | @as("CPUUtilization") #CPUUtilization]
type loadBalancerTlsCertificateStatus = [@as("UNKNOWN") #UNKNOWN | @as("FAILED") #FAILED | @as("REVOKED") #REVOKED | @as("VALIDATION_TIMED_OUT") #VALIDATIONTIMEDOUT | @as("EXPIRED") #EXPIRED | @as("INACTIVE") #INACTIVE | @as("ISSUED") #ISSUED | @as("PENDING_VALIDATION") #PENDINGVALIDATION]
type loadBalancerTlsCertificateRevocationReason = [@as("A_A_COMPROMISE") #AACOMPROMISE | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGEWITHDRAWN | @as("REMOVE_FROM_CRL") #REMOVEFROMCRL | @as("CERTIFICATE_HOLD") #CERTIFICATEHOLD | @as("CESSATION_OF_OPERATION") #CESSATIONOFOPERATION | @as("SUPERCEDED") #SUPERCEDED | @as("AFFILIATION_CHANGED") #AFFILIATIONCHANGED | @as("CA_COMPROMISE") #CACOMPROMISE | @as("KEY_COMPROMISE") #KEYCOMPROMISE | @as("UNSPECIFIED") #UNSPECIFIED]
type loadBalancerTlsCertificateRenewalStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDINGVALIDATION | @as("PENDING_AUTO_RENEWAL") #PENDINGAUTORENEWAL]
type loadBalancerTlsCertificateFailureReason = [@as("OTHER") #OTHER | @as("INVALID_PUBLIC_DOMAIN") #INVALIDPUBLICDOMAIN | @as("DOMAIN_NOT_ALLOWED") #DOMAINNOTALLOWED | @as("ADDITIONAL_VERIFICATION_REQUIRED") #ADDITIONALVERIFICATIONREQUIRED | @as("NO_AVAILABLE_CONTACTS") #NOAVAILABLECONTACTS]
type loadBalancerTlsCertificateDomainStatus = [@as("SUCCESS") #SUCCESS | @as("FAILED") #FAILED | @as("PENDING_VALIDATION") #PENDINGVALIDATION]
type loadBalancerState = [@as("unknown") #Unknown | @as("failed") #Failed | @as("active_impaired") #ActiveImpaired | @as("provisioning") #Provisioning | @as("active") #Active]
type loadBalancerProtocol = [@as("HTTP") #HTTP | @as("HTTP_HTTPS") #HTTPHTTPS]
type loadBalancerMetricName = [@as("RequestCount") #RequestCount | @as("RejectedConnectionCount") #RejectedConnectionCount | @as("InstanceResponseTime") #InstanceResponseTime | @as("HTTPCode_Instance_5XX_Count") #HTTPCodeInstance5XXCount | @as("HTTPCode_Instance_4XX_Count") #HTTPCodeInstance4XXCount | @as("HTTPCode_Instance_3XX_Count") #HTTPCodeInstance3XXCount | @as("HTTPCode_Instance_2XX_Count") #HTTPCodeInstance2XXCount | @as("HTTPCode_LB_5XX_Count") #HTTPCodeLB5XXCount | @as("HTTPCode_LB_4XX_Count") #HTTPCodeLB4XXCount | @as("UnhealthyHostCount") #UnhealthyHostCount | @as("HealthyHostCount") #HealthyHostCount | @as("ClientTLSNegotiationErrorCount") #ClientTLSNegotiationErrorCount]
type loadBalancerAttributeName = [@as("SessionStickiness_LB_CookieDurationSeconds") #SessionStickinessLBCookieDurationSeconds | @as("SessionStickinessEnabled") #SessionStickinessEnabled | @as("HealthCheckPath") #HealthCheckPath]
type keyAlgorithm = string
type issuerCA = string
type isoDate = Js.Date.t;
type ipv6Address = string
type ipAddressType = [@as("ipv4") #Ipv4 | @as("dualstack") #Dualstack]
type ipAddress = string
type instanceSnapshotState = [@as("available") #Available | @as("error") #Error | @as("pending") #Pending]
type instancePlatform = [@as("WINDOWS") #WINDOWS | @as("LINUX_UNIX") #LINUXUNIX]
type instanceMetricName = [@as("BurstCapacityPercentage") #BurstCapacityPercentage | @as("BurstCapacityTime") #BurstCapacityTime | @as("StatusCheckFailed_System") #StatusCheckFailedSystem | @as("StatusCheckFailed_Instance") #StatusCheckFailedInstance | @as("StatusCheckFailed") #StatusCheckFailed | @as("NetworkOut") #NetworkOut | @as("NetworkIn") #NetworkIn | @as("CPUUtilization") #CPUUtilization]
type instanceHealthState = [@as("unavailable") #Unavailable | @as("draining") #Draining | @as("unused") #Unused | @as("unhealthy") #Unhealthy | @as("healthy") #Healthy | @as("initial") #Initial]
type instanceHealthReason = [@as("Instance.IpUnusable") #InstanceIpUnusable | @as("Instance.InvalidState") #InstanceInvalidState | @as("Instance.DeregistrationInProgress") #InstanceDeregistrationInProgress | @as("Instance.NotInUse") #InstanceNotInUse | @as("Instance.NotRegistered") #InstanceNotRegistered | @as("Instance.FailedHealthChecks") #InstanceFailedHealthChecks | @as("Instance.Timeout") #InstanceTimeout | @as("Instance.ResponseCodeMismatch") #InstanceResponseCodeMismatch | @as("Lb.InternalError") #LbInternalError | @as("Lb.InitialHealthChecking") #LbInitialHealthChecking | @as("Lb.RegistrationInProgress") #LbRegistrationInProgress]
type instanceAccessProtocol = [@as("rdp") #Rdp | @as("ssh") #Ssh]
type includeCertificateDetails = bool
type inUseResourceCount = int
type headerEnum = [@as("Referer") #Referer | @as("Origin") #Origin | @as("Host") #Host | @as("CloudFront-Viewer-Country") #CloudFrontViewerCountry | @as("CloudFront-Is-Tablet-Viewer") #CloudFrontIsTabletViewer | @as("CloudFront-Is-SmartTV-Viewer") #CloudFrontIsSmartTVViewer | @as("CloudFront-Is-Mobile-Viewer") #CloudFrontIsMobileViewer | @as("CloudFront-Is-Desktop-Viewer") #CloudFrontIsDesktopViewer | @as("CloudFront-Forwarded-Proto") #CloudFrontForwardedProto | @as("Authorization") #Authorization | @as("Accept-Language") #AcceptLanguage | @as("Accept-Encoding") #AcceptEncoding | @as("Accept-Datetime") #AcceptDatetime | @as("Accept-Charset") #AcceptCharset | @as("Accept") #Accept]
type forwardValues = [@as("all") #All | @as("allow-list") #AllowList | @as("none") #None]
type exportSnapshotRecordSourceType = [@as("DiskSnapshot") #DiskSnapshot | @as("InstanceSnapshot") #InstanceSnapshot]
type eligibleToRenew = string
type domainName = string
type domainEntryType = string
type domainEntryOptionsKeys = string
type distributionMetricName = [@as("Http5xxErrorRate") #Http5xxErrorRate | @as("Http4xxErrorRate") #Http4xxErrorRate | @as("TotalErrorRate") #TotalErrorRate | @as("BytesUploaded") #BytesUploaded | @as("BytesDownloaded") #BytesDownloaded | @as("Requests") #Requests]
type diskState = [@as("unknown") #Unknown | @as("in-use") #InUse | @as("available") #Available | @as("error") #Error | @as("pending") #Pending]
type diskSnapshotState = [@as("unknown") #Unknown | @as("error") #Error | @as("completed") #Completed | @as("pending") #Pending]
type containerServiceStateDetailCode = [@as("UNKNOWN_ERROR") #UNKNOWNERROR | @as("CERTIFICATE_LIMIT_EXCEEDED") #CERTIFICATELIMITEXCEEDED | @as("ACTIVATING_DEPLOYMENT") #ACTIVATINGDEPLOYMENT | @as("EVALUATING_HEALTH_CHECK") #EVALUATINGHEALTHCHECK | @as("CREATING_DEPLOYMENT") #CREATINGDEPLOYMENT | @as("PROVISIONING_SERVICE") #PROVISIONINGSERVICE | @as("PROVISIONING_CERTIFICATE") #PROVISIONINGCERTIFICATE | @as("CREATING_NETWORK_INFRASTRUCTURE") #CREATINGNETWORKINFRASTRUCTURE | @as("CREATING_SYSTEM_RESOURCES") #CREATINGSYSTEMRESOURCES]
type containerServiceState = [@as("DEPLOYING") #DEPLOYING | @as("DISABLED") #DISABLED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("READY") #READY | @as("PENDING") #PENDING]
type containerServiceScale = int
type containerServiceProtocol = [@as("UDP") #UDP | @as("TCP") #TCP | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type containerServicePowerName = [@as("xlarge") #Xlarge | @as("large") #Large | @as("medium") #Medium | @as("small") #Small | @as("micro") #Micro | @as("nano") #Nano]
type containerServiceName = string
type containerServiceMetricName = [@as("MemoryUtilization") #MemoryUtilization | @as("CPUUtilization") #CPUUtilization]
type containerServiceDeploymentState = [@as("FAILED") #FAILED | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE | @as("ACTIVATING") #ACTIVATING]
type containerName = string
type containerLabel = string
type contactProtocol = [@as("SMS") #SMS | @as("Email") #Email]
type contactMethodVerificationProtocol = [@as("Email") #Email]
type contactMethodStatus = [@as("Invalid") #Invalid | @as("Valid") #Valid | @as("PendingVerification") #PendingVerification]
type comparisonOperator = [@as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold | @as("LessThanThreshold") #LessThanThreshold | @as("GreaterThanThreshold") #GreaterThanThreshold | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold]
type cloudFormationStackRecordSourceType = [@as("ExportSnapshotRecord") #ExportSnapshotRecord]
type certificateStatus = [@as("FAILED") #FAILED | @as("REVOKED") #REVOKED | @as("VALIDATION_TIMED_OUT") #VALIDATIONTIMEDOUT | @as("EXPIRED") #EXPIRED | @as("INACTIVE") #INACTIVE | @as("ISSUED") #ISSUED | @as("PENDING_VALIDATION") #PENDINGVALIDATION]
type certificateName = string
type blueprintType = [@as("app") #App | @as("os") #Os]
type behaviorEnum = [@as("cache") #Cache | @as("dont-cache") #DontCache]
type base64 = string
type autoSnapshotStatus = [@as("NotFound") #NotFound | @as("InProgress") #InProgress | @as("Failed") #Failed | @as("Success") #Success]
type autoSnapshotDate = string
type alarmState = [@as("INSUFFICIENT_DATA") #INSUFFICIENTDATA | @as("ALARM") #ALARM | @as("OK") #OK]
type addOnType = [@as("AutoSnapshot") #AutoSnapshot]
type accessDirection = [@as("outbound") #Outbound | @as("inbound") #Inbound]
type tagKeyList = array<tagKey>
type tag = {
value: option<tagValue>,
key: option<tagKey>
}
type subjectAlternativeNameList = array<domainName>
type stringList = array<string_>
type resourceRecord = {
value: option<string_>,
@as("type") type_: option<string_>,
name: option<string_>
}
type resourceNameList = array<resourceName>
type resourceLocation = {
regionName: option<regionName>,
availabilityZone: option<string_>
}
type relationalDatabaseParameter = {
parameterValue: option<string_>,
parameterName: option<string_>,
isModifiable: option<boolean_>,
description: option<string_>,
dataType: option<string_>,
applyType: option<string_>,
applyMethod: option<string_>,
allowedValues: option<string_>
}
type relationalDatabaseHardware = {
ramSizeInGb: option<float_>,
diskSizeInGb: option<integer_>,
cpuCount: option<integer_>
}
type relationalDatabaseEndpoint = {
address: option<nonEmptyString>,
port: option<integer_>
}
type relationalDatabaseBundle = {
isActive: option<boolean_>,
isEncrypted: option<boolean_>,
cpuCount: option<integer_>,
transferPerMonthInGb: option<integer_>,
diskSizeInGb: option<integer_>,
ramSizeInGb: option<float_>,
price: option<float_>,
name: option<string_>,
bundleId: option<string_>
}
type relationalDatabaseBlueprint = {
isEngineDefault: option<boolean_>,
engineVersionDescription: option<string_>,
engineDescription: option<string_>,
engineVersion: option<string_>,
engine: option<relationalDatabaseEngine>,
blueprintId: option<string_>
}
type portMap = Js.Dict.t< containerServiceProtocol>
type portList = array<port>
type pendingModifiedRelationalDatabaseValues = {
backupRetentionEnabled: option<boolean_>,
engineVersion: option<string_>,
masterUserPassword: option<string_>
}
type pendingMaintenanceAction = {
currentApplyDate: option<isoDate>,
description: option<nonEmptyString>,
action: option<nonEmptyString>
}
type passwordData = {
keyPairName: option<resourceName>,
ciphertext: option<string_>
}
type origin = {
protocolPolicy: option<originProtocolPolicyEnum>,
regionName: option<regionName>,
resourceType: option<resourceType>,
name: option<resourceName>
}
type notificationTriggerList = array<alarmState>
type monthlyTransfer = {
gbPerMonthAllocated: option<integer_>
}
type monitoredResourceInfo = {
resourceType: option<resourceType>,
name: option<resourceName>,
arn: option<resourceArn>
}
type metricStatisticList = array<metricStatistic>
type metricDatapoint = {
@as("unit") unit_: option<metricUnit>,
@as("timestamp") timestamp_: option<timestamp_>,
sum: option<double>,
sampleCount: option<double>,
minimum: option<double>,
maximum: option<double>,
average: option<double>
}
type logEvent = {
message: option<string_>,
createdAt: option<isoDate>
}
type loadBalancerTlsCertificateSummary = {
isAttached: option<boolean_>,
name: option<resourceName>
}
type loadBalancerTlsCertificateDomainValidationRecord = {
domainName: option<domainName>,
validationStatus: option<loadBalancerTlsCertificateDomainStatus>,
value: option<nonEmptyString>,
@as("type") type_: option<nonEmptyString>,
name: option<nonEmptyString>
}
type loadBalancerTlsCertificateDomainValidationOption = {
validationStatus: option<loadBalancerTlsCertificateDomainStatus>,
domainName: option<domainName>
}
type loadBalancerConfigurationOptions = Js.Dict.t< string_>
type ipv6AddressList = array<ipv6Address>
type instanceState = {
name: option<string_>,
code: option<integer_>
}
type instancePlatformList = array<instancePlatform>
type instanceHealthSummary = {
instanceHealthReason: option<instanceHealthReason>,
instanceHealth: option<instanceHealthState>,
instanceName: option<resourceName>
}
type instanceEntry = {
availabilityZone: string_,
userData: option<string_>,
portInfoSource: portInfoSourceType,
instanceType: nonEmptyString,
sourceName: resourceName
}
type inputOrigin = {
protocolPolicy: option<originProtocolPolicyEnum>,
regionName: option<regionName>,
name: option<resourceName>
}
type hostKeyAttributes = {
notValidAfter: option<isoDate>,
notValidBefore: option<isoDate>,
fingerprintSHA256: option<string_>,
fingerprintSHA1: option<string_>,
witnessedAt: option<isoDate>,
publicKey: option<string_>,
algorithm: option<string_>
}
type headerForwardList = array<headerEnum>
type environment = Js.Dict.t< string_>
type domainNameList = array<domainName>
type domainEntryOptions = Js.Dict.t< string_>
type distributionBundle = {
isActive: option<boolean_>,
transferPerMonthInGb: option<integer_>,
price: option<float_>,
name: option<string_>,
bundleId: option<string_>
}
type diskSnapshotInfo = {
sizeInGb: option<integer_>
}
type diskMap = {
newDiskName: option<resourceName>,
originalDiskPath: option<nonEmptyString>
}
type diskInfo = {
isSystemDisk: option<boolean_>,
sizeInGb: option<integer_>,
path: option<nonEmptyString>,
name: option<string_>
}
type destinationInfo = {
service: option<nonEmptyString>,
id: option<nonEmptyString>
}
type containerServiceStateDetail = {
message: option<string_>,
code: option<containerServiceStateDetailCode>
}
type containerServiceRegistryLogin = {
registry: option<string_>,
expiresAt: option<isoDate>,
password: option<string_>,
username: option<string_>
}
type containerServicePublicDomainsList = array<string_>
type containerServicePower = {
isActive: option<boolean_>,
name: option<string_>,
ramSizeInGb: option<float_>,
cpuCount: option<float_>,
price: option<float_>,
powerId: option<string_>
}
type containerServiceMetadataEntry = Js.Dict.t< string_>
type containerServiceLogEvent = {
message: option<string_>,
createdAt: option<isoDate>
}
type containerServiceHealthCheckConfig = {
successCodes: option<string_>,
path: option<string_>,
intervalSeconds: option<integer_>,
timeoutSeconds: option<integer_>,
unhealthyThreshold: option<integer_>,
healthyThreshold: option<integer_>
}
type containerImage = {
createdAt: option<isoDate>,
digest: option<string_>,
image: option<string_>
}
type contactProtocolsList = array<contactProtocol>
type cloudFormationStackRecordSourceInfo = {
arn: option<nonEmptyString>,
name: option<nonEmptyString>,
resourceType: option<cloudFormationStackRecordSourceType>
}
type certificateStatusList = array<certificateStatus>
type cacheBehaviorPerPath = {
behavior: option<behaviorEnum>,
path: option<string_>
}
type cacheBehavior = {
behavior: option<behaviorEnum>
}
type blueprint = {
platform: option<instancePlatform>,
licenseUrl: option<string_>,
productUrl: option<string_>,
versionCode: option<string_>,
version: option<string_>,
minPower: option<integer_>,
isActive: option<boolean_>,
description: option<string_>,
@as("type") type_: option<blueprintType>,
group: option<nonEmptyString>,
name: option<resourceName>,
blueprintId: option<nonEmptyString>
}
type availabilityZone = {
state: option<nonEmptyString>,
zoneName: option<nonEmptyString>
}
type autoSnapshotAddOnRequest = {
snapshotTimeOfDay: option<timeOfDay>
}
type attachedDisk = {
sizeInGb: option<integer_>,
path: option<string_>
}
type addOn = {
nextSnapshotTimeOfDay: option<timeOfDay>,
snapshotTimeOfDay: option<timeOfDay>,
status: option<string_>,
name: option<string_>
}
type tagList_ = array<tag>
type staticIp = {
isAttached: option<boolean_>,
attachedTo: option<resourceName>,
ipAddress: option<ipAddress>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type relationalDatabaseParameterList = array<relationalDatabaseParameter>
type relationalDatabaseEvent = {
eventCategories: option<stringList>,
message: option<string_>,
createdAt: option<isoDate>,
resource: option<resourceName>
}
type relationalDatabaseBundleList = array<relationalDatabaseBundle>
type relationalDatabaseBlueprintList = array<relationalDatabaseBlueprint>
type queryStringObject = {
queryStringsAllowList: option<stringList>,
option: option<boolean_>
}
type portInfo = {
cidrListAliases: option<stringList>,
ipv6Cidrs: option<stringList>,
cidrs: option<stringList>,
protocol: option<networkProtocol>,
toPort: option<port>,
fromPort: option<port>
}
type pendingMaintenanceActionList = array<pendingMaintenanceAction>
type operation = {
errorDetails: option<string_>,
errorCode: option<string_>,
statusChangedAt: option<isoDate>,
status: option<operationStatus>,
operationType: option<operationType>,
operationDetails: option<string_>,
isTerminal: option<boolean_>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
resourceType: option<resourceType>,
resourceName: option<resourceName>,
id: option<nonEmptyString>
}
type metricDatapointList = array<metricDatapoint>
type logEventList = array<logEvent>
type loadBalancerTlsCertificateSummaryList = array<loadBalancerTlsCertificateSummary>
type loadBalancerTlsCertificateDomainValidationRecordList = array<loadBalancerTlsCertificateDomainValidationRecord>
type loadBalancerTlsCertificateDomainValidationOptionList = array<loadBalancerTlsCertificateDomainValidationOption>
type instancePortState = {
cidrListAliases: option<stringList>,
ipv6Cidrs: option<stringList>,
cidrs: option<stringList>,
state: option<portState>,
protocol: option<networkProtocol>,
toPort: option<port>,
fromPort: option<port>
}
type instancePortInfo = {
cidrListAliases: option<stringList>,
ipv6Cidrs: option<stringList>,
cidrs: option<stringList>,
accessDirection: option<accessDirection>,
commonName: option<string_>,
accessType: option<portAccessType>,
accessFrom: option<string_>,
protocol: option<networkProtocol>,
toPort: option<port>,
fromPort: option<port>
}
type instanceHealthSummaryList = array<instanceHealthSummary>
type instanceEntryList = array<instanceEntry>
type hostKeysList = array<hostKeyAttributes>
type headerObject = {
headersAllowList: option<headerForwardList>,
option: option<forwardValues>
}
type endpointRequest = {
healthCheck: option<containerServiceHealthCheckConfig>,
containerPort: integer_,
containerName: string_
}
type domainValidationRecord = {
resourceRecord: option<resourceRecord>,
domainName: option<domainName>
}
type domainEntry = {
options: option<domainEntryOptions>,
@as("type") type_: option<domainEntryType>,
isAlias: option<boolean_>,
target: option<string_>,
name: option<domainName>,
id: option<nonEmptyString>
}
type distributionBundleList = array<distributionBundle>
type diskMapList = array<diskMap>
type diskInfoList = array<diskInfo>
type cookieObject = {
cookiesAllowList: option<stringList>,
option: option<forwardValues>
}
type containerServicePublicDomains = Js.Dict.t< containerServicePublicDomainsList>
type containerServicePowerList = array<containerServicePower>
type containerServiceMetadataEntryList = array<containerServiceMetadataEntry>
type containerServiceLogEventList = array<containerServiceLogEvent>
type containerServiceEndpoint = {
healthCheck: option<containerServiceHealthCheckConfig>,
containerPort: option<integer_>,
containerName: option<string_>
}
type containerImageList = array<containerImage>
type container = {
ports: option<portMap>,
environment: option<environment>,
command: option<stringList>,
image: option<string_>
}
type contactMethod = {
supportCode: option<string_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
arn: option<nonEmptyString>,
name: option<resourceName>,
protocol: option<contactProtocol>,
status: option<contactMethodStatus>,
contactEndpoint: option<nonEmptyString>
}
type cloudFormationStackRecordSourceInfoList = array<cloudFormationStackRecordSourceInfo>
type cacheBehaviorList = array<cacheBehaviorPerPath>
type bundle = {
supportedPlatforms: option<instancePlatformList>,
transferPerMonthInGb: option<integer_>,
ramSizeInGb: option<float_>,
power: option<integer_>,
name: option<string_>,
isActive: option<boolean_>,
instanceType: option<string_>,
bundleId: option<nonEmptyString>,
diskSizeInGb: option<integer_>,
cpuCount: option<integer_>,
price: option<float_>
}
type blueprintList = array<blueprint>
type availabilityZoneList = array<availabilityZone>
type attachedDiskList = array<attachedDisk>
type alarm = {
notificationEnabled: option<boolean_>,
notificationTriggers: option<notificationTriggerList>,
contactProtocols: option<contactProtocolsList>,
@as("unit") unit_: option<metricUnit>,
state: option<alarmState>,
metricName: option<metricName>,
statistic: option<metricStatistic>,
treatMissingData: option<treatMissingData>,
datapointsToAlarm: option<integer_>,
threshold: option<double>,
period: option<metricPeriod>,
evaluationPeriods: option<integer_>,
comparisonOperator: option<comparisonOperator>,
monitoredResourceInfo: option<monitoredResourceInfo>,
supportCode: option<string_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type addOnRequest = {
autoSnapshotAddOnRequest: option<autoSnapshotAddOnRequest>,
addOnType: addOnType
}
type addOnList = array<addOn>
type staticIpList = array<staticIp>
type relationalDatabaseSnapshot = {
fromRelationalDatabaseBlueprintId: option<string_>,
fromRelationalDatabaseBundleId: option<string_>,
fromRelationalDatabaseArn: option<nonEmptyString>,
fromRelationalDatabaseName: option<nonEmptyString>,
state: option<nonEmptyString>,
sizeInGb: option<integer_>,
engineVersion: option<nonEmptyString>,
engine: option<nonEmptyString>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type relationalDatabaseEventList = array<relationalDatabaseEvent>
type relationalDatabase = {
caCertificateIdentifier: option<string_>,
pendingMaintenanceActions: option<pendingMaintenanceActionList>,
masterEndpoint: option<relationalDatabaseEndpoint>,
publiclyAccessible: option<boolean_>,
preferredMaintenanceWindow: option<nonEmptyString>,
preferredBackupWindow: option<nonEmptyString>,
parameterApplyStatus: option<nonEmptyString>,
masterUsername: option<nonEmptyString>,
latestRestorableTime: option<isoDate>,
engineVersion: option<nonEmptyString>,
engine: option<nonEmptyString>,
pendingModifiedValues: option<pendingModifiedRelationalDatabaseValues>,
backupRetentionEnabled: option<boolean_>,
secondaryAvailabilityZone: option<string_>,
state: option<nonEmptyString>,
hardware: option<relationalDatabaseHardware>,
masterDatabaseName: option<string_>,
relationalDatabaseBundleId: option<nonEmptyString>,
relationalDatabaseBlueprintId: option<nonEmptyString>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type region = {
relationalDatabaseAvailabilityZones: option<availabilityZoneList>,
availabilityZones: option<availabilityZoneList>,
name: option<regionName>,
displayName: option<string_>,
description: option<string_>,
continentCode: option<string_>
}
type portInfoList = array<portInfo>
type operationList = array<operation>
type loadBalancerTlsCertificateRenewalSummary = {
domainValidationOptions: option<loadBalancerTlsCertificateDomainValidationOptionList>,
renewalStatus: option<loadBalancerTlsCertificateRenewalStatus>
}
type loadBalancer = {
ipAddressType: option<ipAddressType>,
configurationOptions: option<loadBalancerConfigurationOptions>,
tlsCertificateSummaries: option<loadBalancerTlsCertificateSummaryList>,
instanceHealthSummary: option<instanceHealthSummaryList>,
instancePort: option<integer_>,
healthCheckPath: option<nonEmptyString>,
publicPorts: option<portList>,
protocol: option<loadBalancerProtocol>,
state: option<loadBalancerState>,
dnsName: option<nonEmptyString>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type keyPair = {
fingerprint: option<base64>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type instanceSnapshotInfo = {
fromDiskInfo: option<diskInfoList>,
fromBlueprintId: option<nonEmptyString>,
fromBundleId: option<nonEmptyString>
}
type instancePortStateList = array<instancePortState>
type instancePortInfoList = array<instancePortInfo>
type instanceAccessDetails = {
hostKeys: option<hostKeysList>,
username: option<string_>,
instanceName: option<resourceName>,
protocol: option<instanceAccessProtocol>,
privateKey: option<string_>,
passwordData: option<passwordData>,
password: option<string_>,
ipAddress: option<ipAddress>,
expiresAt: option<isoDate>,
certKey: option<string_>
}
type domainValidationRecordList = array<domainValidationRecord>
type domainEntryList = array<domainEntry>
type diskSnapshot = {
isFromAutoSnapshot: option<boolean_>,
fromInstanceArn: option<nonEmptyString>,
fromInstanceName: option<resourceName>,
fromDiskArn: option<nonEmptyString>,
fromDiskName: option<resourceName>,
progress: option<string_>,
state: option<diskSnapshotState>,
sizeInGb: option<integer_>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type disk = {
gbInUse: option<integer_>,
attachmentState: option<string_>,
isAttached: option<boolean_>,
attachedTo: option<resourceName>,
state: option<diskState>,
path: option<string_>,
iops: option<integer_>,
isSystemDisk: option<boolean_>,
sizeInGb: option<integer_>,
addOns: option<addOnList>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type containerMap = Js.Dict.t< container>
type contactMethodsList = array<contactMethod>
type cloudFormationStackRecord = {
destinationInfo: option<destinationInfo>,
sourceInfo: option<cloudFormationStackRecordSourceInfoList>,
state: option<recordState>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type cacheSettings = {
forwardedQueryStrings: option<queryStringObject>,
forwardedHeaders: option<headerObject>,
forwardedCookies: option<cookieObject>,
cachedHTTPMethods: option<nonEmptyString>,
allowedHTTPMethods: option<nonEmptyString>,
maximumTTL: option<long>,
minimumTTL: option<long>,
defaultTTL: option<long>
}
type bundleList = array<bundle>
type autoSnapshotDetails = {
fromAttachedDisks: option<attachedDiskList>,
status: option<autoSnapshotStatus>,
createdAt: option<isoDate>,
date: option<string_>
}
type attachedDiskMap = Js.Dict.t< diskMapList>
type alarmsList = array<alarm>
type addOnRequestList = array<addOnRequest>
type renewalSummary = {
updatedAt: option<isoDate>,
renewalStatusReason: option<renewalStatusReason>,
renewalStatus: option<renewalStatus>,
domainValidationRecords: option<domainValidationRecordList>
}
type relationalDatabaseSnapshotList = array<relationalDatabaseSnapshot>
type relationalDatabaseList = array<relationalDatabase>
type regionList = array<region>
type loadBalancerTlsCertificate = {
subjectAlternativeNames: option<stringList>,
subject: option<nonEmptyString>,
signatureAlgorithm: option<nonEmptyString>,
serial: option<nonEmptyString>,
revokedAt: option<isoDate>,
revocationReason: option<loadBalancerTlsCertificateRevocationReason>,
renewalSummary: option<loadBalancerTlsCertificateRenewalSummary>,
notBefore: option<isoDate>,
notAfter: option<isoDate>,
keyAlgorithm: option<nonEmptyString>,
issuer: option<nonEmptyString>,
issuedAt: option<isoDate>,
failureReason: option<loadBalancerTlsCertificateFailureReason>,
domainValidationRecords: option<loadBalancerTlsCertificateDomainValidationRecordList>,
domainName: option<domainName>,
status: option<loadBalancerTlsCertificateStatus>,
isAttached: option<boolean_>,
loadBalancerName: option<resourceName>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type loadBalancerList = array<loadBalancer>
type lightsailDistribution = {
tags: option<tagList_>,
ipAddressType: option<ipAddressType>,
ableToUpdateBundle: option<boolean_>,
cacheBehaviors: option<cacheBehaviorList>,
cacheBehaviorSettings: option<cacheSettings>,
defaultCacheBehavior: option<cacheBehavior>,
originPublicDNS: option<string_>,
origin: option<origin>,
certificateName: option<resourceName>,
bundleId: option<string_>,
domainName: option<string_>,
isEnabled: option<boolean_>,
status: option<string_>,
alternativeDomainNames: option<stringList>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type keyPairList = array<keyPair>
type instanceNetworking = {
ports: option<instancePortInfoList>,
monthlyTransfer: option<monthlyTransfer>
}
type exportSnapshotRecordSourceInfo = {
diskSnapshotInfo: option<diskSnapshotInfo>,
instanceSnapshotInfo: option<instanceSnapshotInfo>,
fromResourceArn: option<nonEmptyString>,
fromResourceName: option<nonEmptyString>,
arn: option<nonEmptyString>,
name: option<nonEmptyString>,
createdAt: option<isoDate>,
resourceType: option<exportSnapshotRecordSourceType>
}
type domain = {
domainEntries: option<domainEntryList>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type diskSnapshotList = array<diskSnapshot>
type diskList = array<disk>
type containerServiceDeploymentRequest = {
publicEndpoint: option<endpointRequest>,
containers: option<containerMap>
}
type containerServiceDeployment = {
createdAt: option<isoDate>,
publicEndpoint: option<containerServiceEndpoint>,
containers: option<containerMap>,
state: option<containerServiceDeploymentState>,
version: option<integer_>
}
type cloudFormationStackRecordList = array<cloudFormationStackRecord>
type autoSnapshotDetailsList = array<autoSnapshotDetails>
type loadBalancerTlsCertificateList = array<loadBalancerTlsCertificate>
type instanceSnapshot = {
sizeInGb: option<integer_>,
isFromAutoSnapshot: option<boolean_>,
fromBundleId: option<string_>,
fromBlueprintId: option<string_>,
fromInstanceArn: option<nonEmptyString>,
fromInstanceName: option<resourceName>,
fromAttachedDisks: option<diskList>,
progress: option<string_>,
state: option<instanceSnapshotState>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type instanceHardware = {
ramSizeInGb: option<float_>,
disks: option<diskList>,
cpuCount: option<integer_>
}
type exportSnapshotRecord = {
destinationInfo: option<destinationInfo>,
sourceInfo: option<exportSnapshotRecordSourceInfo>,
state: option<recordState>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type domainList = array<domain>
type distributionList = array<lightsailDistribution>
type containerServiceDeploymentList = array<containerServiceDeployment>
type containerService = {
url: option<string_>,
publicDomainNames: option<containerServicePublicDomains>,
privateDomainName: option<string_>,
principalArn: option<string_>,
isDisabled: option<boolean_>,
nextDeployment: option<containerServiceDeployment>,
currentDeployment: option<containerServiceDeployment>,
scale: option<containerServiceScale>,
stateDetail: option<containerServiceStateDetail>,
state: option<containerServiceState>,
powerId: option<string_>,
power: option<containerServicePowerName>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
arn: option<nonEmptyString>,
containerServiceName: option<containerServiceName>
}
type certificate = {
supportCode: option<string_>,
tags: option<tagList_>,
revocationReason: option<revocationReason>,
revokedAt: option<isoDate>,
renewalSummary: option<renewalSummary>,
eligibleToRenew: option<eligibleToRenew>,
notAfter: option<isoDate>,
notBefore: option<isoDate>,
issuerCA: option<issuerCA>,
issuedAt: option<isoDate>,
createdAt: option<isoDate>,
keyAlgorithm: option<keyAlgorithm>,
inUseResourceCount: option<inUseResourceCount>,
requestFailureReason: option<requestFailureReason>,
domainValidationRecords: option<domainValidationRecordList>,
subjectAlternativeNames: option<subjectAlternativeNameList>,
serialNumber: option<serialNumber>,
status: option<certificateStatus>,
domainName: option<domainName>,
name: option<certificateName>,
arn: option<nonEmptyString>
}
type instanceSnapshotList = array<instanceSnapshot>
type instance = {
sshKeyName: option<resourceName>,
username: option<nonEmptyString>,
state: option<instanceState>,
networking: option<instanceNetworking>,
hardware: option<instanceHardware>,
ipAddressType: option<ipAddressType>,
ipv6Addresses: option<ipv6AddressList>,
publicIpAddress: option<ipAddress>,
privateIpAddress: option<ipAddress>,
isStaticIp: option<boolean_>,
addOns: option<addOnList>,
bundleId: option<nonEmptyString>,
blueprintName: option<nonEmptyString>,
blueprintId: option<nonEmptyString>,
tags: option<tagList_>,
resourceType: option<resourceType>,
location: option<resourceLocation>,
createdAt: option<isoDate>,
supportCode: option<string_>,
arn: option<nonEmptyString>,
name: option<resourceName>
}
type exportSnapshotRecordList = array<exportSnapshotRecord>
type containerServiceList = array<containerService>
type certificateSummary = {
tags: option<tagList_>,
certificateDetail: option<certificate>,
domainName: option<domainName>,
certificateName: option<certificateName>,
certificateArn: option<nonEmptyString>
}
type instanceList = array<instance>
type certificateSummaryList = array<certificateSummary>
type awsServiceClient;
@module("@aws-sdk/client-lightsail") @new external createClient: unit => awsServiceClient = "LightsailClient";
module IsVpcPeered = {
  type t;
  type request = unit
  type response = {
isPeered: option<boolean_>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "IsVpcPeeredCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseMasterUserPassword = {
  type t;
  type request = {
passwordVersion: option<relationalDatabasePasswordVersion>,
relationalDatabaseName: resourceName
}
  type response = {
createdAt: option<isoDate>,
masterUserPassword: option<sensitiveString>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseMasterUserPasswordCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDistributionLatestCacheReset = {
  type t;
  type request = {
distributionName: option<resourceName>
}
  type response = {
createTime: option<isoDate>,
status: option<string_>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionLatestCacheResetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DownloadDefaultKeyPair = {
  type t;
  type request = unit
  type response = {
privateKeyBase64: option<base64>,
publicKeyBase64: option<base64>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DownloadDefaultKeyPairCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteContainerService = {
  type t;
  type request = {
serviceName: containerServiceName
}
  type response = unit
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteContainerServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteContainerImage = {
  type t;
  type request = {
image: string_,
serviceName: containerServiceName
}
  type response = unit
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteContainerImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RegisterContainerImage = {
  type t;
  type request = {
digest: string_,
label: containerLabel,
serviceName: containerServiceName
}
  type response = {
containerImage: option<containerImage>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "RegisterContainerImageCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseLogStreams = {
  type t;
  type request = {
relationalDatabaseName: resourceName
}
  type response = {
logStreams: option<stringList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseLogStreamsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstanceState = {
  type t;
  type request = {
instanceName: resourceName
}
  type response = {
state: option<instanceState>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceStateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetActiveNames = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
activeNames: option<stringList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetActiveNamesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContainerServiceRegistryLogin = {
  type t;
  type request = unit
  type response = {
registryLogin: option<containerServiceRegistryLogin>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContainerServiceRegistryLoginCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDistributionBundle = {
  type t;
  type request = {
bundleId: option<string_>,
distributionName: option<resourceName>
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateDistributionBundleCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UnpeerVpc = {
  type t;
  type request = unit
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UnpeerVpcCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ResetDistributionCache = {
  type t;
  type request = {
distributionName: option<resourceName>
}
  type response = {
operation: option<operation>,
createTime: option<isoDate>,
status: option<string_>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ResetDistributionCacheCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PeerVpc = {
  type t;
  type request = unit
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "PeerVpcCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module OpenInstancePublicPorts = {
  type t;
  type request = {
instanceName: resourceName,
portInfo: portInfo
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "OpenInstancePublicPortsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ImportKeyPair = {
  type t;
  type request = {
publicKeyBase64: base64,
keyPairName: resourceName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ImportKeyPairCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStaticIp = {
  type t;
  type request = {
staticIpName: resourceName
}
  type response = {
staticIp: option<staticIp>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetStaticIpCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseParameters = {
  type t;
  type request = {
pageToken: option<string_>,
relationalDatabaseName: resourceName
}
  type response = {
nextPageToken: option<string_>,
parameters: option<relationalDatabaseParameterList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseParametersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseMetricData = {
  type t;
  type request = {
statistics: metricStatisticList,
@as("unit") unit_: metricUnit,
endTime: isoDate,
startTime: isoDate,
period: metricPeriod,
metricName: relationalDatabaseMetricName,
relationalDatabaseName: resourceName
}
  type response = {
metricData: option<metricDatapointList>,
metricName: option<relationalDatabaseMetricName>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseMetricDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseLogEvents = {
  type t;
  type request = {
pageToken: option<string_>,
startFromHead: option<boolean_>,
endTime: option<isoDate>,
startTime: option<isoDate>,
logStreamName: string_,
relationalDatabaseName: resourceName
}
  type response = {
nextForwardToken: option<string_>,
nextBackwardToken: option<string_>,
resourceLogEvents: option<logEventList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseLogEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseBundles = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
bundles: option<relationalDatabaseBundleList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseBundlesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseBlueprints = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
blueprints: option<relationalDatabaseBlueprintList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseBlueprintsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOperation = {
  type t;
  type request = {
operationId: nonEmptyString
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetOperationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancerMetricData = {
  type t;
  type request = {
statistics: metricStatisticList,
@as("unit") unit_: metricUnit,
endTime: timestamp_,
startTime: timestamp_,
period: metricPeriod,
metricName: loadBalancerMetricName,
loadBalancerName: resourceName
}
  type response = {
metricData: option<metricDatapointList>,
metricName: option<loadBalancerMetricName>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancerMetricDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstanceMetricData = {
  type t;
  type request = {
statistics: metricStatisticList,
@as("unit") unit_: metricUnit,
endTime: timestamp_,
startTime: timestamp_,
period: metricPeriod,
metricName: instanceMetricName,
instanceName: resourceName
}
  type response = {
metricData: option<metricDatapointList>,
metricName: option<instanceMetricName>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceMetricDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDistributionMetricData = {
  type t;
  type request = {
statistics: metricStatisticList,
@as("unit") unit_: metricUnit,
period: metricPeriod,
endTime: timestamp_,
startTime: timestamp_,
metricName: distributionMetricName,
distributionName: resourceName
}
  type response = {
metricData: option<metricDatapointList>,
metricName: option<distributionMetricName>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionMetricDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDistributionBundles = {
  type t;
  type request = unit
  type response = {
bundles: option<distributionBundleList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionBundlesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContainerServicePowers = {
  type t;
  type request = unit
  type response = {
powers: option<containerServicePowerList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServicePowersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContainerServiceMetricData = {
  type t;
  type request = {
statistics: metricStatisticList,
period: metricPeriod,
endTime: isoDate,
startTime: isoDate,
metricName: containerServiceMetricName,
serviceName: containerServiceName
}
  type response = {
metricData: option<metricDatapointList>,
metricName: option<containerServiceMetricName>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServiceMetricDataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContainerLog = {
  type t;
  type request = {
pageToken: option<string_>,
filterPattern: option<string_>,
endTime: option<isoDate>,
startTime: option<isoDate>,
containerName: string_,
serviceName: containerServiceName
}
  type response = {
nextPageToken: option<string_>,
logEvents: option<containerServiceLogEventList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerLogCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContainerImages = {
  type t;
  type request = {
serviceName: containerServiceName
}
  type response = {
containerImages: option<containerImageList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerImagesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContainerAPIMetadata = {
  type t;
  type request = unit
  type response = {
metadata: option<containerServiceMetadataEntryList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerAPIMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBlueprints = {
  type t;
  type request = {
pageToken: option<string_>,
includeInactive: option<boolean_>
}
  type response = {
nextPageToken: option<string_>,
blueprints: option<blueprintList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetBlueprintsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachCertificateFromDistribution = {
  type t;
  type request = {
distributionName: resourceName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachCertificateFromDistributionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteKeyPair = {
  type t;
  type request = {
keyPairName: resourceName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteKeyPairCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDomainEntry = {
  type t;
  type request = {
domainEntry: domainEntry,
domainName: domainName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDomainEntryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDomain = {
  type t;
  type request = {
domainName: domainName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDistribution = {
  type t;
  type request = {
distributionName: option<resourceName>
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDistributionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDomainEntry = {
  type t;
  type request = {
domainEntry: domainEntry,
domainName: domainName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDomainEntryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDomain = {
  type t;
  type request = {
tags: option<tagList_>,
domainName: domainName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CloseInstancePublicPorts = {
  type t;
  type request = {
instanceName: resourceName,
portInfo: portInfo
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CloseInstancePublicPortsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachCertificateToDistribution = {
  type t;
  type request = {
certificateName: resourceName,
distributionName: resourceName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachCertificateToDistributionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRelationalDatabaseParameters = {
  type t;
  type request = {
parameters: relationalDatabaseParameterList,
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateRelationalDatabaseParametersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateRelationalDatabase = {
  type t;
  type request = {
caCertificateIdentifier: option<string_>,
applyImmediately: option<boolean_>,
publiclyAccessible: option<boolean_>,
disableBackupRetention: option<boolean_>,
enableBackupRetention: option<boolean_>,
preferredMaintenanceWindow: option<string_>,
preferredBackupWindow: option<string_>,
rotateMasterUserPassword: option<boolean_>,
masterUserPassword: option<sensitiveString>,
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateRelationalDatabaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLoadBalancerAttribute = {
  type t;
  type request = {
attributeValue: stringMax256,
attributeName: loadBalancerAttributeName,
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateLoadBalancerAttributeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainEntry = {
  type t;
  type request = {
domainEntry: domainEntry,
domainName: domainName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateDomainEntryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDistribution = {
  type t;
  type request = {
isEnabled: option<boolean_>,
cacheBehaviors: option<cacheBehaviorList>,
cacheBehaviorSettings: option<cacheSettings>,
defaultCacheBehavior: option<cacheBehavior>,
origin: option<inputOrigin>,
distributionName: resourceName
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateDistributionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: option<resourceArn>,
resourceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TestAlarm = {
  type t;
  type request = {
state: alarmState,
alarmName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "TestAlarmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagList_,
resourceArn: option<resourceArn>,
resourceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopRelationalDatabase = {
  type t;
  type request = {
relationalDatabaseSnapshotName: option<resourceName>,
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StopRelationalDatabaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopInstance = {
  type t;
  type request = {
force: option<boolean_>,
instanceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StopInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartRelationalDatabase = {
  type t;
  type request = {
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StartRelationalDatabaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartInstance = {
  type t;
  type request = {
instanceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StartInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SetIpAddressType = {
  type t;
  type request = {
ipAddressType: ipAddressType,
resourceName: resourceName,
resourceType: resourceType
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "SetIpAddressTypeCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SendContactMethodVerification = {
  type t;
  type request = {
protocol: contactMethodVerificationProtocol
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "SendContactMethodVerificationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ReleaseStaticIp = {
  type t;
  type request = {
staticIpName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ReleaseStaticIpCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RebootRelationalDatabase = {
  type t;
  type request = {
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "RebootRelationalDatabaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RebootInstance = {
  type t;
  type request = {
instanceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "RebootInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutInstancePublicPorts = {
  type t;
  type request = {
instanceName: resourceName,
portInfos: portInfoList
}
  type response = {
operation: option<operation>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "PutInstancePublicPortsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module PutAlarm = {
  type t;
  type request = {
notificationEnabled: option<boolean_>,
notificationTriggers: option<notificationTriggerList>,
contactProtocols: option<contactProtocolsList>,
treatMissingData: option<treatMissingData>,
datapointsToAlarm: option<integer_>,
evaluationPeriods: integer_,
threshold: double,
comparisonOperator: comparisonOperator,
monitoredResourceName: resourceName,
metricName: metricName,
alarmName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "PutAlarmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetStaticIps = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
staticIps: option<staticIpList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetStaticIpsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseSnapshot = {
  type t;
  type request = {
relationalDatabaseSnapshotName: resourceName
}
  type response = {
relationalDatabaseSnapshot: option<relationalDatabaseSnapshot>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseEvents = {
  type t;
  type request = {
pageToken: option<string_>,
durationInMinutes: option<integer_>,
relationalDatabaseName: resourceName
}
  type response = {
nextPageToken: option<string_>,
relationalDatabaseEvents: option<relationalDatabaseEventList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseEventsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabase = {
  type t;
  type request = {
relationalDatabaseName: resourceName
}
  type response = {
relationalDatabase: option<relationalDatabase>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOperationsForResource = {
  type t;
  type request = {
pageToken: option<string_>,
resourceName: resourceName
}
  type response = {
nextPageToken: option<string_>,
nextPageCount: option<string_>,
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetOperationsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetOperations = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetOperationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancer = {
  type t;
  type request = {
loadBalancerName: resourceName
}
  type response = {
loadBalancer: option<loadBalancer>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetKeyPair = {
  type t;
  type request = {
keyPairName: resourceName
}
  type response = {
keyPair: option<keyPair>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetKeyPairCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstancePortStates = {
  type t;
  type request = {
instanceName: resourceName
}
  type response = {
portStates: option<instancePortStateList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstancePortStatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstanceAccessDetails = {
  type t;
  type request = {
protocol: option<instanceAccessProtocol>,
instanceName: resourceName
}
  type response = {
accessDetails: option<instanceAccessDetails>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceAccessDetailsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDiskSnapshot = {
  type t;
  type request = {
diskSnapshotName: resourceName
}
  type response = {
diskSnapshot: option<diskSnapshot>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDiskSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDisk = {
  type t;
  type request = {
diskName: resourceName
}
  type response = {
disk: option<disk>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDiskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContactMethods = {
  type t;
  type request = {
protocols: option<contactProtocolsList>
}
  type response = {
contactMethods: option<contactMethodsList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContactMethodsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetBundles = {
  type t;
  type request = {
pageToken: option<string_>,
includeInactive: option<boolean_>
}
  type response = {
nextPageToken: option<string_>,
bundles: option<bundleList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetBundlesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAlarms = {
  type t;
  type request = {
monitoredResourceName: option<resourceName>,
pageToken: option<string_>,
alarmName: option<resourceName>
}
  type response = {
nextPageToken: option<string_>,
alarms: option<alarmsList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetAlarmsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ExportSnapshot = {
  type t;
  type request = {
sourceSnapshotName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ExportSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module EnableAddOn = {
  type t;
  type request = {
addOnRequest: addOnRequest,
resourceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "EnableAddOnCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisableAddOn = {
  type t;
  type request = {
resourceName: resourceName,
addOnType: addOnType
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DisableAddOnCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachStaticIp = {
  type t;
  type request = {
staticIpName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachStaticIpCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachInstancesFromLoadBalancer = {
  type t;
  type request = {
instanceNames: resourceNameList,
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachInstancesFromLoadBalancerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DetachDisk = {
  type t;
  type request = {
diskName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachDiskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRelationalDatabaseSnapshot = {
  type t;
  type request = {
relationalDatabaseSnapshotName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteRelationalDatabaseSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteRelationalDatabase = {
  type t;
  type request = {
finalRelationalDatabaseSnapshotName: option<resourceName>,
skipFinalSnapshot: option<boolean_>,
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteRelationalDatabaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancerTlsCertificate = {
  type t;
  type request = {
force: option<boolean_>,
certificateName: resourceName,
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteLoadBalancerTlsCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancer = {
  type t;
  type request = {
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteLoadBalancerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteKnownHostKeys = {
  type t;
  type request = {
instanceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteKnownHostKeysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInstanceSnapshot = {
  type t;
  type request = {
instanceSnapshotName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteInstanceSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInstance = {
  type t;
  type request = {
forceDeleteAddOns: option<boolean_>,
instanceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDiskSnapshot = {
  type t;
  type request = {
diskSnapshotName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDiskSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDisk = {
  type t;
  type request = {
forceDeleteAddOns: option<boolean_>,
diskName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDiskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteContactMethod = {
  type t;
  type request = {
protocol: contactProtocol
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteContactMethodCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteCertificate = {
  type t;
  type request = {
certificateName: certificateName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAutoSnapshot = {
  type t;
  type request = {
date: autoSnapshotDate,
resourceName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteAutoSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteAlarm = {
  type t;
  type request = {
alarmName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteAlarmCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRelationalDatabaseSnapshot = {
  type t;
  type request = {
tags: option<tagList_>,
relationalDatabaseSnapshotName: resourceName,
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateRelationalDatabaseSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRelationalDatabaseFromSnapshot = {
  type t;
  type request = {
tags: option<tagList_>,
useLatestRestorableTime: option<boolean_>,
restoreTime: option<isoDate>,
sourceRelationalDatabaseName: option<resourceName>,
relationalDatabaseBundleId: option<string_>,
relationalDatabaseSnapshotName: option<resourceName>,
publiclyAccessible: option<boolean_>,
availabilityZone: option<string_>,
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateRelationalDatabaseFromSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateRelationalDatabase = {
  type t;
  type request = {
tags: option<tagList_>,
publiclyAccessible: option<boolean_>,
preferredMaintenanceWindow: option<string_>,
preferredBackupWindow: option<string_>,
masterUserPassword: option<sensitiveString>,
masterUsername: string_,
masterDatabaseName: string_,
relationalDatabaseBundleId: string_,
relationalDatabaseBlueprintId: string_,
availabilityZone: option<string_>,
relationalDatabaseName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateRelationalDatabaseCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancerTlsCertificate = {
  type t;
  type request = {
tags: option<tagList_>,
certificateAlternativeNames: option<domainNameList>,
certificateDomainName: domainName,
certificateName: resourceName,
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateLoadBalancerTlsCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancer = {
  type t;
  type request = {
ipAddressType: option<ipAddressType>,
tags: option<tagList_>,
certificateAlternativeNames: option<domainNameList>,
certificateDomainName: option<domainName>,
certificateName: option<resourceName>,
healthCheckPath: option<string_>,
instancePort: port,
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateLoadBalancerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateKeyPair = {
  type t;
  type request = {
tags: option<tagList_>,
keyPairName: resourceName
}
  type response = {
operation: option<operation>,
privateKeyBase64: option<base64>,
publicKeyBase64: option<base64>,
keyPair: option<keyPair>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateKeyPairCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInstancesFromSnapshot = {
  type t;
  type request = {
useLatestRestorableAutoSnapshot: option<boolean_>,
restoreDate: option<string_>,
sourceInstanceName: option<string_>,
ipAddressType: option<ipAddressType>,
addOns: option<addOnRequestList>,
tags: option<tagList_>,
keyPairName: option<resourceName>,
userData: option<string_>,
bundleId: nonEmptyString,
instanceSnapshotName: option<resourceName>,
availabilityZone: string_,
attachedDiskMapping: option<attachedDiskMap>,
instanceNames: stringList
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateInstancesFromSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInstances = {
  type t;
  type request = {
ipAddressType: option<ipAddressType>,
addOns: option<addOnRequestList>,
tags: option<tagList_>,
keyPairName: option<resourceName>,
userData: option<string_>,
bundleId: nonEmptyString,
blueprintId: nonEmptyString,
customImageName: option<resourceName>,
availabilityZone: string_,
instanceNames: stringList
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceSnapshot = {
  type t;
  type request = {
tags: option<tagList_>,
instanceName: resourceName,
instanceSnapshotName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateInstanceSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDiskSnapshot = {
  type t;
  type request = {
tags: option<tagList_>,
instanceName: option<resourceName>,
diskSnapshotName: resourceName,
diskName: option<resourceName>
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDiskSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDiskFromSnapshot = {
  type t;
  type request = {
useLatestRestorableAutoSnapshot: option<boolean_>,
restoreDate: option<string_>,
sourceDiskName: option<string_>,
addOns: option<addOnRequestList>,
tags: option<tagList_>,
sizeInGb: integer_,
availabilityZone: nonEmptyString,
diskSnapshotName: option<resourceName>,
diskName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDiskFromSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDisk = {
  type t;
  type request = {
addOns: option<addOnRequestList>,
tags: option<tagList_>,
sizeInGb: integer_,
availabilityZone: nonEmptyString,
diskName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDiskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContactMethod = {
  type t;
  type request = {
contactEndpoint: stringMax256,
protocol: contactProtocol
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContactMethodCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCloudFormationStack = {
  type t;
  type request = {
instances: instanceEntryList
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateCloudFormationStackCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CopySnapshot = {
  type t;
  type request = {
sourceRegion: regionName,
targetSnapshotName: resourceName,
useLatestRestorableAutoSnapshot: option<boolean_>,
restoreDate: option<string_>,
sourceResourceName: option<string_>,
sourceSnapshotName: option<resourceName>
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CopySnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachStaticIp = {
  type t;
  type request = {
instanceName: resourceName,
staticIpName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachStaticIpCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachLoadBalancerTlsCertificate = {
  type t;
  type request = {
certificateName: resourceName,
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachLoadBalancerTlsCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachInstancesToLoadBalancer = {
  type t;
  type request = {
instanceNames: resourceNameList,
loadBalancerName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachInstancesToLoadBalancerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AttachDisk = {
  type t;
  type request = {
diskPath: nonEmptyString,
instanceName: resourceName,
diskName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachDiskCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AllocateStaticIp = {
  type t;
  type request = {
staticIpName: resourceName
}
  type response = {
operations: option<operationList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AllocateStaticIpCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabases = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
relationalDatabases: option<relationalDatabaseList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabasesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseSnapshots = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
relationalDatabaseSnapshots: option<relationalDatabaseSnapshotList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseSnapshotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetRegions = {
  type t;
  type request = {
includeRelationalDatabaseAvailabilityZones: option<boolean_>,
includeAvailabilityZones: option<boolean_>
}
  type response = {
regions: option<regionList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRegionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancers = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
loadBalancers: option<loadBalancerList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetKeyPairs = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
keyPairs: option<keyPairList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetKeyPairsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomain = {
  type t;
  type request = {
domainName: domainName
}
  type response = {
domain: option<domain>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDisks = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
disks: option<diskList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDisksCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDiskSnapshots = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
diskSnapshots: option<diskSnapshotList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDiskSnapshotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCloudFormationStackRecords = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
cloudFormationStackRecords: option<cloudFormationStackRecordList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetCloudFormationStackRecordsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetAutoSnapshots = {
  type t;
  type request = {
resourceName: resourceName
}
  type response = {
autoSnapshots: option<autoSnapshotDetailsList>,
resourceType: option<resourceType>,
resourceName: option<resourceName>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetAutoSnapshotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDistribution = {
  type t;
  type request = {
tags: option<tagList_>,
ipAddressType: option<ipAddressType>,
bundleId: string_,
cacheBehaviors: option<cacheBehaviorList>,
cacheBehaviorSettings: option<cacheSettings>,
defaultCacheBehavior: cacheBehavior,
origin: inputOrigin,
distributionName: resourceName
}
  type response = {
operation: option<operation>,
distribution: option<lightsailDistribution>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDistributionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateContainerService = {
  type t;
  type request = {
publicDomainNames: option<containerServicePublicDomains>,
isDisabled: option<boolean_>,
scale: option<containerServiceScale>,
power: option<containerServicePowerName>,
serviceName: containerServiceName
}
  type response = {
containerService: option<containerService>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateContainerServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancerTlsCertificates = {
  type t;
  type request = {
loadBalancerName: resourceName
}
  type response = {
tlsCertificates: option<loadBalancerTlsCertificateList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancerTlsCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstanceSnapshot = {
  type t;
  type request = {
instanceSnapshotName: resourceName
}
  type response = {
instanceSnapshot: option<instanceSnapshot>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceSnapshotCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDomains = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
domains: option<domainList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetDistributions = {
  type t;
  type request = {
pageToken: option<string_>,
distributionName: option<resourceName>
}
  type response = {
nextPageToken: option<string_>,
distributions: option<distributionList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContainerServiceDeployments = {
  type t;
  type request = {
serviceName: containerServiceName
}
  type response = {
deployments: option<containerServiceDeploymentList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServiceDeploymentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContainerServiceDeployment = {
  type t;
  type request = {
publicEndpoint: option<endpointRequest>,
containers: option<containerMap>,
serviceName: containerServiceName
}
  type response = {
containerService: option<containerService>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContainerServiceDeploymentCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateContainerService = {
  type t;
  type request = {
deployment: option<containerServiceDeploymentRequest>,
publicDomainNames: option<containerServicePublicDomains>,
tags: option<tagList_>,
scale: containerServiceScale,
power: containerServicePowerName,
serviceName: containerServiceName
}
  type response = {
containerService: option<containerService>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContainerServiceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstanceSnapshots = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
instanceSnapshots: option<instanceSnapshotList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceSnapshotsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstance = {
  type t;
  type request = {
instanceName: resourceName
}
  type response = {
instance: option<instance>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetExportSnapshotRecords = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
exportSnapshotRecords: option<exportSnapshotRecordList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetExportSnapshotRecordsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetContainerServices = {
  type t;
  type request = {
serviceName: option<containerServiceName>
}
  type response = {
containerServices: option<containerServiceList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateCertificate = {
  type t;
  type request = {
tags: option<tagList_>,
subjectAlternativeNames: option<subjectAlternativeNameList>,
domainName: domainName,
certificateName: certificateName
}
  type response = {
operations: option<operationList>,
certificate: option<certificateSummary>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateCertificateCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetInstances = {
  type t;
  type request = {
pageToken: option<string_>
}
  type response = {
nextPageToken: option<string_>,
instances: option<instanceList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstancesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module GetCertificates = {
  type t;
  type request = {
certificateName: option<certificateName>,
includeCertificateDetails: option<includeCertificateDetails>,
certificateStatuses: option<certificateStatusList>
}
  type response = {
certificates: option<certificateSummaryList>
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetCertificatesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
