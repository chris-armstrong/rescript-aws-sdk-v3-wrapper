type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-networkmanager") @new
external createClient: unit => awsServiceClient = "NetworkManagerClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type validationExceptionReason = [
  | @as("Other") #Other
  | @as("FieldValidationFailed") #FieldValidationFailed
  | @as("CannotParse") #CannotParse
  | @as("UnknownOperation") #UnknownOperation
]
type transitGatewayRegistrationState = [
  | @as("FAILED") #FAILED
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type transitGatewayConnectPeerAssociationState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type tagValue = string
type tagKey = string
type string_ = string
type siteState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type retryAfterSeconds = int
type resourceARN = string
type maxResults = int
type linkState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type linkAssociationState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type integer_ = int
type globalNetworkState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type deviceState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type dateTime = Js.Date.t
type customerGatewayAssociationState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type connectionState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type validationExceptionField = {
  @as("Message") message: string_,
  @as("Name") name: string_,
}
type transitGatewayRegistrationStateReason = {
  @as("Message") message: option<string_>,
  @as("Code") code: option<transitGatewayRegistrationState>,
}
type transitGatewayConnectPeerAssociation = {
  @as("State") state: option<transitGatewayConnectPeerAssociationState>,
  @as("LinkId") linkId: option<string_>,
  @as("DeviceId") deviceId: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
  @as("TransitGatewayConnectPeerArn") transitGatewayConnectPeerArn: option<string_>,
}
type tagKeyList = array<tagKey>
type tag = {
  @as("Value") value: option<tagValue>,
  @as("Key") key: option<tagKey>,
}
type stringList = array<string_>
type location = {
  @as("Longitude") longitude: option<string_>,
  @as("Latitude") latitude: option<string_>,
  @as("Address") address: option<string_>,
}
type linkAssociation = {
  @as("LinkAssociationState") linkAssociationState: option<linkAssociationState>,
  @as("LinkId") linkId: option<string_>,
  @as("DeviceId") deviceId: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
}
type customerGatewayAssociation = {
  @as("State") state: option<customerGatewayAssociationState>,
  @as("LinkId") linkId: option<string_>,
  @as("DeviceId") deviceId: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
  @as("CustomerGatewayArn") customerGatewayArn: option<string_>,
}
type bandwidth = {
  @as("DownloadSpeed") downloadSpeed: option<integer_>,
  @as("UploadSpeed") uploadSpeed: option<integer_>,
}
type awslocation = {
  @as("SubnetArn") subnetArn: option<string_>,
  @as("Zone") zone: option<string_>,
}
type validationExceptionFieldList = array<validationExceptionField>
type transitGatewayRegistration = {
  @as("State") state: option<transitGatewayRegistrationStateReason>,
  @as("TransitGatewayArn") transitGatewayArn: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
}
type transitGatewayConnectPeerAssociationList = array<transitGatewayConnectPeerAssociation>
type tagList_ = array<tag>
type linkAssociationList = array<linkAssociation>
type customerGatewayAssociationList = array<customerGatewayAssociation>
type transitGatewayRegistrationList = array<transitGatewayRegistration>
type site = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<siteState>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("Location") location: option<location>,
  @as("Description") description: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
  @as("SiteArn") siteArn: option<string_>,
  @as("SiteId") siteId: option<string_>,
}
type link = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<linkState>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("Provider") provider: option<string_>,
  @as("Bandwidth") bandwidth: option<bandwidth>,
  @as("Type") type_: option<string_>,
  @as("Description") description: option<string_>,
  @as("SiteId") siteId: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
  @as("LinkArn") linkArn: option<string_>,
  @as("LinkId") linkId: option<string_>,
}
type globalNetwork = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<globalNetworkState>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("Description") description: option<string_>,
  @as("GlobalNetworkArn") globalNetworkArn: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
}
type device = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<deviceState>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("SiteId") siteId: option<string_>,
  @as("Location") location: option<location>,
  @as("SerialNumber") serialNumber: option<string_>,
  @as("Model") model: option<string_>,
  @as("Vendor") vendor: option<string_>,
  @as("Type") type_: option<string_>,
  @as("Description") description: option<string_>,
  @as("AWSLocation") awslocation: option<awslocation>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
  @as("DeviceArn") deviceArn: option<string_>,
  @as("DeviceId") deviceId: option<string_>,
}
type connection = {
  @as("Tags") tags: option<tagList_>,
  @as("State") state: option<connectionState>,
  @as("CreatedAt") createdAt: option<dateTime>,
  @as("Description") description: option<string_>,
  @as("ConnectedLinkId") connectedLinkId: option<string_>,
  @as("LinkId") linkId: option<string_>,
  @as("ConnectedDeviceId") connectedDeviceId: option<string_>,
  @as("DeviceId") deviceId: option<string_>,
  @as("GlobalNetworkId") globalNetworkId: option<string_>,
  @as("ConnectionArn") connectionArn: option<string_>,
  @as("ConnectionId") connectionId: option<string_>,
}
type siteList = array<site>
type linkList = array<link>
type globalNetworkList = array<globalNetwork>
type deviceList = array<device>
type connectionList = array<connection>

