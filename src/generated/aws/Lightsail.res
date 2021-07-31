type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type timestamp = Js.Date.t;
type amazonawsString = string
type long = float;
type integer = int;
type float = float;
type double = float;
type boolean = bool;
type treatMissingData = [@as("missing") #missing | @as("ignore") #ignore | @as("notBreaching") #notBreaching | @as("breaching") #breaching]
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
type relationalDatabaseEngine = [@as("mysql") #mysql]
type regionName = [@as("ap-northeast-2") #ap_northeast_2 | @as("ap-northeast-1") #ap_northeast_1 | @as("ap-southeast-2") #ap_southeast_2 | @as("ap-southeast-1") #ap_southeast_1 | @as("ap-south-1") #ap_south_1 | @as("ca-central-1") #ca_central_1 | @as("eu-central-1") #eu_central_1 | @as("eu-west-3") #eu_west_3 | @as("eu-west-2") #eu_west_2 | @as("eu-west-1") #eu_west_1 | @as("us-west-2") #us_west_2 | @as("us-west-1") #us_west_1 | @as("us-east-2") #us_east_2 | @as("us-east-1") #us_east_1]
type recordState = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("Started") #Started]
type portState = [@as("closed") #closed | @as("open") #open]
type portInfoSourceType = [@as("CLOSED") #CLOSED | @as("NONE") #NONE | @as("INSTANCE") #INSTANCE | @as("DEFAULT") #DEFAULT]
type portAccessType = [@as("Private") #Private | @as("Public") #Public]
type port = int;
type originProtocolPolicyEnum = [@as("https-only") #https_only | @as("http-only") #http_only]
type operationType = [@as("DeleteContainerImage") #DeleteContainerImage | @as("RegisterContainerImage") #RegisterContainerImage | @as("CreateContainerServiceRegistryLogin") #CreateContainerServiceRegistryLogin | @as("CreateContainerServiceDeployment") #CreateContainerServiceDeployment | @as("DeleteContainerService") #DeleteContainerService | @as("UpdateContainerService") #UpdateContainerService | @as("CreateContainerService") #CreateContainerService | @as("DeleteCertificate") #DeleteCertificate | @as("CreateCertificate") #CreateCertificate | @as("SetIpAddressType") #SetIpAddressType | @as("UpdateDistributionBundle") #UpdateDistributionBundle | @as("DetachCertificateFromDistribution") #DetachCertificateFromDistribution | @as("AttachCertificateToDistribution") #AttachCertificateToDistribution | @as("ResetDistributionCache") #ResetDistributionCache | @as("DeleteDistribution") #DeleteDistribution | @as("UpdateDistribution") #UpdateDistribution | @as("CreateDistribution") #CreateDistribution | @as("DeleteContactMethod") #DeleteContactMethod | @as("SendContactMethodVerification") #SendContactMethodVerification | @as("GetContactMethods") #GetContactMethods | @as("CreateContactMethod") #CreateContactMethod | @as("TestAlarm") #TestAlarm | @as("DeleteAlarm") #DeleteAlarm | @as("GetAlarms") #GetAlarms | @as("PutAlarm") #PutAlarm | @as("DisableAddOn") #DisableAddOn | @as("EnableAddOn") #EnableAddOn | @as("StopRelationalDatabase") #StopRelationalDatabase | @as("RebootRelationalDatabase") #RebootRelationalDatabase | @as("StartRelationalDatabase") #StartRelationalDatabase | @as("UpdateRelationalDatabaseParameters") #UpdateRelationalDatabaseParameters | @as("DeleteRelationalDatabaseSnapshot") #DeleteRelationalDatabaseSnapshot | @as("CreateRelationalDatabaseSnapshot") #CreateRelationalDatabaseSnapshot | @as("CreateRelationalDatabaseFromSnapshot") #CreateRelationalDatabaseFromSnapshot | @as("DeleteRelationalDatabase") #DeleteRelationalDatabase | @as("UpdateRelationalDatabase") #UpdateRelationalDatabase | @as("CreateRelationalDatabase") #CreateRelationalDatabase | @as("CreateDiskFromSnapshot") #CreateDiskFromSnapshot | @as("DeleteDiskSnapshot") #DeleteDiskSnapshot | @as("CreateDiskSnapshot") #CreateDiskSnapshot | @as("DetachDisk") #DetachDisk | @as("AttachDisk") #AttachDisk | @as("DeleteDisk") #DeleteDisk | @as("CreateDisk") #CreateDisk | @as("AttachLoadBalancerTlsCertificate") #AttachLoadBalancerTlsCertificate | @as("DeleteLoadBalancerTlsCertificate") #DeleteLoadBalancerTlsCertificate | @as("CreateLoadBalancerTlsCertificate") #CreateLoadBalancerTlsCertificate | @as("UpdateLoadBalancerAttribute") #UpdateLoadBalancerAttribute | @as("DetachInstancesFromLoadBalancer") #DetachInstancesFromLoadBalancer | @as("AttachInstancesToLoadBalancer") #AttachInstancesToLoadBalancer | @as("DeleteLoadBalancer") #DeleteLoadBalancer | @as("CreateLoadBalancer") #CreateLoadBalancer | @as("CreateInstancesFromSnapshot") #CreateInstancesFromSnapshot | @as("DeleteInstanceSnapshot") #DeleteInstanceSnapshot | @as("CreateInstanceSnapshot") #CreateInstanceSnapshot | @as("DeleteDomain") #DeleteDomain | @as("CreateDomain") #CreateDomain | @as("DeleteDomainEntry") #DeleteDomainEntry | @as("UpdateDomainEntry") #UpdateDomainEntry | @as("DetachStaticIp") #DetachStaticIp | @as("AttachStaticIp") #AttachStaticIp | @as("ReleaseStaticIp") #ReleaseStaticIp | @as("AllocateStaticIp") #AllocateStaticIp | @as("CloseInstancePublicPorts") #CloseInstancePublicPorts | @as("PutInstancePublicPorts") #PutInstancePublicPorts | @as("OpenInstancePublicPorts") #OpenInstancePublicPorts | @as("RebootInstance") #RebootInstance | @as("StartInstance") #StartInstance | @as("StopInstance") #StopInstance | @as("CreateInstance") #CreateInstance | @as("DeleteInstance") #DeleteInstance | @as("DeleteKnownHostKeys") #DeleteKnownHostKeys]
type operationStatus = [@as("Succeeded") #Succeeded | @as("Completed") #Completed | @as("Failed") #Failed | @as("Started") #Started | @as("NotStarted") #NotStarted]
type nonEmptyString = string
type networkProtocol = [@as("icmp") #icmp | @as("udp") #udp | @as("all") #all | @as("tcp") #tcp]
type metricUnit = [@as("None") #None | @as("Count/Second") #Count_Second | @as("Terabits/Second") #Terabits_Second | @as("Gigabits/Second") #Gigabits_Second | @as("Megabits/Second") #Megabits_Second | @as("Kilobits/Second") #Kilobits_Second | @as("Bits/Second") #Bits_Second | @as("Terabytes/Second") #Terabytes_Second | @as("Gigabytes/Second") #Gigabytes_Second | @as("Megabytes/Second") #Megabytes_Second | @as("Kilobytes/Second") #Kilobytes_Second | @as("Bytes/Second") #Bytes_Second | @as("Count") #Count | @as("Percent") #Percent | @as("Terabits") #Terabits | @as("Gigabits") #Gigabits | @as("Megabits") #Megabits | @as("Kilobits") #Kilobits | @as("Bits") #Bits | @as("Terabytes") #Terabytes | @as("Gigabytes") #Gigabytes | @as("Megabytes") #Megabytes | @as("Kilobytes") #Kilobytes | @as("Bytes") #Bytes | @as("Milliseconds") #Milliseconds | @as("Microseconds") #Microseconds | @as("Seconds") #Seconds]
type metricStatistic = [@as("SampleCount") #SampleCount | @as("Average") #Average | @as("Sum") #Sum | @as("Maximum") #Maximum | @as("Minimum") #Minimum]
type metricPeriod = int;
type metricName = [@as("BurstCapacityPercentage") #BurstCapacityPercentage | @as("BurstCapacityTime") #BurstCapacityTime | @as("NetworkTransmitThroughput") #NetworkTransmitThroughput | @as("NetworkReceiveThroughput") #NetworkReceiveThroughput | @as("FreeStorageSpace") #FreeStorageSpace | @as("DiskQueueDepth") #DiskQueueDepth | @as("DatabaseConnections") #DatabaseConnections | @as("RequestCount") #RequestCount | @as("RejectedConnectionCount") #RejectedConnectionCount | @as("InstanceResponseTime") #InstanceResponseTime | @as("HTTPCode_Instance_5XX_Count") #HTTPCode_Instance_5XX_Count | @as("HTTPCode_Instance_4XX_Count") #HTTPCode_Instance_4XX_Count | @as("HTTPCode_Instance_3XX_Count") #HTTPCode_Instance_3XX_Count | @as("HTTPCode_Instance_2XX_Count") #HTTPCode_Instance_2XX_Count | @as("HTTPCode_LB_5XX_Count") #HTTPCode_LB_5XX_Count | @as("HTTPCode_LB_4XX_Count") #HTTPCode_LB_4XX_Count | @as("UnhealthyHostCount") #UnhealthyHostCount | @as("HealthyHostCount") #HealthyHostCount | @as("ClientTLSNegotiationErrorCount") #ClientTLSNegotiationErrorCount | @as("StatusCheckFailed_System") #StatusCheckFailed_System | @as("StatusCheckFailed_Instance") #StatusCheckFailed_Instance | @as("StatusCheckFailed") #StatusCheckFailed | @as("NetworkOut") #NetworkOut | @as("NetworkIn") #NetworkIn | @as("CPUUtilization") #CPUUtilization]
type loadBalancerTlsCertificateStatus = [@as("UNKNOWN") #UNKNOWN | @as("FAILED") #FAILED | @as("REVOKED") #REVOKED | @as("VALIDATION_TIMED_OUT") #VALIDATION_TIMED_OUT | @as("EXPIRED") #EXPIRED | @as("INACTIVE") #INACTIVE | @as("ISSUED") #ISSUED | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type loadBalancerTlsCertificateRevocationReason = [@as("A_A_COMPROMISE") #A_A_COMPROMISE | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGE_WITHDRAWN | @as("REMOVE_FROM_CRL") #REMOVE_FROM_CRL | @as("CERTIFICATE_HOLD") #CERTIFICATE_HOLD | @as("CESSATION_OF_OPERATION") #CESSATION_OF_OPERATION | @as("SUPERCEDED") #SUPERCEDED | @as("AFFILIATION_CHANGED") #AFFILIATION_CHANGED | @as("CA_COMPROMISE") #CA_COMPROMISE | @as("KEY_COMPROMISE") #KEY_COMPROMISE | @as("UNSPECIFIED") #UNSPECIFIED]
type loadBalancerTlsCertificateRenewalStatus = [@as("FAILED") #FAILED | @as("SUCCESS") #SUCCESS | @as("PENDING_VALIDATION") #PENDING_VALIDATION | @as("PENDING_AUTO_RENEWAL") #PENDING_AUTO_RENEWAL]
type loadBalancerTlsCertificateFailureReason = [@as("OTHER") #OTHER | @as("INVALID_PUBLIC_DOMAIN") #INVALID_PUBLIC_DOMAIN | @as("DOMAIN_NOT_ALLOWED") #DOMAIN_NOT_ALLOWED | @as("ADDITIONAL_VERIFICATION_REQUIRED") #ADDITIONAL_VERIFICATION_REQUIRED | @as("NO_AVAILABLE_CONTACTS") #NO_AVAILABLE_CONTACTS]
type loadBalancerTlsCertificateDomainStatus = [@as("SUCCESS") #SUCCESS | @as("FAILED") #FAILED | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type loadBalancerState = [@as("unknown") #unknown | @as("failed") #failed | @as("active_impaired") #active_impaired | @as("provisioning") #provisioning | @as("active") #active]
type loadBalancerProtocol = [@as("HTTP") #HTTP | @as("HTTP_HTTPS") #HTTP_HTTPS]
type loadBalancerMetricName = [@as("RequestCount") #RequestCount | @as("RejectedConnectionCount") #RejectedConnectionCount | @as("InstanceResponseTime") #InstanceResponseTime | @as("HTTPCode_Instance_5XX_Count") #HTTPCode_Instance_5XX_Count | @as("HTTPCode_Instance_4XX_Count") #HTTPCode_Instance_4XX_Count | @as("HTTPCode_Instance_3XX_Count") #HTTPCode_Instance_3XX_Count | @as("HTTPCode_Instance_2XX_Count") #HTTPCode_Instance_2XX_Count | @as("HTTPCode_LB_5XX_Count") #HTTPCode_LB_5XX_Count | @as("HTTPCode_LB_4XX_Count") #HTTPCode_LB_4XX_Count | @as("UnhealthyHostCount") #UnhealthyHostCount | @as("HealthyHostCount") #HealthyHostCount | @as("ClientTLSNegotiationErrorCount") #ClientTLSNegotiationErrorCount]
type loadBalancerAttributeName = [@as("SessionStickiness_LB_CookieDurationSeconds") #SessionStickiness_LB_CookieDurationSeconds | @as("SessionStickinessEnabled") #SessionStickinessEnabled | @as("HealthCheckPath") #HealthCheckPath]
type keyAlgorithm = string
type issuerCA = string
type isoDate = Js.Date.t;
type ipv6Address = string
type ipAddressType = [@as("ipv4") #ipv4 | @as("dualstack") #dualstack]
type ipAddress = string
type instanceSnapshotState = [@as("available") #available | @as("error") #error | @as("pending") #pending]
type instancePlatform = [@as("WINDOWS") #WINDOWS | @as("LINUX_UNIX") #LINUX_UNIX]
type instanceMetricName = [@as("BurstCapacityPercentage") #BurstCapacityPercentage | @as("BurstCapacityTime") #BurstCapacityTime | @as("StatusCheckFailed_System") #StatusCheckFailed_System | @as("StatusCheckFailed_Instance") #StatusCheckFailed_Instance | @as("StatusCheckFailed") #StatusCheckFailed | @as("NetworkOut") #NetworkOut | @as("NetworkIn") #NetworkIn | @as("CPUUtilization") #CPUUtilization]
type instanceHealthState = [@as("unavailable") #unavailable | @as("draining") #draining | @as("unused") #unused | @as("unhealthy") #unhealthy | @as("healthy") #healthy | @as("initial") #initial]
type instanceHealthReason = [@as("Instance.IpUnusable") #Instance_IpUnusable | @as("Instance.InvalidState") #Instance_InvalidState | @as("Instance.DeregistrationInProgress") #Instance_DeregistrationInProgress | @as("Instance.NotInUse") #Instance_NotInUse | @as("Instance.NotRegistered") #Instance_NotRegistered | @as("Instance.FailedHealthChecks") #Instance_FailedHealthChecks | @as("Instance.Timeout") #Instance_Timeout | @as("Instance.ResponseCodeMismatch") #Instance_ResponseCodeMismatch | @as("Lb.InternalError") #Lb_InternalError | @as("Lb.InitialHealthChecking") #Lb_InitialHealthChecking | @as("Lb.RegistrationInProgress") #Lb_RegistrationInProgress]
type instanceAccessProtocol = [@as("rdp") #rdp | @as("ssh") #ssh]
type includeCertificateDetails = bool;
type inUseResourceCount = int;
type headerEnum = [@as("Referer") #Referer | @as("Origin") #Origin | @as("Host") #Host | @as("CloudFront-Viewer-Country") #CloudFront_Viewer_Country | @as("CloudFront-Is-Tablet-Viewer") #CloudFront_Is_Tablet_Viewer | @as("CloudFront-Is-SmartTV-Viewer") #CloudFront_Is_SmartTV_Viewer | @as("CloudFront-Is-Mobile-Viewer") #CloudFront_Is_Mobile_Viewer | @as("CloudFront-Is-Desktop-Viewer") #CloudFront_Is_Desktop_Viewer | @as("CloudFront-Forwarded-Proto") #CloudFront_Forwarded_Proto | @as("Authorization") #Authorization | @as("Accept-Language") #Accept_Language | @as("Accept-Encoding") #Accept_Encoding | @as("Accept-Datetime") #Accept_Datetime | @as("Accept-Charset") #Accept_Charset | @as("Accept") #Accept]
type forwardValues = [@as("all") #all | @as("allow-list") #allow_list | @as("none") #none]
type exportSnapshotRecordSourceType = [@as("DiskSnapshot") #DiskSnapshot | @as("InstanceSnapshot") #InstanceSnapshot]
type eligibleToRenew = string
type domainName = string
type domainEntryType = string
type domainEntryOptionsKeys = string
type distributionMetricName = [@as("Http5xxErrorRate") #Http5xxErrorRate | @as("Http4xxErrorRate") #Http4xxErrorRate | @as("TotalErrorRate") #TotalErrorRate | @as("BytesUploaded") #BytesUploaded | @as("BytesDownloaded") #BytesDownloaded | @as("Requests") #Requests]
type diskState = [@as("unknown") #unknown | @as("in-use") #in_use | @as("available") #available | @as("error") #error | @as("pending") #pending]
type diskSnapshotState = [@as("unknown") #unknown | @as("error") #error | @as("completed") #completed | @as("pending") #pending]
type containerServiceStateDetailCode = [@as("UNKNOWN_ERROR") #UNKNOWN_ERROR | @as("CERTIFICATE_LIMIT_EXCEEDED") #CERTIFICATE_LIMIT_EXCEEDED | @as("ACTIVATING_DEPLOYMENT") #ACTIVATING_DEPLOYMENT | @as("EVALUATING_HEALTH_CHECK") #EVALUATING_HEALTH_CHECK | @as("CREATING_DEPLOYMENT") #CREATING_DEPLOYMENT | @as("PROVISIONING_SERVICE") #PROVISIONING_SERVICE | @as("PROVISIONING_CERTIFICATE") #PROVISIONING_CERTIFICATE | @as("CREATING_NETWORK_INFRASTRUCTURE") #CREATING_NETWORK_INFRASTRUCTURE | @as("CREATING_SYSTEM_RESOURCES") #CREATING_SYSTEM_RESOURCES]
type containerServiceState = [@as("DEPLOYING") #DEPLOYING | @as("DISABLED") #DISABLED | @as("DELETING") #DELETING | @as("UPDATING") #UPDATING | @as("RUNNING") #RUNNING | @as("READY") #READY | @as("PENDING") #PENDING]
type containerServiceScale = int;
type containerServiceProtocol = [@as("UDP") #UDP | @as("TCP") #TCP | @as("HTTPS") #HTTPS | @as("HTTP") #HTTP]
type containerServicePowerName = [@as("xlarge") #xlarge | @as("large") #large | @as("medium") #medium | @as("small") #small | @as("micro") #micro | @as("nano") #nano]
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
type certificateStatus = [@as("FAILED") #FAILED | @as("REVOKED") #REVOKED | @as("VALIDATION_TIMED_OUT") #VALIDATION_TIMED_OUT | @as("EXPIRED") #EXPIRED | @as("INACTIVE") #INACTIVE | @as("ISSUED") #ISSUED | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type certificateName = string
type blueprintType = [@as("app") #app | @as("os") #os]
type behaviorEnum = [@as("cache") #cache | @as("dont-cache") #dont_cache]
type base64 = string
type autoSnapshotStatus = [@as("NotFound") #NotFound | @as("InProgress") #InProgress | @as("Failed") #Failed | @as("Success") #Success]
type autoSnapshotDate = string
type alarmState = [@as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA | @as("ALARM") #ALARM | @as("OK") #OK]
type addOnType = [@as("AutoSnapshot") #AutoSnapshot]
type accessDirection = [@as("outbound") #outbound | @as("inbound") #inbound]
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: tagValue,
@as("key") key: tagKey
}
type subjectAlternativeNameList = array<domainName>
type stringList = array<amazonawsString>
type resourceRecord = {
@as("value") value: amazonawsString,
@as("type") type_: amazonawsString,
@as("name") name: amazonawsString
}
type resourceNameList = array<resourceName>
type resourceLocation = {
@as("regionName") regionName: regionName,
@as("availabilityZone") availabilityZone: amazonawsString
}
type relationalDatabaseParameter = {
@as("parameterValue") parameterValue: amazonawsString,
@as("parameterName") parameterName: amazonawsString,
@as("isModifiable") isModifiable: boolean,
@as("description") description: amazonawsString,
@as("dataType") dataType: amazonawsString,
@as("applyType") applyType: amazonawsString,
@as("applyMethod") applyMethod: amazonawsString,
@as("allowedValues") allowedValues: amazonawsString
}
type relationalDatabaseHardware = {
@as("ramSizeInGb") ramSizeInGb: float,
@as("diskSizeInGb") diskSizeInGb: integer,
@as("cpuCount") cpuCount: integer
}
type relationalDatabaseEndpoint = {
@as("address") address: nonEmptyString,
@as("port") port: integer
}
type relationalDatabaseBundle = {
@as("isActive") isActive: boolean,
@as("isEncrypted") isEncrypted: boolean,
@as("cpuCount") cpuCount: integer,
@as("transferPerMonthInGb") transferPerMonthInGb: integer,
@as("diskSizeInGb") diskSizeInGb: integer,
@as("ramSizeInGb") ramSizeInGb: float,
@as("price") price: float,
@as("name") name: amazonawsString,
@as("bundleId") bundleId: amazonawsString
}
type relationalDatabaseBlueprint = {
@as("isEngineDefault") isEngineDefault: boolean,
@as("engineVersionDescription") engineVersionDescription: amazonawsString,
@as("engineDescription") engineDescription: amazonawsString,
@as("engineVersion") engineVersion: amazonawsString,
@as("engine") engine: relationalDatabaseEngine,
@as("blueprintId") blueprintId: amazonawsString
}
type portMap = Js.Dict.t< containerServiceProtocol>
type portList = array<port>
type pendingModifiedRelationalDatabaseValues = {
@as("backupRetentionEnabled") backupRetentionEnabled: boolean,
@as("engineVersion") engineVersion: amazonawsString,
@as("masterUserPassword") masterUserPassword: amazonawsString
}
type pendingMaintenanceAction = {
@as("currentApplyDate") currentApplyDate: isoDate,
@as("description") description: nonEmptyString,
@as("action") action: nonEmptyString
}
type passwordData = {
@as("keyPairName") keyPairName: resourceName,
@as("ciphertext") ciphertext: amazonawsString
}
type origin = {
@as("protocolPolicy") protocolPolicy: originProtocolPolicyEnum,
@as("regionName") regionName: regionName,
@as("resourceType") resourceType: resourceType,
@as("name") name: resourceName
}
type notificationTriggerList = array<alarmState>
type monthlyTransfer = {
@as("gbPerMonthAllocated") gbPerMonthAllocated: integer
}
type monitoredResourceInfo = {
@as("resourceType") resourceType: resourceType,
@as("name") name: resourceName,
@as("arn") arn: resourceArn
}
type metricStatisticList = array<metricStatistic>
type metricDatapoint = {
@as("unit") unit: metricUnit,
@as("timestamp") timestamp: timestamp,
@as("sum") sum: double,
@as("sampleCount") sampleCount: double,
@as("minimum") minimum: double,
@as("maximum") maximum: double,
@as("average") average: double
}
type logEvent = {
@as("message") message: amazonawsString,
@as("createdAt") createdAt: isoDate
}
type loadBalancerTlsCertificateSummary = {
@as("isAttached") isAttached: boolean,
@as("name") name: resourceName
}
type loadBalancerTlsCertificateDomainValidationRecord = {
@as("domainName") domainName: domainName,
@as("validationStatus") validationStatus: loadBalancerTlsCertificateDomainStatus,
@as("value") value: nonEmptyString,
@as("type") type_: nonEmptyString,
@as("name") name: nonEmptyString
}
type loadBalancerTlsCertificateDomainValidationOption = {
@as("validationStatus") validationStatus: loadBalancerTlsCertificateDomainStatus,
@as("domainName") domainName: domainName
}
type loadBalancerConfigurationOptions = Js.Dict.t< amazonawsString>
type ipv6AddressList = array<ipv6Address>
type instanceState = {
@as("name") name: amazonawsString,
@as("code") code: integer
}
type instancePlatformList = array<instancePlatform>
type instanceHealthSummary = {
@as("instanceHealthReason") instanceHealthReason: instanceHealthReason,
@as("instanceHealth") instanceHealth: instanceHealthState,
@as("instanceName") instanceName: resourceName
}
type instanceEntry = {
@as("availabilityZone") availabilityZone: option<amazonawsString>,
@as("userData") userData: amazonawsString,
@as("portInfoSource") portInfoSource: option<portInfoSourceType>,
@as("instanceType") instanceType: option<nonEmptyString>,
@as("sourceName") sourceName: option<resourceName>
}
type inputOrigin = {
@as("protocolPolicy") protocolPolicy: originProtocolPolicyEnum,
@as("regionName") regionName: regionName,
@as("name") name: resourceName
}
type hostKeyAttributes = {
@as("notValidAfter") notValidAfter: isoDate,
@as("notValidBefore") notValidBefore: isoDate,
@as("fingerprintSHA256") fingerprintSHA256: amazonawsString,
@as("fingerprintSHA1") fingerprintSHA1: amazonawsString,
@as("witnessedAt") witnessedAt: isoDate,
@as("publicKey") publicKey: amazonawsString,
@as("algorithm") algorithm: amazonawsString
}
type headerForwardList = array<headerEnum>
type environment = Js.Dict.t< amazonawsString>
type domainNameList = array<domainName>
type domainEntryOptions = Js.Dict.t< amazonawsString>
type distributionBundle = {
@as("isActive") isActive: boolean,
@as("transferPerMonthInGb") transferPerMonthInGb: integer,
@as("price") price: float,
@as("name") name: amazonawsString,
@as("bundleId") bundleId: amazonawsString
}
type diskSnapshotInfo = {
@as("sizeInGb") sizeInGb: integer
}
type diskMap = {
@as("newDiskName") newDiskName: resourceName,
@as("originalDiskPath") originalDiskPath: nonEmptyString
}
type diskInfo = {
@as("isSystemDisk") isSystemDisk: boolean,
@as("sizeInGb") sizeInGb: integer,
@as("path") path: nonEmptyString,
@as("name") name: amazonawsString
}
type destinationInfo = {
@as("service") service: nonEmptyString,
@as("id") id: nonEmptyString
}
type containerServiceStateDetail = {
@as("message") message: amazonawsString,
@as("code") code: containerServiceStateDetailCode
}
type containerServiceRegistryLogin = {
@as("registry") registry: amazonawsString,
@as("expiresAt") expiresAt: isoDate,
@as("password") password: amazonawsString,
@as("username") username: amazonawsString
}
type containerServicePublicDomainsList = array<amazonawsString>
type containerServicePower = {
@as("isActive") isActive: boolean,
@as("name") name: amazonawsString,
@as("ramSizeInGb") ramSizeInGb: float,
@as("cpuCount") cpuCount: float,
@as("price") price: float,
@as("powerId") powerId: amazonawsString
}
type containerServiceMetadataEntry = Js.Dict.t< amazonawsString>
type containerServiceLogEvent = {
@as("message") message: amazonawsString,
@as("createdAt") createdAt: isoDate
}
type containerServiceHealthCheckConfig = {
@as("successCodes") successCodes: amazonawsString,
@as("path") path: amazonawsString,
@as("intervalSeconds") intervalSeconds: integer,
@as("timeoutSeconds") timeoutSeconds: integer,
@as("unhealthyThreshold") unhealthyThreshold: integer,
@as("healthyThreshold") healthyThreshold: integer
}
type containerImage = {
@as("createdAt") createdAt: isoDate,
@as("digest") digest: amazonawsString,
@as("image") image: amazonawsString
}
type contactProtocolsList = array<contactProtocol>
type cloudFormationStackRecordSourceInfo = {
@as("arn") arn: nonEmptyString,
@as("name") name: nonEmptyString,
@as("resourceType") resourceType: cloudFormationStackRecordSourceType
}
type certificateStatusList = array<certificateStatus>
type cacheBehaviorPerPath = {
@as("behavior") behavior: behaviorEnum,
@as("path") path: amazonawsString
}
type cacheBehavior = {
@as("behavior") behavior: behaviorEnum
}
type blueprint = {
@as("platform") platform: instancePlatform,
@as("licenseUrl") licenseUrl: amazonawsString,
@as("productUrl") productUrl: amazonawsString,
@as("versionCode") versionCode: amazonawsString,
@as("version") version: amazonawsString,
@as("minPower") minPower: integer,
@as("isActive") isActive: boolean,
@as("description") description: amazonawsString,
@as("type") type_: blueprintType,
@as("group") group: nonEmptyString,
@as("name") name: resourceName,
@as("blueprintId") blueprintId: nonEmptyString
}
type availabilityZone = {
@as("state") state: nonEmptyString,
@as("zoneName") zoneName: nonEmptyString
}
type autoSnapshotAddOnRequest = {
@as("snapshotTimeOfDay") snapshotTimeOfDay: timeOfDay
}
type attachedDisk = {
@as("sizeInGb") sizeInGb: integer,
@as("path") path: amazonawsString
}
type addOn = {
@as("nextSnapshotTimeOfDay") nextSnapshotTimeOfDay: timeOfDay,
@as("snapshotTimeOfDay") snapshotTimeOfDay: timeOfDay,
@as("status") status: amazonawsString,
@as("name") name: amazonawsString
}
type tagList = array<tag>
type staticIp = {
@as("isAttached") isAttached: boolean,
@as("attachedTo") attachedTo: resourceName,
@as("ipAddress") ipAddress: ipAddress,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type relationalDatabaseParameterList = array<relationalDatabaseParameter>
type relationalDatabaseEvent = {
@as("eventCategories") eventCategories: stringList,
@as("message") message: amazonawsString,
@as("createdAt") createdAt: isoDate,
@as("resource") resource: resourceName
}
type relationalDatabaseBundleList = array<relationalDatabaseBundle>
type relationalDatabaseBlueprintList = array<relationalDatabaseBlueprint>
type queryStringObject = {
@as("queryStringsAllowList") queryStringsAllowList: stringList,
@as("option") option: boolean
}
type portInfo = {
@as("cidrListAliases") cidrListAliases: stringList,
@as("ipv6Cidrs") ipv6Cidrs: stringList,
@as("cidrs") cidrs: stringList,
@as("protocol") protocol: networkProtocol,
@as("toPort") toPort: port,
@as("fromPort") fromPort: port
}
type pendingMaintenanceActionList = array<pendingMaintenanceAction>
type operation = {
@as("errorDetails") errorDetails: amazonawsString,
@as("errorCode") errorCode: amazonawsString,
@as("statusChangedAt") statusChangedAt: isoDate,
@as("status") status: operationStatus,
@as("operationType") operationType: operationType,
@as("operationDetails") operationDetails: amazonawsString,
@as("isTerminal") isTerminal: boolean,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("resourceType") resourceType: resourceType,
@as("resourceName") resourceName: resourceName,
@as("id") id: nonEmptyString
}
type metricDatapointList = array<metricDatapoint>
type logEventList = array<logEvent>
type loadBalancerTlsCertificateSummaryList = array<loadBalancerTlsCertificateSummary>
type loadBalancerTlsCertificateDomainValidationRecordList = array<loadBalancerTlsCertificateDomainValidationRecord>
type loadBalancerTlsCertificateDomainValidationOptionList = array<loadBalancerTlsCertificateDomainValidationOption>
type instancePortState = {
@as("cidrListAliases") cidrListAliases: stringList,
@as("ipv6Cidrs") ipv6Cidrs: stringList,
@as("cidrs") cidrs: stringList,
@as("state") state: portState,
@as("protocol") protocol: networkProtocol,
@as("toPort") toPort: port,
@as("fromPort") fromPort: port
}
type instancePortInfo = {
@as("cidrListAliases") cidrListAliases: stringList,
@as("ipv6Cidrs") ipv6Cidrs: stringList,
@as("cidrs") cidrs: stringList,
@as("accessDirection") accessDirection: accessDirection,
@as("commonName") commonName: amazonawsString,
@as("accessType") accessType: portAccessType,
@as("accessFrom") accessFrom: amazonawsString,
@as("protocol") protocol: networkProtocol,
@as("toPort") toPort: port,
@as("fromPort") fromPort: port
}
type instanceHealthSummaryList = array<instanceHealthSummary>
type instanceEntryList = array<instanceEntry>
type hostKeysList = array<hostKeyAttributes>
type headerObject = {
@as("headersAllowList") headersAllowList: headerForwardList,
@as("option") option: forwardValues
}
type endpointRequest = {
@as("healthCheck") healthCheck: containerServiceHealthCheckConfig,
@as("containerPort") containerPort: option<integer>,
@as("containerName") containerName: option<amazonawsString>
}
type domainValidationRecord = {
@as("resourceRecord") resourceRecord: resourceRecord,
@as("domainName") domainName: domainName
}
type domainEntry = {
@as("options") options: domainEntryOptions,
@as("type") type_: domainEntryType,
@as("isAlias") isAlias: boolean,
@as("target") target: amazonawsString,
@as("name") name: domainName,
@as("id") id: nonEmptyString
}
type distributionBundleList = array<distributionBundle>
type diskMapList = array<diskMap>
type diskInfoList = array<diskInfo>
type cookieObject = {
@as("cookiesAllowList") cookiesAllowList: stringList,
@as("option") option: forwardValues
}
type containerServicePublicDomains = Js.Dict.t< containerServicePublicDomainsList>
type containerServicePowerList = array<containerServicePower>
type containerServiceMetadataEntryList = array<containerServiceMetadataEntry>
type containerServiceLogEventList = array<containerServiceLogEvent>
type containerServiceEndpoint = {
@as("healthCheck") healthCheck: containerServiceHealthCheckConfig,
@as("containerPort") containerPort: integer,
@as("containerName") containerName: amazonawsString
}
type containerImageList = array<containerImage>
type container = {
@as("ports") ports: portMap,
@as("environment") environment: environment,
@as("command") command: stringList,
@as("image") image: amazonawsString
}
type contactMethod = {
@as("supportCode") supportCode: amazonawsString,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName,
@as("protocol") protocol: contactProtocol,
@as("status") status: contactMethodStatus,
@as("contactEndpoint") contactEndpoint: nonEmptyString
}
type cloudFormationStackRecordSourceInfoList = array<cloudFormationStackRecordSourceInfo>
type cacheBehaviorList = array<cacheBehaviorPerPath>
type bundle = {
@as("supportedPlatforms") supportedPlatforms: instancePlatformList,
@as("transferPerMonthInGb") transferPerMonthInGb: integer,
@as("ramSizeInGb") ramSizeInGb: float,
@as("power") power: integer,
@as("name") name: amazonawsString,
@as("isActive") isActive: boolean,
@as("instanceType") instanceType: amazonawsString,
@as("bundleId") bundleId: nonEmptyString,
@as("diskSizeInGb") diskSizeInGb: integer,
@as("cpuCount") cpuCount: integer,
@as("price") price: float
}
type blueprintList = array<blueprint>
type availabilityZoneList = array<availabilityZone>
type attachedDiskList = array<attachedDisk>
type alarm = {
@as("notificationEnabled") notificationEnabled: boolean,
@as("notificationTriggers") notificationTriggers: notificationTriggerList,
@as("contactProtocols") contactProtocols: contactProtocolsList,
@as("unit") unit: metricUnit,
@as("state") state: alarmState,
@as("metricName") metricName: metricName,
@as("statistic") statistic: metricStatistic,
@as("treatMissingData") treatMissingData: treatMissingData,
@as("datapointsToAlarm") datapointsToAlarm: integer,
@as("threshold") threshold: double,
@as("period") period: metricPeriod,
@as("evaluationPeriods") evaluationPeriods: integer,
@as("comparisonOperator") comparisonOperator: comparisonOperator,
@as("monitoredResourceInfo") monitoredResourceInfo: monitoredResourceInfo,
@as("supportCode") supportCode: amazonawsString,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type addOnRequest = {
@as("autoSnapshotAddOnRequest") autoSnapshotAddOnRequest: autoSnapshotAddOnRequest,
@as("addOnType") addOnType: option<addOnType>
}
type addOnList = array<addOn>
type staticIpList = array<staticIp>
type relationalDatabaseSnapshot = {
@as("fromRelationalDatabaseBlueprintId") fromRelationalDatabaseBlueprintId: amazonawsString,
@as("fromRelationalDatabaseBundleId") fromRelationalDatabaseBundleId: amazonawsString,
@as("fromRelationalDatabaseArn") fromRelationalDatabaseArn: nonEmptyString,
@as("fromRelationalDatabaseName") fromRelationalDatabaseName: nonEmptyString,
@as("state") state: nonEmptyString,
@as("sizeInGb") sizeInGb: integer,
@as("engineVersion") engineVersion: nonEmptyString,
@as("engine") engine: nonEmptyString,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type relationalDatabaseEventList = array<relationalDatabaseEvent>
type relationalDatabase = {
@as("caCertificateIdentifier") caCertificateIdentifier: amazonawsString,
@as("pendingMaintenanceActions") pendingMaintenanceActions: pendingMaintenanceActionList,
@as("masterEndpoint") masterEndpoint: relationalDatabaseEndpoint,
@as("publiclyAccessible") publiclyAccessible: boolean,
@as("preferredMaintenanceWindow") preferredMaintenanceWindow: nonEmptyString,
@as("preferredBackupWindow") preferredBackupWindow: nonEmptyString,
@as("parameterApplyStatus") parameterApplyStatus: nonEmptyString,
@as("masterUsername") masterUsername: nonEmptyString,
@as("latestRestorableTime") latestRestorableTime: isoDate,
@as("engineVersion") engineVersion: nonEmptyString,
@as("engine") engine: nonEmptyString,
@as("pendingModifiedValues") pendingModifiedValues: pendingModifiedRelationalDatabaseValues,
@as("backupRetentionEnabled") backupRetentionEnabled: boolean,
@as("secondaryAvailabilityZone") secondaryAvailabilityZone: amazonawsString,
@as("state") state: nonEmptyString,
@as("hardware") hardware: relationalDatabaseHardware,
@as("masterDatabaseName") masterDatabaseName: amazonawsString,
@as("relationalDatabaseBundleId") relationalDatabaseBundleId: nonEmptyString,
@as("relationalDatabaseBlueprintId") relationalDatabaseBlueprintId: nonEmptyString,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type region = {
@as("relationalDatabaseAvailabilityZones") relationalDatabaseAvailabilityZones: availabilityZoneList,
@as("availabilityZones") availabilityZones: availabilityZoneList,
@as("name") name: regionName,
@as("displayName") displayName: amazonawsString,
@as("description") description: amazonawsString,
@as("continentCode") continentCode: amazonawsString
}
type portInfoList = array<portInfo>
type operationList = array<operation>
type loadBalancerTlsCertificateRenewalSummary = {
@as("domainValidationOptions") domainValidationOptions: loadBalancerTlsCertificateDomainValidationOptionList,
@as("renewalStatus") renewalStatus: loadBalancerTlsCertificateRenewalStatus
}
type loadBalancer = {
@as("ipAddressType") ipAddressType: ipAddressType,
@as("configurationOptions") configurationOptions: loadBalancerConfigurationOptions,
@as("tlsCertificateSummaries") tlsCertificateSummaries: loadBalancerTlsCertificateSummaryList,
@as("instanceHealthSummary") instanceHealthSummary: instanceHealthSummaryList,
@as("instancePort") instancePort: integer,
@as("healthCheckPath") healthCheckPath: nonEmptyString,
@as("publicPorts") publicPorts: portList,
@as("protocol") protocol: loadBalancerProtocol,
@as("state") state: loadBalancerState,
@as("dnsName") dnsName: nonEmptyString,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type keyPair = {
@as("fingerprint") fingerprint: base64,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type instanceSnapshotInfo = {
@as("fromDiskInfo") fromDiskInfo: diskInfoList,
@as("fromBlueprintId") fromBlueprintId: nonEmptyString,
@as("fromBundleId") fromBundleId: nonEmptyString
}
type instancePortStateList = array<instancePortState>
type instancePortInfoList = array<instancePortInfo>
type instanceAccessDetails = {
@as("hostKeys") hostKeys: hostKeysList,
@as("username") username: amazonawsString,
@as("instanceName") instanceName: resourceName,
@as("protocol") protocol: instanceAccessProtocol,
@as("privateKey") privateKey: amazonawsString,
@as("passwordData") passwordData: passwordData,
@as("password") password: amazonawsString,
@as("ipAddress") ipAddress: ipAddress,
@as("expiresAt") expiresAt: isoDate,
@as("certKey") certKey: amazonawsString
}
type domainValidationRecordList = array<domainValidationRecord>
type domainEntryList = array<domainEntry>
type diskSnapshot = {
@as("isFromAutoSnapshot") isFromAutoSnapshot: boolean,
@as("fromInstanceArn") fromInstanceArn: nonEmptyString,
@as("fromInstanceName") fromInstanceName: resourceName,
@as("fromDiskArn") fromDiskArn: nonEmptyString,
@as("fromDiskName") fromDiskName: resourceName,
@as("progress") progress: amazonawsString,
@as("state") state: diskSnapshotState,
@as("sizeInGb") sizeInGb: integer,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type disk = {
@as("gbInUse") gbInUse: integer,
@as("attachmentState") attachmentState: amazonawsString,
@as("isAttached") isAttached: boolean,
@as("attachedTo") attachedTo: resourceName,
@as("state") state: diskState,
@as("path") path: amazonawsString,
@as("iops") iops: integer,
@as("isSystemDisk") isSystemDisk: boolean,
@as("sizeInGb") sizeInGb: integer,
@as("addOns") addOns: addOnList,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type containerMap = Js.Dict.t< container>
type contactMethodsList = array<contactMethod>
type cloudFormationStackRecord = {
@as("destinationInfo") destinationInfo: destinationInfo,
@as("sourceInfo") sourceInfo: cloudFormationStackRecordSourceInfoList,
@as("state") state: recordState,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type cacheSettings = {
@as("forwardedQueryStrings") forwardedQueryStrings: queryStringObject,
@as("forwardedHeaders") forwardedHeaders: headerObject,
@as("forwardedCookies") forwardedCookies: cookieObject,
@as("cachedHTTPMethods") cachedHTTPMethods: nonEmptyString,
@as("allowedHTTPMethods") allowedHTTPMethods: nonEmptyString,
@as("maximumTTL") maximumTTL: long,
@as("minimumTTL") minimumTTL: long,
@as("defaultTTL") defaultTTL: long
}
type bundleList = array<bundle>
type autoSnapshotDetails = {
@as("fromAttachedDisks") fromAttachedDisks: attachedDiskList,
@as("status") status: autoSnapshotStatus,
@as("createdAt") createdAt: isoDate,
@as("date") date: amazonawsString
}
type attachedDiskMap = Js.Dict.t< diskMapList>
type alarmsList = array<alarm>
type addOnRequestList = array<addOnRequest>
type renewalSummary = {
@as("updatedAt") updatedAt: isoDate,
@as("renewalStatusReason") renewalStatusReason: renewalStatusReason,
@as("renewalStatus") renewalStatus: renewalStatus,
@as("domainValidationRecords") domainValidationRecords: domainValidationRecordList
}
type relationalDatabaseSnapshotList = array<relationalDatabaseSnapshot>
type relationalDatabaseList = array<relationalDatabase>
type regionList = array<region>
type loadBalancerTlsCertificate = {
@as("subjectAlternativeNames") subjectAlternativeNames: stringList,
@as("subject") subject: nonEmptyString,
@as("signatureAlgorithm") signatureAlgorithm: nonEmptyString,
@as("serial") serial: nonEmptyString,
@as("revokedAt") revokedAt: isoDate,
@as("revocationReason") revocationReason: loadBalancerTlsCertificateRevocationReason,
@as("renewalSummary") renewalSummary: loadBalancerTlsCertificateRenewalSummary,
@as("notBefore") notBefore: isoDate,
@as("notAfter") notAfter: isoDate,
@as("keyAlgorithm") keyAlgorithm: nonEmptyString,
@as("issuer") issuer: nonEmptyString,
@as("issuedAt") issuedAt: isoDate,
@as("failureReason") failureReason: loadBalancerTlsCertificateFailureReason,
@as("domainValidationRecords") domainValidationRecords: loadBalancerTlsCertificateDomainValidationRecordList,
@as("domainName") domainName: domainName,
@as("status") status: loadBalancerTlsCertificateStatus,
@as("isAttached") isAttached: boolean,
@as("loadBalancerName") loadBalancerName: resourceName,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type loadBalancerList = array<loadBalancer>
type lightsailDistribution = {
@as("tags") tags: tagList,
@as("ipAddressType") ipAddressType: ipAddressType,
@as("ableToUpdateBundle") ableToUpdateBundle: boolean,
@as("cacheBehaviors") cacheBehaviors: cacheBehaviorList,
@as("cacheBehaviorSettings") cacheBehaviorSettings: cacheSettings,
@as("defaultCacheBehavior") defaultCacheBehavior: cacheBehavior,
@as("originPublicDNS") originPublicDNS: amazonawsString,
@as("origin") origin: origin,
@as("certificateName") certificateName: resourceName,
@as("bundleId") bundleId: amazonawsString,
@as("domainName") domainName: amazonawsString,
@as("isEnabled") isEnabled: boolean,
@as("status") status: amazonawsString,
@as("alternativeDomainNames") alternativeDomainNames: stringList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type keyPairList = array<keyPair>
type instanceNetworking = {
@as("ports") ports: instancePortInfoList,
@as("monthlyTransfer") monthlyTransfer: monthlyTransfer
}
type exportSnapshotRecordSourceInfo = {
@as("diskSnapshotInfo") diskSnapshotInfo: diskSnapshotInfo,
@as("instanceSnapshotInfo") instanceSnapshotInfo: instanceSnapshotInfo,
@as("fromResourceArn") fromResourceArn: nonEmptyString,
@as("fromResourceName") fromResourceName: nonEmptyString,
@as("arn") arn: nonEmptyString,
@as("name") name: nonEmptyString,
@as("createdAt") createdAt: isoDate,
@as("resourceType") resourceType: exportSnapshotRecordSourceType
}
type domain = {
@as("domainEntries") domainEntries: domainEntryList,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type diskSnapshotList = array<diskSnapshot>
type diskList = array<disk>
type containerServiceDeploymentRequest = {
@as("publicEndpoint") publicEndpoint: endpointRequest,
@as("containers") containers: containerMap
}
type containerServiceDeployment = {
@as("createdAt") createdAt: isoDate,
@as("publicEndpoint") publicEndpoint: containerServiceEndpoint,
@as("containers") containers: containerMap,
@as("state") state: containerServiceDeploymentState,
@as("version") version: integer
}
type cloudFormationStackRecordList = array<cloudFormationStackRecord>
type autoSnapshotDetailsList = array<autoSnapshotDetails>
type loadBalancerTlsCertificateList = array<loadBalancerTlsCertificate>
type instanceSnapshot = {
@as("sizeInGb") sizeInGb: integer,
@as("isFromAutoSnapshot") isFromAutoSnapshot: boolean,
@as("fromBundleId") fromBundleId: amazonawsString,
@as("fromBlueprintId") fromBlueprintId: amazonawsString,
@as("fromInstanceArn") fromInstanceArn: nonEmptyString,
@as("fromInstanceName") fromInstanceName: resourceName,
@as("fromAttachedDisks") fromAttachedDisks: diskList,
@as("progress") progress: amazonawsString,
@as("state") state: instanceSnapshotState,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type instanceHardware = {
@as("ramSizeInGb") ramSizeInGb: float,
@as("disks") disks: diskList,
@as("cpuCount") cpuCount: integer
}
type exportSnapshotRecord = {
@as("destinationInfo") destinationInfo: destinationInfo,
@as("sourceInfo") sourceInfo: exportSnapshotRecordSourceInfo,
@as("state") state: recordState,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type domainList = array<domain>
type distributionList = array<lightsailDistribution>
type containerServiceDeploymentList = array<containerServiceDeployment>
type containerService = {
@as("url") url: amazonawsString,
@as("publicDomainNames") publicDomainNames: containerServicePublicDomains,
@as("privateDomainName") privateDomainName: amazonawsString,
@as("principalArn") principalArn: amazonawsString,
@as("isDisabled") isDisabled: boolean,
@as("nextDeployment") nextDeployment: containerServiceDeployment,
@as("currentDeployment") currentDeployment: containerServiceDeployment,
@as("scale") scale: containerServiceScale,
@as("stateDetail") stateDetail: containerServiceStateDetail,
@as("state") state: containerServiceState,
@as("powerId") powerId: amazonawsString,
@as("power") power: containerServicePowerName,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("arn") arn: nonEmptyString,
@as("containerServiceName") containerServiceName: containerServiceName
}
type certificate = {
@as("supportCode") supportCode: amazonawsString,
@as("tags") tags: tagList,
@as("revocationReason") revocationReason: revocationReason,
@as("revokedAt") revokedAt: isoDate,
@as("renewalSummary") renewalSummary: renewalSummary,
@as("eligibleToRenew") eligibleToRenew: eligibleToRenew,
@as("notAfter") notAfter: isoDate,
@as("notBefore") notBefore: isoDate,
@as("issuerCA") issuerCA: issuerCA,
@as("issuedAt") issuedAt: isoDate,
@as("createdAt") createdAt: isoDate,
@as("keyAlgorithm") keyAlgorithm: keyAlgorithm,
@as("inUseResourceCount") inUseResourceCount: inUseResourceCount,
@as("requestFailureReason") requestFailureReason: requestFailureReason,
@as("domainValidationRecords") domainValidationRecords: domainValidationRecordList,
@as("subjectAlternativeNames") subjectAlternativeNames: subjectAlternativeNameList,
@as("serialNumber") serialNumber: serialNumber,
@as("status") status: certificateStatus,
@as("domainName") domainName: domainName,
@as("name") name: certificateName,
@as("arn") arn: nonEmptyString
}
type instanceSnapshotList = array<instanceSnapshot>
type instance = {
@as("sshKeyName") sshKeyName: resourceName,
@as("username") username: nonEmptyString,
@as("state") state: instanceState,
@as("networking") networking: instanceNetworking,
@as("hardware") hardware: instanceHardware,
@as("ipAddressType") ipAddressType: ipAddressType,
@as("ipv6Addresses") ipv6Addresses: ipv6AddressList,
@as("publicIpAddress") publicIpAddress: ipAddress,
@as("privateIpAddress") privateIpAddress: ipAddress,
@as("isStaticIp") isStaticIp: boolean,
@as("addOns") addOns: addOnList,
@as("bundleId") bundleId: nonEmptyString,
@as("blueprintName") blueprintName: nonEmptyString,
@as("blueprintId") blueprintId: nonEmptyString,
@as("tags") tags: tagList,
@as("resourceType") resourceType: resourceType,
@as("location") location: resourceLocation,
@as("createdAt") createdAt: isoDate,
@as("supportCode") supportCode: amazonawsString,
@as("arn") arn: nonEmptyString,
@as("name") name: resourceName
}
type exportSnapshotRecordList = array<exportSnapshotRecord>
type containerServiceList = array<containerService>
type certificateSummary = {
@as("tags") tags: tagList,
@as("certificateDetail") certificateDetail: certificate,
@as("domainName") domainName: domainName,
@as("certificateName") certificateName: certificateName,
@as("certificateArn") certificateArn: nonEmptyString
}
type instanceList = array<instance>
type certificateSummaryList = array<certificateSummary>
type clientType;
@module("@aws-sdk/client-lightsail") @new external createClient: unit => clientType = "LightsailClient";
module IsVpcPeered = {
  type t;
  type request = unit
  type response = {
@as("isPeered") isPeered: boolean
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "IsVpcPeeredCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseMasterUserPassword = {
  type t;
  type request = {
@as("passwordVersion") passwordVersion: relationalDatabasePasswordVersion,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("createdAt") createdAt: isoDate,
@as("masterUserPassword") masterUserPassword: sensitiveString
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseMasterUserPasswordCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDistributionLatestCacheReset = {
  type t;
  type request = {
@as("distributionName") distributionName: resourceName
}
  type response = {
@as("createTime") createTime: isoDate,
@as("status") status: amazonawsString
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionLatestCacheResetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DownloadDefaultKeyPair = {
  type t;
  type request = unit
  type response = {
@as("privateKeyBase64") privateKeyBase64: base64,
@as("publicKeyBase64") publicKeyBase64: base64
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DownloadDefaultKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContainerService = {
  type t;
  type request = {
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = unit
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteContainerServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContainerImage = {
  type t;
  type request = {
@as("image") image: option<amazonawsString>,
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = unit
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteContainerImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterContainerImage = {
  type t;
  type request = {
@as("digest") digest: option<amazonawsString>,
@as("label") label: option<containerLabel>,
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("containerImage") containerImage: containerImage
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "RegisterContainerImageCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseLogStreams = {
  type t;
  type request = {
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("logStreams") logStreams: stringList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseLogStreamsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceState = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("state") state: instanceState
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceStateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetActiveNames = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("activeNames") activeNames: stringList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetActiveNamesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContainerServiceRegistryLogin = {
  type t;
  type request = unit
  type response = {
@as("registryLogin") registryLogin: containerServiceRegistryLogin
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContainerServiceRegistryLoginCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDistributionBundle = {
  type t;
  type request = {
@as("bundleId") bundleId: amazonawsString,
@as("distributionName") distributionName: resourceName
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateDistributionBundleCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UnpeerVpc = {
  type t;
  type request = unit
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UnpeerVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ResetDistributionCache = {
  type t;
  type request = {
@as("distributionName") distributionName: resourceName
}
  type response = {
@as("operation") operation: operation,
@as("createTime") createTime: isoDate,
@as("status") status: amazonawsString
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ResetDistributionCacheCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PeerVpc = {
  type t;
  type request = unit
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "PeerVpcCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module OpenInstancePublicPorts = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>,
@as("portInfo") portInfo: option<portInfo>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "OpenInstancePublicPortsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ImportKeyPair = {
  type t;
  type request = {
@as("publicKeyBase64") publicKeyBase64: option<base64>,
@as("keyPairName") keyPairName: option<resourceName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ImportKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStaticIp = {
  type t;
  type request = {
@as("staticIpName") staticIpName: option<resourceName>
}
  type response = {
@as("staticIp") staticIp: staticIp
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetStaticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseParameters = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("parameters") parameters: relationalDatabaseParameterList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseMetricData = {
  type t;
  type request = {
@as("statistics") statistics: option<metricStatisticList>,
@as("unit") unit: option<metricUnit>,
@as("endTime") endTime: option<isoDate>,
@as("startTime") startTime: option<isoDate>,
@as("period") period: option<metricPeriod>,
@as("metricName") metricName: option<relationalDatabaseMetricName>,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("metricData") metricData: metricDatapointList,
@as("metricName") metricName: relationalDatabaseMetricName
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseLogEvents = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("startFromHead") startFromHead: boolean,
@as("endTime") endTime: isoDate,
@as("startTime") startTime: isoDate,
@as("logStreamName") logStreamName: option<amazonawsString>,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("nextForwardToken") nextForwardToken: amazonawsString,
@as("nextBackwardToken") nextBackwardToken: amazonawsString,
@as("resourceLogEvents") resourceLogEvents: logEventList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseLogEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseBundles = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("bundles") bundles: relationalDatabaseBundleList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseBundlesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseBlueprints = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("blueprints") blueprints: relationalDatabaseBlueprintList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseBlueprintsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOperation = {
  type t;
  type request = {
@as("operationId") operationId: option<nonEmptyString>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetOperationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancerMetricData = {
  type t;
  type request = {
@as("statistics") statistics: option<metricStatisticList>,
@as("unit") unit: option<metricUnit>,
@as("endTime") endTime: option<timestamp>,
@as("startTime") startTime: option<timestamp>,
@as("period") period: option<metricPeriod>,
@as("metricName") metricName: option<loadBalancerMetricName>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("metricData") metricData: metricDatapointList,
@as("metricName") metricName: loadBalancerMetricName
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancerMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceMetricData = {
  type t;
  type request = {
@as("statistics") statistics: option<metricStatisticList>,
@as("unit") unit: option<metricUnit>,
@as("endTime") endTime: option<timestamp>,
@as("startTime") startTime: option<timestamp>,
@as("period") period: option<metricPeriod>,
@as("metricName") metricName: option<instanceMetricName>,
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("metricData") metricData: metricDatapointList,
@as("metricName") metricName: instanceMetricName
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDistributionMetricData = {
  type t;
  type request = {
@as("statistics") statistics: option<metricStatisticList>,
@as("unit") unit: option<metricUnit>,
@as("period") period: option<metricPeriod>,
@as("endTime") endTime: option<timestamp>,
@as("startTime") startTime: option<timestamp>,
@as("metricName") metricName: option<distributionMetricName>,
@as("distributionName") distributionName: option<resourceName>
}
  type response = {
@as("metricData") metricData: metricDatapointList,
@as("metricName") metricName: distributionMetricName
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDistributionBundles = {
  type t;
  type request = unit
  type response = {
@as("bundles") bundles: distributionBundleList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionBundlesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerServicePowers = {
  type t;
  type request = unit
  type response = {
@as("powers") powers: containerServicePowerList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServicePowersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerServiceMetricData = {
  type t;
  type request = {
@as("statistics") statistics: option<metricStatisticList>,
@as("period") period: option<metricPeriod>,
@as("endTime") endTime: option<isoDate>,
@as("startTime") startTime: option<isoDate>,
@as("metricName") metricName: option<containerServiceMetricName>,
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("metricData") metricData: metricDatapointList,
@as("metricName") metricName: containerServiceMetricName
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServiceMetricDataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerLog = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("filterPattern") filterPattern: amazonawsString,
@as("endTime") endTime: isoDate,
@as("startTime") startTime: isoDate,
@as("containerName") containerName: option<amazonawsString>,
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("logEvents") logEvents: containerServiceLogEventList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerLogCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerImages = {
  type t;
  type request = {
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("containerImages") containerImages: containerImageList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerImagesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerAPIMetadata = {
  type t;
  type request = unit
  type response = {
@as("metadata") metadata: containerServiceMetadataEntryList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerAPIMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBlueprints = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("includeInactive") includeInactive: boolean
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("blueprints") blueprints: blueprintList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetBlueprintsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachCertificateFromDistribution = {
  type t;
  type request = {
@as("distributionName") distributionName: option<resourceName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachCertificateFromDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteKeyPair = {
  type t;
  type request = {
@as("keyPairName") keyPairName: option<resourceName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomainEntry = {
  type t;
  type request = {
@as("domainEntry") domainEntry: option<domainEntry>,
@as("domainName") domainName: option<domainName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDomainEntryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDomain = {
  type t;
  type request = {
@as("domainName") domainName: option<domainName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDistribution = {
  type t;
  type request = {
@as("distributionName") distributionName: resourceName
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomainEntry = {
  type t;
  type request = {
@as("domainEntry") domainEntry: option<domainEntry>,
@as("domainName") domainName: option<domainName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDomainEntryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDomain = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("domainName") domainName: option<domainName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CloseInstancePublicPorts = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>,
@as("portInfo") portInfo: option<portInfo>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CloseInstancePublicPortsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachCertificateToDistribution = {
  type t;
  type request = {
@as("certificateName") certificateName: option<resourceName>,
@as("distributionName") distributionName: option<resourceName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachCertificateToDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRelationalDatabaseParameters = {
  type t;
  type request = {
@as("parameters") parameters: option<relationalDatabaseParameterList>,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateRelationalDatabaseParametersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateRelationalDatabase = {
  type t;
  type request = {
@as("caCertificateIdentifier") caCertificateIdentifier: amazonawsString,
@as("applyImmediately") applyImmediately: boolean,
@as("publiclyAccessible") publiclyAccessible: boolean,
@as("disableBackupRetention") disableBackupRetention: boolean,
@as("enableBackupRetention") enableBackupRetention: boolean,
@as("preferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("preferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("rotateMasterUserPassword") rotateMasterUserPassword: boolean,
@as("masterUserPassword") masterUserPassword: sensitiveString,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateRelationalDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLoadBalancerAttribute = {
  type t;
  type request = {
@as("attributeValue") attributeValue: option<stringMax256>,
@as("attributeName") attributeName: option<loadBalancerAttributeName>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateLoadBalancerAttributeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainEntry = {
  type t;
  type request = {
@as("domainEntry") domainEntry: option<domainEntry>,
@as("domainName") domainName: option<domainName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateDomainEntryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDistribution = {
  type t;
  type request = {
@as("isEnabled") isEnabled: boolean,
@as("cacheBehaviors") cacheBehaviors: cacheBehaviorList,
@as("cacheBehaviorSettings") cacheBehaviorSettings: cacheSettings,
@as("defaultCacheBehavior") defaultCacheBehavior: cacheBehavior,
@as("origin") origin: inputOrigin,
@as("distributionName") distributionName: option<resourceName>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: resourceArn,
@as("resourceName") resourceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TestAlarm = {
  type t;
  type request = {
@as("state") state: option<alarmState>,
@as("alarmName") alarmName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "TestAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: resourceArn,
@as("resourceName") resourceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopRelationalDatabase = {
  type t;
  type request = {
@as("relationalDatabaseSnapshotName") relationalDatabaseSnapshotName: resourceName,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StopRelationalDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopInstance = {
  type t;
  type request = {
@as("force") force: boolean,
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StopInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartRelationalDatabase = {
  type t;
  type request = {
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StartRelationalDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartInstance = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "StartInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SetIpAddressType = {
  type t;
  type request = {
@as("ipAddressType") ipAddressType: option<ipAddressType>,
@as("resourceName") resourceName: option<resourceName>,
@as("resourceType") resourceType: option<resourceType>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "SetIpAddressTypeCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SendContactMethodVerification = {
  type t;
  type request = {
@as("protocol") protocol: option<contactMethodVerificationProtocol>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "SendContactMethodVerificationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ReleaseStaticIp = {
  type t;
  type request = {
@as("staticIpName") staticIpName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ReleaseStaticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootRelationalDatabase = {
  type t;
  type request = {
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "RebootRelationalDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RebootInstance = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "RebootInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutInstancePublicPorts = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>,
@as("portInfos") portInfos: option<portInfoList>
}
  type response = {
@as("operation") operation: operation
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "PutInstancePublicPortsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module PutAlarm = {
  type t;
  type request = {
@as("notificationEnabled") notificationEnabled: boolean,
@as("notificationTriggers") notificationTriggers: notificationTriggerList,
@as("contactProtocols") contactProtocols: contactProtocolsList,
@as("treatMissingData") treatMissingData: treatMissingData,
@as("datapointsToAlarm") datapointsToAlarm: integer,
@as("evaluationPeriods") evaluationPeriods: option<integer>,
@as("threshold") threshold: option<double>,
@as("comparisonOperator") comparisonOperator: option<comparisonOperator>,
@as("monitoredResourceName") monitoredResourceName: option<resourceName>,
@as("metricName") metricName: option<metricName>,
@as("alarmName") alarmName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "PutAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetStaticIps = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("staticIps") staticIps: staticIpList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetStaticIpsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseSnapshot = {
  type t;
  type request = {
@as("relationalDatabaseSnapshotName") relationalDatabaseSnapshotName: option<resourceName>
}
  type response = {
@as("relationalDatabaseSnapshot") relationalDatabaseSnapshot: relationalDatabaseSnapshot
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseEvents = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("durationInMinutes") durationInMinutes: integer,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("relationalDatabaseEvents") relationalDatabaseEvents: relationalDatabaseEventList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseEventsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabase = {
  type t;
  type request = {
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("relationalDatabase") relationalDatabase: relationalDatabase
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOperationsForResource = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("resourceName") resourceName: option<resourceName>
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("nextPageCount") nextPageCount: amazonawsString,
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetOperationsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetOperations = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetOperationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancer = {
  type t;
  type request = {
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("loadBalancer") loadBalancer: loadBalancer
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKeyPair = {
  type t;
  type request = {
@as("keyPairName") keyPairName: option<resourceName>
}
  type response = {
@as("keyPair") keyPair: keyPair
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstancePortStates = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("portStates") portStates: instancePortStateList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstancePortStatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceAccessDetails = {
  type t;
  type request = {
@as("protocol") protocol: instanceAccessProtocol,
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("accessDetails") accessDetails: instanceAccessDetails
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceAccessDetailsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDiskSnapshot = {
  type t;
  type request = {
@as("diskSnapshotName") diskSnapshotName: option<resourceName>
}
  type response = {
@as("diskSnapshot") diskSnapshot: diskSnapshot
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDiskSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDisk = {
  type t;
  type request = {
@as("diskName") diskName: option<resourceName>
}
  type response = {
@as("disk") disk: disk
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDiskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContactMethods = {
  type t;
  type request = {
@as("protocols") protocols: contactProtocolsList
}
  type response = {
@as("contactMethods") contactMethods: contactMethodsList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContactMethodsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetBundles = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("includeInactive") includeInactive: boolean
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("bundles") bundles: bundleList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetBundlesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAlarms = {
  type t;
  type request = {
@as("monitoredResourceName") monitoredResourceName: resourceName,
@as("pageToken") pageToken: amazonawsString,
@as("alarmName") alarmName: resourceName
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("alarms") alarms: alarmsList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetAlarmsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ExportSnapshot = {
  type t;
  type request = {
@as("sourceSnapshotName") sourceSnapshotName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "ExportSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableAddOn = {
  type t;
  type request = {
@as("addOnRequest") addOnRequest: option<addOnRequest>,
@as("resourceName") resourceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "EnableAddOnCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableAddOn = {
  type t;
  type request = {
@as("resourceName") resourceName: option<resourceName>,
@as("addOnType") addOnType: option<addOnType>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DisableAddOnCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachStaticIp = {
  type t;
  type request = {
@as("staticIpName") staticIpName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachStaticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachInstancesFromLoadBalancer = {
  type t;
  type request = {
@as("instanceNames") instanceNames: option<resourceNameList>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachInstancesFromLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DetachDisk = {
  type t;
  type request = {
@as("diskName") diskName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DetachDiskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRelationalDatabaseSnapshot = {
  type t;
  type request = {
@as("relationalDatabaseSnapshotName") relationalDatabaseSnapshotName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteRelationalDatabaseSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteRelationalDatabase = {
  type t;
  type request = {
@as("finalRelationalDatabaseSnapshotName") finalRelationalDatabaseSnapshotName: resourceName,
@as("skipFinalSnapshot") skipFinalSnapshot: boolean,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteRelationalDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancerTlsCertificate = {
  type t;
  type request = {
@as("force") force: boolean,
@as("certificateName") certificateName: option<resourceName>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteLoadBalancerTlsCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLoadBalancer = {
  type t;
  type request = {
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteKnownHostKeys = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteKnownHostKeysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInstanceSnapshot = {
  type t;
  type request = {
@as("instanceSnapshotName") instanceSnapshotName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteInstanceSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInstance = {
  type t;
  type request = {
@as("forceDeleteAddOns") forceDeleteAddOns: boolean,
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDiskSnapshot = {
  type t;
  type request = {
@as("diskSnapshotName") diskSnapshotName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDiskSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDisk = {
  type t;
  type request = {
@as("forceDeleteAddOns") forceDeleteAddOns: boolean,
@as("diskName") diskName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteDiskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteContactMethod = {
  type t;
  type request = {
@as("protocol") protocol: option<contactProtocol>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteContactMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteCertificate = {
  type t;
  type request = {
@as("certificateName") certificateName: option<certificateName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAutoSnapshot = {
  type t;
  type request = {
@as("date") date: option<autoSnapshotDate>,
@as("resourceName") resourceName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteAutoSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteAlarm = {
  type t;
  type request = {
@as("alarmName") alarmName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "DeleteAlarmCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRelationalDatabaseSnapshot = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("relationalDatabaseSnapshotName") relationalDatabaseSnapshotName: option<resourceName>,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateRelationalDatabaseSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRelationalDatabaseFromSnapshot = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("useLatestRestorableTime") useLatestRestorableTime: boolean,
@as("restoreTime") restoreTime: isoDate,
@as("sourceRelationalDatabaseName") sourceRelationalDatabaseName: resourceName,
@as("relationalDatabaseBundleId") relationalDatabaseBundleId: amazonawsString,
@as("relationalDatabaseSnapshotName") relationalDatabaseSnapshotName: resourceName,
@as("publiclyAccessible") publiclyAccessible: boolean,
@as("availabilityZone") availabilityZone: amazonawsString,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateRelationalDatabaseFromSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateRelationalDatabase = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("publiclyAccessible") publiclyAccessible: boolean,
@as("preferredMaintenanceWindow") preferredMaintenanceWindow: amazonawsString,
@as("preferredBackupWindow") preferredBackupWindow: amazonawsString,
@as("masterUserPassword") masterUserPassword: sensitiveString,
@as("masterUsername") masterUsername: option<amazonawsString>,
@as("masterDatabaseName") masterDatabaseName: option<amazonawsString>,
@as("relationalDatabaseBundleId") relationalDatabaseBundleId: option<amazonawsString>,
@as("relationalDatabaseBlueprintId") relationalDatabaseBlueprintId: option<amazonawsString>,
@as("availabilityZone") availabilityZone: amazonawsString,
@as("relationalDatabaseName") relationalDatabaseName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateRelationalDatabaseCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancerTlsCertificate = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("certificateAlternativeNames") certificateAlternativeNames: domainNameList,
@as("certificateDomainName") certificateDomainName: option<domainName>,
@as("certificateName") certificateName: option<resourceName>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateLoadBalancerTlsCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLoadBalancer = {
  type t;
  type request = {
@as("ipAddressType") ipAddressType: ipAddressType,
@as("tags") tags: tagList,
@as("certificateAlternativeNames") certificateAlternativeNames: domainNameList,
@as("certificateDomainName") certificateDomainName: domainName,
@as("certificateName") certificateName: resourceName,
@as("healthCheckPath") healthCheckPath: amazonawsString,
@as("instancePort") instancePort: option<port>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateKeyPair = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("keyPairName") keyPairName: option<resourceName>
}
  type response = {
@as("operation") operation: operation,
@as("privateKeyBase64") privateKeyBase64: base64,
@as("publicKeyBase64") publicKeyBase64: base64,
@as("keyPair") keyPair: keyPair
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateKeyPairCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstancesFromSnapshot = {
  type t;
  type request = {
@as("useLatestRestorableAutoSnapshot") useLatestRestorableAutoSnapshot: boolean,
@as("restoreDate") restoreDate: amazonawsString,
@as("sourceInstanceName") sourceInstanceName: amazonawsString,
@as("ipAddressType") ipAddressType: ipAddressType,
@as("addOns") addOns: addOnRequestList,
@as("tags") tags: tagList,
@as("keyPairName") keyPairName: resourceName,
@as("userData") userData: amazonawsString,
@as("bundleId") bundleId: option<nonEmptyString>,
@as("instanceSnapshotName") instanceSnapshotName: resourceName,
@as("availabilityZone") availabilityZone: option<amazonawsString>,
@as("attachedDiskMapping") attachedDiskMapping: attachedDiskMap,
@as("instanceNames") instanceNames: option<stringList>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateInstancesFromSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstances = {
  type t;
  type request = {
@as("ipAddressType") ipAddressType: ipAddressType,
@as("addOns") addOns: addOnRequestList,
@as("tags") tags: tagList,
@as("keyPairName") keyPairName: resourceName,
@as("userData") userData: amazonawsString,
@as("bundleId") bundleId: option<nonEmptyString>,
@as("blueprintId") blueprintId: option<nonEmptyString>,
@as("customImageName") customImageName: resourceName,
@as("availabilityZone") availabilityZone: option<amazonawsString>,
@as("instanceNames") instanceNames: option<stringList>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInstanceSnapshot = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("instanceName") instanceName: option<resourceName>,
@as("instanceSnapshotName") instanceSnapshotName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateInstanceSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDiskSnapshot = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("instanceName") instanceName: resourceName,
@as("diskSnapshotName") diskSnapshotName: option<resourceName>,
@as("diskName") diskName: resourceName
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDiskSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDiskFromSnapshot = {
  type t;
  type request = {
@as("useLatestRestorableAutoSnapshot") useLatestRestorableAutoSnapshot: boolean,
@as("restoreDate") restoreDate: amazonawsString,
@as("sourceDiskName") sourceDiskName: amazonawsString,
@as("addOns") addOns: addOnRequestList,
@as("tags") tags: tagList,
@as("sizeInGb") sizeInGb: option<integer>,
@as("availabilityZone") availabilityZone: option<nonEmptyString>,
@as("diskSnapshotName") diskSnapshotName: resourceName,
@as("diskName") diskName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDiskFromSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDisk = {
  type t;
  type request = {
@as("addOns") addOns: addOnRequestList,
@as("tags") tags: tagList,
@as("sizeInGb") sizeInGb: option<integer>,
@as("availabilityZone") availabilityZone: option<nonEmptyString>,
@as("diskName") diskName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDiskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContactMethod = {
  type t;
  type request = {
@as("contactEndpoint") contactEndpoint: option<stringMax256>,
@as("protocol") protocol: option<contactProtocol>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContactMethodCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCloudFormationStack = {
  type t;
  type request = {
@as("instances") instances: option<instanceEntryList>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateCloudFormationStackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CopySnapshot = {
  type t;
  type request = {
@as("sourceRegion") sourceRegion: option<regionName>,
@as("targetSnapshotName") targetSnapshotName: option<resourceName>,
@as("useLatestRestorableAutoSnapshot") useLatestRestorableAutoSnapshot: boolean,
@as("restoreDate") restoreDate: amazonawsString,
@as("sourceResourceName") sourceResourceName: amazonawsString,
@as("sourceSnapshotName") sourceSnapshotName: resourceName
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CopySnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachStaticIp = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>,
@as("staticIpName") staticIpName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachStaticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachLoadBalancerTlsCertificate = {
  type t;
  type request = {
@as("certificateName") certificateName: option<resourceName>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachLoadBalancerTlsCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachInstancesToLoadBalancer = {
  type t;
  type request = {
@as("instanceNames") instanceNames: option<resourceNameList>,
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachInstancesToLoadBalancerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AttachDisk = {
  type t;
  type request = {
@as("diskPath") diskPath: option<nonEmptyString>,
@as("instanceName") instanceName: option<resourceName>,
@as("diskName") diskName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AttachDiskCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AllocateStaticIp = {
  type t;
  type request = {
@as("staticIpName") staticIpName: option<resourceName>
}
  type response = {
@as("operations") operations: operationList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "AllocateStaticIpCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabases = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("relationalDatabases") relationalDatabases: relationalDatabaseList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabasesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRelationalDatabaseSnapshots = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("relationalDatabaseSnapshots") relationalDatabaseSnapshots: relationalDatabaseSnapshotList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRelationalDatabaseSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetRegions = {
  type t;
  type request = {
@as("includeRelationalDatabaseAvailabilityZones") includeRelationalDatabaseAvailabilityZones: boolean,
@as("includeAvailabilityZones") includeAvailabilityZones: boolean
}
  type response = {
@as("regions") regions: regionList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetRegionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancers = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("loadBalancers") loadBalancers: loadBalancerList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetKeyPairs = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("keyPairs") keyPairs: keyPairList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetKeyPairsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomain = {
  type t;
  type request = {
@as("domainName") domainName: option<domainName>
}
  type response = {
@as("domain") domain: domain
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDisks = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("disks") disks: diskList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDisksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDiskSnapshots = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("diskSnapshots") diskSnapshots: diskSnapshotList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDiskSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCloudFormationStackRecords = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("cloudFormationStackRecords") cloudFormationStackRecords: cloudFormationStackRecordList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetCloudFormationStackRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetAutoSnapshots = {
  type t;
  type request = {
@as("resourceName") resourceName: option<resourceName>
}
  type response = {
@as("autoSnapshots") autoSnapshots: autoSnapshotDetailsList,
@as("resourceType") resourceType: resourceType,
@as("resourceName") resourceName: resourceName
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetAutoSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDistribution = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("ipAddressType") ipAddressType: ipAddressType,
@as("bundleId") bundleId: option<amazonawsString>,
@as("cacheBehaviors") cacheBehaviors: cacheBehaviorList,
@as("cacheBehaviorSettings") cacheBehaviorSettings: cacheSettings,
@as("defaultCacheBehavior") defaultCacheBehavior: option<cacheBehavior>,
@as("origin") origin: option<inputOrigin>,
@as("distributionName") distributionName: option<resourceName>
}
  type response = {
@as("operation") operation: operation,
@as("distribution") distribution: lightsailDistribution
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateDistributionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateContainerService = {
  type t;
  type request = {
@as("publicDomainNames") publicDomainNames: containerServicePublicDomains,
@as("isDisabled") isDisabled: boolean,
@as("scale") scale: containerServiceScale,
@as("power") power: containerServicePowerName,
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("containerService") containerService: containerService
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "UpdateContainerServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLoadBalancerTlsCertificates = {
  type t;
  type request = {
@as("loadBalancerName") loadBalancerName: option<resourceName>
}
  type response = {
@as("tlsCertificates") tlsCertificates: loadBalancerTlsCertificateList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetLoadBalancerTlsCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceSnapshot = {
  type t;
  type request = {
@as("instanceSnapshotName") instanceSnapshotName: option<resourceName>
}
  type response = {
@as("instanceSnapshot") instanceSnapshot: instanceSnapshot
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceSnapshotCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDomains = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("domains") domains: domainList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDistributions = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString,
@as("distributionName") distributionName: resourceName
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("distributions") distributions: distributionList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetDistributionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerServiceDeployments = {
  type t;
  type request = {
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("deployments") deployments: containerServiceDeploymentList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServiceDeploymentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContainerServiceDeployment = {
  type t;
  type request = {
@as("publicEndpoint") publicEndpoint: endpointRequest,
@as("containers") containers: containerMap,
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("containerService") containerService: containerService
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContainerServiceDeploymentCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateContainerService = {
  type t;
  type request = {
@as("deployment") deployment: containerServiceDeploymentRequest,
@as("publicDomainNames") publicDomainNames: containerServicePublicDomains,
@as("tags") tags: tagList,
@as("scale") scale: option<containerServiceScale>,
@as("power") power: option<containerServicePowerName>,
@as("serviceName") serviceName: option<containerServiceName>
}
  type response = {
@as("containerService") containerService: containerService
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateContainerServiceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstanceSnapshots = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("instanceSnapshots") instanceSnapshots: instanceSnapshotList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceSnapshotsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstance = {
  type t;
  type request = {
@as("instanceName") instanceName: option<resourceName>
}
  type response = {
@as("instance") instance: instance
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstanceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetExportSnapshotRecords = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("exportSnapshotRecords") exportSnapshotRecords: exportSnapshotRecordList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetExportSnapshotRecordsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetContainerServices = {
  type t;
  type request = {
@as("serviceName") serviceName: containerServiceName
}
  type response = {
@as("containerServices") containerServices: containerServiceList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetContainerServicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateCertificate = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("subjectAlternativeNames") subjectAlternativeNames: subjectAlternativeNameList,
@as("domainName") domainName: option<domainName>,
@as("certificateName") certificateName: option<certificateName>
}
  type response = {
@as("operations") operations: operationList,
@as("certificate") certificate: certificateSummary
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "CreateCertificateCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInstances = {
  type t;
  type request = {
@as("pageToken") pageToken: amazonawsString
}
  type response = {
@as("nextPageToken") nextPageToken: amazonawsString,
@as("instances") instances: instanceList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetInstancesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCertificates = {
  type t;
  type request = {
@as("certificateName") certificateName: certificateName,
@as("includeCertificateDetails") includeCertificateDetails: includeCertificateDetails,
@as("certificateStatuses") certificateStatuses: certificateStatusList
}
  type response = {
@as("certificates") certificates: certificateSummaryList
}
  @module("@aws-sdk/client-lightsail") @new external new_: (request) => t = "GetCertificatesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
