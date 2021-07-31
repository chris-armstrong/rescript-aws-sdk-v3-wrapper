type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type usageStatisticType = [@as("TOP_RESOURCES") #TOP_RESOURCES | @as("SUM_BY_RESOURCE") #SUM_BY_RESOURCE | @as("SUM_BY_DATA_SOURCE") #SUM_BY_DATA_SOURCE | @as("SUM_BY_ACCOUNT") #SUM_BY_ACCOUNT]
type amazonawsTimestamp = Js.Date.t;
type threatIntelSetStatus = [@as("DELETED") #DELETED | @as("DELETE_PENDING") #DELETE_PENDING | @as("ERROR") #ERROR | @as("DEACTIVATING") #DEACTIVATING | @as("ACTIVE") #ACTIVE | @as("ACTIVATING") #ACTIVATING | @as("INACTIVE") #INACTIVE]
type threatIntelSetFormat = [@as("FIRE_EYE") #FIRE_EYE | @as("PROOF_POINT") #PROOF_POINT | @as("ALIEN_VAULT") #ALIEN_VAULT | @as("OTX_CSV") #OTX_CSV | @as("STIX") #STIX | @as("TXT") #TXT]
type tagValue = string
type tagKey = string
type amazonawsString = string
type publishingStatus = [@as("STOPPED") #STOPPED | @as("UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY") #UNABLE_TO_PUBLISH_FIX_DESTINATION_PROPERTY | @as("PUBLISHING") #PUBLISHING | @as("PENDING_VERIFICATION") #PENDING_VERIFICATION]
type orderBy = [@as("DESC") #DESC | @as("ASC") #ASC]
type name = string
type maxResults = int;
type amazonawsLong = float;
type location = string
type ipSetStatus = [@as("DELETED") #DELETED | @as("DELETE_PENDING") #DELETE_PENDING | @as("ERROR") #ERROR | @as("DEACTIVATING") #DEACTIVATING | @as("ACTIVE") #ACTIVE | @as("ACTIVATING") #ACTIVATING | @as("INACTIVE") #INACTIVE]
type ipSetFormat = [@as("FIRE_EYE") #FIRE_EYE | @as("PROOF_POINT") #PROOF_POINT | @as("ALIEN_VAULT") #ALIEN_VAULT | @as("OTX_CSV") #OTX_CSV | @as("STIX") #STIX | @as("TXT") #TXT]
type amazonawsInteger = int;
type guardDutyArn = string
type findingType = string
type findingStatisticType = [@as("COUNT_BY_SEVERITY") #COUNT_BY_SEVERITY]
type findingPublishingFrequency = [@as("SIX_HOURS") #SIX_HOURS | @as("ONE_HOUR") #ONE_HOUR | @as("FIFTEEN_MINUTES") #FIFTEEN_MINUTES]
type findingId = string
type filterRank = int;
type filterName = string
type filterDescription = string
type filterAction = [@as("ARCHIVE") #ARCHIVE | @as("NOOP") #NOOP]
type feedback = [@as("NOT_USEFUL") #NOT_USEFUL | @as("USEFUL") #USEFUL]
type email = string
type amazonawsDouble = float;
type detectorStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type detectorId = string
type destinationType = [@as("S3") #S3]
type dataSourceStatus = [@as("DISABLED") #DISABLED | @as("ENABLED") #ENABLED]
type dataSource = [@as("S3_LOGS") #S3_LOGS | @as("DNS_LOGS") #DNS_LOGS | @as("CLOUD_TRAIL") #CLOUD_TRAIL | @as("FLOW_LOGS") #FLOW_LOGS]
type clientToken = string
type amazonawsBoolean = bool;
type adminStatus = [@as("DISABLE_IN_PROGRESS") #DISABLE_IN_PROGRESS | @as("ENABLED") #ENABLED]
type accountId = string
type unprocessedAccount = {
@as("Result") result: option<amazonawsString>,
@as("AccountId") accountId: option<accountId>
}
type total = {
@as("Unit") unit: amazonawsString,
@as("Amount") amount: amazonawsString
}
type threatNames = array<amazonawsString>
type threatIntelSetIds = array<amazonawsString>
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: amazonawsString,
@as("Key") key: amazonawsString
}
type sortCriteria = {
@as("OrderBy") orderBy: orderBy,
@as("AttributeName") attributeName: amazonawsString
}
type securityGroup = {
@as("GroupName") groupName: amazonawsString,
@as("GroupId") groupId: amazonawsString
}
type s3LogsConfigurationResult = {
@as("Status") status: option<dataSourceStatus>
}
type s3LogsConfiguration = {
@as("Enable") enable: option<amazonawsBoolean>
}
type resourceList = array<amazonawsString>
type remotePortDetails = {
@as("PortName") portName: amazonawsString,
@as("Port") port: amazonawsInteger
}
type productCode = {
@as("ProductType") productType: amazonawsString,
@as("Code") code: amazonawsString
}
type privateIpAddressDetails = {
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("PrivateDnsName") privateDnsName: amazonawsString
}
type owner = {
@as("Id") id: amazonawsString
}
type organizationS3LogsConfigurationResult = {
@as("AutoEnable") autoEnable: option<amazonawsBoolean>
}
type organizationS3LogsConfiguration = {
@as("AutoEnable") autoEnable: option<amazonawsBoolean>
}
type organization = {
@as("Org") org: amazonawsString,
@as("Isp") isp: amazonawsString,
@as("AsnOrg") asnOrg: amazonawsString,
@as("Asn") asn: amazonawsString
}
type notEquals = array<amazonawsString>
type neq = array<amazonawsString>
type member = {
@as("UpdatedAt") updatedAt: option<amazonawsString>,
@as("InvitedAt") invitedAt: amazonawsString,
@as("RelationshipStatus") relationshipStatus: option<amazonawsString>,
@as("Email") email: option<email>,
@as("MasterId") masterId: option<amazonawsString>,
@as("DetectorId") detectorId: detectorId,
@as("AccountId") accountId: option<accountId>
}
type master = {
@as("InvitedAt") invitedAt: amazonawsString,
@as("RelationshipStatus") relationshipStatus: amazonawsString,
@as("InvitationId") invitationId: amazonawsString,
@as("AccountId") accountId: accountId
}
type localPortDetails = {
@as("PortName") portName: amazonawsString,
@as("Port") port: amazonawsInteger
}
type localIpDetails = {
@as("IpAddressV4") ipAddressV4: amazonawsString
}
type ipv6Addresses = array<amazonawsString>
type ipSetIds = array<amazonawsString>
type invitation = {
@as("InvitedAt") invitedAt: amazonawsString,
@as("RelationshipStatus") relationshipStatus: amazonawsString,
@as("InvitationId") invitationId: amazonawsString,
@as("AccountId") accountId: accountId
}
type iamInstanceProfile = {
@as("Id") id: amazonawsString,
@as("Arn") arn: amazonawsString
}
type geoLocation = {
@as("Lon") lon: amazonawsDouble,
@as("Lat") lat: amazonawsDouble
}
type flowLogsConfigurationResult = {
@as("Status") status: option<dataSourceStatus>
}
type findingTypes = array<findingType>
type findingStatisticTypes = array<findingStatisticType>
type findingIds = array<findingId>
type filterNames = array<filterName>
type equals = array<amazonawsString>
type eq = array<amazonawsString>
type domainDetails = {
@as("Domain") domain: amazonawsString
}
type dnsRequestAction = {
@as("Domain") domain: amazonawsString
}
type detectorIds = array<detectorId>
type destinationProperties = {
@as("KmsKeyArn") kmsKeyArn: amazonawsString,
@as("DestinationArn") destinationArn: amazonawsString
}
type destination = {
@as("Status") status: option<publishingStatus>,
@as("DestinationType") destinationType: option<destinationType>,
@as("DestinationId") destinationId: option<amazonawsString>
}
type defaultServerSideEncryption = {
@as("KmsMasterKeyArn") kmsMasterKeyArn: amazonawsString,
@as("EncryptionType") encryptionType: amazonawsString
}
type dataSourceList = array<dataSource>
type dNSLogsConfigurationResult = {
@as("Status") status: option<dataSourceStatus>
}
type country = {
@as("CountryName") countryName: amazonawsString,
@as("CountryCode") countryCode: amazonawsString
}
type countBySeverity = Js.Dict.t< amazonawsInteger>
type cloudTrailConfigurationResult = {
@as("Status") status: option<dataSourceStatus>
}
type city = {
@as("CityName") cityName: amazonawsString
}
type bucketPolicy = {
@as("AllowsPublicWriteAccess") allowsPublicWriteAccess: amazonawsBoolean,
@as("AllowsPublicReadAccess") allowsPublicReadAccess: amazonawsBoolean
}
type blockPublicAccess = {
@as("BlockPublicPolicy") blockPublicPolicy: amazonawsBoolean,
@as("BlockPublicAcls") blockPublicAcls: amazonawsBoolean,
@as("RestrictPublicBuckets") restrictPublicBuckets: amazonawsBoolean,
@as("IgnorePublicAcls") ignorePublicAcls: amazonawsBoolean
}
type adminAccount = {
@as("AdminStatus") adminStatus: adminStatus,
@as("AdminAccountId") adminAccountId: amazonawsString
}
type accountIds = array<accountId>
type accountDetail = {
@as("Email") email: option<email>,
@as("AccountId") accountId: option<accountId>
}
type accessKeyDetails = {
@as("UserType") userType: amazonawsString,
@as("UserName") userName: amazonawsString,
@as("PrincipalId") principalId: amazonawsString,
@as("AccessKeyId") accessKeyId: amazonawsString
}
type accessControlList = {
@as("AllowsPublicWriteAccess") allowsPublicWriteAccess: amazonawsBoolean,
@as("AllowsPublicReadAccess") allowsPublicReadAccess: amazonawsBoolean
}
type usageResourceResult = {
@as("Total") total: total,
@as("Resource") resource: amazonawsString
}
type usageDataSourceResult = {
@as("Total") total: total,
@as("DataSource") dataSource: dataSource
}
type usageCriteria = {
@as("Resources") resources: resourceList,
@as("DataSources") dataSources: option<dataSourceList>,
@as("AccountIds") accountIds: accountIds
}
type usageAccountResult = {
@as("Total") total: total,
@as("AccountId") accountId: accountId
}
type unprocessedAccounts = array<unprocessedAccount>
type threatIntelligenceDetail = {
@as("ThreatNames") threatNames: threatNames,
@as("ThreatListName") threatListName: amazonawsString
}
type tags = array<tag>
type securityGroups = array<securityGroup>
type remoteIpDetails = {
@as("Organization") organization: organization,
@as("IpAddressV4") ipAddressV4: amazonawsString,
@as("GeoLocation") geoLocation: geoLocation,
@as("Country") country: country,
@as("City") city: city
}
type productCodes = array<productCode>
type privateIpAddresses = array<privateIpAddressDetails>
type organizationDataSourceConfigurationsResult = {
@as("S3Logs") s3Logs: option<organizationS3LogsConfigurationResult>
}
type organizationDataSourceConfigurations = {
@as("S3Logs") s3Logs: organizationS3LogsConfiguration
}
type members = array<member>
type invitations = array<invitation>
type findingStatistics = {
@as("CountBySeverity") countBySeverity: countBySeverity
}
type destinations = array<destination>
type dataSourceConfigurationsResult = {
@as("S3Logs") s3Logs: option<s3LogsConfigurationResult>,
@as("FlowLogs") flowLogs: option<flowLogsConfigurationResult>,
@as("DNSLogs") dNSLogs: option<dNSLogsConfigurationResult>,
@as("CloudTrail") cloudTrail: option<cloudTrailConfigurationResult>
}
type dataSourceConfigurations = {
@as("S3Logs") s3Logs: s3LogsConfiguration
}
type condition = {
@as("LessThanOrEqual") lessThanOrEqual: amazonawsLong,
@as("LessThan") lessThan: amazonawsLong,
@as("GreaterThanOrEqual") greaterThanOrEqual: amazonawsLong,
@as("GreaterThan") greaterThan: amazonawsLong,
@as("NotEquals") notEquals: notEquals,
@as("Equals") equals: equals,
@as("Lte") lte: amazonawsInteger,
@as("Lt") lt: amazonawsInteger,
@as("Gte") gte: amazonawsInteger,
@as("Gt") gt: amazonawsInteger,
@as("Neq") neq: neq,
@as("Eq") eq: eq
}
type bucketLevelPermissions = {
@as("BlockPublicAccess") blockPublicAccess: blockPublicAccess,
@as("BucketPolicy") bucketPolicy: bucketPolicy,
@as("AccessControlList") accessControlList: accessControlList
}
type adminAccounts = array<adminAccount>
type accountLevelPermissions = {
@as("BlockPublicAccess") blockPublicAccess: blockPublicAccess
}
type accountDetails = array<accountDetail>
type usageResourceResultList = array<usageResourceResult>
type usageDataSourceResultList = array<usageDataSourceResult>
type usageAccountResultList = array<usageAccountResult>
type threatIntelligenceDetails = array<threatIntelligenceDetail>
type portProbeDetail = {
@as("RemoteIpDetails") remoteIpDetails: remoteIpDetails,
@as("LocalIpDetails") localIpDetails: localIpDetails,
@as("LocalPortDetails") localPortDetails: localPortDetails
}
type permissionConfiguration = {
@as("AccountLevelPermissions") accountLevelPermissions: accountLevelPermissions,
@as("BucketLevelPermissions") bucketLevelPermissions: bucketLevelPermissions
}
type networkInterface = {
@as("VpcId") vpcId: amazonawsString,
@as("SubnetId") subnetId: amazonawsString,
@as("SecurityGroups") securityGroups: securityGroups,
@as("PublicIp") publicIp: amazonawsString,
@as("PublicDnsName") publicDnsName: amazonawsString,
@as("PrivateIpAddresses") privateIpAddresses: privateIpAddresses,
@as("PrivateIpAddress") privateIpAddress: amazonawsString,
@as("PrivateDnsName") privateDnsName: amazonawsString,
@as("NetworkInterfaceId") networkInterfaceId: amazonawsString,
@as("Ipv6Addresses") ipv6Addresses: ipv6Addresses
}
type networkConnectionAction = {
@as("RemotePortDetails") remotePortDetails: remotePortDetails,
@as("RemoteIpDetails") remoteIpDetails: remoteIpDetails,
@as("LocalIpDetails") localIpDetails: localIpDetails,
@as("Protocol") protocol: amazonawsString,
@as("LocalPortDetails") localPortDetails: localPortDetails,
@as("ConnectionDirection") connectionDirection: amazonawsString,
@as("Blocked") blocked: amazonawsBoolean
}
type memberDataSourceConfiguration = {
@as("DataSources") dataSources: option<dataSourceConfigurationsResult>,
@as("AccountId") accountId: option<accountId>
}
type criterion = Js.Dict.t< condition>
type awsApiCallAction = {
@as("ServiceName") serviceName: amazonawsString,
@as("RemoteIpDetails") remoteIpDetails: remoteIpDetails,
@as("ErrorCode") errorCode: amazonawsString,
@as("DomainDetails") domainDetails: domainDetails,
@as("CallerType") callerType: amazonawsString,
@as("Api") api: amazonawsString
}
type usageStatistics = {
@as("TopResources") topResources: usageResourceResultList,
@as("SumByResource") sumByResource: usageResourceResultList,
@as("SumByDataSource") sumByDataSource: usageDataSourceResultList,
@as("SumByAccount") sumByAccount: usageAccountResultList
}
type publicAccess = {
@as("EffectivePermission") effectivePermission: amazonawsString,
@as("PermissionConfiguration") permissionConfiguration: permissionConfiguration
}
type portProbeDetails = array<portProbeDetail>
type networkInterfaces = array<networkInterface>
type memberDataSourceConfigurations = array<memberDataSourceConfiguration>
type findingCriteria = {
@as("Criterion") criterion: criterion
}
type evidence = {
@as("ThreatIntelligenceDetails") threatIntelligenceDetails: threatIntelligenceDetails
}
type s3BucketDetail = {
@as("PublicAccess") publicAccess: publicAccess,
@as("DefaultServerSideEncryption") defaultServerSideEncryption: defaultServerSideEncryption,
@as("Tags") tags: tags,
@as("Owner") owner: owner,
@as("CreatedAt") createdAt: amazonawsTimestamp,
@as("Type") type_: amazonawsString,
@as("Name") name: amazonawsString,
@as("Arn") arn: amazonawsString
}
type portProbeAction = {
@as("PortProbeDetails") portProbeDetails: portProbeDetails,
@as("Blocked") blocked: amazonawsBoolean
}
type instanceDetails = {
@as("Tags") tags: tags,
@as("ProductCodes") productCodes: productCodes,
@as("Platform") platform: amazonawsString,
@as("NetworkInterfaces") networkInterfaces: networkInterfaces,
@as("LaunchTime") launchTime: amazonawsString,
@as("OutpostArn") outpostArn: amazonawsString,
@as("InstanceType") instanceType: amazonawsString,
@as("InstanceState") instanceState: amazonawsString,
@as("InstanceId") instanceId: amazonawsString,
@as("ImageId") imageId: amazonawsString,
@as("ImageDescription") imageDescription: amazonawsString,
@as("IamInstanceProfile") iamInstanceProfile: iamInstanceProfile,
@as("AvailabilityZone") availabilityZone: amazonawsString
}
type s3BucketDetails = array<s3BucketDetail>
type action = {
@as("PortProbeAction") portProbeAction: portProbeAction,
@as("NetworkConnectionAction") networkConnectionAction: networkConnectionAction,
@as("DnsRequestAction") dnsRequestAction: dnsRequestAction,
@as("AwsApiCallAction") awsApiCallAction: awsApiCallAction,
@as("ActionType") actionType: amazonawsString
}
type service = {
@as("UserFeedback") userFeedback: amazonawsString,
@as("ServiceName") serviceName: amazonawsString,
@as("ResourceRole") resourceRole: amazonawsString,
@as("EventLastSeen") eventLastSeen: amazonawsString,
@as("EventFirstSeen") eventFirstSeen: amazonawsString,
@as("DetectorId") detectorId: detectorId,
@as("Count") count: amazonawsInteger,
@as("Archived") archived: amazonawsBoolean,
@as("Evidence") evidence: evidence,
@as("Action") action: action
}
type resource = {
@as("ResourceType") resourceType: amazonawsString,
@as("InstanceDetails") instanceDetails: instanceDetails,
@as("S3BucketDetails") s3BucketDetails: s3BucketDetails,
@as("AccessKeyDetails") accessKeyDetails: accessKeyDetails
}
type finding = {
@as("UpdatedAt") updatedAt: option<amazonawsString>,
@as("Type") type_: option<findingType>,
@as("Title") title: amazonawsString,
@as("Severity") severity: option<amazonawsDouble>,
@as("Service") service: service,
@as("SchemaVersion") schemaVersion: option<amazonawsString>,
@as("Resource") resource: option<resource>,
@as("Region") region: option<amazonawsString>,
@as("Partition") partition: amazonawsString,
@as("Id") id: option<amazonawsString>,
@as("Description") description: amazonawsString,
@as("CreatedAt") createdAt: option<amazonawsString>,
@as("Confidence") confidence: amazonawsDouble,
@as("Arn") arn: option<amazonawsString>,
@as("AccountId") accountId: option<amazonawsString>
}
type findings = array<finding>
type clientType;
@module("@aws-sdk/client-guardduty") @new external createClient: unit => clientType = "GuardDutyClient";
module UpdateThreatIntelSet = {
  type t;
  type request = {
@as("Activate") activate: amazonawsBoolean,
@as("Location") location: location,
@as("Name") name: name,
@as("ThreatIntelSetId") threatIntelSetId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdateThreatIntelSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateIPSet = {
  type t;
  type request = {
@as("Activate") activate: amazonawsBoolean,
@as("Location") location: location,
@as("Name") name: name,
@as("IpSetId") ipSetId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdateIPSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetInvitationsCount = {
  type t;
  type request = unit
  type response = {
@as("InvitationsCount") invitationsCount: amazonawsInteger
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetInvitationsCountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module EnableOrganizationAdminAccount = {
  type t;
  type request = {
@as("AdminAccountId") adminAccountId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "EnableOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateFromMasterAccount = {
  type t;
  type request = {
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DisassociateFromMasterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisableOrganizationAdminAccount = {
  type t;
  type request = {
@as("AdminAccountId") adminAccountId: option<amazonawsString>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DisableOrganizationAdminAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteThreatIntelSet = {
  type t;
  type request = {
@as("ThreatIntelSetId") threatIntelSetId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeleteThreatIntelSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeletePublishingDestination = {
  type t;
  type request = {
@as("DestinationId") destinationId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeletePublishingDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteIPSet = {
  type t;
  type request = {
@as("IpSetId") ipSetId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeleteIPSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFilter = {
  type t;
  type request = {
@as("FilterName") filterName: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeleteFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDetector = {
  type t;
  type request = {
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeleteDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptInvitation = {
  type t;
  type request = {
@as("InvitationId") invitationId: option<amazonawsString>,
@as("MasterId") masterId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "AcceptInvitationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdatePublishingDestination = {
  type t;
  type request = {
@as("DestinationProperties") destinationProperties: destinationProperties,
@as("DestinationId") destinationId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdatePublishingDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFindingsFeedback = {
  type t;
  type request = {
@as("Comments") comments: amazonawsString,
@as("Feedback") feedback: option<feedback>,
@as("FindingIds") findingIds: option<findingIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdateFindingsFeedbackCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<guardDutyArn>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UnarchiveFindings = {
  type t;
  type request = {
@as("FindingIds") findingIds: option<findingIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UnarchiveFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<guardDutyArn>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListThreatIntelSets = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("ThreatIntelSetIds") threatIntelSetIds: option<threatIntelSetIds>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListThreatIntelSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<guardDutyArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListIPSets = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("IpSetIds") ipSetIds: option<ipSetIds>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListIPSetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFilters = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("FilterNames") filterNames: option<filterNames>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListFiltersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDetectors = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("DetectorIds") detectorIds: option<detectorIds>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListDetectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetThreatIntelSet = {
  type t;
  type request = {
@as("ThreatIntelSetId") threatIntelSetId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Tags") tags: tagMap,
@as("Status") status: option<threatIntelSetStatus>,
@as("Location") location: option<location>,
@as("Format") format: option<threatIntelSetFormat>,
@as("Name") name: option<name>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetThreatIntelSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMasterAccount = {
  type t;
  type request = {
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Master") master: option<master>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetMasterAccountCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetIPSet = {
  type t;
  type request = {
@as("IpSetId") ipSetId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Tags") tags: tagMap,
@as("Status") status: option<ipSetStatus>,
@as("Location") location: option<location>,
@as("Format") format: option<ipSetFormat>,
@as("Name") name: option<name>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetIPSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribePublishingDestination = {
  type t;
  type request = {
@as("DestinationId") destinationId: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("DestinationProperties") destinationProperties: option<destinationProperties>,
@as("PublishingFailureStartTimestamp") publishingFailureStartTimestamp: option<amazonawsLong>,
@as("Status") status: option<publishingStatus>,
@as("DestinationType") destinationType: option<destinationType>,
@as("DestinationId") destinationId: option<amazonawsString>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DescribePublishingDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateThreatIntelSet = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ClientToken") clientToken: clientToken,
@as("Activate") activate: option<amazonawsBoolean>,
@as("Location") location: option<location>,
@as("Format") format: option<threatIntelSetFormat>,
@as("Name") name: option<name>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("ThreatIntelSetId") threatIntelSetId: option<amazonawsString>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "CreateThreatIntelSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSampleFindings = {
  type t;
  type request = {
@as("FindingTypes") findingTypes: findingTypes,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "CreateSampleFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePublishingDestination = {
  type t;
  type request = {
@as("ClientToken") clientToken: clientToken,
@as("DestinationProperties") destinationProperties: option<destinationProperties>,
@as("DestinationType") destinationType: option<destinationType>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("DestinationId") destinationId: option<amazonawsString>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "CreatePublishingDestinationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateIPSet = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ClientToken") clientToken: clientToken,
@as("Activate") activate: option<amazonawsBoolean>,
@as("Location") location: option<location>,
@as("Format") format: option<ipSetFormat>,
@as("Name") name: option<name>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("IpSetId") ipSetId: option<amazonawsString>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "CreateIPSetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ArchiveFindings = {
  type t;
  type request = {
@as("FindingIds") findingIds: option<findingIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ArchiveFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateOrganizationConfiguration = {
  type t;
  type request = {
@as("DataSources") dataSources: organizationDataSourceConfigurations,
@as("AutoEnable") autoEnable: option<amazonawsBoolean>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdateOrganizationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateMemberDetectors = {
  type t;
  type request = {
@as("DataSources") dataSources: dataSourceConfigurations,
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdateMemberDetectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDetector = {
  type t;
  type request = {
@as("DataSources") dataSources: dataSourceConfigurations,
@as("FindingPublishingFrequency") findingPublishingFrequency: findingPublishingFrequency,
@as("Enable") enable: amazonawsBoolean,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = unit
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdateDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopMonitoringMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "StopMonitoringMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartMonitoringMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "StartMonitoringMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListPublishingDestinations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Destinations") destinations: option<destinations>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListPublishingDestinationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListOrganizationAdminAccounts = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("AdminAccounts") adminAccounts: adminAccounts
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListOrganizationAdminAccountsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListMembers = {
  type t;
  type request = {
@as("OnlyAssociated") onlyAssociated: amazonawsString,
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Members") members: members
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListInvitations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Invitations") invitations: invitations
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module InviteMembers = {
  type t;
  type request = {
@as("Message") message: amazonawsString,
@as("DisableEmailNotification") disableEmailNotification: amazonawsBoolean,
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "InviteMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>,
@as("Members") members: option<members>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDetector = {
  type t;
  type request = {
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Tags") tags: tagMap,
@as("DataSources") dataSources: dataSourceConfigurationsResult,
@as("UpdatedAt") updatedAt: amazonawsString,
@as("Status") status: option<detectorStatus>,
@as("ServiceRole") serviceRole: option<amazonawsString>,
@as("FindingPublishingFrequency") findingPublishingFrequency: findingPublishingFrequency,
@as("CreatedAt") createdAt: amazonawsString
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DisassociateMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeOrganizationConfiguration = {
  type t;
  type request = {
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("DataSources") dataSources: organizationDataSourceConfigurationsResult,
@as("MemberAccountLimitReached") memberAccountLimitReached: option<amazonawsBoolean>,
@as("AutoEnable") autoEnable: option<amazonawsBoolean>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DescribeOrganizationConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteMembers = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeleteMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInvitations = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeleteInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeclineInvitations = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "DeclineInvitationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateMembers = {
  type t;
  type request = {
@as("AccountDetails") accountDetails: option<accountDetails>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "CreateMembersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDetector = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("DataSources") dataSources: dataSourceConfigurations,
@as("FindingPublishingFrequency") findingPublishingFrequency: findingPublishingFrequency,
@as("ClientToken") clientToken: clientToken,
@as("Enable") enable: option<amazonawsBoolean>
}
  type response = {
@as("DetectorId") detectorId: detectorId
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "CreateDetectorCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFilter = {
  type t;
  type request = {
@as("FindingCriteria") findingCriteria: findingCriteria,
@as("Rank") rank: filterRank,
@as("Action") action: filterAction,
@as("Description") description: filterDescription,
@as("FilterName") filterName: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Name") name: option<filterName>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "UpdateFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFindings = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("SortCriteria") sortCriteria: sortCriteria,
@as("FindingCriteria") findingCriteria: findingCriteria,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("FindingIds") findingIds: option<findingIds>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "ListFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetUsageStatistics = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("Unit") unit: amazonawsString,
@as("UsageCriteria") usageCriteria: option<usageCriteria>,
@as("UsageStatisticType") usageStatisticType: option<usageStatisticType>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("UsageStatistics") usageStatistics: usageStatistics
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetUsageStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetMemberDetectors = {
  type t;
  type request = {
@as("AccountIds") accountIds: option<accountIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("UnprocessedAccounts") unprocessedAccounts: option<unprocessedAccounts>,
@as("MemberDataSourceConfigurations") memberDataSourceConfigurations: option<memberDataSourceConfigurations>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetMemberDetectorsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFindingsStatistics = {
  type t;
  type request = {
@as("FindingCriteria") findingCriteria: findingCriteria,
@as("FindingStatisticTypes") findingStatisticTypes: option<findingStatisticTypes>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("FindingStatistics") findingStatistics: option<findingStatistics>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetFindingsStatisticsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFilter = {
  type t;
  type request = {
@as("FilterName") filterName: option<amazonawsString>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Tags") tags: tagMap,
@as("FindingCriteria") findingCriteria: option<findingCriteria>,
@as("Rank") rank: filterRank,
@as("Action") action: option<filterAction>,
@as("Description") description: filterDescription,
@as("Name") name: option<filterName>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFilter = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("ClientToken") clientToken: clientToken,
@as("FindingCriteria") findingCriteria: option<findingCriteria>,
@as("Rank") rank: filterRank,
@as("Action") action: filterAction,
@as("Description") description: filterDescription,
@as("Name") name: option<filterName>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Name") name: option<filterName>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "CreateFilterCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetFindings = {
  type t;
  type request = {
@as("SortCriteria") sortCriteria: sortCriteria,
@as("FindingIds") findingIds: option<findingIds>,
@as("DetectorId") detectorId: option<detectorId>
}
  type response = {
@as("Findings") findings: option<findings>
}
  @module("@aws-sdk/client-guardduty") @new external new_: (Js.Promise.t<request>) => t = "GetFindingsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
