type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-worklink") @new
external createClient: unit => awsServiceClient = "WorkLinkClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
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
type fleetStatus = [
  | @as("FAILED_TO_DELETE") #FAILED_TO_DELETE
  | @as("FAILED_TO_CREATE") #FAILED_TO_CREATE
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("ACTIVE") #ACTIVE
  | @as("CREATING") #CREATING
]
type fleetName = string
type fleetArn = string
type exceptionMessage = string
type domainStatus = [
  | @as("FAILED_TO_DISASSOCIATE") #FAILED_TO_DISASSOCIATE
  | @as("FAILED_TO_ASSOCIATE") #FAILED_TO_ASSOCIATE
  | @as("DISASSOCIATED") #DISASSOCIATED
  | @as("DISASSOCIATING") #DISASSOCIATING
  | @as("INACTIVE") #INACTIVE
  | @as("ACTIVE") #ACTIVE
  | @as("ASSOCIATING") #ASSOCIATING
  | @as("PENDING_VALIDATION") #PENDING_VALIDATION
]
type domainName = string
type displayName = string
type deviceStatus = [@as("SIGNED_OUT") #SIGNED_OUT | @as("ACTIVE") #ACTIVE]
type devicePatchLevel = string
type deviceOperatingSystemVersion = string
type deviceOperatingSystemName = string
type deviceModel = string
type deviceManufacturer = string
type dateTime = Js.Date.t
type companyCode = string
type certificateChain = string
type certificate = string
type boolean_ = bool
type authorizationProviderType = [@as("SAML") #SAML]
type auditStreamArn = string
type acmCertificateArn = string
@ocaml.doc("<p>The summary of the certificate authority (CA).</p>")
type websiteCaSummary = {
  @ocaml.doc("<p>The name to display.</p>") @as("DisplayName") displayName: option<displayName>,
  @ocaml.doc("<p>The time when the CA was added.</p>") @as("CreatedTime")
  createdTime: option<dateTime>,
  @ocaml.doc("<p>A unique identifier for the CA.</p>") @as("WebsiteCaId") websiteCaId: option<id>,
}
@ocaml.doc("<p>The summary of the website authorization provider.</p>")
type websiteAuthorizationProviderSummary = {
  @ocaml.doc("<p>The time of creation.</p>") @as("CreatedTime") createdTime: option<dateTime>,
  @ocaml.doc("<p>The domain name of the authorization provider. This applies only to SAML-based
            authorization providers.</p>")
  @as("DomainName")
  domainName: option<domainName>,
  @ocaml.doc("<p>The authorization provider type.</p>") @as("AuthorizationProviderType")
  authorizationProviderType: authorizationProviderType,
  @ocaml.doc("<p>A unique identifier for the authorization provider.</p>")
  @as("AuthorizationProviderId")
  authorizationProviderId: option<id>,
}
type tagMap = Js.Dict.t<tagValue>
type tagKeyList = array<tagKey>
type subnetIds = array<subnetId>
type securityGroupIds = array<securityGroupId>
@ocaml.doc("<p>The summary of the domain.</p>")
type domainSummary = {
  @ocaml.doc("<p>The status of the domain.</p>") @as("DomainStatus") domainStatus: domainStatus,
  @ocaml.doc("<p>The time that the domain was created.</p>") @as("CreatedTime")
  createdTime: dateTime,
  @ocaml.doc("<p>The name to display.</p>") @as("DisplayName") displayName: option<displayName>,
  @ocaml.doc("<p>The name of the domain.</p>") @as("DomainName") domainName: domainName,
}
@ocaml.doc("<p>The summary of devices.</p>")
type deviceSummary = {
  @ocaml.doc("<p>The status of the device.</p>") @as("DeviceStatus")
  deviceStatus: option<deviceStatus>,
  @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<id>,
}
type websiteCaSummaryList = array<websiteCaSummary>
type websiteAuthorizationProvidersSummaryList = array<websiteAuthorizationProviderSummary>
@ocaml.doc("<p>The summary of the fleet.</p>")
type fleetSummary = {
  @ocaml.doc("<p>The tags attached to the resource. A tag is a key-value pair.</p>") @as("Tags")
  tags: option<tagMap>,
  @ocaml.doc("<p>The status of the fleet.</p>") @as("FleetStatus") fleetStatus: option<fleetStatus>,
  @ocaml.doc("<p>The identifier used by users to sign into the Amazon WorkLink app.</p>")
  @as("CompanyCode")
  companyCode: option<companyCode>,
  @ocaml.doc("<p>The name of the fleet to display.</p>") @as("DisplayName")
  displayName: option<displayName>,
  @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: option<fleetName>,
  @ocaml.doc("<p>The time when the fleet was last updated.</p>") @as("LastUpdatedTime")
  lastUpdatedTime: option<dateTime>,
  @ocaml.doc("<p>The time when the fleet was created.</p>") @as("CreatedTime")
  createdTime: option<dateTime>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") @as("FleetArn")
  fleetArn: option<fleetArn>,
}
type domainSummaryList = array<domainSummary>
type deviceSummaryList = array<deviceSummary>
type fleetSummaryList = array<fleetSummary>
@ocaml.doc("<p>Amazon WorkLink is a cloud-based service that provides secure access
            to internal websites and web apps from iOS and Android phones. In a single step, your users, such as
            employees, can access internal websites as efficiently as they access any other public website.
            They enter a URL in their web browser, or choose a link to an internal website in an email. Amazon WorkLink
            authenticates the user's access and securely renders authorized internal web content in a secure
            rendering service in the AWS cloud. Amazon WorkLink doesn't download or store any internal web content on
            mobile devices.</p>")
module UpdateIdentityProviderConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The SAML metadata document provided by the customer’s identity provider. The existing
            IdentityProviderSamlMetadata is unset if null is passed.</p>")
    @as("IdentityProviderSamlMetadata")
    identityProviderSamlMetadata: option<samlMetadata>,
    @ocaml.doc("<p>The type of identity provider.</p>") @as("IdentityProviderType")
    identityProviderType: identityProviderType,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "UpdateIdentityProviderConfigurationCommand"
  let make = (~identityProviderType, ~fleetArn, ~identityProviderSamlMetadata=?, ()) =>
    new({identityProviderSamlMetadata, identityProviderType, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateFleetMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The option to optimize for better performance by routing traffic through the closest
            AWS Region to users, which may be outside of your home Region.</p>")
    @as("OptimizeForEndUserLocation")
    optimizeForEndUserLocation: option<boolean_>,
    @ocaml.doc(
      "<p>The fleet name to display. The existing DisplayName is unset if null is passed.</p>"
    )
    @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "UpdateFleetMetadataCommand"
  let make = (~fleetArn, ~optimizeForEndUserLocation=?, ~displayName=?, ()) =>
    new({optimizeForEndUserLocation, displayName, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateDomainMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The name to display.</p>") @as("DisplayName") displayName: option<displayName>,
    @ocaml.doc("<p>The name of the domain.</p>") @as("DomainName") domainName: domainName,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "UpdateDomainMetadataCommand"
  let make = (~domainName, ~fleetArn, ~displayName=?, ()) =>
    new({displayName, domainName, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateDevicePolicyConfiguration = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.</p>"
    )
    @as("DeviceCaCertificate")
    deviceCaCertificate: option<certificateChain>,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "UpdateDevicePolicyConfigurationCommand"
  let make = (~fleetArn, ~deviceCaCertificate=?, ()) => new({deviceCaCertificate, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateAuditStreamConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the Amazon Kinesis data stream that receives the audit events.</p>")
    @as("AuditStreamArn")
    auditStreamArn: option<auditStreamArn>,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "UpdateAuditStreamConfigurationCommand"
  let make = (~fleetArn, ~auditStreamArn=?, ()) => new({auditStreamArn, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module SignOutUser = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the user.</p>") @as("Username") username: username,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "SignOutUserCommand"
  let make = (~username, ~fleetArn, ()) => new({username, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RevokeDomainAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain.</p>") @as("DomainName") domainName: domainName,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "RevokeDomainAccessCommand"
  let make = (~domainName, ~fleetArn, ()) => new({domainName, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RestoreDomainAccess = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain.</p>") @as("DomainName") domainName: domainName,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "RestoreDomainAccessCommand"
  let make = (~domainName, ~fleetArn, ()) => new({domainName, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateWebsiteCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the CA.</p>") @as("WebsiteCaId") websiteCaId: id,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DisassociateWebsiteCertificateAuthorityCommand"
  let make = (~websiteCaId, ~fleetArn, ()) => new({websiteCaId, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateWebsiteAuthorizationProvider = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the authorization provider.</p>")
    @as("AuthorizationProviderId")
    authorizationProviderId: id,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DisassociateWebsiteAuthorizationProviderCommand"
  let make = (~authorizationProviderId, ~fleetArn, ()) => new({authorizationProviderId, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain.</p>") @as("DomainName") domainName: domainName,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "DisassociateDomainCommand"
  let make = (~domainName, ~fleetArn, ()) => new({domainName, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeWebsiteCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for the certificate authority.</p>") @as("WebsiteCaId")
    websiteCaId: id,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>The certificate name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The time that the certificate authority was added.</p>") @as("CreatedTime")
    createdTime: option<dateTime>,
    @ocaml.doc("<p>The root certificate of the certificate authority.</p>") @as("Certificate")
    certificate: option<certificate>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DescribeWebsiteCertificateAuthorityCommand"
  let make = (~websiteCaId, ~fleetArn, ()) => new({websiteCaId, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeIdentityProviderConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn}
  type response = {
    @ocaml.doc("<p>The SAML metadata document provided by the user’s identity provider.</p>")
    @as("IdentityProviderSamlMetadata")
    identityProviderSamlMetadata: option<samlMetadata>,
    @ocaml.doc("<p>The SAML metadata document uploaded to the user’s identity provider.</p>")
    @as("ServiceProviderSamlMetadata")
    serviceProviderSamlMetadata: option<samlMetadata>,
    @ocaml.doc("<p>The type of identity provider.</p>") @as("IdentityProviderType")
    identityProviderType: option<identityProviderType>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DescribeIdentityProviderConfigurationCommand"
  let make = (~fleetArn, ()) => new({fleetArn: fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDomain = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the domain.</p>") @as("DomainName") domainName: domainName,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The ARN of an issued ACM certificate that is valid for the domain being associated.</p>"
    )
    @as("AcmCertificateArn")
    acmCertificateArn: option<acmCertificateArn>,
    @ocaml.doc("<p>The current state for the domain.</p>") @as("DomainStatus")
    domainStatus: option<domainStatus>,
    @ocaml.doc("<p>The time that the domain was added.</p>") @as("CreatedTime")
    createdTime: option<dateTime>,
    @ocaml.doc("<p>The name to display.</p>") @as("DisplayName") displayName: option<displayName>,
    @ocaml.doc("<p>The name of the domain.</p>") @as("DomainName") domainName: option<domainName>,
  }
  @module("@aws-sdk/client-worklink") @new external new: request => t = "DescribeDomainCommand"
  let make = (~domainName, ~fleetArn, ()) => new({domainName, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDevicePolicyConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn}
  type response = {
    @ocaml.doc(
      "<p>The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates.</p>"
    )
    @as("DeviceCaCertificate")
    deviceCaCertificate: option<certificate>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DescribeDevicePolicyConfigurationCommand"
  let make = (~fleetArn, ()) => new({fleetArn: fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDevice = {
  type t
  type request = {
    @ocaml.doc("<p>A unique identifier for a registered user's device.</p>") @as("DeviceId")
    deviceId: id,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>The user name associated with the device.</p>") @as("Username")
    username: option<username>,
    @ocaml.doc("<p>The date that the device last accessed Amazon WorkLink.</p>")
    @as("LastAccessedTime")
    lastAccessedTime: option<dateTime>,
    @ocaml.doc("<p>The date that the device first signed in to Amazon WorkLink.</p>")
    @as("FirstAccessedTime")
    firstAccessedTime: option<dateTime>,
    @ocaml.doc("<p>The operating system patch level of the device.</p>") @as("PatchLevel")
    patchLevel: option<devicePatchLevel>,
    @ocaml.doc("<p>The operating system version of the device.</p>") @as("OperatingSystemVersion")
    operatingSystemVersion: option<deviceOperatingSystemVersion>,
    @ocaml.doc("<p>The operating system of the device.</p>") @as("OperatingSystem")
    operatingSystem: option<deviceOperatingSystemName>,
    @ocaml.doc("<p>The manufacturer of the device.</p>") @as("Manufacturer")
    manufacturer: option<deviceManufacturer>,
    @ocaml.doc("<p>The model of the device.</p>") @as("Model") model: option<deviceModel>,
    @ocaml.doc("<p>The current state of the device.</p>") @as("Status")
    status: option<deviceStatus>,
  }
  @module("@aws-sdk/client-worklink") @new external new: request => t = "DescribeDeviceCommand"
  let make = (~deviceId, ~fleetArn, ()) => new({deviceId, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeAuditStreamConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn}
  type response = {
    @ocaml.doc(
      "<p>The ARN of the Amazon Kinesis data stream that will receive the audit events.</p>"
    )
    @as("AuditStreamArn")
    auditStreamArn: option<auditStreamArn>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DescribeAuditStreamConfigurationCommand"
  let make = (~fleetArn, ()) => new({fleetArn: fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteFleet = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn}
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "DeleteFleetCommand"
  let make = (~fleetArn, ()) => new({fleetArn: fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateWebsiteCertificateAuthority = {
  type t
  type request = {
    @ocaml.doc("<p>The certificate name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>The root certificate of the CA.</p>") @as("Certificate")
    certificate: certificate,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the CA.</p>") @as("WebsiteCaId") websiteCaId: option<id>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "AssociateWebsiteCertificateAuthorityCommand"
  let make = (~certificate, ~fleetArn, ~displayName=?, ()) =>
    new({displayName, certificate, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateWebsiteAuthorizationProvider = {
  type t
  type request = {
    @ocaml.doc("<p>The domain name of the authorization provider. This applies only to SAML-based
            authorization providers.</p>")
    @as("DomainName")
    domainName: option<domainName>,
    @ocaml.doc("<p>The authorization provider type.</p>") @as("AuthorizationProviderType")
    authorizationProviderType: authorizationProviderType,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>A unique identifier for the authorization provider.</p>")
    @as("AuthorizationProviderId")
    authorizationProviderId: option<id>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "AssociateWebsiteAuthorizationProviderCommand"
  let make = (~authorizationProviderType, ~fleetArn, ~domainName=?, ()) =>
    new({domainName, authorizationProviderType, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateDomain = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The ARN of an issued ACM certificate that is valid for the domain being associated.</p>"
    )
    @as("AcmCertificateArn")
    acmCertificateArn: acmCertificateArn,
    @ocaml.doc("<p>The name to display.</p>") @as("DisplayName") displayName: option<displayName>,
    @ocaml.doc("<p>The fully qualified domain name (FQDN).</p>") @as("DomainName")
    domainName: domainName,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") @as("FleetArn")
    fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "AssociateDomainCommand"
  let make = (~acmCertificateArn, ~domainName, ~fleetArn, ~displayName=?, ()) =>
    new({acmCertificateArn, displayName, domainName, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UpdateCompanyNetworkConfiguration = {
  type t
  type request = {
    @ocaml.doc("<p>The security groups associated with access to the provided subnets.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: securityGroupIds,
    @ocaml.doc(
      "<p>The subnets used for X-ENI connections from Amazon WorkLink rendering containers.</p>"
    )
    @as("SubnetIds")
    subnetIds: subnetIds,
    @ocaml.doc("<p>The VPC with connectivity to associated websites.</p>") @as("VpcId")
    vpcId: vpcId,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "UpdateCompanyNetworkConfigurationCommand"
  let make = (~securityGroupIds, ~subnetIds, ~vpcId, ~fleetArn, ()) =>
    new({securityGroupIds, subnetIds, vpcId, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The list of tag keys to remove from the resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") @as("ResourceArn")
    resourceArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add to the resource. A tag is a key-value pair.</p>") @as("Tags")
    tags: tagMap,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") @as("ResourceArn")
    resourceArn: fleetArn,
  }
  type response = {.}
  @module("@aws-sdk/client-worklink") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") @as("ResourceArn")
    resourceArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>The tags attached to the resource. A tag is a key-value pair.</p>") @as("Tags")
    tags: option<tagMap>,
  }
  @module("@aws-sdk/client-worklink") @new external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeFleetMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") @as("FleetArn")
    fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>The tags attached to the resource. A tag is a key-value pair.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The current state of the fleet.</p>") @as("FleetStatus")
    fleetStatus: option<fleetStatus>,
    @ocaml.doc("<p>The identifier used by users to sign in to the Amazon WorkLink app.</p>")
    @as("CompanyCode")
    companyCode: option<companyCode>,
    @ocaml.doc("<p>The option to optimize for better performance by routing traffic through the closest
            AWS Region to users, which may be outside of your home Region.</p>")
    @as("OptimizeForEndUserLocation")
    optimizeForEndUserLocation: option<boolean_>,
    @ocaml.doc("<p>The name to display.</p>") @as("DisplayName") displayName: option<displayName>,
    @ocaml.doc("<p>The name of the fleet.</p>") @as("FleetName") fleetName: option<fleetName>,
    @ocaml.doc("<p>The time that the fleet was last updated.</p>") @as("LastUpdatedTime")
    lastUpdatedTime: option<dateTime>,
    @ocaml.doc("<p>The time that the fleet was created.</p>") @as("CreatedTime")
    createdTime: option<dateTime>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DescribeFleetMetadataCommand"
  let make = (~fleetArn, ()) => new({fleetArn: fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCompanyNetworkConfiguration = {
  type t
  type request = {@ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn}
  type response = {
    @ocaml.doc("<p>The security groups associated with access to the provided subnets.</p>")
    @as("SecurityGroupIds")
    securityGroupIds: option<securityGroupIds>,
    @ocaml.doc(
      "<p>The subnets used for X-ENI connections from Amazon WorkLink rendering containers.</p>"
    )
    @as("SubnetIds")
    subnetIds: option<subnetIds>,
    @ocaml.doc("<p>The VPC with connectivity to associated websites.</p>") @as("VpcId")
    vpcId: option<vpcId>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "DescribeCompanyNetworkConfigurationCommand"
  let make = (~fleetArn, ()) => new({fleetArn: fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateFleet = {
  type t
  type request = {
    @ocaml.doc("<p> The tags to add to the resource. A tag is a key-value pair.</p>") @as("Tags")
    tags: option<tagMap>,
    @ocaml.doc("<p>The option to optimize for better performance by routing traffic through the closest
            AWS Region to users, which may be outside of your home Region.</p>")
    @as("OptimizeForEndUserLocation")
    optimizeForEndUserLocation: option<boolean_>,
    @ocaml.doc("<p>The fleet name to display.</p>") @as("DisplayName")
    displayName: option<displayName>,
    @ocaml.doc("<p>A unique name for the fleet.</p>") @as("FleetName") fleetName: fleetName,
  }
  type response = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the fleet.</p>") @as("FleetArn")
    fleetArn: option<fleetArn>,
  }
  @module("@aws-sdk/client-worklink") @new external new: request => t = "CreateFleetCommand"
  let make = (~fleetName, ~tags=?, ~optimizeForEndUserLocation=?, ~displayName=?, ()) =>
    new({tags, optimizeForEndUserLocation, displayName, fleetName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWebsiteCertificateAuthorities = {
  type t
  type request = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the certificates.</p>") @as("WebsiteCertificateAuthorities")
    websiteCertificateAuthorities: option<websiteCaSummaryList>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "ListWebsiteCertificateAuthoritiesCommand"
  let make = (~fleetArn, ~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListWebsiteAuthorizationProviders = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc(
      "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"
    )
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The website authorization providers.</p>") @as("WebsiteAuthorizationProviders")
    websiteAuthorizationProviders: option<websiteAuthorizationProvidersSummaryList>,
  }
  @module("@aws-sdk/client-worklink") @new
  external new: request => t = "ListWebsiteAuthorizationProvidersCommand"
  let make = (~fleetArn, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDomains = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the domains.</p>") @as("Domains")
    domains: option<domainSummaryList>,
  }
  @module("@aws-sdk/client-worklink") @new external new: request => t = "ListDomainsCommand"
  let make = (~fleetArn, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The ARN of the fleet.</p>") @as("FleetArn") fleetArn: fleetArn,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the devices.</p>") @as("Devices")
    devices: option<deviceSummaryList>,
  }
  @module("@aws-sdk/client-worklink") @new external new: request => t = "ListDevicesCommand"
  let make = (~fleetArn, ~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken, fleetArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListFleets = {
  type t
  type request = {
    @ocaml.doc("<p>The maximum number of results to be included in the next page.</p>")
    @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            this value is null, it retrieves the first page.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
  }
  type response = {
    @ocaml.doc("<p>The pagination token used to retrieve the next page of results for this operation. If
            there are no more pages, this value is null.</p>")
    @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The summary list of the fleets.</p>") @as("FleetSummaryList")
    fleetSummaryList: option<fleetSummaryList>,
  }
  @module("@aws-sdk/client-worklink") @new external new: request => t = "ListFleetsCommand"
  let make = (~maxResults=?, ~nextToken=?, ()) => new({maxResults, nextToken})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
