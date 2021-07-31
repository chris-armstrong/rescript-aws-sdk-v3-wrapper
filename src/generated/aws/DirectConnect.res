type apiString = string
type apiBoolean = bool;
type apiInteger = int;
type apiTimestamp = Js.Date.t;
type apiLong = float;
type virtualInterfaceType = string
type virtualInterfaceState = [@as("unknown") #unknown | @as("rejected") #rejected | @as("deleted") #deleted | @as("deleting") #deleting | @as("down") #down | @as("available") #available | @as("pending") #pending | @as("verifying") #verifying | @as("confirming") #confirming]
type virtualInterfaceRegion = string
type virtualInterfaceName = string
type virtualInterfaceId = string
type virtualGatewayState = string
type virtualGatewayRegion = string
type virtualGatewayId = string
type vLAN = int;
type testId = string
type testDuration = int;
type tagValue = string
type tagKey = string
type stateChangeError = string
type state = string
type startTime = Js.Date.t;
type startOnDate = string
type secretARN = string
type routerConfig = string
type resourceArn = string
type requestMACSec = bool;
type region = string
type providerName = string
type portSpeed = string
type portEncryptionStatus = string
type partnerName = string
type paginationToken = string
type ownerAccount = string
type maxResultSetSize = int;
type macSecCapable = bool;
type mTU = int;
type longAsn = float;
type locationName = string
type locationCode = string
type loaIssueTime = Js.Date.t;
type loaContentType = [@as("application/pdf") #application_pdf]
type loaContent = NodeJs.Buffer.t;
type lagState = [@as("unknown") #unknown | @as("deleted") #deleted | @as("deleting") #deleting | @as("down") #down | @as("available") #available | @as("pending") #pending | @as("requested") #requested]
type lagName = string
type lagId = string
type jumboFrameCapable = bool;
type interconnectState = [@as("unknown") #unknown | @as("deleted") #deleted | @as("deleting") #deleting | @as("down") #down | @as("available") #available | @as("pending") #pending | @as("requested") #requested]
type interconnectName = string
type interconnectId = string
type hasLogicalRedundancy = [@as("no") #no | @as("yes") #yes | @as("unknown") #unknown]
type gatewayType = [@as("transitGateway") #transitGateway | @as("virtualPrivateGateway") #virtualPrivateGateway]
type gatewayIdentifier = string
type gatewayIdToAssociate = string
type failureTestHistoryStatus = string
type errorMessage = string
type endTime = Js.Date.t;
type encryptionMode = string
type directConnectGatewayState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending]
type directConnectGatewayName = string
type directConnectGatewayId = string
type directConnectGatewayAttachmentType = [@as("PrivateVirtualInterface") #PrivateVirtualInterface | @as("TransitVirtualInterface") #TransitVirtualInterface]
type directConnectGatewayAttachmentState = [@as("detached") #detached | @as("detaching") #detaching | @as("attached") #attached | @as("attaching") #attaching]
type directConnectGatewayAssociationState = [@as("updating") #updating | @as("disassociated") #disassociated | @as("disassociating") #disassociating | @as("associated") #associated | @as("associating") #associating]
type directConnectGatewayAssociationProposalState = [@as("deleted") #deleted | @as("accepted") #accepted | @as("requested") #requested]
type directConnectGatewayAssociationProposalId = string
type directConnectGatewayAssociationId = string
type customerAddress = string
type count = int;
type connectionState = [@as("unknown") #unknown | @as("rejected") #rejected | @as("deleted") #deleted | @as("deleting") #deleting | @as("down") #down | @as("available") #available | @as("pending") #pending | @as("requested") #requested | @as("ordering") #ordering]
type connectionName = string
type connectionId = string
type ckn = string
type cak = string
type cIDR = string
type booleanFlag = bool;
type bandwidth = string
type bGPStatus = [@as("unknown") #unknown | @as("down") #down | @as("up") #up]
type bGPPeerState = [@as("deleted") #deleted | @as("deleting") #deleting | @as("available") #available | @as("pending") #pending | @as("verifying") #verifying]
type bGPPeerId = string
type bGPAuthKey = string
type awsDeviceV2 = string
type awsDevice = string
type associatedGatewayId = string
type amazonAddress = string
type addressFamily = [@as("ipv6") #ipv6 | @as("ipv4") #ipv4]
type aSN = int;
type virtualGateway = {
@as("virtualGatewayState") virtualGatewayState: virtualGatewayState,
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId
}
type tagKeyList = array<tagKey>
type tag = {
@as("value") value: tagValue,
@as("key") key: option<tagKey>
}
type routeFilterPrefix = {
@as("cidr") cidr: cIDR
}
type resourceArnList = array<resourceArn>
type providerList = array<providerName>
type newBGPPeer = {
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("addressFamily") addressFamily: addressFamily,
@as("authKey") authKey: bGPAuthKey,
@as("asn") asn: aSN
}
type macSecKey = {
@as("startOn") startOn: startOnDate,
@as("state") state: state,
@as("ckn") ckn: ckn,
@as("secretARN") secretARN: secretARN
}
type loa = {
@as("loaContentType") loaContentType: loaContentType,
@as("loaContent") loaContent: loaContent
}
type directConnectGatewayAttachment = {
@as("stateChangeError") stateChangeError: stateChangeError,
@as("attachmentType") attachmentType: directConnectGatewayAttachmentType,
@as("attachmentState") attachmentState: directConnectGatewayAttachmentState,
@as("virtualInterfaceOwnerAccount") virtualInterfaceOwnerAccount: ownerAccount,
@as("virtualInterfaceRegion") virtualInterfaceRegion: virtualInterfaceRegion,
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId
}
type directConnectGateway = {
@as("stateChangeError") stateChangeError: stateChangeError,
@as("directConnectGatewayState") directConnectGatewayState: directConnectGatewayState,
@as("ownerAccount") ownerAccount: ownerAccount,
@as("amazonSideAsn") amazonSideAsn: longAsn,
@as("directConnectGatewayName") directConnectGatewayName: directConnectGatewayName,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId
}
type bGPPeerIdList = array<bGPPeerId>
type bGPPeer = {
@as("awsDeviceV2") awsDeviceV2: awsDeviceV2,
@as("bgpStatus") bgpStatus: bGPStatus,
@as("bgpPeerState") bgpPeerState: bGPPeerState,
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("addressFamily") addressFamily: addressFamily,
@as("authKey") authKey: bGPAuthKey,
@as("asn") asn: aSN,
@as("bgpPeerId") bgpPeerId: bGPPeerId
}
type availablePortSpeeds = array<portSpeed>
type availableMacSecPortSpeeds = array<portSpeed>
type associatedGateway = {
@as("region") region: region,
@as("ownerAccount") ownerAccount: ownerAccount,
@as("type") type_: gatewayType,
@as("id") id: gatewayIdentifier
}
type virtualInterfaceTestHistory = {
@as("endTime") endTime: endTime,
@as("startTime") startTime: startTime,
@as("testDurationInMinutes") testDurationInMinutes: testDuration,
@as("ownerAccount") ownerAccount: ownerAccount,
@as("status") status: failureTestHistoryStatus,
@as("bgpPeers") bgpPeers: bGPPeerIdList,
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId,
@as("testId") testId: testId
}
type virtualGatewayList = array<virtualGateway>
type tagList = array<tag>
type routeFilterPrefixList = array<routeFilterPrefix>
type macSecKeyList = array<macSecKey>
type location = {
@as("availableMacSecPortSpeeds") availableMacSecPortSpeeds: availableMacSecPortSpeeds,
@as("availableProviders") availableProviders: providerList,
@as("availablePortSpeeds") availablePortSpeeds: availablePortSpeeds,
@as("region") region: region,
@as("locationName") locationName: locationName,
@as("locationCode") locationCode: locationCode
}
type directConnectGatewayList = array<directConnectGateway>
type directConnectGatewayAttachmentList = array<directConnectGatewayAttachment>
type bGPPeerList = array<bGPPeer>
type virtualInterfaceTestHistoryList = array<virtualInterfaceTestHistory>
type virtualInterface = {
@as("tags") tags: tagList,
@as("awsDeviceV2") awsDeviceV2: awsDeviceV2,
@as("region") region: region,
@as("bgpPeers") bgpPeers: bGPPeerList,
@as("routeFilterPrefixes") routeFilterPrefixes: routeFilterPrefixList,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId,
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId,
@as("jumboFrameCapable") jumboFrameCapable: jumboFrameCapable,
@as("mtu") mtu: mTU,
@as("customerRouterConfig") customerRouterConfig: routerConfig,
@as("virtualInterfaceState") virtualInterfaceState: virtualInterfaceState,
@as("addressFamily") addressFamily: addressFamily,
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("authKey") authKey: bGPAuthKey,
@as("amazonSideAsn") amazonSideAsn: longAsn,
@as("asn") asn: aSN,
@as("vlan") vlan: vLAN,
@as("virtualInterfaceName") virtualInterfaceName: virtualInterfaceName,
@as("virtualInterfaceType") virtualInterfaceType: virtualInterfaceType,
@as("connectionId") connectionId: connectionId,
@as("location") location: locationCode,
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId,
@as("ownerAccount") ownerAccount: ownerAccount
}
type resourceTag = {
@as("tags") tags: tagList,
@as("resourceArn") resourceArn: resourceArn
}
type newTransitVirtualInterfaceAllocation = {
@as("tags") tags: tagList,
@as("addressFamily") addressFamily: addressFamily,
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("authKey") authKey: bGPAuthKey,
@as("mtu") mtu: mTU,
@as("asn") asn: aSN,
@as("vlan") vlan: vLAN,
@as("virtualInterfaceName") virtualInterfaceName: virtualInterfaceName
}
type newTransitVirtualInterface = {
@as("tags") tags: tagList,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId,
@as("addressFamily") addressFamily: addressFamily,
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("authKey") authKey: bGPAuthKey,
@as("mtu") mtu: mTU,
@as("asn") asn: aSN,
@as("vlan") vlan: vLAN,
@as("virtualInterfaceName") virtualInterfaceName: virtualInterfaceName
}
type newPublicVirtualInterfaceAllocation = {
@as("tags") tags: tagList,
@as("routeFilterPrefixes") routeFilterPrefixes: routeFilterPrefixList,
@as("addressFamily") addressFamily: addressFamily,
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("authKey") authKey: bGPAuthKey,
@as("asn") asn: option<aSN>,
@as("vlan") vlan: option<vLAN>,
@as("virtualInterfaceName") virtualInterfaceName: option<virtualInterfaceName>
}
type newPublicVirtualInterface = {
@as("tags") tags: tagList,
@as("routeFilterPrefixes") routeFilterPrefixes: routeFilterPrefixList,
@as("addressFamily") addressFamily: addressFamily,
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("authKey") authKey: bGPAuthKey,
@as("asn") asn: option<aSN>,
@as("vlan") vlan: option<vLAN>,
@as("virtualInterfaceName") virtualInterfaceName: option<virtualInterfaceName>
}
type newPrivateVirtualInterfaceAllocation = {
@as("tags") tags: tagList,
@as("customerAddress") customerAddress: customerAddress,
@as("addressFamily") addressFamily: addressFamily,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("authKey") authKey: bGPAuthKey,
@as("mtu") mtu: mTU,
@as("asn") asn: option<aSN>,
@as("vlan") vlan: option<vLAN>,
@as("virtualInterfaceName") virtualInterfaceName: option<virtualInterfaceName>
}
type newPrivateVirtualInterface = {
@as("tags") tags: tagList,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId,
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId,
@as("addressFamily") addressFamily: addressFamily,
@as("customerAddress") customerAddress: customerAddress,
@as("amazonAddress") amazonAddress: amazonAddress,
@as("authKey") authKey: bGPAuthKey,
@as("mtu") mtu: mTU,
@as("asn") asn: option<aSN>,
@as("vlan") vlan: option<vLAN>,
@as("virtualInterfaceName") virtualInterfaceName: option<virtualInterfaceName>
}
type locationList = array<location>
type interconnect = {
@as("providerName") providerName: providerName,
@as("tags") tags: tagList,
@as("hasLogicalRedundancy") hasLogicalRedundancy: hasLogicalRedundancy,
@as("awsDeviceV2") awsDeviceV2: awsDeviceV2,
@as("jumboFrameCapable") jumboFrameCapable: jumboFrameCapable,
@as("awsDevice") awsDevice: awsDevice,
@as("lagId") lagId: lagId,
@as("loaIssueTime") loaIssueTime: loaIssueTime,
@as("bandwidth") bandwidth: bandwidth,
@as("location") location: locationCode,
@as("region") region: region,
@as("interconnectState") interconnectState: interconnectState,
@as("interconnectName") interconnectName: interconnectName,
@as("interconnectId") interconnectId: interconnectId
}
type directConnectGatewayAssociationProposal = {
@as("requestedAllowedPrefixesToDirectConnectGateway") requestedAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("existingAllowedPrefixesToDirectConnectGateway") existingAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("associatedGateway") associatedGateway: associatedGateway,
@as("proposalState") proposalState: directConnectGatewayAssociationProposalState,
@as("directConnectGatewayOwnerAccount") directConnectGatewayOwnerAccount: ownerAccount,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId,
@as("proposalId") proposalId: directConnectGatewayAssociationProposalId
}
type directConnectGatewayAssociation = {
@as("virtualGatewayOwnerAccount") virtualGatewayOwnerAccount: ownerAccount,
@as("virtualGatewayRegion") virtualGatewayRegion: virtualGatewayRegion,
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId,
@as("allowedPrefixesToDirectConnectGateway") allowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("associationId") associationId: directConnectGatewayAssociationId,
@as("associatedGateway") associatedGateway: associatedGateway,
@as("stateChangeError") stateChangeError: stateChangeError,
@as("associationState") associationState: directConnectGatewayAssociationState,
@as("directConnectGatewayOwnerAccount") directConnectGatewayOwnerAccount: ownerAccount,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId
}
type connection = {
@as("macSecKeys") macSecKeys: macSecKeyList,
@as("encryptionMode") encryptionMode: encryptionMode,
@as("portEncryptionStatus") portEncryptionStatus: portEncryptionStatus,
@as("macSecCapable") macSecCapable: macSecCapable,
@as("providerName") providerName: providerName,
@as("tags") tags: tagList,
@as("hasLogicalRedundancy") hasLogicalRedundancy: hasLogicalRedundancy,
@as("awsDeviceV2") awsDeviceV2: awsDeviceV2,
@as("jumboFrameCapable") jumboFrameCapable: jumboFrameCapable,
@as("awsDevice") awsDevice: awsDevice,
@as("lagId") lagId: lagId,
@as("loaIssueTime") loaIssueTime: loaIssueTime,
@as("partnerName") partnerName: partnerName,
@as("vlan") vlan: vLAN,
@as("bandwidth") bandwidth: bandwidth,
@as("location") location: locationCode,
@as("region") region: region,
@as("connectionState") connectionState: connectionState,
@as("connectionName") connectionName: connectionName,
@as("connectionId") connectionId: connectionId,
@as("ownerAccount") ownerAccount: ownerAccount
}
type virtualInterfaceList = array<virtualInterface>
type resourceTagList = array<resourceTag>
type interconnectList = array<interconnect>
type directConnectGatewayAssociationProposalList = array<directConnectGatewayAssociationProposal>
type directConnectGatewayAssociationList = array<directConnectGatewayAssociation>
type connectionList = array<connection>
type lag = {
@as("macSecKeys") macSecKeys: macSecKeyList,
@as("encryptionMode") encryptionMode: encryptionMode,
@as("macSecCapable") macSecCapable: macSecCapable,
@as("providerName") providerName: providerName,
@as("tags") tags: tagList,
@as("hasLogicalRedundancy") hasLogicalRedundancy: hasLogicalRedundancy,
@as("jumboFrameCapable") jumboFrameCapable: jumboFrameCapable,
@as("allowsHostedConnections") allowsHostedConnections: booleanFlag,
@as("connections") connections: connectionList,
@as("awsDeviceV2") awsDeviceV2: awsDeviceV2,
@as("awsDevice") awsDevice: awsDevice,
@as("minimumLinks") minimumLinks: count,
@as("region") region: region,
@as("location") location: locationCode,
@as("lagState") lagState: lagState,
@as("lagName") lagName: lagName,
@as("ownerAccount") ownerAccount: ownerAccount,
@as("lagId") lagId: lagId,
@as("numberOfConnections") numberOfConnections: count,
@as("connectionsBandwidth") connectionsBandwidth: bandwidth
}
type lagList = array<lag>
type clientType;
@module("@aws-sdk/client-directconnect") @new external createClient: unit => clientType = "DirectConnectClient";
module DescribeLoa = {
  type t;
  type request = {
@as("loaContentType") loaContentType: loaContentType,
@as("providerName") providerName: providerName,
@as("connectionId") connectionId: option<connectionId>
}
  type response = loa;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeLoaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteVirtualInterface = {
  type t;
  type request = {
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
@as("virtualInterfaceState") virtualInterfaceState: virtualInterfaceState
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteInterconnect = {
  type t;
  type request = {
@as("interconnectId") interconnectId: option<interconnectId>
}
  type response = {
@as("interconnectState") interconnectState: interconnectState
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteInterconnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfirmTransitVirtualInterface = {
  type t;
  type request = {
@as("directConnectGatewayId") directConnectGatewayId: option<directConnectGatewayId>,
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
@as("virtualInterfaceState") virtualInterfaceState: virtualInterfaceState
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "ConfirmTransitVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfirmPublicVirtualInterface = {
  type t;
  type request = {
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
@as("virtualInterfaceState") virtualInterfaceState: virtualInterfaceState
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "ConfirmPublicVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfirmPrivateVirtualInterface = {
  type t;
  type request = {
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId,
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId,
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
@as("virtualInterfaceState") virtualInterfaceState: virtualInterfaceState
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "ConfirmPrivateVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ConfirmConnection = {
  type t;
  type request = {
@as("connectionId") connectionId: option<connectionId>
}
  type response = {
@as("connectionState") connectionState: connectionState
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "ConfirmConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UntagResource = {
  type t;
  type request = {
@as("tagKeys") tagKeys: option<tagKeyList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "UntagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInterconnectLoa = {
  type t;
  type request = {
@as("loaContentType") loaContentType: loaContentType,
@as("providerName") providerName: providerName,
@as("interconnectId") interconnectId: option<interconnectId>
}
  type response = {
@as("loa") loa: loa
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeInterconnectLoaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionLoa = {
  type t;
  type request = {
@as("loaContentType") loaContentType: loaContentType,
@as("providerName") providerName: providerName,
@as("connectionId") connectionId: option<connectionId>
}
  type response = {
@as("loa") loa: loa
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectionLoaCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectConnectGateway = {
  type t;
  type request = {
@as("directConnectGatewayId") directConnectGatewayId: option<directConnectGatewayId>
}
  type response = {
@as("directConnectGateway") directConnectGateway: directConnectGateway
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteDirectConnectGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDirectConnectGateway = {
  type t;
  type request = {
@as("amazonSideAsn") amazonSideAsn: longAsn,
@as("directConnectGatewayName") directConnectGatewayName: option<directConnectGatewayName>
}
  type response = {
@as("directConnectGateway") directConnectGateway: directConnectGateway
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateDirectConnectGatewayCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateVirtualInterfaceAttributes = {
  type t;
  type request = {
@as("mtu") mtu: mTU,
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "UpdateVirtualInterfaceAttributesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateConnection = {
  type t;
  type request = {
@as("encryptionMode") encryptionMode: encryptionMode,
@as("connectionName") connectionName: connectionName,
@as("connectionId") connectionId: option<connectionId>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "UpdateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module TagResource = {
  type t;
  type request = {
@as("tags") tags: option<tagList>,
@as("resourceArn") resourceArn: option<resourceArn>
}
  type response = unit
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "TagResourceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StopBgpFailoverTest = {
  type t;
  type request = {
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
@as("virtualInterfaceTest") virtualInterfaceTest: virtualInterfaceTestHistory
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "StopBgpFailoverTestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module StartBgpFailoverTest = {
  type t;
  type request = {
@as("testDurationInMinutes") testDurationInMinutes: testDuration,
@as("bgpPeers") bgpPeers: bGPPeerIdList,
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = {
@as("virtualInterfaceTest") virtualInterfaceTest: virtualInterfaceTestHistory
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "StartBgpFailoverTestCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateMacSecKey = {
  type t;
  type request = {
@as("secretARN") secretARN: option<secretARN>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = {
@as("macSecKeys") macSecKeys: macSecKeyList,
@as("connectionId") connectionId: connectionId
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateMacSecKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DisassociateConnectionFromLag = {
  type t;
  type request = {
@as("lagId") lagId: option<lagId>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DisassociateConnectionFromLagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualGateways = {
  type t;
  
  type response = {
@as("virtualGateways") virtualGateways: virtualGatewayList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<unit>) => t = "DescribeVirtualGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGateways = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResultSetSize,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("directConnectGateways") directConnectGateways: directConnectGatewayList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeDirectConnectGatewaysCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGatewayAttachments = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResultSetSize,
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("directConnectGatewayAttachments") directConnectGatewayAttachments: directConnectGatewayAttachmentList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeDirectConnectGatewayAttachmentsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteConnection = {
  type t;
  type request = {
@as("connectionId") connectionId: option<connectionId>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateInterconnect = {
  type t;
  type request = {
@as("providerName") providerName: providerName,
@as("tags") tags: tagList,
@as("lagId") lagId: lagId,
@as("location") location: option<locationCode>,
@as("bandwidth") bandwidth: option<bandwidth>,
@as("interconnectName") interconnectName: option<interconnectName>
}
  type response = interconnect;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateInterconnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateConnection = {
  type t;
  type request = {
@as("requestMACSec") requestMACSec: requestMACSec,
@as("providerName") providerName: providerName,
@as("tags") tags: tagList,
@as("lagId") lagId: lagId,
@as("connectionName") connectionName: option<connectionName>,
@as("bandwidth") bandwidth: option<bandwidth>,
@as("location") location: option<locationCode>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateVirtualInterface = {
  type t;
  type request = {
@as("connectionId") connectionId: option<connectionId>,
@as("virtualInterfaceId") virtualInterfaceId: option<virtualInterfaceId>
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AssociateVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateMacSecKey = {
  type t;
  type request = {
@as("cak") cak: cak,
@as("ckn") ckn: ckn,
@as("secretARN") secretARN: secretARN,
@as("connectionId") connectionId: option<connectionId>
}
  type response = {
@as("macSecKeys") macSecKeys: macSecKeyList,
@as("connectionId") connectionId: connectionId
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AssociateMacSecKeyCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateHostedConnection = {
  type t;
  type request = {
@as("parentConnectionId") parentConnectionId: option<connectionId>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AssociateHostedConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AssociateConnectionWithLag = {
  type t;
  type request = {
@as("lagId") lagId: option<lagId>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AssociateConnectionWithLagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AllocateHostedConnection = {
  type t;
  type request = {
@as("tags") tags: tagList,
@as("vlan") vlan: option<vLAN>,
@as("connectionName") connectionName: option<connectionName>,
@as("bandwidth") bandwidth: option<bandwidth>,
@as("ownerAccount") ownerAccount: option<ownerAccount>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AllocateHostedConnectionCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AllocateConnectionOnInterconnect = {
  type t;
  type request = {
@as("vlan") vlan: option<vLAN>,
@as("interconnectId") interconnectId: option<interconnectId>,
@as("ownerAccount") ownerAccount: option<ownerAccount>,
@as("connectionName") connectionName: option<connectionName>,
@as("bandwidth") bandwidth: option<bandwidth>
}
  type response = connection;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AllocateConnectionOnInterconnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateDirectConnectGatewayAssociation = {
  type t;
  type request = {
@as("removeAllowedPrefixesToDirectConnectGateway") removeAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("addAllowedPrefixesToDirectConnectGateway") addAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("associationId") associationId: directConnectGatewayAssociationId
}
  type response = {
@as("directConnectGatewayAssociation") directConnectGatewayAssociation: directConnectGatewayAssociation
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "UpdateDirectConnectGatewayAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module ListVirtualInterfaceTestHistory = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResultSetSize,
@as("status") status: failureTestHistoryStatus,
@as("bgpPeers") bgpPeers: bGPPeerIdList,
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId,
@as("testId") testId: testId
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("virtualInterfaceTestHistory") virtualInterfaceTestHistory: virtualInterfaceTestHistoryList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "ListVirtualInterfaceTestHistoryCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLocations = {
  type t;
  
  type response = {
@as("locations") locations: locationList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<unit>) => t = "DescribeLocationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectConnectGatewayAssociationProposal = {
  type t;
  type request = {
@as("proposalId") proposalId: option<directConnectGatewayAssociationProposalId>
}
  type response = {
@as("directConnectGatewayAssociationProposal") directConnectGatewayAssociationProposal: directConnectGatewayAssociationProposal
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteDirectConnectGatewayAssociationProposalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteDirectConnectGatewayAssociation = {
  type t;
  type request = {
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId,
@as("associationId") associationId: directConnectGatewayAssociationId
}
  type response = {
@as("directConnectGatewayAssociation") directConnectGatewayAssociation: directConnectGatewayAssociation
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteDirectConnectGatewayAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteBGPPeer = {
  type t;
  type request = {
@as("bgpPeerId") bgpPeerId: bGPPeerId,
@as("customerAddress") customerAddress: customerAddress,
@as("asn") asn: aSN,
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId
}
  type response = {
@as("virtualInterface") virtualInterface: virtualInterface
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteBGPPeerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateTransitVirtualInterface = {
  type t;
  type request = {
@as("newTransitVirtualInterface") newTransitVirtualInterface: option<newTransitVirtualInterface>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = {
@as("virtualInterface") virtualInterface: virtualInterface
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateTransitVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePublicVirtualInterface = {
  type t;
  type request = {
@as("newPublicVirtualInterface") newPublicVirtualInterface: option<newPublicVirtualInterface>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreatePublicVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreatePrivateVirtualInterface = {
  type t;
  type request = {
@as("newPrivateVirtualInterface") newPrivateVirtualInterface: option<newPrivateVirtualInterface>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreatePrivateVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDirectConnectGatewayAssociationProposal = {
  type t;
  type request = {
@as("removeAllowedPrefixesToDirectConnectGateway") removeAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("addAllowedPrefixesToDirectConnectGateway") addAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("gatewayId") gatewayId: option<gatewayIdToAssociate>,
@as("directConnectGatewayOwnerAccount") directConnectGatewayOwnerAccount: option<ownerAccount>,
@as("directConnectGatewayId") directConnectGatewayId: option<directConnectGatewayId>
}
  type response = {
@as("directConnectGatewayAssociationProposal") directConnectGatewayAssociationProposal: directConnectGatewayAssociationProposal
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateDirectConnectGatewayAssociationProposalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateDirectConnectGatewayAssociation = {
  type t;
  type request = {
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId,
@as("addAllowedPrefixesToDirectConnectGateway") addAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("gatewayId") gatewayId: gatewayIdToAssociate,
@as("directConnectGatewayId") directConnectGatewayId: option<directConnectGatewayId>
}
  type response = {
@as("directConnectGatewayAssociation") directConnectGatewayAssociation: directConnectGatewayAssociation
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateDirectConnectGatewayAssociationCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateBGPPeer = {
  type t;
  type request = {
@as("newBGPPeer") newBGPPeer: newBGPPeer,
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId
}
  type response = {
@as("virtualInterface") virtualInterface: virtualInterface
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateBGPPeerCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AllocateTransitVirtualInterface = {
  type t;
  type request = {
@as("newTransitVirtualInterfaceAllocation") newTransitVirtualInterfaceAllocation: option<newTransitVirtualInterfaceAllocation>,
@as("ownerAccount") ownerAccount: option<ownerAccount>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = {
@as("virtualInterface") virtualInterface: virtualInterface
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AllocateTransitVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AllocatePublicVirtualInterface = {
  type t;
  type request = {
@as("newPublicVirtualInterfaceAllocation") newPublicVirtualInterfaceAllocation: option<newPublicVirtualInterfaceAllocation>,
@as("ownerAccount") ownerAccount: option<ownerAccount>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AllocatePublicVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AllocatePrivateVirtualInterface = {
  type t;
  type request = {
@as("newPrivateVirtualInterfaceAllocation") newPrivateVirtualInterfaceAllocation: option<newPrivateVirtualInterfaceAllocation>,
@as("ownerAccount") ownerAccount: option<ownerAccount>,
@as("connectionId") connectionId: option<connectionId>
}
  type response = virtualInterface;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AllocatePrivateVirtualInterfaceCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module AcceptDirectConnectGatewayAssociationProposal = {
  type t;
  type request = {
@as("overrideAllowedPrefixesToDirectConnectGateway") overrideAllowedPrefixesToDirectConnectGateway: routeFilterPrefixList,
@as("associatedGatewayOwnerAccount") associatedGatewayOwnerAccount: option<ownerAccount>,
@as("proposalId") proposalId: option<directConnectGatewayAssociationProposalId>,
@as("directConnectGatewayId") directConnectGatewayId: option<directConnectGatewayId>
}
  type response = {
@as("directConnectGatewayAssociation") directConnectGatewayAssociation: directConnectGatewayAssociation
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "AcceptDirectConnectGatewayAssociationProposalCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module UpdateLag = {
  type t;
  type request = {
@as("encryptionMode") encryptionMode: encryptionMode,
@as("minimumLinks") minimumLinks: count,
@as("lagName") lagName: lagName,
@as("lagId") lagId: option<lagId>
}
  type response = lag;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "UpdateLagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeVirtualInterfaces = {
  type t;
  type request = {
@as("virtualInterfaceId") virtualInterfaceId: virtualInterfaceId,
@as("connectionId") connectionId: connectionId
}
  type response = {
@as("virtualInterfaces") virtualInterfaces: virtualInterfaceList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeVirtualInterfacesCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeTags = {
  type t;
  type request = {
@as("resourceArns") resourceArns: option<resourceArnList>
}
  type response = {
@as("resourceTags") resourceTags: resourceTagList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeTagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeInterconnects = {
  type t;
  type request = {
@as("interconnectId") interconnectId: interconnectId
}
  type response = {
@as("interconnects") interconnects: interconnectList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeInterconnectsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeHostedConnections = {
  type t;
  type request = {
@as("connectionId") connectionId: option<connectionId>
}
  type response = {
@as("connections") connections: connectionList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeHostedConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGatewayAssociations = {
  type t;
  type request = {
@as("virtualGatewayId") virtualGatewayId: virtualGatewayId,
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResultSetSize,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId,
@as("associatedGatewayId") associatedGatewayId: associatedGatewayId,
@as("associationId") associationId: directConnectGatewayAssociationId
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("directConnectGatewayAssociations") directConnectGatewayAssociations: directConnectGatewayAssociationList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeDirectConnectGatewayAssociationsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeDirectConnectGatewayAssociationProposals = {
  type t;
  type request = {
@as("nextToken") nextToken: paginationToken,
@as("maxResults") maxResults: maxResultSetSize,
@as("associatedGatewayId") associatedGatewayId: associatedGatewayId,
@as("proposalId") proposalId: directConnectGatewayAssociationProposalId,
@as("directConnectGatewayId") directConnectGatewayId: directConnectGatewayId
}
  type response = {
@as("nextToken") nextToken: paginationToken,
@as("directConnectGatewayAssociationProposals") directConnectGatewayAssociationProposals: directConnectGatewayAssociationProposalList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeDirectConnectGatewayAssociationProposalsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnectionsOnInterconnect = {
  type t;
  type request = {
@as("interconnectId") interconnectId: option<interconnectId>
}
  type response = {
@as("connections") connections: connectionList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectionsOnInterconnectCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeConnections = {
  type t;
  type request = {
@as("connectionId") connectionId: connectionId
}
  type response = {
@as("connections") connections: connectionList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeConnectionsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DeleteLag = {
  type t;
  type request = {
@as("lagId") lagId: option<lagId>
}
  type response = lag;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DeleteLagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module CreateLag = {
  type t;
  type request = {
@as("requestMACSec") requestMACSec: requestMACSec,
@as("providerName") providerName: providerName,
@as("childConnectionTags") childConnectionTags: tagList,
@as("tags") tags: tagList,
@as("connectionId") connectionId: connectionId,
@as("lagName") lagName: option<lagName>,
@as("connectionsBandwidth") connectionsBandwidth: option<bandwidth>,
@as("location") location: option<locationCode>,
@as("numberOfConnections") numberOfConnections: option<count>
}
  type response = lag;
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "CreateLagCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}

module DescribeLags = {
  type t;
  type request = {
@as("lagId") lagId: lagId
}
  type response = {
@as("lags") lags: lagList
}
  @module("@aws-sdk/client-directconnect") @new external new_: (Js.Promise.t<request>) => t = "DescribeLagsCommand";
  @send external rawSend: (clientType, t) => Js.Promise.t<response> = "send";
}
