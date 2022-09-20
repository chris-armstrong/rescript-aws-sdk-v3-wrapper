type responseMetadata = {
  httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>,
}
type awsServiceClient
@module("@aws-sdk/client-directconnect") @new
external createClient: unit => awsServiceClient = "DirectConnectClient"
type baseString = string
type baseBoolean = bool
type baseInteger = int
type baseTimestamp = Js.Date.t
type baseLong = float
type xsltTemplateNameForMacSec = string
type xsltTemplateName = string
type virtualInterfaceType = string
type virtualInterfaceState = [
  | @as("unknown") #Unknown
  | @as("rejected") #Rejected
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("down") #Down
  | @as("available") #Available
  | @as("pending") #Pending
  | @as("verifying") #Verifying
  | @as("confirming") #Confirming
]
type virtualInterfaceRegion = string
type virtualInterfaceName = string
type virtualInterfaceId = string
type virtualGatewayState = string
type virtualGatewayRegion = string
type virtualGatewayId = string
type vendor = string
type vlan = int
type testId = string
type testDuration = int
type tagValue = string
type tagKey = string
type status = string
type stateChangeError = string
type state = string
type startTime = Js.Date.t
type startOnDate = string
type software = string
type siteLinkEnabled = bool
type secretARN = string
type routerTypeIdentifier = string
type routerConfig = string
type resourceArn = string
type requestMACSec = bool
type region = string
type providerName = string
type portSpeed = string
type portEncryptionStatus = string
type platform = string
type partnerName = string
type paginationToken = string
type ownerAccount = string
type nniPartnerType = [@as("nonPartner") #NonPartner | @as("v2") #V2 | @as("v1") #V1]
type maxResultSetSize = int
type macSecCapable = bool
type mtu = int
type longAsn = float
type locationName = string
type locationCode = string
type loaIssueTime = Js.Date.t
type loaContentType = [@as("application/pdf") #Application_Pdf]
type loaContent = NodeJs.Buffer.t
type lagState = [
  | @as("unknown") #Unknown
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("down") #Down
  | @as("available") #Available
  | @as("pending") #Pending
  | @as("requested") #Requested
]
type lagName = string
type lagId = string
type jumboFrameCapable = bool
type interconnectState = [
  | @as("unknown") #Unknown
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("down") #Down
  | @as("available") #Available
  | @as("pending") #Pending
  | @as("requested") #Requested
]
type interconnectName = string
type interconnectId = string
type hasLogicalRedundancy = [@as("no") #No | @as("yes") #Yes | @as("unknown") #Unknown]
type gatewayType = [
  | @as("transitGateway") #TransitGateway
  | @as("virtualPrivateGateway") #VirtualPrivateGateway
]
type gatewayIdentifier = string
type gatewayIdToAssociate = string
type failureTestHistoryStatus = string
type errorMessage = string
type endTime = Js.Date.t
type encryptionMode = string
type enableSiteLink = bool
type directConnectGatewayState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
]
type directConnectGatewayName = string
type directConnectGatewayId = string
type directConnectGatewayAttachmentType = [
  | @as("PrivateVirtualInterface") #PrivateVirtualInterface
  | @as("TransitVirtualInterface") #TransitVirtualInterface
]
type directConnectGatewayAttachmentState = [
  | @as("detached") #Detached
  | @as("detaching") #Detaching
  | @as("attached") #Attached
  | @as("attaching") #Attaching
]
type directConnectGatewayAssociationState = [
  | @as("updating") #Updating
  | @as("disassociated") #Disassociated
  | @as("disassociating") #Disassociating
  | @as("associated") #Associated
  | @as("associating") #Associating
]
type directConnectGatewayAssociationProposalState = [
  | @as("deleted") #Deleted
  | @as("accepted") #Accepted
  | @as("requested") #Requested
]
type directConnectGatewayAssociationProposalId = string
type directConnectGatewayAssociationId = string
type customerAddress = string
type count = int
type connectionState = [
  | @as("unknown") #Unknown
  | @as("rejected") #Rejected
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("down") #Down
  | @as("available") #Available
  | @as("pending") #Pending
  | @as("requested") #Requested
  | @as("ordering") #Ordering
]
type connectionName = string
type connectionId = string
type ckn = string
type cak = string
type cidr = string
type booleanFlag = bool
type bandwidth = string
type bgpstatus = [@as("unknown") #Unknown | @as("down") #Down | @as("up") #Up]
type bgppeerState = [
  | @as("deleted") #Deleted
  | @as("deleting") #Deleting
  | @as("available") #Available
  | @as("pending") #Pending
  | @as("verifying") #Verifying
]
type bgppeerId = string
type bgpauthKey = string
type awsLogicalDeviceId = string
type awsDeviceV2 = string
type awsDevice = string
type associatedGatewayId = string
type amazonAddress = string
type agreementName = string
type addressFamily = [@as("ipv6") #Ipv6 | @as("ipv4") #Ipv4]
type asn = int
@ocaml.doc("<p>Information about a virtual private gateway for a private virtual interface.</p>")
type virtualGateway = {
  @ocaml.doc("<p>The state of the virtual private gateway. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>pending</code>: Initial state after creating the virtual private gateway.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: Ready for use by a private virtual interface.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: Initial state after deleting the virtual private gateway.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The virtual private gateway is deleted. The private virtual interface is unable to send traffic over this gateway.</p>
            </li>
         </ul>")
  virtualGatewayState: option<virtualGatewayState>,
  @ocaml.doc("<p>The ID of the virtual private gateway.</p>")
  virtualGatewayId: option<virtualGatewayId>,
}
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Information about a tag.</p>")
type tag = {
  @ocaml.doc("<p>The value.</p>") value: option<tagValue>,
  @ocaml.doc("<p>The key.</p>") key: tagKey,
}
@ocaml.doc("<p>Information about the virtual router.</p>")
type routerType = {
  @ocaml.doc(
    "<p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>"
  )
  routerTypeIdentifier: option<routerTypeIdentifier>,
  @ocaml.doc("<p>The MAC Security (MACsec) template for the virtual interface's router.</p>")
  xsltTemplateNameForMacSec: option<xsltTemplateNameForMacSec>,
  @ocaml.doc("<p>The template for the virtual interface's router.</p>")
  xsltTemplateName: option<xsltTemplateName>,
  @ocaml.doc("<p>The router software. </p>") software: option<software>,
  @ocaml.doc("<p>The virtual interface router platform.</p>") platform: option<platform>,
  @ocaml.doc("<p>The vendor for the virtual interface's router.</p>") vendor: option<vendor>,
}
@ocaml.doc("<p>Information about a route filter prefix that a customer can advertise through Border Gateway Protocol (BGP) 
        over a public virtual interface.</p>")
type routeFilterPrefix = {
  @ocaml.doc(
    "<p>The CIDR block for the advertised route. Separate multiple routes using commas. An IPv6 CIDR must use /64 or shorter.</p>"
  )
  cidr: option<cidr>,
}
type resourceArnList = array<resourceArn>
type providerList = array<providerName>
@ocaml.doc("<p>Information about a new BGP peer.</p>")
type newBGPPeer = {
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc(
    "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>"
  )
  asn: option<asn>,
}
@ocaml.doc("<p>Information about the MAC Security (MACsec) secret key.</p>")
type macSecKey = {
  @ocaml.doc(
    "<p>The date that the MAC Security (MACsec) secret key takes effect. The value is displayed in UTC format.</p>"
  )
  startOn: option<startOnDate>,
  @ocaml.doc("<p>The state of the MAC Security (MACsec) secret key.</p>
         <p>The possible values are:</p>
         <ul>
            <li>
               <p>
                  <code>associating</code>: The MAC Security (MACsec) secret key is being validated and not yet associated with the connection or LAG.</p>
            </li>
            <li>
               <p>
                  <code>associated</code>: The MAC Security (MACsec) secret key is validated and associated with the connection or LAG.</p>
            </li>
            <li>
               <p>
                  <code>disassociating</code>: The MAC Security (MACsec) secret key is being disassociated from the connection or LAG</p>
            </li>
            <li>
               <p>
                  <code>disassociated</code>: The MAC Security (MACsec) secret key is no longer associated with the connection or LAG.</p>
            </li>
         </ul>")
  state: option<state>,
  @ocaml.doc("<p>The Connection Key Name (CKN) for the MAC Security secret key.</p>")
  ckn: option<ckn>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>")
  secretARN: option<secretARN>,
}
@ocaml.doc(
  "<p>Information about a Letter of Authorization - Connecting Facility Assignment (LOA-CFA) for a connection.</p>"
)
type loa = {
  @ocaml.doc(
    "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
  )
  loaContentType: option<loaContentType>,
  @ocaml.doc("<p>The binary contents of the LOA-CFA document.</p>") loaContent: option<loaContent>,
}
@ocaml.doc(
  "<p>Information about an attachment between a Direct Connect gateway and a virtual interface.</p>"
)
type directConnectGatewayAttachment = {
  @ocaml.doc("<p>The error message if the state of an object failed to advance.</p>")
  stateChangeError: option<stateChangeError>,
  @ocaml.doc("<p>The type of attachment.</p>")
  attachmentType: option<directConnectGatewayAttachmentType>,
  @ocaml.doc("<p>The state of the attachment. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>attaching</code>: The initial state after a virtual interface is created using the Direct Connect gateway.</p>
            </li>
            <li>
               <p>
                  <code>attached</code>: The Direct Connect gateway and virtual interface are attached and ready to pass traffic.</p>
            </li>
            <li>
               <p>
                  <code>detaching</code>: The initial state after calling <a>DeleteVirtualInterface</a>.</p>
            </li>
            <li>
               <p>
                  <code>detached</code>: The virtual interface is detached from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual interface is stopped.</p>
            </li>
         </ul>")
  attachmentState: option<directConnectGatewayAttachmentState>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the virtual interface.</p>")
  virtualInterfaceOwnerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The Amazon Web Services Region where the virtual interface is located.</p>")
  virtualInterfaceRegion: option<virtualInterfaceRegion>,
  @ocaml.doc("<p>The ID of the virtual interface.</p>")
  virtualInterfaceId: option<virtualInterfaceId>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
  directConnectGatewayId: option<directConnectGatewayId>,
}
@ocaml.doc(
  "<p>Information about a Direct Connect gateway, which enables you to connect virtual interfaces and virtual private gateway or transit gateways.</p>"
)
type directConnectGateway = {
  @ocaml.doc("<p>The error message if the state of an object failed to advance.</p>")
  stateChangeError: option<stateChangeError>,
  @ocaml.doc("<p>The state of the Direct Connect gateway. The following are the possible values:</p>
        <ul>
            <li>
               <p>
                  <code>pending</code>: The initial state after calling <a>CreateDirectConnectGateway</a>.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: The Direct Connect gateway is ready for use.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: The initial state after calling <a>DeleteDirectConnectGateway</a>.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The Direct Connect gateway is deleted and cannot pass traffic.</p>
            </li>
         </ul>")
  directConnectGatewayState: option<directConnectGatewayState>,
  @ocaml.doc(
    "<p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>"
  )
  ownerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The autonomous system number (ASN) for the Amazon side of the connection.</p>")
  amazonSideAsn: option<longAsn>,
  @ocaml.doc("<p>The name of the Direct Connect gateway.</p>")
  directConnectGatewayName: option<directConnectGatewayName>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
  directConnectGatewayId: option<directConnectGatewayId>,
}
@ocaml.doc("<p>The name and status of a customer agreement. </p>")
type customerAgreement = {
  @ocaml.doc("<p>The status of the customer agreement. This will be either <code>signed</code> or <code>unsigned</code>
         </p>")
  status: option<status>,
  @ocaml.doc("<p>The name of the agreement.</p>") agreementName: option<agreementName>,
}
type bgppeerIdList = array<bgppeerId>
@ocaml.doc("<p>Information about a BGP peer.</p>")
type bgppeer = {
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the logical connection. This device might be
      different than the device that terminates the physical connection.</p>")
  awsLogicalDeviceId: option<awsLogicalDeviceId>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the BGP peer.</p>")
  awsDeviceV2: option<awsDeviceV2>,
  @ocaml.doc("<p>The status of the BGP peer. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>up</code>: The BGP peer is established. This state does not indicate the 
        state of the routing function. Ensure that you are receiving routes over the BGP session.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: The BGP peer is down.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The BGP peer status is not available.</p>
            </li>
         </ul>")
  bgpStatus: option<bgpstatus>,
  @ocaml.doc("<p>The state of the BGP peer. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>verifying</code>: The BGP peering addresses or ASN require validation before the BGP peer can be created. This state applies only to public virtual interfaces.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: The BGP peer is created, and remains in this state until it is ready to be established.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: The BGP peer is ready to be established.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>:  The BGP peer is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>:  The BGP peer is deleted and cannot be established.</p>
            </li>
         </ul>")
  bgpPeerState: option<bgppeerState>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc(
    "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>"
  )
  asn: option<asn>,
  @ocaml.doc("<p>The ID of the BGP peer.</p>") bgpPeerId: option<bgppeerId>,
}
type availablePortSpeeds = array<portSpeed>
type availableMacSecPortSpeeds = array<portSpeed>
@ocaml.doc("<p>Information about the associated gateway.</p>")
type associatedGateway = {
  @ocaml.doc("<p>The Region where the associated gateway is located.</p>") region: option<region>,
  @ocaml.doc(
    "<p>The ID of the Amazon Web Services account that owns the associated virtual private gateway or transit gateway.</p>"
  )
  ownerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The type of associated gateway.</p>") @as("type") type_: option<gatewayType>,
  @ocaml.doc("<p>The ID of the associated gateway.</p>") id: option<gatewayIdentifier>,
}
@ocaml.doc("<p>Information about the virtual interface failover test.</p>")
type virtualInterfaceTestHistory = {
  @ocaml.doc("<p>The time that the virtual interface moves out of the DOWN state.</p>")
  endTime: option<endTime>,
  @ocaml.doc("<p>The time that the virtual interface moves to the DOWN state.</p>")
  startTime: option<startTime>,
  @ocaml.doc("<p>The time that the virtual interface failover test ran in minutes.</p>")
  testDurationInMinutes: option<testDuration>,
  @ocaml.doc("<p>The owner ID of the tested virtual interface.</p>")
  ownerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The status of the virtual interface failover test.</p>")
  status: option<failureTestHistoryStatus>,
  @ocaml.doc(
    "<p>The BGP peers that were put in the DOWN state as part of the virtual interface failover test.</p>"
  )
  bgpPeers: option<bgppeerIdList>,
  @ocaml.doc("<p>The ID of the tested virtual interface.</p>")
  virtualInterfaceId: option<virtualInterfaceId>,
  @ocaml.doc("<p>The ID of the virtual interface failover test.</p>") testId: option<testId>,
}
type virtualGatewayList = array<virtualGateway>
type tagList_ = array<tag>
type routeFilterPrefixList = array<routeFilterPrefix>
type macSecKeyList = array<macSecKey>
@ocaml.doc("<p>Information about an Direct Connect location.</p>")
type location = {
  @ocaml.doc("<p>The available MAC Security (MACsec) port speeds for the location.</p>")
  availableMacSecPortSpeeds: option<availableMacSecPortSpeeds>,
  @ocaml.doc("<p>The name of the service provider for the location.</p>")
  availableProviders: option<providerList>,
  @ocaml.doc("<p>The available port speeds for the location.</p>")
  availablePortSpeeds: option<availablePortSpeeds>,
  @ocaml.doc("<p>The Amazon Web Services Region for the location.</p>") region: option<region>,
  @ocaml.doc(
    "<p>The name of the location. This includes the name of the colocation partner and the physical site of the building.</p>"
  )
  locationName: option<locationName>,
  @ocaml.doc("<p>The code for the location.</p>") locationCode: option<locationCode>,
}
type directConnectGatewayList = array<directConnectGateway>
type directConnectGatewayAttachmentList = array<directConnectGatewayAttachment>
type bgppeerList = array<bgppeer>
type agreementList = array<customerAgreement>
type virtualInterfaceTestHistoryList = array<virtualInterfaceTestHistory>
@ocaml.doc("<p>Information about a virtual interface.</p>")
type virtualInterface = {
  @ocaml.doc("<p>Indicates whether SiteLink is enabled.</p>")
  siteLinkEnabled: option<siteLinkEnabled>,
  @ocaml.doc("<p>The tags associated with the virtual interface.</p>") tags: option<tagList_>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the logical connection. This device might be
      different than the device that terminates the physical connection.</p>")
  awsLogicalDeviceId: option<awsLogicalDeviceId>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the physical connection.</p>")
  awsDeviceV2: option<awsDeviceV2>,
  @ocaml.doc("<p>The Amazon Web Services Region where the virtual interface is located.</p>")
  region: option<region>,
  @ocaml.doc("<p>The BGP peers configured on this virtual interface.</p>")
  bgpPeers: option<bgppeerList>,
  @ocaml.doc(
    "<p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>"
  )
  routeFilterPrefixes: option<routeFilterPrefixList>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
  directConnectGatewayId: option<directConnectGatewayId>,
  @ocaml.doc(
    "<p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>"
  )
  virtualGatewayId: option<virtualGatewayId>,
  @ocaml.doc("<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>")
  jumboFrameCapable: option<jumboFrameCapable>,
  @ocaml.doc(
    "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
  )
  mtu: option<mtu>,
  @ocaml.doc("<p>The customer router configuration.</p>")
  customerRouterConfig: option<routerConfig>,
  @ocaml.doc("<p>The state of the virtual interface. The following are the possible values:</p>
        <ul>
            <li>
               <p>
                  <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
            </li>
            <li>
               <p>
                  <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: A virtual interface that is able to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: A virtual interface that is BGP down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the virtual interface is not available.</p>
            </li>
         </ul>")
  virtualInterfaceState: option<virtualInterfaceState>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc("<p>The autonomous system number (ASN) for the Amazon side of the connection.</p>")
  amazonSideAsn: option<longAsn>,
  @ocaml.doc("<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
         <p>The valid values are 1-2147483647.</p>")
  asn: option<asn>,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: option<vlan>,
  @ocaml.doc(
    "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
  )
  virtualInterfaceName: option<virtualInterfaceName>,
  @ocaml.doc(
    "<p>The type of virtual interface. The possible values are <code>private</code> and <code>public</code>.</p>"
  )
  virtualInterfaceType: option<virtualInterfaceType>,
  @ocaml.doc("<p>The ID of the connection.</p>") connectionId: option<connectionId>,
  @ocaml.doc("<p>The location of the connection.</p>") location: option<locationCode>,
  @ocaml.doc("<p>The ID of the virtual interface.</p>")
  virtualInterfaceId: option<virtualInterfaceId>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the virtual interface.</p>")
  ownerAccount: option<ownerAccount>,
}
@ocaml.doc("<p>Information about a tag associated with an Direct Connect resource.</p>")
type resourceTag = {
  @ocaml.doc("<p>The tags.</p>") tags: option<tagList_>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>")
  resourceArn: option<resourceArn>,
}
@ocaml.doc(
  "<p>Information about a transit virtual interface to be provisioned on a connection.</p>"
)
type newTransitVirtualInterfaceAllocation = {
  @ocaml.doc("<p>The tags associated with the transitive virtual interface.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc(
    "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500. </p>"
  )
  mtu: option<mtu>,
  @ocaml.doc("<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
         <p>The valid values are 1-2147483647.</p>")
  asn: option<asn>,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: option<vlan>,
  @ocaml.doc(
    "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
  )
  virtualInterfaceName: option<virtualInterfaceName>,
}
@ocaml.doc("<p>Information about a transit virtual interface.</p>")
type newTransitVirtualInterface = {
  @ocaml.doc("<p>Indicates whether to enable or disable SiteLink.</p>")
  enableSiteLink: option<enableSiteLink>,
  @ocaml.doc("<p>The tags associated with the transitive virtual interface.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
  directConnectGatewayId: option<directConnectGatewayId>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc(
    "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
  )
  mtu: option<mtu>,
  @ocaml.doc("<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
         <p>The valid values are 1-2147483647.</p>")
  asn: option<asn>,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: option<vlan>,
  @ocaml.doc(
    "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
  )
  virtualInterfaceName: option<virtualInterfaceName>,
}
@ocaml.doc("<p>Information about a public virtual interface to be provisioned on a connection.</p>")
type newPublicVirtualInterfaceAllocation = {
  @ocaml.doc("<p>The tags associated with the public virtual interface.</p>")
  tags: option<tagList_>,
  @ocaml.doc(
    "<p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>"
  )
  routeFilterPrefixes: option<routeFilterPrefixList>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc("<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
         <p>The valid values are 1-2147483647.</p>")
  asn: asn,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: vlan,
  @ocaml.doc(
    "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
  )
  virtualInterfaceName: virtualInterfaceName,
}
@ocaml.doc("<p>Information about a public virtual interface.</p>")
type newPublicVirtualInterface = {
  @ocaml.doc("<p>The tags associated with the public virtual interface.</p>")
  tags: option<tagList_>,
  @ocaml.doc(
    "<p>The routes to be advertised to the Amazon Web Services network in this Region. Applies to public virtual interfaces.</p>"
  )
  routeFilterPrefixes: option<routeFilterPrefixList>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc("<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
         <p>The valid values are 1-2147483647.</p>")
  asn: asn,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: vlan,
  @ocaml.doc(
    "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
  )
  virtualInterfaceName: virtualInterfaceName,
}
@ocaml.doc(
  "<p>Information about a private virtual interface to be provisioned on a connection.</p>"
)
type newPrivateVirtualInterfaceAllocation = {
  @ocaml.doc("<p>The tags associated with the private virtual interface.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc(
    "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
  )
  mtu: option<mtu>,
  @ocaml.doc("<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
         <p>The valid values are 1-2147483647.</p>")
  asn: asn,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: vlan,
  @ocaml.doc(
    "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
  )
  virtualInterfaceName: virtualInterfaceName,
}
@ocaml.doc("<p>Information about a private virtual interface.</p>")
type newPrivateVirtualInterface = {
  @ocaml.doc("<p>Indicates whether to enable or disable SiteLink.</p>")
  enableSiteLink: option<enableSiteLink>,
  @ocaml.doc("<p>The tags associated with the private virtual interface.</p>")
  tags: option<tagList_>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
  directConnectGatewayId: option<directConnectGatewayId>,
  @ocaml.doc("<p>The ID of the virtual private gateway.</p>")
  virtualGatewayId: option<virtualGatewayId>,
  @ocaml.doc("<p>The address family for the BGP peer.</p>") addressFamily: option<addressFamily>,
  @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
  customerAddress: option<customerAddress>,
  @ocaml.doc("<p>The IP address assigned to the Amazon interface.</p>")
  amazonAddress: option<amazonAddress>,
  @ocaml.doc(
    "<p>The authentication key for BGP configuration. This string has a minimum length of 6 characters and and a maximun lenth of 80 characters.</p>"
  )
  authKey: option<bgpauthKey>,
  @ocaml.doc(
    "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
  )
  mtu: option<mtu>,
  @ocaml.doc("<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>
         <p>The valid values are 1-2147483647.</p>")
  asn: asn,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: vlan,
  @ocaml.doc(
    "<p>The name of the virtual interface assigned by the customer network. The name has a maximum of 100 characters. The following are valid characters: a-z, 0-9 and a hyphen (-).</p>"
  )
  virtualInterfaceName: virtualInterfaceName,
}
type locationList = array<location>
@ocaml.doc("<p>Information about an interconnect.</p>")
type interconnect = {
  @ocaml.doc("<p>The name of the service provider associated with the interconnect.</p>")
  providerName: option<providerName>,
  @ocaml.doc("<p>The tags associated with the interconnect.</p>") tags: option<tagList_>,
  @ocaml.doc(
    "<p>Indicates whether the interconnect supports a secondary BGP in the same address family (IPv4/IPv6).</p>"
  )
  hasLogicalRedundancy: option<hasLogicalRedundancy>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the logical connection. This device might be
      different than the device that terminates the physical connection.</p>")
  awsLogicalDeviceId: option<awsLogicalDeviceId>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the physical connection.</p>")
  awsDeviceV2: option<awsDeviceV2>,
  @ocaml.doc("<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>")
  jumboFrameCapable: option<jumboFrameCapable>,
  @ocaml.doc("<p>The Direct Connect endpoint on which the physical connection terminates.</p>")
  awsDevice: option<awsDevice>,
  @ocaml.doc("<p>The ID of the LAG.</p>") lagId: option<lagId>,
  @ocaml.doc("<p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>")
  loaIssueTime: option<loaIssueTime>,
  @ocaml.doc("<p>The bandwidth of the connection.</p>") bandwidth: option<bandwidth>,
  @ocaml.doc("<p>The location of the connection.</p>") location: option<locationCode>,
  @ocaml.doc("<p>The Amazon Web Services Region where the connection is located.</p>")
  region: option<region>,
  @ocaml.doc("<p>The state of the interconnect. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
        requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: The interconnect is approved, and is being initialized.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: The network link is down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: The interconnect is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The interconnect is deleted.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the interconnect is not available.</p>
            </li>
         </ul>")
  interconnectState: option<interconnectState>,
  @ocaml.doc("<p>The name of the interconnect.</p>") interconnectName: option<interconnectName>,
  @ocaml.doc("<p>The ID of the interconnect.</p>") interconnectId: option<interconnectId>,
}
@ocaml.doc(
  "<p>Information about the  proposal request to attach a virtual private gateway to a Direct Connect gateway. </p>"
)
type directConnectGatewayAssociationProposal = {
  @ocaml.doc("<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>")
  requestedAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
  @ocaml.doc("<p>The existing Amazon VPC prefixes advertised to the Direct Connect gateway.</p>")
  existingAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
  @ocaml.doc("<p>Information about the associated gateway.</p>")
  associatedGateway: option<associatedGateway>,
  @ocaml.doc("<p>The state of the proposal. The following are possible values:</p>
         <ul>
            <li>
               <p>
                  <code>accepted</code>: The proposal has been accepted. The Direct Connect gateway association is available to use in this state.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The proposal has been deleted by the owner that made the proposal.  The Direct Connect gateway association cannot be used in this state.</p>
            </li>
            <li>
               <p>
                  <code>requested</code>: The proposal has been requested. The Direct Connect gateway association cannot be used in this state.</p>
            </li>
         </ul>")
  proposalState: option<directConnectGatewayAssociationProposalState>,
  @ocaml.doc(
    "<p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>"
  )
  directConnectGatewayOwnerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
  directConnectGatewayId: option<directConnectGatewayId>,
  @ocaml.doc("<p>The ID of the association proposal.</p>")
  proposalId: option<directConnectGatewayAssociationProposalId>,
}
@ocaml.doc(
  "<p>Information about an association between a Direct Connect gateway and a virtual private gateway or transit gateway.</p>"
)
type directConnectGatewayAssociation = {
  @ocaml.doc(
    "<p>The ID of the Amazon Web Services account that owns the virtual private gateway.</p>"
  )
  virtualGatewayOwnerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The Amazon Web Services Region where the virtual private gateway is located.</p>")
  virtualGatewayRegion: option<virtualGatewayRegion>,
  @ocaml.doc(
    "<p>The ID of the virtual private gateway. Applies only to private virtual interfaces.</p>"
  )
  virtualGatewayId: option<virtualGatewayId>,
  @ocaml.doc("<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>")
  allowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway association.</p>")
  associationId: option<directConnectGatewayAssociationId>,
  @ocaml.doc("<p>Information about the associated gateway.</p>")
  associatedGateway: option<associatedGateway>,
  @ocaml.doc("<p>The error message if the state of an object failed to advance.</p>")
  stateChangeError: option<stateChangeError>,
  @ocaml.doc("<p>The state of the association. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>associating</code>: The initial state after calling <a>CreateDirectConnectGatewayAssociation</a>.</p>
            </li>
            <li>
               <p>
                  <code>associated</code>: The Direct Connect gateway and virtual private gateway or transit gateway are successfully associated and ready to pass traffic.</p>
            </li>
            <li>
               <p>
                  <code>disassociating</code>: The initial state after calling <a>DeleteDirectConnectGatewayAssociation</a>.</p>
            </li>
            <li>
               <p>
                  <code>disassociated</code>: The virtual private gateway or transit gateway is disassociated from the Direct Connect gateway. Traffic flow between the Direct Connect gateway and virtual private gateway or transit gateway is stopped.</p>
            </li>
         </ul>")
  associationState: option<directConnectGatewayAssociationState>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the associated gateway.</p>")
  directConnectGatewayOwnerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
  directConnectGatewayId: option<directConnectGatewayId>,
}
@ocaml.doc("<p>Information about an Direct Connect connection.</p>")
type connection = {
  @ocaml.doc("<p>The MAC Security (MACsec) security keys associated with the connection.</p>")
  macSecKeys: option<macSecKeyList>,
  @ocaml.doc("<p>The MAC Security (MACsec) connection encryption mode.</p>
         <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>")
  encryptionMode: option<encryptionMode>,
  @ocaml.doc("<p>The MAC Security (MACsec) port link status of the connection.</p>
         <p>The valid values are <code>Encryption Up</code>, which means that there is an active Connection Key Name, or <code>Encryption Down</code>.</p>")
  portEncryptionStatus: option<portEncryptionStatus>,
  @ocaml.doc("<p>Indicates whether the connection supports MAC Security (MACsec).</p>")
  macSecCapable: option<macSecCapable>,
  @ocaml.doc("<p>The name of the service provider associated with the connection.</p>")
  providerName: option<providerName>,
  @ocaml.doc("<p>The tags associated with the connection.</p>") tags: option<tagList_>,
  @ocaml.doc(
    "<p>Indicates whether the connection supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>"
  )
  hasLogicalRedundancy: option<hasLogicalRedundancy>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the logical connection. This device might be
      different than the device that terminates the physical connection.</p>")
  awsLogicalDeviceId: option<awsLogicalDeviceId>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the physical connection.</p>")
  awsDeviceV2: option<awsDeviceV2>,
  @ocaml.doc("<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>")
  jumboFrameCapable: option<jumboFrameCapable>,
  @ocaml.doc("<p>The Direct Connect endpoint on which the physical connection terminates.</p>")
  awsDevice: option<awsDevice>,
  @ocaml.doc("<p>The ID of the LAG.</p>") lagId: option<lagId>,
  @ocaml.doc("<p>The time of the most recent call to <a>DescribeLoa</a> for this connection.</p>")
  loaIssueTime: option<loaIssueTime>,
  @ocaml.doc(
    "<p>The name of the Direct Connect service provider associated with the connection.</p>"
  )
  partnerName: option<partnerName>,
  @ocaml.doc("<p>The ID of the VLAN.</p>") vlan: option<vlan>,
  @ocaml.doc("<p>The bandwidth of the connection.</p>") bandwidth: option<bandwidth>,
  @ocaml.doc("<p>The location of the connection.</p>") location: option<locationCode>,
  @ocaml.doc("<p>The Amazon Web Services Region where the connection is located.</p>")
  region: option<region>,
  @ocaml.doc("<p>The state of the connection. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
            </li>
            <li>
               <p>
                  <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: The connection has been approved and is being initialized.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: The network link is up and the connection is ready for use.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: The network link is down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: The connection is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The connection has been deleted.</p>
            </li>
            <li>
               <p>
                  <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the connection is not available.</p>
            </li>
         </ul>")
  connectionState: option<connectionState>,
  @ocaml.doc("<p>The name of the connection.</p>") connectionName: option<connectionName>,
  @ocaml.doc("<p>The ID of the connection.</p>") connectionId: option<connectionId>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the connection.</p>")
  ownerAccount: option<ownerAccount>,
}
type virtualInterfaceList = array<virtualInterface>
type resourceTagList = array<resourceTag>
type interconnectList = array<interconnect>
type directConnectGatewayAssociationProposalList = array<directConnectGatewayAssociationProposal>
type directConnectGatewayAssociationList = array<directConnectGatewayAssociation>
type connectionList = array<connection>
@ocaml.doc("<p>Information about a link aggregation group (LAG).</p>")
type lag = {
  @ocaml.doc("<p>The MAC Security (MACsec) security keys associated with the LAG.</p>")
  macSecKeys: option<macSecKeyList>,
  @ocaml.doc("<p>The LAG MAC Security (MACsec) encryption mode.</p>
         <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>")
  encryptionMode: option<encryptionMode>,
  @ocaml.doc("<p>Indicates whether the LAG supports MAC Security (MACsec).</p>")
  macSecCapable: option<macSecCapable>,
  @ocaml.doc("<p>The name of the service provider associated with the LAG.</p>")
  providerName: option<providerName>,
  @ocaml.doc("<p>The tags associated with the LAG.</p>") tags: option<tagList_>,
  @ocaml.doc(
    "<p>Indicates whether the LAG supports a secondary BGP peer in the same address family (IPv4/IPv6).</p>"
  )
  hasLogicalRedundancy: option<hasLogicalRedundancy>,
  @ocaml.doc("<p>Indicates whether jumbo frames (9001 MTU) are supported.</p>")
  jumboFrameCapable: option<jumboFrameCapable>,
  @ocaml.doc("<p>Indicates whether the LAG can host other connections.</p>")
  allowsHostedConnections: option<booleanFlag>,
  @ocaml.doc("<p>The connections bundled by the LAG.</p>") connections: option<connectionList>,
  @ocaml.doc("<p>The Direct Connect endpoint that terminates the logical connection. This device might be
      different than the device that terminates the physical connection.</p>")
  awsLogicalDeviceId: option<awsLogicalDeviceId>,
  @ocaml.doc("<p>The Direct Connect endpoint that hosts the LAG.</p>")
  awsDeviceV2: option<awsDeviceV2>,
  @ocaml.doc("<p>The Direct Connect endpoint that hosts the LAG.</p>") awsDevice: option<awsDevice>,
  @ocaml.doc(
    "<p>The minimum number of physical dedicated connections that must be operational for the LAG itself to be operational.</p>"
  )
  minimumLinks: option<count>,
  @ocaml.doc("<p>The Amazon Web Services Region where the connection is located.</p>")
  region: option<region>,
  @ocaml.doc("<p>The location of the LAG.</p>") location: option<locationCode>,
  @ocaml.doc("<p>The state of the LAG. The following are the possible values:</p>
        <ul>
            <li>
               <p>
                  <code>requested</code>: The initial state of a LAG. The LAG stays in the
                requested state until the Letter of Authorization (LOA) is available.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: The LAG has been approved and is being initialized.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: The network link is established and the LAG is ready for use.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: The network link is down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: The LAG is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The LAG is deleted.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the LAG is not available.</p>
            </li>
         </ul>")
  lagState: option<lagState>,
  @ocaml.doc("<p>The name of the LAG.</p>") lagName: option<lagName>,
  @ocaml.doc("<p>The ID of the Amazon Web Services account that owns the LAG.</p>")
  ownerAccount: option<ownerAccount>,
  @ocaml.doc("<p>The ID of the LAG.</p>") lagId: option<lagId>,
  @ocaml.doc(
    "<p>The number of physical dedicated connections bundled by the LAG, up to a maximum of 10.</p>"
  )
  numberOfConnections: option<count>,
  @ocaml.doc("<p>The individual bandwidth of the physical connections bundled by the LAG. The possible
      values are 1Gbps and 10Gbps. </p>")
  connectionsBandwidth: option<bandwidth>,
}
type lagList = array<lag>
@ocaml.doc("<p>Direct Connect links your internal network to an Direct Connect location over a standard Ethernet fiber-optic cable. 
      One end of the cable is connected to your router, the other to an Direct Connect router. With this connection
      in place, you can create virtual interfaces directly to the Amazon Web Services Cloud (for example, to Amazon EC2 
      and Amazon S3) and to Amazon VPC, bypassing Internet service providers in your network path. A 
      connection provides access to all Amazon Web Services Regions except the China (Beijing) and (China) Ningxia Regions. 
      Amazon Web Services resources in the China Regions can only be accessed through locations associated with those Regions.</p>")
module DescribeLoa = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
    )
    loaContentType: option<loaContentType>,
    @ocaml.doc("<p>The name of the service provider who establishes connectivity on your behalf. If you specify this parameter, the 
      LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>")
    providerName: option<providerName>,
    @ocaml.doc("<p>The ID of a connection, LAG, or interconnect.</p>") connectionId: connectionId,
  }
  type response = loa
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "DescribeLoaCommand"
  let make = (~connectionId, ~loaContentType=?, ~providerName=?, ()) =>
    new({loaContentType, providerName, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual interface.</p>") virtualInterfaceId: virtualInterfaceId,
  }
  type response = {
    @ocaml.doc("<p>The state of the virtual interface. The following are the possible values:</p>
        <ul>
            <li>
               <p>
                  <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
            </li>
            <li>
               <p>
                  <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: A virtual interface that is able to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: A virtual interface that is BGP down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the virtual interface is not available.</p>
            </li>
         </ul>")
    virtualInterfaceState: option<virtualInterfaceState>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DeleteVirtualInterfaceCommand"
  let make = (~virtualInterfaceId, ()) => new({virtualInterfaceId: virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteInterconnect = {
  type t
  type request = {@ocaml.doc("<p>The ID of the interconnect.</p>") interconnectId: interconnectId}
  type response = {
    @ocaml.doc("<p>The state of the interconnect. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>requested</code>: The initial state of an interconnect. The interconnect stays in the
        requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: The interconnect is approved, and is being initialized.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: The network link is up, and the interconnect is ready for use.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: The network link is down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: The interconnect is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The interconnect is deleted.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the interconnect is not available.</p>
            </li>
         </ul>")
    interconnectState: option<interconnectState>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DeleteInterconnectCommand"
  let make = (~interconnectId, ()) => new({interconnectId: interconnectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ConfirmTransitVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: directConnectGatewayId,
    @ocaml.doc("<p>The ID of the virtual interface.</p>") virtualInterfaceId: virtualInterfaceId,
  }
  type response = {
    @ocaml.doc("<p>The state of the virtual interface. The following are the possible values:</p>
        <ul>
            <li>
               <p>
                  <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
            </li>
            <li>
               <p>
                  <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: A virtual interface that is able to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: A virtual interface that is BGP down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the virtual interface is not available.</p>
            </li>
         </ul>")
    virtualInterfaceState: option<virtualInterfaceState>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "ConfirmTransitVirtualInterfaceCommand"
  let make = (~directConnectGatewayId, ~virtualInterfaceId, ()) =>
    new({directConnectGatewayId, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ConfirmPublicVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual interface.</p>") virtualInterfaceId: virtualInterfaceId,
  }
  type response = {
    @ocaml.doc("<p>The state of the virtual interface. The following are the possible values:</p>
        <ul>
            <li>
               <p>
                  <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
            </li>
            <li>
               <p>
                  <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: A virtual interface that is able to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: A virtual interface that is BGP down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the virtual interface is not available.</p>
            </li>
         </ul>")
    virtualInterfaceState: option<virtualInterfaceState>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "ConfirmPublicVirtualInterfaceCommand"
  let make = (~virtualInterfaceId, ()) => new({virtualInterfaceId: virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ConfirmPrivateVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: option<directConnectGatewayId>,
    @ocaml.doc("<p>The ID of the virtual private gateway.</p>")
    virtualGatewayId: option<virtualGatewayId>,
    @ocaml.doc("<p>The ID of the virtual interface.</p>") virtualInterfaceId: virtualInterfaceId,
  }
  type response = {
    @ocaml.doc("<p>The state of the virtual interface. The following are the possible values:</p>
        <ul>
            <li>
               <p>
                  <code>confirming</code>: The creation of the virtual interface is pending confirmation from the virtual interface owner. If the owner of the virtual interface is different from the owner of the connection on which it is provisioned, then the virtual interface will remain in this state until it is confirmed by the virtual interface owner.</p>
            </li>
            <li>
               <p>
                  <code>verifying</code>: This state only applies to public virtual interfaces. Each public virtual interface needs validation before the virtual interface can be created.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: A virtual interface is in this state from the time that it is created until the virtual interface is ready to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: A virtual interface that is able to forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: A virtual interface that is BGP down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: A virtual interface is in this state immediately after calling <a>DeleteVirtualInterface</a> until it can no longer forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: A virtual interface that cannot forward traffic.</p>
            </li>
            <li>
               <p>
                  <code>rejected</code>: The virtual interface owner has declined creation of the virtual interface. If a virtual interface in the <code>Confirming</code> state is deleted by the virtual interface owner, the virtual interface enters the <code>Rejected</code> state.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the virtual interface is not available.</p>
            </li>
         </ul>")
    virtualInterfaceState: option<virtualInterfaceState>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "ConfirmPrivateVirtualInterfaceCommand"
  let make = (~virtualInterfaceId, ~directConnectGatewayId=?, ~virtualGatewayId=?, ()) =>
    new({directConnectGatewayId, virtualGatewayId, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ConfirmCustomerAgreement = {
  type t
  type request = {
    @ocaml.doc("<p>

      The name of the customer agreement.

    </p>")
    agreementName: option<agreementName>,
  }
  type response = {
    @ocaml.doc("<p>
      The status of the customer agreement when the connection was created. This will be either <code>signed</code> or <code>unsigned</code>.
    </p>")
    status: option<status>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "ConfirmCustomerAgreementCommand"
  let make = (~agreementName=?, ()) => new({agreementName: agreementName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ConfirmConnection = {
  type t
  type request = {@ocaml.doc("<p>The ID of the hosted connection.</p>") connectionId: connectionId}
  type response = {
    @ocaml.doc("<p>The state of the connection. The following are the possible values:</p>
         <ul>
            <li>
               <p>
                  <code>ordering</code>: The initial state of a hosted connection provisioned on an interconnect. The connection stays in the ordering state until the owner of the hosted connection confirms or declines the connection order.</p>
            </li>
            <li>
               <p>
                  <code>requested</code>: The initial state of a standard connection. The connection stays in the requested state until the Letter of Authorization (LOA) is sent to the customer.</p>
            </li>
            <li>
               <p>
                  <code>pending</code>: The connection has been approved and is being initialized.</p>
            </li>
            <li>
               <p>
                  <code>available</code>: The network link is up and the connection is ready for use.</p>
            </li>
            <li>
               <p>
                  <code>down</code>: The network link is down.</p>
            </li>
            <li>
               <p>
                  <code>deleting</code>: The connection is being deleted.</p>
            </li>
            <li>
               <p>
                  <code>deleted</code>: The connection has been deleted.</p>
            </li>
            <li>
               <p>
                  <code>rejected</code>: A hosted connection in the <code>ordering</code> state enters the <code>rejected</code> state if it is deleted by the customer.</p>
            </li>
            <li>
               <p>
                  <code>unknown</code>: The state of the connection is not available.</p>
            </li>
         </ul>")
    connectionState: option<connectionState>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "ConfirmConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDirectConnectGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The new name for the Direct Connect gateway.</p>")
    newDirectConnectGatewayName: directConnectGatewayName,
    @ocaml.doc("<p>The ID of the Direct Connect gateway to update.</p>")
    directConnectGatewayId: directConnectGatewayId,
  }
  type response = {directConnectGateway: option<directConnectGateway>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "UpdateDirectConnectGatewayCommand"
  let make = (~newDirectConnectGatewayName, ~directConnectGatewayId, ()) =>
    new({newDirectConnectGatewayName, directConnectGatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys of the tags to remove.</p>") tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DescribeRouterConfiguration = {
  type t
  @ocaml.doc("<p>Provides the details about a virtual interface's router.</p>")
  type request = {
    @ocaml.doc(
      "<p>Identifies the router by a combination of vendor, platform, and software version. For example, <code>CiscoSystemsInc-2900SeriesRouters-IOS124</code>.</p>"
    )
    routerTypeIdentifier: option<routerTypeIdentifier>,
    @ocaml.doc("<p>The ID of the virtual interface.</p>") virtualInterfaceId: virtualInterfaceId,
  }
  type response = {
    @ocaml.doc("<p>Provides the details about a virtual interface's router.</p>")
    virtualInterfaceName: option<virtualInterfaceName>,
    @ocaml.doc("<p>The ID assigned to the virtual interface.</p>")
    virtualInterfaceId: option<virtualInterfaceId>,
    @ocaml.doc("<p>The details about the router.</p>") router: option<routerType>,
    @ocaml.doc("<p>The customer router configuration.</p>")
    customerRouterConfig: option<routerConfig>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeRouterConfigurationCommand"
  let make = (~virtualInterfaceId, ~routerTypeIdentifier=?, ()) =>
    new({routerTypeIdentifier, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeInterconnectLoa = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
    )
    loaContentType: option<loaContentType>,
    @ocaml.doc(
      "<p>The name of the service provider who establishes connectivity on your behalf. If you supply this parameter, the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>"
    )
    providerName: option<providerName>,
    @ocaml.doc("<p>The ID of the interconnect.</p>") interconnectId: interconnectId,
  }
  type response = {
    @ocaml.doc("<p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>")
    loa: option<loa>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeInterconnectLoaCommand"
  let make = (~interconnectId, ~loaContentType=?, ~providerName=?, ()) =>
    new({loaContentType, providerName, interconnectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeConnectionLoa = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The standard media type for the LOA-CFA document. The only supported value is application/pdf.</p>"
    )
    loaContentType: option<loaContentType>,
    @ocaml.doc("<p>The name of the APN partner or service provider who establishes connectivity on your behalf. If you specify this parameter, 
      the LOA-CFA lists the provider name alongside your company name as the requester of the cross connect.</p>")
    providerName: option<providerName>,
    @ocaml.doc("<p>The ID of the connection.</p>") connectionId: connectionId,
  }
  type response = {
    @ocaml.doc("<p>The Letter of Authorization - Connecting Facility Assignment (LOA-CFA).</p>")
    loa: option<loa>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeConnectionLoaCommand"
  let make = (~connectionId, ~loaContentType=?, ~providerName=?, ()) =>
    new({loaContentType, providerName, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteDirectConnectGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: directConnectGatewayId,
  }
  type response = {
    @ocaml.doc("<p>The Direct Connect gateway.</p>")
    directConnectGateway: option<directConnectGateway>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DeleteDirectConnectGatewayCommand"
  let make = (~directConnectGatewayId, ()) => new({directConnectGatewayId: directConnectGatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDirectConnectGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The autonomous system number (ASN) for Border Gateway Protocol (BGP) to be configured
      on the Amazon side of the connection. The ASN must be in the private range of 64,512 to
      65,534 or 4,200,000,000 to 4,294,967,294. The default is 64512.</p>")
    amazonSideAsn: option<longAsn>,
    @ocaml.doc("<p>The name of the Direct Connect gateway.</p>")
    directConnectGatewayName: directConnectGatewayName,
  }
  type response = {
    @ocaml.doc("<p>The Direct Connect gateway.</p>")
    directConnectGateway: option<directConnectGateway>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreateDirectConnectGatewayCommand"
  let make = (~directConnectGatewayName, ~amazonSideAsn=?, ()) =>
    new({amazonSideAsn, directConnectGatewayName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateVirtualInterfaceAttributes = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the virtual private interface.</p>")
    virtualInterfaceName: option<virtualInterfaceName>,
    @ocaml.doc("<p>Indicates whether to enable or disable SiteLink.</p>")
    enableSiteLink: option<enableSiteLink>,
    @ocaml.doc(
      "<p>The maximum transmission unit (MTU), in bytes. The supported values are 1500 and 9001. The default value is 1500.</p>"
    )
    mtu: option<mtu>,
    @ocaml.doc("<p>The ID of the virtual private interface.</p>")
    virtualInterfaceId: virtualInterfaceId,
  }
  type response = virtualInterface
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "UpdateVirtualInterfaceAttributesCommand"
  let make = (~virtualInterfaceId, ~virtualInterfaceName=?, ~enableSiteLink=?, ~mtu=?, ()) =>
    new({virtualInterfaceName, enableSiteLink, mtu, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The connection MAC Security (MACsec) encryption mode.</p>
         <p>The valid values are <code>no_encrypt</code>, <code>should_encrypt</code>, and <code>must_encrypt</code>.</p>")
    encryptionMode: option<encryptionMode>,
    @ocaml.doc("<p>The name of the connection.</p>") connectionName: option<connectionName>,
    @ocaml.doc("<p>The ID of the dedicated connection.</p>
         <p>You can use <a>DescribeConnections</a> to retrieve the connection ID.</p>")
    connectionId: connectionId,
  }
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "UpdateConnectionCommand"
  let make = (~connectionId, ~encryptionMode=?, ~connectionName=?, ()) =>
    new({encryptionMode, connectionName, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to add.</p>") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module StopBgpFailoverTest = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual interface you no longer want to test.</p>")
    virtualInterfaceId: virtualInterfaceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the virtual interface failover test.</p>")
    virtualInterfaceTest: option<virtualInterfaceTestHistory>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "StopBgpFailoverTestCommand"
  let make = (~virtualInterfaceId, ()) => new({virtualInterfaceId: virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartBgpFailoverTest = {
  type t
  type request = {
    @ocaml.doc("<p>The time in minutes that the virtual interface failover test will last.</p>
         <p>Maximum value: 180 minutes (3 hours).</p>
         <p>Default: 180 minutes (3 hours).</p>")
    testDurationInMinutes: option<testDuration>,
    @ocaml.doc("<p>The BGP peers to place in the DOWN state.</p>") bgpPeers: option<bgppeerIdList>,
    @ocaml.doc("<p>The ID of the virtual interface you want to test.</p>")
    virtualInterfaceId: virtualInterfaceId,
  }
  type response = {
    @ocaml.doc("<p>Information about the virtual interface failover test.</p>")
    virtualInterfaceTest: option<virtualInterfaceTestHistory>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "StartBgpFailoverTestCommand"
  let make = (~virtualInterfaceId, ~testDurationInMinutes=?, ~bgpPeers=?, ()) =>
    new({testDurationInMinutes, bgpPeers, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateMacSecKey = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
         <p>You can use <a>DescribeConnections</a> to retrieve the ARN of the MAC Security (MACsec) secret key.</p>")
    secretARN: secretARN,
    @ocaml.doc("<p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
         <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>")
    connectionId: connectionId,
  }
  type response = {
    @ocaml.doc(
      "<p>The MAC Security (MACsec) security keys no longer associated with the dedicated connection.</p>"
    )
    macSecKeys: option<macSecKeyList>,
    @ocaml.doc(
      "<p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>"
    )
    connectionId: option<connectionId>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DisassociateMacSecKeyCommand"
  let make = (~secretARN, ~connectionId, ()) => new({secretARN, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateConnectionFromLag = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the LAG.</p>") lagId: lagId,
    @ocaml.doc("<p>The ID of the connection.</p>") connectionId: connectionId,
  }
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DisassociateConnectionFromLagCommand"
  let make = (~lagId, ~connectionId, ()) => new({lagId, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeVirtualGateways = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The virtual private gateways.</p>") virtualGateways: option<virtualGatewayList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeVirtualGatewaysCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDirectConnectGateways = {
  type t
  type request = {
    @ocaml.doc("<p>The token provided in the previous call to retrieve the next page.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
      returned.</p>")
    maxResults: option<maxResultSetSize>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: option<directConnectGatewayId>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next page.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The Direct Connect gateways.</p>")
    directConnectGateways: option<directConnectGatewayList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeDirectConnectGatewaysCommand"
  let make = (~nextToken=?, ~maxResults=?, ~directConnectGatewayId=?, ()) =>
    new({nextToken, maxResults, directConnectGatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDirectConnectGatewayAttachments = {
  type t
  type request = {
    @ocaml.doc("<p>The token provided in the previous call to retrieve the next page.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
      returned.</p>")
    maxResults: option<maxResultSetSize>,
    @ocaml.doc("<p>The ID of the virtual interface.</p>")
    virtualInterfaceId: option<virtualInterfaceId>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: option<directConnectGatewayId>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next page.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The attachments.</p>")
    directConnectGatewayAttachments: option<directConnectGatewayAttachmentList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeDirectConnectGatewayAttachmentsCommand"
  let make = (~nextToken=?, ~maxResults=?, ~virtualInterfaceId=?, ~directConnectGatewayId=?, ()) =>
    new({nextToken, maxResults, virtualInterfaceId, directConnectGatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeCustomerMetadata = {
  type t
  type request = {.}
  type response = {
    @ocaml.doc("<p>The type of network-to-network interface (NNI) partner. The partner type will be one of the following:</p>
         <ul>
            <li>
               <p>V1: This partner can only allocate 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, or 500Mbps subgigabit connections.</p>
            </li>
            <li>
               <p>V2: This partner can only allocate 1GB, 2GB, 5GB, or 10GB hosted connections.</p>
            </li>
            <li>
               <p>nonPartner: The customer is not a partner.</p>
            </li>
         </ul>")
    nniPartnerType: option<nniPartnerType>,
    @ocaml.doc("<p>The list of customer agreements.</p>") agreements: option<agreementList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeCustomerMetadataCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteConnection = {
  type t
  type request = {@ocaml.doc("<p>The ID of the connection.</p>") connectionId: connectionId}
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DeleteConnectionCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateInterconnect = {
  type t
  type request = {
    @ocaml.doc("<p>The name of the service provider associated with the interconnect.</p>")
    providerName: option<providerName>,
    @ocaml.doc("<p>The tags to associate with the interconnect.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the LAG.</p>") lagId: option<lagId>,
    @ocaml.doc("<p>The location of the interconnect.</p>") location: locationCode,
    @ocaml.doc("<p>The port bandwidth, in Gbps. The possible values are 1 and 10.</p>")
    bandwidth: bandwidth,
    @ocaml.doc("<p>The name of the interconnect.</p>") interconnectName: interconnectName,
  }
  type response = interconnect
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreateInterconnectCommand"
  let make = (~location, ~bandwidth, ~interconnectName, ~providerName=?, ~tags=?, ~lagId=?, ()) =>
    new({providerName, tags, lagId, location, bandwidth, interconnectName})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether you want the connection to support MAC Security (MACsec).</p>
         <p>MAC Security (MACsec) is only available on dedicated connections. For information about MAC Security (MACsec) prerequisties, see  <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites\">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>")
    requestMACSec: option<requestMACSec>,
    @ocaml.doc("<p>The name of the service provider associated with the requested connection.</p>")
    providerName: option<providerName>,
    @ocaml.doc("<p>The tags to associate with the lag.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the LAG.</p>") lagId: option<lagId>,
    @ocaml.doc("<p>The name of the connection.</p>") connectionName: connectionName,
    @ocaml.doc("<p>The bandwidth of the connection.</p>") bandwidth: bandwidth,
    @ocaml.doc("<p>The location of the connection.</p>") location: locationCode,
  }
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreateConnectionCommand"
  let make = (
    ~connectionName,
    ~bandwidth,
    ~location,
    ~requestMACSec=?,
    ~providerName=?,
    ~tags=?,
    ~lagId=?,
    (),
  ) => new({requestMACSec, providerName, tags, lagId, connectionName, bandwidth, location})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the LAG or connection.</p>") connectionId: connectionId,
    @ocaml.doc("<p>The ID of the virtual interface.</p>") virtualInterfaceId: virtualInterfaceId,
  }
  type response = virtualInterface
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AssociateVirtualInterfaceCommand"
  let make = (~connectionId, ~virtualInterfaceId, ()) => new({connectionId, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateMacSecKey = {
  type t
  type request = {
    @ocaml.doc("<p>The MAC Security (MACsec) CAK to associate with the dedicated connection.</p>
         <p>You can create the CKN/CAK pair using an industry standard tool.</p>
         <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
         <p>If you use this request parameter, you must use the <code>ckn</code> request parameter and not use the <code>secretARN</code> request parameter.</p>")
    cak: option<cak>,
    @ocaml.doc("<p>The MAC Security (MACsec) CKN to associate with the dedicated connection.</p>
         <p>You can create the CKN/CAK pair using an industry standard tool.</p>
         <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
         <p>If you use this request parameter, you must use the <code>cak</code> request parameter and not use the <code>secretARN</code> request parameter.</p>")
    ckn: option<ckn>,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.</p>
         <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve the MAC Security (MACsec) secret key.</p>
         <p>If you use this request parameter, you do not use the <code>ckn</code> and <code>cak</code> request parameters.</p>")
    secretARN: option<secretARN>,
    @ocaml.doc("<p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
         <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>")
    connectionId: connectionId,
  }
  type response = {
    @ocaml.doc(
      "<p>The MAC Security (MACsec) security keys associated with the dedicated connection.</p>"
    )
    macSecKeys: option<macSecKeyList>,
    @ocaml.doc(
      "<p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>"
    )
    connectionId: option<connectionId>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AssociateMacSecKeyCommand"
  let make = (~connectionId, ~cak=?, ~ckn=?, ~secretARN=?, ()) =>
    new({cak, ckn, secretARN, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateHostedConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the interconnect or the LAG.</p>") parentConnectionId: connectionId,
    @ocaml.doc("<p>The ID of the hosted connection.</p>") connectionId: connectionId,
  }
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AssociateHostedConnectionCommand"
  let make = (~parentConnectionId, ~connectionId, ()) => new({parentConnectionId, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateConnectionWithLag = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the LAG with which to associate the connection.</p>") lagId: lagId,
    @ocaml.doc("<p>The ID of the connection.</p>") connectionId: connectionId,
  }
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AssociateConnectionWithLagCommand"
  let make = (~lagId, ~connectionId, ()) => new({lagId, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AllocateHostedConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The tags associated with the connection.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The dedicated VLAN provisioned to the hosted connection.</p>") vlan: vlan,
    @ocaml.doc("<p>The name of the hosted connection.</p>") connectionName: connectionName,
    @ocaml.doc(
      "<p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps, 300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners who have met specific requirements are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection. </p>"
    )
    bandwidth: bandwidth,
    @ocaml.doc(
      "<p>The ID of the Amazon Web Services account ID of the customer for the connection.</p>"
    )
    ownerAccount: ownerAccount,
    @ocaml.doc("<p>The ID of the interconnect or LAG.</p>") connectionId: connectionId,
  }
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AllocateHostedConnectionCommand"
  let make = (~vlan, ~connectionName, ~bandwidth, ~ownerAccount, ~connectionId, ~tags=?, ()) =>
    new({tags, vlan, connectionName, bandwidth, ownerAccount, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AllocateConnectionOnInterconnect = {
  type t
  type request = {
    @ocaml.doc("<p>The dedicated VLAN provisioned to the connection.</p>") vlan: vlan,
    @ocaml.doc("<p>The ID of the interconnect on which the connection will be provisioned.</p>")
    interconnectId: interconnectId,
    @ocaml.doc(
      "<p>The ID of the Amazon Web Services account of the customer for whom the connection will be provisioned.</p>"
    )
    ownerAccount: ownerAccount,
    @ocaml.doc("<p>The name of the provisioned connection.</p>") connectionName: connectionName,
    @ocaml.doc("<p>The bandwidth of the connection. The possible values are 50Mbps, 100Mbps, 200Mbps,
      300Mbps, 400Mbps, 500Mbps, 1Gbps, 2Gbps, 5Gbps, and 10Gbps. Note that only those Direct Connect Partners
      who have met specific requirements
    are allowed to create a 1Gbps, 2Gbps, 5Gbps or 10Gbps hosted connection.</p>")
    bandwidth: bandwidth,
  }
  type response = connection
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AllocateConnectionOnInterconnectCommand"
  let make = (~vlan, ~interconnectId, ~ownerAccount, ~connectionName, ~bandwidth, ()) =>
    new({vlan, interconnectId, ownerAccount, connectionName, bandwidth})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDirectConnectGatewayAssociation = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>"
    )
    removeAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
    @ocaml.doc("<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>")
    addAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway association.</p>")
    associationId: option<directConnectGatewayAssociationId>,
  }
  type response = {directConnectGatewayAssociation: option<directConnectGatewayAssociation>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "UpdateDirectConnectGatewayAssociationCommand"
  let make = (
    ~removeAllowedPrefixesToDirectConnectGateway=?,
    ~addAllowedPrefixesToDirectConnectGateway=?,
    ~associationId=?,
    (),
  ) =>
    new({
      removeAllowedPrefixesToDirectConnectGateway,
      addAllowedPrefixesToDirectConnectGateway,
      associationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListVirtualInterfaceTestHistory = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
      returned.</p>")
    maxResults: option<maxResultSetSize>,
    @ocaml.doc("<p>The status of the virtual interface failover test.</p>")
    status: option<failureTestHistoryStatus>,
    @ocaml.doc(
      "<p>The BGP peers that were placed in the DOWN state during the virtual interface failover test.</p>"
    )
    bgpPeers: option<bgppeerIdList>,
    @ocaml.doc("<p>The ID of the virtual interface that was tested.</p>")
    virtualInterfaceId: option<virtualInterfaceId>,
    @ocaml.doc("<p>The ID of the virtual interface failover test.</p>") testId: option<testId>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The ID of the tested virtual interface.</p>")
    virtualInterfaceTestHistory: option<virtualInterfaceTestHistoryList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "ListVirtualInterfaceTestHistoryCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~status=?,
    ~bgpPeers=?,
    ~virtualInterfaceId=?,
    ~testId=?,
    (),
  ) => new({nextToken, maxResults, status, bgpPeers, virtualInterfaceId, testId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLocations = {
  type t
  type request = {.}
  type response = {@ocaml.doc("<p>The locations.</p>") locations: option<locationList>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeLocationsCommand"
  let make = () => new(Js.Obj.empty())
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteDirectConnectGatewayAssociationProposal = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the proposal.</p>")
    proposalId: directConnectGatewayAssociationProposalId,
  }
  type response = {
    @ocaml.doc("<p>The ID of the associated gateway.</p>")
    directConnectGatewayAssociationProposal: option<directConnectGatewayAssociationProposal>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DeleteDirectConnectGatewayAssociationProposalCommand"
  let make = (~proposalId, ()) => new({proposalId: proposalId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteDirectConnectGatewayAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual private gateway.</p>")
    virtualGatewayId: option<virtualGatewayId>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: option<directConnectGatewayId>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway association.</p>")
    associationId: option<directConnectGatewayAssociationId>,
  }
  type response = {
    @ocaml.doc("<p>Information about the deleted association.</p>")
    directConnectGatewayAssociation: option<directConnectGatewayAssociation>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DeleteDirectConnectGatewayAssociationCommand"
  let make = (~virtualGatewayId=?, ~directConnectGatewayId=?, ~associationId=?, ()) =>
    new({virtualGatewayId, directConnectGatewayId, associationId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteBGPPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the BGP peer.</p>") bgpPeerId: option<bgppeerId>,
    @ocaml.doc("<p>The IP address assigned to the customer interface.</p>")
    customerAddress: option<customerAddress>,
    @ocaml.doc(
      "<p>The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.</p>"
    )
    asn: option<asn>,
    @ocaml.doc("<p>The ID of the virtual interface.</p>")
    virtualInterfaceId: option<virtualInterfaceId>,
  }
  type response = {
    @ocaml.doc("<p>The virtual interface.</p>") virtualInterface: option<virtualInterface>,
  }
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "DeleteBGPPeerCommand"
  let make = (~bgpPeerId=?, ~customerAddress=?, ~asn=?, ~virtualInterfaceId=?, ()) =>
    new({bgpPeerId, customerAddress, asn, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateTransitVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the transit virtual interface.</p>")
    newTransitVirtualInterface: newTransitVirtualInterface,
    @ocaml.doc("<p>The ID of the connection.</p>") connectionId: connectionId,
  }
  type response = {virtualInterface: option<virtualInterface>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreateTransitVirtualInterfaceCommand"
  let make = (~newTransitVirtualInterface, ~connectionId, ()) =>
    new({newTransitVirtualInterface, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePublicVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the public virtual interface.</p>")
    newPublicVirtualInterface: newPublicVirtualInterface,
    @ocaml.doc("<p>The ID of the connection.</p>") connectionId: connectionId,
  }
  type response = virtualInterface
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreatePublicVirtualInterfaceCommand"
  let make = (~newPublicVirtualInterface, ~connectionId, ()) =>
    new({newPublicVirtualInterface, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreatePrivateVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the private virtual interface.</p>")
    newPrivateVirtualInterface: newPrivateVirtualInterface,
    @ocaml.doc("<p>The ID of the connection.</p>") connectionId: connectionId,
  }
  type response = virtualInterface
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreatePrivateVirtualInterfaceCommand"
  let make = (~newPrivateVirtualInterface, ~connectionId, ()) =>
    new({newPrivateVirtualInterface, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDirectConnectGatewayAssociationProposal = {
  type t
  type request = {
    @ocaml.doc(
      "<p>The Amazon VPC prefixes to no longer advertise to the Direct Connect gateway.</p>"
    )
    removeAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
    @ocaml.doc("<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway.</p>")
    addAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
    @ocaml.doc("<p>The ID of the virtual private gateway or transit gateway.</p>")
    gatewayId: gatewayIdToAssociate,
    @ocaml.doc(
      "<p>The ID of the Amazon Web Services account that owns the Direct Connect gateway.</p>"
    )
    directConnectGatewayOwnerAccount: ownerAccount,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: directConnectGatewayId,
  }
  type response = {
    @ocaml.doc("<p>Information about the Direct Connect gateway proposal.</p>")
    directConnectGatewayAssociationProposal: option<directConnectGatewayAssociationProposal>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreateDirectConnectGatewayAssociationProposalCommand"
  let make = (
    ~gatewayId,
    ~directConnectGatewayOwnerAccount,
    ~directConnectGatewayId,
    ~removeAllowedPrefixesToDirectConnectGateway=?,
    ~addAllowedPrefixesToDirectConnectGateway=?,
    (),
  ) =>
    new({
      removeAllowedPrefixesToDirectConnectGateway,
      addAllowedPrefixesToDirectConnectGateway,
      gatewayId,
      directConnectGatewayOwnerAccount,
      directConnectGatewayId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDirectConnectGatewayAssociation = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual private gateway.</p>")
    virtualGatewayId: option<virtualGatewayId>,
    @ocaml.doc("<p>The Amazon VPC prefixes to advertise to the Direct Connect gateway</p>
         <p>This parameter is required when you create an association to a transit gateway.</p>
         <p>For information about how to set the prefixes, see <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes\">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>")
    addAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
    @ocaml.doc("<p>The ID of the virtual private gateway or transit gateway.</p>")
    gatewayId: option<gatewayIdToAssociate>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: directConnectGatewayId,
  }
  type response = {
    @ocaml.doc("<p>The association to be created.</p>")
    directConnectGatewayAssociation: option<directConnectGatewayAssociation>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "CreateDirectConnectGatewayAssociationCommand"
  let make = (
    ~directConnectGatewayId,
    ~virtualGatewayId=?,
    ~addAllowedPrefixesToDirectConnectGateway=?,
    ~gatewayId=?,
    (),
  ) =>
    new({
      virtualGatewayId,
      addAllowedPrefixesToDirectConnectGateway,
      gatewayId,
      directConnectGatewayId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateBGPPeer = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the BGP peer.</p>") newBGPPeer: option<newBGPPeer>,
    @ocaml.doc("<p>The ID of the virtual interface.</p>")
    virtualInterfaceId: option<virtualInterfaceId>,
  }
  type response = {
    @ocaml.doc("<p>The virtual interface.</p>") virtualInterface: option<virtualInterface>,
  }
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "CreateBGPPeerCommand"
  let make = (~newBGPPeer=?, ~virtualInterfaceId=?, ()) => new({newBGPPeer, virtualInterfaceId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AllocateTransitVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the transit virtual interface.</p>")
    newTransitVirtualInterfaceAllocation: newTransitVirtualInterfaceAllocation,
    @ocaml.doc(
      "<p>The ID of the Amazon Web Services account that owns the transit virtual interface.</p>"
    )
    ownerAccount: ownerAccount,
    @ocaml.doc(
      "<p>The ID of the connection on which the transit virtual interface is provisioned.</p>"
    )
    connectionId: connectionId,
  }
  type response = {virtualInterface: option<virtualInterface>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AllocateTransitVirtualInterfaceCommand"
  let make = (~newTransitVirtualInterfaceAllocation, ~ownerAccount, ~connectionId, ()) =>
    new({newTransitVirtualInterfaceAllocation, ownerAccount, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AllocatePublicVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the public virtual interface.</p>")
    newPublicVirtualInterfaceAllocation: newPublicVirtualInterfaceAllocation,
    @ocaml.doc(
      "<p>The ID of the Amazon Web Services account that owns the public virtual interface.</p>"
    )
    ownerAccount: ownerAccount,
    @ocaml.doc(
      "<p>The ID of the connection on which the public virtual interface is provisioned.</p>"
    )
    connectionId: connectionId,
  }
  type response = virtualInterface
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AllocatePublicVirtualInterfaceCommand"
  let make = (~newPublicVirtualInterfaceAllocation, ~ownerAccount, ~connectionId, ()) =>
    new({newPublicVirtualInterfaceAllocation, ownerAccount, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AllocatePrivateVirtualInterface = {
  type t
  type request = {
    @ocaml.doc("<p>Information about the private virtual interface.</p>")
    newPrivateVirtualInterfaceAllocation: newPrivateVirtualInterfaceAllocation,
    @ocaml.doc(
      "<p>The ID of the Amazon Web Services account that owns the virtual private interface.</p>"
    )
    ownerAccount: ownerAccount,
    @ocaml.doc(
      "<p>The ID of the connection on which the private virtual interface is provisioned.</p>"
    )
    connectionId: connectionId,
  }
  type response = virtualInterface
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AllocatePrivateVirtualInterfaceCommand"
  let make = (~newPrivateVirtualInterfaceAllocation, ~ownerAccount, ~connectionId, ()) =>
    new({newPrivateVirtualInterfaceAllocation, ownerAccount, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AcceptDirectConnectGatewayAssociationProposal = {
  type t
  type request = {
    @ocaml.doc("<p>Overrides the Amazon VPC prefixes advertised to the Direct Connect gateway.</p>
         <p>For information about how to set the prefixes, see <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/multi-account-associate-vgw.html#allowed-prefixes\">Allowed Prefixes</a> in the <i>Direct Connect User Guide</i>.</p>")
    overrideAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
    @ocaml.doc(
      "<p>The ID of the Amazon Web Services account that owns the virtual private gateway or transit gateway.</p>"
    )
    associatedGatewayOwnerAccount: ownerAccount,
    @ocaml.doc("<p>The ID of the request proposal.</p>")
    proposalId: directConnectGatewayAssociationProposalId,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: directConnectGatewayId,
  }
  type response = {directConnectGatewayAssociation: option<directConnectGatewayAssociation>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "AcceptDirectConnectGatewayAssociationProposalCommand"
  let make = (
    ~associatedGatewayOwnerAccount,
    ~proposalId,
    ~directConnectGatewayId,
    ~overrideAllowedPrefixesToDirectConnectGateway=?,
    (),
  ) =>
    new({
      overrideAllowedPrefixesToDirectConnectGateway,
      associatedGatewayOwnerAccount,
      proposalId,
      directConnectGatewayId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateLag = {
  type t
  type request = {
    @ocaml.doc("<p>The LAG MAC Security (MACsec) encryption mode.</p>
         <p>Amazon Web Services applies the value to all connections which are part of the LAG.</p>")
    encryptionMode: option<encryptionMode>,
    @ocaml.doc(
      "<p>The minimum number of physical connections that must be operational for the LAG itself to be operational.</p>"
    )
    minimumLinks: option<count>,
    @ocaml.doc("<p>The name of the LAG.</p>") lagName: option<lagName>,
    @ocaml.doc("<p>The ID of the LAG.</p>") lagId: lagId,
  }
  type response = lag
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "UpdateLagCommand"
  let make = (~lagId, ~encryptionMode=?, ~minimumLinks=?, ~lagName=?, ()) =>
    new({encryptionMode, minimumLinks, lagName, lagId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeVirtualInterfaces = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual interface.</p>")
    virtualInterfaceId: option<virtualInterfaceId>,
    @ocaml.doc("<p>The ID of the connection.</p>") connectionId: option<connectionId>,
  }
  type response = {
    @ocaml.doc("<p>The virtual interfaces</p>") virtualInterfaces: option<virtualInterfaceList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeVirtualInterfacesCommand"
  let make = (~virtualInterfaceId=?, ~connectionId=?, ()) => new({virtualInterfaceId, connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeTags = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of the resources.</p>")
    resourceArns: resourceArnList,
  }
  type response = {
    @ocaml.doc("<p>Information about the tags.</p>") resourceTags: option<resourceTagList>,
  }
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "DescribeTagsCommand"
  let make = (~resourceArns, ()) => new({resourceArns: resourceArns})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeInterconnects = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the interconnect.</p>") interconnectId: option<interconnectId>,
  }
  type response = {@ocaml.doc("<p>The interconnects.</p>") interconnects: option<interconnectList>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeInterconnectsCommand"
  let make = (~interconnectId=?, ()) => new({interconnectId: interconnectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeHostedConnections = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the interconnect or LAG.</p>") connectionId: connectionId,
  }
  type response = {@ocaml.doc("<p>The connections.</p>") connections: option<connectionList>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeHostedConnectionsCommand"
  let make = (~connectionId, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDirectConnectGatewayAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the virtual private gateway or transit gateway.</p>")
    virtualGatewayId: option<virtualGatewayId>,
    @ocaml.doc("<p>The token provided in the previous call to retrieve the next page.</p>")
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
      returned.</p>")
    maxResults: option<maxResultSetSize>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: option<directConnectGatewayId>,
    @ocaml.doc("<p>The ID of the associated gateway.</p>")
    associatedGatewayId: option<associatedGatewayId>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway association.</p>")
    associationId: option<directConnectGatewayAssociationId>,
  }
  type response = {
    @ocaml.doc("<p>The token to retrieve the next page.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>Information about the associations.</p>")
    directConnectGatewayAssociations: option<directConnectGatewayAssociationList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeDirectConnectGatewayAssociationsCommand"
  let make = (
    ~virtualGatewayId=?,
    ~nextToken=?,
    ~maxResults=?,
    ~directConnectGatewayId=?,
    ~associatedGatewayId=?,
    ~associationId=?,
    (),
  ) =>
    new({
      virtualGatewayId,
      nextToken,
      maxResults,
      directConnectGatewayId,
      associatedGatewayId,
      associationId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeDirectConnectGatewayAssociationProposals = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") nextToken: option<paginationToken>,
    @ocaml.doc("<p>The maximum number of results to return with a single call.
	To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
	        <p>If <code>MaxResults</code> is given a value larger than 100, only 100 results are
      returned.</p>")
    maxResults: option<maxResultSetSize>,
    @ocaml.doc("<p>The ID of the associated gateway.</p>")
    associatedGatewayId: option<associatedGatewayId>,
    @ocaml.doc("<p>The ID of the proposal.</p>")
    proposalId: option<directConnectGatewayAssociationProposalId>,
    @ocaml.doc("<p>The ID of the Direct Connect gateway.</p>")
    directConnectGatewayId: option<directConnectGatewayId>,
  }
  type response = {
    @ocaml.doc(
      "<p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>"
    )
    nextToken: option<paginationToken>,
    @ocaml.doc("<p>Describes the Direct Connect gateway association proposals.</p>")
    directConnectGatewayAssociationProposals: option<directConnectGatewayAssociationProposalList>,
  }
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeDirectConnectGatewayAssociationProposalsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~associatedGatewayId=?,
    ~proposalId=?,
    ~directConnectGatewayId=?,
    (),
  ) => new({nextToken, maxResults, associatedGatewayId, proposalId, directConnectGatewayId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeConnectionsOnInterconnect = {
  type t
  type request = {@ocaml.doc("<p>The ID of the interconnect.</p>") interconnectId: interconnectId}
  type response = {@ocaml.doc("<p>The connections.</p>") connections: option<connectionList>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeConnectionsOnInterconnectCommand"
  let make = (~interconnectId, ()) => new({interconnectId: interconnectId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeConnections = {
  type t
  type request = {@ocaml.doc("<p>The ID of the connection.</p>") connectionId: option<connectionId>}
  type response = {@ocaml.doc("<p>The connections.</p>") connections: option<connectionList>}
  @module("@aws-sdk/client-directconnect") @new
  external new: request => t = "DescribeConnectionsCommand"
  let make = (~connectionId=?, ()) => new({connectionId: connectionId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteLag = {
  type t
  type request = {@ocaml.doc("<p>The ID of the LAG.</p>") lagId: lagId}
  type response = lag
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "DeleteLagCommand"
  let make = (~lagId, ()) => new({lagId: lagId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLag = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether the connection will support MAC Security (MACsec).</p>
         <note>
            <p>All connections in the LAG must be capable of  supporting MAC Security (MACsec). For information about MAC Security (MACsec) prerequisties, see  <a href=\"https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-mac-sec-getting-started.html#mac-sec-prerequisites\">MACsec prerequisties</a> in the <i>Direct Connect User Guide</i>.</p>
         </note>")
    requestMACSec: option<requestMACSec>,
    @ocaml.doc("<p>The name of the service provider associated with the LAG.</p>")
    providerName: option<providerName>,
    @ocaml.doc("<p>The tags to associate with the automtically created LAGs.</p>")
    childConnectionTags: option<tagList_>,
    @ocaml.doc("<p>The tags to associate with the LAG.</p>") tags: option<tagList_>,
    @ocaml.doc("<p>The ID of an existing dedicated connection to migrate to the LAG.</p>")
    connectionId: option<connectionId>,
    @ocaml.doc("<p>The name of the LAG.</p>") lagName: lagName,
    @ocaml.doc("<p>The bandwidth of the individual physical dedicated connections bundled by the LAG. The
      possible values are 1Gbps and 10Gbps. </p>")
    connectionsBandwidth: bandwidth,
    @ocaml.doc("<p>The location for the LAG.</p>") location: locationCode,
    @ocaml.doc("<p>The number of physical dedicated connections initially provisioned and bundled by the
      LAG.</p>")
    numberOfConnections: count,
  }
  type response = lag
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "CreateLagCommand"
  let make = (
    ~lagName,
    ~connectionsBandwidth,
    ~location,
    ~numberOfConnections,
    ~requestMACSec=?,
    ~providerName=?,
    ~childConnectionTags=?,
    ~tags=?,
    ~connectionId=?,
    (),
  ) =>
    new({
      requestMACSec,
      providerName,
      childConnectionTags,
      tags,
      connectionId,
      lagName,
      connectionsBandwidth,
      location,
      numberOfConnections,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeLags = {
  type t
  type request = {@ocaml.doc("<p>The ID of the LAG.</p>") lagId: option<lagId>}
  type response = {@ocaml.doc("<p>The LAGs.</p>") lags: option<lagList>}
  @module("@aws-sdk/client-directconnect") @new external new: request => t = "DescribeLagsCommand"
  let make = (~lagId=?, ()) => new({lagId: lagId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
