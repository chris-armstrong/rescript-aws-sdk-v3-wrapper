type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
}
type awsServiceClient;
@module("@aws-sdk/client-worklink") @new external createClient: unit => awsServiceClient = "WorkLinkClient";
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t;
type baseLong = float
type vpcId = string
type username = string
type tagValue = string
type tagKey = string
type subnetId = string
type securityGroupId = string
type samlMetadata = string
type nextToken = string
type maxResults = int
type identityProviderType = [@as("SAML") #SAML]
type id = string
type fleetStatus = [@as("FAILED_TO_DELETE") #FAILED_TO_DELETE | @as("FAILED_TO_CREATE") #FAILED_TO_CREATE | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("ACTIVE") #ACTIVE | @as("CREATING") #CREATING]
type fleetName = string
type fleetArn = string
type exceptionMessage = string
type domainStatus = [@as("FAILED_TO_DISASSOCIATE") #FAILED_TO_DISASSOCIATE | @as("FAILED_TO_ASSOCIATE") #FAILED_TO_ASSOCIATE | @as("DISASSOCIATED") #DISASSOCIATED | @as("DISASSOCIATING") #DISASSOCIATING | @as("INACTIVE") #INACTIVE | @as("ACTIVE") #ACTIVE | @as("ASSOCIATING") #ASSOCIATING | @as("PENDING_VALIDATION") #PENDING_VALIDATION]
type domainName = string
type displayName = string
type deviceStatus = [@as("SIGNED_OUT") #SIGNED_OUT | @as("ACTIVE") #ACTIVE]
type devicePatchLevel = string
type deviceOperatingSystemVersion = string
type deviceOperatingSystemName = string
type deviceModel = string
type deviceManufacturer = string
type dateTime = Js.Date.t;
type companyCode = string
type certificateChain = string
type certificate = string
type boolean_ = bool
type authorizationProviderType = [@as("SAML") #SAML]
type auditStreamArn = string
type acmCertificateArn = string
type websiteCaSummary = {
@as("DisplayName") displayName: option<displayName>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("WebsiteCaId") websiteCaId: option<id>
}
type websiteAuthorizationProviderSummary = {
@as("CreatedTime") createdTime: option<dateTime>,
  @as("DomainName") domainName: option<domainName>,
  @as("AuthorizationProviderType") authorizationProviderType: authorizationProviderType,
  @as("AuthorizationProviderId") authorizationProviderId: option<id>
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
type domainSummary = {
@as("DomainStatus") domainStatus: domainStatus,
  @as("CreatedTime") createdTime: dateTime,
  @as("DisplayName") displayName: option<displayName>,
  @as("DomainName") domainName: domainName
}
type deviceSummary = {
@as("DeviceStatus") deviceStatus: option<deviceStatus>,
  @as("DeviceId") deviceId: option<id>
}
type websiteCaSummaryList = array<websiteCaSummary>
type websiteAuthorizationProvidersSummaryList = array<websiteAuthorizationProviderSummary>
type fleetSummary = {
@as("Tags") tags: option<tagMap>,
  @as("FleetStatus") fleetStatus: option<fleetStatus>,
  @as("CompanyCode") companyCode: option<companyCode>,
  @as("DisplayName") displayName: option<displayName>,
  @as("FleetName") fleetName: option<fleetName>,
  @as("LastUpdatedTime") lastUpdatedTime: option<dateTime>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("FleetArn") fleetArn: option<fleetArn>
}
type domainSummaryList = array<domainSummary>
type deviceSummaryList = array<deviceSummary>
type fleetSummaryList = array<fleetSummary>

module UpdateIdentityProviderConfiguration = {
  type t;
  type request = {
@as("IdentityProviderSamlMetadata") identityProviderSamlMetadata: option<samlMetadata>,
  @as("IdentityProviderType") identityProviderType: identityProviderType,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "UpdateIdentityProviderConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateFleetMetadata = {
  type t;
  type request = {
@as("OptimizeForEndUserLocation") optimizeForEndUserLocation: option<boolean_>,
  @as("DisplayName") displayName: option<displayName>,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "UpdateFleetMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainMetadata = {
  type t;
  type request = {
@as("DisplayName") displayName: option<displayName>,
  @as("DomainName") domainName: domainName,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "UpdateDomainMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDevicePolicyConfiguration = {
  type t;
  type request = {
@as("DeviceCaCertificate") deviceCaCertificate: option<certificateChain>,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "UpdateDevicePolicyConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateAuditStreamConfiguration = {
  type t;
  type request = {
@as("AuditStreamArn") auditStreamArn: option<auditStreamArn>,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "UpdateAuditStreamConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module SignOutUser = {
  type t;
  type request = {
@as("Username") username: username,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "SignOutUserCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RevokeDomainAccess = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "RevokeDomainAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module RestoreDomainAccess = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "RestoreDomainAccessCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateWebsiteCertificateAuthority = {
  type t;
  type request = {
@as("WebsiteCaId") websiteCaId: id,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DisassociateWebsiteCertificateAuthorityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateWebsiteAuthorizationProvider = {
  type t;
  type request = {
@as("AuthorizationProviderId") authorizationProviderId: id,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DisassociateWebsiteAuthorizationProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DisassociateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeWebsiteCertificateAuthority = {
  type t;
  type request = {
@as("WebsiteCaId") websiteCaId: id,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("DisplayName") displayName: option<displayName>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("Certificate") certificate: option<certificate>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeWebsiteCertificateAuthorityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityProviderConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("IdentityProviderSamlMetadata") identityProviderSamlMetadata: option<samlMetadata>,
  @as("ServiceProviderSamlMetadata") serviceProviderSamlMetadata: option<samlMetadata>,
  @as("IdentityProviderType") identityProviderType: option<identityProviderType>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeIdentityProviderConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDomain = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("AcmCertificateArn") acmCertificateArn: option<acmCertificateArn>,
  @as("DomainStatus") domainStatus: option<domainStatus>,
  @as("CreatedTime") createdTime: option<dateTime>,
  @as("DisplayName") displayName: option<displayName>,
  @as("DomainName") domainName: option<domainName>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDevicePolicyConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("DeviceCaCertificate") deviceCaCertificate: option<certificate>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeDevicePolicyConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDevice = {
  type t;
  type request = {
@as("DeviceId") deviceId: id,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("Username") username: option<username>,
  @as("LastAccessedTime") lastAccessedTime: option<dateTime>,
  @as("FirstAccessedTime") firstAccessedTime: option<dateTime>,
  @as("PatchLevel") patchLevel: option<devicePatchLevel>,
  @as("OperatingSystemVersion") operatingSystemVersion: option<deviceOperatingSystemVersion>,
  @as("OperatingSystem") operatingSystem: option<deviceOperatingSystemName>,
  @as("Manufacturer") manufacturer: option<deviceManufacturer>,
  @as("Model") model: option<deviceModel>,
  @as("Status") status: option<deviceStatus>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeDeviceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeAuditStreamConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("AuditStreamArn") auditStreamArn: option<auditStreamArn>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeAuditStreamConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteFleet = {
  type t;
  type request = {
@as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DeleteFleetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateWebsiteCertificateAuthority = {
  type t;
  type request = {
@as("DisplayName") displayName: option<displayName>,
  @as("Certificate") certificate: certificate,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("WebsiteCaId") websiteCaId: option<id>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "AssociateWebsiteCertificateAuthorityCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateWebsiteAuthorizationProvider = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
  @as("AuthorizationProviderType") authorizationProviderType: authorizationProviderType,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("AuthorizationProviderId") authorizationProviderId: option<id>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "AssociateWebsiteAuthorizationProviderCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateDomain = {
  type t;
  type request = {
@as("AcmCertificateArn") acmCertificateArn: acmCertificateArn,
  @as("DisplayName") displayName: option<displayName>,
  @as("DomainName") domainName: domainName,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "AssociateDomainCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateCompanyNetworkConfiguration = {
  type t;
  type request = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
  @as("SubnetIds") subnetIds: subnetIds,
  @as("VpcId") vpcId: vpcId,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "UpdateCompanyNetworkConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: tagKeyList,
  @as("ResourceArn") resourceArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
  @as("ResourceArn") resourceArn: fleetArn
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: fleetArn
}
  type response = {
@as("Tags") tags: option<tagMap>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "ListTagsForResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetMetadata = {
  type t;
  type request = {
@as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("Tags") tags: option<tagMap>,
  @as("FleetStatus") fleetStatus: option<fleetStatus>,
  @as("CompanyCode") companyCode: option<companyCode>,
  @as("OptimizeForEndUserLocation") optimizeForEndUserLocation: option<boolean_>,
  @as("DisplayName") displayName: option<displayName>,
  @as("FleetName") fleetName: option<fleetName>,
  @as("LastUpdatedTime") lastUpdatedTime: option<dateTime>,
  @as("CreatedTime") createdTime: option<dateTime>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeFleetMetadataCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeCompanyNetworkConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
  @as("SubnetIds") subnetIds: option<subnetIds>,
  @as("VpcId") vpcId: option<vpcId>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "DescribeCompanyNetworkConfigurationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateFleet = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
  @as("OptimizeForEndUserLocation") optimizeForEndUserLocation: option<boolean_>,
  @as("DisplayName") displayName: option<displayName>,
  @as("FleetName") fleetName: fleetName
}
  type response = {
@as("FleetArn") fleetArn: option<fleetArn>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "CreateFleetCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListWebsiteCertificateAuthorities = {
  type t;
  type request = {
@as("NextToken") nextToken: option<nextToken>,
  @as("MaxResults") maxResults: option<maxResults>,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("WebsiteCertificateAuthorities") websiteCertificateAuthorities: option<websiteCaSummaryList>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "ListWebsiteCertificateAuthoritiesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListWebsiteAuthorizationProviders = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("WebsiteAuthorizationProviders") websiteAuthorizationProviders: option<websiteAuthorizationProvidersSummaryList>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "ListWebsiteAuthorizationProvidersCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Domains") domains: option<domainSummaryList>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "ListDomainsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListDevices = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>,
  @as("FleetArn") fleetArn: fleetArn
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("Devices") devices: option<deviceSummaryList>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "ListDevicesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListFleets = {
  type t;
  type request = {
@as("MaxResults") maxResults: option<maxResults>,
  @as("NextToken") nextToken: option<nextToken>
}
  type response = {
@as("NextToken") nextToken: option<nextToken>,
  @as("FleetSummaryList") fleetSummaryList: option<fleetSummaryList>
}
  @module("@aws-sdk/client-worklink") @new external new_: (request) => t = "ListFleetsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
