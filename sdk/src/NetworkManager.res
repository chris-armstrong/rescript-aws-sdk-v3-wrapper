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
type vpnConnectionArn = string
type vpcArn = string
type validationExceptionReason = [
  | @as("Other") #Other
  | @as("FieldValidationFailed") #FieldValidationFailed
  | @as("CannotParse") #CannotParse
  | @as("UnknownOperation") #UnknownOperation
]
type tunnelProtocol = [@as("GRE") #GRE]
type transitGatewayRouteTableArn = string
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
type transitGatewayConnectPeerArn = string
type transitGatewayAttachmentId = string
type transitGatewayAttachmentArn = string
type transitGatewayArn = string
type tagValue = string
type tagKey = string
type synthesizedJsonResourcePolicyDocument = string
type synthesizedJsonCoreNetworkPolicyDocument = string
type subnetArn = string
type siteState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type siteId = string
type siteArn = string
type serverSideString = string
type routeType = [@as("STATIC") #STATIC | @as("PROPAGATED") #PROPAGATED]
type routeTableType = [
  | @as("CORE_NETWORK_SEGMENT") #CORE_NETWORK_SEGMENT
  | @as("TRANSIT_GATEWAY_ROUTE_TABLE") #TRANSIT_GATEWAY_ROUTE_TABLE
]
type routeState = [@as("BLACKHOLE") #BLACKHOLE | @as("ACTIVE") #ACTIVE]
type routeAnalysisStatus = [
  | @as("FAILED") #FAILED
  | @as("COMPLETED") #COMPLETED
  | @as("RUNNING") #RUNNING
]
type routeAnalysisCompletionResultCode = [
  | @as("NOT_CONNECTED") #NOT_CONNECTED
  | @as("CONNECTED") #CONNECTED
]
type routeAnalysisCompletionReasonCode = [
  | @as("NO_DESTINATION_ARN_PROVIDED") #NO_DESTINATION_ARN_PROVIDED
  | @as("POSSIBLE_MIDDLEBOX") #POSSIBLE_MIDDLEBOX
  | @as("MAX_HOPS_EXCEEDED") #MAX_HOPS_EXCEEDED
  | @as("TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH")
  #TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH
  | @as("INACTIVE_ROUTE_FOR_DESTINATION_FOUND") #INACTIVE_ROUTE_FOR_DESTINATION_FOUND
  | @as("BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND") #BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND
  | @as("ROUTE_NOT_FOUND") #ROUTE_NOT_FOUND
  | @as("TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND")
  #TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND
  | @as("CYCLIC_PATH_DETECTED") #CYCLIC_PATH_DETECTED
  | @as("TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY")
  #TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY
  | @as("TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND") #TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND
]
type retryAfterSeconds = int
type resourceArn = string
type reasonContextValue = string
type reasonContextKey = string
type nextToken = string
type maxResults = int
type long = float
type linkState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type linkId = string
type linkAssociationState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type linkArn = string
type integer_ = int
type ipaddress = string
type globalNetworkState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type globalNetworkId = string
type globalNetworkArn = string
type filterValue = string
type filterName = string
type externalRegionCode = string
type exceptionContextValue = string
type exceptionContextKey = string
type deviceState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type deviceId = string
type deviceArn = string
type dateTime = Js.Date.t
type customerGatewayAssociationState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type customerGatewayArn = string
type coreNetworkState = [
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("UPDATING") #UPDATING
  | @as("CREATING") #CREATING
]
type coreNetworkPolicyDocument = string
type coreNetworkPolicyAlias = [@as("LATEST") #LATEST | @as("LIVE") #LIVE]
type coreNetworkId = string
type coreNetworkArn = string
type constrainedString = string
type connectionType = [@as("IPSEC") #IPSEC | @as("BGP") #BGP]
type connectionStatus = [@as("DOWN") #DOWN | @as("UP") #UP]
type connectionState = [
  | @as("UPDATING") #UPDATING
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type connectionId = string
type connectionArn = string
type connectPeerState = [
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("FAILED") #FAILED
  | @as("CREATING") #CREATING
]
type connectPeerId = string
type connectPeerAssociationState = [
  | @as("DELETED") #DELETED
  | @as("DELETING") #DELETING
  | @as("AVAILABLE") #AVAILABLE
  | @as("PENDING") #PENDING
]
type clientToken = string
type changeType = [
  | @as("ATTACHMENT_ROUTE_STATIC") #ATTACHMENT_ROUTE_STATIC
  | @as("ATTACHMENT_ROUTE_PROPAGATION") #ATTACHMENT_ROUTE_PROPAGATION
  | @as("ATTACHMENT_MAPPING") #ATTACHMENT_MAPPING
  | @as("CORE_NETWORK_EDGE") #CORE_NETWORK_EDGE
  | @as("CORE_NETWORK_SEGMENT") #CORE_NETWORK_SEGMENT
]
type changeSetState = [
  | @as("OUT_OF_DATE") #OUT_OF_DATE
  | @as("EXECUTION_SUCCEEDED") #EXECUTION_SUCCEEDED
  | @as("EXECUTING") #EXECUTING
  | @as("READY_TO_EXECUTE") #READY_TO_EXECUTE
  | @as("FAILED_GENERATION") #FAILED_GENERATION
  | @as("PENDING_GENERATION") #PENDING_GENERATION
]
type changeAction = [@as("REMOVE") #REMOVE | @as("MODIFY") #MODIFY | @as("ADD") #ADD]
type boolean_ = bool
type attachmentType = [
  | @as("VPC") #VPC
  | @as("SITE_TO_SITE_VPN") #SITE_TO_SITE_VPN
  | @as("CONNECT") #CONNECT
]
type attachmentState = [
  | @as("DELETING") #DELETING
  | @as("PENDING_TAG_ACCEPTANCE") #PENDING_TAG_ACCEPTANCE
  | @as("PENDING_NETWORK_UPDATE") #PENDING_NETWORK_UPDATE
  | @as("UPDATING") #UPDATING
  | @as("AVAILABLE") #AVAILABLE
  | @as("FAILED") #FAILED
  | @as("CREATING") #CREATING
  | @as("PENDING_ATTACHMENT_ACCEPTANCE") #PENDING_ATTACHMENT_ACCEPTANCE
  | @as("REJECTED") #REJECTED
]
type attachmentId = string
type awsaccountId = string
@ocaml.doc("<p>Describes the VPC options.</p>")
type vpcOptions = {
  @ocaml.doc("<p>Indicates whether IPv6 is supported.</p>") @as("Ipv6Support")
  ipv6Support: option<boolean_>,
}
@ocaml.doc("<p>Describes a validation exception for a field.</p>")
type validationExceptionField = {
  @ocaml.doc("<p>The message for the field.</p>") @as("Message") message: serverSideString,
  @ocaml.doc("<p>The name of the field.</p>") @as("Name") name: serverSideString,
}
@ocaml.doc("<p>Describes the status of a transit gateway registration.</p>")
type transitGatewayRegistrationStateReason = {
  @ocaml.doc("<p>The message for the state reason.</p>") @as("Message")
  message: option<constrainedString>,
  @ocaml.doc("<p>The code for the state reason.</p>") @as("Code")
  code: option<transitGatewayRegistrationState>,
}
@ocaml.doc("<p>Describes a transit gateway Connect peer association.</p>")
type transitGatewayConnectPeerAssociation = {
  @ocaml.doc("<p>The state of the association.</p>") @as("State")
  state: option<transitGatewayConnectPeerAssociationState>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
  @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<deviceId>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>")
  @as("TransitGatewayConnectPeerArn")
  transitGatewayConnectPeerArn: option<transitGatewayConnectPeerArn>,
}
type transitGatewayConnectPeerArnList = array<transitGatewayConnectPeerArn>
type transitGatewayArnList = array<transitGatewayArn>
type tagKeyList = array<tagKey>
@ocaml.doc("<p>Describes a tag.</p>")
type tag = {
  @ocaml.doc("<p>The tag value.</p>
        <p>Constraints: Maximum length of 256 characters.</p>")
  @as("Value")
  value: option<tagValue>,
  @ocaml.doc("<p>The tag key.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
  @as("Key")
  key: option<tagKey>,
}
type subnetArnList = array<subnetArn>
type siteIdList = array<siteId>
type routeTypeList = array<routeType>
type routeStateList = array<routeState>
@ocaml.doc("<p>Describes a source or a destination.</p>")
type routeAnalysisEndpointOptionsSpecification = {
  @ocaml.doc("<p>The IP address.</p>") @as("IpAddress") ipAddress: option<ipaddress>,
  @ocaml.doc("<p>The ARN of the transit gateway attachment.</p>") @as("TransitGatewayAttachmentArn")
  transitGatewayAttachmentArn: option<transitGatewayAttachmentArn>,
}
@ocaml.doc("<p>Describes a source or a destination.</p>")
type routeAnalysisEndpointOptions = {
  @ocaml.doc("<p>The IP address.</p>") @as("IpAddress") ipAddress: option<ipaddress>,
  @ocaml.doc("<p>The ARN of the transit gateway.</p>") @as("TransitGatewayArn")
  transitGatewayArn: option<transitGatewayArn>,
  @ocaml.doc("<p>The ARN of the transit gateway attachment.</p>") @as("TransitGatewayAttachmentArn")
  transitGatewayAttachmentArn: option<transitGatewayAttachmentArn>,
}
@ocaml.doc("<p>Describes a resource relationship.</p>")
type relationship = {
  @ocaml.doc("<p>The ARN of the resource.</p>") @as("To") to: option<constrainedString>,
  @ocaml.doc("<p>The ARN of the resource.</p>") @as("From") from: option<constrainedString>,
}
type reasonContextMap = Js.Dict.t<reasonContextValue>
@ocaml.doc("<p>Describes the destination of a network route.</p>")
type networkRouteDestination = {
  @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId")
  resourceId: option<constrainedString>,
  @ocaml.doc("<p>The resource type.</p>") @as("ResourceType")
  resourceType: option<constrainedString>,
  @ocaml.doc("<p>The edge location for the network destination.</p>") @as("EdgeLocation")
  edgeLocation: option<externalRegionCode>,
  @ocaml.doc("<p>The name of the segment.</p>") @as("SegmentName")
  segmentName: option<constrainedString>,
  @ocaml.doc("<p>The ID of the transit gateway attachment.</p>") @as("TransitGatewayAttachmentId")
  transitGatewayAttachmentId: option<transitGatewayAttachmentId>,
  @ocaml.doc("<p>The ID of a core network attachment.</p>") @as("CoreNetworkAttachmentId")
  coreNetworkAttachmentId: option<attachmentId>,
}
@ocaml.doc("<p>Describes a network resource.</p>")
type networkResourceSummary = {
  @ocaml.doc("<p>Indicates whether this is a middlebox appliance.</p>") @as("IsMiddlebox")
  isMiddlebox: option<boolean_>,
  @ocaml.doc("<p>The value for the Name tag.</p>") @as("NameTag")
  nameTag: option<constrainedString>,
  @ocaml.doc(
    "<p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>"
  )
  @as("Definition")
  definition: option<constrainedString>,
  @ocaml.doc("<p>The resource type.</p>") @as("ResourceType")
  resourceType: option<constrainedString>,
  @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: option<resourceArn>,
  @ocaml.doc("<p>The ARN of the gateway.</p>") @as("RegisteredGatewayArn")
  registeredGatewayArn: option<resourceArn>,
}
type networkResourceMetadataMap = Js.Dict.t<constrainedString>
@ocaml.doc("<p>Describes a resource count.</p>")
type networkResourceCount = {
  @ocaml.doc("<p>The resource count.</p>") @as("Count") count: option<integer_>,
  @ocaml.doc("<p>The resource type.</p>") @as("ResourceType")
  resourceType: option<constrainedString>,
}
@ocaml.doc("<p>Describes a location.</p>")
type location = {
  @ocaml.doc("<p>The longitude.</p>") @as("Longitude") longitude: option<constrainedString>,
  @ocaml.doc("<p>The latitude.</p>") @as("Latitude") latitude: option<constrainedString>,
  @ocaml.doc("<p>The physical address.</p>") @as("Address") address: option<constrainedString>,
}
type linkIdList = array<linkId>
@ocaml.doc("<p>Describes the association between a device and a link.</p>")
type linkAssociation = {
  @ocaml.doc("<p>The state of the association.</p>") @as("LinkAssociationState")
  linkAssociationState: option<linkAssociationState>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
  @ocaml.doc("<p>The device ID for the link association.</p>") @as("DeviceId")
  deviceId: option<deviceId>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
}
type globalNetworkIdList = array<globalNetworkId>
type filterValues = array<filterValue>
type externalRegionCodeList = array<externalRegionCode>
type exceptionContextMap = Js.Dict.t<exceptionContextValue>
type deviceIdList = array<deviceId>
@ocaml.doc("<p>Describes the association between a customer gateway, a device, and a link.</p>")
type customerGatewayAssociation = {
  @ocaml.doc("<p>The association state.</p>") @as("State")
  state: option<customerGatewayAssociationState>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
  @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<deviceId>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer gateway.</p>")
  @as("CustomerGatewayArn")
  customerGatewayArn: option<customerGatewayArn>,
}
type customerGatewayArnList = array<customerGatewayArn>
@ocaml.doc("<p>Returns details about a core network edge.</p>")
type coreNetworkSegmentEdgeIdentifier = {
  @ocaml.doc("<p>The Region where the segment edge is located.</p>") @as("EdgeLocation")
  edgeLocation: option<externalRegionCode>,
  @ocaml.doc("<p>The name of the segment edge.</p>") @as("SegmentName")
  segmentName: option<constrainedString>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
}
@ocaml.doc("<p>Describes a core network policy version.</p>")
type coreNetworkPolicyVersion = {
  @ocaml.doc("<p>The status of the policy version change set.</p>") @as("ChangeSetState")
  changeSetState: option<changeSetState>,
  @ocaml.doc("<p>The timestamp when a core network policy version was created.</p>")
  @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The description of a core network policy version.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc(
    "<p>Whether a core network policy is the current policy or the most recently submitted policy.</p>"
  )
  @as("Alias")
  alias: option<coreNetworkPolicyAlias>,
  @ocaml.doc("<p>The ID of the policy version.</p>") @as("PolicyVersionId")
  policyVersionId: option<integer_>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
}
@ocaml.doc("<p>Provides details about an error in a core network policy.</p>")
type coreNetworkPolicyError = {
  @ocaml.doc("<p>The JSON path where the error was discovered in the policy document.</p>")
  @as("Path")
  path: option<serverSideString>,
  @ocaml.doc("<p>The message associated with a core network policy error code.</p>") @as("Message")
  message: serverSideString,
  @ocaml.doc("<p>The error code associated with a core network policy error.</p>") @as("ErrorCode")
  errorCode: serverSideString,
}
type constrainedStringList = array<constrainedString>
type connectionIdList = array<connectionId>
@ocaml.doc("<p>Describes connection health.</p>")
type connectionHealth = {
  @ocaml.doc("<p>The time the status was last updated.</p>") @as("Timestamp")
  timestamp_: option<dateTime>,
  @ocaml.doc("<p>The connection status.</p>") @as("Status") status: option<connectionStatus>,
  @ocaml.doc("<p>The connection type.</p>") @as("Type") type_: option<connectionType>,
}
type connectPeerIdList = array<connectPeerId>
@ocaml.doc("<p>Describes a core network BGP configuration.</p>")
type connectPeerBgpConfiguration = {
  @ocaml.doc("<p>The address of a core network Connect peer.</p>") @as("PeerAddress")
  peerAddress: option<ipaddress>,
  @ocaml.doc("<p>The address of a core network.</p>") @as("CoreNetworkAddress")
  coreNetworkAddress: option<ipaddress>,
  @ocaml.doc("<p>The ASN of the Connect peer.</p>") @as("PeerAsn") peerAsn: option<long>,
  @ocaml.doc("<p>The ASN of the Coret Network.</p>") @as("CoreNetworkAsn")
  coreNetworkAsn: option<long>,
}
@ocaml.doc("<p>Describes a core network Connect peer association.</p>")
type connectPeerAssociation = {
  @ocaml.doc("<p>The state of the Connect peer association.</p>") @as("State")
  state: option<connectPeerAssociationState>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
  @ocaml.doc("<p>The ID of the device to connect to.</p>") @as("DeviceId")
  deviceId: option<deviceId>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>The ID of the Connect peer.</p>") @as("ConnectPeerId")
  connectPeerId: option<connectPeerId>,
}
@ocaml.doc("<p>Describes a core network Connect attachment options.</p>")
type connectAttachmentOptions = {
  @ocaml.doc("<p>The protocol used for the attachment connection.</p>") @as("Protocol")
  protocol: option<tunnelProtocol>,
}
@ocaml.doc("<p>Describes the BGP options.</p>")
type bgpOptions = {
  @ocaml.doc("<p>The Peer ASN of the BGP.</p>") @as("PeerAsn") peerAsn: option<long>,
}
@ocaml.doc("<p>Describes bandwidth information.</p>")
type bandwidth = {
  @ocaml.doc("<p>Download speed in Mbps.</p>") @as("DownloadSpeed") downloadSpeed: option<integer_>,
  @ocaml.doc("<p>Upload speed in Mbps.</p>") @as("UploadSpeed") uploadSpeed: option<integer_>,
}
@ocaml.doc("<p>Specifies a location in Amazon Web Services.</p>")
type awslocation = {
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the subnet that the device is located in.</p>")
  @as("SubnetArn")
  subnetArn: option<subnetArn>,
  @ocaml.doc("<p>The Zone that the device is located in. Specify the ID of an Availability Zone, Local
            Zone, Wavelength Zone, or an Outpost.</p>")
  @as("Zone")
  zone: option<constrainedString>,
}
type validationExceptionFieldList = array<validationExceptionField>
@ocaml.doc("<p>Describes the registration of a transit gateway to a global network.</p>")
type transitGatewayRegistration = {
  @ocaml.doc("<p>The state of the transit gateway registration.</p>") @as("State")
  state: option<transitGatewayRegistrationStateReason>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway.</p>")
  @as("TransitGatewayArn")
  transitGatewayArn: option<transitGatewayArn>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
}
type transitGatewayConnectPeerAssociationList = array<transitGatewayConnectPeerAssociation>
type tagList_ = array<tag>
@ocaml.doc("<p>Describes a route table.</p>")
type routeTableIdentifier = {
  @ocaml.doc("<p>The segment edge in a core network.</p>") @as("CoreNetworkSegmentEdge")
  coreNetworkSegmentEdge: option<coreNetworkSegmentEdgeIdentifier>,
  @ocaml.doc("<p>The ARN of the transit gateway route table.</p>")
  @as("TransitGatewayRouteTableArn")
  transitGatewayRouteTableArn: option<transitGatewayRouteTableArn>,
}
@ocaml.doc("<p>Describes the status of an analysis at completion.</p>")
type routeAnalysisCompletion = {
  @ocaml.doc(
    "<p>Additional information about the path. Available only if a connection is not found.</p>"
  )
  @as("ReasonContext")
  reasonContext: option<reasonContextMap>,
  @ocaml.doc("<p>The reason code. Available only if a connection is not found.</p>
        <ul>
            <li>
               <p>
                  <code>BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND</code> - Found a black hole route with the destination CIDR block.</p>
            </li>
            <li>
               <p>
                  <code>CYCLIC_PATH_DETECTED</code> - Found the same resource multiple times while traversing the path.</p>
            </li>
            <li>
               <p>
                  <code>INACTIVE_ROUTE_FOR_DESTINATION_FOUND</code> - Found an inactive route with the destination CIDR block.</p>
            </li>
            <li>
               <p>
                  <code>MAX_HOPS_EXCEEDED</code> - Analysis exceeded 64 hops without finding the destination.</p>
            </li>
            <li>
               <p>
                  <code>ROUTE_NOT_FOUND</code> - Cannot find a route table with the destination CIDR block.</p>
            </li>
            <li>
               <p>
                  <code>TGW_ATTACH_ARN_NO_MATCH</code> - Found an attachment, but not with the correct destination ARN.</p>
            </li>
            <li>
               <p>
                  <code>TGW_ATTACH_NOT_FOUND</code> - Cannot find an attachment.</p>
            </li>
            <li>
               <p>
                  <code>TGW_ATTACH_NOT_IN_TGW</code> - Found an attachment, but not to the correct transit gateway.</p>
            </li>
            <li>
               <p>
                  <code>TGW_ATTACH_STABLE_ROUTE_TABLE_NOT_FOUND</code> - The state of the route table association is not associated.</p>
            </li>
         </ul>")
  @as("ReasonCode")
  reasonCode: option<routeAnalysisCompletionReasonCode>,
  @ocaml.doc("<p>The result of the analysis. If the status is <code>NOT_CONNECTED</code>, check the 
            reason code.</p>")
  @as("ResultCode")
  resultCode: option<routeAnalysisCompletionResultCode>,
}
type relationshipList = array<relationship>
@ocaml.doc("<p>Describes a path component.</p>")
type pathComponent = {
  @ocaml.doc("<p>The destination CIDR block in the route table.</p>") @as("DestinationCidrBlock")
  destinationCidrBlock: option<constrainedString>,
  @ocaml.doc("<p>The resource.</p>") @as("Resource") resource: option<networkResourceSummary>,
  @ocaml.doc("<p>The sequence number in the path. The destination is 0.</p>") @as("Sequence")
  sequence: option<integer_>,
}
@ocaml.doc("<p>Describes the telemetry information for a resource.</p>")
type networkTelemetry = {
  @ocaml.doc("<p>The connection health.</p>") @as("Health") health: option<connectionHealth>,
  @ocaml.doc("<p>The address.</p>") @as("Address") address: option<constrainedString>,
  @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: option<resourceArn>,
  @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId")
  resourceId: option<constrainedString>,
  @ocaml.doc("<p>The resource type.</p>") @as("ResourceType")
  resourceType: option<constrainedString>,
  @ocaml.doc("<p>The Amazon Web Services account ID.</p>") @as("AccountId")
  accountId: option<awsaccountId>,
  @ocaml.doc("<p>The Amazon Web Services Region.</p>") @as("AwsRegion")
  awsRegion: option<externalRegionCode>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
  @ocaml.doc("<p>The ARN of the gateway.</p>") @as("RegisteredGatewayArn")
  registeredGatewayArn: option<resourceArn>,
}
type networkRouteDestinationList = array<networkRouteDestination>
type networkResourceCountList = array<networkResourceCount>
type linkAssociationList = array<linkAssociation>
type filterMap = Js.Dict.t<filterValues>
type customerGatewayAssociationList = array<customerGatewayAssociation>
@ocaml.doc(
  "<p>Describes a core network segment, which are dedicated routes. Only attachments within this segment can communicate with each other.</p>"
)
type coreNetworkSegment = {
  @ocaml.doc("<p>The shared segments of a core network.</p>") @as("SharedSegments")
  sharedSegments: option<constrainedStringList>,
  @ocaml.doc("<p>The Regions where the edges are located.</p>") @as("EdgeLocations")
  edgeLocations: option<externalRegionCodeList>,
  @ocaml.doc("<p>The name of a core network segment.</p>") @as("Name")
  name: option<constrainedString>,
}
type coreNetworkPolicyVersionList = array<coreNetworkPolicyVersion>
type coreNetworkPolicyErrorList = array<coreNetworkPolicyError>
@ocaml.doc("<p>Describes a core network edge.</p>")
type coreNetworkEdge = {
  @ocaml.doc("<p>The inside IP addresses used for core network edges.</p>") @as("InsideCidrBlocks")
  insideCidrBlocks: option<constrainedStringList>,
  @ocaml.doc("<p>The ASN of a core network edge.</p>") @as("Asn") asn: option<long>,
  @ocaml.doc("<p>The Region where a core network edge is located.</p>") @as("EdgeLocation")
  edgeLocation: option<externalRegionCode>,
}
@ocaml.doc("<p>Describes a core network change.</p>")
type coreNetworkChangeValues = {
  @ocaml.doc("<p>The shared segments for a core network change value. </p>") @as("SharedSegments")
  sharedSegments: option<constrainedStringList>,
  @ocaml.doc("<p>The inside IP addresses used for core network change values.</p>")
  @as("InsideCidrBlocks")
  insideCidrBlocks: option<constrainedStringList>,
  @ocaml.doc("<p>The ID of the destination.</p>") @as("DestinationIdentifier")
  destinationIdentifier: option<constrainedString>,
  @ocaml.doc("<p>The IP addresses used for a core network.</p>") @as("Cidr")
  cidr: option<constrainedString>,
  @ocaml.doc("<p>The ASN of a core network.</p>") @as("Asn") asn: option<long>,
  @ocaml.doc("<p>The Regions where edges are located in a core network. </p>") @as("EdgeLocations")
  edgeLocations: option<externalRegionCodeList>,
  @ocaml.doc("<p>The names of the segments in a core network.</p>") @as("SegmentName")
  segmentName: option<constrainedString>,
}
type connectPeerBgpConfigurationList = array<connectPeerBgpConfiguration>
type connectPeerAssociationList = array<connectPeerAssociation>
type transitGatewayRegistrationList = array<transitGatewayRegistration>
@ocaml.doc("<p>Describes a site.</p>")
type site = {
  @ocaml.doc("<p>The tags for the site.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the site.</p>") @as("State") state: option<siteState>,
  @ocaml.doc("<p>The date and time that the site was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The location of the site.</p>") @as("Location") location: option<location>,
  @ocaml.doc("<p>The description of the site.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the site.</p>") @as("SiteArn")
  siteArn: option<siteArn>,
  @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<siteId>,
}
@ocaml.doc(
  "<p>Describes a proposed segment change. In some cases, the segment change must first be evaluated and accepted. </p>"
)
type proposedSegmentChange = {
  @ocaml.doc("<p>The name of the segment to change.</p>") @as("SegmentName")
  segmentName: option<constrainedString>,
  @ocaml.doc("<p>The rule number in the policy document that applies to this change.</p>")
  @as("AttachmentPolicyRuleNumber")
  attachmentPolicyRuleNumber: option<integer_>,
  @ocaml.doc("<p>The key-value tags that changed for the segment.</p>") @as("Tags")
  tags: option<tagList_>,
}
type pathComponentList = array<pathComponent>
type networkTelemetryList = array<networkTelemetry>
@ocaml.doc("<p>Describes a network route.</p>")
type networkRoute = {
  @ocaml.doc(
    "<p>The route type. The possible values are <code>propagated</code> and <code>static</code>.</p>"
  )
  @as("Type")
  type_: option<routeType>,
  @ocaml.doc(
    "<p>The route state. The possible values are <code>active</code> and <code>blackhole</code>.</p>"
  )
  @as("State")
  state: option<routeState>,
  @ocaml.doc("<p>The ID of the prefix list.</p>") @as("PrefixListId")
  prefixListId: option<constrainedString>,
  @ocaml.doc("<p>The destinations.</p>") @as("Destinations")
  destinations: option<networkRouteDestinationList>,
  @ocaml.doc("<p>A unique identifier for the route, such as a CIDR block.</p>")
  @as("DestinationCidrBlock")
  destinationCidrBlock: option<constrainedString>,
}
@ocaml.doc("<p>Describes a network resource.</p>")
type networkResource = {
  @ocaml.doc("<p>The resource metadata.</p>") @as("Metadata")
  metadata: option<networkResourceMetadataMap>,
  @ocaml.doc("<p>The tags.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The time that the resource definition was retrieved.</p>")
  @as("DefinitionTimestamp")
  definitionTimestamp: option<dateTime>,
  @ocaml.doc(
    "<p>Information about the resource, in JSON format. Network Manager gets this information by describing the resource using its Describe API call.</p>"
  )
  @as("Definition")
  definition: option<constrainedString>,
  @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: option<resourceArn>,
  @ocaml.doc("<p>The ID of the resource.</p>") @as("ResourceId")
  resourceId: option<constrainedString>,
  @ocaml.doc("<p>The resource type.</p>
         <p>The following are the supported resource types for Direct Connect:</p>
        <ul>
            <li>
                <p>
                  <code>dxcon</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-vif</code>
               </p>
            </li>
         </ul>
        
        <p>The following are the supported resource types for Network Manager:</p>
        <ul>
            <li>
                <p>
                  <code>connection</code>
               </p>
            </li>
            <li>
                <p>
                  <code>device</code>
               </p>
            </li>
            <li>
                <p>
                  <code>link</code>
               </p>
            </li>
            <li>
                <p>
                  <code>site</code>
               </p>
            </li>
         </ul>

        <p>The following are the supported resource types for Amazon VPC:</p>
        <ul>
            <li>
                <p>
                  <code>customer-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-attachment</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-connect-peer</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-route-table</code>
               </p>
            </li>
            <li>
                <p>
                  <code>vpn-connection</code>
               </p>
            </li>
         </ul>")
  @as("ResourceType")
  resourceType: option<constrainedString>,
  @ocaml.doc("<p>The Amazon Web Services account ID.</p>") @as("AccountId")
  accountId: option<awsaccountId>,
  @ocaml.doc("<p>The Amazon Web Services Region.</p>") @as("AwsRegion")
  awsRegion: option<externalRegionCode>,
  @ocaml.doc("<p>a core network ID.</p>") @as("CoreNetworkId") coreNetworkId: option<coreNetworkId>,
  @ocaml.doc("<p>The ARN of the gateway.</p>") @as("RegisteredGatewayArn")
  registeredGatewayArn: option<resourceArn>,
}
@ocaml.doc("<p>Describes a link.</p>")
type link = {
  @ocaml.doc("<p>The tags for the link.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the link.</p>") @as("State") state: option<linkState>,
  @ocaml.doc("<p>The date and time that the link was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The provider of the link.</p>") @as("Provider")
  provider: option<constrainedString>,
  @ocaml.doc("<p>The bandwidth for the link.</p>") @as("Bandwidth") bandwidth: option<bandwidth>,
  @ocaml.doc("<p>The type of the link.</p>") @as("Type") type_: option<constrainedString>,
  @ocaml.doc("<p>The description of the link.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<siteId>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the link.</p>") @as("LinkArn")
  linkArn: option<linkArn>,
  @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
}
@ocaml.doc(
  "<p>Describes a global network. This is a single private network acting as a high-level container for your network objects, including an Amazon Web Services-manged Core Network.</p>"
)
type globalNetwork = {
  @ocaml.doc("<p>The tags for the global network.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the global network.</p>") @as("State")
  state: option<globalNetworkState>,
  @ocaml.doc("<p>The date and time that the global network was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The description of the global network.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the global network.</p>") @as("GlobalNetworkArn")
  globalNetworkArn: option<globalNetworkArn>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
}
@ocaml.doc("<p>Describes a device.</p>")
type device = {
  @ocaml.doc("<p>The tags for the device.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The device state.</p>") @as("State") state: option<deviceState>,
  @ocaml.doc("<p>The date and time that the site was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The site ID.</p>") @as("SiteId") siteId: option<siteId>,
  @ocaml.doc("<p>The site location.</p>") @as("Location") location: option<location>,
  @ocaml.doc("<p>The device serial number.</p>") @as("SerialNumber")
  serialNumber: option<constrainedString>,
  @ocaml.doc("<p>The device model.</p>") @as("Model") model: option<constrainedString>,
  @ocaml.doc("<p>The device vendor.</p>") @as("Vendor") vendor: option<constrainedString>,
  @ocaml.doc("<p>The device type.</p>") @as("Type") type_: option<constrainedString>,
  @ocaml.doc("<p>The description of the device.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc("<p>The Amazon Web Services location of the device.</p>") @as("AWSLocation")
  awslocation: option<awslocation>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the device.</p>") @as("DeviceArn")
  deviceArn: option<deviceArn>,
  @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<deviceId>,
}
@ocaml.doc("<p>Returns summary information about a core network.</p>")
type coreNetworkSummary = {
  @ocaml.doc("<p>The key-value tags associated with a core network summary.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The description of a core network.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc("<p>The state of a core network.</p>") @as("State") state: option<coreNetworkState>,
  @ocaml.doc("<p>The ID of the account owner.</p>") @as("OwnerAccountId")
  ownerAccountId: option<awsaccountId>,
  @ocaml.doc("<p>The global network ID.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>a core network ARN.</p>") @as("CoreNetworkArn")
  coreNetworkArn: option<coreNetworkArn>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
}
type coreNetworkSegmentList = array<coreNetworkSegment>
@ocaml.doc("<p>Describes a core network policy. You can have only one LIVE Core Policy.</p>")
type coreNetworkPolicy = {
  @ocaml.doc("<p>Describes a core network policy.</p>") @as("PolicyDocument")
  policyDocument: option<synthesizedJsonCoreNetworkPolicyDocument>,
  @ocaml.doc("<p>Describes any errors in a core network policy.</p>") @as("PolicyErrors")
  policyErrors: option<coreNetworkPolicyErrorList>,
  @ocaml.doc("<p>The state of a core network policy.</p>") @as("ChangeSetState")
  changeSetState: option<changeSetState>,
  @ocaml.doc("<p>The timestamp when a core network policy was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The description of a core network policy.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc(
    "<p>Whether a core network policy is the current LIVE policy or the most recently submitted policy.</p>"
  )
  @as("Alias")
  alias: option<coreNetworkPolicyAlias>,
  @ocaml.doc("<p>The ID of the policy version.</p>") @as("PolicyVersionId")
  policyVersionId: option<integer_>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
}
type coreNetworkEdgeList = array<coreNetworkEdge>
@ocaml.doc("<p>Details describing a core network change.</p>")
type coreNetworkChange = {
  @ocaml.doc("<p>The new value for a core network</p>") @as("NewValues")
  newValues: option<coreNetworkChangeValues>,
  @ocaml.doc("<p>The previous values for a core network.</p>") @as("PreviousValues")
  previousValues: option<coreNetworkChangeValues>,
  @ocaml.doc("<p>The resource identifier.</p>") @as("Identifier")
  identifier: option<constrainedString>,
  @ocaml.doc("<p>The action to take for a core network.</p>") @as("Action")
  action: option<changeAction>,
  @ocaml.doc("<p>The type of change.</p>") @as("Type") type_: option<changeType>,
}
@ocaml.doc("<p>Describes a connection.</p>")
type connection = {
  @ocaml.doc("<p>The tags for the connection.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The state of the connection.</p>") @as("State") state: option<connectionState>,
  @ocaml.doc("<p>The date and time that the connection was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The description of the connection.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc("<p>The ID of the link for the second device in the connection.</p>")
  @as("ConnectedLinkId")
  connectedLinkId: option<linkId>,
  @ocaml.doc("<p>The ID of the link for the first device in the connection.</p>") @as("LinkId")
  linkId: option<linkId>,
  @ocaml.doc("<p>The ID of the second device in the connection.</p>") @as("ConnectedDeviceId")
  connectedDeviceId: option<deviceId>,
  @ocaml.doc("<p>The ID of the first device in the connection.</p>") @as("DeviceId")
  deviceId: option<deviceId>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
  @ocaml.doc("<p>The Amazon Resource Name (ARN) of the connection.</p>") @as("ConnectionArn")
  connectionArn: option<connectionArn>,
  @ocaml.doc("<p>The ID of the connection.</p>") @as("ConnectionId")
  connectionId: option<connectionId>,
}
@ocaml.doc("<p>Summary description of a Connect peer.</p>")
type connectPeerSummary = {
  @ocaml.doc("<p>The tags associated with a Connect peer summary.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The timestamp when a Connect peer was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The state of a Connect peer.</p>") @as("ConnectPeerState")
  connectPeerState: option<connectPeerState>,
  @ocaml.doc("<p>The Region where the edge is located.</p>") @as("EdgeLocation")
  edgeLocation: option<externalRegionCode>,
  @ocaml.doc("<p>The ID of a Connect peer.</p>") @as("ConnectPeerId")
  connectPeerId: option<connectPeerId>,
  @ocaml.doc("<p>The ID of a Connect peer attachment.</p>") @as("ConnectAttachmentId")
  connectAttachmentId: option<attachmentId>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
}
@ocaml.doc("<p>Describes a core network Connect peer configuration.</p>")
type connectPeerConfiguration = {
  @ocaml.doc("<p>The Connect peer BGP configurations.</p>") @as("BgpConfigurations")
  bgpConfigurations: option<connectPeerBgpConfigurationList>,
  @ocaml.doc("<p>The protocol used for a Connect peer configuration.</p>") @as("Protocol")
  protocol: option<tunnelProtocol>,
  @ocaml.doc("<p>The inside IP addresses used for a Connect peer configuration.</p>")
  @as("InsideCidrBlocks")
  insideCidrBlocks: option<constrainedStringList>,
  @ocaml.doc("<p>The IP address of the Connect peer.</p>") @as("PeerAddress")
  peerAddress: option<ipaddress>,
  @ocaml.doc("<p>The IP address of a core network.</p>") @as("CoreNetworkAddress")
  coreNetworkAddress: option<ipaddress>,
}
type siteList = array<site>
@ocaml.doc("<p>Describes a route analysis path.</p>")
type routeAnalysisPath = {
  @ocaml.doc("<p>The route analysis path.</p>") @as("Path") path: option<pathComponentList>,
  @ocaml.doc("<p>The status of the analysis at completion.</p>") @as("CompletionStatus")
  completionStatus: option<routeAnalysisCompletion>,
}
type networkRouteList = array<networkRoute>
type networkResourceList = array<networkResource>
type linkList = array<link>
type globalNetworkList = array<globalNetwork>
type deviceList = array<device>
type coreNetworkSummaryList = array<coreNetworkSummary>
type coreNetworkChangeList = array<coreNetworkChange>
@ocaml.doc("<p>Describes a core network.</p>")
type coreNetwork = {
  @ocaml.doc("<p>The tags associated with a core network.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The edges within a core network.</p>") @as("Edges")
  edges: option<coreNetworkEdgeList>,
  @ocaml.doc("<p>The segments within a core network.</p>") @as("Segments")
  segments: option<coreNetworkSegmentList>,
  @ocaml.doc("<p>The current state of a core network.</p>") @as("State")
  state: option<coreNetworkState>,
  @ocaml.doc("<p>The timestamp when a core network was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The description of a core network.</p>") @as("Description")
  description: option<constrainedString>,
  @ocaml.doc("<p>The ARN of a core network.</p>") @as("CoreNetworkArn")
  coreNetworkArn: option<coreNetworkArn>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
  @ocaml.doc("<p>The ID of the global network that your core network is a part of. </p>")
  @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
}
type connectionList = array<connection>
type connectPeerSummaryList = array<connectPeerSummary>
@ocaml.doc("<p>Describes a core network Connect peer.</p>")
type connectPeer = {
  @ocaml.doc("<p>The tags associated with the Connect peer.</p>") @as("Tags")
  tags: option<tagList_>,
  @ocaml.doc("<p>The configuration of the Connect peer.</p>") @as("Configuration")
  configuration: option<connectPeerConfiguration>,
  @ocaml.doc("<p>The timestamp when the Connect peer was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The state of the Connect peer.</p>") @as("State") state: option<connectPeerState>,
  @ocaml.doc("<p>The Connect peer Regions where edges are located.</p>") @as("EdgeLocation")
  edgeLocation: option<externalRegionCode>,
  @ocaml.doc("<p>The ID of the Connect peer.</p>") @as("ConnectPeerId")
  connectPeerId: option<connectPeerId>,
  @ocaml.doc("<p>The ID of the attachment to connect.</p>") @as("ConnectAttachmentId")
  connectAttachmentId: option<attachmentId>,
  @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
  coreNetworkId: option<coreNetworkId>,
}
@ocaml.doc("<p>Describes a core network attachment.</p>")
type attachment = {
  @ocaml.doc("<p>The timestamp when the attachment was last updated.</p>") @as("UpdatedAt")
  updatedAt: option<dateTime>,
  @ocaml.doc("<p>The timestamp when the attachment was created.</p>") @as("CreatedAt")
  createdAt: option<dateTime>,
  @ocaml.doc("<p>The attachment to move from one segment to another.</p>")
  @as("ProposedSegmentChange")
  proposedSegmentChange: option<proposedSegmentChange>,
  @ocaml.doc("<p>The tags associated with the attachment.</p>") @as("Tags") tags: option<tagList_>,
  @ocaml.doc("<p>The name of the segment attachment.</p>") @as("SegmentName")
  segmentName: option<constrainedString>,
  @ocaml.doc("<p>The policy rule number associated with the attachment.</p>")
  @as("AttachmentPolicyRuleNumber")
  attachmentPolicyRuleNumber: option<integer_>,
  @ocaml.doc("<p>The attachment resource ARN.</p>") @as("ResourceArn")
  resourceArn: option<resourceArn>,
  @ocaml.doc("<p>The Region where the edge is located.</p>") @as("EdgeLocation")
  edgeLocation: option<externalRegionCode>,
  @ocaml.doc("<p>The state of the attachment.</p>") @as("State") state: option<attachmentState>,
  @ocaml.doc("<p>The type of attachment.</p>") @as("AttachmentType")
  attachmentType: option<attachmentType>,
  @ocaml.doc("<p>The ID of the attachment account owner.</p>") @as("OwnerAccountId")
  ownerAccountId: option<awsaccountId>,
  @ocaml.doc("<p>The ID of the attachment.</p>") @as("AttachmentId")
  attachmentId: option<attachmentId>,
  @ocaml.doc("<p>The ARN of a core network.</p>") @as("CoreNetworkArn")
  coreNetworkArn: option<coreNetworkArn>,
  @ocaml.doc("<p>A core network ID.</p>") @as("CoreNetworkId") coreNetworkId: option<coreNetworkId>,
}
@ocaml.doc("<p>Describes a VPC attachment.</p>")
type vpcAttachment = {
  @ocaml.doc("<p>Provides details about the VPC attachment.</p>") @as("Options")
  options: option<vpcOptions>,
  @ocaml.doc("<p>The subnet ARNs.</p>") @as("SubnetArns") subnetArns: option<subnetArnList>,
  @ocaml.doc("<p>Provides details about the VPC attachment.</p>") @as("Attachment")
  attachment: option<attachment>,
}
@ocaml.doc("<p>Creates a site-to-site VPN attachment.</p>")
type siteToSiteVpnAttachment = {
  @ocaml.doc("<p>The ARN of the site-to-site VPN attachment. </p>") @as("VpnConnectionArn")
  vpnConnectionArn: option<vpnConnectionArn>,
  @ocaml.doc("<p>Provides details about a site-to-site VPN attachment.</p>") @as("Attachment")
  attachment: option<attachment>,
}
@ocaml.doc("<p>Describes a route analysis.</p>")
type routeAnalysis = {
  @ocaml.doc("<p>The return path.</p>") @as("ReturnPath") returnPath: option<routeAnalysisPath>,
  @ocaml.doc("<p>The forward path.</p>") @as("ForwardPath") forwardPath: option<routeAnalysisPath>,
  @ocaml.doc(
    "<p>Indicates whether to include the location of middlebox appliances in the route analysis.</p>"
  )
  @as("UseMiddleboxes")
  useMiddleboxes: option<boolean_>,
  @ocaml.doc("<p>Indicates whether to analyze the return path. The return path is not analyzed if the forward path
            analysis does not succeed.</p>")
  @as("IncludeReturnPath")
  includeReturnPath: option<boolean_>,
  @ocaml.doc("<p>The destination.</p>") @as("Destination")
  destination: option<routeAnalysisEndpointOptions>,
  @ocaml.doc("<p>The source.</p>") @as("Source") source: option<routeAnalysisEndpointOptions>,
  @ocaml.doc("<p>The status of the route analysis.</p>") @as("Status")
  status: option<routeAnalysisStatus>,
  @ocaml.doc("<p>The time that the analysis started.</p>") @as("StartTimestamp")
  startTimestamp: option<dateTime>,
  @ocaml.doc("<p>The ID of the route analysis.</p>") @as("RouteAnalysisId")
  routeAnalysisId: option<constrainedString>,
  @ocaml.doc("<p>The ID of the AWS account that created the route analysis.</p>")
  @as("OwnerAccountId")
  ownerAccountId: option<awsaccountId>,
  @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
  globalNetworkId: option<globalNetworkId>,
}
@ocaml.doc("<p>Describes a core network Connect attachment.</p>")
type connectAttachment = {
  @ocaml.doc("<p>Options for connecting an attachment.</p>") @as("Options")
  options: option<connectAttachmentOptions>,
  @ocaml.doc("<p>The ID of the transport attachment.</p>") @as("TransportAttachmentId")
  transportAttachmentId: option<attachmentId>,
  @ocaml.doc("<p>The attachment details.</p>") @as("Attachment") attachment: option<attachment>,
}
type attachmentList = array<attachment>
@ocaml.doc("<p>Transit Gateway Network Manager (Network Manager) enables you to create a global network, in which you can monitor your
            Amazon Web Services and on-premises networks that are built around transit gateways.</p>")
module UpdateNetworkResourceMetadata = {
  type t
  type request = {
    @ocaml.doc("<p>The resource metadata.</p>") @as("Metadata")
    metadata: networkResourceMetadataMap,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: resourceArn,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The updated resource metadata.</p>") @as("Metadata")
    metadata: option<networkResourceMetadataMap>,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn")
    resourceArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateNetworkResourceMetadataCommand"
  let make = (~metadata, ~resourceArn, ~globalNetworkId, ()) =>
    new({metadata, resourceArn, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UntagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tag keys to remove from the specified resource.</p>") @as("TagKeys")
    tagKeys: tagKeyList,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UntagResourceCommand"
  let make = (~tagKeys, ~resourceArn, ()) => new({tagKeys, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module TagResource = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the specified resource.</p>") @as("Tags") tags: tagList_,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "TagResourceCommand"
  let make = (~tags, ~resourceArn, ()) => new({tags, resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module RegisterTransitGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway.</p>")
    @as("TransitGatewayArn")
    transitGatewayArn: transitGatewayArn,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the transit gateway registration.</p>")
    @as("TransitGatewayRegistration")
    transitGatewayRegistration: option<transitGatewayRegistration>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "RegisterTransitGatewayCommand"
  let make = (~transitGatewayArn, ~globalNetworkId, ()) => new({transitGatewayArn, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource policy. </p>") @as("ResourceArn")
    resourceArn: resourceArn,
    @ocaml.doc("<p>The JSON resource policy document.</p>") @as("PolicyDocument")
    policyDocument: synthesizedJsonResourcePolicyDocument,
  }
  type response = {.}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "PutResourcePolicyCommand"
  let make = (~resourceArn, ~policyDocument, ()) => new({resourceArn, policyDocument})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module ListTagsForResource = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the resource.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {@ocaml.doc("<p>The list of tags.</p>") @as("TagList") tagList_: option<tagList_>}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ListTagsForResourceCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCoreNetworkPolicyVersions = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Describes core network policy versions.</p>") @as("CoreNetworkPolicyVersions")
    coreNetworkPolicyVersions: option<coreNetworkPolicyVersionList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ListCoreNetworkPolicyVersionsCommand"
  let make = (~coreNetworkId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTransitGatewayConnectPeerAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more transit gateway Connect peer Amazon Resource Names (ARNs).</p>")
    @as("TransitGatewayConnectPeerArns")
    transitGatewayConnectPeerArns: option<transitGatewayConnectPeerArnList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token to use for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
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
  ) => new({nextToken, maxResults, transitGatewayConnectPeerArns, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn") resourceArn: resourceArn,
  }
  type response = {
    @ocaml.doc("<p>The resource policy document.</p>") @as("PolicyDocument")
    policyDocument: option<synthesizedJsonResourcePolicyDocument>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNetworkResourceRelationships = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the gateway.</p>") @as("ResourceArn")
    resourceArn: option<resourceArn>,
    @ocaml.doc("<p>The resource type.</p>
        <p>The following are the supported resource types for Direct Connect:</p>
        <ul>
            <li>
                <p>
                  <code>dxcon</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-vif</code>
               </p>
            </li>
         </ul>
        
        <p>The following are the supported resource types for Network Manager:</p>
        <ul>
            <li>
                <p>
                  <code>connection</code>
               </p>
            </li>
            <li>
                <p>
                  <code>device</code>
               </p>
            </li>
            <li>
                <p>
                  <code>link</code>
               </p>
            </li>
            <li>
                <p>
                  <code>site</code>
               </p>
            </li>
         </ul>

        <p>The following are the supported resource types for Amazon VPC:</p>
        <ul>
            <li>
                <p>
                  <code>customer-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-attachment</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-connect-peer</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-route-table</code>
               </p>
            </li>
            <li>
                <p>
                  <code>vpn-connection</code>
               </p>
            </li>
         </ul>")
    @as("ResourceType")
    resourceType: option<constrainedString>,
    @ocaml.doc("<p>The Amazon Web Services account ID.</p>") @as("AccountId")
    accountId: option<awsaccountId>,
    @ocaml.doc("<p>The Amazon Web Services Region.</p>") @as("AwsRegion")
    awsRegion: option<externalRegionCode>,
    @ocaml.doc("<p>The ARN of the registered gateway.</p>") @as("RegisteredGatewayArn")
    registeredGatewayArn: option<resourceArn>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: option<coreNetworkId>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The resource relationships.</p>") @as("Relationships")
    relationships: option<relationshipList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetNetworkResourceRelationshipsCommand"
  let make = (
    ~globalNetworkId,
    ~nextToken=?,
    ~maxResults=?,
    ~resourceArn=?,
    ~resourceType=?,
    ~accountId=?,
    ~awsRegion=?,
    ~registeredGatewayArn=?,
    ~coreNetworkId=?,
    (),
  ) =>
    new({
      nextToken,
      maxResults,
      resourceArn,
      resourceType,
      accountId,
      awsRegion,
      registeredGatewayArn,
      coreNetworkId,
      globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNetworkResourceCounts = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The resource type.</p>
         <p>The following are the supported resource types for Direct Connect:</p>
        <ul>
            <li>
                <p>
                  <code>dxcon</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-vif</code>
               </p>
            </li>
         </ul>
        
        <p>The following are the supported resource types for Network Manager:</p>
        <ul>
            <li>
                <p>
                  <code>connection</code>
               </p>
            </li>
            <li>
                <p>
                  <code>device</code>
               </p>
            </li>
            <li>
                <p>
                  <code>link</code>
               </p>
            </li>
            <li>
                <p>
                  <code>site</code>
               </p>
            </li>
         </ul>

        <p>The following are the supported resource types for Amazon VPC:</p>
        <ul>
            <li>
                <p>
                  <code>customer-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-attachment</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-connect-peer</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-route-table</code>
               </p>
            </li>
            <li>
                <p>
                  <code>vpn-connection</code>
               </p>
            </li>
         </ul>")
    @as("ResourceType")
    resourceType: option<constrainedString>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The count of resources.</p>") @as("NetworkResourceCounts")
    networkResourceCounts: option<networkResourceCountList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetNetworkResourceCountsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~resourceType=?, ()) =>
    new({nextToken, maxResults, resourceType, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLinkAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<deviceId>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The link associations.</p>") @as("LinkAssociations")
    linkAssociations: option<linkAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetLinkAssociationsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~linkId=?, ~deviceId=?, ()) =>
    new({nextToken, maxResults, linkId, deviceId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCustomerGatewayAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc(
      "<p>One or more customer gateway Amazon Resource Names (ARNs). The maximum is 10.</p>"
    )
    @as("CustomerGatewayArns")
    customerGatewayArns: option<customerGatewayArnList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The customer gateway associations.</p>") @as("CustomerGatewayAssociations")
    customerGatewayAssociations: option<customerGatewayAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetCustomerGatewayAssociationsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~customerGatewayArns=?, ()) =>
    new({nextToken, maxResults, customerGatewayArns, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnectPeerAssociations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The IDs of the Connect peers.</p>") @as("ConnectPeerIds")
    connectPeerIds: option<connectPeerIdList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Displays a list of Connect peer associations.</p>")
    @as("ConnectPeerAssociations")
    connectPeerAssociations: option<connectPeerAssociationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetConnectPeerAssociationsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~connectPeerIds=?, ()) =>
    new({nextToken, maxResults, connectPeerIds, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ExecuteCoreNetworkChangeSet = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the policy version.</p>") @as("PolicyVersionId")
    policyVersionId: integer_,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {.}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ExecuteCoreNetworkChangeSetCommand"
  let make = (~policyVersionId, ~coreNetworkId, ()) => new({policyVersionId, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module DisassociateTransitGatewayConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway Connect peer.</p>")
    @as("TransitGatewayConnectPeerArn")
    transitGatewayConnectPeerArn: transitGatewayConnectPeerArn,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The transit gateway Connect peer association.</p>")
    @as("TransitGatewayConnectPeerAssociation")
    transitGatewayConnectPeerAssociation: option<transitGatewayConnectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateTransitGatewayConnectPeerCommand"
  let make = (~transitGatewayConnectPeerArn, ~globalNetworkId, ()) =>
    new({transitGatewayConnectPeerArn, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: linkId,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: deviceId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the link association.</p>") @as("LinkAssociation")
    linkAssociation: option<linkAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateLinkCommand"
  let make = (~linkId, ~deviceId, ~globalNetworkId, ()) => new({linkId, deviceId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateCustomerGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer gateway.</p>")
    @as("CustomerGatewayArn")
    customerGatewayArn: customerGatewayArn,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the customer gateway association.</p>")
    @as("CustomerGatewayAssociation")
    customerGatewayAssociation: option<customerGatewayAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateCustomerGatewayCommand"
  let make = (~customerGatewayArn, ~globalNetworkId, ()) =>
    new({customerGatewayArn, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DisassociateConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Connect peer to disassociate from a device.</p>")
    @as("ConnectPeerId")
    connectPeerId: connectPeerId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Describes the Connect peer association.</p>") @as("ConnectPeerAssociation")
    connectPeerAssociation: option<connectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DisassociateConnectPeerCommand"
  let make = (~connectPeerId, ~globalNetworkId, ()) => new({connectPeerId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeregisterTransitGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the transit gateway.</p>")
    @as("TransitGatewayArn")
    transitGatewayArn: transitGatewayArn,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The transit gateway registration information.</p>")
    @as("TransitGatewayRegistration")
    transitGatewayRegistration: option<transitGatewayRegistration>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeregisterTransitGatewayCommand"
  let make = (~transitGatewayArn, ~globalNetworkId, ()) => new({transitGatewayArn, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteResourcePolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The ARN of the policy to delete.</p>") @as("ResourceArn")
    resourceArn: resourceArn,
  }
  type response = {.}
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteResourcePolicyCommand"
  let make = (~resourceArn, ()) => new({resourceArn: resourceArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<unit> = "send"
}
module AssociateTransitGatewayConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: deviceId,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the Connect peer.</p>")
    @as("TransitGatewayConnectPeerArn")
    transitGatewayConnectPeerArn: transitGatewayConnectPeerArn,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The transit gateway Connect peer association.</p>")
    @as("TransitGatewayConnectPeerAssociation")
    transitGatewayConnectPeerAssociation: option<transitGatewayConnectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AssociateTransitGatewayConnectPeerCommand"
  let make = (~deviceId, ~transitGatewayConnectPeerArn, ~globalNetworkId, ~linkId=?, ()) =>
    new({linkId, deviceId, transitGatewayConnectPeerArn, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: linkId,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: deviceId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The link association.</p>") @as("LinkAssociation")
    linkAssociation: option<linkAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "AssociateLinkCommand"
  let make = (~linkId, ~deviceId, ~globalNetworkId, ()) => new({linkId, deviceId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateCustomerGateway = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: deviceId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
    @ocaml.doc("<p>The Amazon Resource Name (ARN) of the customer gateway.</p>")
    @as("CustomerGatewayArn")
    customerGatewayArn: customerGatewayArn,
  }
  type response = {
    @ocaml.doc("<p>The customer gateway association.</p>") @as("CustomerGatewayAssociation")
    customerGatewayAssociation: option<customerGatewayAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AssociateCustomerGatewayCommand"
  let make = (~deviceId, ~globalNetworkId, ~customerGatewayArn, ~linkId=?, ()) =>
    new({linkId, deviceId, globalNetworkId, customerGatewayArn})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AssociateConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: option<linkId>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: deviceId,
    @ocaml.doc("<p>The ID of the Connect peer.</p>") @as("ConnectPeerId")
    connectPeerId: connectPeerId,
    @ocaml.doc("<p>The ID of your global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The response to the Connect peer request.</p>") @as("ConnectPeerAssociation")
    connectPeerAssociation: option<connectPeerAssociation>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AssociateConnectPeerCommand"
  let make = (~deviceId, ~connectPeerId, ~globalNetworkId, ~linkId=?, ()) =>
    new({linkId, deviceId, connectPeerId, globalNetworkId})
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
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of your site.</p>") @as("SiteId") siteId: siteId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {@ocaml.doc("<p>Information about the site.</p>") @as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateSiteCommand"
  let make = (~siteId, ~globalNetworkId, ~location=?, ~description=?, ()) =>
    new({location, description, siteId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The provider of the link.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("Provider")
    provider: option<constrainedString>,
    @ocaml.doc("<p>The upload and download speed in Mbps. </p>") @as("Bandwidth")
    bandwidth: option<bandwidth>,
    @ocaml.doc("<p>The type of the link.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("Type")
    type_: option<constrainedString>,
    @ocaml.doc("<p>A description of the link.</p>
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: linkId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {@ocaml.doc("<p>Information about the link.</p>") @as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "UpdateLinkCommand"
  let make = (~linkId, ~globalNetworkId, ~provider=?, ~bandwidth=?, ~type_=?, ~description=?, ()) =>
    new({provider, bandwidth, type_, description, linkId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateGlobalNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the global network.</p>
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of your global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the global network object.</p>") @as("GlobalNetwork")
    globalNetwork: option<globalNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateGlobalNetworkCommand"
  let make = (~globalNetworkId, ~description=?, ()) => new({description, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<siteId>,
    @as("Location") location: option<location>,
    @ocaml.doc("<p>The serial number of the device.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("SerialNumber")
    serialNumber: option<constrainedString>,
    @ocaml.doc("<p>The model of the device.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("Model")
    model: option<constrainedString>,
    @ocaml.doc("<p>The vendor of the device.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("Vendor")
    vendor: option<constrainedString>,
    @ocaml.doc("<p>The type of the device.</p>") @as("Type") type_: option<constrainedString>,
    @ocaml.doc("<p>A description of the device.</p>
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc(
      "<p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>"
    )
    @as("AWSLocation")
    awslocation: option<awslocation>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: deviceId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
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
      siteId,
      location,
      serialNumber,
      model,
      vendor,
      type_,
      description,
      awslocation,
      deviceId,
      globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateConnection = {
  type t
  type request = {
    @ocaml.doc("<p>A description of the connection.</p>
        <p>Length Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of the link for the second device in the connection.</p>")
    @as("ConnectedLinkId")
    connectedLinkId: option<linkId>,
    @ocaml.doc("<p>The ID of the link for the first device in the connection.</p>") @as("LinkId")
    linkId: option<linkId>,
    @ocaml.doc("<p>The ID of the connection.</p>") @as("ConnectionId") connectionId: connectionId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the connection.</p>") @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateConnectionCommand"
  let make = (~connectionId, ~globalNetworkId, ~description=?, ~connectedLinkId=?, ~linkId=?, ()) =>
    new({description, connectedLinkId, linkId, connectionId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RestoreCoreNetworkPolicyVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the policy version to restore.</p>") @as("PolicyVersionId")
    policyVersionId: integer_,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Describes the restored core network policy.</p>") @as("CoreNetworkPolicy")
    coreNetworkPolicy: option<coreNetworkPolicy>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "RestoreCoreNetworkPolicyVersionCommand"
  let make = (~policyVersionId, ~coreNetworkId, ()) => new({policyVersionId, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module PutCoreNetworkPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The client token associated with the request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The ID of a core network policy. </p>") @as("LatestVersionId")
    latestVersionId: option<integer_>,
    @ocaml.doc("<p>a core network policy description.</p>") @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The policy document.</p>") @as("PolicyDocument")
    policyDocument: synthesizedJsonCoreNetworkPolicyDocument,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Describes the changed core network policy.</p>") @as("CoreNetworkPolicy")
    coreNetworkPolicy: option<coreNetworkPolicy>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "PutCoreNetworkPolicyCommand"
  let make = (
    ~policyDocument,
    ~coreNetworkId,
    ~clientToken=?,
    ~latestVersionId=?,
    ~description=?,
    (),
  ) => new({clientToken, latestVersionId, description, policyDocument, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetTransitGatewayRegistrations = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is
            10.</p>")
    @as("TransitGatewayArns")
    transitGatewayArns: option<transitGatewayArnList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The transit gateway registrations.</p>") @as("TransitGatewayRegistrations")
    transitGatewayRegistrations: option<transitGatewayRegistrationList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetTransitGatewayRegistrationsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~transitGatewayArns=?, ()) =>
    new({nextToken, maxResults, transitGatewayArns, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNetworkTelemetry = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn")
    resourceArn: option<resourceArn>,
    @ocaml.doc("<p>The resource type.</p>
        <p>The following are the supported resource types for Direct Connect:</p>
        <ul>
            <li>
                <p>
                  <code>dxcon</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>dx-vif</code>
               </p>
            </li>
         </ul>
        
        <p>The following are the supported resource types for Network Manager:</p>
        <ul>
            <li>
                <p>
                  <code>connection</code>
               </p>
            </li>
            <li>
                <p>
                  <code>device</code>
               </p>
            </li>
            <li>
                <p>
                  <code>link</code>
               </p>
            </li>
            <li>
                <p>
                  <code>site</code>
               </p>
            </li>
         </ul>

        <p>The following are the supported resource types for Amazon VPC:</p>
        <ul>
            <li>
                <p>
                  <code>customer-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-attachment</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-connect-peer</code>
               </p>
            </li>
            <li>
                <p>
                  <code>transit-gateway-route-table</code>
               </p>
            </li>
            <li>
                <p>
                  <code>vpn-connection</code>
               </p>
            </li>
         </ul>")
    @as("ResourceType")
    resourceType: option<constrainedString>,
    @ocaml.doc("<p>The Amazon Web Services account ID.</p>") @as("AccountId")
    accountId: option<awsaccountId>,
    @ocaml.doc("<p>The Amazon Web Services Region.</p>") @as("AwsRegion")
    awsRegion: option<externalRegionCode>,
    @ocaml.doc("<p>The ARN of the gateway.</p>") @as("RegisteredGatewayArn")
    registeredGatewayArn: option<resourceArn>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: option<coreNetworkId>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The network telemetry.</p>") @as("NetworkTelemetry")
    networkTelemetry: option<networkTelemetryList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetNetworkTelemetryCommand"
  let make = (
    ~globalNetworkId,
    ~nextToken=?,
    ~maxResults=?,
    ~resourceArn=?,
    ~resourceType=?,
    ~accountId=?,
    ~awsRegion=?,
    ~registeredGatewayArn=?,
    ~coreNetworkId=?,
    (),
  ) =>
    new({
      nextToken,
      maxResults,
      resourceArn,
      resourceType,
      accountId,
      awsRegion,
      registeredGatewayArn,
      coreNetworkId,
      globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCoreNetworkPolicy = {
  type t
  type request = {
    @ocaml.doc("<p>The alias of a core network policy </p>") @as("Alias")
    alias: option<coreNetworkPolicyAlias>,
    @ocaml.doc("<p>The ID of a core network policy version.</p>") @as("PolicyVersionId")
    policyVersionId: option<integer_>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The details about a core network policy.</p>") @as("CoreNetworkPolicy")
    coreNetworkPolicy: option<coreNetworkPolicy>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetCoreNetworkPolicyCommand"
  let make = (~coreNetworkId, ~alias=?, ~policyVersionId=?, ()) =>
    new({alias, policyVersionId, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteSite = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: siteId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {@ocaml.doc("<p>Information about the site.</p>") @as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteSiteCommand"
  let make = (~siteId, ~globalNetworkId, ()) => new({siteId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteLink = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the link.</p>") @as("LinkId") linkId: linkId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {@ocaml.doc("<p>Information about the link.</p>") @as("Link") link: option<link>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteLinkCommand"
  let make = (~linkId, ~globalNetworkId, ()) => new({linkId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteGlobalNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
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
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: deviceId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the device.</p>") @as("Device") device: option<device>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "DeleteDeviceCommand"
  let make = (~deviceId, ~globalNetworkId, ()) => new({deviceId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteCoreNetworkPolicyVersion = {
  type t
  type request = {
    @ocaml.doc("<p>The version ID of the deleted policy.</p>") @as("PolicyVersionId")
    policyVersionId: integer_,
    @ocaml.doc("<p>The ID of a core network for the deleted policy.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Returns information about the deleted policy version. </p>")
    @as("CoreNetworkPolicy")
    coreNetworkPolicy: option<coreNetworkPolicy>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteCoreNetworkPolicyVersionCommand"
  let make = (~policyVersionId, ~coreNetworkId, ()) => new({policyVersionId, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteConnection = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the connection.</p>") @as("ConnectionId") connectionId: connectionId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the connection.</p>") @as("Connection")
    connection: option<connection>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteConnectionCommand"
  let make = (~connectionId, ~globalNetworkId, ()) => new({connectionId, globalNetworkId})
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
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {@ocaml.doc("<p>Information about the site.</p>") @as("Site") site: option<site>}
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "CreateSiteCommand"
  let make = (~globalNetworkId, ~tags=?, ~location=?, ~description=?, ()) =>
    new({tags, location, description, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateLink = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: siteId,
    @ocaml.doc("<p>The provider of the link.</p>
        <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \\ ^</p>")
    @as("Provider")
    provider: option<constrainedString>,
    @ocaml.doc("<p> The upload speed and download speed in Mbps. </p>") @as("Bandwidth")
    bandwidth: bandwidth,
    @ocaml.doc("<p>The type of the link.</p>
        <p>Constraints: Maximum length of 128 characters. Cannot include the following characters: | \\ ^</p>")
    @as("Type")
    type_: option<constrainedString>,
    @ocaml.doc("<p>A description of the link.</p>
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
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
  ) => new({tags, siteId, provider, bandwidth, type_, description, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateGlobalNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>A description of the global network.</p>
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
  }
  type response = {
    @ocaml.doc("<p>Information about the global network object.</p>") @as("GlobalNetwork")
    globalNetwork: option<globalNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateGlobalNetworkCommand"
  let make = (~tags=?, ~description=?, ()) => new({tags, description})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateDevice = {
  type t
  type request = {
    @ocaml.doc("<p>The tags to apply to the resource during creation.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<siteId>,
    @ocaml.doc("<p>The location of the device.</p>") @as("Location") location: option<location>,
    @ocaml.doc("<p>The serial number of the device.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("SerialNumber")
    serialNumber: option<constrainedString>,
    @ocaml.doc("<p>The model of the device.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("Model")
    model: option<constrainedString>,
    @ocaml.doc("<p>The vendor of the device.</p>
        <p>Constraints: Maximum length of 128 characters.</p>")
    @as("Vendor")
    vendor: option<constrainedString>,
    @ocaml.doc("<p>The type of the device.</p>") @as("Type") type_: option<constrainedString>,
    @ocaml.doc("<p>A description of the device.</p>
        <p>Constraints: Maximum length of 256 characters.</p>")
    @as("Description")
    description: option<constrainedString>,
    @ocaml.doc(
      "<p>The Amazon Web Services location of the device, if applicable. For an on-premises device, you can omit this parameter.</p>"
    )
    @as("AWSLocation")
    awslocation: option<awslocation>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
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
      tags,
      siteId,
      location,
      serialNumber,
      model,
      vendor,
      type_,
      description,
      awslocation,
      globalNetworkId,
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
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of the link for the second device.</p>") @as("ConnectedLinkId")
    connectedLinkId: option<linkId>,
    @ocaml.doc("<p>The ID of the link for the first device.</p>") @as("LinkId")
    linkId: option<linkId>,
    @ocaml.doc("<p>The ID of the second device in the connection.</p>") @as("ConnectedDeviceId")
    connectedDeviceId: deviceId,
    @ocaml.doc("<p>The ID of the first device in the connection.</p>") @as("DeviceId")
    deviceId: deviceId,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
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
    new({tags, description, connectedLinkId, linkId, connectedDeviceId, deviceId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateCoreNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The description of the update.</p>") @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Returns information about a core network update.</p>") @as("CoreNetwork")
    coreNetwork: option<coreNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateCoreNetworkCommand"
  let make = (~coreNetworkId, ~description=?, ()) => new({description, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module RejectAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the attachment.</p>") @as("AttachmentId") attachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>Describes the rejected attachment request.</p>") @as("Attachment")
    attachment: option<attachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "RejectAttachmentCommand"
  let make = (~attachmentId, ()) => new({attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListCoreNetworks = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Describes the list of core networks.</p>") @as("CoreNetworks")
    coreNetworks: option<coreNetworkSummaryList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ListCoreNetworksCommand"
  let make = (~nextToken=?, ~maxResults=?, ()) => new({nextToken, maxResults})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListConnectPeers = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the attachment.</p>") @as("ConnectAttachmentId")
    connectAttachmentId: option<attachmentId>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: option<coreNetworkId>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Describes the Connect peers.</p>") @as("ConnectPeers")
    connectPeers: option<connectPeerSummaryList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ListConnectPeersCommand"
  let make = (~nextToken=?, ~maxResults=?, ~connectAttachmentId=?, ~coreNetworkId=?, ()) =>
    new({nextToken, maxResults, connectAttachmentId, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSites = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>One or more site IDs. The maximum is 10.</p>") @as("SiteIds")
    siteIds: option<siteIdList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The sites.</p>") @as("Sites") sites: option<siteList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetSitesCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~siteIds=?, ()) =>
    new({nextToken, maxResults, siteIds, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNetworkRoutes = {
  type t
  type request = {
    @ocaml.doc(
      "<p>Filter by route table destination. Possible Values: TRANSIT_GATEWAY_ATTACHMENT_ID, RESOURCE_ID, or RESOURCE_TYPE.</p>"
    )
    @as("DestinationFilters")
    destinationFilters: option<filterMap>,
    @ocaml.doc("<p>The route types.</p>") @as("Types") types: option<routeTypeList>,
    @ocaml.doc("<p>The route states.</p>") @as("States") states: option<routeStateList>,
    @ocaml.doc("<p>The IDs of the prefix lists.</p>") @as("PrefixListIds")
    prefixListIds: option<constrainedStringList>,
    @ocaml.doc(
      "<p>The routes with a CIDR that encompasses the CIDR filter. Example: If you specify 10.0.1.0/30, then the result returns 10.0.1.0/29.</p>"
    )
    @as("SupernetOfMatches")
    supernetOfMatches: option<constrainedStringList>,
    @ocaml.doc("<p>The routes with a subnet that match the specified CIDR filter.</p>")
    @as("SubnetOfMatches")
    subnetOfMatches: option<constrainedStringList>,
    @ocaml.doc("<p>The most specific route that matches the traffic (longest prefix match).</p>")
    @as("LongestPrefixMatches")
    longestPrefixMatches: option<constrainedStringList>,
    @ocaml.doc("<p>An exact CIDR block.</p>") @as("ExactCidrMatches")
    exactCidrMatches: option<constrainedStringList>,
    @ocaml.doc("<p>The ID of the route table.</p>") @as("RouteTableIdentifier")
    routeTableIdentifier: routeTableIdentifier,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The network routes.</p>") @as("NetworkRoutes")
    networkRoutes: option<networkRouteList>,
    @ocaml.doc("<p>The route table creation time.</p>") @as("RouteTableTimestamp")
    routeTableTimestamp: option<dateTime>,
    @ocaml.doc("<p>The route table type.</p>") @as("RouteTableType")
    routeTableType: option<routeTableType>,
    @ocaml.doc("<p>Describes a core network segment edge.</p>") @as("CoreNetworkSegmentEdge")
    coreNetworkSegmentEdge: option<coreNetworkSegmentEdgeIdentifier>,
    @ocaml.doc("<p>The ARN of the route table.</p>") @as("RouteTableArn")
    routeTableArn: option<resourceArn>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetNetworkRoutesCommand"
  let make = (
    ~routeTableIdentifier,
    ~globalNetworkId,
    ~destinationFilters=?,
    ~types=?,
    ~states=?,
    ~prefixListIds=?,
    ~supernetOfMatches=?,
    ~subnetOfMatches=?,
    ~longestPrefixMatches=?,
    ~exactCidrMatches=?,
    (),
  ) =>
    new({
      destinationFilters,
      types,
      states,
      prefixListIds,
      supernetOfMatches,
      subnetOfMatches,
      longestPrefixMatches,
      exactCidrMatches,
      routeTableIdentifier,
      globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetNetworkResources = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ARN of the resource.</p>") @as("ResourceArn")
    resourceArn: option<resourceArn>,
    @ocaml.doc("<p>The resource type.</p>
         <p>The following are the supported resource types for Direct Connect:</p>
        <ul>
            <li>
               <p>
                  <code>dxcon</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/directconnect/latest/APIReference/API_Connection.html\">Connection</a>.</p>
            </li>
            <li>
               <p>
                  <code>dx-gateway</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/directconnect/latest/APIReference/API_DirectConnectGateway.html\">DirectConnectGateway</a>.</p>
            </li>
            <li>
               <p>
                  <code>dx-vif</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/directconnect/latest/APIReference/API_VirtualInterface.html\">VirtualInterface</a>.</p>
            </li>
         </ul>
        
         <p>The following are the supported resource types for Network Manager:</p>
        <ul>
            <li>
               <p>
                  <code>connection</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Connection.html\">Connection</a>.</p>
            </li>
            <li>
               <p>
                  <code>device</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Device.html\">Device</a>.</p>
            </li>
            <li>
               <p>
                  <code>link</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Link.html\">Link</a>.</p>
            </li>
            <li>
               <p>
                  <code>site</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/networkmanager/latest/APIReference/API_Site.html\">Site</a>.</p>
            </li>
         </ul>
        
         <p>The following are the supported resource types for Amazon VPC:</p>
        <ul>
            <li>
               <p>
                  <code>customer-gateway</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CustomerGateway.html\">CustomerGateway</a>.</p>
            </li>
            <li>
               <p>
                  <code>transit-gateway</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGateway.html\">TransitGateway</a>.</p>
            </li>
            <li>
               <p>
                  <code>transit-gateway-attachment</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayAttachment.html\">TransitGatewayAttachment</a>.</p>
            </li>
            <li>
               <p>
                  <code>transit-gateway-connect-peer</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayConnectPeer.html\">TransitGatewayConnectPeer</a>.</p>
            </li>
            <li>
               <p>
                  <code>transit-gateway-route-table</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_TransitGatewayRouteTable.html\">TransitGatewayRouteTable</a>.</p>
            </li>
            <li>
               <p>
                  <code>vpn-connection</code> - The definition model is
                    <a href=\"https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VpnConnection.html\">VpnConnection</a>.</p>
            </li>
         </ul>")
    @as("ResourceType")
    resourceType: option<constrainedString>,
    @ocaml.doc("<p>The Amazon Web Services account ID.</p>") @as("AccountId")
    accountId: option<awsaccountId>,
    @ocaml.doc("<p>The Amazon Web Services Region.</p>") @as("AwsRegion")
    awsRegion: option<externalRegionCode>,
    @ocaml.doc("<p>The ARN of the gateway.</p>") @as("RegisteredGatewayArn")
    registeredGatewayArn: option<resourceArn>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: option<coreNetworkId>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The network resources.</p>") @as("NetworkResources")
    networkResources: option<networkResourceList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetNetworkResourcesCommand"
  let make = (
    ~globalNetworkId,
    ~nextToken=?,
    ~maxResults=?,
    ~resourceArn=?,
    ~resourceType=?,
    ~accountId=?,
    ~awsRegion=?,
    ~registeredGatewayArn=?,
    ~coreNetworkId=?,
    (),
  ) =>
    new({
      nextToken,
      maxResults,
      resourceArn,
      resourceType,
      accountId,
      awsRegion,
      registeredGatewayArn,
      coreNetworkId,
      globalNetworkId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetLinks = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The link provider.</p>") @as("Provider") provider: option<constrainedString>,
    @ocaml.doc("<p>The link type.</p>") @as("Type") type_: option<constrainedString>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<siteId>,
    @ocaml.doc("<p>One or more link IDs. The maximum is 10.</p>") @as("LinkIds")
    linkIds: option<linkIdList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
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
  ) => new({nextToken, maxResults, provider, type_, siteId, linkIds, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetDevices = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the site.</p>") @as("SiteId") siteId: option<siteId>,
    @ocaml.doc("<p>One or more device IDs. The maximum is 10.</p>") @as("DeviceIds")
    deviceIds: option<deviceIdList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The devices.</p>") @as("Devices") devices: option<deviceList>,
  }
  @module("@aws-sdk/client-networkmanager") @new external new: request => t = "GetDevicesCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~siteId=?, ~deviceIds=?, ()) =>
    new({nextToken, maxResults, siteId, deviceIds, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCoreNetworkChangeSet = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the policy version.</p>") @as("PolicyVersionId")
    policyVersionId: integer_,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Describes a core network changes.</p>") @as("CoreNetworkChanges")
    coreNetworkChanges: option<coreNetworkChangeList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetCoreNetworkChangeSetCommand"
  let make = (~policyVersionId, ~coreNetworkId, ~nextToken=?, ~maxResults=?, ()) =>
    new({nextToken, maxResults, policyVersionId, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetCoreNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Details about a core network.</p>") @as("CoreNetwork")
    coreNetwork: option<coreNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetCoreNetworkCommand"
  let make = (~coreNetworkId, ()) => new({coreNetworkId: coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnections = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The ID of the device.</p>") @as("DeviceId") deviceId: option<deviceId>,
    @ocaml.doc("<p>One or more connection IDs.</p>") @as("ConnectionIds")
    connectionIds: option<connectionIdList>,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The token to use for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the connections.</p>") @as("Connections")
    connections: option<connectionList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetConnectionsCommand"
  let make = (~globalNetworkId, ~nextToken=?, ~maxResults=?, ~deviceId=?, ~connectionIds=?, ()) =>
    new({nextToken, maxResults, deviceId, connectionIds, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the Connect peer.</p>") @as("ConnectPeerId")
    connectPeerId: connectPeerId,
  }
  type response = {
    @ocaml.doc("<p>Returns information about a core network Connect peer.</p>") @as("ConnectPeer")
    connectPeer: option<connectPeer>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetConnectPeerCommand"
  let make = (~connectPeerId, ()) => new({connectPeerId: connectPeerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DescribeGlobalNetworks = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The IDs of one or more global networks. The maximum is 10.</p>")
    @as("GlobalNetworkIds")
    globalNetworkIds: option<globalNetworkIdList>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Information about the global networks.</p>") @as("GlobalNetworks")
    globalNetworks: option<globalNetworkList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DescribeGlobalNetworksCommand"
  let make = (~nextToken=?, ~maxResults=?, ~globalNetworkIds=?, ()) =>
    new({nextToken, maxResults, globalNetworkIds})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteCoreNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The network ID of the deleted core network.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Information about the deleted core network.</p>") @as("CoreNetwork")
    coreNetwork: option<coreNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteCoreNetworkCommand"
  let make = (~coreNetworkId, ()) => new({coreNetworkId: coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the deleted Connect peer.</p>") @as("ConnectPeerId")
    connectPeerId: connectPeerId,
  }
  type response = {
    @ocaml.doc("<p>Information about the deleted Connect peer.</p>") @as("ConnectPeer")
    connectPeer: option<connectPeer>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteConnectPeerCommand"
  let make = (~connectPeerId, ()) => new({connectPeerId: connectPeerId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module DeleteAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the attachment to delete.</p>") @as("AttachmentId")
    attachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>Information about the deleted attachment.</p>") @as("Attachment")
    attachment: option<attachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "DeleteAttachmentCommand"
  let make = (~attachmentId, ()) => new({attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateCoreNetwork = {
  type t
  type request = {
    @ocaml.doc("<p>The client token associated with a core network request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The policy document for creating a core network.</p>") @as("PolicyDocument")
    policyDocument: option<coreNetworkPolicyDocument>,
    @ocaml.doc("<p>Key-value tags associated with a core network request.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The description of a core network.</p>") @as("Description")
    description: option<constrainedString>,
    @ocaml.doc("<p>The ID of the global network that a core network will be a part of. </p>")
    @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Returns details about a core network.</p>") @as("CoreNetwork")
    coreNetwork: option<coreNetwork>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateCoreNetworkCommand"
  let make = (~globalNetworkId, ~clientToken=?, ~policyDocument=?, ~tags=?, ~description=?, ()) =>
    new({clientToken, policyDocument, tags, description, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnectPeer = {
  type t
  type request = {
    @ocaml.doc("<p>The client token associated with the request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The tags associated with the peer request.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>The inside IP addresses used for BGP peering.</p>") @as("InsideCidrBlocks")
    insideCidrBlocks: constrainedStringList,
    @ocaml.doc("<p>The Connect peer BGP options.</p>") @as("BgpOptions")
    bgpOptions: option<bgpOptions>,
    @ocaml.doc("<p>The Connect peer address.</p>") @as("PeerAddress") peerAddress: ipaddress,
    @ocaml.doc("<p>A Connect peer core network address.</p>") @as("CoreNetworkAddress")
    coreNetworkAddress: option<ipaddress>,
    @ocaml.doc("<p>The ID of the connection attachment.</p>") @as("ConnectAttachmentId")
    connectAttachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>The response to the request.</p>") @as("ConnectPeer")
    connectPeer: option<connectPeer>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateConnectPeerCommand"
  let make = (
    ~insideCidrBlocks,
    ~peerAddress,
    ~connectAttachmentId,
    ~clientToken=?,
    ~tags=?,
    ~bgpOptions=?,
    ~coreNetworkAddress=?,
    (),
  ) =>
    new({
      clientToken,
      tags,
      insideCidrBlocks,
      bgpOptions,
      peerAddress,
      coreNetworkAddress,
      connectAttachmentId,
    })
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module AcceptAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the attachment. </p>") @as("AttachmentId") attachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>The response to the attachment request. </p>") @as("Attachment")
    attachment: option<attachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "AcceptAttachmentCommand"
  let make = (~attachmentId, ()) => new({attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module UpdateVpcAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>Additional options for updating the VPC attachment. </p>") @as("Options")
    options: option<vpcOptions>,
    @ocaml.doc("<p>Removes a subnet ARN from the attachment.</p>") @as("RemoveSubnetArns")
    removeSubnetArns: option<subnetArnList>,
    @ocaml.doc("<p>Adds a subnet ARN to the VPC attachment.</p>") @as("AddSubnetArns")
    addSubnetArns: option<subnetArnList>,
    @ocaml.doc("<p>The ID of the attachment.</p>") @as("AttachmentId") attachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>Describes the updated VPC attachment.</p>") @as("VpcAttachment")
    vpcAttachment: option<vpcAttachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "UpdateVpcAttachmentCommand"
  let make = (~attachmentId, ~options=?, ~removeSubnetArns=?, ~addSubnetArns=?, ()) =>
    new({options, removeSubnetArns, addSubnetArns, attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module StartRouteAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>Indicates whether to include the location of middlebox appliances in the route analysis.
            The default is <code>false</code>.</p>")
    @as("UseMiddleboxes")
    useMiddleboxes: option<boolean_>,
    @ocaml.doc(
      "<p>Indicates whether to analyze the return path. The default is <code>false</code>.</p>"
    )
    @as("IncludeReturnPath")
    includeReturnPath: option<boolean_>,
    @ocaml.doc("<p>The destination.</p>") @as("Destination")
    destination: routeAnalysisEndpointOptionsSpecification,
    @ocaml.doc("<p>The source from which traffic originates.</p>") @as("Source")
    source: routeAnalysisEndpointOptionsSpecification,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The route analysis.</p>") @as("RouteAnalysis")
    routeAnalysis: option<routeAnalysis>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "StartRouteAnalysisCommand"
  let make = (
    ~destination,
    ~source,
    ~globalNetworkId,
    ~useMiddleboxes=?,
    ~includeReturnPath=?,
    (),
  ) => new({useMiddleboxes, includeReturnPath, destination, source, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module ListAttachments = {
  type t
  type request = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>The maximum number of results to return.</p>") @as("MaxResults")
    maxResults: option<maxResults>,
    @ocaml.doc("<p>The state of the attachment.</p>") @as("State") state: option<attachmentState>,
    @ocaml.doc("<p>The Region where the edge is located.</p>") @as("EdgeLocation")
    edgeLocation: option<externalRegionCode>,
    @ocaml.doc("<p>The type of attachment.</p>") @as("AttachmentType")
    attachmentType: option<attachmentType>,
    @ocaml.doc("<p>The ID of a core network.</p>") @as("CoreNetworkId")
    coreNetworkId: option<coreNetworkId>,
  }
  type response = {
    @ocaml.doc("<p>The token for the next page of results.</p>") @as("NextToken")
    nextToken: option<nextToken>,
    @ocaml.doc("<p>Describes the list of attachments.</p>") @as("Attachments")
    attachments: option<attachmentList>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "ListAttachmentsCommand"
  let make = (
    ~nextToken=?,
    ~maxResults=?,
    ~state=?,
    ~edgeLocation=?,
    ~attachmentType=?,
    ~coreNetworkId=?,
    (),
  ) => new({nextToken, maxResults, state, edgeLocation, attachmentType, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetVpcAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the attachment.</p>") @as("AttachmentId") attachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>Returns details about a VPC attachment.</p>") @as("VpcAttachment")
    vpcAttachment: option<vpcAttachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetVpcAttachmentCommand"
  let make = (~attachmentId, ()) => new({attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetSiteToSiteVpnAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the attachment.</p>") @as("AttachmentId") attachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>Describes the site-to-site attachment.</p>") @as("SiteToSiteVpnAttachment")
    siteToSiteVpnAttachment: option<siteToSiteVpnAttachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetSiteToSiteVpnAttachmentCommand"
  let make = (~attachmentId, ()) => new({attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetRouteAnalysis = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the route analysis.</p>") @as("RouteAnalysisId")
    routeAnalysisId: constrainedString,
    @ocaml.doc("<p>The ID of the global network.</p>") @as("GlobalNetworkId")
    globalNetworkId: globalNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The route analysis.</p>") @as("RouteAnalysis")
    routeAnalysis: option<routeAnalysis>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetRouteAnalysisCommand"
  let make = (~routeAnalysisId, ~globalNetworkId, ()) => new({routeAnalysisId, globalNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module GetConnectAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The ID of the attachment.</p>") @as("AttachmentId") attachmentId: attachmentId,
  }
  type response = {
    @ocaml.doc("<p>Details about the Connect attachment.</p>") @as("ConnectAttachment")
    connectAttachment: option<connectAttachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "GetConnectAttachmentCommand"
  let make = (~attachmentId, ()) => new({attachmentId: attachmentId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateVpcAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The client token associated with the request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The key-value tags associated with the request.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Options for the VPC attachment.</p>") @as("Options") options: option<vpcOptions>,
    @ocaml.doc("<p>The subnet ARN of the VPC attachment.</p>") @as("SubnetArns")
    subnetArns: subnetArnList,
    @ocaml.doc("<p>The ARN of the VPC.</p>") @as("VpcArn") vpcArn: vpcArn,
    @ocaml.doc("<p>The ID of a core network for the VPC attachment.</p>") @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Provides details about the VPC attachment.</p>") @as("VpcAttachment")
    vpcAttachment: option<vpcAttachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateVpcAttachmentCommand"
  let make = (~subnetArns, ~vpcArn, ~coreNetworkId, ~clientToken=?, ~tags=?, ~options=?, ()) =>
    new({clientToken, tags, options, subnetArns, vpcArn, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateSiteToSiteVpnAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The client token associated with the request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The tags associated with the request.</p>") @as("Tags") tags: option<tagList_>,
    @ocaml.doc("<p>The ARN identifying the VPN attachment.</p>") @as("VpnConnectionArn")
    vpnConnectionArn: vpnConnectionArn,
    @ocaml.doc(
      "<p>The ID of a core network where you're creating a site-to-site VPN attachment.</p>"
    )
    @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>Details about a site-to-site VPN attachment.</p>") @as("SiteToSiteVpnAttachment")
    siteToSiteVpnAttachment: option<siteToSiteVpnAttachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateSiteToSiteVpnAttachmentCommand"
  let make = (~vpnConnectionArn, ~coreNetworkId, ~clientToken=?, ~tags=?, ()) =>
    new({clientToken, tags, vpnConnectionArn, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
module CreateConnectAttachment = {
  type t
  type request = {
    @ocaml.doc("<p>The client token associated with the request.</p>") @as("ClientToken")
    clientToken: option<clientToken>,
    @ocaml.doc("<p>The list of key-value tags associated with the request.</p>") @as("Tags")
    tags: option<tagList_>,
    @ocaml.doc("<p>Options for creating an attachment.</p>") @as("Options")
    options: connectAttachmentOptions,
    @ocaml.doc("<p>The ID of the attachment between the two connections.</p>")
    @as("TransportAttachmentId")
    transportAttachmentId: attachmentId,
    @ocaml.doc("<p>The Region where the edge is located.</p>") @as("EdgeLocation")
    edgeLocation: externalRegionCode,
    @ocaml.doc("<p>The ID of a core network where you want to create the attachment. </p>")
    @as("CoreNetworkId")
    coreNetworkId: coreNetworkId,
  }
  type response = {
    @ocaml.doc("<p>The response to a Connect attachment request.</p>") @as("ConnectAttachment")
    connectAttachment: option<connectAttachment>,
  }
  @module("@aws-sdk/client-networkmanager") @new
  external new: request => t = "CreateConnectAttachmentCommand"
  let make = (
    ~options,
    ~transportAttachmentId,
    ~edgeLocation,
    ~coreNetworkId,
    ~clientToken=?,
    ~tags=?,
    (),
  ) => new({clientToken, tags, options, transportAttachmentId, edgeLocation, coreNetworkId})
  @send external send: (awsServiceClient, t) => Js.Promise.t<response> = "send"
}
