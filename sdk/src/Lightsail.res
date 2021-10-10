type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-lightsail") @new
external createClient: unit => awsServiceClient = "LightsailClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type timestamp_ = Js.Date.t
type string_ = string
type long = float
type integer_ = int
type float_ = float
type double = float
type boolean_ = bool
type treatMissingData = [
  | @as("missing") #Missing
  | @as("ignore") #Ignore
  | @as("notBreaching") #NotBreaching
  | @as("breaching") #Breaching
]
type timeOfDay = string
type tagValue = string
type tagKey = string
type stringMax256 = string
type serialNumber = string
type sensitiveString = string
type revocationReason = string
type resourceType = [
  | @as("Certificate") #Certificate
  | @as("Distribution") #Distribution
  | @as("ContactMethod") #ContactMethod
  | @as("Alarm") #Alarm
  | @as("CloudFormationStackRecord") #CloudFormationStackRecord
  | @as("ExportSnapshotRecord") #ExportSnapshotRecord
  | @as("RelationalDatabaseSnapshot") #RelationalDatabaseSnapshot
  | @as("RelationalDatabase") #RelationalDatabase
  | @as("DiskSnapshot") #DiskSnapshot
  | @as("Disk") #Disk
  | @as("LoadBalancerTlsCertificate") #LoadBalancerTlsCertificate
  | @as("LoadBalancer") #LoadBalancer
  | @as("PeeredVpc") #PeeredVpc
  | @as("Domain") #Domain
  | @as("InstanceSnapshot") #InstanceSnapshot
  | @as("KeyPair") #KeyPair
  | @as("StaticIp") #StaticIp
  | @as("Instance") #Instance
  | @as("ContainerService") #ContainerService
]
type resourceName = string
type resourceArn = string
type requestFailureReason = string
type renewalStatusReason = string
type renewalStatus = [
  | @as("Failed") #Failed
  | @as("Success") #Success
  | @as("PendingValidation") #PendingValidation
  | @as("PendingAutoRenewal") #PendingAutoRenewal
]
type relationalDatabasePasswordVersion = [
  | @as("PENDING") #PENDING
  | @as("PREVIOUS") #PREVIOUS
  | @as("CURRENT") #CURRENT
]
type relationalDatabaseMetricName = [
  | @as("NetworkTransmitThroughput") #NetworkTransmitThroughput
  | @as("NetworkReceiveThroughput") #NetworkReceiveThroughput
  | @as("FreeStorageSpace") #FreeStorageSpace
  | @as("DiskQueueDepth") #DiskQueueDepth
  | @as("DatabaseConnections") #DatabaseConnections
  | @as("CPUUtilization") #CPUUtilization
]
type relationalDatabaseEngine = [@as("mysql") #Mysql]
type regionName = [
  | @as("ap-northeast-2") #Ap_Northeast_2
  | @as("ap-northeast-1") #Ap_Northeast_1
  | @as("ap-southeast-2") #Ap_Southeast_2
  | @as("ap-southeast-1") #Ap_Southeast_1
  | @as("ap-south-1") #Ap_South_1
  | @as("ca-central-1") #Ca_Central_1
  | @as("eu-central-1") #Eu_Central_1
  | @as("eu-west-3") #Eu_West_3
  | @as("eu-west-2") #Eu_West_2
  | @as("eu-west-1") #Eu_West_1
  | @as("us-west-2") #Us_West_2
  | @as("us-west-1") #Us_West_1
  | @as("us-east-2") #Us_East_2
  | @as("us-east-1") #Us_East_1
]
type recordState = [@as("Failed") #Failed | @as("Succeeded") #Succeeded | @as("Started") #Started]
type portState = [@as("closed") #Closed | @as("open") #Open]
type portInfoSourceType = [
  | @as("CLOSED") #CLOSED
  | @as("NONE") #NONE
  | @as("INSTANCE") #INSTANCE
  | @as("DEFAULT") #DEFAULT
]
type portAccessType = [@as("Private") #Private | @as("Public") #Public]
type port = int
type originProtocolPolicyEnum = [@as("https-only") #Https_Only | @as("http-only") #Http_Only]
type operationType = [
  | @as("DeleteContainerImage") #DeleteContainerImage
  | @as("RegisterContainerImage") #RegisterContainerImage
  | @as("CreateContainerServiceRegistryLogin") #CreateContainerServiceRegistryLogin
  | @as("CreateContainerServiceDeployment") #CreateContainerServiceDeployment
  | @as("DeleteContainerService") #DeleteContainerService
  | @as("UpdateContainerService") #UpdateContainerService
  | @as("CreateContainerService") #CreateContainerService
  | @as("DeleteCertificate") #DeleteCertificate
  | @as("CreateCertificate") #CreateCertificate
  | @as("SetIpAddressType") #SetIpAddressType
  | @as("UpdateDistributionBundle") #UpdateDistributionBundle
  | @as("DetachCertificateFromDistribution") #DetachCertificateFromDistribution
  | @as("AttachCertificateToDistribution") #AttachCertificateToDistribution
  | @as("ResetDistributionCache") #ResetDistributionCache
  | @as("DeleteDistribution") #DeleteDistribution
  | @as("UpdateDistribution") #UpdateDistribution
  | @as("CreateDistribution") #CreateDistribution
  | @as("DeleteContactMethod") #DeleteContactMethod
  | @as("SendContactMethodVerification") #SendContactMethodVerification
  | @as("GetContactMethods") #GetContactMethods
  | @as("CreateContactMethod") #CreateContactMethod
  | @as("TestAlarm") #TestAlarm
  | @as("DeleteAlarm") #DeleteAlarm
  | @as("GetAlarms") #GetAlarms
  | @as("PutAlarm") #PutAlarm
  | @as("DisableAddOn") #DisableAddOn
  | @as("EnableAddOn") #EnableAddOn
  | @as("StopRelationalDatabase") #StopRelationalDatabase
  | @as("RebootRelationalDatabase") #RebootRelationalDatabase
  | @as("StartRelationalDatabase") #StartRelationalDatabase
  | @as("UpdateRelationalDatabaseParameters") #UpdateRelationalDatabaseParameters
  | @as("DeleteRelationalDatabaseSnapshot") #DeleteRelationalDatabaseSnapshot
  | @as("CreateRelationalDatabaseSnapshot") #CreateRelationalDatabaseSnapshot
  | @as("CreateRelationalDatabaseFromSnapshot") #CreateRelationalDatabaseFromSnapshot
  | @as("DeleteRelationalDatabase") #DeleteRelationalDatabase
  | @as("UpdateRelationalDatabase") #UpdateRelationalDatabase
  | @as("CreateRelationalDatabase") #CreateRelationalDatabase
  | @as("CreateDiskFromSnapshot") #CreateDiskFromSnapshot
  | @as("DeleteDiskSnapshot") #DeleteDiskSnapshot
  | @as("CreateDiskSnapshot") #CreateDiskSnapshot
  | @as("DetachDisk") #DetachDisk
  | @as("AttachDisk") #AttachDisk
  | @as("DeleteDisk") #DeleteDisk
  | @as("CreateDisk") #CreateDisk
  | @as("AttachLoadBalancerTlsCertificate") #AttachLoadBalancerTlsCertificate
  | @as("DeleteLoadBalancerTlsCertificate") #DeleteLoadBalancerTlsCertificate
  | @as("CreateLoadBalancerTlsCertificate") #CreateLoadBalancerTlsCertificate
  | @as("UpdateLoadBalancerAttribute") #UpdateLoadBalancerAttribute
  | @as("DetachInstancesFromLoadBalancer") #DetachInstancesFromLoadBalancer
  | @as("AttachInstancesToLoadBalancer") #AttachInstancesToLoadBalancer
  | @as("DeleteLoadBalancer") #DeleteLoadBalancer
  | @as("CreateLoadBalancer") #CreateLoadBalancer
  | @as("CreateInstancesFromSnapshot") #CreateInstancesFromSnapshot
  | @as("DeleteInstanceSnapshot") #DeleteInstanceSnapshot
  | @as("CreateInstanceSnapshot") #CreateInstanceSnapshot
  | @as("DeleteDomain") #DeleteDomain
  | @as("CreateDomain") #CreateDomain
  | @as("DeleteDomainEntry") #DeleteDomainEntry
  | @as("UpdateDomainEntry") #UpdateDomainEntry
  | @as("DetachStaticIp") #DetachStaticIp
  | @as("AttachStaticIp") #AttachStaticIp
  | @as("ReleaseStaticIp") #ReleaseStaticIp
  | @as("AllocateStaticIp") #AllocateStaticIp
  | @as("CloseInstancePublicPorts") #CloseInstancePublicPorts
  | @as("PutInstancePublicPorts") #PutInstancePublicPorts
  | @as("OpenInstancePublicPorts") #OpenInstancePublicPorts
  | @as("RebootInstance") #RebootInstance
  | @as("StartInstance") #StartInstance
  | @as("StopInstance") #StopInstance
  | @as("CreateInstance") #CreateInstance
  | @as("DeleteInstance") #DeleteInstance
  | @as("DeleteKnownHostKeys") #DeleteKnownHostKeys
]
type operationStatus = [
  | @as("Succeeded") #Succeeded
  | @as("Completed") #Completed
  | @as("Failed") #Failed
  | @as("Started") #Started
  | @as("NotStarted") #NotStarted
]
type nonEmptyString = string
type networkProtocol = [@as("icmp") #Icmp | @as("udp") #Udp | @as("all") #All | @as("tcp") #Tcp]
type metricUnit = [
  | @as("None") #None
  | @as("Count/Second") #Count_Second
  | @as("Terabits/Second") #Terabits_Second
  | @as("Gigabits/Second") #Gigabits_Second
  | @as("Megabits/Second") #Megabits_Second
  | @as("Kilobits/Second") #Kilobits_Second
  | @as("Bits/Second") #Bits_Second
  | @as("Terabytes/Second") #Terabytes_Second
  | @as("Gigabytes/Second") #Gigabytes_Second
  | @as("Megabytes/Second") #Megabytes_Second
  | @as("Kilobytes/Second") #Kilobytes_Second
  | @as("Bytes/Second") #Bytes_Second
  | @as("Count") #Count
  | @as("Percent") #Percent
  | @as("Terabits") #Terabits
  | @as("Gigabits") #Gigabits
  | @as("Megabits") #Megabits
  | @as("Kilobits") #Kilobits
  | @as("Bits") #Bits
  | @as("Terabytes") #Terabytes
  | @as("Gigabytes") #Gigabytes
  | @as("Megabytes") #Megabytes
  | @as("Kilobytes") #Kilobytes
  | @as("Bytes") #Bytes
  | @as("Milliseconds") #Milliseconds
  | @as("Microseconds") #Microseconds
  | @as("Seconds") #Seconds
]
type metricStatistic = [
  | @as("SampleCount") #SampleCount
  | @as("Average") #Average
  | @as("Sum") #Sum
  | @as("Maximum") #Maximum
  | @as("Minimum") #Minimum
]
type metricPeriod = int
type metricName = [
  | @as("BurstCapacityPercentage") #BurstCapacityPercentage
  | @as("BurstCapacityTime") #BurstCapacityTime
  | @as("NetworkTransmitThroughput") #NetworkTransmitThroughput
  | @as("NetworkReceiveThroughput") #NetworkReceiveThroughput
  | @as("FreeStorageSpace") #FreeStorageSpace
  | @as("DiskQueueDepth") #DiskQueueDepth
  | @as("DatabaseConnections") #DatabaseConnections
  | @as("RequestCount") #RequestCount
  | @as("RejectedConnectionCount") #RejectedConnectionCount
  | @as("InstanceResponseTime") #InstanceResponseTime
  | @as("HTTPCode_Instance_5XX_Count") #HTTPCode_Instance_5XX_Count
  | @as("HTTPCode_Instance_4XX_Count") #HTTPCode_Instance_4XX_Count
  | @as("HTTPCode_Instance_3XX_Count") #HTTPCode_Instance_3XX_Count
  | @as("HTTPCode_Instance_2XX_Count") #HTTPCode_Instance_2XX_Count
  | @as("HTTPCode_LB_5XX_Count") #HTTPCode_LB_5XX_Count
  | @as("HTTPCode_LB_4XX_Count") #HTTPCode_LB_4XX_Count
  | @as("UnhealthyHostCount") #UnhealthyHostCount
  | @as("HealthyHostCount") #HealthyHostCount
  | @as("ClientTLSNegotiationErrorCount") #ClientTLSNegotiationErrorCount
  | @as("StatusCheckFailed_System") #StatusCheckFailed_System
  | @as("StatusCheckFailed_Instance") #StatusCheckFailed_Instance
  | @as("StatusCheckFailed") #StatusCheckFailed
  | @as("NetworkOut") #NetworkOut
  | @as("NetworkIn") #NetworkIn
  | @as("CPUUtilization") #CPUUtilization
]
type loadBalancerTlsCertificateStatus = [
  | @as("UNKNOWN") #UNKNOWN
  | @as("FAILED") #FAILED
  | @as("REVOKED") #REVOKED
  | @as("VALIDATION_TIMED_OUT") #VALIDATION_TIMED_OUT
  | @as("EXPIRED") #EXPIRED
  | @as("INACTIVE") #INACTIVE
  | @as("ISSUED") #ISSUED
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
]
type loadBalancerTlsCertificateRevocationReason = [
  | @as("A_A_COMPROMISE") #A_A_COMPROMISE
  | @as("PRIVILEGE_WITHDRAWN") #PRIVILEGE_WITHDRAWN
  | @as("REMOVE_FROM_CRL") #REMOVE_FROM_CRL
  | @as("CERTIFICATE_HOLD") #CERTIFICATE_HOLD
  | @as("CESSATION_OF_OPERATION") #CESSATION_OF_OPERATION
  | @as("SUPERCEDED") #SUPERCEDED
  | @as("AFFILIATION_CHANGED") #AFFILIATION_CHANGED
  | @as("CA_COMPROMISE") #CA_COMPROMISE
  | @as("KEY_COMPROMISE") #KEY_COMPROMISE
  | @as("UNSPECIFIED") #UNSPECIFIED
]
type loadBalancerTlsCertificateRenewalStatus = [
  | @as("FAILED") #FAILED
  | @as("SUCCESS") #SUCCESS
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
  | @as("PENDING_AUTO_RENEWAL") #PENDING_AUTO_RENEWAL
]
type loadBalancerTlsCertificateFailureReason = [
  | @as("OTHER") #OTHER
  | @as("INVALID_PUBLIC_DOMAIN") #INVALID_PUBLIC_DOMAIN
  | @as("DOMAIN_NOT_ALLOWED") #DOMAIN_NOT_ALLOWED
  | @as("ADDITIONAL_VERIFICATION_REQUIRED") #ADDITIONAL_VERIFICATION_REQUIRED
  | @as("NO_AVAILABLE_CONTACTS") #NO_AVAILABLE_CONTACTS
]
type loadBalancerTlsCertificateDomainStatus = [
  | @as("SUCCESS") #SUCCESS
  | @as("FAILED") #FAILED
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
]
type loadBalancerState = [
  | @as("unknown") #Unknown
  | @as("failed") #Failed
  | @as("active_impaired") #Active_Impaired
  | @as("provisioning") #Provisioning
  | @as("active") #Active
]
type loadBalancerProtocol = [@as("HTTP") #HTTP | @as("HTTP_HTTPS") #HTTP_HTTPS]
type loadBalancerMetricName = [
  | @as("RequestCount") #RequestCount
  | @as("RejectedConnectionCount") #RejectedConnectionCount
  | @as("InstanceResponseTime") #InstanceResponseTime
  | @as("HTTPCode_Instance_5XX_Count") #HTTPCode_Instance_5XX_Count
  | @as("HTTPCode_Instance_4XX_Count") #HTTPCode_Instance_4XX_Count
  | @as("HTTPCode_Instance_3XX_Count") #HTTPCode_Instance_3XX_Count
  | @as("HTTPCode_Instance_2XX_Count") #HTTPCode_Instance_2XX_Count
  | @as("HTTPCode_LB_5XX_Count") #HTTPCode_LB_5XX_Count
  | @as("HTTPCode_LB_4XX_Count") #HTTPCode_LB_4XX_Count
  | @as("UnhealthyHostCount") #UnhealthyHostCount
  | @as("HealthyHostCount") #HealthyHostCount
  | @as("ClientTLSNegotiationErrorCount") #ClientTLSNegotiationErrorCount
]
type loadBalancerAttributeName = [
  | @as("SessionStickiness_LB_CookieDurationSeconds") #SessionStickiness_LB_CookieDurationSeconds
  | @as("SessionStickinessEnabled") #SessionStickinessEnabled
  | @as("HealthCheckPath") #HealthCheckPath
]
type keyAlgorithm = string
type issuerCA = string
type isoDate = Js.Date.t
type ipv6Address = string
type ipAddressType = [@as("ipv4") #Ipv4 | @as("dualstack") #Dualstack]
type ipAddress = string
type instanceSnapshotState = [
  | @as("available") #Available
  | @as("error") #Error
  | @as("pending") #Pending
]
type instancePlatform = [@as("WINDOWS") #WINDOWS | @as("LINUX_UNIX") #LINUX_UNIX]
type instanceMetricName = [
  | @as("BurstCapacityPercentage") #BurstCapacityPercentage
  | @as("BurstCapacityTime") #BurstCapacityTime
  | @as("StatusCheckFailed_System") #StatusCheckFailed_System
  | @as("StatusCheckFailed_Instance") #StatusCheckFailed_Instance
  | @as("StatusCheckFailed") #StatusCheckFailed
  | @as("NetworkOut") #NetworkOut
  | @as("NetworkIn") #NetworkIn
  | @as("CPUUtilization") #CPUUtilization
]
type instanceHealthState = [
  | @as("unavailable") #Unavailable
  | @as("draining") #Draining
  | @as("unused") #Unused
  | @as("unhealthy") #Unhealthy
  | @as("healthy") #Healthy
  | @as("initial") #Initial
]
type instanceHealthReason = [
  | @as("Instance.IpUnusable") #Instance_IpUnusable
  | @as("Instance.InvalidState") #Instance_InvalidState
  | @as("Instance.DeregistrationInProgress") #Instance_DeregistrationInProgress
  | @as("Instance.NotInUse") #Instance_NotInUse
  | @as("Instance.NotRegistered") #Instance_NotRegistered
  | @as("Instance.FailedHealthChecks") #Instance_FailedHealthChecks
  | @as("Instance.Timeout") #Instance_Timeout
  | @as("Instance.ResponseCodeMismatch") #Instance_ResponseCodeMismatch
  | @as("Lb.InternalError") #Lb_InternalError
  | @as("Lb.InitialHealthChecking") #Lb_InitialHealthChecking
  | @as("Lb.RegistrationInProgress") #Lb_RegistrationInProgress
]
type instanceAccessProtocol = [@as("rdp") #Rdp | @as("ssh") #Ssh]
type includeCertificateDetails = bool
type inUseResourceCount = int
type headerEnum = [
  | @as("Referer") #Referer
  | @as("Origin") #Origin
  | @as("Host") #Host
  | @as("CloudFront-Viewer-Country") #CloudFront_Viewer_Country
  | @as("CloudFront-Is-Tablet-Viewer") #CloudFront_Is_Tablet_Viewer
  | @as("CloudFront-Is-SmartTV-Viewer") #CloudFront_Is_SmartTV_Viewer
  | @as("CloudFront-Is-Mobile-Viewer") #CloudFront_Is_Mobile_Viewer
  | @as("CloudFront-Is-Desktop-Viewer") #CloudFront_Is_Desktop_Viewer
  | @as("CloudFront-Forwarded-Proto") #CloudFront_Forwarded_Proto
  | @as("Authorization") #Authorization
  | @as("Accept-Language") #Accept_Language
  | @as("Accept-Encoding") #Accept_Encoding
  | @as("Accept-Datetime") #Accept_Datetime
  | @as("Accept-Charset") #Accept_Charset
  | @as("Accept") #Accept
]
type forwardValues = [@as("all") #All | @as("allow-list") #Allow_List | @as("none") #None]
type exportSnapshotRecordSourceType = [
  | @as("DiskSnapshot") #DiskSnapshot
  | @as("InstanceSnapshot") #InstanceSnapshot
]
type eligibleToRenew = string
type domainName = string
type domainEntryType = string
type domainEntryOptionsKeys = string
type distributionMetricName = [
  | @as("Http5xxErrorRate") #Http5xxErrorRate
  | @as("Http4xxErrorRate") #Http4xxErrorRate
  | @as("TotalErrorRate") #TotalErrorRate
  | @as("BytesUploaded") #BytesUploaded
  | @as("BytesDownloaded") #BytesDownloaded
  | @as("Requests") #Requests
]
type diskState = [
  | @as("unknown") #Unknown
  | @as("in-use") #In_Use
  | @as("available") #Available
  | @as("error") #Error
  | @as("pending") #Pending
]
type diskSnapshotState = [
  | @as("unknown") #Unknown
  | @as("error") #Error
  | @as("completed") #Completed
  | @as("pending") #Pending
]
type containerServiceStateDetailCode = [
  | @as("UNKNOWN_ERROR") #UNKNOWN_ERROR
  | @as("CERTIFICATE_LIMIT_EXCEEDED") #CERTIFICATE_LIMIT_EXCEEDED
  | @as("ACTIVATING_DEPLOYMENT") #ACTIVATING_DEPLOYMENT
  | @as("EVALUATING_HEALTH_CHECK") #EVALUATING_HEALTH_CHECK
  | @as("CREATING_DEPLOYMENT") #CREATING_DEPLOYMENT
  | @as("PROVISIONING_SERVICE") #PROVISIONING_SERVICE
  | @as("PROVISIONING_CERTIFICATE") #PROVISIONING_CERTIFICATE
  | @as("CREATING_NETWORK_INFRASTRUCTURE") #CREATING_NETWORK_INFRASTRUCTURE
  | @as("CREATING_SYSTEM_RESOURCES") #CREATING_SYSTEM_RESOURCES
]
type containerServiceState = [
  | @as("DEPLOYING") #DEPLOYING
  | @as("DISABLED") #DISABLED
  | @as("DELETING") #DELETING
  | @as("UPDATING") #UPDATING
  | @as("RUNNING") #RUNNING
  | @as("READY") #READY
  | @as("PENDING") #PENDING
]
type containerServiceScale = int
type containerServiceProtocol = [
  | @as("UDP") #UDP
  | @as("TCP") #TCP
  | @as("HTTPS") #HTTPS
  | @as("HTTP") #HTTP
]
type containerServicePowerName = [
  | @as("xlarge") #Xlarge
  | @as("large") #Large
  | @as("medium") #Medium
  | @as("small") #Small
  | @as("micro") #Micro
  | @as("nano") #Nano
]
type containerServiceName = string
type containerServiceMetricName = [
  | @as("MemoryUtilization") #MemoryUtilization
  | @as("CPUUtilization") #CPUUtilization
]
type containerServiceDeploymentState = [
  | @as("FAILED") #FAILED
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
  | @as("ACTIVATING") #ACTIVATING
]
type containerName = string
type containerLabel = string
type contactProtocol = [@as("SMS") #SMS | @as("Email") #Email]
type contactMethodVerificationProtocol = [@as("Email") #Email]
type contactMethodStatus = [
  | @as("Invalid") #Invalid
  | @as("Valid") #Valid
  | @as("PendingVerification") #PendingVerification
]
type comparisonOperator = [
  | @as("LessThanOrEqualToThreshold") #LessThanOrEqualToThreshold
  | @as("LessThanThreshold") #LessThanThreshold
  | @as("GreaterThanThreshold") #GreaterThanThreshold
  | @as("GreaterThanOrEqualToThreshold") #GreaterThanOrEqualToThreshold
]
type cloudFormationStackRecordSourceType = [@as("ExportSnapshotRecord") #ExportSnapshotRecord]
type certificateStatus = [
  | @as("FAILED") #FAILED
  | @as("REVOKED") #REVOKED
  | @as("VALIDATION_TIMED_OUT") #VALIDATION_TIMED_OUT
  | @as("EXPIRED") #EXPIRED
  | @as("INACTIVE") #INACTIVE
  | @as("ISSUED") #ISSUED
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
]
type certificateName = string
type blueprintType = [@as("app") #App | @as("os") #Os]
type behaviorEnum = [@as("cache") #Cache | @as("dont-cache") #Dont_Cache]
type base64 = string
type autoSnapshotStatus = [
  | @as("NotFound") #NotFound
  | @as("InProgress") #InProgress
  | @as("Failed") #Failed
  | @as("Success") #Success
]
type autoSnapshotDate = string
type alarmState = [
  | @as("INSUFFICIENT_DATA") #INSUFFICIENT_DATA
  | @as("ALARM") #ALARM
  | @as("OK") #OK
]
type addOnType = [@as("AutoSnapshot") #AutoSnapshot]
type accessDirection = [@as("outbound") #Outbound | @as("inbound") #Inbound]
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Describes a tag key and optional value assigned to an Amazon Lightsail resource.</p>
         <p>For more information about tags in Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
type tag = {
  @ocaml.doc("<p>The value of the tag.</p>
         <p>Constraints: Tag values accept a maximum of 256 letters, numbers, spaces in UTF-8, or the
      following characters: + - = . _ : / @</p>")
  value: option<tagValue>,
  @ocaml.doc("<p>The key of the tag.</p>
         <p>Constraints: Tag keys accept a maximum of 128 letters, numbers, spaces in UTF-8, or the
      following characters: + - = . _ : / @</p>")
  key: option<tagKey>,
}
type subjectAlternativeNameList = array<domainName>
type stringList = array<string_>
@ocaml.doc("<p>Describes the domain name system (DNS) records to add to your domain's DNS to validate it
      for an Amazon Lightsail certificate.</p>")
type resourceRecord = {
  @ocaml.doc("<p>The value for the DNS record.</p>") value: option<string_>,
  @ocaml.doc("<p>The DNS record type.</p>") @as("type") type_: option<string_>,
  @ocaml.doc("<p>The name of the record.</p>") name: option<string_>,
}
type resourceNameList = array<resourceName>
@ocaml.doc("<p>Describes the resource location.</p>")
type resourceLocation = {
  @ocaml.doc("<p>The AWS Region name.</p>") regionName: option<regionName>,
  @ocaml.doc(
    "<p>The Availability Zone. Follows the format <code>us-east-2a</code> (case-sensitive).</p>"
  )
  availabilityZone: option<string_>,
}
@ocaml.doc("<p>Describes the parameters of a database.</p>")
type relationalDatabaseParameter = {
  @ocaml.doc("<p>Specifies the value of the parameter.</p>") parameterValue: option<string_>,
  @ocaml.doc("<p>Specifies the name of the parameter.</p>") parameterName: option<string_>,
  @ocaml.doc("<p>A Boolean value indicating whether the parameter can be modified.</p>")
  isModifiable: option<boolean_>,
  @ocaml.doc("<p>Provides a description of the parameter.</p>") description: option<string_>,
  @ocaml.doc("<p>Specifies the valid data type for the parameter.</p>") dataType: option<string_>,
  @ocaml.doc("<p>Specifies the engine-specific parameter type.</p>") applyType: option<string_>,
  @ocaml.doc("<p>Indicates when parameter updates are applied.</p>
         <p>Can be <code>immediate</code> or <code>pending-reboot</code>.</p>")
  applyMethod: option<string_>,
  @ocaml.doc("<p>Specifies the valid range of values for the parameter.</p>")
  allowedValues: option<string_>,
}
@ocaml.doc("<p>Describes the hardware of a database.</p>")
type relationalDatabaseHardware = {
  @ocaml.doc("<p>The amount of RAM in GB for the database.</p>") ramSizeInGb: option<float_>,
  @ocaml.doc("<p>The size of the disk for the database.</p>") diskSizeInGb: option<integer_>,
  @ocaml.doc("<p>The number of vCPUs for the database.</p>") cpuCount: option<integer_>,
}
@ocaml.doc("<p>Describes an endpoint for a database.</p>")
type relationalDatabaseEndpoint = {
  @ocaml.doc("<p>Specifies the DNS address of the database.</p>") address: option<nonEmptyString>,
  @ocaml.doc("<p>Specifies the port that the database is listening on.</p>") port: option<integer_>,
}
@ocaml.doc("<p>Describes a database bundle. A bundle describes the performance specifications of the
      database.</p>")
type relationalDatabaseBundle = {
  @ocaml.doc("<p>A Boolean value indicating whether the database bundle is active.</p>")
  isActive: option<boolean_>,
  @ocaml.doc("<p>A Boolean value indicating whether the database bundle is encrypted.</p>")
  isEncrypted: option<boolean_>,
  @ocaml.doc("<p>The number of virtual CPUs (vCPUs) for the database bundle.</p>")
  cpuCount: option<integer_>,
  @ocaml.doc("<p>The data transfer rate per month in GB for the database bundle.</p>")
  transferPerMonthInGb: option<integer_>,
  @ocaml.doc("<p>The size of the disk for the database bundle.</p>") diskSizeInGb: option<integer_>,
  @ocaml.doc(
    "<p>The amount of RAM in GB (for example, <code>2.0</code>) for the database bundle.</p>"
  )
  ramSizeInGb: option<float_>,
  @ocaml.doc("<p>The cost of the database bundle in US currency.</p>") price: option<float_>,
  @ocaml.doc("<p>The name for the database bundle.</p>") name: option<string_>,
  @ocaml.doc("<p>The ID for the database bundle.</p>") bundleId: option<string_>,
}
@ocaml.doc("<p>Describes a database image, or blueprint. A blueprint describes the major engine version
      of a database.</p>")
type relationalDatabaseBlueprint = {
  @ocaml.doc("<p>A Boolean value indicating whether the engine version is the default for the database
      blueprint.</p>")
  isEngineDefault: option<boolean_>,
  @ocaml.doc("<p>The description of the database engine version for the database blueprint.</p>")
  engineVersionDescription: option<string_>,
  @ocaml.doc("<p>The description of the database engine for the database blueprint.</p>")
  engineDescription: option<string_>,
  @ocaml.doc("<p>The database engine version for the database blueprint (for example,
      <code>5.7.23</code>).</p>")
  engineVersion: option<string_>,
  @ocaml.doc(
    "<p>The database software of the database blueprint (for example, <code>MySQL</code>).</p>"
  )
  engine: option<relationalDatabaseEngine>,
  @ocaml.doc("<p>The ID for the database blueprint.</p>") blueprintId: option<string_>,
}
type portMap = Js.Dict.t<containerServiceProtocol>
type portList = array<port>
@ocaml.doc("<p>Describes a pending database value modification.</p>")
type pendingModifiedRelationalDatabaseValues = {
  @ocaml.doc("<p>A Boolean value indicating whether automated backup retention is enabled.</p>")
  backupRetentionEnabled: option<boolean_>,
  @ocaml.doc("<p>The database engine version.</p>") engineVersion: option<string_>,
  @ocaml.doc("<p>The password for the master user of the database.</p>")
  masterUserPassword: option<string_>,
}
@ocaml.doc("<p>Describes a pending database maintenance action.</p>")
type pendingMaintenanceAction = {
  @ocaml.doc("<p>The effective date of the pending database maintenance action.</p>")
  currentApplyDate: option<isoDate>,
  @ocaml.doc("<p>Additional detail about the pending database maintenance action.</p>")
  description: option<nonEmptyString>,
  @ocaml.doc("<p>The type of pending database maintenance action.</p>")
  action: option<nonEmptyString>,
}
@ocaml.doc("<p>The password data for the Windows Server-based instance, including the ciphertext and the
      key pair name.</p>")
type passwordData = {
  @ocaml.doc("<p>The name of the key pair that you used when creating your instance. If no key pair name
      was specified when creating the instance, Lightsail uses the default key pair
        (<code>LightsailDefaultKeyPair</code>).</p>
         <p>If you are using a custom key pair, you need to use your own means of decrypting your
      password using the <code>ciphertext</code>. Lightsail creates the ciphertext by encrypting
      your password with the public key part of this key pair.</p>")
  keyPairName: option<resourceName>,
  @ocaml.doc("<p>The encrypted password. Ciphertext will be an empty string if access to your new instance
      is not ready yet. When you create an instance, it can take up to 15 minutes for the instance
      to be ready.</p>
         <note>
            <p>If you use the default key pair (<code>LightsailDefaultKeyPair</code>), the decrypted
        password will be available in the password field.</p>
            <p>If you are using a custom key pair, you need to use your own means of decryption.</p>
            <p>If you change the Administrator password on the instance, Lightsail will continue to
        return the original ciphertext value. When accessing the instance using RDP, you need to
        manually enter the Administrator password after changing it from the default.</p>
         </note>")
  ciphertext: option<string_>,
}
@ocaml.doc("<p>Describes the origin resource of an Amazon Lightsail content delivery network (CDN)
      distribution.</p>
         <p>An origin can be a Lightsail instance or load balancer. A distribution pulls content
      from an origin, caches it, and serves it to viewers via a worldwide network of edge
      servers.</p>")
type origin = {
  @ocaml.doc("<p>The protocol that your Amazon Lightsail distribution uses when establishing a connection
      with your origin to pull content.</p>")
  protocolPolicy: option<originProtocolPolicyEnum>,
  @ocaml.doc("<p>The AWS Region name of the origin resource.</p>") regionName: option<regionName>,
  @ocaml.doc("<p>The resource type of the origin resource (e.g., <i>Instance</i>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The name of the origin resource.</p>") name: option<resourceName>,
}
type notificationTriggerList = array<alarmState>
@ocaml.doc("<p>Describes the monthly data transfer in and out of your virtual private server (or
        <i>instance</i>).</p>")
type monthlyTransfer = {
  @ocaml.doc("<p>The amount allocated per month (in GB).</p>")
  gbPerMonthAllocated: option<integer_>,
}
@ocaml.doc("<p>Describes resource being monitored by an alarm.</p>
         <p>An alarm is a way to monitor your Amazon Lightsail resource metrics. For more information,
      see <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms\">Alarms
        in Amazon Lightsail</a>.</p>")
type monitoredResourceInfo = {
  @ocaml.doc("<p>The Lightsail resource type of the resource being monitored.</p>
         <p>Instances, load balancers, and relational databases are the only Lightsail resources
      that can currently be monitored by alarms.</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The name of the Lightsail resource being monitored.</p>")
  name: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource being monitored.</p>")
  arn: option<resourceArn>,
}
type metricStatisticList = array<metricStatistic>
@ocaml.doc("<p>Describes the metric data point.</p>")
type metricDatapoint = {
  @ocaml.doc("<p>The unit. </p>") @as("unit") unit_: option<metricUnit>,
  @ocaml.doc("<p>The timestamp (e.g., <code>1479816991.349</code>).</p>") @as("timestamp")
  timestamp_: option<timestamp_>,
  @ocaml.doc("<p>The sum.</p>") sum: option<double>,
  @ocaml.doc("<p>The sample count.</p>") sampleCount: option<double>,
  @ocaml.doc("<p>The minimum.</p>") minimum: option<double>,
  @ocaml.doc("<p>The maximum.</p>") maximum: option<double>,
  @ocaml.doc("<p>The average.</p>") average: option<double>,
}
@ocaml.doc("<p>Describes a database log event.</p>")
type logEvent = {
  @ocaml.doc("<p>The message of the database log event.</p>") message: option<string_>,
  @ocaml.doc("<p>The timestamp when the database log event was created.</p>")
  createdAt: option<isoDate>,
}
@ocaml.doc("<p>Provides a summary of SSL/TLS certificate metadata.</p>")
type loadBalancerTlsCertificateSummary = {
  @ocaml.doc("<p>When <code>true</code>, the SSL/TLS certificate is attached to the Lightsail load
      balancer.</p>")
  isAttached: option<boolean_>,
  @ocaml.doc("<p>The name of the SSL/TLS certificate.</p>") name: option<resourceName>,
}
@ocaml.doc("<p>Describes the validation record of each domain name in the SSL/TLS certificate.</p>")
type loadBalancerTlsCertificateDomainValidationRecord = {
  @ocaml.doc("<p>The domain name against which your SSL/TLS certificate was validated.</p>")
  domainName: option<domainName>,
  @ocaml.doc("<p>The validation status. Valid values are listed below.</p>")
  validationStatus: option<loadBalancerTlsCertificateDomainStatus>,
  @ocaml.doc("<p>The value for that type.</p>") value: option<nonEmptyString>,
  @ocaml.doc("<p>The type of validation record. For example, <code>CNAME</code> for domain
      validation.</p>")
  @as("type")
  type_: option<nonEmptyString>,
  @ocaml.doc("<p>A fully qualified domain name in the certificate. For example,
      <code>example.com</code>.</p>")
  name: option<nonEmptyString>,
}
@ocaml.doc("<p>Contains information about the domain names on an SSL/TLS certificate that you will use to
      validate domain ownership.</p>")
type loadBalancerTlsCertificateDomainValidationOption = {
  @ocaml.doc("<p>The status of the domain validation. Valid values are listed below.</p>")
  validationStatus: option<loadBalancerTlsCertificateDomainStatus>,
  @ocaml.doc("<p>The fully qualified domain name in the certificate request.</p>")
  domainName: option<domainName>,
}
type loadBalancerConfigurationOptions = Js.Dict.t<string_>
type ipv6AddressList = array<ipv6Address>
@ocaml.doc("<p>Describes the virtual private server (or <i>instance</i>) status.</p>")
type instanceState = {
  @ocaml.doc(
    "<p>The state of the instance (e.g., <code>running</code> or <code>pending</code>).</p>"
  )
  name: option<string_>,
  @ocaml.doc("<p>The status code for the instance.</p>") code: option<integer_>,
}
type instancePlatformList = array<instancePlatform>
@ocaml.doc("<p>Describes information about the health of the instance.</p>")
type instanceHealthSummary = {
  @ocaml.doc("<p>More information about the instance health. If the <code>instanceHealth</code> is
        <code>healthy</code>, then an <code>instanceHealthReason</code> value is not
      provided.</p>
         <p>If <b>
               <code>instanceHealth</code>
            </b> is <code>initial</code>,
      the <b>
               <code>instanceHealthReason</code>
            </b> value can be one of the
      following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>Lb.RegistrationInProgress</code>
                  </b> - The target
          instance is in the process of being registered with the load balancer.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Lb.InitialHealthChecking</code>
                  </b> - The
          Lightsail load balancer is still sending the target instance the minimum number of
          health checks required to determine its health status.</p>
            </li>
         </ul>
         <p>If <b>
               <code>instanceHealth</code>
            </b> is <code>unhealthy</code>,
      the <b>
               <code>instanceHealthReason</code>
            </b> value can be one of the
      following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>Instance.ResponseCodeMismatch</code>
                  </b> - The
          health checks did not return an expected HTTP code.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Instance.Timeout</code>
                  </b> - The health check
          requests timed out.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Instance.FailedHealthChecks</code>
                  </b> - The health
          checks failed because the connection to the target instance timed out, the target instance
          response was malformed, or the target instance failed the health check for an unknown
          reason.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Lb.InternalError</code>
                  </b> - The health checks
          failed due to an internal error.</p>
            </li>
         </ul>
         <p>If <b>
               <code>instanceHealth</code>
            </b> is <code>unused</code>,
      the <b>
               <code>instanceHealthReason</code>
            </b> value can be one of the
      following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>Instance.NotRegistered</code>
                  </b> - The target
          instance is not registered with the target group.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Instance.NotInUse</code>
                  </b> - The target group is
          not used by any load balancer, or the target instance is in an Availability Zone that is
          not enabled for its load balancer.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Instance.IpUnusable</code>
                  </b> - The target IP
          address is reserved for use by a Lightsail load balancer.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Instance.InvalidState</code>
                  </b> - The target is in
          the stopped or terminated state.</p>
            </li>
         </ul>
         <p>If <b>
               <code>instanceHealth</code>
            </b> is <code>draining</code>,
      the <b>
               <code>instanceHealthReason</code>
            </b> value can be one of the
      following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>Instance.DeregistrationInProgress</code>
                  </b> - The
          target instance is in the process of being deregistered and the deregistration delay
          period has not expired.</p>
            </li>
         </ul>")
  instanceHealthReason: option<instanceHealthReason>,
  @ocaml.doc("<p>Describes the overall instance health. Valid values are below.</p>")
  instanceHealth: option<instanceHealthState>,
  @ocaml.doc("<p>The name of the Lightsail instance for which you are requesting health check
      data.</p>")
  instanceName: option<resourceName>,
}
@ocaml.doc("<p>Describes the Amazon Elastic Compute Cloud instance and related resources to be created using the
        <code>create cloud formation stack</code> operation.</p>")
type instanceEntry = {
  @ocaml.doc("<p>The Availability Zone for the new Amazon EC2 instance.</p>")
  availabilityZone: string_,
  @ocaml.doc("<p>A launch script you can create that configures a server with additional user data. For
      example, you might want to run <code>apt-get -y update</code>.</p>
         <note>
            <p>Depending on the machine image you choose, the command to get software on your instance
        varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
          <code>apt-get</code>, and FreeBSD uses <code>pkg</code>.</p>
         </note>")
  userData: option<string_>,
  @ocaml.doc("<p>The port configuration to use for the new Amazon EC2 instance.</p>
      
         <p>The following configuration options are available:</p>
         <ul>
            <li>
               <p>
                  <code>DEFAULT</code> - Use the default firewall settings from the Lightsail instance
          blueprint. If this is specified, then IPv4 and IPv6 will be configured for the new
          instance that is created in Amazon EC2.</p>
            </li>
            <li>
               <p>
                  <code>INSTANCE</code> - Use the configured firewall settings from the source
          Lightsail instance. If this is specified, the new instance that is created in Amazon EC2 will
          be configured to match the configuration of the source Lightsail instance. For example,
          if the source instance is configured for dual-stack (IPv4 and IPv6), then IPv4 and IPv6
          will be configured for the new instance that is created in Amazon EC2. If the source instance
          is configured for IPv4 only, then only IPv4 will be configured for the new instance that
          is created in Amazon EC2.</p>
            </li>
            <li>
               <p>
                  <code>NONE</code> - Use the default Amazon EC2 security group. If this is specified, then
          only IPv4 will be configured for the new instance that is created in Amazon EC2.</p>
            </li>
            <li>
               <p>
                  <code>CLOSED</code> - All ports closed. If this is specified, then only IPv4 will be
          configured for the new instance that is created in Amazon EC2.</p>
            </li>
         </ul>
         <note>
            <p>If you configured <code>lightsail-connect</code> as a <code>cidrListAliases</code> on
        your instance, or if you chose to allow the Lightsail browser-based SSH or RDP clients to
        connect to your instance, that configuration is not carried over to your new Amazon EC2
        instance.</p>
         </note>")
  portInfoSource: portInfoSourceType,
  @ocaml.doc(
    "<p>The instance type (e.g., <code>t2.micro</code>) to use for the new Amazon EC2 instance.</p>"
  )
  instanceType: nonEmptyString,
  @ocaml.doc("<p>The name of the export snapshot record, which contains the exported Lightsail instance
      snapshot that will be used as the source of the new Amazon EC2 instance.</p>
         <p>Use the <code>get export snapshot records</code> operation to get a list of export
      snapshot records that you can use to create a CloudFormation stack.</p>")
  sourceName: resourceName,
}
@ocaml.doc("<p>Describes the origin resource of an Amazon Lightsail content delivery network (CDN)
      distribution.</p>
         <p>An origin can be a Lightsail instance or load balancer. A distribution pulls content
      from an origin, caches it, and serves it to viewers via a worldwide network of edge
      servers.</p>")
type inputOrigin = {
  @ocaml.doc("<p>The protocol that your Amazon Lightsail distribution uses when establishing a connection
      with your origin to pull content.</p>")
  protocolPolicy: option<originProtocolPolicyEnum>,
  @ocaml.doc("<p>The AWS Region name of the origin resource.</p>") regionName: option<regionName>,
  @ocaml.doc("<p>The name of the origin resource.</p>") name: option<resourceName>,
}
@ocaml.doc("<p>Describes the public SSH host keys or the RDP certificate.</p>")
type hostKeyAttributes = {
  @ocaml.doc("<p>The returned RDP certificate is not valid after this point in time.</p>
         <p>This value is listed only for RDP certificates.</p>")
  notValidAfter: option<isoDate>,
  @ocaml.doc("<p>The returned RDP certificate is valid after this point in time.</p>
         <p>This value is listed only for RDP certificates.</p>")
  notValidBefore: option<isoDate>,
  @ocaml.doc("<p>The SHA-256 fingerprint of the returned SSH host key or RDP certificate.</p>
         <ul>
            <li>
               <p>Example of an SHA-256 SSH fingerprint:</p>
               <p>
                  <code>SHA256:KTsMnRBh1IhD17HpdfsbzeGA4jOijm5tyXsMjKVbB8o</code>
               </p>
            </li>
            <li>
               <p>Example of an SHA-256 RDP fingerprint:</p>
               <p>
                  <code>03:9b:36:9f:4b:de:4e:61:70:fc:7c:c9:78:e7:d2:1a:1c:25:a8:0c:91:f6:7c:e4:d6:a0:85:c8:b4:53:99:68</code>
               </p>
            </li>
         </ul>")
  fingerprintSHA256: option<string_>,
  @ocaml.doc("<p>The SHA-1 fingerprint of the returned SSH host key or RDP certificate.</p>
         <ul>
            <li>
               <p>Example of an SHA-1 SSH fingerprint:</p>
               <p>
                  <code>SHA1:1CHH6FaAaXjtFOsR/t83vf91SR0</code>
               </p>
            </li>
            <li>
               <p>Example of an SHA-1 RDP fingerprint:</p>
               <p>
                  <code>af:34:51:fe:09:f0:e0:da:b8:4e:56:ca:60:c2:10:ff:38:06:db:45</code>
               </p>
            </li>
         </ul>")
  fingerprintSHA1: option<string_>,
  @ocaml.doc("<p>The time that the SSH host key or RDP certificate was recorded by Lightsail.</p>")
  witnessedAt: option<isoDate>,
  @ocaml.doc("<p>The public SSH host key or the RDP certificate.</p>") publicKey: option<string_>,
  @ocaml.doc("<p>The SSH host key algorithm or the RDP certificate format.</p>
         <p>For SSH host keys, the algorithm may be <code>ssh-rsa</code>,
        <code>ecdsa-sha2-nistp256</code>, <code>ssh-ed25519</code>, etc. For RDP certificates, the
      algorithm is always <code>x509-cert</code>.</p>")
  algorithm: option<string_>,
}
type headerForwardList = array<headerEnum>
type environment = Js.Dict.t<string_>
type domainNameList = array<domainName>
type domainEntryOptions = Js.Dict.t<string_>
@ocaml.doc("<p>Describes the specifications of a distribution bundle.</p>")
type distributionBundle = {
  @ocaml.doc("<p>Indicates whether the bundle is active, and can be specified for a new
      distribution.</p>")
  isActive: option<boolean_>,
  @ocaml.doc("<p>The monthly network transfer quota of the bundle.</p>")
  transferPerMonthInGb: option<integer_>,
  @ocaml.doc("<p>The monthly price, in US dollars, of the bundle.</p>") price: option<float_>,
  @ocaml.doc("<p>The name of the distribution bundle.</p>") name: option<string_>,
  @ocaml.doc("<p>The ID of the bundle.</p>") bundleId: option<string_>,
}
@ocaml.doc("<p>Describes a disk snapshot.</p>")
type diskSnapshotInfo = {
  @ocaml.doc("<p>The size of the disk in GB (e.g., <code>32</code>).</p>")
  sizeInGb: option<integer_>,
}
@ocaml.doc("<p>Describes a block storage disk mapping.</p>")
type diskMap = {
  @ocaml.doc("<p>The new disk name (e.g., <code>my-new-disk</code>).</p>")
  newDiskName: option<resourceName>,
  @ocaml.doc("<p>The original disk path exposed to the instance (for example,
      <code>/dev/sdh</code>).</p>")
  originalDiskPath: option<nonEmptyString>,
}
@ocaml.doc("<p>Describes a disk.</p>")
type diskInfo = {
  @ocaml.doc("<p>A Boolean value indicating whether this disk is a system disk (has an operating system
      loaded on it).</p>")
  isSystemDisk: option<boolean_>,
  @ocaml.doc("<p>The size of the disk in GB (e.g., <code>32</code>).</p>")
  sizeInGb: option<integer_>,
  @ocaml.doc("<p>The disk path.</p>") path: option<nonEmptyString>,
  @ocaml.doc("<p>The disk name.</p>") name: option<string_>,
}
@ocaml.doc("<p>Describes the destination of a record.</p>")
type destinationInfo = {
  @ocaml.doc("<p>The destination service of the record.</p>") service: option<nonEmptyString>,
  @ocaml.doc("<p>The ID of the resource created at the destination.</p>")
  id: option<nonEmptyString>,
}
@ocaml.doc("<p>Describes the current state of a container service.</p>")
type containerServiceStateDetail = {
  @ocaml.doc("<p>A message that provides more information for the state code.</p>
         <note>
            <p>The state detail is populated only when a container service is in a
        <code>PENDING</code>, <code>DEPLOYING</code>, or <code>UPDATING</code> state.</p>
         </note>")
  message: option<string_>,
  @ocaml.doc("<p>The state code of the container service.</p>
         <p>The following state codes are possible:</p>
         <ul>
            <li>
               <p>The following state codes are possible if your container service is in a
            <code>DEPLOYING</code> or <code>UPDATING</code> state:</p>
               <ul>
                  <li>
                     <p>
                        <code>CREATING_SYSTEM_RESOURCES</code> - The system resources for your container
              service are being created.</p>
                  </li>
                  <li>
                     <p>
                        <code>CREATING_NETWORK_INFRASTRUCTURE</code> - The network infrastructure for your
              container service are being created.</p>
                  </li>
                  <li>
                     <p>
                        <code>PROVISIONING_CERTIFICATE</code> - The SSL/TLS certificate for your container
              service is being created.</p>
                  </li>
                  <li>
                     <p>
                        <code>PROVISIONING_SERVICE</code> - Your container service is being
              provisioned.</p>
                  </li>
                  <li>
                     <p>
                        <code>CREATING_DEPLOYMENT</code> - Your deployment is being created on your
              container service.</p>
                  </li>
                  <li>
                     <p>
                        <code>EVALUATING_HEALTH_CHECK</code> - The health of your deployment is being
              evaluated.</p>
                  </li>
                  <li>
                     <p>
                        <code>ACTIVATING_DEPLOYMENT</code> - Your deployment is being activated.</p>
                  </li>
               </ul>
            </li>
            <li>
               <p>The following state codes are possible if your container service is in a
            <code>PENDING</code> state:</p>
               <ul>
                  <li>
                     <p>
                        <code>CERTIFICATE_LIMIT_EXCEEDED</code> - The SSL/TLS certificate required for
              your container service exceeds the maximum number of certificates allowed for your
              account.</p>
                  </li>
                  <li>
                     <p>
                        <code>UNKNOWN_ERROR</code> - An error was experienced when your container service
              was being created.</p>
                  </li>
               </ul>
            </li>
         </ul>")
  code: option<containerServiceStateDetailCode>,
}
@ocaml.doc("<p>Describes the login information for the container image registry of an Amazon Lightsail
      account.</p>")
type containerServiceRegistryLogin = {
  @ocaml.doc("<p>The address to use to push container images to the container image registry of a
      Lightsail account.</p>")
  registry: option<string_>,
  @ocaml.doc("<p>The timestamp of when the container image registry username and password expire.</p>

         <p>The log in credentials expire 12 hours after they are created, at which point you will
      need to create a new set of log in credentials using the
        <code>CreateContainerServiceRegistryLogin</code> action.</p>")
  expiresAt: option<isoDate>,
  @ocaml.doc("<p>The container service registry password to use to push container images to the container
      image registry of a Lightsail account</p>")
  password: option<string_>,
  @ocaml.doc("<p>The container service registry username to use to push container images to the container
      image registry of a Lightsail account.</p>")
  username: option<string_>,
}
type containerServicePublicDomainsList = array<string_>
@ocaml.doc("<p>Describes the powers that can be specified for an Amazon Lightsail container
      service.</p>

         <p>The power specifies the amount of RAM, the number of vCPUs, and the base price of the
      container service.</p>")
type containerServicePower = {
  @ocaml.doc("<p>A Boolean value indicating whether the power is active and can be specified for container
      services.</p>")
  isActive: option<boolean_>,
  @ocaml.doc("<p>The friendly name of the power (e.g., <code>nano</code>).</p>")
  name: option<string_>,
  @ocaml.doc("<p>The amount of RAM (in GB) of the power.</p>") ramSizeInGb: option<float_>,
  @ocaml.doc("<p>The number of vCPUs included in the power.</p>") cpuCount: option<float_>,
  @ocaml.doc("<p>The monthly price of the power in USD.</p>") price: option<float_>,
  @ocaml.doc("<p>The ID of the power (e.g., <code>nano-1</code>).</p>") powerId: option<string_>,
}
type containerServiceMetadataEntry = Js.Dict.t<string_>
@ocaml.doc(
  "<p>Describes the log events of a container of an Amazon Lightsail container service.</p>"
)
type containerServiceLogEvent = {
  @ocaml.doc("<p>The message of the container service log event.</p>") message: option<string_>,
  @ocaml.doc("<p>The timestamp when the container service log event was created.</p>")
  createdAt: option<isoDate>,
}
@ocaml.doc(
  "<p>Describes the health check configuration of an Amazon Lightsail container service.</p>"
)
type containerServiceHealthCheckConfig = {
  @ocaml.doc("<p>The HTTP codes to use when checking for a successful response from a container. You can
      specify values between 200 and 499.</p>")
  successCodes: option<string_>,
  @ocaml.doc("<p>The path on the container on which to perform the health check. The default value is
        <code>/</code>.</p>")
  path: option<string_>,
  @ocaml.doc("<p>The approximate interval, in seconds, between health checks of an individual container.
      You can specify between 5 and 300 seconds. The default value is <code>5</code>.</p>")
  intervalSeconds: option<integer_>,
  @ocaml.doc("<p>The amount of time, in seconds, during which no response means a failed health check. You
      can specify between 2 and 60 seconds. The default value is <code>2</code>.</p>")
  timeoutSeconds: option<integer_>,
  @ocaml.doc("<p>The number of consecutive health check failures required before moving the container to
      the <code>Unhealthy</code> state. The default value is <code>2</code>.</p>")
  unhealthyThreshold: option<integer_>,
  @ocaml.doc("<p>The number of consecutive health checks successes required before moving the container to
      the <code>Healthy</code> state. The default value is <code>2</code>.</p>")
  healthyThreshold: option<integer_>,
}
@ocaml.doc("<p>Describes a container image that is registered to an Amazon Lightsail container
      service.</p>")
type containerImage = {
  @ocaml.doc("<p>The timestamp when the container image was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The digest of the container image.</p>") digest: option<string_>,
  @ocaml.doc("<p>The name of the container image.</p>") image: option<string_>,
}
type contactProtocolsList = array<contactProtocol>
@ocaml.doc("<p>Describes the source of a CloudFormation stack record (i.e., the export snapshot
      record).</p>")
type cloudFormationStackRecordSourceInfo = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the export snapshot record.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the record.</p>") name: option<nonEmptyString>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>ExportSnapshotRecord</code>).</p>")
  resourceType: option<cloudFormationStackRecordSourceType>,
}
type certificateStatusList = array<certificateStatus>
@ocaml.doc("<p>Describes the per-path cache behavior of an Amazon Lightsail content delivery network (CDN)
      distribution.</p>
         <p>A per-path cache behavior is used to override, or add an exception to, the default cache
      behavior of a distribution. For example, if the <code>cacheBehavior</code> is set to
        <code>cache</code>, then a per-path cache behavior can be used to specify a directory, file,
      or file type that your distribution will cache. Alternately, if the distribution's
        <code>cacheBehavior</code> is <code>dont-cache</code>, then a per-path cache behavior can be
      used to specify a directory, file, or file type that your distribution will not cache.</p>
         <p>if the cacheBehavior's behavior is set to 'cache', then</p>")
type cacheBehaviorPerPath = {
  @ocaml.doc("<p>The cache behavior for the specified path.</p>
         <p>You can specify one of the following per-path cache behaviors:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>cache</code>
                  </b> - This behavior caches the
          specified path. </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>dont-cache</code>
                  </b> - This behavior doesn't cache
          the specified path. </p>
            </li>
         </ul>")
  behavior: option<behaviorEnum>,
  @ocaml.doc("<p>The path to a directory or file to cached, or not cache. Use an asterisk symbol to specify
      wildcard directories (<code>path/to/assets/*</code>), and file types (<code>*.html, *jpg,
        *js</code>). Directories and file paths are case-sensitive.</p>
         <p>Examples:</p>
         <ul>
            <li>
               <p>Specify the following to cache all files in the document root of an Apache web server
          running on a Lightsail instance.</p>
               <p>
                  <code>var/www/html/</code>
               </p>
            </li>
            <li>
               <p>Specify the following file to cache only the index page in the document root of an
          Apache web server.</p>
               <p>
                  <code>var/www/html/index.html</code>
               </p>
            </li>
            <li>
               <p>Specify the following to cache only the .html files in the document root of an Apache
          web server.</p>
               <p>
                  <code>var/www/html/*.html</code>
               </p>
            </li>
            <li>
               <p>Specify the following to cache only the .jpg, .png, and .gif files in the images
          sub-directory of the document root of an Apache web server.</p>
               <p>
                  <code>var/www/html/images/*.jpg</code>
               </p>
               <p>
                  <code>var/www/html/images/*.png</code>
               </p>
               <p>
                  <code>var/www/html/images/*.gif</code>
               </p>
               <p>Specify the following to cache all files in the images sub-directory of the document
          root of an Apache web server.</p>
               <p>
                  <code>var/www/html/images/</code>
               </p>
            </li>
         </ul>")
  path: option<string_>,
}
@ocaml.doc("<p>Describes the default cache behavior of an Amazon Lightsail content delivery network (CDN)
      distribution.</p>")
type cacheBehavior = {
  @ocaml.doc("<p>The cache behavior of the distribution.</p>
         <p>The following cache behaviors can be specified:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>cache</code>
                  </b> - This option is best for static
          sites. When specified, your distribution caches and serves your entire website as static
          content. This behavior is ideal for websites with static content that doesn't change
          depending on who views it, or for websites that don't use cookies, headers, or query
          strings to personalize content.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>dont-cache</code>
                  </b> - This option is best for
          sites that serve a mix of static and dynamic content. When specified, your distribution
          caches and serve only the content that is specified in the distribution's
            <code>CacheBehaviorPerPath</code> parameter. This behavior is ideal for websites or web
          applications that use cookies, headers, and query strings to personalize content for
          individual users.</p>
            </li>
         </ul>")
  behavior: option<behaviorEnum>,
}
@ocaml.doc("<p>Describes a blueprint (a virtual private server image).</p>")
type blueprint = {
  @ocaml.doc("<p>The operating system platform (either Linux/Unix-based or Windows Server-based) of the
      blueprint.</p>")
  platform: option<instancePlatform>,
  @ocaml.doc("<p>The end-user license agreement URL for the image or blueprint.</p>")
  licenseUrl: option<string_>,
  @ocaml.doc("<p>The product URL to learn more about the image or blueprint.</p>")
  productUrl: option<string_>,
  @ocaml.doc("<p>The version code.</p>") versionCode: option<string_>,
  @ocaml.doc("<p>The version number of the operating system, application, or stack (e.g.,
        <code>2016.03.0</code>).</p>")
  version: option<string_>,
  @ocaml.doc("<p>The minimum bundle power required to run this blueprint. For example, you need a bundle
      with a power value of 500 or more to create an instance that uses a blueprint with a minimum
      power value of 500. <code>0</code> indicates that the blueprint runs on all instance sizes.
    </p>")
  minPower: option<integer_>,
  @ocaml.doc("<p>A Boolean value indicating whether the blueprint is active. Inactive blueprints are listed
      to support customers with existing instances but are not necessarily available for launch of
      new instances. Blueprints are marked inactive when they become outdated due to operating
      system updates or new application releases.</p>")
  isActive: option<boolean_>,
  @ocaml.doc("<p>The description of the blueprint.</p>") description: option<string_>,
  @ocaml.doc("<p>The type of the blueprint (e.g., <code>os</code> or <code>app</code>).</p>")
  @as("type")
  type_: option<blueprintType>,
  @ocaml.doc("<p>The group name of the blueprint (e.g., <code>amazon-linux</code>).</p>")
  group: option<nonEmptyString>,
  @ocaml.doc("<p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>")
  name: option<resourceName>,
  @ocaml.doc("<p>The ID for the virtual private server image (e.g., <code>app_wordpress_4_4</code> or
        <code>app_lamp_7_0</code>).</p>")
  blueprintId: option<nonEmptyString>,
}
@ocaml.doc("<p>Describes an Availability Zone.</p>")
type availabilityZone = {
  @ocaml.doc("<p>The state of the Availability Zone.</p>") state: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the Availability Zone. The format is <code>us-east-2a</code>
      (case-sensitive).</p>")
  zoneName: option<nonEmptyString>,
}
@ocaml.doc("<p>Describes a request to enable or modify the automatic snapshot add-on for an
      Amazon Lightsail instance or disk.</p>
         <p>When you modify the automatic snapshot time for a resource, it is typically effective
      immediately except under the following conditions:</p>
         <ul>
            <li>
               <p>If an automatic snapshot has been created for the current day, and you change the
          snapshot time to a later time of day, then the new snapshot time will be effective the
          following day. This ensures that two snapshots are not created for the current day.</p>
            </li>
            <li>
               <p>If an automatic snapshot has not yet been created for the current day, and you change
          the snapshot time to an earlier time of day, then the new snapshot time will be effective
          the following day and a snapshot is automatically created at the previously set time for
          the current day. This ensures that a snapshot is created for the current day.</p>
            </li>
            <li>
               <p>If an automatic snapshot has not yet been created for the current day, and you change
          the snapshot time to a time that is within 30 minutes from your current time, then the new
          snapshot time will be effective the following day and a snapshot is automatically created
          at the previously set time for the current day. This ensures that a snapshot is created
          for the current day, because 30 minutes is required between your current time and the new
          snapshot time that you specify.</p>
            </li>
            <li>
               <p>If an automatic snapshot is scheduled to be created within 30 minutes from your
          current time and you change the snapshot time, then the new snapshot time will be
          effective the following day and a snapshot is automatically created at the previously set
          time for the current day. This ensures that a snapshot is created for the current day,
          because 30 minutes is required between your current time and the new snapshot time that
          you specify.</p>
            </li>
         </ul>")
type autoSnapshotAddOnRequest = {
  @ocaml.doc("<p>The daily time when an automatic snapshot will be created.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be in <code>HH:00</code> format, and in an hourly increment.</p>
            </li>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>The snapshot will be automatically created between the time specified and up to 45
          minutes after.</p>
            </li>
         </ul>")
  snapshotTimeOfDay: option<timeOfDay>,
}
@ocaml.doc("<p>Describes a block storage disk that is attached to an instance, and is included in an
      automatic snapshot.</p>")
type attachedDisk = {
  @ocaml.doc("<p>The size of the disk in GB.</p>") sizeInGb: option<integer_>,
  @ocaml.doc("<p>The path of the disk (e.g., <code>/dev/xvdf</code>).</p>") path: option<string_>,
}
@ocaml.doc("<p>Describes an add-on that is enabled for an Amazon Lightsail resource.</p>")
type addOn = {
  @ocaml.doc("<p>The next daily time an automatic snapshot will be created.</p>
         <p>The time shown is in <code>HH:00</code> format, and in Coordinated Universal Time
      (UTC).</p>
         <p>The snapshot is automatically created between the time shown and up to 45 minutes
      after.</p>")
  nextSnapshotTimeOfDay: option<timeOfDay>,
  @ocaml.doc("<p>The daily time when an automatic snapshot is created.</p>
         <p>The time shown is in <code>HH:00</code> format, and in Coordinated Universal Time
      (UTC).</p>
         <p>The snapshot is automatically created between the time shown and up to 45 minutes
      after.</p>")
  snapshotTimeOfDay: option<timeOfDay>,
  @ocaml.doc("<p>The status of the add-on.</p>") status: option<string_>,
  @ocaml.doc("<p>The name of the add-on.</p>") name: option<string_>,
}
type tagList_ = array<tag>
@ocaml.doc("<p>Describes the static IP.</p>")
type staticIp = {
  @ocaml.doc("<p>A Boolean value indicating whether the static IP is attached.</p>")
  isAttached: option<boolean_>,
  @ocaml.doc("<p>The instance where the static IP is attached (e.g.,
      <code>Amazon_Linux-1GB-Ohio-1</code>).</p>")
  attachedTo: option<resourceName>,
  @ocaml.doc("<p>The static IP address.</p>") ipAddress: option<ipAddress>,
  @ocaml.doc("<p>The resource type (usually <code>StaticIp</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The region and Availability Zone where the static IP was created.</p>")
  location: option<resourceLocation>,
  @ocaml.doc(
    "<p>The timestamp when the static IP was created (e.g., <code>1479735304.222</code>).</p>"
  )
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      an instance or another resource in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the static IP (e.g.,
        <code>arn:aws:lightsail:us-east-2:123456789101:StaticIp/9cbb4a9e-f8e3-4dfe-b57e-12345EXAMPLE</code>).</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the static IP (e.g., <code>StaticIP-Ohio-EXAMPLE</code>).</p>")
  name: option<resourceName>,
}
type relationalDatabaseParameterList = array<relationalDatabaseParameter>
@ocaml.doc("<p>Describes an event for a database.</p>")
type relationalDatabaseEvent = {
  @ocaml.doc("<p>The category that the database event belongs to.</p>")
  eventCategories: option<stringList>,
  @ocaml.doc("<p>The message of the database event.</p>") message: option<string_>,
  @ocaml.doc("<p>The timestamp when the database event was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The database that the database event relates to.</p>")
  resource: option<resourceName>,
}
type relationalDatabaseBundleList = array<relationalDatabaseBundle>
type relationalDatabaseBlueprintList = array<relationalDatabaseBlueprint>
@ocaml.doc("<p>Describes the query string parameters that an Amazon Lightsail content delivery network
      (CDN) distribution to bases caching on.</p>
         <p>For the query strings that you specify, your distribution caches separate versions of the
      specified content based on the query string values in viewer
      requests.</p>")
type queryStringObject = {
  @ocaml.doc("<p>The specific query strings that the distribution forwards to the origin.</p>
         <p>Your distribution will cache content based on the specified query strings.</p>
         <p>If the <code>option</code> parameter is true, then your distribution forwards all query
      strings, regardless of what you specify using the <code>queryStringsAllowList</code>
      parameter.</p>")
  queryStringsAllowList: option<stringList>,
  @ocaml.doc(
    "<p>Indicates whether the distribution forwards and caches based on query strings.</p>"
  )
  @as("option")
  option_: option<boolean_>,
}
@ocaml.doc("<p>Describes ports to open on an instance, the IP addresses allowed to connect to the
      instance through the ports, and the protocol.</p>")
type portInfo = {
  @ocaml.doc("<p>An alias that defines access for a preconfigured range of IP addresses.</p>
         <p>The only alias currently supported is <code>lightsail-connect</code>, which allows IP
      addresses of the browser-based RDP/SSH client in the Lightsail console to connect to your
      instance.</p>")
  cidrListAliases: option<stringList>,
  @ocaml.doc("<p>The IPv6 address, or range of IPv6 addresses (in CIDR notation) that are allowed to
      connect to an instance through the ports, and the protocol. Only devices with an IPv6 address
      can connect to an instance through IPv6; otherwise, IPv4 should be used.</p>
         <note>
            <p>The <code>cidrs</code> parameter lists the IPv4 addresses that are allowed to connect to
        an instance.</p>
         </note>
         <p>For more information about CIDR block notation, see <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation\">Classless
        Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>")
  ipv6Cidrs: option<stringList>,
  @ocaml.doc("<p>The IPv4 address, or range of IPv4 addresses (in CIDR notation) that are allowed to
      connect to an instance through the ports, and the protocol.</p>
         <note>
            <p>The <code>ipv6Cidrs</code> parameter lists the IPv6 addresses that are allowed to
        connect to an instance.</p>
         </note>
         <p>Examples:</p>
         <ul>
            <li>
               <p>To allow the IP address <code>192.0.2.44</code>, specify <code>192.0.2.44</code> or
            <code>192.0.2.44/32</code>. </p>
            </li>
            <li>
               <p>To allow the IP addresses <code>192.0.2.0</code> to <code>192.0.2.255</code>, specify
            <code>192.0.2.0/24</code>.</p>
            </li>
         </ul>
         <p>For more information about CIDR block notation, see <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation\">Classless
        Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>")
  cidrs: option<stringList>,
  @ocaml.doc("<p>The IP protocol name.</p>
         <p>The name can be one of the following:</p>
         <ul>
            <li>
               <p>
                  <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and
          error-checked delivery of streamed data between applications running on hosts
          communicating by an IP network. If you have an application that doesn't require reliable
          data stream service, use UDP instead.</p>
            </li>
            <li>
               <p>
                  <code>all</code> - All transport layer protocol types. For more general information,
          see <a href=\"https://en.wikipedia.org/wiki/Transport_layer\">Transport layer</a> on
            <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>
                  <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send
          messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior
          communications are not required to set up transmission channels or data paths.
          Applications that don't require reliable data stream service can use UDP, which provides a
          connectionless datagram service that emphasizes reduced latency over reliability. If you
          do require reliable data stream service, use TCP instead.</p>
            </li>
            <li>
               <p>
                  <code>icmp</code> - Internet Control Message Protocol (ICMP) is used to send error
          messages and operational information indicating success or failure when communicating with
          an instance. For example, an error is indicated when an instance could not be reached.
          When you specify <code>icmp</code> as the <code>protocol</code>, you must specify the ICMP
          type using the <code>fromPort</code> parameter, and ICMP code using the
            <code>toPort</code> parameter.</p>
            </li>
         </ul>")
  protocol: option<networkProtocol>,
  @ocaml.doc("<p>The last port in a range of open ports on an instance.</p>
         <p>Allowed ports:</p>
         <ul>
            <li>
               <p>TCP and UDP - <code>0</code> to <code>65535</code>
               </p>
            </li>
            <li>
               <p>ICMP - The ICMP code for IPv4 addresses. For example, specify <code>8</code> as the
            <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
          code), to enable ICMP Ping. For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages\">Control Messages</a> on <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>ICMPv6 - The ICMP code for IPv6 addresses. For example, specify <code>128</code> as
          the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
          code). For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6\">Internet
            Control Message Protocol for IPv6</a>.</p>
            </li>
         </ul>")
  toPort: option<port>,
  @ocaml.doc("<p>The first port in a range of open ports on an instance.</p>
         <p>Allowed ports:</p>
         <ul>
            <li>
               <p>TCP and UDP - <code>0</code> to <code>65535</code>
               </p>
            </li>
            <li>
               <p>ICMP - The ICMP type for IPv4 addresses. For example, specify <code>8</code> as the
            <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
          code), to enable ICMP Ping. For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages\">Control Messages</a> on <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>ICMPv6 - The ICMP type for IPv6 addresses. For example, specify <code>128</code> as
          the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
          code). For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6\">Internet
            Control Message Protocol for IPv6</a>.</p>
            </li>
         </ul>")
  fromPort: option<port>,
}
type pendingMaintenanceActionList = array<pendingMaintenanceAction>
@ocaml.doc("<p>Describes the API operation.</p>")
type operation = {
  @ocaml.doc("<p>The error details.</p>") errorDetails: option<string_>,
  @ocaml.doc("<p>The error code.</p>") errorCode: option<string_>,
  @ocaml.doc(
    "<p>The timestamp when the status was changed (e.g., <code>1479816991.349</code>).</p>"
  )
  statusChangedAt: option<isoDate>,
  @ocaml.doc("<p>The status of the operation. </p>") status: option<operationStatus>,
  @ocaml.doc("<p>The type of operation. </p>") operationType: option<operationType>,
  @ocaml.doc("<p>Details about the operation (e.g., <code>Debian-1GB-Ohio-1</code>).</p>")
  operationDetails: option<string_>,
  @ocaml.doc("<p>A Boolean value indicating whether the operation is terminal.</p>")
  isTerminal: option<boolean_>,
  @ocaml.doc("<p>The AWS Region and Availability Zone.</p>") location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the operation was initialized (e.g.,
      <code>1479816991.349</code>).</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The resource type. </p>") resourceType: option<resourceType>,
  @ocaml.doc("<p>The resource name.</p>") resourceName: option<resourceName>,
  @ocaml.doc("<p>The ID of the operation.</p>") id: option<nonEmptyString>,
}
type metricDatapointList = array<metricDatapoint>
type logEventList = array<logEvent>
type loadBalancerTlsCertificateSummaryList = array<loadBalancerTlsCertificateSummary>
type loadBalancerTlsCertificateDomainValidationRecordList = array<
  loadBalancerTlsCertificateDomainValidationRecord,
>
type loadBalancerTlsCertificateDomainValidationOptionList = array<
  loadBalancerTlsCertificateDomainValidationOption,
>
@ocaml.doc("<p>Describes open ports on an instance, the IP addresses allowed to connect to the instance
      through the ports, and the protocol.</p>")
type instancePortState = {
  @ocaml.doc("<p>An alias that defines access for a preconfigured range of IP addresses.</p>
         <p>The only alias currently supported is <code>lightsail-connect</code>, which allows IP
      addresses of the browser-based RDP/SSH client in the Lightsail console to connect to your
      instance.</p>")
  cidrListAliases: option<stringList>,
  @ocaml.doc("<p>The IPv6 address, or range of IPv6 addresses (in CIDR notation) that are allowed to
      connect to an instance through the ports, and the protocol. Only devices with an IPv6 address
      can connect to an instance through IPv6; otherwise, IPv4 should be used.</p>
         <note>
            <p>The <code>cidrs</code> parameter lists the IPv4 addresses that are allowed to connect to
        an instance.</p>
         </note>
         <p>For more information about CIDR block notation, see <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation\">Classless
        Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>")
  ipv6Cidrs: option<stringList>,
  @ocaml.doc("<p>The IPv4 address, or range of IPv4 addresses (in CIDR notation) that are allowed to
      connect to an instance through the ports, and the protocol.</p>
         <note>
            <p>The <code>ipv6Cidrs</code> parameter lists the IPv6 addresses that are allowed to
        connect to an instance.</p>
         </note>
         <p>For more information about CIDR block notation, see <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation\">Classless
        Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>")
  cidrs: option<stringList>,
  @ocaml.doc("<p>Specifies whether the instance port is <code>open</code> or <code>closed</code>.</p>
         <note>
            <p>The port state for Lightsail instances is always <code>open</code>.</p>
         </note>")
  state: option<portState>,
  @ocaml.doc("<p>The IP protocol name.</p>
         <p>The name can be one of the following:</p>
         <ul>
            <li>
               <p>
                  <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and
          error-checked delivery of streamed data between applications running on hosts
          communicating by an IP network. If you have an application that doesn't require reliable
          data stream service, use UDP instead.</p>
            </li>
            <li>
               <p>
                  <code>all</code> - All transport layer protocol types. For more general information,
          see <a href=\"https://en.wikipedia.org/wiki/Transport_layer\">Transport layer</a> on
            <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>
                  <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send
          messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior
          communications are not required to set up transmission channels or data paths.
          Applications that don't require reliable data stream service can use UDP, which provides a
          connectionless datagram service that emphasizes reduced latency over reliability. If you
          do require reliable data stream service, use TCP instead.</p>
            </li>
            <li>
               <p>
                  <code>icmp</code> - Internet Control Message Protocol (ICMP) is used to send error
          messages and operational information indicating success or failure when communicating with
          an instance. For example, an error is indicated when an instance could not be reached.
          When you specify <code>icmp</code> as the <code>protocol</code>, you must specify the ICMP
          type using the <code>fromPort</code> parameter, and ICMP code using the
            <code>toPort</code> parameter.</p>
            </li>
         </ul>")
  protocol: option<networkProtocol>,
  @ocaml.doc("<p>The last port in a range of open ports on an instance.</p>
         <p>Allowed ports:</p>
         <ul>
            <li>
               <p>TCP and UDP - <code>0</code> to <code>65535</code>
               </p>
            </li>
            <li>
               <p>ICMP - The ICMP code for IPv4 addresses. For example, specify <code>8</code> as the
            <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
          code), to enable ICMP Ping. For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages\">Control Messages</a> on <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>ICMPv6 - The ICMP code for IPv6 addresses. For example, specify <code>128</code> as
          the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
          code). For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6\">Internet
            Control Message Protocol for IPv6</a>.</p>
            </li>
         </ul>")
  toPort: option<port>,
  @ocaml.doc("<p>The first port in a range of open ports on an instance.</p>
         <p>Allowed ports:</p>
         <ul>
            <li>
               <p>TCP and UDP - <code>0</code> to <code>65535</code>
               </p>
            </li>
            <li>
               <p>ICMP - The ICMP type for IPv4 addresses. For example, specify <code>8</code> as the
            <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
          code), to enable ICMP Ping. For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages\">Control Messages</a> on <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>ICMPv6 - The ICMP type for IPv6 addresses. For example, specify <code>128</code> as
          the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
          code). For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6\">Internet
            Control Message Protocol for IPv6</a>.</p>
            </li>
         </ul>")
  fromPort: option<port>,
}
@ocaml.doc("<p>Describes information about ports for an Amazon Lightsail instance.</p>")
type instancePortInfo = {
  @ocaml.doc("<p>An alias that defines access for a preconfigured range of IP addresses.</p>
         <p>The only alias currently supported is <code>lightsail-connect</code>, which allows IP
      addresses of the browser-based RDP/SSH client in the Lightsail console to connect to your
      instance.</p>")
  cidrListAliases: option<stringList>,
  @ocaml.doc("<p>The IPv6 address, or range of IPv6 addresses (in CIDR notation) that are allowed to
      connect to an instance through the ports, and the protocol. Only devices with an IPv6 address
      can connect to an instance through IPv6; otherwise, IPv4 should be used.</p>
         <note>
            <p>The <code>cidrs</code> parameter lists the IPv4 addresses that are allowed to connect to
        an instance.</p>
         </note>
         <p>For more information about CIDR block notation, see <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation\">Classless
        Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>")
  ipv6Cidrs: option<stringList>,
  @ocaml.doc("<p>The IPv4 address, or range of IPv4 addresses (in CIDR notation) that are allowed to
      connect to an instance through the ports, and the protocol.</p>
         <note>
            <p>The <code>ipv6Cidrs</code> parameter lists the IPv6 addresses that are allowed to
        connect to an instance.</p>
         </note>
         <p>For more information about CIDR block notation, see <a href=\"https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation\">Classless
        Inter-Domain Routing</a> on <i>Wikipedia</i>.</p>")
  cidrs: option<stringList>,
  @ocaml.doc("<p>The access direction (<code>inbound</code> or <code>outbound</code>).</p>
         <note>
            <p>Lightsail currently supports only <code>inbound</code> access direction.</p>
         </note>")
  accessDirection: option<accessDirection>,
  @ocaml.doc("<p>The common name of the port information.</p>") commonName: option<string_>,
  @ocaml.doc("<p>The type of access (<code>Public</code> or <code>Private</code>).</p>")
  accessType: option<portAccessType>,
  @ocaml.doc("<p>The location from which access is allowed. For example, <code>Anywhere (0.0.0.0/0)</code>,
      or <code>Custom</code> if a specific IP address or range of IP addresses is allowed.</p>")
  accessFrom: option<string_>,
  @ocaml.doc("<p>The IP protocol name.</p>
         <p>The name can be one of the following:</p>
         <ul>
            <li>
               <p>
                  <code>tcp</code> - Transmission Control Protocol (TCP) provides reliable, ordered, and
          error-checked delivery of streamed data between applications running on hosts
          communicating by an IP network. If you have an application that doesn't require reliable
          data stream service, use UDP instead.</p>
            </li>
            <li>
               <p>
                  <code>all</code> - All transport layer protocol types. For more general information,
          see <a href=\"https://en.wikipedia.org/wiki/Transport_layer\">Transport layer</a> on
            <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>
                  <code>udp</code> - With User Datagram Protocol (UDP), computer applications can send
          messages (or datagrams) to other hosts on an Internet Protocol (IP) network. Prior
          communications are not required to set up transmission channels or data paths.
          Applications that don't require reliable data stream service can use UDP, which provides a
          connectionless datagram service that emphasizes reduced latency over reliability. If you
          do require reliable data stream service, use TCP instead.</p>
            </li>
            <li>
               <p>
                  <code>icmp</code> - Internet Control Message Protocol (ICMP) is used to send error
          messages and operational information indicating success or failure when communicating with
          an instance. For example, an error is indicated when an instance could not be reached.
          When you specify <code>icmp</code> as the <code>protocol</code>, you must specify the ICMP
          type using the <code>fromPort</code> parameter, and ICMP code using the
            <code>toPort</code> parameter.</p>
            </li>
         </ul>")
  protocol: option<networkProtocol>,
  @ocaml.doc("<p>The last port in a range of open ports on an instance.</p>
         <p>Allowed ports:</p>
         <ul>
            <li>
               <p>TCP and UDP - <code>0</code> to <code>65535</code>
               </p>
            </li>
            <li>
               <p>ICMP - The ICMP code for IPv4 addresses. For example, specify <code>8</code> as the
            <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
          code), to enable ICMP Ping. For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages\">Control Messages</a> on <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>ICMPv6 - The ICMP code for IPv6 addresses. For example, specify <code>128</code> as
          the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
          code). For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6\">Internet
            Control Message Protocol for IPv6</a>.</p>
            </li>
         </ul>")
  toPort: option<port>,
  @ocaml.doc("<p>The first port in a range of open ports on an instance.</p>
         <p>Allowed ports:</p>
         <ul>
            <li>
               <p>TCP and UDP - <code>0</code> to <code>65535</code>
               </p>
            </li>
            <li>
               <p>ICMP - The ICMP type for IPv4 addresses. For example, specify <code>8</code> as the
            <code>fromPort</code> (ICMP type), and <code>-1</code> as the <code>toPort</code> (ICMP
          code), to enable ICMP Ping. For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages\">Control Messages</a> on <i>Wikipedia</i>.</p>
            </li>
            <li>
               <p>ICMPv6 - The ICMP type for IPv6 addresses. For example, specify <code>128</code> as
          the <code>fromPort</code> (ICMPv6 type), and <code>0</code> as <code>toPort</code> (ICMPv6
          code). For more information, see <a href=\"https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6\">Internet
            Control Message Protocol for IPv6</a>.</p>
            </li>
         </ul>")
  fromPort: option<port>,
}
type instanceHealthSummaryList = array<instanceHealthSummary>
type instanceEntryList = array<instanceEntry>
type hostKeysList = array<hostKeyAttributes>
@ocaml.doc("<p>Describes the request headers that a Lightsail distribution bases caching on.</p>
         <p>For the headers that you specify, your distribution caches separate versions of the
      specified content based on the header values in viewer requests. For example, suppose viewer
      requests for <code>logo.jpg</code> contain a custom <code>product</code> header that has a
      value of either <code>acme</code> or <code>apex</code>, and you configure your distribution to
      cache your content based on values in the <code>product</code> header. Your distribution
      forwards the <code>product</code> header to the origin and caches the response from the origin
      once for each header value.
      </p>")
type headerObject = {
  @ocaml.doc("<p>The specific headers to forward to your distribution's origin.</p>")
  headersAllowList: option<headerForwardList>,
  @ocaml.doc("<p>The headers that you want your distribution to forward to your origin and base caching
      on.</p>
         <p>You can configure your distribution to do one of the following:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>all</code>
                  </b> - Forward all headers to your
          origin.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>none</code>
                  </b> - Forward only the default
          headers.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>allow-list</code>
                  </b> - Forward only the headers
          you specify using the <code>headersAllowList</code> parameter.</p>
            </li>
         </ul>")
  @as("option")
  option_: option<forwardValues>,
}
@ocaml.doc("<p>Describes the settings of a public endpoint for an Amazon Lightsail container
      service.</p>")
type endpointRequest = {
  @ocaml.doc("<p>An object that describes the health check configuration of the container.</p>")
  healthCheck: option<containerServiceHealthCheckConfig>,
  @ocaml.doc("<p>The port of the container to which traffic is forwarded to.</p>")
  containerPort: integer_,
  @ocaml.doc("<p>The name of the container for the endpoint.</p>") containerName: string_,
}
@ocaml.doc(
  "<p>Describes the domain validation records of an Amazon Lightsail SSL/TLS certificate.</p>"
)
type domainValidationRecord = {
  @ocaml.doc("<p>An object that describes the DNS records to add to your domain's DNS to validate it for
      the certificate.</p>")
  resourceRecord: option<resourceRecord>,
  @ocaml.doc("<p>The domain name of the certificate validation record. For example,
        <code>example.com</code> or <code>www.example.com</code>.</p>")
  domainName: option<domainName>,
}
@ocaml.doc("<p>Describes a domain recordset entry.</p>")
type domainEntry = {
  @ocaml.doc("<p>(Deprecated) The options for the domain entry.</p>
         <note>
            <p>In releases prior to November 29, 2017, this parameter was not included in the API
        response. It is now deprecated.</p>
         </note>")
  options: option<domainEntryOptions>,
  @ocaml.doc("<p>The type of domain entry, such as address for IPv4 (A), address for IPv6 (AAAA), canonical
      name (CNAME), mail exchanger (MX), name server (NS), start of authority (SOA), service locator
      (SRV), or text (TXT).</p>
         <p>The following domain entry types can be used:</p>
         <ul>
            <li>
               <p>
                  <code>A</code>
               </p>
            </li>
            <li>
               <p>
                  <code>AAAA</code>
               </p>
            </li>
            <li>
               <p>
                  <code>CNAME</code>
               </p>
            </li>
            <li>
               <p>
                  <code>MX</code>
               </p>
            </li>
            <li>
               <p>
                  <code>NS</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SOA</code>
               </p>
            </li>
            <li>
               <p>
                  <code>SRV</code>
               </p>
            </li>
            <li>
               <p>
                  <code>TXT</code>
               </p>
            </li>
         </ul>")
  @as("type")
  type_: option<domainEntryType>,
  @ocaml.doc("<p>When <code>true</code>, specifies whether the domain entry is an alias used by the
      Lightsail load balancer. You can include an alias (A type) record in your request, which
      points to a load balancer DNS name and routes traffic to your load balancer.</p>")
  isAlias: option<boolean_>,
  @ocaml.doc("<p>The target IP address (e.g., <code>192.0.2.0</code>), or AWS name server (e.g.,
        <code>ns-111.awsdns-22.com.</code>).</p>
         <p>For Lightsail load balancers, the value looks like
        <code>ab1234c56789c6b86aba6fb203d443bc-123456789.us-east-2.elb.amazonaws.com</code>. For
      Lightsail distributions, the value looks like <code>exampled1182ne.cloudfront.net</code>.
      For Lightsail container services, the value looks like
        <code>container-service-1.example23scljs.us-west-2.cs.amazonlightsail.com</code>. Be sure to
      also set <code>isAlias</code> to <code>true</code> when setting up an A record for a
      Lightsail load balancer, distribution, or container service.</p>")
  target: option<string_>,
  @ocaml.doc("<p>The name of the domain.</p>") name: option<domainName>,
  @ocaml.doc("<p>The ID of the domain recordset entry.</p>") id: option<nonEmptyString>,
}
type distributionBundleList = array<distributionBundle>
type diskMapList = array<diskMap>
type diskInfoList = array<diskInfo>
@ocaml.doc("<p>Describes whether an Amazon Lightsail content delivery network (CDN) distribution forwards
      cookies to the origin and, if so, which ones.</p>
         <p>For the cookies that you specify, your distribution caches separate versions of the
      specified content based on the cookie values in viewer
      requests.</p>")
type cookieObject = {
  @ocaml.doc("<p>The specific cookies to forward to your distribution's origin.</p>")
  cookiesAllowList: option<stringList>,
  @ocaml.doc("<p>Specifies which cookies to forward to the distribution's origin for a cache behavior:
        <code>all</code>, <code>none</code>, or <code>allow-list</code> to forward only the cookies
      specified in the <code>cookiesAllowList</code> parameter.</p>")
  @as("option")
  option_: option<forwardValues>,
}
type containerServicePublicDomains = Js.Dict.t<containerServicePublicDomainsList>
type containerServicePowerList = array<containerServicePower>
type containerServiceMetadataEntryList = array<containerServiceMetadataEntry>
type containerServiceLogEventList = array<containerServiceLogEvent>
@ocaml.doc("<p>Describes the public endpoint configuration of a deployment of an Amazon Lightsail
      container service.</p>")
type containerServiceEndpoint = {
  @ocaml.doc("<p>An object that describes the health check configuration of the container.</p>")
  healthCheck: option<containerServiceHealthCheckConfig>,
  @ocaml.doc("<p>The port of the specified container to which traffic is forwarded to.</p>")
  containerPort: option<integer_>,
  @ocaml.doc("<p>The name of the container entry of the deployment that the endpoint configuration applies
      to.</p>")
  containerName: option<string_>,
}
type containerImageList = array<containerImage>
@ocaml.doc("<p>Describes the settings of a container that will be launched, or that is launched, to an
      Amazon Lightsail container service.</p>")
type container = {
  @ocaml.doc("<p>The open firewall ports of the container.</p>") ports: option<portMap>,
  @ocaml.doc("<p>The environment variables of the container.</p>") environment: option<environment>,
  @ocaml.doc("<p>The launch command for the container.</p>") command: option<stringList>,
  @ocaml.doc("<p>The name of the image used for the container.</p>

         <p>Container images sourced from your Lightsail container service, that are registered and
      stored on your service, start with a colon (<code>:</code>). For example,
        <code>:container-service-1.mystaticwebsite.1</code>. Container images sourced from a public
      registry like Docker Hub don't start with a colon. For example, <code>nginx:latest</code> or
        <code>nginx</code>.</p>")
  image: option<string_>,
}
@ocaml.doc("<p>Describes a contact method.</p>
         <p>A contact method is a way to send you notifications. For more information, see <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications\">Notifications in Amazon Lightsail</a>.</p>")
type contactMethod = {
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      your Lightsail contact method. This code enables our support team to look up your
      Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>ContactMethod</code>).</p>")
  resourceType: option<resourceType>,
  location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the contact method was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the contact method.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the contact method.</p>") name: option<resourceName>,
  @ocaml.doc("<p>The protocol of the contact method, such as email or SMS (text messaging).</p>")
  protocol: option<contactProtocol>,
  @ocaml.doc("<p>The current status of the contact method.</p>
         <p>A contact method has the following possible status:</p>
         <ul>
            <li>
               <p>
                  <code>PendingVerification</code> - The contact method has not yet been verified, and
          the verification has not yet expired.</p>
            </li>
            <li>
               <p>
                  <code>Valid</code> - The contact method has been verified.</p>
            </li>
            <li>
               <p>
                  <code>InValid</code> - An attempt was made to verify the contact method, but the
          verification has expired.</p>
            </li>
         </ul>")
  status: option<contactMethodStatus>,
  @ocaml.doc("<p>The destination of the contact method, such as an email address or a mobile phone
      number.</p>")
  contactEndpoint: option<nonEmptyString>,
}
type cloudFormationStackRecordSourceInfoList = array<cloudFormationStackRecordSourceInfo>
type cacheBehaviorList = array<cacheBehaviorPerPath>
@ocaml.doc("<p>Describes a bundle, which is a set of specs describing your virtual private server (or
        <i>instance</i>).</p>")
type bundle = {
  @ocaml.doc("<p>The operating system platform (Linux/Unix-based or Windows Server-based) that the bundle
      supports. You can only launch a <code>WINDOWS</code> bundle on a blueprint that supports the
        <code>WINDOWS</code> platform. <code>LINUX_UNIX</code> blueprints require a
        <code>LINUX_UNIX</code> bundle.</p>")
  supportedPlatforms: option<instancePlatformList>,
  @ocaml.doc("<p>The data transfer rate per month in GB (e.g., <code>2000</code>).</p>")
  transferPerMonthInGb: option<integer_>,
  @ocaml.doc("<p>The amount of RAM in GB (e.g., <code>2.0</code>).</p>")
  ramSizeInGb: option<float_>,
  @ocaml.doc("<p>A numeric value that represents the power of the bundle (e.g., <code>500</code>). You can
      use the bundle's power value in conjunction with a blueprint's minimum power value to
      determine whether the blueprint will run on the bundle. For example, you need a bundle with a
      power value of 500 or more to create an instance that uses a blueprint with a minimum power
      value of 500.</p>")
  power: option<integer_>,
  @ocaml.doc("<p>A friendly name for the bundle (e.g., <code>Micro</code>).</p>")
  name: option<string_>,
  @ocaml.doc("<p>A Boolean value indicating whether the bundle is active.</p>")
  isActive: option<boolean_>,
  @ocaml.doc("<p>The Amazon EC2 instance type (e.g., <code>t2.micro</code>).</p>")
  instanceType: option<string_>,
  @ocaml.doc("<p>The bundle ID (e.g., <code>micro_1_0</code>).</p>")
  bundleId: option<nonEmptyString>,
  @ocaml.doc("<p>The size of the SSD (e.g., <code>30</code>).</p>") diskSizeInGb: option<integer_>,
  @ocaml.doc("<p>The number of vCPUs included in the bundle (e.g., <code>2</code>).</p>")
  cpuCount: option<integer_>,
  @ocaml.doc("<p>The price in US dollars (e.g., <code>5.0</code>) of the bundle.</p>")
  price: option<float_>,
}
type blueprintList = array<blueprint>
type availabilityZoneList = array<availabilityZone>
type attachedDiskList = array<attachedDisk>
@ocaml.doc("<p>Describes an alarm.</p>
         <p>An alarm is a way to monitor your Amazon Lightsail resource metrics. For more information,
      see <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-alarms\">Alarms
        in Amazon Lightsail</a>.</p>")
type alarm = {
  @ocaml.doc("<p>Indicates whether the alarm is enabled.</p>")
  notificationEnabled: option<boolean_>,
  @ocaml.doc("<p>The alarm states that trigger a notification.</p>")
  notificationTriggers: option<notificationTriggerList>,
  @ocaml.doc("<p>The contact protocols for the alarm, such as <code>Email</code>, <code>SMS</code> (text
      messaging), or both.</p>")
  contactProtocols: option<contactProtocolsList>,
  @ocaml.doc("<p>The unit of the metric associated with the alarm.</p>") @as("unit")
  unit_: option<metricUnit>,
  @ocaml.doc("<p>The current state of the alarm.</p>
         <p>An alarm has the following possible states:</p>
         <ul>
            <li>
               <p>
                  <code>ALARM</code> - The metric is outside of the defined threshold.</p>
            </li>
            <li>
               <p>
                  <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
          available, or not enough data is available for the metric to determine the alarm
          state.</p>
            </li>
            <li>
               <p>
                  <code>OK</code> - The metric is within the defined threshold.</p>
            </li>
         </ul>")
  state: option<alarmState>,
  @ocaml.doc("<p>The name of the metric associated with the alarm.</p>")
  metricName: option<metricName>,
  @ocaml.doc("<p>The statistic for the metric associated with the alarm.</p>
         <p>The following statistics are available:</p>
         <ul>
            <li>
               <p>
                  <code>Minimum</code> - The lowest value observed during the specified period. Use this
          value to determine low volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Maximum</code> - The highest value observed during the specified period. Use
          this value to determine high volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Sum</code> - All values submitted for the matching metric added together. You
          can use this statistic to determine the total volume of a metric.</p>
            </li>
            <li>
               <p>
                  <code>Average</code> - The value of Sum / SampleCount during the specified period. By
          comparing this statistic with the Minimum and Maximum values, you can determine the full
          scope of a metric and how close the average use is to the Minimum and Maximum values. This
          comparison helps you to know when to increase or decrease your resources.</p>
            </li>
            <li>
               <p>
                  <code>SampleCount</code> - The count, or number, of data points used for the
          statistical calculation.</p>
            </li>
         </ul>")
  statistic: option<metricStatistic>,
  @ocaml.doc("<p>Specifies how the alarm handles missing data points.</p>
         <p>An alarm can treat missing data in the following ways:</p>
         <ul>
            <li>
               <p>
                  <code>breaching</code> - Assume the missing data is not within the threshold. Missing
          data counts towards the number of times the metric is not within the threshold.</p>
            </li>
            <li>
               <p>
                  <code>notBreaching</code> - Assume the missing data is within the threshold. Missing
          data does not count towards the number of times the metric is not within the
          threshold.</p>
            </li>
            <li>
               <p>
                  <code>ignore</code> - Ignore the missing data. Maintains the current alarm
          state.</p>
            </li>
            <li>
               <p>
                  <code>missing</code> - Missing data is treated as missing.</p>
            </li>
         </ul>")
  treatMissingData: option<treatMissingData>,
  @ocaml.doc("<p>The number of data points that must not within the specified threshold to trigger the
      alarm.</p>")
  datapointsToAlarm: option<integer_>,
  @ocaml.doc("<p>The value against which the specified statistic is compared.</p>")
  threshold: option<double>,
  @ocaml.doc("<p>The period, in seconds, over which the statistic is applied.</p>")
  period: option<metricPeriod>,
  @ocaml.doc("<p>The number of periods over which data is compared to the specified threshold.</p>")
  evaluationPeriods: option<integer_>,
  @ocaml.doc(
    "<p>The arithmetic operation used when comparing the specified statistic and threshold.</p>"
  )
  comparisonOperator: option<comparisonOperator>,
  @ocaml.doc("<p>An object that lists information about the resource monitored by the alarm.</p>")
  monitoredResourceInfo: option<monitoredResourceInfo>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      your Lightsail alarm. This code enables our support team to look up your Lightsail
      information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>Alarm</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An object that lists information about the location of the alarm.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the alarm was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the alarm.</p>") arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the alarm.</p>") name: option<resourceName>,
}
@ocaml.doc("<p>Describes a request to enable, modify, or disable an add-on for an Amazon Lightsail
      resource.</p>
         <note>
            <p>An additional cost may be associated with enabling add-ons. For more information, see
        the <a href=\"https://aws.amazon.com/lightsail/pricing/\">Lightsail pricing
        page</a>.</p>
         </note>")
type addOnRequest = {
  @ocaml.doc("<p>An object that represents additional parameters when enabling or modifying the automatic
      snapshot add-on.</p>")
  autoSnapshotAddOnRequest: option<autoSnapshotAddOnRequest>,
  @ocaml.doc("<p>The add-on type.</p>") addOnType: addOnType,
}
type addOnList = array<addOn>
type staticIpList = array<staticIp>
@ocaml.doc("<p>Describes a database snapshot.</p>")
type relationalDatabaseSnapshot = {
  @ocaml.doc("<p>The blueprint ID of the database from which the database snapshot was created. A blueprint
      describes the major engine version of a database.</p>")
  fromRelationalDatabaseBlueprintId: option<string_>,
  @ocaml.doc("<p>The bundle ID of the database from which the database snapshot was created.</p>")
  fromRelationalDatabaseBundleId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the database from which the database snapshot was
      created.</p>")
  fromRelationalDatabaseArn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the source database from which the database snapshot was created.</p>")
  fromRelationalDatabaseName: option<nonEmptyString>,
  @ocaml.doc("<p>The state of the database snapshot.</p>") state: option<nonEmptyString>,
  @ocaml.doc("<p>The size of the disk in GB (for example, <code>32</code>) for the database
      snapshot.</p>")
  sizeInGb: option<integer_>,
  @ocaml.doc("<p>The database engine version for the database snapshot (for example,
      <code>5.7.23</code>).</p>")
  engineVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The software of the database snapshot (for example, <code>MySQL</code>)</p>")
  engine: option<nonEmptyString>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The Lightsail resource type.</p>") resourceType: option<resourceType>,
  @ocaml.doc("<p>The Region name and Availability Zone where the database snapshot is located.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the database snapshot was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code for the database snapshot. Include this code in your email to support
      when you have questions about a database snapshot in Lightsail. This code enables our
      support team to look up your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the database snapshot.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the database snapshot.</p>") name: option<resourceName>,
}
type relationalDatabaseEventList = array<relationalDatabaseEvent>
@ocaml.doc("<p>Describes a database.</p>")
type relationalDatabase = {
  @ocaml.doc("<p>The certificate associated with the database.</p>")
  caCertificateIdentifier: option<string_>,
  @ocaml.doc("<p>Describes the pending maintenance actions for the database.</p>")
  pendingMaintenanceActions: option<pendingMaintenanceActionList>,
  @ocaml.doc("<p>The master endpoint for the database.</p>")
  masterEndpoint: option<relationalDatabaseEndpoint>,
  @ocaml.doc("<p>A Boolean value indicating whether the database is publicly accessible.</p>")
  publiclyAccessible: option<boolean_>,
  @ocaml.doc("<p>The weekly time range during which system maintenance can occur on the database.</p>
         <p>In the format <code>ddd:hh24:mi-ddd:hh24:mi</code>. For example,
        <code>Tue:17:00-Tue:17:30</code>.</p>")
  preferredMaintenanceWindow: option<nonEmptyString>,
  @ocaml.doc("<p>The daily time range during which automated backups are created for the database (for
      example, <code>16:00-16:30</code>).</p>")
  preferredBackupWindow: option<nonEmptyString>,
  @ocaml.doc("<p>The status of parameter updates for the database.</p>")
  parameterApplyStatus: option<nonEmptyString>,
  @ocaml.doc("<p>The master user name of the database.</p>") masterUsername: option<nonEmptyString>,
  @ocaml.doc("<p>The latest point in time to which the database can be restored. Formatted in Unix
      time.</p>")
  latestRestorableTime: option<isoDate>,
  @ocaml.doc("<p>The database engine version (for example, <code>5.7.23</code>).</p>")
  engineVersion: option<nonEmptyString>,
  @ocaml.doc("<p>The database software (for example, <code>MySQL</code>).</p>")
  engine: option<nonEmptyString>,
  @ocaml.doc("<p>Describes pending database value modifications.</p>")
  pendingModifiedValues: option<pendingModifiedRelationalDatabaseValues>,
  @ocaml.doc("<p>A Boolean value indicating whether automated backup retention is enabled for the
      database.</p>")
  backupRetentionEnabled: option<boolean_>,
  @ocaml.doc("<p>Describes the secondary Availability Zone of a high availability database.</p>
         <p>The secondary database is used for failover support of a high availability
      database.</p>")
  secondaryAvailabilityZone: option<string_>,
  @ocaml.doc("<p>Describes the current state of the database.</p>") state: option<nonEmptyString>,
  @ocaml.doc("<p>Describes the hardware of the database.</p>")
  hardware: option<relationalDatabaseHardware>,
  @ocaml.doc("<p>The name of the master database created when the Lightsail database resource is
      created.</p>")
  masterDatabaseName: option<string_>,
  @ocaml.doc("<p>The bundle ID for the database. A bundle describes the performance specifications for your
      database.</p>")
  relationalDatabaseBundleId: option<nonEmptyString>,
  @ocaml.doc("<p>The blueprint ID for the database. A blueprint describes the major engine version of a
      database.</p>")
  relationalDatabaseBlueprintId: option<nonEmptyString>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The Lightsail resource type for the database (for example,
        <code>RelationalDatabase</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The Region name and Availability Zone where the database is located.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the database was created. Formatted in Unix time.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code for the database. Include this code in your email to support when you
      have questions about a database in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the database.</p>") arn: option<nonEmptyString>,
  @ocaml.doc("<p>The unique name of the database resource in Lightsail.</p>")
  name: option<resourceName>,
}
@ocaml.doc("<p>Describes the AWS Region.</p>")
type region = {
  @ocaml.doc("<p>The Availability Zones for databases. Follows the format <code>us-east-2a</code>
      (case-sensitive).</p>")
  relationalDatabaseAvailabilityZones: option<availabilityZoneList>,
  @ocaml.doc("<p>The Availability Zones. Follows the format <code>us-east-2a</code>
      (case-sensitive).</p>")
  availabilityZones: option<availabilityZoneList>,
  @ocaml.doc("<p>The region name (e.g., <code>us-east-2</code>).</p>") name: option<regionName>,
  @ocaml.doc("<p>The display name (e.g., <code>Ohio</code>).</p>") displayName: option<string_>,
  @ocaml.doc("<p>The description of the AWS Region (e.g., <code>This region is recommended to serve users
        in the eastern United States and eastern Canada</code>).</p>")
  description: option<string_>,
  @ocaml.doc("<p>The continent code (e.g., <code>NA</code>, meaning North America).</p>")
  continentCode: option<string_>,
}
type portInfoList = array<portInfo>
type operationList = array<operation>
@ocaml.doc("<p>Contains information about the status of Lightsail's managed renewal for the
      certificate.</p>
         <p>The renewal status of the certificate.</p>
         <p>The following renewal status are possible:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>PendingAutoRenewal</code>
                  </b> - Lightsail is
          attempting to automatically validate the domain names in the certificate. No further
          action is required. </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>PendingValidation</code>
                  </b> - Lightsail couldn't
          automatically validate one or more domain names in the certificate. You must take action
          to validate these domain names or the certificate won't be renewed. If you used DNS
          validation, check to make sure your certificate's domain validation records exist in your
          domain's DNS, and that your certificate remains in use.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Success</code>
                  </b> - All domain names in the
          certificate are validated, and Lightsail renewed the certificate. No further action is
          required. </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Failed</code>
                  </b> - One or more domain names were
          not validated before the certificate expired, and Lightsail did not renew the
          certificate. You can request a new certificate using the <code>CreateCertificate</code>
          action.</p>
            </li>
         </ul>")
type loadBalancerTlsCertificateRenewalSummary = {
  @ocaml.doc("<p>Contains information about the validation of each domain name in the certificate, as it
      pertains to Lightsail's managed renewal. This is different from the initial validation that
      occurs as a result of the RequestCertificate request.</p>")
  domainValidationOptions: option<loadBalancerTlsCertificateDomainValidationOptionList>,
  @ocaml.doc("<p>The renewal status of the certificate.</p>
         <p>The following renewal status are possible:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>PendingAutoRenewal</code>
                  </b> - Lightsail is
          attempting to automatically validate the domain names of the certificate. No further
          action is required. </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>PendingValidation</code>
                  </b> - Lightsail couldn't
          automatically validate one or more domain names of the certificate. You must take action
          to validate these domain names or the certificate won't be renewed. Check to make sure
          your certificate's domain validation records exist in your domain's DNS, and that your
          certificate remains in use.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Success</code>
                  </b> - All domain names in the
          certificate are validated, and Lightsail renewed the certificate. No further action is
          required. </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Failed</code>
                  </b> - One or more domain names were
          not validated before the certificate expired, and Lightsail did not renew the
          certificate. You can request a new certificate using the <code>CreateCertificate</code>
          action.</p>
            </li>
         </ul>")
  renewalStatus: option<loadBalancerTlsCertificateRenewalStatus>,
}
@ocaml.doc("<p>Describes the Lightsail load balancer.</p>")
type loadBalancer = {
  @ocaml.doc("<p>The IP address type of the load balancer.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>")
  ipAddressType: option<ipAddressType>,
  @ocaml.doc("<p>A string to string map of the configuration options for your load balancer. Valid values
      are listed below.</p>")
  configurationOptions: option<loadBalancerConfigurationOptions>,
  @ocaml.doc("<p>An array of LoadBalancerTlsCertificateSummary objects that provide additional information
      about the SSL/TLS certificates. For example, if <code>true</code>, the certificate is attached
      to the load balancer.</p>")
  tlsCertificateSummaries: option<loadBalancerTlsCertificateSummaryList>,
  @ocaml.doc("<p>An array of InstanceHealthSummary objects describing the health of the load
      balancer.</p>")
  instanceHealthSummary: option<instanceHealthSummaryList>,
  @ocaml.doc("<p>The port where the load balancer will direct traffic to your Lightsail instances. For
      HTTP traffic, it's port 80. For HTTPS traffic, it's port 443.</p>")
  instancePort: option<integer_>,
  @ocaml.doc("<p>The path you specified to perform your health checks. If no path is specified, the load
      balancer tries to make a request to the default (root) page.</p>")
  healthCheckPath: option<nonEmptyString>,
  @ocaml.doc("<p>An array of public port settings for your load balancer. For HTTP, use port 80. For HTTPS,
      use port 443.</p>")
  publicPorts: option<portList>,
  @ocaml.doc("<p>The protocol you have enabled for your load balancer. Valid values are below.</p>
         <p>You can't just have <code>HTTP_HTTPS</code>, but you can have just
      <code>HTTP</code>.</p>")
  protocol: option<loadBalancerProtocol>,
  @ocaml.doc("<p>The status of your load balancer. Valid values are below.</p>")
  state: option<loadBalancerState>,
  @ocaml.doc("<p>The DNS name of your Lightsail load balancer.</p>")
  dnsName: option<nonEmptyString>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The resource type (e.g., <code>LoadBalancer</code>.</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The AWS Region where your load balancer was created (e.g., <code>us-east-2a</code>).
      Lightsail automatically creates your load balancer across Availability Zones.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The date when your load balancer was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      your Lightsail load balancer. This code enables our support team to look up your Lightsail
      information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the load balancer.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the load balancer (e.g., <code>my-load-balancer</code>).</p>")
  name: option<resourceName>,
}
@ocaml.doc("<p>Describes the SSH key pair.</p>")
type keyPair = {
  @ocaml.doc("<p>The RSA fingerprint of the key pair.</p>") fingerprint: option<base64>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The resource type (usually <code>KeyPair</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The region name and Availability Zone where the key pair was created.</p>")
  location: option<resourceLocation>,
  @ocaml.doc(
    "<p>The timestamp when the key pair was created (e.g., <code>1479816991.349</code>).</p>"
  )
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      an instance or another resource in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the key pair (e.g.,
        <code>arn:aws:lightsail:us-east-2:123456789101:KeyPair/05859e3d-331d-48ba-9034-12345EXAMPLE</code>).</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The friendly name of the SSH key pair.</p>") name: option<resourceName>,
}
@ocaml.doc("<p>Describes an instance snapshot.</p>")
type instanceSnapshotInfo = {
  @ocaml.doc(
    "<p>A list of objects describing the disks that were attached to the source instance.</p>"
  )
  fromDiskInfo: option<diskInfoList>,
  @ocaml.doc(
    "<p>The blueprint ID from which the source instance (e.g., <code>os_debian_8_3</code>).</p>"
  )
  fromBlueprintId: option<nonEmptyString>,
  @ocaml.doc("<p>The bundle ID from which the source instance was created (e.g.,
      <code>micro_1_0</code>).</p>")
  fromBundleId: option<nonEmptyString>,
}
type instancePortStateList = array<instancePortState>
type instancePortInfoList = array<instancePortInfo>
@ocaml.doc("<p>The parameters for gaining temporary access to one of your Amazon Lightsail
      instances.</p>")
type instanceAccessDetails = {
  @ocaml.doc("<p>Describes the public SSH host keys or the RDP certificate.</p>")
  hostKeys: option<hostKeysList>,
  @ocaml.doc("<p>The user name to use when logging in to the Amazon Lightsail instance.</p>")
  username: option<string_>,
  @ocaml.doc("<p>The name of this Amazon Lightsail instance.</p>")
  instanceName: option<resourceName>,
  @ocaml.doc("<p>The protocol for these Amazon Lightsail instance access details.</p>")
  protocol: option<instanceAccessProtocol>,
  @ocaml.doc("<p>For SSH access, the temporary private key. For OpenSSH clients (e.g., command line SSH),
      you should save this value to <code>tempkey</code>).</p>")
  privateKey: option<string_>,
  @ocaml.doc("<p>For a Windows Server-based instance, an object with the data you can use to retrieve your
      password. This is only needed if <code>password</code> is empty and the instance is not new
      (and therefore the password is not ready yet). When you create an instance, it can take up to
      15 minutes for the instance to be ready.</p>")
  passwordData: option<passwordData>,
  @ocaml.doc("<p>For RDP access, the password for your Amazon Lightsail instance. Password will be an empty
      string if the password for your new instance is not ready yet. When you create an instance, it
      can take up to 15 minutes for the instance to be ready.</p>
         <note>
            <p>If you create an instance using any key pair other than the default
          (<code>LightsailDefaultKeyPair</code>), <code>password</code> will always be an empty
        string.</p>
            <p>If you change the Administrator password on the instance, Lightsail will continue to
        return the original password value. When accessing the instance using RDP, you need to
        manually enter the Administrator password after changing it from the default.</p>
         </note>")
  password: option<string_>,
  @ocaml.doc("<p>The public IP address of the Amazon Lightsail instance.</p>")
  ipAddress: option<ipAddress>,
  @ocaml.doc("<p>For SSH access, the date on which the temporary keys expire.</p>")
  expiresAt: option<isoDate>,
  @ocaml.doc("<p>For SSH access, the public key to use when accessing your instance For OpenSSH clients
      (e.g., command line SSH), you should save this value to <code>tempkey-cert.pub</code>.</p>")
  certKey: option<string_>,
}
type domainValidationRecordList = array<domainValidationRecord>
type domainEntryList = array<domainEntry>
@ocaml.doc("<p>Describes a block storage disk snapshot.</p>")
type diskSnapshot = {
  @ocaml.doc("<p>A Boolean value indicating whether the snapshot was created from an automatic
      snapshot.</p>")
  isFromAutoSnapshot: option<boolean_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source instance from which the disk (system volume)
      snapshot was created.</p>")
  fromInstanceArn: option<nonEmptyString>,
  @ocaml.doc("<p>The unique name of the source instance from which the disk (system volume) snapshot was
      created.</p>")
  fromInstanceName: option<resourceName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source disk from which the disk snapshot was
      created.</p>")
  fromDiskArn: option<nonEmptyString>,
  @ocaml.doc("<p>The unique name of the source disk from which the disk snapshot was created.</p>")
  fromDiskName: option<resourceName>,
  @ocaml.doc("<p>The progress of the snapshot.</p>") progress: option<string_>,
  @ocaml.doc("<p>The status of the disk snapshot operation.</p>") state: option<diskSnapshotState>,
  @ocaml.doc("<p>The size of the disk in GB.</p>") sizeInGb: option<integer_>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>DiskSnapshot</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The AWS Region and Availability Zone where the disk snapshot was created.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The date when the disk snapshot was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      an instance or another resource in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the disk snapshot.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the disk snapshot (e.g., <code>my-disk-snapshot</code>).</p>")
  name: option<resourceName>,
}
@ocaml.doc("<p>Describes a system disk or a block storage disk.</p>")
type disk = {
  @ocaml.doc("<p>(Deprecated) The number of GB in use by the disk.</p>
         <note>
            <p>In releases prior to November 14, 2017, this parameter was not included in the API
        response. It is now deprecated.</p>
         </note>")
  gbInUse: option<integer_>,
  @ocaml.doc("<p>(Deprecated) The attachment state of the disk.</p>
         <note>
            <p>In releases prior to November 14, 2017, this parameter returned <code>attached</code>
        for system disks in the API response. It is now deprecated, but still included in the
        response. Use <code>isAttached</code> instead.</p>
         </note>")
  attachmentState: option<string_>,
  @ocaml.doc("<p>A Boolean value indicating whether the disk is attached.</p>")
  isAttached: option<boolean_>,
  @ocaml.doc("<p>The resources to which the disk is attached.</p>")
  attachedTo: option<resourceName>,
  @ocaml.doc("<p>Describes the status of the disk.</p>") state: option<diskState>,
  @ocaml.doc("<p>The disk path.</p>") path: option<string_>,
  @ocaml.doc("<p>The input/output operations per second (IOPS) of the disk.</p>")
  iops: option<integer_>,
  @ocaml.doc("<p>A Boolean value indicating whether this disk is a system disk (has an operating system
      loaded on it).</p>")
  isSystemDisk: option<boolean_>,
  @ocaml.doc("<p>The size of the disk in GB.</p>") sizeInGb: option<integer_>,
  @ocaml.doc("<p>An array of objects representing the add-ons enabled on the disk.</p>")
  addOns: option<addOnList>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>Disk</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The AWS Region and Availability Zone where the disk is located.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The date when the disk was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      an instance or another resource in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the disk.</p>") arn: option<nonEmptyString>,
  @ocaml.doc("<p>The unique name of the disk.</p>") name: option<resourceName>,
}
type containerMap = Js.Dict.t<container>
type contactMethodsList = array<contactMethod>
@ocaml.doc("<p>Describes a CloudFormation stack record created as a result of the <code>create cloud
        formation stack</code> operation.</p>
         <p>A CloudFormation stack record provides information about the AWS CloudFormation stack used to
      create a new Amazon Elastic Compute Cloud instance from an exported Lightsail instance snapshot.</p>")
type cloudFormationStackRecord = {
  @ocaml.doc("<p>A list of objects describing the destination service, which is AWS CloudFormation, and the Amazon
      Resource Name (ARN) of the AWS CloudFormation stack.</p>")
  destinationInfo: option<destinationInfo>,
  @ocaml.doc("<p>A list of objects describing the source of the CloudFormation stack record.</p>")
  sourceInfo: option<cloudFormationStackRecordSourceInfoList>,
  @ocaml.doc("<p>The current state of the CloudFormation stack record.</p>")
  state: option<recordState>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>CloudFormationStackRecord</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>A list of objects describing the Availability Zone and AWS Region of the CloudFormation
      stack record.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The date when the CloudFormation stack record was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the CloudFormation stack record.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the CloudFormation stack record. It starts with
        <code>CloudFormationStackRecord</code> followed by a GUID.</p>")
  name: option<resourceName>,
}
@ocaml.doc("<p>Describes the cache settings of an Amazon Lightsail content delivery network (CDN)
      distribution.</p>
         <p>These settings apply only to your distribution's <code>cacheBehaviors</code> (including
      the <code>defaultCacheBehavior</code>) that have a <code>behavior</code> of
      <code>cache</code>.</p>")
type cacheSettings = {
  @ocaml.doc("<p>An object that describes the query strings that are forwarded to the origin. Your content
      is cached based on the query strings that are forwarded.</p>")
  forwardedQueryStrings: option<queryStringObject>,
  @ocaml.doc("<p>An object that describes the headers that are forwarded to the origin. Your content is
      cached based on the headers that are forwarded.</p>")
  forwardedHeaders: option<headerObject>,
  @ocaml.doc("<p>An object that describes the cookies that are forwarded to the origin. Your content is
      cached based on the cookies that are forwarded.</p>")
  forwardedCookies: option<cookieObject>,
  @ocaml.doc("<p>The HTTP method responses that are cached by your distribution.</p>
         <p>You can specify the following options:</p>
         <ul>
            <li>
               <p>
                  <code>GET,HEAD</code> - The distribution caches responses to the <code>GET</code> and
            <code>HEAD</code> methods.</p>
            </li>
            <li>
               <p>
                  <code>GET,HEAD,OPTIONS</code> - The distribution caches responses to the
            <code>GET</code>, <code>HEAD</code>, and <code>OPTIONS</code> methods.</p>
            </li>
         </ul>")
  cachedHTTPMethods: option<nonEmptyString>,
  @ocaml.doc("<p>The HTTP methods that are processed and forwarded to the distribution's origin.</p>
         <p>You can specify the following options:</p>
         <ul>
            <li>
               <p>
                  <code>GET,HEAD</code> - The distribution forwards the <code>GET</code> and
            <code>HEAD</code> methods.</p>
            </li>
            <li>
               <p>
                  <code>GET,HEAD,OPTIONS</code> - The distribution forwards the <code>GET</code>,
            <code>HEAD</code>, and <code>OPTIONS</code> methods.</p>
            </li>
            <li>
               <p>
                  <code>GET,HEAD,OPTIONS,PUT,PATCH,POST,DELETE</code> - The distribution forwards the
            <code>GET</code>, <code>HEAD</code>, <code>OPTIONS</code>, <code>PUT</code>,
            <code>PATCH</code>, <code>POST</code>, and <code>DELETE</code> methods.</p>
            </li>
         </ul>
         <p>If you specify the third option, you might need to restrict access to your distribution's
      origin so users can't perform operations that you don't want them to. For example, you might
      not want users to have permission to delete objects from your origin.</p>")
  allowedHTTPMethods: option<nonEmptyString>,
  @ocaml.doc("<p>The maximum amount of time that objects stay in the distribution's cache before the
      distribution forwards another request to the origin to determine whether the object has been
      updated.</p>
         <p>The value specified applies only when the origin adds HTTP headers such as
        <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
        <code>Expires</code> to objects.</p>")
  maximumTTL: option<long>,
  @ocaml.doc("<p>The minimum amount of time that objects stay in the distribution's cache before the
      distribution forwards another request to the origin to determine whether the object has been
      updated.</p>
         <p>A value of <code>0</code> must be specified for <code>minimumTTL</code> if the
      distribution is configured to forward all headers to the origin.</p>")
  minimumTTL: option<long>,
  @ocaml.doc("<p>The default amount of time that objects stay in the distribution's cache before the
      distribution forwards another request to the origin to determine whether the content has been
      updated.</p>
         <note>
            <p>The value specified applies only when the origin does not add HTTP headers such as
          <code>Cache-Control max-age</code>, <code>Cache-Control s-maxage</code>, and
          <code>Expires</code> to objects.</p>
         </note>")
  defaultTTL: option<long>,
}
type bundleList = array<bundle>
@ocaml.doc("<p>Describes an automatic snapshot.</p>")
type autoSnapshotDetails = {
  @ocaml.doc("<p>An array of objects that describe the block storage disks attached to the instance when
      the automatic snapshot was created.</p>")
  fromAttachedDisks: option<attachedDiskList>,
  @ocaml.doc("<p>The status of the automatic snapshot.</p>") status: option<autoSnapshotStatus>,
  @ocaml.doc("<p>The timestamp when the automatic snapshot was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The date of the automatic snapshot in <code>YYYY-MM-DD</code> format.</p>")
  date: option<string_>,
}
type attachedDiskMap = Js.Dict.t<diskMapList>
type alarmsList = array<alarm>
type addOnRequestList = array<addOnRequest>
@ocaml.doc(
  "<p>Describes the status of a SSL/TLS certificate renewal managed by Amazon Lightsail.</p>"
)
type renewalSummary = {
  @ocaml.doc("<p>The timestamp when the certificate was last updated.</p>")
  updatedAt: option<isoDate>,
  @ocaml.doc("<p>The reason for the renewal status of the certificate.</p>")
  renewalStatusReason: option<renewalStatusReason>,
  @ocaml.doc("<p>The renewal status of the certificate.</p>
         <p>The following renewal status are possible:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>PendingAutoRenewal</code>
                  </b> - Lightsail is
          attempting to automatically validate the domain names of the certificate. No further
          action is required. </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>PendingValidation</code>
                  </b> - Lightsail couldn't
          automatically validate one or more domain names of the certificate. You must take action
          to validate these domain names or the certificate won't be renewed. Check to make sure
          your certificate's domain validation records exist in your domain's DNS, and that your
          certificate remains in use.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Success</code>
                  </b> - All domain names in the
          certificate are validated, and Lightsail renewed the certificate. No further action is
          required. </p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Failed</code>
                  </b> - One or more domain names were
          not validated before the certificate expired, and Lightsail did not renew the
          certificate. You can request a new certificate using the <code>CreateCertificate</code>
          action.</p>
            </li>
         </ul>")
  renewalStatus: option<renewalStatus>,
  @ocaml.doc(
    "<p>An array of objects that describe the domain validation records of the certificate.</p>"
  )
  domainValidationRecords: option<domainValidationRecordList>,
}
type relationalDatabaseSnapshotList = array<relationalDatabaseSnapshot>
type relationalDatabaseList = array<relationalDatabase>
type regionList = array<region>
@ocaml.doc("<p>Describes a load balancer SSL/TLS certificate.</p>
         <p>TLS is just an updated, more secure version of Secure Socket Layer (SSL).</p>")
type loadBalancerTlsCertificate = {
  @ocaml.doc("<p>An array of strings that specify the alternate domains (e.g., <code>example2.com</code>)
      and subdomains (e.g., <code>blog.example.com</code>) for the certificate.</p>")
  subjectAlternativeNames: option<stringList>,
  @ocaml.doc("<p>The name of the entity that is associated with the public key contained in the
      certificate.</p>")
  subject: option<nonEmptyString>,
  @ocaml.doc("<p>The algorithm that was used to sign the certificate.</p>")
  signatureAlgorithm: option<nonEmptyString>,
  @ocaml.doc("<p>The serial number of the certificate.</p>") serial: option<nonEmptyString>,
  @ocaml.doc("<p>The timestamp when the certificate was revoked. This value is present only when the
      certificate status is <code>REVOKED</code>.</p>")
  revokedAt: option<isoDate>,
  @ocaml.doc("<p>The reason the certificate was revoked. This value is present only when the certificate
      status is <code>REVOKED</code>.</p>")
  revocationReason: option<loadBalancerTlsCertificateRevocationReason>,
  @ocaml.doc("<p>An object that describes the status of the certificate renewal managed by
      Lightsail.</p>")
  renewalSummary: option<loadBalancerTlsCertificateRenewalSummary>,
  @ocaml.doc("<p>The timestamp when the SSL/TLS certificate is first valid.</p>")
  notBefore: option<isoDate>,
  @ocaml.doc("<p>The timestamp when the SSL/TLS certificate expires.</p>")
  notAfter: option<isoDate>,
  @ocaml.doc("<p>The algorithm used to generate the key pair (the public and private key).</p>")
  keyAlgorithm: option<nonEmptyString>,
  @ocaml.doc("<p>The issuer of the certificate.</p>") issuer: option<nonEmptyString>,
  @ocaml.doc("<p>The time when the SSL/TLS certificate was issued.</p>") issuedAt: option<isoDate>,
  @ocaml.doc("<p>The validation failure reason, if any, of the certificate.</p>

         <p>The following failure reasons are possible:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>NO_AVAILABLE_CONTACTS</code>
                  </b> - This failure
          applies to email validation, which is not available for Lightsail certificates.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>ADDITIONAL_VERIFICATION_REQUIRED</code>
                  </b> -
          Lightsail requires additional information to process this certificate request. This can
          happen as a fraud-protection measure, such as when the domain ranks within the Alexa top
          1000 websites. To provide the required information, use the <a href=\"https://console.aws.amazon.com/support/home\">AWS Support Center</a> to contact
          AWS Support.</p>
               <note>
                  <p>You cannot request a certificate for Amazon-owned domain names such as those ending
            in amazonaws.com, cloudfront.net, or elasticbeanstalk.com.</p>
               </note>
            </li>
            <li>
               <p>
                  <b>
                     <code>DOMAIN_NOT_ALLOWED</code>
                  </b> - One or more of the
          domain names in the certificate request was reported as an unsafe domain by <a href=\"https://www.virustotal.com/gui/home/url\">VirusTotal</a>. To correct the
          problem, search for your domain name on the <a href=\"https://www.virustotal.com/gui/home/url\">VirusTotal</a> website. If your domain
          is reported as suspicious, see <a href=\"https://developers.google.com/web/fundamentals/security/hacked\">Google Help for
            Hacked Websites</a> to learn what you can do.</p>
               <p>If you believe that the result is a false positive, notify the organization that is
          reporting the domain. VirusTotal is an aggregate of several antivirus and URL scanners and
          cannot remove your domain from a block list itself. After you correct the problem and the
          VirusTotal registry has been updated, request a new certificate.</p>
               <p>If you see this error and your domain is not included in the VirusTotal list, visit
          the <a href=\"https://console.aws.amazon.com/support/home\">AWS Support Center</a>
          and create a case.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>INVALID_PUBLIC_DOMAIN</code>
                  </b> - One or more of
          the domain names in the certificate request is not valid. Typically, this is because a
          domain name in the request is not a valid top-level domain. Try to request a certificate
          again, correcting any spelling errors or typos that were in the failed request, and ensure
          that all domain names in the request are for valid top-level domains. For example, you
          cannot request a certificate for <code>example.invalidpublicdomain</code> because
            <code>invalidpublicdomain</code> is not a valid top-level domain.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>OTHER</code>
                  </b> - Typically, this failure occurs
          when there is a typographical error in one or more of the domain names in the certificate
          request. Try to request a certificate again, correcting any spelling errors or typos that
          were in the failed request. </p>
            </li>
         </ul>")
  failureReason: option<loadBalancerTlsCertificateFailureReason>,
  @ocaml.doc("<p>An array of LoadBalancerTlsCertificateDomainValidationRecord objects describing the
      records.</p>")
  domainValidationRecords: option<loadBalancerTlsCertificateDomainValidationRecordList>,
  @ocaml.doc("<p>The domain name for your SSL/TLS certificate.</p>") domainName: option<domainName>,
  @ocaml.doc("<p>The validation status of the SSL/TLS certificate. Valid values are below.</p>")
  status: option<loadBalancerTlsCertificateStatus>,
  @ocaml.doc("<p>When <code>true</code>, the SSL/TLS certificate is attached to the Lightsail load
      balancer.</p>")
  isAttached: option<boolean_>,
  @ocaml.doc("<p>The load balancer name where your SSL/TLS certificate is attached.</p>")
  loadBalancerName: option<resourceName>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The resource type (e.g., <code>LoadBalancerTlsCertificate</code>).</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>Instance</code>
                  </b> - A Lightsail instance (a
          virtual private server)</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>StaticIp</code>
                  </b> - A static IP address</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>KeyPair</code>
                  </b> - The key pair used to connect
          to a Lightsail instance</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>InstanceSnapshot</code>
                  </b> - A Lightsail
          instance snapshot</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Domain</code>
                  </b> - A DNS zone</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>PeeredVpc</code>
                  </b> - A peered VPC</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>LoadBalancer</code>
                  </b> - A Lightsail load
          balancer</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>LoadBalancerTlsCertificate</code>
                  </b> - An SSL/TLS
          certificate associated with a Lightsail load balancer</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>Disk</code>
                  </b> - A Lightsail block storage
          disk</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>DiskSnapshot</code>
                  </b> - A block storage disk
          snapshot</p>
            </li>
         </ul>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The AWS Region and Availability Zone where you created your certificate.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The time when you created your SSL/TLS certificate.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      your Lightsail load balancer or SSL/TLS certificate. This code enables our support team to
      look up your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the SSL/TLS certificate.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the SSL/TLS certificate (e.g., <code>my-certificate</code>).</p>")
  name: option<resourceName>,
}
type loadBalancerList = array<loadBalancer>
@ocaml.doc("<p>Describes an Amazon Lightsail content delivery network (CDN) distribution.</p>")
type lightsailDistribution = {
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The IP address type of the distribution.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>")
  ipAddressType: option<ipAddressType>,
  @ocaml.doc("<p>Indicates whether the bundle that is currently applied to your distribution, specified
      using the <code>distributionName</code> parameter, can be changed to another bundle.</p>
         <p>Use the <code>UpdateDistributionBundle</code> action to change your distribution's
      bundle.</p>")
  ableToUpdateBundle: option<boolean_>,
  @ocaml.doc(
    "<p>An array of objects that describe the per-path cache behavior of the distribution.</p>"
  )
  cacheBehaviors: option<cacheBehaviorList>,
  @ocaml.doc("<p>An object that describes the cache behavior settings of the distribution.</p>")
  cacheBehaviorSettings: option<cacheSettings>,
  @ocaml.doc("<p>An object that describes the default cache behavior of the distribution.</p>")
  defaultCacheBehavior: option<cacheBehavior>,
  @ocaml.doc("<p>The public DNS of the origin.</p>") originPublicDNS: option<string_>,
  @ocaml.doc("<p>An object that describes the origin resource of the distribution, such as a Lightsail
      instance or load balancer.</p>
         <p>The distribution pulls, caches, and serves content from the origin.</p>")
  origin: option<origin>,
  @ocaml.doc("<p>The name of the SSL/TLS certificate attached to the distribution, if any.</p>")
  certificateName: option<resourceName>,
  @ocaml.doc("<p>The ID of the bundle currently applied to the distribution.</p>")
  bundleId: option<string_>,
  @ocaml.doc("<p>The domain name of the distribution.</p>") domainName: option<string_>,
  @ocaml.doc("<p>Indicates whether the distribution is enabled.</p>") isEnabled: option<boolean_>,
  @ocaml.doc("<p>The status of the distribution.</p>") status: option<string_>,
  @ocaml.doc("<p>The alternate domain names of the distribution.</p>")
  alternativeDomainNames: option<stringList>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>Distribution</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An object that describes the location of the distribution, such as the AWS Region and
      Availability Zone.</p>
         <note>
            <p>Lightsail distributions are global resources that can reference an origin in any AWS
        Region, and distribute its content globally. However, all distributions are located in the
          <code>us-east-1</code> Region.</p>
         </note>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the distribution was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      your Lightsail distribution. This code enables our support team to look up your Lightsail
      information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the distribution.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the distribution.</p>") name: option<resourceName>,
}
type keyPairList = array<keyPair>
@ocaml.doc("<p>Describes monthly data transfer rates and port information for an instance.</p>")
type instanceNetworking = {
  @ocaml.doc(
    "<p>An array of key-value pairs containing information about the ports on the instance.</p>"
  )
  ports: option<instancePortInfoList>,
  @ocaml.doc("<p>The amount of data in GB allocated for monthly data transfers.</p>")
  monthlyTransfer: option<monthlyTransfer>,
}
@ocaml.doc("<p>Describes the source of an export snapshot record.</p>")
type exportSnapshotRecordSourceInfo = {
  @ocaml.doc("<p>A list of objects describing a disk snapshot.</p>")
  diskSnapshotInfo: option<diskSnapshotInfo>,
  @ocaml.doc("<p>A list of objects describing an instance snapshot.</p>")
  instanceSnapshotInfo: option<instanceSnapshotInfo>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the snapshot's source instance or disk.</p>")
  fromResourceArn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the snapshot's source instance or disk.</p>")
  fromResourceName: option<nonEmptyString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the source instance or disk snapshot.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the source instance or disk snapshot.</p>")
  name: option<nonEmptyString>,
  @ocaml.doc("<p>The date when the source instance or disk snapshot was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>InstanceSnapshot</code> or
        <code>DiskSnapshot</code>).</p>")
  resourceType: option<exportSnapshotRecordSourceType>,
}
@ocaml.doc("<p>Describes a domain where you are storing recordsets in Lightsail.</p>")
type domain = {
  @ocaml.doc("<p>An array of key-value pairs containing information about the domain entries.</p>")
  domainEntries: option<domainEntryList>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The resource type. </p>") resourceType: option<resourceType>,
  @ocaml.doc("<p>The AWS Region and Availability Zones where the domain recordset was created.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The date when the domain recordset was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      an instance or another resource in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the domain recordset (e.g.,
        <code>arn:aws:lightsail:global:123456789101:Domain/824cede0-abc7-4f84-8dbc-12345EXAMPLE</code>).</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the domain.</p>") name: option<resourceName>,
}
type diskSnapshotList = array<diskSnapshot>
type diskList = array<disk>
@ocaml.doc("<p>Describes a container deployment configuration of an Amazon Lightsail container
      service.</p>

         <p>A deployment specifies the settings, such as the ports and launch command, of containers
      that are deployed to your container service.</p>")
type containerServiceDeploymentRequest = {
  @ocaml.doc("<p>An object that describes the endpoint of the deployment.</p>")
  publicEndpoint: option<endpointRequest>,
  @ocaml.doc(
    "<p>An object that describes the configuration for the containers of the deployment.</p>"
  )
  containers: option<containerMap>,
}
@ocaml.doc("<p>Describes a container deployment configuration of an Amazon Lightsail container
      service.</p>

         <p>A deployment specifies the settings, such as the ports and launch command, of containers
      that are deployed to your container service.</p>")
type containerServiceDeployment = {
  @ocaml.doc("<p>The timestamp when the deployment was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>An object that describes the endpoint of the deployment.</p>")
  publicEndpoint: option<containerServiceEndpoint>,
  @ocaml.doc(
    "<p>An object that describes the configuration for the containers of the deployment.</p>"
  )
  containers: option<containerMap>,
  @ocaml.doc("<p>The state of the deployment.</p>

         <p>A deployment can be in one of the following states:</p>
         <ul>
            <li>
               <p>
                  <code>Activating</code> - The deployment is being created.</p>
            </li>
            <li>
               <p>
                  <code>Active</code> - The deployment was successfully created, and it's currently
          running on the container service. The container service can have only one deployment in an
          active state at a time.</p>
            </li>
            <li>
               <p>
                  <code>Inactive</code> - The deployment was previously successfully created, but it is
          not currently running on the container service.</p>
            </li>
            <li>
               <p>
                  <code>Failed</code> - The deployment failed. Use the <code>GetContainerLog</code>
          action to view the log events for the containers in the deployment to try to determine the
          reason for the failure.</p>
            </li>
         </ul>")
  state: option<containerServiceDeploymentState>,
  @ocaml.doc("<p>The version number of the deployment.</p>") version: option<integer_>,
}
type cloudFormationStackRecordList = array<cloudFormationStackRecord>
type autoSnapshotDetailsList = array<autoSnapshotDetails>
type loadBalancerTlsCertificateList = array<loadBalancerTlsCertificate>
@ocaml.doc("<p>Describes an instance snapshot.</p>")
type instanceSnapshot = {
  @ocaml.doc("<p>The size in GB of the SSD.</p>") sizeInGb: option<integer_>,
  @ocaml.doc("<p>A Boolean value indicating whether the snapshot was created from an automatic
      snapshot.</p>")
  isFromAutoSnapshot: option<boolean_>,
  @ocaml.doc(
    "<p>The bundle ID from which you created the snapshot (e.g., <code>micro_1_0</code>).</p>"
  )
  fromBundleId: option<string_>,
  @ocaml.doc("<p>The blueprint ID from which you created the snapshot (e.g., <code>os_debian_8_3</code>). A
      blueprint is a virtual private server (or <i>instance</i>) image used to create
      instances quickly.</p>")
  fromBlueprintId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance from which the snapshot was created (e.g.,
        <code>arn:aws:lightsail:us-east-2:123456789101:Instance/64b8404c-ccb1-430b-8daf-12345EXAMPLE</code>).</p>")
  fromInstanceArn: option<nonEmptyString>,
  @ocaml.doc("<p>The instance from which the snapshot was created.</p>")
  fromInstanceName: option<resourceName>,
  @ocaml.doc(
    "<p>An array of disk objects containing information about all block storage disks.</p>"
  )
  fromAttachedDisks: option<diskList>,
  @ocaml.doc("<p>The progress of the snapshot.</p>
         <note>
            <p>This is populated only for disk snapshots, and is <code>null</code> for instance
        snapshots.</p>
         </note>")
  progress: option<string_>,
  @ocaml.doc("<p>The state the snapshot is in.</p>") state: option<instanceSnapshotState>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The type of resource (usually <code>InstanceSnapshot</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The region name and Availability Zone where you created the snapshot.</p>")
  location: option<resourceLocation>,
  @ocaml.doc(
    "<p>The timestamp when the snapshot was created (e.g., <code>1479907467.024</code>).</p>"
  )
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      an instance or another resource in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the snapshot (e.g.,
        <code>arn:aws:lightsail:us-east-2:123456789101:InstanceSnapshot/d23b5706-3322-4d83-81e5-12345EXAMPLE</code>).</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the snapshot.</p>") name: option<resourceName>,
}
@ocaml.doc("<p>Describes the hardware for the instance.</p>")
type instanceHardware = {
  @ocaml.doc("<p>The amount of RAM in GB on the instance (e.g., <code>1.0</code>).</p>")
  ramSizeInGb: option<float_>,
  @ocaml.doc("<p>The disks attached to the instance.</p>") disks: option<diskList>,
  @ocaml.doc("<p>The number of vCPUs the instance has.</p>") cpuCount: option<integer_>,
}
@ocaml.doc("<p>Describes an export snapshot record.</p>")
type exportSnapshotRecord = {
  @ocaml.doc("<p>A list of objects describing the destination of the export snapshot record.</p>")
  destinationInfo: option<destinationInfo>,
  @ocaml.doc("<p>A list of objects describing the source of the export snapshot record.</p>")
  sourceInfo: option<exportSnapshotRecordSourceInfo>,
  @ocaml.doc("<p>The state of the export snapshot record.</p>") state: option<recordState>,
  @ocaml.doc("<p>The Lightsail resource type (e.g., <code>ExportSnapshotRecord</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc(
    "<p>The AWS Region and Availability Zone where the export snapshot record is located.</p>"
  )
  location: option<resourceLocation>,
  @ocaml.doc("<p>The date when the export snapshot record was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the export snapshot record.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The export snapshot record name.</p>") name: option<resourceName>,
}
type domainList = array<domain>
type distributionList = array<lightsailDistribution>
type containerServiceDeploymentList = array<containerServiceDeployment>
@ocaml.doc("<p>Describes an Amazon Lightsail container service.</p>")
type containerService = {
  @ocaml.doc("<p>The publicly accessible URL of the container service.</p>

         <p>If no public endpoint is specified in the <code>currentDeployment</code>, this URL returns
      a 404 response.</p>")
  url: option<string_>,
  @ocaml.doc("<p>The public domain name of the container service, such as <code>example.com</code> and
        <code>www.example.com</code>.</p>

         <p>You can specify up to four public domain names for a container service. The domain names
      that you specify are used when you create a deployment with a container configured as the
      public endpoint of your container service.</p>

         <p>If you don't specify public domain names, then you can use the default domain of the
      container service.</p>

         <important>
            <p>You must create and validate an SSL/TLS certificate before you can use public domain
        names with your container service. Use the <code>CreateCertificate</code> action to create a
        certificate for the public domain names you want to use with your container service.</p>
         </important>

         <p>See <code>CreateContainerService</code> or <code>UpdateContainerService</code> for
      information about how to specify public domain names for your Lightsail container
      service.</p>")
  publicDomainNames: option<containerServicePublicDomains>,
  @ocaml.doc("<p>The private domain name of the container service.</p>

         <p>The private domain name is accessible only by other resources within the default virtual
      private cloud (VPC) of your Lightsail account.</p>")
  privateDomainName: option<string_>,
  @ocaml.doc("<p>The principal ARN of the container service.</p>

         <p>The principal ARN can be used to create a trust relationship between your standard AWS
      account and your Lightsail container service. This allows you to give your service
      permission to access resources in your standard AWS account.</p>")
  principalArn: option<string_>,
  @ocaml.doc("<p>A Boolean value indicating whether the container service is disabled.</p>")
  isDisabled: option<boolean_>,
  @ocaml.doc("<p>An object that describes the next deployment of the container service.</p>

         <p>This value is <code>null</code> when there is no deployment in a <code>pending</code>
      state.</p>")
  nextDeployment: option<containerServiceDeployment>,
  @ocaml.doc(
    "<p>An object that describes the current container deployment of the container service.</p>"
  )
  currentDeployment: option<containerServiceDeployment>,
  @ocaml.doc("<p>The scale specification of the container service.</p>

         <p>The scale specifies the allocated compute nodes of the container service.</p>")
  scale: option<containerServiceScale>,
  @ocaml.doc("<p>An object that describes the current state of the container service.</p>
         <note>
            <p>The state detail is populated only when a container service is in a
        <code>PENDING</code>, <code>DEPLOYING</code>, or <code>UPDATING</code> state.</p>
         </note>")
  stateDetail: option<containerServiceStateDetail>,
  @ocaml.doc("<p>The current state of the container service.</p>
         <p>The following container service states are possible:</p>
         <ul>
            <li>
               <p>
                  <code>PENDING</code> - The container service is being created.</p>
            </li>
            <li>
               <p>
                  <code>READY</code> - The container service is running but it does not have an active
          container deployment.</p>
            </li>
            <li>
               <p>
                  <code>DEPLOYING</code> - The container service is launching a container
          deployment.</p>
            </li>
            <li>
               <p>
                  <code>RUNNING</code> - The container service is running and it has an active container
          deployment.</p>
            </li>
            <li>
               <p>
                  <code>UPDATING</code> - The container service capacity or its custom domains are being
          updated.</p>
            </li>
            <li>
               <p>
                  <code>DELETING</code> - The container service is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>DISABLED</code> - The container service is disabled, and its active deployment
          and containers, if any, are shut down.</p>
            </li>
         </ul>")
  state: option<containerServiceState>,
  @ocaml.doc("<p>The ID of the power of the container service.</p>") powerId: option<string_>,
  @ocaml.doc("<p>The power specification of the container service.</p>

         <p>The power specifies the amount of RAM, the number of vCPUs, and the base price of the
      container service.</p>")
  power: option<containerServicePowerName>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The Lightsail resource type of the container service (i.e.,
        <code>ContainerService</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>An object that describes the location of the container service, such as the AWS Region
      and Availability Zone.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the container service was created.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the container service.</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc("<p>The name of the container service.</p>")
  containerServiceName: option<containerServiceName>,
}
@ocaml.doc("<p>Describes the full details of an Amazon Lightsail SSL/TLS certificate.</p>
         <note>
            <p>To get a summary of a certificate, use the <code>GetCertificates</code> action and ommit
          <code>includeCertificateDetails</code> from your request. The response will include only
        the certificate Amazon Resource Name (ARN), certificate name, domain name, and tags.</p>
         </note>")
type certificate = {
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      your Lightsail certificate. This code enables our support team to look up your Lightsail
      information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The reason the certificate was revoked. This value is present only when the certificate
      status is <code>REVOKED</code>.</p>")
  revocationReason: option<revocationReason>,
  @ocaml.doc("<p>The timestamp when the certificate was revoked. This value is present only when the
      certificate status is <code>REVOKED</code>.</p>")
  revokedAt: option<isoDate>,
  @ocaml.doc("<p>An object that describes the status of the certificate renewal managed by
      Lightsail.</p>")
  renewalSummary: option<renewalSummary>,
  @ocaml.doc("<p>The renewal eligibility of the certificate.</p>")
  eligibleToRenew: option<eligibleToRenew>,
  @ocaml.doc("<p>The timestamp when the certificate expires.</p>") notAfter: option<isoDate>,
  @ocaml.doc("<p>The timestamp when the certificate is first valid.</p>")
  notBefore: option<isoDate>,
  @ocaml.doc("<p>The certificate authority that issued the certificate.</p>")
  issuerCA: option<issuerCA>,
  @ocaml.doc("<p>The timestamp when the certificate was issued.</p>") issuedAt: option<isoDate>,
  @ocaml.doc("<p>The timestamp when the certificate was created.</p>") createdAt: option<isoDate>,
  @ocaml.doc("<p>The algorithm used to generate the key pair (the public and private key) of the
      certificate.</p>")
  keyAlgorithm: option<keyAlgorithm>,
  @ocaml.doc("<p>The number of Lightsail resources that the certificate is attached to.</p>")
  inUseResourceCount: option<inUseResourceCount>,
  @ocaml.doc("<p>The validation failure reason, if any, of the certificate.</p>
         <p>The following failure reasons are possible:</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>NO_AVAILABLE_CONTACTS</code>
                  </b> - This failure
          applies to email validation, which is not available for Lightsail certificates.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>ADDITIONAL_VERIFICATION_REQUIRED</code>
                  </b> -
          Lightsail requires additional information to process this certificate request. This can
          happen as a fraud-protection measure, such as when the domain ranks within the Alexa top
          1000 websites. To provide the required information, use the <a href=\"https://console.aws.amazon.com/support/home\">AWS Support Center</a> to contact
          AWS Support.</p>
               <note>
                  <p>You cannot request a certificate for Amazon-owned domain names such as those ending
            in amazonaws.com, cloudfront.net, or elasticbeanstalk.com.</p>
               </note>
            </li>
            <li>
               <p>
                  <b>
                     <code>DOMAIN_NOT_ALLOWED</code>
                  </b> - One or more of the
          domain names in the certificate request was reported as an unsafe domain by <a href=\"https://www.virustotal.com/gui/home/url\">VirusTotal</a>. To correct the
          problem, search for your domain name on the <a href=\"https://www.virustotal.com/gui/home/url\">VirusTotal</a> website. If your domain
          is reported as suspicious, see <a href=\"https://developers.google.com/web/fundamentals/security/hacked\">Google Help for
            Hacked Websites</a> to learn what you can do.</p>
               <p>If you believe that the result is a false positive, notify the organization that is
          reporting the domain. VirusTotal is an aggregate of several antivirus and URL scanners and
          cannot remove your domain from a block list itself. After you correct the problem and the
          VirusTotal registry has been updated, request a new certificate.</p>
               <p>If you see this error and your domain is not included in the VirusTotal list, visit
          the <a href=\"https://console.aws.amazon.com/support/home\">AWS Support Center</a>
          and create a case.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>INVALID_PUBLIC_DOMAIN</code>
                  </b> - One or more of
          the domain names in the certificate request is not valid. Typically, this is because a
          domain name in the request is not a valid top-level domain. Try to request a certificate
          again, correcting any spelling errors or typos that were in the failed request, and ensure
          that all domain names in the request are for valid top-level domains. For example, you
          cannot request a certificate for <code>example.invalidpublicdomain</code> because
            <code>invalidpublicdomain</code> is not a valid top-level domain.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>OTHER</code>
                  </b> - Typically, this failure occurs
          when there is a typographical error in one or more of the domain names in the certificate
          request. Try to request a certificate again, correcting any spelling errors or typos that
          were in the failed request. </p>
            </li>
         </ul>")
  requestFailureReason: option<requestFailureReason>,
  @ocaml.doc(
    "<p>An array of objects that describe the domain validation records of the certificate.</p>"
  )
  domainValidationRecords: option<domainValidationRecordList>,
  @ocaml.doc("<p>An array of strings that specify the alternate domains (e.g., <code>example2.com</code>)
      and subdomains (e.g., <code>blog.example.com</code>) of the certificate.</p>")
  subjectAlternativeNames: option<subjectAlternativeNameList>,
  @ocaml.doc("<p>The serial number of the certificate.</p>") serialNumber: option<serialNumber>,
  @ocaml.doc("<p>The validation status of the certificate.</p>") status: option<certificateStatus>,
  @ocaml.doc("<p>The domain name of the certificate.</p>") domainName: option<domainName>,
  @ocaml.doc("<p>The name of the certificate (e.g., <code>my-certificate</code>).</p>")
  name: option<certificateName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificate.</p>")
  arn: option<nonEmptyString>,
}
type instanceSnapshotList = array<instanceSnapshot>
@ocaml.doc("<p>Describes an instance (a virtual private server).</p>")
type instance = {
  @ocaml.doc("<p>The name of the SSH key being used to connect to the instance (e.g.,
        <code>LightsailDefaultKeyPair</code>).</p>")
  sshKeyName: option<resourceName>,
  @ocaml.doc("<p>The user name for connecting to the instance (e.g., <code>ec2-user</code>).</p>")
  username: option<nonEmptyString>,
  @ocaml.doc("<p>The status code and the state (e.g., <code>running</code>) for the instance.</p>")
  state: option<instanceState>,
  @ocaml.doc("<p>Information about the public ports and monthly data transfer rates for the
      instance.</p>")
  networking: option<instanceNetworking>,
  @ocaml.doc("<p>The size of the vCPU and the amount of RAM for the instance.</p>")
  hardware: option<instanceHardware>,
  @ocaml.doc("<p>The IP address type of the instance.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>")
  ipAddressType: option<ipAddressType>,
  @ocaml.doc("<p>The IPv6 addresses of the instance.</p>") ipv6Addresses: option<ipv6AddressList>,
  @ocaml.doc("<p>The public IP address of the instance.</p>") publicIpAddress: option<ipAddress>,
  @ocaml.doc("<p>The private IP address of the instance.</p>") privateIpAddress: option<ipAddress>,
  @ocaml.doc(
    "<p>A Boolean value indicating whether this instance has a static IP assigned to it.</p>"
  )
  isStaticIp: option<boolean_>,
  @ocaml.doc("<p>An array of objects representing the add-ons enabled on the instance.</p>")
  addOns: option<addOnList>,
  @ocaml.doc("<p>The bundle for the instance (e.g., <code>micro_1_0</code>).</p>")
  bundleId: option<nonEmptyString>,
  @ocaml.doc("<p>The friendly name of the blueprint (e.g., <code>Amazon Linux</code>).</p>")
  blueprintName: option<nonEmptyString>,
  @ocaml.doc("<p>The blueprint ID (e.g., <code>os_amlinux_2016_03</code>).</p>")
  blueprintId: option<nonEmptyString>,
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The type of resource (usually <code>Instance</code>).</p>")
  resourceType: option<resourceType>,
  @ocaml.doc("<p>The region name and Availability Zone where the instance is located.</p>")
  location: option<resourceLocation>,
  @ocaml.doc("<p>The timestamp when the instance was created (e.g., <code>1479734909.17</code>) in Unix
      time format.</p>")
  createdAt: option<isoDate>,
  @ocaml.doc("<p>The support code. Include this code in your email to support when you have questions about
      an instance or another resource in Lightsail. This code enables our support team to look up
      your Lightsail information more easily.</p>")
  supportCode: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the instance (e.g.,
        <code>arn:aws:lightsail:us-east-2:123456789101:Instance/244ad76f-8aad-4741-809f-12345EXAMPLE</code>).</p>")
  arn: option<nonEmptyString>,
  @ocaml.doc(
    "<p>The name the user gave the instance (e.g., <code>Amazon_Linux-1GB-Ohio-1</code>).</p>"
  )
  name: option<resourceName>,
}
type exportSnapshotRecordList = array<exportSnapshotRecord>
type containerServiceList = array<containerService>
@ocaml.doc("<p>Describes an Amazon Lightsail SSL/TLS certificate.</p>")
type certificateSummary = {
  @ocaml.doc("<p>The tag keys and optional values for the resource. For more information about tags in
      Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>An object that describes a certificate in detail.</p>")
  certificateDetail: option<certificate>,
  @ocaml.doc("<p>The domain name of the certificate.</p>") domainName: option<domainName>,
  @ocaml.doc("<p>The name of the certificate.</p>") certificateName: option<certificateName>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the certificate.</p>")
  certificateArn: option<nonEmptyString>,
}
type instanceList = array<instance>
type certificateSummaryList = array<certificateSummary>
@ocaml.doc("<p>Amazon Lightsail is the easiest way to get started with Amazon Web Services (AWS) for developers
      who need to build websites or web applications. It includes everything you need to launch your
      project quickly - instances (virtual private servers), container services, managed databases,
      SSD-based block storage, static IP addresses, load balancers, content delivery network (CDN)
      distributions, DNS management of registered domains, and resource snapshots (backups) - for a
      low, predictable monthly price.</p>

         <p>You can manage your Lightsail resources using the Lightsail console, Lightsail API,
      AWS Command Line Interface (AWS CLI), or SDKs. For more information about Lightsail concepts
      and tasks, see the <a href=\"http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli\">Lightsail Dev Guide</a>.</p>

         <p>This API Reference provides detailed information about the actions, data types,
      parameters, and errors of the Lightsail service. For more information about the supported
      AWS Regions, endpoints, and service quotas of the Lightsail service, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/lightsail.html\">Amazon Lightsail Endpoints and
        Quotas</a> in the <i>AWS General Reference</i>.</p>")
module IsVpcPeered = {
  type t

  type response = {
    @ocaml.doc("<p>Returns <code>true</code> if the Lightsail VPC is peered; otherwise,
      <code>false</code>.</p>")
    isPeered: option<boolean_>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: unit => t = "IsVpcPeeredCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseMasterUserPassword = {
  type t
  type request = {
    @ocaml.doc("<p>The password version to return.</p>
         <p>Specifying <code>CURRENT</code> or <code>PREVIOUS</code> returns the current or previous
      passwords respectively. Specifying <code>PENDING</code> returns the newest version of the
      password that will rotate to <code>CURRENT</code>. After the <code>PENDING</code> password
      rotates to <code>CURRENT</code>, the <code>PENDING</code> password is no longer
      available.</p>
         <p>Default: <code>CURRENT</code>
         </p>")
    passwordVersion: option<relationalDatabasePasswordVersion>,
    @ocaml.doc("<p>The name of your database for which to get the master user password.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>The timestamp when the specified version of the master user password was created.</p>"
    )
    createdAt: option<isoDate>,
    @ocaml.doc("<p>The master user password for the <code>password version</code> specified.</p>")
    masterUserPassword: option<sensitiveString>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseMasterUserPasswordCommand"
  let make = (~relationalDatabaseName, ~passwordVersion=?, ()) =>
    new({passwordVersion: passwordVersion, relationalDatabaseName: relationalDatabaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributionLatestCacheReset = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the distribution for which to return the timestamp of the last cache
      reset.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>
         <p>When omitted, the response includes the latest cache reset timestamp of all your
      distributions.</p>")
    distributionName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>The timestamp of the last cache reset (e.g., <code>1479734909.17</code>) in Unix time
      format.</p>")
    createTime: option<isoDate>,
    @ocaml.doc("<p>The status of the last cache reset.</p>") status: option<string_>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetDistributionLatestCacheResetCommand"
  let make = (~distributionName=?, ()) => new({distributionName: distributionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DownloadDefaultKeyPair = {
  type t

  type response = {
    @ocaml.doc("<p>A base64-encoded RSA private key.</p>") privateKeyBase64: option<base64>,
    @ocaml.doc("<p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>")
    publicKeyBase64: option<base64>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: unit => t = "DownloadDefaultKeyPairCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContainerService = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container service to delete.</p>")
    serviceName: containerServiceName,
  }

  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteContainerServiceCommand"
  let make = (~serviceName, ()) => new({serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module DeleteContainerImage = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container image to delete from the container service.</p>

         <p>Use the <code>GetContainerImages</code> action to get the name of the container images
      that are registered to a container service.</p>

         <note>
            <p>Container images sourced from your Lightsail container service, that are registered
        and stored on your service, start with a colon (<code>:</code>). For example,
          <code>:container-service-1.mystaticwebsite.1</code>. Container images sourced from a
        public registry like Docker Hub don't start with a colon. For example,
          <code>nginx:latest</code> or <code>nginx</code>.</p>
         </note>")
    image: string_,
    @ocaml.doc(
      "<p>The name of the container service for which to delete a registered container image.</p>"
    )
    serviceName: containerServiceName,
  }

  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteContainerImageCommand"
  let make = (~image, ~serviceName, ()) => new({image: image, serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterContainerImage = {
  type t
  type request = {
    @ocaml.doc("<p>The digest of the container image to be registered.</p>") digest: string_,
    @ocaml.doc("<p>The label for the container image when it's registered to the container service.</p>

         <p>Use a descriptive label that you can use to track the different versions of your
      registered container images.</p>

         <p>Use the <code>GetContainerImages</code> action to return the container images registered
      to a Lightsail container service. The label is the <code><imagelabel></code> portion
      of the following image name example:</p>
         <ul>
            <li>
               <p>
                  <code>:container-service-1.<imagelabel>.1</code>
               </p>
            </li>
         </ul>

         <p>If the name of your container service is <code>mycontainerservice</code>, and the label
      that you specify is <code>mystaticwebsite</code>, then the name of the registered container
      image will be <code>:mycontainerservice.mystaticwebsite.1</code>.</p>

         <p>The number at the end of these image name examples represents the version of the
      registered container image. If you push and register another container image to the same
      Lightsail container service, with the same label, then the version number for the new
      registered container image will be <code>2</code>. If you push and register another container
      image, the version number will be <code>3</code>, and so on.</p>")
    label: containerLabel,
    @ocaml.doc("<p>The name of the container service for which to register a container image.</p>")
    serviceName: containerServiceName,
  }
  type response = {containerImage: option<containerImage>}
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "RegisterContainerImageCommand"
  let make = (~digest, ~label, ~serviceName, ()) =>
    new({digest: digest, label: label, serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseLogStreams = {
  type t
  type request = {
    @ocaml.doc("<p>The name of your database for which to get log streams.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object describing the result of your get relational database log streams
      request.</p>")
    logStreams: option<stringList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseLogStreamsCommand"
  let make = (~relationalDatabaseName, ()) => new({relationalDatabaseName: relationalDatabaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceState = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance to get state information about.</p>")
    instanceName: resourceName,
  }
  type response = {@ocaml.doc("<p>The state of the instance.</p>") state: option<instanceState>}
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetInstanceStateCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetActiveNames = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetActiveNames</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetActiveNames</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>The list of active names returned by the get active names request.</p>")
    activeNames: option<stringList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetActiveNamesCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContainerServiceRegistryLogin = {
  type t

  type response = {
    @ocaml.doc("<p>An object that describes the log in information for the container service registry of your
      Lightsail account.</p>")
    registryLogin: option<containerServiceRegistryLogin>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: unit => t = "CreateContainerServiceRegistryLoginCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDistributionBundle = {
  type t
  type request = {
    @ocaml.doc("<p>The bundle ID of the new bundle to apply to your distribution.</p>
         <p>Use the <code>GetDistributionBundles</code> action to get a list of distribution bundle
      IDs that you can specify.</p>")
    bundleId: option<string_>,
    @ocaml.doc("<p>The name of the distribution for which to update the bundle.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>")
    distributionName: option<resourceName>,
  }
  type response = {operation: option<operation>}
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "UpdateDistributionBundleCommand"
  let make = (~bundleId=?, ~distributionName=?, ()) =>
    new({bundleId: bundleId, distributionName: distributionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UnpeerVpc = {
  type t

  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: unit => t = "UnpeerVpcCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ResetDistributionCache = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the distribution for which to reset cache.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>")
    distributionName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
    @ocaml.doc("<p>The timestamp of the reset cache request (e.g., <code>1479734909.17</code>) in Unix time
      format.</p>")
    createTime: option<isoDate>,
    @ocaml.doc("<p>The status of the reset cache request.</p>") status: option<string_>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "ResetDistributionCacheCommand"
  let make = (~distributionName=?, ()) => new({distributionName: distributionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PeerVpc = {
  type t

  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: unit => t = "PeerVpcCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module OpenInstancePublicPorts = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance for which to open ports.</p>")
    instanceName: resourceName,
    @ocaml.doc("<p>An object to describe the ports to open for the specified instance.</p>")
    portInfo: portInfo,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "OpenInstancePublicPortsCommand"
  let make = (~instanceName, ~portInfo, ()) => new({instanceName: instanceName, portInfo: portInfo})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ImportKeyPair = {
  type t
  type request = {
    @ocaml.doc("<p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>")
    publicKeyBase64: base64,
    @ocaml.doc("<p>The name of the key pair for which you want to import the public key.</p>")
    keyPairName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "ImportKeyPairCommand"
  let make = (~publicKeyBase64, ~keyPairName, ()) =>
    new({publicKeyBase64: publicKeyBase64, keyPairName: keyPairName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStaticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the static IP in Lightsail.</p>") staticIpName: resourceName,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of key-value pairs containing information about the requested static IP.</p>"
    )
    staticIp: option<staticIp>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetStaticIpCommand"
  let make = (~staticIpName, ()) => new({staticIpName: staticIpName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseParameters = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetRelationalDatabaseParameters</code>
      request. If your results are paginated, the response will return a next page token that you
      can specify as the page token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>The name of your database for which to get parameters.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another
        <code>GetRelationalDatabaseParameters</code> request and specify the next page token using
      the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc(
      "<p>An object describing the result of your get relational database parameters request.</p>"
    )
    parameters: option<relationalDatabaseParameterList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseParametersCommand"
  let make = (~relationalDatabaseName, ~pageToken=?, ()) =>
    new({pageToken: pageToken, relationalDatabaseName: relationalDatabaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>The statistic for the metric.</p>
         <p>The following statistics are available:</p>
         <ul>
            <li>
               <p>
                  <code>Minimum</code> - The lowest value observed during the specified period. Use this
          value to determine low volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Maximum</code> - The highest value observed during the specified period. Use
          this value to determine high volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Sum</code> - All values submitted for the matching metric added together. You
          can use this statistic to determine the total volume of a metric.</p>
            </li>
            <li>
               <p>
                  <code>Average</code> - The value of Sum / SampleCount during the specified period. By
          comparing this statistic with the Minimum and Maximum values, you can determine the full
          scope of a metric and how close the average use is to the Minimum and Maximum values. This
          comparison helps you to know when to increase or decrease your resources.</p>
            </li>
            <li>
               <p>
                  <code>SampleCount</code> - The count, or number, of data points used for the
          statistical calculation.</p>
            </li>
         </ul>")
    statistics: metricStatisticList,
    @ocaml.doc("<p>The unit for the metric data request. Valid units depend on the metric data being
      requested. For the valid units with each available metric, see the <code>metricName</code>
      parameter.</p>")
    @as("unit")
    unit_: metricUnit,
    @ocaml.doc("<p>The end of the time interval from which to get metric data.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>
               <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you
          input <code>1538424000</code> as the end time.</p>
            
            </li>
         </ul>")
    endTime: isoDate,
    @ocaml.doc("<p>The start of the time interval from which to get metric data.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>
               <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you
          input <code>1538424000</code> as the start time.</p>
            
            </li>
         </ul>")
    startTime: isoDate,
    @ocaml.doc("<p>The granularity, in seconds, of the returned data points.</p>
         <p>All relational database metric data is available in 1-minute (60 seconds)
      granularity.</p>")
    period: metricPeriod,
    @ocaml.doc("<p>The metric for which you want to return information.</p>
         <p>Valid relational database metric names are listed below, along with the most useful
        <code>statistics</code> to include in your request, and the published <code>unit</code>
      value. All relational database metric data is available in 1-minute (60 seconds)
      granularity.</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>CPUUtilization</code>
                  </b> - The percentage of CPU
          utilization currently in use on the database.</p>
               <p>
                  <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
            <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Percent</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>DatabaseConnections</code>
                  </b> - The number of
          database connections in use.</p>
               <p>
                  <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
            <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>DiskQueueDepth</code>
                  </b> - The number of
          outstanding IOs (read/write requests) that are waiting to access the disk.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>FreeStorageSpace</code>
                  </b> - The amount of
          available storage space.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>NetworkReceiveThroughput</code>
                  </b> - The incoming
          (Receive) network traffic on the database, including both customer database traffic and
          AWS traffic used for monitoring and replication.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Bytes/Second</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>NetworkTransmitThroughput</code>
                  </b> - The outgoing
          (Transmit) network traffic on the database, including both customer database traffic and
          AWS traffic used for monitoring and replication.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Bytes/Second</code>.</p>
            </li>
         </ul>")
    metricName: relationalDatabaseMetricName,
    @ocaml.doc("<p>The name of your database from which to get metric data.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the metric data returned.</p>")
    metricData: option<metricDatapointList>,
    @ocaml.doc("<p>The name of the metric returned.</p>")
    metricName: option<relationalDatabaseMetricName>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseMetricDataCommand"
  let make = (
    ~statistics,
    ~unit_,
    ~endTime,
    ~startTime,
    ~period,
    ~metricName,
    ~relationalDatabaseName,
    (),
  ) =>
    new({
      statistics: statistics,
      unit_: unit_,
      endTime: endTime,
      startTime: startTime,
      period: period,
      metricName: metricName,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseLogEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next or previous page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetRelationalDatabaseLogEvents</code>
      request. If your results are paginated, the response will return a next forward token and/or
      next backward token that you can specify as the page token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>Parameter to specify if the log should start from head or tail. If <code>true</code> is
      specified, the log event starts from the head of the log. If <code>false</code> is specified,
      the log event starts from the tail of the log.</p>
         <note>
            <p>For PostgreSQL, the default value of <code>false</code> is the only option
        available.</p>
         </note>")
    startFromHead: option<boolean_>,
    @ocaml.doc("<p>The end of the time interval from which to get log events.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>
               <p>For example, if you wish to use an end time of October 1, 2018, at 8 PM UTC, then you
          input <code>1538424000</code> as the end time.</p>
            
            </li>
         </ul>")
    endTime: option<isoDate>,
    @ocaml.doc("<p>The start of the time interval from which to get log events.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>
               <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, then you
          input <code>1538424000</code> as the start time.</p>
            </li>
         </ul>")
    startTime: option<isoDate>,
    @ocaml.doc("<p>The name of the log stream.</p>
         <p>Use the <code>get relational database log streams</code> operation to get a list of
      available log streams.</p>")
    logStreamName: string_,
    @ocaml.doc("<p>The name of your database for which to get log events.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>A token used for advancing to the next page of results from your get relational database
      log events request.</p>")
    nextForwardToken: option<string_>,
    @ocaml.doc("<p>A token used for advancing to the previous page of results from your get relational
      database log events request.</p>")
    nextBackwardToken: option<string_>,
    @ocaml.doc(
      "<p>An object describing the result of your get relational database log events request.</p>"
    )
    resourceLogEvents: option<logEventList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseLogEventsCommand"
  let make = (
    ~logStreamName,
    ~relationalDatabaseName,
    ~pageToken=?,
    ~startFromHead=?,
    ~endTime=?,
    ~startTime=?,
    (),
  ) =>
    new({
      pageToken: pageToken,
      startFromHead: startFromHead,
      endTime: endTime,
      startTime: startTime,
      logStreamName: logStreamName,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseBundles = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetRelationalDatabaseBundles</code> request.
      If your results are paginated, the response will return a next page token that you can specify
      as the page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetRelationalDatabaseBundles</code>
      request and specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc(
      "<p>An object describing the result of your get relational database bundles request.</p>"
    )
    bundles: option<relationalDatabaseBundleList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseBundlesCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseBlueprints = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetRelationalDatabaseBlueprints</code>
      request. If your results are paginated, the response will return a next page token that you
      can specify as the page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another
        <code>GetRelationalDatabaseBlueprints</code> request and specify the next page token using
      the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc(
      "<p>An object describing the result of your get relational database blueprints request.</p>"
    )
    blueprints: option<relationalDatabaseBlueprintList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseBlueprintsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOperation = {
  type t
  type request = {
    @ocaml.doc("<p>A GUID used to identify the operation.</p>") operationId: nonEmptyString,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetOperationCommand"
  let make = (~operationId, ()) => new({operationId: operationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoadBalancerMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>The statistic for the metric.</p>
         <p>The following statistics are available:</p>
         <ul>
            <li>
               <p>
                  <code>Minimum</code> - The lowest value observed during the specified period. Use this
          value to determine low volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Maximum</code> - The highest value observed during the specified period. Use
          this value to determine high volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Sum</code> - All values submitted for the matching metric added together. You
          can use this statistic to determine the total volume of a metric.</p>
            </li>
            <li>
               <p>
                  <code>Average</code> - The value of Sum / SampleCount during the specified period. By
          comparing this statistic with the Minimum and Maximum values, you can determine the full
          scope of a metric and how close the average use is to the Minimum and Maximum values. This
          comparison helps you to know when to increase or decrease your resources.</p>
            </li>
            <li>
               <p>
                  <code>SampleCount</code> - The count, or number, of data points used for the
          statistical calculation.</p>
            </li>
         </ul>")
    statistics: metricStatisticList,
    @ocaml.doc("<p>The unit for the metric data request. Valid units depend on the metric data being
      requested. For the valid units with each available metric, see the <code>metricName</code>
      parameter.</p>")
    @as("unit")
    unit_: metricUnit,
    @ocaml.doc("<p>The end time of the period.</p>") endTime: timestamp_,
    @ocaml.doc("<p>The start time of the period.</p>") startTime: timestamp_,
    @ocaml.doc("<p>The granularity, in seconds, of the returned data points.</p>")
    period: metricPeriod,
    @ocaml.doc("<p>The metric for which you want to return information.</p>
         <p>Valid load balancer metric names are listed below, along with the most useful
        <code>statistics</code> to include in your request, and the published <code>unit</code>
      value.</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>ClientTLSNegotiationErrorCount</code>
                  </b> - The
          number of TLS connections initiated by the client that did not establish a session with
          the load balancer due to a TLS error generated by the load balancer. Possible causes
          include a mismatch of ciphers or protocols.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>HealthyHostCount</code>
                  </b> - The number of target
          instances that are considered healthy.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic are <code>Average</code>,
            <code>Minimum</code>, and <code>Maximum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>HTTPCode_Instance_2XX_Count</code>
                  </b> - The number
          of HTTP 2XX response codes generated by the target instances. This does not include any
          response codes generated by the load balancer.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
            <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
            <code>1</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>HTTPCode_Instance_3XX_Count</code>
                  </b> - The number
          of HTTP 3XX response codes generated by the target instances. This does not include any
          response codes generated by the load balancer.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
            <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
            <code>1</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>HTTPCode_Instance_4XX_Count</code>
                  </b> - The number
          of HTTP 4XX response codes generated by the target instances. This does not include any
          response codes generated by the load balancer.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
            <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
            <code>1</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>HTTPCode_Instance_5XX_Count</code>
                  </b> - The number
          of HTTP 5XX response codes generated by the target instances. This does not include any
          response codes generated by the load balancer.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
            <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
            <code>1</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>HTTPCode_LB_4XX_Count</code>
                  </b> - The number of
          HTTP 4XX client error codes that originated from the load balancer. Client errors are
          generated when requests are malformed or incomplete. These requests were not received by
          the target instance. This count does not include response codes generated by the target
          instances.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
            <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
            <code>1</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>HTTPCode_LB_5XX_Count</code>
                  </b> - The number of
          HTTP 5XX server error codes that originated from the load balancer. This does not include
          any response codes generated by the target instance. This metric is reported if there are
          no healthy instances attached to the load balancer, or if the request rate exceeds the
          capacity of the instances (spillover) or the load balancer.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
            <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
            <code>1</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>InstanceResponseTime</code>
                  </b> - The time elapsed,
          in seconds, after the request leaves the load balancer until a response from the target
          instance is received.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Seconds</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>RejectedConnectionCount</code>
                  </b> - The number of
          connections that were rejected because the load balancer had reached its maximum number of
          connections.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>RequestCount</code>
                  </b> - The number of requests
          processed over IPv4. This count includes only the requests with a response generated by a
          target instance of the load balancer.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>. Note that
            <code>Minimum</code>, <code>Maximum</code>, and <code>Average</code> all return
            <code>1</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>UnhealthyHostCount</code>
                  </b> - The number of
          target instances that are considered unhealthy.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic are <code>Average</code>,
            <code>Minimum</code>, and <code>Maximum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
         </ul>")
    metricName: loadBalancerMetricName,
    @ocaml.doc("<p>The name of the load balancer.</p>") loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the metric data returned.</p>")
    metricData: option<metricDatapointList>,
    @ocaml.doc("<p>The name of the metric returned.</p>")
    metricName: option<loadBalancerMetricName>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetLoadBalancerMetricDataCommand"
  let make = (
    ~statistics,
    ~unit_,
    ~endTime,
    ~startTime,
    ~period,
    ~metricName,
    ~loadBalancerName,
    (),
  ) =>
    new({
      statistics: statistics,
      unit_: unit_,
      endTime: endTime,
      startTime: startTime,
      period: period,
      metricName: metricName,
      loadBalancerName: loadBalancerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>The statistic for the metric.</p>
         <p>The following statistics are available:</p>
         <ul>
            <li>
               <p>
                  <code>Minimum</code> - The lowest value observed during the specified period. Use this
          value to determine low volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Maximum</code> - The highest value observed during the specified period. Use
          this value to determine high volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Sum</code> - All values submitted for the matching metric added together. You
          can use this statistic to determine the total volume of a metric.</p>
            </li>
            <li>
               <p>
                  <code>Average</code> - The value of Sum / SampleCount during the specified period. By
          comparing this statistic with the Minimum and Maximum values, you can determine the full
          scope of a metric and how close the average use is to the Minimum and Maximum values. This
          comparison helps you to know when to increase or decrease your resources.</p>
            </li>
            <li>
               <p>
                  <code>SampleCount</code> - The count, or number, of data points used for the
          statistical calculation.</p>
            </li>
         </ul>")
    statistics: metricStatisticList,
    @ocaml.doc("<p>The unit for the metric data request. Valid units depend on the metric data being
      requested. For the valid units to specify with each available metric, see the
        <code>metricName</code> parameter.</p>")
    @as("unit")
    unit_: metricUnit,
    @ocaml.doc("<p>The end time of the time period.</p>") endTime: timestamp_,
    @ocaml.doc("<p>The start time of the time period.</p>") startTime: timestamp_,
    @ocaml.doc("<p>The granularity, in seconds, of the returned data points.</p>
         <p>The <code>StatusCheckFailed</code>, <code>StatusCheckFailed_Instance</code>, and
        <code>StatusCheckFailed_System</code> instance metric data is available in 1-minute (60
      seconds) granularity. All other instance metric data is available in 5-minute (300 seconds)
      granularity.</p>")
    period: metricPeriod,
    @ocaml.doc("<p>The metric for which you want to return information.</p>
         <p>Valid instance metric names are listed below, along with the most useful
        <code>statistics</code> to include in your request, and the published <code>unit</code>
      value.</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>BurstCapacityPercentage</code>
                  </b> - The percentage
          of CPU performance available for your instance to burst above its baseline. Your instance
          continuously accrues and consumes burst capacity. Burst capacity stops accruing when your
          instance's <code>BurstCapacityPercentage</code> reaches 100%. For more information, see
            <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity\">Viewing instance burst capacity in Amazon Lightsail</a>.</p>
               <p>
                  <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
            <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Percent</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>BurstCapacityTime</code>
                  </b> - The available amount
          of time for your instance to burst at 100% CPU utilization. Your instance continuously
          accrues and consumes burst capacity. Burst capacity time stops accruing when your
          instance's <code>BurstCapacityPercentage</code> metric reaches 100%.</p>
               <p>Burst capacity time is consumed at the full rate only when your instance operates at
          100% CPU utilization. For example, if your instance operates at 50% CPU utilization in the
          burstable zone for a 5-minute period, then it consumes CPU burst capacity minutes at a 50%
          rate in that period. Your instance consumed 2 minutes and 30 seconds of CPU burst capacity
          minutes in the 5-minute period. For more information, see <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-viewing-instance-burst-capacity\">Viewing instance burst capacity in Amazon Lightsail</a>.</p>
               <p>
                  <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
            <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Seconds</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>CPUUtilization</code>
                  </b> - The percentage of
          allocated compute units that are currently in use on the instance. This metric identifies
          the processing power to run the applications on the instance. Tools in your operating
          system can show a lower percentage than Lightsail when the instance is not allocated a
          full processor core.</p>
               <p>
                  <code>Statistics</code>: The most useful statistics are <code>Maximum</code> and
            <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Percent</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>NetworkIn</code>
                  </b> - The number of bytes received
          on all network interfaces by the instance. This metric identifies the volume of incoming
          network traffic to the instance. The number reported is the number of bytes received
          during the period. Because this metric is reported in 5-minute intervals, divide the
          reported number by 300 to find Bytes/second.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>NetworkOut</code>
                  </b> - The number of bytes sent
          out on all network interfaces by the instance. This metric identifies the volume of
          outgoing network traffic from the instance. The number reported is the number of bytes
          sent during the period. Because this metric is reported in 5-minute intervals, divide the
          reported number by 300 to find Bytes/second.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Bytes</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>StatusCheckFailed</code>
                  </b> - Reports whether the
          instance passed or failed both the instance status check and the system status check. This
          metric can be either 0 (passed) or 1 (failed). This metric data is available in 1-minute
          (60 seconds) granularity.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>StatusCheckFailed_Instance</code>
                  </b> - Reports
          whether the instance passed or failed the instance status check. This metric can be either
          0 (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds)
          granularity.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>StatusCheckFailed_System</code>
                  </b> - Reports
          whether the instance passed or failed the system status check. This metric can be either 0
          (passed) or 1 (failed). This metric data is available in 1-minute (60 seconds)
          granularity.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Count</code>.</p>
            </li>
         </ul>")
    metricName: instanceMetricName,
    @ocaml.doc("<p>The name of the instance for which you want to get metrics data.</p>")
    instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the metric data returned.</p>")
    metricData: option<metricDatapointList>,
    @ocaml.doc("<p>The name of the metric returned.</p>") metricName: option<instanceMetricName>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetInstanceMetricDataCommand"
  let make = (~statistics, ~unit_, ~endTime, ~startTime, ~period, ~metricName, ~instanceName, ()) =>
    new({
      statistics: statistics,
      unit_: unit_,
      endTime: endTime,
      startTime: startTime,
      period: period,
      metricName: metricName,
      instanceName: instanceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributionMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>The statistic for the metric.</p>
         <p>The following statistics are available:</p>
         <ul>
            <li>
               <p>
                  <code>Minimum</code> - The lowest value observed during the specified period. Use this
          value to determine low volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Maximum</code> - The highest value observed during the specified period. Use
          this value to determine high volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Sum</code> - All values submitted for the matching metric added together. You
          can use this statistic to determine the total volume of a metric.</p>
            </li>
            <li>
               <p>
                  <code>Average</code> - The value of Sum / SampleCount during the specified period. By
          comparing this statistic with the Minimum and Maximum values, you can determine the full
          scope of a metric and how close the average use is to the Minimum and Maximum values. This
          comparison helps you to know when to increase or decrease your resources.</p>
            </li>
            <li>
               <p>
                  <code>SampleCount</code> - The count, or number, of data points used for the
          statistical calculation.</p>
            </li>
         </ul>")
    statistics: metricStatisticList,
    @ocaml.doc("<p>The unit for the metric data request.</p>
         <p>Valid units depend on the metric data being requested. For the valid units with each
      available metric, see the <code>metricName</code> parameter.</p>")
    @as("unit")
    unit_: metricUnit,
    @ocaml.doc(
      "<p>The granularity, in seconds, for the metric data points that will be returned.</p>"
    )
    period: metricPeriod,
    @ocaml.doc("<p>The end of the time interval for which to get metric data.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>
               <p>For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify
            <code>1538427600</code> as the end time.</p>
            </li>
         </ul>
         <p>You can convert a human-friendly time to Unix time format using a converter like <a href=\"https://www.epochconverter.com/\">Epoch converter</a>.</p>")
    endTime: timestamp_,
    @ocaml.doc("<p>The start of the time interval for which to get metric data.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>
               <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify
            <code>1538424000</code> as the start time.</p>
            </li>
         </ul>
         <p>You can convert a human-friendly time to Unix time format using a converter like <a href=\"https://www.epochconverter.com/\">Epoch converter</a>.</p>")
    startTime: timestamp_,
    @ocaml.doc("<p>The metric for which you want to return information.</p>
         <p>Valid distribution metric names are listed below, along with the most useful
        <code>statistics</code> to include in your request, and the published <code>unit</code>
      value.</p>
         <ul>
            <li>
               <p>
                  <b>
                     <code>Requests</code>
                  </b> - The total number of viewer
          requests received by your Lightsail distribution, for all HTTP methods, and for both
          HTTP and HTTPS requests.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>None</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>BytesDownloaded</code>
                  </b> - The number of bytes
          downloaded by viewers for GET, HEAD, and OPTIONS requests.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>None</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>BytesUploaded </code>
                  </b> - The number of bytes
          uploaded to your origin by your Lightsail distribution, using POST and PUT
          requests.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Sum</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>None</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>TotalErrorRate</code>
                  </b> - The percentage of all
          viewer requests for which the response's HTTP status code was 4xx or 5xx.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Percent</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>4xxErrorRate</code>
                  </b> - The percentage of all
          viewer requests for which the response's HTTP status cod was 4xx. In these cases, the
          client or client viewer may have made an error. For example, a status code of 404 (Not
          Found) means that the client requested an object that could not be found.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Percent</code>.</p>
            </li>
            <li>
               <p>
                  <b>
                     <code>5xxErrorRate</code>
                  </b> - The percentage of all
          viewer requests for which the response's HTTP status code was 5xx. In these cases, the
          origin server did not satisfy the requests. For example, a status code of 503 (Service
          Unavailable) means that the origin server is currently unavailable.</p>
               <p>
                  <code>Statistics</code>: The most useful statistic is <code>Average</code>.</p>
               <p>
                  <code>Unit</code>: The published unit is <code>Percent</code>.</p>
            </li>
         </ul>")
    metricName: distributionMetricName,
    @ocaml.doc("<p>The name of the distribution for which to get metric data.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>")
    distributionName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the metric data returned.</p>")
    metricData: option<metricDatapointList>,
    @ocaml.doc("<p>The name of the metric returned.</p>")
    metricName: option<distributionMetricName>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetDistributionMetricDataCommand"
  let make = (
    ~statistics,
    ~unit_,
    ~period,
    ~endTime,
    ~startTime,
    ~metricName,
    ~distributionName,
    (),
  ) =>
    new({
      statistics: statistics,
      unit_: unit_,
      period: period,
      endTime: endTime,
      startTime: startTime,
      metricName: metricName,
      distributionName: distributionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributionBundles = {
  type t

  type response = {
    @ocaml.doc("<p>An object that describes a distribution bundle.</p>")
    bundles: option<distributionBundleList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: unit => t = "GetDistributionBundlesCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerServicePowers = {
  type t

  type response = {
    @ocaml.doc("<p>An array of objects that describe the powers that can be specified for a container
      service.</p>")
    powers: option<containerServicePowerList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: unit => t = "GetContainerServicePowersCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerServiceMetricData = {
  type t
  type request = {
    @ocaml.doc("<p>The statistic for the metric.</p>

         <p>The following statistics are available:</p>

         <ul>
            <li>
               <p>
                  <code>Minimum</code> - The lowest value observed during the specified period. Use this
          value to determine low volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Maximum</code> - The highest value observed during the specified period. Use
          this value to determine high volumes of activity for your application.</p>
            </li>
            <li>
               <p>
                  <code>Sum</code> - All values submitted for the matching metric added together. You
          can use this statistic to determine the total volume of a metric.</p>
            </li>
            <li>
               <p>
                  <code>Average</code> - The value of <code>Sum</code> / <code>SampleCount</code> during
          the specified period. By comparing this statistic with the <code>Minimum</code> and
            <code>Maximum</code> values, you can determine the full scope of a metric and how close
          the average use is to the <code>Minimum</code> and <code>Maximum</code> values. This
          comparison helps you to know when to increase or decrease your resources.</p>
            </li>
            <li>
               <p>
                  <code>SampleCount</code> - The count, or number, of data points used for the
          statistical calculation.</p>
            </li>
         </ul>")
    statistics: metricStatisticList,
    @ocaml.doc("<p>The granularity, in seconds, of the returned data points.</p>

         <p>All container service metric data is available in 5-minute (300 seconds)
      granularity.</p>")
    period: metricPeriod,
    @ocaml.doc("<p>The end time of the time period.</p>") endTime: isoDate,
    @ocaml.doc("<p>The start time of the time period.</p>") startTime: isoDate,
    @ocaml.doc("<p>The metric for which you want to return information.</p>

         <p>Valid container service metric names are listed below, along with the most useful
      statistics to include in your request, and the published unit value.</p>

         <ul>
            <li>
               <p>
                  <code>CPUUtilization</code> - The average percentage of compute units that are
          currently in use across all nodes of the container service. This metric identifies the
          processing power required to run containers on each node of the container service.</p>
               <p>Statistics: The most useful statistics are <code>Maximum</code> and
            <code>Average</code>.</p>
               <p>Unit: The published unit is <code>Percent</code>.</p>
            </li>
            <li>
               <p>
                  <code>MemoryUtilization</code> - The average percentage of available memory that is
          currently in use across all nodes of the container service. This metric identifies the
          memory required to run containers on each node of the container service.</p>
               <p>Statistics: The most useful statistics are <code>Maximum</code> and
            <code>Average</code>.</p>
               <p>Unit: The published unit is <code>Percent</code>.</p>
            </li>
         </ul>")
    metricName: containerServiceMetricName,
    @ocaml.doc("<p>The name of the container service for which to get metric data.</p>")
    serviceName: containerServiceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the metric data returned.</p>")
    metricData: option<metricDatapointList>,
    @ocaml.doc("<p>The name of the metric returned. </p>")
    metricName: option<containerServiceMetricName>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetContainerServiceMetricDataCommand"
  let make = (~statistics, ~period, ~endTime, ~startTime, ~metricName, ~serviceName, ()) =>
    new({
      statistics: statistics,
      period: period,
      endTime: endTime,
      startTime: startTime,
      metricName: metricName,
      serviceName: serviceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerLog = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>

         <p>To get a page token, perform an initial <code>GetContainerLog</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>The pattern to use to filter the returned log events to a specific term.</p>

         <p>The following are a few examples of filter patterns that you can specify:</p>
         <ul>
            <li>
               <p>To return all log events, specify a filter pattern of <code>\"\"</code>.</p>
            </li>
            <li>
               <p>To exclude log events that contain the <code>ERROR</code> term, and return all other
          log events, specify a filter pattern of <code>\"-ERROR\"</code>.</p>
            </li>
            <li>
               <p>To return log events that contain the <code>ERROR</code> term, specify a filter
          pattern of <code>\"ERROR\"</code>.</p>
            </li>
            <li>
               <p>To return log events that contain both the <code>ERROR</code> and
            <code>Exception</code> terms, specify a filter pattern of <code>\"ERROR
          Exception\"</code>.</p>
            </li>
            <li>
               <p>To return log events that contain the <code>ERROR</code>
                  <i>or</i> the <code>Exception</code> term, specify a filter pattern of
            <code>\"?ERROR ?Exception\"</code>.</p>
            </li>
         </ul>")
    filterPattern: option<string_>,
    @ocaml.doc("<p>The end of the time interval for which to get log data.</p>

         <p>Constraints:</p>

         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>

               <p>For example, if you wish to use an end time of October 1, 2018, at 9 PM UTC, specify
            <code>1538427600</code> as the end time.</p>
            </li>
         </ul>

         <p>You can convert a human-friendly time to Unix time format using a converter like <a href=\"https://www.epochconverter.com/\">Epoch converter</a>.</p>")
    endTime: option<isoDate>,
    @ocaml.doc("<p>The start of the time interval for which to get log data.</p>

         <p>Constraints:</p>

         <ul>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>

               <p>For example, if you wish to use a start time of October 1, 2018, at 8 PM UTC, specify
            <code>1538424000</code> as the start time.</p>
            </li>
         </ul>

         <p>You can convert a human-friendly time to Unix time format using a converter like <a href=\"https://www.epochconverter.com/\">Epoch converter</a>.</p>")
    startTime: option<isoDate>,
    @ocaml.doc("<p>The name of the container that is either running or previously ran on the container
      service for which to return a log.</p>")
    containerName: string_,
    @ocaml.doc("<p>The name of the container service for which to get a container log.</p>")
    serviceName: containerServiceName,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>

         <p>A next page token is not returned if there are no more results to display.</p>

         <p>To get the next page of results, perform another <code>GetContainerLog</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of objects that describe the log events of a container.</p>")
    logEvents: option<containerServiceLogEventList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetContainerLogCommand"
  let make = (
    ~containerName,
    ~serviceName,
    ~pageToken=?,
    ~filterPattern=?,
    ~endTime=?,
    ~startTime=?,
    (),
  ) =>
    new({
      pageToken: pageToken,
      filterPattern: filterPattern,
      endTime: endTime,
      startTime: startTime,
      containerName: containerName,
      serviceName: serviceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerImages = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the container service for which to return registered container images.</p>"
    )
    serviceName: containerServiceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe container images that are registered to the container
      service.</p>")
    containerImages: option<containerImageList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetContainerImagesCommand"
  let make = (~serviceName, ()) => new({serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerAPIMetadata = {
  type t

  type response = {
    @ocaml.doc("<p>Metadata about Lightsail containers, such as the current version of the Lightsail
      Control (lightsailctl) plugin.</p>")
    metadata: option<containerServiceMetadataEntryList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: unit => t = "GetContainerAPIMetadataCommand"
  let make = () => new()
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBlueprints = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetBlueprints</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc(
      "<p>A Boolean value indicating whether to include inactive results in your request.</p>"
    )
    includeInactive: option<boolean_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetBlueprints</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of key-value pairs that contains information about the available
      blueprints.</p>")
    blueprints: option<blueprintList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetBlueprintsCommand"
  let make = (~pageToken=?, ~includeInactive=?, ()) =>
    new({pageToken: pageToken, includeInactive: includeInactive})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachCertificateFromDistribution = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the distribution from which to detach the certificate.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>")
    distributionName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the result of the action, such as the status of the request, the
      timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DetachCertificateFromDistributionCommand"
  let make = (~distributionName, ()) => new({distributionName: distributionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteKeyPair = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the key pair to delete.</p>") keyPairName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteKeyPairCommand"
  let make = (~keyPairName, ()) => new({keyPairName: keyPairName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomainEntry = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of key-value pairs containing information about your domain entries.</p>"
    )
    domainEntry: domainEntry,
    @ocaml.doc("<p>The name of the domain entry to delete.</p>") domainName: domainName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteDomainEntryCommand"
  let make = (~domainEntry, ~domainName, ()) =>
    new({domainEntry: domainEntry, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDomain = {
  type t
  type request = {@ocaml.doc("<p>The specific domain name to delete.</p>") domainName: domainName}
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDistribution = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the distribution to delete.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>")
    distributionName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the result of the action, such as the status of the request, the
      timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteDistributionCommand"
  let make = (~distributionName=?, ()) => new({distributionName: distributionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomainEntry = {
  type t
  type request = {
    @ocaml.doc(
      "<p>An array of key-value pairs containing information about the domain entry request.</p>"
    )
    domainEntry: domainEntry,
    @ocaml.doc("<p>The domain name (e.g., <code>example.com</code>) for which you want to create the domain
      entry.</p>")
    domainName: domainName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateDomainEntryCommand"
  let make = (~domainEntry, ~domainName, ()) =>
    new({domainEntry: domainEntry, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The domain name to manage (e.g., <code>example.com</code>).</p>
         <note>
            <p>You cannot register a new domain name using Lightsail. You must register a domain name
        using Amazon Route 53 or another domain name registrar. If you have already registered your
        domain, you can enter its name in this parameter to manage the DNS records for that domain
        using Lightsail.</p>
         </note>")
    domainName: domainName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateDomainCommand"
  let make = (~domainName, ~tags=?, ()) => new({tags: tags, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CloseInstancePublicPorts = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance for which to close ports.</p>")
    instanceName: resourceName,
    @ocaml.doc("<p>An object to describe the ports to close for the specified instance.</p>")
    portInfo: portInfo,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the result of the action, such as the status of the request, the
      timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CloseInstancePublicPortsCommand"
  let make = (~instanceName, ~portInfo, ()) => new({instanceName: instanceName, portInfo: portInfo})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachCertificateToDistribution = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the certificate to attach to a distribution.</p>
         <p>Only certificates with a status of <code>ISSUED</code> can be attached to a
      distribution.</p>
         <p>Use the <code>GetCertificates</code> action to get a list of certificate names that you
      can specify.</p>
         <note>
            <p>This is the name of the certificate resource type and is used only to reference the
        certificate in other API actions. It can be different than the domain name of the
        certificate. For example, your certificate name might be
          <code>WordPress-Blog-Certificate</code> and the domain name of the certificate might be
          <code>example.com</code>.</p>
         </note>")
    certificateName: resourceName,
    @ocaml.doc("<p>The name of the distribution that the certificate will be attached to.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>")
    distributionName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object that describes the result of the action, such as the status of the request, the
      timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "AttachCertificateToDistributionCommand"
  let make = (~certificateName, ~distributionName, ()) =>
    new({certificateName: certificateName, distributionName: distributionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRelationalDatabaseParameters = {
  type t
  type request = {
    @ocaml.doc("<p>The database parameters to update.</p>")
    parameters: relationalDatabaseParameterList,
    @ocaml.doc("<p>The name of your database for which to update parameters.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "UpdateRelationalDatabaseParametersCommand"
  let make = (~parameters, ~relationalDatabaseName, ()) =>
    new({parameters: parameters, relationalDatabaseName: relationalDatabaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateRelationalDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates the certificate that needs to be associated with the database.</p>")
    caCertificateIdentifier: option<string_>,
    @ocaml.doc("<p>When <code>true</code>, applies changes immediately. When <code>false</code>, applies
      changes during the preferred maintenance window. Some changes may cause an outage.</p>
         <p>Default: <code>false</code>
         </p>")
    applyImmediately: option<boolean_>,
    @ocaml.doc("<p>Specifies the accessibility options for your database. A value of <code>true</code>
      specifies a database that is available to resources outside of your Lightsail account. A
      value of <code>false</code> specifies a database that is available only to your Lightsail
      resources in the same region as your database.</p>")
    publiclyAccessible: option<boolean_>,
    @ocaml.doc("<p>When <code>true</code>, disables automated backup retention for your database.</p>
         <p>Disabling backup retention deletes all automated database backups. Before disabling this,
      you may want to create a snapshot of your database using the <code>create relational database
        snapshot</code> operation.</p>
         <p>Updates are applied during the next maintenance window because this can result in an
      outage.</p>")
    disableBackupRetention: option<boolean_>,
    @ocaml.doc("<p>When <code>true</code>, enables automated backup retention for your database.</p>
         <p>Updates are applied during the next maintenance window because this can result in an
      outage.</p>")
    enableBackupRetention: option<boolean_>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur on your database.</p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      AWS Region, occurring on a random day of the week.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p>
            </li>
            <li>
               <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Example: <code>Tue:17:00-Tue:17:30</code>
               </p>
            </li>
         </ul>")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created for your database if
      automated backups are enabled.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p>
               <p>Example: <code>16:00-16:30</code>
               </p>
            </li>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>When <code>true</code>, the master user password is changed to a new strong password
      generated by Lightsail.</p>
         <p>Use the <code>get relational database master user password</code> operation to get the new
      password.</p>")
    rotateMasterUserPassword: option<boolean_>,
    @ocaml.doc("<p>The password for the master user. The password can include any printable ASCII character
      except \"/\", \"\"\", or \"@\".</p>
         <p>My<b>SQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 128 characters.</p>")
    masterUserPassword: option<sensitiveString>,
    @ocaml.doc("<p>The name of your Lightsail database resource to update.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "UpdateRelationalDatabaseCommand"
  let make = (
    ~relationalDatabaseName,
    ~caCertificateIdentifier=?,
    ~applyImmediately=?,
    ~publiclyAccessible=?,
    ~disableBackupRetention=?,
    ~enableBackupRetention=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~rotateMasterUserPassword=?,
    ~masterUserPassword=?,
    (),
  ) =>
    new({
      caCertificateIdentifier: caCertificateIdentifier,
      applyImmediately: applyImmediately,
      publiclyAccessible: publiclyAccessible,
      disableBackupRetention: disableBackupRetention,
      enableBackupRetention: enableBackupRetention,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      rotateMasterUserPassword: rotateMasterUserPassword,
      masterUserPassword: masterUserPassword,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLoadBalancerAttribute = {
  type t
  type request = {
    @ocaml.doc("<p>The value that you want to specify for the attribute name.</p>")
    attributeValue: stringMax256,
    @ocaml.doc("<p>The name of the attribute you want to update. Valid values are below.</p>")
    attributeName: loadBalancerAttributeName,
    @ocaml.doc("<p>The name of the load balancer that you want to modify (e.g.,
      <code>my-load-balancer</code>.</p>")
    loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "UpdateLoadBalancerAttributeCommand"
  let make = (~attributeValue, ~attributeName, ~loadBalancerName, ()) =>
    new({
      attributeValue: attributeValue,
      attributeName: attributeName,
      loadBalancerName: loadBalancerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDomainEntry = {
  type t
  type request = {
    @ocaml.doc("<p>An array of key-value pairs containing information about the domain entry.</p>")
    domainEntry: domainEntry,
    @ocaml.doc("<p>The name of the domain recordset to update.</p>") domainName: domainName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "UpdateDomainEntryCommand"
  let make = (~domainEntry, ~domainName, ()) =>
    new({domainEntry: domainEntry, domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDistribution = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to enable the distribution.</p>") isEnabled: option<boolean_>,
    @ocaml.doc(
      "<p>An array of objects that describe the per-path cache behavior for the distribution.</p>"
    )
    cacheBehaviors: option<cacheBehaviorList>,
    @ocaml.doc("<p>An object that describes the cache behavior settings for the distribution.</p>
         <note>
            <p>The <code>cacheBehaviorSettings</code> specified in your
          <code>UpdateDistributionRequest</code> will replace your distribution's existing
        settings.</p>
         </note>")
    cacheBehaviorSettings: option<cacheSettings>,
    @ocaml.doc("<p>An object that describes the default cache behavior for the distribution.</p>")
    defaultCacheBehavior: option<cacheBehavior>,
    @ocaml.doc("<p>An object that describes the origin resource for the distribution, such as a Lightsail
      instance or load balancer.</p>
         <p>The distribution pulls, caches, and serves content from the origin.</p>")
    origin: option<inputOrigin>,
    @ocaml.doc("<p>The name of the distribution to update.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>")
    distributionName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "UpdateDistributionCommand"
  let make = (
    ~distributionName,
    ~isEnabled=?,
    ~cacheBehaviors=?,
    ~cacheBehaviorSettings=?,
    ~defaultCacheBehavior=?,
    ~origin=?,
    (),
  ) =>
    new({
      isEnabled: isEnabled,
      cacheBehaviors: cacheBehaviors,
      cacheBehaviorSettings: cacheBehaviorSettings,
      defaultCacheBehavior: defaultCacheBehavior,
      origin: origin,
      distributionName: distributionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys to delete from the specified resource.</p>") tagKeys: tagKeyList,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource from which you want to remove a tag.</p>"
    )
    resourceArn: option<resourceArn>,
    @ocaml.doc("<p>The name of the resource from which you are removing a tag.</p>")
    resourceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceName, ~resourceArn=?, ()) =>
    new({tagKeys: tagKeys, resourceArn: resourceArn, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TestAlarm = {
  type t
  type request = {
    @ocaml.doc("<p>The alarm state to test.</p>
         <p>An alarm has the following possible states that can be tested:</p>
         <ul>
            <li>
               <p>
                  <code>ALARM</code> - The metric is outside of the defined threshold.</p>
            </li>
            <li>
               <p>
                  <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
          available, or not enough data is available for the metric to determine the alarm
          state.</p>
            </li>
            <li>
               <p>
                  <code>OK</code> - The metric is within the defined threshold.</p>
            </li>
         </ul>")
    state: alarmState,
    @ocaml.doc("<p>The name of the alarm to test.</p>") alarmName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "TestAlarmCommand"
  let make = (~state, ~alarmName, ()) => new({state: state, alarmName: alarmName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag key and optional value.</p>") tags: tagList_,
    @ocaml.doc(
      "<p>The Amazon Resource Name (ARN) of the resource to which you want to add a tag.</p>"
    )
    resourceArn: option<resourceArn>,
    @ocaml.doc("<p>The name of the resource to which you are adding tags.</p>")
    resourceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceName, ~resourceArn=?, ()) =>
    new({tags: tags, resourceArn: resourceArn, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopRelationalDatabase = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of your new database snapshot to be created before stopping your database.</p>"
    )
    relationalDatabaseSnapshotName: option<resourceName>,
    @ocaml.doc("<p>The name of your database to stop.</p>") relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "StopRelationalDatabaseCommand"
  let make = (~relationalDatabaseName, ~relationalDatabaseSnapshotName=?, ()) =>
    new({
      relationalDatabaseSnapshotName: relationalDatabaseSnapshotName,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopInstance = {
  type t
  type request = {
    @ocaml.doc("<p>When set to <code>True</code>, forces a Lightsail instance that is stuck in a
        <code>stopping</code> state to stop.</p>
         <important>
            <p>Only use the <code>force</code> parameter if your instance is stuck in the
          <code>stopping</code> state. In any other state, your instance should stop normally
        without adding this parameter to your API request.</p>
         </important>")
    force: option<boolean_>,
    @ocaml.doc("<p>The name of the instance (a virtual private server) to stop.</p>")
    instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "StopInstanceCommand"
  let make = (~instanceName, ~force=?, ()) => new({force: force, instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartRelationalDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of your database to start.</p>") relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "StartRelationalDatabaseCommand"
  let make = (~relationalDatabaseName, ()) => new({relationalDatabaseName: relationalDatabaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance (a virtual private server) to start.</p>")
    instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "StartInstanceCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SetIpAddressType = {
  type t
  type request = {
    @ocaml.doc("<p>The IP address type to set for the specified resource.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>")
    ipAddressType: ipAddressType,
    @ocaml.doc("<p>The name of the resource for which to set the IP address type.</p>")
    resourceName: resourceName,
    @ocaml.doc("<p>The resource type.</p>
         <p>The possible values are <code>Distribution</code>, <code>Instance</code>, and
        <code>LoadBalancer</code>.</p>
         <note>
            <p>Distribution-related APIs are available only in the N. Virginia (<code>us-east-1</code>)
        AWS Region. Set your AWS Region configuration to <code>us-east-1</code> to create, view,
        or edit distributions.</p>
         </note>")
    resourceType: resourceType,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "SetIpAddressTypeCommand"
  let make = (~ipAddressType, ~resourceName, ~resourceType, ()) =>
    new({ipAddressType: ipAddressType, resourceName: resourceName, resourceType: resourceType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module SendContactMethodVerification = {
  type t
  type request = {
    @ocaml.doc("<p>The protocol to verify, such as <code>Email</code> or <code>SMS</code> (text
      messaging).</p>")
    protocol: contactMethodVerificationProtocol,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "SendContactMethodVerificationCommand"
  let make = (~protocol, ()) => new({protocol: protocol})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ReleaseStaticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the static IP to delete.</p>") staticIpName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "ReleaseStaticIpCommand"
  let make = (~staticIpName, ()) => new({staticIpName: staticIpName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootRelationalDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of your database to reboot.</p>") relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "RebootRelationalDatabaseCommand"
  let make = (~relationalDatabaseName, ()) => new({relationalDatabaseName: relationalDatabaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RebootInstance = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance to reboot.</p>") instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "RebootInstanceCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutInstancePublicPorts = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance for which to open ports.</p>")
    instanceName: resourceName,
    @ocaml.doc(
      "<p>An array of objects to describe the ports to open for the specified instance.</p>"
    )
    portInfos: portInfoList,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "PutInstancePublicPortsCommand"
  let make = (~instanceName, ~portInfos, ()) =>
    new({instanceName: instanceName, portInfos: portInfos})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module PutAlarm = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether the alarm is enabled.</p>
         <p>Notifications are enabled by default if you don't specify this parameter.</p>")
    notificationEnabled: option<boolean_>,
    @ocaml.doc("<p>The alarm states that trigger a notification.</p>
         <p>An alarm has the following possible states:</p>
         <ul>
            <li>
               <p>
                  <code>ALARM</code> - The metric is outside of the defined threshold.</p>
            </li>
            <li>
               <p>
                  <code>INSUFFICIENT_DATA</code> - The alarm has just started, the metric is not
          available, or not enough data is available for the metric to determine the alarm
          state.</p>
            </li>
            <li>
               <p>
                  <code>OK</code> - The metric is within the defined threshold.</p>
            </li>
         </ul>
         <p>When you specify a notification trigger, the <code>ALARM</code> state must be specified.
      The <code>INSUFFICIENT_DATA</code> and <code>OK</code> states can be specified in addition to
      the <code>ALARM</code> state.</p>
         <ul>
            <li>
               <p>If you specify <code>OK</code> as an alarm trigger, a notification is sent when the
          alarm switches from an <code>ALARM</code> or <code>INSUFFICIENT_DATA</code> alarm state to
          an <code>OK</code> state. This can be thought of as an <i>all clear</i>
          alarm notification.</p>
            </li>
            <li>
               <p>If you specify <code>INSUFFICIENT_DATA</code> as the alarm trigger, a notification is
          sent when the alarm switches from an <code>OK</code> or <code>ALARM</code> alarm state to
          an <code>INSUFFICIENT_DATA</code> state.</p>
            </li>
         </ul>
         <p>The notification trigger defaults to <code>ALARM</code> if you don't specify this
      parameter.</p>")
    notificationTriggers: option<notificationTriggerList>,
    @ocaml.doc("<p>The contact protocols to use for the alarm, such as <code>Email</code>, <code>SMS</code>
      (text messaging), or both.</p>
         <p>A notification is sent via the specified contact protocol if notifications are enabled for
      the alarm, and when the alarm is triggered.</p>
         <p>A notification is not sent if a contact protocol is not specified, if the specified
      contact protocol is not configured in the AWS Region, or if notifications are not enabled
      for the alarm using the <code>notificationEnabled</code> paramater.</p>
         <p>Use the <code>CreateContactMethod</code> action to configure a contact protocol in an
      AWS Region.</p>")
    contactProtocols: option<contactProtocolsList>,
    @ocaml.doc("<p>Sets how this alarm will handle missing data points.</p>
         <p>An alarm can treat missing data in the following ways:</p>
         <ul>
            <li>
               <p>
                  <code>breaching</code> - Assume the missing data is not within the threshold. Missing
          data counts towards the number of times the metric is not within the threshold.</p>
            </li>
            <li>
               <p>
                  <code>notBreaching</code> - Assume the missing data is within the threshold. Missing
          data does not count towards the number of times the metric is not within the
          threshold.</p>
            </li>
            <li>
               <p>
                  <code>ignore</code> - Ignore the missing data. Maintains the current alarm
          state.</p>
            </li>
            <li>
               <p>
                  <code>missing</code> - Missing data is treated as missing.</p>
            </li>
         </ul>
         <p>If <code>treatMissingData</code> is not specified, the default behavior of
        <code>missing</code> is used.</p>")
    treatMissingData: option<treatMissingData>,
    @ocaml.doc("<p>The number of data points that must be not within the specified threshold to trigger the
      alarm. If you are setting an \"M out of N\" alarm, this value (<code>datapointsToAlarm</code>)
      is the M.</p>")
    datapointsToAlarm: option<integer_>,
    @ocaml.doc("<p>The number of most recent periods over which data is compared to the specified threshold.
      If you are setting an \"M out of N\" alarm, this value (<code>evaluationPeriods</code>) is the
      N.</p>
         <p>If you are setting an alarm that requires that a number of consecutive data points be
      breaching to trigger the alarm, this value specifies the rolling period of time in which data
      points are evaluated.</p>
         <p>Each evaluation period is five minutes long. For example, specify an evaluation period of
      24 to evaluate a metric over a rolling period of two hours.</p>
         <p>You can specify a minimum valuation period of 1 (5 minutes), and a maximum evaluation
      period of 288 (24 hours).</p>")
    evaluationPeriods: integer_,
    @ocaml.doc("<p>The value against which the specified statistic is compared.</p>")
    threshold: double,
    @ocaml.doc("<p>The arithmetic operation to use when comparing the specified statistic to the threshold.
      The specified statistic value is used as the first operand.</p>")
    comparisonOperator: comparisonOperator,
    @ocaml.doc("<p>The name of the Lightsail resource that will be monitored.</p>
         <p>Instances, load balancers, and relational databases are the only Lightsail resources
      that can currently be monitored by alarms.</p>")
    monitoredResourceName: resourceName,
    @ocaml.doc("<p>The name of the metric to associate with the alarm.</p>
         <p>You can configure up to two alarms per metric.</p>
         <p>The following metrics are available for each resource type:</p>
         <ul>
            <li>
               <p>
                  <b>Instances</b>: <code>BurstCapacityPercentage</code>,
            <code>BurstCapacityTime</code>, <code>CPUUtilization</code>, <code>NetworkIn</code>,
            <code>NetworkOut</code>, <code>StatusCheckFailed</code>,
            <code>StatusCheckFailed_Instance</code>, and
          <code>StatusCheckFailed_System</code>.</p>
            </li>
            <li>
               <p>
                  <b>Load balancers</b>:
            <code>ClientTLSNegotiationErrorCount</code>, <code>HealthyHostCount</code>,
            <code>UnhealthyHostCount</code>, <code>HTTPCode_LB_4XX_Count</code>,
            <code>HTTPCode_LB_5XX_Count</code>, <code>HTTPCode_Instance_2XX_Count</code>,
            <code>HTTPCode_Instance_3XX_Count</code>, <code>HTTPCode_Instance_4XX_Count</code>,
            <code>HTTPCode_Instance_5XX_Count</code>, <code>InstanceResponseTime</code>,
            <code>RejectedConnectionCount</code>, and <code>RequestCount</code>.</p>
            </li>
            <li>
               <p>
                  <b>Relational databases</b>: <code>CPUUtilization</code>,
            <code>DatabaseConnections</code>, <code>DiskQueueDepth</code>,
            <code>FreeStorageSpace</code>, <code>NetworkReceiveThroughput</code>, and
            <code>NetworkTransmitThroughput</code>.</p>
            </li>
         </ul>
         <p>For more information about these metrics, see <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-resource-health-metrics#available-metrics\">Metrics available in Lightsail</a>.</p>")
    metricName: metricName,
    @ocaml.doc("<p>The name for the alarm. Specify the name of an existing alarm to update, and overwrite the
      previous configuration of the alarm.</p>")
    alarmName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "PutAlarmCommand"
  let make = (
    ~evaluationPeriods,
    ~threshold,
    ~comparisonOperator,
    ~monitoredResourceName,
    ~metricName,
    ~alarmName,
    ~notificationEnabled=?,
    ~notificationTriggers=?,
    ~contactProtocols=?,
    ~treatMissingData=?,
    ~datapointsToAlarm=?,
    (),
  ) =>
    new({
      notificationEnabled: notificationEnabled,
      notificationTriggers: notificationTriggers,
      contactProtocols: contactProtocols,
      treatMissingData: treatMissingData,
      datapointsToAlarm: datapointsToAlarm,
      evaluationPeriods: evaluationPeriods,
      threshold: threshold,
      comparisonOperator: comparisonOperator,
      monitoredResourceName: monitoredResourceName,
      metricName: metricName,
      alarmName: alarmName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetStaticIps = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetStaticIps</code> request. If your results
      are paginated, the response will return a next page token that you can specify as the page
      token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetStaticIps</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of key-value pairs containing information about your get static IPs
      request.</p>")
    staticIps: option<staticIpList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetStaticIpsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the database snapshot for which to get information.</p>")
    relationalDatabaseSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object describing the specified database snapshot.</p>")
    relationalDatabaseSnapshot: option<relationalDatabaseSnapshot>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseSnapshotCommand"
  let make = (~relationalDatabaseSnapshotName, ()) =>
    new({relationalDatabaseSnapshotName: relationalDatabaseSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseEvents = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetRelationalDatabaseEvents</code> request.
      If your results are paginated, the response will return a next page token that you can specify
      as the page token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>The number of minutes in the past from which to retrieve events. For example, to get all
      events from the past 2 hours, enter 120.</p>
         <p>Default: <code>60</code>
         </p>
         <p>The minimum is 1 and the maximum is 14 days (20160 minutes).</p>")
    durationInMinutes: option<integer_>,
    @ocaml.doc("<p>The name of the database from which to get events.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetRelationalDatabaseEvents</code>
      request and specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc(
      "<p>An object describing the result of your get relational database events request.</p>"
    )
    relationalDatabaseEvents: option<relationalDatabaseEventList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseEventsCommand"
  let make = (~relationalDatabaseName, ~pageToken=?, ~durationInMinutes=?, ()) =>
    new({
      pageToken: pageToken,
      durationInMinutes: durationInMinutes,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the database that you are looking up.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object describing the specified database.</p>")
    relationalDatabase: option<relationalDatabase>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseCommand"
  let make = (~relationalDatabaseName, ()) => new({relationalDatabaseName: relationalDatabaseName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOperationsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetOperationsForResource</code> request. If
      your results are paginated, the response will return a next page token that you can specify as
      the page token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>The name of the resource for which you are requesting information.</p>")
    resourceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetOperationsForResource</code>
      request and specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>(Deprecated) Returns the number of pages of results that remain.</p>
         <note>
            <p>In releases prior to June 12, 2017, this parameter returned <code>null</code> by the
        API. It is now deprecated, and the API returns the <code>next page token</code> parameter
        instead.</p>
         </note>")
    nextPageCount: option<string_>,
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetOperationsForResourceCommand"
  let make = (~resourceName, ~pageToken=?, ()) =>
    new({pageToken: pageToken, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetOperations = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetOperations</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetOperations</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetOperationsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoadBalancer = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the load balancer.</p>") loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object containing information about your load balancer.</p>")
    loadBalancer: option<loadBalancer>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetLoadBalancerCommand"
  let make = (~loadBalancerName, ()) => new({loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyPair = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the key pair for which you are requesting information.</p>")
    keyPairName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of key-value pairs containing information about the key pair.</p>")
    keyPair: option<keyPair>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetKeyPairCommand"
  let make = (~keyPairName, ()) => new({keyPairName: keyPairName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstancePortStates = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance for which to return firewall port states.</p>")
    instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the firewall port states for the specified
      instance.</p>")
    portStates: option<instancePortStateList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetInstancePortStatesCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceAccessDetails = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The protocol to use to connect to your instance. Defaults to <code>ssh</code>.</p>"
    )
    protocol: option<instanceAccessProtocol>,
    @ocaml.doc("<p>The name of the instance to access.</p>") instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of key-value pairs containing information about a get instance access
      request.</p>")
    accessDetails: option<instanceAccessDetails>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetInstanceAccessDetailsCommand"
  let make = (~instanceName, ~protocol=?, ()) =>
    new({protocol: protocol, instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDiskSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the disk snapshot (e.g., <code>my-disk-snapshot</code>).</p>")
    diskSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object containing information about the disk snapshot.</p>")
    diskSnapshot: option<diskSnapshot>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetDiskSnapshotCommand"
  let make = (~diskSnapshotName, ()) => new({diskSnapshotName: diskSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDisk = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the disk (e.g., <code>my-disk</code>).</p>") diskName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An object containing information about the disk.</p>") disk: option<disk>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetDiskCommand"
  let make = (~diskName, ()) => new({diskName: diskName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContactMethods = {
  type t
  type request = {
    @ocaml.doc("<p>The protocols used to send notifications, such as <code>Email</code>, or <code>SMS</code>
      (text messaging).</p>
         <p>Specify a protocol in your request to return information about a specific contact method
      protocol.</p>")
    protocols: option<contactProtocolsList>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the contact methods.</p>")
    contactMethods: option<contactMethodsList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetContactMethodsCommand"
  let make = (~protocols=?, ()) => new({protocols: protocols})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetBundles = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetBundles</code> request. If your results
      are paginated, the response will return a next page token that you can specify as the page
      token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>A Boolean value that indicates whether to include inactive bundle results in your
      request.</p>")
    includeInactive: option<boolean_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetBundles</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc(
      "<p>An array of key-value pairs that contains information about the available bundles.</p>"
    )
    bundles: option<bundleList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetBundlesCommand"
  let make = (~pageToken=?, ~includeInactive=?, ()) =>
    new({pageToken: pageToken, includeInactive: includeInactive})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAlarms = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the Lightsail resource being monitored by the alarm.</p>
         <p>Specify a monitored resource name to return information about all alarms for a specific
      resource.</p>")
    monitoredResourceName: option<resourceName>,
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetAlarms</code> request. If your results
      are paginated, the response will return a next page token that you can specify as the page
      token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>The name of the alarm.</p>
         <p>Specify an alarm name to return information about a specific alarm.</p>")
    alarmName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetAlarms</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of objects that describe the alarms.</p>") alarms: option<alarmsList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetAlarmsCommand"
  let make = (~monitoredResourceName=?, ~pageToken=?, ~alarmName=?, ()) =>
    new({monitoredResourceName: monitoredResourceName, pageToken: pageToken, alarmName: alarmName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ExportSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the instance or disk snapshot to be exported to Amazon EC2.</p>")
    sourceSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "ExportSnapshotCommand"
  let make = (~sourceSnapshotName, ()) => new({sourceSnapshotName: sourceSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableAddOn = {
  type t
  type request = {
    @ocaml.doc("<p>An array of strings representing the add-on to enable or modify.</p>")
    addOnRequest: addOnRequest,
    @ocaml.doc("<p>The name of the source resource for which to enable or modify the add-on.</p>")
    resourceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "EnableAddOnCommand"
  let make = (~addOnRequest, ~resourceName, ()) =>
    new({addOnRequest: addOnRequest, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableAddOn = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the source resource for which to disable the add-on.</p>")
    resourceName: resourceName,
    @ocaml.doc("<p>The add-on type to disable.</p>") addOnType: addOnType,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DisableAddOnCommand"
  let make = (~resourceName, ~addOnType, ()) =>
    new({resourceName: resourceName, addOnType: addOnType})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachStaticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the static IP to detach from the instance.</p>")
    staticIpName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DetachStaticIpCommand"
  let make = (~staticIpName, ()) => new({staticIpName: staticIpName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachInstancesFromLoadBalancer = {
  type t
  type request = {
    @ocaml.doc("<p>An array of strings containing the names of the instances you want to detach from the load
      balancer.</p>")
    instanceNames: resourceNameList,
    @ocaml.doc("<p>The name of the Lightsail load balancer.</p>") loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DetachInstancesFromLoadBalancerCommand"
  let make = (~instanceNames, ~loadBalancerName, ()) =>
    new({instanceNames: instanceNames, loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DetachDisk = {
  type t
  type request = {
    @ocaml.doc("<p>The unique name of the disk you want to detach from your instance (e.g.,
        <code>my-disk</code>).</p>")
    diskName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DetachDiskCommand"
  let make = (~diskName, ()) => new({diskName: diskName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRelationalDatabaseSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the database snapshot that you are deleting.</p>")
    relationalDatabaseSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteRelationalDatabaseSnapshotCommand"
  let make = (~relationalDatabaseSnapshotName, ()) =>
    new({relationalDatabaseSnapshotName: relationalDatabaseSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteRelationalDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the database snapshot created if <code>skip final snapshot</code> is
        <code>false</code>, which is the default value for that parameter.</p>
         <note>
            <p>Specifying this parameter and also specifying the <code>skip final snapshot</code>
        parameter to <code>true</code> results in an error.</p>
         </note>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
            </li>
            <li>
               <p>The first and last character must be a letter or number.</p>
            </li>
         </ul>")
    finalRelationalDatabaseSnapshotName: option<resourceName>,
    @ocaml.doc("<p>Determines whether a final database snapshot is created before your database is deleted.
      If <code>true</code> is specified, no database snapshot is created. If <code>false</code> is
      specified, a database snapshot is created before your database is deleted.</p>
         <p>You must specify the <code>final relational database snapshot name</code> parameter if the
        <code>skip final snapshot</code> parameter is <code>false</code>.</p>
         <p>Default: <code>false</code>
         </p>")
    skipFinalSnapshot: option<boolean_>,
    @ocaml.doc("<p>The name of the database that you are deleting.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteRelationalDatabaseCommand"
  let make = (
    ~relationalDatabaseName,
    ~finalRelationalDatabaseSnapshotName=?,
    ~skipFinalSnapshot=?,
    (),
  ) =>
    new({
      finalRelationalDatabaseSnapshotName: finalRelationalDatabaseSnapshotName,
      skipFinalSnapshot: skipFinalSnapshot,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLoadBalancerTlsCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>When <code>true</code>, forces the deletion of an SSL/TLS certificate.</p>
         <p>There can be two certificates associated with a Lightsail load balancer: the primary and
      the backup. The <code>force</code> parameter is required when the primary SSL/TLS certificate
      is in use by an instance attached to the load balancer.</p>")
    force: option<boolean_>,
    @ocaml.doc("<p>The SSL/TLS certificate name.</p>") certificateName: resourceName,
    @ocaml.doc("<p>The load balancer name.</p>") loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteLoadBalancerTlsCertificateCommand"
  let make = (~certificateName, ~loadBalancerName, ~force=?, ()) =>
    new({force: force, certificateName: certificateName, loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLoadBalancer = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the load balancer you want to delete.</p>")
    loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteLoadBalancerCommand"
  let make = (~loadBalancerName, ()) => new({loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteKnownHostKeys = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The name of the instance for which you want to reset the host key or certificate.</p>"
    )
    instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteKnownHostKeysCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInstanceSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the snapshot to delete.</p>") instanceSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteInstanceSnapshotCommand"
  let make = (~instanceSnapshotName, ()) => new({instanceSnapshotName: instanceSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInstance = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A Boolean value to indicate whether to delete the enabled add-ons for the disk.</p>"
    )
    forceDeleteAddOns: option<boolean_>,
    @ocaml.doc("<p>The name of the instance to delete.</p>") instanceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteInstanceCommand"
  let make = (~instanceName, ~forceDeleteAddOns=?, ()) =>
    new({forceDeleteAddOns: forceDeleteAddOns, instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDiskSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the disk snapshot you want to delete (e.g.,
      <code>my-disk-snapshot</code>).</p>")
    diskSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteDiskSnapshotCommand"
  let make = (~diskSnapshotName, ()) => new({diskSnapshotName: diskSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDisk = {
  type t
  type request = {
    @ocaml.doc(
      "<p>A Boolean value to indicate whether to delete the enabled add-ons for the disk.</p>"
    )
    forceDeleteAddOns: option<boolean_>,
    @ocaml.doc(
      "<p>The unique name of the disk you want to delete (e.g., <code>my-disk</code>).</p>"
    )
    diskName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteDiskCommand"
  let make = (~diskName, ~forceDeleteAddOns=?, ()) =>
    new({forceDeleteAddOns: forceDeleteAddOns, diskName: diskName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteContactMethod = {
  type t
  type request = {
    @ocaml.doc("<p>The protocol that will be deleted, such as <code>Email</code> or <code>SMS</code> (text
      messaging).</p>
         <note>
            <p>To delete an <code>Email</code> and an <code>SMS</code> contact method if you added
        both, you must run separate <code>DeleteContactMethod</code> actions to delete each
        protocol.</p>
         </note>")
    protocol: contactProtocol,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "DeleteContactMethodCommand"
  let make = (~protocol, ()) => new({protocol: protocol})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the certificate to delete.</p>
         <p>Use the <code>GetCertificates</code> action to get a list of certificate names that you
      can specify.</p>")
    certificateName: certificateName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteCertificateCommand"
  let make = (~certificateName, ()) => new({certificateName: certificateName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAutoSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The date of the automatic snapshot to delete in <code>YYYY-MM-DD</code> format. Use the
        <code>get auto snapshots</code> operation to get the available automatic snapshots for a
      resource.</p>")
    date: autoSnapshotDate,
    @ocaml.doc("<p>The name of the source instance or disk from which to delete the automatic
      snapshot.</p>")
    resourceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteAutoSnapshotCommand"
  let make = (~date, ~resourceName, ()) => new({date: date, resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteAlarm = {
  type t
  type request = {@ocaml.doc("<p>The name of the alarm to delete.</p>") alarmName: resourceName}
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "DeleteAlarmCommand"
  let make = (~alarmName, ()) => new({alarmName: alarmName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRelationalDatabaseSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name for your new database snapshot.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
            </li>
            <li>
               <p>The first and last character must be a letter or number.</p>
            </li>
         </ul>")
    relationalDatabaseSnapshotName: resourceName,
    @ocaml.doc("<p>The name of the database on which to base your new snapshot.</p>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateRelationalDatabaseSnapshotCommand"
  let make = (~relationalDatabaseSnapshotName, ~relationalDatabaseName, ~tags=?, ()) =>
    new({
      tags: tags,
      relationalDatabaseSnapshotName: relationalDatabaseSnapshotName,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRelationalDatabaseFromSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies whether your database is restored from the latest backup time. A value of
        <code>true</code> restores from the latest backup time. </p>
         <p>Default: <code>false</code>
         </p>
         <p>Constraints: Cannot be specified if the <code>restore time</code> parameter is
      provided.</p>")
    useLatestRestorableTime: option<boolean_>,
    @ocaml.doc("<p>The date and time to restore your database from.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be before the latest restorable time for the database.</p>
            </li>
            <li>
               <p>Cannot be specified if the <code>use latest restorable time</code> parameter is
            <code>true</code>.</p>
            </li>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Specified in the Unix time format.</p>
               <p>For example, if you wish to use a restore time of October 1, 2018, at 8 PM UTC, then
          you input <code>1538424000</code> as the restore time.</p>
            </li>
         </ul>")
    restoreTime: option<isoDate>,
    @ocaml.doc("<p>The name of the source database.</p>")
    sourceRelationalDatabaseName: option<resourceName>,
    @ocaml.doc("<p>The bundle ID for your new database. A bundle describes the performance specifications for
      your database.</p>
         <p>You can get a list of database bundle IDs by using the <code>get relational database
        bundles</code> operation.</p>
         <p>When creating a new database from a snapshot, you cannot choose a bundle that is smaller
      than the bundle of the source database.</p>")
    relationalDatabaseBundleId: option<string_>,
    @ocaml.doc("<p>The name of the database snapshot from which to create your new database.</p>")
    relationalDatabaseSnapshotName: option<resourceName>,
    @ocaml.doc("<p>Specifies the accessibility options for your new database. A value of <code>true</code>
      specifies a database that is available to resources outside of your Lightsail account. A
      value of <code>false</code> specifies a database that is available only to your Lightsail
      resources in the same region as your database.</p>")
    publiclyAccessible: option<boolean_>,
    @ocaml.doc("<p>The Availability Zone in which to create your new database. Use the
        <code>us-east-2a</code> case-sensitive format.</p>
         <p>You can get a list of Availability Zones by using the <code>get regions</code> operation.
      Be sure to add the <code>include relational database Availability Zones</code> parameter to
      your request.</p>")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The name to use for your new Lightsail database resource.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
            </li>
            <li>
               <p>The first and last character must be a letter or number.</p>
            </li>
         </ul>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateRelationalDatabaseFromSnapshotCommand"
  let make = (
    ~relationalDatabaseName,
    ~tags=?,
    ~useLatestRestorableTime=?,
    ~restoreTime=?,
    ~sourceRelationalDatabaseName=?,
    ~relationalDatabaseBundleId=?,
    ~relationalDatabaseSnapshotName=?,
    ~publiclyAccessible=?,
    ~availabilityZone=?,
    (),
  ) =>
    new({
      tags: tags,
      useLatestRestorableTime: useLatestRestorableTime,
      restoreTime: restoreTime,
      sourceRelationalDatabaseName: sourceRelationalDatabaseName,
      relationalDatabaseBundleId: relationalDatabaseBundleId,
      relationalDatabaseSnapshotName: relationalDatabaseSnapshotName,
      publiclyAccessible: publiclyAccessible,
      availabilityZone: availabilityZone,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateRelationalDatabase = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>Specifies the accessibility options for your new database. A value of <code>true</code>
      specifies a database that is available to resources outside of your Lightsail account. A
      value of <code>false</code> specifies a database that is available only to your Lightsail
      resources in the same region as your database.</p>")
    publiclyAccessible: option<boolean_>,
    @ocaml.doc("<p>The weekly time range during which system maintenance can occur on your new
      database.</p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      AWS Region, occurring on a random day of the week.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be in the <code>ddd:hh24:mi-ddd:hh24:mi</code> format.</p>
            </li>
            <li>
               <p>Valid days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Example: <code>Tue:17:00-Tue:17:30</code>
               </p>
            </li>
         </ul>")
    preferredMaintenanceWindow: option<string_>,
    @ocaml.doc("<p>The daily time range during which automated backups are created for your new database if
      automated backups are enabled.</p>
         <p>The default is a 30-minute window selected at random from an 8-hour block of time for each
      AWS Region. For more information about the preferred backup window time blocks for each
      region, see the <a href=\"https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow\">Working With Backups</a> guide in the Amazon Relational Database Service (Amazon RDS) documentation.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be in the <code>hh24:mi-hh24:mi</code> format.</p>
               <p>Example: <code>16:00-16:30</code>
               </p>
            </li>
            <li>
               <p>Specified in Coordinated Universal Time (UTC).</p>
            </li>
            <li>
               <p>Must not conflict with the preferred maintenance window.</p>
            </li>
            <li>
               <p>Must be at least 30 minutes.</p>
            </li>
         </ul>")
    preferredBackupWindow: option<string_>,
    @ocaml.doc("<p>The password for the master user. The password can include any printable ASCII character
      except \"/\", \"\"\", or \"@\". It cannot contain spaces.</p>
         <p>
            <b>MySQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 41 characters.</p>
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>Constraints: Must contain from 8 to 128 characters.</p>")
    masterUserPassword: option<sensitiveString>,
    @ocaml.doc("<p>The name for the master user.</p>
         <p>
            <b>MySQL</b>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Required for MySQL.</p>
            </li>
            <li>
               <p>Must be 1 to 16 letters or numbers. Can contain underscores.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
               <p>For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and
          Reserved Words articles for <a href=\"https://dev.mysql.com/doc/refman/5.6/en/keywords.html\">MySQL 5.6</a>, <a href=\"https://dev.mysql.com/doc/refman/5.7/en/keywords.html\">MySQL 5.7</a>, or <a href=\"https://dev.mysql.com/doc/refman/8.0/en/keywords.html\">MySQL 8.0</a>.</p>
            </li>
         </ul>
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Required for PostgreSQL.</p>
            </li>
            <li>
               <p>Must be 1 to 63 letters or numbers. Can contain underscores.</p>
            </li>
            <li>
               <p>First character must be a letter.</p>
            </li>
            <li>
               <p>Can't be a reserved word for the chosen database engine.</p>
               <p>For more information about reserved words in MySQL 5.6 or 5.7, see the Keywords and
          Reserved Words articles for <a href=\"https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html\">PostgreSQL
            9.6</a>, <a href=\"https://www.postgresql.org/docs/10/sql-keywords-appendix.html\">PostgreSQL 10</a>, <a href=\"https://www.postgresql.org/docs/11/sql-keywords-appendix.html\">PostgreSQL
            11</a>, and <a href=\"https://www.postgresql.org/docs/12/sql-keywords-appendix.html\">PostgreSQL
            12</a>.</p>
            </li>
         </ul>")
    masterUsername: string_,
    @ocaml.doc("<p>The meaning of this parameter differs according to the database engine you use.</p>
         <p>
            <b>MySQL</b>
         </p>
         <p>The name of the database to create when the Lightsail database resource is created. If
      this parameter isn't specified, no database is created in the database resource.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1 to 64 letters or numbers.</p>
            </li>
            <li>
               <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits
          (0- 9).</p>
            </li>
            <li>
               <p>Can't be a word reserved by the specified database engine.</p>
               <p>For more information about reserved words in MySQL, see the Keywords and Reserved
          Words articles for <a href=\"https://dev.mysql.com/doc/refman/5.6/en/keywords.html\">MySQL 5.6</a>, <a href=\"https://dev.mysql.com/doc/refman/5.7/en/keywords.html\">MySQL 5.7</a>, and <a href=\"https://dev.mysql.com/doc/refman/8.0/en/keywords.html\">MySQL 8.0</a>.</p>
            </li>
         </ul>
         <p>
            <b>PostgreSQL</b>
         </p>
         <p>The name of the database to create when the Lightsail database resource is created. If
      this parameter isn't specified, a database named <code>postgres</code> is created in the
      database resource.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain 1 to 63 letters or numbers.</p>
            </li>
            <li>
               <p>Must begin with a letter. Subsequent characters can be letters, underscores, or digits
          (0- 9).</p>
            </li>
            <li>
               <p>Can't be a word reserved by the specified database engine.</p>
               <p>For more information about reserved words in PostgreSQL, see the SQL Key Words
          articles for <a href=\"https://www.postgresql.org/docs/9.6/sql-keywords-appendix.html\">PostgreSQL 9.6</a>, <a href=\"https://www.postgresql.org/docs/10/sql-keywords-appendix.html\">PostgreSQL
            10</a>, <a href=\"https://www.postgresql.org/docs/11/sql-keywords-appendix.html\">PostgreSQL 11</a>, and <a href=\"https://www.postgresql.org/docs/12/sql-keywords-appendix.html\">PostgreSQL
            12</a>.</p>
            </li>
         </ul>")
    masterDatabaseName: string_,
    @ocaml.doc("<p>The bundle ID for your new database. A bundle describes the performance specifications for
      your database.</p>
         <p>You can get a list of database bundle IDs by using the <code>get relational database
        bundles</code> operation.</p>")
    relationalDatabaseBundleId: string_,
    @ocaml.doc("<p>The blueprint ID for your new database. A blueprint describes the major engine version of
      a database.</p>
         <p>You can get a list of database blueprints IDs by using the <code>get relational database
        blueprints</code> operation.</p>")
    relationalDatabaseBlueprintId: string_,
    @ocaml.doc("<p>The Availability Zone in which to create your new database. Use the
        <code>us-east-2a</code> case-sensitive format.</p>
         <p>You can get a list of Availability Zones by using the <code>get regions</code> operation.
      Be sure to add the <code>include relational database Availability Zones</code> parameter to
      your request.</p>")
    availabilityZone: option<string_>,
    @ocaml.doc("<p>The name to use for your new Lightsail database resource.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must contain from 2 to 255 alphanumeric characters, or hyphens.</p>
            </li>
            <li>
               <p>The first and last character must be a letter or number.</p>
            </li>
         </ul>")
    relationalDatabaseName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateRelationalDatabaseCommand"
  let make = (
    ~masterUsername,
    ~masterDatabaseName,
    ~relationalDatabaseBundleId,
    ~relationalDatabaseBlueprintId,
    ~relationalDatabaseName,
    ~tags=?,
    ~publiclyAccessible=?,
    ~preferredMaintenanceWindow=?,
    ~preferredBackupWindow=?,
    ~masterUserPassword=?,
    ~availabilityZone=?,
    (),
  ) =>
    new({
      tags: tags,
      publiclyAccessible: publiclyAccessible,
      preferredMaintenanceWindow: preferredMaintenanceWindow,
      preferredBackupWindow: preferredBackupWindow,
      masterUserPassword: masterUserPassword,
      masterUsername: masterUsername,
      masterDatabaseName: masterDatabaseName,
      relationalDatabaseBundleId: relationalDatabaseBundleId,
      relationalDatabaseBlueprintId: relationalDatabaseBlueprintId,
      availabilityZone: availabilityZone,
      relationalDatabaseName: relationalDatabaseName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLoadBalancerTlsCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>An array of strings listing alternative domains and subdomains for your SSL/TLS
      certificate. Lightsail will de-dupe the names for you. You can have a maximum of 9
      alternative names (in addition to the 1 primary domain). We do not support wildcards (e.g.,
        <code>*.example.com</code>).</p>")
    certificateAlternativeNames: option<domainNameList>,
    @ocaml.doc(
      "<p>The domain name (e.g., <code>example.com</code>) for your SSL/TLS certificate.</p>"
    )
    certificateDomainName: domainName,
    @ocaml.doc("<p>The SSL/TLS certificate name.</p>
         <p>You can have up to 10 certificates in your account at one time. Each Lightsail load
      balancer can have up to 2 certificates associated with it at one time. There is also an
      overall limit to the number of certificates that can be issue in a 365-day period. For more
      information, see <a href=\"http://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html\">Limits</a>.</p>")
    certificateName: resourceName,
    @ocaml.doc("<p>The load balancer name where you want to create the SSL/TLS certificate.</p>")
    loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateLoadBalancerTlsCertificateCommand"
  let make = (
    ~certificateDomainName,
    ~certificateName,
    ~loadBalancerName,
    ~tags=?,
    ~certificateAlternativeNames=?,
    (),
  ) =>
    new({
      tags: tags,
      certificateAlternativeNames: certificateAlternativeNames,
      certificateDomainName: certificateDomainName,
      certificateName: certificateName,
      loadBalancerName: loadBalancerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLoadBalancer = {
  type t
  type request = {
    @ocaml.doc("<p>The IP address type for the load balancer.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>

         <p>The default value is <code>dualstack</code>.</p>")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The optional alternative domains and subdomains to use with your SSL/TLS certificate
      (e.g., <code>www.example.com</code>, <code>example.com</code>, <code>m.example.com</code>,
        <code>blog.example.com</code>).</p>")
    certificateAlternativeNames: option<domainNameList>,
    @ocaml.doc("<p>The domain name with which your certificate is associated (e.g.,
      <code>example.com</code>).</p>
         <p>If you specify <code>certificateDomainName</code>, then <code>certificateName</code> is
      required (and vice-versa).</p>")
    certificateDomainName: option<domainName>,
    @ocaml.doc("<p>The name of the SSL/TLS certificate.</p>
         <p>If you specify <code>certificateName</code>, then <code>certificateDomainName</code> is
      required (and vice-versa).</p>")
    certificateName: option<resourceName>,
    @ocaml.doc("<p>The path you provided to perform the load balancer health check. If you didn't specify a
      health check path, Lightsail uses the root path of your website (e.g.,
      <code>\"/\"</code>).</p>
         <p>You may want to specify a custom health check path other than the root of your application
      if your home page loads slowly or has a lot of media or scripting on it.</p>")
    healthCheckPath: option<string_>,
    @ocaml.doc("<p>The instance port where you're creating your load balancer.</p>")
    instancePort: port,
    @ocaml.doc("<p>The name of your load balancer.</p>") loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateLoadBalancerCommand"
  let make = (
    ~instancePort,
    ~loadBalancerName,
    ~ipAddressType=?,
    ~tags=?,
    ~certificateAlternativeNames=?,
    ~certificateDomainName=?,
    ~certificateName=?,
    ~healthCheckPath=?,
    (),
  ) =>
    new({
      ipAddressType: ipAddressType,
      tags: tags,
      certificateAlternativeNames: certificateAlternativeNames,
      certificateDomainName: certificateDomainName,
      certificateName: certificateName,
      healthCheckPath: healthCheckPath,
      instancePort: instancePort,
      loadBalancerName: loadBalancerName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateKeyPair = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name for your new key pair.</p>") keyPairName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
    @ocaml.doc("<p>A base64-encoded RSA private key.</p>") privateKeyBase64: option<base64>,
    @ocaml.doc("<p>A base64-encoded public key of the <code>ssh-rsa</code> type.</p>")
    publicKeyBase64: option<base64>,
    @ocaml.doc("<p>An array of key-value pairs containing information about the new key pair you just
      created.</p>")
    keyPair: option<keyPair>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateKeyPairCommand"
  let make = (~keyPairName, ~tags=?, ()) => new({tags: tags, keyPairName: keyPairName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstancesFromSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>A Boolean value to indicate whether to use the latest available automatic snapshot.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>This parameter cannot be defined together with the <code>restore date</code>
          parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
            date</code> parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when creating a new instance from an automatic snapshot.
          For more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    useLatestRestorableAutoSnapshot: option<boolean_>,
    @ocaml.doc("<p>The date of the automatic snapshot to use for the new instance. Use the <code>get auto
        snapshots</code> operation to identify the dates of the available automatic
      snapshots.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
            </li>
            <li>
               <p>This parameter cannot be defined together with the <code>use latest restorable auto
            snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
            auto snapshot</code> parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when creating a new instance from an automatic snapshot.
          For more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    restoreDate: option<string_>,
    @ocaml.doc("<p>The name of the source instance from which the source automatic snapshot was
      created.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>This parameter cannot be defined together with the <code>instance snapshot name</code>
          parameter. The <code>source instance name</code> and <code>instance snapshot name</code>
          parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when creating a new instance from an automatic snapshot.
          For more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    sourceInstanceName: option<string_>,
    @ocaml.doc("<p>The IP address type for the instance.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>

         <p>The default value is <code>dualstack</code>.</p>")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc(
      "<p>An array of objects representing the add-ons to enable for the new instance.</p>"
    )
    addOns: option<addOnRequestList>,
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name for your key pair.</p>") keyPairName: option<resourceName>,
    @ocaml.doc("<p>You can create a launch script that configures a server with additional user data. For
      example, <code>apt-get -y update</code>.</p>
         <note>
            <p>Depending on the machine image you choose, the command to get software on your instance
        varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
          <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the
          <a href=\"https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image\">Dev Guide</a>.</p>
         </note>")
    userData: option<string_>,
    @ocaml.doc("<p>The bundle of specification information for your virtual private server (or
        <i>instance</i>), including the pricing plan (e.g.,
      <code>micro_1_0</code>).</p>")
    bundleId: nonEmptyString,
    @ocaml.doc("<p>The name of the instance snapshot on which you are basing your new instances. Use the get
      instance snapshots operation to return information about your existing snapshots.</p>
         <p>Constraint:</p>
         <ul>
            <li>
               <p>This parameter cannot be defined together with the <code>source instance name</code>
          parameter. The <code>instance snapshot name</code> and <code>source instance name</code>
          parameters are mutually exclusive.</p>
            </li>
         </ul>")
    instanceSnapshotName: option<resourceName>,
    @ocaml.doc("<p>The Availability Zone where you want to create your instances. Use the following
      formatting: <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones
      by using the <a href=\"http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html\">get
        regions</a> operation. Be sure to add the <code>include Availability Zones</code>
      parameter to your request.</p>")
    availabilityZone: string_,
    @ocaml.doc("<p>An object containing information about one or more disk mappings.</p>")
    attachedDiskMapping: option<attachedDiskMap>,
    @ocaml.doc("<p>The names for your new instances.</p>") instanceNames: stringList,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateInstancesFromSnapshotCommand"
  let make = (
    ~bundleId,
    ~availabilityZone,
    ~instanceNames,
    ~useLatestRestorableAutoSnapshot=?,
    ~restoreDate=?,
    ~sourceInstanceName=?,
    ~ipAddressType=?,
    ~addOns=?,
    ~tags=?,
    ~keyPairName=?,
    ~userData=?,
    ~instanceSnapshotName=?,
    ~attachedDiskMapping=?,
    (),
  ) =>
    new({
      useLatestRestorableAutoSnapshot: useLatestRestorableAutoSnapshot,
      restoreDate: restoreDate,
      sourceInstanceName: sourceInstanceName,
      ipAddressType: ipAddressType,
      addOns: addOns,
      tags: tags,
      keyPairName: keyPairName,
      userData: userData,
      bundleId: bundleId,
      instanceSnapshotName: instanceSnapshotName,
      availabilityZone: availabilityZone,
      attachedDiskMapping: attachedDiskMapping,
      instanceNames: instanceNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The IP address type for the instance.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>

         <p>The default value is <code>dualstack</code>.</p>")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc(
      "<p>An array of objects representing the add-ons to enable for the new instance.</p>"
    )
    addOns: option<addOnRequestList>,
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The name of your key pair.</p>") keyPairName: option<resourceName>,
    @ocaml.doc("<p>A launch script you can create that configures a server with additional user data. For
      example, you might want to run <code>apt-get -y update</code>.</p>
         <note>
            <p>Depending on the machine image you choose, the command to get software on your instance
        varies. Amazon Linux and CentOS use <code>yum</code>, Debian and Ubuntu use
          <code>apt-get</code>, and FreeBSD uses <code>pkg</code>. For a complete list, see the
          <a href=\"https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image\">Dev Guide</a>.</p>
         </note>")
    userData: option<string_>,
    @ocaml.doc("<p>The bundle of specification information for your virtual private server (or
        <i>instance</i>), including the pricing plan (e.g.,
      <code>micro_1_0</code>).</p>")
    bundleId: nonEmptyString,
    @ocaml.doc("<p>The ID for a virtual private server image (e.g., <code>app_wordpress_4_4</code> or
        <code>app_lamp_7_0</code>). Use the <code>get blueprints</code> operation to return a list
      of available images (or <i>blueprints</i>).</p>
         <note>
            <p>Use active blueprints when creating new instances. Inactive blueprints are listed to
        support customers with existing instances and are not necessarily available to create new
        instances. Blueprints are marked inactive when they become outdated due to operating system
        updates or new application releases.</p>
         </note>")
    blueprintId: nonEmptyString,
    @ocaml.doc("<p>(Deprecated) The name for your custom image.</p>
         <note>
            <p>In releases prior to June 12, 2017, this parameter was ignored by the API. It is now
        deprecated.</p>
         </note>")
    customImageName: option<resourceName>,
    @ocaml.doc("<p>The Availability Zone in which to create your instance. Use the following format:
        <code>us-east-2a</code> (case sensitive). You can get a list of Availability Zones by using
      the <a href=\"http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html\">get
        regions</a> operation. Be sure to add the <code>include Availability Zones</code>
      parameter to your request.</p>")
    availabilityZone: string_,
    @ocaml.doc("<p>The names to use for your new Lightsail instances. Separate multiple values using
      quotation marks and commas, for example:
      <code>[\"MyFirstInstance\",\"MySecondInstance\"]</code>
         </p>")
    instanceNames: stringList,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateInstancesCommand"
  let make = (
    ~bundleId,
    ~blueprintId,
    ~availabilityZone,
    ~instanceNames,
    ~ipAddressType=?,
    ~addOns=?,
    ~tags=?,
    ~keyPairName=?,
    ~userData=?,
    ~customImageName=?,
    (),
  ) =>
    new({
      ipAddressType: ipAddressType,
      addOns: addOns,
      tags: tags,
      keyPairName: keyPairName,
      userData: userData,
      bundleId: bundleId,
      blueprintId: blueprintId,
      customImageName: customImageName,
      availabilityZone: availabilityZone,
      instanceNames: instanceNames,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateInstanceSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The Lightsail instance on which to base your snapshot.</p>")
    instanceName: resourceName,
    @ocaml.doc("<p>The name for your new snapshot.</p>") instanceSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateInstanceSnapshotCommand"
  let make = (~instanceName, ~instanceSnapshotName, ~tags=?, ()) =>
    new({tags: tags, instanceName: instanceName, instanceSnapshotName: instanceSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDiskSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The unique name of the source instance (e.g., <code>Amazon_Linux-512MB-Virginia-1</code>).
      When this is defined, a snapshot of the instance's system volume is created.</p>
         <note>
            <p>This parameter cannot be defined together with the <code>disk name</code> parameter. The
          <code>instance name</code> and <code>disk name</code> parameters are mutually
        exclusive.</p>
         </note>")
    instanceName: option<resourceName>,
    @ocaml.doc("<p>The name of the destination disk snapshot (e.g., <code>my-disk-snapshot</code>) based on
      the source disk.</p>")
    diskSnapshotName: resourceName,
    @ocaml.doc("<p>The unique name of the source disk (e.g., <code>Disk-Virginia-1</code>).</p>
         <note>
            <p>This parameter cannot be defined together with the <code>instance name</code> parameter.
        The <code>disk name</code> and <code>instance name</code> parameters are mutually
        exclusive.</p>
         </note>")
    diskName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateDiskSnapshotCommand"
  let make = (~diskSnapshotName, ~tags=?, ~instanceName=?, ~diskName=?, ()) =>
    new({
      tags: tags,
      instanceName: instanceName,
      diskSnapshotName: diskSnapshotName,
      diskName: diskName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDiskFromSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>A Boolean value to indicate whether to use the latest available automatic snapshot.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>This parameter cannot be defined together with the <code>restore date</code>
          parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
            date</code> parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when creating a new disk from an automatic snapshot. For
          more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    useLatestRestorableAutoSnapshot: option<boolean_>,
    @ocaml.doc("<p>The date of the automatic snapshot to use for the new disk. Use the <code>get auto
        snapshots</code> operation to identify the dates of the available automatic
      snapshots.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
            </li>
            <li>
               <p>This parameter cannot be defined together with the <code>use latest restorable auto
            snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
            auto snapshot</code> parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when creating a new disk from an automatic snapshot. For
          more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    restoreDate: option<string_>,
    @ocaml.doc("<p>The name of the source disk from which the source automatic snapshot was created.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>This parameter cannot be defined together with the <code>disk snapshot name</code>
          parameter. The <code>source disk name</code> and <code>disk snapshot name</code>
          parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when creating a new disk from an automatic snapshot. For
          more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    sourceDiskName: option<string_>,
    @ocaml.doc("<p>An array of objects that represent the add-ons to enable for the new disk.</p>")
    addOns: option<addOnRequestList>,
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The size of the disk in GB (e.g., <code>32</code>).</p>") sizeInGb: integer_,
    @ocaml.doc("<p>The Availability Zone where you want to create the disk (e.g., <code>us-east-2a</code>).
      Choose the same Availability Zone as the Lightsail instance where you want to create the
      disk.</p>
         <p>Use the GetRegions operation to list the Availability Zones where Lightsail is currently
      available.</p>")
    availabilityZone: nonEmptyString,
    @ocaml.doc("<p>The name of the disk snapshot (e.g., <code>my-snapshot</code>) from which to create the
      new storage disk.</p>
         <p>Constraint:</p>
         <ul>
            <li>
               <p>This parameter cannot be defined together with the <code>source disk name</code>
          parameter. The <code>disk snapshot name</code> and <code>source disk name</code>
          parameters are mutually exclusive.</p>
            </li>
         </ul>")
    diskSnapshotName: option<resourceName>,
    @ocaml.doc("<p>The unique Lightsail disk name (e.g., <code>my-disk</code>).</p>")
    diskName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateDiskFromSnapshotCommand"
  let make = (
    ~sizeInGb,
    ~availabilityZone,
    ~diskName,
    ~useLatestRestorableAutoSnapshot=?,
    ~restoreDate=?,
    ~sourceDiskName=?,
    ~addOns=?,
    ~tags=?,
    ~diskSnapshotName=?,
    (),
  ) =>
    new({
      useLatestRestorableAutoSnapshot: useLatestRestorableAutoSnapshot,
      restoreDate: restoreDate,
      sourceDiskName: sourceDiskName,
      addOns: addOns,
      tags: tags,
      sizeInGb: sizeInGb,
      availabilityZone: availabilityZone,
      diskSnapshotName: diskSnapshotName,
      diskName: diskName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDisk = {
  type t
  type request = {
    @ocaml.doc("<p>An array of objects that represent the add-ons to enable for the new disk.</p>")
    addOns: option<addOnRequestList>,
    @ocaml.doc("<p>The tag keys and optional values to add to the resource during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The size of the disk in GB (e.g., <code>32</code>).</p>") sizeInGb: integer_,
    @ocaml.doc("<p>The Availability Zone where you want to create the disk (e.g., <code>us-east-2a</code>).
      Use the same Availability Zone as the Lightsail instance to which you want to attach the
      disk.</p>
         <p>Use the <code>get regions</code> operation to list the Availability Zones where
      Lightsail is currently available.</p>")
    availabilityZone: nonEmptyString,
    @ocaml.doc("<p>The unique Lightsail disk name (e.g., <code>my-disk</code>).</p>")
    diskName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateDiskCommand"
  let make = (~sizeInGb, ~availabilityZone, ~diskName, ~addOns=?, ~tags=?, ()) =>
    new({
      addOns: addOns,
      tags: tags,
      sizeInGb: sizeInGb,
      availabilityZone: availabilityZone,
      diskName: diskName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContactMethod = {
  type t
  type request = {
    @ocaml.doc("<p>The destination of the contact method, such as an email address or a mobile phone
      number.</p>
         <p>Use the E.164 format when specifying a mobile phone number. E.164 is a standard for the
      phone number structure used for international telecommunication. Phone numbers that follow
      this format can have a maximum of 15 digits, and they are prefixed with the plus character (+)
      and the country code. For example, a U.S. phone number in E.164 format would be specified as
      +1XXX5550100. For more information, see <a href=\"https://en.wikipedia.org/wiki/E.164\">E.164</a> on <i>Wikipedia</i>.</p>")
    contactEndpoint: stringMax256,
    @ocaml.doc("<p>The protocol of the contact method, such as <code>Email</code> or <code>SMS</code> (text
      messaging).</p>
         <p>The <code>SMS</code> protocol is supported only in the following AWS Regions.</p>
         <ul>
            <li>
               <p>US East (N. Virginia) (<code>us-east-1</code>)</p>
            </li>
            <li>
               <p>US West (Oregon) (<code>us-west-2</code>)</p>
            </li>
            <li>
               <p>Europe (Ireland) (<code>eu-west-1</code>)</p>
            </li>
            <li>
               <p>Asia Pacific (Tokyo) (<code>ap-northeast-1</code>)</p>
            </li>
            <li>
               <p>Asia Pacific (Singapore) (<code>ap-southeast-1</code>)</p>
            </li>
            <li>
               <p>Asia Pacific (Sydney) (<code>ap-southeast-2</code>)</p>
            </li>
         </ul>
         <p>For a list of countries/regions where SMS text messages can be sent, and the latest AWS
      Regions where SMS text messaging is supported, see <a href=\"https://docs.aws.amazon.com/sns/latest/dg/sns-supported-regions-countries.html\">Supported Regions and Countries</a> in the <i>Amazon SNS Developer
        Guide</i>.</p>
         <p>For more information about notifications in Amazon Lightsail, see <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-notifications\">Notifications in Amazon Lightsail</a>.</p>")
    protocol: contactProtocol,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateContactMethodCommand"
  let make = (~contactEndpoint, ~protocol, ()) =>
    new({contactEndpoint: contactEndpoint, protocol: protocol})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCloudFormationStack = {
  type t
  type request = {
    @ocaml.doc("<p>An array of parameters that will be used to create the new Amazon EC2 instance. You can only
      pass one instance entry at a time in this array. You will get an invalid parameter error if
      you pass more than one instance entry in this array.</p>")
    instances: instanceEntryList,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateCloudFormationStackCommand"
  let make = (~instances, ()) => new({instances: instances})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CopySnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The AWS Region where the source manual or automatic snapshot is located.</p>")
    sourceRegion: regionName,
    @ocaml.doc("<p>The name of the new manual snapshot to be created as a copy.</p>")
    targetSnapshotName: resourceName,
    @ocaml.doc("<p>A Boolean value to indicate whether to use the latest available automatic snapshot of the
      specified source instance or disk.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>This parameter cannot be defined together with the <code>restore date</code>
          parameter. The <code>use latest restorable auto snapshot</code> and <code>restore
            date</code> parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
          For more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    useLatestRestorableAutoSnapshot: option<boolean_>,
    @ocaml.doc("<p>The date of the source automatic snapshot to copy. Use the <code>get auto snapshots</code>
      operation to identify the dates of the available automatic snapshots.</p>
         <p>Constraints:</p>
         <ul>
            <li>
               <p>Must be specified in <code>YYYY-MM-DD</code> format.</p>
            </li>
            <li>
               <p>This parameter cannot be defined together with the <code>use latest restorable auto
            snapshot</code> parameter. The <code>restore date</code> and <code>use latest restorable
            auto snapshot</code> parameters are mutually exclusive.</p>
            </li>
            <li>
               <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
          For more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    restoreDate: option<string_>,
    @ocaml.doc("<p>The name of the source instance or disk from which the source automatic snapshot was
      created.</p>
         <p>Constraint:</p>
         <ul>
            <li>
               <p>Define this parameter only when copying an automatic snapshot as a manual snapshot.
          For more information, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots\">Lightsail Dev Guide</a>.</p>
            </li>
         </ul>")
    sourceResourceName: option<string_>,
    @ocaml.doc("<p>The name of the source manual snapshot to copy.</p>
         <p>Constraint:</p>
         <ul>
            <li>
               <p>Define this parameter only when copying a manual snapshot as another manual
          snapshot.</p>
            </li>
         </ul>")
    sourceSnapshotName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CopySnapshotCommand"
  let make = (
    ~sourceRegion,
    ~targetSnapshotName,
    ~useLatestRestorableAutoSnapshot=?,
    ~restoreDate=?,
    ~sourceResourceName=?,
    ~sourceSnapshotName=?,
    (),
  ) =>
    new({
      sourceRegion: sourceRegion,
      targetSnapshotName: targetSnapshotName,
      useLatestRestorableAutoSnapshot: useLatestRestorableAutoSnapshot,
      restoreDate: restoreDate,
      sourceResourceName: sourceResourceName,
      sourceSnapshotName: sourceSnapshotName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachStaticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The instance name to which you want to attach the static IP address.</p>")
    instanceName: resourceName,
    @ocaml.doc("<p>The name of the static IP.</p>") staticIpName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "AttachStaticIpCommand"
  let make = (~instanceName, ~staticIpName, ()) =>
    new({instanceName: instanceName, staticIpName: staticIpName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachLoadBalancerTlsCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The name of your SSL/TLS certificate.</p>") certificateName: resourceName,
    @ocaml.doc("<p>The name of the load balancer to which you want to associate the SSL/TLS
      certificate.</p>")
    loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>
         <p>These SSL/TLS certificates are only usable by Lightsail load balancers. You can't get
      the certificate and use it for another purpose.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "AttachLoadBalancerTlsCertificateCommand"
  let make = (~certificateName, ~loadBalancerName, ()) =>
    new({certificateName: certificateName, loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachInstancesToLoadBalancer = {
  type t
  type request = {
    @ocaml.doc("<p>An array of strings representing the instance name(s) you want to attach to your load
      balancer.</p>
         <p>An instance must be <code>running</code> before you can attach it to your load
      balancer.</p>
         <p>There are no additional limits on the number of instances you can attach to your load
      balancer, aside from the limit of Lightsail instances you can create in your account
      (20).</p>")
    instanceNames: resourceNameList,
    @ocaml.doc("<p>The name of the load balancer.</p>") loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "AttachInstancesToLoadBalancerCommand"
  let make = (~instanceNames, ~loadBalancerName, ()) =>
    new({instanceNames: instanceNames, loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AttachDisk = {
  type t
  type request = {
    @ocaml.doc("<p>The disk path to expose to the instance (e.g., <code>/dev/xvdf</code>).</p>")
    diskPath: nonEmptyString,
    @ocaml.doc(
      "<p>The name of the Lightsail instance where you want to utilize the storage disk.</p>"
    )
    instanceName: resourceName,
    @ocaml.doc("<p>The unique Lightsail disk name (e.g., <code>my-disk</code>).</p>")
    diskName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "AttachDiskCommand"
  let make = (~diskPath, ~instanceName, ~diskName, ()) =>
    new({diskPath: diskPath, instanceName: instanceName, diskName: diskName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AllocateStaticIp = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the static IP address.</p>") staticIpName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "AllocateStaticIpCommand"
  let make = (~staticIpName, ()) => new({staticIpName: staticIpName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabases = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetRelationalDatabases</code> request. If
      your results are paginated, the response will return a next page token that you can specify as
      the page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetRelationalDatabases</code>
      request and specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An object describing the result of your get relational databases request.</p>")
    relationalDatabases: option<relationalDatabaseList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabasesCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRelationalDatabaseSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetRelationalDatabaseSnapshots</code>
      request. If your results are paginated, the response will return a next page token that you
      can specify as the page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another
        <code>GetRelationalDatabaseSnapshots</code> request and specify the next page token using
      the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc(
      "<p>An object describing the result of your get relational database snapshots request.</p>"
    )
    relationalDatabaseSnapshots: option<relationalDatabaseSnapshotList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetRelationalDatabaseSnapshotsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetRegions = {
  type t
  type request = {
    @ocaml.doc("<p>A Boolean value indicating whether to also include Availability Zones for databases in
      your get regions request. Availability Zones are indicated with a letter (e.g.,
        <code>us-east-2a</code>).</p>")
    includeRelationalDatabaseAvailabilityZones: option<boolean_>,
    @ocaml.doc("<p>A Boolean value indicating whether to also include Availability Zones in your get regions
      request. Availability Zones are indicated with a letter: e.g., <code>us-east-2a</code>.</p>")
    includeAvailabilityZones: option<boolean_>,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of key-value pairs containing information about your get regions request.</p>"
    )
    regions: option<regionList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetRegionsCommand"
  let make = (~includeRelationalDatabaseAvailabilityZones=?, ~includeAvailabilityZones=?, ()) =>
    new({
      includeRelationalDatabaseAvailabilityZones: includeRelationalDatabaseAvailabilityZones,
      includeAvailabilityZones: includeAvailabilityZones,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoadBalancers = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetLoadBalancers</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetLoadBalancers</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of LoadBalancer objects describing your load balancers.</p>")
    loadBalancers: option<loadBalancerList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetLoadBalancersCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetKeyPairs = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetKeyPairs</code> request. If your results
      are paginated, the response will return a next page token that you can specify as the page
      token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetKeyPairs</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of key-value pairs containing information about the key pairs.</p>")
    keyPairs: option<keyPairList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetKeyPairsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The domain name for which your want to return information about.</p>")
    domainName: domainName,
  }
  type response = {
    @ocaml.doc(
      "<p>An array of key-value pairs containing information about your get domain request.</p>"
    )
    domain: option<domain>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetDomainCommand"
  let make = (~domainName, ()) => new({domainName: domainName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDisks = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetDisks</code> request. If your results are
      paginated, the response will return a next page token that you can specify as the page token
      in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetDisks</code> request and specify
      the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of objects containing information about all block storage disks.</p>")
    disks: option<diskList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetDisksCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDiskSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetDiskSnapshots</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetDiskSnapshots</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc(
      "<p>An array of objects containing information about all block storage disk snapshots.</p>"
    )
    diskSnapshots: option<diskSnapshotList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetDiskSnapshotsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCloudFormationStackRecords = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetClouFormationStackRecords</code> request.
      If your results are paginated, the response will return a next page token that you can specify
      as the page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another
        <code>GetCloudFormationStackRecords</code> request and specify the next page token using the
        <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>A list of objects describing the CloudFormation stack records.</p>")
    cloudFormationStackRecords: option<cloudFormationStackRecordList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetCloudFormationStackRecordsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetAutoSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the source instance or disk from which to get automatic snapshot
      information.</p>")
    resourceName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the automatic snapshots that are available for the
      specified source instance or disk.</p>")
    autoSnapshots: option<autoSnapshotDetailsList>,
    @ocaml.doc("<p>The resource type (e.g., <code>Instance</code> or <code>Disk</code>).</p>")
    resourceType: option<resourceType>,
    @ocaml.doc("<p>The name of the source instance or disk for the automatic snapshots.</p>")
    resourceName: option<resourceName>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetAutoSnapshotsCommand"
  let make = (~resourceName, ()) => new({resourceName: resourceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDistribution = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the distribution during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The IP address type for the distribution.</p>

         <p>The possible values are <code>ipv4</code> for IPv4 only, and <code>dualstack</code> for
      IPv4 and IPv6.</p>

         <p>The default value is <code>dualstack</code>.</p>")
    ipAddressType: option<ipAddressType>,
    @ocaml.doc("<p>The bundle ID to use for the distribution.</p>
         <p>A distribution bundle describes the specifications of your distribution, such as the
      monthly cost and monthly network transfer quota.</p>
         <p>Use the <code>GetDistributionBundles</code> action to get a list of distribution bundle
      IDs that you can specify.</p>")
    bundleId: string_,
    @ocaml.doc(
      "<p>An array of objects that describe the per-path cache behavior for the distribution.</p>"
    )
    cacheBehaviors: option<cacheBehaviorList>,
    @ocaml.doc("<p>An object that describes the cache behavior settings for the distribution.</p>")
    cacheBehaviorSettings: option<cacheSettings>,
    @ocaml.doc("<p>An object that describes the default cache behavior for the distribution.</p>")
    defaultCacheBehavior: cacheBehavior,
    @ocaml.doc("<p>An object that describes the origin resource for the distribution, such as a Lightsail
      instance or load balancer.</p>
         <p>The distribution pulls, caches, and serves content from the origin.</p>")
    origin: inputOrigin,
    @ocaml.doc("<p>The name for the distribution.</p>") distributionName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operation: option<operation>,
    @ocaml.doc("<p>An object that describes the distribution created.</p>")
    distribution: option<lightsailDistribution>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateDistributionCommand"
  let make = (
    ~bundleId,
    ~defaultCacheBehavior,
    ~origin,
    ~distributionName,
    ~tags=?,
    ~ipAddressType=?,
    ~cacheBehaviors=?,
    ~cacheBehaviorSettings=?,
    (),
  ) =>
    new({
      tags: tags,
      ipAddressType: ipAddressType,
      bundleId: bundleId,
      cacheBehaviors: cacheBehaviors,
      cacheBehaviorSettings: cacheBehaviorSettings,
      defaultCacheBehavior: defaultCacheBehavior,
      origin: origin,
      distributionName: distributionName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateContainerService = {
  type t
  type request = {
    @ocaml.doc("<p>The public domain names to use with the container service, such as
        <code>example.com</code> and <code>www.example.com</code>.</p>

         <p>You can specify up to four public domain names for a container service. The domain names
      that you specify are used when you create a deployment with a container configured as the
      public endpoint of your container service.</p>

         <p>If you don't specify public domain names, then you can use the default domain of the
      container service.</p>

         <important>
            <p>You must create and validate an SSL/TLS certificate before you can use public domain
        names with your container service. Use the <code>CreateCertificate</code> action to create a
        certificate for the public domain names you want to use with your container service.</p>
         </important>

         <p>You can specify public domain names using a string to array map as shown in the example
      later on this page.</p>")
    publicDomainNames: option<containerServicePublicDomains>,
    @ocaml.doc("<p>A Boolean value to indicate whether the container service is disabled.</p>")
    isDisabled: option<boolean_>,
    @ocaml.doc("<p>The scale for the container service.</p>

         <p>The scale specifies the allocated compute nodes of the container service. The
        <code>power</code> and <code>scale</code> of a container service makes up its configured
      capacity. To determine the monthly price of your container service, multiply the base price of
      the <code>power</code> with the <code>scale</code> (the number of nodes) of the
      service.</p>")
    scale: option<containerServiceScale>,
    @ocaml.doc("<p>The power for the container service.</p>

         <p>The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the
      container service. The <code>power</code> and <code>scale</code> of a container service makes
      up its configured capacity. To determine the monthly price of your container service, multiply
      the base price of the <code>power</code> with the <code>scale</code> (the number of nodes) of
      the service.</p>

         <p>Use the <code>GetContainerServicePowers</code> action to view the specifications of each
      power option.</p>")
    power: option<containerServicePowerName>,
    @ocaml.doc("<p>The name of the container service to update.</p>")
    serviceName: containerServiceName,
  }
  type response = {
    @ocaml.doc("<p>An object that describes a container service.</p>")
    containerService: option<containerService>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "UpdateContainerServiceCommand"
  let make = (~serviceName, ~publicDomainNames=?, ~isDisabled=?, ~scale=?, ~power=?, ()) =>
    new({
      publicDomainNames: publicDomainNames,
      isDisabled: isDisabled,
      scale: scale,
      power: power,
      serviceName: serviceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLoadBalancerTlsCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the load balancer you associated with your SSL/TLS certificate.</p>")
    loadBalancerName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of LoadBalancerTlsCertificate objects describing your SSL/TLS
      certificates.</p>")
    tlsCertificates: option<loadBalancerTlsCertificateList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetLoadBalancerTlsCertificatesCommand"
  let make = (~loadBalancerName, ()) => new({loadBalancerName: loadBalancerName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceSnapshot = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the snapshot for which you are requesting information.</p>")
    instanceSnapshotName: resourceName,
  }
  type response = {
    @ocaml.doc("<p>An array of key-value pairs containing information about the results of your get instance
      snapshot request.</p>")
    instanceSnapshot: option<instanceSnapshot>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetInstanceSnapshotCommand"
  let make = (~instanceSnapshotName, ()) => new({instanceSnapshotName: instanceSnapshotName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDomains = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetDomains</code> request. If your results
      are paginated, the response will return a next page token that you can specify as the page
      token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetDomains</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of key-value pairs containing information about each of the domain entries in the
      user's account.</p>")
    domains: option<domainList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetDomainsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDistributions = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetDistributions</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
    @ocaml.doc("<p>The name of the distribution for which to return information.</p>
         <p>Use the <code>GetDistributions</code> action to get a list of distribution names that you
      can specify.</p>
         <p>When omitted, the response includes all of your distributions in the AWS Region where
      the request is made.</p>")
    distributionName: option<resourceName>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetDistributions</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of objects that describe your distributions.</p>")
    distributions: option<distributionList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetDistributionsCommand"
  let make = (~pageToken=?, ~distributionName=?, ()) =>
    new({pageToken: pageToken, distributionName: distributionName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerServiceDeployments = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container service for which to return deployments.</p>")
    serviceName: containerServiceName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe deployments for a container service.</p>")
    deployments: option<containerServiceDeploymentList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetContainerServiceDeploymentsCommand"
  let make = (~serviceName, ()) => new({serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContainerServiceDeployment = {
  type t
  type request = {
    @ocaml.doc("<p>An object that describes the settings of the public endpoint for the container
      service.</p>")
    publicEndpoint: option<endpointRequest>,
    @ocaml.doc("<p>An object that describes the settings of the containers that will be launched on the
      container service.</p>")
    containers: option<containerMap>,
    @ocaml.doc("<p>The name of the container service for which to create the deployment.</p>")
    serviceName: containerServiceName,
  }
  type response = {
    @ocaml.doc("<p>An object that describes a container service.</p>")
    containerService: option<containerService>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateContainerServiceDeploymentCommand"
  let make = (~serviceName, ~publicEndpoint=?, ~containers=?, ()) =>
    new({publicEndpoint: publicEndpoint, containers: containers, serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateContainerService = {
  type t
  type request = {
    @ocaml.doc("<p>An object that describes a deployment for the container service.</p>

         <p>A deployment specifies the containers that will be launched on the container service and
      their settings, such as the ports to open, the environment variables to apply, and the launch
      command to run. It also specifies the container that will serve as the public endpoint of the
      deployment and its settings, such as the HTTP or HTTPS port to use, and the health check
      configuration.</p>")
    deployment: option<containerServiceDeploymentRequest>,
    @ocaml.doc("<p>The public domain names to use with the container service, such as
        <code>example.com</code> and <code>www.example.com</code>.</p>

         <p>You can specify up to four public domain names for a container service. The domain names
      that you specify are used when you create a deployment with a container configured as the
      public endpoint of your container service.</p>

         <p>If you don't specify public domain names, then you can use the default domain of the
      container service.</p>

         <important>
            <p>You must create and validate an SSL/TLS certificate before you can use public domain
        names with your container service. Use the <code>CreateCertificate</code> action to create a
        certificate for the public domain names you want to use with your container service.</p>
         </important>

         <p>You can specify public domain names using a string to array map as shown in the example
      later on this page.</p>")
    publicDomainNames: option<containerServicePublicDomains>,
    @ocaml.doc("<p>The tag keys and optional values for the container service.</p>

         <p>For more information about tags in Lightsail, see the <a href=\"https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags\">Lightsail
        Dev Guide</a>.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>The scale specification for the container service.</p>

         <p>The scale specifies the allocated compute nodes of the container service. The
        <code>power</code> and <code>scale</code> of a container service makes up its configured
      capacity. To determine the monthly price of your container service, multiply the base price of
      the <code>power</code> with the <code>scale</code> (the number of nodes) of the
      service.</p>")
    scale: containerServiceScale,
    @ocaml.doc("<p>The power specification for the container service.</p>

         <p>The power specifies the amount of memory, vCPUs, and base monthly cost of each node of the
      container service. The <code>power</code> and <code>scale</code> of a container service makes
      up its configured capacity. To determine the monthly price of your container service, multiply
      the base price of the <code>power</code> with the <code>scale</code> (the number of nodes) of
      the service.</p>

         <p>Use the <code>GetContainerServicePowers</code> action to get a list of power options that
      you can specify using this parameter, and their base monthly cost.</p>")
    power: containerServicePowerName,
    @ocaml.doc("<p>The name for the container service.</p>

         <p>The name that you specify for your container service will make up part of its default
      domain. The default domain of a container service is typically
        <code>https://<ServiceName>.<RandomGUID>.<AWSRegion>.cs.amazonlightsail.com</code>.
      If the name of your container service is <code>container-service-1</code>, and it's located in
      the US East (Ohio) AWS region (<code>us-east-2</code>), then the domain for your container
      service will be like the following example:
        <code>https://container-service-1.ur4EXAMPLE2uq.us-east-2.cs.amazonlightsail.com</code>
         </p>

         <p>The following are the requirements for container service names:</p>

         <ul>
            <li>
               <p>Must be unique within each AWS Region in your Lightsail account.</p>
            </li>
            <li>
               <p>Must contain 1 to 63 characters.</p>
            </li>
            <li>
               <p>Must contain only alphanumeric characters and hyphens.</p>
            </li>
            <li>
               <p>A hyphen (-) can separate words but cannot be at the start or end of the name.</p>
            </li>
         </ul>")
    serviceName: containerServiceName,
  }
  type response = {
    @ocaml.doc("<p>An object that describes a container service.</p>")
    containerService: option<containerService>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "CreateContainerServiceCommand"
  let make = (~scale, ~power, ~serviceName, ~deployment=?, ~publicDomainNames=?, ~tags=?, ()) =>
    new({
      deployment: deployment,
      publicDomainNames: publicDomainNames,
      tags: tags,
      scale: scale,
      power: power,
      serviceName: serviceName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstanceSnapshots = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetInstanceSnapshots</code> request. If your
      results are paginated, the response will return a next page token that you can specify as the
      page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetInstanceSnapshots</code> request
      and specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of key-value pairs containing information about the results of your get instance
      snapshots request.</p>")
    instanceSnapshots: option<instanceSnapshotList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetInstanceSnapshotsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstance = {
  type t
  type request = {@ocaml.doc("<p>The name of the instance.</p>") instanceName: resourceName}
  type response = {
    @ocaml.doc(
      "<p>An array of key-value pairs containing information about the specified instance.</p>"
    )
    instance: option<instance>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetInstanceCommand"
  let make = (~instanceName, ()) => new({instanceName: instanceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetExportSnapshotRecords = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetExportSnapshotRecords</code> request. If
      your results are paginated, the response will return a next page token that you can specify as
      the page token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetExportSnapshotRecords</code>
      request and specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>A list of objects describing the export snapshot records.</p>")
    exportSnapshotRecords: option<exportSnapshotRecordList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetExportSnapshotRecordsCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetContainerServices = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the container service for which to return information.</p>

         <p>When omitted, the response includes all of your container services in the AWS Region
      where the request is made.</p>")
    serviceName: option<containerServiceName>,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe one or more container services.</p>")
    containerServices: option<containerServiceList>,
  }
  @module("@aws-sdk/client-lightsail") @new
  external new: request => t = "GetContainerServicesCommand"
  let make = (~serviceName=?, ()) => new({serviceName: serviceName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateCertificate = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys and optional values to add to the certificate during create.</p>
         <p>Use the <code>TagResource</code> action to tag a resource after it's created.</p>")
    tags: option<tagList_>,
    @ocaml.doc("<p>An array of strings that specify the alternate domains (e.g., <code>example2.com</code>)
      and subdomains (e.g., <code>blog.example.com</code>) for the certificate.</p>
         <p>You can specify a maximum of nine alternate domains (in addition to the primary domain
      name).</p>
         <p>Wildcard domain entries (e.g., <code>*.example.com</code>) are not supported.</p>")
    subjectAlternativeNames: option<subjectAlternativeNameList>,
    @ocaml.doc("<p>The domain name (e.g., <code>example.com</code>) for the certificate.</p>")
    domainName: domainName,
    @ocaml.doc("<p>The name for the certificate.</p>") certificateName: certificateName,
  }
  type response = {
    @ocaml.doc("<p>An array of objects that describe the result of the action, such as the status of the
      request, the timestamp of the request, and the resources affected by the request.</p>")
    operations: option<operationList>,
    @ocaml.doc("<p>An object that describes the certificate created.</p>")
    certificate: option<certificateSummary>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "CreateCertificateCommand"
  let make = (~domainName, ~certificateName, ~tags=?, ~subjectAlternativeNames=?, ()) =>
    new({
      tags: tags,
      subjectAlternativeNames: subjectAlternativeNames,
      domainName: domainName,
      certificateName: certificateName,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInstances = {
  type t
  type request = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>To get a page token, perform an initial <code>GetInstances</code> request. If your results
      are paginated, the response will return a next page token that you can specify as the page
      token in a subsequent request.</p>")
    pageToken: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>The token to advance to the next page of results from your request.</p>
         <p>A next page token is not returned if there are no more results to display.</p>
         <p>To get the next page of results, perform another <code>GetInstances</code> request and
      specify the next page token using the <code>pageToken</code> parameter.</p>")
    nextPageToken: option<string_>,
    @ocaml.doc("<p>An array of key-value pairs containing information about your instances.</p>")
    instances: option<instanceList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetInstancesCommand"
  let make = (~pageToken=?, ()) => new({pageToken: pageToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCertificates = {
  type t
  type request = {
    @ocaml.doc("<p>The name for the certificate for which to return information.</p>
         <p>When omitted, the response includes all of your certificates in the AWS Region where the
      request is made.</p>")
    certificateName: option<certificateName>,
    @ocaml.doc("<p>Indicates whether to include detailed information about the certificates in the
      response.</p>
         <p>When omitted, the response includes only the certificate names, Amazon Resource Names
      (ARNs), domain names, and tags.</p>")
    includeCertificateDetails: option<includeCertificateDetails>,
    @ocaml.doc("<p>The status of the certificates for which to return information.</p>
         <p>For example, specify <code>ISSUED</code> to return only certificates with an
        <code>ISSUED</code> status.</p>
         <p>When omitted, the response includes all of your certificates in the AWS Region where the
      request is made, regardless of their current status.</p>")
    certificateStatuses: option<certificateStatusList>,
  }
  type response = {
    @ocaml.doc("<p>An object that describes certificates.</p>")
    certificates: option<certificateSummaryList>,
  }
  @module("@aws-sdk/client-lightsail") @new external new: request => t = "GetCertificatesCommand"
  let make = (~certificateName=?, ~includeCertificateDetails=?, ~certificateStatuses=?, ()) =>
    new({
      certificateName: certificateName,
      includeCertificateDetails: includeCertificateDetails,
      certificateStatuses: certificateStatuses,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
