type responseMetadata = {
httpStatusCode: option<float>,
  requestId: option<string>,
  extendedRequestId: option<string>,
  cfId: option<string>,
  attempts: option<int>,
  totalRetryDelay: option<int>
};
type string_ = string
type boolean_ = bool
type integer_ = int
type timestamp_ = Js.Date.t;
type long = float
type virtualInterfaceType = string
type virtualInterfaceState = [@as("unknown") #Unknown | @as("rejected") #Rejected | @as("deleted") #Deleted | @as("deleting") #Deleting | @as("down") #Down | @as("available") #Available | @as("pending") #Pending | @as("verifying") #Verifying | @as("confirming") #Confirming]
type virtualInterfaceRegion = string
type virtualInterfaceName = string
type virtualInterfaceId = string
type virtualGatewayState = string
type virtualGatewayRegion = string
type virtualGatewayId = string
type vlan = int
type testId = string
type testDuration = int
type tagValue = string
type tagKey = string
type stateChangeError = string
type state = string
type startTime = Js.Date.t;
type startOnDate = string
type secretARN = string
type routerConfig = string
type resourceArn = string
type requestMACSec = bool
type region = string
type providerName = string
type portSpeed = string
type portEncryptionStatus = string
type partnerName = string
type paginationToken = string
type ownerAccount = string
type maxResultSetSize = int
type macSecCapable = bool
type mtu = int
type longAsn = float
type locationName = string
type locationCode = string
type loaIssueTime = Js.Date.t;
type loaContentType = [@as("application/pdf") #ApplicationPdf]
type loaContent = NodeJs.Buffer.t
type lagState = [@as("unknown") #Unknown | @as("deleted") #Deleted | @as("deleting") #Deleting | @as("down") #Down | @as("available") #Available | @as("pending") #Pending | @as("requested") #Requested]
type lagName = string
type lagId = string
type jumboFrameCapable = bool
type interconnectState = [@as("unknown") #Unknown | @as("deleted") #Deleted | @as("deleting") #Deleting | @as("down") #Down | @as("available") #Available | @as("pending") #Pending | @as("requested") #Requested]
type interconnectName = string
type interconnectId = string
type hasLogicalRedundancy = [@as("no") #No | @as("yes") #Yes | @as("unknown") #Unknown]
type gatewayType = [@as("transitGateway") #TransitGateway | @as("virtualPrivateGateway") #VirtualPrivateGateway]
type gatewayIdentifier = string
type gatewayIdToAssociate = string
type failureTestHistoryStatus = string
type errorMessage = string
type endTime = Js.Date.t;
type encryptionMode = string
type directConnectGatewayState = [@as("deleted") #Deleted | @as("deleting") #Deleting | @as("available") #Available | @as("pending") #Pending]
type directConnectGatewayName = string
type directConnectGatewayId = string
type directConnectGatewayAttachmentType = [@as("PrivateVirtualInterface") #PrivateVirtualInterface | @as("TransitVirtualInterface") #TransitVirtualInterface]
type directConnectGatewayAttachmentState = [@as("detached") #Detached | @as("detaching") #Detaching | @as("attached") #Attached | @as("attaching") #Attaching]
type directConnectGatewayAssociationState = [@as("updating") #Updating | @as("disassociated") #Disassociated | @as("disassociating") #Disassociating | @as("associated") #Associated | @as("associating") #Associating]
type directConnectGatewayAssociationProposalState = [@as("deleted") #Deleted | @as("accepted") #Accepted | @as("requested") #Requested]
type directConnectGatewayAssociationProposalId = string
type directConnectGatewayAssociationId = string
type customerAddress = string
type count = int
type connectionState = [@as("unknown") #Unknown | @as("rejected") #Rejected | @as("deleted") #Deleted | @as("deleting") #Deleting | @as("down") #Down | @as("available") #Available | @as("pending") #Pending | @as("requested") #Requested | @as("ordering") #Ordering]
type connectionName = string
type connectionId = string
type ckn = string
type cak = string
type cidr = string
type booleanFlag = bool
type bandwidth = string
type bgpstatus = [@as("unknown") #Unknown | @as("down") #Down | @as("up") #Up]
type bgppeerState = [@as("deleted") #Deleted | @as("deleting") #Deleting | @as("available") #Available | @as("pending") #Pending | @as("verifying") #Verifying]
type bgppeerId = string
type bgpauthKey = string
type awsDeviceV2 = string
type awsDevice = string
type associatedGatewayId = string
type amazonAddress = string
type addressFamily = [@as("ipv6") #Ipv6 | @as("ipv4") #Ipv4]
type asn = int
type virtualGateway = {
virtualGatewayState: option<virtualGatewayState>,
virtualGatewayId: option<virtualGatewayId>
}
type tagKeyList = array<tagKey>
type tag = {
value: option<tagValue>,
key: tagKey
}
type routeFilterPrefix = {
cidr: option<cidr>
}
type resourceArnList = array<resourceArn>
type providerList = array<providerName>
type newBGPPeer = {
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
addressFamily: option<addressFamily>,
authKey: option<bgpauthKey>,
asn: option<asn>
}
type macSecKey = {
startOn: option<startOnDate>,
state: option<state>,
ckn: option<ckn>,
secretARN: option<secretARN>
}
type loa = {
loaContentType: option<loaContentType>,
loaContent: option<loaContent>
}
type directConnectGatewayAttachment = {
stateChangeError: option<stateChangeError>,
attachmentType: option<directConnectGatewayAttachmentType>,
attachmentState: option<directConnectGatewayAttachmentState>,
virtualInterfaceOwnerAccount: option<ownerAccount>,
virtualInterfaceRegion: option<virtualInterfaceRegion>,
virtualInterfaceId: option<virtualInterfaceId>,
directConnectGatewayId: option<directConnectGatewayId>
}
type directConnectGateway = {
stateChangeError: option<stateChangeError>,
directConnectGatewayState: option<directConnectGatewayState>,
ownerAccount: option<ownerAccount>,
amazonSideAsn: option<longAsn>,
directConnectGatewayName: option<directConnectGatewayName>,
directConnectGatewayId: option<directConnectGatewayId>
}
type bgppeerIdList = array<bgppeerId>
type bgppeer = {
awsDeviceV2: option<awsDeviceV2>,
bgpStatus: option<bgpstatus>,
bgpPeerState: option<bgppeerState>,
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
addressFamily: option<addressFamily>,
authKey: option<bgpauthKey>,
asn: option<asn>,
bgpPeerId: option<bgppeerId>
}
type availablePortSpeeds = array<portSpeed>
type availableMacSecPortSpeeds = array<portSpeed>
type associatedGateway = {
region: option<region>,
ownerAccount: option<ownerAccount>,
@as("type") type_: option<gatewayType>,
id: option<gatewayIdentifier>
}
type virtualInterfaceTestHistory = {
endTime: option<endTime>,
startTime: option<startTime>,
testDurationInMinutes: option<testDuration>,
ownerAccount: option<ownerAccount>,
status: option<failureTestHistoryStatus>,
bgpPeers: option<bgppeerIdList>,
virtualInterfaceId: option<virtualInterfaceId>,
testId: option<testId>
}
type virtualGatewayList = array<virtualGateway>
type tagList_ = array<tag>
type routeFilterPrefixList = array<routeFilterPrefix>
type macSecKeyList = array<macSecKey>
type location = {
availableMacSecPortSpeeds: option<availableMacSecPortSpeeds>,
availableProviders: option<providerList>,
availablePortSpeeds: option<availablePortSpeeds>,
region: option<region>,
locationName: option<locationName>,
locationCode: option<locationCode>
}
type directConnectGatewayList = array<directConnectGateway>
type directConnectGatewayAttachmentList = array<directConnectGatewayAttachment>
type bgppeerList = array<bgppeer>
type virtualInterfaceTestHistoryList = array<virtualInterfaceTestHistory>
type virtualInterface = {
tags: option<tagList_>,
awsDeviceV2: option<awsDeviceV2>,
region: option<region>,
bgpPeers: option<bgppeerList>,
routeFilterPrefixes: option<routeFilterPrefixList>,
directConnectGatewayId: option<directConnectGatewayId>,
virtualGatewayId: option<virtualGatewayId>,
jumboFrameCapable: option<jumboFrameCapable>,
mtu: option<mtu>,
customerRouterConfig: option<routerConfig>,
virtualInterfaceState: option<virtualInterfaceState>,
addressFamily: option<addressFamily>,
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
authKey: option<bgpauthKey>,
amazonSideAsn: option<longAsn>,
asn: option<asn>,
vlan: option<vlan>,
virtualInterfaceName: option<virtualInterfaceName>,
virtualInterfaceType: option<virtualInterfaceType>,
connectionId: option<connectionId>,
location: option<locationCode>,
virtualInterfaceId: option<virtualInterfaceId>,
ownerAccount: option<ownerAccount>
}
type resourceTag = {
tags: option<tagList_>,
resourceArn: option<resourceArn>
}
type newTransitVirtualInterfaceAllocation = {
tags: option<tagList_>,
addressFamily: option<addressFamily>,
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
authKey: option<bgpauthKey>,
mtu: option<mtu>,
asn: option<asn>,
vlan: option<vlan>,
virtualInterfaceName: option<virtualInterfaceName>
}
type newTransitVirtualInterface = {
tags: option<tagList_>,
directConnectGatewayId: option<directConnectGatewayId>,
addressFamily: option<addressFamily>,
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
authKey: option<bgpauthKey>,
mtu: option<mtu>,
asn: option<asn>,
vlan: option<vlan>,
virtualInterfaceName: option<virtualInterfaceName>
}
type newPublicVirtualInterfaceAllocation = {
tags: option<tagList_>,
routeFilterPrefixes: option<routeFilterPrefixList>,
addressFamily: option<addressFamily>,
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
authKey: option<bgpauthKey>,
asn: asn,
vlan: vlan,
virtualInterfaceName: virtualInterfaceName
}
type newPublicVirtualInterface = {
tags: option<tagList_>,
routeFilterPrefixes: option<routeFilterPrefixList>,
addressFamily: option<addressFamily>,
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
authKey: option<bgpauthKey>,
asn: asn,
vlan: vlan,
virtualInterfaceName: virtualInterfaceName
}
type newPrivateVirtualInterfaceAllocation = {
tags: option<tagList_>,
customerAddress: option<customerAddress>,
addressFamily: option<addressFamily>,
amazonAddress: option<amazonAddress>,
authKey: option<bgpauthKey>,
mtu: option<mtu>,
asn: asn,
vlan: vlan,
virtualInterfaceName: virtualInterfaceName
}
type newPrivateVirtualInterface = {
tags: option<tagList_>,
directConnectGatewayId: option<directConnectGatewayId>,
virtualGatewayId: option<virtualGatewayId>,
addressFamily: option<addressFamily>,
customerAddress: option<customerAddress>,
amazonAddress: option<amazonAddress>,
authKey: option<bgpauthKey>,
mtu: option<mtu>,
asn: asn,
vlan: vlan,
virtualInterfaceName: virtualInterfaceName
}
type locationList = array<location>
type interconnect = {
providerName: option<providerName>,
tags: option<tagList_>,
hasLogicalRedundancy: option<hasLogicalRedundancy>,
awsDeviceV2: option<awsDeviceV2>,
jumboFrameCapable: option<jumboFrameCapable>,
awsDevice: option<awsDevice>,
lagId: option<lagId>,
loaIssueTime: option<loaIssueTime>,
bandwidth: option<bandwidth>,
location: option<locationCode>,
region: option<region>,
interconnectState: option<interconnectState>,
interconnectName: option<interconnectName>,
interconnectId: option<interconnectId>
}
type directConnectGatewayAssociationProposal = {
requestedAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
existingAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
associatedGateway: option<associatedGateway>,
proposalState: option<directConnectGatewayAssociationProposalState>,
directConnectGatewayOwnerAccount: option<ownerAccount>,
directConnectGatewayId: option<directConnectGatewayId>,
proposalId: option<directConnectGatewayAssociationProposalId>
}
type directConnectGatewayAssociation = {
virtualGatewayOwnerAccount: option<ownerAccount>,
virtualGatewayRegion: option<virtualGatewayRegion>,
virtualGatewayId: option<virtualGatewayId>,
allowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
associationId: option<directConnectGatewayAssociationId>,
associatedGateway: option<associatedGateway>,
stateChangeError: option<stateChangeError>,
associationState: option<directConnectGatewayAssociationState>,
directConnectGatewayOwnerAccount: option<ownerAccount>,
directConnectGatewayId: option<directConnectGatewayId>
}
type connection = {
macSecKeys: option<macSecKeyList>,
encryptionMode: option<encryptionMode>,
portEncryptionStatus: option<portEncryptionStatus>,
macSecCapable: option<macSecCapable>,
providerName: option<providerName>,
tags: option<tagList_>,
hasLogicalRedundancy: option<hasLogicalRedundancy>,
awsDeviceV2: option<awsDeviceV2>,
jumboFrameCapable: option<jumboFrameCapable>,
awsDevice: option<awsDevice>,
lagId: option<lagId>,
loaIssueTime: option<loaIssueTime>,
partnerName: option<partnerName>,
vlan: option<vlan>,
bandwidth: option<bandwidth>,
location: option<locationCode>,
region: option<region>,
connectionState: option<connectionState>,
connectionName: option<connectionName>,
connectionId: option<connectionId>,
ownerAccount: option<ownerAccount>
}
type virtualInterfaceList = array<virtualInterface>
type resourceTagList = array<resourceTag>
type interconnectList = array<interconnect>
type directConnectGatewayAssociationProposalList = array<directConnectGatewayAssociationProposal>
type directConnectGatewayAssociationList = array<directConnectGatewayAssociation>
type connectionList = array<connection>
type lag = {
macSecKeys: option<macSecKeyList>,
encryptionMode: option<encryptionMode>,
macSecCapable: option<macSecCapable>,
providerName: option<providerName>,
tags: option<tagList_>,
hasLogicalRedundancy: option<hasLogicalRedundancy>,
jumboFrameCapable: option<jumboFrameCapable>,
allowsHostedConnections: option<booleanFlag>,
connections: option<connectionList>,
awsDeviceV2: option<awsDeviceV2>,
awsDevice: option<awsDevice>,
minimumLinks: option<count>,
region: option<region>,
location: option<locationCode>,
lagState: option<lagState>,
lagName: option<lagName>,
ownerAccount: option<ownerAccount>,
lagId: option<lagId>,
numberOfConnections: option<count>,
connectionsBandwidth: option<bandwidth>
}
type lagList = array<lag>
type awsServiceClient;
@module("@aws-sdk/client-directconnect") @new external createClient: unit => awsServiceClient = "DirectConnectClient";
module DescribeLoa = {
  type t;
  type request = {
loaContentType: option<loaContentType>,
providerName: option<providerName>,
connectionId: connectionId
}
  type response = loa;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeLoaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteVirtualInterface = {
  type t;
  type request = {
virtualInterfaceId: virtualInterfaceId
}
  type response = {
virtualInterfaceState: option<virtualInterfaceState>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteInterconnect = {
  type t;
  type request = {
interconnectId: interconnectId
}
  type response = {
interconnectState: option<interconnectState>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteInterconnectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConfirmTransitVirtualInterface = {
  type t;
  type request = {
directConnectGatewayId: directConnectGatewayId,
virtualInterfaceId: virtualInterfaceId
}
  type response = {
virtualInterfaceState: option<virtualInterfaceState>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "ConfirmTransitVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConfirmPublicVirtualInterface = {
  type t;
  type request = {
virtualInterfaceId: virtualInterfaceId
}
  type response = {
virtualInterfaceState: option<virtualInterfaceState>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "ConfirmPublicVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConfirmPrivateVirtualInterface = {
  type t;
  type request = {
directConnectGatewayId: option<directConnectGatewayId>,
virtualGatewayId: option<virtualGatewayId>,
virtualInterfaceId: virtualInterfaceId
}
  type response = {
virtualInterfaceState: option<virtualInterfaceState>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "ConfirmPrivateVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ConfirmConnection = {
  type t;
  type request = {
connectionId: connectionId
}
  type response = {
connectionState: option<connectionState>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "ConfirmConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
tagKeys: tagKeyList,
resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "UntagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInterconnectLoa = {
  type t;
  type request = {
loaContentType: option<loaContentType>,
providerName: option<providerName>,
interconnectId: interconnectId
}
  type response = {
loa: option<loa>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeInterconnectLoaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionLoa = {
  type t;
  type request = {
loaContentType: option<loaContentType>,
providerName: option<providerName>,
connectionId: connectionId
}
  type response = {
loa: option<loa>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeConnectionLoaCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectConnectGateway = {
  type t;
  type request = {
directConnectGatewayId: directConnectGatewayId
}
  type response = {
directConnectGateway: option<directConnectGateway>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteDirectConnectGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDirectConnectGateway = {
  type t;
  type request = {
amazonSideAsn: option<longAsn>,
directConnectGatewayName: directConnectGatewayName
}
  type response = {
directConnectGateway: option<directConnectGateway>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateDirectConnectGatewayCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateVirtualInterfaceAttributes = {
  type t;
  type request = {
mtu: option<mtu>,
virtualInterfaceId: virtualInterfaceId
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "UpdateVirtualInterfaceAttributesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateConnection = {
  type t;
  type request = {
encryptionMode: option<encryptionMode>,
connectionName: option<connectionName>,
connectionId: connectionId
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "UpdateConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
tags: tagList_,
resourceArn: resourceArn
}
  type response = unit
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "TagResourceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StopBgpFailoverTest = {
  type t;
  type request = {
virtualInterfaceId: virtualInterfaceId
}
  type response = {
virtualInterfaceTest: option<virtualInterfaceTestHistory>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "StopBgpFailoverTestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module StartBgpFailoverTest = {
  type t;
  type request = {
testDurationInMinutes: option<testDuration>,
bgpPeers: option<bgppeerIdList>,
virtualInterfaceId: virtualInterfaceId
}
  type response = {
virtualInterfaceTest: option<virtualInterfaceTestHistory>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "StartBgpFailoverTestCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateMacSecKey = {
  type t;
  type request = {
secretARN: secretARN,
connectionId: connectionId
}
  type response = {
macSecKeys: option<macSecKeyList>,
connectionId: option<connectionId>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DisassociateMacSecKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DisassociateConnectionFromLag = {
  type t;
  type request = {
lagId: lagId,
connectionId: connectionId
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DisassociateConnectionFromLagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualGateways = {
  type t;
  
  type response = {
virtualGateways: option<virtualGatewayList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (unit) => t = "DescribeVirtualGatewaysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGateways = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResultSetSize>,
directConnectGatewayId: option<directConnectGatewayId>
}
  type response = {
nextToken: option<paginationToken>,
directConnectGateways: option<directConnectGatewayList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeDirectConnectGatewaysCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGatewayAttachments = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResultSetSize>,
virtualInterfaceId: option<virtualInterfaceId>,
directConnectGatewayId: option<directConnectGatewayId>
}
  type response = {
nextToken: option<paginationToken>,
directConnectGatewayAttachments: option<directConnectGatewayAttachmentList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeDirectConnectGatewayAttachmentsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
connectionId: connectionId
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateInterconnect = {
  type t;
  type request = {
providerName: option<providerName>,
tags: option<tagList_>,
lagId: option<lagId>,
location: locationCode,
bandwidth: bandwidth,
interconnectName: interconnectName
}
  type response = interconnect;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateInterconnectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
requestMACSec: option<requestMACSec>,
providerName: option<providerName>,
tags: option<tagList_>,
lagId: option<lagId>,
connectionName: connectionName,
bandwidth: bandwidth,
location: locationCode
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateVirtualInterface = {
  type t;
  type request = {
connectionId: connectionId,
virtualInterfaceId: virtualInterfaceId
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AssociateVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateMacSecKey = {
  type t;
  type request = {
cak: option<cak>,
ckn: option<ckn>,
secretARN: option<secretARN>,
connectionId: connectionId
}
  type response = {
macSecKeys: option<macSecKeyList>,
connectionId: option<connectionId>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AssociateMacSecKeyCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateHostedConnection = {
  type t;
  type request = {
parentConnectionId: connectionId,
connectionId: connectionId
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AssociateHostedConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AssociateConnectionWithLag = {
  type t;
  type request = {
lagId: lagId,
connectionId: connectionId
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AssociateConnectionWithLagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AllocateHostedConnection = {
  type t;
  type request = {
tags: option<tagList_>,
vlan: vlan,
connectionName: connectionName,
bandwidth: bandwidth,
ownerAccount: ownerAccount,
connectionId: connectionId
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AllocateHostedConnectionCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AllocateConnectionOnInterconnect = {
  type t;
  type request = {
vlan: vlan,
interconnectId: interconnectId,
ownerAccount: ownerAccount,
connectionName: connectionName,
bandwidth: bandwidth
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AllocateConnectionOnInterconnectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateDirectConnectGatewayAssociation = {
  type t;
  type request = {
removeAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
addAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
associationId: option<directConnectGatewayAssociationId>
}
  type response = {
directConnectGatewayAssociation: option<directConnectGatewayAssociation>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "UpdateDirectConnectGatewayAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module ListVirtualInterfaceTestHistory = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResultSetSize>,
status: option<failureTestHistoryStatus>,
bgpPeers: option<bgppeerIdList>,
virtualInterfaceId: option<virtualInterfaceId>,
testId: option<testId>
}
  type response = {
nextToken: option<paginationToken>,
virtualInterfaceTestHistory: option<virtualInterfaceTestHistoryList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "ListVirtualInterfaceTestHistoryCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLocations = {
  type t;
  
  type response = {
locations: option<locationList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (unit) => t = "DescribeLocationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectConnectGatewayAssociationProposal = {
  type t;
  type request = {
proposalId: directConnectGatewayAssociationProposalId
}
  type response = {
directConnectGatewayAssociationProposal: option<directConnectGatewayAssociationProposal>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteDirectConnectGatewayAssociationProposalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectConnectGatewayAssociation = {
  type t;
  type request = {
virtualGatewayId: option<virtualGatewayId>,
directConnectGatewayId: option<directConnectGatewayId>,
associationId: option<directConnectGatewayAssociationId>
}
  type response = {
directConnectGatewayAssociation: option<directConnectGatewayAssociation>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteDirectConnectGatewayAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteBGPPeer = {
  type t;
  type request = {
bgpPeerId: option<bgppeerId>,
customerAddress: option<customerAddress>,
asn: option<asn>,
virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
virtualInterface: option<virtualInterface>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteBGPPeerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateTransitVirtualInterface = {
  type t;
  type request = {
newTransitVirtualInterface: newTransitVirtualInterface,
connectionId: connectionId
}
  type response = {
virtualInterface: option<virtualInterface>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateTransitVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePublicVirtualInterface = {
  type t;
  type request = {
newPublicVirtualInterface: newPublicVirtualInterface,
connectionId: connectionId
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreatePublicVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreatePrivateVirtualInterface = {
  type t;
  type request = {
newPrivateVirtualInterface: newPrivateVirtualInterface,
connectionId: connectionId
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreatePrivateVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDirectConnectGatewayAssociationProposal = {
  type t;
  type request = {
removeAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
addAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
gatewayId: gatewayIdToAssociate,
directConnectGatewayOwnerAccount: ownerAccount,
directConnectGatewayId: directConnectGatewayId
}
  type response = {
directConnectGatewayAssociationProposal: option<directConnectGatewayAssociationProposal>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateDirectConnectGatewayAssociationProposalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateDirectConnectGatewayAssociation = {
  type t;
  type request = {
virtualGatewayId: option<virtualGatewayId>,
addAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
gatewayId: option<gatewayIdToAssociate>,
directConnectGatewayId: directConnectGatewayId
}
  type response = {
directConnectGatewayAssociation: option<directConnectGatewayAssociation>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateDirectConnectGatewayAssociationCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateBGPPeer = {
  type t;
  type request = {
newBGPPeer: option<newBGPPeer>,
virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
virtualInterface: option<virtualInterface>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateBGPPeerCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AllocateTransitVirtualInterface = {
  type t;
  type request = {
newTransitVirtualInterfaceAllocation: newTransitVirtualInterfaceAllocation,
ownerAccount: ownerAccount,
connectionId: connectionId
}
  type response = {
virtualInterface: option<virtualInterface>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AllocateTransitVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AllocatePublicVirtualInterface = {
  type t;
  type request = {
newPublicVirtualInterfaceAllocation: newPublicVirtualInterfaceAllocation,
ownerAccount: ownerAccount,
connectionId: connectionId
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AllocatePublicVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AllocatePrivateVirtualInterface = {
  type t;
  type request = {
newPrivateVirtualInterfaceAllocation: newPrivateVirtualInterfaceAllocation,
ownerAccount: ownerAccount,
connectionId: connectionId
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AllocatePrivateVirtualInterfaceCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module AcceptDirectConnectGatewayAssociationProposal = {
  type t;
  type request = {
overrideAllowedPrefixesToDirectConnectGateway: option<routeFilterPrefixList>,
associatedGatewayOwnerAccount: ownerAccount,
proposalId: directConnectGatewayAssociationProposalId,
directConnectGatewayId: directConnectGatewayId
}
  type response = {
directConnectGatewayAssociation: option<directConnectGatewayAssociation>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "AcceptDirectConnectGatewayAssociationProposalCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module UpdateLag = {
  type t;
  type request = {
encryptionMode: option<encryptionMode>,
minimumLinks: option<count>,
lagName: option<lagName>,
lagId: lagId
}
  type response = lag;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "UpdateLagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualInterfaces = {
  type t;
  type request = {
virtualInterfaceId: option<virtualInterfaceId>,
connectionId: option<connectionId>
}
  type response = {
virtualInterfaces: option<virtualInterfaceList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeVirtualInterfacesCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
resourceArns: resourceArnList
}
  type response = {
resourceTags: option<resourceTagList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeTagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeInterconnects = {
  type t;
  type request = {
interconnectId: option<interconnectId>
}
  type response = {
interconnects: option<interconnectList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeInterconnectsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeHostedConnections = {
  type t;
  type request = {
connectionId: connectionId
}
  type response = {
connections: option<connectionList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeHostedConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGatewayAssociations = {
  type t;
  type request = {
virtualGatewayId: option<virtualGatewayId>,
nextToken: option<paginationToken>,
maxResults: option<maxResultSetSize>,
directConnectGatewayId: option<directConnectGatewayId>,
associatedGatewayId: option<associatedGatewayId>,
associationId: option<directConnectGatewayAssociationId>
}
  type response = {
nextToken: option<paginationToken>,
directConnectGatewayAssociations: option<directConnectGatewayAssociationList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeDirectConnectGatewayAssociationsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGatewayAssociationProposals = {
  type t;
  type request = {
nextToken: option<paginationToken>,
maxResults: option<maxResultSetSize>,
associatedGatewayId: option<associatedGatewayId>,
proposalId: option<directConnectGatewayAssociationProposalId>,
directConnectGatewayId: option<directConnectGatewayId>
}
  type response = {
nextToken: option<paginationToken>,
directConnectGatewayAssociationProposals: option<directConnectGatewayAssociationProposalList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeDirectConnectGatewayAssociationProposalsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionsOnInterconnect = {
  type t;
  type request = {
interconnectId: interconnectId
}
  type response = {
connections: option<connectionList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeConnectionsOnInterconnectCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeConnections = {
  type t;
  type request = {
connectionId: option<connectionId>
}
  type response = {
connections: option<connectionList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeConnectionsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DeleteLag = {
  type t;
  type request = {
lagId: lagId
}
  type response = lag;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DeleteLagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module CreateLag = {
  type t;
  type request = {
requestMACSec: option<requestMACSec>,
providerName: option<providerName>,
childConnectionTags: option<tagList_>,
tags: option<tagList_>,
connectionId: option<connectionId>,
lagName: lagName,
connectionsBandwidth: bandwidth,
location: locationCode,
numberOfConnections: count
}
  type response = lag;
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "CreateLagCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}

module DescribeLags = {
  type t;
  type request = {
lagId: option<lagId>
}
  type response = {
lags: option<lagList>
}
  @module("@aws-sdk/client-directconnect") @new external new_: (request) => t = "DescribeLagsCommand";
  @send external rawSend: (awsServiceClient, t) => Js.Promise.t<response> = "send";
}
