type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-guardduty") @new
external createClient: unit => awsServiceClient = "GuardDutyClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type usageStatisticType = [
  | @as("TOP_RESOURCES") #TOP_RESOURCES
  | @as("SUM_BY_RESOURCE") #SUM_BY_RESOURCE
  | @as("SUM_BY_DATA_SOURCE") #SUM_BY_DATA_SOURCE
  | @as("SUM_BY_ACCOUNT") #SUM_BY_ACCOUNT
]
type timestamp_ = Js.Date.t
type threatIntelSetStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETE_PENDING") #DELETE_PENDING
  | @as("ERROR") #ERROR
  | @as("DEACTIVATING") #DEACTIVATING
  | @as("ACTIVE") #ACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("INACTIVE") #INACTIVE
]
type threatIntelSetFormat = [
  | @as("FIRE_EYE") #FIRE_EYE
  | @as("PROOF_POINT") #PROOF_POINT
  | @as("ALIEN_VAULT") #ALIEN_VAULT
  | @as("OTX_CSV") #OTX_CSV
  | @as("STIX") #STIX
  | @as("TXT") #TXT
]
type tagValue = string
type tagKey = string
type string_ = string
type publishingStatus = [
  | @as("STOPPED") #STOPPED
  | @as("UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY") #UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY
  | @as("PUBLISHING") #PUBLISHING
  | @as("PENDING_VERIFICATION") #PENDING_VERIFICATION
]
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type name = string
type maxResults = int
type long = float
type location = string
type ipSetStatus = [
  | @as("DELETED") #DELETED
  | @as("DELETE_PENDING") #DELETE_PENDING
  | @as("ERROR") #ERROR
  | @as("DEACTIVATING") #DEACTIVATING
  | @as("ACTIVE") #ACTIVE
  | @as("ACTIVATING") #ACTIVATING
  | @as("INACTIVE") #INACTIVE
]
type ipSetFormat = [
  | @as("FIRE_EYE") #FIRE_EYE
  | @as("PROOF_POINT") #PROOF_POINT
  | @as("ALIEN_VAULT") #ALIEN_VAULT
  | @as("OTX_CSV") #OTX_CSV
  | @as("STIX") #STIX
  | @as("TXT") #TXT
]
type integer_ = int
type guardDutyArn = string
type findingType = string
type findingStatisticType = [@as("COUNT_BY_SEVERITY") #COUNT_BY_SEVERITY]
type findingPublishingFrequency = [
  | @as("SIX_HOURS") #SIX_HOURS
  | @as("ONE_HOUR") #ONE_HOUR
  | @as("FIFTEEN_MINUTES") #FIFTEEN_MINUTES
]
type findingId = string
type filterRank = int
type filterName = string
type filterDescription = string
type filterAction = [@as("ARCHIVE") #ARCHIVE | @as("NOOP") #NOOP]
type feedback = [@as("NOT_USEFUL") #NOT_USEFUL | @as("USEFUL") #USEFUL]
type email = string
type double = float
type detectorStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type detectorId = string
type destinationType = [@as("S3") #S3]
type dataSourceStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type dataSource = [
  | @as("S3_LOGS") #S3_LOGS
  | @as("DNS_LOGS") #DNS_LOGS
  | @as("CLOUD_TRAIL") #CLOUD_TRAIL
  | @as("FLOW_LOGS") #FLOW_LOGS
]
type clientToken = string
type boolean_ = bool
type adminStatus = [@as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS | @as("ENABLED") #ENABLED]
type accountId = string
type unprocessedAccount = {
  @as("Result") result: string_,
  @as("AccountId") accountId: accountId,
}
type total = {
  @as("Unit") unit_: option<string_>,
  @as("Amount") amount: option<string_>,
}
type threatNames = array<string_>
type threatIntelSetIds = array<string_>
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<string_>,
  @as("Key") key: option<string_>,
}
type sortCriteria = {
  @as("OrderBy") orderBy: option<orderBy>,
  @as("AttributeName") attributeName: option<string_>,
}
type securityGroup = {
  @as("GroupName") groupName: option<string_>,
  @as("GroupId") groupId: option<string_>,
}
type s3LogsConfigurationResult = {@as("Status") status: dataSourceStatus}
type s3LogsConfiguration = {@as("Enable") enable: boolean_}
type resourceList = array<string_>
type remotePortDetails = {
  @as("PortName") portName: option<string_>,
  @as("Port") port: option<integer_>,
}
type productCode = {
  @as("ProductType") productType: option<string_>,
  @as("Code") code: option<string_>,
}
type privateIpAddressDetails = {
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
}
type owner = {@as("Id") id: option<string_>}
type organizationS3LogsConfigurationResult = {@as("AutoEnable") autoEnable: boolean_}
type organizationS3LogsConfiguration = {@as("AutoEnable") autoEnable: boolean_}
type organization = {
  @as("Org") org: option<string_>,
  @as("Isp") isp: option<string_>,
  @as("AsnOrg") asnOrg: option<string_>,
  @as("Asn") asn: option<string_>,
}
type notEquals = array<string_>
type neq = array<string_>
type member = {
  @as("UpdatedAt") updatedAt: string_,
  @as("InvitedAt") invitedAt: option<string_>,
  @as("RelationshipStatus") relationshipStatus: string_,
  @as("Email") email: email,
  @as("MasterId") masterId: string_,
  @as("DetectorId") detectorId: option<detectorId>,
  @as("AccountId") accountId: accountId,
}
type master = {
  @as("InvitedAt") invitedAt: option<string_>,
  @as("RelationshipStatus") relationshipStatus: option<string_>,
  @as("InvitationId") invitationId: option<string_>,
  @as("AccountId") accountId: option<accountId>,
}
type localPortDetails = {
  @as("PortName") portName: option<string_>,
  @as("Port") port: option<integer_>,
}
type localIpDetails = {@as("IpAddressV4") ipAddressV4: option<string_>}
type ipv6Addresses = array<string_>
type ipSetIds = array<string_>
type invitation = {
  @as("InvitedAt") invitedAt: option<string_>,
  @as("RelationshipStatus") relationshipStatus: option<string_>,
  @as("InvitationId") invitationId: option<string_>,
  @as("AccountId") accountId: option<accountId>,
}
type iamInstanceProfile = {
  @as("Id") id: option<string_>,
  @as("Arn") arn: option<string_>,
}
type geoLocation = {
  @as("Lon") lon: option<double>,
  @as("Lat") lat: option<double>,
}
type flowLogsConfigurationResult = {@as("Status") status: dataSourceStatus}
type findingTypes = array<findingType>
type findingStatisticTypes = array<findingStatisticType>
type findingIds = array<findingId>
type filterNames = array<filterName>
type equals = array<string_>
type eq = array<string_>
type domainDetails = {@as("Domain") domain: option<string_>}
type dnsRequestAction = {@as("Domain") domain: option<string_>}
type detectorIds = array<detectorId>
type destinationProperties = {
  @as("KmsKeyArn") kmsKeyArn: option<string_>,
  @as("DestinationArn") destinationArn: option<string_>,
}
type destination = {
  @as("Status") status: publishingStatus,
  @as("DestinationType") destinationType: destinationType,
  @as("DestinationId") destinationId: string_,
}
type defaultServerSideEncryption = {
  @as("KmsMasterKeyArn") kmsMasterKeyArn: option<string_>,
  @as("EncryptionType") encryptionType: option<string_>,
}
type dataSourceList = array<dataSource>
type dnslogsConfigurationResult = {@as("Status") status: dataSourceStatus}
type country = {
  @as("CountryName") countryName: option<string_>,
  @as("CountryCode") countryCode: option<string_>,
}
type countBySeverity = Js.Dict.t<integer_>
type cloudTrailConfigurationResult = {@as("Status") status: dataSourceStatus}
type city = {@as("CityName") cityName: option<string_>}
type bucketPolicy = {
  @as("AllowsPublicWriteAccess") allowsPublicWriteAccess: option<boolean_>,
  @as("AllowsPublicReadAccess") allowsPublicReadAccess: option<boolean_>,
}
type blockPublicAccess = {
  @as("BlockPublicPolicy") blockPublicPolicy: option<boolean_>,
  @as("BlockPublicAcls") blockPublicAcls: option<boolean_>,
  @as("RestrictPublicBuckets") restrictPublicBuckets: option<boolean_>,
  @as("IgnorePublicAcls") ignorePublicAcls: option<boolean_>,
}
type adminAccount = {
  @as("AdminStatus") adminStatus: option<adminStatus>,
  @as("AdminAccountId") adminAccountId: option<string_>,
}
type accountIds = array<accountId>
type accountDetail = {
  @as("Email") email: email,
  @as("AccountId") accountId: accountId,
}
type accessKeyDetails = {
  @as("UserType") userType: option<string_>,
  @as("UserName") userName: option<string_>,
  @as("PrincipalId") principalId: option<string_>,
  @as("AccessKeyId") accessKeyId: option<string_>,
}
type accessControlList = {
  @as("AllowsPublicWriteAccess") allowsPublicWriteAccess: option<boolean_>,
  @as("AllowsPublicReadAccess") allowsPublicReadAccess: option<boolean_>,
}
type usageResourceResult = {
  @as("Total") total: option<total>,
  @as("Resource") resource: option<string_>,
}
type usageDataSourceResult = {
  @as("Total") total: option<total>,
  @as("DataSource") dataSource: option<dataSource>,
}
type usageCriteria = {
  @as("Resources") resources: option<resourceList>,
  @as("DataSources") dataSources: dataSourceList,
  @as("AccountIds") accountIds: option<accountIds>,
}
type usageAccountResult = {
  @as("Total") total: option<total>,
  @as("AccountId") accountId: option<accountId>,
}
type unprocessedAccounts = array<unprocessedAccount>
type threatIntelligenceDetail = {
  @as("ThreatNames") threatNames: option<threatNames>,
  @as("ThreatListName") threatListName: option<string_>,
}
type tags = array<tag>
type securityGroups = array<securityGroup>
type remoteIpDetails = {
  @as("Organization") organization: option<organization>,
  @as("IpAddressV4") ipAddressV4: option<string_>,
  @as("GeoLocation") geoLocation: option<geoLocation>,
  @as("Country") country: option<country>,
  @as("City") city: option<city>,
}
type productCodes = array<productCode>
type privateIpAddresses = array<privateIpAddressDetails>
type organizationDataSourceConfigurationsResult = {
  @as("S3Logs") s3Logs: organizationS3LogsConfigurationResult,
}
type organizationDataSourceConfigurations = {
  @as("S3Logs") s3Logs: option<organizationS3LogsConfiguration>,
}
type members = array<member>
type invitations = array<invitation>
type findingStatistics = {@as("CountBySeverity") countBySeverity: option<countBySeverity>}
type destinations = array<destination>
type dataSourceConfigurationsResult = {
  @as("S3Logs") s3Logs: s3LogsConfigurationResult,
  @as("FlowLogs") flowLogs: flowLogsConfigurationResult,
  @as("DNSLogs") dnslogs: dnslogsConfigurationResult,
  @as("CloudTrail") cloudTrail: cloudTrailConfigurationResult,
}
type dataSourceConfigurations = {@as("S3Logs") s3Logs: option<s3LogsConfiguration>}
type condition = {
  @as("LessThanOrEqual") lessThanOrEqual: option<long>,
  @as("LessThan") lessThan: option<long>,
  @as("GreaterThanOrEqual") greaterThanOrEqual: option<long>,
  @as("GreaterThan") greaterThan: option<long>,
  @as("NotEquals") notEquals: option<notEquals>,
  @as("Equals") equals: option<equals>,
  @as("Lte") lte: option<integer_>,
  @as("Lt") lt: option<integer_>,
  @as("Gte") gte: option<integer_>,
  @as("Gt") gt: option<integer_>,
  @as("Neq") neq: option<neq>,
  @as("Eq") eq: option<eq>,
}
type bucketLevelPermissions = {
  @as("BlockPublicAccess") blockPublicAccess: option<blockPublicAccess>,
  @as("BucketPolicy") bucketPolicy: option<bucketPolicy>,
  @as("AccessControlList") accessControlList: option<accessControlList>,
}
type adminAccounts = array<adminAccount>
type accountLevelPermissions = {
  @as("BlockPublicAccess") blockPublicAccess: option<blockPublicAccess>,
}
type accountDetails = array<accountDetail>
type usageResourceResultList = array<usageResourceResult>
type usageDataSourceResultList = array<usageDataSourceResult>
type usageAccountResultList = array<usageAccountResult>
type threatIntelligenceDetails = array<threatIntelligenceDetail>
type portProbeDetail = {
  @as("RemoteIpDetails") remoteIpDetails: option<remoteIpDetails>,
  @as("LocalIpDetails") localIpDetails: option<localIpDetails>,
  @as("LocalPortDetails") localPortDetails: option<localPortDetails>,
}
type permissionConfiguration = {
  @as("AccountLevelPermissions") accountLevelPermissions: option<accountLevelPermissions>,
  @as("BucketLevelPermissions") bucketLevelPermissions: option<bucketLevelPermissions>,
}
type networkInterface = {
  @as("VpcId") vpcId: option<string_>,
  @as("SubnetId") subnetId: option<string_>,
  @as("SecurityGroups") securityGroups: option<securityGroups>,
  @as("PublicIp") publicIp: option<string_>,
  @as("PublicDnsName") publicDnsName: option<string_>,
  @as("PrivateIpAddresses") privateIpAddresses: option<privateIpAddresses>,
  @as("PrivateIpAddress") privateIpAddress: option<string_>,
  @as("PrivateDnsName") privateDnsName: option<string_>,
  @as("NetworkInterfaceId") networkInterfaceId: option<string_>,
  @as("Ipv6Addresses") ipv6Addresses: option<ipv6Addresses>,
}
type networkConnectionAction = {
  @as("RemotePortDetails") remotePortDetails: option<remotePortDetails>,
  @as("RemoteIpDetails") remoteIpDetails: option<remoteIpDetails>,
  @as("LocalIpDetails") localIpDetails: option<localIpDetails>,
  @as("Protocol") protocol: option<string_>,
  @as("LocalPortDetails") localPortDetails: option<localPortDetails>,
  @as("ConnectionDirection") connectionDirection: option<string_>,
  @as("Blocked") blocked: option<boolean_>,
}
type memberDataSourceConfiguration = {
  @as("DataSources") dataSources: dataSourceConfigurationsResult,
  @as("AccountId") accountId: accountId,
}
type criterion = Js.Dict.t<condition>
type awsApiCallAction = {
  @as("ServiceName") serviceName: option<string_>,
  @as("RemoteIpDetails") remoteIpDetails: option<remoteIpDetails>,
  @as("ErrorCode") errorCode: option<string_>,
  @as("DomainDetails") domainDetails: option<domainDetails>,
  @as("CallerType") callerType: option<string_>,
  @as("Api") api: option<string_>,
}
type usageStatistics = {
  @as("TopResources") topResources: option<usageResourceResultList>,
  @as("SumByResource") sumByResource: option<usageResourceResultList>,
  @as("SumByDataSource") sumByDataSource: option<usageDataSourceResultList>,
  @as("SumByAccount") sumByAccount: option<usageAccountResultList>,
}
type publicAccess = {
  @as("EffectivePermission") effectivePermission: option<string_>,
  @as("PermissionConfiguration") permissionConfiguration: option<permissionConfiguration>,
}
type portProbeDetails = array<portProbeDetail>
type networkInterfaces = array<networkInterface>
type memberDataSourceConfigurations = array<memberDataSourceConfiguration>
type findingCriteria = {@as("Criterion") criterion: option<criterion>}
type evidence = {
  @as("ThreatIntelligenceDetails") threatIntelligenceDetails: option<threatIntelligenceDetails>,
}
type s3BucketDetail = {
  @as("PublicAccess") publicAccess: option<publicAccess>,
  @as("DefaultServerSideEncryption")
  defaultServerSideEncryption: option<defaultServerSideEncryption>,
  @as("Tags") tags: option<tags>,
  @as("Owner") owner: option<owner>,
  @as("CreatedAt") createdAt: option<timestamp_>,
  @as("Type") type_: option<string_>,
  @as("Name") name: option<string_>,
  @as("Arn") arn: option<string_>,
}
type portProbeAction = {
  @as("PortProbeDetails") portProbeDetails: option<portProbeDetails>,
  @as("Blocked") blocked: option<boolean_>,
}
type instanceDetails = {
  @as("Tags") tags: option<tags>,
  @as("ProductCodes") productCodes: option<productCodes>,
  @as("Platform") platform: option<string_>,
  @as("NetworkInterfaces") networkInterfaces: option<networkInterfaces>,
  @as("LaunchTime") launchTime: option<string_>,
  @as("OutpostArn") outpostArn: option<string_>,
  @as("InstanceType") instanceType: option<string_>,
  @as("InstanceState") instanceState: option<string_>,
  @as("InstanceId") instanceId: option<string_>,
  @as("ImageId") imageId: option<string_>,
  @as("ImageDescription") imageDescription: option<string_>,
  @as("IamInstanceProfile") iamInstanceProfile: option<iamInstanceProfile>,
  @as("AvailabilityZone") availabilityZone: option<string_>,
}
type s3BucketDetails = array<s3BucketDetail>
type action = {
  @as("PortProbeAction") portProbeAction: option<portProbeAction>,
  @as("NetworkConnectionAction") networkConnectionAction: option<networkConnectionAction>,
  @as("DnsRequestAction") dnsRequestAction: option<dnsRequestAction>,
  @as("AwsApiCallAction") awsApiCallAction: option<awsApiCallAction>,
  @as("ActionType") actionType: option<string_>,
}
type service = {
  @as("UserFeedback") userFeedback: option<string_>,
  @as("ServiceName") serviceName: option<string_>,
  @as("ResourceRole") resourceRole: option<string_>,
  @as("EventLastSeen") eventLastSeen: option<string_>,
  @as("EventFirstSeen") eventFirstSeen: option<string_>,
  @as("DetectorId") detectorId: option<detectorId>,
  @as("Count") count: option<integer_>,
  @as("Archived") archived: option<boolean_>,
  @as("Evidence") evidence: option<evidence>,
  @as("Action") action: option<action>,
}
type resource = {
  @as("ResourceType") resourceType: option<string_>,
  @as("InstanceDetails") instanceDetails: option<instanceDetails>,
  @as("S3BucketDetails") s3BucketDetails: option<s3BucketDetails>,
  @as("AccessKeyDetails") accessKeyDetails: option<accessKeyDetails>,
}
type finding = {
  @as("UpdatedAt") updatedAt: string_,
  @as("Type") type_: findingType,
  @as("Title") title: option<string_>,
  @as("Severity") severity: double,
  @as("Service") service: option<service>,
  @as("SchemaVersion") schemaVersion: string_,
  @as("Resource") resource: resource,
  @as("Region") region: string_,
  @as("Partition") partition: option<string_>,
  @as("Id") id: string_,
  @as("Description") description: option<string_>,
  @as("CreatedAt") createdAt: string_,
  @as("Confidence") confidence: option<double>,
  @as("Arn") arn: string_,
  @as("AccountId") accountId: string_,
}
type findings = array<finding>

module UpdateThreatIntelSet = {
  type t
  type request = {
    @as("Activate") activate: option<boolean_>,
    @as("Location") location: option<location>,
    @as("Name") name: option<name>,
    @as("ThreatIntelSetId") threatIntelSetId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateThreatIntelSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateIPSet = {
  type t
  type request = {
    @as("Activate") activate: option<boolean_>,
    @as("Location") location: option<location>,
    @as("Name") name: option<name>,
    @as("IpSetId") ipSetId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UpdateIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetInvitationsCount = {
  type t
  type request = unit
  type response = {@as("InvitationsCount") invitationsCount: option<integer_>}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "GetInvitationsCountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module EnableOrganizationAdminAccount = {
  type t
  type request = {@as("AdminAccountId") adminAccountId: string_}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "EnableOrganizationAdminAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateFromMasterAccount = {
  type t
  type request = {@as("DetectorId") detectorId: detectorId}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DisassociateFromMasterAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisableOrganizationAdminAccount = {
  type t
  type request = {@as("AdminAccountId") adminAccountId: string_}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DisableOrganizationAdminAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteThreatIntelSet = {
  type t
  type request = {
    @as("ThreatIntelSetId") threatIntelSetId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DeleteThreatIntelSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeletePublishingDestination = {
  type t
  type request = {
    @as("DestinationId") destinationId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DeletePublishingDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteIPSet = {
  type t
  type request = {
    @as("IpSetId") ipSetId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteFilter = {
  type t
  type request = {
    @as("FilterName") filterName: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDetector = {
  type t
  type request = {@as("DetectorId") detectorId: detectorId}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteDetectorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AcceptInvitation = {
  type t
  type request = {
    @as("InvitationId") invitationId: string_,
    @as("MasterId") masterId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "AcceptInvitationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdatePublishingDestination = {
  type t
  type request = {
    @as("DestinationProperties") destinationProperties: option<destinationProperties>,
    @as("DestinationId") destinationId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdatePublishingDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFindingsFeedback = {
  type t
  type request = {
    @as("Comments") comments: option<string_>,
    @as("Feedback") feedback: feedback,
    @as("FindingIds") findingIds: findingIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateFindingsFeedbackCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: guardDutyArn,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UnarchiveFindings = {
  type t
  type request = {
    @as("FindingIds") findingIds: findingIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UnarchiveFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagMap,
    @as("ResourceArn") resourceArn: guardDutyArn,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListThreatIntelSets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("ThreatIntelSetIds") threatIntelSetIds: threatIntelSetIds,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListThreatIntelSetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: guardDutyArn}
  type response = {@as("Tags") tags: option<tagMap>}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListIPSets = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("IpSetIds") ipSetIds: ipSetIds,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListIPSetsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFilters = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("FilterNames") filterNames: filterNames,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListFiltersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListDetectors = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("DetectorIds") detectorIds: detectorIds,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListDetectorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetThreatIntelSet = {
  type t
  type request = {
    @as("ThreatIntelSetId") threatIntelSetId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("Tags") tags: option<tagMap>,
    @as("Status") status: threatIntelSetStatus,
    @as("Location") location: location,
    @as("Format") format: threatIntelSetFormat,
    @as("Name") name: name,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetThreatIntelSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMasterAccount = {
  type t
  type request = {@as("DetectorId") detectorId: detectorId}
  type response = {@as("Master") master: master}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetMasterAccountCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetIPSet = {
  type t
  type request = {
    @as("IpSetId") ipSetId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("Tags") tags: option<tagMap>,
    @as("Status") status: ipSetStatus,
    @as("Location") location: location,
    @as("Format") format: ipSetFormat,
    @as("Name") name: name,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribePublishingDestination = {
  type t
  type request = {
    @as("DestinationId") destinationId: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("DestinationProperties") destinationProperties: destinationProperties,
    @as("PublishingFailureStartTimestamp") publishingFailureStartTimestamp: long,
    @as("Status") status: publishingStatus,
    @as("DestinationType") destinationType: destinationType,
    @as("DestinationId") destinationId: string_,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DescribePublishingDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateThreatIntelSet = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Activate") activate: boolean_,
    @as("Location") location: location,
    @as("Format") format: threatIntelSetFormat,
    @as("Name") name: name,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("ThreatIntelSetId") threatIntelSetId: string_}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "CreateThreatIntelSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSampleFindings = {
  type t
  type request = {
    @as("FindingTypes") findingTypes: option<findingTypes>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "CreateSampleFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreatePublishingDestination = {
  type t
  type request = {
    @as("ClientToken") clientToken: option<clientToken>,
    @as("DestinationProperties") destinationProperties: destinationProperties,
    @as("DestinationType") destinationType: destinationType,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("DestinationId") destinationId: string_}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "CreatePublishingDestinationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateIPSet = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Activate") activate: boolean_,
    @as("Location") location: location,
    @as("Format") format: ipSetFormat,
    @as("Name") name: name,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("IpSetId") ipSetId: string_}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateIPSetCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ArchiveFindings = {
  type t
  type request = {
    @as("FindingIds") findingIds: findingIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ArchiveFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateOrganizationConfiguration = {
  type t
  type request = {
    @as("DataSources") dataSources: option<organizationDataSourceConfigurations>,
    @as("AutoEnable") autoEnable: boolean_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateOrganizationConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateMemberDetectors = {
  type t
  type request = {
    @as("DataSources") dataSources: option<dataSourceConfigurations>,
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "UpdateMemberDetectorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDetector = {
  type t
  type request = {
    @as("DataSources") dataSources: option<dataSourceConfigurations>,
    @as("FindingPublishingFrequency")
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @as("Enable") enable: option<boolean_>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UpdateDetectorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StopMonitoringMembers = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "StopMonitoringMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module StartMonitoringMembers = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "StartMonitoringMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListPublishingDestinations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Destinations") destinations: destinations,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListPublishingDestinationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListOrganizationAdminAccounts = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("AdminAccounts") adminAccounts: option<adminAccounts>,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "ListOrganizationAdminAccountsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListMembers = {
  type t
  type request = {
    @as("OnlyAssociated") onlyAssociated: option<string_>,
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Members") members: option<members>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListInvitations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Invitations") invitations: option<invitations>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListInvitationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module InviteMembers = {
  type t
  type request = {
    @as("Message") message: option<string_>,
    @as("DisableEmailNotification") disableEmailNotification: option<boolean_>,
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "InviteMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMembers = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts,
    @as("Members") members: members,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDetector = {
  type t
  type request = {@as("DetectorId") detectorId: detectorId}
  type response = {
    @as("Tags") tags: option<tagMap>,
    @as("DataSources") dataSources: option<dataSourceConfigurationsResult>,
    @as("UpdatedAt") updatedAt: option<string_>,
    @as("Status") status: detectorStatus,
    @as("ServiceRole") serviceRole: string_,
    @as("FindingPublishingFrequency")
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @as("CreatedAt") createdAt: option<string_>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetDetectorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateMembers = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DisassociateMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeOrganizationConfiguration = {
  type t
  type request = {@as("DetectorId") detectorId: detectorId}
  type response = {
    @as("DataSources") dataSources: option<organizationDataSourceConfigurationsResult>,
    @as("MemberAccountLimitReached") memberAccountLimitReached: boolean_,
    @as("AutoEnable") autoEnable: boolean_,
  }
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "DescribeOrganizationConfigurationCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteMembers = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteInvitations = {
  type t
  type request = {@as("AccountIds") accountIds: accountIds}
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeleteInvitationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeclineInvitations = {
  type t
  type request = {@as("AccountIds") accountIds: accountIds}
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "DeclineInvitationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateMembers = {
  type t
  type request = {
    @as("AccountDetails") accountDetails: accountDetails,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateMembersCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDetector = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("DataSources") dataSources: option<dataSourceConfigurations>,
    @as("FindingPublishingFrequency")
    findingPublishingFrequency: option<findingPublishingFrequency>,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("Enable") enable: boolean_,
  }
  type response = {@as("DetectorId") detectorId: option<detectorId>}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateDetectorCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateFilter = {
  type t
  type request = {
    @as("FindingCriteria") findingCriteria: option<findingCriteria>,
    @as("Rank") rank: option<filterRank>,
    @as("Action") action: option<filterAction>,
    @as("Description") description: option<filterDescription>,
    @as("FilterName") filterName: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("Name") name: filterName}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "UpdateFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListFindings = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("SortCriteria") sortCriteria: option<sortCriteria>,
    @as("FindingCriteria") findingCriteria: option<findingCriteria>,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("FindingIds") findingIds: findingIds,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "ListFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetUsageStatistics = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Unit") unit_: option<string_>,
    @as("UsageCriteria") usageCriteria: usageCriteria,
    @as("UsageStatisticType") usageStatisticType: usageStatisticType,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("UsageStatistics") usageStatistics: option<usageStatistics>,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetUsageStatisticsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetMemberDetectors = {
  type t
  type request = {
    @as("AccountIds") accountIds: accountIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("UnprocessedAccounts") unprocessedAccounts: unprocessedAccounts,
    @as("MemberDataSourceConfigurations")
    memberDataSourceConfigurations: memberDataSourceConfigurations,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetMemberDetectorsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFindingsStatistics = {
  type t
  type request = {
    @as("FindingCriteria") findingCriteria: option<findingCriteria>,
    @as("FindingStatisticTypes") findingStatisticTypes: findingStatisticTypes,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("FindingStatistics") findingStatistics: findingStatistics}
  @module("@aws-sdk/client-guardduty") @new
  external new: request => t = "GetFindingsStatisticsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFilter = {
  type t
  type request = {
    @as("FilterName") filterName: string_,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {
    @as("Tags") tags: option<tagMap>,
    @as("FindingCriteria") findingCriteria: findingCriteria,
    @as("Rank") rank: option<filterRank>,
    @as("Action") action: filterAction,
    @as("Description") description: option<filterDescription>,
    @as("Name") name: filterName,
  }
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateFilter = {
  type t
  type request = {
    @as("Tags") tags: option<tagMap>,
    @as("ClientToken") clientToken: option<clientToken>,
    @as("FindingCriteria") findingCriteria: findingCriteria,
    @as("Rank") rank: option<filterRank>,
    @as("Action") action: option<filterAction>,
    @as("Description") description: option<filterDescription>,
    @as("Name") name: filterName,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("Name") name: filterName}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "CreateFilterCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetFindings = {
  type t
  type request = {
    @as("SortCriteria") sortCriteria: option<sortCriteria>,
    @as("FindingIds") findingIds: findingIds,
    @as("DetectorId") detectorId: detectorId,
  }
  type response = {@as("Findings") findings: findings}
  @module("@aws-sdk/client-guardduty") @new external new: request => t = "GetFindingsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