module UntagResource = {
  type t
  type request = {
    @as("TagKeys") tagKeys: tagKeyList,
    @as("ResourceArn") resourceArn: resourceARN,
  }
  type response = unit
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UntagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module TagResource = {
  type t
  type request = {
    @as("Tags") tags: tagList_,
    @as("ResourceArn") resourceArn: resourceARN,
  }
  type response = unit
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "TagResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module RegisterTransitGateway = {
  type t
  type request = {
    @as("TransitGatewayArn") transitGatewayArn: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("TransitGatewayRegistration")
    transitGatewayRegistration: option<transitGatewayRegistration>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "RegisterTransitGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {@as("ResourceArn") resourceArn: resourceARN}
  type response = {@as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ListTagsForResourceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayConnectPeerAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("TransitGatewayConnectPeerArns") transitGatewayConnectPeerArns: option<stringList>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayConnectPeerAssociations")
    transitGatewayConnectPeerAssociations: option<transitGatewayConnectPeerAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetTransitGatewayConnectPeerAssociationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLinkAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("LinkId") linkId: option<string_>,
    @as("DeviceId") deviceId: option<string_>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("LinkAssociations") linkAssociations: option<linkAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetLinkAssociationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCustomerGatewayAssociations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("CustomerGatewayArns") customerGatewayArns: option<stringList>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("CustomerGatewayAssociations")
    customerGatewayAssociations: option<customerGatewayAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetCustomerGatewayAssociationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateTransitGatewayConnectPeer = {
  type t
  type request = {
    @as("TransitGatewayConnectPeerArn") transitGatewayConnectPeerArn: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("TransitGatewayConnectPeerAssociation")
    transitGatewayConnectPeerAssociation: option<transitGatewayConnectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateTransitGatewayConnectPeerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateLink = {
  type t
  type request = {
    @as("LinkId") linkId: string_,
    @as("DeviceId") deviceId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("LinkAssociation") linkAssociation: option<linkAssociation>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateCustomerGateway = {
  type t
  type request = {
    @as("CustomerGatewayArn") customerGatewayArn: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("CustomerGatewayAssociation")
    customerGatewayAssociation: option<customerGatewayAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateCustomerGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTransitGateway = {
  type t
  type request = {
    @as("TransitGatewayArn") transitGatewayArn: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("TransitGatewayRegistration")
    transitGatewayRegistration: option<transitGatewayRegistration>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeregisterTransitGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateTransitGatewayConnectPeer = {
  type t
  type request = {
    @as("LinkId") linkId: option<string_>,
    @as("DeviceId") deviceId: string_,
    @as("TransitGatewayConnectPeerArn") transitGatewayConnectPeerArn: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("TransitGatewayConnectPeerAssociation")
    transitGatewayConnectPeerAssociation: option<transitGatewayConnectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AssociateTransitGatewayConnectPeerCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateLink = {
  type t
  type request = {
    @as("LinkId") linkId: string_,
    @as("DeviceId") deviceId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("LinkAssociation") linkAssociation: option<linkAssociation>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "AssociateLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateCustomerGateway = {
  type t
  type request = {
    @as("LinkId") linkId: option<string_>,
    @as("DeviceId") deviceId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
    @as("CustomerGatewayArn") customerGatewayArn: string_,
  }
  type response = {
    @as("CustomerGatewayAssociation")
    customerGatewayAssociation: option<customerGatewayAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AssociateCustomerGatewayCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSite = {
  type t
  type request = {
    @as("Location") location: option<location>,
    @as("Description") description: option<string_>,
    @as("SiteId") siteId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateSiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLink = {
  type t
  type request = {
    @as("Provider") provider: option<string_>,
    @as("Bandwidth") bandwidth: option<bandwidth>,
    @as("Type") type_: option<string_>,
    @as("Description") description: option<string_>,
    @as("LinkId") linkId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalNetwork = {
  type t
  type request = {
    @as("Description") description: option<string_>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("GlobalNetwork") globalNetwork: option<globalNetwork>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateGlobalNetworkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDevice = {
  type t
  type request = {
    @as("SiteId") siteId: option<string_>,
    @as("Location") location: option<location>,
    @as("SerialNumber") serialNumber: option<string_>,
    @as("Model") model: option<string_>,
    @as("Vendor") vendor: option<string_>,
    @as("Type") type_: option<string_>,
    @as("Description") description: option<string_>,
    @as("AWSLocation") awslocation: option<awslocation>,
    @as("DeviceId") deviceId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Device") device: option<device>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnection = {
  type t
  type request = {
    @as("Description") description: option<string_>,
    @as("ConnectedLinkId") connectedLinkId: option<string_>,
    @as("LinkId") linkId: option<string_>,
    @as("ConnectionId") connectionId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Connection") connection: option<connection>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateConnectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayRegistrations = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("TransitGatewayArns") transitGatewayArns: option<stringList>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("TransitGatewayRegistrations")
    transitGatewayRegistrations: option<transitGatewayRegistrationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetTransitGatewayRegistrationsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSite = {
  type t
  type request = {
    @as("SiteId") siteId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteSiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLink = {
  type t
  type request = {
    @as("LinkId") linkId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGlobalNetwork = {
  type t
  type request = {@as("GlobalNetworkId") globalNetworkId: string_}
  type response = {@as("GlobalNetwork") globalNetwork: option<globalNetwork>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteGlobalNetworkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDevice = {
  type t
  type request = {
    @as("DeviceId") deviceId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Device") device: option<device>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConnection = {
  type t
  type request = {
    @as("ConnectionId") connectionId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Connection") connection: option<connection>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteConnectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSite = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Location") location: option<location>,
    @as("Description") description: option<string_>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "CreateSiteCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLink = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("SiteId") siteId: string_,
    @as("Provider") provider: option<string_>,
    @as("Bandwidth") bandwidth: bandwidth,
    @as("Type") type_: option<string_>,
    @as("Description") description: option<string_>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "CreateLinkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGlobalNetwork = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<string_>,
  }
  type response = {@as("GlobalNetwork") globalNetwork: option<globalNetwork>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateGlobalNetworkCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDevice = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("SiteId") siteId: option<string_>,
    @as("Location") location: option<location>,
    @as("SerialNumber") serialNumber: option<string_>,
    @as("Model") model: option<string_>,
    @as("Vendor") vendor: option<string_>,
    @as("Type") type_: option<string_>,
    @as("Description") description: option<string_>,
    @as("AWSLocation") awslocation: option<awslocation>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Device") device: option<device>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "CreateDeviceCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnection = {
  type t
  type request = {
    @as("Tags") tags: option<tagList_>,
    @as("Description") description: option<string_>,
    @as("ConnectedLinkId") connectedLinkId: option<string_>,
    @as("LinkId") linkId: option<string_>,
    @as("ConnectedDeviceId") connectedDeviceId: string_,
    @as("DeviceId") deviceId: string_,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {@as("Connection") connection: option<connection>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateConnectionCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSites = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("SiteIds") siteIds: option<stringList>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Sites") sites: option<siteList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetSitesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLinks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("Provider") provider: option<string_>,
    @as("Type") type_: option<string_>,
    @as("SiteId") siteId: option<string_>,
    @as("LinkIds") linkIds: option<stringList>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Links") links: option<linkList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetLinksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevices = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("SiteId") siteId: option<string_>,
    @as("DeviceIds") deviceIds: option<stringList>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Devices") devices: option<deviceList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetDevicesCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnections = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("DeviceId") deviceId: option<string_>,
    @as("ConnectionIds") connectionIds: option<stringList>,
    @as("GlobalNetworkId") globalNetworkId: string_,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("Connections") connections: option<connectionList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetConnectionsCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalNetworks = {
  type t
  type request = {
    @as("NextToken") nextToken: option<string_>,
    @as("MaxResults") maxResults: option<maxResults>,
    @as("GlobalNetworkIds") globalNetworkIds: option<stringList>,
  }
  type response = {
    @as("NextToken") nextToken: option<string_>,
    @as("GlobalNetworks") globalNetworks: option<globalNetworkList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DescribeGlobalNetworksCommand"
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
