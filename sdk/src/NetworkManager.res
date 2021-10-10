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
@ocaml.doc("<p>Describes a validation exception for a field.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>The message for the field.</p>") @as("Message") message: string_,
  @ocaml.doc("<p>The name of the field.</p>") @as("Name") name: string_,
}
@ocaml.doc("<p>Describes the status of a transit gateway registration.</p>")
type transitGatewayRegistrationStateReason = {
  @ocaml.doc("<p>The message for the state reason.</p>") @as("Message") message: option<string_>,
  @ocaml.doc("<p>The code for the state reason.</p>") @as("Code")
  code: option<transitGatewayRegistrationState>,
}
@ocaml.doc("<p>Describes a transit gateway Connect peer association.</p>")
type transitGatewayConnectPeerAssociation = {
  @ocaml.doc("<p>The state of the association.</p>") @as("State")
  state: option<transitGatewayConnectPeerAssociationState>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<string_>,
  @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>")
  @as("TransitGatewayConnectPeerArn")
  transitGatewayConnectPeerArn: option<string_>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Describes a tag.</p>")
type tag = {
  @ocaml.doc("<p>The tag value.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>The tag key.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
  @as("Key")
  key: option<tagKey>,
}
type stringList = array<string_>
@ocaml.doc("<p>Describes a location.</p>")
type location = {
  @ocaml.doc("<p>The longitude.</p>") @as("Longitude") longitude: option<string_>,
  @ocaml.doc("<p>The latitude.</p>") @as("Latitude") latitude: option<string_>,
  @ocaml.doc("<p>The physical address.</p>") @as("Address") address: option<string_>,
}
@ocaml.doc("<p>Describes the association between a device and a link.</p>")
type linkAssociation = {
  @ocaml.doc("<p>The state of the association.</p>") @as("LinkAssociationState")
  linkAssociationState: option<linkAssociationState>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<string_>,
  @ocaml.doc("<p>The device ID for the link association.</p>") @as("DeviceId")
  deviceId: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
}
@ocaml.doc("<p>Describes the association between a customer gateway, a device, and a link.</p>")
type customerGatewayAssociation = {
  @ocaml.doc("<p>The association state.</p>") @as("State")
  state: option<customerGatewayAssociationState>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<string_>,
  @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer gateway.</p>")
  @as("CustomerGatewayArn")
  customerGatewayArn: option<string_>,
}
@ocaml.doc("<p>Describes bandwidth information.</p>")
type bandwidth = {
  @ocaml.doc("<p>Download speed in Mbps.</p>") @as("DownloadSpeed") downloadSpeed: option<integer_>,
  @ocaml.doc("<p>Upload speed in Mbps.</p>") @as("UploadSpeed") uploadSpeed: option<integer_>,
}
@ocaml.doc("<p>Specifies a location in AWS.</p>")
type awslocation = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the subnet the device is located in.</p>")
  @as("SubnetArn")
  subnetArn: option<string_>,
  @ocaml.doc(
    "<p>The Zone the device is located in. This can be the ID of an Availability Zone, Local Zone, Wavelength Zone, or an Outpost.</p>"
  )
  @as("Zone")
  zone: option<string_>,
}
type validationExceptionFieldList = array<validationExceptionField>
@ocaml.doc("<p>Describes the registration of a transit gateway to a global network.</p>")
type transitGatewayRegistration = {
  @ocaml.doc("<p>The state of the transit gateway registration.</p>") @as("State")
  state: option<transitGatewayRegistrationStateReason>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway.</p>")
  @as("TransitGatewayArn")
  transitGatewayArn: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
}
type transitGatewayConnectPeerAssociationList = array<transitGatewayConnectPeerAssociation>
type tagList_ = array<tag>
type linkAssociationList = array<linkAssociation>
type customerGatewayAssociationList = array<customerGatewayAssociation>
type transitGatewayRegistrationList = array<transitGatewayRegistration>
@ocaml.doc("<p>Describes a site.</p>")
type site = {
  @ocaml.doc("<p>The tags for the site.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the site.</p>") @as("State") state: option<siteState>,
  @ocaml.doc("<p>The date and time that the site was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The location of the site.</p>") @as("Location") location: option<location>,
  @ocaml.doc("<p>The description of the site.</p>") @as("Description") description: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the site.</p>") @as("SiteArn")
  siteArn: option<string_>,
  @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<string_>,
}
@ocaml.doc("<p>Describes a link.</p>")
type link = {
  @ocaml.doc("<p>The tags for the link.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the link.</p>") @as("State") state: option<linkState>,
  @ocaml.doc("<p>The date and time that the link was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The provider of the link.</p>") @as("Provider") provider: option<string_>,
  @ocaml.doc("<p>The bandwidth for the link.</p>") @as("Bandwidth") bandwidth: option<bandwidth>,
  @ocaml.doc("<p>The type of the link.</p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p>The description of the link.</p>") @as("Description") description: option<string_>,
  @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the link.</p>") @as("LinkArn")
  linkArn: option<string_>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<string_>,
}
@ocaml.doc("<p>Describes a global network.</p>")
type globalNetwork = {
  @ocaml.doc("<p>The tags for the global network.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the global network.</p>") @as("State")
  state: option<globalNetworkState>,
  @ocaml.doc("<p>The date and time that the global network was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The description of the global network.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the global network.</p>") @as("GlobalNetworkArn")
  globalNetworkArn: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
}
@ocaml.doc("<p>Describes a device.</p>")
type device = {
  @ocaml.doc("<p>The tags for the device.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The device state.</p>") @as("State") state: option<deviceState>,
  @ocaml.doc("<p>The date and time that the site was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The site ID.</p>") @as("SiteId") siteId: option<string_>,
  @ocaml.doc("<p>The site location.</p>") @as("Location") location: option<location>,
  @ocaml.doc("<p>The device serial number.</p>") @as("SerialNumber") serialNumber: option<string_>,
  @ocaml.doc("<p>The device model.</p>") @as("Model") model: option<string_>,
  @ocaml.doc("<p>The device vendor.</p>") @as("Vendor") vendor: option<string_>,
  @ocaml.doc("<p>The device type.</p>") @as("Type") type_: option<string_>,
  @ocaml.doc("<p>The description of the device.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The AWS location of the device.</p>") @as("AWSLocation")
  awslocation: option<awslocation>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device.</p>") @as("DeviceArn")
  deviceArn: option<string_>,
  @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<string_>,
}
@ocaml.doc("<p>Describes a connection.</p>")
type connection = {
  @ocaml.doc("<p>The tags for the connection.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the connection.</p>") @as("State") state: option<connectionState>,
  @ocaml.doc("<p>The date and time that the connection was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The description of the connection.</p>") @as("Description")
  description: option<string_>,
  @ocaml.doc("<p>The ID of the link for the second device in the connection.</p>")
  @as("ConnectedLinkId")
  connectedLinkId: option<string_>,
  @ocaml.doc("<p>The ID of the link for the first device in the connection.</p>") @as("LinkId")
  linkId: option<string_>,
  @ocaml.doc("<p>The ID of the second device in the connection.</p>") @as("ConnectedDeviceId")
  connectedDeviceId: option<string_>,
  @ocaml.doc("<p>The ID of the first device in the connection.</p>") @as("DeviceId")
  deviceId: option<string_>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<string_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connection.</p>") @as("ConnectionArn")
  connectionArn: option<string_>,
  @ocaml.doc("<p>The ID of the connection.</p>") @as("ConnectionId") connectionId: option<string_>,
}
type siteList = array<site>
type linkList = array<link>
type globalNetworkList = array<globalNetwork>
type deviceList = array<device>
type connectionList = array<connection>
@ocaml.doc("<p>Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your
            AWS and on-premises networks that are built around transit gateways.</p>
        <p>The Network Manager APIs are supported in the US West (Oregon) Region only. You must specify the <code>us-west-2</code> Region in all requests made to Network Manager.</p>")
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys to remove from the specified resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceARN,
  }

  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys: tagKeys, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the specified resource.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceARN,
  }

  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags: tags, resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}

module RegisterTransitGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway. For more information, see
                <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>.</p>")
    @as("TransitGatewayArn")
    transitGatewayArn: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the transit gateway registration.</p>")
    @as("TransitGatewayRegistration")
    transitGatewayRegistration: option<transitGatewayRegistration>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "RegisterTransitGatewayCommand"
  let make = (~transitGatewayArn, ~globalNetworkId, ()) =>
    new({transitGatewayArn: transitGatewayArn, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceARN,
  }
  type response = {@ocaml.doc("<p>The list of tags.</p>") @as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayConnectPeerAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more transit gateway Connect peer Amazon Resource Names (ARNs).</p>")
    @as("TransitGatewayConnectPeerArns")
    transitGatewayConnectPeerArns: option<stringList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token to use for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the transit gateway Connect peer associations.</p>")
    @as("TransitGatewayConnectPeerAssociations")
    transitGatewayConnectPeerAssociations: option<transitGatewayConnectPeerAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetTransitGatewayConnectPeerAssociationsCommand"
  let make = (
    ~globalNetworkId,
    ~nextToken=?,
    ~maxResults=?,
    ~transitGatewayConnectPeerArns=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      transitGatewayConnectPeerArns: transitGatewayConnectPeerArns,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLinkAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<string_>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<string_>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The link associations.</p>") @as("LinkAssociations")
    linkAssociations: option<linkAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetLinkAssociationsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~linkId=?, ~deviceId=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      linkId: linkId,
      deviceId: deviceId,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetCustomerGatewayAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more customer gateway Amazon Resource Names (ARNs). For more information, see
                <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>. The maximum is 10.</p>")
    @as("CustomerGatewayArns")
    customerGatewayArns: option<stringList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The customer gateway associations.</p>") @as("CustomerGatewayAssociations")
    customerGatewayAssociations: option<customerGatewayAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetCustomerGatewayAssociationsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~customerGatewayArns=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      customerGatewayArns: customerGatewayArns,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateTransitGatewayConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>")
    @as("TransitGatewayConnectPeerArn")
    transitGatewayConnectPeerArn: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The transit gateway Connect peer association.</p>")
    @as("TransitGatewayConnectPeerAssociation")
    transitGatewayConnectPeerAssociation: option<transitGatewayConnectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateTransitGatewayConnectPeerCommand"
  let make = (~transitGatewayConnectPeerArn, ~globalNetworkId, ()) =>
    new({
      transitGatewayConnectPeerArn: transitGatewayConnectPeerArn,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: string_,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the link association.</p>") @as("LinkAssociation")
    linkAssociation: option<linkAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateLinkCommand"
  let make = (~linkId, ~deviceId, ~globalNetworkId, ()) =>
    new({linkId: linkId, deviceId: deviceId, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DisassociateCustomerGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer gateway. For more information, see
                <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>.</p>")
    @as("CustomerGatewayArn")
    customerGatewayArn: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the customer gateway association.</p>")
    @as("CustomerGatewayAssociation")
    customerGatewayAssociation: option<customerGatewayAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateCustomerGatewayCommand"
  let make = (~customerGatewayArn, ~globalNetworkId, ()) =>
    new({customerGatewayArn: customerGatewayArn, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeregisterTransitGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway.</p>")
    @as("TransitGatewayArn")
    transitGatewayArn: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The transit gateway registration information.</p>")
    @as("TransitGatewayRegistration")
    transitGatewayRegistration: option<transitGatewayRegistration>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeregisterTransitGatewayCommand"
  let make = (~transitGatewayArn, ~globalNetworkId, ()) =>
    new({transitGatewayArn: transitGatewayArn, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateTransitGatewayConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<string_>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Connect peer.</p>")
    @as("TransitGatewayConnectPeerArn")
    transitGatewayConnectPeerArn: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The transit gateway Connect peer association.</p>")
    @as("TransitGatewayConnectPeerAssociation")
    transitGatewayConnectPeerAssociation: option<transitGatewayConnectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AssociateTransitGatewayConnectPeerCommand"
  let make = (~deviceId, ~transitGatewayConnectPeerArn, ~globalNetworkId, ~linkId=?, ()) =>
    new({
      linkId: linkId,
      deviceId: deviceId,
      transitGatewayConnectPeerArn: transitGatewayConnectPeerArn,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: string_,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The link association.</p>") @as("LinkAssociation")
    linkAssociation: option<linkAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "AssociateLinkCommand"
  let make = (~linkId, ~deviceId, ~globalNetworkId, ()) =>
    new({linkId: linkId, deviceId: deviceId, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module AssociateCustomerGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<string_>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer gateway. For more information, see
                <a href=\"https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazonec2.html#amazonec2-resources-for-iam-policies\">Resources Defined by Amazon EC2</a>.</p>")
    @as("CustomerGatewayArn")
    customerGatewayArn: string_,
  }
  type response = {
    @ocaml.doc("<p>The customer gateway association.</p>") @as("CustomerGatewayAssociation")
    customerGatewayAssociation: option<customerGatewayAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AssociateCustomerGatewayCommand"
  let make = (~deviceId, ~globalNetworkId, ~customerGatewayArn, ~linkId=?, ()) =>
    new({
      linkId: linkId,
      deviceId: deviceId,
      globalNetworkId: globalNetworkId,
      customerGatewayArn: customerGatewayArn,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateSite = {
  type t
  type request = {
    @ocaml.doc("<p>The site location:</p>
        <ul>
            <li>
               <p>
                  <code>Address</code>: The physical address of the site.</p>
            </li>
            <li>
               <p>
                  <code>Latitude</code>: The latitude of the site. </p>
            </li>
            <li>
               <p>
                  <code>Longitude</code>: The longitude of the site.</p>
            </li>
         </ul>")
    @as("Location")
    location: option<location>,
    @ocaml.doc("<p>A description of your site.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of your site.</p>") @as("SiteId") siteId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {@ocaml.doc("<p>Information about the site.</p>") @as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateSiteCommand"
  let make = (~siteId, ~globalNetworkId, ~location=?, ~description=?, ()) =>
    new({
      location: location,
      description: description,
      siteId: siteId,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The provider of the link.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Provider")
    provider: option<string_>,
    @ocaml.doc("<p>The upload and download speed in Mbps. </p>") @as("Bandwidth")
    bandwidth: option<bandwidth>,
    @ocaml.doc("<p>The type of the link.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Type")
    type_: option<string_>,
    @ocaml.doc("<p>A description of the link.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {@ocaml.doc("<p>Information about the link.</p>") @as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateLinkCommand"
  let make = (~linkId, ~globalNetworkId, ~provider=?, ~bandwidth=?, ~type_=?, ~description=?, ()) =>
    new({
      provider: provider,
      bandwidth: bandwidth,
      type_: type_,
      description: description,
      linkId: linkId,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateGlobalNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the global network.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of your global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the global network object.</p>") @as("GlobalNetwork")
    globalNetwork: option<globalNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateGlobalNetworkCommand"
  let make = (~globalNetworkId, ~description=?, ()) =>
    new({description: description, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<string_>,
    @as("Location") location: option<location>,
    @ocaml.doc("<p>The serial number of the device.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("SerialNumber")
    serialNumber: option<string_>,
    @ocaml.doc("<p>The model of the device.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Model")
    model: option<string_>,
    @ocaml.doc("<p>The vendor of the device.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Vendor")
    vendor: option<string_>,
    @ocaml.doc("<p>The type of the device.</p>") @as("Type") type_: option<string_>,
    @ocaml.doc("<p>A description of the device.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The AWS location of the device.</p>") @as("AWSLocation")
    awslocation: option<awslocation>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the device.</p>") @as("Device") device: option<device>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateDeviceCommand"
  let make = (
    ~deviceId,
    ~globalNetworkId,
    ~siteId=?,
    ~location=?,
    ~serialNumber=?,
    ~model=?,
    ~vendor=?,
    ~type_=?,
    ~description=?,
    ~awslocation=?,
    (),
  ) =>
    new({
      siteId: siteId,
      location: location,
      serialNumber: serialNumber,
      model: model,
      vendor: vendor,
      type_: type_,
      description: description,
      awslocation: awslocation,
      deviceId: deviceId,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module UpdateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the connection.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of the link for the second device in the connection.</p>")
    @as("ConnectedLinkId")
    connectedLinkId: option<string_>,
    @ocaml.doc("<p>The ID of the link for the first device in the connection.</p>") @as("LinkId")
    linkId: option<string_>,
    @ocaml.doc("<p>The ID of the connection.</p>") @as("ConnectionId") connectionId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the connection.</p>") @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateConnectionCommand"
  let make = (~connectionId, ~globalNetworkId, ~description=?, ~connectedLinkId=?, ~linkId=?, ()) =>
    new({
      description: description,
      connectedLinkId: connectedLinkId,
      linkId: linkId,
      connectionId: connectionId,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetTransitGatewayRegistrations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is
            10.</p>")
    @as("TransitGatewayArns")
    transitGatewayArns: option<stringList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The transit gateway registrations.</p>") @as("TransitGatewayRegistrations")
    transitGatewayRegistrations: option<transitGatewayRegistrationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetTransitGatewayRegistrationsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~transitGatewayArns=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      transitGatewayArns: transitGatewayArns,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteSite = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {@ocaml.doc("<p>Information about the site.</p>") @as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteSiteCommand"
  let make = (~siteId, ~globalNetworkId, ()) =>
    new({siteId: siteId, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteLink = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {@ocaml.doc("<p>Information about the link.</p>") @as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteLinkCommand"
  let make = (~linkId, ~globalNetworkId, ()) =>
    new({linkId: linkId, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteGlobalNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the global network.</p>") @as("GlobalNetwork")
    globalNetwork: option<globalNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteGlobalNetworkCommand"
  let make = (~globalNetworkId, ()) => new({globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the device.</p>") @as("Device") device: option<device>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteDeviceCommand"
  let make = (~deviceId, ~globalNetworkId, ()) =>
    new({deviceId: deviceId, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DeleteConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the connection.</p>") @as("ConnectionId") connectionId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the connection.</p>") @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteConnectionCommand"
  let make = (~connectionId, ~globalNetworkId, ()) =>
    new({connectionId: connectionId, globalNetworkId: globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateSite = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.</p>
        <ul>
            <li>
               <p>
                  <code>Address</code>: The physical address of the site.</p>
            </li>
            <li>
               <p>
                  <code>Latitude</code>: The latitude of the site. </p>
            </li>
            <li>
               <p>
                  <code>Longitude</code>: The longitude of the site.</p>
            </li>
         </ul>")
    @as("Location")
    location: option<location>,
    @ocaml.doc("<p>A description of your site.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {@ocaml.doc("<p>Information about the site.</p>") @as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "CreateSiteCommand"
  let make = (~globalNetworkId, ~tags=?, ~location=?, ~description=?, ()) =>
    new({
      tags: tags,
      location: location,
      description: description,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: string_,
    @ocaml.doc("<p>The provider of the link.</p>
        <p>Constraints: Cannot include the following characters: | \\ ^</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Provider")
    provider: option<string_>,
    @ocaml.doc("<p> The upload speed and download speed in Mbps. </p>") @as("Bandwidth")
    bandwidth: bandwidth,
    @ocaml.doc("<p>The type of the link.</p>
        <p>Constraints: Cannot include the following characters: | \\ ^</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Type")
    type_: option<string_>,
    @ocaml.doc("<p>A description of the link.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {@ocaml.doc("<p>Information about the link.</p>") @as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "CreateLinkCommand"
  let make = (
    ~siteId,
    ~bandwidth,
    ~globalNetworkId,
    ~tags=?,
    ~provider=?,
    ~type_=?,
    ~description=?,
    (),
  ) =>
    new({
      tags: tags,
      siteId: siteId,
      provider: provider,
      bandwidth: bandwidth,
      type_: type_,
      description: description,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateGlobalNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description of the global network.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
  }
  type response = {
    @ocaml.doc("<p>Information about the global network object.</p>") @as("GlobalNetwork")
    globalNetwork: option<globalNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateGlobalNetworkCommand"
  let make = (~tags=?, ~description=?, ()) => new({tags: tags, description: description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<string_>,
    @ocaml.doc("<p>The location of the device.</p>") @as("Location") location: option<location>,
    @ocaml.doc("<p>The serial number of the device.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("SerialNumber")
    serialNumber: option<string_>,
    @ocaml.doc("<p>The model of the device.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Model")
    model: option<string_>,
    @ocaml.doc("<p>The vendor of the device.</p>
        <p>Length Constraints: Maximum length of 128 characters.</p>")
    @as("Vendor")
    vendor: option<string_>,
    @ocaml.doc("<p>The type of the device.</p>") @as("Type") type_: option<string_>,
    @ocaml.doc("<p>A description of the device.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The AWS location of the device.</p>") @as("AWSLocation")
    awslocation: option<awslocation>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the device.</p>") @as("Device") device: option<device>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "CreateDeviceCommand"
  let make = (
    ~globalNetworkId,
    ~tags=?,
    ~siteId=?,
    ~location=?,
    ~serialNumber=?,
    ~model=?,
    ~vendor=?,
    ~type_=?,
    ~description=?,
    ~awslocation=?,
    (),
  ) =>
    new({
      tags: tags,
      siteId: siteId,
      location: location,
      serialNumber: serialNumber,
      model: model,
      vendor: vendor,
      type_: type_,
      description: description,
      awslocation: awslocation,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module CreateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description of the connection.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<string_>,
    @ocaml.doc("<p>The ID of the link for the second device.</p>") @as("ConnectedLinkId")
    connectedLinkId: option<string_>,
    @ocaml.doc("<p>The ID of the link for the first device.</p>") @as("LinkId")
    linkId: option<string_>,
    @ocaml.doc("<p>The ID of the second device in the connection.</p>") @as("ConnectedDeviceId")
    connectedDeviceId: string_,
    @ocaml.doc("<p>The ID of the first device in the connection.</p>") @as("DeviceId")
    deviceId: string_,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>Information about the connection.</p>") @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateConnectionCommand"
  let make = (
    ~connectedDeviceId,
    ~deviceId,
    ~globalNetworkId,
    ~tags=?,
    ~description=?,
    ~connectedLinkId=?,
    ~linkId=?,
    (),
  ) =>
    new({
      tags: tags,
      description: description,
      connectedLinkId: connectedLinkId,
      linkId: linkId,
      connectedDeviceId: connectedDeviceId,
      deviceId: deviceId,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetSites = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more site IDs. The maximum is 10.</p>") @as("SiteIds")
    siteIds: option<stringList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The sites.</p>") @as("Sites") sites: option<siteList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetSitesCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~siteIds=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      siteIds: siteIds,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetLinks = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The link provider.</p>") @as("Provider") provider: option<string_>,
    @ocaml.doc("<p>The link type.</p>") @as("Type") type_: option<string_>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<string_>,
    @ocaml.doc("<p>One or more link IDs. The maximum is 10.</p>") @as("LinkIds")
    linkIds: option<stringList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The links.</p>") @as("Links") links: option<linkList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetLinksCommand"
  let make = (
    ~globalNetworkId,
    ~nextToken=?,
    ~maxResults=?,
    ~provider=?,
    ~type_=?,
    ~siteId=?,
    ~linkIds=?,
    (),
  ) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      provider: provider,
      type_: type_,
      siteId: siteId,
      linkIds: linkIds,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<string_>,
    @ocaml.doc("<p>One or more device IDs. The maximum is 10.</p>") @as("DeviceIds")
    deviceIds: option<stringList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The devices.</p>") @as("Devices") devices: option<deviceList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetDevicesCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~siteId=?, ~deviceIds=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      siteId: siteId,
      deviceIds: deviceIds,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module GetConnections = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<string_>,
    @ocaml.doc("<p>One or more connection IDs.</p>") @as("ConnectionIds")
    connectionIds: option<stringList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: string_,
  }
  type response = {
    @ocaml.doc("<p>The token to use for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the connections.</p>") @as("Connections")
    connections: option<connectionList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetConnectionsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~deviceId=?, ~connectionIds=?, ()) =>
    new({
      nextToken: nextToken,
      maxResults: maxResults,
      deviceId: deviceId,
      connectionIds: connectionIds,
      globalNetworkId: globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}

module DescribeGlobalNetworks = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The IDs of one or more global networks. The maximum is 10.</p>")
    @as("GlobalNetworkIds")
    globalNetworkIds: option<stringList>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<string_>,
    @ocaml.doc("<p>Information about the global networks.</p>") @as("GlobalNetworks")
    globalNetworks: option<globalNetworkList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DescribeGlobalNetworksCommand"
  let make = (~nextToken=?, ~maxResults=?, ~globalNetworkIds=?, ()) =>
    new({nextToken: nextToken, maxResults: maxResults, globalNetworkIds: globalNetworkIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
