type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type validationExceptionReason = [@as("Other") #Other | @as("FieldValidationFailed") #FieldValidationFailed | @as("CannotParse") #CannotParse | @as("UnknownOperation") #UnknownOperation]
type transitGatewayRegistrationState = [@as("FAILED") #FAILED | @as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type transitGatewayConnectPeerAssociationState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type tagValue = string
type tagKey = string
type amazonawsString = string
type siteState = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type retryAfterSeconds = int;
type resourceARN = string
type maxResults = int;
type linkState = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type linkAssociationState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type amazonawsInteger = int;
type globalNetworkState = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type deviceState = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type dateTime = Js.Date.t;
type customerGatewayAssociationState = [@as("DELETED") #DELETED | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type connectionState = [@as("UPDATING") #UPDATING | @as("DELETING") #DELETING | @as("AVAILABLE") #AVAILABLE | @as("PENDING") #PENDING]
type validationExceptionField = {
@as("Message") message: option<amazonawsString>,
@as("Name") name: option<amazonawsString>
}
type transitGatewayRegistrationStateReason = {
@as("Message") message: amazonawsString,
@as("Code") code: transitGatewayRegistrationState
}
type transitGatewayConnectPeerAssociation = {
@as("State") state: transitGatewayConnectPeerAssociationState,
@as("LinkId") linkId: amazonawsString,
@as("DeviceId") deviceId: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString,
@as("TransitGatewayConnectPeerArn") transitGatewayConnectPeerArn: amazonawsString
}
type tagKeyList = array<tagKey>
type tag = {
@as("Value") value: tagValue,
@as("Key") key: tagKey
}
type stringList = array<amazonawsString>
type location = {
@as("Longitude") longitude: amazonawsString,
@as("Latitude") latitude: amazonawsString,
@as("Address") address: amazonawsString
}
type linkAssociation = {
@as("LinkAssociationState") linkAssociationState: linkAssociationState,
@as("LinkId") linkId: amazonawsString,
@as("DeviceId") deviceId: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString
}
type customerGatewayAssociation = {
@as("State") state: customerGatewayAssociationState,
@as("LinkId") linkId: amazonawsString,
@as("DeviceId") deviceId: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString,
@as("CustomerGatewayArn") customerGatewayArn: amazonawsString
}
type bandwidth = {
@as("DownloadSpeed") downloadSpeed: amazonawsInteger,
@as("UploadSpeed") uploadSpeed: amazonawsInteger
}
type aWSLocation = {
@as("SubnetArn") subnetArn: amazonawsString,
@as("Zone") zone: amazonawsString
}
type validationExceptionFieldList = array<validationExceptionField>
type transitGatewayRegistration = {
@as("State") state: transitGatewayRegistrationStateReason,
@as("TransitGatewayArn") transitGatewayArn: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString
}
type transitGatewayConnectPeerAssociationList = array<transitGatewayConnectPeerAssociation>
type tagList = array<tag>
type linkAssociationList = array<linkAssociation>
type customerGatewayAssociationList = array<customerGatewayAssociation>
type transitGatewayRegistrationList = array<transitGatewayRegistration>
type site = {
@as("Tags") tags: tagList,
@as("State") state: siteState,
@as("CreatedAt") createdAt: dateTime,
@as("Location") location: location,
@as("Description") description: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString,
@as("SiteArn") siteArn: amazonawsString,
@as("SiteId") siteId: amazonawsString
}
type link = {
@as("Tags") tags: tagList,
@as("State") state: linkState,
@as("CreatedAt") createdAt: dateTime,
@as("Provider") provider: amazonawsString,
@as("Bandwidth") bandwidth: bandwidth,
@as("Type") type_: amazonawsString,
@as("Description") description: amazonawsString,
@as("SiteId") siteId: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString,
@as("LinkArn") linkArn: amazonawsString,
@as("LinkId") linkId: amazonawsString
}
type globalNetwork = {
@as("Tags") tags: tagList,
@as("State") state: globalNetworkState,
@as("CreatedAt") createdAt: dateTime,
@as("Description") description: amazonawsString,
@as("GlobalNetworkArn") globalNetworkArn: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString
}
type device = {
@as("Tags") tags: tagList,
@as("State") state: deviceState,
@as("CreatedAt") createdAt: dateTime,
@as("SiteId") siteId: amazonawsString,
@as("Location") location: location,
@as("SerialNumber") serialNumber: amazonawsString,
@as("Model") model: amazonawsString,
@as("Vendor") vendor: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Description") description: amazonawsString,
@as("AWSLocation") aWSLocation: aWSLocation,
@as("GlobalNetworkId") globalNetworkId: amazonawsString,
@as("DeviceArn") deviceArn: amazonawsString,
@as("DeviceId") deviceId: amazonawsString
}
type connection = {
@as("Tags") tags: tagList,
@as("State") state: connectionState,
@as("CreatedAt") createdAt: dateTime,
@as("Description") description: amazonawsString,
@as("ConnectedLinkId") connectedLinkId: amazonawsString,
@as("LinkId") linkId: amazonawsString,
@as("ConnectedDeviceId") connectedDeviceId: amazonawsString,
@as("DeviceId") deviceId: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: amazonawsString,
@as("ConnectionArn") connectionArn: amazonawsString,
@as("ConnectionId") connectionId: amazonawsString
}
type siteList = array<site>
type linkList = array<link>
type globalNetworkList = array<globalNetwork>
type deviceList = array<device>
type connectionList = array<connection>
type clientType;
@module("@aws-sdk/client-networkmanager") @new external createClient: unit => clientType = "NetworkManagerClient";
module UntagResource = {
  type t;
  type request = {
@as("TagKeys") tagKeys: option<tagKeyList>,
@as("ResourceArn") resourceArn: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("Tags") tags: option<tagList>,
@as("ResourceArn") resourceArn: option<resourceARN>
}
  type response = unit
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module RegisterTransitGateway = {
  type t;
  type request = {
@as("TransitGatewayArn") transitGatewayArn: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("TransitGatewayRegistration") transitGatewayRegistration: transitGatewayRegistration
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "RegisterTransitGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListTagsForResource = {
  type t;
  type request = {
@as("ResourceArn") resourceArn: option<resourceARN>
}
  type response = {
@as("TagList") tagList: tagList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "ListTagsForResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTransitGatewayConnectPeerAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("TransitGatewayConnectPeerArns") transitGatewayConnectPeerArns: stringList,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayConnectPeerAssociations") transitGatewayConnectPeerAssociations: transitGatewayConnectPeerAssociationList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetTransitGatewayConnectPeerAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLinkAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("LinkId") linkId: amazonawsString,
@as("DeviceId") deviceId: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("LinkAssociations") linkAssociations: linkAssociationList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetLinkAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetCustomerGatewayAssociations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("CustomerGatewayArns") customerGatewayArns: stringList,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("CustomerGatewayAssociations") customerGatewayAssociations: customerGatewayAssociationList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetCustomerGatewayAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateTransitGatewayConnectPeer = {
  type t;
  type request = {
@as("TransitGatewayConnectPeerArn") transitGatewayConnectPeerArn: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("TransitGatewayConnectPeerAssociation") transitGatewayConnectPeerAssociation: transitGatewayConnectPeerAssociation
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DisassociateTransitGatewayConnectPeerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateLink = {
  type t;
  type request = {
@as("LinkId") linkId: option<amazonawsString>,
@as("DeviceId") deviceId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("LinkAssociation") linkAssociation: linkAssociation
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DisassociateLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateCustomerGateway = {
  type t;
  type request = {
@as("CustomerGatewayArn") customerGatewayArn: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("CustomerGatewayAssociation") customerGatewayAssociation: customerGatewayAssociation
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DisassociateCustomerGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeregisterTransitGateway = {
  type t;
  type request = {
@as("TransitGatewayArn") transitGatewayArn: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("TransitGatewayRegistration") transitGatewayRegistration: transitGatewayRegistration
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DeregisterTransitGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateTransitGatewayConnectPeer = {
  type t;
  type request = {
@as("LinkId") linkId: amazonawsString,
@as("DeviceId") deviceId: option<amazonawsString>,
@as("TransitGatewayConnectPeerArn") transitGatewayConnectPeerArn: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("TransitGatewayConnectPeerAssociation") transitGatewayConnectPeerAssociation: transitGatewayConnectPeerAssociation
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "AssociateTransitGatewayConnectPeerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateLink = {
  type t;
  type request = {
@as("LinkId") linkId: option<amazonawsString>,
@as("DeviceId") deviceId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("LinkAssociation") linkAssociation: linkAssociation
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "AssociateLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateCustomerGateway = {
  type t;
  type request = {
@as("LinkId") linkId: amazonawsString,
@as("DeviceId") deviceId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>,
@as("CustomerGatewayArn") customerGatewayArn: option<amazonawsString>
}
  type response = {
@as("CustomerGatewayAssociation") customerGatewayAssociation: customerGatewayAssociation
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "AssociateCustomerGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateSite = {
  type t;
  type request = {
@as("Location") location: location,
@as("Description") description: amazonawsString,
@as("SiteId") siteId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Site") site: site
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateSiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLink = {
  type t;
  type request = {
@as("Provider") provider: amazonawsString,
@as("Bandwidth") bandwidth: bandwidth,
@as("Type") type_: amazonawsString,
@as("Description") description: amazonawsString,
@as("LinkId") linkId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Link") link: link
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateGlobalNetwork = {
  type t;
  type request = {
@as("Description") description: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("GlobalNetwork") globalNetwork: globalNetwork
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateGlobalNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDevice = {
  type t;
  type request = {
@as("SiteId") siteId: amazonawsString,
@as("Location") location: location,
@as("SerialNumber") serialNumber: amazonawsString,
@as("Model") model: amazonawsString,
@as("Vendor") vendor: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Description") description: amazonawsString,
@as("AWSLocation") aWSLocation: aWSLocation,
@as("DeviceId") deviceId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Device") device: device
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnection = {
  type t;
  type request = {
@as("Description") description: amazonawsString,
@as("ConnectedLinkId") connectedLinkId: amazonawsString,
@as("LinkId") linkId: amazonawsString,
@as("ConnectionId") connectionId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "UpdateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetTransitGatewayRegistrations = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("TransitGatewayArns") transitGatewayArns: stringList,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("TransitGatewayRegistrations") transitGatewayRegistrations: transitGatewayRegistrationList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetTransitGatewayRegistrationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteSite = {
  type t;
  type request = {
@as("SiteId") siteId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Site") site: site
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteSiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLink = {
  type t;
  type request = {
@as("LinkId") linkId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Link") link: link
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteGlobalNetwork = {
  type t;
  type request = {
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("GlobalNetwork") globalNetwork: globalNetwork
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteGlobalNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDevice = {
  type t;
  type request = {
@as("DeviceId") deviceId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Device") device: device
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("ConnectionId") connectionId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateSite = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Location") location: location,
@as("Description") description: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Site") site: site
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateSiteCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLink = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SiteId") siteId: option<amazonawsString>,
@as("Provider") provider: amazonawsString,
@as("Bandwidth") bandwidth: option<bandwidth>,
@as("Type") type_: amazonawsString,
@as("Description") description: amazonawsString,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Link") link: link
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateLinkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateGlobalNetwork = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString
}
  type response = {
@as("GlobalNetwork") globalNetwork: globalNetwork
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateGlobalNetworkCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDevice = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("SiteId") siteId: amazonawsString,
@as("Location") location: location,
@as("SerialNumber") serialNumber: amazonawsString,
@as("Model") model: amazonawsString,
@as("Vendor") vendor: amazonawsString,
@as("Type") type_: amazonawsString,
@as("Description") description: amazonawsString,
@as("AWSLocation") aWSLocation: aWSLocation,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Device") device: device
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateDeviceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("Tags") tags: tagList,
@as("Description") description: amazonawsString,
@as("ConnectedLinkId") connectedLinkId: amazonawsString,
@as("LinkId") linkId: amazonawsString,
@as("ConnectedDeviceId") connectedDeviceId: option<amazonawsString>,
@as("DeviceId") deviceId: option<amazonawsString>,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("Connection") connection: connection
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetSites = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("SiteIds") siteIds: stringList,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Sites") sites: siteList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetSitesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetLinks = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("Provider") provider: amazonawsString,
@as("Type") type_: amazonawsString,
@as("SiteId") siteId: amazonawsString,
@as("LinkIds") linkIds: stringList,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Links") links: linkList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetLinksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetDevices = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("SiteId") siteId: amazonawsString,
@as("DeviceIds") deviceIds: stringList,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Devices") devices: deviceList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetDevicesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module GetConnections = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("DeviceId") deviceId: amazonawsString,
@as("ConnectionIds") connectionIds: stringList,
@as("GlobalNetworkId") globalNetworkId: option<amazonawsString>
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("Connections") connections: connectionList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "GetConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeGlobalNetworks = {
  type t;
  type request = {
@as("NextToken") nextToken: amazonawsString,
@as("MaxResults") maxResults: maxResults,
@as("GlobalNetworkIds") globalNetworkIds: stringList
}
  type response = {
@as("NextToken") nextToken: amazonawsString,
@as("GlobalNetworks") globalNetworks: globalNetworkList
}
  @module("@aws-sdk/client-networkmanager") @new external new_: (Js.Promise.t<request>) => t = "DescribeGlobalNetworksCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
