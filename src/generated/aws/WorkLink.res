type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type vpcId = string
type username = string
type tagValue = string
type tagKey = string
type subnetId = string
type securityGroupId = string
type samlMetadata = string
type nextToken = string
type maxResults = int;
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
type amazonawsBoolean = bool;
type authorizationProviderType = [@as("SAML") #SAML]
type auditStreamArn = string
type acmCertificateArn = string
type websiteCaSummary = {
@as("DisplayName") displayName: displayName,
@as("CreatedTime") createdTime: dateTime,
@as("WebsiteCaId") websiteCaId: id
}
type websiteAuthorizationProviderSummary = {
@as("CreatedTime") createdTime: dateTime,
@as("DomainName") domainName: domainName,
@as("AuthorizationProviderType") authorizationProviderType: option<authorizationProviderType>,
@as("AuthorizationProviderId") authorizationProviderId: id
}
type tagMap = Js.Dict.t< tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
type domainSummary = {
@as("DomainStatus") domainStatus: option<domainStatus>,
@as("CreatedTime") createdTime: option<dateTime>,
@as("DisplayName") displayName: displayName,
@as("DomainName") domainName: option<domainName>
}
type deviceSummary = {
@as("DeviceStatus") deviceStatus: deviceStatus,
@as("DeviceId") deviceId: id
}
type websiteCaSummaryList = array<websiteCaSummary>
type websiteAuthorizationProvidersSummaryList = array<websiteAuthorizationProviderSummary>
type fleetSummary = {
@as("Tags") tags: tagMap,
@as("FleetStatus") fleetStatus: fleetStatus,
@as("CompanyCode") companyCode: companyCode,
@as("DisplayName") displayName: displayName,
@as("FleetName") fleetName: fleetName,
@as("LastUpdatedTime") lastUpdatedTime: dateTime,
@as("CreatedTime") createdTime: dateTime,
@as("FleetArn") fleetArn: fleetArn
}
type domainSummaryList = array<domainSummary>
type deviceSummaryList = array<deviceSummary>
type fleetSummaryList = array<fleetSummary>
type clientType;
@module("@aws-sdk/client-worklink") @new external createClient: unit => clientType = "WorkLinkClient";
module UpdateIdentityProviderConfiguration = {
  type t;
  type request = {
@as("IdentityProviderSamlMetadata") identityProviderSamlMetadata: samlMetadata,
@as("IdentityProviderType") identityProviderType: option<identityProviderType>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "UpdateIdentityProviderConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateFleetMetadata = {
  type t;
  type request = {
@as("OptimizeForEndUserLocation") optimizeForEndUserLocation: amazonawsBoolean,
@as("DisplayName") displayName: displayName,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "UpdateFleetMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDomainMetadata = {
  type t;
  type request = {
@as("DisplayName") displayName: displayName,
@as("DomainName") domainName: option<domainName>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "UpdateDomainMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDevicePolicyConfiguration = {
  type t;
  type request = {
@as("DeviceCaCertificate") deviceCaCertificate: certificateChain,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "UpdateDevicePolicyConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateAuditStreamConfiguration = {
  type t;
  type request = {
@as("AuditStreamArn") auditStreamArn: auditStreamArn,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "UpdateAuditStreamConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module SignOutUser = {
  type t;
  type request = {
@as("Username") username: option<username>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "SignOutUserCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RevokeDomainAccess = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "RevokeDomainAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RestoreDomainAccess = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "RestoreDomainAccessCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateWebsiteCertificateAuthority = {
  type t;
  type request = {
@as("WebsiteCaId") websiteCaId: option<id>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DisassociateWebsiteCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateWebsiteAuthorizationProvider = {
  type t;
  type request = {
@as("AuthorizationProviderId") authorizationProviderId: option<id>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DisassociateWebsiteAuthorizationProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DisassociateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeWebsiteCertificateAuthority = {
  type t;
  type request = {
@as("WebsiteCaId") websiteCaId: option<id>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("DisplayName") displayName: displayName,
@as("CreatedTime") createdTime: dateTime,
@as("Certificate") certificate: certificate
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeWebsiteCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeIdentityProviderConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("IdentityProviderSamlMetadata") identityProviderSamlMetadata: samlMetadata,
@as("ServiceProviderSamlMetadata") serviceProviderSamlMetadata: samlMetadata,
@as("IdentityProviderType") identityProviderType: identityProviderType
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeIdentityProviderConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDomain = {
  type t;
  type request = {
@as("DomainName") domainName: option<domainName>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("AcmCertificateArn") acmCertificateArn: acmCertificateArn,
@as("DomainStatus") domainStatus: domainStatus,
@as("CreatedTime") createdTime: dateTime,
@as("DisplayName") displayName: displayName,
@as("DomainName") domainName: domainName
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDevicePolicyConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("DeviceCaCertificate") deviceCaCertificate: certificate
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeDevicePolicyConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDevice = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<id>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("Username") username: username,
@as("LastAccessedTime") lastAccessedTime: dateTime,
@as("FirstAccessedTime") firstAccessedTime: dateTime,
@as("PatchLevel") patchLevel: devicePatchLevel,
@as("OperatingSystemVersion") operatingSystemVersion: deviceOperatingSystemVersion,
@as("OperatingSystem") operatingSystem: deviceOperatingSystemName,
@as("Manufacturer") manufacturer: deviceManufacturer,
@as("Model") model: deviceModel,
@as("Status") status: deviceStatus
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeAuditStreamConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("AuditStreamArn") auditStreamArn: auditStreamArn
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeAuditStreamConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteFleet = {
  type t;
  type request = {
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DeleteFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateWebsiteCertificateAuthority = {
  type t;
  type request = {
@as("DisplayName") displayName: displayName,
@as("Certificate") certificate: option<certificate>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("WebsiteCaId") websiteCaId: id
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "AssociateWebsiteCertificateAuthorityCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateWebsiteAuthorizationProvider = {
  type t;
  type request = {
@as("DomainName") domainName: domainName,
@as("AuthorizationProviderType") authorizationProviderType: option<authorizationProviderType>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("AuthorizationProviderId") authorizationProviderId: id
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "AssociateWebsiteAuthorizationProviderCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateDomain = {
  type t;
  type request = {
@as("AcmCertificateArn") acmCertificateArn: option<acmCertificateArn>,
@as("DisplayName") displayName: displayName,
@as("DomainName") domainName: option<domainName>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "AssociateDomainCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateCompanyNetworkConfiguration = {
  type t;
  type request = {
@as("SecurityGroupIds") securityGroupIds: option<securityGroupIds>,
@as("SubnetIds") subnetIds: option<subnetIds>,
@as("VpcId") vpcId: option<vpcId>,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "UpdateCompanyNetworkConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagMap>,
@as("ResourceArn") resourceArn: option<fleetArn>
}
  type response = unit
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<fleetArn>
}
  type response = {
@as("Tags") tags: tagMap
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeFleetMetadata = {
  type t;
  type request = {
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("Tags") tags: tagMap,
@as("FleetStatus") fleetStatus: fleetStatus,
@as("CompanyCode") companyCode: companyCode,
@as("OptimizeForEndUserLocation") optimizeForEndUserLocation: amazonawsBoolean,
@as("DisplayName") displayName: displayName,
@as("FleetName") fleetName: fleetName,
@as("LastUpdatedTime") lastUpdatedTime: dateTime,
@as("CreatedTime") createdTime: dateTime
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeFleetMetadataCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeCompanyNetworkConfiguration = {
  type t;
  type request = {
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("SecurityGroupIds") securityGroupIds: securityGroupIds,
@as("SubnetIds") subnetIds: subnetIds,
@as("VpcId") vpcId: vpcId
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "DescribeCompanyNetworkConfigurationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateFleet = {
  type t;
  type request = {
@as("Tags") tags: tagMap,
@as("OptimizeForEndUserLocation") optimizeForEndUserLocation: amazonawsBoolean,
@as("DisplayName") displayName: displayName,
@as("FleetName") fleetName: option<fleetName>
}
  type response = {
@as("FleetArn") fleetArn: fleetArn
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "CreateFleetCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWebsiteCertificateAuthorities = {
  type t;
  type request = {
@as("NextToken") nextToken: nextToken,
@as("MaxResults") maxResults: maxResults,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("WebsiteCertificateAuthorities") websiteCertificateAuthorities: websiteCaSummaryList
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "ListWebsiteCertificateAuthoritiesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListWebsiteAuthorizationProviders = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("WebsiteAuthorizationProviders") websiteAuthorizationProviders: websiteAuthorizationProvidersSummaryList
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "ListWebsiteAuthorizationProvidersCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDomains = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Domains") domains: domainSummaryList
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "ListDomainsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListDevices = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken,
@as("FleetArn") fleetArn: option<fleetArn>
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("Devices") devices: deviceSummaryList
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "ListDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListFleets = {
  type t;
  type request = {
@as("MaxResults") maxResults: maxResults,
@as("NextToken") nextToken: nextToken
}
  type response = {
@as("NextToken") nextToken: nextToken,
@as("FleetSummaryList") fleetSummaryList: fleetSummaryList
}
  @module("@aws-sdk/client-worklink") @new external new_: (Js.Promise.t<request>) => t = "ListFleetsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
